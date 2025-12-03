@interface LAAuthenticationMethodConfiguration
- (LAAuthenticationMethodConfiguration)initWithAllowedUsers:(id)users authenticationContext:(id)context;
@end

@implementation LAAuthenticationMethodConfiguration

- (LAAuthenticationMethodConfiguration)initWithAllowedUsers:(id)users authenticationContext:(id)context
{
  usersCopy = users;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = LAAuthenticationMethodConfiguration;
  v9 = [(LAAuthenticationMethodConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_allowedUsers, users);
    objc_storeStrong(&v10->_authenticationContext, context);
  }

  return v10;
}

@end