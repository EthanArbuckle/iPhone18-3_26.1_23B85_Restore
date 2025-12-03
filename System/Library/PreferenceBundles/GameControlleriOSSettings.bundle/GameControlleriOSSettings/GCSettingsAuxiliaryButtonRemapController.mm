@interface GCSettingsAuxiliaryButtonRemapController
- (id)newSpecifiers;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)loadDevice;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
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
    newSpecifiers = [(GCSettingsAuxiliaryButtonRemapController *)self newSpecifiers];
    v6 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = newSpecifiers;

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
    parentController = [(GCSettingsAuxiliaryButtonRemapController *)self parentController];
    dstAuxiliaryButtons = [parentController dstAuxiliaryButtons];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = dstAuxiliaryButtons;
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v28.receiver = self;
  v28.super_class = GCSettingsAuxiliaryButtonRemapController;
  v7 = [(GCSettingsAuxiliaryButtonRemapController *)&v28 tableView:view cellForRowAtIndexPath:pathCopy];
  if (![pathCopy section])
  {
    v27 = [(GCSettingsAuxiliaryButtonRemapController *)self specifierAtIndexPath:pathCopy];
    v8 = [v27 propertyForKey:@"ControllerElement"];
    parentController = [(GCSettingsAuxiliaryButtonRemapController *)self parentController];
    elements = [parentController elements];
    v11 = [elements objectForKeyedSubscript:v8];

    unmappedSfSymbolsName = [v11 unmappedSfSymbolsName];
    sub_A26C(v7, unmappedSfSymbolsName);

    titleLabel = [v7 titleLabel];
    unmappedLocalizedName = [v11 unmappedLocalizedName];
    [titleLabel setText:unmappedLocalizedName];

    specifier = [(GCSettingsAuxiliaryButtonRemapController *)self specifier];
    v16 = [specifier propertyForKey:@"ControllerElement"];

    parentController2 = [(GCSettingsAuxiliaryButtonRemapController *)self parentController];
    elements2 = [parentController2 elements];
    v19 = [elements2 objectForKeyedSubscript:v16];

    parentController3 = [(GCSettingsAuxiliaryButtonRemapController *)self parentController];
    settings = [parentController3 settings];
    v22 = [settings mappingForElement:v19];

    primaryAlias = [v11 primaryAlias];
    primaryAlias2 = [v22 primaryAlias];
    v25 = [primaryAlias isEqualToString:primaryAlias2];

    [v7 setChecked:v25];
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (![pathCopy section])
  {
    v7 = [(GCSettingsAuxiliaryButtonRemapController *)self specifierAtIndexPath:pathCopy];
    specifier = [(GCSettingsAuxiliaryButtonRemapController *)self specifier];
    v9 = [specifier propertyForKey:@"ControllerElement"];

    parentController = [(GCSettingsAuxiliaryButtonRemapController *)self parentController];
    elements = [parentController elements];
    v12 = [elements objectForKeyedSubscript:v9];

    v13 = [v7 propertyForKey:@"ControllerElement"];
    parentController2 = [(GCSettingsAuxiliaryButtonRemapController *)self parentController];
    elements2 = [parentController2 elements];
    v16 = [elements2 objectForKeyedSubscript:v13];

    parentController3 = [(GCSettingsAuxiliaryButtonRemapController *)self parentController];
    settings = [parentController3 settings];
    [settings setMappingForElement:v12 toElement:v16];

    parentController4 = [(GCSettingsAuxiliaryButtonRemapController *)self parentController];
    [parentController4 reloadSpecifiers];

    [(GCSettingsAuxiliaryButtonRemapController *)self reloadSpecifiers];
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  }
}

@end