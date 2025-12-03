@interface GCSettingsScreenshotVideoCustomizationsController
- (id)gestureCustomizationSpecifiers;
- (id)gestureLabel;
- (id)getMappableElementsToSystemGesturesElements;
- (id)modeLabel;
- (id)newSpecifiers;
- (id)settingEnabled:(id)enabled;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)didSelectItemInRemapController:(id)controller item:(id)item;
- (void)initSettings;
- (void)loadDevice;
- (void)onLoadItemInRemapController:(id)controller item:(id)item cell:(id)cell;
- (void)setSettingEnabled:(id)enabled specifier:(id)specifier;
- (void)viewDidLoad;
@end

@implementation GCSettingsScreenshotVideoCustomizationsController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = GCSettingsScreenshotVideoCustomizationsController;
  [(GCSettingsScreenshotVideoCustomizationsController *)&v3 viewDidLoad];
  [*&self->PSListController_opaque[OBJC_IVAR___PSListController__table] registerClass:objc_opt_class() forCellReuseIdentifier:@"RemappableElementCell"];
}

- (void)loadDevice
{
  v3 = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:@"Controller"];
  v4 = v3;
  if (v3 != self->_device)
  {
    v11 = v3;
    objc_storeStrong(&self->_device, v3);
    v5 = objc_alloc_init(NSMutableArray);
    mappableToSystemGesturesButtons = self->_mappableToSystemGesturesButtons;
    self->_mappableToSystemGesturesButtons = v5;

    v7 = objc_alloc_init(NSMutableDictionary);
    elements = self->_elements;
    self->_elements = v7;

    v9 = self->_mappableToSystemGesturesButtons;
    getMappableElementsToSystemGesturesElements = [(GCSettingsScreenshotVideoCustomizationsController *)self getMappableElementsToSystemGesturesElements];
    [(NSMutableArray *)v9 addObjectsFromArray:getMappableElementsToSystemGesturesElements];

    v4 = v11;
  }

  _objc_release_x1(v3, v4);
}

- (void)initSettings
{
  if (!self->_settings)
  {
    v3 = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:@"ApplicationRecord"];
    appRecord = self->_appRecord;
    self->_appRecord = v3;

    v5 = self->_appRecord;
    v6 = [GCControllerSettings alloc];
    v7 = v6;
    if (v5)
    {
      bundleIdentifier = [(LSApplicationRecord *)self->_appRecord bundleIdentifier];
      v9 = [v7 initWithBundleIdentifier:bundleIdentifier forController:self->_device];
      settings = self->_settings;
      self->_settings = v9;
    }

    else
    {
      v11 = [v6 initForController:self->_device];
      bundleIdentifier = self->_settings;
      self->_settings = v11;
    }

    specifier = [(GCSettingsScreenshotVideoCustomizationsController *)self specifier];
    name = [specifier name];
    v13 = sub_9E38(@"SCREENSHOT_TITLE");
    self->_screenshotSettings = [name isEqualToString:v13];
  }
}

- (id)getMappableElementsToSystemGesturesElements
{
  v25[0] = GCInputButtonOptions;
  v25[1] = GCInputButtonMenu;
  v25[2] = GCInputButtonShare;
  v3 = [NSArray arrayWithObjects:v25 count:3];
  v4 = objc_alloc_init(NSMutableArray);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        physicalInputProfile = [(GCController *)self->_device physicalInputProfile];
        buttons = [physicalInputProfile buttons];
        v13 = [buttons objectForKeyedSubscript:v10];

        if (v13)
        {
          elements = self->_elements;
          primaryAlias = [v13 primaryAlias];
          [(NSMutableDictionary *)elements setObject:v13 forKey:primaryAlias];

          primaryAlias2 = [v13 primaryAlias];
          [v4 addObject:primaryAlias2];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_C00C;
  v19[3] = &unk_106600;
  v19[4] = self;
  v17 = [v4 sortedArrayUsingComparator:v19];

  return v17;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    newSpecifiers = [(GCSettingsScreenshotVideoCustomizationsController *)self newSpecifiers];
    v6 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = newSpecifiers;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)setSettingEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  screenshotSettings = self->_screenshotSettings;
  settings = self->_settings;
  bOOLValue = [enabledCopy BOOLValue];
  if (screenshotSettings)
  {
    [(GCControllerSettings *)settings setScreenShotEnabled:bOOLValue];
  }

  else
  {
    [(GCControllerSettings *)settings setVideoRecordingEnabled:bOOLValue];
  }

  if ([enabledCopy BOOLValue])
  {
    gestureCustomizationSpecifiers = [(GCSettingsScreenshotVideoCustomizationsController *)self gestureCustomizationSpecifiers];
    [(GCSettingsScreenshotVideoCustomizationsController *)self insertContiguousSpecifiers:gestureCustomizationSpecifiers afterSpecifier:specifierCopy animated:1];
  }

  else
  {
    gestureCustomizationSpecifiers = [(GCSettingsScreenshotVideoCustomizationsController *)self specifiersForIDs:&off_10C230];
    [(GCSettingsScreenshotVideoCustomizationsController *)self removeContiguousSpecifiers:gestureCustomizationSpecifiers animated:1];
  }
}

- (id)settingEnabled:(id)enabled
{
  screenshotSettings = self->_screenshotSettings;
  settings = self->_settings;
  if (screenshotSettings)
  {
    screenShotEnabled = [(GCControllerSettings *)settings screenShotEnabled];
  }

  else
  {
    screenShotEnabled = [(GCControllerSettings *)settings videoRecordingEnabled];
  }

  v6 = [NSNumber numberWithBool:screenShotEnabled];

  return v6;
}

- (id)gestureLabel
{
  screenshotSettings = self->_screenshotSettings;
  settings = self->_settings;
  if (screenshotSettings)
  {
    screenShotGesture = [(GCControllerSettings *)settings screenShotGesture];
  }

  else
  {
    screenShotGesture = [(GCControllerSettings *)settings videoRecordingGesture];
  }

  return sub_C2C0(screenShotGesture);
}

- (id)modeLabel
{
  if (self->_screenshotSettings)
  {
    sub_9E38(@"VIDEO_RECORDING_MODE");
  }

  else
  {
    sub_AD28([(GCControllerSettings *)self->_settings videoRecordingMode]);
  }
  v2 = ;

  return v2;
}

- (id)newSpecifiers
{
  [(GCSettingsScreenshotVideoCustomizationsController *)self loadDevice];
  [(GCSettingsScreenshotVideoCustomizationsController *)self initSettings];
  v3 = objc_alloc_init(NSMutableArray);
  v4 = +[PSSpecifier emptyGroupSpecifier];
  if (self->_screenshotSettings)
  {
    v5 = @"SCREENSHOT_DETAIL_DESC";
  }

  else
  {
    v5 = @"VIDEO_RECORDING_DETAIL_DESC";
  }

  v6 = sub_9E38(v5);
  [v4 setProperty:v6 forKey:PSFooterTextGroupKey];

  [v3 addObject:v4];
  if (self->_screenshotSettings)
  {
    v7 = @"SCREENSHOT_TITLE";
  }

  else
  {
    v7 = @"VIDEO_RECORDING_TITLE";
  }

  v8 = sub_9E38(v7);
  v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:"setSettingEnabled:specifier:" get:"settingEnabled:" detail:0 cell:6 edit:0];

  [v3 addObject:v9];
  v10 = [(GCSettingsScreenshotVideoCustomizationsController *)self settingEnabled:0];
  bOOLValue = [v10 BOOLValue];

  if (bOOLValue)
  {
    gestureCustomizationSpecifiers = [(GCSettingsScreenshotVideoCustomizationsController *)self gestureCustomizationSpecifiers];
    [v3 addObjectsFromArray:gestureCustomizationSpecifiers];
  }

  return v3;
}

- (id)gestureCustomizationSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v27 = +[PSSpecifier emptyGroupSpecifier];
  [v3 addObject:?];
  v4 = sub_9E38(@"BUTTON");
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  v6 = [NSNumber numberWithInteger:0];
  [v5 setProperty:v6 forKey:@"GCESpecifierType"];

  [v5 setProperty:self->_mappableToSystemGesturesButtons forKey:@"ButtonRemapControllerValues"];
  if (self->_screenshotSettings)
  {
    v7 = @"SCREENSHOT_DETAIL_BUTTON_DESC";
  }

  else
  {
    v7 = @"VIDEO_RECORDING_DETAIL_BUTTON_DESC";
  }

  v8 = sub_9E38(v7);
  [v5 setProperty:v8 forKey:@"ButtonRemapControllerFooter"];

  v9 = PSIDKey;
  [v5 setProperty:@"GESTURE_BUTTON_KEY" forKey:PSIDKey];
  [v3 addObject:v5];
  v10 = sub_9E38(@"GESTURE");
  v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:"gestureLabel" detail:objc_opt_class() cell:2 edit:0];

  v12 = [NSNumber numberWithInteger:1];
  [v11 setProperty:v12 forKey:@"GCESpecifierType"];

  v13 = [NSNumber numberWithInteger:0];
  v29[0] = v13;
  v14 = [NSNumber numberWithInteger:1];
  v29[1] = v14;
  v15 = [NSNumber numberWithInteger:2];
  v29[2] = v15;
  v16 = [NSArray arrayWithObjects:v29 count:3];

  [v11 setProperty:v16 forKey:@"ButtonRemapControllerValues"];
  if (self->_screenshotSettings)
  {
    v17 = @"SCREENSHOT_DETAIL_GESTURE_DESC";
  }

  else
  {
    v17 = @"VIDEO_RECORDING_DETAIL_GESTURE_DESC";
  }

  v18 = sub_9E38(v17);
  [v11 setProperty:v18 forKey:@"ButtonRemapControllerFooter"];

  [v11 setProperty:@"GESTURE_TYPE_KEY" forKey:v9];
  [v3 addObject:v11];
  if (!self->_screenshotSettings)
  {
    v19 = sub_9E38(@"VIDEO_RECORDING_MODE");
    v20 = [PSSpecifier preferenceSpecifierNamed:v19 target:self set:0 get:"modeLabel" detail:objc_opt_class() cell:2 edit:0];

    v21 = [NSNumber numberWithInteger:2];
    [v20 setProperty:v21 forKey:@"GCESpecifierType"];

    v22 = [NSNumber numberWithInteger:0];
    v28[0] = v22;
    v23 = [NSNumber numberWithInteger:1];
    v28[1] = v23;
    v24 = [NSArray arrayWithObjects:v28 count:2];

    [v20 setProperty:v24 forKey:@"ButtonRemapControllerValues"];
    v25 = sub_9E38(@"VIDEO_RECORDING_DETAIL_MODE_DESC");
    [v20 setProperty:v25 forKey:@"ButtonRemapControllerFooter"];

    [v20 setProperty:@"GESTURE_MODE_KEY" forKey:v9];
    [v3 addObject:v20];

    v11 = v20;
  }

  return v3;
}

- (void)onLoadItemInRemapController:(id)controller item:(id)item cell:(id)cell
{
  itemCopy = item;
  cellCopy = cell;
  specifier = [controller specifier];
  v10 = [specifier propertyForKey:@"GCESpecifierType"];

  integerValue = [v10 integerValue];
  if (v10 && !integerValue)
  {
    v12 = itemCopy;
    v13 = [(NSMutableDictionary *)self->_elements objectForKeyedSubscript:v12];
    v14 = v13;
    if (v13)
    {
      unmappedSfSymbolsName = [v13 unmappedSfSymbolsName];
      sub_A26C(cellCopy, unmappedSfSymbolsName);

      titleLabel = [cellCopy titleLabel];
      unmappedLocalizedName = [v14 unmappedLocalizedName];
      [titleLabel setText:unmappedLocalizedName];

      itemCopy = v12;
    }

    else
    {
      titleLabel2 = [cellCopy titleLabel];
      [titleLabel2 setText:v12];

      itemCopy = +[NSString string];
      titleLabel = v12;
    }

    settings = self->_settings;
    if (self->_screenshotSettings)
    {
      [(GCControllerSettings *)settings screenShotKey];
    }

    else
    {
      [(GCControllerSettings *)settings videoRecordingKey];
    }
    v25 = ;
    v26 = v25;
    if (v14)
    {
      primaryAlias = [v14 primaryAlias];
      v28 = [primaryAlias isEqualToString:v26];
    }

    else
    {
      v28 = [v25 length] == 0;
    }

    [cellCopy setChecked:v28];

    goto LABEL_22;
  }

  if (v10 && integerValue == &dword_0 + 1)
  {
    integerValue2 = [itemCopy integerValue];
    v12 = sub_C2C0(integerValue2);
    titleLabel3 = [cellCopy titleLabel];
    [titleLabel3 setText:v12];

    v20 = self->_settings;
    if (self->_screenshotSettings)
    {
      screenShotGesture = [(GCControllerSettings *)v20 screenShotGesture];
    }

    else
    {
      screenShotGesture = [(GCControllerSettings *)v20 videoRecordingGesture];
    }

    goto LABEL_21;
  }

  if (v10 && integerValue == &dword_0 + 2)
  {
    integerValue2 = [itemCopy integerValue];
    v12 = sub_AD28(integerValue2);
    titleLabel4 = [cellCopy titleLabel];
    [titleLabel4 setText:v12];

    screenShotGesture = [(GCControllerSettings *)self->_settings videoRecordingMode];
LABEL_21:
    [cellCopy setChecked:screenShotGesture == integerValue2];
LABEL_22:
  }
}

- (void)didSelectItemInRemapController:(id)controller item:(id)item
{
  itemCopy = item;
  specifier = [controller specifier];
  v7 = [specifier propertyForKey:@"GCESpecifierType"];

  integerValue = [v7 integerValue];
  if (!v7 || integerValue)
  {
    if (v7 && integerValue == &dword_0 + 1)
    {
      integerValue2 = [itemCopy integerValue];
      settings = self->_settings;
      if (self->_screenshotSettings)
      {
        [(GCControllerSettings *)settings setScreenShotGesture:integerValue2];
      }

      else
      {
        [(GCControllerSettings *)settings setVideoRecordingGesture:integerValue2];
      }
    }

    else if (v7 && integerValue == &dword_0 + 2)
    {
      -[GCControllerSettings setVideoRecordingMode:](self->_settings, "setVideoRecordingMode:", [itemCopy integerValue]);
    }
  }

  else
  {
    v9 = [(NSMutableDictionary *)self->_elements objectForKeyedSubscript:itemCopy];
    if (v9)
    {
      v10 = itemCopy;
    }

    else
    {
      v13 = +[NSString string];

      v10 = v13;
    }

    v14 = self->_settings;
    itemCopy = v10;
    if (self->_screenshotSettings)
    {
      [(GCControllerSettings *)v14 setScreenShotKey:?];
    }

    else
    {
      [(GCControllerSettings *)v14 setVideoRecordingKey:?];
    }
  }

  [(GCSettingsScreenshotVideoCustomizationsController *)self reloadSpecifiers];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(GCSettingsScreenshotVideoCustomizationsController *)self specifierAtIndexPath:pathCopy];
  v9 = [v8 propertyForKey:@"GCESpecifierType"];
  integerValue = [v9 integerValue];
  if (!v9 || integerValue)
  {
    v18.receiver = self;
    v18.super_class = GCSettingsScreenshotVideoCustomizationsController;
    v11 = [(GCSettingsScreenshotVideoCustomizationsController *)&v18 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  }

  else
  {
    v11 = [viewCopy dequeueReusableCellWithIdentifier:@"RemappableElementCell" forIndexPath:pathCopy];

    [v11 setAccessoryType:1];
    settings = self->_settings;
    if (self->_screenshotSettings)
    {
      [(GCControllerSettings *)settings screenShotKey];
    }

    else
    {
      [(GCControllerSettings *)settings videoRecordingKey];
    }
    viewCopy = ;
    titleLabel = [v11 titleLabel];
    name = [v8 name];
    [titleLabel setText:name];

    v15 = [(NSMutableDictionary *)self->_elements objectForKeyedSubscript:viewCopy];
    v16 = v15;
    if (v15)
    {
      pathCopy = [v15 unmappedSfSymbolsName];
    }

    else
    {
      pathCopy = 0;
    }

    sub_A394(v11, pathCopy);
  }

  return v11;
}

@end