@interface PKPassPaymentPayStateViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (PKPassPaymentPayStateViewAccessibility)initWithFrame:(CGRect)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)emphasizeStateIfPossible:(int64_t)a3 withOverrideText:(id)a4;
@end

@implementation PKPassPaymentPayStateViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKPassPaymentPayStateView" hasInstanceMethod:@"emphasizeStateIfPossible:withOverrideText:" withFullSignature:{"v", "q", "@", 0}];
  [v3 validateClass:@"PKPassPaymentPayStateView" hasInstanceVariable:@"_label" withType:"UILabel"];
  [v3 validateClass:@"PKPassPaymentPayStateView" hasInstanceMethod:@"_applyStatePreservingGlyphState: overridingText: animated: completionHandler:" withFullSignature:{"v", "B", "@", "B", "@?", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = PKPassPaymentPayStateViewAccessibility;
  [(PKPassPaymentPayStateViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(PKPassPaymentPayStateViewAccessibility *)self safeValueForKey:@"_label"];
  [v3 _setAccessibilityServesAsFirstElement:1];
}

- (PKPassPaymentPayStateViewAccessibility)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = PKPassPaymentPayStateViewAccessibility;
  v3 = [(PKPassPaymentPayStateViewAccessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(PKPassPaymentPayStateViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];
  return v3;
}

- (void)emphasizeStateIfPossible:(int64_t)a3 withOverrideText:(id)a4
{
  v6 = a4;
  v7 = [(PKPassPaymentPayStateViewAccessibility *)self safeValueForKey:@"_label"];
  v8 = [v7 accessibilityLabel];

  v11.receiver = self;
  v11.super_class = PKPassPaymentPayStateViewAccessibility;
  [(PKPassPaymentPayStateViewAccessibility *)&v11 emphasizeStateIfPossible:a3 withOverrideText:v6];

  v9 = [(PKPassPaymentPayStateViewAccessibility *)self safeValueForKey:@"_label"];
  v10 = [v9 accessibilityLabel];

  if (([v10 isEqual:v8] & 1) == 0 && objc_msgSend(v8, "length") && objc_msgSend(v10, "length"))
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v10);
  }
}

@end