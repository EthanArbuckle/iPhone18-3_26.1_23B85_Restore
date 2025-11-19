@interface PKAccountBillPaymentAmountContainerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation PKAccountBillPaymentAmountContainerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKAccountBillPaymentAmountContainerView" hasInstanceVariable:@"_enterCurrencyAmountView" withType:"PKEnterCurrencyAmountView"];
  [v3 validateClass:@"PKAccountBillPaymentAmountContainerView" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = PKAccountBillPaymentAmountContainerViewAccessibility;
  [(PKAccountBillPaymentAmountContainerViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = accessibilityLocalizedString(@"payment.amount.label");
  v4 = [(PKAccountBillPaymentAmountContainerViewAccessibility *)self safeUIViewForKey:@"_enterCurrencyAmountView"];
  [v4 setAccessibilityLabel:v3];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKAccountBillPaymentAmountContainerViewAccessibility;
  [(PKAccountBillPaymentAmountContainerViewAccessibility *)&v3 layoutSubviews];
  [(PKAccountBillPaymentAmountContainerViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end