@interface CDPRemoteSecretEntryPaneAccessibility
- (id)_accessibilityResponderElement;
@end

@implementation CDPRemoteSecretEntryPaneAccessibility

- (id)_accessibilityResponderElement
{
  v3 = MEMORY[0x29C2D2E70](@"PSPasscodeField", a2);

  return [(CDPRemoteSecretEntryPaneAccessibility *)self _accessibilityDescendantOfType:v3];
}

@end