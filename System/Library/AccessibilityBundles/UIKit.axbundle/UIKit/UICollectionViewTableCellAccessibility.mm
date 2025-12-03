@interface UICollectionViewTableCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axPerformAction:(id)action;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_axCustomActionsForActions:(uint64_t)actions;
- (id)_privateAccessibilityCustomActions;
@end

@implementation UICollectionViewTableCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v8 = location;
  v7 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"UITableViewCellReorderControl"];
  v3 = @"UICollectionViewTableCell";
  v6 = "@";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"_tableLayout" withFullSignature:{v6, 0}];
  v4 = @"UICollectionViewTableLayout";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v4 hasInstanceMethod:@"_delegateProxy" withFullSignature:{v6, 0}];
  v5 = @"UICollectionViewCompositionalLayout";
  [location[0] validateClass:v6 hasInstanceMethod:0 withFullSignature:?];
  [location[0] validateClass:v5 hasInstanceMethod:@"_trailingSwipeActionsConfigurationForIndexPath:" withFullSignature:{v6, 0}];
  objc_storeStrong(v8, v7);
}

- (id)_accessibilitySupplementaryFooterViews
{
  selfCopy = self;
  v4[1] = a2;
  v4[0] = [(UICollectionViewTableCellAccessibility *)self _accessibilityFindDescendant:&__block_literal_global_18];
  [v4[0] setAccessibilityContainer:selfCopy];
  v3 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, v4[0]}];
  objc_storeStrong(v4, 0);

  return v3;
}

BOOL __80__UICollectionViewTableCellAccessibility__accessibilitySupplementaryFooterViews__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  NSClassFromString(&cfstr_Uitableviewcel_9.isa);
  v4 = (objc_opt_isKindOfClass() & 1) != 0 && ([location[0] _accessibilityViewIsVisible] & 1) != 0;
  objc_storeStrong(location, 0);
  return v4;
}

- (BOOL)_axPerformAction:(id)action
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, action);
  v11 = 0;
  objc_opt_class();
  v4 = [location[0] _accessibilityValueForKey:@"AXCollectionViewTableCellActionKey"];
  v10 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v4);
  v9 = MEMORY[0x29EDC9748](v10);
  objc_storeStrong(&v10, 0);
  v12 = v9;
  handler = [v9 handler];
  if (handler)
  {
    v7 = MEMORY[0x29EDC9748](handler);
    v5 = MEMORY[0x29EDC9748](v12);
    v6 = MEMORY[0x29EDC9748](selfCopy);
    AXPerformSafeBlock();
    objc_storeStrong(&v6, 0);
    objc_storeStrong(&v5, 0);
    objc_storeStrong(&v7, 0);
  }

  objc_storeStrong(&handler, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  return 1;
}

- (id)_axCustomActionsForActions:(uint64_t)actions
{
  v27 = *MEMORY[0x29EDCA608];
  actionsCopy = actions;
  location = 0;
  objc_storeStrong(&location, a2);
  if (actionsCopy)
  {
    array = [MEMORY[0x29EDB8DE8] array];
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](location);
    v16 = [obj countByEnumeratingWithState:__b objects:v26 count:16];
    if (v16)
    {
      v12 = *__b[2];
      v13 = 0;
      v14 = v16;
      while (1)
      {
        v11 = v13;
        if (*__b[2] != v12)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(__b[1] + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          _menu = [v20 _menu];
          if (_menu)
          {
            v8 = array;
            children = [_menu children];
            v9 = AXCustomActionForMenuElements(children);
            [v8 axSafelyAddObjectsFromArray:?];
            MEMORY[0x29EDC9740](v9);
            MEMORY[0x29EDC9740](children);
          }

          else
          {
            title = [v20 title];
            MEMORY[0x29EDC9740](title);
            if (title)
            {
              v5 = objc_alloc(MEMORY[0x29EDC78E0]);
              title2 = [v20 title];
              v17 = [v5 initWithName:? target:? selector:?];
              *&v2 = MEMORY[0x29EDC9740](title2).n128_u64[0];
              [v17 _accessibilitySetRetainedValue:v20 forKey:{@"AXCollectionViewTableCellActionKey", v2}];
              [array addObject:v17];
              objc_storeStrong(&v17, 0);
            }
          }

          objc_storeStrong(&_menu, 0);
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            _AXAssert();
          }
        }

        ++v13;
        if (v11 + 1 >= v14)
        {
          v13 = 0;
          v14 = [obj countByEnumeratingWithState:__b objects:v26 count:16];
          if (!v14)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x29EDC9740](obj);
    v25 = MEMORY[0x29EDC9748](array);
    v22 = 1;
    objc_storeStrong(&array, 0);
  }

  else
  {
    v25 = 0;
    v22 = 1;
  }

  objc_storeStrong(&location, 0);
  v3 = v25;

  return v3;
}

- (id)_privateAccessibilityCustomActions
{
  selfCopy = self;
  v79[1] = a2;
  v79[0] = [MEMORY[0x29EDB8DE8] array];
  v77 = 0;
  v29 = [(UICollectionViewTableCellAccessibility *)selfCopy safeValueForKey:@"_tableLayout"];
  v76 = __UIAccessibilitySafeClass();
  MEMORY[0x29EDC9740](v29);
  v75 = MEMORY[0x29EDC9748](v76);
  objc_storeStrong(&v76, 0);
  v78 = v75;
  _accessibilityIndexPath = [(UICollectionViewTableCellAccessibility *)selfCopy _accessibilityIndexPath];
  if (_accessibilityIndexPath)
  {
    v72 = [(UICollectionViewTableCellAccessibility *)selfCopy _accessibilityViewAncestorIsKindOf:objc_opt_class()];
    v71 = [v78 safeValueForKey:@"_delegateActual"];
    v70 = [v78 safeValueForKey:@"_delegateProxy"];
    if (v71)
    {
      if (objc_opt_respondsToSelector())
      {
        v69 = [v70 collectionView:v72 tableLayout:v78 leadingSwipeActionsConfigurationForRowAtIndexPath:_accessibilityIndexPath];
        v26 = v79[0];
        v25 = selfCopy;
        actions = [v69 actions];
        v27 = [(UICollectionViewTableCellAccessibility *)v25 _axCustomActionsForActions:actions];
        [v26 axSafelyAddObjectsFromArray:?];
        MEMORY[0x29EDC9740](v27);
        MEMORY[0x29EDC9740](actions);
        objc_storeStrong(&v69, 0);
      }

      else if (objc_opt_respondsToSelector())
      {
        v68 = [v70 collectionView:v72 tableLayout:v78 leadingSwipeActionsForRowAtIndexPath:_accessibilityIndexPath];
        v23 = v79[0];
        v24 = [(UICollectionViewTableCellAccessibility *)selfCopy _axCustomActionsForActions:v68];
        [v23 axSafelyAddObjectsFromArray:?];
        MEMORY[0x29EDC9740](v24);
        objc_storeStrong(&v68, 0);
      }

      if (objc_opt_respondsToSelector())
      {
        v67 = [v70 collectionView:v72 tableLayout:v78 trailingSwipeActionsConfigurationForRowAtIndexPath:_accessibilityIndexPath];
        v20 = v79[0];
        v19 = selfCopy;
        actions2 = [v67 actions];
        v21 = [(UICollectionViewTableCellAccessibility *)v19 _axCustomActionsForActions:actions2];
        [v20 axSafelyAddObjectsFromArray:?];
        MEMORY[0x29EDC9740](v21);
        MEMORY[0x29EDC9740](actions2);
        objc_storeStrong(&v67, 0);
      }

      else if (objc_opt_respondsToSelector())
      {
        v66 = [v70 collectionView:v72 tableLayout:v78 trailingSwipeActionsForRowAtIndexPath:_accessibilityIndexPath];
        v17 = v79[0];
        v18 = [(UICollectionViewTableCellAccessibility *)selfCopy _axCustomActionsForActions:v66];
        [v17 axSafelyAddObjectsFromArray:?];
        MEMORY[0x29EDC9740](v18);
        objc_storeStrong(&v66, 0);
      }
    }

    else
    {
      v64 = 0;
      v16 = [(UICollectionViewTableCellAccessibility *)selfCopy safeValueForKey:@"currentLayout"];
      v63 = __UIAccessibilitySafeClass();
      MEMORY[0x29EDC9740](v16);
      v62 = MEMORY[0x29EDC9748](v63);
      objc_storeStrong(&v63, 0);
      v65 = v62;
      v54 = 0;
      v55 = &v54;
      v56 = 838860800;
      v57 = 48;
      v58 = __Block_byref_object_copy__8;
      v59 = __Block_byref_object_dispose__8;
      v60 = 0;
      v47 = MEMORY[0x29EDCA5F8];
      v48 = -1073741824;
      v49 = 0;
      v50 = __76__UICollectionViewTableCellAccessibility__privateAccessibilityCustomActions__block_invoke;
      v51 = &unk_29F30C860;
      v53[1] = &v54;
      v52 = MEMORY[0x29EDC9748](v62);
      v53[0] = MEMORY[0x29EDC9748](_accessibilityIndexPath);
      AXPerformSafeBlock();
      v46 = MEMORY[0x29EDC9748](v55[5]);
      objc_storeStrong(v53, 0);
      objc_storeStrong(&v52, 0);
      _Block_object_dispose(&v54, 8);
      objc_storeStrong(&v60, 0);
      v61 = v46;
      v13 = v79[0];
      v12 = selfCopy;
      actions3 = [v46 actions];
      v14 = [(UICollectionViewTableCellAccessibility *)v12 _axCustomActionsForActions:actions3];
      [v13 axSafelyAddObjectsFromArray:?];
      MEMORY[0x29EDC9740](v14);
      MEMORY[0x29EDC9740](actions3);
      v39 = 0;
      v40 = &v39;
      v41 = 838860800;
      v42 = 48;
      v43 = __Block_byref_object_copy__8;
      v44 = __Block_byref_object_dispose__8;
      v45 = 0;
      v32 = MEMORY[0x29EDCA5F8];
      v33 = -1073741824;
      v34 = 0;
      v35 = __76__UICollectionViewTableCellAccessibility__privateAccessibilityCustomActions__block_invoke_2;
      v36 = &unk_29F30C860;
      v38[1] = &v39;
      v37 = MEMORY[0x29EDC9748](v65);
      v38[0] = MEMORY[0x29EDC9748](_accessibilityIndexPath);
      AXPerformSafeBlock();
      v31 = MEMORY[0x29EDC9748](v40[5]);
      objc_storeStrong(v38, 0);
      objc_storeStrong(&v37, 0);
      _Block_object_dispose(&v39, 8);
      objc_storeStrong(&v45, 0);
      v2 = v61;
      v61 = v31;
      *&v3 = MEMORY[0x29EDC9740](v2).n128_u64[0];
      v9 = v79[0];
      v8 = selfCopy;
      actions4 = [v61 actions];
      v10 = [(UICollectionViewTableCellAccessibility *)v8 _axCustomActionsForActions:actions4];
      [v9 axSafelyAddObjectsFromArray:?];
      MEMORY[0x29EDC9740](v10);
      MEMORY[0x29EDC9740](actions4);
      objc_storeStrong(&v61, 0);
      objc_storeStrong(&v65, 0);
    }

    if (![v79[0] count])
    {
      v30 = [(UICollectionViewTableCellAccessibility *)selfCopy safeValueForKey:@"tableViewCell"];
      if (v30)
      {
        v6 = v79[0];
        _privateAccessibilityCustomActions = [v30 _privateAccessibilityCustomActions];
        [v6 axSafelyAddObjectsFromArray:?];
        MEMORY[0x29EDC9740](_privateAccessibilityCustomActions);
      }

      objc_storeStrong(&v30, 0);
    }

    v81 = MEMORY[0x29EDC9748](v79[0]);
    v73 = 1;
    objc_storeStrong(&v70, 0);
    objc_storeStrong(&v71, 0);
    objc_storeStrong(&v72, 0);
  }

  else
  {
    v81 = MEMORY[0x29EDC9748](v79[0]);
    v73 = 1;
  }

  objc_storeStrong(&_accessibilityIndexPath, 0);
  objc_storeStrong(&v78, 0);
  objc_storeStrong(v79, 0);
  v4 = v81;

  return v4;
}

double __76__UICollectionViewTableCellAccessibility__privateAccessibilityCustomActions__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _leadingSwipeActionsConfigurationForIndexPath:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

double __76__UICollectionViewTableCellAccessibility__privateAccessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) _trailingSwipeActionsConfigurationForIndexPath:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

@end