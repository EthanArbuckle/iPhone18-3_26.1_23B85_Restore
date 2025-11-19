@interface SKUIViewElementSlideshowControllerAccessibility
- (void)presentFromParentViewController:(id)a3;
@end

@implementation SKUIViewElementSlideshowControllerAccessibility

- (void)presentFromParentViewController:(id)a3
{
  v3.receiver = self;
  v3.super_class = SKUIViewElementSlideshowControllerAccessibility;
  [(SKUIViewElementSlideshowControllerAccessibility *)&v3 presentFromParentViewController:a3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end