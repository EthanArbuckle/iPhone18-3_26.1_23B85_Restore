@interface PSSetupControllerAccessibility
- (void)viewWillBecomeVisible:(void *)visible;
@end

@implementation PSSetupControllerAccessibility

- (void)viewWillBecomeVisible:(void *)visible
{
  v3.receiver = self;
  v3.super_class = PSSetupControllerAccessibility;
  [(PSSetupControllerAccessibility *)&v3 viewWillBecomeVisible:visible];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end