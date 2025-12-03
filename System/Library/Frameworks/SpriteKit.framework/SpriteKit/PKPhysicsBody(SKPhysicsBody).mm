@interface PKPhysicsBody(SKPhysicsBody)
- (uint64_t)isKindOfClass:()SKPhysicsBody;
@end

@implementation PKPhysicsBody(SKPhysicsBody)

- (uint64_t)isKindOfClass:()SKPhysicsBody
{
  if (objc_opt_class() == a3)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = &off_282E4AE28;
  return objc_msgSendSuper2(&v6, sel_isKindOfClass_, a3);
}

@end