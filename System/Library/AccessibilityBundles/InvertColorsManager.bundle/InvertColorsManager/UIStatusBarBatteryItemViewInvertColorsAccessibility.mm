@interface UIStatusBarBatteryItemViewInvertColorsAccessibility
- (BOOL)accessibilityIgnoresInvertColors;
@end

@implementation UIStatusBarBatteryItemViewInvertColorsAccessibility

- (BOOL)accessibilityIgnoresInvertColors
{
  v3 = +[UIDevice currentDevice];
  isBatteryMonitoringEnabled = [v3 isBatteryMonitoringEnabled];
  accessibilityIgnoresInvertColors = 1;
  [v3 setBatteryMonitoringEnabled:1];
  batteryState = [v3 batteryState];
  [v3 setBatteryMonitoringEnabled:isBatteryMonitoringEnabled];
  objc_opt_class();
  v7 = [(UIStatusBarBatteryItemViewInvertColorsAccessibility *)self safeValueForKey:@"foregroundStyle"];
  v8 = [v7 safeValueForKey:@"tintColor"];
  v9 = __UIAccessibilityCastAsClass();

  if ((batteryState & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v10 = +[UIColor blackColor];
    v11 = AXColorsProbablyEqual();

    if (v11)
    {
      accessibilityIgnoresInvertColors = 0;
    }

    else
    {
      v12 = +[UIColor whiteColor];
      v13 = AXColorsProbablyEqual();

      if (v13)
      {
        accessibilityIgnoresInvertColors = 1;
      }

      else
      {
        v15.receiver = self;
        v15.super_class = UIStatusBarBatteryItemViewInvertColorsAccessibility;
        accessibilityIgnoresInvertColors = [(UIStatusBarBatteryItemViewInvertColorsAccessibility *)&v15 accessibilityIgnoresInvertColors];
      }
    }
  }

  return accessibilityIgnoresInvertColors;
}

@end