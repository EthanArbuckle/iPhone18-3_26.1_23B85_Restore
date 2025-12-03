@interface IOSBasedChromeViewControllerAccessibility
- (void)mapViewDidFinishLoadingMap:(id)map;
@end

@implementation IOSBasedChromeViewControllerAccessibility

- (void)mapViewDidFinishLoadingMap:(id)map
{
  v3.receiver = self;
  v3.super_class = IOSBasedChromeViewControllerAccessibility;
  [(IOSBasedChromeViewControllerAccessibility *)&v3 mapViewDidFinishLoadingMap:map];
  UIAccessibilityPostNotification(0xBD4u, 0);
}

@end