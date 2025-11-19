@interface PSSetupControllerAccessibility
- (void)viewWillBecomeVisible:(void *)a3;
@end

@implementation PSSetupControllerAccessibility

- (void)viewWillBecomeVisible:(void *)a3
{
  v3.receiver = self;
  v3.super_class = PSSetupControllerAccessibility;
  [(PSSetupControllerAccessibility *)&v3 viewWillBecomeVisible:a3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end