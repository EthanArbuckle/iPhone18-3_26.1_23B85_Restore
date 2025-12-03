@interface GCSettingsDpadRemapController
- (id)getCustomizationValue:(id)value;
- (id)newSpecifiers;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)initSettings;
- (void)loadDevice;
- (void)setCustomization:(id)customization forSpecifier:(id)specifier;
- (void)setCustomization:(id)customization toValue:(BOOL)value forDpad:(id)dpad;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation GCSettingsDpadRemapController

- (void)initSettings
{
  parentController = [(GCSettingsDpadRemapController *)self parentController];
  settings = [parentController settings];
  settings = self->_settings;
  self->_settings = settings;
}

- (void)loadDevice
{
  self->_device = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:@"Controller"];

  _objc_release_x1();
}

- (void)setCustomization:(id)customization toValue:(BOOL)value forDpad:(id)dpad
{
  valueCopy = value;
  customizationCopy = customization;
  v8 = [(GCControllerSettings *)self->_settings settingsForElement:dpad];
  v9 = sub_9E38(@"INVERT_HORIZONTALLY_TITLE");
  v10 = [customizationCopy isEqualToString:v9];

  if (v10)
  {
    [v8 setInvertHorizontally:valueCopy];
  }

  else
  {
    v11 = sub_9E38(@"INVERT_VERTICALLY_TITLE");
    v12 = [customizationCopy isEqualToString:v11];

    if (v12)
    {
      [v8 setInvertVertically:valueCopy];
    }

    else
    {
      [v8 setSwapAxes:valueCopy];
    }
  }
}

- (void)setCustomization:(id)customization forSpecifier:(id)specifier
{
  specifierCopy = specifier;
  customizationCopy = customization;
  specifier = [(GCSettingsDpadRemapController *)self specifier];
  v14 = [specifier propertyForKey:@"ControllerElement"];

  parentController = [(GCSettingsDpadRemapController *)self parentController];
  elements = [parentController elements];
  v11 = [elements objectForKeyedSubscript:v14];

  v12 = [specifierCopy propertyForKey:PSIDKey];

  bOOLValue = [customizationCopy BOOLValue];
  [(GCSettingsDpadRemapController *)self setCustomization:v12 toValue:bOOLValue forDpad:v11];
}

- (id)getCustomizationValue:(id)value
{
  valueCopy = value;
  specifier = [(GCSettingsDpadRemapController *)self specifier];
  v6 = [specifier propertyForKey:@"ControllerElement"];

  parentController = [(GCSettingsDpadRemapController *)self parentController];
  elements = [parentController elements];
  v9 = [elements objectForKeyedSubscript:v6];

  v10 = [valueCopy propertyForKey:PSIDKey];

  v11 = [(GCControllerSettings *)self->_settings settingsForElement:v9];
  v12 = sub_9E38(@"INVERT_HORIZONTALLY_TITLE");
  LODWORD(elements) = [v10 isEqualToString:v12];

  if (elements)
  {
    invertHorizontally = [v11 invertHorizontally];
  }

  else
  {
    v14 = sub_9E38(@"INVERT_VERTICALLY_TITLE");
    v15 = [v10 isEqualToString:v14];

    if (v15)
    {
      invertHorizontally = [v11 invertVertically];
    }

    else
    {
      invertHorizontally = [v11 swapAxes];
    }
  }

  v16 = [NSNumber numberWithBool:invertHorizontally];

  return v16;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    newSpecifiers = [(GCSettingsDpadRemapController *)self newSpecifiers];
    v6 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = newSpecifiers;

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
    parentController = [(GCSettingsDpadRemapController *)self parentController];
    dstDpads = [parentController dstDpads];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = dstDpads;
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v26.receiver = self;
  v26.super_class = GCSettingsDpadRemapController;
  v7 = [(GCSettingsDpadRemapController *)&v26 tableView:view cellForRowAtIndexPath:pathCopy];
  if (![pathCopy section])
  {
    v25 = [(GCSettingsDpadRemapController *)self specifierAtIndexPath:pathCopy];
    v8 = [v25 propertyForKey:@"ControllerElement"];
    parentController = [(GCSettingsDpadRemapController *)self parentController];
    elements = [parentController elements];
    v11 = [elements objectForKeyedSubscript:v8];

    unmappedSfSymbolsName = [v11 unmappedSfSymbolsName];
    sub_A26C(v7, unmappedSfSymbolsName);

    titleLabel = [v7 titleLabel];
    unmappedLocalizedName = [v11 unmappedLocalizedName];
    [titleLabel setText:unmappedLocalizedName];

    specifier = [(GCSettingsDpadRemapController *)self specifier];
    v16 = [specifier propertyForKey:@"ControllerElement"];

    parentController2 = [(GCSettingsDpadRemapController *)self parentController];
    elements2 = [parentController2 elements];
    v19 = [elements2 objectForKeyedSubscript:v16];

    v20 = [(GCControllerSettings *)self->_settings mappingForElement:v19];
    primaryAlias = [v11 primaryAlias];
    primaryAlias2 = [v20 primaryAlias];
    v23 = [primaryAlias isEqualToString:primaryAlias2];

    [v7 setChecked:v23];
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (![pathCopy section])
  {
    v7 = [(GCSettingsDpadRemapController *)self specifierAtIndexPath:pathCopy];
    specifier = [(GCSettingsDpadRemapController *)self specifier];
    v9 = [specifier propertyForKey:@"ControllerElement"];

    parentController = [(GCSettingsDpadRemapController *)self parentController];
    elements = [parentController elements];
    v12 = [elements objectForKeyedSubscript:v9];

    v13 = [v7 propertyForKey:@"ControllerElement"];
    parentController2 = [(GCSettingsDpadRemapController *)self parentController];
    elements2 = [parentController2 elements];
    v16 = [elements2 objectForKeyedSubscript:v13];

    [(GCControllerSettings *)self->_settings setMappingForElement:v12 toElement:v16];
    parentController3 = [(GCSettingsDpadRemapController *)self parentController];
    [parentController3 reloadSpecifiers];

    [(GCSettingsDpadRemapController *)self reloadSpecifiers];
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  }
}

@end