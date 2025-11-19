@interface AISDGameCenterSignInHelper
- (AISDGameCenterSignInHelper)initWithAuthenticationResults:(id)a3;
- (void)signInWithCompletionHandler:(id)a3;
@end

@implementation AISDGameCenterSignInHelper

- (AISDGameCenterSignInHelper)initWithAuthenticationResults:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AISDGameCenterSignInHelper;
  v6 = [(AISDGameCenterSignInHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_authenticationResults, a3);
  }

  return v7;
}

- (void)signInWithCompletionHandler:(id)a3
{
  v3 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [AISDGameCenterSignInHelper signInWithCompletionHandler:];
  }

  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.AppleIDSetupDaemon.GameCenterSignInHelper" code:2 userInfo:0];
  v3[2](v3, 0, v4);
}

@end