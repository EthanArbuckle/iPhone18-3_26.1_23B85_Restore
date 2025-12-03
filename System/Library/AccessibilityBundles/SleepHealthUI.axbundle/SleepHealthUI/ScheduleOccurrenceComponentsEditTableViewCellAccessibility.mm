@interface ScheduleOccurrenceComponentsEditTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
@end

@implementation ScheduleOccurrenceComponentsEditTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SleepHealthUI.ScheduleOccurrenceComponentsEditTableViewCell" hasInstanceMethod:@"accessibilityComponentsEditView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SleepHealthUI.SleepScheduleComponentsEditView" hasInstanceMethod:@"accessibilityComponentsHeader" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SleepHealthUI.SleepScheduleComponentsEditView" hasInstanceMethod:@"accessibilityClock" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SleepHealthUI.SleepScheduleClock" hasInstanceMethod:@"accessibilityBedtimeHand" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SleepHealthUI.SleepScheduleClock" hasInstanceMethod:@"accessibilityWakeUpHand" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SleepHealthUI.SleepScheduleComponentsEditView" hasInstanceMethod:@"accessibilityTimeInBedLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SleepHealthUI.SleepScheduleComponentsEditView" hasInstanceMethod:@"accessibilityClockCaption" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v4 = [(ScheduleOccurrenceComponentsEditTableViewCellAccessibility *)self safeValueForKey:@"accessibilityComponentsEditView"];
  v5 = [v4 safeValueForKey:@"accessibilityClock"];
  v6 = [v4 safeValueForKey:@"accessibilityComponentsHeader"];
  [v3 axSafelyAddObject:v6];

  v7 = [v5 safeValueForKey:@"accessibilityBedtimeHand"];
  [v3 axSafelyAddObject:v7];

  v8 = [v5 safeValueForKey:@"accessibilityWakeUpHand"];
  [v3 axSafelyAddObject:v8];

  v9 = [v4 safeValueForKey:@"accessibilityTimeInBedLabel"];
  [v3 axSafelyAddObject:v9];

  v10 = [v4 safeValueForKey:@"accessibilityClockCaption"];
  [v3 axSafelyAddObject:v10];

  return v3;
}

@end