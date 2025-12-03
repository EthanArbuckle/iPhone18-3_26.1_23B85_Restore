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
  layer = [v2 layer];
  [AXInvertColorsAppHelper toggleInvertColors:layer];

  titleLabel = [v2 titleLabel];
  layer2 = [titleLabel layer];
  [AXInvertColorsAppHelper toggleInvertColors:layer2];
}

@end