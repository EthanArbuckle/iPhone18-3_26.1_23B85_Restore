@interface SSSScreenshotsViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
@end

@implementation SSSScreenshotsViewControllerInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v3 = [(SSSScreenshotsViewControllerInvertColorsAccessibility *)self safeUIViewForKey:@"view"];
  v2 = [v3 window];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

@end