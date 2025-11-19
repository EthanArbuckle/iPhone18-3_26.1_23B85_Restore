@interface AXReorderableCheckmarkListController
- (AXReorderableCheckmarkListController)init;
- (BOOL)isItemEnabled:(id)a3;
- (id)allItems;
- (id)itemAfterTogglingEnabledState:(id)a3;
- (id)itemSpecifiers;
- (id)itemsFromPreferences;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5;
- (id)titleForItem:(id)a3;
- (void)_updateCell:(id)a3 forIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5;
- (void)updateCellForItemAtIndex:(unint64_t)a3;
- (void)updateItemsInPreferences:(id)a3;
- (void)viewDidLoad;
@end

@implementation AXReorderableCheckmarkListController

- (AXReorderableCheckmarkListController)init
{
  v8.receiver = self;
  v8.super_class = AXReorderableCheckmarkListController;
  v2 = [(AXReorderableCheckmarkListController *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(AXReorderableCheckmarkListController *)v2 itemsFromPreferences];
    v5 = [v4 mutableCopy];
    allItems = v3->_allItems;
    v3->_allItems = v5;
  }

  return v3;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = AXReorderableCheckmarkListController;
  [(AXReorderableCheckmarkListController *)&v5 viewDidLoad];
  v3 = [(AXReorderableCheckmarkListController *)self table];
  [v3 setAllowsSelectionDuringEditing:1];

  v4 = [(AXReorderableCheckmarkListController *)self table];
  [v4 setEditing:1 animated:0];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsSetupCapableListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(AXReorderableCheckmarkListController *)self itemSpecifiers];
    v6 = *&self->AXUISettingsSetupCapableListController_opaque[v3];
    *&self->AXUISettingsSetupCapableListController_opaque[v3] = v5;

    v4 = *&self->AXUISettingsSetupCapableListController_opaque[v3];
  }

  return v4;
}

- (id)allItems
{
  allItems = self->_allItems;
  if (!allItems)
  {
    v4 = [(AXReorderableCheckmarkListController *)self itemsFromPreferences];
    v5 = [v4 mutableCopy];
    v6 = self->_allItems;
    self->_allItems = v5;

    allItems = self->_allItems;
  }

  return allItems;
}

- (id)itemSpecifiers
{
  v19 = +[NSMutableArray array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(AXReorderableCheckmarkListController *)self allItems];
  v3 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v22;
    v7 = AXSSwitchControlMenuItemTypeKey;
    v8 = AXSSwitchControlMenuItemGesturesForceTouch;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        if (![(AXReorderableCheckmarkListController *)self hideListItem:v10])
        {
          v11 = [v10 objectForKeyedSubscript:v7];

          if (v11 != v8)
          {
            v12 = [(AXReorderableCheckmarkListController *)self titleForItem:v10];
            goto LABEL_11;
          }

          if (AXForceTouchAvailableAndEnabled())
          {
            v12 = settingsLocString(@"FORCE_TOUCH", @"Accessibility");
LABEL_11:
            v13 = v12;
            v14 = [PSSpecifier preferenceSpecifierNamed:v12 target:0 set:0 get:0 detail:0 cell:3 edit:0];
          }

          else
          {
            v14 = 0;
          }

          v15 = [NSNumber numberWithUnsignedInteger:v5];
          [v14 setProperty:v15 forKey:@"AXReorderableItemIndex"];

          v16 = [(AXReorderableCheckmarkListController *)self identifierForItem:v10];
          [v14 setIdentifier:v16];

          if (v14)
          {
            [v19 addObject:v14];
          }
        }

        ++v5;
        v9 = v9 + 1;
      }

      while (v4 != v9);
      v17 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      v4 = v17;
    }

    while (v17);
  }

  return v19;
}

- (void)updateCellForItemAtIndex:(unint64_t)a3
{
  v6 = [NSIndexPath indexPathForRow:a3 inSection:[(AXReorderableCheckmarkListController *)self indexOfSectionForItems]];
  v4 = [(AXReorderableCheckmarkListController *)self table];
  v5 = [v4 cellForRowAtIndexPath:v6];

  [(AXReorderableCheckmarkListController *)self _updateCell:v5 forIndexPath:v6];
}

- (void)_updateCell:(id)a3 forIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  if (v8 == [(AXReorderableCheckmarkListController *)self indexOfSectionForItems])
  {
    v9 = [v6 defaultContentConfiguration];
    v10 = [UIImage systemImageNamed:@"checkmark"];
    [v10 size];
    v12 = v11;
    v14 = v13;
    v15 = [v9 imageProperties];
    [v15 setReservedLayoutSize:{v12, v14}];

    v16 = [(AXReorderableCheckmarkListController *)self specifierAtIndexPath:v7];
    v17 = [v16 propertyForKey:@"AXReorderableItemIndex"];
    v18 = [v17 unsignedIntegerValue];

    v19 = [(AXReorderableCheckmarkListController *)self allItems];
    v20 = [v19 count];

    if (v18 >= v20)
    {
      _AXAssert();
    }

    v21 = [(AXReorderableCheckmarkListController *)self allItems];
    v22 = [v21 axSafeObjectAtIndex:v18];

    if ([(AXReorderableCheckmarkListController *)self isItemEnabled:v22])
    {
      [v9 setImage:v10];
      v23 = &UIAccessibilityTraitSelected;
    }

    else
    {
      v24 = objc_opt_new();
      [v9 setImage:v24];

      v23 = &UIAccessibilityTraitNone;
    }

    [v6 setAccessibilityTraits:*v23];
    v25 = [(AXReorderableCheckmarkListController *)self languageForItem:v22];
    if (v25)
    {
      [v6 setAccessibilityLanguage:v25];
    }

    v26 = [(AXReorderableCheckmarkListController *)self canItemBeToggled:v22];
    if ((v26 & 1) == 0)
    {
      v27 = [v6 accessibilityTraits];
      [v6 setAccessibilityTraits:UIAccessibilityTraitNotEnabled | v27];
      v28 = +[UIColor tertiaryLabelColor];
      v29 = [v9 textProperties];
      [v29 setColor:v28];

      [v6 setSelectionStyle:0];
    }

    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = __65__AXReorderableCheckmarkListController__updateCell_forIndexPath___block_invoke;
    v32[3] = &__block_descriptor_33_e26___UIColor_16__0__UIColor_8l;
    v33 = v26;
    v30 = [v9 imageProperties];
    [v30 setTintColorTransformer:v32];

    v31 = [v16 name];
    [v9 setText:v31];

    [v6 setContentConfiguration:v9];
  }
}

id __65__AXReorderableCheckmarkListController__updateCell_forIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    v5 = v3;
  }

  else
  {
    v5 = [v3 colorWithAlphaComponent:0.5];
  }

  v6 = v5;

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v9.receiver = self;
  v9.super_class = AXReorderableCheckmarkListController;
  v6 = a4;
  v7 = [(AXReorderableCheckmarkListController *)&v9 tableView:a3 cellForRowAtIndexPath:v6];
  [(AXReorderableCheckmarkListController *)self _updateCell:v7 forIndexPath:v6, v9.receiver, v9.super_class];

  return v7;
}

- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(AXReorderableCheckmarkListController *)self indexOfSectionForItems];
  if ([v7 section] != v9 || (v10 = v8, objc_msgSend(v8, "section") != v9))
  {
    v10 = v7;
  }

  v11 = v10;

  return v10;
}

- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v22 = a4;
  v7 = a5;
  v8 = [(AXReorderableCheckmarkListController *)self indexOfSectionForItems];
  if ([v22 section] != v8 || objc_msgSend(v7, "section") != v8)
  {
    _AXAssert();
  }

  if ([v22 section] == v8 && objc_msgSend(v7, "section") == v8)
  {
    v9 = [(AXReorderableCheckmarkListController *)self specifierAtIndexPath:v7];
    v10 = [v9 propertyForKey:@"AXReorderableItemIndex"];
    v11 = [v10 unsignedIntegerValue];

    v12 = [(AXReorderableCheckmarkListController *)self specifierAtIndexPath:v22];
    v13 = [v12 propertyForKey:@"AXReorderableItemIndex"];
    v14 = [v13 unsignedIntegerValue];

    if (v11 != v14)
    {
      v15 = [(AXReorderableCheckmarkListController *)self allItems];
      v16 = [v15 count];

      if (v14 >= v16)
      {
        _AXAssert();
      }

      v17 = [(AXReorderableCheckmarkListController *)self allItems];
      v18 = [v17 axSafeObjectAtIndex:v14];

      v19 = [(AXReorderableCheckmarkListController *)self allItems];
      [v19 removeObjectAtIndex:v14];

      v20 = [(AXReorderableCheckmarkListController *)self allItems];
      [v20 insertObject:v18 atIndex:v11];

      v21 = [(AXReorderableCheckmarkListController *)self allItems];
      [(AXReorderableCheckmarkListController *)self updateItemsInPreferences:v21];

      [(AXReorderableCheckmarkListController *)self reloadSpecifiers];
    }
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 section];
  if (v8 == [(AXReorderableCheckmarkListController *)self indexOfSectionForItems])
  {
    v9 = [(AXReorderableCheckmarkListController *)self specifierAtIndexPath:v7];
    v10 = [v9 propertyForKey:@"AXReorderableItemIndex"];
    v11 = [v10 unsignedIntegerValue];

    v12 = [(AXReorderableCheckmarkListController *)self allItems];
    v13 = [v12 objectAtIndex:v11];

    if ([(AXReorderableCheckmarkListController *)self allowItemToBeToggled:v13])
    {
      v14 = [(AXReorderableCheckmarkListController *)self itemAfterTogglingEnabledState:v13];
      v15 = [(AXReorderableCheckmarkListController *)self allItems];
      [v15 replaceObjectAtIndex:v11 withObject:v14];

      v16 = [(AXReorderableCheckmarkListController *)self allItems];
      [(AXReorderableCheckmarkListController *)self updateItemsInPreferences:v16];

      v17 = [v6 cellForRowAtIndexPath:v7];
      [(AXReorderableCheckmarkListController *)self _updateCell:v17 forIndexPath:v7];

      [v6 selectRowAtIndexPath:0 animated:1 scrollPosition:0];
    }

    else
    {
      v19.receiver = self;
      v19.super_class = AXReorderableCheckmarkListController;
      [(AXReorderableCheckmarkListController *)&v19 tableView:v6 didSelectRowAtIndexPath:v7];
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = AXReorderableCheckmarkListController;
    [(AXReorderableCheckmarkListController *)&v18 tableView:v6 didSelectRowAtIndexPath:v7];
  }
}

- (id)itemsFromPreferences
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();
  OUTLINED_FUNCTION_0_1();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)updateItemsInPreferences:(id)a3
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();
  OUTLINED_FUNCTION_0_1();

  NSRequestConcreteImplementation();
}

- (id)titleForItem:(id)a3
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();
  OUTLINED_FUNCTION_0_1();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)isItemEnabled:(id)a3
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();
  OUTLINED_FUNCTION_0_1();
  NSRequestConcreteImplementation();
  return 1;
}

- (id)itemAfterTogglingEnabledState:(id)a3
{
  OUTLINED_FUNCTION_1_2();
  v4 = v3;
  objc_opt_class();
  OUTLINED_FUNCTION_0_1();
  NSRequestConcreteImplementation();

  return v4;
}

@end