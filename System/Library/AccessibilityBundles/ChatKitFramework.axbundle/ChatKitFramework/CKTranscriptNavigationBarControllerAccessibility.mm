@interface CKTranscriptNavigationBarControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)applyChange:(id)change;
@end

@implementation CKTranscriptNavigationBarControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKTranscriptNavigationBarController" hasInstanceMethod:@"applyChange:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CKTranscriptNavigationBarController" hasInstanceMethod:@"currentState" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKTranscriptNavigationBarController" hasInstanceMethod:@"backNavigationItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UINavigationItem" hasInstanceMethod:@"backBarButtonItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ChatKit.NavigationBarState" hasInstanceMethod:@"unreadCount" withFullSignature:{"q", 0}];
}

- (void)applyChange:(id)change
{
  v9.receiver = self;
  v9.super_class = CKTranscriptNavigationBarControllerAccessibility;
  [(CKTranscriptNavigationBarControllerAccessibility *)&v9 applyChange:change];
  v4 = [(CKTranscriptNavigationBarControllerAccessibility *)self safeValueForKey:@"currentState"];
  v5 = [(CKTranscriptNavigationBarControllerAccessibility *)self safeValueForKeyPath:@"backNavigationItem.backBarButtonItem"];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __64__CKTranscriptNavigationBarControllerAccessibility_applyChange___block_invoke;
  v7[3] = &unk_29F2B0840;
  v8 = v4;
  v6 = v4;
  [v5 setAccessibilityLabelBlock:v7];
}

id __64__CKTranscriptNavigationBarControllerAccessibility_applyChange___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x29EDBA0F8];
  v3 = accessibilityLocalizedString(@"message.view.back.button.unread");
  v4 = [v2 stringWithFormat:v3, objc_msgSend(*(a1 + 32), "safeIntegerForKey:", @"unreadCount"];

  return v4;
}

@end