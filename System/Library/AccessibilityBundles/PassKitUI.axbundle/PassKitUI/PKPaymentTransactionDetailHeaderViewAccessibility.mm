@interface PKPaymentTransactionDetailHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setSubtitleText:(id)text;
@end

@implementation PKPaymentTransactionDetailHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKPaymentTransactionDetailHeaderView" hasInstanceVariable:@"_subtitleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PKPaymentTransactionDetailHeaderView" hasInstanceMethod:@"setSubtitleText:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8.receiver = self;
  v8.super_class = PKPaymentTransactionDetailHeaderViewAccessibility;
  [(PKPaymentTransactionDetailHeaderViewAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  gestureRecognizers = [(PKPaymentTransactionDetailHeaderViewAccessibility *)self gestureRecognizers];
  v4 = [gestureRecognizers count];

  if (v4)
  {
    v5 = [(PKPaymentTransactionDetailHeaderViewAccessibility *)self safeValueForKey:@"_subtitleLabel"];
    [v5 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];

    v6 = [(PKPaymentTransactionDetailHeaderViewAccessibility *)self safeValueForKey:@"_subtitleLabel"];
    v7 = accessibilityLocalizedString(@"merchant.raw.name.hint");
    [v6 setAccessibilityHint:v7];
  }
}

- (void)setSubtitleText:(id)text
{
  v4.receiver = self;
  v4.super_class = PKPaymentTransactionDetailHeaderViewAccessibility;
  [(PKPaymentTransactionDetailHeaderViewAccessibility *)&v4 setSubtitleText:text];
  [(PKPaymentTransactionDetailHeaderViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end