@interface PKPeerPaymentNumberPadActionButtonAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation PKPeerPaymentNumberPadActionButtonAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = PKPeerPaymentNumberPadActionButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(PKPeerPaymentNumberPadActionButtonAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7F90] | *MEMORY[0x29EDC7FB0];
}

- (id)accessibilityLabel
{
  v3 = [(PKPeerPaymentNumberPadActionButtonAccessibility *)self safeIntegerForKey:@"action"];
  if (v3 == 10)
  {
    v4 = @"decimal.button";
    goto LABEL_5;
  }

  if (v3 == 12)
  {
    v4 = @"delete.button";
LABEL_5:
    accessibilityLabel = accessibilityPeerPaymentLocalizedString(v4);
    goto LABEL_7;
  }

  v7.receiver = self;
  v7.super_class = PKPeerPaymentNumberPadActionButtonAccessibility;
  accessibilityLabel = [(PKPeerPaymentNumberPadActionButtonAccessibility *)&v7 accessibilityLabel];
LABEL_7:

  return accessibilityLabel;
}

@end