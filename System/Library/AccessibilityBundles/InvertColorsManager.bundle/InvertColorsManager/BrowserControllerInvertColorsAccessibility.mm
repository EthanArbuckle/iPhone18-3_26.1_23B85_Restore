@interface BrowserControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)_initSubviews;
@end

@implementation BrowserControllerInvertColorsAccessibility

- (void)_initSubviews
{
  v3.receiver = self;
  v3.super_class = BrowserControllerInvertColorsAccessibility;
  [(BrowserControllerInvertColorsAccessibility *)&v3 _initSubviews];
  [(BrowserControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  objc_opt_class();
  v3 = [(BrowserControllerInvertColorsAccessibility *)self safeValueForKey:@"rootViewController"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 view];
  v6 = [v5 window];

  if (UIAccessibilityIsInvertColorsEnabled())
  {
    v7 = [AXInvertColorsAppHelper insertBackgroundView:v6 alpha:1.0];
  }

  else
  {
    [AXInvertColorsAppHelper removeBackgroundView:v6];
  }
}

@end