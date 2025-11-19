@interface PKPhysicsWorld(SKPhysicsWorld)
- (uint64_t)isKindOfClass:()SKPhysicsWorld;
@end

@implementation PKPhysicsWorld(SKPhysicsWorld)

- (uint64_t)isKindOfClass:()SKPhysicsWorld
{
  if (objc_opt_class() == a3)
  {
    return 1;
  }

  v6.receiver = a1;
  v6.super_class = &off_282E4BA48;
  return objc_msgSendSuper2(&v6, sel_isKindOfClass_, a3);
}

@end