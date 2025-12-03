@interface NEAppPushProvider
- (NEAppPushProvider)init;
- (void)reportIncomingCallWithUserInfo:(NSDictionary *)userInfo;
- (void)reportPushToTalkMessageWithUserInfo:(NSDictionary *)userInfo;
- (void)unmatchEthernet;
@end

@implementation NEAppPushProvider

- (void)unmatchEthernet
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_INFO, "%@: requesting to stop for Ethernet", &v6, 0xCu);
  }

  context = [(NEProvider *)self context];
  [context unmatchEthernet];

  v5 = *MEMORY[0x1E69E9840];
}

- (NEAppPushProvider)init
{
  v3.receiver = self;
  v3.super_class = NEAppPushProvider;
  return [(NEProvider *)&v3 init];
}

- (void)reportPushToTalkMessageWithUserInfo:(NSDictionary *)userInfo
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = userInfo;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "%@: reporting PushToTalk message", &v8, 0xCu);
  }

  context = [(NEProvider *)self context];
  [context reportPushToTalkMessage:v4];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)reportIncomingCallWithUserInfo:(NSDictionary *)userInfo
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = userInfo;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "%@: reporting incoming call", &v8, 0xCu);
  }

  context = [(NEProvider *)self context];
  [context reportIncomingCall:v4];

  v7 = *MEMORY[0x1E69E9840];
}

@end