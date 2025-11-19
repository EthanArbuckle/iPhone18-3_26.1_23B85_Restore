@interface UIStatusBarBatteryItemViewInvertColorsAccessibility
- (BOOL)accessibilityIgnoresInvertColors;
@end

@implementation UIStatusBarBatteryItemViewInvertColorsAccessibility

- (BOOL)accessibilityIgnoresInvertColors
{
  v3 = +[UIDevice currentDevice];
  v4 = [v3 isBatteryMonitoringEnabled];
  v5 = 1;
  [v3 setBatteryMonitoringEnabled:1];
  v6 = [v3 batteryState];
  [v3 setBatteryMonitoringEnabled:v4];
  objc_opt_class();
  v7 = [(UIStatusBarBatteryItemViewInvertColorsAccessibility *)self safeValueForKey:@"foregroundStyle"];
  v8 = [v7 safeValueForKey:@"tintColor"];
  v9 = __UIAccessibilityCastAsClass();

  if ((v6 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v10 = +[UIColor blackColor];
    v11 = AXColorsProbablyEqual();

    if (v11)
    {
      v5 = 0;
    }

    else
    {
      v12 = +[UIColor whiteColor];
      v13 = AXColorsProbablyEqual();

      if (v13)
      {
        v5 = 1;
      }

      else
      {
        v15.receiver = self;
        v15.super_class = UIStatusBarBatteryItemViewInvertColorsAccessibility;
        v5 = [(UIStatusBarBatteryItemViewInvertColorsAccessibility *)&v15 accessibilityIgnoresInvertColors];
      }
    }
  }

  return v5;
}

@end