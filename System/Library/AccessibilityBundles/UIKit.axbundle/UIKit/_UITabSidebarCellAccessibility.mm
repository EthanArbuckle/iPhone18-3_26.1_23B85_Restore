@interface _UITabSidebarCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
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

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v8 = location;
  v7 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
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
  if (self)
  {
    v2 = [self safeValueForKeyPath:@"_sidebarItem._tab"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)accessibilityLabel
{
  selfCopy = self;
  v24[1] = a2;
  v24[0] = [(_UITabSidebarCellAccessibility *)self _accessibilitySidebarItem];
  location = 0;
  NSClassFromString(&cfstr_Uitabbaritembr_0.isa);
  if (objc_opt_isKindOfClass())
  {
    v14 = [v24[0] safeValueForKey:@"tabBarItem"];
    accessibilityUserDefinedLabel = [v14 accessibilityUserDefinedLabel];
    if ([accessibilityUserDefinedLabel length] || (v2 = objc_msgSend(v24[0], "accessibilityUserDefinedLabel"), v3 = accessibilityUserDefinedLabel, accessibilityUserDefinedLabel = v2, objc_msgSend(v2, "length", MEMORY[0x29EDC9740](v3).n128_f64[0])))
    {
      objc_storeStrong(&location, accessibilityUserDefinedLabel);
    }

    else
    {
      v21 = [(_UITabSidebarCellAccessibility *)selfCopy safeValueForKey:@"_sidebarItem"];
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
        accessibilityLabel = [v20 accessibilityLabel];
        v5 = location;
        location = accessibilityLabel;
        MEMORY[0x29EDC9740](v5);
      }

      objc_storeStrong(&v20, 0);
      objc_storeStrong(&v21, 0);
    }

    objc_storeStrong(&accessibilityUserDefinedLabel, 0);
  }

  if (![location length])
  {
    accessibilityLabel2 = [v24[0] accessibilityLabel];
    v7 = location;
    location = accessibilityLabel2;
    MEMORY[0x29EDC9740](v7);
  }

  if (![location length])
  {
    v12 = [(_UITabSidebarCellAccessibility *)selfCopy safeValueForKeyPath:@"_sidebarItem._contentConfiguration"];
    accessibilityLabel3 = [v12 accessibilityLabel];
    v9 = location;
    location = accessibilityLabel3;
    MEMORY[0x29EDC9740](v9);
    MEMORY[0x29EDC9740](v12);
  }

  if ([location length])
  {
    v17 = [v24[0] safeStringForKey:@"_badgeValue"];
    accessibilityLabel4 = __UIAXStringForVariables();
    v16 = 1;
    objc_storeStrong(&v17, 0);
  }

  else
  {
    v15.receiver = selfCopy;
    v15.super_class = _UITabSidebarCellAccessibility;
    accessibilityLabel4 = [(_UITabSidebarCellAccessibility *)&v15 accessibilityLabel];
    v16 = 1;
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(v24, 0);
  v10 = accessibilityLabel4;

  return v10;
}

- (id)accessibilityAttributedLabel
{
  selfCopy = self;
  v19[1] = a2;
  v19[0] = [(_UITabSidebarCellAccessibility *)self _accessibilitySidebarItem];
  accessibilityAttributedLabel = [v19[0] accessibilityAttributedLabel];
  if ([accessibilityAttributedLabel length] || ((location = -[_UITabSidebarCellAccessibility accessibilityLabel](selfCopy, "accessibilityLabel"), (objc_msgSend(location, "isAXAttributedString") & 1) == 0) ? (!location ? (v16 = 0) : (v21 = objc_msgSend(objc_alloc(MEMORY[0x29EDB9F30]), "initWithString:", location), v16 = 1)) : (v21 = objc_msgSend(location, "cfAttributedString"), v16 = 1), objc_storeStrong(&location, 0), !v16))
  {
    v15 = [v19[0] safeStringForKey:@"_badgeValue"];
    if ([accessibilityAttributedLabel length] && objc_msgSend(v15, "length"))
    {
      obj = [accessibilityAttributedLabel mutableCopy];
      v2 = [MEMORY[0x29EDBA0F8] stringWithFormat:@", %@", v15];
      v3 = v15;
      v15 = v2;
      MEMORY[0x29EDC9740](v3);
      v11 = obj;
      v4 = objc_alloc(MEMORY[0x29EDB9F30]);
      v12 = [v4 initWithString:v15];
      [v11 appendAttributedString:?];
      MEMORY[0x29EDC9740](v12);
      objc_storeStrong(&accessibilityAttributedLabel, obj);
      objc_storeStrong(&obj, 0);
    }

    else if ([v15 length])
    {
      v5 = [objc_alloc(MEMORY[0x29EDB9F30]) initWithString:v15];
      v6 = accessibilityAttributedLabel;
      accessibilityAttributedLabel = v5;
      MEMORY[0x29EDC9740](v6);
    }

    else
    {
      v13.receiver = selfCopy;
      v13.super_class = _UITabSidebarCellAccessibility;
      accessibilityAttributedLabel2 = [(_UITabSidebarCellAccessibility *)&v13 accessibilityAttributedLabel];
      v8 = accessibilityAttributedLabel;
      accessibilityAttributedLabel = accessibilityAttributedLabel2;
      MEMORY[0x29EDC9740](v8);
    }

    v21 = MEMORY[0x29EDC9748](accessibilityAttributedLabel);
    v16 = 1;
    objc_storeStrong(&v15, 0);
  }

  objc_storeStrong(&accessibilityAttributedLabel, 0);
  objc_storeStrong(v19, 0);
  v9 = v21;

  return v9;
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v14 = a2;
  v12.receiver = self;
  v12.super_class = _UITabSidebarCellAccessibility;
  accessibilityTraits = [(_UITabSidebarCellAccessibility *)&v12 accessibilityTraits];
  _accessibilitySidebarItem = [(_UITabSidebarCellAccessibility *)selfCopy _accessibilitySidebarItem];
  v8 = accessibilityTraits | [_accessibilitySidebarItem accessibilityTraits];
  MEMORY[0x29EDC9740](_accessibilitySidebarItem);
  v13 = v8;
  v11 = 0;
  objc_opt_class();
  v10 = __UIAccessibilityCastAsClass();
  v9 = MEMORY[0x29EDC9748](v10);
  objc_storeStrong(&v10, 0);
  isSelected = [v9 isSelected];
  MEMORY[0x29EDC9740](v9);
  if (isSelected)
  {
    v13 |= *MEMORY[0x29EDC7FC0];
  }

  _accessibilitySidebarItem2 = [(_UITabSidebarCellAccessibility *)selfCopy _accessibilitySidebarItem];
  v4 = [_accessibilitySidebarItem2 safeBoolForKey:@"_isGroup"];
  MEMORY[0x29EDC9740](_accessibilitySidebarItem2);
  if (v4)
  {
    v13 |= *MEMORY[0x29EDC7F80];
  }

  return v13;
}

- (id)accessibilityValue
{
  selfCopy = self;
  location[1] = a2;
  _accessibilitySidebarItem = [(_UITabSidebarCellAccessibility *)self _accessibilitySidebarItem];
  location[0] = [_accessibilitySidebarItem accessibilityValue];
  if ([location[0] length])
  {
    accessibilityValue = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v5.receiver = selfCopy;
    v5.super_class = _UITabSidebarCellAccessibility;
    accessibilityValue = [(_UITabSidebarCellAccessibility *)&v5 accessibilityValue];
  }

  v6 = 1;
  objc_storeStrong(location, 0);
  v2 = accessibilityValue;

  return v2;
}

- (id)accessibilityAttributedValue
{
  selfCopy = self;
  location[1] = a2;
  _accessibilitySidebarItem = [(_UITabSidebarCellAccessibility *)self _accessibilitySidebarItem];
  location[0] = [_accessibilitySidebarItem accessibilityAttributedValue];
  if ([location[0] length])
  {
    accessibilityAttributedValue = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v5.receiver = selfCopy;
    v5.super_class = _UITabSidebarCellAccessibility;
    accessibilityAttributedValue = [(_UITabSidebarCellAccessibility *)&v5 accessibilityAttributedValue];
  }

  v6 = 1;
  objc_storeStrong(location, 0);
  v2 = accessibilityAttributedValue;

  return v2;
}

- (id)accessibilityHint
{
  selfCopy = self;
  location[1] = a2;
  _accessibilitySidebarItem = [(_UITabSidebarCellAccessibility *)self _accessibilitySidebarItem];
  location[0] = [_accessibilitySidebarItem accessibilityHint];
  if ([location[0] length])
  {
    accessibilityHint = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v5.receiver = selfCopy;
    v5.super_class = _UITabSidebarCellAccessibility;
    accessibilityHint = [(_UITabSidebarCellAccessibility *)&v5 accessibilityHint];
  }

  v6 = 1;
  objc_storeStrong(location, 0);
  v2 = accessibilityHint;

  return v2;
}

- (id)accessibilityAttributedHint
{
  selfCopy = self;
  location[1] = a2;
  _accessibilitySidebarItem = [(_UITabSidebarCellAccessibility *)self _accessibilitySidebarItem];
  location[0] = [_accessibilitySidebarItem accessibilityAttributedHint];
  if ([location[0] length])
  {
    accessibilityAttributedHint = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v5.receiver = selfCopy;
    v5.super_class = _UITabSidebarCellAccessibility;
    accessibilityAttributedHint = [(_UITabSidebarCellAccessibility *)&v5 accessibilityAttributedHint];
  }

  v6 = 1;
  objc_storeStrong(location, 0);
  v2 = accessibilityAttributedHint;

  return v2;
}

- (id)accessibilityIdentifier
{
  selfCopy = self;
  location[1] = a2;
  _accessibilitySidebarItem = [(_UITabSidebarCellAccessibility *)self _accessibilitySidebarItem];
  location[0] = [_accessibilitySidebarItem accessibilityIdentifier];
  if ([location[0] length])
  {
    accessibilityIdentifier = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v5.receiver = selfCopy;
    v5.super_class = _UITabSidebarCellAccessibility;
    accessibilityIdentifier = [(_UITabSidebarCellAccessibility *)&v5 accessibilityIdentifier];
  }

  v6 = 1;
  objc_storeStrong(location, 0);
  v2 = accessibilityIdentifier;

  return v2;
}

- (id)accessibilityUserInputLabels
{
  selfCopy = self;
  location[1] = a2;
  _accessibilitySidebarItem = [(_UITabSidebarCellAccessibility *)self _accessibilitySidebarItem];
  location[0] = [_accessibilitySidebarItem accessibilityUserInputLabels];
  if ([location[0] count])
  {
    accessibilityUserInputLabels = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v5.receiver = selfCopy;
    v5.super_class = _UITabSidebarCellAccessibility;
    accessibilityUserInputLabels = [(_UITabSidebarCellAccessibility *)&v5 accessibilityUserInputLabels];
  }

  v6 = 1;
  objc_storeStrong(location, 0);
  v2 = accessibilityUserInputLabels;

  return v2;
}

- (id)accessibilityCustomActions
{
  selfCopy = self;
  v41[1] = a2;
  v40 = 0;
  objc_opt_class();
  _accessibilitySidebarItem = [(_UITabSidebarCellAccessibility *)selfCopy _accessibilitySidebarItem];
  v39 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](_accessibilitySidebarItem);
  v38 = MEMORY[0x29EDC9748](v39);
  objc_storeStrong(&v39, 0);
  v41[0] = v38;
  tabBarController = [v38 tabBarController];
  v37 = [tabBarController safeValueForKey:@"_tabCustomizationProxy"];
  *&v2 = MEMORY[0x29EDC9740](tabBarController).n128_u64[0];
  accessibilityCustomActions = [v41[0] accessibilityCustomActions];
  v36 = [accessibilityCustomActions mutableCopy];
  if (![v36 count])
  {
    array = [MEMORY[0x29EDB8DE8] array];
    v4 = v36;
    v36 = array;
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
    accessibilityCustomActions2 = MEMORY[0x29EDC9748](v36);
  }

  else
  {
    v13.receiver = selfCopy;
    v13.super_class = _UITabSidebarCellAccessibility;
    accessibilityCustomActions2 = [(_UITabSidebarCellAccessibility *)&v13 accessibilityCustomActions];
  }

  v14 = 1;
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(v41, 0);
  v6 = accessibilityCustomActions2;

  return v6;
}

- (id)accessibilityDragSourceDescriptors
{
  selfCopy = self;
  v25[1] = a2;
  v24 = 0;
  objc_opt_class();
  _accessibilitySidebarItem = [(_UITabSidebarCellAccessibility *)selfCopy _accessibilitySidebarItem];
  v23 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](_accessibilitySidebarItem);
  v22 = MEMORY[0x29EDC9748](v23);
  objc_storeStrong(&v23, 0);
  v25[0] = v22;
  tabBarController = [v22 tabBarController];
  v21 = [tabBarController safeValueForKey:@"_tabCustomizationProxy"];
  MEMORY[0x29EDC9740](tabBarController);
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
    accessibilityDragSourceDescriptors = 0;
  }

  else
  {
    v6.receiver = selfCopy;
    v6.super_class = _UITabSidebarCellAccessibility;
    accessibilityDragSourceDescriptors = [(_UITabSidebarCellAccessibility *)&v6 accessibilityDragSourceDescriptors];
  }

  v7 = 1;
  objc_storeStrong(&v21, 0);
  objc_storeStrong(v25, 0);
  v2 = accessibilityDragSourceDescriptors;

  return v2;
}

@end