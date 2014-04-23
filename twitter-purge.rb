require "rubygems"
require "twitter"

Twitter.configure do |config|
  config.consumer_key = ""
  config.consumer_secret = ""
  config.oauth_token = ""
  config.oauth_token_secret = ""
end

# Initialize your Twitter client
client = Twitter::Client.new
msg = ""

while msg do
    msg = Twitter.user_timeline("username").first.id
    puts "Attempting to delete tweet #{msg}"
    Twitter::Client.new.status_destroy(msg)
    sleep(15)
end
