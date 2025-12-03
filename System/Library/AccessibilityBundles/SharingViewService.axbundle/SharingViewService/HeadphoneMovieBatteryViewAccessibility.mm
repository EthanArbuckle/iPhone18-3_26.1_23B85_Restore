@interface HeadphoneMovieBatteryViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityOverridesInvalidFrames;
- (CGRect)accessibilityFrame;
- (void)updateWithBatteries:(id)batteries;
@end

@implementation HeadphoneMovieBatteryViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SharingViewService.HeadphoneMovieBatteryView"];
  [validationsCopy validateClass:@"SharingViewService.HeadphoneMovieBatteryView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"SharingViewService.HeadphoneMovieBatteryView" hasSwiftField:@"batteryViews" withSwiftType:"Array<LabelledBatteryView>"];
  [validationsCopy validateClass:@"SharingViewService.HeadphoneMovieBatteryView" hasInstanceMethod:@"updateWithBatteries:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SFBatteryInfo"];
  [validationsCopy validateClass:@"SFBatteryInfo" hasInstanceMethod:@"batteryType" withFullSignature:{"q", 0}];
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

- (void)updateWithBatteries:(id)batteries
{
  v9.receiver = self;
  v9.super_class = HeadphoneMovieBatteryViewAccessibility;
  batteriesCopy = batteries;
  [(HeadphoneMovieBatteryViewAccessibility *)&v9 updateWithBatteries:batteriesCopy];
  v5 = [(HeadphoneMovieBatteryViewAccessibility *)self safeSwiftArrayForKey:@"batteryViews"];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __62__HeadphoneMovieBatteryViewAccessibility_updateWithBatteries___block_invoke;
  v7[3] = &unk_29F2F7E88;
  v8 = v5;
  v6 = v5;
  [batteriesCopy enumerateObjectsUsingBlock:v7];
}

void __62__HeadphoneMovieBatteryViewAccessibility_updateWithBatteries___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 safeIntegerForKey:@"batteryType"];
  objc_opt_class();
  v7 = [*(a1 + 32) axSafeObjectAtIndex:a3];
  v8 = __UIAccessibilityCastAsSafeCategory();

  if (v6 == 1)
  {
    v9 = @"battery.case";
    goto LABEL_5;
  }

  if (v6 == 2)
  {
    v9 = @"battery.combined.earbuds";
LABEL_5:
    [v8 setAXBatteryType:v9];
  }
}

@end