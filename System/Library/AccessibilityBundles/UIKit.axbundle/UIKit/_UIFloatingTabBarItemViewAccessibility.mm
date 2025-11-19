@interface _UIFloatingTabBarItemViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (_NSRange)accessibilityRowRange;
- (id)accessibilityAttributedHint;
- (id)accessibilityAttributedLabel;
- (id)accessibilityAttributedValue;
- (id)accessibilityCustomActions;
- (id)accessibilityHint;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (id)accessibilityPath;
- (id)accessibilityUserInputLabels;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation _UIFloatingTabBarItemViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v9 = location;
  v8 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = @"_UIFloatingTabBarItemView";
  [location[0] validateClass:? isKindOfClass:?];
  [location[0] validateClass:@"_UIFloatingTabBarItemView" hasInstanceVariable:@"_item" withType:"UITab"];
  v3 = @"_UIFloatingTabBar";
  v7 = "@";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"lastSnapshot" withFullSignature:{v7, 0}];
  [location[0] validateClass:@"NSDiffableDataSourceSnapshot" hasInstanceMethod:@"itemIdentifiers" withFullSignature:{v7, 0}];
  [location[0] validateClass:v3 hasInstanceMethod:@"pinnedItemsView" withFullSignature:{v7, 0}];
  [location[0] validateClass:@"_UIFloatingTabBarPinnedItemsView" hasInstanceMethod:@"itemViews" withFullSignature:{v7, 0}];
  [location[0] validateClass:v3 hasInstanceMethod:@"_indexPathForTabItem:" withFullSignature:{v7, 0}];
  [location[0] validateClass:v3 hasInstanceMethod:@"_indexInDataSourceForItemAtIndexPath:" withFullSignature:{"q", v7, 0}];
  [location[0] validateClass:@"_UITabModel" hasInstanceMethod:@"tabItems" withFullSignature:{v7, 0}];
  v4 = @"_UITab";
  v6 = "B";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v4 hasInstanceMethod:@"_badgeValue" withFullSignature:{v7, 0}];
  [location[0] validateClass:v5 hasInstanceMethod:@"titleLabel" withFullSignature:{v7, 0}];
  [location[0] validateClass:v5 hasInstanceMethod:@"isCustomizableItem" withFullSignature:{v6, 0}];
  [location[0] validateClass:v5 hasInstanceMethod:@"isEditing" withFullSignature:{v6, 0}];
  [location[0] validateClass:v5 hasInstanceMethod:@"isHighlighted" withFullSignature:{v6, 0}];
  [location[0] validateClass:v5 hasInstanceMethod:@"hasSelectionHighlight" withFullSignature:{v6, 0}];
  [location[0] validateClass:@"UITabBarController" hasInstanceMethod:@"_tabCustomizationProxy" withFullSignature:{v7, 0}];
  [location[0] validateClass:@"_UIFloatingTabBarCustomizationProxy" hasInstanceMethod:@"removeFavoriteTab:" withFullSignature:{"v", v7, 0}];
  objc_storeStrong(v9, v8);
}

- (_NSRange)accessibilityRowRange
{
  v53 = self;
  v52[1] = a2;
  v51 = 0;
  objc_opt_class();
  v14 = [(_UIFloatingTabBarItemViewAccessibility *)v53 safeValueForKey:@"_item"];
  v50 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v14);
  v49 = MEMORY[0x29EDC9748](v50);
  objc_storeStrong(&v50, 0);
  v52[0] = v49;
  if (v49)
  {
    v46 = [(_UIFloatingTabBarItemViewAccessibility *)v53 _accessibilityViewAncestorIsKindOf:NSClassFromString(&cfstr_Uifloatingtabb_6.isa)];
    v44 = 0;
    objc_opt_class();
    v36 = 0;
    v37 = &v36;
    v38 = 838860800;
    v39 = 48;
    v40 = __Block_byref_object_copy_;
    v41 = __Block_byref_object_dispose_;
    v42 = 0;
    v29 = MEMORY[0x29EDCA5F8];
    v30 = -1073741824;
    v31 = 0;
    v32 = __63___UIFloatingTabBarItemViewAccessibility_accessibilityRowRange__block_invoke;
    v33 = &unk_29F30C860;
    v35[1] = &v36;
    v34 = MEMORY[0x29EDC9748](v46);
    v35[0] = MEMORY[0x29EDC9748](v52[0]);
    AXPerformSafeBlock();
    v28 = MEMORY[0x29EDC9748](v37[5]);
    objc_storeStrong(v35, 0);
    objc_storeStrong(&v34, 0);
    _Block_object_dispose(&v36, 8);
    objc_storeStrong(&v42, 0);
    v43 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v28);
    if (v44)
    {
      abort();
    }

    v27 = MEMORY[0x29EDC9748](v43);
    objc_storeStrong(&v43, 0);
    v45 = v27;
    if (!v27 || [v45 row] == 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v45, "row") == 0x8000000000000000)
    {
      v26.receiver = v53;
      v26.super_class = _UIFloatingTabBarItemViewAccessibility;
      v54 = [(_UIFloatingTabBarItemViewAccessibility *)&v26 accessibilityRowRange];
      v55 = v3;
      v47 = 1;
    }

    else
    {
      v9 = [v46 safeValueForKey:@"lastSnapshot"];
      v8 = [v9 safeArrayForKey:@"itemIdentifiers"];
      v10 = [v8 count];
      MEMORY[0x29EDC9740](v8);
      *&v4 = MEMORY[0x29EDC9740](v9).n128_u64[0];
      v25 = v10;
      v12 = [v46 safeValueForKey:{@"pinnedItemsView", v4}];
      v11 = [v12 safeDictionaryForKey:@"itemViews"];
      v13 = [v11 count];
      MEMORY[0x29EDC9740](v11);
      *&v5 = MEMORY[0x29EDC9740](v12).n128_u64[0];
      v24 = v13;
      if ([v45 section] >= 3)
      {
        v57 = (v25 + [v45 row]);
        v56 = v25 + v24;
        v58 = v57;
        v59 = v25 + v24;
        v54 = v57;
      }

      else
      {
        v18 = 0;
        v19 = &v18;
        v20 = 0x20000000;
        v21 = 32;
        v22 = 0;
        v17[1] = &v18;
        v16 = MEMORY[0x29EDC9748](v46);
        v17[0] = MEMORY[0x29EDC9748](v45);
        AXPerformSafeBlock();
        v15 = v19[3];
        objc_storeStrong(v17, 0);
        objc_storeStrong(&v16, 0);
        _Block_object_dispose(&v18, 8);
        v23 = v15;
        v61 = v15;
        v60 = v25 + v24;
        v62 = v15;
        v63 = v25 + v24;
        v54 = v15;
      }

      v55 = v25 + v24;
      v47 = 1;
    }

    objc_storeStrong(&v45, 0);
    objc_storeStrong(&v46, 0);
  }

  else
  {
    v48.receiver = v53;
    v48.super_class = _UIFloatingTabBarItemViewAccessibility;
    v54 = [(_UIFloatingTabBarItemViewAccessibility *)&v48 accessibilityRowRange];
    v55 = v2;
    v47 = 1;
  }

  objc_storeStrong(v52, 0);
  v6 = v54;
  v7 = v55;
  result.length = v7;
  result.location = v6;
  return result;
}

- (id)accessibilityLabel
{
  v24 = self;
  v23[1] = a2;
  v15 = [(_UIFloatingTabBarItemViewAccessibility *)self safeValueForKey:@"_item"];
  v23[0] = [v15 accessibilityLabel];
  v16 = [MEMORY[0x29EDB9F50] whitespaceCharacterSet];
  v2 = [v23[0] stringByTrimmingCharactersInSet:?];
  v3 = v23[0];
  v23[0] = v2;
  MEMORY[0x29EDC9740](v3);
  if ([v23[0] length])
  {
    v25 = MEMORY[0x29EDC9748](v23[0]);
    v22 = 1;
  }

  else
  {
    v13 = [(_UIFloatingTabBarItemViewAccessibility *)v24 safeValueForKey:@"titleLabel"];
    v21 = [v13 accessibilityLabel];
    v14 = [MEMORY[0x29EDB9F50] whitespaceCharacterSet];
    v4 = [v21 stringByTrimmingCharactersInSet:?];
    v5 = v21;
    v21 = v4;
    MEMORY[0x29EDC9740](v5);
    if ([v21 length])
    {
      v25 = MEMORY[0x29EDC9748](v21);
      v22 = 1;
    }

    else
    {
      v11 = [(_UIFloatingTabBarItemViewAccessibility *)v24 safeValueForKey:@"imageView"];
      v20 = [v11 accessibilityLabel];
      v12 = [MEMORY[0x29EDB9F50] whitespaceCharacterSet];
      v6 = [v20 stringByTrimmingCharactersInSet:?];
      v7 = v20;
      v20 = v6;
      MEMORY[0x29EDC9740](v7);
      if ([v20 length])
      {
        v25 = MEMORY[0x29EDC9748](v20);
      }

      else
      {
        v19 = 0;
        objc_opt_class();
        v18 = __UIAccessibilityCastAsClass();
        v17 = MEMORY[0x29EDC9748](v18);
        objc_storeStrong(&v18, 0);
        v10 = [v17 _accessibleSubviews];
        v25 = MEMORY[0x29ED3D9D0]();
        MEMORY[0x29EDC9740](v10);
        MEMORY[0x29EDC9740](v17);
      }

      v22 = 1;
      objc_storeStrong(&v20, 0);
    }

    objc_storeStrong(&v21, 0);
  }

  objc_storeStrong(v23, 0);
  v8 = v25;

  return v8;
}

- (id)accessibilityAttributedLabel
{
  v11 = self;
  v10[1] = a2;
  v5 = [(_UIFloatingTabBarItemViewAccessibility *)self safeValueForKey:@"_item"];
  v10[0] = [v5 accessibilityAttributedLabel];
  if ([v10[0] length])
  {
    v12 = MEMORY[0x29EDC9748](v10[0]);
    v9 = 1;
  }

  else
  {
    v4 = [(_UIFloatingTabBarItemViewAccessibility *)v11 safeValueForKey:@"titleLabel"];
    v8 = [v4 accessibilityAttributedLabel];
    if ([v8 length])
    {
      v12 = MEMORY[0x29EDC9748](v8);
      v9 = 1;
    }

    else
    {
      location = [(_UIFloatingTabBarItemViewAccessibility *)v11 accessibilityLabel];
      if ([location isAXAttributedString])
      {
        v12 = [location cfAttributedString];
        v9 = 1;
      }

      else
      {
        if (location)
        {
          v12 = [objc_alloc(MEMORY[0x29EDB9F30]) initWithString:location];
        }

        else
        {
          v6.receiver = v11;
          v6.super_class = _UIFloatingTabBarItemViewAccessibility;
          v12 = [(_UIFloatingTabBarItemViewAccessibility *)&v6 accessibilityAttributedLabel];
        }

        v9 = 1;
      }

      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(v10, 0);
  v2 = v12;

  return v2;
}

- (unint64_t)accessibilityTraits
{
  v4 = [(_UIFloatingTabBarItemViewAccessibility *)self safeValueForKey:@"_item"];
  v2 = [v4 accessibilityTraits];
  v5 = v2 | *MEMORY[0x29EDC7588];
  if (([(_UIFloatingTabBarItemViewAccessibility *)self safeBoolForKey:@"isEditing", MEMORY[0x29EDC9740](v4).n128_f64[0]]& 1) == 0 || ([(_UIFloatingTabBarItemViewAccessibility *)self safeBoolForKey:@"isCustomizableItem"]& 1) != 0)
  {
    if (([(_UIFloatingTabBarItemViewAccessibility *)self safeBoolForKey:@"isHighlighted"]& 1) != 0 || ([(_UIFloatingTabBarItemViewAccessibility *)self safeBoolForKey:@"hasSelectionHighlight"]& 1) != 0)
    {
      v5 |= *MEMORY[0x29EDC7FC0];
    }
  }

  else
  {
    v5 |= *MEMORY[0x29EDC7FA8];
  }

  return v5;
}

- (id)accessibilityValue
{
  v3 = [(_UIFloatingTabBarItemViewAccessibility *)self safeValueForKey:@"_item"];
  v4 = [v3 accessibilityValue];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (id)accessibilityAttributedValue
{
  v3 = [(_UIFloatingTabBarItemViewAccessibility *)self safeValueForKey:@"_item"];
  v4 = [v3 accessibilityAttributedValue];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (id)accessibilityHint
{
  v3 = [(_UIFloatingTabBarItemViewAccessibility *)self safeValueForKey:@"_item"];
  v4 = [v3 accessibilityHint];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (id)accessibilityAttributedHint
{
  v3 = [(_UIFloatingTabBarItemViewAccessibility *)self safeValueForKey:@"_item"];
  v4 = [v3 accessibilityAttributedHint];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (id)accessibilityIdentifier
{
  v3 = [(_UIFloatingTabBarItemViewAccessibility *)self safeValueForKey:@"_item"];
  v4 = [v3 accessibilityIdentifier];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (id)accessibilityUserInputLabels
{
  v8 = self;
  location[1] = a2;
  v4 = [(_UIFloatingTabBarItemViewAccessibility *)self safeValueForKey:@"_item"];
  location[0] = [v4 accessibilityUserInputLabels];
  if ([location[0] count])
  {
    v9 = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v5.receiver = v8;
    v5.super_class = _UIFloatingTabBarItemViewAccessibility;
    v9 = [(_UIFloatingTabBarItemViewAccessibility *)&v5 accessibilityUserInputLabels];
  }

  v6 = 1;
  objc_storeStrong(location, 0);
  v2 = v9;

  return v2;
}

- (id)accessibilityCustomActions
{
  v29 = self;
  v28[1] = a2;
  v27 = 0;
  objc_opt_class();
  v12 = [(_UIFloatingTabBarItemViewAccessibility *)v29 safeValueForKey:@"_item"];
  v26 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v12);
  v25 = MEMORY[0x29EDC9748](v26);
  objc_storeStrong(&v26, 0);
  v28[0] = v25;
  v10 = [v25 tabBarController];
  v24 = [v10 safeValueForKey:@"_tabCustomizationProxy"];
  *&v2 = MEMORY[0x29EDC9740](v10).n128_u64[0];
  v11 = [v28[0] accessibilityCustomActions];
  v23 = [v11 mutableCopy];
  if (![v23 count])
  {
    v3 = [MEMORY[0x29EDB8DE8] array];
    v4 = v23;
    v23 = v3;
    MEMORY[0x29EDC9740](v4);
  }

  if (([(_UIFloatingTabBarItemViewAccessibility *)v29 safeBoolForKey:@"isEditing"]& 1) != 0 && ([(_UIFloatingTabBarItemViewAccessibility *)v29 safeBoolForKey:@"isCustomizableItem"]& 1) != 0)
  {
    v8 = objc_alloc(MEMORY[0x29EDC78E0]);
    v9 = accessibilityUIKitLocalizedString();
    v15 = MEMORY[0x29EDCA5F8];
    v16 = -1073741824;
    v17 = 0;
    v18 = __68___UIFloatingTabBarItemViewAccessibility_accessibilityCustomActions__block_invoke;
    v19 = &unk_29F30C8B0;
    v20 = MEMORY[0x29EDC9748](v24);
    v21 = MEMORY[0x29EDC9748](v28[0]);
    v22 = [v8 initWithName:v9 actionHandler:&v15];
    *&v5 = MEMORY[0x29EDC9740](v9).n128_u64[0];
    [v23 axSafelyAddObject:{v22, v5}];
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v20, 0);
  }

  if ([v23 count])
  {
    v30 = MEMORY[0x29EDC9748](v23);
  }

  else
  {
    v13.receiver = v29;
    v13.super_class = _UIFloatingTabBarItemViewAccessibility;
    v30 = [(_UIFloatingTabBarItemViewAccessibility *)&v13 accessibilityCustomActions];
  }

  v14 = 1;
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(v28, 0);
  v6 = v30;

  return v6;
}

- (id)accessibilityPath
{
  v41 = self;
  v40[1] = a2;
  if (_UISolariumEnabled())
  {
    v40[0] = [(_UIFloatingTabBarItemViewAccessibility *)v41 _accessibilityFindViewAncestor:&__block_literal_global_1 startWithSelf:0];
    if (!v40[0])
    {
      goto LABEL_10;
    }

    v22 = [v40[0] subviews];
    v23 = [v22 count];
    *&v2 = MEMORY[0x29EDC9740](v22).n128_u64[0];
    if (v23 != 1)
    {
      [(_UIFloatingTabBarItemViewAccessibility *)v41 accessibilityFrame];
      v34 = v3;
      v35 = v4;
      v36 = v5;
      v37 = v6;
      AX_CGRectGetCenter();
      v32 = v7;
      v33 = v8;
      [v40[0] frame];
      v27 = v9;
      v28 = v10;
      v29 = v11;
      v30 = v12;
      v44 = v12;
      v43 = v37 * 2.0;
      v31 = fmax(v12, v37 * 2.0);
      CGRectMake_0();
      *&v25 = v13;
      *(&v25 + 1) = v14;
      *&v26 = v15;
      *(&v26 + 1) = v16;
      v20 = MEMORY[0x29EDC7948];
      v21 = [v40[0] layer];
      [v21 cornerRadius];
      v42 = [v20 bezierPathWithRoundedRect:v25 cornerRadius:{v26, v17}];
      MEMORY[0x29EDC9740](v21);
      v38 = 1;
      goto LABEL_11;
    }

    location = [v40[0] accessibilityPath];
    if (location)
    {
      v42 = MEMORY[0x29EDC9748](location);
      v38 = 1;
    }

    else
    {
      v38 = 0;
    }

    objc_storeStrong(&location, 0);
    if (!v38)
    {
LABEL_10:
      v38 = 0;
    }

LABEL_11:
    objc_storeStrong(v40, 0);
    if (v38)
    {
      goto LABEL_13;
    }
  }

  v24.receiver = v41;
  v24.super_class = _UIFloatingTabBarItemViewAccessibility;
  v42 = [(_UIFloatingTabBarItemViewAccessibility *)&v24 accessibilityPath];
LABEL_13:
  v18 = v42;

  return v18;
}

@end