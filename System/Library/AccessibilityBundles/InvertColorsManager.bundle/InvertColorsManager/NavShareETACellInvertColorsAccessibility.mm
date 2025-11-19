@interface NavShareETACellInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation NavShareETACellInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(NavShareETACellInvertColorsAccessibility *)self safeUIViewForKey:@"_badgeImageView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NavShareETACellInvertColorsAccessibility;
  [(NavShareETACellInvertColorsAccessibility *)&v3 layoutSubviews];
  [(NavShareETACellInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end