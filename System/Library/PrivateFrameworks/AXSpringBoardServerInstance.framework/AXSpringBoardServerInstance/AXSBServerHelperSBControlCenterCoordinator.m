@interface AXSBServerHelperSBControlCenterCoordinator
- (BOOL)canBePresented;
@end

@implementation AXSBServerHelperSBControlCenterCoordinator

- (BOOL)canBePresented
{
  v3 = +[_AXSpringBoardServerInstance springBoardServerInstance];
  v4 = [v3 shouldBlockGestureActivation:2];

  if (v4)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = AXSBServerHelperSBControlCenterCoordinator;
  return [(AXSBServerHelperSBControlCenterCoordinator *)&v6 canBePresented];
}

@end