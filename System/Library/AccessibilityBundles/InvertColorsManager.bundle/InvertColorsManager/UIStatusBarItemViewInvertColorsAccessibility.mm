@interface UIStatusBarItemViewInvertColorsAccessibility
- (BOOL)accessibilityIgnoresInvertColors;
@end

@implementation UIStatusBarItemViewInvertColorsAccessibility

- (BOOL)accessibilityIgnoresInvertColors
{
  objc_opt_class();
  v3 = [(UIStatusBarItemViewInvertColorsAccessibility *)self safeValueForKey:@"foregroundStyle"];
  v4 = [v3 safeValueForKey:@"tintColor"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = +[UIColor whiteColor];
  LOBYTE(v4) = AXColorsProbablyEqual();

  return v4;
}

@end