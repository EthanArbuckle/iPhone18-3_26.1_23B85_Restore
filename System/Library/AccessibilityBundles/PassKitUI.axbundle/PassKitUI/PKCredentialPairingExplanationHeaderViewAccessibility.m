@interface PKCredentialPairingExplanationHeaderViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PKCredentialPairingExplanationHeaderViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = PKCredentialPairingExplanationHeaderViewAccessibility;
  [(PKCredentialPairingExplanationHeaderViewAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(PKCredentialPairingExplanationHeaderViewAccessibility *)self safeUIViewForKey:@"_imageView"];
  [v3 setIsAccessibilityElement:1];

  v4 = accessibilityLocalizedStringAlisha(@"car.pairing.instructions");
  v5 = [(PKCredentialPairingExplanationHeaderViewAccessibility *)self safeUIViewForKey:@"_imageView"];
  [v5 setAccessibilityLabel:v4];
}

@end