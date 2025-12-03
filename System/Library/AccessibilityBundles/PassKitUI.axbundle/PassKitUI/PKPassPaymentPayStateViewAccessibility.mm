@interface PKPassPaymentPayStateViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (PKPassPaymentPayStateViewAccessibility)initWithFrame:(CGRect)frame;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)emphasizeStateIfPossible:(int64_t)possible withOverrideText:(id)text;
@end

@implementation PKPassPaymentPayStateViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKPassPaymentPayStateView" hasInstanceMethod:@"emphasizeStateIfPossible:withOverrideText:" withFullSignature:{"v", "q", "@", 0}];
  [validationsCopy validateClass:@"PKPassPaymentPayStateView" hasInstanceVariable:@"_label" withType:"UILabel"];
  [validationsCopy validateClass:@"PKPassPaymentPayStateView" hasInstanceMethod:@"_applyStatePreservingGlyphState: overridingText: animated: completionHandler:" withFullSignature:{"v", "B", "@", "B", "@?", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = PKPassPaymentPayStateViewAccessibility;
  [(PKPassPaymentPayStateViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(PKPassPaymentPayStateViewAccessibility *)self safeValueForKey:@"_label"];
  [v3 _setAccessibilityServesAsFirstElement:1];
}

- (PKPassPaymentPayStateViewAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = PKPassPaymentPayStateViewAccessibility;
  v3 = [(PKPassPaymentPayStateViewAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(PKPassPaymentPayStateViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];
  return v3;
}

- (void)emphasizeStateIfPossible:(int64_t)possible withOverrideText:(id)text
{
  textCopy = text;
  v7 = [(PKPassPaymentPayStateViewAccessibility *)self safeValueForKey:@"_label"];
  accessibilityLabel = [v7 accessibilityLabel];

  v11.receiver = self;
  v11.super_class = PKPassPaymentPayStateViewAccessibility;
  [(PKPassPaymentPayStateViewAccessibility *)&v11 emphasizeStateIfPossible:possible withOverrideText:textCopy];

  v9 = [(PKPassPaymentPayStateViewAccessibility *)self safeValueForKey:@"_label"];
  accessibilityLabel2 = [v9 accessibilityLabel];

  if (([accessibilityLabel2 isEqual:accessibilityLabel] & 1) == 0 && objc_msgSend(accessibilityLabel, "length") && objc_msgSend(accessibilityLabel2, "length"))
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], accessibilityLabel2);
  }
}

@end