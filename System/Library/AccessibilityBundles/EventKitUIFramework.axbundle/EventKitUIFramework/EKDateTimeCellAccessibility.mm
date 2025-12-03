@interface EKDateTimeCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation EKDateTimeCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"EKDateTimeCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"EKDateTimeCell" hasInstanceVariable:@"_datePicker" withType:"UIDatePicker"];
  [validationsCopy validateClass:@"EKDateTimeCell" isKindOfClass:@"UITableViewCell"];
  [validationsCopy validateClass:@"_UIDatePickerCompactDateLabel"];
  [validationsCopy validateClass:@"_UIDatePickerCompactTimeLabel"];
}

- (id)accessibilityLabel
{
  accessibilityUserDefinedLabel = [(EKDateTimeCellAccessibility *)self accessibilityUserDefinedLabel];
  if (!accessibilityUserDefinedLabel)
  {
    v4 = [(EKDateTimeCellAccessibility *)self safeValueForKey:@"_titleLabel"];
    accessibilityLabel = [v4 accessibilityLabel];

    v6 = [(EKDateTimeCellAccessibility *)self safeValueForKey:@"_datePicker"];
    accessibilityLabel2 = [v6 accessibilityLabel];

    if (accessibilityLabel2)
    {
      v13 = accessibilityLabel2;
      accessibilityLabel4 = @"__AXStringForVariablesSentinel";
      accessibilityUserDefinedLabel = __UIAXStringForVariables();
    }

    else
    {
      v8 = [(EKDateTimeCellAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_0];
      v9 = [(EKDateTimeCellAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_308];
      accessibilityLabel3 = [v9 accessibilityLabel];
      accessibilityLabel4 = [v8 accessibilityLabel];
      v16 = @"__AXStringForVariablesSentinel";
      v13 = accessibilityLabel3;
      accessibilityUserDefinedLabel = __UIAXStringForVariables();
    }
  }

  v14 = [(EKDateTimeCellAccessibility *)self _accessibilityValueForKey:@"AXAddendumString", v13, accessibilityLabel4, v16];
  v11 = __UIAXStringForVariables();

  return v11;
}

uint64_t __49__EKDateTimeCellAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Uidatepickerco.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __49__EKDateTimeCellAccessibility_accessibilityLabel__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Uidatepickerco_0.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end