@interface SBSwitcherShelfViewAccessibility
- (id)_axMainSwitcher;
- (id)accessibilityLabel;
- (int64_t)accessibilityContainerType;
@end

@implementation SBSwitcherShelfViewAccessibility

- (id)accessibilityLabel
{
  _axMainSwitcher = [(SBSwitcherShelfViewAccessibility *)self _axMainSwitcher];
  _axIsShelfSwitcherVisible = [_axMainSwitcher _axIsShelfSwitcherVisible];

  if (_axIsShelfSwitcherVisible)
  {
    v4 = accessibilityLocalizedString(@"shelf.container");
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)accessibilityContainerType
{
  _axMainSwitcher = [(SBSwitcherShelfViewAccessibility *)self _axMainSwitcher];
  _axIsShelfSwitcherVisible = [_axMainSwitcher _axIsShelfSwitcherVisible];

  if (_axIsShelfSwitcherVisible)
  {
    return 4;
  }

  v6.receiver = self;
  v6.super_class = SBSwitcherShelfViewAccessibility;
  return [(SBSwitcherShelfViewAccessibility *)&v6 accessibilityContainerType];
}

- (id)_axMainSwitcher
{
  objc_opt_class();
  v2 = AXSBMainSwitcherControllerCoordinatorSharedInstance();
  v3 = __UIAccessibilityCastAsSafeCategory();

  return v3;
}

@end