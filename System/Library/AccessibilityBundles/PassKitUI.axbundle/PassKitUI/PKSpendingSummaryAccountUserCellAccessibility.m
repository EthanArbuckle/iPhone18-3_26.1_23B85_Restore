@interface PKSpendingSummaryAccountUserCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation PKSpendingSummaryAccountUserCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKSpendingSummaryAccountUserCell" hasInstanceVariable:@"_nameLabel" withType:"UILabel"];
  [v3 validateClass:@"PKSpendingSummaryAccountUserCell" hasInstanceVariable:@"_amountLabel" withType:"UILabel"];
}

- (id)accessibilityLabel
{
  v3 = [(PKSpendingSummaryAccountUserCellAccessibility *)self safeValueForKey:@"_nameLabel"];
  v6 = [(PKSpendingSummaryAccountUserCellAccessibility *)self safeValueForKey:@"_amountLabel"];
  v4 = __UIAXStringForVariables();

  return v4;
}

@end