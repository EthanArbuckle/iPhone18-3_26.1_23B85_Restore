@interface NavActionCoordinatorAccessibility
- (void)sender:(id)sender switchToNavigationCameraMode:(unint64_t)mode;
@end

@implementation NavActionCoordinatorAccessibility

- (void)sender:(id)sender switchToNavigationCameraMode:(unint64_t)mode
{
  v4.receiver = self;
  v4.super_class = NavActionCoordinatorAccessibility;
  [(NavActionCoordinatorAccessibility *)&v4 sender:sender switchToNavigationCameraMode:mode];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end