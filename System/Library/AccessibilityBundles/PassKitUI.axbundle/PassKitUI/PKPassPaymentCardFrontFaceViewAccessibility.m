@interface PKPassPaymentCardFrontFaceViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityIsAccessPass;
- (BOOL)_accessibilityIsApplePayCashCard;
- (BOOL)_accessibilityIsStoredValuePass;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation PKPassPaymentCardFrontFaceViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKPassPaymentCardFrontFaceView" isKindOfClass:@"PKPassFaceView"];
  [v3 validateClass:@"PKPassFaceView" hasInstanceVariable:@"_pass" withType:"PKPass"];
  [v3 validateClass:@"PKPassPaymentCardFrontFaceView" hasInstanceVariable:@"_balanceLabel" withType:"UILabel"];
  [v3 validateClass:@"PKPass" hasInstanceMethod:@"localizedDescription" withFullSignature:{"@", 0}];
}

- (BOOL)_accessibilityIsApplePayCashCard
{
  objc_opt_class();
  v3 = [(PKPassPaymentCardFrontFaceViewAccessibility *)self safeValueForKey:@"_pass"];
  v4 = __UIAccessibilityCastAsClass();

  if ([v4 passType] == 1)
  {
    v5 = [v4 paymentPass];
    v6 = [v5 hasAssociatedPeerPaymentAccount];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_accessibilityIsAccessPass
{
  objc_opt_class();
  v3 = [(PKPassPaymentCardFrontFaceViewAccessibility *)self safeValueForKey:@"_pass"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 paymentPass];
  LOBYTE(v3) = [v5 isAccessPass];

  return v3;
}

- (BOOL)_accessibilityIsStoredValuePass
{
  objc_opt_class();
  v3 = [(PKPassPaymentCardFrontFaceViewAccessibility *)self safeValueForKey:@"_pass"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 paymentPass];
  LOBYTE(v3) = [v5 isStoredValuePass];

  return v3;
}

- (id)accessibilityLabel
{
  if ([(PKPassPaymentCardFrontFaceViewAccessibility *)self _accessibilityIsApplePayCashCard])
  {
    v3 = accessibilityLocalizedString(@"apple.pay.cash.label");
  }

  else
  {
    if ([(PKPassPaymentCardFrontFaceViewAccessibility *)self _accessibilityIsAccessPass])
    {
      v4 = [(PKPassPaymentCardFrontFaceViewAccessibility *)self safeValueForKey:@"_pass"];
      v5 = [v4 safeValueForKey:@"organizationName"];

      v6 = [(PKPassPaymentCardFrontFaceViewAccessibility *)self safeValueForKey:@"_pass"];
      v7 = [v6 safeValueForKey:@"localizedDescription"];

      v3 = __UIAXStringForVariables();
    }

    else
    {
      v8 = [(PKPassPaymentCardFrontFaceViewAccessibility *)self _accessibilityIsStoredValuePass];
      v9 = [(PKPassPaymentCardFrontFaceViewAccessibility *)self safeValueForKey:@"_pass"];
      v5 = v9;
      if (!v8)
      {
        v10 = [v9 safeValueForKey:@"organizationName"];

        v11 = [(PKPassPaymentCardFrontFaceViewAccessibility *)self safeValueForKey:@"_pass"];
        v12 = [v11 safeValueForKey:@"primaryAccountNumberSuffix"];

        if ([v12 length])
        {
          v13 = MEMORY[0x29EDBA0F8];
          v14 = accessibilityLocalizedString(@"card.ending.in");
          v15 = [v13 stringWithFormat:v14, v12];
        }

        else
        {
          v15 = 0;
        }

        v16 = __UIAXStringForVariables();
        v3 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:{v16, v15, @"__AXStringForVariablesSentinel"}];
        [v3 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD9D0]];

        goto LABEL_12;
      }

      v3 = [v9 safeStringForKey:@"localizedDescription"];
    }
  }

LABEL_12:

  return v3;
}

- (id)accessibilityValue
{
  if ([(PKPassPaymentCardFrontFaceViewAccessibility *)self _accessibilityIsApplePayCashCard])
  {
    v3 = [(PKPassPaymentCardFrontFaceViewAccessibility *)self safeValueForKey:@"_balanceLabel"];
    v4 = [v3 accessibilityLabel];

    if ([v4 length])
    {
      v5 = MEMORY[0x29EDBA0F8];
      v6 = accessibilityLocalizedString(@"current.balance.fmt");
      v7 = [v5 stringWithFormat:v6, v4];

      goto LABEL_6;
    }
  }

  v9.receiver = self;
  v9.super_class = PKPassPaymentCardFrontFaceViewAccessibility;
  v7 = [(PKPassPaymentCardFrontFaceViewAccessibility *)&v9 accessibilityValue];
LABEL_6:

  return v7;
}

@end