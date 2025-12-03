@interface PKSpendingSummaryAccountUserCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation PKSpendingSummaryAccountUserCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKSpendingSummaryAccountUserCell" hasInstanceVariable:@"_nameLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PKSpendingSummaryAccountUserCell" hasInstanceVariable:@"_amountLabel" withType:"UILabel"];
}

- (id)accessibilityLabel
{
  v3 = [(PKSpendingSummaryAccountUserCellAccessibility *)self safeValueForKey:@"_nameLabel"];
  v6 = [(PKSpendingSummaryAccountUserCellAccessibility *)self safeValueForKey:@"_amountLabel"];
  v4 = __UIAXStringForVariables();

  return v4;
}

@end