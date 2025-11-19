@interface CKNotificationChatControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)loadView;
@end

@implementation CKNotificationChatControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = CKNotificationChatControllerAccessibility;
  [(CKNotificationChatControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(CKNotificationChatControllerAccessibility *)self _accessibilitySetBoolValue:1 forKey:@"AXTranscriptIsInNotification"];
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = CKNotificationChatControllerAccessibility;
  [(CKNotificationChatControllerAccessibility *)&v3 loadView];
  [(CKNotificationChatControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end