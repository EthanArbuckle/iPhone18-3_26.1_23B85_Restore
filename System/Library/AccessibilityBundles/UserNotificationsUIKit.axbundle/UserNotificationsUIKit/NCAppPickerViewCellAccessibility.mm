@interface NCAppPickerViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation NCAppPickerViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NCAppPickerViewCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"NCAppPickerViewCell" hasInstanceVariable:@"_frequencyLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"NCAppPickerViewCell" hasInstanceVariable:@"_checkmarkButton" withType:"NCCheckmarkButton"];
  [validationsCopy validateClass:@"NCCheckmarkButton" isKindOfClass:@"UIControl"];
}

- (id)accessibilityValue
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = accessibilityLocalizedString(@"digest.daily.notification.average");
  v5 = [(NCAppPickerViewCellAccessibility *)self _accessibilityStringForLabelKeyValues:@"_frequencyLabel"];
  v6 = [v3 stringWithFormat:v4, v5];

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(NCAppPickerViewCellAccessibility *)self safeValueForKey:@"_checkmarkButton"];
  v3 = [v2 safeBoolForKey:@"isSelected"];

  v4 = *MEMORY[0x29EDC7FC0];
  if (!v3)
  {
    v4 = 0;
  }

  return v4 | *MEMORY[0x29EDC7F70];
}

@end