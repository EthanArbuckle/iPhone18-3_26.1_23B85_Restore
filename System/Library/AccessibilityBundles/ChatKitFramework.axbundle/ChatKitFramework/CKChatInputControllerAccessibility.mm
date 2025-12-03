@interface CKChatInputControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)handwritingPresentationControllerDidShowHandwriting:(id)handwriting;
- (void)handwritingPresentationControllerWillHideHandwriting:(id)handwriting;
- (void)sendMenuViewControllerRequestDismiss:(id)dismiss;
@end

@implementation CKChatInputControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKChatInputController" hasInstanceMethod:@"handwritingPresentationControllerDidShowHandwriting:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CKChatInputController" hasInstanceMethod:@"handwritingPresentationControllerWillHideHandwriting:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CKChatInputController" conformsToProtocol:@"CKSendMenuViewControllerDelegate"];
  [validationsCopy validateProtocol:@"CKSendMenuViewControllerDelegate" hasRequiredInstanceMethod:@"sendMenuViewControllerRequestDismiss:"];
  [validationsCopy validateClass:@"CKHandwritingPresentationController"];
}

- (void)handwritingPresentationControllerDidShowHandwriting:(id)handwriting
{
  v3.receiver = self;
  v3.super_class = CKChatInputControllerAccessibility;
  [(CKChatInputControllerAccessibility *)&v3 handwritingPresentationControllerDidShowHandwriting:handwriting];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

- (void)handwritingPresentationControllerWillHideHandwriting:(id)handwriting
{
  v3.receiver = self;
  v3.super_class = CKChatInputControllerAccessibility;
  [(CKChatInputControllerAccessibility *)&v3 handwritingPresentationControllerWillHideHandwriting:handwriting];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

- (void)sendMenuViewControllerRequestDismiss:(id)dismiss
{
  v3.receiver = self;
  v3.super_class = CKChatInputControllerAccessibility;
  [(CKChatInputControllerAccessibility *)&v3 sendMenuViewControllerRequestDismiss:dismiss];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

@end