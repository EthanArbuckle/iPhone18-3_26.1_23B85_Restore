@interface GCSettingsAuxiliaryButtonRemapController
- (id)newSpecifiers;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)loadDevice;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation GCSettingsAuxiliaryButtonRemapController

- (void)loadDevice
{
  self->_device = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:@"Controller"];

  _objc_release_x1();
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(GCSettingsAuxiliaryButtonRemapController *)self newSpecifiers];
    v6 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v5;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)newSpecifiers
{
  v21 = objc_alloc_init(NSMutableArray);
  [(GCSettingsAuxiliaryButtonRemapController *)self loadDevice];
  if (self->_device)
  {
    v3 = [(GCSettingsAuxiliaryButtonRemapController *)self parentController];
    v4 = [v3 dstAuxiliaryButtons];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v23;
      do
      {
        v10 = 0;
        v11 = v8;
        do
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v22 + 1) + 8 * v10);
          v8 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:3 edit:0];

          [v8 setProperty:v12 forKey:@"ControllerElement"];
          [v21 addObject:v8];
          v10 = v10 + 1;
          v11 = v8;
        }

        while (v7 != v10);
        v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v7);
    }

    v13 = v5;

    v14 = [PSSpecifier groupSpecifierWithName:&stru_10B508];
    [v21 addObject:v14];
    v15 = sub_9E38(@"TAKE_SCREENSHOT_TITLE");
    v16 = [PSSpecifier preferenceSpecifierNamed:v15 target:self set:"setCustomization:forSpecifier:" get:"getCustomizationValue:" detail:0 cell:6 edit:0];

    v17 = PSIDKey;
    [v16 setProperty:@"Screenshot" forKey:PSIDKey];
    [v21 addObject:v16];
    v18 = sub_9E38(@"RECORD_VIDEO_TITLE");
    v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:self set:"setCustomization:forSpecifier:" get:"getCustomizationValue:" detail:0 cell:6 edit:0];

    [v19 setProperty:@"Record Video" forKey:v17];
    [v21 addObject:v19];
  }

  return v21;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v28.receiver = self;
  v28.super_class = GCSettingsAuxiliaryButtonRemapController;
  v7 = [(GCSettingsAuxiliaryButtonRemapController *)&v28 tableView:a3 cellForRowAtIndexPath:v6];
  if (![v6 section])
  {
    v27 = [(GCSettingsAuxiliaryButtonRemapController *)self specifierAtIndexPath:v6];
    v8 = [v27 propertyForKey:@"ControllerElement"];
    v9 = [(GCSettingsAuxiliaryButtonRemapController *)self parentController];
    v10 = [v9 elements];
    v11 = [v10 objectForKeyedSubscript:v8];

    v12 = [v11 unmappedSfSymbolsName];
    sub_A26C(v7, v12);

    v13 = [v7 titleLabel];
    v14 = [v11 unmappedLocalizedName];
    [v13 setText:v14];

    v15 = [(GCSettingsAuxiliaryButtonRemapController *)self specifier];
    v16 = [v15 propertyForKey:@"ControllerElement"];

    v17 = [(GCSettingsAuxiliaryButtonRemapController *)self parentController];
    v18 = [v17 elements];
    v19 = [v18 objectForKeyedSubscript:v16];

    v20 = [(GCSettingsAuxiliaryButtonRemapController *)self parentController];
    v21 = [v20 settings];
    v22 = [v21 mappingForElement:v19];

    v23 = [v11 primaryAlias];
    v24 = [v22 primaryAlias];
    v25 = [v23 isEqualToString:v24];

    [v7 setChecked:v25];
  }

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v20 = a3;
  v6 = a4;
  if (![v6 section])
  {
    v7 = [(GCSettingsAuxiliaryButtonRemapController *)self specifierAtIndexPath:v6];
    v8 = [(GCSettingsAuxiliaryButtonRemapController *)self specifier];
    v9 = [v8 propertyForKey:@"ControllerElement"];

    v10 = [(GCSettingsAuxiliaryButtonRemapController *)self parentController];
    v11 = [v10 elements];
    v12 = [v11 objectForKeyedSubscript:v9];

    v13 = [v7 propertyForKey:@"ControllerElement"];
    v14 = [(GCSettingsAuxiliaryButtonRemapController *)self parentController];
    v15 = [v14 elements];
    v16 = [v15 objectForKeyedSubscript:v13];

    v17 = [(GCSettingsAuxiliaryButtonRemapController *)self parentController];
    v18 = [v17 settings];
    [v18 setMappingForElement:v12 toElement:v16];

    v19 = [(GCSettingsAuxiliaryButtonRemapController *)self parentController];
    [v19 reloadSpecifiers];

    [(GCSettingsAuxiliaryButtonRemapController *)self reloadSpecifiers];
    [v20 deselectRowAtIndexPath:v6 animated:1];
  }
}

@end