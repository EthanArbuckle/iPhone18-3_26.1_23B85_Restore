@interface NCNotificationAppSectionListHeaderViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation NCNotificationAppSectionListHeaderViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = NCNotificationAppSectionListHeaderViewAccessibility;
  [(NCNotificationAppSectionListHeaderViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(NCNotificationAppSectionListHeaderViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
}

@end