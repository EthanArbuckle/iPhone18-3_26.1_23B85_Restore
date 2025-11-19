@interface SendMenuCollectionViewCellInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation SendMenuCollectionViewCellInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(SendMenuCollectionViewCellInvertColorsAccessibility *)self safeSwiftValueForKey:@"iconImageView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SendMenuCollectionViewCellInvertColorsAccessibility;
  [(SendMenuCollectionViewCellInvertColorsAccessibility *)&v3 layoutSubviews];
  [(SendMenuCollectionViewCellInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end