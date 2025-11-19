@interface LAAuthenticationMethodState
- (LAAuthenticationMethodState)initWithAvailableUsers:(id)a3;
@end

@implementation LAAuthenticationMethodState

- (LAAuthenticationMethodState)initWithAvailableUsers:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LAAuthenticationMethodState;
  v6 = [(LAAuthenticationMethodState *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_availableUsers, a3);
  }

  return v7;
}

@end