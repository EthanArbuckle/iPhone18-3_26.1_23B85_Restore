@interface SBSwitcherShelfViewAccessibility
- (id)_axMainSwitcher;
- (id)accessibilityLabel;
- (int64_t)accessibilityContainerType;
@end

@implementation SBSwitcherShelfViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(SBSwitcherShelfViewAccessibility *)self _axMainSwitcher];
  v3 = [v2 _axIsShelfSwitcherVisible];

  if (v3)
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
  v3 = [(SBSwitcherShelfViewAccessibility *)self _axMainSwitcher];
  v4 = [v3 _axIsShelfSwitcherVisible];

  if (v4)
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