@interface CKTranscriptCollectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityElementsHidden;
- (BOOL)accessibilityScroll:(int64_t)a3;
- (BOOL)accessibilityViewIsModal;
- (BOOL)isAccessibilityOpaqueElementProvider;
- (id)_accessibilityElementToFocusForAppearanceScreenChange;
- (id)accessibilityLabel;
- (void)_accessibilityEnsureViewsAroundAreLoaded;
- (void)_accessibilityScrollOpaqueElementIntoView:(int64_t)a3 previousScroller:(id)a4;
@end

@implementation CKTranscriptCollectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKTranscriptCollectionView" isKindOfClass:@"UICollectionView"];
  [v3 validateClass:@"UICollectionView" hasProperty:@"delegate" withType:"@"];
  [v3 validateClass:@"CKTranscriptCollectionViewController" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKCoreChatController" hasInstanceMethod:@"fullScreenBalloonViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKFullScreenBalloonViewController" hasInstanceMethod:@"displayConfiguration" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKFullScreenBalloonViewDisplayConfiguration" hasInstanceMethod:@"type" withFullSignature:{"q", 0}];
  [v3 validateClass:@"CKChatController" isKindOfClass:@"CKCoreChatController"];
  [v3 validateClass:@"CKChatController" hasInstanceMethod:@"entryView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKSocialLayerChatController"];
  [v3 validateClass:@"CKFullScreenBalloonViewControllerPhone" isKindOfClass:@"CKFullScreenBalloonViewController"];
  [v3 validateClass:@"CKTranscriptMessageCell"];
}

- (id)accessibilityLabel
{
  v2 = [(CKTranscriptCollectionViewAccessibility *)self accessibilityUserDefinedLabel];
  if ([v2 length])
  {
    v3 = v2;
  }

  else
  {
    v3 = accessibilityLocalizedString(@"group.transcripts.collection");
  }

  v4 = v3;

  return v4;
}

- (BOOL)accessibilityViewIsModal
{
  v2 = [(CKTranscriptCollectionViewAccessibility *)self safeValueForKeyPath:@"delegate.delegate.fullScreenBalloonViewController.displayConfiguration"];
  v3 = [v2 safeIntegerForKey:@"type"] == 1;

  return v3;
}

- (BOOL)accessibilityElementsHidden
{
  v3 = [(CKTranscriptCollectionViewAccessibility *)self storedAccessibilityElementsHidden];

  if (v3)
  {
    v4 = [(CKTranscriptCollectionViewAccessibility *)self storedAccessibilityElementsHidden];
    v5 = [v4 BOOLValue];
LABEL_6:

    return v5;
  }

  v6 = [(CKTranscriptCollectionViewAccessibility *)self safeValueForKey:@"delegate"];
  v7 = [v6 safeValueForKey:@"delegate"];
  NSClassFromString(&cfstr_Cksociallayerc.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v4 = [(CKTranscriptCollectionViewAccessibility *)self safeValueForKey:@"delegate"];
    v9 = [v4 safeValueForKey:@"delegate"];
    v10 = [v9 safeValueForKey:@"entryView"];
    v5 = [v10 accessibilityViewIsModal];

    goto LABEL_6;
  }

  return 1;
}

- (BOOL)isAccessibilityOpaqueElementProvider
{
  if ([(CKTranscriptCollectionViewAccessibility *)self accessibilityElementsHidden])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = CKTranscriptCollectionViewAccessibility;
  return [(CKTranscriptCollectionViewAccessibility *)&v4 isAccessibilityOpaqueElementProvider];
}

- (BOOL)accessibilityScroll:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = CKTranscriptCollectionViewAccessibility;
  v5 = [(CKTranscriptCollectionViewAccessibility *)&v8 accessibilityScroll:?];
  v6 = [(CKTranscriptCollectionViewAccessibility *)self _accessibilityPageIndex];
  if (a3 == 3 && v6 <= 1)
  {
    [(CKTranscriptCollectionViewAccessibility *)self _accessibilityEnsureViewsAroundAreLoaded];
  }

  return v5;
}

- (void)_accessibilityEnsureViewsAroundAreLoaded
{
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 delegate];
  v7 = 0;
  objc_opt_class();
  v5 = __UIAccessibilityCastAsSafeCategory();
  [v5 _accessibilityLoadMessagesIfNeeded];

  v6.receiver = self;
  v6.super_class = CKTranscriptCollectionViewAccessibility;
  [(CKTranscriptCollectionViewAccessibility *)&v6 _accessibilityEnsureViewsAroundAreLoaded];
}

- (void)_accessibilityScrollOpaqueElementIntoView:(int64_t)a3 previousScroller:(id)a4
{
  if (a3 != 1)
  {
    v7 = v4;
    v8 = v5;
    v6.receiver = self;
    v6.super_class = CKTranscriptCollectionViewAccessibility;
    [(CKTranscriptCollectionViewAccessibility *)&v6 _accessibilityScrollOpaqueElementIntoView:a3 previousScroller:a4];
  }
}

- (id)_accessibilityElementToFocusForAppearanceScreenChange
{
  NSClassFromString(&cfstr_Cktranscriptme_0.isa);
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [(CKTranscriptCollectionViewAccessibility *)self safeValueForKey:@"dataSource"];
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v25[3] = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v13 = MEMORY[0x29EDCA5F8];
  v14 = 3221225472;
  v15 = __96__CKTranscriptCollectionViewAccessibility__accessibilityElementToFocusForAppearanceScreenChange__block_invoke;
  v16 = &unk_29F2B0EF0;
  v19 = v25;
  v5 = v4;
  v17 = v5;
  v6 = v3;
  v18 = v6;
  v20 = &v21;
  AXPerformSafeBlock();
  v7 = v22[3];
  if (v7 < 2)
  {
LABEL_5:
    v11 = 0;
  }

  else
  {
    v8 = v7 + 1;
    while (1)
    {
      v9 = [MEMORY[0x29EDB9FE0] indexPathForItem:v8 - 2 inSection:{0, v13, v14, v15, v16, v17, v18, v19, v20}];
      v10 = [v6 cellForItemAtIndexPath:v9];
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (--v8 <= 2)
      {
        goto LABEL_5;
      }
    }

    v11 = [v10 _accessibilityElementToFocusForAppearanceScreenChange];
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(v25, 8);

  return v11;
}

uint64_t __96__CKTranscriptCollectionViewAccessibility__accessibilityElementToFocusForAppearanceScreenChange__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) numberOfSectionsInCollectionView:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  if (*(*(*(a1 + 48) + 8) + 24) >= 1)
  {
    result = [*(a1 + 32) collectionView:*(a1 + 40) numberOfItemsInSection:0];
    *(*(*(a1 + 56) + 8) + 24) = result;
  }

  return result;
}

@end