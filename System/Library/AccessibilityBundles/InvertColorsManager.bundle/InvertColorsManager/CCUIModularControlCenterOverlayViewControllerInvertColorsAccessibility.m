@interface CCUIModularControlCenterOverlayViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)viewDidLoad;
@end

@implementation CCUIModularControlCenterOverlayViewControllerInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v3 = _AXSInvertColorsEnabledGlobalCached() != 0;
  v4 = [(CCUIModularControlCenterOverlayViewControllerInvertColorsAccessibility *)self safeValueForKey:@"_scrollView"];
  [v4 setAccessibilityIgnoresInvertColors:v3];

  v5 = [(CCUIModularControlCenterOverlayViewControllerInvertColorsAccessibility *)self safeValueForKey:@"_headerPocketView"];
  [v5 setAccessibilityIgnoresInvertColors:v3];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CCUIModularControlCenterOverlayViewControllerInvertColorsAccessibility;
  [(CCUIModularControlCenterOverlayViewControllerInvertColorsAccessibility *)&v3 viewDidLoad];
  [(CCUIModularControlCenterOverlayViewControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end