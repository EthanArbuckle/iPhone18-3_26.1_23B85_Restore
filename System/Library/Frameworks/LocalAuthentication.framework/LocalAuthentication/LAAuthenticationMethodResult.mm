@interface LAAuthenticationMethodResult
- (LAAuthenticationMethodResult)initWithAuthenticatedUser:(id)user authenticationMethod:(id)method;
@end

@implementation LAAuthenticationMethodResult

- (LAAuthenticationMethodResult)initWithAuthenticatedUser:(id)user authenticationMethod:(id)method
{
  userCopy = user;
  methodCopy = method;
  v12.receiver = self;
  v12.super_class = LAAuthenticationMethodResult;
  v9 = [(LAAuthenticationMethodResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_authenticatedUser, user);
    objc_storeStrong(&v10->_authenticationMethod, method);
  }

  return v10;
}

@end