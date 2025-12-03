@interface SCATCustomizeMenuBaseController
- (BOOL)_toggleShouldEnableAllMenuItems;
- (BOOL)isItemEnabled:(id)enabled;
- (id)_nameForToggle;
- (id)filterAndTrackMenuItemsMatchingBlock:(id)block allItems:(id)items;
- (id)itemAfterTogglingEnabledState:(id)state;
- (id)menuItemSpecifiersIncludingToggleButton;
- (id)restorePreviouslyFilteredItemsToItems:(id)items;
- (id)specifiers;
- (id)titleForItem:(id)item;
- (void)_toggleButtonTapped:(id)tapped;
- (void)_updateToggleButtonName;
- (void)selectRowForSpecifier:(id)specifier;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateElementsInTopLevelWithItems:(id)items;
@end

@implementation SCATCustomizeMenuBaseController

- (id)menuItemSpecifiersIncludingToggleButton
{
  v3 = +[NSMutableArray array];
  v4 = +[PSSpecifier emptyGroupSpecifier];
  [v3 addObject:v4];
  _nameForToggle = [(SCATCustomizeMenuBaseController *)self _nameForToggle];
  v6 = [PSSpecifier preferenceSpecifierNamed:_nameForToggle target:self set:0 get:0 detail:0 cell:13 edit:0];
  [v6 setProperty:&off_27A260 forKey:PSAlignmentKey];
  [v6 setIdentifier:@"ToggleButton"];
  [v6 setButtonAction:"_toggleButtonTapped:"];
  [v3 addObject:v6];
  v7 = +[PSSpecifier emptyGroupSpecifier];

  [v3 addObject:v7];
  itemSpecifiers = [(AXReorderableCheckmarkListController *)self itemSpecifiers];
  [v3 addObjectsFromArray:itemSpecifiers];

  return v3;
}

- (id)filterAndTrackMenuItemsMatchingBlock:(id)block allItems:(id)items
{
  blockCopy = block;
  itemsCopy = items;
  v8 = +[NSMutableDictionary dictionary];
  [(SCATCustomizeMenuBaseController *)self setHiddenIndexesToDictionaries:v8];

  +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [itemsCopy count]);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __81__SCATCustomizeMenuBaseController_filterAndTrackMenuItemsMatchingBlock_allItems___block_invoke;
  v14[3] = &unk_2578F8;
  v16 = blockCopy;
  v9 = v14[4] = self;
  v15 = v9;
  v10 = blockCopy;
  [itemsCopy enumerateObjectsUsingBlock:v14];

  v11 = v15;
  v12 = v9;

  return v9;
}

void __81__SCATCustomizeMenuBaseController_filterAndTrackMenuItemsMatchingBlock_allItems___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = [v8 objectForKeyedSubscript:AXSSwitchControlMenuItemTypeKey];
  if ((*(*(a1 + 48) + 16))())
  {
    v6 = [*(a1 + 32) hiddenIndexesToDictionaries];
    v7 = [NSNumber numberWithUnsignedInteger:a3];
    [v6 setObject:v8 forKeyedSubscript:v7];
  }

  else
  {
    [*(a1 + 40) addObject:v8];
  }
}

- (id)restorePreviouslyFilteredItemsToItems:(id)items
{
  itemsCopy = items;
  hiddenIndexesToDictionaries = [(SCATCustomizeMenuBaseController *)self hiddenIndexesToDictionaries];

  if (!hiddenIndexesToDictionaries)
  {
    v22 = NSStringFromSelector(a2);
    _AXAssert();
  }

  hiddenIndexesToDictionaries2 = [(SCATCustomizeMenuBaseController *)self hiddenIndexesToDictionaries];
  v8 = [hiddenIndexesToDictionaries2 count];

  v9 = itemsCopy;
  if (v8)
  {
    hiddenIndexesToDictionaries3 = [(SCATCustomizeMenuBaseController *)self hiddenIndexesToDictionaries];
    allKeys = [hiddenIndexesToDictionaries3 allKeys];
    v12 = [allKeys sortedArrayUsingComparator:&__block_literal_global_37];

    v9 = [itemsCopy mutableCopy];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v23 + 1) + 8 * i);
          hiddenIndexesToDictionaries4 = [(SCATCustomizeMenuBaseController *)self hiddenIndexesToDictionaries];
          v20 = [hiddenIndexesToDictionaries4 objectForKeyedSubscript:v18];
          [v9 insertObject:v20 atIndex:{objc_msgSend(v18, "unsignedIntegerValue")}];
        }

        v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v15);
    }
  }

  return v9;
}

int64_t __73__SCATCustomizeMenuBaseController_restorePreviouslyFilteredItemsToItems___block_invoke(id a1, NSNumber *a2, NSNumber *a3)
{
  v4 = a3;
  v5 = [(NSNumber *)a2 unsignedIntegerValue];
  v6 = [(NSNumber *)v4 unsignedIntegerValue];

  v7 = -1;
  if (v5 >= v6)
  {
    v7 = 1;
  }

  if (v5 == v6)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.AXUISettingsSetupCapableListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    menuItemSpecifiersIncludingToggleButton = [(SCATCustomizeMenuBaseController *)self menuItemSpecifiersIncludingToggleButton];
    v6 = *&self->super.AXUISettingsSetupCapableListController_opaque[v3];
    *&self->super.AXUISettingsSetupCapableListController_opaque[v3] = menuItemSpecifiersIncludingToggleButton;

    v4 = *&self->super.AXUISettingsSetupCapableListController_opaque[v3];
  }

  return v4;
}

- (id)_nameForToggle
{
  if ([(SCATCustomizeMenuBaseController *)self _toggleShouldEnableAllMenuItems])
  {
    [(SCATCustomizeMenuBaseController *)self nameForShowToggle];
  }

  else
  {
    [(SCATCustomizeMenuBaseController *)self nameForHideToggle];
  }
  v3 = ;

  return v3;
}

- (BOOL)_toggleShouldEnableAllMenuItems
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  cachedItems = [(AXReorderableCheckmarkListController *)self cachedItems];
  v4 = [cachedItems countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(cachedItems);
        }

        if (![(SCATCustomizeMenuBaseController *)self isItemEnabled:*(*(&v10 + 1) + 8 * i)])
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v5 = [cachedItems countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (void)_updateToggleButtonName
{
  v4 = [(SCATCustomizeMenuBaseController *)self specifierForID:@"ToggleButton"];
  _nameForToggle = [(SCATCustomizeMenuBaseController *)self _nameForToggle];
  [v4 setName:_nameForToggle];

  [(SCATCustomizeMenuBaseController *)self reloadSpecifier:v4 animated:0];
}

- (void)_toggleButtonTapped:(id)tapped
{
  _toggleShouldEnableAllMenuItems = [(SCATCustomizeMenuBaseController *)self _toggleShouldEnableAllMenuItems];
  cachedItems = [(AXReorderableCheckmarkListController *)self cachedItems];
  v5 = [cachedItems count];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      v8 = [cachedItems objectAtIndexedSubscript:i];
      if (_toggleShouldEnableAllMenuItems != [(SCATCustomizeMenuBaseController *)self isItemEnabled:v8])
      {
        v9 = [(SCATCustomizeMenuBaseController *)self itemAfterTogglingEnabledState:v8];
        [cachedItems replaceObjectAtIndex:i withObject:v9];
      }
    }
  }

  [(AXReorderableCheckmarkListController *)self updateItemsInPreferences:cachedItems];
  [(SCATCustomizeMenuBaseController *)self reloadSpecifiers];
}

- (void)selectRowForSpecifier:(id)specifier
{
  v4 = [(SCATCustomizeMenuBaseController *)self indexPathForSpecifier:specifier];
  [(SCATCustomizeMenuBaseController *)self tableView:*&self->super.AXUISettingsSetupCapableListController_opaque[OBJC_IVAR___PSListController__table] didSelectRowAtIndexPath:v4];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v8.receiver = self;
  v8.super_class = SCATCustomizeMenuBaseController;
  pathCopy = path;
  [(AXReorderableCheckmarkListController *)&v8 tableView:view didSelectRowAtIndexPath:pathCopy];
  section = [pathCopy section];

  if (section == [(SCATCustomizeMenuBaseController *)self indexOfSectionForItems])
  {
    [(SCATCustomizeMenuBaseController *)self _updateToggleButtonName];
  }
}

- (void)updateElementsInTopLevelWithItems:(id)items
{
  itemsCopy = items;
  v5 = +[AXSettings sharedInstance];
  switchControlTopLevelMenuItems = [v5 switchControlTopLevelMenuItems];
  v7 = [NSMutableSet setWithArray:switchControlTopLevelMenuItems];

  v8 = +[NSMutableArray array];
  v9 = +[NSMutableArray array];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v10 = itemsCopy;
  v11 = [v10 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v41;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v40 + 1) + 8 * i);
        if ([(SCATCustomizeMenuBaseController *)self isItemEnabled:v15])
        {
          v16 = v8;
        }

        else
        {
          v16 = v9;
        }

        [v16 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v12);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v17 = v8;
  v18 = [v17 countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v37;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v37 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v36 + 1) + 8 * j);
        if (([v7 containsObject:v22] & 1) == 0)
        {
          [v7 addObject:v22];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v19);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v23 = v9;
  v24 = [v23 countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v33;
    do
    {
      for (k = 0; k != v25; k = k + 1)
      {
        if (*v33 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v32 + 1) + 8 * k);
        v29 = [(SCATCustomizeMenuBaseController *)self itemAfterTogglingEnabledState:v28, v32];
        if (([v7 containsObject:v28] & 1) != 0 || (v28 = v29, objc_msgSend(v7, "containsObject:", v29)))
        {
          [v7 removeObject:v28];
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v25);
  }

  v30 = +[AXSettings sharedInstance];
  allObjects = [v7 allObjects];
  [v30 setSwitchControlTopLevelMenuItems:allObjects];
}

- (id)titleForItem:(id)item
{
  v3 = [item objectForKeyedSubscript:AXSSwitchControlMenuItemTypeKey];
  v4 = [@"CUSTOMIZE_MENU_" stringByAppendingString:v3];
  [v3 isEqualToString:AXSSwitchControlMenuItemGesturesForceTouch];
  v5 = AXParameterizedLocalizedString();

  return v5;
}

- (BOOL)isItemEnabled:(id)enabled
{
  v3 = [enabled objectForKeyedSubscript:AXSSwitchControlMenuItemEnabledKey];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)itemAfterTogglingEnabledState:(id)state
{
  v3 = AXSSwitchControlMenuItemEnabledKey;
  stateCopy = state;
  v5 = [stateCopy objectForKeyedSubscript:v3];
  bOOLValue = [v5 BOOLValue];

  v11[0] = v3;
  v7 = [NSNumber numberWithInt:bOOLValue ^ 1];
  v12[0] = v7;
  v11[1] = AXSSwitchControlMenuItemTypeKey;
  v8 = [stateCopy objectForKeyedSubscript:?];

  v12[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

@end