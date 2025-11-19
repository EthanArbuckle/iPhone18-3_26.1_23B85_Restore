@interface IOSBasedChromeViewControllerAccessibility
- (void)mapViewDidFinishLoadingMap:(id)a3;
@end

@implementation IOSBasedChromeViewControllerAccessibility

- (void)mapViewDidFinishLoadingMap:(id)a3
{
  v3.receiver = self;
  v3.super_class = IOSBasedChromeViewControllerAccessibility;
  [(IOSBasedChromeViewControllerAccessibility *)&v3 mapViewDidFinishLoadingMap:a3];
  UIAccessibilityPostNotification(0xBD4u, 0);
}

@end