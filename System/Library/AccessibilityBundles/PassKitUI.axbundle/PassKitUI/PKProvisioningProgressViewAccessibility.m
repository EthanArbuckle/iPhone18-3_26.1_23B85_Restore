@interface PKProvisioningProgressViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PKProvisioningProgressViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = PKProvisioningProgressViewAccessibility;
  [(PKProvisioningProgressViewAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = *MEMORY[0x29EDC7F80];
  v4 = [(PKProvisioningProgressViewAccessibility *)self safeUIViewForKey:@"_primaryLabel"];
  [v4 setAccessibilityTraits:v3];

  v5 = [(PKProvisioningProgressViewAccessibility *)self safeUIViewForKey:@"_primaryLabel"];
  [v5 _accessibilitySetTextViewShouldBreakUpParagraphs:0];
}

@end