@interface PKPaymentTransactionDetailHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setSubtitleText:(id)a3;
@end

@implementation PKPaymentTransactionDetailHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKPaymentTransactionDetailHeaderView" hasInstanceVariable:@"_subtitleLabel" withType:"UILabel"];
  [v3 validateClass:@"PKPaymentTransactionDetailHeaderView" hasInstanceMethod:@"setSubtitleText:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8.receiver = self;
  v8.super_class = PKPaymentTransactionDetailHeaderViewAccessibility;
  [(PKPaymentTransactionDetailHeaderViewAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  v3 = [(PKPaymentTransactionDetailHeaderViewAccessibility *)self gestureRecognizers];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(PKPaymentTransactionDetailHeaderViewAccessibility *)self safeValueForKey:@"_subtitleLabel"];
    [v5 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];

    v6 = [(PKPaymentTransactionDetailHeaderViewAccessibility *)self safeValueForKey:@"_subtitleLabel"];
    v7 = accessibilityLocalizedString(@"merchant.raw.name.hint");
    [v6 setAccessibilityHint:v7];
  }
}

- (void)setSubtitleText:(id)a3
{
  v4.receiver = self;
  v4.super_class = PKPaymentTransactionDetailHeaderViewAccessibility;
  [(PKPaymentTransactionDetailHeaderViewAccessibility *)&v4 setSubtitleText:a3];
  [(PKPaymentTransactionDetailHeaderViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end