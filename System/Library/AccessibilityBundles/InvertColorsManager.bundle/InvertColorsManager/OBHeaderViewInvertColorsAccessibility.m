@interface OBHeaderViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation OBHeaderViewInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v3 = [(OBHeaderViewInvertColorsAccessibility *)self safeValueForKey:@"imageView"];
  [v3 setAccessibilityIgnoresInvertColors:1];

  v4 = [(OBHeaderViewInvertColorsAccessibility *)self safeValueForKey:@"animationView"];
  [v4 setAccessibilityIgnoresInvertColors:1];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = OBHeaderViewInvertColorsAccessibility;
  [(OBHeaderViewInvertColorsAccessibility *)&v3 layoutSubviews];
  [(OBHeaderViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end