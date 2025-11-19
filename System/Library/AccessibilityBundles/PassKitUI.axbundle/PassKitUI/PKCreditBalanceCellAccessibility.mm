@interface PKCreditBalanceCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation PKCreditBalanceCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKCreditBalanceCell" hasInstanceVariable:@"_labelBalance" withType:"UILabel"];
  [v3 validateClass:@"PKCreditBalanceCell" hasInstanceVariable:@"_labelAmount" withType:"UILabel"];
  [v3 validateClass:@"PKCreditBalanceCell" hasInstanceVariable:@"_labelCreditAvailable" withType:"UILabel"];
}

- (id)accessibilityLabel
{
  v3 = [(PKCreditBalanceCellAccessibility *)self safeUIViewForKey:@"_labelBalance"];
  v4 = [v3 accessibilityLabel];
  v5 = [(PKCreditBalanceCellAccessibility *)self safeUIViewForKey:@"_labelAmount"];
  v6 = [v5 accessibilityLabel];
  v7 = [(PKCreditBalanceCellAccessibility *)self safeUIViewForKey:@"_labelCreditAvailable"];
  v10 = [v7 accessibilityLabel];
  v8 = __UIAXStringForVariables();

  return v8;
}

@end