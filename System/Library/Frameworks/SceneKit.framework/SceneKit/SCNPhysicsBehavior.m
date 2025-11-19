@interface SCNPhysicsBehavior
- (SCNPhysicsBehavior)initWithCoder:(id)a3;
@end

@implementation SCNPhysicsBehavior

- (SCNPhysicsBehavior)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SCNPhysicsBehavior;
  return [(SCNPhysicsBehavior *)&v4 init];
}

@end