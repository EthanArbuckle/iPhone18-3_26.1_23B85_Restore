@interface AMUINotificationIndicatorViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
@end

@implementation AMUINotificationIndicatorViewInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  [v2 setAccessibilityIgnoresInvertColors:0];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = AMUINotificationIndicatorViewInvertColorsAccessibility;
  [(AMUINotificationIndicatorViewInvertColorsAccessibility *)&v3 layoutSubviews];
  [(AMUINotificationIndicatorViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end