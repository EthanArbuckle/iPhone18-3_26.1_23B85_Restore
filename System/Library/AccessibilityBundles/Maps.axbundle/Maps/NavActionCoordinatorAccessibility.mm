@interface NavActionCoordinatorAccessibility
- (void)sender:(id)a3 switchToNavigationCameraMode:(unint64_t)a4;
@end

@implementation NavActionCoordinatorAccessibility

- (void)sender:(id)a3 switchToNavigationCameraMode:(unint64_t)a4
{
  v4.receiver = self;
  v4.super_class = NavActionCoordinatorAccessibility;
  [(NavActionCoordinatorAccessibility *)&v4 sender:a3 switchToNavigationCameraMode:a4];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end