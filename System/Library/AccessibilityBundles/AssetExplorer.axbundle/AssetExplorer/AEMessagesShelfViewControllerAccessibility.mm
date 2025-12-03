@interface AEMessagesShelfViewControllerAccessibility
- (void)_toggleIris:(id)iris;
@end

@implementation AEMessagesShelfViewControllerAccessibility

- (void)_toggleIris:(id)iris
{
  v4.receiver = self;
  v4.super_class = AEMessagesShelfViewControllerAccessibility;
  irisCopy = iris;
  [(AEMessagesShelfViewControllerAccessibility *)&v4 _toggleIris:irisCopy];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], irisCopy);
}

@end