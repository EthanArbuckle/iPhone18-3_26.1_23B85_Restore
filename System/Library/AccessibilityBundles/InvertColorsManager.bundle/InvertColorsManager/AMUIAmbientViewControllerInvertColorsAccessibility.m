@interface AMUIAmbientViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation AMUIAmbientViewControllerInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v3 = [(AMUIAmbientViewControllerInvertColorsAccessibility *)self safeValueForKey:@"_posterEditingSwitcherVC"];
  v4 = v3 == 0;

  v5 = [(AMUIAmbientViewControllerInvertColorsAccessibility *)self safeUIViewForKey:@"view"];
  [v5 setAccessibilityIgnoresInvertColors:v4];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = AMUIAmbientViewControllerInvertColorsAccessibility;
  [(AMUIAmbientViewControllerInvertColorsAccessibility *)&v3 viewDidLoad];
  [(AMUIAmbientViewControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = AMUIAmbientViewControllerInvertColorsAccessibility;
  [(AMUIAmbientViewControllerInvertColorsAccessibility *)&v3 viewDidLayoutSubviews];
  [(AMUIAmbientViewControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end