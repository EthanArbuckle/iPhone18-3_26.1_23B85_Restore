@interface SBSwitcherViewControllerAccessibility
- (id)_axMainSwitcher;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation SBSwitcherViewControllerAccessibility

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SBSwitcherViewControllerAccessibility;
  [(SBSwitcherViewControllerAccessibility *)&v4 viewDidAppear:appear];
  [(SBSwitcherViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = SBSwitcherViewControllerAccessibility;
  [(SBSwitcherViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  _axMainSwitcher = [(SBSwitcherViewControllerAccessibility *)self _axMainSwitcher];
  [_axMainSwitcher _accessibilityLoadAccessibilityInformation];
}

- (id)_axMainSwitcher
{
  objc_opt_class();
  v2 = AXSBMainSwitcherControllerCoordinatorSharedInstance();
  v3 = __UIAccessibilityCastAsSafeCategory();

  return v3;
}

@end