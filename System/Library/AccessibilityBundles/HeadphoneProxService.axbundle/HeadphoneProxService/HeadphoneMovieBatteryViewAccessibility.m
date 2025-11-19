@interface HeadphoneMovieBatteryViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityOverridesInvalidFrames;
- (CGRect)accessibilityFrame;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axSetupLabels;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation HeadphoneMovieBatteryViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HeadphoneProxService.HeadphoneMovieBatteryView"];
  [v3 validateClass:@"HeadphoneProxService.HeadphoneMovieBatteryView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"HeadphoneProxService.HeadphoneMovieBatteryView" hasSwiftField:@"batteryViews" withSwiftType:"Array<LabelledBatteryView>"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = HeadphoneMovieBatteryViewAccessibility;
  [(HeadphoneMovieBatteryViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(HeadphoneMovieBatteryViewAccessibility *)self _axSetupLabels];
}

- (BOOL)_accessibilityOverridesInvalidFrames
{
  v7.receiver = self;
  v7.super_class = HeadphoneMovieBatteryViewAccessibility;
  [(HeadphoneMovieBatteryViewAccessibility *)&v7 accessibilityFrame];
  result = 1;
  if (fabs(v3) >= 0.001 && fabs(v4) >= 0.001 && v3 > 0.0 && v4 > 0.0)
  {
    v6.receiver = self;
    v6.super_class = HeadphoneMovieBatteryViewAccessibility;
    return [(HeadphoneMovieBatteryViewAccessibility *)&v6 _accessibilityOverridesInvalidFrames];
  }

  return result;
}

- (CGRect)accessibilityFrame
{
  v21.receiver = self;
  v21.super_class = HeadphoneMovieBatteryViewAccessibility;
  [(HeadphoneMovieBatteryViewAccessibility *)&v21 accessibilityFrame];
  v5 = v4;
  v7 = v6;
  v8 = v2;
  v9 = v3;
  if (fabs(v2) < 0.001 || fabs(v3) < 0.001 || v2 <= 0.0 || v3 <= 0.0)
  {
    objc_opt_class();
    v10 = __UIAccessibilityCastAsClass();
    v11 = [v10 superview];
    v12 = v11;
    if (v11)
    {
      [v11 accessibilityFrame];
      v5 = v13;
      v7 = v14;
      v8 = v15;
      v9 = v16;
    }
  }

  v17 = v5;
  v18 = v7;
  v19 = v8;
  v20 = v9;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)willMoveToSuperview:(id)a3
{
  v4.receiver = self;
  v4.super_class = HeadphoneMovieBatteryViewAccessibility;
  [(HeadphoneMovieBatteryViewAccessibility *)&v4 willMoveToSuperview:a3];
  [(HeadphoneMovieBatteryViewAccessibility *)self _axSetupLabels];
}

- (void)_axSetupLabels
{
  v2 = [(HeadphoneMovieBatteryViewAccessibility *)self safeSwiftArrayForKey:@"batteryViews"];
  if ([v2 count])
  {
    objc_opt_class();
    v3 = [v2 objectAtIndexedSubscript:0];
    v4 = __UIAccessibilityCastAsSafeCategory();

    [v4 setAXBatteryType:@"battery.combined.earbuds"];
  }

  if ([v2 count] >= 2)
  {
    objc_opt_class();
    v5 = [v2 objectAtIndexedSubscript:1];
    v6 = __UIAccessibilityCastAsSafeCategory();

    [v6 setAXBatteryType:@"battery.case"];
  }
}

@end