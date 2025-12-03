@interface PKCreditBalanceCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation PKCreditBalanceCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKCreditBalanceCell" hasInstanceVariable:@"_labelBalance" withType:"UILabel"];
  [validationsCopy validateClass:@"PKCreditBalanceCell" hasInstanceVariable:@"_labelAmount" withType:"UILabel"];
  [validationsCopy validateClass:@"PKCreditBalanceCell" hasInstanceVariable:@"_labelCreditAvailable" withType:"UILabel"];
}

- (id)accessibilityLabel
{
  v3 = [(PKCreditBalanceCellAccessibility *)self safeUIViewForKey:@"_labelBalance"];
  accessibilityLabel = [v3 accessibilityLabel];
  v5 = [(PKCreditBalanceCellAccessibility *)self safeUIViewForKey:@"_labelAmount"];
  accessibilityLabel2 = [v5 accessibilityLabel];
  v7 = [(PKCreditBalanceCellAccessibility *)self safeUIViewForKey:@"_labelCreditAvailable"];
  accessibilityLabel3 = [v7 accessibilityLabel];
  v8 = __UIAXStringForVariables();

  return v8;
}

@end