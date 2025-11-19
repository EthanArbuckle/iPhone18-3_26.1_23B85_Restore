@interface CKChatInputControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)handwritingPresentationControllerDidShowHandwriting:(id)a3;
- (void)handwritingPresentationControllerWillHideHandwriting:(id)a3;
- (void)sendMenuViewControllerRequestDismiss:(id)a3;
@end

@implementation CKChatInputControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKChatInputController" hasInstanceMethod:@"handwritingPresentationControllerDidShowHandwriting:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"CKChatInputController" hasInstanceMethod:@"handwritingPresentationControllerWillHideHandwriting:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"CKChatInputController" conformsToProtocol:@"CKSendMenuViewControllerDelegate"];
  [v3 validateProtocol:@"CKSendMenuViewControllerDelegate" hasRequiredInstanceMethod:@"sendMenuViewControllerRequestDismiss:"];
  [v3 validateClass:@"CKHandwritingPresentationController"];
}

- (void)handwritingPresentationControllerDidShowHandwriting:(id)a3
{
  v3.receiver = self;
  v3.super_class = CKChatInputControllerAccessibility;
  [(CKChatInputControllerAccessibility *)&v3 handwritingPresentationControllerDidShowHandwriting:a3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

- (void)handwritingPresentationControllerWillHideHandwriting:(id)a3
{
  v3.receiver = self;
  v3.super_class = CKChatInputControllerAccessibility;
  [(CKChatInputControllerAccessibility *)&v3 handwritingPresentationControllerWillHideHandwriting:a3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

- (void)sendMenuViewControllerRequestDismiss:(id)a3
{
  v3.receiver = self;
  v3.super_class = CKChatInputControllerAccessibility;
  [(CKChatInputControllerAccessibility *)&v3 sendMenuViewControllerRequestDismiss:a3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end