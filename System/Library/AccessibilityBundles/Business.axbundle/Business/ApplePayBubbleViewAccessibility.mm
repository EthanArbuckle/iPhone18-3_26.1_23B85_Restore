@interface ApplePayBubbleViewAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation ApplePayBubbleViewAccessibility

- (id)accessibilityLabel
{
  v6.receiver = self;
  v6.super_class = ApplePayBubbleViewAccessibility;
  accessibilityLabel = [(ApplePayBubbleViewAccessibility *)&v6 accessibilityLabel];
  v3 = accessibilityLocalizedString(@"APPLE_PAY");
  v4 = [accessibilityLabel stringByAppendingString:v3];

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = ApplePayBubbleViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(ApplePayBubbleViewAccessibility *)&v3 accessibilityTraits];
}

@end