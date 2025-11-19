@interface BCBatteryWidgetRowViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation BCBatteryWidgetRowViewInvertColorsAccessibility

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = BCBatteryWidgetRowViewInvertColorsAccessibility;
  [(BCBatteryWidgetRowViewInvertColorsAccessibility *)&v3 layoutSubviews];
  [(BCBatteryWidgetRowViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  v2 = [(BCBatteryWidgetRowViewInvertColorsAccessibility *)self safeUIViewForKey:@"_glyphImageView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

@end