@interface SPUISearchViewControllerAccessibility
- (void)cancelButtonPressed;
@end

@implementation SPUISearchViewControllerAccessibility

- (void)cancelButtonPressed
{
  v2.receiver = self;
  v2.super_class = SPUISearchViewControllerAccessibility;
  [(SPUISearchViewControllerAccessibility *)&v2 cancelButtonPressed];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end