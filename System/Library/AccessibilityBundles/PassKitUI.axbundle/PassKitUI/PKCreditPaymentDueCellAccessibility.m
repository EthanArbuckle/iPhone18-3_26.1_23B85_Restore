@interface PKCreditPaymentDueCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)createSubviews;
@end

@implementation PKCreditPaymentDueCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKCreditPaymentDueCell" hasInstanceVariable:@"_payButton" withType:"PKContinuousButton"];
  [v3 validateClass:@"PKCreditPaymentDueCell" hasInstanceMethod:@"paymentDueLabelText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKCreditPaymentDueCell" hasInstanceMethod:@"dateLabelText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKCreditPaymentDueCell" hasInstanceMethod:@"detailLabelText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKCreditPaymentDueCell" hasInstanceMethod:@"createSubviews" withFullSignature:{"v", 0}];
}

- (void)createSubviews
{
  v3.receiver = self;
  v3.super_class = PKCreditPaymentDueCellAccessibility;
  [(PKCreditPaymentDueCellAccessibility *)&v3 createSubviews];
  [(PKCreditPaymentDueCellAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (id)accessibilityLabel
{
  v3 = [(PKCreditPaymentDueCellAccessibility *)self safeStringForKey:@"paymentDueLabelText"];
  v4 = [(PKCreditPaymentDueCellAccessibility *)self safeStringForKey:@"dateLabelText"];
  v7 = [(PKCreditPaymentDueCellAccessibility *)self safeStringForKey:@"detailLabelText"];
  v5 = __UIAXStringForVariables();

  return v5;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8.receiver = self;
  v8.super_class = PKCreditPaymentDueCellAccessibility;
  [(PKCreditPaymentDueCellAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  v3 = [(PKCreditPaymentDueCellAccessibility *)self safeValueForKey:@"item"];
  v4 = [v3 safeIntegerForKey:@"type"];

  if (v4 > 4)
  {
    v5 = @"check.activity.button";
  }

  else
  {
    v5 = off_29F2E1CE8[v4];
  }

  v6 = accessibilityLocalizedString(v5);
  v7 = [(PKCreditPaymentDueCellAccessibility *)self safeUIViewForKey:@"_payButton"];
  [v7 setAccessibilityLabel:v6];
}

- (id)_accessibilitySupplementaryFooterViews
{
  v3 = [(PKCreditPaymentDueCellAccessibility *)self safeUIViewForKey:@"_payButton"];
  v4 = [v3 _accessibilityViewIsVisible];

  if (v4)
  {
    v5 = MEMORY[0x29EDB8D80];
    v6 = [(PKCreditPaymentDueCellAccessibility *)self safeUIViewForKey:@"_payButton"];
    v7 = [v5 axArrayByIgnoringNilElementsWithCount:{1, v6}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end