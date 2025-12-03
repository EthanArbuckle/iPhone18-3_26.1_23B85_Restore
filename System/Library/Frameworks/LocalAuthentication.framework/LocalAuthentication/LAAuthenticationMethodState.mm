@interface LAAuthenticationMethodState
- (LAAuthenticationMethodState)initWithAvailableUsers:(id)users;
@end

@implementation LAAuthenticationMethodState

- (LAAuthenticationMethodState)initWithAvailableUsers:(id)users
{
  usersCopy = users;
  v9.receiver = self;
  v9.super_class = LAAuthenticationMethodState;
  v6 = [(LAAuthenticationMethodState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_availableUsers, users);
  }

  return v7;
}

@end