@interface SBAlertItemsControllerAccessibility
- (void)activateAlertItem:(id)a3;
- (void)deactivateAlertItem:(id)a3;
@end

@implementation SBAlertItemsControllerAccessibility

- (void)activateAlertItem:(id)a3
{
  v3.receiver = self;
  v3.super_class = SBAlertItemsControllerAccessibility;
  [(SBAlertItemsControllerAccessibility *)&v3 activateAlertItem:a3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)deactivateAlertItem:(id)a3
{
  v3.receiver = self;
  v3.super_class = SBAlertItemsControllerAccessibility;
  [(SBAlertItemsControllerAccessibility *)&v3 deactivateAlertItem:a3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end