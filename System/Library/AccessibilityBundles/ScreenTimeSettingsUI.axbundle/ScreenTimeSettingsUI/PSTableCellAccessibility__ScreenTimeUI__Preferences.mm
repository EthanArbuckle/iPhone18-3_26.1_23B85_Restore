@interface PSTableCellAccessibility__ScreenTimeUI__Preferences
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityIsAlwaysAllowCell;
- (BOOL)_accessibilityIsSTUIExpandable;
- (BOOL)_accessibilityIsSTUIExpanded;
- (BOOL)_accessibilitySupportsActivateAction;
- (BOOL)accessibilityActivate;
- (id)_axSpecifier;
- (id)_privateAccessibilityCustomActions;
- (id)accessibilityHint;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation PSTableCellAccessibility__ScreenTimeUI__Preferences

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UITableViewCell" hasInstanceMethod:@"_accessibilityCellEditingControl" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PSIconMarginTableCell" isKindOfClass:@"PSTableCell"];
}

- (BOOL)_accessibilityIsAlwaysAllowCell
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  specifier = [v2 specifier];
  accessibilityIdentification = [specifier accessibilityIdentification];
  v5 = [accessibilityIdentification isEqualToString:@"AXAlwaysAllowSpecifierIdentification"];

  return v5;
}

- (BOOL)_accessibilitySupportsActivateAction
{
  if ([(PSTableCellAccessibility__ScreenTimeUI__Preferences *)self _accessibilityIsAlwaysAllowCell])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = PSTableCellAccessibility__ScreenTimeUI__Preferences;
  return [(PSTableCellAccessibility__ScreenTimeUI__Preferences *)&v4 _accessibilitySupportsActivateAction];
}

- (BOOL)accessibilityActivate
{
  if (![(PSTableCellAccessibility__ScreenTimeUI__Preferences *)self _accessibilityIsAlwaysAllowCell])
  {
    goto LABEL_16;
  }

  LOBYTE(v34) = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  editingStyle = [v3 editingStyle];
  if (editingStyle == 1)
  {
    LOBYTE(v34) = 0;
    objc_opt_class();
    _tableView = [v3 _tableView];
    v7 = __UIAccessibilityCastAsClass();

    _swipeActionController = [v7 _swipeActionController];
    if ([v7 conformsToProtocol:&unk_2A22D31B0])
    {
      _accessibilityIndexPath = [v3 _accessibilityIndexPath];
      if (_accessibilityIndexPath)
      {
        v12 = [v7 swipeActionController:_swipeActionController trailingSwipeConfigurationForItemAtIndexPath:_accessibilityIndexPath];
        actions = [v12 actions];
        if ([actions count] == 1)
        {
          actions2 = [v12 actions];
          v15 = [actions2 objectAtIndexedSubscript:0];
          style = [v15 style];

          if (style == 1)
          {
            actions3 = [v12 actions];
            v18 = [actions3 objectAtIndexedSubscript:0];

            v34 = 0;
            v35 = &v34;
            v36 = 0x2020000000;
            v37 = 0;
            v21 = MEMORY[0x29EDCA5F8];
            v22 = 3221225472;
            v23 = __76__PSTableCellAccessibility__ScreenTimeUI__Preferences_accessibilityActivate__block_invoke_2;
            v24 = &unk_29F2F3998;
            v25 = v18;
            v26 = v3;
            v27 = &v34;
            AXPerformSafeBlock();
            accessibilityActivate = *(v35 + 24);

            _Block_object_dispose(&v34, 8);
            goto LABEL_5;
          }
        }

        else
        {
        }
      }
    }

    goto LABEL_15;
  }

  if (editingStyle != 2)
  {
LABEL_15:

LABEL_16:
    v20.receiver = self;
    v20.super_class = PSTableCellAccessibility__ScreenTimeUI__Preferences;
    accessibilityActivate = [(PSTableCellAccessibility__ScreenTimeUI__Preferences *)&v20 accessibilityActivate];
    return accessibilityActivate & 1;
  }

  objc_opt_class();
  v5 = [(PSTableCellAccessibility__ScreenTimeUI__Preferences *)self safeValueForKey:@"_accessibilityCellEditingControl"];
  v6 = __UIAccessibilityCastAsClass();

  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v28 = MEMORY[0x29EDCA5F8];
  v29 = 3221225472;
  v30 = __76__PSTableCellAccessibility__ScreenTimeUI__Preferences_accessibilityActivate__block_invoke;
  v31 = &unk_29F2F3948;
  v7 = v6;
  v32 = v7;
  v33 = &v34;
  AXPerformSafeBlock();
  accessibilityActivate = *(v35 + 24);

  _Block_object_dispose(&v34, 8);
LABEL_5:

  return accessibilityActivate & 1;
}

- (id)_privateAccessibilityCustomActions
{
  if ([(PSTableCellAccessibility__ScreenTimeUI__Preferences *)self _accessibilityIsAlwaysAllowCell])
  {
    _privateAccessibilityCustomActions = MEMORY[0x29EDB8E90];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PSTableCellAccessibility__ScreenTimeUI__Preferences;
    _privateAccessibilityCustomActions = [(PSTableCellAccessibility__ScreenTimeUI__Preferences *)&v5 _privateAccessibilityCustomActions];
  }

  return _privateAccessibilityCustomActions;
}

- (id)accessibilityHint
{
  if (![(PSTableCellAccessibility__ScreenTimeUI__Preferences *)self _accessibilityIsAlwaysAllowCell])
  {
    goto LABEL_5;
  }

  v9 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  editingStyle = [v3 editingStyle];

  if (editingStyle == 1)
  {
    v5 = @"remove.always.allowed.hint";
    goto LABEL_7;
  }

  if (editingStyle != 2)
  {
LABEL_5:
    v8.receiver = self;
    v8.super_class = PSTableCellAccessibility__ScreenTimeUI__Preferences;
    accessibilityHint = [(PSTableCellAccessibility__ScreenTimeUI__Preferences *)&v8 accessibilityHint];
    goto LABEL_8;
  }

  v5 = @"add.always.allowed.hint";
LABEL_7:
  accessibilityHint = accessibilityLocalizedString(v5);
LABEL_8:

  return accessibilityHint;
}

- (id)_axSpecifier
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  specifier = [v2 specifier];

  objc_opt_class();
  v4 = __UIAccessibilityCastAsSafeCategory();

  return v4;
}

- (BOOL)_accessibilityIsSTUIExpanded
{
  _axSpecifier = [(PSTableCellAccessibility__ScreenTimeUI__Preferences *)self _axSpecifier];
  _accessibilityIsExpandedSTUICell = [_axSpecifier _accessibilityIsExpandedSTUICell];

  return _accessibilityIsExpandedSTUICell;
}

- (BOOL)_accessibilityIsSTUIExpandable
{
  _axSpecifier = [(PSTableCellAccessibility__ScreenTimeUI__Preferences *)self _axSpecifier];
  _accessibilityIsExpandableSTUICell = [_axSpecifier _accessibilityIsExpandableSTUICell];

  return _accessibilityIsExpandableSTUICell;
}

- (id)accessibilityValue
{
  if ([(PSTableCellAccessibility__ScreenTimeUI__Preferences *)self _accessibilityIsSTUIExpanded])
  {
    v3 = @"time.selection.cell.expanded";
LABEL_5:
    v4 = accessibilityLocalizedString(v3);
    goto LABEL_7;
  }

  if ([(PSTableCellAccessibility__ScreenTimeUI__Preferences *)self _accessibilityIsSTUIExpandable])
  {
    v3 = @"time.selection.cell.collapsed";
    goto LABEL_5;
  }

  v4 = 0;
LABEL_7:
  v8.receiver = self;
  v8.super_class = PSTableCellAccessibility__ScreenTimeUI__Preferences;
  accessibilityValue = [(PSTableCellAccessibility__ScreenTimeUI__Preferences *)&v8 accessibilityValue];
  v6 = __AXStringForVariables();

  return v6;
}

- (unint64_t)accessibilityTraits
{
  if (-[PSTableCellAccessibility__ScreenTimeUI__Preferences _accessibilityIsAlwaysAllowCell](self, "_accessibilityIsAlwaysAllowCell") && (v11 = 0, objc_opt_class(), __UIAccessibilityCastAsClass(), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 editingStyle], v3, v4))
  {
    v10.receiver = self;
    v10.super_class = PSTableCellAccessibility__ScreenTimeUI__Preferences;
    return *MEMORY[0x29EDC7F70] | [(PSTableCellAccessibility__ScreenTimeUI__Preferences *)&v10 accessibilityTraits];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PSTableCellAccessibility__ScreenTimeUI__Preferences;
    accessibilityTraits = [(PSTableCellAccessibility__ScreenTimeUI__Preferences *)&v9 accessibilityTraits];
    _accessibilityIsSTUIExpandable = [(PSTableCellAccessibility__ScreenTimeUI__Preferences *)self _accessibilityIsSTUIExpandable];
    v8 = *MEMORY[0x29EDC7F70];
    if (!_accessibilityIsSTUIExpandable)
    {
      v8 = 0;
    }

    return v8 | accessibilityTraits;
  }
}

@end