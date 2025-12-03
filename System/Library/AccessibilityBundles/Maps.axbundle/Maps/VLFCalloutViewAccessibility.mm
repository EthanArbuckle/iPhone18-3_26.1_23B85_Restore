@interface VLFCalloutViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation VLFCalloutViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = VLFCalloutViewAccessibility;
  [(VLFCalloutViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(VLFCalloutViewAccessibility *)self safeValueForKey:@"titleLabel"];
  accessibilityTraits = [v3 accessibilityTraits];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | accessibilityTraits];
}

@end