@interface PKPaymentButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation PKPaymentButtonAccessibility

- (id)accessibilityLabel
{
  v3 = [(PKPaymentButtonAccessibility *)self accessibilityUserDefinedLabel];

  if (v3)
  {
    v4 = [(PKPaymentButtonAccessibility *)self accessibilityUserDefinedLabel];
    goto LABEL_12;
  }

  v5 = [(PKPaymentButtonAccessibility *)self safeValueForKey:@"_type"];
  v6 = [v5 integerValue];

  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v7 = @"pay.apple.pay.button";
      goto LABEL_11;
    }

    if (v6 == 4)
    {
      v7 = @"donate.button";
      goto LABEL_11;
    }

LABEL_9:
    v7 = @"apple.pay.button";
    goto LABEL_11;
  }

  if (v6 != 1)
  {
    goto LABEL_9;
  }

  v7 = @"buy.apple.pay.button";
LABEL_11:
  v4 = accessibilityLocalizedString(v7);
LABEL_12:

  return v4;
}

@end