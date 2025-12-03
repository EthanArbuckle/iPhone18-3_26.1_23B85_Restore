@interface NCNotificationSummarizedSectionListAccessibility
- (BOOL)_collapseSection;
@end

@implementation NCNotificationSummarizedSectionListAccessibility

- (BOOL)_collapseSection
{
  v4.receiver = self;
  v4.super_class = NCNotificationSummarizedSectionListAccessibility;
  _collapseSection = [(NCNotificationSummarizedSectionListAccessibility *)&v4 _collapseSection];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  return _collapseSection;
}

@end