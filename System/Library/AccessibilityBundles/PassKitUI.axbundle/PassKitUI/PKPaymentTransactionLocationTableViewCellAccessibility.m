@interface PKPaymentTransactionLocationTableViewCellAccessibility
- (id)accessibilityLabel;
@end

@implementation PKPaymentTransactionLocationTableViewCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(PKPaymentTransactionLocationTableViewCellAccessibility *)self _accessibilityStringForLabelKeyValues:@"_titleLabel"];
  v3 = MEMORY[0x29EDBA0F8];
  v4 = accessibilityLocalizedString(@"maps.location.label");
  v5 = [v3 stringWithFormat:v4, v2];

  return v5;
}

@end