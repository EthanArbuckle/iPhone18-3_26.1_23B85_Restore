@interface CAMFocalLengthLabelAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation CAMFocalLengthLabelAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CAMFocalLengthLabel" hasInstanceMethod:@"_numeralLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMFocalLengthLabel" hasInstanceMethod:@"_unitLabel" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = MEMORY[0x29EDBA0F8];
  v4 = [(CAMFocalLengthLabelAccessibility *)self safeValueForKey:@"_numeralLabel"];
  accessibilityLabel = [v4 accessibilityLabel];
  v6 = [(CAMFocalLengthLabelAccessibility *)self safeValueForKey:@"_unitLabel"];
  accessibilityLabel2 = [v6 accessibilityLabel];
  v8 = [v3 localizedStringWithFormat:@"%@ %@", accessibilityLabel, accessibilityLabel2];

  return v8;
}

@end