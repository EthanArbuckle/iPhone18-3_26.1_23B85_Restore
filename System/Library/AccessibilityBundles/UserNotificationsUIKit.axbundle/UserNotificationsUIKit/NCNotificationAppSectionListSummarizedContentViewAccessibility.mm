@interface NCNotificationAppSectionListSummarizedContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation NCNotificationAppSectionListSummarizedContentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NCNotificationAppSectionListSummarizedContentView" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"NCNotificationAppSectionListSummarizedContentView" hasInstanceMethod:@"count" withFullSignature:{"Q", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(NCNotificationAppSectionListSummarizedContentViewAccessibility *)self safeValueForKeyPath:@"title"];
  v4 = MEMORY[0x29EDBA0F8];
  v5 = accessibilityLocalizedString(@"digest.notification.count");
  v6 = [v4 localizedStringWithFormat:v5, -[NCNotificationAppSectionListSummarizedContentViewAccessibility safeUnsignedIntegerForKey:](self, "safeUnsignedIntegerForKey:", @"count"];

  v7 = __UIAXStringForVariables();

  return v7;
}

@end