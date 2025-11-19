@interface PKPaymentTransactionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation PKPaymentTransactionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKPaymentTransactionView" hasInstanceVariable:@"_primaryLabel" withType:"UILabel"];
  [v3 validateClass:@"PKPaymentTransactionView" hasInstanceVariable:@"_secondaryLabel" withType:"UILabel"];
  [v3 validateClass:@"PKPaymentTransactionView" hasInstanceVariable:@"_tertiaryLabel" withType:"UILabel"];
  [v3 validateClass:@"PKPaymentTransactionView" hasInstanceVariable:@"_transactionValueLabel" withType:"UILabel"];
  [v3 validateClass:@"PKPaymentTransactionView" hasInstanceMethod:@"transactionValueAttributedText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKPaymentTransactionView" hasInstanceVariable:@"_bonusImageView" withType:"UIImageView"];
  [v3 validateClass:@"PKPaymentTransactionView" hasInstanceVariable:@"_badgeLabel" withType:"UILabel"];
  [v3 validateClass:@"PKPaymentTransactionView" hasInstanceMethod:@"transactionValueAttributedText" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(PKPaymentTransactionViewAccessibility *)self _accessibilityStringForLabelKeyValues:@"_primaryLabel, _secondaryLabel, _tertiaryLabel"];
  v4 = accessibilityLocalizedString(@"station.to");
  v5 = [v3 stringByReplacingOccurrencesOfString:@"→" withString:v4];

  objc_opt_class();
  v6 = [(PKPaymentTransactionViewAccessibility *)self safeValueForKey:@"transactionValueAttributedText"];
  v7 = __UIAccessibilityCastAsClass();

  v8 = [objc_alloc(MEMORY[0x29EDBD7E8]) initWithStringOrAttributedString:v7];
  v9 = [v8 coalescedAttributes];
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x29EDC7660]];
  v11 = [v10 BOOLValue];

  v12 = [v7 string];
  if (v11)
  {
    v13 = accessibilityLocalizedString(@"cancelled");
  }

  else
  {
    v13 = 0;
  }

  v14 = __UIAXStringForVariables();

  if (v11)
  {
  }

  v15 = [(PKPaymentTransactionViewAccessibility *)self safeUIViewForKey:@"_badgeLabel", v12, v13, @"__AXStringForVariablesSentinel"];
  v16 = [v15 accessibilityLabel];

  if ([v16 length])
  {
    v17 = MEMORY[0x29EDBA0F8];
    v18 = accessibilityLocalizedString(@"cash.back.format");
    v19 = [v17 stringWithFormat:v18, v16];

    v16 = v19;
  }

  v20 = __UIAXStringForVariables();

  v21 = [(PKPaymentTransactionViewAccessibility *)self safeUIViewForKey:@"_bonusImageView", v16, @"__AXStringForVariablesSentinel"];
  v22 = [v21 _accessibilityViewIsVisible];

  if (v22)
  {
    v25 = accessibilityLocalizedString(@"transaction.bonus");
    v23 = __UIAXStringForVariables();

    v20 = v23;
  }

  return v20;
}

@end