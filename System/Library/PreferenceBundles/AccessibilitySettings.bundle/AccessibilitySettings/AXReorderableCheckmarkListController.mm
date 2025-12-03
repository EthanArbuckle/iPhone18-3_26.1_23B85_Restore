@interface AXReorderableCheckmarkListController
- (AXReorderableCheckmarkListController)init;
- (BOOL)isItemEnabled:(id)enabled;
- (id)allItems;
- (id)itemAfterTogglingEnabledState:(id)state;
- (id)itemSpecifiers;
- (id)itemsFromPreferences;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (id)titleForItem:(id)item;
- (void)_updateCell:(id)cell forIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)updateCellForItemAtIndex:(unint64_t)index;
- (void)updateItemsInPreferences:(id)preferences;
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
    itemsFromPreferences = [(AXReorderableCheckmarkListController *)v2 itemsFromPreferences];
    v5 = [itemsFromPreferences mutableCopy];
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
  table = [(AXReorderableCheckmarkListController *)self table];
  [table setAllowsSelectionDuringEditing:1];

  table2 = [(AXReorderableCheckmarkListController *)self table];
  [table2 setEditing:1 animated:0];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsSetupCapableListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    itemSpecifiers = [(AXReorderableCheckmarkListController *)self itemSpecifiers];
    v6 = *&self->AXUISettingsSetupCapableListController_opaque[v3];
    *&self->AXUISettingsSetupCapableListController_opaque[v3] = itemSpecifiers;

    v4 = *&self->AXUISettingsSetupCapableListController_opaque[v3];
  }

  return v4;
}

- (id)allItems
{
  allItems = self->_allItems;
  if (!allItems)
  {
    itemsFromPreferences = [(AXReorderableCheckmarkListController *)self itemsFromPreferences];
    v5 = [itemsFromPreferences mutableCopy];
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

- (void)updateCellForItemAtIndex:(unint64_t)index
{
  v6 = [NSIndexPath indexPathForRow:index inSection:[(AXReorderableCheckmarkListController *)self indexOfSectionForItems]];
  table = [(AXReorderableCheckmarkListController *)self table];
  v5 = [table cellForRowAtIndexPath:v6];

  [(AXReorderableCheckmarkListController *)self _updateCell:v5 forIndexPath:v6];
}

- (void)_updateCell:(id)cell forIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  section = [pathCopy section];
  if (section == [(AXReorderableCheckmarkListController *)self indexOfSectionForItems])
  {
    defaultContentConfiguration = [cellCopy defaultContentConfiguration];
    v10 = [UIImage systemImageNamed:@"checkmark"];
    [v10 size];
    v12 = v11;
    v14 = v13;
    imageProperties = [defaultContentConfiguration imageProperties];
    [imageProperties setReservedLayoutSize:{v12, v14}];

    v16 = [(AXReorderableCheckmarkListController *)self specifierAtIndexPath:pathCopy];
    v17 = [v16 propertyForKey:@"AXReorderableItemIndex"];
    unsignedIntegerValue = [v17 unsignedIntegerValue];

    allItems = [(AXReorderableCheckmarkListController *)self allItems];
    v20 = [allItems count];

    if (unsignedIntegerValue >= v20)
    {
      _AXAssert();
    }

    allItems2 = [(AXReorderableCheckmarkListController *)self allItems];
    v22 = [allItems2 axSafeObjectAtIndex:unsignedIntegerValue];

    if ([(AXReorderableCheckmarkListController *)self isItemEnabled:v22])
    {
      [defaultContentConfiguration setImage:v10];
      v23 = &UIAccessibilityTraitSelected;
    }

    else
    {
      v24 = objc_opt_new();
      [defaultContentConfiguration setImage:v24];

      v23 = &UIAccessibilityTraitNone;
    }

    [cellCopy setAccessibilityTraits:*v23];
    v25 = [(AXReorderableCheckmarkListController *)self languageForItem:v22];
    if (v25)
    {
      [cellCopy setAccessibilityLanguage:v25];
    }

    v26 = [(AXReorderableCheckmarkListController *)self canItemBeToggled:v22];
    if ((v26 & 1) == 0)
    {
      accessibilityTraits = [cellCopy accessibilityTraits];
      [cellCopy setAccessibilityTraits:UIAccessibilityTraitNotEnabled | accessibilityTraits];
      v28 = +[UIColor tertiaryLabelColor];
      textProperties = [defaultContentConfiguration textProperties];
      [textProperties setColor:v28];

      [cellCopy setSelectionStyle:0];
    }

    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = __65__AXReorderableCheckmarkListController__updateCell_forIndexPath___block_invoke;
    v32[3] = &__block_descriptor_33_e26___UIColor_16__0__UIColor_8l;
    v33 = v26;
    imageProperties2 = [defaultContentConfiguration imageProperties];
    [imageProperties2 setTintColorTransformer:v32];

    name = [v16 name];
    [defaultContentConfiguration setText:name];

    [cellCopy setContentConfiguration:defaultContentConfiguration];
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v9.receiver = self;
  v9.super_class = AXReorderableCheckmarkListController;
  pathCopy = path;
  v7 = [(AXReorderableCheckmarkListController *)&v9 tableView:view cellForRowAtIndexPath:pathCopy];
  [(AXReorderableCheckmarkListController *)self _updateCell:v7 forIndexPath:pathCopy, v9.receiver, v9.super_class];

  return v7;
}

- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  indexOfSectionForItems = [(AXReorderableCheckmarkListController *)self indexOfSectionForItems];
  if ([pathCopy section] != indexOfSectionForItems || (v10 = indexPathCopy, objc_msgSend(indexPathCopy, "section") != indexOfSectionForItems))
  {
    v10 = pathCopy;
  }

  v11 = v10;

  return v10;
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  indexOfSectionForItems = [(AXReorderableCheckmarkListController *)self indexOfSectionForItems];
  if ([pathCopy section] != indexOfSectionForItems || objc_msgSend(indexPathCopy, "section") != indexOfSectionForItems)
  {
    _AXAssert();
  }

  if ([pathCopy section] == indexOfSectionForItems && objc_msgSend(indexPathCopy, "section") == indexOfSectionForItems)
  {
    v9 = [(AXReorderableCheckmarkListController *)self specifierAtIndexPath:indexPathCopy];
    v10 = [v9 propertyForKey:@"AXReorderableItemIndex"];
    unsignedIntegerValue = [v10 unsignedIntegerValue];

    v12 = [(AXReorderableCheckmarkListController *)self specifierAtIndexPath:pathCopy];
    v13 = [v12 propertyForKey:@"AXReorderableItemIndex"];
    unsignedIntegerValue2 = [v13 unsignedIntegerValue];

    if (unsignedIntegerValue != unsignedIntegerValue2)
    {
      allItems = [(AXReorderableCheckmarkListController *)self allItems];
      v16 = [allItems count];

      if (unsignedIntegerValue2 >= v16)
      {
        _AXAssert();
      }

      allItems2 = [(AXReorderableCheckmarkListController *)self allItems];
      v18 = [allItems2 axSafeObjectAtIndex:unsignedIntegerValue2];

      allItems3 = [(AXReorderableCheckmarkListController *)self allItems];
      [allItems3 removeObjectAtIndex:unsignedIntegerValue2];

      allItems4 = [(AXReorderableCheckmarkListController *)self allItems];
      [allItems4 insertObject:v18 atIndex:unsignedIntegerValue];

      allItems5 = [(AXReorderableCheckmarkListController *)self allItems];
      [(AXReorderableCheckmarkListController *)self updateItemsInPreferences:allItems5];

      [(AXReorderableCheckmarkListController *)self reloadSpecifiers];
    }
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  if (section == [(AXReorderableCheckmarkListController *)self indexOfSectionForItems])
  {
    v9 = [(AXReorderableCheckmarkListController *)self specifierAtIndexPath:pathCopy];
    v10 = [v9 propertyForKey:@"AXReorderableItemIndex"];
    unsignedIntegerValue = [v10 unsignedIntegerValue];

    allItems = [(AXReorderableCheckmarkListController *)self allItems];
    v13 = [allItems objectAtIndex:unsignedIntegerValue];

    if ([(AXReorderableCheckmarkListController *)self allowItemToBeToggled:v13])
    {
      v14 = [(AXReorderableCheckmarkListController *)self itemAfterTogglingEnabledState:v13];
      allItems2 = [(AXReorderableCheckmarkListController *)self allItems];
      [allItems2 replaceObjectAtIndex:unsignedIntegerValue withObject:v14];

      allItems3 = [(AXReorderableCheckmarkListController *)self allItems];
      [(AXReorderableCheckmarkListController *)self updateItemsInPreferences:allItems3];

      v17 = [viewCopy cellForRowAtIndexPath:pathCopy];
      [(AXReorderableCheckmarkListController *)self _updateCell:v17 forIndexPath:pathCopy];

      [viewCopy selectRowAtIndexPath:0 animated:1 scrollPosition:0];
    }

    else
    {
      v19.receiver = self;
      v19.super_class = AXReorderableCheckmarkListController;
      [(AXReorderableCheckmarkListController *)&v19 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = AXReorderableCheckmarkListController;
    [(AXReorderableCheckmarkListController *)&v18 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
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

- (void)updateItemsInPreferences:(id)preferences
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();
  OUTLINED_FUNCTION_0_1();

  NSRequestConcreteImplementation();
}

- (id)titleForItem:(id)item
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();
  OUTLINED_FUNCTION_0_1();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)isItemEnabled:(id)enabled
{
  OUTLINED_FUNCTION_1_2();
  objc_opt_class();
  OUTLINED_FUNCTION_0_1();
  NSRequestConcreteImplementation();
  return 1;
}

- (id)itemAfterTogglingEnabledState:(id)state
{
  OUTLINED_FUNCTION_1_2();
  v4 = v3;
  objc_opt_class();
  OUTLINED_FUNCTION_0_1();
  NSRequestConcreteImplementation();

  return v4;
}

@end