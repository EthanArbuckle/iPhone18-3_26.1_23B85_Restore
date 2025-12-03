@interface PKPaymentTransactionCollectionViewCellAccessibility
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation PKPaymentTransactionCollectionViewCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(PKPaymentTransactionCollectionViewCellAccessibility *)self safeUIViewForKey:@"_transactionView"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  v2 = [(PKPaymentTransactionCollectionViewCellAccessibility *)self safeUIViewForKey:@"_transactionView"];
  accessibilityValue = [v2 accessibilityValue];

  return accessibilityValue;
}

@end