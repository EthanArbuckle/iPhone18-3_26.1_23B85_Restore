@interface SCATCustomizeTopLevelMenuController
- (id)_replaceSubMenuTopLevelItems:(id)a3 withItem:(id)a4 itemKey:(id)a5;
- (id)_shortFirstPageEnabled:(id)a3;
- (id)itemsFromPreferences;
- (id)specifiers;
- (id)titleForItem:(id)a3;
- (void)_setShortFirstPageEnabled:(id)a3 specifier:(id)a4;
- (void)updateItemsInPreferences:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SCATCustomizeTopLevelMenuController

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SCATCustomizeTopLevelMenuController;
  [(SCATCustomizeTopLevelMenuController *)&v4 viewWillAppear:a3];
  [(AXReorderableCheckmarkListController *)self clearItemCache];
  [(SCATCustomizeTopLevelMenuController *)self reloadSpecifiers];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.super.AXUISettingsSetupCapableListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = [(SCATCustomizeMenuBaseController *)self menuItemSpecifiersIncludingToggleButton];
    [v5 addObjectsFromArray:v6];

    v7 = +[PSSpecifier emptyGroupSpecifier];
    [v5 addObject:v7];
    v8 = AXParameterizedLocalizedString();
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

    [v5 addObject:v9];
    v10 = +[AXSettings sharedInstance];
    v11 = [v10 switchControlTapBehavior];

    if ((v11 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = AXParameterizedLocalizedString();
      [v7 setProperty:v12 forKey:PSFooterTextGroupKey];

      v13 = AXParameterizedLocalizedString();
      v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:"_setShortFirstPageEnabled:specifier:" get:"_shortFirstPageEnabled:" detail:0 cell:6 edit:0];

      [v5 addObject:v14];
    }

    v15 = *&self->super.super.AXUISettingsSetupCapableListController_opaque[v3];
    *&self->super.super.AXUISettingsSetupCapableListController_opaque[v3] = v5;

    v4 = *&self->super.super.AXUISettingsSetupCapableListController_opaque[v3];
  }

  return v4;
}

- (void)_setShortFirstPageEnabled:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[AXSettings sharedInstance];
  [v5 setSwitchControlShouldUseShortFirstPage:v4];
}

- (id)_shortFirstPageEnabled:(id)a3
{
  v3 = +[AXSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 switchControlShouldUseShortFirstPage]);

  return v4;
}

- (id)itemsFromPreferences
{
  v3 = +[AXSettings sharedInstance];
  v4 = [v3 switchControlTopLevelMenuItems];
  v5 = [(SCATCustomizeMenuBaseController *)self filterAndTrackMenuItemsMatchingBlock:&__block_literal_global_21 allItems:v4];

  return v5;
}

BOOL __59__SCATCustomizeTopLevelMenuController_itemsFromPreferences__block_invoke(id a1, NSString *a2)
{
  v2 = a2;
  if ([(NSString *)v2 isEqualToString:AXSSwitchControlMenuItemItemMenu]|| [(NSString *)v2 isEqualToString:AXSSwitchControlMenuItemLockItemMenu])
  {
    v3 = +[AXSettings sharedInstance];
    v4 = [v3 switchControlTapBehavior] != &dword_0 + 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updateItemsInPreferences:(id)a3
{
  v4 = a3;
  v5 = +[AXSettings sharedInstance];
  v34 = [v5 gestureKeys];
  v31 = [v5 deviceKeys];
  v28 = [v5 settingsKeys];
  v26 = [v5 mediaControlsKeys];
  v30 = [v5 switchControlGesturesTopLevelMenuItems];
  v27 = [v5 switchControlDeviceTopLevelMenuItems];
  v25 = [v5 switchControlSettingsTopLevelMenuItems];
  v33 = v5;
  v24 = [v5 switchControlMediaControlsTopLevelMenuItems];
  v29 = [v4 mutableCopy];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v36;
    v9 = AXSSwitchControlMenuItemTypeKey;
    v10 = AXSSwitchControlMenuItemEnabledKey;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v35 + 1) + 8 * i);
        v13 = [v12 objectForKeyedSubscript:v9];
        if ([v34 containsObject:v13])
        {
          v14 = [v12 objectForKeyedSubscript:v10];
          v15 = [v14 BOOLValue];

          v16 = [(SCATCustomizeTopLevelMenuController *)self _replaceSubMenuTopLevelItems:v30 withItem:v12 itemKey:v13];
          [v33 setSwitchControlGesturesTopLevelMenuItems:v16];

          if ((v15 & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        else
        {
          if ([v31 containsObject:v13])
          {
            v17 = [v12 objectForKeyedSubscript:v10];
            v18 = [v17 BOOLValue];

            v19 = [(SCATCustomizeTopLevelMenuController *)self _replaceSubMenuTopLevelItems:v27 withItem:v12 itemKey:v13];
            [v33 setSwitchControlDeviceTopLevelMenuItems:v19];
          }

          else if ([v28 containsObject:v13])
          {
            v20 = [v12 objectForKeyedSubscript:v10];
            v18 = [v20 BOOLValue];

            v19 = [(SCATCustomizeTopLevelMenuController *)self _replaceSubMenuTopLevelItems:v25 withItem:v12 itemKey:v13];
            [v33 setSwitchControlSettingsTopLevelMenuItems:v19];
          }

          else
          {
            if (![v26 containsObject:v13])
            {
              goto LABEL_17;
            }

            v21 = [v12 objectForKeyedSubscript:v10];
            v18 = [v21 BOOLValue];

            v19 = [(SCATCustomizeTopLevelMenuController *)self _replaceSubMenuTopLevelItems:v24 withItem:v12 itemKey:v13];
            [v33 setSwitchControlMediaControlsTopLevelMenuItems:v19];
          }

          if ((v18 & 1) == 0)
          {
LABEL_16:
            [v29 removeObject:v12];
          }
        }

LABEL_17:
      }

      v7 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v7);
  }

  v22 = [(SCATCustomizeMenuBaseController *)self restorePreviouslyFilteredItemsToItems:v29];

  v23 = +[AXSettings sharedInstance];
  [v23 setSwitchControlTopLevelMenuItems:v22];
}

- (id)_replaceSubMenuTopLevelItems:(id)a3 withItem:(id)a4 itemKey:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 mutableCopy];
  if ([v7 count])
  {
    v11 = 0;
    v12 = AXSSwitchControlMenuItemTypeKey;
    while (1)
    {
      v13 = [v7 objectAtIndex:v11];
      v14 = [v13 objectForKeyedSubscript:v12];
      v15 = [v14 isEqualToString:v9];

      if (v15)
      {
        break;
      }

      if (++v11 >= [v7 count])
      {
        goto LABEL_7;
      }
    }

    [v10 replaceObjectAtIndex:v11 withObject:v8];
  }

LABEL_7:

  return v10;
}

- (id)titleForItem:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:AXSSwitchControlMenuItemTypeKey];
  if ([v5 isEqualToString:AXSSwitchControlMenuItemDeviceSiriVoiceControl])
  {
    if (![(SCATCustomizeTopLevelMenuController *)self _isSiriAvailable]&& ![(SCATCustomizeTopLevelMenuController *)self _isVoiceControlAvailable])
    {
      _AXAssert();
    }

    goto LABEL_9;
  }

  if (![v5 isEqualToString:AXSSwitchControlMenuItemDeviceTypeToSiri])
  {
    v9.receiver = self;
    v9.super_class = SCATCustomizeTopLevelMenuController;
    v6 = [(SCATCustomizeMenuBaseController *)&v9 titleForItem:v4];
    goto LABEL_11;
  }

  if ([(SCATCustomizeTopLevelMenuController *)self _isSiriAvailable])
  {
LABEL_9:
    v6 = AXParameterizedLocalizedString();
LABEL_11:
    v7 = v6;
    goto LABEL_12;
  }

  v7 = 0;
LABEL_12:

  return v7;
}

@end