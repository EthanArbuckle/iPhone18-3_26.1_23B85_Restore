@interface CKCoreChatControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)sendTapback:(id)tapback chatItem:(id)item isRemoval:(BOOL)removal;
@end

@implementation CKCoreChatControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateProtocol:@"CKFullScreenBalloonViewControllerDelegate" hasOptionalInstanceMethod:@"fullScreenBalloonViewControllerHandleDismissTap:"];
  [validationsCopy validateClass:@"CKCoreChatController" hasInstanceMethod:@"sendTapback:chatItem:isRemoval:" withFullSignature:{"v", "@", "@", "B", 0}];
  [validationsCopy validateClass:@"CKCoreChatController" hasInstanceMethod:@"balloonViewForChatItem:" withFullSignature:{"@", "@", 0}];
}

- (void)sendTapback:(id)tapback chatItem:(id)item isRemoval:(BOOL)removal
{
  removalCopy = removal;
  tapbackCopy = tapback;
  itemCopy = item;
  v18.receiver = self;
  v18.super_class = CKCoreChatControllerAccessibility;
  [(CKCoreChatControllerAccessibility *)&v18 sendTapback:tapbackCopy chatItem:itemCopy isRemoval:removalCopy];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6;
  v16 = __Block_byref_object_dispose__6;
  v17 = 0;
  v11 = itemCopy;
  AXPerformSafeBlock();
  v10 = v13[5];

  _Block_object_dispose(&v12, 8);
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], v10);
}

uint64_t __68__CKCoreChatControllerAccessibility_sendTapback_chatItem_isRemoval___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) balloonViewForChatItem:*(a1 + 40)];

  return MEMORY[0x2A1C71028]();
}

@end