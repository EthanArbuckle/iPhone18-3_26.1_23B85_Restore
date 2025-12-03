@interface SSSScreenshotsViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
@end

@implementation SSSScreenshotsViewControllerInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v3 = [(SSSScreenshotsViewControllerInvertColorsAccessibility *)self safeUIViewForKey:@"view"];
  window = [v3 window];
  [window setAccessibilityIgnoresInvertColors:1];
}

@end