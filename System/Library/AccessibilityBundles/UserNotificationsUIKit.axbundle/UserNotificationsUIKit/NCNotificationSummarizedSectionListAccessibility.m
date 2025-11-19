@interface NCNotificationSummarizedSectionListAccessibility
- (BOOL)_collapseSection;
@end

@implementation NCNotificationSummarizedSectionListAccessibility

- (BOOL)_collapseSection
{
  v4.receiver = self;
  v4.super_class = NCNotificationSummarizedSectionListAccessibility;
  v2 = [(NCNotificationSummarizedSectionListAccessibility *)&v4 _collapseSection];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  return v2;
}

@end