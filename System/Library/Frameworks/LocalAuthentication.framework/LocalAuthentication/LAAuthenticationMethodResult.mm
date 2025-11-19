@interface LAAuthenticationMethodResult
- (LAAuthenticationMethodResult)initWithAuthenticatedUser:(id)a3 authenticationMethod:(id)a4;
@end

@implementation LAAuthenticationMethodResult

- (LAAuthenticationMethodResult)initWithAuthenticatedUser:(id)a3 authenticationMethod:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = LAAuthenticationMethodResult;
  v9 = [(LAAuthenticationMethodResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_authenticatedUser, a3);
    objc_storeStrong(&v10->_authenticationMethod, a4);
  }

  return v10;
}

@end