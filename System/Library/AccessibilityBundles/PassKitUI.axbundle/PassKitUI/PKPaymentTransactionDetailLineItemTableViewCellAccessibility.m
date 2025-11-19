@interface PKPaymentTransactionDetailLineItemTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation PKPaymentTransactionDetailLineItemTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKPaymentTransactionDetailLineItemTableViewCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"PKPaymentTransactionDetailLineItemTableViewCell" hasInstanceVariable:@"_valueLabel" withType:"UILabel"];
}

@end