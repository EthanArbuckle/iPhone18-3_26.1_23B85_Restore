@interface SBIconListViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityIsListViewEmptyForDragAndDrop;
- (BOOL)isAccessibilityElement;
- (id)__axDragElements;
- (id)_accessibilityAdditionalElements;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)_accessibilityScannerGroupElements;
- (id)accessibilityDropPointDescriptors;
- (id)accessibilityLabel;
- (id)automationElements;
- (void)_updateEditingStateForIcons:(id)icons animated:(BOOL)animated;
@end

@implementation SBIconListViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBDockIconListView"];
  [validationsCopy validateClass:@"SBIconListView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"SBIconListView" hasInstanceVariable:@"_model" withType:"SBIconListModel"];
  [validationsCopy validateClass:@"SBIconListView" hasInstanceMethod:@"layoutIconsNow" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SBIconListView" hasInstanceMethod:@"iconViewForIcon:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"SBIconListView" hasInstanceMethod:@"isLayoutReversed" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBIconListView" hasInstanceMethod:@"rowAtPoint:" withFullSignature:{"Q", "{CGPoint=dd}", 0}];
  [validationsCopy validateClass:@"SBIconListView" hasInstanceMethod:@"columnAtPoint:" withFullSignature:{"Q", "{CGPoint=dd}", 0}];
  [validationsCopy validateClass:@"SBIconListView" hasInstanceMethod:@"indexForCoordinate:forOrientation:" withFullSignature:{"Q", "{SBIconCoordinate=qq}", "q", 0}];
  [validationsCopy validateClass:@"SBIconListView" hasInstanceMethod:@"iconImageSize" withFullSignature:{"{CGSize=dd}", 0}];
  [validationsCopy validateClass:@"SBIconListModel" hasInstanceMethod:@"iconAtIndex:" withFullSignature:{"@", "Q", 0}];
  [validationsCopy validateClass:@"SBIconListModel"];
  [validationsCopy validateClass:@"SBIconListModel" hasInstanceMethod:@"icons" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBIcon"];
  [validationsCopy validateClass:@"SBIcon" hasInstanceMethod:@"isPlaceholder" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBIconListView" hasInstanceMethod:@"orientation" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"SBIconListView" hasInstanceMethod:@"coordinateForIconAtIndex:" withFullSignature:{"{SBIconCoordinate=qq}", "Q", 0}];
  [validationsCopy validateClass:@"SBIconListView" hasInstanceMethod:@"iconRowsForCurrentOrientation" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"SBIcon" hasInstanceMethod:@"gridSizeClass" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBIconListView" hasInstanceMethod:@"iconGridSizeForClass:" withFullSignature:{"{SBHIconGridSize=SS}", "@", 0}];
  [validationsCopy validateClass:@"SBIconListModel" hasInstanceMethod:@"indexForIcon:" withFullSignature:{"Q", "@", 0}];
  [validationsCopy validateClass:@"SBIconListView" hasInstanceMethod:@"displayedModel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBIconListModel" hasInstanceMethod:@"gridCellInfoWithOptions:" withFullSignature:{"@", "Q", 0}];
  [validationsCopy validateClass:@"SBIconListGridCellInfo" hasInstanceMethod:@"enumerateEmptyGridCellIndexesUsingBlock:" withFullSignature:{"v", "@?", 0}];
  [validationsCopy validateClass:@"SBIconListModel" hasInstanceMethod:@"coordinateForGridCellIndex:gridCellInfoOptions:" withFullSignature:{"{SBIconCoordinate=qq}", "Q", "Q", 0}];
  [validationsCopy validateClass:@"SBIconListView" hasInstanceMethod:@"rectForCellAtIconCoordinate:metrics:" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", "{SBIconCoordinate=qq}", "@", 0}];
  [validationsCopy validateClass:@"SBIconListView" hasInstanceMethod:@"layoutMetrics" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBIconListView" hasInstanceMethod:@"_updateEditingStateForIcons:animated:" withFullSignature:{"v", "@", "B", 0}];
  [validationsCopy validateClass:@"SBRootFolder"];
  [validationsCopy validateClass:@"SBIconListModel" hasInstanceMethod:@"folder" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBIconListView" hasInstanceMethod:@"isEditing" withFullSignature:{"B", 0}];
}

- (id)automationElements
{
  v22 = *MEMORY[0x29EDCA608];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v16 = 0;
  objc_opt_class();
  v3 = [(SBIconListViewAccessibility *)self safeValueForKey:@"_model"];
  v4 = [v3 safeValueForKey:@"icons"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v11 = [(SBIconListViewAccessibility *)self iconViewForIcon:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v12 = [(SBIconListViewAccessibility *)self safeValueForKey:@"layoutIconsNow"];
  v15.receiver = self;
  v15.super_class = SBIconListViewAccessibility;
  automationElements = [(SBIconListViewAccessibility *)&v15 automationElements];

  return automationElements;
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  LOBYTE(v27) = 0;
  objc_opt_class();
  v8 = [(SBIconListViewAccessibility *)self safeValueForKey:@"_model"];
  v9 = [v8 safeValueForKey:@"icons"];
  v10 = __UIAccessibilityCastAsClass();

  LOBYTE(v27) = 0;
  objc_opt_class();
  v11 = __UIAccessibilityCastAsClass();
  v12 = v11;
  if (![v11 pointInside:eventCopy withEvent:{x, y}] || (NSClassFromString(&cfstr_Sbiconlistview_1.isa), (objc_opt_isKindOfClass() & 1) != 0) || !objc_msgSend(v10, "count"))
  {
    v65.receiver = self;
    v65.super_class = SBIconListViewAccessibility;
    v20 = [(SBIconListViewAccessibility *)&v65 _accessibilityHitTest:eventCopy withEvent:x, y];
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v57 = MEMORY[0x29EDCA5F8];
    v58 = 3221225472;
    v59 = __63__SBIconListViewAccessibility__accessibilityHitTest_withEvent___block_invoke;
    v60 = &unk_29F300440;
    selfCopy = self;
    v62 = &v27;
    v63 = x;
    v64 = y;
    AXPerformSafeBlock();
    v21 = v28[3];
    _Block_object_dispose(&v27, 8);
    if (v21)
    {
      goto LABEL_19;
    }

    LOBYTE(v27) = 0;
    objc_opt_class();
    v22 = __UIAccessibilityCastAsClass();
    if (v27 != 1)
    {
      v23 = v22;
      [v22 bounds];
      [v23 convertRect:v12 toView:?];
      if (CGRectGetMinY(v67) > y)
      {

        v20 = 0;
      }

      goto LABEL_18;
    }

    goto LABEL_22;
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v49 = MEMORY[0x29EDCA5F8];
  v50 = 3221225472;
  v51 = __63__SBIconListViewAccessibility__accessibilityHitTest_withEvent___block_invoke_2;
  v52 = &unk_29F300440;
  selfCopy2 = self;
  v54 = &v27;
  v55 = x;
  v56 = y;
  AXPerformSafeBlock();
  v13 = v28[3];
  _Block_object_dispose(&v27, 8);
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v41 = MEMORY[0x29EDCA5F8];
  v42 = 3221225472;
  v43 = __63__SBIconListViewAccessibility__accessibilityHitTest_withEvent___block_invoke_3;
  v44 = &unk_29F300440;
  selfCopy3 = self;
  v46 = &v27;
  v47 = x;
  v48 = y;
  AXPerformSafeBlock();
  v14 = v28[3];
  _Block_object_dispose(&v27, 8);
  if ([(SBIconListViewAccessibility *)self safeBoolForKey:@"isLayoutReversed"])
  {
    window = [(SBIconListViewAccessibility *)self window];
    windowScene = [window windowScene];
    v17 = [windowScene interfaceOrientation] - 3;

    if (v17 > 1)
    {
      LOBYTE(v27) = 0;
      objc_opt_class();
      v24 = [(SBIconListViewAccessibility *)self safeValueForKey:@"icons"];
      v19 = __UIAccessibilityCastAsClass();

      if (v27 != 1)
      {
        v13 = [v19 count] + ~v13;
        goto LABEL_16;
      }
    }

    else
    {
      LOBYTE(v27) = 0;
      objc_opt_class();
      v18 = [(SBIconListViewAccessibility *)self safeValueForKey:@"icons"];
      v19 = __UIAccessibilityCastAsClass();

      if (v27 != 1)
      {
        v14 = [v19 count] + ~v14;
LABEL_16:

        goto LABEL_17;
      }
    }

LABEL_22:
    abort();
  }

LABEL_17:
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v33 = MEMORY[0x29EDCA5F8];
  v34 = 3221225472;
  v35 = __63__SBIconListViewAccessibility__accessibilityHitTest_withEvent___block_invoke_4;
  v36 = &unk_29F300440;
  selfCopy4 = self;
  v38 = &v27;
  v39 = v14;
  v40 = v13;
  AXPerformSafeBlock();
  _Block_object_dispose(&v27, 8);
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__5;
  v31 = __Block_byref_object_dispose__5;
  v32 = 0;
  AXPerformSafeBlock();
  v25 = v28[5];
  _Block_object_dispose(&v27, 8);

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__5;
  v31 = __Block_byref_object_dispose__5;
  v32 = 0;
  v23 = v25;
  AXPerformSafeBlock();
  v20 = v28[5];

  _Block_object_dispose(&v27, 8);
LABEL_18:

LABEL_19:

  return v20;
}

uint64_t __63__SBIconListViewAccessibility__accessibilityHitTest_withEvent___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) rowAtPoint:{*(a1 + 48), *(a1 + 56)}];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __63__SBIconListViewAccessibility__accessibilityHitTest_withEvent___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) columnAtPoint:{*(a1 + 48), *(a1 + 56)}];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __63__SBIconListViewAccessibility__accessibilityHitTest_withEvent___block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) rowAtPoint:{*(a1 + 48), *(a1 + 56)}];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t __63__SBIconListViewAccessibility__accessibilityHitTest_withEvent___block_invoke_4(uint64_t a1)
{
  result = [*(a1 + 32) indexForCoordinate:*(a1 + 48) + 1 forOrientation:{*(a1 + 56) + 1, objc_msgSend(*(a1 + 32), "safeIntegerForKey:", @"_orientation"}];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __63__SBIconListViewAccessibility__accessibilityHitTest_withEvent___block_invoke_408(uint64_t a1)
{
  v5 = [*(a1 + 32) safeValueForKey:@"_model"];
  v2 = [v5 iconAtIndex:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t __63__SBIconListViewAccessibility__accessibilityHitTest_withEvent___block_invoke_2_409(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) iconViewForIcon:*(a1 + 40)];

  return MEMORY[0x2A1C71028]();
}

- (id)_accessibilityScannerGroupElements
{
  v45[2] = *MEMORY[0x29EDCA608];
  array = [MEMORY[0x29EDB8DE8] array];
  v21 = [(SBIconListViewAccessibility *)self safeValueForKey:@"_model"];
  LOBYTE(v33) = 0;
  objc_opt_class();
  v3 = [v21 safeValueForKey:@"icons"];
  v22 = __UIAccessibilityCastAsClass();

  v4 = [(SBIconListViewAccessibility *)self safeUnsignedIntegerForKey:@"iconRowsForCurrentOrientation"];
  if (v4 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    v41[0] = MEMORY[0x29EDCA5F8];
    v41[1] = 3221225472;
    v41[2] = __65__SBIconListViewAccessibility__accessibilityScannerGroupElements__block_invoke;
    v41[3] = &unk_29F300550;
    v41[4] = self;
    v42 = v21;
    v43 = &v33;
    [v22 enumerateObjectsUsingBlock:v41];
    v4 = v34[3];

    _Block_object_dispose(&v33, 8);
  }

  if (v4)
  {
    v19 = MEMORY[0x29EDCA5F8];
    v5 = 1;
    v18 = v30 | 0x6AE1000000000000;
    do
    {
      v38[0] = v19;
      v38[1] = 3221225472;
      v38[2] = __65__SBIconListViewAccessibility__accessibilityScannerGroupElements__block_invoke_3;
      v38[3] = &unk_29F300578;
      v38[4] = self;
      v6 = v21;
      v39 = v6;
      v40 = v5;
      v7 = [v22 ax_filteredArrayUsingBlock:{v38, v18}];
      v8 = [v7 sortedArrayUsingComparator:&__block_literal_global_4];
      firstObject = [v8 firstObject];

      v10 = [firstObject safeStringForKey:@"gridSizeClass"];
      v33 = 0;
      v34 = &v33;
      v35 = 0x2810000000;
      v36 = &unk_29C40BC2F;
      v37 = 0;
      v30[0] = MEMORY[0x29EDCA5F8];
      v30[1] = 3221225472;
      v30[2] = __65__SBIconListViewAccessibility__accessibilityScannerGroupElements__block_invoke_6;
      v30[3] = &unk_29F300310;
      v32 = &v33;
      v30[4] = self;
      v11 = v10;
      v31 = v11;
      AXPerformSafeBlock();
      v12 = *(v34 + 17);

      _Block_object_dispose(&v33, 8);
      v26[0] = MEMORY[0x29EDCA5F8];
      v26[1] = 3221225472;
      v26[2] = __65__SBIconListViewAccessibility__accessibilityScannerGroupElements__block_invoke_7;
      v26[3] = &unk_29F3005C0;
      v26[4] = self;
      v27 = v6;
      v28 = v5;
      v29 = v5 + v12 - 1;
      v13 = [v22 ax_filteredArrayUsingBlock:v26];
      array2 = [MEMORY[0x29EDB8DE8] array];
      v23[0] = MEMORY[0x29EDCA5F8];
      v23[1] = 3221225472;
      v23[2] = __65__SBIconListViewAccessibility__accessibilityScannerGroupElements__block_invoke_9;
      v23[3] = &unk_29F3005E8;
      v24 = array2;
      selfCopy = self;
      v15 = array2;
      [v13 enumerateObjectsUsingBlock:v23];
      v44[0] = @"GroupTraits";
      v44[1] = @"GroupElements";
      v45[0] = &unk_2A2318CF8;
      v45[1] = v15;
      v16 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v45 forKeys:v44 count:2];
      [array axSafelyAddObject:v16];

      v5 += v12;
    }

    while (v5 <= v4);
  }

  return array;
}

void __65__SBIconListViewAccessibility__accessibilityScannerGroupElements__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3010000000;
  v11 = &unk_29C40BC2F;
  v12 = 0;
  v13 = 0;
  v7 = *(a1 + 40);
  v4 = v3;
  AXPerformSafeBlock();
  v5 = v9[5];

  _Block_object_dispose(&v8, 8);
  v6 = *(*(a1 + 48) + 8);
  if (v5 > *(v6 + 24))
  {
    *(v6 + 24) = v5;
  }
}

uint64_t __65__SBIconListViewAccessibility__accessibilityScannerGroupElements__block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) coordinateForIconAtIndex:{objc_msgSend(*(a1 + 40), "indexForIcon:", *(a1 + 48))}];
  v3 = *(*(a1 + 56) + 8);
  *(v3 + 32) = result;
  *(v3 + 40) = v4;
  return result;
}

BOOL __65__SBIconListViewAccessibility__accessibilityScannerGroupElements__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3010000000;
  v12 = &unk_29C40BC2F;
  v13 = 0;
  v14 = 0;
  v7 = *(a1 + 40);
  v8 = v3;
  AXPerformSafeBlock();
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);
  v5 = v4 == *(a1 + 48);

  return v5;
}

uint64_t __65__SBIconListViewAccessibility__accessibilityScannerGroupElements__block_invoke_4(uint64_t a1)
{
  result = [*(a1 + 32) coordinateForIconAtIndex:{objc_msgSend(*(a1 + 40), "indexForIcon:", *(a1 + 48))}];
  v3 = *(*(a1 + 56) + 8);
  *(v3 + 32) = result;
  *(v3 + 40) = v4;
  return result;
}

uint64_t __65__SBIconListViewAccessibility__accessibilityScannerGroupElements__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 safeStringForKey:@"gridSizeClass"];
  v6 = [v4 safeStringForKey:@"gridSizeClass"];

  v7 = SBAccessibilityGridSizeComparison(v5, v6);
  return v7;
}

uint64_t __65__SBIconListViewAccessibility__accessibilityScannerGroupElements__block_invoke_6(uint64_t a1)
{
  result = [*(a1 + 32) iconGridSizeForClass:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 32) = result;
  return result;
}

BOOL __65__SBIconListViewAccessibility__accessibilityScannerGroupElements__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3010000000;
  v12 = &unk_29C40BC2F;
  v13 = 0;
  v14 = 0;
  v8 = *(a1 + 40);
  v4 = v3;
  AXPerformSafeBlock();
  v5 = v10[5];

  _Block_object_dispose(&v9, 8);
  v6 = v5 >= *(a1 + 48) && v5 <= *(a1 + 56);

  return v6;
}

uint64_t __65__SBIconListViewAccessibility__accessibilityScannerGroupElements__block_invoke_8(uint64_t a1)
{
  result = [*(a1 + 32) coordinateForIconAtIndex:{objc_msgSend(*(a1 + 40), "indexForIcon:", *(a1 + 48))}];
  v3 = *(*(a1 + 56) + 8);
  *(v3 + 32) = result;
  *(v3 + 40) = v4;
  return result;
}

void __65__SBIconListViewAccessibility__accessibilityScannerGroupElements__block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__5;
  v11 = __Block_byref_object_dispose__5;
  v12 = 0;
  v6 = v3;
  AXPerformSafeBlock();
  v5 = v8[5];

  _Block_object_dispose(&v7, 8);
  [v4 axSafelyAddObject:v5];
}

uint64_t __65__SBIconListViewAccessibility__accessibilityScannerGroupElements__block_invoke_10(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) iconViewForIcon:*(a1 + 40)];

  return MEMORY[0x2A1C71028]();
}

- (void)_updateEditingStateForIcons:(id)icons animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = SBIconListViewAccessibility;
  [(SBIconListViewAccessibility *)&v5 _updateEditingStateForIcons:icons animated:animated];
  [(SBIconListViewAccessibility *)self _axSetDragElements:0];
}

- (id)__axDragElements
{
  _axDragElements = [(SBIconListViewAccessibility *)self _axDragElements];

  if (!_axDragElements)
  {
    array = [MEMORY[0x29EDB8DE8] array];
    [(SBIconListViewAccessibility *)self safeValueForKey:@"displayedModel"];
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__5;
    v19 = __Block_byref_object_dispose__5;
    v14 = v20 = 0;
    AXPerformSafeBlock();
    v5 = v16[5];

    _Block_object_dispose(&v15, 8);
    v11 = MEMORY[0x29EDCA5F8];
    v12 = v5;
    v13 = array;
    v6 = array;
    v7 = v14;
    v8 = v5;
    AXPerformSafeBlock();
    [(SBIconListViewAccessibility *)self _axSetDragElements:v6, v11, 3221225472, __47__SBIconListViewAccessibility___axDragElements__block_invoke_2, &unk_29F300660, self];
  }

  _axDragElements2 = [(SBIconListViewAccessibility *)self _axDragElements];

  return _axDragElements2;
}

uint64_t __47__SBIconListViewAccessibility___axDragElements__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) gridCellInfoWithOptions:0];

  return MEMORY[0x2A1C71028]();
}

void __47__SBIconListViewAccessibility___axDragElements__block_invoke_2(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 3221225472;
  v3[2] = __47__SBIconListViewAccessibility___axDragElements__block_invoke_3;
  v3[3] = &unk_29F300638;
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  objc_copyWeak(&v6, &location);
  v5 = *(a1 + 56);
  [v2 enumerateEmptyGridCellIndexesUsingBlock:v3];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __47__SBIconListViewAccessibility___axDragElements__block_invoke_3(id *a1, uint64_t a2)
{
  v44[1] = *MEMORY[0x29EDCA608];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3010000000;
  v34 = &unk_29C40BC2F;
  v35 = 0uLL;
  v37 = MEMORY[0x29EDCA5F8];
  v38 = 3221225472;
  v39 = __47__SBIconListViewAccessibility___axDragElements__block_invoke_4;
  v40 = &unk_29F3004D8;
  v42 = &v31;
  v41 = a1[4];
  v43 = a2;
  AXPerformSafeBlock();
  v4 = *(v32 + 4);
  v5 = *(v32 + 5);

  _Block_object_dispose(&v31, 8);
  v31 = 0;
  v32 = &v31;
  v33 = 0x4010000000;
  v34 = &unk_29C40BC2F;
  v35 = 0u;
  v36 = 0u;
  objc_copyWeak(v30, a1 + 6);
  v30[1] = v4;
  v30[2] = v5;
  AXPerformSafeBlock();
  v6 = v32[4];
  v7 = v32[5];
  v8 = v32[6];
  v9 = v32[7];
  objc_destroyWeak(v30);
  _Block_object_dispose(&v31, 8);
  v10 = objc_alloc(MEMORY[0x29EDC78F8]);
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v12 = [v10 initWithAccessibilityContainer:WeakRetained];

  [v12 setAccessibilityFrame:{v6, v7, v8, v9}];
  v13 = accessibilityLocalizedString(@"empty.app.slot");
  [v12 setAccessibilityLabel:v13];

  [v12 setAccessibilityTraits:*MEMORY[0x29EDC7528]];
  v14 = MEMORY[0x29EDBA0F8];
  v15 = accessibilityLocalizedString(@"app.grid.location");
  v16 = MEMORY[0x29ED38790](v5);
  v17 = MEMORY[0x29ED38790](v4);
  v18 = [v14 localizedStringWithFormat:v15, v16, v17];

  [v12 setAccessibilityValue:v18];
  v19 = MEMORY[0x29EDBA0F8];
  v20 = accessibilityLocalizedString(@"place.app.at.location");
  v21 = AXSBIconControllerSharedInstance();
  v22 = [v21 _axDragManager];
  v23 = [v22 _axGrabbedIconsLabel];
  v24 = [v19 localizedStringWithFormat:v20, v23, v18];

  LOBYTE(v31) = 0;
  objc_opt_class();
  v25 = objc_loadWeakRetained(a1 + 6);
  v26 = __UIAccessibilityCastAsClass();

  if (v31 == 1)
  {
    abort();
  }

  v27 = objc_alloc(MEMORY[0x29EDC7900]);
  AX_CGRectGetCenter();
  v28 = [v27 initWithName:v24 point:v26 inView:?];
  v44[0] = v28;
  v29 = [MEMORY[0x29EDB8D80] arrayWithObjects:v44 count:1];
  [v12 setAccessibilityDropPointDescriptors:v29];

  [a1[5] addObject:v12];
}

uint64_t __47__SBIconListViewAccessibility___axDragElements__block_invoke_4(uint64_t a1)
{
  result = [*(a1 + 32) coordinateForGridCellIndex:*(a1 + 48) gridCellInfoOptions:0];
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 32) = result;
  *(v3 + 40) = v4;
  return result;
}

void __47__SBIconListViewAccessibility___axDragElements__block_invoke_5(uint64_t a1)
{
  v8 = objc_loadWeakRetained((a1 + 40));
  v2 = [v8 safeValueForKey:@"layoutMetrics"];
  [v8 rectForCellAtIconCoordinate:*(a1 + 48) metrics:{*(a1 + 56), v2}];
  v3 = *(*(a1 + 32) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
}

- (id)_accessibilityAdditionalElements
{
  v3 = [(SBIconListViewAccessibility *)self safeValueForKeyPath:@"displayedModel.folder"];
  NSClassFromString(&cfstr_Sbrootfolder.isa);
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([(SBIconListViewAccessibility *)self safeBoolForKey:@"isEditing"]& 1) != 0)
  {
    v4 = AXSBIconControllerSharedInstance();
    _axDragManager = [v4 _axDragManager];
    _axIsIconDragging = [_axDragManager _axIsIconDragging];

    if (_axIsIconDragging)
    {
      __axDragElements = [(SBIconListViewAccessibility *)self __axDragElements];
      goto LABEL_7;
    }
  }

  else
  {
  }

  __axDragElements = 0;
LABEL_7:

  return __axDragElements;
}

- (BOOL)isAccessibilityElement
{
  v3 = AXSBIconControllerSharedInstance();
  _axDragManager = [v3 _axDragManager];
  if ([_axDragManager _axIsIconDragging])
  {
    _accessibilityIsListViewEmptyForDragAndDrop = [(SBIconListViewAccessibility *)self _accessibilityIsListViewEmptyForDragAndDrop];
  }

  else
  {
    _accessibilityIsListViewEmptyForDragAndDrop = 0;
  }

  return _accessibilityIsListViewEmptyForDragAndDrop;
}

- (id)accessibilityLabel
{
  v3 = AXSBIconControllerSharedInstance();
  _axDragManager = [v3 _axDragManager];
  if ([_axDragManager _axIsIconDragging])
  {
    _accessibilityIsListViewEmptyForDragAndDrop = [(SBIconListViewAccessibility *)self _accessibilityIsListViewEmptyForDragAndDrop];

    if (_accessibilityIsListViewEmptyForDragAndDrop)
    {
      v6 = accessibilityLocalizedString(@"empty.page");
      goto LABEL_6;
    }
  }

  else
  {
  }

  v6 = &stru_2A230FAF0;
LABEL_6:

  return v6;
}

- (id)accessibilityDropPointDescriptors
{
  v17[1] = *MEMORY[0x29EDCA608];
  v3 = AXSBIconControllerSharedInstance();
  _axDragManager = [v3 _axDragManager];
  if ([_axDragManager _axIsIconDragging])
  {
    _accessibilityIsListViewEmptyForDragAndDrop = [(SBIconListViewAccessibility *)self _accessibilityIsListViewEmptyForDragAndDrop];

    if (_accessibilityIsListViewEmptyForDragAndDrop)
    {
      v6 = AXSBIconControllerSharedInstance();
      _axDragManager2 = [v6 _axDragManager];
      _axGrabbedIconsLabel = [_axDragManager2 _axGrabbedIconsLabel];

      v9 = MEMORY[0x29EDBA0F8];
      _accessibilityEmptyListDropString = [(SBIconListViewAccessibility *)self _accessibilityEmptyListDropString];
      v11 = [v9 stringWithFormat:_accessibilityEmptyListDropString, _axGrabbedIconsLabel];

      objc_opt_class();
      v12 = __UIAccessibilityCastAsClass();
      v13 = objc_alloc(MEMORY[0x29EDC7900]);
      [v12 bounds];
      UIRectGetCenter();
      v14 = [v13 initWithName:v11 point:v12 inView:?];
      v17[0] = v14;
      v15 = [MEMORY[0x29EDB8D80] arrayWithObjects:v17 count:1];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v15 = MEMORY[0x29EDB8E90];
LABEL_6:

  return v15;
}

- (BOOL)_accessibilityIsListViewEmptyForDragAndDrop
{
  v17 = *MEMORY[0x29EDCA608];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  objc_opt_class();
  v3 = [(SBIconListViewAccessibility *)self safeValueForKey:@"_model"];
  v4 = [v3 safeValueForKey:@"icons"];
  v5 = __UIAccessibilityCastAsClass();

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    v9 = 1;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v9 &= [*(*(&v12 + 1) + 8 * i) safeBoolForKey:@"isPlaceholder"];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

@end