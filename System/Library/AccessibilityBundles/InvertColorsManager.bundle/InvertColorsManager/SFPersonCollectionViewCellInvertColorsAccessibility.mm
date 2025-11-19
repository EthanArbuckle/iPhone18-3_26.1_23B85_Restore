@interface SFPersonCollectionViewCellInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation SFPersonCollectionViewCellInvertColorsAccessibility

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SFPersonCollectionViewCellInvertColorsAccessibility;
  [(SFPersonCollectionViewCellInvertColorsAccessibility *)&v3 layoutSubviews];
  [(SFPersonCollectionViewCellInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  v2 = [(SFPersonCollectionViewCellInvertColorsAccessibility *)self safeValueForKey:@"imageView"];
  v3 = __UIAccessibilitySafeClass();

  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  [v4 setAccessibilityIgnoresInvertColors:1];
}

@end