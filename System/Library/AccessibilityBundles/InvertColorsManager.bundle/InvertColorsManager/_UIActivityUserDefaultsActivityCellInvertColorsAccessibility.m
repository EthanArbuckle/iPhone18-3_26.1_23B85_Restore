@interface _UIActivityUserDefaultsActivityCellInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation _UIActivityUserDefaultsActivityCellInvertColorsAccessibility

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UIActivityUserDefaultsActivityCellInvertColorsAccessibility;
  [(_UIActivityUserDefaultsActivityCellInvertColorsAccessibility *)&v3 layoutSubviews];
  [(_UIActivityUserDefaultsActivityCellInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  v2 = [(_UIActivityUserDefaultsActivityCellInvertColorsAccessibility *)self safeUIViewForKey:@"activityImageSlotView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

@end