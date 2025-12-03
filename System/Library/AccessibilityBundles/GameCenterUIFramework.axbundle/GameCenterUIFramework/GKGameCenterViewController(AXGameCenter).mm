@interface GKGameCenterViewController(AXGameCenter)
- (id)__axValueForKey:()AXGameCenter;
@end

@implementation GKGameCenterViewController(AXGameCenter)

- (id)__axValueForKey:()AXGameCenter
{
  v3.receiver = self;
  v3.super_class = &off_2A21B94B0;
  v1 = objc_msgSendSuper2(&v3, sel_valueForKey_);

  return v1;
}

@end