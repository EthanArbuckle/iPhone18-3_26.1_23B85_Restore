@interface TUISingleModelContainerWithRole
- (TUISingleModelContainerWithRole)initWithRole:(id)role;
@end

@implementation TUISingleModelContainerWithRole

- (TUISingleModelContainerWithRole)initWithRole:(id)role
{
  roleCopy = role;
  v9.receiver = self;
  v9.super_class = TUISingleModelContainerWithRole;
  v6 = [(TUISingleModelContainerWithRole *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_role, role);
  }

  return v7;
}

@end