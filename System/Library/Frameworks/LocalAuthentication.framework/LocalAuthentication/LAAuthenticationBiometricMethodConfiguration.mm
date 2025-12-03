@interface LAAuthenticationBiometricMethodConfiguration
- (LAAuthenticationBiometricMethodConfiguration)initWithAutoRetry:(BOOL)retry avoidUsingFaceIDCamera:(BOOL)camera allowedUsers:(id)users authenticationContext:(id)context;
@end

@implementation LAAuthenticationBiometricMethodConfiguration

- (LAAuthenticationBiometricMethodConfiguration)initWithAutoRetry:(BOOL)retry avoidUsingFaceIDCamera:(BOOL)camera allowedUsers:(id)users authenticationContext:(id)context
{
  v9.receiver = self;
  v9.super_class = LAAuthenticationBiometricMethodConfiguration;
  result = [(LAAuthenticationMethodConfiguration *)&v9 initWithAllowedUsers:users authenticationContext:context];
  if (result)
  {
    result->_autoRetry = retry;
    result->_avoidUsingFaceIDCamera = camera;
  }

  return result;
}

@end