@interface CNContactHeaderStaticDisplayViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)setUpPosterView;
@end

@implementation CNContactHeaderStaticDisplayViewInvertColorsAccessibility

- (void)setUpPosterView
{
  v3.receiver = self;
  v3.super_class = CNContactHeaderStaticDisplayViewInvertColorsAccessibility;
  [(CNContactHeaderStaticDisplayViewInvertColorsAccessibility *)&v3 setUpPosterView];
  [(CNContactHeaderStaticDisplayViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  v2 = [(CNContactHeaderStaticDisplayViewInvertColorsAccessibility *)self safeUIViewForKey:@"posterView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

@end