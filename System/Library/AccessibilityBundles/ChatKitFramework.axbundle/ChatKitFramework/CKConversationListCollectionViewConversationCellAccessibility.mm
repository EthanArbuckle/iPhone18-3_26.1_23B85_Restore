@interface CKConversationListCollectionViewConversationCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityRetainsCustomRotorActionSetting;
- (id)_accessibilityCustomActionGroupIdentifier;
- (id)_privateAccessibilityCustomActions;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setEditingMode:(unint64_t)a3 animated:(BOOL)a4;
@end

@implementation CKConversationListCollectionViewConversationCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKConversationListEmbeddedCollectionViewCell" isKindOfClass:@"UICollectionViewListCell"];
  [v3 validateClass:@"CKConversationListCollectionViewConversationCell" isKindOfClass:@"CKConversationListEmbeddedCollectionViewCell"];
  [v3 validateClass:@"CKConversationListEmbeddedCollectionViewCell" hasInstanceMethod:@"embeddedTableViewCell" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKConversationListEmbeddedCollectionViewCell" hasInstanceMethod:@"setEditingMode:animated:" withFullSignature:{"v", "Q", "B", 0}];
  [v3 validateClass:@"UICollectionViewListCell" hasInstanceMethod:@"trailingEditingAccessoryConfigurations" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKConversationListEmbeddedCollectionViewCell" hasInstanceMethod:@"editingMode" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"_UICellAccessoryConfigurationCustomView" hasInstanceMethod:@"customView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKConversationListCollectionViewConversationCell" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKConversationListCollectionViewController" hasInstanceMethod:@"dataSource" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CKConversationListCollectionViewController" hasInstanceMethod:@"togglePinStateForConversation:withReason:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"CKConversationListCollectionViewController" hasInstanceMethod:@"_singleSelectionMenuInCollectionView:indexPaths:point:" withFullSignature:{"@", "@", "@", "{CGPoint=dd}", 0}];
  [v3 validateClass:@"CKConversationListCollectionViewController" hasInstanceMethod:@"conversationForItemIdentifier:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"CKConversation" hasInstanceMethod:@"pinnedConversationDisplayNamePreferringShortName:" withFullSignature:{"@", "B", 0}];
}

- (id)_privateAccessibilityCustomActions
{
  v91 = *MEMORY[0x29EDCA608];
  v47 = [MEMORY[0x29EDB8DE8] array];
  v88.receiver = self;
  v88.super_class = CKConversationListCollectionViewConversationCellAccessibility;
  v3 = [(CKConversationListCollectionViewConversationCellAccessibility *)&v88 accessibilityCustomActions];
  [v47 axSafelyAddObjectsFromArray:v3];

  v46 = [(CKConversationListCollectionViewConversationCellAccessibility *)self _accessibilityIndexPath];
  if (v46)
  {
    v4 = [(CKConversationListCollectionViewConversationCellAccessibility *)self _accessibilityViewAncestorIsKindOf:objc_opt_class()];
    v5 = [(CKConversationListCollectionViewConversationCellAccessibility *)self safeValueForKey:@"delegate"];
    LOBYTE(v82) = 0;
    objc_opt_class();
    v6 = [v5 safeValueForKey:@"dataSource"];
    v45 = __UIAccessibilityCastAsClass();

    v7 = [v45 itemIdentifierForIndexPath:v46];
    v48 = [MEMORY[0x29EDB8DE8] array];
    v82 = 0;
    v83 = &v82;
    v84 = 0x3032000000;
    v85 = __Block_byref_object_copy__2;
    v86 = __Block_byref_object_dispose__2;
    v87 = 0;
    v74 = MEMORY[0x29EDCA5F8];
    v75 = 3221225472;
    v76 = __99__CKConversationListCollectionViewConversationCellAccessibility__privateAccessibilityCustomActions__block_invoke;
    v77 = &unk_29F2B0980;
    v81 = &v82;
    v8 = v5;
    v78 = v8;
    v41 = v4;
    v79 = v41;
    v80 = v46;
    AXPerformSafeBlock();
    v44 = v83[5];

    _Block_object_dispose(&v82, 8);
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v9 = [v44 children];
    v10 = [v9 countByEnumeratingWithState:&v70 objects:v90 count:16];
    if (v10)
    {
      v11 = *v71;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v71 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v70 + 1) + 8 * i);
          v14 = [v13 title];
          v15 = [v14 isEqualToString:@"Internal"];

          if ((v15 & 1) == 0)
          {
            v16 = [v13 children];
            [v48 axSafelyAddObjectsFromArray:v16];
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v70 objects:v90 count:16];
      }

      while (v10);
    }

    v82 = 0;
    v83 = &v82;
    v84 = 0x3032000000;
    v85 = __Block_byref_object_copy__2;
    v86 = __Block_byref_object_dispose__2;
    v87 = 0;
    v63 = MEMORY[0x29EDCA5F8];
    v64 = 3221225472;
    v65 = __99__CKConversationListCollectionViewConversationCellAccessibility__privateAccessibilityCustomActions__block_invoke_2;
    v66 = &unk_29F2B09A8;
    v69 = &v82;
    v67 = v8;
    v40 = v7;
    v68 = v40;
    AXPerformSafeBlock();
    v17 = v83[5];

    _Block_object_dispose(&v82, 8);
    v62 = 0;
    objc_opt_class();
    v82 = 0;
    v83 = &v82;
    v84 = 0x3032000000;
    v85 = __Block_byref_object_copy__2;
    v86 = __Block_byref_object_dispose__2;
    v87 = 0;
    v56 = MEMORY[0x29EDCA5F8];
    v57 = 3221225472;
    v58 = __99__CKConversationListCollectionViewConversationCellAccessibility__privateAccessibilityCustomActions__block_invoke_3;
    v59 = &unk_29F2B06F8;
    v61 = &v82;
    v60 = v17;
    AXPerformSafeBlock();
    v18 = v83[5];

    _Block_object_dispose(&v82, 8);
    v43 = __UIAccessibilityCastAsClass();

    v19 = objc_alloc(MEMORY[0x29EDC78E0]);
    v20 = MEMORY[0x29EDBA0F8];
    v21 = accessibilityLocalizedString(@"pin.action.title");
    v22 = [v20 stringWithFormat:v21, v43];
    v53[0] = MEMORY[0x29EDCA5F8];
    v53[1] = 3221225472;
    v53[2] = __99__CKConversationListCollectionViewConversationCellAccessibility__privateAccessibilityCustomActions__block_invoke_4;
    v53[3] = &unk_29F2B09D0;
    v38 = v67;
    v54 = v38;
    v39 = v60;
    v55 = v39;
    v42 = [v19 initWithName:v22 actionHandler:v53];

    [v47 axSafelyAddObject:v42];
    v23 = _AXCustomActionsForActions(v48);
    [v47 axSafelyAddObjectsFromArray:v23];

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v24 = v47;
    v25 = [v24 countByEnumeratingWithState:&v49 objects:v89 count:16];
    if (v25)
    {
      v26 = *v50;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v50 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v28 = *(*(&v49 + 1) + 8 * j);
          v29 = [v28 name];
          v30 = accessibilityLocalizedString(@"mute.collection.view.cell");
          v31 = [v29 isEqualToString:v30];

          v32 = @"hide.alerts.collection.view.cell";
          if ((v31 & 1) == 0)
          {
            v33 = [v28 name];
            v34 = accessibilityLocalizedString(@"unmute.collection.view.cell");
            v35 = [v33 isEqualToString:v34];

            v32 = @"show.alerts.collection.view.cell";
            if (!v35)
            {
              continue;
            }
          }

          v36 = accessibilityLocalizedString(v32);
          [v28 setName:v36];
        }

        v25 = [v24 countByEnumeratingWithState:&v49 objects:v89 count:16];
      }

      while (v25);
    }
  }

  return v47;
}

void __99__CKConversationListCollectionViewConversationCellAccessibility__privateAccessibilityCustomActions__block_invoke(void *a1)
{
  v8[1] = *MEMORY[0x29EDCA608];
  v2 = a1[4];
  v3 = a1[5];
  v8[0] = a1[6];
  v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:v8 count:1];
  v5 = [v2 _singleSelectionMenuInCollectionView:v3 indexPaths:v4 point:{0.0, 0.0}];
  v6 = *(a1[7] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

uint64_t __99__CKConversationListCollectionViewConversationCellAccessibility__privateAccessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) conversationForItemIdentifier:*(a1 + 40)];

  return MEMORY[0x2A1C71028]();
}

uint64_t __99__CKConversationListCollectionViewConversationCellAccessibility__privateAccessibilityCustomActions__block_invoke_3(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) pinnedConversationDisplayNamePreferringShortName:1];

  return MEMORY[0x2A1C71028]();
}

uint64_t __99__CKConversationListCollectionViewConversationCellAccessibility__privateAccessibilityCustomActions__block_invoke_4(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  AXPerformSafeBlock();

  return 1;
}

- (id)accessibilityLabel
{
  v3 = [(CKConversationListCollectionViewConversationCellAccessibility *)self safeIntegerForKey:@"editingMode"];
  v4 = [(CKConversationListCollectionViewConversationCellAccessibility *)self _axEmbeddedTableViewCell];
  v5 = [v4 accessibilityLabel];

  if (v3 == 2)
  {
    v8 = accessibilityLocalizedString(@"unpinned.label");
    v6 = __UIAXStringForVariables();

    v5 = v6;
  }

  return v5;
}

- (BOOL)_accessibilityRetainsCustomRotorActionSetting
{
  v2 = [(CKConversationListCollectionViewConversationCellAccessibility *)self _axEmbeddedTableViewCell];
  v3 = [v2 _accessibilityRetainsCustomRotorActionSetting];

  return v3;
}

- (id)_accessibilityCustomActionGroupIdentifier
{
  v2 = [(CKConversationListCollectionViewConversationCellAccessibility *)self _axEmbeddedTableViewCell];
  v3 = [v2 _accessibilityCustomActionGroupIdentifier];

  return v3;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = CKConversationListCollectionViewConversationCellAccessibility;
  [(CKConversationListCollectionViewConversationCellAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(CKConversationListCollectionViewConversationCellAccessibility *)self _axEmbeddedTableViewCell];
  [v3 _accessibilityLoadAccessibilityInformation];
}

- (id)accessibilityUserInputLabels
{
  v2 = [(CKConversationListCollectionViewConversationCellAccessibility *)self _axEmbeddedTableViewCell];
  v3 = [v2 accessibilityUserInputLabels];

  return v3;
}

- (void)setEditingMode:(unint64_t)a3 animated:(BOOL)a4
{
  v9.receiver = self;
  v9.super_class = CKConversationListCollectionViewConversationCellAccessibility;
  [(CKConversationListCollectionViewConversationCellAccessibility *)&v9 setEditingMode:a3 animated:a4];
  if (a3 == 2)
  {
    v6 = [(CKConversationListCollectionViewConversationCellAccessibility *)self safeArrayForKey:@"trailingEditingAccessoryConfigurations"];
    if ([v6 count])
    {
      v7 = [v6 firstObject];
      v8 = [v7 safeValueForKey:@"customView"];
      [v8 setAccessibilityElementsHidden:1];
    }
  }
}

@end