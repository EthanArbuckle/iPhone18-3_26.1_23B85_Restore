@interface HeadphoneImageBatteryViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)updateWithBattery:(id)battery;
@end

@implementation HeadphoneImageBatteryViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SharingViewService.HeadphoneImageBatteryView"];
  [validationsCopy validateClass:@"SharingViewService.HeadphoneImageBatteryView" hasSwiftField:@"batteryView" withSwiftType:"LabelledBatteryView"];
  [validationsCopy validateClass:@"SharingViewService.HeadphoneImageBatteryView" hasSwiftField:@"imageViews" withSwiftType:"Array<SFAdjustedImageView>"];
  [validationsCopy validateClass:@"SharingViewService.HeadphoneImageBatteryView" hasInstanceMethod:@"updateWithBattery:" withFullSignature:{"v", "@", 0}];
}

- (void)updateWithBattery:(id)battery
{
  batteryCopy = battery;
  v11.receiver = self;
  v11.super_class = HeadphoneImageBatteryViewAccessibility;
  [(HeadphoneImageBatteryViewAccessibility *)&v11 updateWithBattery:batteryCopy];
  v5 = [batteryCopy safeIntegerForKey:@"batteryType"];
  objc_opt_class();
  v6 = [(HeadphoneImageBatteryViewAccessibility *)self safeSwiftValueForKey:@"batteryView"];
  v7 = __UIAccessibilityCastAsSafeCategory();

  v8 = [(HeadphoneImageBatteryViewAccessibility *)self safeSwiftArrayForKey:@"imageViews"];
  v9 = v8;
  if (v5 == 1)
  {
    v10 = @"battery.case";
LABEL_9:
    [v7 setAXBatteryType:v10];
    goto LABEL_10;
  }

  if ([v8 count] > 1)
  {
    v10 = @"battery.combined.earbuds";
    goto LABEL_9;
  }

  if (v5 == 2)
  {
    v10 = @"battery.left.earbud";
    goto LABEL_9;
  }

  if (v5 == 3)
  {
    v10 = @"battery.right.earbud";
    goto LABEL_9;
  }

LABEL_10:
}

@end