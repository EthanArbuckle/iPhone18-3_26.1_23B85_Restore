@interface VLFFailureViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation VLFFailureViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = VLFFailureViewAccessibility;
  [(VLFFailureViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(VLFFailureViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | *MEMORY[0x29EDC7FD0]];
}

@end