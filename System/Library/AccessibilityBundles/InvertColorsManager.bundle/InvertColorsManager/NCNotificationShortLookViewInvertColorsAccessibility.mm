@interface NCNotificationShortLookViewInvertColorsAccessibility
- (BOOL)accessibilityIgnoresInvertColors;
- (void)_configureNotificationContentViewIfNecessary;
@end

@implementation NCNotificationShortLookViewInvertColorsAccessibility

- (void)_configureNotificationContentViewIfNecessary
{
  v3.receiver = self;
  v3.super_class = NCNotificationShortLookViewInvertColorsAccessibility;
  [(NCNotificationShortLookViewInvertColorsAccessibility *)&v3 _configureNotificationContentViewIfNecessary];
  [AXInvertColorsAppHelper toggleInvertColors:self];
}

- (BOOL)accessibilityIgnoresInvertColors
{
  v2 = [(NCNotificationShortLookViewInvertColorsAccessibility *)self safeValueForKey:@"_platterView"];
  v3 = [v2 safeIntegerForKey:@"_materialRecipe"];

  return v3 == &stru_20.flags + 1;
}

@end