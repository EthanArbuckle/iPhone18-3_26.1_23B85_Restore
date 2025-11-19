@interface VOTPickerSettingViewController
- (id)specifiers;
- (void)_updateCellAccessories;
- (void)_updateCellAccessory:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation VOTPickerSettingViewController

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v22 = OBJC_IVAR___PSListController__specifiers;
    v24 = self;
    v4 = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:@"VOSSettingsItem"];
    v5 = +[NSMutableArray array];
    v6 = +[VOSSettingsHelper sharedInstance];
    v7 = [v6 nameForItem:v4];
    v8 = [PSSpecifier groupSpecifierWithName:v7];

    [v5 addObject:v8];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = +[VOSSettingsHelper sharedInstance];
    v10 = [v9 possibleValuesForSettingsItem:v4];

    obj = v10;
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      v14 = PSValueKey;
      do
      {
        v15 = 0;
        v16 = v8;
        do
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v25 + 1) + 8 * v15);
          v18 = +[VOSSettingsHelper sharedInstance];
          v19 = [v18 formattedValue:v17 withItem:v4];

          v8 = [PSSpecifier preferenceSpecifierNamed:v19 target:v24 set:0 get:0 detail:0 cell:3 edit:0];

          [v8 setProperty:v17 forKey:v14];
          [v8 setProperty:v4 forKey:@"VOSSettingsItem"];
          [v5 addObject:v8];

          v15 = v15 + 1;
          v16 = v8;
        }

        while (v12 != v15);
        v12 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v12);
    }

    v20 = *&v24->PSListController_opaque[v22];
    *&v24->PSListController_opaque[v22] = v5;

    v3 = *&v24->PSListController_opaque[v22];
  }

  return v3;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v7 deselectRowAtIndexPath:v6 animated:1];
  v12 = [v7 cellForRowAtIndexPath:v6];

  v8 = [v12 specifier];
  v9 = [v8 propertyForKey:PSValueKey];
  v10 = [v8 propertyForKey:@"VOSSettingsItem"];
  v11 = +[VOSSettingsHelper sharedInstance];
  [v11 setValue:v9 forSettingsItem:v10];

  [(VOTPickerSettingViewController *)self _updateCellAccessories];
}

- (void)_updateCellAccessories
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(VOTPickerSettingViewController *)self table];
  v4 = [v3 visibleCells];

  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(VOTPickerSettingViewController *)self _updateCellAccessory:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_updateCellAccessory:(id)a3
{
  v3 = a3;
  v9 = [v3 specifier];
  v4 = [v9 propertyForKey:PSValueKey];
  v5 = [v9 propertyForKey:@"VOSSettingsItem"];
  v6 = +[VOSSettingsHelper sharedInstance];
  v7 = [v6 valueForSettingsItem:v5];
  if ([v4 isEqual:v7])
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  [v3 setAccessoryType:v8];
}

@end