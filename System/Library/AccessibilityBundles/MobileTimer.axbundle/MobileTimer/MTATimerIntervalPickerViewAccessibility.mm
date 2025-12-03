@interface MTATimerIntervalPickerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
- (id)pickerView:(id)view viewForRow:(int64_t)row forComponent:(int64_t)component reusingView:(id)reusingView;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation MTATimerIntervalPickerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MTATimerIntervalPickerCell"];
  [validationsCopy validateClass:@"MTATimerIntervalPickerView" hasInstanceMethod:@"pickerView:viewForRow:forComponent:reusingView:" withFullSignature:{"@", "@", "q", "q", "@", 0}];
  [validationsCopy validateClass:@"MTATimerIntervalPickerView" hasInstanceVariable:@"_timePicker" withType:"UIPickerView"];
  [validationsCopy validateClass:@"MTATimerIntervalPickerCell" hasInstanceMethod:@"textLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MTATimerIntervalPickerView" hasInstanceMethod:@"_hoursStringForHour:" withFullSignature:{"@", "q", 0}];
  [validationsCopy validateClass:@"MTATimerIntervalPickerView" hasInstanceMethod:@"_minutesStringForMinutes:" withFullSignature:{"@", "q", 0}];
  [validationsCopy validateClass:@"MTATimerIntervalPickerView" hasInstanceMethod:@"_secondsStringForSeconds:" withFullSignature:{"@", "q", 0}];
  [validationsCopy validateClass:@"MTATimerIntervalPickerView" isKindOfClass:@"UIControl"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = MTATimerIntervalPickerViewAccessibility;
  [(MTATimerIntervalPickerViewAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
}

- (id)accessibilityElements
{
  v2 = MEMORY[0x29EDB8D80];
  v3 = [(MTATimerIntervalPickerViewAccessibility *)self safeValueForKey:@"_timePicker"];
  v4 = [v2 axArrayByIgnoringNilElementsWithCount:{1, v3}];

  return v4;
}

- (id)pickerView:(id)view viewForRow:(int64_t)row forComponent:(int64_t)component reusingView:(id)reusingView
{
  viewCopy = view;
  reusingViewCopy = reusingView;
  v32.receiver = self;
  v32.super_class = MTATimerIntervalPickerViewAccessibility;
  v12 = [(MTATimerIntervalPickerViewAccessibility *)&v32 pickerView:viewCopy viewForRow:row forComponent:component reusingView:reusingViewCopy];
  MEMORY[0x29C2E1AE0](@"MTATimerIntervalPickerCell");
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v13 = [v12 safeValueForKeyPath:@"textLabel.attributedText"];
    v14 = __UIAccessibilityCastAsClass();

    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__0;
    v30 = __Block_byref_object_dispose__0;
    v31 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__0;
    v24 = __Block_byref_object_dispose__0;
    v25 = 0;
    AXPerformSafeBlock();
    v15 = MEMORY[0x29EDBA0F8];
    string = [v14 string];
    v17 = [v15 stringWithFormat:@"%@ %@", string, v27[5]];

    [v12 setAccessibilityLabel:v17];
    v18 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{2, v21[5], v17}];
    [v12 setAccessibilityUserInputLabels:v18];

    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&v26, 8);
  }

  return v12;
}

uint64_t __90__MTATimerIntervalPickerViewAccessibility_pickerView_viewForRow_forComponent_reusingView___block_invoke(uint64_t result)
{
  v1 = result;
  v2 = *(result + 56);
  if (v2 == 2)
  {
    v3 = [*(result + 32) _secondsStringForSeconds:*(result + 64)];
    v4 = @"timer.seconds";
  }

  else if (v2 == 1)
  {
    v3 = [*(result + 32) _minutesStringForMinutes:*(result + 64)];
    v4 = @"timer.minutes";
  }

  else
  {
    if (v2)
    {
      return result;
    }

    v3 = [*(result + 32) _hoursStringForHour:*(result + 64)];
    v4 = @"timer.hours";
  }

  v5 = *(*(v1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = accessibilityLocalizedString(v4);
  v8 = *(*(v1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return MEMORY[0x2A1C71028]();
}

@end