@interface PKPaymentTransactionCollectionViewCellAccessibility
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation PKPaymentTransactionCollectionViewCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(PKPaymentTransactionCollectionViewCellAccessibility *)self safeUIViewForKey:@"_transactionView"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(PKPaymentTransactionCollectionViewCellAccessibility *)self safeUIViewForKey:@"_transactionView"];
  v3 = [v2 accessibilityValue];

  return v3;
}

@end