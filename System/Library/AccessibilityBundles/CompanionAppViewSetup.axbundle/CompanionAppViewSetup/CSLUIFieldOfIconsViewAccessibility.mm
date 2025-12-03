@interface CSLUIFieldOfIconsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityScrollToChild:(id)child animated:(BOOL)animated;
- (BOOL)accessibilityScrollDownPage;
- (BOOL)accessibilityScrollUpPage;
- (CGSize)_accessibilityScrollSize;
- (Hex)_axHexForIconView:(id)view;
- (id)_accessibilityHitTestSubviews;
- (id)accessibilityElements;
- (void)_accessibilityAnnounceUpdatedPositionForElement:(id)element;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityMoveElement:(id)element left:(BOOL)left;
- (void)_accessibilityMoveIconLeft:(id)left;
- (void)_accessibilityMoveIconRight:(id)right;
- (void)_accessibilityStartJiggleMode:(id)mode;
- (void)_axUpdateIconElements;
- (void)hexAppGraph:(id)graph addedNodes:(id)nodes removedNodes:(id)removedNodes movedNodes:(id)movedNodes;
@end

@implementation CSLUIFieldOfIconsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CSLUIFieldOfIconsView" hasInstanceMethod:@"hexAppGraph: addedNodes: removedNodes: movedNodes:" withFullSignature:{"v", "@", "@", "@", "@", 0}];
  [validationsCopy validateClass:@"CSLUIFieldOfIconsView" hasInstanceMethod:@"contentOffsetToCenterHex:" withFullSignature:{"{CGPoint=dd}", "{Hex=ii}", 0}];
  [validationsCopy validateClass:@"CSLUIIconView" hasInstanceMethod:@"node" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CSLHexAppNode" hasInstanceMethod:@"hex" withFullSignature:{"{Hex=ii}", 0}];
  [validationsCopy validateClass:@"CSLUIFieldOfIconsView" hasInstanceMethod:@"setContentOffset:animated:" withFullSignature:{"v", "{CGPoint=dd}", "B", 0}];
  [validationsCopy validateClass:@"CSLUIFieldOfIconsView" hasInstanceMethod:@"isEditing" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CSLUIFieldOfIconsView" hasInstanceMethod:@"setLayout: percentComplete: animated: options:" withFullSignature:{"v", "@", "d", "B", "Q", 0}];
  [validationsCopy validateClass:@"CSLUIFieldOfIconsView" hasInstanceMethod:@"inertialUpdater:willDecelerateWithTarget:" withFullSignature:{"{CGPoint=dd}", "@", "{CGPoint=dd}", 0}];
  [validationsCopy validateClass:@"CSLUIFieldOfIconsView" hasInstanceVariable:@"_inertialUpdater" withType:"CSLUIInertialUpdater"];
  [validationsCopy validateClass:@"CSLUIInertialUpdater" hasInstanceMethod:@"addDragDelta:" withFullSignature:{"v", "{CGPoint=dd}", 0}];
  [validationsCopy validateClass:@"CSLUIFieldOfIconsView" hasInstanceVariable:@"_didPanDrag" withType:"B"];
  [validationsCopy validateClass:@"CSLHexAppGraph" hasInstanceMethod:@"moveNode: toHex: final:" withFullSignature:{"v", "@", "{Hex=ii}", "B", 0}];
  [validationsCopy validateClass:@"CSLUIFieldOfIconsView" hasInstanceVariable:@"_iconGraph" withType:"CSLHexAppGraph"];
  [validationsCopy validateClass:@"CSLUIFieldOfIconsView" hasInstanceVariable:@"_actionDelegate" withType:"<CSLUIHexIconActionDelegate>"];
  [validationsCopy validateProtocol:@"CSLUIHexIconActionDelegate" hasMethod:@"handleLongPress" isInstanceMethod:1 isRequired:1];
}

- (BOOL)_accessibilityScrollToChild:(id)child animated:(BOOL)animated
{
  childCopy = child;
  NSSelectorFromString(&cfstr_Node.isa);
  v5 = objc_opt_respondsToSelector();
  if (v5)
  {
    v7 = childCopy;
    AXPerformSafeBlock();
  }

  return v5 & 1;
}

uint64_t __75__CSLUIFieldOfIconsViewAccessibility__accessibilityScrollToChild_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) contentOffsetToCenterHex:{objc_msgSend(*(a1 + 32), "_axHexForIconView:", *(a1 + 40))}];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 setContentOffset:v3 animated:?];
}

- (CGSize)_accessibilityScrollSize
{
  [(CSLUIFieldOfIconsViewAccessibility *)self bounds];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (BOOL)accessibilityScrollUpPage
{
  [(CSLUIFieldOfIconsViewAccessibility *)self safeCGPointForKey:@"_contentOffset"];
  if (v4 == 0.0)
  {
    v13 = MEMORY[0x29EDCA5F8];
    v14 = 3221225472;
    v15 = __63__CSLUIFieldOfIconsViewAccessibility_accessibilityScrollUpPage__block_invoke;
    v16 = &unk_29F2B4588;
    selfCopy = self;
    v18 = v3;
    v19 = v4;
  }

  else
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x3010000000;
    v9 = &unk_29BD0F7F6;
    v10 = 0;
    v11 = 0;
    AXPerformSafeBlock();
    v12 = *(v7 + 2);
    _Block_object_dispose(&v6, 8);
  }

  AXPerformSafeBlock();
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], *MEMORY[0x29EDBDB28]);
  return 1;
}

uint64_t __63__CSLUIFieldOfIconsViewAccessibility_accessibilityScrollUpPage__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  [v1 _accessibilityScrollSize];
  v4 = -v3;

  return [v1 setContentOffset:0 animated:{v2, v4}];
}

uint64_t __63__CSLUIFieldOfIconsViewAccessibility_accessibilityScrollUpPage__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  [v2 _accessibilityScrollSize];
  result = [v2 inertialUpdater:0 willDecelerateWithTarget:{0.0, -v3}];
  v5 = *(*(a1 + 40) + 8);
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  return result;
}

void __63__CSLUIFieldOfIconsViewAccessibility_accessibilityScrollUpPage__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"_inertialUpdater"];
  [v2 addDragDelta:{*(a1 + 40), *(a1 + 48)}];
}

- (BOOL)accessibilityScrollDownPage
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3010000000;
  v6 = &unk_29BD0F7F6;
  v7 = 0;
  v8 = 0;
  AXPerformSafeBlock();
  v9 = *(v4 + 2);
  _Block_object_dispose(&v3, 8);
  AXPerformSafeBlock();
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], *MEMORY[0x29EDBDB28]);
  return 1;
}

uint64_t __65__CSLUIFieldOfIconsViewAccessibility_accessibilityScrollDownPage__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [v2 _accessibilityScrollSize];
  result = [v2 inertialUpdater:0 willDecelerateWithTarget:0.0];
  v4 = *(*(a1 + 40) + 8);
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  return result;
}

void __65__CSLUIFieldOfIconsViewAccessibility_accessibilityScrollDownPage__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"_inertialUpdater"];
  [v2 addDragDelta:{*(a1 + 40), *(a1 + 48)}];
}

- (Hex)_axHexForIconView:(id)view
{
  v3 = [view safeValueForKey:@"node"];
  v4 = [v3 safeIvarForKey:@"_hex"];

  if (v4)
  {
    return *v4;
  }

  else
  {
    return 0;
  }
}

- (void)_axUpdateIconElements
{
  v40 = *MEMORY[0x29EDCA608];
  if (([(CSLUIFieldOfIconsViewAccessibility *)self safeBoolForKey:@"_didPanDrag"]& 1) == 0)
  {
    v3 = [(CSLUIFieldOfIconsViewAccessibility *)self safeValueForKey:@"_iconViewDict"];
    allValues = [v3 allValues];
    v36[0] = MEMORY[0x29EDCA5F8];
    v36[1] = 3221225472;
    v36[2] = __59__CSLUIFieldOfIconsViewAccessibility__axUpdateIconElements__block_invoke;
    v36[3] = &unk_29F2B45D8;
    v36[4] = self;
    v5 = [allValues sortedArrayUsingComparator:v36];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v5;
    v6 = [obj countByEnumeratingWithState:&v32 objects:v39 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v33;
      v9 = @"isEditing";
      v10 = 0x29EDC7000uLL;
      do
      {
        v11 = 0;
        v30 = sel__accessibilityMoveIconRight_;
        do
        {
          if (*v33 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v32 + 1) + 8 * v11);
          v13 = [(CSLUIFieldOfIconsViewAccessibility *)self safeBoolForKey:v9, v30];
          v14 = objc_alloc(*(v10 + 2272));
          if (v13)
          {
            v15 = accessibilityLocalizedString(@"app.move.left");
            v16 = [v14 initWithName:v15 target:self selector:sel__accessibilityMoveIconLeft_];

            [v16 _accessibilitySetAssignedValue:v12 forKey:@"kAXOwningElement"];
            v17 = objc_alloc(*(v10 + 2272));
            accessibilityLocalizedString(@"app.move.right");
            v18 = v7;
            v19 = v8;
            v20 = v10;
            v22 = v21 = v9;
            v23 = [v17 initWithName:v22 target:self selector:v30];

            [v23 _accessibilitySetAssignedValue:v12 forKey:@"kAXOwningElement"];
            v38[0] = v16;
            v38[1] = v23;
            v24 = [MEMORY[0x29EDB8D80] arrayWithObjects:v38 count:2];
            [v12 setAccessibilityCustomActions:v24];

            v9 = v21;
            v10 = v20;
            v8 = v19;
            v7 = v18;
          }

          else
          {
            v25 = accessibilityLocalizedString(@"apps.arrange");
            v16 = [v14 initWithName:v25 target:self selector:sel__accessibilityStartJiggleMode_];

            v37 = v16;
            v26 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v37 count:1];
            [v12 setAccessibilityCustomActions:v26];

            [v16 _accessibilitySetAssignedValue:v12 forKey:@"kAXOwningElement"];
          }

          ++v11;
        }

        while (v7 != v11);
        v7 = [obj countByEnumeratingWithState:&v32 objects:v39 count:16];
      }

      while (v7);
    }

    v27 = [obj mutableCopy];
    [(CSLUIFieldOfIconsViewAccessibility *)self _accessibilitySetRetainedValue:v27 forKey:@"AccessibilityElementsKey"];
    _accessibilityFirstElementForFocus = [(CSLUIFieldOfIconsViewAccessibility *)self _accessibilityFirstElementForFocus];
    [_accessibilityFirstElementForFocus _setAccessibilityServesAsFirstElement:1];

    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }

  v29 = *MEMORY[0x29EDCA608];
}

uint64_t __59__CSLUIFieldOfIconsViewAccessibility__axUpdateIconElements__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 _axHexForIconView:a2];
  v8 = v7;
  v9 = HIDWORD(v7);
  v10 = [*(a1 + 32) _axHexForIconView:v6];

  if ((SHIDWORD(v10) + -0.00000011921) > v9)
  {
    return -1;
  }

  if ((SHIDWORD(v10) + 0.00000011921) < v9)
  {
    return 1;
  }

  if ((v10 + -0.00000011921) <= v8)
  {
    if ((v10 + 0.00000011921) >= v8)
    {
      return 0;
    }

    v12 = [*(a1 + 32) _accessibilityIsRTL] == 0;
    v13 = -1;
  }

  else
  {
    v12 = [*(a1 + 32) _accessibilityIsRTL] == 0;
    v13 = 1;
  }

  if (v12)
  {
    return -v13;
  }

  else
  {
    return v13;
  }
}

- (id)accessibilityElements
{
  v3 = [(CSLUIFieldOfIconsViewAccessibility *)self _accessibilityValueForKey:@"AccessibilityElementsKey"];
  if (!v3)
  {
    [(CSLUIFieldOfIconsViewAccessibility *)self _axUpdateIconElements];
    v3 = [(CSLUIFieldOfIconsViewAccessibility *)self _accessibilityValueForKey:@"AccessibilityElementsKey"];
  }

  return v3;
}

- (void)hexAppGraph:(id)graph addedNodes:(id)nodes removedNodes:(id)removedNodes movedNodes:(id)movedNodes
{
  v7.receiver = self;
  v7.super_class = CSLUIFieldOfIconsViewAccessibility;
  [(CSLUIFieldOfIconsViewAccessibility *)&v7 hexAppGraph:graph addedNodes:nodes removedNodes:removedNodes movedNodes:movedNodes];
  [(CSLUIFieldOfIconsViewAccessibility *)self _axUpdateIconElements];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = CSLUIFieldOfIconsViewAccessibility;
  [(CSLUIFieldOfIconsViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(CSLUIFieldOfIconsViewAccessibility *)self _axUpdateIconElements];
}

- (id)_accessibilityHitTestSubviews
{
  v18 = *MEMORY[0x29EDCA608];
  array = [MEMORY[0x29EDB8DE8] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  objc_opt_class();
  v4 = [(CSLUIFieldOfIconsViewAccessibility *)self safeValueForKey:@"subviews"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        subviews = [*(*(&v13 + 1) + 8 * i) subviews];
        if (subviews)
        {
          [array addObjectsFromArray:subviews];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x29EDCA608];

  return array;
}

- (void)_accessibilityStartJiggleMode:(id)mode
{
  v4 = [(CSLUIFieldOfIconsViewAccessibility *)self safeValueForKey:@"_actionDelegate"];
  v3 = [v4 safeValueForKey:@"handleLongPress"];
}

- (void)_accessibilityMoveElement:(id)element left:(BOOL)left
{
  leftCopy = left;
  elementCopy = element;
  accessibilityElements = [(CSLUIFieldOfIconsViewAccessibility *)self accessibilityElements];
  v8 = [accessibilityElements indexOfObject:elementCopy];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v8;
    if (v8 && leftCopy)
    {
      v10 = v8 - 1;
    }

    else
    {
      if (leftCopy || v8 >= [accessibilityElements count] - 1)
      {
        goto LABEL_10;
      }

      v10 = v9 + 1;
    }

    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [elementCopy safeValueForKey:@"node"];
      v12 = [accessibilityElements objectAtIndex:v10];
      [(CSLUIFieldOfIconsViewAccessibility *)self _axHexForIconView:v12];

      v16 = v11;
      v13 = v11;
      AXPerformSafeBlock();
      v14 = [(CSLUIFieldOfIconsViewAccessibility *)self safeValueForKey:@"_iconGraph"];
      v15 = [v14 safeValueForKey:@"commitMove"];
    }
  }

LABEL_10:
  [(CSLUIFieldOfIconsViewAccessibility *)self accessibilityScrollToVisibleWithChild:elementCopy];
  [(CSLUIFieldOfIconsViewAccessibility *)self _accessibilityAnnounceUpdatedPositionForElement:elementCopy];
}

void __69__CSLUIFieldOfIconsViewAccessibility__accessibilityMoveElement_left___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"_iconGraph"];
  [v2 moveNode:*(a1 + 40) toHex:*(a1 + 48) final:1];
}

- (void)_accessibilityMoveIconLeft:(id)left
{
  v4 = [left _accessibilityValueForKey:@"kAXOwningElement"];
  [(CSLUIFieldOfIconsViewAccessibility *)self _accessibilityMoveElement:v4 left:1];
}

- (void)_accessibilityMoveIconRight:(id)right
{
  v4 = [right _accessibilityValueForKey:@"kAXOwningElement"];
  [(CSLUIFieldOfIconsViewAccessibility *)self _accessibilityMoveElement:v4 left:0];
  [(CSLUIFieldOfIconsViewAccessibility *)self accessibilityScrollToVisibleWithChild:v4];
  [(CSLUIFieldOfIconsViewAccessibility *)self _accessibilityAnnounceUpdatedPositionForElement:v4];
}

- (void)_accessibilityAnnounceUpdatedPositionForElement:(id)element
{
  elementCopy = element;
  accessibilityElements = [(CSLUIFieldOfIconsViewAccessibility *)self accessibilityElements];
  v5 = [accessibilityElements indexOfObject:elementCopy];

  if (v5 < [accessibilityElements count] - 1)
  {
    v6 = MEMORY[0x29EDBA0F8];
    v7 = accessibilityLocalizedString(@"app.moved.before");
    v8 = [accessibilityElements objectAtIndex:v5 + 1];
    accessibilityLabel = [v8 accessibilityLabel];
    v10 = [v6 stringWithFormat:v7, accessibilityLabel];

    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v10 = 0;
  if (v5)
  {
LABEL_5:
    v11 = MEMORY[0x29EDBA0F8];
    v12 = accessibilityLocalizedString(@"app.moved.after");
    v13 = [accessibilityElements objectAtIndex:v5 - 1];
    accessibilityLabel2 = [v13 accessibilityLabel];
    v5 = [v11 stringWithFormat:v12, accessibilityLabel2];
  }

LABEL_6:
  if ([v5 length] || objc_msgSend(v10, "length"))
  {
    v15 = *MEMORY[0x29EDC7EA8];
    v16 = __UIAXStringForVariables();
    UIAccessibilityPostNotification(v15, v16);
  }
}

@end