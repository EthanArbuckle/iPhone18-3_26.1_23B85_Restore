@interface CKPinnedConversationCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityParentCollectionView;
- (id)_accessibilityPinnedView;
- (id)accessibilityCustomActions;
- (id)accessibilityDragSourceDescriptors;
- (id)accessibilityDropPointDescriptors;
- (id)accessibilityLabel;
@end

@implementation CKPinnedConversationCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UICollectionView" hasProperty:@"delegate" withType:"@"];
  [validationsCopy validateClass:@"CKConversationListCollectionViewController" hasInstanceMethod:@"dataSource" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKPinnedConversationCollectionViewCell" hasInstanceMethod:@"pinnedConversationView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CKConversationListCollectionViewController" hasInstanceMethod:@"_singleSelectionMenuInCollectionView:indexPaths:point:" withFullSignature:{"@", "@", "@", "{CGPoint=dd}", 0}];
  [validationsCopy validateClass:@"CKConversationListCollectionViewController" hasInstanceMethod:@"conversationForItemIdentifier:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"CKConversationListCollectionViewController" hasInstanceMethod:@"togglePinStateForConversation:withReason:" withFullSignature:{"v", "@", "@", 0}];
  [validationsCopy validateClass:@"CKConversation" hasInstanceMethod:@"pinnedConversationDisplayNamePreferringShortName:" withFullSignature:{"@", "B", 0}];
  [validationsCopy validateClass:@"CKPinnedConversationCollectionViewCell" isKindOfClass:@"UICollectionViewCell"];
  [validationsCopy validateClass:@"UICollectionView" hasInstanceVariable:@"_dragAndDropController" withType:"_UICollectionViewDragAndDropController"];
  [validationsCopy validateClass:@"_UICollectionViewDragSourceController"];
}

- (id)accessibilityCustomActions
{
  v73 = *MEMORY[0x29EDCA608];
  array = [MEMORY[0x29EDB8DE8] array];
  v71.receiver = self;
  v71.super_class = CKPinnedConversationCollectionViewCellAccessibility;
  accessibilityCustomActions = [(CKPinnedConversationCollectionViewCellAccessibility *)&v71 accessibilityCustomActions];
  [array axSafelyAddObjectsFromArray:accessibilityCustomActions];

  _accessibilityIndexPath = [(CKPinnedConversationCollectionViewCellAccessibility *)self _accessibilityIndexPath];
  if (_accessibilityIndexPath)
  {
    v4 = [(CKPinnedConversationCollectionViewCellAccessibility *)self _accessibilityViewAncestorIsKindOf:objc_opt_class()];
    v5 = [v4 safeValueForKey:@"delegate"];
    LOBYTE(v65) = 0;
    objc_opt_class();
    v6 = [v5 safeValueForKey:@"dataSource"];
    v33 = __UIAccessibilityCastAsClass();

    v30 = [v33 itemIdentifierForIndexPath:_accessibilityIndexPath];
    array2 = [MEMORY[0x29EDB8DE8] array];
    v65 = 0;
    v66 = &v65;
    v67 = 0x3032000000;
    v68 = __Block_byref_object_copy__11;
    v69 = __Block_byref_object_dispose__11;
    v70 = 0;
    v57 = MEMORY[0x29EDCA5F8];
    v58 = 3221225472;
    v59 = __81__CKPinnedConversationCollectionViewCellAccessibility_accessibilityCustomActions__block_invoke;
    v60 = &unk_29F2B0980;
    v64 = &v65;
    v8 = v5;
    v61 = v8;
    v29 = v4;
    v62 = v29;
    v63 = _accessibilityIndexPath;
    AXPerformSafeBlock();
    v32 = v66[5];

    _Block_object_dispose(&v65, 8);
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    children = [v32 children];
    v10 = [children countByEnumeratingWithState:&v53 objects:v72 count:16];
    if (v10)
    {
      v11 = *v54;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v54 != v11)
          {
            objc_enumerationMutation(children);
          }

          v13 = *(*(&v53 + 1) + 8 * i);
          title = [v13 title];
          v15 = [title isEqualToString:@"Internal"];

          if ((v15 & 1) == 0)
          {
            children2 = [v13 children];
            [array2 axSafelyAddObjectsFromArray:children2];
          }
        }

        v10 = [children countByEnumeratingWithState:&v53 objects:v72 count:16];
      }

      while (v10);
    }

    v65 = 0;
    v66 = &v65;
    v67 = 0x3032000000;
    v68 = __Block_byref_object_copy__11;
    v69 = __Block_byref_object_dispose__11;
    v70 = 0;
    v46 = MEMORY[0x29EDCA5F8];
    v47 = 3221225472;
    v48 = __81__CKPinnedConversationCollectionViewCellAccessibility_accessibilityCustomActions__block_invoke_2;
    v49 = &unk_29F2B09A8;
    v52 = &v65;
    v50 = v8;
    v31 = v30;
    v51 = v31;
    AXPerformSafeBlock();
    v17 = v66[5];

    _Block_object_dispose(&v65, 8);
    v45 = 0;
    objc_opt_class();
    v65 = 0;
    v66 = &v65;
    v67 = 0x3032000000;
    v68 = __Block_byref_object_copy__11;
    v69 = __Block_byref_object_dispose__11;
    v70 = 0;
    v39 = MEMORY[0x29EDCA5F8];
    v40 = 3221225472;
    v41 = __81__CKPinnedConversationCollectionViewCellAccessibility_accessibilityCustomActions__block_invoke_3;
    v42 = &unk_29F2B06F8;
    v44 = &v65;
    v43 = v17;
    AXPerformSafeBlock();
    v18 = v66[5];

    _Block_object_dispose(&v65, 8);
    v19 = __UIAccessibilityCastAsClass();

    v20 = objc_alloc(MEMORY[0x29EDC78E0]);
    v21 = MEMORY[0x29EDBA0F8];
    v22 = accessibilityLocalizedString(@"unpin.action.title");
    v23 = [v21 stringWithFormat:v22, v19];
    v36[0] = MEMORY[0x29EDCA5F8];
    v36[1] = 3221225472;
    v36[2] = __81__CKPinnedConversationCollectionViewCellAccessibility_accessibilityCustomActions__block_invoke_4;
    v36[3] = &unk_29F2B09D0;
    v37 = v50;
    v38 = v43;
    v24 = v43;
    v25 = v50;
    v26 = [v20 initWithName:v23 actionHandler:v36];

    [array axSafelyAddObject:v26];
    v27 = _AXCustomActionsForActions(array2);
    [array axSafelyAddObjectsFromArray:v27];
  }

  return array;
}

void __81__CKPinnedConversationCollectionViewCellAccessibility_accessibilityCustomActions__block_invoke(void *a1)
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

uint64_t __81__CKPinnedConversationCollectionViewCellAccessibility_accessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) conversationForItemIdentifier:*(a1 + 40)];

  return MEMORY[0x2A1C71028]();
}

uint64_t __81__CKPinnedConversationCollectionViewCellAccessibility_accessibilityCustomActions__block_invoke_3(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) pinnedConversationDisplayNamePreferringShortName:1];

  return MEMORY[0x2A1C71028]();
}

uint64_t __81__CKPinnedConversationCollectionViewCellAccessibility_accessibilityCustomActions__block_invoke_4(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  AXPerformSafeBlock();

  return 1;
}

- (id)accessibilityLabel
{
  v2 = [(CKPinnedConversationCollectionViewCellAccessibility *)self safeValueForKey:@"pinnedConversationView"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityDragSourceDescriptors
{
  array = [MEMORY[0x29EDB8DE8] array];
  _accessibilityParentCollectionView = [(CKPinnedConversationCollectionViewCellAccessibility *)self _accessibilityParentCollectionView];
  v5 = [_accessibilityParentCollectionView safeValueForKeyPath:@"_dragAndDropController.sourceController"];
  v6 = __UIAccessibilitySafeClass();

  if (v6)
  {
    _accessibilityPinnedView = [(CKPinnedConversationCollectionViewCellAccessibility *)self _accessibilityPinnedView];
    objc_opt_class();
    v8 = __UIAccessibilityCastAsClass();
    [v8 bounds];
    UIRectGetCenter();
    [v8 convertPoint:_accessibilityParentCollectionView toView:?];
    v10 = v9;
    v12 = v11;
    v13 = objc_alloc(MEMORY[0x29EDC7900]);
    v14 = MEMORY[0x29EDBA0F8];
    v15 = accessibilityLocalizedString(@"drag.pinned.cell");
    _axFromString = [_accessibilityPinnedView _axFromString];
    v17 = [v14 stringWithFormat:v15, _axFromString];
    v18 = [v13 initWithName:v17 point:_accessibilityParentCollectionView inView:{v10, v12}];
    [array axSafelyAddObject:v18];
  }

  return array;
}

- (id)accessibilityDropPointDescriptors
{
  array = [MEMORY[0x29EDB8DE8] array];
  _accessibilityParentCollectionView = [(CKPinnedConversationCollectionViewCellAccessibility *)self _accessibilityParentCollectionView];
  if ([_accessibilityParentCollectionView hasActiveDrop])
  {
    _accessibilityPinnedView = [(CKPinnedConversationCollectionViewCellAccessibility *)self _accessibilityPinnedView];
    objc_opt_class();
    v6 = __UIAccessibilityCastAsClass();
    [v6 bounds];
    UIRectGetCenter();
    [v6 convertPoint:_accessibilityParentCollectionView toView:?];
    v8 = v7;
    v10 = v9 + -0.5;
    v11 = objc_alloc(MEMORY[0x29EDC7900]);
    v12 = MEMORY[0x29EDBA0F8];
    v13 = accessibilityLocalizedString(@"drop.before.pinned.cell");
    _axFromString = [_accessibilityPinnedView _axFromString];
    v15 = [v12 stringWithFormat:v13, _axFromString];
    v16 = [v11 initWithName:v15 point:_accessibilityParentCollectionView inView:{v10, v8}];
    [array axSafelyAddObject:v16];

    [v6 bounds];
    UIRectGetCenter();
    [v6 convertPoint:_accessibilityParentCollectionView toView:?];
    v18 = v17;
    v20 = v19 + 0.5;
    v21 = objc_alloc(MEMORY[0x29EDC7900]);
    v22 = MEMORY[0x29EDBA0F8];
    v23 = accessibilityLocalizedString(@"drop.after.pinned.cell");
    _axFromString2 = [_accessibilityPinnedView _axFromString];
    v25 = [v22 stringWithFormat:v23, _axFromString2];
    v26 = [v21 initWithName:v25 point:_accessibilityParentCollectionView inView:{v20, v18}];
    [array axSafelyAddObject:v26];
  }

  return array;
}

- (id)_accessibilityParentCollectionView
{
  v3 = objc_opt_class();

  return [(CKPinnedConversationCollectionViewCellAccessibility *)self _accessibilityViewAncestorIsKindOf:v3];
}

- (id)_accessibilityPinnedView
{
  objc_opt_class();
  v3 = [(CKPinnedConversationCollectionViewCellAccessibility *)self safeValueForKey:@"pinnedConversationView"];
  v4 = __UIAccessibilityCastAsSafeCategory();

  return v4;
}

@end