@interface GAXSBSwitcherControllerOverride
- (id)_currentFloatingAppLayout;
@end

@implementation GAXSBSwitcherControllerOverride

- (id)_currentFloatingAppLayout
{
  v7.receiver = self;
  v7.super_class = GAXSBSwitcherControllerOverride;
  _currentFloatingAppLayout = [(GAXSBSwitcherControllerOverride *)&v7 _currentFloatingAppLayout];
  v4 = +[GAXSpringboard sharedInstance];
  if (-[GAXSBSwitcherControllerOverride _gaxShouldLimitActiveAppLayoutToCurrentApp](self, "_gaxShouldLimitActiveAppLayoutToCurrentApp") && ([v4 isFrontmostAppLayout:_currentFloatingAppLayout] & 1) == 0)
  {
    v5 = GAXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_16C70(_currentFloatingAppLayout, v5);
    }

    _currentFloatingAppLayout = 0;
  }

  return _currentFloatingAppLayout;
}

@end