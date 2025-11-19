@interface SBHWidgetStackViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)viewWillLayoutSubviews;
@end

@implementation SBHWidgetStackViewControllerInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v6 = [(SBHWidgetStackViewControllerInvertColorsAccessibility *)self safeUIViewForKey:@"backgroundView"];
  [v6 setAccessibilityMaterialViewMimicsReduceTransparency:1];
  v3 = [(SBHWidgetStackViewControllerInvertColorsAccessibility *)self safeValueForKey:@"delegate"];
  v4 = [v3 safeValueForKey:@"delegate"];

  if (UIAccessibilityIsInvertColorsEnabled() && (AXSafeClassFromString(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = [UIColor colorWithRed:0.3 green:0.3 blue:0.3 alpha:1.0];
    [v6 setBackgroundColor:v5];
  }

  else
  {
    [v6 setBackgroundColor:0];
  }
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBHWidgetStackViewControllerInvertColorsAccessibility;
  [(SBHWidgetStackViewControllerInvertColorsAccessibility *)&v3 viewWillLayoutSubviews];
  [(SBHWidgetStackViewControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end