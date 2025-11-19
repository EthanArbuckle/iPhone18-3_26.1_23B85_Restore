@interface MessageListCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityDeleteAction:(id)a3;
- (BOOL)_accessibilityIsThreadedChildCell;
- (BOOL)_accessibilityRemoveHighImpactAction:(id)a3;
- (BOOL)_accessibilityToggleFlagAction:(id)a3;
- (BOOL)_accessibilityToggleReadAction:(id)a3;
- (BOOL)_accessibilityToggleThreadAction:(id)a3;
- (id)_accessibilityCustomActionGroupIdentifier;
- (id)_accessibilityEquivalenceTag;
- (id)_accessibilityLabelWithoutAttributes;
- (id)_accessibilityLinkedUIElements;
- (id)_accessibilityMailboxController;
- (id)_accessibilityScrollStatus;
- (id)_accessibilityThreadedDisclosureButton;
- (id)_privateAccessibilityCustomActions;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (id)automationElements;
- (int64_t)_accessibilityScannerActivateBehavior;
- (unint64_t)_accessibilityThreadCount;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityPerformCellAction:(int64_t)a3;
- (void)_axPostAnnouncementForActionCompletionIfNecessary;
- (void)_axProcessMailLabel:(id)a3 children:(id)a4;
- (void)_axSetDisclosureButtonTraits;
- (void)accessibilityElementDidBecomeFocused;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation MessageListCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MessageListCollectionViewCell" hasInstanceMethod:@"_didTapDisclosureButton:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"MessageListCollectionViewCell" hasInstanceMethod:@"cellHelper" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MessageListCollectionViewCell" hasInstanceMethod:@"messageListItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MessageListCellHelper" hasInstanceMethod:@"messageListItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MessageListCellHelper" hasInstanceMethod:@"cellView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MessageListCellHelper" hasInstanceMethod:@"disclosureEnabled" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MessageListCellView" hasInstanceMethod:@"dateLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MessageListCellView" hasInstanceMethod:@"secondaryLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MessageListCellView" hasInstanceMethod:@"disclosureButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MessageListCellView" hasInstanceMethod:@"primaryLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MessageListCellView" hasInstanceMethod:@"tertiaryLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MessageListCellView" hasInstanceMethod:@"viewModel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MessageListCellView" hasInstanceMethod:@"disclosureButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MessageListCellView" hasInstanceMethod:@"chevronType" withFullSignature:{"q", 0}];
  [v3 validateClass:@"MessageListCellView" hasInstanceMethod:@"isEditing" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MessageListCellView" hasInstanceMethod:@"category" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MessageItemViewModel" hasInstanceMethod:@"isRead" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MessageItemViewModel" hasInstanceMethod:@"isFlagged" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MessageItemViewModel" hasInstanceMethod:@"isReplied" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MessageItemViewModel" hasInstanceMethod:@"isForwarded" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MessageItemViewModel" hasInstanceMethod:@"isVIP" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MessageItemViewModel" hasInstanceMethod:@"isNotify" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MessageItemViewModel" hasInstanceMethod:@"isMute" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MessageItemViewModel" hasInstanceMethod:@"isBlockedSender" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MessageItemViewModel" hasInstanceMethod:@"flagColors" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MessageListViewController" hasInstanceMethod:@"_isExpandedIndexPath:" withFullSignature:{"B", "@", 0}];
  [v3 validateClass:@"MessageListViewController" hasInstanceMethod:@"_swipeActionForTriageAction:indexPath:" withFullSignature:{"@", "q", "@", 0}];
  [v3 validateClass:@"MUIMessageListViewController" hasInstanceMethod:@"messageListSelectionModel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MUIMessageListViewController" hasInstanceMethod:@"state" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MUIMessageListViewController" hasInstanceMethod:@"messageListPositionHelper" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MUIMessageListViewController" hasInstanceMethod:@"dataSource" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MessageListViewController" hasInstanceMethod:@"undoManager" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MessageListViewController" hasInstanceMethod:@"_shouldShowClearHighImpactForMessageListItem:" withFullSignature:{"B", "@", 0}];
  [v3 validateClass:@"MessageListSelectionModel" hasInstanceMethod:@"isSelectedItemID:" withFullSignature:{"B", "@", 0}];
  [v3 validateClass:@"UIContextualAction" hasInstanceMethod:@"executePreHandlerWithView:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"UIContextualAction" hasInstanceMethod:@"executeHandlerWithView:completionHandler:" withFullSignature:{"v", "@", "@?", 0}];
  [v3 validateProtocol:@"EMMessageListItem" hasRequiredInstanceMethod:@"count"];
  [v3 validateProtocol:@"EMMessageListItem" hasRequiredInstanceMethod:@"shouldArchiveByDefault"];
  [v3 validateProtocol:@"EMMessageListItem" hasRequiredInstanceMethod:@"displayMessageObjectID"];
  [v3 validateProtocol:@"EMMessageListItem" hasRequiredInstanceMethod:@"hasAttachments"];
  [v3 validateClass:@"EMObjectID" hasInstanceMethod:@"stringHash" withFullSignature:{"@", 0}];
  [v3 validateClass:@"EFFuture" hasInstanceMethod:@"result" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MessageListCollectionViewCell" isKindOfClass:@"UICollectionViewCell"];
  [v3 validateClass:@"MessageListCellLabel" isKindOfClass:@"UILabel"];
  [v3 validateClass:@"MessageListPositionHelper" hasInstanceMethod:@"recalculateFirstVisibleIndex" withFullSignature:{"v", 0}];
  [v3 validateClass:@"MessageListDataSource" hasInstanceMethod:@"messageListItemAtIndexPath:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"MessageListDataSource" hasInstanceMethod:@"collectionViewDataSource" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MFReadLaterTriageInteraction"];
  [v3 validateClass:@"MFReadLaterTriageInteraction" hasClassMethod:@"interactionWithMessageListItems:undoManager:origin:actor:" withFullSignature:{"@", "@", "@", "q", "q", 0}];
  [v3 validateClass:@"MFReadLaterTriageInteraction" hasInstanceMethod:@"_performInteractionAfterPreparation:completion:" withFullSignature:{"v", "@?", "@?", 0}];
  [v3 validateClass:@"MFReadLaterTriageInteraction" isKindOfClass:@"MFTriageInteraction"];
  [v3 validateClass:@"MFTriageInteraction" hasInstanceMethod:@"setDelegate:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"MessageListViewControllerState" hasInstanceMethod:@"containsDraftsOrOutbox" withFullSignature:{"B", 0}];
  [v3 validateClass:@"EMCategory" hasInstanceMethod:@"type" withFullSignature:{"Q", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = MessageListCollectionViewCellAccessibility;
  [(MessageListCollectionViewCellAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(MessageListCollectionViewCellAccessibility *)self _axSetDisclosureButtonTraits];
}

- (void)_axSetDisclosureButtonTraits
{
  v2 = [(MessageListCollectionViewCellAccessibility *)self safeValueForKeyPath:@"cellHelper.cellView.disclosureButton"];
  [v2 setAccessibilityTraits:*MEMORY[0x29EDC7F70] | *MEMORY[0x29EDC7578]];
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = MessageListCollectionViewCellAccessibility;
  v2 = [(MessageListCollectionViewCellAccessibility *)&v7 accessibilityTraits];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 isSelected];

  v5 = *MEMORY[0x29EDC7FC0];
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | v2;
}

- (id)accessibilityLabel
{
  v72.receiver = self;
  v72.super_class = MessageListCollectionViewCellAccessibility;
  v3 = [(MessageListCollectionViewCellAccessibility *)&v72 accessibilityLabel];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    goto LABEL_41;
  }

  v6 = [(MessageListCollectionViewCellAccessibility *)self safeValueForKeyPath:@"cellHelper.cellView"];
  v7 = [v6 safeValueForKey:@"primaryLabel"];
  v8 = [v7 accessibilityLabel];

  v9 = [v6 safeValueForKey:@"secondaryLabel"];
  v64 = [v9 accessibilityLabel];

  v10 = [v6 safeValueForKey:@"tertiaryLabel"];
  v63 = [v10 accessibilityLabel];

  v11 = [v8 componentsSeparatedByString:{@", "}];
  v12 = [v11 count];
  if (v12 >= 3)
  {
    v13 = 3;
  }

  else
  {
    v13 = v12;
  }

  v14 = [v11 subarrayWithRange:{0, v13}];

  v47 = v14;
  v62 = [v14 componentsJoinedByString:{@", "}];

  v49 = v6;
  v15 = [v6 safeValueForKey:@"viewModel"];
  v16 = [v15 safeBoolForKey:@"isRead"];
  v17 = [v15 safeBoolForKey:@"isReplied"];
  v55 = [v15 safeBoolForKey:@"isForwarded"];
  v18 = [v15 safeBoolForKey:@"isFlagged"];
  LOBYTE(v66) = 0;
  objc_opt_class();
  v19 = [v15 safeValueForKey:@"flagColors"];
  v50 = __UIAccessibilityCastAsClass();

  v20 = [v15 safeBoolForKey:@"isVIP"];
  v21 = [v15 safeBoolForKey:@"isBlockedSender"];
  v22 = [v15 safeBoolForKey:@"isNotify"];
  v23 = [v15 safeBoolForKey:@"isMute"];
  v24 = [(MessageListCollectionViewCellAccessibility *)self safeValueForKeyPath:@"cellHelper.messageListItem"];
  v48 = [v24 safeBoolForKey:@"hasAttachments"];

  v25 = [(MessageListCollectionViewCellAccessibility *)self _accessibilityIsThreadedChildCell];
  if (v16)
  {
    v61 = 0;
    if (!v17)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v61 = accessibilityLocalizedString(@"unread");
    if (!v17)
    {
LABEL_8:
      v60 = 0;
      if (!v20)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }
  }

  v60 = accessibilityLocalizedString(@"replied");
  if (!v20)
  {
LABEL_9:
    v59 = 0;
    if (!v21)
    {
      goto LABEL_10;
    }

LABEL_15:
    v58 = accessibilityLocalizedString(@"blockedsender.message");
    if (!v22)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

LABEL_14:
  v59 = accessibilityLocalizedString(@"vip.message");
  if (v21)
  {
    goto LABEL_15;
  }

LABEL_10:
  v58 = 0;
  if (!v22)
  {
LABEL_11:
    v57 = 0;
    goto LABEL_17;
  }

LABEL_16:
  v57 = accessibilityLocalizedString(@"notify.message");
LABEL_17:
  if (v55)
  {
    v56 = accessibilityLocalizedString(@"forwarded");
    if (!v23)
    {
      goto LABEL_19;
    }

LABEL_22:
    v54 = accessibilityLocalizedString(@"muted.message");
    if (!v18)
    {
      goto LABEL_20;
    }

LABEL_23:
    v53 = accessibilityLocalizedString(@"flagged");
    goto LABEL_24;
  }

  v56 = 0;
  if (v23)
  {
    goto LABEL_22;
  }

LABEL_19:
  v54 = 0;
  if (v18)
  {
    goto LABEL_23;
  }

LABEL_20:
  v53 = 0;
LABEL_24:
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = __Block_byref_object_copy__3;
  v70 = __Block_byref_object_dispose__3;
  v71 = 0;
  if (v18)
  {
    v26 = [MEMORY[0x29EDBA050] string];
    v27 = v67[5];
    v67[5] = v26;

    v65[0] = MEMORY[0x29EDCA5F8];
    v65[1] = 3221225472;
    v65[2] = __64__MessageListCollectionViewCellAccessibility_accessibilityLabel__block_invoke;
    v65[3] = &unk_29F2D4260;
    v65[4] = &v66;
    [v50 enumerateIndexesUsingBlock:v65];
  }

  v28 = [v49 safeValueForKey:@"category"];
  v29 = [v28 safeIntForKey:@"type"] - 1;
  if (v29 >= 3)
  {
    v30 = v25;
    v52 = 0;
  }

  else
  {
    v52 = accessibilityLocalizedString(off_29F2D4318[v29]);
    v30 = v25;
  }

  if ([(MessageListCollectionViewCellAccessibility *)self _accessibilityThreadCount]< 2)
  {
    v51 = 0;
  }

  else
  {
    v31 = MEMORY[0x29EDBA0F8];
    v32 = accessibilityLocalizedString(@"thread.count.many");
    v33 = AXFormatInteger();
    v51 = [v31 stringWithFormat:v32, v33];
  }

  if (v48)
  {
    v34 = accessibilityLocalizedString(@"contains.attachments");
  }

  else
  {
    v34 = 0;
  }

  v46 = v28;
  if ([v49 safeBoolForKey:@"hasGeneratedSummary"])
  {
    v35 = accessibilityLocalizedString(@"message.summary");
  }

  else
  {
    v35 = 0;
  }

  v36 = v64;
  if (v30)
  {
    v36 = v63;
  }

  v37 = v36;
  objc_opt_class();
  v38 = [v49 safeValueForKey:@"tertiaryLabel"];
  v39 = __UIAccessibilityCastAsClass();

  v40 = accessibilityApproximateVisibleSummaryText(self, v39);

  v41 = v67[5];
  v42 = [v49 safeValueForKey:@"dateLabel"];
  v45 = [v42 accessibilityLabel];
  v44 = v41;
  v5 = __UIAXStringForVariables();

  [(MessageListCollectionViewCellAccessibility *)self setAccessibilityLabel:v5, v60, v56, v53, v44, v62, v37, v45, v52, v59, v58, v57, v54, v51, v34, v35, v40, @"__AXStringForVariablesSentinel"];
  _Block_object_dispose(&v66, 8);

  v4 = 0;
LABEL_41:

  return v5;
}

void __64__MessageListCollectionViewCellAccessibility_accessibilityLabel__block_invoke(uint64_t a1, unint64_t a2)
{
  if (a2 <= 6)
  {
    v3 = *(*(*(a1 + 32) + 8) + 40);
    v4 = accessibilityLocalizedString(off_29F2D4330[a2]);
    [v3 appendFormat:@"%@, ", v4];
  }
}

- (id)accessibilityHint
{
  v3 = [(MessageListCollectionViewCellAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_9 startWithSelf:0];
  LOBYTE(v24) = 0;
  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  if ([v4 isEditing])
  {
    v5 = [v4 delegate];
    v6 = [v5 safeValueForKey:@"messageListSelectionModel"];
    v7 = [v5 safeValueForKeyPath:@"dataSource.collectionViewDataSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v4 indexPathForCell:self];
      v9 = [v7 itemIdentifierForIndexPath:v8];
      v24 = 0;
      v25 = &v24;
      v26 = 0x2020000000;
      v27 = 0;
      v17 = MEMORY[0x29EDCA5F8];
      v18 = 3221225472;
      v19 = __63__MessageListCollectionViewCellAccessibility_accessibilityHint__block_invoke_2;
      v20 = &unk_29F2D3FE8;
      v23 = &v24;
      v10 = v6;
      v21 = v10;
      v11 = v9;
      v22 = v11;
      AXPerformSafeBlock();
      v12 = *(v25 + 24);

      _Block_object_dispose(&v24, 8);
      if (v12)
      {
        v13 = @"message.deselect.hint";
      }

      else
      {
        v13 = @"message.select.hint";
      }

      v14 = accessibilityLocalizedString(v13);

      goto LABEL_9;
    }
  }

  v16.receiver = self;
  v16.super_class = MessageListCollectionViewCellAccessibility;
  v14 = [(MessageListCollectionViewCellAccessibility *)&v16 accessibilityHint];
LABEL_9:

  return v14;
}

uint64_t __63__MessageListCollectionViewCellAccessibility_accessibilityHint__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 accessibilityIdentifier];
  v3 = [v2 isEqualToString:*MEMORY[0x29EDC5828]];

  return v3;
}

uint64_t __63__MessageListCollectionViewCellAccessibility_accessibilityHint__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) isSelectedItemID:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (id)accessibilityUserInputLabels
{
  v2 = [(MessageListCollectionViewCellAccessibility *)self safeValueForKeyPath:@"cellHelper.cellView.secondaryLabel"];
  v3 = [v2 accessibilityLabel];
  v4 = MEMORY[0x29C2DF8C0]();

  return v4;
}

- (id)_accessibilityCustomActionGroupIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)_accessibilityPerformCellAction:(int64_t)a3
{
  v5 = [(MessageListCollectionViewCellAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_607 startWithSelf:0];
  LOBYTE(v26) = 0;
  objc_opt_class();
  v6 = __UIAccessibilityCastAsClass();
  v7 = [v6 indexPathForCell:self];
  v8 = [v6 delegate];
  v9 = v8;
  if (a3 == 3)
  {
    v10 = [v8 safeValueForKey:@"dataSource"];
    v11 = [v6 indexPathForCell:self];
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__3;
    v30 = __Block_byref_object_dispose__3;
    v31 = 0;
    v12 = v10;
    v13 = v11;
    AXPerformSafeBlock();
    v14 = v27[5];

    _Block_object_dispose(&v26, 8);
    v15 = [v14 safeValueForKey:@"result"];

    if (v15)
    {
      v26 = 0;
      v27 = &v26;
      v28 = 0x3032000000;
      v29 = __Block_byref_object_copy__3;
      v30 = __Block_byref_object_dispose__3;
      v31 = 0;
      v25 = v15;
      AXPerformSafeBlock();
      v16 = v27[5];

      _Block_object_dispose(&v26, 8);
      v23 = v16;
      v24 = v9;
      v17 = v16;
      AXPerformSafeBlock();
    }
  }

  else
  {
    objc_opt_class();
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__3;
    v30 = __Block_byref_object_dispose__3;
    v31 = 0;
    v21 = v9;
    v22 = v7;
    AXPerformSafeBlock();
    v18 = v27[5];

    _Block_object_dispose(&v26, 8);
    v19 = __UIAccessibilityCastAsClass();

    v20 = v19;
    v12 = v19;
    AXPerformSafeBlock();
    v13 = v20;
  }
}

uint64_t __78__MessageListCollectionViewCellAccessibility__accessibilityPerformCellAction___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 accessibilityIdentifier];
  v3 = [v2 isEqualToString:*MEMORY[0x29EDC5828]];

  return v3;
}

uint64_t __78__MessageListCollectionViewCellAccessibility__accessibilityPerformCellAction___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) messageListItemAtIndexPath:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

void __78__MessageListCollectionViewCellAccessibility__accessibilityPerformCellAction___block_invoke_3(uint64_t a1)
{
  v9[1] = *MEMORY[0x29EDCA608];
  v2 = NSClassFromString(&cfstr_Mfreadlatertri.isa);
  v9[0] = *(a1 + 32);
  v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:v9 count:1];
  v4 = [*(a1 + 40) safeValueForKey:@"undoManager"];
  v5 = [(objc_class *)v2 interactionWithMessageListItems:v3 undoManager:v4 origin:2 actor:2];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *MEMORY[0x29EDCA608];
}

uint64_t __78__MessageListCollectionViewCellAccessibility__accessibilityPerformCellAction___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 _performInteractionAfterPreparation:0 completion:0];
}

uint64_t __78__MessageListCollectionViewCellAccessibility__accessibilityPerformCellAction___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) _swipeActionForTriageAction:*(a1 + 56) indexPath:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

uint64_t __78__MessageListCollectionViewCellAccessibility__accessibilityPerformCellAction___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) executePreHandlerWithView:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 executeHandlerWithView:v3 completionHandler:&__block_literal_global_612];
}

- (BOOL)_accessibilityToggleReadAction:(id)a3
{
  v4 = [(MessageListCollectionViewCellAccessibility *)self _accessibilityMailboxController];
  [v4 _axSetTriageActionForAnnouncement:2];

  [(MessageListCollectionViewCellAccessibility *)self _accessibilityPerformCellAction:2];
  return 1;
}

- (BOOL)_accessibilityToggleFlagAction:(id)a3
{
  v4 = [(MessageListCollectionViewCellAccessibility *)self _accessibilityMailboxController];
  [v4 _axSetTriageActionForAnnouncement:6];

  [(MessageListCollectionViewCellAccessibility *)self _accessibilityPerformCellAction:6];
  return 1;
}

- (BOOL)_accessibilityRemoveHighImpactAction:(id)a3
{
  v4 = [(MessageListCollectionViewCellAccessibility *)self _accessibilityMailboxController];
  [v4 _axSetTriageActionForAnnouncement:21];

  [(MessageListCollectionViewCellAccessibility *)self _accessibilityPerformCellAction:21];
  return 1;
}

- (BOOL)_accessibilityDeleteAction:(id)a3
{
  v4 = [MEMORY[0x29EDBDFA0] sharedInstance];
  v5 = [v4 voiceOverSpeakActionConfirmation];

  if (v5)
  {
    v6 = [(MessageListCollectionViewCellAccessibility *)self _accessibilityThreadCount];
    v7 = *MEMORY[0x29EDC7EA8];
    if (v6 < 2)
    {
      v10 = accessibilityLocalizedString(@"message.deleted");
      UIAccessibilityPostNotification(v7, v10);
    }

    else
    {
      v8 = v6;
      v9 = MEMORY[0x29EDBA0F8];
      v10 = accessibilityLocalizedString(@"thread.message.deleted");
      v11 = [v9 localizedStringWithFormat:v10, v8];
      UIAccessibilityPostNotification(v7, v11);
    }
  }

  [(MessageListCollectionViewCellAccessibility *)self _accessibilityPerformCellAction:8];
  return 1;
}

- (void)_axPostAnnouncementForActionCompletionIfNecessary
{
  v3 = [MEMORY[0x29EDBDFA0] sharedInstance];
  v4 = [v3 voiceOverSpeakActionConfirmation];

  if (!v4)
  {
    return;
  }

  v5 = [(MessageListCollectionViewCellAccessibility *)self _accessibilityMailboxController];
  v6 = [v5 _axGetTriageActionForAnnouncement];

  if (v6 != 2)
  {
    if (v6 != 6)
    {
      return;
    }

    v7 = [(MessageListCollectionViewCellAccessibility *)self safeValueForKeyPath:@"cellHelper.cellView.viewModel"];
    v8 = [v7 safeBoolForKey:@"isFlagged"];

    v9 = *MEMORY[0x29EDC7EA8];
    if (v8)
    {
      v10 = @"flagged";
    }

    else
    {
      v10 = @"unflagged";
    }

    goto LABEL_11;
  }

  v11 = [(MessageListCollectionViewCellAccessibility *)self safeValueForKeyPath:@"cellHelper.cellView.viewModel"];
  v12 = [v11 safeBoolForKey:@"isRead"];

  v9 = *MEMORY[0x29EDC7EA8];
  if ((v12 & 1) == 0)
  {
    v10 = @"unread";
LABEL_11:
    v14 = accessibilityLocalizedString(v10);
    UIAccessibilityPostNotification(v9, v14);
    goto LABEL_12;
  }

  v14 = accessibilityLocalizedString(@"read");
  v13 = accessibilitySubstituteReadPhonemeInString(v14);
  UIAccessibilityPostNotification(v9, v13);

LABEL_12:
}

- (id)_accessibilityMailboxController
{
  v2 = [(MessageListCollectionViewCellAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_630 startWithSelf:1];
  v3 = [v2 _accessibilityViewController];

  return v3;
}

uint64_t __77__MessageListCollectionViewCellAccessibility__accessibilityMailboxController__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  NSClassFromString(&cfstr_Messagelistvie_0.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)_accessibilityToggleThreadAction:(id)a3
{
  v13 = MEMORY[0x29EDCA5F8];
  AXPerformSafeBlock();
  v4 = [MEMORY[0x29EDBDFA0] sharedInstance];
  v5 = [v4 voiceOverSpeakActionConfirmation];

  if (v5)
  {
    v6 = [(MessageListCollectionViewCellAccessibility *)self safeValueForKey:@"cellHelper"];
    v7 = [v6 safeBoolForKey:@"disclosureEnabled"];

    if (v7)
    {
      v8 = [(MessageListCollectionViewCellAccessibility *)self _accessibilityThreadCount];
      v9 = MEMORY[0x29EDBA0F8];
      v10 = accessibilityLocalizedString(@"num.messages");
      v11 = [v9 localizedStringWithFormat:v10, v8, v13, 3221225472, __79__MessageListCollectionViewCellAccessibility__accessibilityToggleThreadAction___block_invoke, &unk_29F2D3E70, self];
      UIAccessibilitySpeak();
    }
  }

  return 1;
}

void __79__MessageListCollectionViewCellAccessibility__accessibilityToggleThreadAction___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 safeValueForKeyPath:@"cellHelper.cellView.disclosureButton"];
  [v1 _didTapDisclosureButton:v2];
}

- (void)accessibilityElementDidBecomeFocused
{
  v2.receiver = self;
  v2.super_class = MessageListCollectionViewCellAccessibility;
  [(MessageListCollectionViewCellAccessibility *)&v2 accessibilityElementDidBecomeFocused];
  AXPerformSafeBlock();
}

void __82__MessageListCollectionViewCellAccessibility_accessibilityElementDidBecomeFocused__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _accessibilityMailboxController];
  v1 = [v2 safeValueForKey:@"messageListPositionHelper"];
  [v1 recalculateFirstVisibleIndex];
}

- (id)_privateAccessibilityCustomActions
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(MessageListCollectionViewCellAccessibility *)self safeValueForKeyPath:@"cellHelper.cellView.viewModel"];
  v5 = [(MessageListCollectionViewCellAccessibility *)self safeValueForKeyPath:@"cellHelper.messageListItem"];
  v6 = [v5 safeBoolForKey:@"shouldArchiveByDefault"];

  v7 = MEMORY[0x29EDC72F8];
  if (v6)
  {
    v8 = [v3 indexOfObjectPassingTest:&__block_literal_global_639];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = objc_alloc(MEMORY[0x29EDC78E0]);
      v10 = accessibilityLocalizedString(@"archive.button");
      v11 = [v9 initWithName:v10 target:self selector:sel__accessibilityArchiveAction_];

      [v11 _accessibilitySetInternalCustomActionIdentifier:@"AX_ARCHIVE"];
      [v3 addObject:v11];
    }

    else
    {
      v11 = [v3 objectAtIndex:v8];
      [v11 _accessibilitySetInternalCustomActionIdentifier:@"AX_ARCHIVE"];
      v12 = accessibilityLocalizedString(@"archive.button");
      [v11 setName:v12];

      [v11 setTarget:self];
      [v11 setSelector:sel__accessibilityArchiveAction_];
      [v11 setSortPriority:*v7];
      [v11 setImage:0];
    }
  }

  if ([v4 safeBoolForKey:@"isRead"])
  {
    v13 = accessibilityLocalizedString(@"message.action.mark.unread");
  }

  else
  {
    v14 = accessibilityLocalizedString(@"message.action.mark.read");
    v13 = accessibilitySubstituteReadPhonemeInString(v14);
  }

  v15 = [objc_alloc(MEMORY[0x29EDC78E0]) initWithName:v13 target:self selector:sel__accessibilityToggleReadAction_];
  [v15 _accessibilitySetInternalCustomActionIdentifier:@"AX_READ"];
  [v3 addObject:v15];
  if ([v4 safeBoolForKey:@"isFlagged"])
  {
    v16 = @"message.action.unflag";
  }

  else
  {
    v16 = @"message.action.flag";
  }

  v17 = accessibilityLocalizedString(v16);

  v18 = [objc_alloc(MEMORY[0x29EDC78E0]) initWithName:v17 target:self selector:sel__accessibilityToggleFlagAction_];
  [v18 _accessibilitySetInternalCustomActionIdentifier:@"AX_FLAG"];
  [v3 addObject:v18];
  v19 = accessibilityLocalizedString(@"message.action.delete");
  v20 = [(MessageListCollectionViewCellAccessibility *)self _accessibilityThreadCount];
  v51 = v4;
  if (v20 >= 2)
  {
    v21 = v20;
    v22 = MEMORY[0x29EDBA0F8];
    v23 = accessibilityLocalizedString(@"message.action.delete.thread");
    v24 = [v22 localizedStringWithFormat:v23, v21, v4];

    v19 = v24;
  }

  v25 = [(MessageListCollectionViewCellAccessibility *)self safeValueForKeyPath:@"cellHelper.cellView"];
  v26 = [v25 safeIntegerForKey:@"chevronType"];

  if (v26 == 2)
  {
    v27 = [(MessageListCollectionViewCellAccessibility *)self safeValueForKey:@"cellHelper"];
    v28 = [v27 safeBoolForKey:@"disclosureEnabled"];

    if (v28)
    {
      v29 = @"mailbox.cell.thread.collapse";
    }

    else
    {
      v29 = @"mailbox.cell.thread.expand";
    }

    v30 = accessibilityLocalizedString(v29);
    v31 = [objc_alloc(MEMORY[0x29EDC78E0]) initWithName:v30 target:self selector:sel__accessibilityToggleThreadAction_];
    [v31 _accessibilitySetInternalCustomActionIdentifier:@"AX_TOGGLE_THREAD"];
    [v3 addObject:v31];
  }

  v32 = [(MessageListCollectionViewCellAccessibility *)self _accessibilityMailboxController];
  v33 = [v32 safeValueForKey:@"state"];
  v34 = [v33 safeBoolForKey:@"containsDraftsOrOutbox"];

  if ((v34 & 1) == 0)
  {
    v35 = objc_alloc(MEMORY[0x29EDC78E0]);
    v36 = accessibilityLocalizedString(@"message.action.more");
    v37 = [v35 initWithName:v36 target:self selector:sel__accessibilityMoreAction_];

    [v37 _accessibilitySetInternalCustomActionIdentifier:@"AX_MORE"];
    [v3 addObject:v37];
    v18 = v37;
  }

  v38 = [objc_alloc(MEMORY[0x29EDC78E0]) initWithName:v19 target:self selector:sel__accessibilityDeleteAction_];

  v39 = _UIAccessibilityCustomActionDeleteImage();
  [v38 setImage:v39];

  [v38 setSortPriority:*v7];
  [v38 _accessibilitySetInternalCustomActionIdentifier:@"AX_DELETE"];
  [v3 addObject:v38];
  v40 = objc_alloc(MEMORY[0x29EDC78E0]);
  v41 = accessibilityLocalizedString(@"message.action.read.later");
  v42 = [v40 initWithName:v41 target:self selector:sel__accessibilityLaterAction_];

  [v42 _accessibilitySetInternalCustomActionIdentifier:@"AX_READ_LATER"];
  [v3 addObject:v42];
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = __Block_byref_object_copy__3;
  v70 = __Block_byref_object_dispose__3;
  v71 = 0;
  v60 = MEMORY[0x29EDCA5F8];
  v61 = 3221225472;
  v62 = __80__MessageListCollectionViewCellAccessibility__privateAccessibilityCustomActions__block_invoke_2;
  v63 = &unk_29F2D42D0;
  v64 = self;
  v65 = &v66;
  AXPerformSafeBlock();
  v43 = v67[5];
  _Block_object_dispose(&v66, 8);

  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  LOBYTE(v69) = 0;
  v53 = MEMORY[0x29EDCA5F8];
  v54 = 3221225472;
  v55 = __80__MessageListCollectionViewCellAccessibility__privateAccessibilityCustomActions__block_invoke_3;
  v56 = &unk_29F2D3FE8;
  v59 = &v66;
  v44 = v32;
  v57 = v44;
  v45 = v43;
  v58 = v45;
  AXPerformSafeBlock();
  LODWORD(v41) = *(v67 + 24);

  _Block_object_dispose(&v66, 8);
  if (v41 == 1)
  {
    v46 = objc_alloc(MEMORY[0x29EDC78E0]);
    v47 = accessibilityLocalizedString(@"message.action.remove.high.impact");
    v48 = [v46 initWithName:v47 target:self selector:sel__accessibilityRemoveHighImpactAction_];

    [v48 _accessibilitySetInternalCustomActionIdentifier:@"AX_REMOVE_HIGH_IMPACT"];
    [v3 addObject:v48];
    v42 = v48;
  }

  v52.receiver = self;
  v52.super_class = MessageListCollectionViewCellAccessibility;
  v49 = [(MessageListCollectionViewCellAccessibility *)&v52 accessibilityCustomActions];
  [v3 axSafelyAddObjectsFromArray:v49];

  return v3;
}

uint64_t __80__MessageListCollectionViewCellAccessibility__privateAccessibilityCustomActions__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 accessibilityIdentifier];
  v3 = [v2 isEqualToString:@"AXDeleteAction"];

  return v3;
}

uint64_t __80__MessageListCollectionViewCellAccessibility__privateAccessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) messageListItem];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

uint64_t __80__MessageListCollectionViewCellAccessibility__privateAccessibilityCustomActions__block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) _shouldShowClearHighImpactForMessageListItem:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (id)_accessibilityScrollStatus
{
  v9.receiver = self;
  v9.super_class = MessageListCollectionViewCellAccessibility;
  v3 = [(MessageListCollectionViewCellAccessibility *)&v9 _accessibilityScrollStatus];
  objc_opt_class();
  v4 = [(MessageListCollectionViewCellAccessibility *)self safeValueForKeyPath:@"cellHelper.cellView.tertiaryLabel"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = accessibilityApproximateVisibleSummaryText(self, v5);

  v7 = __UIAXStringForVariables();

  return v7;
}

- (id)_accessibilityLinkedUIElements
{
  v3 = [(MessageListCollectionViewCellAccessibility *)self accessibilityTraits];
  if ((*MEMORY[0x29EDC7FC0] & v3) != 0)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__3;
    v16 = __Block_byref_object_dispose__3;
    v17 = 0;
    v7 = MEMORY[0x29EDCA5F8];
    v8 = 3221225472;
    v9 = __76__MessageListCollectionViewCellAccessibility__accessibilityLinkedUIElements__block_invoke;
    v10 = &unk_29F2D42F8;
    v11 = &v12;
    AXPerformSafeBlock();
    v4 = v13[5];
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = MessageListCollectionViewCellAccessibility;
    v4 = [(MessageListCollectionViewCellAccessibility *)&v6 _accessibilityLinkedUIElements];
  }

  return v4;
}

void __76__MessageListCollectionViewCellAccessibility__accessibilityLinkedUIElements__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x29EDC7DD0] _applicationKeyWindow];
  v13 = [v2 rootViewController];

  v3 = [v13 childViewControllers];
  v4 = [v3 firstObject];

  v5 = [v4 viewControllers];
  v6 = [v5 lastObject];

  v7 = [v6 topViewController];
  if ([v7 isViewLoaded])
  {
    v8 = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
    [v8 setLeafNodePredicate:&__block_literal_global_730];
    v9 = [v7 view];
    v10 = [v9 _accessibilityLeafDescendantsWithCount:1 options:v8];
    v11 = *(*(a1 + 32) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

- (int64_t)_accessibilityScannerActivateBehavior
{
  v3 = [(MessageListCollectionViewCellAccessibility *)self safeValueForKeyPath:@"cellHelper.cellView"];
  v4 = [v3 safeBoolForKey:@"isEditing"];

  if (v4)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = MessageListCollectionViewCellAccessibility;
  return [(MessageListCollectionViewCellAccessibility *)&v6 _accessibilityScannerActivateBehavior];
}

- (BOOL)_accessibilityIsThreadedChildCell
{
  v3 = [(MessageListCollectionViewCellAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_736 startWithSelf:0];
  LOBYTE(v11) = 0;
  objc_opt_class();
  v4 = __UIAccessibilityCastAsClass();
  v5 = [v4 indexPathForCell:self];
  v6 = [v4 safeValueForKey:@"delegate"];
  NSClassFromString(&cfstr_Messagelistvie_0.isa);
  if (objc_opt_isKindOfClass())
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v9 = v6;
    v10 = v5;
    AXPerformSafeBlock();
    v7 = *(v12 + 24);

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t __79__MessageListCollectionViewCellAccessibility__accessibilityIsThreadedChildCell__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 accessibilityIdentifier];
  v3 = [v2 isEqualToString:*MEMORY[0x29EDC5828]];

  return v3;
}

uint64_t __79__MessageListCollectionViewCellAccessibility__accessibilityIsThreadedChildCell__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) _isExpandedIndexPath:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (unint64_t)_accessibilityThreadCount
{
  v2 = [(MessageListCollectionViewCellAccessibility *)self safeValueForKeyPath:@"cellHelper.messageListItem"];
  v3 = [v2 safeUnsignedIntegerForKey:@"count"];
  if (v3 <= 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (void)_axProcessMailLabel:(id)a3 children:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"cellHelper.cellView.%@", v6];
  v9 = [(MessageListCollectionViewCellAccessibility *)self safeValueForKeyPath:v8];
  v10 = __UIAccessibilitySafeClass();

  [v10 setAccessibilityExposeLabelAsValue:1];
  [v7 axSafelyAddObject:v10];
}

- (id)_accessibilityThreadedDisclosureButton
{
  v2 = [(MessageListCollectionViewCellAccessibility *)self safeValueForKeyPath:@"cellHelper.cellView.disclosureButton"];
  v3 = __UIAccessibilitySafeClass();

  if ([v3 _accessibilityViewIsVisible])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)automationElements
{
  v10.receiver = self;
  v10.super_class = MessageListCollectionViewCellAccessibility;
  v3 = [(MessageListCollectionViewCellAccessibility *)&v10 automationElements];
  v4 = [v3 mutableCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x29EDB8DE8] array];
  }

  v7 = v6;

  [(MessageListCollectionViewCellAccessibility *)self _axProcessMailLabel:@"secondaryLabel" children:v7];
  [(MessageListCollectionViewCellAccessibility *)self _axProcessMailLabel:@"dateLabel" children:v7];
  [(MessageListCollectionViewCellAccessibility *)self _axProcessMailLabel:@"primaryLabel" children:v7];
  [(MessageListCollectionViewCellAccessibility *)self _axProcessMailLabel:@"tertiaryLabel" children:v7];
  v8 = [(MessageListCollectionViewCellAccessibility *)self _accessibilityThreadedDisclosureButton];
  [v7 axSafelyAddObject:v8];

  return v7;
}

- (id)_accessibilityEquivalenceTag
{
  v3 = [(MessageListCollectionViewCellAccessibility *)self safeValueForKeyPath:@"cellHelper.messageListItem.displayMessageObjectID.stringHash"];
  v4 = [(MessageListCollectionViewCellAccessibility *)self _accessibilityLabelWithoutAttributes];
  v5 = [v3 description];

  if (v5)
  {
    v6 = [v3 description];
    v7 = [v4 stringByAppendingString:v6];

    v4 = v7;
  }

  return v4;
}

- (id)_accessibilityLabelWithoutAttributes
{
  v3 = [(MessageListCollectionViewCellAccessibility *)self safeValueForKeyPath:@"cellHelper.cellView.secondaryLabel"];
  v4 = [v3 accessibilityLabel];

  v5 = [(MessageListCollectionViewCellAccessibility *)self safeValueForKeyPath:@"cellHelper.cellView.primaryLabel"];
  v6 = [v5 accessibilityLabel];

  v7 = [v6 componentsSeparatedByString:{@", "}];
  v8 = [v7 count];
  if (v8 >= 3)
  {
    v9 = 3;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v7 subarrayWithRange:{0, v9}];

  v11 = [v10 componentsJoinedByString:{@", "}];

  v12 = [(MessageListCollectionViewCellAccessibility *)self safeValueForKeyPath:@"cellHelper.cellView.dateLabel"];
  v15 = [v12 accessibilityLabel];
  v13 = __UIAXStringForVariables();

  return v13;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = MessageListCollectionViewCellAccessibility;
  [(MessageListCollectionViewCellAccessibility *)&v7 layoutSubviews];
  [(MessageListCollectionViewCellAccessibility *)self setAccessibilityLabel:0];
  [(MessageListCollectionViewCellAccessibility *)self _axSetDisclosureButtonTraits];
  v3 = [(MessageListCollectionViewCellAccessibility *)self _accessibilityMailboxController];
  v4 = [v3 _axGetTriageActionForAnnouncement];

  if (v4)
  {
    [(MessageListCollectionViewCellAccessibility *)self _axPostAnnouncementForActionCompletionIfNecessary];
    v5 = [(MessageListCollectionViewCellAccessibility *)self _accessibilityMailboxController];
    [v5 _axSetTriageActionForAnnouncement:0];
  }

  v6 = [(MessageListCollectionViewCellAccessibility *)self _accessibilityThreadedDisclosureButton];
  [v6 setAccessibilityIdentifier:@"DisclosureButton"];
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = MessageListCollectionViewCellAccessibility;
  [(MessageListCollectionViewCellAccessibility *)&v5 prepareForReuse];
  [(MessageListCollectionViewCellAccessibility *)self _accessibilitySetRetainedValue:0 forKey:@"ApproximateVisibleSummary"];
  [(MessageListCollectionViewCellAccessibility *)self setAccessibilityLabel:0];
  v4 = [(MessageListCollectionViewCellAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_765];
  v3 = v4;
  AXPerformSafeBlock();
}

uint64_t __61__MessageListCollectionViewCellAccessibility_prepareForReuse__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end