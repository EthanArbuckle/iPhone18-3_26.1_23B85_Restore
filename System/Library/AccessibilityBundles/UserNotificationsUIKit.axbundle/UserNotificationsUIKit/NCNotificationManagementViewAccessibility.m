@interface NCNotificationManagementViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_configureTitleIfNeccessary:(id)a3;
@end

@implementation NCNotificationManagementViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NCNotificationManagementView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"NCNotificationManagementView" hasInstanceMethod:@"_configureTitleIfNeccessary:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = NCNotificationManagementViewAccessibility;
  [(NCNotificationManagementViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(NCNotificationManagementViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  [v3 _accessibilityAddTrait:*MEMORY[0x29EDC7F80]];
}

- (void)_configureTitleIfNeccessary:(id)a3
{
  v4.receiver = self;
  v4.super_class = NCNotificationManagementViewAccessibility;
  [(NCNotificationManagementViewAccessibility *)&v4 _configureTitleIfNeccessary:a3];
  [(NCNotificationManagementViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end