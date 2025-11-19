@interface CSModalButtonInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation CSModalButtonInvertColorsAccessibility

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CSModalButtonInvertColorsAccessibility;
  [(CSModalButtonInvertColorsAccessibility *)&v3 layoutSubviews];
  [(CSModalButtonInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 layer];
  [AXInvertColorsAppHelper toggleInvertColors:v3];

  v4 = [v2 titleLabel];
  v5 = [v4 layer];
  [AXInvertColorsAppHelper toggleInvertColors:v5];
}

@end