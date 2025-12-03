@interface AISDGameCenterSignInHelper
- (AISDGameCenterSignInHelper)initWithAuthenticationResults:(id)results;
- (void)signInWithCompletionHandler:(id)handler;
@end

@implementation AISDGameCenterSignInHelper

- (AISDGameCenterSignInHelper)initWithAuthenticationResults:(id)results
{
  resultsCopy = results;
  v9.receiver = self;
  v9.super_class = AISDGameCenterSignInHelper;
  v6 = [(AISDGameCenterSignInHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_authenticationResults, results);
  }

  return v7;
}

- (void)signInWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [AISDGameCenterSignInHelper signInWithCompletionHandler:];
  }

  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.AppleIDSetupDaemon.GameCenterSignInHelper" code:2 userInfo:0];
  handlerCopy[2](handlerCopy, 0, v4);
}

@end