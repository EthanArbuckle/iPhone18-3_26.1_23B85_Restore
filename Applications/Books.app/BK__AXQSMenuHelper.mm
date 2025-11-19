@interface BK__AXQSMenuHelper
- (void)restoreMenu;
@end

@implementation BK__AXQSMenuHelper

- (void)restoreMenu
{
  v3 = [(BK__AXQSMenuHelper *)self imaxValueForKey:@"thirdPartyMenuItems"];

  if (v3)
  {
    v4.receiver = self;
    v4.super_class = BK__AXQSMenuHelper;
    [(BK__AXQSMenuHelper *)&v4 restoreMenu];
  }
}

@end