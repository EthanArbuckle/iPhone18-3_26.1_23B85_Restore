@interface SKUIProductPageOverlayControllerAccessibility
- (void)_showOverlayViewController;
@end

@implementation SKUIProductPageOverlayControllerAccessibility

- (void)_showOverlayViewController
{
  v2.receiver = self;
  v2.super_class = SKUIProductPageOverlayControllerAccessibility;
  [(SKUIProductPageOverlayControllerAccessibility *)&v2 _showOverlayViewController];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end