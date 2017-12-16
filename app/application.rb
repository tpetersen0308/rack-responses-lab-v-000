class Application

  def call(env)
    resp = Rack::Response.new

    t = Time.new

    if t.utc.strftime("%H%M%S%N") < Time.utc.strftime("%12%00%00%00")
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
