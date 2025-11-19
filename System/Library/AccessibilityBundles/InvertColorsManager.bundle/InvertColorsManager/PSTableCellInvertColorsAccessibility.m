@interface PSTableCellInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)setIcon:(id)a3;
@end

@implementation PSTableCellInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(PSTableCellInvertColorsAccessibility *)self safeValueForKey:@"imageView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

- (void)setIcon:(id)a3
{
  v4.receiver = self;
  v4.super_class = PSTableCellInvertColorsAccessibility;
  [(PSTableCellInvertColorsAccessibility *)&v4 setIcon:a3];
  [(PSTableCellInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end