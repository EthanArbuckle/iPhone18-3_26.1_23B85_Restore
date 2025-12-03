@interface CKTranscriptCollectionViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)axIsShowingChatController;
- (id)_accessibilitySpeakThisElementsAndStrings;
- (void)_accessibilityLoadMessagesIfNeeded;
- (void)chatItemsDidChange:(id)change;
- (void)effectManager:(id)manager didStartEffect:(id)effect;
@end

@implementation CKTranscriptCollectionViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKTranscriptCollectionViewController" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKTranscriptBalloonCell" hasInstanceMethod:@"balloonView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKTextBalloonView" hasInstanceMethod:@"textView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKTranscriptCollectionViewController" hasInstanceMethod:@"balloonViewForChatItem:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"CKTranscriptCollectionViewController" hasInstanceMethod:@"effectManager:didStartEffect:" withFullSignature:{"v", "@", "@", 0}];
  [validationsCopy validateClass:@"CKTranscriptCollectionViewController" hasInstanceMethod:@"_loadMessagesIfNeededWithTargetContentOffset:forKeyboardNavigation:" withFullSignature:{"v", "{CGPoint=dd}", "B", 0}];
  [validationsCopy validateClass:@"CKTranscriptCollectionViewController" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKTranscriptCollectionViewController" hasInstanceMethod:@"conversation" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKTranscriptCollectionViewController" hasInstanceMethod:@"chatItemsDidChange:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CKConversation" hasInstanceMethod:@"chat" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"IMChat" hasInstanceMethod:@"lastIncomingMessage" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"IMMessage" hasInstanceMethod:@"isTypingMessage" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CKBalloonView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0, 0, 0}];
  [validationsCopy validateClass:@"CKMessagesController" hasInstanceMethod:@"isShowingChatController" withFullSignature:{"B", 0}];
}

- (void)_accessibilityLoadMessagesIfNeeded
{
  objc_opt_class();
  v3 = [(CKTranscriptCollectionViewControllerAccessibility *)self safeValueForKey:@"collectionView"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 contentOffset];
  AXPerformSafeBlock();
}

- (id)_accessibilitySpeakThisElementsAndStrings
{
  v24 = *MEMORY[0x29EDCA608];
  v17 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v22 = 0;
  objc_opt_class();
  v3 = [(CKTranscriptCollectionViewControllerAccessibility *)self safeValueForKey:@"collectionView"];
  v4 = __UIAccessibilityCastAsClass();

  if (v4)
  {
    indexPathsForVisibleItems = [v4 indexPathsForVisibleItems];
    v6 = [indexPathsForVisibleItems sortedArrayUsingComparator:&__block_literal_global_6];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [v4 cellForItemAtIndexPath:*(*(&v18 + 1) + 8 * i)];
          NSClassFromString(&cfstr_Cktranscriptba_0.isa);
          if (objc_opt_isKindOfClass())
          {
            v13 = [v12 safeValueForKey:@"balloonView"];
            if (v13)
            {
              [v17 addObject:v13];
              v22 = 0;
              objc_opt_class();
              v14 = [v13 safeValueForKey:@"textView"];
              v15 = __UIAccessibilityCastAsClass();

              if (v22 == 1)
              {
                abort();
              }

              if (v15)
              {
                [v17 addObject:v15];
              }
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v9);
    }
  }

  return v17;
}

uint64_t __94__CKTranscriptCollectionViewControllerAccessibility__accessibilitySpeakThisElementsAndStrings__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 item];
  v6 = [v4 item];

  if (v6 <= v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (v5 > v6)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

- (void)effectManager:(id)manager didStartEffect:(id)effect
{
  managerCopy = manager;
  effectCopy = effect;
  LOBYTE(v30) = 0;
  v8 = __UIAccessibilitySafeClass();
  v36 = 0;
  objc_opt_class();
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__12;
  v34 = __Block_byref_object_dispose__12;
  v35 = 0;
  v23 = MEMORY[0x29EDCA5F8];
  v24 = 3221225472;
  v25 = __82__CKTranscriptCollectionViewControllerAccessibility_effectManager_didStartEffect___block_invoke;
  v26 = &unk_29F2B09A8;
  v29 = &v30;
  selfCopy = self;
  v9 = effectCopy;
  v28 = v9;
  AXPerformSafeBlock();
  v10 = v31[5];

  _Block_object_dispose(&v30, 8);
  v11 = __UIAccessibilityCastAsSafeCategory();

  if (v36 == 1)
  {
    abort();
  }

  v22.receiver = self;
  v22.super_class = CKTranscriptCollectionViewControllerAccessibility;
  [(CKTranscriptCollectionViewControllerAccessibility *)&v22 effectManager:managerCopy didStartEffect:v9];
  if (v8 && v11)
  {
    identifier = [v9 identifier];
    v13 = _AXCKFullScreenEffectString(identifier, 1);
    if ([v13 length])
    {
      v14 = MEMORY[0x29EDBA0F8];
      v15 = accessibilityLocalizedString(@"impact.effect.full.description");
      v16 = accessibilityLocalizedString(v13);
      v17 = [v14 stringWithFormat:v15, v16];

      _axMessageSender = [v11 _axMessageSender];
      v19 = [v11 safeValueForKey:@"textView"];
      accessibilityValue = [v19 accessibilityValue];

      v21 = __UIAXStringForVariables();
      UIAccessibilitySpeakAndDoNotBeInterrupted();
    }
  }
}

void __82__CKTranscriptCollectionViewControllerAccessibility_effectManager_didStartEffect___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = [*(a1 + 40) triggeringChatItem];
  v3 = [v2 balloonViewForChatItem:v6];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (BOOL)axIsShowingChatController
{
  v2 = [(CKTranscriptCollectionViewControllerAccessibility *)self safeValueForKeyPath:@"delegate.delegate"];
  NSClassFromString(&cfstr_Ckmessagescont_0.isa);
  if (objc_opt_isKindOfClass())
  {
    v3 = __UIAccessibilitySafeClass();
    v4 = [v3 safeBoolForKey:@"isShowingChatController"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)chatItemsDidChange:(id)change
{
  v31[1] = *MEMORY[0x29EDCA608];
  changeCopy = change;
  v5 = [(CKTranscriptCollectionViewControllerAccessibility *)self safeValueForKey:@"conversation"];
  v6 = [v5 safeValueForKey:@"chat"];

  object = [changeCopy object];
  axIsShowingChatController = [(CKTranscriptCollectionViewControllerAccessibility *)self axIsShowingChatController];
  if ([v6 isEqual:object] && axIsShowingChatController)
  {
    v29 = 0;
    v9 = [v6 safeValueForKey:@"lastIncomingMessage"];
    v10 = __UIAccessibilitySafeClass();

    sender = [v10 sender];
    v12 = [sender displayNameForChat:v6];

    if (v12)
    {
      v13 = v12;
    }

    else
    {
      sender2 = [v10 sender];
      firstName = [sender2 firstName];
      v16 = firstName;
      if (firstName)
      {
        v13 = firstName;
      }

      else
      {
        sender3 = [v10 sender];
        nickname = [sender3 nickname];
        v18 = nickname;
        if (nickname)
        {
          senderName = nickname;
        }

        else
        {
          senderName = [v10 senderName];
        }

        v13 = senderName;
      }
    }

    if ([v10 safeBoolForKey:@"isTypingMessage"])
    {
      [(CKTranscriptCollectionViewControllerAccessibility *)self setAxBuddyWasTyping:1];
      if (![v13 length])
      {
        v22 = accessibilityLocalizedString(@"contact.typing.message");
        if (!v22)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      v20 = MEMORY[0x29EDBA0F8];
      v21 = accessibilityLocalizedString(@"contact.typing.message.with.name");
      v22 = [v20 stringWithFormat:v21, v13];
    }

    else
    {
      if (![(CKTranscriptCollectionViewControllerAccessibility *)self axBuddyWasTyping])
      {
        goto LABEL_24;
      }

      [(CKTranscriptCollectionViewControllerAccessibility *)self setAxBuddyWasTyping:0];
      if ([v13 length])
      {
        v23 = MEMORY[0x29EDBA0F8];
        v24 = accessibilityLocalizedString(@"contact.stopped.typing.message.with.name");
        v21 = [v23 stringWithFormat:v24, v13];
      }

      else
      {
        v21 = accessibilityLocalizedString(@"contact.stopped.typing.message");
      }

      v22 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v21];
      [v22 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD978]];
    }

    if (v22)
    {
LABEL_23:
      v25 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v22];
      v30 = *MEMORY[0x29EDBDA00];
      v31[0] = MEMORY[0x29EDB8EB0];
      v26 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      [v25 setAttributes:v26];

      UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v25);
    }

LABEL_24:
  }

  v28.receiver = self;
  v28.super_class = CKTranscriptCollectionViewControllerAccessibility;
  [(CKTranscriptCollectionViewControllerAccessibility *)&v28 chatItemsDidChange:changeCopy];
}

@end