@interface AAUIDeviceInfoHeaderViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)_setupSubviews;
@end

@implementation AAUIDeviceInfoHeaderViewInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(AAUIDeviceInfoHeaderViewInvertColorsAccessibility *)self safeUIViewForKey:@"_deviceImageView"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

- (void)_setupSubviews
{
  v3.receiver = self;
  v3.super_class = AAUIDeviceInfoHeaderViewInvertColorsAccessibility;
  [(AAUIDeviceInfoHeaderViewInvertColorsAccessibility *)&v3 _setupSubviews];
  [(AAUIDeviceInfoHeaderViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end