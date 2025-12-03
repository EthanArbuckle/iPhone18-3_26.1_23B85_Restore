@interface PKPaymentTransactionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation PKPaymentTransactionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKPaymentTransactionView" hasInstanceVariable:@"_primaryLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PKPaymentTransactionView" hasInstanceVariable:@"_secondaryLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PKPaymentTransactionView" hasInstanceVariable:@"_tertiaryLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PKPaymentTransactionView" hasInstanceVariable:@"_transactionValueLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PKPaymentTransactionView" hasInstanceMethod:@"transactionValueAttributedText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKPaymentTransactionView" hasInstanceVariable:@"_bonusImageView" withType:"UIImageView"];
  [validationsCopy validateClass:@"PKPaymentTransactionView" hasInstanceVariable:@"_badgeLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PKPaymentTransactionView" hasInstanceMethod:@"transactionValueAttributedText" withFullSignature:{"@", 0}];
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
  coalescedAttributes = [v8 coalescedAttributes];
  v10 = [coalescedAttributes objectForKeyedSubscript:*MEMORY[0x29EDC7660]];
  bOOLValue = [v10 BOOLValue];

  string = [v7 string];
  if (bOOLValue)
  {
    v13 = accessibilityLocalizedString(@"cancelled");
  }

  else
  {
    v13 = 0;
  }

  v14 = __UIAXStringForVariables();

  if (bOOLValue)
  {
  }

  v15 = [(PKPaymentTransactionViewAccessibility *)self safeUIViewForKey:@"_badgeLabel", string, v13, @"__AXStringForVariablesSentinel"];
  accessibilityLabel = [v15 accessibilityLabel];

  if ([accessibilityLabel length])
  {
    v17 = MEMORY[0x29EDBA0F8];
    v18 = accessibilityLocalizedString(@"cash.back.format");
    v19 = [v17 stringWithFormat:v18, accessibilityLabel];

    accessibilityLabel = v19;
  }

  v20 = __UIAXStringForVariables();

  v21 = [(PKPaymentTransactionViewAccessibility *)self safeUIViewForKey:@"_bonusImageView", accessibilityLabel, @"__AXStringForVariablesSentinel"];
  _accessibilityViewIsVisible = [v21 _accessibilityViewIsVisible];

  if (_accessibilityViewIsVisible)
  {
    v25 = accessibilityLocalizedString(@"transaction.bonus");
    v23 = __UIAXStringForVariables();

    v20 = v23;
  }

  return v20;
}

@end