@interface UnifiedTabBarAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation UnifiedTabBarAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = UnifiedTabBarAccessibility;
  [(UnifiedTabBarAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
}

@end