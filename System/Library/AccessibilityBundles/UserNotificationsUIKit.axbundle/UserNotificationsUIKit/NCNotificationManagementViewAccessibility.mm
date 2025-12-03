@interface NCNotificationManagementViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_configureTitleIfNeccessary:(id)neccessary;
@end

@implementation NCNotificationManagementViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NCNotificationManagementView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"NCNotificationManagementView" hasInstanceMethod:@"_configureTitleIfNeccessary:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = NCNotificationManagementViewAccessibility;
  [(NCNotificationManagementViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(NCNotificationManagementViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  [v3 _accessibilityAddTrait:*MEMORY[0x29EDC7F80]];
}

- (void)_configureTitleIfNeccessary:(id)neccessary
{
  v4.receiver = self;
  v4.super_class = NCNotificationManagementViewAccessibility;
  [(NCNotificationManagementViewAccessibility *)&v4 _configureTitleIfNeccessary:neccessary];
  [(NCNotificationManagementViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end