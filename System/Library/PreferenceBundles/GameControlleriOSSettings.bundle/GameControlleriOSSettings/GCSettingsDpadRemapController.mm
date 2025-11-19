@interface GCSettingsDpadRemapController
- (id)getCustomizationValue:(id)a3;
- (id)newSpecifiers;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)initSettings;
- (void)loadDevice;
- (void)setCustomization:(id)a3 forSpecifier:(id)a4;
- (void)setCustomization:(id)a3 toValue:(BOOL)a4 forDpad:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation GCSettingsDpadRemapController

- (void)initSettings
{
  v5 = [(GCSettingsDpadRemapController *)self parentController];
  v3 = [v5 settings];
  settings = self->_settings;
  self->_settings = v3;
}

- (void)loadDevice
{
  self->_device = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:@"Controller"];

  _objc_release_x1();
}

- (void)setCustomization:(id)a3 toValue:(BOOL)a4 forDpad:(id)a5
{
  v6 = a4;
  v13 = a3;
  v8 = [(GCControllerSettings *)self->_settings settingsForElement:a5];
  v9 = sub_9E38(@"INVERT_HORIZONTALLY_TITLE");
  v10 = [v13 isEqualToString:v9];

  if (v10)
  {
    [v8 setInvertHorizontally:v6];
  }

  else
  {
    v11 = sub_9E38(@"INVERT_VERTICALLY_TITLE");
    v12 = [v13 isEqualToString:v11];

    if (v12)
    {
      [v8 setInvertVertically:v6];
    }

    else
    {
      [v8 setSwapAxes:v6];
    }
  }
}

- (void)setCustomization:(id)a3 forSpecifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GCSettingsDpadRemapController *)self specifier];
  v14 = [v8 propertyForKey:@"ControllerElement"];

  v9 = [(GCSettingsDpadRemapController *)self parentController];
  v10 = [v9 elements];
  v11 = [v10 objectForKeyedSubscript:v14];

  v12 = [v6 propertyForKey:PSIDKey];

  v13 = [v7 BOOLValue];
  [(GCSettingsDpadRemapController *)self setCustomization:v12 toValue:v13 forDpad:v11];
}

- (id)getCustomizationValue:(id)a3
{
  v4 = a3;
  v5 = [(GCSettingsDpadRemapController *)self specifier];
  v6 = [v5 propertyForKey:@"ControllerElement"];

  v7 = [(GCSettingsDpadRemapController *)self parentController];
  v8 = [v7 elements];
  v9 = [v8 objectForKeyedSubscript:v6];

  v10 = [v4 propertyForKey:PSIDKey];

  v11 = [(GCControllerSettings *)self->_settings settingsForElement:v9];
  v12 = sub_9E38(@"INVERT_HORIZONTALLY_TITLE");
  LODWORD(v8) = [v10 isEqualToString:v12];

  if (v8)
  {
    v13 = [v11 invertHorizontally];
  }

  else
  {
    v14 = sub_9E38(@"INVERT_VERTICALLY_TITLE");
    v15 = [v10 isEqualToString:v14];

    if (v15)
    {
      v13 = [v11 invertVertically];
    }

    else
    {
      v13 = [v11 swapAxes];
    }
  }

  v16 = [NSNumber numberWithBool:v13];

  return v16;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(GCSettingsDpadRemapController *)self newSpecifiers];
    v6 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v5;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)newSpecifiers
{
  v22 = objc_alloc_init(NSMutableArray);
  [(GCSettingsDpadRemapController *)self loadDevice];
  [(GCSettingsDpadRemapController *)self initSettings];
  if (self->_device)
  {
    v3 = [(GCSettingsDpadRemapController *)self parentController];
    v4 = [v3 dstDpads];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v24;
      do
      {
        v10 = 0;
        v11 = v8;
        do
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v23 + 1) + 8 * v10);
          v8 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:3 edit:0];

          [v8 setProperty:v12 forKey:@"ControllerElement"];
          [v22 addObject:v8];
          v10 = v10 + 1;
          v11 = v8;
        }

        while (v7 != v10);
        v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v7);
    }

    v13 = [PSSpecifier groupSpecifierWithName:&stru_10B508];
    [v22 addObject:v13];
    v14 = sub_9E38(@"INVERT_HORIZONTALLY_TITLE");
    v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:"setCustomization:forSpecifier:" get:"getCustomizationValue:" detail:0 cell:6 edit:0];

    v16 = PSIDKey;
    [v15 setProperty:@"Invert Horizontally" forKey:PSIDKey];
    [v22 addObject:v15];
    v17 = sub_9E38(@"INVERT_VERTICALLY_TITLE");
    v18 = [PSSpecifier preferenceSpecifierNamed:v17 target:self set:"setCustomization:forSpecifier:" get:"getCustomizationValue:" detail:0 cell:6 edit:0];

    [v18 setProperty:@"Invert Vertically" forKey:v16];
    [v22 addObject:v18];
    v19 = sub_9E38(@"SWAP_AXIS_TITLE");
    v20 = [PSSpecifier preferenceSpecifierNamed:v19 target:self set:"setCustomization:forSpecifier:" get:"getCustomizationValue:" detail:0 cell:6 edit:0];

    [v20 setProperty:@"Swap Axes" forKey:v16];
    [v22 addObject:v20];
  }

  return v22;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v26.receiver = self;
  v26.super_class = GCSettingsDpadRemapController;
  v7 = [(GCSettingsDpadRemapController *)&v26 tableView:a3 cellForRowAtIndexPath:v6];
  if (![v6 section])
  {
    v25 = [(GCSettingsDpadRemapController *)self specifierAtIndexPath:v6];
    v8 = [v25 propertyForKey:@"ControllerElement"];
    v9 = [(GCSettingsDpadRemapController *)self parentController];
    v10 = [v9 elements];
    v11 = [v10 objectForKeyedSubscript:v8];

    v12 = [v11 unmappedSfSymbolsName];
    sub_A26C(v7, v12);

    v13 = [v7 titleLabel];
    v14 = [v11 unmappedLocalizedName];
    [v13 setText:v14];

    v15 = [(GCSettingsDpadRemapController *)self specifier];
    v16 = [v15 propertyForKey:@"ControllerElement"];

    v17 = [(GCSettingsDpadRemapController *)self parentController];
    v18 = [v17 elements];
    v19 = [v18 objectForKeyedSubscript:v16];

    v20 = [(GCControllerSettings *)self->_settings mappingForElement:v19];
    v21 = [v11 primaryAlias];
    v22 = [v20 primaryAlias];
    v23 = [v21 isEqualToString:v22];

    [v7 setChecked:v23];
  }

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v18 = a3;
  v6 = a4;
  if (![v6 section])
  {
    v7 = [(GCSettingsDpadRemapController *)self specifierAtIndexPath:v6];
    v8 = [(GCSettingsDpadRemapController *)self specifier];
    v9 = [v8 propertyForKey:@"ControllerElement"];

    v10 = [(GCSettingsDpadRemapController *)self parentController];
    v11 = [v10 elements];
    v12 = [v11 objectForKeyedSubscript:v9];

    v13 = [v7 propertyForKey:@"ControllerElement"];
    v14 = [(GCSettingsDpadRemapController *)self parentController];
    v15 = [v14 elements];
    v16 = [v15 objectForKeyedSubscript:v13];

    [(GCControllerSettings *)self->_settings setMappingForElement:v12 toElement:v16];
    v17 = [(GCSettingsDpadRemapController *)self parentController];
    [v17 reloadSpecifiers];

    [(GCSettingsDpadRemapController *)self reloadSpecifiers];
    [v18 deselectRowAtIndexPath:v6 animated:1];
  }
}

@end