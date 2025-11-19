@interface NavTrayHeaderViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation NavTrayHeaderViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = NavTrayHeaderViewAccessibility;
  [(NavTrayHeaderViewAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
}

@end