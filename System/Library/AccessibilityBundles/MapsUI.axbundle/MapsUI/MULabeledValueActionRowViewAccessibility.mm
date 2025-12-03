@interface MULabeledValueActionRowViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (unint64_t)accessibilityTraits;
@end

@implementation MULabeledValueActionRowViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MULabeledValueActionRowView" hasInstanceVariable:@"_titleLabel" withType:"UIView<MULabelViewProtocol>"];
  [validationsCopy validateClass:@"MULabeledValueActionRowView" hasInstanceVariable:@"_valueLabel" withType:"UIView<MULabelViewProtocol>"];
  [validationsCopy validateClass:@"MULabeledValueActionRowView" hasInstanceVariable:@"_tertiaryLabel" withType:"UIView<MULabelViewProtocol>"];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = MULabeledValueActionRowViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(MULabeledValueActionRowViewAccessibility *)&v3 accessibilityTraits];
}

@end