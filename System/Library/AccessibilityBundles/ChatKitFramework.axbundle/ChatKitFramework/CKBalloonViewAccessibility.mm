@interface CKBalloonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axIsBalloonOfType:(id)a3;
- (BOOL)_axIsImessage;
- (BOOL)_axIsInNotification;
- (BOOL)_axIsMessageFromMe;
- (BOOL)_axIsPollView;
- (BOOL)_axIsTapbackBalloonView;
- (BOOL)_axIsTextMessage;
- (BOOL)_axIsVisibleInTapbackView;
- (BOOL)isAccessibilityElement;
- (id)_axAcknowledgmentDescription;
- (id)_axActionsForMenu:(id)a3;
- (id)_axBalloonViewCustomActions;
- (id)_axBuddyNameForBalloon;
- (id)_axChatItemForBalloon;
- (id)_axDigitalTouchDescription;
- (id)_axHighlightedDescription;
- (id)_axIndexPathForBalloon;
- (id)_axMessageForBalloon;
- (id)_axMessageSender;
- (id)_axMessageTime;
- (id)_axReplyDescription;
- (id)_axStickerDescription;
- (id)accessibilityCustomActions;
- (id)accessibilityDropPointDescriptors;
- (void)_axTapback;
- (void)axPerformInterfaceAction:(id)a3;
@end

@implementation CKBalloonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKBalloonView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"CKBalloonView" hasInstanceMethod:@"doubleTapGestureRecognized:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"CKBalloonView" hasInstanceMethod:@"tapGestureRecognized:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"CKMessagePartChatItem" isKindOfClass:@"CKChatItem"];
  [v3 validateProtocol:@"CKBalloonViewDelegate" hasRequiredInstanceMethod:@"balloonViewTapped:withModifierFlags:selectedText:"];
  [v3 validateProtocol:@"CKBalloonViewDelegate" hasRequiredInstanceMethod:@"balloonViewDoubleTapped:"];
  [v3 validateProtocol:@"CKBalloonViewDelegate" hasRequiredInstanceMethod:@"balloonViewLongTouched:"];
  [v3 validateClass:@"CKBalloonView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0, 0, 0}];
  [v3 validateClass:@"CKMessagePartChatItem" hasInstanceMethod:@"message" withFullSignature:{"@", 0, 0, 0}];
  [v3 validateClass:@"IMMessage" hasInstanceMethod:@"isFromMe" withFullSignature:{"B", 0, 0, 0}];
  [v3 validateClass:@"IMMessage" hasInstanceMethod:@"hasMention" withFullSignature:{"B", 0, 0, 0}];
  [v3 validateClass:@"IMMessage" hasInstanceMethod:@"text" withFullSignature:{"@", 0, 0, 0}];
  [v3 validateClass:@"IMMessage" hasInstanceMethod:@"time" withFullSignature:{"@", 0, 0, 0}];
  [v3 validateClass:@"IMMessage" hasInstanceMethod:@"__ck_isiMessage" withFullSignature:{"B", 0, 0, 0}];
  [v3 validateClass:@"IMMessage" hasInstanceMethod:@"__ck_isSMS" withFullSignature:{"B", 0, 0, 0}];
  [v3 validateClass:@"CKAttachmentMessagePartChatItem" hasInstanceMethod:@"mediaObject" withFullSignature:{"@", 0, 0, 0}];
  [v3 validateClass:@"CKMediaObject" hasInstanceMethod:@"mediaType" withFullSignature:{"i", 0}];
  [v3 validateClass:@"CKLocationMediaObject" isKindOfClass:@"CKMediaObject"];
  [v3 validateClass:@"CKLocationMediaObject" hasInstanceMethod:@"coordinate" withFullSignature:{"{CLLocationCoordinate2D=dd}", 0}];
  [v3 validateClass:@"CKChatItem" hasInstanceMethod:@"IMChatItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"IMTranscriptPluginChatItem" conformsToProtocol:@"IMPluginChatItemProtocol"];
  [v3 validateProtocol:@"IMPluginChatItemProtocol" hasRequiredInstanceMethod:@"type"];
  [v3 validateProtocol:@"IMPluginChatItemProtocol" hasRequiredInstanceMethod:@"dataSource"];
  [v3 validateClass:@"CKLocatingChatItem"];
  [v3 validateClass:@"CKMovieMediaObject"];
  [v3 validateClass:@"CKTranscriptCollectionViewController" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIInterfaceAction" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIInterfaceAction" hasInstanceMethod:@"handler" withFullSignature:{"@?", 0}];
  [v3 validateClass:@"CKMessagePartChatItem" hasInstanceMethod:@"visibleAssociatedMessageChatItems" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKChatItem" hasInstanceMethod:@"isHighlighted" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CKMovieMediaObject" hasInstanceMethod:@"isJellyfishVideo" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CKCoreChatController" hasInstanceMethod:@"wantsReplyButton" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CKChatController" hasInstanceMethod:@"showInlineReplyControllerForChatItem:presentKeyboard:" withFullSignature:{"v", "@", "B", 0}];
  [v3 validateClass:@"CKChatController" hasInstanceMethod:@"presentStickerDetailControllerWithIndexPath:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"CKFullScreenBalloonViewControllerPhone"];
  [v3 validateClass:@"CKFullScreenBalloonViewControllerPhone" hasInstanceMethod:@"balloonView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ChatKit.TapbackPickerTintableMessageBalloonView"];
  [v3 validateClass:@"ChatKit.TapbackPickerBalloonView"];
  [v3 validateClass:@"CKBalloonView" hasInstanceMethod:@"invisibleInkEffectController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKInvisibleInkEffectController"];
  [v3 validateClass:@"CKInvisibleInkEffectController" hasInstanceMethod:@"isEnabled" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CKInvisibleInkEffectController" hasInstanceMethod:@"isSuspended" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CKTranscriptBalloonCell"];
  [v3 validateClass:@"CKTranscriptMessageCell" hasInstanceMethod:@"isReply" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CKTranscriptMessageCell" hasInstanceMethod:@"isReplyContextPreview" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CKRichLinkReplyPreviewBalloonView" hasInstanceMethod:@"linkView" withFullSignature:{"@", 0}];
}

- (BOOL)isAccessibilityElement
{
  v2 = [(CKBalloonViewAccessibility *)self storedIsAccessibilityElement];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)accessibilityCustomActions
{
  v55 = *MEMORY[0x29EDCA608];
  v2 = [(CKBalloonViewAccessibility *)self safeValueForKey:@"superview"];

  if (v2)
  {
    v21 = [MEMORY[0x29EDB8DE8] array];
    v3 = [(CKBalloonViewAccessibility *)self safeArrayForKey:@"_axBalloonViewCustomActions"];
    [v21 axSafelyAddObjectsFromArray:v3];

    if (![(CKBalloonViewAccessibility *)self _axIsInNotification])
    {
      v4 = [(CKBalloonViewAccessibility *)self safeValueForKeyPath:@"delegate.delegate"];
      v5 = [(CKBalloonViewAccessibility *)self _axChatItemForBalloon];
      v48 = 0;
      v49 = &v48;
      v50 = 0x3032000000;
      v51 = __Block_byref_object_copy__4;
      v52 = __Block_byref_object_dispose__4;
      v53 = 0;
      v41 = MEMORY[0x29EDCA5F8];
      v42 = 3221225472;
      v43 = __56__CKBalloonViewAccessibility_accessibilityCustomActions__block_invoke;
      v44 = &unk_29F2B09A8;
      v47 = &v48;
      v45 = v4;
      v46 = self;
      AXPerformSafeBlock();
      v6 = v49[5];

      _Block_object_dispose(&v48, 8);
      v48 = 0;
      v49 = &v48;
      v50 = 0x3032000000;
      v51 = __Block_byref_object_copy__4;
      v52 = __Block_byref_object_dispose__4;
      v53 = 0;
      v33 = MEMORY[0x29EDCA5F8];
      v34 = 3221225472;
      v35 = __56__CKBalloonViewAccessibility_accessibilityCustomActions__block_invoke_2;
      v36 = &unk_29F2B0980;
      v40 = &v48;
      v20 = v45;
      v37 = v20;
      v19 = v5;
      v38 = v19;
      v17 = v6;
      v39 = v17;
      AXPerformSafeBlock();
      v18 = v49[5];

      _Block_object_dispose(&v48, 8);
      v7 = [(CKBalloonViewAccessibility *)self _axActionsForMenu:v18];
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v8 = [v7 countByEnumeratingWithState:&v29 objects:v54 count:16];
      if (v8)
      {
        v9 = *v30;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v30 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v29 + 1) + 8 * i);
            v12 = [v11 safeStringForKey:@"title"];
            if ([v12 length])
            {
              v13 = objc_alloc(MEMORY[0x29EDC78E0]);
              v23[0] = MEMORY[0x29EDCA5F8];
              v23[1] = 3221225472;
              v23[2] = __56__CKBalloonViewAccessibility_accessibilityCustomActions__block_invoke_3;
              v23[3] = &unk_29F2B0A78;
              v14 = v12;
              v24 = v14;
              v25 = v20;
              v26 = self;
              v27 = v19;
              v28 = v11;
              v15 = [v13 initWithName:v14 actionHandler:v23];
              [v21 axSafelyAddObject:v15];
            }
          }

          v8 = [v7 countByEnumeratingWithState:&v29 objects:v54 count:16];
        }

        while (v8);
      }
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

void __56__CKBalloonViewAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [*(a1 + 40) _axIndexPathForBalloon];
  v3 = [v2 _parentChatItemForIndexPath:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t __56__CKBalloonViewAccessibility_accessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 56) + 8) + 40) = [*(a1 + 32) _menuForChatItem:*(a1 + 40) withParentChatItem:*(a1 + 48) menuAppearance:0];

  return MEMORY[0x2A1C71028]();
}

uint64_t __56__CKBalloonViewAccessibility_accessibilityCustomActions__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = accessibilityLocalizedString(@"balloon.message.sticker.details");
  LODWORD(v2) = [v2 isEqualToString:v3];

  if (v2)
  {
    v10 = *(a1 + 40);
    AXPerformSafeBlock();
    v4 = v10;
  }

  else
  {
    if (![*(a1 + 40) safeBoolForKey:@"wantsReplyButton"] || (v5 = *(a1 + 32), accessibilityLocalizedString(@"balloon.message.reply"), v6 = objc_claimAutoreleasedReturnValue(), LODWORD(v5) = objc_msgSend(v5, "isEqualToString:", v6), v6, !v5))
    {
      [*(a1 + 48) axPerformInterfaceAction:*(a1 + 64)];
      return 1;
    }

    v8 = *(a1 + 40);
    v9 = *(a1 + 56);
    AXPerformSafeBlock();

    v4 = v8;
  }

  return 1;
}

void __56__CKBalloonViewAccessibility_accessibilityCustomActions__block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__4;
  v9 = __Block_byref_object_dispose__4;
  v10 = 0;
  v3 = MEMORY[0x29EDCA5F8];
  v4 = *(a1 + 40);
  AXPerformSafeBlock();
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  [v1 presentStickerDetailControllerWithIndexPath:{v2, v3, 3221225472, __56__CKBalloonViewAccessibility_accessibilityCustomActions__block_invoke_5, &unk_29F2B06F8, v4, &v5}];
}

uint64_t __56__CKBalloonViewAccessibility_accessibilityCustomActions__block_invoke_5(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) _axIndexPathForBalloon];

  return MEMORY[0x2A1C71028]();
}

void __56__CKBalloonViewAccessibility_accessibilityCustomActions__block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__4;
  v9 = __Block_byref_object_dispose__4;
  v10 = 0;
  v3 = MEMORY[0x29EDCA5F8];
  v4 = *(a1 + 40);
  AXPerformSafeBlock();
  v2 = v6[5];

  _Block_object_dispose(&v5, 8);
  [v1 showInlineReplyControllerForChatItem:v2 presentKeyboard:{1, v3, 3221225472, __56__CKBalloonViewAccessibility_accessibilityCustomActions__block_invoke_7, &unk_29F2B06F8}];
}

- (id)_axActionsForMenu:(id)a3
{
  v19 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = [MEMORY[0x29EDB8DE8] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v4 children];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v11 safeUnsignedIntegerForKey:@"options"])
          {
            v12 = [(CKBalloonViewAccessibility *)self _axActionsForMenu:v11];
            [v5 axSafelyAddObjectsFromArray:v12];
          }
        }

        else
        {
          [v5 axSafelyAddObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_axBalloonViewCustomActions
{
  v8[1] = *MEMORY[0x29EDCA608];
  if ([(CKBalloonViewAccessibility *)self _axIsInNotification]|| [(CKBalloonViewAccessibility *)self _axIsVisibleInTapbackView]&& (![(CKBalloonViewAccessibility *)self _axIsVisibleInTapbackView]|| [(CKBalloonViewAccessibility *)self _axIsTapbackBalloonView]) || [(CKBalloonViewAccessibility *)self _axIsPollView])
  {
    v3 = 0;
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x29EDC78E0]);
    v6 = accessibilityLocalizedString(@"acknowledgments.action.title");
    v7 = [v5 initWithName:v6 target:self selector:sel__axTapback];

    v8[0] = v7;
    v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:v8 count:1];
  }

  return v3;
}

- (void)_axTapback
{
  v2 = [(CKBalloonViewAccessibility *)self safeValueForKey:@"superview"];

  if (v2)
  {
    AXPerformSafeBlock();
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  }
}

- (void)axPerformInterfaceAction:(id)a3
{
  v4 = a3;
  v5 = [(CKBalloonViewAccessibility *)self safeValueForKey:@"superview"];

  if (v5 && ![(CKBalloonViewAccessibility *)self _axIsInNotification])
  {
    v6 = [v4 safeValueForKey:@"handler"];
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v6;
        v7 = v4;
        AXPerformSafeBlock();
      }
    }
  }
}

- (id)_axIndexPathForBalloon
{
  v3 = [(CKBalloonViewAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  v4 = [v3 safeValueForKey:@"delegate"];
  NSClassFromString(&cfstr_Cktranscriptco.isa);
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CKBalloonViewAccessibility *)self _accessibilityViewAncestorIsKindOf:objc_opt_class()];
    if (v5)
    {
      v10 = 0;
      v11 = &v10;
      v12 = 0x3032000000;
      v13 = __Block_byref_object_copy__4;
      v14 = __Block_byref_object_dispose__4;
      v15 = 0;
      v8 = v3;
      v9 = v5;
      AXPerformSafeBlock();
      v6 = v11[5];

      _Block_object_dispose(&v10, 8);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __52__CKBalloonViewAccessibility__axIndexPathForBalloon__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) indexPathForCell:*(a1 + 40)];

  return MEMORY[0x2A1C71028]();
}

- (id)_axChatItemForBalloon
{
  v3 = [(CKBalloonViewAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  v4 = [v3 safeValueForKey:@"delegate"];
  NSClassFromString(&cfstr_Cktranscriptco.isa);
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CKBalloonViewAccessibility *)self _accessibilityViewAncestorIsKindOf:objc_opt_class()];
    if (v5)
    {
      [v4 safeValueForKey:@"chatItems"];
      v9 = 0;
      v10 = &v9;
      v11 = 0x3032000000;
      v12 = __Block_byref_object_copy__4;
      v13 = __Block_byref_object_dispose__4;
      v8 = v14 = 0;
      AXPerformSafeBlock();
      v6 = v10[5];

      _Block_object_dispose(&v9, 8);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __51__CKBalloonViewAccessibility__axChatItemForBalloon__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [*(a1 + 40) _axIndexPathForBalloon];
  v3 = [v2 objectAtIndex:{objc_msgSend(v6, "row")}];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)_axMessageForBalloon
{
  v2 = [(CKBalloonViewAccessibility *)self _axChatItemForBalloon];
  NSClassFromString(&cfstr_Ckmessagepartc.isa);
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 safeValueForKey:@"message"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_axBuddyNameForBalloon
{
  v2 = [(CKBalloonViewAccessibility *)self _axMessageForBalloon];
  v3 = [v2 safeValueForKey:@"sender"];
  v4 = [v3 safeValueForKey:@"name"];

  return v4;
}

- (BOOL)_axIsMessageFromMe
{
  v2 = [(CKBalloonViewAccessibility *)self _axMessageForBalloon];
  v3 = [v2 safeBoolForKey:@"isFromMe"];

  return v3;
}

- (BOOL)_axIsImessage
{
  v2 = [(CKBalloonViewAccessibility *)self _axMessageForBalloon];
  v3 = [v2 safeBoolForKey:@"__ck_isiMessage"];

  return v3;
}

- (BOOL)_axIsTextMessage
{
  v2 = [(CKBalloonViewAccessibility *)self _axMessageForBalloon];
  v3 = [v2 safeBoolForKey:@"__ck_isSMS"];

  return v3;
}

- (BOOL)_axIsPollView
{
  v2 = [(CKBalloonViewAccessibility *)self safeValueForKeyPath:@"pluginView.payload"];
  v3 = [v2 safeStringForKey:@"pluginBundleID"];
  v4 = IMBalloonExtensionIDWithSuffix();
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (id)_axReplyDescription
{
  v2 = [(CKBalloonViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_2 startWithSelf:1];
  if ([v2 safeBoolForKey:@"isReply"])
  {
    v3 = @"balloon.message.reply";
LABEL_5:
    v4 = accessibilityLocalizedString(v3);
    goto LABEL_7;
  }

  if ([v2 safeBoolForKey:@"isReplyContextPreview"])
  {
    v3 = @"balloon.message.reply.preview";
    goto LABEL_5;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

uint64_t __49__CKBalloonViewAccessibility__axReplyDescription__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Cktranscriptme_0.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_axDigitalTouchDescription
{
  v2 = [(CKBalloonViewAccessibility *)self _axChatItemForBalloon];
  v3 = __UIAccessibilitySafeClass();

  v4 = [v3 safeValueForKeyPath:@"IMChatItem.dataSource"];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v4 safeArrayForKey:@"createSessionMessages"], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "firstObject"), v6 = objc_claimAutoreleasedReturnValue(), v5, v6))
  {
    v7 = [v6 accessibilityLabel];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_axMessageTime
{
  v2 = [(CKBalloonViewAccessibility *)self _axMessageForBalloon];
  v3 = [v2 safeValueForKey:@"time"];
  v4 = AXDateStringForFormat();

  return v4;
}

- (BOOL)_axIsBalloonOfType:(id)a3
{
  v4 = a3;
  v5 = [(CKBalloonViewAccessibility *)self safeValueForKey:@"_axChatItemForBalloon"];
  v6 = __UIAccessibilitySafeClass();

  v7 = [v6 safeValueForKey:@"IMChatItem"];
  v8 = NSProtocolFromString(&cfstr_Impluginchatit.isa);
  v9 = [v7 conformsToProtocol:v8];

  if (v9)
  {
    v10 = [v7 safeValueForKey:@"type"];
    v11 = [v10 isEqualToString:v4];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_axMessageSender
{
  v3 = [(CKBalloonViewAccessibility *)self _axIsMessageFromMe];
  v4 = [(CKBalloonViewAccessibility *)self _axIsImessage];
  v5 = [(CKBalloonViewAccessibility *)self _axBuddyNameForBalloon];
  v6 = v5;
  if (v3)
  {
    if (v4)
    {
      v7 = @"balloon.your.imessage";
    }

    else
    {
      v7 = @"balloon.your.textmessage";
    }
  }

  else
  {
    if ([v5 length])
    {
      v8 = v6;
      goto LABEL_9;
    }

    v7 = @"balloon.message";
  }

  v8 = accessibilityLocalizedString(v7);
LABEL_9:
  v9 = v8;

  return v9;
}

- (id)_axHighlightedDescription
{
  v2 = [(CKBalloonViewAccessibility *)self _axChatItemForBalloon];
  v3 = [v2 safeBoolForKey:@"isHighlighted"];

  if (v3)
  {
    v4 = accessibilityLocalizedString(@"balloon.message.pinned");
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_axStickerDescription
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = [(CKBalloonViewAccessibility *)self _axChatItemForBalloon];
  v19 = 0;
  objc_opt_class();
  v3 = [v2 safeValueForKey:@"visibleAssociatedMessageChatItems"];
  v4 = __UIAccessibilityCastAsClass();

  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (!v6)
  {
    v13 = 0;
    v12 = v5;
    goto LABEL_11;
  }

  v7 = v6;
  v8 = 0;
  v9 = *v16;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v16 != v9)
      {
        objc_enumerationMutation(v5);
      }

      NSClassFromString(&cfstr_Ckassociatedst.isa);
      v8 += objc_opt_isKindOfClass() & 1;
    }

    v7 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
  }

  while (v7);

  if (v8)
  {
    v11 = MEMORY[0x29EDBA0F8];
    v12 = accessibilityLocalizedString(@"stickers.count");
    v13 = [v11 localizedStringWithFormat:v12, v8];
LABEL_11:

    goto LABEL_13;
  }

  v13 = 0;
LABEL_13:

  return v13;
}

- (id)_axAcknowledgmentDescription
{
  v20 = *MEMORY[0x29EDCA608];
  objc_opt_class();
  v3 = [(CKBalloonViewAccessibility *)self _axChatItemForBalloon];
  v4 = [v3 safeValueForKey:@"visibleAssociatedMessageChatItems"];
  v5 = __UIAccessibilityCastAsClass();

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v16 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v15 + 1) + 8 * v10);
      NSClassFromString(&cfstr_Ckaggregateack_2.isa);
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = v11;

    if (v13)
    {
      v12 = [v13 accessibilityLabel];
      goto LABEL_12;
    }

    v12 = 0;
  }

  else
  {
LABEL_9:
    v12 = 0;
    v13 = v6;
LABEL_12:
  }

  return v12;
}

- (BOOL)_axIsInNotification
{
  v2 = [(CKBalloonViewAccessibility *)self safeValueForKeyPath:@"delegate.delegate"];
  v3 = [v2 _accessibilityBoolValueForKey:@"AXTranscriptIsInNotification"];

  return v3;
}

- (BOOL)_axIsTapbackBalloonView
{
  v3 = [(CKBalloonViewAccessibility *)self _axIsVisibleInTapbackView];
  if (v3)
  {
    v4 = [(CKBalloonViewAccessibility *)self accessibilityContainer];
    v5 = [v4 _accessibilityViewController];

    v6 = [v5 safeValueForKey:@"balloonView"];
    v7 = [v6 isEqual:self];

    LOBYTE(v3) = v7;
  }

  return v3;
}

- (BOOL)_axIsVisibleInTapbackView
{
  v3 = [(CKBalloonViewAccessibility *)self accessibilityContainer];
  v4 = [v3 _accessibilityViewController];

  NSClassFromString(&cfstr_Ckfullscreenba_1.isa);
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    v6 = [(CKBalloonViewAccessibility *)self accessibilityContainer];
    NSClassFromString(&cfstr_ChatkitTapback_4.isa);
    if (objc_opt_isKindOfClass())
    {
      isKindOfClass = 1;
    }

    else
    {
      v7 = [(CKBalloonViewAccessibility *)self accessibilityContainer];
      NSClassFromString(&cfstr_ChatkitTapback_5.isa);
      isKindOfClass = objc_opt_isKindOfClass();
    }
  }

  return isKindOfClass & 1;
}

- (id)accessibilityDropPointDescriptors
{
  v8[1] = *MEMORY[0x29EDCA608];
  v3 = objc_alloc(MEMORY[0x29EDC7900]);
  v4 = accessibilityLocalizedString(@"drop.into.compose");
  v5 = [v3 initWithName:v4 view:self];
  v8[0] = v5;
  v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:v8 count:1];

  return v6;
}

@end