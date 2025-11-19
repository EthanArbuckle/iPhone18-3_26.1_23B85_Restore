@interface PXPersonTableViewCellInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation PXPersonTableViewCellInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(PXPersonTableViewCellInvertColorsAccessibility *)self safeUIViewForKey:@"imageView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PXPersonTableViewCellInvertColorsAccessibility;
  [(PXPersonTableViewCellInvertColorsAccessibility *)&v3 layoutSubviews];
  [(PXPersonTableViewCellInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end