@interface CKInlineReplyChatControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_animateIn:(BOOL)a3;
@end

@implementation CKInlineReplyChatControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKInlineReplyChatController" hasInstanceMethod:@"_animateOut" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CKInlineReplyChatController" hasInstanceMethod:@"_animateIn:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"CKInlineReplyChatController" isKindOfClass:@"CKCoreChatController"];
  [v3 validateClass:@"CKCoreChatController" hasInstanceMethod:@"collectionViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKInlineReplyCollectionViewController" isKindOfClass:@"CKTranscriptCollectionViewController"];
  [v3 validateClass:@"CKTranscriptCollectionViewController" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
}

- (void)_animateIn:(BOOL)a3
{
  v15[1] = *MEMORY[0x29EDCA608];
  v14.receiver = self;
  v14.super_class = CKInlineReplyChatControllerAccessibility;
  [(CKInlineReplyChatControllerAccessibility *)&v14 _animateIn:a3];
  v4 = [(CKInlineReplyChatControllerAccessibility *)self safeValueForKeyPath:@"collectionViewController.collectionView"];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:v4];
    objc_initWeak(&location, self);
    v8 = MEMORY[0x29EDCA5F8];
    v9 = 3221225472;
    v10 = __55__CKInlineReplyChatControllerAccessibility__animateIn___block_invoke;
    v11 = &unk_29F2B0890;
    objc_copyWeak(&v12, &location);
    [v5 _setAccessibilityFrameBlock:&v8];
    [v5 setAccessibilityTraits:{*MEMORY[0x29EDC7F70], v8, v9, v10, v11}];
    v6 = accessibilityLocalizedString(@"inline.reply.dismiss.transcript");
    [v5 setAccessibilityLabel:v6];

    [v5 _accessibilitySetAdditionalElementOrderedLast:1];
    v15[0] = v5;
    v7 = [MEMORY[0x29EDB8D80] arrayWithObjects:v15 count:1];
    [v4 _accessibilitySetAdditionalElements:v7];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

double __55__CKInlineReplyChatControllerAccessibility__animateIn___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKeyPath:@"collectionViewController.collectionView"];
  [v2 accessibilityFrame];
  v4 = v3;

  return v4;
}

@end