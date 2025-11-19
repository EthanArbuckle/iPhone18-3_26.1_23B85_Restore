@interface SUStructuredPageViewControllerAccessibility
- (void)_accessibilityClearTable:(id)a3;
@end

@implementation SUStructuredPageViewControllerAccessibility

- (void)_accessibilityClearTable:(id)a3
{
  [(SUStructuredPageViewControllerAccessibility *)self _accessibilityRemoveValueForKey:*MEMORY[0x29EDC7620]];
  v3 = *MEMORY[0x29EDC7ED8];

  UIAccessibilityPostNotification(v3, 0);
}

@end