@interface BKUIPearlEnrollViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
@end

@implementation BKUIPearlEnrollViewControllerInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v3 = [(BKUIPearlEnrollViewControllerInvertColorsAccessibility *)self safeUIViewForKey:@"view"];
  [v3 setAccessibilityIgnoresInvertColors:{-[BKUIPearlEnrollViewControllerInvertColorsAccessibility safeBoolForKey:](self, "safeBoolForKey:", @"_darkBackground"}];

  v4 = [(BKUIPearlEnrollViewControllerInvertColorsAccessibility *)self safeValueForKeyPath:@"parentViewController.navigationController.navigationBar"];
  [v4 setAccessibilityIgnoresInvertColors:{-[BKUIPearlEnrollViewControllerInvertColorsAccessibility safeBoolForKey:](self, "safeBoolForKey:", @"_darkBackground"}];
}

@end