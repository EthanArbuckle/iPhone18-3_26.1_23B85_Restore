@interface HeadphoneMovieBatteryViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityOverridesInvalidFrames;
- (CGRect)accessibilityFrame;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axSetupLabels;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation HeadphoneMovieBatteryViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HeadphoneProxService.HeadphoneMovieBatteryView"];
  [validationsCopy validateClass:@"HeadphoneProxService.HeadphoneMovieBatteryView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"HeadphoneProxService.HeadphoneMovieBatteryView" hasSwiftField:@"batteryViews" withSwiftType:"Array<LabelledBatteryView>"];
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
    superview = [v10 superview];
    v12 = superview;
    if (superview)
    {
      [superview accessibilityFrame];
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

- (void)willMoveToSuperview:(id)superview
{
  v4.receiver = self;
  v4.super_class = HeadphoneMovieBatteryViewAccessibility;
  [(HeadphoneMovieBatteryViewAccessibility *)&v4 willMoveToSuperview:superview];
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