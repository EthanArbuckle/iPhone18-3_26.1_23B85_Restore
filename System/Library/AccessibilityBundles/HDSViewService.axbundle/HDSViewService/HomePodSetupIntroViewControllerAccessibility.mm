@interface HomePodSetupIntroViewControllerAccessibility
- (void)handleTapOnInfoButton;
@end

@implementation HomePodSetupIntroViewControllerAccessibility

- (void)handleTapOnInfoButton
{
  v2.receiver = self;
  v2.super_class = HomePodSetupIntroViewControllerAccessibility;
  [(HomePodSetupIntroViewControllerAccessibility *)&v2 handleTapOnInfoButton];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end