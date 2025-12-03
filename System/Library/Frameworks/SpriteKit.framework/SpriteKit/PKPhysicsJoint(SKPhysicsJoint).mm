@interface PKPhysicsJoint(SKPhysicsJoint)
- (uint64_t)isKindOfClass:()SKPhysicsJoint;
@end

@implementation PKPhysicsJoint(SKPhysicsJoint)

- (uint64_t)isKindOfClass:()SKPhysicsJoint
{
  if (objc_opt_class() == a3)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = &off_282E4B310;
  return objc_msgSendSuper2(&v6, sel_isKindOfClass_, a3);
}

@end