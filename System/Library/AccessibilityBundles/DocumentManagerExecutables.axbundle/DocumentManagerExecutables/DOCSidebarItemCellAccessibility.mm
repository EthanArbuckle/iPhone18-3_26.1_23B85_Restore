@interface DOCSidebarItemCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityRoleDescription;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation DOCSidebarItemCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UICollectionViewListCellAccessibility" hasInstanceMethod:@"_accessibilityTrailingViews" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCEjectButton"];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCEjectButton" isKindOfClass:@"UIButton"];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCSidebarItemCell" isKindOfClass:@"UICollectionViewListCell"];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCSidebarItemCell" hasInstanceMethod:@"accessibilityShowFolder" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCSidebarItemCell" hasInstanceMethod:@"accessibilityTitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCSidebarItemCell" hasInstanceMethod:@"accessibilitySubtitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCSidebarItemCell" hasInstanceMethod:@"accessibilityIsEjectable" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"DocumentManagerExecutables.DOCSidebarItemCell" hasInstanceMethod:@"accessibilityTitleTextField" withFullSignature:{"@", 0}];
}

- (id)_accessibilityRoleDescription
{
  if ([(DOCSidebarItemCellAccessibility *)self safeBoolForKey:@"accessibilityShowFolder"])
  {
    v2 = accessibilityUIKitLocalizedString();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)accessibilityCustomActions
{
  array = [MEMORY[0x29EDB8DE8] array];
  v15.receiver = self;
  v15.super_class = DOCSidebarItemCellAccessibility;
  accessibilityCustomActions = [(DOCSidebarItemCellAccessibility *)&v15 accessibilityCustomActions];
  [array axSafelyAddObjectsFromArray:accessibilityCustomActions];

  if ([(DOCSidebarItemCellAccessibility *)self safeBoolForKey:@"accessibilityIsEjectable"])
  {
    objc_initWeak(&location, self);
    v5 = objc_alloc(MEMORY[0x29EDC78E0]);
    v6 = accessibilityLocalizedString(@"eject");
    v9 = MEMORY[0x29EDCA5F8];
    v10 = 3221225472;
    v11 = __61__DOCSidebarItemCellAccessibility_accessibilityCustomActions__block_invoke;
    v12 = &unk_29F2BBA30;
    objc_copyWeak(&v13, &location);
    v7 = [v5 initWithName:v6 actionHandler:&v9];
    [array addObject:{v7, v9, v10, v11, v12}];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return array;
}

uint64_t __61__DOCSidebarItemCellAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x29EDCA608];
  v3 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained safeArrayForKey:@"_accessibilityTrailingViews"];

  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        NSClassFromString(&cfstr_Documentmanage_7.isa);
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          v11 = __UIAccessibilityCastAsClass();
          v12 = v11;
          if (v11)
          {
            [v11 sendActionsForControlEvents:64];

            v13 = 1;
            goto LABEL_12;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_12:

  v14 = *MEMORY[0x29EDCA608];
  return v13;
}

- (id)accessibilityValue
{
  v9.receiver = self;
  v9.super_class = DOCSidebarItemCellAccessibility;
  accessibilityValue = [(DOCSidebarItemCellAccessibility *)&v9 accessibilityValue];
  if (accessibilityValue)
  {
    v3 = [MEMORY[0x29EDBA0E0] localizedScannerWithString:accessibilityValue];
    v8 = 0;
    [v3 scanInt:&v8];
    if (v8 >= 1)
    {
      v4 = MEMORY[0x29EDBA0F8];
      v5 = accessibilityLocalizedString(@"badge.unread.count");
      v6 = [v4 localizedStringWithFormat:v5, v8];

      accessibilityValue = v6;
    }
  }

  return accessibilityValue;
}

- (id)accessibilityLabel
{
  if ([(DOCSidebarItemCellAccessibility *)self safeBoolForKey:@"accessibilityIsEjectable"])
  {
    v3 = accessibilityLocalizedString(@"ejectable");
  }

  else
  {
    v3 = 0;
  }

  v4 = [(DOCSidebarItemCellAccessibility *)self safeStringForKey:@"accessibilityTitle"];
  v7 = [(DOCSidebarItemCellAccessibility *)self safeStringForKey:@"accessibilitySubtitle"];
  v5 = __UIAXStringForVariables();

  return v5;
}

- (unint64_t)accessibilityTraits
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = *MEMORY[0x29EDC7F70];
  isSelected = [v2 isSelected];

  v5 = *MEMORY[0x29EDC7FC0];
  if (!isSelected)
  {
    v5 = 0;
  }

  return v5 | v3;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v5.receiver = self;
  v5.super_class = DOCSidebarItemCellAccessibility;
  _accessibilitySupplementaryFooterViews = [(DOCSidebarItemCellAccessibility *)&v5 _accessibilitySupplementaryFooterViews];
  v3 = [_accessibilitySupplementaryFooterViews mutableCopy];

  [v3 ax_removeObjectsFromArrayUsingBlock:&__block_literal_global_1];

  return v3;
}

uint64_t __73__DOCSidebarItemCellAccessibility__accessibilitySupplementaryFooterViews__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Documentmanage_7.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end