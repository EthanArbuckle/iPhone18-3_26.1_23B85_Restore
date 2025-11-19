@interface UIAirDropGroupActivityCellInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation UIAirDropGroupActivityCellInvertColorsAccessibility

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = UIAirDropGroupActivityCellInvertColorsAccessibility;
  [(UIAirDropGroupActivityCellInvertColorsAccessibility *)&v3 layoutSubviews];
  [(UIAirDropGroupActivityCellInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  v3 = [(UIAirDropGroupActivityCellInvertColorsAccessibility *)self safeUIViewForKey:@"imageView"];
  [v3 setAccessibilityIgnoresInvertColors:1];

  v4 = [(UIAirDropGroupActivityCellInvertColorsAccessibility *)self safeUIViewForKey:@"imageSlotView"];
  [v4 setAccessibilityIgnoresInvertColors:1];

  v5 = [(UIAirDropGroupActivityCellInvertColorsAccessibility *)self safeUIViewForKey:@"transportSlotView"];
  [v5 setAccessibilityIgnoresInvertColors:1];

  v6 = [(UIAirDropGroupActivityCellInvertColorsAccessibility *)self safeUIViewForKey:@"transportImageView"];
  [v6 setAccessibilityIgnoresInvertColors:1];
}

@end