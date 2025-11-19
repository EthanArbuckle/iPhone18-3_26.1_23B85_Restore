@interface HUDashboardNavigationViewAccessibility
- (void)_rotateChevronButtonToAngle:(double)a3;
@end

@implementation HUDashboardNavigationViewAccessibility

- (void)_rotateChevronButtonToAngle:(double)a3
{
  v3.receiver = self;
  v3.super_class = HUDashboardNavigationViewAccessibility;
  [(HUDashboardNavigationViewAccessibility *)&v3 _rotateChevronButtonToAngle:a3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end