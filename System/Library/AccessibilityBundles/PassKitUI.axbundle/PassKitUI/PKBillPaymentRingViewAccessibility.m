@interface PKBillPaymentRingViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityHint;
- (id)accessibilityValue;
- (void)_accessibilityAdjust:(BOOL)a3;
@end

@implementation PKBillPaymentRingViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKBillPaymentRingView" hasInstanceVariable:@"_enterCurrencyAmountView" withType:"PKEnterCurrencyAmountView"];
  [v3 validateClass:@"PKBillPaymentRingView" hasInstanceVariable:@"_topCurvedTextLabel" withType:"PKCurvedTextLabel"];
  [v3 validateClass:@"PKBillPaymentRingView" hasInstanceVariable:@"_bottomCurvedTextLabel" withType:"PKCurvedTextLabel"];
  [v3 validateClass:@"PKBillPaymentRingView" hasInstanceVariable:@"_maximumPaymentAmount" withType:"d"];
  [v3 validateClass:@"PKBillPaymentRingView" hasInstanceVariable:@"_minimumPaymentAmount" withType:"d"];
  [v3 validateClass:@"PKBillPaymentRingView" hasInstanceMethod:@"amount" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKBillPaymentRingView" hasInstanceMethod:@"setAmount:animated:" withFullSignature:{"v", "@", "B", 0}];
}

- (id)accessibilityValue
{
  v2 = [(PKBillPaymentRingViewAccessibility *)self safeUIViewForKey:@"_enterCurrencyAmountView"];
  v3 = [v2 accessibilityValue];

  return v3;
}

- (id)accessibilityHint
{
  v3 = [(PKBillPaymentRingViewAccessibility *)self safeUIViewForKey:@"_topCurvedTextLabel"];
  v4 = [v3 accessibilityLabel];
  v5 = [(PKBillPaymentRingViewAccessibility *)self safeUIViewForKey:@"_bottomCurvedTextLabel"];
  v8 = [v5 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

- (void)_accessibilityAdjust:(BOOL)a3
{
  objc_opt_class();
  v4 = [(PKBillPaymentRingViewAccessibility *)self safeValueForKey:@"amount"];
  v5 = __UIAccessibilityCastAsClass();

  [v5 doubleValue];
  [(PKBillPaymentRingViewAccessibility *)self safeDoubleForKey:@"_minimumPaymentAmount"];
  [(PKBillPaymentRingViewAccessibility *)self safeDoubleForKey:@"_maximumPaymentAmount"];
  AXPerformSafeBlock();
}

void __59__PKBillPaymentRingViewAccessibility__accessibilityAdjust___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = MEMORY[0x29EDB9F90];
  v4 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%.2f", *(a1 + 40)];
  v3 = [v2 decimalNumberWithString:v4];
  [v1 setAmount:v3 animated:0];
}

@end