@interface CKCoreChatControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)sendTapback:(id)a3 chatItem:(id)a4 isRemoval:(BOOL)a5;
@end

@implementation CKCoreChatControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateProtocol:@"CKFullScreenBalloonViewControllerDelegate" hasOptionalInstanceMethod:@"fullScreenBalloonViewControllerHandleDismissTap:"];
  [v3 validateClass:@"CKCoreChatController" hasInstanceMethod:@"sendTapback:chatItem:isRemoval:" withFullSignature:{"v", "@", "@", "B", 0}];
  [v3 validateClass:@"CKCoreChatController" hasInstanceMethod:@"balloonViewForChatItem:" withFullSignature:{"@", "@", 0}];
}

- (void)sendTapback:(id)a3 chatItem:(id)a4 isRemoval:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v18.receiver = self;
  v18.super_class = CKCoreChatControllerAccessibility;
  [(CKCoreChatControllerAccessibility *)&v18 sendTapback:v8 chatItem:v9 isRemoval:v5];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6;
  v16 = __Block_byref_object_dispose__6;
  v17 = 0;
  v11 = v9;
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