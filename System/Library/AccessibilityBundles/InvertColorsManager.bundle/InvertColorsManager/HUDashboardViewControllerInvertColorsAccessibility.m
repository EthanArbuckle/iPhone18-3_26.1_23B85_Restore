@interface HUDashboardViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)viewDidLoad;
@end

@implementation HUDashboardViewControllerInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(HUDashboardViewControllerInvertColorsAccessibility *)self safeValueForKey:@"view"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HUDashboardViewControllerInvertColorsAccessibility;
  [(HUDashboardViewControllerInvertColorsAccessibility *)&v3 viewDidLoad];
  [(HUDashboardViewControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end