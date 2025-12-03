@interface PKPaymentButtonAccessibility
- (id)accessibilityLabel;
@end

@implementation PKPaymentButtonAccessibility

- (id)accessibilityLabel
{
  accessibilityUserDefinedLabel = [(PKPaymentButtonAccessibility *)self accessibilityUserDefinedLabel];

  if (accessibilityUserDefinedLabel)
  {
    accessibilityUserDefinedLabel2 = [(PKPaymentButtonAccessibility *)self accessibilityUserDefinedLabel];
    goto LABEL_12;
  }

  v5 = [(PKPaymentButtonAccessibility *)self safeValueForKey:@"_type"];
  integerValue = [v5 integerValue];

  if (integerValue > 2)
  {
    if (integerValue == 3)
    {
      v7 = @"pay.apple.pay.button";
      goto LABEL_11;
    }

    if (integerValue == 4)
    {
      v7 = @"donate.button";
      goto LABEL_11;
    }

LABEL_9:
    v7 = @"apple.pay.button";
    goto LABEL_11;
  }

  if (integerValue != 1)
  {
    goto LABEL_9;
  }

  v7 = @"buy.apple.pay.button";
LABEL_11:
  accessibilityUserDefinedLabel2 = accessibilityLocalizedString(v7);
LABEL_12:

  return accessibilityUserDefinedLabel2;
}

@end