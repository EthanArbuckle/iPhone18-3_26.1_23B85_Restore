@interface STUIStatusBarAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axElementWithinFocused;
- (CGRect)_frameForActionable:(id)actionable actionInsets:(UIEdgeInsets)insets;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_prepareVisualProviderIfNeeded;
- (void)_updateDisplayedItemsWithData:(id)data styleAttributes:(id)attributes extraAnimations:(id)animations;
@end

@implementation STUIStatusBarAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"STUIStatusBarItem"];
  [validationsCopy validateClass:@"STUIStatusBarDisplayItem"];
  [validationsCopy validateClass:@"STUIStatusBarDisplayItemState"];
  [validationsCopy validateClass:@"STUIStatusBar" hasInstanceMethod:@"items" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBar" hasInstanceMethod:@"displayItemStates" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBar" hasInstanceMethod:@"currentAggregatedData" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBar" hasInstanceMethod:@"styleAttributes" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBar" hasInstanceMethod:@"visualProvider" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBar" hasInstanceMethod:@"foregroundView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBar" hasInstanceMethod:@"_prepareVisualProviderIfNeeded" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"STUIStatusBarItem" hasInstanceMethod:@"displayItems" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBarItem" hasInstanceMethod:@"identifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_UIStatusBarDisplayItem" hasInstanceMethod:@"isEnabled" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"_UIStatusBarDisplayItem" hasInstanceMethod:@"view" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBarDisplayItemState" hasInstanceMethod:@"enabilityStatus" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"STUIStatusBarDisplayItemPlacementState" hasInstanceMethod:@"region" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBarRegion" hasInstanceMethod:@"overriddenStyleAttributes" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBar" hasInstanceVariable:@"_regions" withType:"NSDictionary"];
  [validationsCopy validateClass:@"STUIStatusBarRegion" hasInstanceMethod:@"contentView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBarRegion" hasInstanceMethod:@"isEnabled" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"STUIStatusBar" hasInstanceMethod:@"_updateDisplayedItemsWithData:styleAttributes:extraAnimations:" withFullSignature:{"v", "@", "@", "@", 0}];
  [validationsCopy validateClass:@"STUIStatusBarDisplayItemState" hasInstanceMethod:@"currentPlacementState" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBarDisplayItemState" hasInstanceMethod:@"_updateForUpdatedData:updatedStyleAttributes:updatedEnability:" withFullSignature:{"@", "@", "@", "@", 0}];
  [validationsCopy validateClass:@"STUIStatusBarStyleAttributes" hasInstanceMethod:@"styleAttributesWithOverrides:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"STUIStatusBar" hasInstanceMethod:@"_frameForActionable:actionInsets:" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", "@", "{UIEdgeInsets=dddd}", 0}];
  [validationsCopy validateClass:@"STUIStatusBarRegion" hasInstanceMethod:@"displayItems" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBarDisplayItem" hasInstanceMethod:@"item" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"STUIStatusBarNavigationItem" isKindOfClass:@"STUIStatusBarItem"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v42 = *MEMORY[0x29EDCA608];
  v39.receiver = self;
  v39.super_class = STUIStatusBarAccessibility;
  [(STUIStatusBarAccessibility *)&v39 _accessibilityLoadAccessibilityInformation];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v2 = [(STUIStatusBarAccessibility *)self safeDictionaryForKey:@"_regions"];
  obj = [v2 allValues];

  v3 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v3)
  {
    v4 = *v36;
    v5 = MEMORY[0x29EDCA5F8];
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v36 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v35 + 1) + 8 * i);
        v8 = [v7 safeUIViewForKey:@"contentView"];
        objc_initWeak(&location, v7);
        v32[0] = v5;
        v32[1] = 3221225472;
        v32[2] = __72__STUIStatusBarAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
        v32[3] = &unk_29F306C68;
        objc_copyWeak(&v33, &location);
        [v8 _setAccessibilityElementsHiddenBlock:v32];
        objc_destroyWeak(&v33);
        objc_destroyWeak(&location);
      }

      v3 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v3);
  }

  v23 = [(STUIStatusBarAccessibility *)self safeValueForKey:@"visualProvider"];
  [v23 _accessibilityLoadAccessibilityInformation];
  LOBYTE(location) = 0;
  objc_opt_class();
  v9 = [(STUIStatusBarAccessibility *)self safeValueForKey:@"items"];
  v22 = __UIAccessibilityCastAsClass();

  if (location == 1)
  {
LABEL_24:
    abort();
  }

  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obja = [v22 allValues];
  v10 = [obja countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v10)
  {
    v11 = *v29;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(obja);
        }

        v13 = *(*(&v28 + 1) + 8 * j);
        LOBYTE(location) = 0;
        v14 = __UIAccessibilitySafeClass();
        if (location == 1)
        {
          goto LABEL_24;
        }

        v15 = v14;
        if (v14)
        {
          LOBYTE(location) = 0;
          objc_opt_class();
          v16 = [(STUIStatusBarAccessibility *)self safeValueForKey:@"displayItemStates"];
          v17 = __UIAccessibilityCastAsClass();

          if (location == 1)
          {
            goto LABEL_24;
          }

          v18 = [v13 safeValueForKey:@"identifier"];
          LOBYTE(location) = 0;
          v19 = [v17 objectForKey:v18];
          v20 = __UIAccessibilitySafeClass();

          if (location == 1)
          {
            goto LABEL_24;
          }

          if (v20)
          {
            v27 = v20;
            AXPerformSafeBlock();
          }

          [v13 _accessibilityLoadAccessibilityInformation];
        }
      }

      v10 = [obja countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v10);
  }

  v21 = *MEMORY[0x29EDCA608];
}

uint64_t __72__STUIStatusBarAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeBoolForKey:@"isEnabled"];

  return v2 ^ 1u;
}

void __72__STUIStatusBarAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(id *a1)
{
  v2 = [a1[4] safeIntegerForKey:@"enabilityStatus"];
  if (v2 == 3)
  {
    v7 = [a1[4] _updateForUpdatedData:0 updatedStyleAttributes:0 updatedEnability:MEMORY[0x29EDB8EA8]];
    if (!v7)
    {
      return;
    }
  }

  else
  {
    if (v2 != 2)
    {
      return;
    }

    v3 = [a1[5] safeValueForKey:@"currentAggregatedData"];
    v4 = [a1[4] safeValueForKeyPath:@"currentPlacementState.region.overriddenStyleAttributes"];
    v5 = [a1[5] safeValueForKey:@"styleAttributes"];
    v6 = [v5 styleAttributesWithOverrides:v4];
    v8 = [a1[4] _updateForUpdatedData:v3 updatedStyleAttributes:v6 updatedEnability:MEMORY[0x29EDB8EB0]];

    v7 = v8;
    if (!v8)
    {
      return;
    }
  }

  v9 = v7;
  [a1[6] _accessibilitySetRetainedValue:v7 forKey:@"AccessibilityStatusBarUpdateData"];
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v76 = *MEMORY[0x29EDCA608];
  eventCopy = event;
  [(STUIStatusBarAccessibility *)self _axSetIsHitTesting:1];
  v73.receiver = self;
  v73.super_class = STUIStatusBarAccessibility;
  v8 = [(STUIStatusBarAccessibility *)&v73 _accessibilityHitTest:eventCopy withEvent:x, y];
  if (!v8)
  {
    selfCopy = self;
    superview = [(STUIStatusBarAccessibility *)selfCopy superview];
    [superview convertPoint:selfCopy toView:{x, y}];
    v12 = v11;
    v14 = v13;

    [(STUIStatusBarAccessibility *)selfCopy frame];
    v78.x = v12;
    v78.y = v14;
    if (CGRectContainsPoint(v79, v78))
    {
      v72 = 0;
      objc_opt_class();
      v15 = [(STUIStatusBarAccessibility *)selfCopy safeValueForKey:@"items"];
      v16 = __UIAccessibilityCastAsClass();

      v61 = eventCopy;
      selfCopy2 = self;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      obj = [v16 allValues];
      v17 = [obj countByEnumeratingWithState:&v68 objects:v75 count:16];
      if (v17)
      {
        v18 = v17;
        v62 = 0;
        v19 = *v69;
        v20 = 1.79769313e308;
        v56 = *v69;
        do
        {
          v21 = 0;
          v57 = v18;
          do
          {
            if (*v69 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v68 + 1) + 8 * v21);
            MEMORY[0x29ED3ADB0](@"STUIStatusBarItem");
            if (objc_opt_isKindOfClass())
            {
              v72 = 0;
              objc_opt_class();
              v23 = [v22 safeValueForKey:@"displayItems"];
              v24 = __UIAccessibilityCastAsClass();

              if (v72 == 1)
              {
                abort();
              }

              v59 = v24;
              v60 = v21;
              v64 = 0u;
              v65 = 0u;
              v66 = 0u;
              v67 = 0u;
              allValues = [v24 allValues];
              v26 = [allValues countByEnumeratingWithState:&v64 objects:v74 count:16];
              if (v26)
              {
                v27 = v26;
                v28 = *v65;
                do
                {
                  for (i = 0; i != v27; ++i)
                  {
                    if (*v65 != v28)
                    {
                      objc_enumerationMutation(allValues);
                    }

                    v30 = *(*(&v64 + 1) + 8 * i);
                    MEMORY[0x29ED3ADB0](@"STUIStatusBarDisplayItem");
                    if ((objc_opt_isKindOfClass() & 1) != 0 && [v30 safeBoolForKey:@"isEnabled"])
                    {
                      v31 = [v30 safeUIViewForKey:@"view"];
                      mainScreen = [MEMORY[0x29EDC7C40] mainScreen];
                      coordinateSpace = [mainScreen coordinateSpace];
                      [v31 center];
                      v35 = v34;
                      v37 = v36;
                      superview2 = [v31 superview];
                      [coordinateSpace convertPoint:superview2 fromCoordinateSpace:{v35, v37}];
                      v40 = v39;
                      v42 = v41;

                      AX_CGPointGetDistanceToPoint();
                      v44 = v43;
                      server = [MEMORY[0x29EDBDFA8] server];
                      medusaApps = [server medusaApps];
                      v47 = [medusaApps count];

                      if (v47 < 2)
                      {
                        v48 = 1.79769313e308;
                      }

                      else
                      {
                        [v31 frame];
                        v48 = fmax(CGRectGetWidth(v80), 50.0);
                      }

                      if (v44 <= v48 && v44 < v20)
                      {
                        v63.receiver = selfCopy;
                        v63.super_class = STUIStatusBarAccessibility;
                        v50 = [(STUIStatusBarAccessibility *)&v63 _accessibilityHitTest:v61 withEvent:v40, v42];
                        v51 = v50;
                        if (v50)
                        {
                          v52 = v50;

                          v62 = v52;
                          v20 = v44;
                        }
                      }
                    }
                  }

                  v27 = [allValues countByEnumeratingWithState:&v64 objects:v74 count:16];
                }

                while (v27);
              }

              v19 = v56;
              v18 = v57;
              v21 = v60;
            }

            ++v21;
          }

          while (v21 != v18);
          v18 = [obj countByEnumeratingWithState:&v68 objects:v75 count:16];
        }

        while (v18);
      }

      else
      {
        v62 = 0;
      }

      self = selfCopy2;
      eventCopy = v61;
    }

    else
    {
      v62 = 0;
    }

    v8 = v62;
  }

  [(STUIStatusBarAccessibility *)self _axSetIsHitTesting:0];

  v53 = *MEMORY[0x29EDCA608];

  return v8;
}

- (void)_prepareVisualProviderIfNeeded
{
  objc_initWeak(&location, self);
  v3 = [(STUIStatusBarAccessibility *)self safeUIViewForKey:@"foregroundView"];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __60__STUIStatusBarAccessibility__prepareVisualProviderIfNeeded__block_invoke;
  v5[3] = &unk_29F306C68;
  objc_copyWeak(&v6, &location);
  [v3 _setAccessibilityElementsHiddenBlock:v5];

  v4.receiver = self;
  v4.super_class = STUIStatusBarAccessibility;
  [(STUIStatusBarAccessibility *)&v4 _prepareVisualProviderIfNeeded];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

uint64_t __60__STUIStatusBarAccessibility__prepareVisualProviderIfNeeded__block_invoke(uint64_t a1)
{
  if (AXRequestingClient() != 3)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained _axElementWithinFocused])
  {
    v3 = 0;
  }

  else
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    if (v4)
    {
      v3 = __UIAccessibilityGetAssociatedBool() ^ 1;
    }

    else
    {
      v3 = 1;
    }
  }

  return v3;
}

- (BOOL)_axElementWithinFocused
{
  v19 = *MEMORY[0x29EDCA608];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = _UIAccessibilityFocusedElements();
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v13[0] = MEMORY[0x29EDCA5F8];
        v13[1] = 3221225472;
        v13[2] = __53__STUIStatusBarAccessibility__axElementWithinFocused__block_invoke;
        v13[3] = &unk_29F306CB8;
        v13[4] = self;
        v9 = [v8 _accessibilityFindAncestor:v13 startWithSelf:0];

        if (v9)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x29EDCA608];
  return v10;
}

- (id)accessibilityElements
{
  if (AXProcessIsSpringBoard() && AXDeviceHasJindo() && UIAccessibilityIsVoiceOverRunning())
  {
    accessibilityElements = [*MEMORY[0x29EDC8008] _accessibilityStatusBarElements:1 sorted:1];
  }

  else if ([(STUIStatusBarAccessibility *)self _axElementWithinFocused])
  {
    v5.receiver = self;
    v5.super_class = STUIStatusBarAccessibility;
    accessibilityElements = [(STUIStatusBarAccessibility *)&v5 accessibilityElements];
  }

  else
  {
    accessibilityElements = 0;
  }

  return accessibilityElements;
}

- (void)_updateDisplayedItemsWithData:(id)data styleAttributes:(id)attributes extraAnimations:(id)animations
{
  v6.receiver = self;
  v6.super_class = STUIStatusBarAccessibility;
  [(STUIStatusBarAccessibility *)&v6 _updateDisplayedItemsWithData:data styleAttributes:attributes extraAnimations:animations];
  if ([(STUIStatusBarAccessibility *)self _axElementWithinFocused])
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }
}

- (CGRect)_frameForActionable:(id)actionable actionInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v39 = *MEMORY[0x29EDCA608];
  actionableCopy = actionable;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v37 = 0;
    objc_opt_class();
    v10 = [actionableCopy safeValueForKey:@"displayItems"];
    v11 = __UIAccessibilityCastAsClass();

    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v34;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v34 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v33 + 1) + 8 * i) safeValueForKey:@"item"];
          MEMORY[0x29ED3ADB0](@"STUIStatusBarNavigationItem");
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            top = *MEMORY[0x29EDC80C8];
            left = *(MEMORY[0x29EDC80C8] + 8);
            bottom = *(MEMORY[0x29EDC80C8] + 16);
            right = *(MEMORY[0x29EDC80C8] + 24);
            goto LABEL_12;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v33 objects:v38 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  v32.receiver = self;
  v32.super_class = STUIStatusBarAccessibility;
  [(STUIStatusBarAccessibility *)&v32 _frameForActionable:actionableCopy actionInsets:top, left, bottom, right];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = *MEMORY[0x29EDCA608];
  v28 = v20;
  v29 = v22;
  v30 = v24;
  v31 = v26;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

@end