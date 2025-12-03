@interface _UIStatusBarAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityEnumerateSiblingsWithParent:(id *)parent options:(id)options usingBlock:(id)block;
- (BOOL)_axElementWithinFocused;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)accessibilityElements;
- (uint64_t)_axGetIsHitTesting;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_prepareVisualProviderIfNeeded;
- (void)_updateDisplayedItemsWithData:(id)data styleAttributes:(id)attributes extraAnimations:(id)animations;
@end

@implementation _UIStatusBarAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v13 = location;
  v12 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"_UIStatusBarItem";
  [location[0] validateClass:?];
  v4 = @"_UIStatusBarDisplayItem";
  [location[0] validateClass:?];
  v10 = @"_UIStatusBarDisplayItemState";
  [location[0] validateClass:?];
  v8 = @"_UIStatusBar";
  v11 = "@";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v8 hasInstanceMethod:@"displayItemStates" withFullSignature:{v11, 0}];
  [location[0] validateClass:v8 hasInstanceMethod:@"currentAggregatedData" withFullSignature:{v11, 0}];
  [location[0] validateClass:v8 hasInstanceMethod:@"styleAttributes" withFullSignature:{v11, 0}];
  [location[0] validateClass:v8 hasInstanceMethod:@"visualProvider" withFullSignature:{v11, 0}];
  [location[0] validateClass:v8 hasInstanceMethod:@"foregroundView" withFullSignature:{v11, 0}];
  v9 = "v";
  [location[0] validateClass:v8 hasInstanceMethod:@"_prepareVisualProviderIfNeeded" withFullSignature:0];
  [location[0] validateClass:v3 hasInstanceMethod:@"displayItems" withFullSignature:{v11, 0}];
  [location[0] validateClass:v3 hasInstanceMethod:@"identifier" withFullSignature:{v11, 0}];
  v6 = @"isEnabled";
  v7 = "B";
  [location[0] validateClass:v4 hasInstanceMethod:0 withFullSignature:?];
  [location[0] validateClass:v4 hasInstanceMethod:@"view" withFullSignature:{v11, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"enabilityStatus" withFullSignature:{"q", 0}];
  [location[0] validateClass:@"_UIStatusBarDisplayItemPlacementState" hasInstanceMethod:@"region" withFullSignature:{v11, 0}];
  v5 = @"_UIStatusBarRegion";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v8 hasInstanceVariable:@"_regions" withType:"NSDictionary"];
  [location[0] validateClass:v5 hasInstanceMethod:@"contentView" withFullSignature:{v11, 0}];
  [location[0] validateClass:v5 hasInstanceMethod:v6 withFullSignature:{v7, 0}];
  [location[0] validateClass:v8 hasInstanceMethod:@"_updateDisplayedItemsWithData:styleAttributes:extraAnimations:" withFullSignature:{v9, v11, v11, v11, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"currentPlacementState" withFullSignature:{v11, 0}];
  [location[0] validateClass:v10 hasInstanceMethod:@"_updateForUpdatedData:updatedStyleAttributes:updatedEnability:" withFullSignature:{v11, v11, v11, 0}];
  [location[0] validateClass:@"_UIStatusBarStyleAttributes" hasInstanceMethod:@"styleAttributesWithOverrides:" withFullSignature:{v11, 0}];
  objc_storeStrong(v13, v12);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v58 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v54 = a2;
  v53.receiver = self;
  v53.super_class = _UIStatusBarAccessibility;
  [(_UIStatusBarAccessibility *)&v53 _accessibilityLoadAccessibilityInformation];
  memset(__b, 0, sizeof(__b));
  v19 = [(_UIStatusBarAccessibility *)selfCopy safeDictionaryForKey:@"_regions"];
  obj = [v19 allValues];
  v17 = [obj countByEnumeratingWithState:__b objects:v57 count:{16, MEMORY[0x29EDC9740](v19).n128_f64[0]}];
  if (v17)
  {
    v14 = *__b[2];
    v15 = 0;
    v16 = v17;
    while (1)
    {
      v13 = v15;
      if (*__b[2] != v14)
      {
        objc_enumerationMutation(obj);
      }

      val = *(__b[1] + 8 * v15);
      v50 = [val safeUIViewForKey:@"contentView"];
      objc_initWeak(&location, val);
      v12 = v50;
      v43 = MEMORY[0x29EDCA5F8];
      v44 = -1073741824;
      v45 = 0;
      v46 = __71___UIStatusBarAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
      v47 = &unk_29F30C7F0;
      objc_copyWeak(&v48, &location);
      [v12 _setAccessibilityElementsHiddenBlock:&v43];
      objc_destroyWeak(&v48);
      objc_destroyWeak(&location);
      objc_storeStrong(&v50, 0);
      ++v15;
      if (v13 + 1 >= v16)
      {
        v15 = 0;
        v16 = [obj countByEnumeratingWithState:__b objects:v57 count:16];
        if (!v16)
        {
          break;
        }
      }
    }
  }

  *&v2 = MEMORY[0x29EDC9740](obj).n128_u64[0];
  v42 = [(_UIStatusBarAccessibility *)selfCopy safeValueForKey:@"visualProvider", v2];
  [v42 _accessibilityLoadAccessibilityInformation];
  v40 = 0;
  objc_opt_class();
  v11 = [(_UIStatusBarAccessibility *)selfCopy safeValueForKey:@"items"];
  v39 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v11);
  v38 = MEMORY[0x29EDC9748](v39);
  objc_storeStrong(&v39, 0);
  v41 = v38;
  memset(v36, 0, sizeof(v36));
  allValues = [v38 allValues];
  v10 = [allValues countByEnumeratingWithState:v36 objects:v56 count:16];
  if (v10)
  {
    v6 = *v36[2];
    v7 = 0;
    v8 = v10;
    while (1)
    {
      v5 = v7;
      if (*v36[2] != v6)
      {
        objc_enumerationMutation(allValues);
      }

      v37 = *(v36[1] + 8 * v7);
      v34 = 0;
      v33 = __UIAccessibilitySafeClass();
      if (v34)
      {
        abort();
      }

      v32 = MEMORY[0x29EDC9748](v33);
      objc_storeStrong(&v33, 0);
      v35 = v32;
      if (v32)
      {
        v30 = 0;
        objc_opt_class();
        v4 = [(_UIStatusBarAccessibility *)selfCopy safeValueForKey:@"displayItemStates"];
        v29 = __UIAccessibilityCastAsClass();
        MEMORY[0x29EDC9740](v4);
        if (v30)
        {
          abort();
        }

        v28 = MEMORY[0x29EDC9748](v29);
        objc_storeStrong(&v29, 0);
        v31 = v28;
        v27 = [v37 safeValueForKey:@"identifier"];
        v25 = 0;
        v3 = [v31 objectForKey:v27];
        v24 = __UIAccessibilitySafeClass();
        MEMORY[0x29EDC9740](v3);
        if (v25)
        {
          abort();
        }

        v23 = MEMORY[0x29EDC9748](v24);
        objc_storeStrong(&v24, 0);
        v26 = v23;
        if (v23)
        {
          v20 = MEMORY[0x29EDC9748](v26);
          v21 = MEMORY[0x29EDC9748](selfCopy);
          v22 = MEMORY[0x29EDC9748](v37);
          AXPerformSafeBlock();
          objc_storeStrong(&v22, 0);
          objc_storeStrong(&v21, 0);
          objc_storeStrong(&v20, 0);
        }

        [v37 _accessibilityLoadAccessibilityInformation];
        objc_storeStrong(&v26, 0);
        objc_storeStrong(&v27, 0);
        objc_storeStrong(&v31, 0);
      }

      objc_storeStrong(&v35, 0);
      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [allValues countByEnumeratingWithState:v36 objects:v56 count:16];
        if (!v8)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](allValues);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
}

- (uint64_t)_axGetIsHitTesting
{
  if (self)
  {
    v2 = __UIAccessibilityGetAssociatedBool() & 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  v71 = *MEMORY[0x29EDCA608];
  testCopy = test;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  [(_UIStatusBarAccessibility *)selfCopy _axSetIsHitTesting:1];
  v62.receiver = selfCopy;
  v62.super_class = _UIStatusBarAccessibility;
  v63 = [(_UIStatusBarAccessibility *)&v62 _accessibilityHitTest:location[0] withEvent:testCopy.x, testCopy.y];
  if (!v63)
  {
    v61 = MEMORY[0x29EDC9748](selfCopy);
    superview = [v61 superview];
    [superview convertPoint:v61 toView:{testCopy.x, testCopy.y}];
    point.x = v4;
    point.y = v5;
    [v61 frame];
    rect = v73;
    if (CGRectContainsPoint(v73, point))
    {
      v58 = 1.79769313e308;
      v56 = 0;
      objc_opt_class();
      v33 = [(_UIStatusBarAccessibility *)selfCopy safeValueForKey:@"items"];
      v55 = __UIAccessibilityCastAsClass();
      MEMORY[0x29EDC9740](v33);
      v54 = MEMORY[0x29EDC9748](v55);
      objc_storeStrong(&v55, 0);
      v57 = v54;
      memset(__b, 0, sizeof(__b));
      obj = [v54 allValues];
      v32 = [obj countByEnumeratingWithState:__b objects:v70 count:16];
      if (v32)
      {
        v28 = *__b[2];
        v29 = 0;
        v30 = v32;
        while (1)
        {
          v27 = v29;
          if (*__b[2] != v28)
          {
            objc_enumerationMutation(obj);
          }

          v53 = *(__b[1] + 8 * v29);
          NSClassFromString(&cfstr_Uistatusbarite_2.isa);
          if (objc_opt_isKindOfClass())
          {
            v50 = 0;
            objc_opt_class();
            v26 = [v53 safeValueForKey:@"displayItems"];
            v49 = __UIAccessibilityCastAsClass();
            MEMORY[0x29EDC9740](v26);
            if (v50)
            {
              abort();
            }

            v48 = MEMORY[0x29EDC9748](v49);
            objc_storeStrong(&v49, 0);
            v51 = v48;
            memset(v46, 0, sizeof(v46));
            allValues = [v48 allValues];
            v25 = [allValues countByEnumeratingWithState:v46 objects:v69 count:16];
            if (v25)
            {
              v21 = *v46[2];
              v22 = 0;
              v23 = v25;
              while (1)
              {
                v20 = v22;
                if (*v46[2] != v21)
                {
                  objc_enumerationMutation(allValues);
                }

                v47 = *(v46[1] + 8 * v22);
                NSClassFromString(&cfstr_Uistatusbardis.isa);
                if (objc_opt_isKindOfClass() & 1) != 0 && ([v47 safeBoolForKey:@"isEnabled"])
                {
                  v45 = [v47 safeUIViewForKey:@"view"];
                  v43 = 0.0;
                  v44 = 0.0;
                  mainScreen = [MEMORY[0x29EDC7C40] mainScreen];
                  coordinateSpace = [mainScreen coordinateSpace];
                  [v45 center];
                  v41 = v6;
                  v42 = v7;
                  superview2 = [v45 superview];
                  [coordinateSpace convertPoint:v41 fromCoordinateSpace:v42];
                  v43 = v8;
                  v44 = v9;
                  MEMORY[0x29EDC9740](superview2);
                  MEMORY[0x29EDC9740](coordinateSpace);
                  MEMORY[0x29EDC9740](mainScreen);
                  AX_CGPointGetDistanceToPoint();
                  v40 = v10;
                  v39 = 0.0;
                  server = [MEMORY[0x29EDBDFA8] server];
                  medusaApps = [server medusaApps];
                  v39 = [medusaApps count];
                  MEMORY[0x29EDC9740](medusaApps);
                  MEMORY[0x29EDC9740](server);
                  if (v39 <= 1.0)
                  {
                    v14 = 1.79769313e308;
                  }

                  else
                  {
                    [v45 frame];
                    v37 = v74;
                    Width = CGRectGetWidth(v74);
                    v68 = 0x4049000000000000;
                    v67 = Width;
                    v14 = fmax(50.0, Width);
                  }

                  v38 = v14;
                  if (v40 <= v14 && v40 < v58)
                  {
                    v35.receiver = selfCopy;
                    v35.super_class = _UIStatusBarAccessibility;
                    v36 = [(_UIStatusBarAccessibility *)&v35 _accessibilityHitTest:location[0] withEvent:v43, v44];
                    if (v36)
                    {
                      objc_storeStrong(&v63, v36);
                      v58 = v40;
                    }

                    objc_storeStrong(&v36, 0);
                  }

                  objc_storeStrong(&v45, 0);
                }

                ++v22;
                if (v20 + 1 >= v23)
                {
                  v22 = 0;
                  v23 = [allValues countByEnumeratingWithState:v46 objects:v69 count:16];
                  if (!v23)
                  {
                    break;
                  }
                }
              }
            }

            MEMORY[0x29EDC9740](allValues);
            objc_storeStrong(&v51, 0);
          }

          ++v29;
          if (v27 + 1 >= v30)
          {
            v29 = 0;
            v30 = [obj countByEnumeratingWithState:__b objects:v70 count:16];
            if (!v30)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x29EDC9740](obj);
      objc_storeStrong(&v57, 0);
    }

    objc_storeStrong(&v61, 0);
  }

  [(_UIStatusBarAccessibility *)selfCopy _axSetIsHitTesting:0];
  v13 = MEMORY[0x29EDC9748](v63);
  objc_storeStrong(&v63, 0);
  objc_storeStrong(location, 0);

  return v13;
}

- (BOOL)_accessibilityEnumerateSiblingsWithParent:(id *)parent options:(id)options usingBlock:(id)block
{
  location[3] = self;
  location[2] = a2;
  location[1] = parent;
  location[0] = 0;
  objc_storeStrong(location, options);
  v7 = 0;
  objc_storeStrong(&v7, block);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  return 1;
}

- (void)_prepareVisualProviderIfNeeded
{
  selfCopy = self;
  location[1] = a2;
  objc_initWeak(location, self);
  v3 = [(_UIStatusBarAccessibility *)selfCopy safeUIViewForKey:@"foregroundView"];
  v5 = MEMORY[0x29EDCA5F8];
  v6 = -1073741824;
  v7 = 0;
  v8 = __59___UIStatusBarAccessibility__prepareVisualProviderIfNeeded__block_invoke;
  v9 = &unk_29F30C7F0;
  objc_copyWeak(v10, location);
  [v3 _setAccessibilityElementsHiddenBlock:&v5];
  *&v2 = MEMORY[0x29EDC9740](v3).n128_u64[0];
  v4.receiver = selfCopy;
  v4.super_class = _UIStatusBarAccessibility;
  [(_UIStatusBarAccessibility *)&v4 _prepareVisualProviderIfNeeded];
  objc_destroyWeak(v10);
  objc_destroyWeak(location);
}

- (BOOL)_axElementWithinFocused
{
  v24 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v20 = a2;
  memset(__b, 0, sizeof(__b));
  obj = _UIAccessibilityFocusedElements();
  v9 = [obj countByEnumeratingWithState:__b objects:v23 count:16];
  if (v9)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v9;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(__b[1] + 8 * v6);
      v3 = v19;
      v11 = MEMORY[0x29EDCA5F8];
      v12 = -1073741824;
      v13 = 0;
      v14 = __52___UIStatusBarAccessibility__axElementWithinFocused__block_invoke;
      v15 = &unk_29F30C818;
      v16 = MEMORY[0x29EDC9748](selfCopy);
      location = [v3 _accessibilityFindAncestor:&v11 startWithSelf:0];
      if (location)
      {
        v22 = 1;
        v10 = 1;
      }

      else
      {
        v10 = 0;
      }

      objc_storeStrong(&location, 0);
      objc_storeStrong(&v16, 0);
      if (v10)
      {
        break;
      }

      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [obj countByEnumeratingWithState:__b objects:v23 count:16];
        if (!v7)
        {
          goto LABEL_11;
        }
      }
    }
  }

  else
  {
LABEL_11:
    v10 = 0;
  }

  MEMORY[0x29EDC9740](obj);
  if (!v10)
  {
    v22 = 0;
  }

  return v22 & 1;
}

- (id)accessibilityElements
{
  selfCopy = self;
  v7 = a2;
  if ([(_UIStatusBarAccessibility *)self _axElementWithinFocused])
  {
    v6 = 0;
    objc_opt_class();
    v5 = __UIAccessibilityCastAsClass();
    v4 = MEMORY[0x29EDC9748](v5);
    objc_storeStrong(&v5, 0);
    subviews = [v4 subviews];
    MEMORY[0x29EDC9740](v4);
  }

  else
  {
    subviews = 0;
  }

  v2 = subviews;

  return v2;
}

- (void)_updateDisplayedItemsWithData:(id)data styleAttributes:(id)attributes extraAnimations:(id)animations
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v9 = 0;
  objc_storeStrong(&v9, attributes);
  v8 = 0;
  objc_storeStrong(&v8, animations);
  v7.receiver = selfCopy;
  v7.super_class = _UIStatusBarAccessibility;
  [(_UIStatusBarAccessibility *)&v7 _updateDisplayedItemsWithData:location[0] styleAttributes:v9 extraAnimations:v8];
  if ([(_UIStatusBarAccessibility *)selfCopy _axElementWithinFocused])
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

@end