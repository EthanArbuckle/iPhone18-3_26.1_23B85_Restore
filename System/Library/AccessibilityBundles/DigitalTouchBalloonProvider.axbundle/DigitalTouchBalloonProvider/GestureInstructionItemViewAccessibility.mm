@interface GestureInstructionItemViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation GestureInstructionItemViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"GestureInstructionItemView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"GestureInstructionItemView" hasInstanceVariable:@"_descriptionLabel" withType:"UILabel"];
}

- (id)accessibilityLabel
{
  v3 = [(GestureInstructionItemViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  v4 = [v3 accessibilityLabel];

  v5 = [(GestureInstructionItemViewAccessibility *)self safeValueForKey:@"_descriptionLabel"];
  v6 = [v5 accessibilityLabel];

  v7 = __UIAXStringForVariables();

  return v7;
}

@end