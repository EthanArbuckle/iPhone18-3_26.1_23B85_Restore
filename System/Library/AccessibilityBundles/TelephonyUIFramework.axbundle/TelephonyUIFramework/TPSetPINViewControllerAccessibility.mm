@interface TPSetPINViewControllerAccessibility
- (void)_updateNavBarButtons;
@end

@implementation TPSetPINViewControllerAccessibility

- (void)_updateNavBarButtons
{
  v2.receiver = self;
  v2.super_class = TPSetPINViewControllerAccessibility;
  [(TPSetPINViewControllerAccessibility *)&v2 _updateNavBarButtons];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end