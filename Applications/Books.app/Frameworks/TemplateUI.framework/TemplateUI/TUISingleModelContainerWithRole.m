@interface TUISingleModelContainerWithRole
- (TUISingleModelContainerWithRole)initWithRole:(id)a3;
@end

@implementation TUISingleModelContainerWithRole

- (TUISingleModelContainerWithRole)initWithRole:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TUISingleModelContainerWithRole;
  v6 = [(TUISingleModelContainerWithRole *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_role, a3);
  }

  return v7;
}

@end