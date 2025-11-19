@interface SUNavigationControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)viewWillLayoutSubviews;
@end

@implementation SUNavigationControllerInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v8 = [(SUNavigationControllerInvertColorsAccessibility *)self safeUIViewForKey:@"view"];
  v3 = [v8 backgroundColor];
  if (v3)
  {
    AXColorGetLuma();
    v5 = v4 < 0.5;
    [v8 setAccessibilityIgnoresInvertColors:v5];
    v6 = [(SUNavigationControllerInvertColorsAccessibility *)self parentViewController];
    v7 = [v6 safeUIViewForKey:@"tabBar"];
    [v7 setAccessibilityIgnoresInvertColors:v5];
  }
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SUNavigationControllerInvertColorsAccessibility;
  [(SUNavigationControllerInvertColorsAccessibility *)&v3 viewWillLayoutSubviews];
  [(SUNavigationControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end