@interface SUUIProductPageOverlayControllerAccessibility
- (void)_showOverlayViewController;
@end

@implementation SUUIProductPageOverlayControllerAccessibility

- (void)_showOverlayViewController
{
  v2.receiver = self;
  v2.super_class = SUUIProductPageOverlayControllerAccessibility;
  [(SUUIProductPageOverlayControllerAccessibility *)&v2 _showOverlayViewController];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end