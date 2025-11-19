@interface SBUIActionViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)_setupSubviews;
@end

@implementation SBUIActionViewInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v5 = [(SBUIActionViewInvertColorsAccessibility *)self safeUIViewForKey:@"_imageView"];
  [v5 setAccessibilityIgnoresInvertColors:0];
  v3 = [(SBUIActionViewInvertColorsAccessibility *)self safeValueForKey:@"_action"];
  v4 = [v3 safeUIViewForKey:@"badgeView"];

  [v4 setAccessibilityIgnoresInvertColors:1];
}

- (void)_setupSubviews
{
  v3.receiver = self;
  v3.super_class = SBUIActionViewInvertColorsAccessibility;
  [(SBUIActionViewInvertColorsAccessibility *)&v3 _setupSubviews];
  [(SBUIActionViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end