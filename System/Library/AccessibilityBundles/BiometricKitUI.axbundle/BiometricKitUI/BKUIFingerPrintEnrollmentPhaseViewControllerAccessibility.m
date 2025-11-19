@interface BKUIFingerPrintEnrollmentPhaseViewControllerAccessibility
- (void)setHeaderTitle:(id)a3;
@end

@implementation BKUIFingerPrintEnrollmentPhaseViewControllerAccessibility

- (void)setHeaderTitle:(id)a3
{
  v4.receiver = self;
  v4.super_class = BKUIFingerPrintEnrollmentPhaseViewControllerAccessibility;
  v3 = a3;
  [(BKUIFingerPrintEnrollmentPhaseViewControllerAccessibility *)&v4 setHeaderTitle:v3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], *MEMORY[0x29EDBDAB0]);
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v3);
}

@end