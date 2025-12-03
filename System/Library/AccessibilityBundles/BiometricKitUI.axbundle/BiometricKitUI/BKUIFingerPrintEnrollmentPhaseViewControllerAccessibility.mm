@interface BKUIFingerPrintEnrollmentPhaseViewControllerAccessibility
- (void)setHeaderTitle:(id)title;
@end

@implementation BKUIFingerPrintEnrollmentPhaseViewControllerAccessibility

- (void)setHeaderTitle:(id)title
{
  v4.receiver = self;
  v4.super_class = BKUIFingerPrintEnrollmentPhaseViewControllerAccessibility;
  titleCopy = title;
  [(BKUIFingerPrintEnrollmentPhaseViewControllerAccessibility *)&v4 setHeaderTitle:titleCopy];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], *MEMORY[0x29EDBDAB0]);
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], titleCopy);
}

@end