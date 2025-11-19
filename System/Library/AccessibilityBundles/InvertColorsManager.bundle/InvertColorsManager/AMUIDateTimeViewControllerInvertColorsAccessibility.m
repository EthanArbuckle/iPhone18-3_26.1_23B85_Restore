@interface AMUIDateTimeViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)loadView;
@end

@implementation AMUIDateTimeViewControllerInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v4 = [(AMUIDateTimeViewControllerInvertColorsAccessibility *)self safeUIViewForKey:@"_vibrancyView"];
  v3 = [(AMUIDateTimeViewControllerInvertColorsAccessibility *)self safeUIViewForKey:@"_dateTimeView"];
  [v4 setAccessibilityIgnoresInvertColors:1];
  [v3 setAccessibilityIgnoresInvertColors:1];
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = AMUIDateTimeViewControllerInvertColorsAccessibility;
  [(AMUIDateTimeViewControllerInvertColorsAccessibility *)&v3 loadView];
  [(AMUIDateTimeViewControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end