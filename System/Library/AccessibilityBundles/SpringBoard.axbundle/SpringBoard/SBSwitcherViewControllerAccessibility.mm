@interface SBSwitcherViewControllerAccessibility
- (id)_axMainSwitcher;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation SBSwitcherViewControllerAccessibility

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SBSwitcherViewControllerAccessibility;
  [(SBSwitcherViewControllerAccessibility *)&v4 viewDidAppear:a3];
  [(SBSwitcherViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = SBSwitcherViewControllerAccessibility;
  [(SBSwitcherViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(SBSwitcherViewControllerAccessibility *)self _axMainSwitcher];
  [v3 _accessibilityLoadAccessibilityInformation];
}

- (id)_axMainSwitcher
{
  objc_opt_class();
  v2 = AXSBMainSwitcherControllerCoordinatorSharedInstance();
  v3 = __UIAccessibilityCastAsSafeCategory();

  return v3;
}

@end