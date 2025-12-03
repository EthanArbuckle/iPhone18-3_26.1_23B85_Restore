@interface SCNPhysicsBehavior
- (SCNPhysicsBehavior)initWithCoder:(id)coder;
@end

@implementation SCNPhysicsBehavior

- (SCNPhysicsBehavior)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SCNPhysicsBehavior;
  return [(SCNPhysicsBehavior *)&v4 init];
}

@end