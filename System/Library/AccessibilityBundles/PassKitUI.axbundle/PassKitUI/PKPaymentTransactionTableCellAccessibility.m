@interface PKPaymentTransactionTableCellAccessibility
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation PKPaymentTransactionTableCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(PKPaymentTransactionTableCellAccessibility *)self safeUIViewForKey:@"_transactionView"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(PKPaymentTransactionTableCellAccessibility *)self safeUIViewForKey:@"_transactionView"];
  v3 = [v2 accessibilityValue];

  return v3;
}

@end