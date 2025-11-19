@interface COSSecurePairingHeaderAccessibility
- (COSSecurePairingHeaderAccessibility)initWithFrame:(CGRect)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateHeaderLabel;
@end

@implementation COSSecurePairingHeaderAccessibility

- (void)_axAnnotateHeaderLabel
{
  v3 = [(COSSecurePairingHeaderAccessibility *)self safeValueForKey:@"_headerLabel"];
  v2 = accessibilityLocalizedString(@"secure.pairing.header.label");
  [v3 setAccessibilityLabel:v2];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = COSSecurePairingHeaderAccessibility;
  [(COSSecurePairingHeaderAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(COSSecurePairingHeaderAccessibility *)self _axAnnotateHeaderLabel];
}

- (COSSecurePairingHeaderAccessibility)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = COSSecurePairingHeaderAccessibility;
  v3 = [(COSSecurePairingHeaderAccessibility *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(COSSecurePairingHeaderAccessibility *)v3 _axAnnotateHeaderLabel];
  }

  return v4;
}

@end