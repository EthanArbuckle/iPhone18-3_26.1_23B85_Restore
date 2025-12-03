@interface CKTranscriptExtensionViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CKTranscriptExtensionViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = CKTranscriptExtensionViewControllerAccessibility;
  [(CKTranscriptExtensionViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  _accessibilityWindow = [(CKTranscriptExtensionViewControllerAccessibility *)self _accessibilityWindow];
  [_accessibilityWindow setAccessibilityIdentifier:@"AXMessagesExtensionWindow"];
}

@end