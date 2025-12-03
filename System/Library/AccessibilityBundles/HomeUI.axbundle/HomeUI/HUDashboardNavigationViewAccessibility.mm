@interface HUDashboardNavigationViewAccessibility
- (void)_rotateChevronButtonToAngle:(double)angle;
@end

@implementation HUDashboardNavigationViewAccessibility

- (void)_rotateChevronButtonToAngle:(double)angle
{
  v3.receiver = self;
  v3.super_class = HUDashboardNavigationViewAccessibility;
  [(HUDashboardNavigationViewAccessibility *)&v3 _rotateChevronButtonToAngle:angle];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end