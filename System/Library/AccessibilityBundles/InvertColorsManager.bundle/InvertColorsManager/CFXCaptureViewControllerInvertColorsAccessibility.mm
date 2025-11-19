@interface CFXCaptureViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
@end

@implementation CFXCaptureViewControllerInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(CFXCaptureViewControllerInvertColorsAccessibility *)self safeUIViewForKey:@"view"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

@end