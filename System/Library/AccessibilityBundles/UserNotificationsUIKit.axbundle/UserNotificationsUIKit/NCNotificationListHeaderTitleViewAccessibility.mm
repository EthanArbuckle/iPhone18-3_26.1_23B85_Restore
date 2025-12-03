@interface NCNotificationListHeaderTitleViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_configureTitleLabelIfNecessary;
@end

@implementation NCNotificationListHeaderTitleViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NCNotificationListHeaderTitleView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationListHeaderTitleView" hasInstanceMethod:@"_configureTitleLabelIfNecessary" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = NCNotificationListHeaderTitleViewAccessibility;
  [(NCNotificationListHeaderTitleViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(NCNotificationListHeaderTitleViewAccessibility *)self safeValueForKey:@"titleLabel"];
  [v3 _accessibilityAddTrait:*MEMORY[0x29EDC7F80]];
}

- (void)_configureTitleLabelIfNecessary
{
  v3.receiver = self;
  v3.super_class = NCNotificationListHeaderTitleViewAccessibility;
  [(NCNotificationListHeaderTitleViewAccessibility *)&v3 _configureTitleLabelIfNecessary];
  [(NCNotificationListHeaderTitleViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end