@interface SBAlertItemsControllerAccessibility
- (void)activateAlertItem:(id)item;
- (void)deactivateAlertItem:(id)item;
@end

@implementation SBAlertItemsControllerAccessibility

- (void)activateAlertItem:(id)item
{
  v3.receiver = self;
  v3.super_class = SBAlertItemsControllerAccessibility;
  [(SBAlertItemsControllerAccessibility *)&v3 activateAlertItem:item];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)deactivateAlertItem:(id)item
{
  v3.receiver = self;
  v3.super_class = SBAlertItemsControllerAccessibility;
  [(SBAlertItemsControllerAccessibility *)&v3 deactivateAlertItem:item];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end