@interface PSTableCellInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)setIcon:(id)icon;
@end

@implementation PSTableCellInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(PSTableCellInvertColorsAccessibility *)self safeValueForKey:@"imageView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

- (void)setIcon:(id)icon
{
  v4.receiver = self;
  v4.super_class = PSTableCellInvertColorsAccessibility;
  [(PSTableCellInvertColorsAccessibility *)&v4 setIcon:icon];
  [(PSTableCellInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end