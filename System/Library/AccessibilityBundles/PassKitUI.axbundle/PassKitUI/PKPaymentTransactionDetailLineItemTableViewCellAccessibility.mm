@interface PKPaymentTransactionDetailLineItemTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation PKPaymentTransactionDetailLineItemTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKPaymentTransactionDetailLineItemTableViewCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PKPaymentTransactionDetailLineItemTableViewCell" hasInstanceVariable:@"_valueLabel" withType:"UILabel"];
}

@end