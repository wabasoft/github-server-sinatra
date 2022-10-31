require 'sinatra'
require 'json'

set :bind, '0.0.0.0'
post '/payload' do
  push = JSON.parse(request.body.read)
  puts "I got some JSON: #{push.inspect}"
end