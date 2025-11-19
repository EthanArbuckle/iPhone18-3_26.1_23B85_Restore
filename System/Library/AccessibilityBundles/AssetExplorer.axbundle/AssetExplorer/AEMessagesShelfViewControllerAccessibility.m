@interface AEMessagesShelfViewControllerAccessibility
- (void)_toggleIris:(id)a3;
@end

@implementation AEMessagesShelfViewControllerAccessibility

- (void)_toggleIris:(id)a3
{
  v4.receiver = self;
  v4.super_class = AEMessagesShelfViewControllerAccessibility;
  v3 = a3;
  [(AEMessagesShelfViewControllerAccessibility *)&v4 _toggleIris:v3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v3);
}

@end