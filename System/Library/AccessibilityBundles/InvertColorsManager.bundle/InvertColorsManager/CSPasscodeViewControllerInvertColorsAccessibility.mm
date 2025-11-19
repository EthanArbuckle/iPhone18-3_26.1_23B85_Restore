@interface CSPasscodeViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
@end

@implementation CSPasscodeViewControllerInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v4 = [(CSPasscodeViewControllerInvertColorsAccessibility *)self safeUIViewForKey:@"view"];
  [v4 setAccessibilityIgnoresInvertColors:1];
  if (UIAccessibilityIsInvertColorsEnabled())
  {
    v2 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    v3 = [AXInvertColorsAppHelper insertBackgroundView:v4 color:v2];
  }

  else
  {
    [AXInvertColorsAppHelper removeBackgroundView:v4];
  }
}

@end