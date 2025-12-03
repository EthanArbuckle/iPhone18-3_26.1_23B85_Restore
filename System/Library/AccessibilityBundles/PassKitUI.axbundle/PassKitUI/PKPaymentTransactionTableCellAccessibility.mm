@interface PKPaymentTransactionTableCellAccessibility
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation PKPaymentTransactionTableCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(PKPaymentTransactionTableCellAccessibility *)self safeUIViewForKey:@"_transactionView"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  v2 = [(PKPaymentTransactionTableCellAccessibility *)self safeUIViewForKey:@"_transactionView"];
  accessibilityValue = [v2 accessibilityValue];

  return accessibilityValue;
}

@end