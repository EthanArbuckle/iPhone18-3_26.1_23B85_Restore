@interface StepTrayHeaderViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation StepTrayHeaderViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = StepTrayHeaderViewAccessibility;
  [(StepTrayHeaderViewAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
}

@end