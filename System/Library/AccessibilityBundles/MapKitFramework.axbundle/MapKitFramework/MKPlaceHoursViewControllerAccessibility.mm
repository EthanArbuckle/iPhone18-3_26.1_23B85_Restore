@interface MKPlaceHoursViewControllerAccessibility
- (void)_toggleShowAllHours;
@end

@implementation MKPlaceHoursViewControllerAccessibility

- (void)_toggleShowAllHours
{
  v2.receiver = self;
  v2.super_class = MKPlaceHoursViewControllerAccessibility;
  [(MKPlaceHoursViewControllerAccessibility *)&v2 _toggleShowAllHours];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end