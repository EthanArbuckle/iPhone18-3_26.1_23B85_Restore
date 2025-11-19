@interface CNContactGridCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (id)automationElements;
- (void)_axPerformCustomAction:(id)a3;
- (void)_createViewsIfNeeded;
@end

@implementation CNContactGridCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CNContactGridCell" hasInstanceMethod:@"_createViewsIfNeeded" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CNContactGridCell" hasInstanceMethod:@"animationBlockForPreparingToShowActions" withFullSignature:{"@?", 0}];
  [v3 validateClass:@"CNContactGridCell" hasInstanceMethod:@"avatarView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNContactGridCell" hasInstanceMethod:@"actionsView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNAvatarView" hasInstanceMethod:@"contact" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CNQuickAction" hasInstanceMethod:@"perform" withFullSignature:{"v", 0}];
  [v3 validateClass:@"CNQuickAction" hasInstanceMethod:@"category" withFullSignature:{"@", 0}];
}

- (BOOL)isAccessibilityElement
{
  v3 = [(CNContactGridCellAccessibility *)self _accessibilityAncestorIsKindOf:MEMORY[0x29C2D1D40](@"SearchUIContactsTableViewCell", a2)];
  if (v3)
  {
    [(CNContactGridCellAccessibility *)self _accessibilityViewAncestorIsKindOf:MEMORY[0x29C2D1D40](@"UICollectionView")];
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__1;
    v17 = __Block_byref_object_dispose__1;
    v4 = v18 = 0;
    AXPerformSafeBlock();
    v5 = v14[5];

    _Block_object_dispose(&v13, 8);
    v6 = [v3 safeBoolForKey:@"isExpanded"];
    v7 = [MEMORY[0x29EDC7C40] mainScreen];
    [v7 bounds];
    v9 = v8;

    v11 = 1;
    if ((v6 & 1) == 0)
    {
      v10 = v9 >= 500.0 ? 6 : 4;
      if ([v5 item] >= v10)
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v19.receiver = self;
    v19.super_class = CNContactGridCellAccessibility;
    v11 = [(CNContactGridCellAccessibility *)&v19 isAccessibilityElement];
  }

  return v11;
}

uint64_t __56__CNContactGridCellAccessibility_isAccessibilityElement__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) indexPathForCell:*(a1 + 40)];

  return MEMORY[0x2A1C71028]();
}

- (id)accessibilityLabel
{
  v15[1] = *MEMORY[0x29EDCA608];
  v2 = [(CNContactGridCellAccessibility *)self safeValueForKey:@"avatarView"];
  objc_opt_class();
  v3 = [v2 safeValueForKey:@"contact"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [MEMORY[0x29EDB8BA8] descriptorForRequiredKeysForStyle:0];
  v15[0] = v5;
  v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:v15 count:1];

  if (v4 && (([v4 areKeysAvailable:v6] & 1) != 0 || (objc_msgSend(v4, "identifier"), v7 = objc_claimAutoreleasedReturnValue(), v7, !v7) || (accessibilityContactStore(), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "identifier"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "unifiedContactWithIdentifier:keysToFetch:error:", v9, v6, 0), v10 = objc_claimAutoreleasedReturnValue(), v4, v9, v8, (v4 = v10) != 0)))
  {
    v11 = [MEMORY[0x29EDB8BA8] stringFromContact:v4 style:0];
  }

  else
  {
    v11 = 0;
  }

  v14 = accessibilityLocalizedString(@"contact");
  v12 = __AXStringForVariables();

  return v12;
}

- (id)accessibilityCustomActions
{
  v37 = *MEMORY[0x29EDCA608];
  v19 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v2 = [(CNContactGridCellAccessibility *)self safeValueForKey:@"actionsView"];
  if (!v2)
  {
    v31 = MEMORY[0x29EDCA5F8];
    v32 = 3221225472;
    v33 = __60__CNContactGridCellAccessibility_accessibilityCustomActions__block_invoke;
    v34 = &unk_29F2B5B60;
    v35 = self;
    AXPerformSafeBlock();
    v2 = [(CNContactGridCellAccessibility *)self safeValueForKey:@"actionsView"];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v16 = v2;
  obj = [v2 actions];
  v3 = [obj countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v3)
  {
    v20 = *v28;
    do
    {
      v4 = 0;
      do
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v27 + 1) + 8 * v4);
        v21 = 0;
        v22 = &v21;
        v23 = 0x3032000000;
        v24 = __Block_byref_object_copy__1;
        v25 = __Block_byref_object_dispose__1;
        v26 = 0;
        AXPerformSafeBlock();
        v6 = v22[5];
        _Block_object_dispose(&v21, 8);

        v7 = AXLocalizedStringFromQuickActionCategory_onceToken;
        v8 = v6;
        if (v7 != -1)
        {
          [CNContactGridCellAccessibility accessibilityCustomActions];
        }

        v9 = [AXQuickActionCategoryTable objectForKeyedSubscript:{v8, v12, v13, v14, v15}];

        if (v9)
        {
          v10 = [objc_alloc(MEMORY[0x29EDC78E0]) initWithName:v9 target:self selector:sel__axPerformCustomAction_];
          [v10 _accessibilitySetRetainedValue:v5 forKey:@"AXCNActionKey"];
          [v19 addObject:v10];
        }

        else
        {
          v14 = v5;
          v15 = v8;
          v13 = @"Could not create title for action %@ with category %@";
          LOBYTE(v12) = 1;
          _AXLogWithFacility();
        }

        ++v4;
      }

      while (v3 != v4);
      v3 = [obj countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v3);
  }

  return v19;
}

uint64_t __60__CNContactGridCellAccessibility_accessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) category];

  return MEMORY[0x2A1C71028]();
}

- (void)_createViewsIfNeeded
{
  v4.receiver = self;
  v4.super_class = CNContactGridCellAccessibility;
  [(CNContactGridCellAccessibility *)&v4 _createViewsIfNeeded];
  v3 = [(CNContactGridCellAccessibility *)self safeValueForKey:@"avatarView"];
  [v3 setIsAccessibilityElement:0];
}

- (void)_axPerformCustomAction:(id)a3
{
  v4 = [a3 _accessibilityValueForKey:@"AXCNActionKey"];
  v3 = v4;
  AXPerformSafeBlock();
}

- (id)automationElements
{
  v2 = [(CNContactGridCellAccessibility *)self _accessibilityDescendantOfType:objc_opt_class()];
  v3 = [v2 safeValueForKey:@"_accessibilityUserTestingVisibleCells"];

  return v3;
}

@end