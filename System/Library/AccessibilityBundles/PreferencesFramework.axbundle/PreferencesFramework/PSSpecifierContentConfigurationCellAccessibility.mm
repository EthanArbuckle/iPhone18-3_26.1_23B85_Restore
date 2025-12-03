@interface PSSpecifierContentConfigurationCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySupplementaryFooterViews;
- (id)_accessorySwitchView;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
- (unint64_t)accessibilityTraits;
@end

@implementation PSSpecifierContentConfigurationCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"Preferences.PSSpecifierContentConfigurationCell" isKindOfClass:@"PSTableCell"];
  [validationsCopy validateClass:@"UITableViewCellReorderControl"];
  [validationsCopy validateClass:@"PSTableCell" hasInstanceMethod:@"specifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PSTableCell" hasInstanceMethod:@"isChecked" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PSSpecifier" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PSTableCell" isKindOfClass:@"UITableViewCell"];
  [validationsCopy validateClass:@"UITableViewCell" hasInstanceVariable:@"_accessoryView" withType:"UIControl"];
}

- (unint64_t)accessibilityTraits
{
  v13.receiver = self;
  v13.super_class = PSSpecifierContentConfigurationCellAccessibility;
  accessibilityTraits = [(PSSpecifierContentConfigurationCellAccessibility *)&v13 accessibilityTraits];
  objc_opt_class();
  v4 = [(PSSpecifierContentConfigurationCellAccessibility *)self safeValueForKey:@"specifier"];
  v5 = __UIAccessibilityCastAsClass();

  cellType = [v5 cellType];
  v7 = [v5 propertyForKey:*MEMORY[0x29EDC62C8]];
  if ((cellType - 1) >= 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = *MEMORY[0x29EDC7F70];
  }

  v9 = [(PSSpecifierContentConfigurationCellAccessibility *)self safeBoolForKey:@"isChecked"];
  v10 = *MEMORY[0x29EDC7FC0];
  if (!v9)
  {
    v10 = 0;
  }

  v11 = v8 | accessibilityTraits | v10;
  if (v5 && v7 && ([v7 BOOLValue] & 1) == 0)
  {
    v11 |= *MEMORY[0x29EDC7FA8];
  }

  return v11;
}

- (id)accessibilityLabel
{
  v3 = UIAXStringForAllChildrenWithFilter();
  _accessorySwitchView = [(PSSpecifierContentConfigurationCellAccessibility *)self _accessorySwitchView];
  v5 = [v3 componentsSeparatedByString:{@", "}];
  v6 = [v5 axMapObjectsUsingBlock:&__block_literal_global_321];

  ax_arrayByRemovingDuplicates = [v6 ax_arrayByRemovingDuplicates];

  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3221225472;
  v13[2] = __70__PSSpecifierContentConfigurationCellAccessibility_accessibilityLabel__block_invoke_3;
  v13[3] = &unk_29F2ED208;
  v8 = _accessorySwitchView;
  v14 = v8;
  v9 = [ax_arrayByRemovingDuplicates ax_filteredArrayUsingBlock:v13];

  if ([v9 count])
  {
    v10 = [v9 componentsJoinedByString:{@", "}];
  }

  else
  {
    v10 = v3;
  }

  v11 = v10;

  return v11;
}

BOOL __70__PSSpecifierContentConfigurationCellAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Uitableviewcel_1.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

id __70__PSSpecifierContentConfigurationCellAccessibility_accessibilityLabel__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x29EDB9F50];
  v3 = a2;
  v4 = [v2 whitespaceCharacterSet];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];

  return v5;
}

uint64_t __70__PSSpecifierContentConfigurationCellAccessibility_accessibilityLabel__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    if ([v3 isEqualToString:@"--"])
    {
      v5 = 0;
    }

    else
    {
      v6 = [*(a1 + 32) accessibilityValue];
      v5 = [v4 isEqualToString:v6] ^ 1;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)accessibilityUserInputLabels
{
  array = [MEMORY[0x29EDB8DE8] array];
  v4 = [(PSSpecifierContentConfigurationCellAccessibility *)self safeValueForKey:@"specifier"];
  v5 = [v4 safeStringForKey:@"name"];
  if ([v5 length])
  {
    [array addObject:v5];
  }

  v8.receiver = self;
  v8.super_class = PSSpecifierContentConfigurationCellAccessibility;
  accessibilityUserInputLabels = [(PSSpecifierContentConfigurationCellAccessibility *)&v8 accessibilityUserInputLabels];
  [array axSafelyAddObjectsFromArray:accessibilityUserInputLabels];

  return array;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v10[1] = *MEMORY[0x29EDCA608];
  v3 = [(PSSpecifierContentConfigurationCellAccessibility *)self _accessibilityFindSubviewDescendant:&__block_literal_global_335];
  v4 = v3;
  if (v3)
  {
    v10[0] = v3;
    _accessibilitySupplementaryFooterViews = [MEMORY[0x29EDB8D80] arrayWithObjects:v10 count:1];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PSSpecifierContentConfigurationCellAccessibility;
    _accessibilitySupplementaryFooterViews = [(PSSpecifierContentConfigurationCellAccessibility *)&v9 _accessibilitySupplementaryFooterViews];
  }

  v6 = _accessibilitySupplementaryFooterViews;

  v7 = *MEMORY[0x29EDCA608];

  return v6;
}

uint64_t __90__PSSpecifierContentConfigurationCellAccessibility__accessibilitySupplementaryFooterViews__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  NSClassFromString(&cfstr_Uitableviewcel_1.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_accessorySwitchView
{
  v2 = [(PSSpecifierContentConfigurationCellAccessibility *)self safeUIViewForKey:@"_accessoryView"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end