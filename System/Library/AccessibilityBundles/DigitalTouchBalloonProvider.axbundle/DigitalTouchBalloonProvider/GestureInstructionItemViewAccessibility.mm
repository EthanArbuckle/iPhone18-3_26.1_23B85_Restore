@interface GestureInstructionItemViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation GestureInstructionItemViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"GestureInstructionItemView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"GestureInstructionItemView" hasInstanceVariable:@"_descriptionLabel" withType:"UILabel"];
}

- (id)accessibilityLabel
{
  v3 = [(GestureInstructionItemViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  accessibilityLabel = [v3 accessibilityLabel];

  v5 = [(GestureInstructionItemViewAccessibility *)self safeValueForKey:@"_descriptionLabel"];
  accessibilityLabel2 = [v5 accessibilityLabel];

  v7 = __UIAXStringForVariables();

  return v7;
}

@end