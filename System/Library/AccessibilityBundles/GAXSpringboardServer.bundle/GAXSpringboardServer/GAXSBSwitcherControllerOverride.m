@interface GAXSBSwitcherControllerOverride
- (id)_currentFloatingAppLayout;
@end

@implementation GAXSBSwitcherControllerOverride

- (id)_currentFloatingAppLayout
{
  v7.receiver = self;
  v7.super_class = GAXSBSwitcherControllerOverride;
  v3 = [(GAXSBSwitcherControllerOverride *)&v7 _currentFloatingAppLayout];
  v4 = +[GAXSpringboard sharedInstance];
  if (-[GAXSBSwitcherControllerOverride _gaxShouldLimitActiveAppLayoutToCurrentApp](self, "_gaxShouldLimitActiveAppLayoutToCurrentApp") && ([v4 isFrontmostAppLayout:v3] & 1) == 0)
  {
    v5 = GAXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_16C70(v3, v5);
    }

    v3 = 0;
  }

  return v3;
}

@end