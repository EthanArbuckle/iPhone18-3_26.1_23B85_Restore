@interface UICollectionViewListCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityHandleReorderMoveUp:(BOOL)a3;
- (BOOL)_axIsCustomAccessoryKindOfSwitch;
- (BOOL)isAccessibilityElement;
- (CGPoint)accessibilityActivationPoint;
- (id)_accessibilityBriefLabel;
- (id)_accessibilityNextIndexPath;
- (id)_accessibilityPreviousIndexPath;
- (id)_accessibilityRetrieveCollectionViewListCellTextExcludingDetailText:(BOOL)a3;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_accessibilityTrailingViews;
- (id)_axIgnoredConfigurationIdentifiers;
- (id)_privateAccessibilityCustomActions;
- (id)accessibilityValue;
- (id)automationElements;
- (int64_t)_accessibilityExpandedStatus;
- (uint64_t)_accessibilityHasReorderActions;
- (uint64_t)_axCellSelectionTogglesExpansionState;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityEnumerateCurrentConfigurationsWithBlock:(void *)a1;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_updateSystemTypeAccessoryView:(id)a3 withCellAccessory:(id)a4 orConfiguration:(id)a5 usingState:(id)a6 isUserInitiated:(BOOL)a7;
- (void)accessibilityElementDidBecomeFocused;
@end

@implementation UICollectionViewListCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v18 = location;
  v17 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = "@";
  v16 = "B";
  v13 = @"UICollectionViewListCell";
  v3 = "v";
  [location[0] validateClass:"@" hasInstanceMethod:"@" withFullSignature:{"@", "@", "B", 0}];
  [location[0] validateClass:v13 hasInstanceMethod:@"_setNeedsUpdateAccessories" withFullSignature:{v3, 0}];
  [location[0] validateClass:v13 hasInstanceMethod:@"_updateCurrentSystemTypeAccessoryViewsUsingState:" withFullSignature:{v3, v15, 0}];
  [location[0] validateClass:v13 hasInstanceMethod:@"_accessoryManager" withFullSignature:{v15, 0}];
  [location[0] validateClass:v13 hasInstanceMethod:@"leadingAccessoryConfigurations" withFullSignature:{v15, 0}];
  [location[0] validateClass:v13 hasInstanceMethod:@"trailingAccessoryConfigurations" withFullSignature:{v15, 0}];
  [location[0] validateClass:v13 hasInstanceMethod:@"leadingEditingAccessoryConfigurations" withFullSignature:{v15, 0}];
  [location[0] validateClass:v13 hasInstanceMethod:@"trailingEditingAccessoryConfigurations" withFullSignature:{v15, 0}];
  [location[0] validateClass:v13 hasInstanceMethod:@"_toggleExpansionState" withFullSignature:{v3, 0}];
  [location[0] validateClass:v13 hasInstanceMethod:@"_deleteAccessoryTriggered" withFullSignature:{v3, 0}];
  v6 = @"UICollectionViewCell";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v13 hasInstanceMethod:@"_expanded" withFullSignature:{v16, 0}];
  [location[0] validateClass:v13 hasInstanceMethod:@"_setExpanded:" withFullSignature:{v3, v16, 0}];
  [location[0] validateClass:v6 hasInstanceMethod:@"configurationState" withFullSignature:{v15, 0}];
  [location[0] validateClass:v13 hasInstanceMethod:@"_cellSelectionTogglesExpansionState" withFullSignature:{v16, 0}];
  [location[0] validateClass:@"UICellAccessoryManager" hasInstanceMethod:@"currentConfiguration" withFullSignature:{v15, 0}];
  v4 = @"UICellAccessoryConfiguration";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v4 hasInstanceMethod:@"leadingAccessories" withFullSignature:{v15, 0}];
  v5 = @"_UICellAccessoryConfiguration";
  v9 = @"_isSystemType";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  v11 = @"_systemType";
  v12 = "q";
  [location[0] validateClass:v5 hasInstanceMethod:0 withFullSignature:?];
  [location[0] validateClass:v5 hasInstanceMethod:@"_identifier" withFullSignature:{v15, 0}];
  [location[0] validateClass:v13 isKindOfClass:v6];
  [location[0] validateClass:@"_UITableViewCellBadge"];
  v7 = @"_UICellViewAccessory";
  [location[0] validateClass:?];
  v8 = @"_UICellAccessory";
  [location[0] validateClass:v7 isKindOfClass:?];
  [location[0] validateClass:v8 hasInstanceMethod:@"view" withFullSignature:{v15, 0}];
  [location[0] validateClass:v8 hasInstanceMethod:@"identifier" withFullSignature:{v15, 0}];
  v10 = @"UICellAccessory";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v10 hasInstanceMethod:v11 withFullSignature:{v12, 0}];
  v14 = @"UIView";
  [location[0] validateClass:v13 isKindOfClass:?];
  [location[0] validateClass:v14 hasInstanceMethod:@"_gestureRecognizers" withFullSignature:{v15, 0}];
  [location[0] validateClass:@"UICollectionView" hasInstanceMethod:@"_canReorderItemAtIndexPath:" withFullSignature:{v16, v15, 0}];
  objc_storeStrong(v18, v17);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v10 = self;
  v9 = a2;
  v8.receiver = self;
  v8.super_class = UICollectionViewListCellAccessibility;
  [(UICollectionViewListCellAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  v2 = MEMORY[0x29EDCA5F8];
  v3 = -1073741824;
  v4 = 0;
  v5 = __83__UICollectionViewListCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v6 = &unk_29F30C7C8;
  v7 = MEMORY[0x29EDC9748](v10);
  AXPerformSafeBlock();
  objc_storeStrong(&v7, 0);
}

double __83__UICollectionViewListCellAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setNeedsUpdateAccessories];
  v3 = *(a1 + 32);
  v4 = [v3 safeValueForKey:@"configurationState"];
  [v3 _updateCurrentSystemTypeAccessoryViewsUsingState:?];
  *&result = MEMORY[0x29EDC9740](v4).n128_u64[0];
  return result;
}

- (id)_accessibilityBriefLabel
{
  v19 = self;
  v18[1] = a2;
  v18[0] = [(UICollectionViewListCellAccessibility *)self _accessibilityRetrieveCollectionViewListCellTextExcludingDetailText:1];
  if (![v18[0] length])
  {
    v17 = [MEMORY[0x29EDB8DE8] array];
    v7 = v19;
    v10 = MEMORY[0x29EDCA5F8];
    v11 = -1073741824;
    v12 = 0;
    v13 = __65__UICollectionViewListCellAccessibility__accessibilityBriefLabel__block_invoke;
    v14 = &unk_29F30D510;
    v15 = MEMORY[0x29EDC9748](v19);
    v16 = MEMORY[0x29EDC9748](v17);
    v2 = [(UICollectionViewListCellAccessibility *)v7 _accessibilityFindDescendant:&v10];
    v9 = AXLabelAndValueForElements();
    v8 = [v9 componentsSeparatedByString:{@", "}];
    v3 = [v8 firstObject];
    v4 = v18[0];
    v18[0] = v3;
    MEMORY[0x29EDC9740](v4);
    MEMORY[0x29EDC9740](v8);
    MEMORY[0x29EDC9740](v9);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v17, 0);
  }

  v6 = MEMORY[0x29EDC9748](v18[0]);
  objc_storeStrong(v18, 0);

  return v6;
}

uint64_t __65__UICollectionViewListCellAccessibility__accessibilityBriefLabel__block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (location[0] != a1[4] && ([location[0] isAccessibilityElement] & 1) != 0)
  {
    NSClassFromString(&cfstr_Uicollectionvi_13.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [a1[5] addObject:location[0]];
    }
  }

  objc_storeStrong(location, 0);
  return 0;
}

- (id)_accessibilityRetrieveCollectionViewListCellTextExcludingDetailText:(BOOL)a3
{
  v37 = *MEMORY[0x29EDCA608];
  v34 = self;
  v33 = a2;
  v32 = a3;
  v30 = 0;
  objc_opt_class();
  v29 = __UIAccessibilityCastAsClass();
  v28 = MEMORY[0x29EDC9748](v29);
  objc_storeStrong(&v29, 0);
  v31 = v28;
  if (v32)
  {
    v27 = [(UICollectionViewListCellAccessibility *)v34 accessibilityUserDefinedLabel];
    if (v27)
    {
      v35 = MEMORY[0x29EDC9748](v27);
      v26 = 1;
    }

    else
    {
      v25 = [v31 contentConfiguration];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v35 = [v25 text];
      }

      else
      {
        v35 = [v25 accessibilityLabel];
      }

      v26 = 1;
      objc_storeStrong(&v25, 0);
    }

    objc_storeStrong(&v27, 0);
  }

  else
  {
    v23.receiver = v34;
    v23.super_class = UICollectionViewListCellAccessibility;
    v24 = [(UICollectionViewListCellAccessibility *)&v23 accessibilityLabel];
    v21 = 0;
    v18 = 0;
    if (v24)
    {
      v22 = [v31 configurationState];
      v21 = 1;
      v18 = [v22 isEditing];
    }

    if (v21)
    {
      MEMORY[0x29EDC9740](v22);
    }

    if (v18)
    {
      memset(__b, 0, sizeof(__b));
      obj = [v31 accessories];
      v17 = [obj countByEnumeratingWithState:__b objects:v36 count:16];
      if (v17)
      {
        v13 = *__b[2];
        v14 = 0;
        v15 = v17;
        while (1)
        {
          v12 = v14;
          if (*__b[2] != v13)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(__b[1] + 8 * v14);
          if (([v20 isHidden] & 1) == 0)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v11 = accessibilityUIKitLocalizedString();
              v9 = v24;
              v3 = AXCFormattedString();
              v4 = v24;
              v24 = v3;
              MEMORY[0x29EDC9740](v4);
              MEMORY[0x29EDC9740](v11);
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v10 = accessibilityUIKitLocalizedString();
                v9 = v24;
                v5 = AXCFormattedString();
                v6 = v24;
                v24 = v5;
                MEMORY[0x29EDC9740](v6);
                MEMORY[0x29EDC9740](v10);
              }
            }
          }

          ++v14;
          if (v12 + 1 >= v15)
          {
            v14 = 0;
            v15 = [obj countByEnumeratingWithState:__b objects:v36 count:16];
            if (!v15)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x29EDC9740](obj);
    }

    v35 = MEMORY[0x29EDC9748](v24);
    v26 = 1;
    objc_storeStrong(&v24, 0);
  }

  objc_storeStrong(&v31, 0);
  v7 = v35;

  return v7;
}

- (id)accessibilityValue
{
  v43 = *MEMORY[0x29EDCA608];
  v41 = self;
  v40[1] = a2;
  v40[0] = [(UICollectionViewListCellAccessibility *)self accessibilityUserDefinedValue];
  if (![v40[0] length])
  {
    v39.receiver = v41;
    v39.super_class = UICollectionViewListCellAccessibility;
    v2 = [(UICollectionViewListCellAccessibility *)&v39 accessibilityValue];
    v3 = v40[0];
    v40[0] = v2;
    *&v4 = MEMORY[0x29EDC9740](v3).n128_u64[0];
    v20 = [(UICollectionViewListCellAccessibility *)v41 _accessibilityTrailingViews];
    location = [v20 axFilterObjectsUsingBlock:&__block_literal_global_17];
    MEMORY[0x29EDC9740](v20);
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](location);
    v22 = [obj countByEnumeratingWithState:__b objects:v42 count:16];
    if (v22)
    {
      v17 = *__b[2];
      v18 = 0;
      v19 = v22;
      while (1)
      {
        v16 = v18;
        if (*__b[2] != v17)
        {
          objc_enumerationMutation(obj);
        }

        v37 = *(__b[1] + 8 * v18);
        v13 = [v37 accessibilityLabel];
        v14 = @"__AXStringForVariablesSentinel";
        v5 = __UIAXStringForVariables();
        v6 = v40[0];
        v40[0] = v5;
        MEMORY[0x29EDC9740](v6);
        *&v7 = MEMORY[0x29EDC9740](v13).n128_u64[0];
        ++v18;
        if (v16 + 1 >= v19)
        {
          v18 = 0;
          v19 = [obj countByEnumeratingWithState:__b objects:v42 count:{16, v7, v13, @"__AXStringForVariablesSentinel"}];
          if (!v19)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x29EDC9740](obj);
    objc_storeStrong(&location, 0);
  }

  if ([(UICollectionViewListCellAccessibility *)v41 _axIsCustomAccessoryKindOfSwitch])
  {
    v34 = 0;
    objc_opt_class();
    v33 = __UIAccessibilityCastAsClass();
    v32 = MEMORY[0x29EDC9748](v33);
    objc_storeStrong(&v33, 0);
    v35 = [v32 accessories];
    *&v8 = MEMORY[0x29EDC9740](v32).n128_u64[0];
    v31 = 0;
    if ([v35 count] == 1)
    {
      v30 = [v35 firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = 0;
        objc_opt_class();
        v27 = __UIAccessibilityCastAsClass();
        v26 = MEMORY[0x29EDC9748](v27);
        objc_storeStrong(&v27, 0);
        v29 = [v26 customView];
        MEMORY[0x29EDC9740](v26);
        v25 = 0;
        objc_opt_class();
        v24 = __UIAccessibilityCastAsClass();
        v23 = MEMORY[0x29EDC9748](v24);
        objc_storeStrong(&v24, 0);
        v9 = v31;
        v31 = v23;
        MEMORY[0x29EDC9740](v9);
        objc_storeStrong(&v29, 0);
      }

      objc_storeStrong(&v30, 0);
    }

    v10 = [v31 accessibilityValue];
    v11 = v40[0];
    v40[0] = v10;
    MEMORY[0x29EDC9740](v11);
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v35, 0);
  }

  v15 = MEMORY[0x29EDC9748](v40[0]);
  objc_storeStrong(v40, 0);

  return v15;
}

uint64_t __59__UICollectionViewListCellAccessibility_accessibilityValue__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_storeStrong(location, 0);
  return isKindOfClass & 1;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v7 = self;
  location[1] = a2;
  v5.receiver = self;
  v5.super_class = UICollectionViewListCellAccessibility;
  location[0] = [(UICollectionViewListCellAccessibility *)&v5 _accessibilitySupplementaryFooterViews];
  if (location[0] || [(UICollectionViewListCellAccessibility *)v7 _axIsCustomAccessoryKindOfSwitch])
  {
    v8 = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v4 = [(UICollectionViewListCellAccessibility *)v7 _accessibilityTrailingViews];
    v8 = [v4 axFilterObjectsUsingBlock:&__block_literal_global_456];
    MEMORY[0x29EDC9740](v4);
  }

  objc_storeStrong(location, 0);
  v2 = v8;

  return v2;
}

uint64_t __79__UICollectionViewListCellAccessibility__accessibilitySupplementaryFooterViews__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_opt_class();
  LOBYTE(v3) = 0;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    NSClassFromString(&cfstr_Uitableviewcel_8.isa);
    v3 = objc_opt_isKindOfClass() ^ 1;
  }

  objc_storeStrong(location, 0);
  return v3 & 1;
}

- (id)_axIgnoredConfigurationIdentifiers
{
  if (a1)
  {
    v4 = &_axIgnoredConfigurationIdentifiers_onceToken;
    location = 0;
    objc_storeStrong(&location, &__block_literal_global_458);
    if (*v4 != -1)
    {
      dispatch_once(v4, location);
    }

    objc_storeStrong(&location, 0);
    v2 = MEMORY[0x29EDC9748](_axIgnoredConfigurationIdentifiers_ignoredIdentifiers);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __75__UICollectionViewListCellAccessibility__axIgnoredConfigurationIdentifiers__block_invoke(void *a1)
{
  v12[2] = a1;
  v12[1] = a1;
  v12[0] = objc_opt_new();
  v6 = objc_alloc_init(MEMORY[0x29EDC7E00]);
  v11 = [v6 safeStringForKey:?];
  *&v1 = MEMORY[0x29EDC9740](v6).n128_u64[0];
  [v12[0] axSafelyAddObject:{v11, v1}];
  v7 = objc_alloc_init(MEMORY[0x29EDC7E08]);
  v10 = [v7 safeStringForKey:@"_identifier"];
  *&v2 = MEMORY[0x29EDC9740](v7).n128_u64[0];
  [v12[0] axSafelyAddObject:{v10, v2}];
  v8 = [objc_alloc(MEMORY[0x29EDC7E10]) initWithCellSelectionTogglesExpansionState:0];
  v9 = [v8 safeStringForKey:@"_identifier"];
  *&v3 = MEMORY[0x29EDC9740](v8).n128_u64[0];
  [v12[0] axSafelyAddObject:{v9, v3}];
  v4 = [v12[0] copy];
  v5 = _axIgnoredConfigurationIdentifiers_ignoredIdentifiers;
  _axIgnoredConfigurationIdentifiers_ignoredIdentifiers = v4;
  MEMORY[0x29EDC9740](v5);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(v12, 0);
}

- (id)_accessibilityTrailingViews
{
  v30 = *MEMORY[0x29EDCA608];
  v27 = self;
  v26[1] = a2;
  v26[0] = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v16 = [(UICollectionViewListCellAccessibility *)v27 safeValueForKey:@"_accessoryManager"];
  v25 = [v16 safeValueForKey:@"currentConfiguration"];
  MEMORY[0x29EDC9740](v16);
  memset(__b, 0, sizeof(__b));
  obj = [v25 safeArrayForKey:@"trailingAccessories"];
  v18 = [obj countByEnumeratingWithState:__b objects:v29 count:16];
  if (v18)
  {
    v13 = *__b[2];
    v14 = 0;
    v15 = v18;
    while (1)
    {
      v12 = v14;
      if (*__b[2] != v13)
      {
        objc_enumerationMutation(obj);
      }

      v24 = *(__b[1] + 8 * v14);
      v22 = 0;
      location = [v24 safeStringForKey:@"identifier"];
      memset(v19, 0, sizeof(v19));
      v10 = [(UICollectionViewListCellAccessibility *)v27 _axIgnoredConfigurationIdentifiers];
      v11 = [v10 countByEnumeratingWithState:v19 objects:v28 count:16];
      if (v11)
      {
        v7 = *v19[2];
        v8 = 0;
        v9 = v11;
        while (1)
        {
          v6 = v8;
          if (*v19[2] != v7)
          {
            objc_enumerationMutation(v10);
          }

          v20 = *(v19[1] + 8 * v8);
          v22 = [location _containsSubstring:v20];
          if (v22)
          {
            break;
          }

          ++v8;
          if (v6 + 1 >= v9)
          {
            v8 = 0;
            v9 = [v10 countByEnumeratingWithState:v19 objects:v28 count:16];
            if (!v9)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x29EDC9740](v10);
      if ((v22 & 1) == 0)
      {
        NSClassFromString(&cfstr_Uicellviewacce.isa);
        if (objc_opt_isKindOfClass())
        {
          v4 = v26[0];
          v5 = [v24 safeValueForKey:@"view"];
          [v4 axSafelyAddObject:?];
          MEMORY[0x29EDC9740](v5);
        }
      }

      objc_storeStrong(&location, 0);
      ++v14;
      if (v12 + 1 >= v15)
      {
        v14 = 0;
        v15 = [obj countByEnumeratingWithState:__b objects:v29 count:16];
        if (!v15)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](obj);
  v3 = MEMORY[0x29EDC9748](v26[0]);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(v26, 0);

  return v3;
}

- (BOOL)isAccessibilityElement
{
  v6 = [(UICollectionViewListCellAccessibility *)self isAccessibilityUserDefinedElement];
  *&v2 = MEMORY[0x29EDC9740](v6).n128_u64[0];
  if (v6)
  {
    v5 = [(UICollectionViewListCellAccessibility *)self isAccessibilityUserDefinedElement];
    v8 = [v5 BOOLValue] & 1;
    MEMORY[0x29EDC9740](v5);
  }

  else
  {
    v4 = [(UICollectionViewListCellAccessibility *)self accessibilityLabel];
    v8 = [v4 length] != 0;
    MEMORY[0x29EDC9740](v4);
  }

  return v8;
}

- (unint64_t)accessibilityTraits
{
  v29 = *MEMORY[0x29EDCA608];
  v27 = self;
  v26 = a2;
  v24.receiver = self;
  v24.super_class = UICollectionViewListCellAccessibility;
  v25 = [(UICollectionViewListCellAccessibility *)&v24 accessibilityTraits];
  if ([(UICollectionViewListCellAccessibility *)v27 _accessibilityExpandedStatus]&& ([(UICollectionViewListCellAccessibility *)v27 _axCellSelectionTogglesExpansionState]& 1) != 0)
  {
    v25 |= *MEMORY[0x29EDC7F70];
  }

  v23 = [(UICollectionViewListCellAccessibility *)v27 contentView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v23 configuration];
    v2 = [v13 accessibilityTraits];
    v25 |= v2;
    MEMORY[0x29EDC9740](v13);
  }

  memset(__b, 0, sizeof(__b));
  v20 = 0;
  objc_opt_class();
  v19 = __UIAccessibilityCastAsClass();
  v18 = MEMORY[0x29EDC9748](v19);
  objc_storeStrong(&v19, 0);
  obj = [v18 accessories];
  v12 = [obj countByEnumeratingWithState:__b objects:v28 count:{16, MEMORY[0x29EDC9740](v18).n128_f64[0]}];
  if (v12)
  {
    v8 = *__b[2];
    v9 = 0;
    v10 = v12;
    while (1)
    {
      v7 = v9;
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(__b[1] + 8 * v9);
      if (([v22 isHidden] & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 |= *MEMORY[0x29EDC7F70];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 |= *MEMORY[0x29EDC7FC0];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = 0;
          objc_opt_class();
          v15 = __UIAccessibilityCastAsClass();
          if (v16)
          {
            abort();
          }

          v14 = MEMORY[0x29EDC9748](v15);
          objc_storeStrong(&v15, 0);
          v17 = [v14 customView];
          *&v3 = MEMORY[0x29EDC9740](v14).n128_u64[0];
          if (v17)
          {
            v4 = [v17 accessibilityTraits];
            v25 |= v4;
          }

          objc_storeStrong(&v17, 0);
        }
      }

      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [obj countByEnumeratingWithState:__b objects:v28 count:16];
        if (!v10)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](obj);
  v6 = v25;
  objc_storeStrong(&v23, 0);
  return v6;
}

- (uint64_t)_axCellSelectionTogglesExpansionState
{
  if (a1)
  {
    v2 = [a1 safeBoolForKey:@"_cellSelectionTogglesExpansionState"] & 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (CGPoint)accessibilityActivationPoint
{
  v19 = self;
  v18[1] = a2;
  if ([(UICollectionViewListCellAccessibility *)self _axIsCustomAccessoryKindOfSwitch])
  {
    v17 = 0;
    objc_opt_class();
    v16 = __UIAccessibilityCastAsClass();
    v15 = MEMORY[0x29EDC9748](v16);
    objc_storeStrong(&v16, 0);
    v9 = [v15 accessories];
    v18[0] = [v9 firstObject];
    MEMORY[0x29EDC9740](v9);
    MEMORY[0x29EDC9740](v15);
    v13 = 0;
    objc_opt_class();
    v12 = __UIAccessibilityCastAsClass();
    v11 = MEMORY[0x29EDC9748](v12);
    objc_storeStrong(&v12, 0);
    v14 = [v11 customView];
    *&v2 = MEMORY[0x29EDC9740](v11).n128_u64[0];
    [v14 accessibilityActivationPoint];
    v20 = v3;
    v21 = v4;
    objc_storeStrong(&v14, 0);
    objc_storeStrong(v18, 0);
  }

  else
  {
    v10.receiver = v19;
    v10.super_class = UICollectionViewListCellAccessibility;
    [(UICollectionViewListCellAccessibility *)&v10 accessibilityActivationPoint];
    v20 = v5;
    v21 = v6;
  }

  v7 = v20;
  v8 = v21;
  result.y = v8;
  result.x = v7;
  return result;
}

- (BOOL)_axIsCustomAccessoryKindOfSwitch
{
  v13[2] = self;
  v13[1] = a2;
  v12 = 0;
  objc_opt_class();
  v11 = __UIAccessibilityCastAsClass();
  v10 = MEMORY[0x29EDC9748](v11);
  objc_storeStrong(&v11, 0);
  v13[0] = [v10 accessories];
  *&v2 = MEMORY[0x29EDC9740](v10).n128_u64[0];
  if ([v13[0] count] != 1)
  {
    goto LABEL_6;
  }

  v9 = [v13[0] firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = 0;
    objc_opt_class();
    v6 = __UIAccessibilityCastAsClass();
    v5 = MEMORY[0x29EDC9748](v6);
    objc_storeStrong(&v6, 0);
    v8 = [v5 customView];
    MEMORY[0x29EDC9740](v5);
    objc_opt_class();
    v14 = objc_opt_isKindOfClass() & 1;
    v4 = 1;
    objc_storeStrong(&v8, 0);
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong(&v9, 0);
  if (!v4)
  {
LABEL_6:
    v14 = 0;
  }

  objc_storeStrong(v13, 0);
  return v14 & 1;
}

- (int64_t)_accessibilityExpandedStatus
{
  v17 = self;
  v16 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v15 = [(UICollectionViewListCellAccessibility *)self _axCellSelectionTogglesExpansionState];
  if ((v12[3] & 1) == 0)
  {
    v5 = MEMORY[0x29EDCA5F8];
    v6 = -1073741824;
    v7 = 0;
    v8 = __69__UICollectionViewListCellAccessibility__accessibilityExpandedStatus__block_invoke;
    v9 = &unk_29F30D538;
    v10 = &v11;
    [(UICollectionViewListCellAccessibility *)v17 _accessibilityEnumerateCurrentConfigurationsWithBlock:?];
  }

  if (v12[3])
  {
    v4 = [(UICollectionViewListCellAccessibility *)v17 safeBoolForKey:@"_expanded"];
    v2 = 2;
    if (v4)
    {
      v2 = 1;
    }

    v18 = v2;
  }

  else
  {
    v18 = 0;
  }

  _Block_object_dispose(&v11, 8);
  return v18;
}

void __69__UICollectionViewListCellAccessibility__accessibilityExpandedStatus__block_invoke(void *a1, void *a2, char a3, uint64_t a4, _BYTE *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  if (a4 == 6)
  {
    v9 = a3;
  }

  *(*(a1[4] + 8) + 24) = v9 & 1;
  *a5 = *(*(a1[4] + 8) + 24) & 1;
  objc_storeStrong(location, 0);
}

- (void)_accessibilityEnumerateCurrentConfigurationsWithBlock:(void *)a1
{
  v40 = *MEMORY[0x29EDCA608];
  v38 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v38)
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x20000000;
    v34 = 32;
    v35 = 0;
    v24 = MEMORY[0x29EDCA5F8];
    v25 = -1073741824;
    v26 = 0;
    v27 = __95__UICollectionViewListCellAccessibility__accessibilityEnumerateCurrentConfigurationsWithBlock___block_invoke;
    v28 = &unk_29F30D650;
    v29[1] = &v31;
    v29[0] = MEMORY[0x29EDC9748](location);
    v30 = MEMORY[0x29ED3E4C0](&v24);
    v23 = [v38 safeBoolForKey:@"isEditing"];
    if (v23)
    {
      v17 = v30;
      v16 = [v38 safeArrayForKey:@"leadingEditingAccessoryConfigurations"];
      v17[2]();
      *&v2 = MEMORY[0x29EDC9740](v16).n128_u64[0];
      v15 = v30;
      v14 = [v38 safeArrayForKey:{@"trailingEditingAccessoryConfigurations", v2}];
      v15[2]();
      MEMORY[0x29EDC9740](v14);
    }

    else
    {
      v13 = v30;
      v12 = [v38 safeArrayForKey:@"leadingAccessoryConfigurations"];
      v13[2]();
      *&v3 = MEMORY[0x29EDC9740](v12).n128_u64[0];
      v11 = v30;
      v10 = [v38 safeArrayForKey:{@"trailingAccessoryConfigurations", v3}];
      v11[2]();
      MEMORY[0x29EDC9740](v10);
    }

    memset(__b, 0, sizeof(__b));
    obj = [v38 accessories];
    v9 = [obj countByEnumeratingWithState:__b objects:v39 count:16];
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

        v22 = *(__b[1] + 8 * v6);
        v20 = [v22 displayedState];
        if (([v22 isHidden] & 1) == 0 && (!v20 || (v23 & 1) != 0 && v20 == 1 || (v23 & 1) == 0 && v20 == 2))
        {
          v19 = [v22 safeBoolForKey:@"_isSystemType"];
          v18 = 0;
          if (v19)
          {
            v18 = [v22 safeIntegerForKey:@"_systemType"];
          }

          (*(location + 2))(location, 0, v19 & 1, v18, v32 + 3);
          if (v32[3])
          {
            break;
          }
        }

        ++v6;
        if (v4 + 1 >= v7)
        {
          v6 = 0;
          v7 = [obj countByEnumeratingWithState:__b objects:v39 count:16];
          if (!v7)
          {
            goto LABEL_22;
          }
        }
      }

      v36 = 2;
    }

    else
    {
LABEL_22:
      v36 = 0;
    }

    MEMORY[0x29EDC9740](obj);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(v29, 0);
    _Block_object_dispose(&v31, 8);
    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  objc_storeStrong(&location, 0);
}

- (id)_privateAccessibilityCustomActions
{
  v16 = self;
  v15[1] = a2;
  v15[0] = [MEMORY[0x29EDB8DE8] array];
  v3 = v15[0];
  v14.receiver = v16;
  v14.super_class = UICollectionViewListCellAccessibility;
  v4 = [(UICollectionViewListCellAccessibility *)&v14 _privateAccessibilityCustomActions];
  [v3 axSafelyAddObjectsFromArray:?];
  MEMORY[0x29EDC9740](v4);
  v5 = v16;
  v7 = MEMORY[0x29EDCA5F8];
  v8 = -1073741824;
  v9 = 0;
  v10 = __75__UICollectionViewListCellAccessibility__privateAccessibilityCustomActions__block_invoke;
  v11 = &unk_29F30D600;
  v12 = MEMORY[0x29EDC9748](v16);
  v13 = MEMORY[0x29EDC9748](v15[0]);
  [(UICollectionViewListCellAccessibility *)v5 _accessibilityEnumerateCurrentConfigurationsWithBlock:?];
  v6 = MEMORY[0x29EDC9748](v15[0]);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(v15, 0);

  return v6;
}

void __75__UICollectionViewListCellAccessibility__privateAccessibilityCustomActions__block_invoke(id *a1, void *a2, char a3, unint64_t a4, void *a5)
{
  v120 = *MEMORY[0x29EDCA608];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v117 = a3;
  v116 = a4;
  v115[2] = a5;
  v115[1] = a1;
  v115[0] = [MEMORY[0x29EDB8DE8] array];
  if ((a3 & 1) != 0 && v116 > 1)
  {
    switch(v116)
    {
      case 2uLL:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v77 = MEMORY[0x29EDC9748](location[0]);
          objc_initWeak(&from, a1[4]);
          v17 = v115[0];
          v18 = objc_alloc(MEMORY[0x29EDC78E0]);
          v16 = UIKitAccessibilityLocalizedString();
          v69 = MEMORY[0x29EDCA5F8];
          v70 = -1073741824;
          v71 = 0;
          v72 = __75__UICollectionViewListCellAccessibility__privateAccessibilityCustomActions__block_invoke_5;
          v73 = &unk_29F30D498;
          v74 = MEMORY[0x29EDC9748](v77);
          objc_copyWeak(&v75, &from);
          v15 = [v18 initWithName:v16 actionHandler:&v69];
          [v17 addObject:v15];
          v68 = 0;
          MEMORY[0x29EDC9740](v15);
          MEMORY[0x29EDC9740](v16);
          objc_destroyWeak(&v75);
          objc_storeStrong(&v74, 0);
          objc_destroyWeak(&from);
          objc_storeStrong(&v77, 0);
        }

        break;
      case 3uLL:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v67 = MEMORY[0x29EDC9748](location[0]);
          v14 = [v67 actionHandler];
          MEMORY[0x29EDC9740](v14);
          if (v14)
          {
            v12 = v115[0];
            v13 = objc_alloc(MEMORY[0x29EDC78E0]);
            v10 = UIKitAccessibilityLocalizedString();
            v61 = MEMORY[0x29EDCA5F8];
            v62 = -1073741824;
            v63 = 0;
            v64 = __75__UICollectionViewListCellAccessibility__privateAccessibilityCustomActions__block_invoke_7;
            v65 = &unk_29F30D560;
            v66 = MEMORY[0x29EDC9748](v67);
            v11 = [v13 initWithName:v10 actionHandler:&v61];
            [v12 addObject:v11];
            MEMORY[0x29EDC9740](v11);
            MEMORY[0x29EDC9740](v10);
            objc_storeStrong(&v66, 0);
          }

          objc_storeStrong(&v67, 0);
        }

        break;
      case 4uLL:
        v114 = [a1[4] _accessibilityIndexPath];
        v108 = 0;
        v109 = &v108;
        v110 = 0x20000000;
        v111 = 32;
        v112 = 0;
        v101 = MEMORY[0x29EDCA5F8];
        v102 = -1073741824;
        v103 = 0;
        v104 = __75__UICollectionViewListCellAccessibility__privateAccessibilityCustomActions__block_invoke_2;
        v105 = &unk_29F30C860;
        v107[1] = &v108;
        v106 = MEMORY[0x29EDC9748](a1[4]);
        v107[0] = MEMORY[0x29EDC9748](v114);
        AXPerformSafeBlock();
        v100 = v109[3] & 1;
        objc_storeStrong(v107, 0);
        objc_storeStrong(&v106, 0);
        _Block_object_dispose(&v108, 8);
        v113 = v100 & 1;
        if (v100)
        {
          if ([v114 row] > 0)
          {
            v98 = 0;
            objc_opt_class();
            v46 = [a1[4] _accessibilityParentCollectionView];
            v45 = [(UICollectionViewListCellAccessibility *)a1[4] _accessibilityPreviousIndexPath];
            v44 = [v46 cellForItemAtIndexPath:?];
            v97 = __UIAccessibilityCastAsSafeCategory();
            MEMORY[0x29EDC9740](v44);
            MEMORY[0x29EDC9740](v45);
            MEMORY[0x29EDC9740](v46);
            v96 = MEMORY[0x29EDC9748](v97);
            objc_storeStrong(&v97, 0);
            v99 = v96;
            if (([(UICollectionViewListCellAccessibility *)v96 _accessibilityHasReorderActions]& 1) != 0)
            {
              v42 = v115[0];
              v43 = objc_alloc(MEMORY[0x29EDC78E0]);
              v40 = accessibilityLocalizedString(@"table.cell.reorder.action.move.up");
              v41 = [v43 initWithName:? target:? selector:?];
              [v42 addObject:v41];
              MEMORY[0x29EDC9740](v41);
              MEMORY[0x29EDC9740](v40);
            }

            objc_storeStrong(&v99, 0);
          }

          v39 = [v114 row];
          v38 = [a1[4] _accessibilityParentCollectionView];
          v37 = [v38 numberOfItemsInSection:{objc_msgSend(v114, "section")}] - 1;
          MEMORY[0x29EDC9740](v38);
          if (v39 < v37)
          {
            v94 = 0;
            objc_opt_class();
            v36 = [a1[4] _accessibilityParentCollectionView];
            v35 = [(UICollectionViewListCellAccessibility *)a1[4] _accessibilityNextIndexPath];
            v34 = [v36 cellForItemAtIndexPath:?];
            v93 = __UIAccessibilityCastAsSafeCategory();
            MEMORY[0x29EDC9740](v34);
            MEMORY[0x29EDC9740](v35);
            MEMORY[0x29EDC9740](v36);
            v92 = MEMORY[0x29EDC9748](v93);
            objc_storeStrong(&v93, 0);
            v95 = v92;
            if (([(UICollectionViewListCellAccessibility *)v92 _accessibilityHasReorderActions]& 1) != 0)
            {
              v32 = v115[0];
              v33 = objc_alloc(MEMORY[0x29EDC78E0]);
              v30 = accessibilityLocalizedString(@"table.cell.reorder.action.move.down");
              v31 = [v33 initWithName:? target:? selector:?];
              [v32 addObject:v31];
              MEMORY[0x29EDC9740](v31);
              MEMORY[0x29EDC9740](v30);
            }

            objc_storeStrong(&v95, 0);
          }
        }

        objc_storeStrong(&v114, 0);
        break;
      default:
        if (v116 != 5)
        {
          if (v116 == 6)
          {
            objc_initWeak(&v60, a1[4]);
            v59 = [a1[4] safeBoolForKey:@"_expanded"];
            if (v59)
            {
              v5 = @"list.cell.accessory.outlinedisclosure.collapse.action";
            }

            else
            {
              v5 = @"list.cell.accessory.outlinedisclosure.expand.action";
            }

            v58 = MEMORY[0x29EDC9748](v5);
            v8 = v115[0];
            v9 = objc_alloc(MEMORY[0x29EDC78E0]);
            v7 = UIKitAccessibilityLocalizedString();
            v51 = MEMORY[0x29EDCA5F8];
            v52 = -1073741824;
            v53 = 0;
            v54 = __75__UICollectionViewListCellAccessibility__privateAccessibilityCustomActions__block_invoke_8;
            v55 = &unk_29F30D5D8;
            objc_copyWeak(&v56, &v60);
            v57 = v59 & 1;
            v6 = [v9 initWithName:v7 actionHandler:&v51];
            [v8 addObject:v6];
            MEMORY[0x29EDC9740](v6);
            MEMORY[0x29EDC9740](v7);
            v78 = 2;
            objc_destroyWeak(&v56);
            objc_storeStrong(&v58, 0);
            objc_destroyWeak(&v60);
          }

          else if (v116 - 7 > 1 && v116 == 9)
          {
            objc_initWeak(&v91, a1[4]);
            memset(__b, 0, sizeof(__b));
            v88 = 0;
            objc_opt_class();
            v29 = objc_loadWeakRetained(&v91);
            v87 = __UIAccessibilityCastAsClass();
            MEMORY[0x29EDC9740](v29);
            v86 = MEMORY[0x29EDC9748](v87);
            objc_storeStrong(&v87, 0);
            obj = [v86 accessories];
            v27 = [obj countByEnumeratingWithState:__b objects:v119 count:{16, MEMORY[0x29EDC9740](v86).n128_f64[0]}];
            if (v27)
            {
              v24 = *__b[2];
              v25 = 0;
              v26 = v27;
              while (1)
              {
                v23 = v25;
                if (*__b[2] != v24)
                {
                  objc_enumerationMutation(obj);
                }

                v90 = *(__b[1] + 8 * v25);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  break;
                }

                ++v25;
                if (v23 + 1 >= v26)
                {
                  v25 = 0;
                  v26 = [obj countByEnumeratingWithState:__b objects:v119 count:16];
                  if (!v26)
                  {
                    goto LABEL_29;
                  }
                }
              }

              v85 = MEMORY[0x29EDC9748](v90);
              v21 = v115[0];
              v22 = objc_alloc(MEMORY[0x29EDC78E0]);
              v19 = UIKitAccessibilityLocalizedString();
              v79 = MEMORY[0x29EDCA5F8];
              v80 = -1073741824;
              v81 = 0;
              v82 = __75__UICollectionViewListCellAccessibility__privateAccessibilityCustomActions__block_invoke_3;
              v83 = &unk_29F30D560;
              v84 = MEMORY[0x29EDC9748](v85);
              v20 = [v22 initWithName:v19 actionHandler:&v79];
              [v21 addObject:v20];
              MEMORY[0x29EDC9740](v20);
              MEMORY[0x29EDC9740](v19);
              v78 = 3;
              objc_storeStrong(&v84, 0);
              objc_storeStrong(&v85, 0);
            }

            else
            {
LABEL_29:
              v78 = 0;
            }

            MEMORY[0x29EDC9740](obj);
            v78 = 2;
            objc_destroyWeak(&v91);
          }
        }

        break;
    }
  }

  [a1[5] axSafelyAddObjectsFromArray:v115[0]];
  objc_storeStrong(v115, 0);
  objc_storeStrong(location, 0);
}

double __75__UICollectionViewListCellAccessibility__privateAccessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) _accessibilityParentCollectionView];
  *(*(*(a1 + 48) + 8) + 24) = [v3 _canReorderItemAtIndexPath:*(a1 + 40)];
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

- (id)_accessibilityPreviousIndexPath
{
  v12 = a1;
  if (a1)
  {
    v11 = [v12 _accessibilityParentCollectionView];
    location = [v12 _accessibilityIndexPath];
    if (v11 && location)
    {
      if ([location row] <= 0)
      {
        if (![location row] && objc_msgSend(location, "section") > 0)
        {
          v8 = [location section] - 1;
          v7 = [v11 numberOfItemsInSection:v8] - 1;
          if ((v7 & 0x8000000000000000) == 0)
          {
            v3 = [MEMORY[0x29EDB9FE0] indexPathForRow:v7 inSection:v8];
            v4 = location;
            location = v3;
            MEMORY[0x29EDC9740](v4);
          }
        }
      }

      else
      {
        v9 = [location row] - 1;
        v1 = [MEMORY[0x29EDB9FE0] indexPathForRow:v9 inSection:{objc_msgSend(location, "section")}];
        v2 = location;
        location = v1;
        MEMORY[0x29EDC9740](v2);
      }

      v13 = MEMORY[0x29EDC9748](location);
    }

    else
    {
      v13 = 0;
    }

    objc_storeStrong(&location, 0);
    objc_storeStrong(&v11, 0);
  }

  else
  {
    v13 = 0;
  }

  v5 = v13;

  return v5;
}

- (uint64_t)_accessibilityHasReorderActions
{
  v13 = a1;
  if (a1)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x20000000;
    v11 = 32;
    v12 = 0;
    v2 = MEMORY[0x29EDCA5F8];
    v3 = -1073741824;
    v4 = 0;
    v5 = __72__UICollectionViewListCellAccessibility__accessibilityHasReorderActions__block_invoke;
    v6 = &unk_29F30D538;
    v7 = &v8;
    [(UICollectionViewListCellAccessibility *)v13 _accessibilityEnumerateCurrentConfigurationsWithBlock:?];
    v14 = v9[3] & 1;
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

- (id)_accessibilityNextIndexPath
{
  v13 = a1;
  if (a1)
  {
    v12 = [v13 _accessibilityParentCollectionView];
    location = [v13 _accessibilityIndexPath];
    if (v12 && location)
    {
      v8 = [v12 numberOfItemsInSection:{objc_msgSend(location, "section")}];
      if (v8 <= [location row] + 1)
      {
        v7 = [v12 numberOfSections];
        if (v7 > [location section] + 1)
        {
          v9 = [location section] + 1;
          if ([v12 numberOfItemsInSection:v9] > 0)
          {
            v3 = [MEMORY[0x29EDB9FE0] indexPathForRow:0 inSection:v9];
            v4 = location;
            location = v3;
            MEMORY[0x29EDC9740](v4);
          }
        }
      }

      else
      {
        v10 = [location row] + 1;
        v1 = [MEMORY[0x29EDB9FE0] indexPathForRow:v10 inSection:{objc_msgSend(location, "section")}];
        v2 = location;
        location = v1;
        MEMORY[0x29EDC9740](v2);
      }

      v14 = MEMORY[0x29EDC9748](location);
    }

    else
    {
      v14 = 0;
    }

    objc_storeStrong(&location, 0);
    objc_storeStrong(&v12, 0);
  }

  else
  {
    v14 = 0;
  }

  v5 = v14;

  return v5;
}

uint64_t __75__UICollectionViewListCellAccessibility__privateAccessibilityCustomActions__block_invoke_3(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9[1] = a1;
  v4 = MEMORY[0x29EDCA5F8];
  v5 = -1073741824;
  v6 = 0;
  v7 = __75__UICollectionViewListCellAccessibility__privateAccessibilityCustomActions__block_invoke_4;
  v8 = &unk_29F30C7C8;
  v9[0] = MEMORY[0x29EDC9748](a1[4]);
  AXPerformSafeBlock();
  objc_storeStrong(v9, 0);
  objc_storeStrong(location, 0);
  return 1;
}

double __75__UICollectionViewListCellAccessibility__privateAccessibilityCustomActions__block_invoke_4(uint64_t a1)
{
  v4 = [*(a1 + 32) actionHandler];
  *&result = MEMORY[0x29EDC9740](v4).n128_u64[0];
  if (v4)
  {
    v2 = [*(a1 + 32) actionHandler];
    v2[2]();
    *&result = MEMORY[0x29EDC9740](v2).n128_u64[0];
  }

  return result;
}

uint64_t __75__UICollectionViewListCellAccessibility__privateAccessibilityCustomActions__block_invoke_5(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10[1] = a1;
  v4 = MEMORY[0x29EDCA5F8];
  v5 = -1073741824;
  v6 = 0;
  v7 = __75__UICollectionViewListCellAccessibility__privateAccessibilityCustomActions__block_invoke_6;
  v8 = &unk_29F30D588;
  v9 = MEMORY[0x29EDC9748](*(a1 + 32));
  objc_copyWeak(v10, (a1 + 40));
  AXPerformSafeBlock();
  objc_destroyWeak(v10);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  return 1;
}

double __75__UICollectionViewListCellAccessibility__privateAccessibilityCustomActions__block_invoke_6(uint64_t a1)
{
  v6 = [*(a1 + 32) actionHandler];
  *&v1 = MEMORY[0x29EDC9740](v6).n128_u64[0];
  if (v6)
  {
    v4 = [*(a1 + 32) actionHandler];
    v4[2]();
    *&result = MEMORY[0x29EDC9740](v4).n128_u64[0];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _deleteAccessoryTriggered];
    *&result = MEMORY[0x29EDC9740](WeakRetained).n128_u64[0];
  }

  return result;
}

uint64_t __75__UICollectionViewListCellAccessibility__privateAccessibilityCustomActions__block_invoke_7(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = [a1[4] actionHandler];
  v4[2]();
  MEMORY[0x29EDC9740](v4);
  objc_storeStrong(location, 0);
  return 1;
}

uint64_t __75__UICollectionViewListCellAccessibility__privateAccessibilityCustomActions__block_invoke_8(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = a1;
  objc_copyWeak(&v4, (a1 + 32));
  v5 = *(a1 + 40) & 1;
  AXPerformSafeBlock();
  UIAccessibilityPostNotification(0x416u, 0);
  objc_destroyWeak(&v4);
  objc_storeStrong(location, 0);
  return 1;
}

double __75__UICollectionViewListCellAccessibility__privateAccessibilityCustomActions__block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setExpanded:(*(a1 + 40) ^ 1) & 1];
  MEMORY[0x29EDC9740](WeakRetained);
  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 _toggleExpansionState];
  *&result = MEMORY[0x29EDC9740](v4).n128_u64[0];
  return result;
}

- (id)automationElements
{
  v37 = *MEMORY[0x29EDCA608];
  v34 = self;
  v33[1] = a2;
  v33[0] = objc_opt_new();
  v14 = v33[0];
  v32.receiver = v34;
  v32.super_class = UICollectionViewListCellAccessibility;
  v15 = [(UICollectionViewListCellAccessibility *)&v32 automationElements];
  [v14 axSafelyAddObjectsFromArray:?];
  MEMORY[0x29EDC9740](v15);
  v24 = MEMORY[0x29EDCA5F8];
  v25 = -1073741824;
  v26 = 0;
  v27 = __59__UICollectionViewListCellAccessibility_automationElements__block_invoke;
  v28 = &unk_29F30D628;
  v29 = MEMORY[0x29EDC9748](v34);
  v30 = MEMORY[0x29EDC9748](v33[0]);
  v31 = MEMORY[0x29ED3E4C0](&v24);
  v16 = [(UICollectionViewListCellAccessibility *)v34 safeValueForKey:@"_accessoryManager"];
  location = [v16 safeValueForKey:@"currentConfiguration"];
  MEMORY[0x29EDC9740](v16);
  memset(__b, 0, sizeof(__b));
  obj = [location safeArrayForKey:@"trailingAccessories"];
  v18 = [obj countByEnumeratingWithState:__b objects:v36 count:16];
  if (v18)
  {
    v11 = *__b[2];
    v12 = 0;
    v13 = v18;
    while (1)
    {
      v10 = v12;
      if (*__b[2] != v11)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(__b[1] + 8 * v12);
      (*(v31 + 2))(v31, v22);
      ++v12;
      if (v10 + 1 >= v13)
      {
        v12 = 0;
        v13 = [obj countByEnumeratingWithState:__b objects:v36 count:16];
        if (!v13)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](obj);
  memset(v19, 0, sizeof(v19));
  v8 = [location safeArrayForKey:@"leadingAccessories"];
  v9 = [v8 countByEnumeratingWithState:v19 objects:v35 count:16];
  if (v9)
  {
    v5 = *v19[2];
    v6 = 0;
    v7 = v9;
    while (1)
    {
      v4 = v6;
      if (*v19[2] != v5)
      {
        objc_enumerationMutation(v8);
      }

      v20 = *(v19[1] + 8 * v6);
      (*(v31 + 2))(v31, v20);
      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [v8 countByEnumeratingWithState:v19 objects:v35 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](v8);
  v3 = MEMORY[0x29EDC9748](v33[0]);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(v33, 0);

  return v3;
}

void __59__UICollectionViewListCellAccessibility_automationElements__block_invoke(uint64_t *a1, void *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13[1] = a1;
  v13[0] = [location[0] safeStringForKey:@"identifier"];
  memset(__b, 0, sizeof(__b));
  obj = [(UICollectionViewListCellAccessibility *)a1[4] _axIgnoredConfigurationIdentifiers];
  v10 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
  if (v10)
  {
    v5 = *__b[2];
    v6 = 0;
    v7 = v10;
    while (1)
    {
      v4 = v6;
      if (*__b[2] != v5)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(__b[1] + 8 * v6);
      if ([v13[0] _containsSubstring:v12])
      {
        NSClassFromString(&cfstr_Uicellviewacce.isa);
        if (objc_opt_isKindOfClass())
        {
          v2 = a1[5];
          v3 = [location[0] safeValueForKey:@"view"];
          [v2 axSafelyAddObject:?];
          MEMORY[0x29EDC9740](v3);
        }
      }

      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [obj countByEnumeratingWithState:__b objects:v15 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](obj);
  objc_storeStrong(v13, 0);
  objc_storeStrong(location, 0);
}

- (void)accessibilityElementDidBecomeFocused
{
  v18 = *MEMORY[0x29EDCA608];
  v16 = self;
  v15 = a2;
  v14.receiver = self;
  v14.super_class = UICollectionViewListCellAccessibility;
  [(UICollectionViewListCellAccessibility *)&v14 accessibilityElementDidBecomeFocused];
  v13 = [(UICollectionViewListCellAccessibility *)v16 safeArrayForKey:@"_gestureRecognizers"];
  memset(__b, 0, 0x40uLL);
  obj = MEMORY[0x29EDC9748](v13);
  v7 = [obj countByEnumeratingWithState:__b objects:v17 count:16];
  if (v7)
  {
    v3 = *__b[2];
    v4 = 0;
    v5 = v7;
    while (1)
    {
      v2 = v4;
      if (*__b[2] != v3)
      {
        objc_enumerationMutation(obj);
      }

      __b[8] = *(__b[1] + 8 * v4);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = 0;
        objc_opt_class();
        v9 = __UIAccessibilityCastAsSafeCategory();
        if (v10)
        {
          abort();
        }

        v8 = MEMORY[0x29EDC9748](v9);
        objc_storeStrong(&v9, 0);
        *v11 = v8;
        [(UIHoverGestureRecognizerAccessibility *)v8 _axSetOverrideStateEnabled:v16 forFocusedElement:?];
        objc_storeStrong(v11, 0);
      }

      ++v4;
      if (v2 + 1 >= v5)
      {
        v4 = 0;
        v5 = [obj countByEnumeratingWithState:__b objects:v17 count:16];
        if (!v5)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](obj);
  objc_storeStrong(&v13, 0);
}

- (void)_updateSystemTypeAccessoryView:(id)a3 withCellAccessory:(id)a4 orConfiguration:(id)a5 usingState:(id)a6 isUserInitiated:(BOOL)a7
{
  v65 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v63 = 0;
  objc_storeStrong(&v63, a4);
  v62 = 0;
  objc_storeStrong(&v62, a5);
  v61 = 0;
  objc_storeStrong(&v61, a6);
  v60 = a7;
  v59.receiver = v65;
  v59.super_class = UICollectionViewListCellAccessibility;
  [(UICollectionViewListCellAccessibility *)&v59 _updateSystemTypeAccessoryView:location[0] withCellAccessory:v63 orConfiguration:v62 usingState:v61 isUserInitiated:a7];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v37 = [(UICollectionViewListCellAccessibility *)v65 accessibilityIdentifier];
        v57 = 0;
        v38 = 0;
        if (v37)
        {
          v58 = [location[0] accessibilityIdentifier];
          v57 = 1;
          v38 = v58 == 0;
        }

        if (v57)
        {
          MEMORY[0x29EDC9740](v58);
        }

        v7 = MEMORY[0x29EDC9740](v37).n128_u64[0];
        if (v38)
        {
          v36 = [(UICollectionViewListCellAccessibility *)v65 accessibilityIdentifier];
          [location[0] setAccessibilityIdentifier:?];
          v7 = MEMORY[0x29EDC9740](v36).n128_u64[0];
        }

        v34 = [(UICollectionViewListCellAccessibility *)v65 accessibilityLabel];
        v55 = 0;
        v35 = 0;
        if (v34)
        {
          v56 = [location[0] accessibilityLabel];
          v55 = 1;
          v35 = v56 == 0;
        }

        if (v55)
        {
          MEMORY[0x29EDC9740](v56);
        }

        v8 = MEMORY[0x29EDC9740](v34).n128_u64[0];
        if (v35)
        {
          v33 = [(UICollectionViewListCellAccessibility *)v65 accessibilityLabel];
          [location[0] setAccessibilityLabel:?];
          v8 = MEMORY[0x29EDC9740](v33).n128_u64[0];
        }

        v31 = [(UICollectionViewListCellAccessibility *)v65 accessibilityAttributedLabel];
        v53 = 0;
        v32 = 0;
        if (v31)
        {
          v54 = [location[0] accessibilityAttributedLabel];
          v53 = 1;
          v32 = v54 == 0;
        }

        if (v53)
        {
          MEMORY[0x29EDC9740](v54);
        }

        v9 = MEMORY[0x29EDC9740](v31).n128_u64[0];
        if (v32)
        {
          v30 = [(UICollectionViewListCellAccessibility *)v65 accessibilityAttributedLabel];
          [location[0] setAccessibilityAttributedLabel:?];
          v9 = MEMORY[0x29EDC9740](v30).n128_u64[0];
        }

        v28 = [(UICollectionViewListCellAccessibility *)v65 accessibilityValue];
        v51 = 0;
        v29 = 0;
        if (v28)
        {
          v52 = [location[0] accessibilityValue];
          v51 = 1;
          v29 = v52 == 0;
        }

        if (v51)
        {
          MEMORY[0x29EDC9740](v52);
        }

        v10 = MEMORY[0x29EDC9740](v28).n128_u64[0];
        if (v29)
        {
          v27 = [(UICollectionViewListCellAccessibility *)v65 accessibilityValue];
          [location[0] setAccessibilityValue:?];
          v10 = MEMORY[0x29EDC9740](v27).n128_u64[0];
        }

        v25 = [(UICollectionViewListCellAccessibility *)v65 accessibilityAttributedValue];
        v49 = 0;
        v26 = 0;
        if (v25)
        {
          v50 = [location[0] accessibilityAttributedValue];
          v49 = 1;
          v26 = v50 == 0;
        }

        if (v49)
        {
          MEMORY[0x29EDC9740](v50);
        }

        v11 = MEMORY[0x29EDC9740](v25).n128_u64[0];
        if (v26)
        {
          v24 = [(UICollectionViewListCellAccessibility *)v65 accessibilityAttributedValue];
          [location[0] setAccessibilityAttributedValue:?];
          v11 = MEMORY[0x29EDC9740](v24).n128_u64[0];
        }

        v22 = [(UICollectionViewListCellAccessibility *)v65 accessibilityHint];
        v47 = 0;
        v23 = 0;
        if (v22)
        {
          v48 = [location[0] accessibilityHint];
          v47 = 1;
          v23 = v48 == 0;
        }

        if (v47)
        {
          MEMORY[0x29EDC9740](v48);
        }

        v12 = MEMORY[0x29EDC9740](v22).n128_u64[0];
        if (v23)
        {
          v21 = [(UICollectionViewListCellAccessibility *)v65 accessibilityHint];
          [location[0] setAccessibilityHint:?];
          v12 = MEMORY[0x29EDC9740](v21).n128_u64[0];
        }

        v19 = [(UICollectionViewListCellAccessibility *)v65 accessibilityAttributedHint];
        v45 = 0;
        v20 = 0;
        if (v19)
        {
          v46 = [location[0] accessibilityAttributedHint];
          v45 = 1;
          v20 = v46 == 0;
        }

        if (v45)
        {
          MEMORY[0x29EDC9740](v46);
        }

        v13 = MEMORY[0x29EDC9740](v19).n128_u64[0];
        if (v20)
        {
          v18 = [(UICollectionViewListCellAccessibility *)v65 accessibilityAttributedHint];
          [location[0] setAccessibilityAttributedHint:?];
          v13 = MEMORY[0x29EDC9740](v18).n128_u64[0];
        }

        v16 = [(UICollectionViewListCellAccessibility *)v65 accessibilityUserInputLabels];
        v43 = 0;
        v17 = 0;
        if (v16)
        {
          v44 = [location[0] accessibilityUserInputLabels];
          v43 = 1;
          v17 = v44 == 0;
        }

        if (v43)
        {
          MEMORY[0x29EDC9740](v44);
        }

        *&v14 = MEMORY[0x29EDC9740](v16).n128_u64[0];
        if (v17)
        {
          v15 = [(UICollectionViewListCellAccessibility *)v65 accessibilityUserInputLabels];
          [location[0] setAccessibilityUserInputLabels:?];
          MEMORY[0x29EDC9740](v15);
        }
      }
    }
  }

  objc_storeStrong(&v61, 0);
  objc_storeStrong(&v62, 0);
  objc_storeStrong(&v63, 0);
  objc_storeStrong(location, 0);
}

void __95__UICollectionViewListCellAccessibility__accessibilityEnumerateCurrentConfigurationsWithBlock___block_invoke(void *a1, void *a2)
{
  v14 = *MEMORY[0x29EDCA608];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = a1;
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x29EDC9748](location[0]);
  v8 = [obj countByEnumeratingWithState:__b objects:v13 count:16];
  if (v8)
  {
    v3 = *__b[2];
    v4 = 0;
    v5 = v8;
    while (1)
    {
      v2 = v4;
      if (*__b[2] != v3)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(__b[1] + 8 * v4);
      if (*(*(a1[5] + 8) + 24))
      {
        break;
      }

      if ([v10 safeBoolForKey:@"_isSystemType"])
      {
        [v10 safeIntegerForKey:@"_systemType"];
      }

      (*(a1[4] + 16))();
      ++v4;
      if (v2 + 1 >= v5)
      {
        v4 = 0;
        v5 = [obj countByEnumeratingWithState:__b objects:v13 count:16];
        if (!v5)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](obj);
  objc_storeStrong(location, 0);
}

void __72__UICollectionViewListCellAccessibility__accessibilityHasReorderActions__block_invoke(void *a1, void *a2, char a3, uint64_t a4, _BYTE *a5)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if ((a3 & 1) != 0 && a4 == 4)
  {
    *(*(a1[4] + 8) + 24) = 1;
    *a5 = 1;
  }

  objc_storeStrong(location, 0);
}

- (BOOL)_accessibilityHandleReorderMoveUp:(BOOL)a3
{
  v62 = self;
  v61 = a2;
  v60 = a3;
  v59 = [(UICollectionViewListCellAccessibility *)self _accessibilityParentCollectionView];
  v58 = [(UICollectionViewListCellAccessibility *)v62 _accessibilityIndexPath];
  if ((!v60 || [v58 row]) && (v60 || (v20 = objc_msgSend(v58, "row"), v20 != objc_msgSend(v59, "numberOfItemsInSection:", objc_msgSend(v58, "section")) - 1)))
  {
    v56 = MEMORY[0x29EDC9748](v62);
    v49 = MEMORY[0x29EDCA5F8];
    v50 = -1073741824;
    v51 = 0;
    v52 = __75__UICollectionViewListCellAccessibility__accessibilityHandleReorderMoveUp___block_invoke;
    v53 = &unk_29F30C888;
    v54 = MEMORY[0x29EDC9748](v59);
    v55 = MEMORY[0x29EDC9748](v58);
    AXPerformSafeBlock();
    v17 = [MEMORY[0x29EDC7C40] mainScreen];
    [v17 bounds];
    v47 = v65;
    v18 = CGRectGetHeight(v65) / 2.0;
    MEMORY[0x29EDC9740](v17);
    v48 = v18;
    [v56 frame];
    *&v45 = v3;
    *(&v45 + 1) = v4;
    *&v46 = v5;
    *(&v46 + 1) = v6;
    if (v60)
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }

    v19 = v7;
    [v56 bounds];
    v43[1] = v8;
    v43[2] = v9;
    v43[3] = v10;
    v43[4] = v11;
    v44 = v19 * (*&v11 / 2.0);
    v43[0] = 0;
    v42 = 0;
    do
    {
      if (v60)
      {
        v12 = -1;
      }

      else
      {
        v12 = 1;
      }

      v44 = v44 + (30 * v12);
      v35 = 0;
      v36 = &v35;
      v37 = 838860800;
      v38 = 48;
      v39 = __Block_byref_object_copy__7;
      v40 = __Block_byref_object_dispose__7;
      v41 = 0;
      v26 = MEMORY[0x29EDCA5F8];
      v27 = -1073741824;
      v28 = 0;
      v29 = __75__UICollectionViewListCellAccessibility__accessibilityHandleReorderMoveUp___block_invoke_515;
      v30 = &unk_29F30D678;
      v31[1] = &v35;
      v31[0] = MEMORY[0x29EDC9748](v59);
      v32 = v45;
      v33 = v46;
      v34 = v44;
      AXPerformSafeBlock();
      v25 = MEMORY[0x29EDC9748](v36[5]);
      objc_storeStrong(v31, 0);
      _Block_object_dispose(&v35, 8);
      objc_storeStrong(&v41, 0);
      v13 = v43[0];
      v43[0] = v25;
      *&v14 = MEMORY[0x29EDC9740](v13).n128_u64[0];
      v42 = ([v58 isEqual:{v43[0], v14}] ^ 1) & 1;
      v16 = 0;
      if ((v42 & 1) == 0)
      {
        v64 = v44;
        v16 = fabs(v44) < v48;
      }
    }

    while (v16);
    v21 = MEMORY[0x29EDC9748](v59);
    v22 = v45;
    v23 = v46;
    v24 = v44;
    AXPerformSafeBlock();
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v56);
    v63 = 1;
    v57 = 1;
    objc_storeStrong(&v21, 0);
    objc_storeStrong(v43, 0);
    objc_storeStrong(&v55, 0);
    objc_storeStrong(&v54, 0);
    objc_storeStrong(&v56, 0);
  }

  else
  {
    v63 = 0;
    v57 = 1;
  }

  objc_storeStrong(&v58, 0);
  objc_storeStrong(&v59, 0);
  return v63 & 1;
}

double __75__UICollectionViewListCellAccessibility__accessibilityHandleReorderMoveUp___block_invoke_515(uint64_t a1)
{
  v7 = *(a1 + 32);
  CGRectGetMidX(*(a1 + 48));
  CGRectGetMidY(*(a1 + 48));
  CGPointMake_4();
  v3 = [v7 indexPathForItemAtPoint:{v1, v2}];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
  *&result = MEMORY[0x29EDC9740](v5).n128_u64[0];
  return result;
}

uint64_t __75__UICollectionViewListCellAccessibility__accessibilityHandleReorderMoveUp___block_invoke_2(uint64_t a1)
{
  v4 = *(a1 + 32);
  CGRectGetMidX(*(a1 + 40));
  CGRectGetMidY(*(a1 + 40));
  CGPointMake_4();
  [v4 updateInteractiveMovementTargetPosition:{v1, v2}];
  return [*(a1 + 32) endInteractiveMovement];
}

@end