@interface DOCItemCollectionCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityScrollToVisible;
- (id)_accessibilityItemCollectionViewController;
- (id)_axAttrTitle;
- (id)_axCustomActionsFromUIMenu:(id)a3;
- (id)accessibilityCustomActions;
- (id)accessibilityIdentifier;
- (unint64_t)accessibilityTraits;
@end

@implementation DOCItemCollectionCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UICollectionViewCell" isKindOfClass:@"UICollectionReusableView"];
  [v3 validateClass:@"UICollectionReusableView" hasInstanceMethod:@"_collectionView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"DocumentManagerExecutables.DOCItemCollectionCell" hasInstanceMethod:@"accessibilityCellManager" withFullSignature:{"@", 0}];
  [v3 validateClass:@"DocumentManagerExecutables.DOCItemCollectionCellContent" hasInstanceMethod:@"accessibilityItem" withFullSignature:{"@", 0}];
  [v3 validateClass:@"DocumentManagerExecutables.DOCItemCollectionCell" isKindOfClass:@"UICollectionViewCell"];
  [v3 validateClass:@"DocumentManagerExecutables.DOCItemCollectionCell" hasInstanceMethod:@"accessibilityCellManager" withFullSignature:{"@", 0}];
  [v3 validateClass:@"DocumentManagerExecutables.DOCItemCollectionCell" hasInstanceMethod:@"accessibilityTitleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"DocumentManagerExecutables.DOCItemCollectionCell" hasInstanceMethod:@"accessibilityIsRenaming" withFullSignature:{"B", 0}];
  [v3 validateClass:@"DocumentManagerExecutables.DOCItemCollectionCellContent" hasInstanceMethod:@"accessibilityShouldDim" withFullSignature:{"B", 0}];
  [v3 validateClass:@"DocumentManagerExecutables.DOCItemCollectionViewController" hasInstanceMethod:@"accessibilityIsRenamingInline" withFullSignature:{"B", 0}];
  [v3 validateClass:@"DocumentManagerExecutables.DOCItemCollectionViewController" conformsToProtocol:@"UIContextMenuInteractionDelegate"];
  [v3 validateClass:@"DocumentManagerExecutables.DOCItemCollectionViewController" hasInstanceMethod:@"contextMenuForItemsAt:" withFullSignature:{"@", "@", 0}];
  [v3 validateClass:@"DocumentManagerExecutables.DOCItemCollectionViewController" hasInstanceMethod:@"contextMenuForFolder" withFullSignature:{"@", 0}];
}

- (id)accessibilityIdentifier
{
  v3 = [(DOCItemCollectionCellAccessibility *)self safeValueForKey:@"accessibilityCellManager"];
  v4 = [v3 safeValueForKey:@"accessibilityItem"];
  v5 = __UIAccessibilitySafeClass();

  v6 = [(DOCItemCollectionCellAccessibility *)self _axAttrTitle];
  v7 = [v6 string];

  v8 = [v5 filename];
  v9 = [v8 pathExtension];
  if ([v5 folderType] == 1)
  {
    v10 = [v5 fp_appContainerBundleIdentifier];
    v11 = __UIAXStringForVariables();
  }

  else
  {
    v11 = __UIAXStringForVariables();
  }

  return v11;
}

- (id)_axAttrTitle
{
  objc_opt_class();
  v3 = [(DOCItemCollectionCellAccessibility *)self safeValueForKey:@"accessibilityTitleLabel"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 attributedText];

  return v5;
}

- (id)_axCustomActionsFromUIMenu:(id)a3
{
  v44 = *MEMORY[0x29EDCA608];
  v3 = a3;
  v30 = [MEMORY[0x29EDB8DE8] array];
  v4 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v22 = v3;
  obj = [v3 safeArrayForKey:@"children"];
  v25 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v25)
  {
    v24 = *v39;
    do
    {
      v5 = 0;
      do
      {
        if (*v39 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v5;
        v6 = [*(*(&v38 + 1) + 8 * v5) safeArrayForKey:@"children"];
        v27 = [objc_alloc(MEMORY[0x29EDBA0F0]) initWithKey:@"title" ascending:1];
        [MEMORY[0x29EDB8D80] arrayWithObject:?];
        v26 = v28 = v6;
        v7 = [v6 sortedArrayUsingDescriptors:?];
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v35;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v35 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v34 + 1) + 8 * i);
              v33 = 0;
              objc_opt_class();
              v14 = __UIAccessibilityCastAsClass();
              if (v33 == 1)
              {
                abort();
              }

              v15 = v14;
              if (v14)
              {
                v16 = [v14 title];
                if ([v16 length] && (objc_msgSend(v4, "containsObject:", v16) & 1) == 0)
                {
                  v17 = [AXDocumentCustomAction alloc];
                  v31[0] = MEMORY[0x29EDCA5F8];
                  v31[1] = 3221225472;
                  v31[2] = __65__DOCItemCollectionCellAccessibility__axCustomActionsFromUIMenu___block_invoke;
                  v31[3] = &unk_29F2BB930;
                  v18 = v15;
                  v32 = v18;
                  v19 = [(AXDocumentCustomAction *)v17 initWithName:v16 actionHandler:v31];
                  [(AXDocumentCustomAction *)v19 setAction:v18];
                  [v30 addObject:v19];
                  [v4 addObject:v16];
                }
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v34 objects:v42 count:16];
          }

          while (v10);
        }

        v5 = v29 + 1;
      }

      while (v29 + 1 != v25);
      v25 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v25);
  }

  v20 = *MEMORY[0x29EDCA608];

  return v30;
}

uint64_t __65__DOCItemCollectionCellAccessibility__axCustomActionsFromUIMenu___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  AXPerformSafeBlock();

  return 1;
}

- (unint64_t)accessibilityTraits
{
  v3 = [(DOCItemCollectionCellAccessibility *)self safeValueForKey:@"accessibilityCellManager"];
  v4 = [v3 safeBoolForKey:@"accessibilityShouldDim"];

  if (v4)
  {
    v7.receiver = self;
    v7.super_class = DOCItemCollectionCellAccessibility;
    return *MEMORY[0x29EDC7FA8] | [(DOCItemCollectionCellAccessibility *)&v7 accessibilityTraits];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = DOCItemCollectionCellAccessibility;
    return [(DOCItemCollectionCellAccessibility *)&v6 accessibilityTraits];
  }
}

- (id)accessibilityCustomActions
{
  v3 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%p-_accessibilityCustomActions", self];
  v4 = MEMORY[0x29EDC7300];
  v5 = [*MEMORY[0x29EDC7300] objectForKeyedSubscript:v3];

  if (v5)
  {
    v6 = [*v4 objectForKeyedSubscript:v3];
  }

  else if (-[DOCItemCollectionCellAccessibility safeBoolForKey:](self, "safeBoolForKey:", @"accessibilityIsRenaming") & 1) != 0 || (-[DOCItemCollectionCellAccessibility safeValueForKey:](self, "safeValueForKey:", @"_collectionView"), v7 = objc_claimAutoreleasedReturnValue(), [v7 _accessibilityViewController], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "safeBoolForKey:", @"accessibilityIsRenamingInline"), v8, v7, (v9))
  {
    v6 = MEMORY[0x29EDB8E90];
  }

  else
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy_;
    v16 = __Block_byref_object_dispose_;
    v17 = 0;
    AXPerformSafeBlock();
    if (v13[5])
    {
      v6 = [MEMORY[0x29EDB8DE8] array];
      v10 = [(DOCItemCollectionCellAccessibility *)self _axCustomActionsFromUIMenu:v13[5]];
      [v6 addObjectsFromArray:v10];

      [*v4 setObject:v6 forKeyedSubscript:v3];
    }

    else
    {
      v6 = MEMORY[0x29EDB8E90];
    }

    _Block_object_dispose(&v12, 8);
  }

  return v6;
}

void __64__DOCItemCollectionCellAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  v20[1] = *MEMORY[0x29EDCA608];
  v2 = [*(a1 + 32) _accessibilityAncestorIsKindOf:objc_opt_class()];
  if (v2)
  {
    LOBYTE(v14) = 0;
    objc_opt_class();
    v3 = *(a1 + 32);
    v4 = __UIAccessibilityCastAsClass();
    v5 = [*(a1 + 32) _accessibilityItemCollectionViewController];
    if (objc_opt_respondsToSelector())
    {
      v6 = [v4 _accessibilityIndexPath];
      v20[0] = v6;
      v7 = [MEMORY[0x29EDB8D80] arrayWithObjects:v20 count:1];

      v14 = 0;
      v15 = &v14;
      v16 = 0x3032000000;
      v17 = __Block_byref_object_copy_;
      v18 = __Block_byref_object_dispose_;
      v19 = 0;
      v12 = v5;
      v13 = v7;
      AXPerformSafeBlock();
      v8 = v15[5];

      _Block_object_dispose(&v14, 8);
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }
  }

  v11 = *MEMORY[0x29EDCA608];
}

uint64_t __64__DOCItemCollectionCellAccessibility_accessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) contextMenuForItemsAt:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

- (id)_accessibilityItemCollectionViewController
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 _accessibilityFindViewAncestor:&__block_literal_global startWithSelf:1];
  v4 = [v3 _accessibilityViewController];

  return v4;
}

uint64_t __80__DOCItemCollectionCellAccessibility__accessibilityItemCollectionViewController__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  NSClassFromString(&cfstr_Documentmanage_1.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)accessibilityScrollToVisible
{
  v9 = 0;
  objc_opt_class();
  v3 = [(DOCItemCollectionCellAccessibility *)self safeValueForKey:@"_collectionView"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 scrollViewWillBeginDragging:v4];
  }

  v8.receiver = self;
  v8.super_class = DOCItemCollectionCellAccessibility;
  v6 = [(DOCItemCollectionCellAccessibility *)&v8 accessibilityScrollToVisible];

  return v6;
}

@end