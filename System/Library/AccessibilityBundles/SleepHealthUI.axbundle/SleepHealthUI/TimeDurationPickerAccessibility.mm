@interface TimeDurationPickerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
- (id)automationElements;
@end

@implementation TimeDurationPickerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SleepHealthUI.TimeDurationPicker" hasInstanceMethod:@"accessibilityDurationLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SleepHealthUI.TimeDurationPicker" hasInstanceMethod:@"increase" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SleepHealthUI.TimeDurationPicker" hasInstanceMethod:@"decrease" withFullSignature:{"v", 0}];
}

- (id)automationElements
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  subviews = [v2 subviews];
  v4 = [subviews ax_filteredArrayUsingBlock:&__block_literal_global_1];

  return v4;
}

uint64_t __53__TimeDurationPickerAccessibility_automationElements__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)accessibilityValue
{
  objc_opt_class();
  v3 = [(TimeDurationPickerAccessibility *)self safeValueForKey:@"accessibilityDurationLabel"];
  v4 = __UIAccessibilityCastAsClass();

  accessibilityLabel = [v4 accessibilityLabel];

  return accessibilityLabel;
}

@end