@interface SKUIViewElementSlideshowControllerAccessibility
- (void)presentFromParentViewController:(id)controller;
@end

@implementation SKUIViewElementSlideshowControllerAccessibility

- (void)presentFromParentViewController:(id)controller
{
  v3.receiver = self;
  v3.super_class = SKUIViewElementSlideshowControllerAccessibility;
  [(SKUIViewElementSlideshowControllerAccessibility *)&v3 presentFromParentViewController:controller];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end