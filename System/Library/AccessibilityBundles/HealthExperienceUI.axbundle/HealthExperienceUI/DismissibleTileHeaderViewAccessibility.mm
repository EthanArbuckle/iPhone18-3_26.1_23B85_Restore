@interface DismissibleTileHeaderViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation DismissibleTileHeaderViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = DismissibleTileHeaderViewAccessibility;
  [(DismissibleTileHeaderViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(DismissibleTileHeaderViewAccessibility *)self safeValueForKey:@"accessibilityAccessoryLabel"];
  v4 = accessibilityLocalizedString(@"close");
  [v3 setAccessibilityLabel:v4];

  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
}

@end