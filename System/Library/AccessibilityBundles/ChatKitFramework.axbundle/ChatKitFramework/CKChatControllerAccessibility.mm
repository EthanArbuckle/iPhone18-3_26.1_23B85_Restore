@interface CKChatControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityPerformEscape;
- (id)_accessibilitySpeakThisElementsAndStrings;
- (id)_axDescriptionForMessageEffectIdentifier:(id)identifier;
- (id)_copyActionForChatItem:(id)item shouldUseTopMostChatItemIfAggregateChatItem:(BOOL)chatItem;
- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update;
- (id)editingToolbarItems;
- (unint64_t)_axLayoutIntentForTarget:(id)target inBalloonView:(id)view;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityReloadElementRelations:(BOOL)relations;
- (void)_dealloc;
- (void)_showPhotoPickerWithSourceType:(int64_t)type;
- (void)_showVCalViewerForMediaObject:(id)object;
- (void)dismissInlineReplyController:(BOOL)controller;
- (void)dragManagerDidBeginDragging:(id)dragging;
- (void)dragManagerDidEndDragging:(id)dragging;
- (void)messageEntryViewSendButtonHit:(id)hit;
- (void)sendSticker:(id)sticker withDragTarget:(id)target draggedSticker:(id)draggedSticker;
- (void)setEffectPickerWindow:(id)window;
- (void)showInlineReplyControllerForChatItem:(id)item presentKeyboard:(BOOL)keyboard;
- (void)transcriptCollectionViewController:(id)controller willBeginImpactEffectAnimationWithSendAnimationContext:(id)context;
@end

@implementation CKChatControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKChatController" hasInstanceMethod:@"editingToolbarItems" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKChatController" hasInstanceMethod:@"setEffectPickerWindow:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CKChatController" hasInstanceMethod:@"transcriptCollectionViewController: willBeginImpactEffectAnimationWithSendAnimationContext:" withFullSignature:{"v", "@", "@", 0}];
  [validationsCopy validateClass:@"CKActionMenuItem" hasInstanceMethod:@"view" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKChatController" isKindOfClass:@"CKCoreChatController"];
  [validationsCopy validateClass:@"CKCoreChatController" hasInstanceMethod:@"collectionViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKMessagePartChatItem" hasInstanceMethod:@"message" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"IMMessage" hasInstanceMethod:@"isFromMe" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"IMMessage" hasInstanceMethod:@"sender" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"IMMessage" hasInstanceMethod:@"subject" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"IMMessage" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"IMHandle" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"IMMessage" hasInstanceMethod:@"__ck_isiMessage" withFullSignature:{"B", 0, 0, 0}];
  [validationsCopy validateClass:@"CKChatController" hasInstanceMethod:@"dragManagerDidBeginDragging:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CKChatController" hasInstanceMethod:@"dropInteraction: sessionDidUpdate:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"CKChatController" hasInstanceMethod:@"dragManagerDidEndDragging:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CKChatController" hasInstanceMethod:@"selectedBalloonForTarget:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"CKChatController" hasInstanceMethod:@"_selectedBalloonFromTouchForDropSession:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"CKChatController" hasInstanceMethod:@"sendSticker: withDragTarget: draggedSticker:" withFullSignature:{"v", "@", "@", "@", 0}];
  [validationsCopy validateClass:@"CKChatController" hasInstanceMethod:@"nicknameBanner" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKTranscriptCollectionViewController" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKTranscriptCollectionView" isKindOfClass:@"UICollectionView"];
  [validationsCopy validateClass:@"CKChatController" hasInstanceMethod:@"showInlineReplyControllerForChatItem:presentKeyboard:" withFullSignature:{"v", "@", "B", 0}];
  [validationsCopy validateClass:@"CKChatController" hasInstanceMethod:@"dismissInlineReplyController:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"CKChatController" hasInstanceMethod:@"inlineReplyController" withFullSignature:{"@", 0}];
  [validationsCopy validateProtocol:@"CKSendAnimationContextProtocol" hasRequiredInstanceMethod:@"impactIdentifier"];
  [validationsCopy validateProtocol:@"CKSendAnimationContextProtocol" hasRequiredInstanceMethod:@"throwBalloonViews"];
  [validationsCopy validateClass:@"CKAttachmentMessagePartChatItem"];
  [validationsCopy validateClass:@"IMMessage"];
  [validationsCopy validateClass:@"IMHandle"];
  [validationsCopy validateClass:@"CKAdaptivePresentationController"];
  [validationsCopy validateClass:@"CKAdaptivePresentationController" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKAdaptivePresentationController" hasInstanceMethod:@"presentedViewController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKBrowserDragControllerTarget"];
  [validationsCopy validateClass:@"CKBrowserDragControllerTarget" hasInstanceMethod:@"screenCoordinate" withFullSignature:{"{CGPoint=dd}", 0}];
  [validationsCopy validateClass:@"CKChatController" hasInstanceMethod:@"becomeFirstResponder" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CKChatController" hasInstanceMethod:@"targetFirstResponder" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"CKMacToolbarController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"CKMessagesController" hasInstanceMethod:@"macToolbarController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKChatController" hasInstanceMethod:@"entryView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKMessageEntryView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"CKMessageEntryView" hasInstanceMethod:@"contentView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKMessageEntryContentView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"CKMessageEntryContentView" hasInstanceMethod:@"textView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKMessageEntryRichTextView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"CKMessagesController" hasProperty:@"conversationListController" withType:"@"];
  [validationsCopy validateClass:@"CKConversationListCollectionViewController" hasProperty:@"collectionView" withType:"@"];
  [validationsCopy validateClass:@"CKCoreChatController" hasProperty:@"collectionView" withType:"@"];
  [validationsCopy validateClass:@"CKChatController" hasProperty:@"delegate" withType:"@"];
  [validationsCopy validateClass:@"CKChatController" hasProperty:@"entryView" withType:"@"];
  [validationsCopy validateClass:@"CKMessageEntryView" hasProperty:@"contentView" withType:"@"];
  [validationsCopy validateClass:@"CKMessageEntryContentView" hasProperty:@"textView" withType:"@"];
  [validationsCopy validateClass:@"UIViewController" hasInstanceMethod:@"toolbarItems" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKChatController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"CKChatController" hasInstanceMethod:@"_copyActionForChatItem:shouldUseTopMostChatItemIfAggregateChatItem:" withFullSignature:{"@", "@", "B", 0}];
  [validationsCopy validateClass:@"UIAction" hasProperty:@"handler" withType:"@?"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v11.receiver = self;
  v11.super_class = CKChatControllerAccessibility;
  [(CKChatControllerAccessibility *)&v11 _accessibilityLoadAccessibilityInformation];
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__5;
  v9 = __Block_byref_object_dispose__5;
  v10 = 0;
  v4 = MEMORY[0x29EDCA5F8];
  AXPerformSafeBlock();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  [(CKChatControllerAccessibility *)self _axUpdateEditingToolbarItems:v3, v4, 3221225472, __75__CKChatControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke, &unk_29F2B06F8, self, &v5];
  [(CKChatControllerAccessibility *)self _accessibilityReloadElementRelations:1];
}

uint64_t __75__CKChatControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) toolbarItems];

  return MEMORY[0x2A1C71028]();
}

- (BOOL)accessibilityPerformEscape
{
  v2 = [NSClassFromString(&cfstr_Ckadaptivepres.isa) safeValueForKey:@"sharedInstance"];
  v3 = [v2 safeValueForKey:@"presentedViewController"];
  if (v3)
  {
    v5 = v2;
    AXPerformSafeBlock();
  }

  return v3 != 0;
}

- (void)_dealloc
{
  v3.receiver = self;
  v3.super_class = CKChatControllerAccessibility;
  [(CKChatControllerAccessibility *)&v3 _dealloc];
  [(CKChatControllerAccessibility *)self _accessibilityReloadElementRelations:0];
}

- (void)_accessibilityReloadElementRelations:(BOOL)relations
{
  relationsCopy = relations;
  v5 = [(CKChatControllerAccessibility *)self safeValueForKey:@"delegate"];
  NSClassFromString(&cfstr_Ckmessagescont_0.isa);
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v6 = [v5 safeValueForKeyPath:@"conversationListController.collectionView"];
    v7 = __UIAccessibilityCastAsClass();

    if (v7)
    {
      UIAccessibilityUnrelateAllElements();
    }
  }

  else
  {
    v7 = 0;
  }

  objc_opt_class();
  v8 = [(CKChatControllerAccessibility *)self safeValueForKey:@"collectionView"];
  v9 = __UIAccessibilityCastAsClass();

  if (v9)
  {
    UIAccessibilityUnrelateAllElements();
  }

  objc_opt_class();
  v10 = [(CKChatControllerAccessibility *)self safeValueForKeyPath:@"entryView.contentView.textView"];
  v11 = __UIAccessibilityCastAsClass();

  if (v11)
  {
    UIAccessibilityUnrelateAllElements();
  }

  if (relationsCopy)
  {
    v12 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, v9}];
    [v7 _setAccessibilityLinkedUIElements:v12];

    if (v9)
    {
      if (v11)
      {
        UIAccessibilityRelateElements();
      }
    }
  }
}

- (void)messageEntryViewSendButtonHit:(id)hit
{
  v3.receiver = self;
  v3.super_class = CKChatControllerAccessibility;
  [(CKChatControllerAccessibility *)&v3 messageEntryViewSendButtonHit:hit];
  MEMORY[0x29C2D0530](*MEMORY[0x29EDC7448]);
}

- (void)_showPhotoPickerWithSourceType:(int64_t)type
{
  v5 = MEMORY[0x29C2D04B0](self, a2);
  v6 = [v5 stringByAppendingPathComponent:@"System/Library/PrivateFrameworks/PhotoLibrary.framework"];

  v7 = [MEMORY[0x29EDB9F48] bundleWithPath:v6];
  if (([v7 isLoaded] & 1) == 0)
  {
    [v7 load];
  }

  v8.receiver = self;
  v8.super_class = CKChatControllerAccessibility;
  [(CKChatControllerAccessibility *)&v8 _showPhotoPickerWithSourceType:type];
}

- (void)_showVCalViewerForMediaObject:(id)object
{
  objectCopy = object;
  v5 = MEMORY[0x29C2D04B0]();
  v6 = [v5 stringByAppendingPathComponent:@"System/Library/PrivateFrameworks/CalendarUI.framework"];

  v7 = [MEMORY[0x29EDB9F48] bundleWithPath:v6];
  if (([v7 isLoaded] & 1) == 0)
  {
    [v7 load];
  }

  v8.receiver = self;
  v8.super_class = CKChatControllerAccessibility;
  [(CKChatControllerAccessibility *)&v8 _showVCalViewerForMediaObject:objectCopy];
}

- (id)editingToolbarItems
{
  v5.receiver = self;
  v5.super_class = CKChatControllerAccessibility;
  editingToolbarItems = [(CKChatControllerAccessibility *)&v5 editingToolbarItems];
  [(CKChatControllerAccessibility *)self _axUpdateEditingToolbarItems:editingToolbarItems];

  return editingToolbarItems;
}

- (id)_accessibilitySpeakThisElementsAndStrings
{
  v3 = [(CKChatControllerAccessibility *)self safeValueForKey:@"collectionViewController"];
  v4 = v3;
  if (v3)
  {
    _accessibilitySpeakThisElementsAndStrings = [v3 _accessibilitySpeakThisElementsAndStrings];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CKChatControllerAccessibility;
    _accessibilitySpeakThisElementsAndStrings = [(CKChatControllerAccessibility *)&v8 _accessibilitySpeakThisElementsAndStrings];
  }

  v6 = _accessibilitySpeakThisElementsAndStrings;

  return v6;
}

- (void)setEffectPickerWindow:(id)window
{
  v4.receiver = self;
  v4.super_class = CKChatControllerAccessibility;
  windowCopy = window;
  [(CKChatControllerAccessibility *)&v4 setEffectPickerWindow:windowCopy];
  [windowCopy setAccessibilityViewIsModal:{1, v4.receiver, v4.super_class}];
}

- (void)dragManagerDidBeginDragging:(id)dragging
{
  v5.receiver = self;
  v5.super_class = CKChatControllerAccessibility;
  [(CKChatControllerAccessibility *)&v5 dragManagerDidBeginDragging:dragging];
  v4 = accessibilityLocalizedString(@"sticker.drag.begin");
  UIAccessibilitySpeakAndDoNotBeInterrupted();

  [(CKChatControllerAccessibility *)self _axSetCurrentTargetBalloonView:0];
  [(CKChatControllerAccessibility *)self _axSetCurrentLayoutIntent:0];
}

- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update
{
  interactionCopy = interaction;
  updateCopy = update;
  v8 = [(CKChatControllerAccessibility *)self safeValueForKey:@"collectionViewController"];
  LOBYTE(v45) = 0;
  objc_opt_class();
  v9 = [v8 safeValueForKey:@"collectionView"];
  v10 = __UIAccessibilityCastAsClass();

  if (v10)
  {
    v32 = interactionCopy;
    v51 = 0;
    objc_opt_class();
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__5;
    v49 = __Block_byref_object_dispose__5;
    v50 = 0;
    v38 = MEMORY[0x29EDCA5F8];
    v39 = 3221225472;
    v40 = __66__CKChatControllerAccessibility_dropInteraction_sessionDidUpdate___block_invoke;
    v41 = &unk_29F2B09A8;
    v44 = &v45;
    selfCopy = self;
    v31 = updateCopy;
    v11 = updateCopy;
    v43 = v11;
    AXPerformSafeBlock();
    v12 = v46[5];

    _Block_object_dispose(&v45, 8);
    v13 = __UIAccessibilityCastAsClass();

    if (v51 == 1)
    {
      abort();
    }

    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__5;
    v49 = __Block_byref_object_dispose__5;
    v50 = 0;
    visibleCells = [v10 visibleCells];
    v34[0] = MEMORY[0x29EDCA5F8];
    v34[1] = 3221225472;
    v34[2] = __66__CKChatControllerAccessibility_dropInteraction_sessionDidUpdate___block_invoke_2;
    v34[3] = &unk_29F2B0BE0;
    v35 = v10;
    v15 = v13;
    v36 = v15;
    v37 = &v45;
    [visibleCells enumerateObjectsUsingBlock:v34];
    v16 = v46[5];
    _axCurrentTargetBalloonView = [(CKChatControllerAccessibility *)self _axCurrentTargetBalloonView];

    v18 = v46[5];
    if (v16 == _axCurrentTargetBalloonView)
    {
      if (v18)
      {
        v24 = [(CKChatControllerAccessibility *)self _axLayoutIntentForTarget:v11 inBalloonView:?];
        if (v24 != [(CKChatControllerAccessibility *)self _axCurrentLayoutIntent])
        {
          [(CKChatControllerAccessibility *)self _axSetCurrentLayoutIntent:v24];
          v25 = _axLocalizedStringForLayoutIntent(v24);
          UIAccessibilitySpeakIfNotSpeaking();
        }
      }
    }

    else if (v18)
    {
      v19 = [(CKChatControllerAccessibility *)self _axLayoutIntentForTarget:v11 inBalloonView:?];
      [(CKChatControllerAccessibility *)self _axSetCurrentLayoutIntent:v19];
      v20 = accessibilityLocalizedString(@"sticker.drag.hovering");
      v21 = _axLocalizedStringForLayoutIntent(v19);
      accessibilityLabel = [v46[5] accessibilityLabel];
      v22 = __UIAXStringForVariables();

      UIAccessibilitySpeak();
      [(CKChatControllerAccessibility *)self _axSetCurrentTargetBalloonView:v46[5], v21, accessibilityLabel, @"__AXStringForVariablesSentinel"];
    }

    else
    {
      [(CKChatControllerAccessibility *)self _axSetCurrentTargetBalloonView:0, v27, v28, v30];
    }

    v33.receiver = self;
    v33.super_class = CKChatControllerAccessibility;
    v23 = [(CKChatControllerAccessibility *)&v33 dropInteraction:v32 sessionDidUpdate:v11];

    _Block_object_dispose(&v45, 8);
    updateCopy = v31;
    interactionCopy = v32;
  }

  else
  {
    v52.receiver = self;
    v52.super_class = CKChatControllerAccessibility;
    v23 = [(CKChatControllerAccessibility *)&v52 dropInteraction:interactionCopy sessionDidUpdate:updateCopy];
  }

  return v23;
}

uint64_t __66__CKChatControllerAccessibility_dropInteraction_sessionDidUpdate___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _selectedBalloonFromTouchForDropSession:*(a1 + 40)];

  return MEMORY[0x2A1C71028]();
}

void __66__CKChatControllerAccessibility_dropInteraction_sessionDidUpdate___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (objc_opt_respondsToSelector())
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__5;
    v12 = __Block_byref_object_dispose__5;
    v13 = 0;
    v6 = *(a1 + 32);
    v7 = v4;
    AXPerformSafeBlock();
    v5 = v9[5];

    _Block_object_dispose(&v8, 8);
    if ([*(a1 + 40) isEqual:v5])
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    }
  }
}

uint64_t __66__CKChatControllerAccessibility_dropInteraction_sessionDidUpdate___block_invoke_3(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) indexPathForCell:*(a1 + 40)];

  return MEMORY[0x2A1C71028]();
}

- (id)_copyActionForChatItem:(id)item shouldUseTopMostChatItemIfAggregateChatItem:(BOOL)chatItem
{
  v15.receiver = self;
  v15.super_class = CKChatControllerAccessibility;
  v4 = [(CKChatControllerAccessibility *)&v15 _copyActionForChatItem:item shouldUseTopMostChatItemIfAggregateChatItem:chatItem];
  v5 = [v4 safeValueForKey:@"handler"];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = MEMORY[0x29EDC7908];
      title = [v4 title];
      image = [v4 image];
      identifier = [v4 identifier];
      v12[0] = MEMORY[0x29EDCA5F8];
      v12[1] = 3221225472;
      v12[2] = __100__CKChatControllerAccessibility__copyActionForChatItem_shouldUseTopMostChatItemIfAggregateChatItem___block_invoke;
      v12[3] = &unk_29F2B0C08;
      v13 = v4;
      v14 = v5;
      v10 = v4;
      v4 = [v6 actionWithTitle:title image:image identifier:identifier handler:v12];
    }
  }

  return v4;
}

void __100__CKChatControllerAccessibility__copyActionForChatItem_shouldUseTopMostChatItemIfAggregateChatItem___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 32);
  AXPerformSafeBlock();
}

void __100__CKChatControllerAccessibility__copyActionForChatItem_shouldUseTopMostChatItemIfAggregateChatItem___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))(*(a1 + 40), *(a1 + 32));
  v1 = *MEMORY[0x29EDC7EA8];
  v2 = accessibilityLocalizedString(@"copy.action.confirmed");
  UIAccessibilityPostNotification(v1, v2);
}

- (void)dragManagerDidEndDragging:(id)dragging
{
  v4.receiver = self;
  v4.super_class = CKChatControllerAccessibility;
  [(CKChatControllerAccessibility *)&v4 dragManagerDidEndDragging:dragging];
  v3 = accessibilityLocalizedString(@"sticker.drag.done");
  UIAccessibilitySpeakAndDoNotBeInterrupted();
}

- (void)sendSticker:(id)sticker withDragTarget:(id)target draggedSticker:(id)draggedSticker
{
  stickerCopy = sticker;
  targetCopy = target;
  draggedStickerCopy = draggedSticker;
  v20.receiver = self;
  v20.super_class = CKChatControllerAccessibility;
  [(CKChatControllerAccessibility *)&v20 sendSticker:stickerCopy withDragTarget:targetCopy draggedSticker:draggedStickerCopy];
  if (targetCopy)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__5;
    v18 = __Block_byref_object_dispose__5;
    v19 = 0;
    v13 = targetCopy;
    AXPerformSafeBlock();
    v11 = v15[5];

    _Block_object_dispose(&v14, 8);
    if (v11)
    {
      v12 = accessibilityLocalizedString(@"sticker.drag.attached");
      UIAccessibilitySpeakAndDoNotBeInterrupted();
    }
  }
}

uint64_t __75__CKChatControllerAccessibility_sendSticker_withDragTarget_draggedSticker___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) selectedBalloonForTarget:*(a1 + 40)];

  return MEMORY[0x2A1C71028]();
}

- (id)_axDescriptionForMessageEffectIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"com.apple.MobileSMS.expressivesend.impact"])
  {
    v4 = @"impact.effect.message.impact";
  }

  else if ([identifierCopy isEqualToString:@"com.apple.MobileSMS.expressivesend.loud"])
  {
    v4 = @"impact.effect.message.loud";
  }

  else if ([identifierCopy isEqualToString:@"com.apple.MobileSMS.expressivesend.gentle"])
  {
    v4 = @"impact.effect.message.gentle";
  }

  else if ([identifierCopy isEqualToString:@"com.apple.MobileSMS.expressivesend.focus"])
  {
    v4 = @"impact.effect.message.focus";
  }

  else
  {
    v4 = &stru_2A21515E8;
  }

  v5 = MEMORY[0x29EDBA0F8];
  v6 = accessibilityLocalizedString(@"impact.effect.message");
  v7 = accessibilityLocalizedString(v4);
  v8 = [v5 stringWithFormat:v6, v7];

  return v8;
}

- (unint64_t)_axLayoutIntentForTarget:(id)target inBalloonView:(id)view
{
  targetCopy = target;
  viewCopy = view;
  v8 = [(CKChatControllerAccessibility *)self safeValueForKeyPath:@"collectionViewController.collectionView"];
  window = [v8 window];
  [targetCopy locationInView:window];
  v11 = v10;
  v13 = v12;

  objc_opt_class();
  v14 = __UIAccessibilityCastAsClass();
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [v14 convertPoint:0 fromView:{v11, v13}];
  v36 = v23;
  v25 = v24;
  v37.origin.x = v16;
  v37.origin.y = v18;
  v37.size.width = v20;
  v37.size.height = v22;
  v26 = CGRectGetWidth(v37) / 3.0;
  v38.origin.x = v16;
  v38.origin.y = v18;
  v38.size.width = v20;
  v38.size.height = v22;
  Width = CGRectGetWidth(v38);
  v39.origin.x = v16;
  v39.origin.y = v18;
  v39.size.width = v20;
  v39.size.height = v22;
  v27 = CGRectGetHeight(v39) / 3.0;
  v40.origin.x = v16;
  v40.origin.y = v18;
  v40.size.width = v20;
  v40.size.height = v22;
  Height = CGRectGetHeight(v40);
  v29 = (Height + Height) / 3.0;
  if (v36 <= v26)
  {
    if (v25 <= v27)
    {
      v33 = 1;
      goto LABEL_15;
    }

    v30 = v25 < v29;
    v31 = 3;
    v32 = 8;
  }

  else if (v36 >= (Width + Width) / 3.0)
  {
    if (v25 <= v27)
    {
      v33 = 2;
      goto LABEL_15;
    }

    v30 = v25 < v29;
    v31 = 4;
    v32 = 9;
  }

  else
  {
    if (v25 <= v27)
    {
      v33 = 6;
      goto LABEL_15;
    }

    v30 = v25 < v29;
    v31 = 7;
    v32 = 5;
  }

  if (v30)
  {
    v33 = v32;
  }

  else
  {
    v33 = v31;
  }

LABEL_15:

  return v33;
}

- (void)transcriptCollectionViewController:(id)controller willBeginImpactEffectAnimationWithSendAnimationContext:(id)context
{
  controllerCopy = controller;
  contextCopy = context;
  v16.receiver = self;
  v16.super_class = CKChatControllerAccessibility;
  [(CKChatControllerAccessibility *)&v16 transcriptCollectionViewController:controllerCopy willBeginImpactEffectAnimationWithSendAnimationContext:contextCopy];
  objc_opt_class();
  v8 = [contextCopy safeValueForKey:@"impactIdentifier"];
  v9 = __UIAccessibilityCastAsClass();

  if (v9)
  {
    objc_opt_class();
    v10 = [contextCopy safeValueForKey:@"throwBalloonViews"];
    v11 = __UIAccessibilityCastAsClass();

    firstObject = [v11 firstObject];
    v13 = [(CKChatControllerAccessibility *)self _axDescriptionForMessageEffectIdentifier:v9];
    accessibilityLabel = [firstObject accessibilityLabel];
    v14 = __UIAXStringForVariables();
    UIAccessibilitySpeakAndDoNotBeInterrupted();
  }
}

- (void)showInlineReplyControllerForChatItem:(id)item presentKeyboard:(BOOL)keyboard
{
  keyboardCopy = keyboard;
  v6 = *MEMORY[0x29EDC7EE8];
  itemCopy = item;
  v8 = UIAccessibilityFocusedElement(v6);
  [(CKChatControllerAccessibility *)self _axSetFocusedChatItemElement:v8];
  v9 = [(CKChatControllerAccessibility *)self safeValueForKeyPath:@"collectionViewController.collectionView"];
  [v9 setAccessibilityElementsHidden:1];
  v10 = [(CKChatControllerAccessibility *)self safeValueForKey:@"nicknameBanner"];
  [v10 setAccessibilityElementsHidden:1];
  v11.receiver = self;
  v11.super_class = CKChatControllerAccessibility;
  [(CKChatControllerAccessibility *)&v11 showInlineReplyControllerForChatItem:itemCopy presentKeyboard:keyboardCopy];

  AXPerformBlockOnMainThreadAfterDelay();
}

void __86__CKChatControllerAccessibility_showInlineReplyControllerForChatItem_presentKeyboard___block_invoke()
{
  v0 = *MEMORY[0x29EDC7EA8];
  v1 = accessibilityLocalizedString(@"inline.reply.show.transcript");
  UIAccessibilityPostNotification(v0, v1);
}

- (void)dismissInlineReplyController:(BOOL)controller
{
  controllerCopy = controller;
  v5 = [(CKChatControllerAccessibility *)self safeValueForKey:@"inlineReplyController"];

  v10.receiver = self;
  v10.super_class = CKChatControllerAccessibility;
  [(CKChatControllerAccessibility *)&v10 dismissInlineReplyController:controllerCopy];
  v6 = [(CKChatControllerAccessibility *)self safeValueForKeyPath:@"collectionViewController.collectionView"];
  [v6 setAccessibilityElementsHidden:0];
  v7 = [(CKChatControllerAccessibility *)self safeValueForKey:@"nicknameBanner"];
  [v7 setAccessibilityElementsHidden:0];
  if (v5)
  {
    v8 = *MEMORY[0x29EDC7F10];
    _axFocusedChatItemElement = [(CKChatControllerAccessibility *)self _axFocusedChatItemElement];
    UIAccessibilityPostNotification(v8, _axFocusedChatItemElement);

    [(CKChatControllerAccessibility *)self _axSetFocusedChatItemElement:0];
  }
}

void __62__CKChatControllerAccessibility__axUpdateEditingToolbarItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 tag];
  if (v4 <= 2)
  {
    v5 = accessibilityLocalizedString(off_29F2B0C98[v4]);
    [v3 setAccessibilityLabel:v5];
  }
}

@end