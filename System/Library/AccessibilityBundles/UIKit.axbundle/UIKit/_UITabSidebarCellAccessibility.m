@interface _UITabSidebarCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySidebarItem;
- (id)accessibilityAttributedHint;
- (id)accessibilityAttributedLabel;
- (id)accessibilityAttributedValue;
- (id)accessibilityCustomActions;
- (id)accessibilityDragSourceDescriptors;
- (id)accessibilityHint;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation _UITabSidebarCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v8 = location;
  v7 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = @"_UITabBarItemBridgedElement";
  v4 = @"_UITab";
  [location[0] validateClass:? isKindOfClass:?];
  [location[0] validateClass:@"_UITabSidebarCell" hasInstanceVariable:@"_sidebarItem" withType:"UITabSidebarItem"];
  v3 = @"UITabSidebarItem";
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  [location[0] validateClass:@"UITabSidebarItem" hasInstanceVariable:@"_contentConfiguration" withType:"<UIContentConfiguration>"];
  v6 = "@";
  [location[0] validateClass:@"UITabSidebarItem" hasInstanceMethod:@"_tab" withFullSignature:0];
  [location[0] validateClass:@"UITab" hasInstanceMethod:@"_isGroup" withFullSignature:{"B", 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"_badgeValue" withFullSignature:{v6, 0}];
  [location[0] validateClass:v5 hasInstanceMethod:@"tabBarItem" withFullSignature:{v6, 0}];
  objc_storeStrong(v8, v7);
}

- (id)_accessibilitySidebarItem
{
  if (a1)
  {
    v2 = [a1 safeValueForKeyPath:@"_sidebarItem._tab"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)accessibilityLabel
{
  v25 = self;
  v24[1] = a2;
  v24[0] = [(_UITabSidebarCellAccessibility *)self _accessibilitySidebarItem];
  location = 0;
  NSClassFromString(&cfstr_Uitabbaritembr_0.isa);
  if (objc_opt_isKindOfClass())
  {
    v14 = [v24[0] safeValueForKey:@"tabBarItem"];
    v22 = [v14 accessibilityUserDefinedLabel];
    if ([v22 length] || (v2 = objc_msgSend(v24[0], "accessibilityUserDefinedLabel"), v3 = v22, v22 = v2, objc_msgSend(v2, "length", MEMORY[0x29EDC9740](v3).n128_f64[0])))
    {
      objc_storeStrong(&location, v22);
    }

    else
    {
      v21 = [(_UITabSidebarCellAccessibility *)v25 safeValueForKey:@"_sidebarItem"];
      v20 = [v21 safeValueForKey:@"_contentConfiguration"];
      v18 = 0;
      LOBYTE(v13) = 0;
      if (v20)
      {
        v19 = [v21 safeValueForKey:@"_defaultContentConfiguration"];
        v18 = 1;
        v13 = [v19 isEqual:v20] ^ 1;
      }

      if (v18)
      {
        MEMORY[0x29EDC9740](v19);
      }

      if (v13)
      {
        v4 = [v20 accessibilityLabel];
        v5 = location;
        location = v4;
        MEMORY[0x29EDC9740](v5);
      }

      objc_storeStrong(&v20, 0);
      objc_storeStrong(&v21, 0);
    }

    objc_storeStrong(&v22, 0);
  }

  if (![location length])
  {
    v6 = [v24[0] accessibilityLabel];
    v7 = location;
    location = v6;
    MEMORY[0x29EDC9740](v7);
  }

  if (![location length])
  {
    v12 = [(_UITabSidebarCellAccessibility *)v25 safeValueForKeyPath:@"_sidebarItem._contentConfiguration"];
    v8 = [v12 accessibilityLabel];
    v9 = location;
    location = v8;
    MEMORY[0x29EDC9740](v9);
    MEMORY[0x29EDC9740](v12);
  }

  if ([location length])
  {
    v17 = [v24[0] safeStringForKey:@"_badgeValue"];
    v26 = __UIAXStringForVariables();
    v16 = 1;
    objc_storeStrong(&v17, 0);
  }

  else
  {
    v15.receiver = v25;
    v15.super_class = _UITabSidebarCellAccessibility;
    v26 = [(_UITabSidebarCellAccessibility *)&v15 accessibilityLabel];
    v16 = 1;
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(v24, 0);
  v10 = v26;

  return v10;
}

- (id)accessibilityAttributedLabel
{
  v20 = self;
  v19[1] = a2;
  v19[0] = [(_UITabSidebarCellAccessibility *)self _accessibilitySidebarItem];
  v18 = [v19[0] accessibilityAttributedLabel];
  if ([v18 length] || ((location = -[_UITabSidebarCellAccessibility accessibilityLabel](v20, "accessibilityLabel"), (objc_msgSend(location, "isAXAttributedString") & 1) == 0) ? (!location ? (v16 = 0) : (v21 = objc_msgSend(objc_alloc(MEMORY[0x29EDB9F30]), "initWithString:", location), v16 = 1)) : (v21 = objc_msgSend(location, "cfAttributedString"), v16 = 1), objc_storeStrong(&location, 0), !v16))
  {
    v15 = [v19[0] safeStringForKey:@"_badgeValue"];
    if ([v18 length] && objc_msgSend(v15, "length"))
    {
      obj = [v18 mutableCopy];
      v2 = [MEMORY[0x29EDBA0F8] stringWithFormat:@", %@", v15];
      v3 = v15;
      v15 = v2;
      MEMORY[0x29EDC9740](v3);
      v11 = obj;
      v4 = objc_alloc(MEMORY[0x29EDB9F30]);
      v12 = [v4 initWithString:v15];
      [v11 appendAttributedString:?];
      MEMORY[0x29EDC9740](v12);
      objc_storeStrong(&v18, obj);
      objc_storeStrong(&obj, 0);
    }

    else if ([v15 length])
    {
      v5 = [objc_alloc(MEMORY[0x29EDB9F30]) initWithString:v15];
      v6 = v18;
      v18 = v5;
      MEMORY[0x29EDC9740](v6);
    }

    else
    {
      v13.receiver = v20;
      v13.super_class = _UITabSidebarCellAccessibility;
      v7 = [(_UITabSidebarCellAccessibility *)&v13 accessibilityAttributedLabel];
      v8 = v18;
      v18 = v7;
      MEMORY[0x29EDC9740](v8);
    }

    v21 = MEMORY[0x29EDC9748](v18);
    v16 = 1;
    objc_storeStrong(&v15, 0);
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(v19, 0);
  v9 = v21;

  return v9;
}

- (unint64_t)accessibilityTraits
{
  v15 = self;
  v14 = a2;
  v12.receiver = self;
  v12.super_class = _UITabSidebarCellAccessibility;
  v6 = [(_UITabSidebarCellAccessibility *)&v12 accessibilityTraits];
  v7 = [(_UITabSidebarCellAccessibility *)v15 _accessibilitySidebarItem];
  v8 = v6 | [v7 accessibilityTraits];
  MEMORY[0x29EDC9740](v7);
  v13 = v8;
  v11 = 0;
  objc_opt_class();
  v10 = __UIAccessibilityCastAsClass();
  v9 = MEMORY[0x29EDC9748](v10);
  objc_storeStrong(&v10, 0);
  v5 = [v9 isSelected];
  MEMORY[0x29EDC9740](v9);
  if (v5)
  {
    v13 |= *MEMORY[0x29EDC7FC0];
  }

  v3 = [(_UITabSidebarCellAccessibility *)v15 _accessibilitySidebarItem];
  v4 = [v3 safeBoolForKey:@"_isGroup"];
  MEMORY[0x29EDC9740](v3);
  if (v4)
  {
    v13 |= *MEMORY[0x29EDC7F80];
  }

  return v13;
}

- (id)accessibilityValue
{
  v8 = self;
  location[1] = a2;
  v4 = [(_UITabSidebarCellAccessibility *)self _accessibilitySidebarItem];
  location[0] = [v4 accessibilityValue];
  if ([location[0] length])
  {
    v9 = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v5.receiver = v8;
    v5.super_class = _UITabSidebarCellAccessibility;
    v9 = [(_UITabSidebarCellAccessibility *)&v5 accessibilityValue];
  }

  v6 = 1;
  objc_storeStrong(location, 0);
  v2 = v9;

  return v2;
}

- (id)accessibilityAttributedValue
{
  v8 = self;
  location[1] = a2;
  v4 = [(_UITabSidebarCellAccessibility *)self _accessibilitySidebarItem];
  location[0] = [v4 accessibilityAttributedValue];
  if ([location[0] length])
  {
    v9 = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v5.receiver = v8;
    v5.super_class = _UITabSidebarCellAccessibility;
    v9 = [(_UITabSidebarCellAccessibility *)&v5 accessibilityAttributedValue];
  }

  v6 = 1;
  objc_storeStrong(location, 0);
  v2 = v9;

  return v2;
}

- (id)accessibilityHint
{
  v8 = self;
  location[1] = a2;
  v4 = [(_UITabSidebarCellAccessibility *)self _accessibilitySidebarItem];
  location[0] = [v4 accessibilityHint];
  if ([location[0] length])
  {
    v9 = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v5.receiver = v8;
    v5.super_class = _UITabSidebarCellAccessibility;
    v9 = [(_UITabSidebarCellAccessibility *)&v5 accessibilityHint];
  }

  v6 = 1;
  objc_storeStrong(location, 0);
  v2 = v9;

  return v2;
}

- (id)accessibilityAttributedHint
{
  v8 = self;
  location[1] = a2;
  v4 = [(_UITabSidebarCellAccessibility *)self _accessibilitySidebarItem];
  location[0] = [v4 accessibilityAttributedHint];
  if ([location[0] length])
  {
    v9 = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v5.receiver = v8;
    v5.super_class = _UITabSidebarCellAccessibility;
    v9 = [(_UITabSidebarCellAccessibility *)&v5 accessibilityAttributedHint];
  }

  v6 = 1;
  objc_storeStrong(location, 0);
  v2 = v9;

  return v2;
}

- (id)accessibilityIdentifier
{
  v8 = self;
  location[1] = a2;
  v4 = [(_UITabSidebarCellAccessibility *)self _accessibilitySidebarItem];
  location[0] = [v4 accessibilityIdentifier];
  if ([location[0] length])
  {
    v9 = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v5.receiver = v8;
    v5.super_class = _UITabSidebarCellAccessibility;
    v9 = [(_UITabSidebarCellAccessibility *)&v5 accessibilityIdentifier];
  }

  v6 = 1;
  objc_storeStrong(location, 0);
  v2 = v9;

  return v2;
}

- (id)accessibilityUserInputLabels
{
  v8 = self;
  location[1] = a2;
  v4 = [(_UITabSidebarCellAccessibility *)self _accessibilitySidebarItem];
  location[0] = [v4 accessibilityUserInputLabels];
  if ([location[0] count])
  {
    v9 = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v5.receiver = v8;
    v5.super_class = _UITabSidebarCellAccessibility;
    v9 = [(_UITabSidebarCellAccessibility *)&v5 accessibilityUserInputLabels];
  }

  v6 = 1;
  objc_storeStrong(location, 0);
  v2 = v9;

  return v2;
}

- (id)accessibilityCustomActions
{
  v42 = self;
  v41[1] = a2;
  v40 = 0;
  objc_opt_class();
  v12 = [(_UITabSidebarCellAccessibility *)v42 _accessibilitySidebarItem];
  v39 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v12);
  v38 = MEMORY[0x29EDC9748](v39);
  objc_storeStrong(&v39, 0);
  v41[0] = v38;
  v10 = [v38 tabBarController];
  v37 = [v10 safeValueForKey:@"_tabCustomizationProxy"];
  *&v2 = MEMORY[0x29EDC9740](v10).n128_u64[0];
  v11 = [v41[0] accessibilityCustomActions];
  v36 = [v11 mutableCopy];
  if (![v36 count])
  {
    v3 = [MEMORY[0x29EDB8DE8] array];
    v4 = v36;
    v36 = v3;
    MEMORY[0x29EDC9740](v4);
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x20000000;
  v34 = 32;
  v35 = 0;
  v24 = MEMORY[0x29EDCA5F8];
  v25 = -1073741824;
  v26 = 0;
  v27 = __60___UITabSidebarCellAccessibility_accessibilityCustomActions__block_invoke;
  v28 = &unk_29F30C860;
  v30[1] = &v31;
  v29 = MEMORY[0x29EDC9748](v37);
  v30[0] = MEMORY[0x29EDC9748](v41[0]);
  AXPerformSafeBlock();
  v23 = v32[3] & 1;
  objc_storeStrong(v30, 0);
  objc_storeStrong(&v29, 0);
  _Block_object_dispose(&v31, 8);
  if (v23)
  {
    v8 = objc_alloc(MEMORY[0x29EDC78E0]);
    v9 = accessibilityUIKitLocalizedString();
    v15 = MEMORY[0x29EDCA5F8];
    v16 = -1073741824;
    v17 = 0;
    v18 = __60___UITabSidebarCellAccessibility_accessibilityCustomActions__block_invoke_2;
    v19 = &unk_29F30C8B0;
    v20 = MEMORY[0x29EDC9748](v37);
    v21 = MEMORY[0x29EDC9748](v41[0]);
    v22 = [v8 initWithName:v9 actionHandler:&v15];
    *&v5 = MEMORY[0x29EDC9740](v9).n128_u64[0];
    [v36 axSafelyAddObject:{v22, v5}];
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v20, 0);
  }

  if ([v36 count])
  {
    v43 = MEMORY[0x29EDC9748](v36);
  }

  else
  {
    v13.receiver = v42;
    v13.super_class = _UITabSidebarCellAccessibility;
    v43 = [(_UITabSidebarCellAccessibility *)&v13 accessibilityCustomActions];
  }

  v14 = 1;
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(v41, 0);
  v6 = v43;

  return v6;
}

- (id)accessibilityDragSourceDescriptors
{
  v26 = self;
  v25[1] = a2;
  v24 = 0;
  objc_opt_class();
  v5 = [(_UITabSidebarCellAccessibility *)v26 _accessibilitySidebarItem];
  v23 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v5);
  v22 = MEMORY[0x29EDC9748](v23);
  objc_storeStrong(&v23, 0);
  v25[0] = v22;
  v4 = [v22 tabBarController];
  v21 = [v4 safeValueForKey:@"_tabCustomizationProxy"];
  MEMORY[0x29EDC9740](v4);
  v16 = 0;
  v17 = &v16;
  v18 = 0x20000000;
  v19 = 32;
  v20 = 0;
  v9 = MEMORY[0x29EDCA5F8];
  v10 = -1073741824;
  v11 = 0;
  v12 = __68___UITabSidebarCellAccessibility_accessibilityDragSourceDescriptors__block_invoke;
  v13 = &unk_29F30C860;
  v15[1] = &v16;
  v14 = MEMORY[0x29EDC9748](v21);
  v15[0] = MEMORY[0x29EDC9748](v25[0]);
  AXPerformSafeBlock();
  v8 = v17[3] & 1;
  objc_storeStrong(v15, 0);
  objc_storeStrong(&v14, 0);
  _Block_object_dispose(&v16, 8);
  if (v8)
  {
    v27 = 0;
  }

  else
  {
    v6.receiver = v26;
    v6.super_class = _UITabSidebarCellAccessibility;
    v27 = [(_UITabSidebarCellAccessibility *)&v6 accessibilityDragSourceDescriptors];
  }

  v7 = 1;
  objc_storeStrong(&v21, 0);
  objc_storeStrong(v25, 0);
  v2 = v27;

  return v2;
}

@end