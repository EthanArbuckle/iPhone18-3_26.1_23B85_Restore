@interface ConversationViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityScroll:(int64_t)a3;
- (id)_accessibilityFirstElementForFocus;
- (id)_accessibilityTitleForLeadingActionWithCell:(id)a3;
- (id)_axElementForFocusInCell:(id)a3 shouldAllowCollapsedCell:(BOOL)a4;
- (id)_axFirstVisibleCell;
- (id)_axFirstVisibleExpandedCell;
- (id)_axMessageSubjectView;
- (id)accessibilityCustomRotors;
- (id)arrowControlsView;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityPerformLeadingActionWithCell:(id)a3;
- (void)_accessibilitySetConversationViewInsets;
- (void)_axCancelMarkAsReadTimer;
- (void)_scrollToInitialPosition;
- (void)_selectNextMessageCommandInvoked:(id)a3;
- (void)_selectPreviousMessageCommandInvoked:(id)a3;
- (void)_shrinkMessagesToBarButton:(id)a3 withInteraction:(id)a4 completionHandler:(id)a5;
- (void)_updateFooterViewFrameForCell:(id)a3 atIndexPath:(id)a4;
- (void)cancelAutomaticMarkAsReadForCellViewModel:(id)a3;
- (void)invalidateAutomaticMarkAsReadForAllMessages;
- (void)messageViewController:(id)a3 didTapRevealActionsButton:(id)a4;
- (void)scheduleAutomaticMarkAsReadForMessage:(id)a3;
@end

@implementation ConversationViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ConversationViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"ConversationViewController" hasInstanceMethod:@"_scrollToInitialPosition" withFullSignature:{"v", 0}];
  [v3 validateClass:@"ConversationViewController" hasInstanceMethod:@"messageViewController:didTapRevealActionsButton:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"ConversationViewController" hasInstanceMethod:@"_visibleIndexPathForMessageViewController:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"ConversationViewController" hasInstanceMethod:@"invalidateAutomaticMarkAsReadForAllMessages" withFullSignature:{"v", 0}];
  [v3 validateClass:@"ConversationViewController" hasInstanceMethod:@"cancelAutomaticMarkAsReadForCellViewModel:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"ConversationViewController" hasInstanceMethod:@"scheduleAutomaticMarkAsReadForMessage:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"ConversationViewController" hasInstanceMethod:@"_shouldAutomaticallyMarkAsReadMessage:" withFullSignature:{"B", "@", 0}];
  [v3 validateClass:@"ConversationViewController" hasInstanceMethod:@"swipableCollectionViewLayout:leadingSwipeActionsConfigurationForItemAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [v3 validateClass:@"ConversationViewController" hasInstanceMethod:@"_referenceDisplayMessage" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ConversationViewController" hasInstanceMethod:@"collectionViewDataSource" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ConversationViewController" hasInstanceMethod:@"_messageAtIndexPath:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"ConversationViewController" isKindOfClass:@"ConversationViewControllerBase"];
  [v3 validateClass:@"ConversationViewControllerBase" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"ConversationViewControllerBase" hasInstanceMethod:@"arrowControlsView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ConversationViewControllerBase" hasInstanceMethod:@"deleteButtonItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ConversationViewControllerBase" hasInstanceMethod:@"archiveButtonItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ConversationViewControllerBase" hasInstanceMethod:@"moveButtonItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ConversationViewControllerBase" hasInstanceMethod:@"replyButtonItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ConversationViewControllerBase" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ConversationViewControllerBase" hasInstanceMethod:@"_shrinkMessagesToBarButton:withInteraction:completionHandler:" withFullSignature:{"v", "@", "@", "@?", 0}];
  [v3 validateClass:@"ConversationViewControllerBase" hasInstanceMethod:@"conversationSubject" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ConversationViewControllerBase" hasInstanceMethod:@"arrowControlsView:didTapButtonWithDirection:" withFullSignature:{"v", "@", "i", 0}];
  [v3 validateClass:@"ConversationViewControllerBase" hasInstanceMethod:@"conversationLayout" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ConversationViewControllerBase" hasInstanceMethod:@"conversationHeaderView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ConversationViewControllerBase" hasInstanceVariable:@"_conversationView" withType:"_MFConversationViewCollectionView"];
  [v3 validateClass:@"ConversationViewControllerBase" hasInstanceMethod:@"displayMetrics" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ConversationViewControllerBase" hasInstanceMethod:@"_updateFooterViewFrameForCell:atIndexPath:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"ConversationViewControllerBase" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ConversationViewControllerBase" hasInstanceMethod:@"_selectNextMessageCommandInvoked:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"ConversationViewControllerBase" hasInstanceMethod:@"_selectPreviousMessageCommandInvoked:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"ConversationViewControllerBase" hasInstanceMethod:@"referenceMessageListItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MFConversationViewCell" hasInstanceMethod:@"viewModel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ConversationCellViewModel" hasInstanceMethod:@"messageLoadingContext" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ConversationCellViewModel" hasInstanceMethod:@"messageContentRequest" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MFMessageLoadingContext" hasInstanceMethod:@"messageBody" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MFMessageLoadingContext" hasInstanceMethod:@"hasLoadedSomeContent" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MFMessageLoadingContext" hasInstanceMethod:@"hasLoadedCompleteMessage" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MFMessageLoadingContext" hasInstanceMethod:@"message" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MessageContentRepresentationRequest" hasInstanceMethod:@"hasStarted" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MessageContentRepresentationRequest" hasInstanceMethod:@"isFinished" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MFMimeBody" hasInstanceMethod:@"totalTextSize" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"MFExpandedMessageCell" hasInstanceMethod:@"messageViewController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MFMessageViewController" hasInstanceMethod:@"messageContentView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MFMessageContentView" hasInstanceVariable:@"_footerView" withType:"MFConversationItemFooterView"];
  [v3 validateProtocol:@"EMMessageListItem" hasRequiredInstanceMethod:@"flags"];
  [v3 validateProtocol:@"EMMessageListItem" hasRequiredInstanceMethod:@"displayMessageItemID"];
  [v3 validateProtocol:@"EMMessageListItem" conformsToProtocol:@"EMCollectionItem"];
  [v3 validateClass:@"UIContextualAction" hasInstanceMethod:@"executePreHandlerWithView:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"UIContextualAction" hasInstanceMethod:@"executeHandlerWithView:completionHandler:" withFullSignature:{"v", "@", "@?", 0}];
  [v3 validateClass:@"ConversationHeaderView" hasInstanceMethod:@"contentView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ConversationHeaderContentView" hasInstanceMethod:@"textLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MessageHeaderSubjectBlock" hasInstanceMethod:@"subjectTextView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MFMessageDisplayMetrics" hasInstanceMethod:@"estimatedFooterViewHeight" withFullSignature:{"d", 0}];
  [v3 validateClass:@"MessageListViewController" hasInstanceMethod:@"conversationViewController:advanceToNextConversationWithDirection:" withFullSignature:{"v", "@", "i", 0}];
  [v3 validateClass:@"MUIMessageListViewController" hasInstanceMethod:@"collectionView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ECSubject" hasInstanceMethod:@"subjectString" withFullSignature:{"@", 0}];
  [v3 validateClass:@"WKContentView"];
  [v3 validateClass:@"MFModernAddressAtom"];
  [v3 validateClass:@"ConversationViewControllerBase" hasInstanceMethod:@"barItemsManager" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MobileMail.ConversationNavigationBarItemsManager" hasInstanceMethod:@"revealActionsButtonItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MobileMail.ConversationNavigationBarItemsManager" hasInstanceMethod:@"downArrowBarButtonItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MobileMail.ConversationNavigationBarItemsManager" hasInstanceMethod:@"upArrowBarButtonItem" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v18.receiver = self;
  v18.super_class = ConversationViewControllerAccessibility;
  [(ConversationViewControllerAccessibility *)&v18 _accessibilityLoadAccessibilityInformation];
  v3 = [(ConversationViewControllerAccessibility *)self safeValueForKey:@"deleteButtonItem"];
  v4 = [(ConversationViewControllerAccessibility *)self safeValueForKey:@"archiveButtonItem"];
  v5 = accessibilityLocalizedString(@"message.action.delete");
  [v3 setAccessibilityLabel:v5];

  v6 = accessibilityLocalizedString(@"archive.button");
  [v4 setAccessibilityLabel:v6];

  v7 = [(ConversationViewControllerAccessibility *)self safeValueForKey:@"moveButtonItem"];
  v8 = accessibilityLocalizedString(@"transfer.mail.button");
  [v7 setAccessibilityLabel:v8];

  v9 = [(ConversationViewControllerAccessibility *)self safeValueForKey:@"replyButtonItem"];
  v10 = accessibilityLocalizedString(@"reply.button");
  [v9 setAccessibilityLabel:v10];

  v11 = [(ConversationViewControllerAccessibility *)self safeValueForKeyPath:@"barItemsManager.revealActionsButtonItem"];
  v12 = accessibilityLocalizedString(@"reveal.more.button");
  [v11 setAccessibilityLabel:v12];

  v13 = [(ConversationViewControllerAccessibility *)self safeValueForKey:@"view"];
  [v13 _setAccessibilityLinkedUIElementsBlock:&__block_literal_global_1];

  v14 = [(ConversationViewControllerAccessibility *)self safeValueForKeyPath:@"barItemsManager.downArrowBarButtonItem"];
  v15 = accessibilityLocalizedString(@"previous.message.text");
  [v14 setAccessibilityLabel:v15];

  v16 = [(ConversationViewControllerAccessibility *)self safeValueForKeyPath:@"barItemsManager.upArrowBarButtonItem"];
  v17 = accessibilityLocalizedString(@"next.message.text");
  [v16 setAccessibilityLabel:v17];

  [(ConversationViewControllerAccessibility *)self _accessibilitySetConversationViewInsets];
}

id __85__ConversationViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke()
{
  v0 = MEMORY[0x29EDB8D80];
  v1 = AXMobileMailGetSelectedMessageCellElement();
  v2 = [v0 axArrayByIgnoringNilElementsWithCount:{1, v1}];

  return v2;
}

- (id)accessibilityCustomRotors
{
  v15[1] = *MEMORY[0x29EDCA608];
  v14 = 0;
  objc_opt_class();
  v3 = [(ConversationViewControllerAccessibility *)self safeValueForKey:@"collectionView"];
  v4 = __UIAccessibilityCastAsClass();

  if ([v4 numberOfSections] < 1 || objc_msgSend(v4, "numberOfItemsInSection:", 0) < 2)
  {
    v8 = 0;
  }

  else
  {
    v5 = [(ConversationViewControllerAccessibility *)self _accessibilityValueForKey:@"MailConversationRotor"];
    if (!v5)
    {
      v6 = objc_alloc(MEMORY[0x29EDC78E8]);
      v7 = accessibilityLocalizedString(@"thread.message.rotor.title");
      v11[0] = MEMORY[0x29EDCA5F8];
      v11[1] = 3221225472;
      v11[2] = __68__ConversationViewControllerAccessibility_accessibilityCustomRotors__block_invoke;
      v11[3] = &unk_29F2D3ED8;
      v12 = v4;
      v13 = self;
      v5 = [v6 initWithName:v7 itemSearchBlock:v11];

      [(ConversationViewControllerAccessibility *)self _accessibilitySetRetainedValue:v5 forKey:@"MailConversationRotor"];
    }

    v15[0] = v5;
    v8 = [MEMORY[0x29EDB8D80] arrayWithObjects:v15 count:1];
  }

  v9 = *MEMORY[0x29EDCA608];

  return v8;
}

id __68__ConversationViewControllerAccessibility_accessibilityCustomRotors__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) numberOfSections] < 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = [*(a1 + 32) numberOfItemsInSection:0] - 1;
  }

  v5 = [v3 currentItem];
  v6 = [v5 targetElement];

  v7 = [v6 _accessibilityFindAncestor:&__block_literal_global_578 startWithSelf:1];
  v8 = [*(a1 + 32) indexPathForCell:v7];
  v9 = [v8 row];
  if (!v8)
  {
    v8 = [MEMORY[0x29EDB9FE0] indexPathForRow:0 inSection:0];
    goto LABEL_12;
  }

  v10 = v9;
  if ([v3 searchDirection])
  {
    if (v10 < v4)
    {
      v25 = v6;
      v26 = v7;
      v11 = v10 + 1;
      while (1)
      {
        v12 = [MEMORY[0x29EDB9FE0] indexPathForRow:v11 inSection:{0, v25}];
        v10 = [*(a1 + 32) cellForItemAtIndexPath:v12];
        NSClassFromString(&cfstr_Mfgeneratedsum.isa);
        isKindOfClass = objc_opt_isKindOfClass();
        if ((isKindOfClass & 1) == 0)
        {
          break;
        }

        v14 = isKindOfClass;

        v15 = v11++ < v4;
        if ((v14 & v15 & 1) == 0)
        {
          v10 = 0;
          goto LABEL_22;
        }
      }

      v8 = v12;
LABEL_22:
      v6 = v25;
      goto LABEL_24;
    }

LABEL_12:
    v10 = 0;
    goto LABEL_25;
  }

  if (!v10)
  {
    goto LABEL_25;
  }

  v26 = v7;
  v16 = v10 - 1;
  while (1)
  {
    v17 = [MEMORY[0x29EDB9FE0] indexPathForRow:v16 inSection:0];
    v10 = [*(a1 + 32) cellForItemAtIndexPath:v17];
    NSClassFromString(&cfstr_Mfgeneratedsum.isa);
    v18 = objc_opt_isKindOfClass();
    if ((v18 & 1) == 0)
    {
      break;
    }

    v19 = v18;

    v21 = v16-- != 0;
    if ((v19 & v21 & 1) == 0)
    {
      v10 = 0;
      goto LABEL_24;
    }
  }

  v8 = v17;
LABEL_24:
  v7 = v26;
LABEL_25:
  [*(a1 + 40) _axSetSkipNextFocusOnMessage:1];
  [*(a1 + 32) scrollToItemAtIndexPath:v8 atScrollPosition:1 animated:0];
  [*(a1 + 32) layoutIfNeeded];
  v22 = [*(a1 + 40) _axElementForFocusInCell:v10 shouldAllowCollapsedCell:1];
  if (v22)
  {
    v23 = [objc_alloc(MEMORY[0x29EDC78F0]) initWithTargetElement:v22 targetRange:0];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

uint64_t __68__ConversationViewControllerAccessibility_accessibilityCustomRotors__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Mfconversation_4.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_axElementForFocusInCell:(id)a3 shouldAllowCollapsedCell:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 safeValueForKey:@"viewModel"];
  v7 = [v6 safeValueForKey:@"messageLoadingContext"];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 safeValueForKey:@"messageBody"];
    v10 = [v9 safeUnsignedIntegerForKey:@"totalTextSize"];
    v11 = [v8 safeBoolForKey:@"hasLoadedSomeContent"];
    v12 = [v8 safeBoolForKey:@"hasLoadedCompleteMessage"];

    if (v10 < 2 || ((v12 | v11) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v13 = [v6 safeValueForKey:@"messageContentRequest"];
    if ([v13 safeBoolForKey:@"hasStarted"])
    {
    }

    else
    {
      v14 = [v13 safeBoolForKey:@"isFinished"];

      if (!v14)
      {
        goto LABEL_12;
      }
    }
  }

  v15 = [v5 _accessibilityFindSubviewDescendant:&__block_literal_global_586];
  if ([v15 accessibilityElementCount] <= 0)
  {
  }

  else
  {
    v16 = [v15 accessibilityElementAtIndex:0];

    if (v16)
    {
      goto LABEL_15;
    }
  }

LABEL_12:
  v16 = [v5 _accessibilityFindSubviewDescendant:&__block_literal_global_588];
  if (!v16 && v4)
  {
    v16 = v5;
  }

LABEL_15:

  return v16;
}

uint64_t __93__ConversationViewControllerAccessibility__axElementForFocusInCell_shouldAllowCollapsedCell___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Wkcontentview.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __93__ConversationViewControllerAccessibility__axElementForFocusInCell_shouldAllowCollapsedCell___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Mfmodernaddres.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_accessibilityFirstElementForFocus
{
  objc_opt_class();
  v3 = [(ConversationViewControllerAccessibility *)self safeValueForKey:@"collectionView"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [(ConversationViewControllerAccessibility *)self safeValueForKey:@"collectionViewDataSource"];
  if ((objc_opt_respondsToSelector() & 1) != 0 && (-[ConversationViewControllerAccessibility safeValueForKeyPath:](self, "safeValueForKeyPath:", @"referenceMessageListItem.displayMessageItemID"), v6 = objc_claimAutoreleasedReturnValue(), [v5 indexPathForItemIdentifier:v6], v7 = objc_claimAutoreleasedReturnValue(), v6, v7))
  {
    v8 = [v4 cellForItemAtIndexPath:v7];
  }

  else
  {
    v8 = [(ConversationViewControllerAccessibility *)self _axFirstVisibleExpandedCell];
  }

  v9 = [(ConversationViewControllerAccessibility *)self _axElementForFocusInCell:v8 shouldAllowCollapsedCell:0];

  return v9;
}

- (id)_axFirstVisibleExpandedCell
{
  objc_opt_class();
  v3 = [(ConversationViewControllerAccessibility *)self safeValueForKey:@"collectionView"];
  v4 = __UIAccessibilityCastAsClass();

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v5 = [v4 visibleCells];
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __70__ConversationViewControllerAccessibility__axFirstVisibleExpandedCell__block_invoke;
  v11[3] = &unk_29F2D3F00;
  v11[4] = &v12;
  [v5 enumerateObjectsUsingBlock:v11];

  v6 = v13[5];
  if (!v6)
  {
    v7 = [(ConversationViewControllerAccessibility *)self _axFirstVisibleCell];
    v8 = v13[5];
    v13[5] = v7;

    v6 = v13[5];
  }

  v9 = v6;
  _Block_object_dispose(&v12, 8);

  return v9;
}

void __70__ConversationViewControllerAccessibility__axFirstVisibleExpandedCell__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  NSClassFromString(&cfstr_Mfexpandedmess_0.isa);
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)_axFirstVisibleCell
{
  objc_opt_class();
  v3 = [(ConversationViewControllerAccessibility *)self safeValueForKey:@"collectionView"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 bounds];
  v6 = v5;
  v8 = v7;
  [v4 contentOffset];
  v10 = v9;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v11 = [v4 visibleCells];
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v14[2] = __62__ConversationViewControllerAccessibility__axFirstVisibleCell__block_invoke;
  v14[3] = &unk_29F2D3F28;
  v14[5] = v6;
  *&v14[6] = v10;
  *&v14[7] = v8;
  *&v14[8] = v10 + v8;
  v14[4] = &v15;
  [v11 enumerateObjectsUsingBlock:v14];

  v12 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v12;
}

void __62__ConversationViewControllerAccessibility__axFirstVisibleCell__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  [v11 frame];
  v13.origin.x = v7;
  v13.origin.y = v8;
  v13.size.width = v9;
  v13.size.height = v10;
  if (CGRectIntersectsRect(*(a1 + 40), v13))
  {
    *a4 = 1;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

- (BOOL)accessibilityScroll:(int64_t)a3
{
  v5 = [(ConversationViewControllerAccessibility *)self safeValueForKey:@"_conversationView"];
  v6 = v5;
  v7 = 0;
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      v8 = [v5 accessibilityScrollDownPage];
      goto LABEL_12;
    }

    if (a3 == 5)
    {
      goto LABEL_10;
    }

    if (a3 != 6)
    {
      goto LABEL_13;
    }

LABEL_9:
    v7 = 1;
    [(ConversationViewControllerAccessibility *)self _axSimulateTapArrowButtonWithDirection:1];
    goto LABEL_13;
  }

  switch(a3)
  {
    case 1:
      goto LABEL_9;
    case 2:
LABEL_10:
      [(ConversationViewControllerAccessibility *)self _axSimulateTapArrowButtonWithDirection:0xFFFFFFFFLL];
      v7 = 1;
      break;
    case 3:
      v8 = [v5 accessibilityScrollUpPage];
LABEL_12:
      v7 = v8;
      break;
  }

LABEL_13:

  return v7;
}

void __82__ConversationViewControllerAccessibility__axSimulateTapArrowButtonWithDirection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"delegate"];
  [v2 conversationViewController:*(a1 + 32) advanceToNextConversationWithDirection:*(a1 + 40)];
}

void __82__ConversationViewControllerAccessibility__axSimulateTapArrowButtonWithDirection___block_invoke_2(uint64_t a1)
{
  v1 = *MEMORY[0x29EDC7F10];
  v2 = [*(a1 + 32) _axMessageSubjectView];
  UIAccessibilityPostNotification(v1, v2);
}

- (id)_axMessageSubjectView
{
  v3 = [(ConversationViewControllerAccessibility *)self safeValueForKey:@"_conversationView"];
  v4 = [v3 _accessibilityFindSubviewDescendant:&__block_literal_global_597];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 safeValueForKey:@"subjectTextView"];
  }

  else
  {
    v7 = [(ConversationViewControllerAccessibility *)self safeValueForKey:@"conversationHeaderView"];
    v8 = [v7 safeValueForKey:@"contentView"];
    v6 = [v8 safeValueForKey:@"textLabel"];
  }

  return v6;
}

uint64_t __64__ConversationViewControllerAccessibility__axMessageSubjectView__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Messageheaders.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_accessibilityPerformLeadingActionWithCell:(id)a3
{
  v4 = a3;
  LOBYTE(v18) = 0;
  objc_opt_class();
  v5 = [(ConversationViewControllerAccessibility *)self safeValueForKey:@"collectionView"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [v6 indexPathForCell:v4];
  v8 = [(ConversationViewControllerAccessibility *)self safeValueForKey:@"conversationLayout"];
  v24 = 0;
  objc_opt_class();
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v9 = v8;
  v10 = v7;
  AXPerformSafeBlock();
  v11 = v19[5];

  _Block_object_dispose(&v18, 8);
  v12 = __UIAccessibilityCastAsClass();

  if (v24 == 1)
  {
    abort();
  }

  v13 = [v12 actions];
  v14 = [v13 firstObject];

  v17 = v4;
  v15 = v4;
  v16 = v14;
  AXPerformSafeBlock();
}

uint64_t __86__ConversationViewControllerAccessibility__accessibilityPerformLeadingActionWithCell___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) swipableCollectionViewLayout:*(a1 + 40) leadingSwipeActionsConfigurationForItemAtIndexPath:*(a1 + 48)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

uint64_t __86__ConversationViewControllerAccessibility__accessibilityPerformLeadingActionWithCell___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) executePreHandlerWithView:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 executeHandlerWithView:v3 completionHandler:&__block_literal_global_601];
}

- (void)_scrollToInitialPosition
{
  v6.receiver = self;
  v6.super_class = ConversationViewControllerAccessibility;
  [(ConversationViewControllerAccessibility *)&v6 _scrollToInitialPosition];
  if ([(ConversationViewControllerAccessibility *)self _axSkipNextFocusOnMessage])
  {
    [(ConversationViewControllerAccessibility *)self _axSetSkipNextFocusOnMessage:0];
  }

  else
  {
    objc_opt_class();
    v3 = __UIAccessibilityCastAsClass();
    v4 = [v3 view];
    v5 = [v4 _accessibilityViewIsVisible];

    if (v5)
    {
      AXPerformBlockOnMainThreadAfterDelay();
    }
  }
}

void __67__ConversationViewControllerAccessibility__scrollToInitialPosition__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _accessibilityFirstElementForFocus];

  if (v1)
  {
    v2 = *MEMORY[0x29EDC7F10];

    UIAccessibilityPostNotification(v2, 0);
  }
}

- (void)_shrinkMessagesToBarButton:(id)a3 withInteraction:(id)a4 completionHandler:(id)a5
{
  v5.receiver = self;
  v5.super_class = ConversationViewControllerAccessibility;
  [(ConversationViewControllerAccessibility *)&v5 _shrinkMessagesToBarButton:a3 withInteraction:a4 completionHandler:a5];
  AXPerformBlockOnMainThreadAfterDelay();
}

void __104__ConversationViewControllerAccessibility__shrinkMessagesToBarButton_withInteraction_completionHandler___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) safeValueForKey:@"conversationSubject"];
  v5 = [v1 safeValueForKey:@"subjectString"];

  if (v5)
  {
    v2 = MEMORY[0x29EDBA0F8];
    v3 = accessibilityLocalizedString(@"now.showing.message");
    v4 = [v2 stringWithFormat:v3, v5];

    UIAccessibilitySpeakAndDoNotBeInterrupted();
  }
}

- (id)arrowControlsView
{
  v5.receiver = self;
  v5.super_class = ConversationViewControllerAccessibility;
  v3 = [(ConversationViewControllerAccessibility *)&v5 arrowControlsView];
  [(ConversationViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];

  return v3;
}

void __87__ConversationViewControllerAccessibility_arrowControlsView_didTapButtonWithDirection___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _axMessageSubjectView];
  v1 = [v4 accessibilityLabel];
  v3 = [v4 accessibilityValue];
  v2 = __AXStringForVariables();
  UIAccessibilitySpeak();
}

- (void)_selectNextMessageCommandInvoked:(id)a3
{
  v4 = a3;
  [(ConversationViewControllerAccessibility *)self _axSetSkipNextFocusOnMessage:1];
  v12.receiver = self;
  v12.super_class = ConversationViewControllerAccessibility;
  [(ConversationViewControllerAccessibility *)&v12 _selectNextMessageCommandInvoked:v4];
  objc_opt_class();
  v5 = [(ConversationViewControllerAccessibility *)self safeValueForKey:@"delegate"];
  v6 = [v5 safeValueForKey:@"collectionView"];
  v7 = __UIAccessibilityCastAsClass();

  v8 = *MEMORY[0x29EDC7488];
  v9 = [v7 indexPathsForSelectedItems];
  v10 = [v9 firstObject];
  v11 = [v7 cellForItemAtIndexPath:v10];
  UIAccessibilityPostNotification(v8, v11);
}

- (void)_selectPreviousMessageCommandInvoked:(id)a3
{
  v4 = a3;
  [(ConversationViewControllerAccessibility *)self _axSetSkipNextFocusOnMessage:1];
  v12.receiver = self;
  v12.super_class = ConversationViewControllerAccessibility;
  [(ConversationViewControllerAccessibility *)&v12 _selectPreviousMessageCommandInvoked:v4];
  objc_opt_class();
  v5 = [(ConversationViewControllerAccessibility *)self safeValueForKey:@"delegate"];
  v6 = [v5 safeValueForKey:@"collectionView"];
  v7 = __UIAccessibilityCastAsClass();

  v8 = *MEMORY[0x29EDC7488];
  v9 = [v7 indexPathsForSelectedItems];
  v10 = [v9 lastObject];
  v11 = [v7 cellForItemAtIndexPath:v10];
  UIAccessibilityPostNotification(v8, v11);
}

- (void)messageViewController:(id)a3 didTapRevealActionsButton:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = ConversationViewControllerAccessibility;
  [(ConversationViewControllerAccessibility *)&v23 messageViewController:v6 didTapRevealActionsButton:v7];
  v22 = 0;
  objc_opt_class();
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v15 = MEMORY[0x29EDCA5F8];
  v8 = v6;
  AXPerformSafeBlock();
  v9 = v17[5];

  _Block_object_dispose(&v16, 8);
  v10 = __UIAccessibilityCastAsClass();

  if (v22 == 1)
  {
    goto LABEL_6;
  }

  if (v10)
  {
    LOBYTE(v16) = 0;
    objc_opt_class();
    v11 = [(ConversationViewControllerAccessibility *)self safeValueForKey:@"collectionView", v15, 3221225472, __91__ConversationViewControllerAccessibility_messageViewController_didTapRevealActionsButton___block_invoke, &unk_29F2D3FE8, self];
    v12 = __UIAccessibilityCastAsClass();

    if (v16 != 1)
    {
      v13 = [v12 cellForItemAtIndexPath:v10];
      v14 = [v13 _accessibilityFindSubviewDescendant:&__block_literal_global_625];
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v14);

      goto LABEL_5;
    }

LABEL_6:
    abort();
  }

LABEL_5:
}

uint64_t __91__ConversationViewControllerAccessibility_messageViewController_didTapRevealActionsButton___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _visibleIndexPathForMessageViewController:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

uint64_t __91__ConversationViewControllerAccessibility_messageViewController_didTapRevealActionsButton___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)invalidateAutomaticMarkAsReadForAllMessages
{
  v3.receiver = self;
  v3.super_class = ConversationViewControllerAccessibility;
  [(ConversationViewControllerAccessibility *)&v3 invalidateAutomaticMarkAsReadForAllMessages];
  [(ConversationViewControllerAccessibility *)self _axCancelMarkAsReadTimer];
}

- (void)cancelAutomaticMarkAsReadForCellViewModel:(id)a3
{
  v4.receiver = self;
  v4.super_class = ConversationViewControllerAccessibility;
  [(ConversationViewControllerAccessibility *)&v4 cancelAutomaticMarkAsReadForCellViewModel:a3];
  [(ConversationViewControllerAccessibility *)self _axCancelMarkAsReadTimer];
}

- (void)_axCancelMarkAsReadTimer
{
  v3 = [(ConversationViewControllerAccessibility *)self _axAutomaticallyMarkReadTimer];
  [v3 cancel];
  [(ConversationViewControllerAccessibility *)self _axSetAutomaticallyMarkReadTimer:0];
}

- (void)scheduleAutomaticMarkAsReadForMessage:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = ConversationViewControllerAccessibility;
  [(ConversationViewControllerAccessibility *)&v22 scheduleAutomaticMarkAsReadForMessage:v4];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v11 = MEMORY[0x29EDCA5F8];
  v12 = 3221225472;
  v13 = __81__ConversationViewControllerAccessibility_scheduleAutomaticMarkAsReadForMessage___block_invoke;
  v14 = &unk_29F2D3FE8;
  v17 = &v18;
  v15 = self;
  v5 = v4;
  v16 = v5;
  AXPerformSafeBlock();
  v6 = *(v19 + 24);

  _Block_object_dispose(&v18, 8);
  if (v6)
  {
    v7 = [(ConversationViewControllerAccessibility *)self _axAutomaticallyMarkReadTimer];
    [v7 cancel];
    if (!v7)
    {
      v8 = objc_alloc(MEMORY[0x29EDBD6A0]);
      v7 = [v8 initWithTargetSerialQueue:MEMORY[0x29EDCA578]];
      [(ConversationViewControllerAccessibility *)self _axSetAutomaticallyMarkReadTimer:v7];
    }

    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 3221225472;
    v9[2] = __81__ConversationViewControllerAccessibility_scheduleAutomaticMarkAsReadForMessage___block_invoke_2;
    v9[3] = &unk_29F2D3FC0;
    v9[4] = self;
    v10 = v5;
    [v7 afterDelay:v9 processBlock:0.7];
  }
}

uint64_t __81__ConversationViewControllerAccessibility_scheduleAutomaticMarkAsReadForMessage___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _shouldAutomaticallyMarkAsReadMessage:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void __81__ConversationViewControllerAccessibility_scheduleAutomaticMarkAsReadForMessage___block_invoke_2(uint64_t a1)
{
  v10 = 0;
  objc_opt_class();
  v2 = [*(a1 + 32) safeValueForKey:@"collectionView"];
  v3 = __UIAccessibilityCastAsClass();

  v4 = [v3 visibleCells];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __81__ConversationViewControllerAccessibility_scheduleAutomaticMarkAsReadForMessage___block_invoke_3;
  v7[3] = &unk_29F2D4010;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  [v4 enumerateObjectsUsingBlock:v7];
  [*(a1 + 32) _axSetAutomaticallyMarkReadTimer:0];
}

void __81__ConversationViewControllerAccessibility_scheduleAutomaticMarkAsReadForMessage___block_invoke_3(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 safeValueForKeyPath:@"viewModel.messageLoadingContext.message"];
  if (v3 == *(a1 + 32))
  {
    NSClassFromString(&cfstr_Mfexpandedmess_0.isa);
    if (objc_opt_isKindOfClass())
    {
      v4 = [v8 safeValueForKey:@"messageViewController"];
      v5 = [v4 safeValueForKey:@"messageContentView"];
      v6 = [v5 safeValueForKey:@"_footerView"];

      if (objc_opt_respondsToSelector())
      {
        v7 = [*(a1 + 40) _accessibilityTitleForLeadingActionWithCell:v8];
        [v6 _accessibilityUpdateLeadingActionTitle:v7];
      }
    }
  }
}

- (id)_accessibilityTitleForLeadingActionWithCell:(id)a3
{
  v4 = a3;
  LOBYTE(v22) = 0;
  objc_opt_class();
  v5 = [(ConversationViewControllerAccessibility *)self safeValueForKey:@"collectionView"];
  v6 = __UIAccessibilityCastAsClass();

  v7 = [v6 indexPathForCell:v4];
  if (v7)
  {
    v28 = 0;
    objc_opt_class();
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy_;
    v26 = __Block_byref_object_dispose_;
    v27 = 0;
    v16 = MEMORY[0x29EDCA5F8];
    v17 = 3221225472;
    v18 = __87__ConversationViewControllerAccessibility__accessibilityTitleForLeadingActionWithCell___block_invoke;
    v19 = &unk_29F2D3FE8;
    v20 = self;
    v21 = v7;
    AXPerformSafeBlock();
    v8 = v23[5];

    _Block_object_dispose(&v22, 8);
    v9 = __UIAccessibilityCastAsClass();

    if (v28 == 1)
    {
      abort();
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 flags];
  v11 = [v10 read];
  if (v9)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = @"message.action.mark.unread";
  }

  else
  {
    v13 = @"message.action.mark.read";
  }

  v14 = accessibilityLocalizedString(v13);

  return v14;
}

uint64_t __87__ConversationViewControllerAccessibility__accessibilityTitleForLeadingActionWithCell___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _messageAtIndexPath:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (void)_updateFooterViewFrameForCell:(id)a3 atIndexPath:(id)a4
{
  v5.receiver = self;
  v5.super_class = ConversationViewControllerAccessibility;
  [(ConversationViewControllerAccessibility *)&v5 _updateFooterViewFrameForCell:a3 atIndexPath:a4];
  [(ConversationViewControllerAccessibility *)self _accessibilitySetConversationViewInsets];
}

- (void)_accessibilitySetConversationViewInsets
{
  v10 = [(ConversationViewControllerAccessibility *)self safeValueForKey:@"_conversationView"];
  [v10 _accessibilityNavigationControllerInset];
  v4 = v3;
  v6 = v5;
  v7 = [(ConversationViewControllerAccessibility *)self safeValueForKey:@"displayMetrics"];
  [v7 safeCGFloatForKey:@"estimatedFooterViewHeight"];
  v9 = v8;

  [v10 _accessibilitySetNavigationControllerInset:{v9 + v9, v4, v9 * 3.0, v6}];
}

@end