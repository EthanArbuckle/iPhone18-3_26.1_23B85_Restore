@interface PKPeerPaymentMessagesContentViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PKPeerPaymentMessagesContentViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = PKPeerPaymentMessagesContentViewAccessibility;
  [(PKPeerPaymentMessagesContentViewAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(PKPeerPaymentMessagesContentViewAccessibility *)self safeValueForKey:@"_imageView"];
  [v3 setIsAccessibilityElement:1];
  v4 = [v3 accessibilityTraits];
  [v3 setAccessibilityTraits:v4 & ~*MEMORY[0x29EDC7F88]];
  v5 = accessibilityPeerPaymentLocalizedString(@"apple.pay.logo");
  [v3 setAccessibilityLabel:v5];
}

@end