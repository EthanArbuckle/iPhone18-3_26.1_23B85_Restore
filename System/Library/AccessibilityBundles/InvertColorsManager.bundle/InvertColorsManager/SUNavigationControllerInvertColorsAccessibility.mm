@interface SUNavigationControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)viewWillLayoutSubviews;
@end

@implementation SUNavigationControllerInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v8 = [(SUNavigationControllerInvertColorsAccessibility *)self safeUIViewForKey:@"view"];
  backgroundColor = [v8 backgroundColor];
  if (backgroundColor)
  {
    AXColorGetLuma();
    v5 = v4 < 0.5;
    [v8 setAccessibilityIgnoresInvertColors:v5];
    parentViewController = [(SUNavigationControllerInvertColorsAccessibility *)self parentViewController];
    v7 = [parentViewController safeUIViewForKey:@"tabBar"];
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