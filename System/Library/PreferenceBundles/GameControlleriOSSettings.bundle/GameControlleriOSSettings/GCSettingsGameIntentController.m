@interface GCSettingsGameIntentController
- (id)gestureCustomizationSpecifiers;
- (id)gestureLabel;
- (id)getMappableElementsToSystemGesturesElements;
- (id)modeLabel;
- (id)newSpecifiers;
- (id)settingEnabled:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)didSelectItemInRemapController:(id)a3 item:(id)a4;
- (void)initSettings;
- (void)loadDevice;
- (void)onLoadItemInRemapController:(id)a3 item:(id)a4 cell:(id)a5;
- (void)setSettingEnabled:(id)a3 specifier:(id)a4;
- (void)viewDidLoad;
@end

@implementation GCSettingsGameIntentController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = GCSettingsGameIntentController;
  [(GCSettingsGameIntentController *)&v3 viewDidLoad];
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
    v10 = [(GCSettingsGameIntentController *)self getMappableElementsToSystemGesturesElements];
    [(NSMutableArray *)v9 addObjectsFromArray:v10];

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
      v8 = [(LSApplicationRecord *)self->_appRecord bundleIdentifier];
      v9 = [v7 initWithBundleIdentifier:v8 forController:self->_device];
      settings = self->_settings;
      self->_settings = v9;
    }

    else
    {
      v11 = [v6 initForController:self->_device];
      v8 = self->_settings;
      self->_settings = v11;
    }

    v14 = [(GCSettingsGameIntentController *)self specifier];
    v12 = [v14 name];
    v13 = sub_9E38(@"GAME_INTENT_ON_CONNECT_TITLE");
    self->_isOnConnectSettings = [v12 isEqualToString:v13];
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
        v11 = [(GCController *)self->_device physicalInputProfile];
        v12 = [v11 buttons];
        v13 = [v12 objectForKeyedSubscript:v10];

        if (v13)
        {
          elements = self->_elements;
          v15 = [v13 primaryAlias];
          [(NSMutableDictionary *)elements setObject:v13 forKey:v15];

          v16 = [v13 primaryAlias];
          [v4 addObject:v16];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_A9BC;
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
    v5 = [(GCSettingsGameIntentController *)self newSpecifiers];
    v6 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v5;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (void)setSettingEnabled:(id)a3 specifier:(id)a4
{
  v11 = a3;
  v6 = a4;
  isOnConnectSettings = self->_isOnConnectSettings;
  settings = self->_settings;
  v9 = [v11 BOOLValue];
  if (isOnConnectSettings)
  {
    [(GCControllerSettings *)settings setScreenShotEnabled:v9];
  }

  else
  {
    [(GCControllerSettings *)settings setVideoRecordingEnabled:v9];
  }

  if ([v11 BOOLValue])
  {
    v10 = [(GCSettingsGameIntentController *)self gestureCustomizationSpecifiers];
    [(GCSettingsGameIntentController *)self insertContiguousSpecifiers:v10 afterSpecifier:v6 animated:1];
  }

  else
  {
    v10 = [(GCSettingsGameIntentController *)self specifiersForIDs:&off_10C218];
    [(GCSettingsGameIntentController *)self removeContiguousSpecifiers:v10 animated:1];
  }
}

- (id)settingEnabled:(id)a3
{
  isOnConnectSettings = self->_isOnConnectSettings;
  settings = self->_settings;
  if (isOnConnectSettings)
  {
    v5 = [(GCControllerSettings *)settings screenShotEnabled];
  }

  else
  {
    v5 = [(GCControllerSettings *)settings videoRecordingEnabled];
  }

  v6 = [NSNumber numberWithBool:v5];

  return v6;
}

- (id)gestureLabel
{
  isOnConnectSettings = self->_isOnConnectSettings;
  settings = self->_settings;
  if (isOnConnectSettings)
  {
    v4 = [(GCControllerSettings *)settings screenShotGesture];
  }

  else
  {
    v4 = [(GCControllerSettings *)settings videoRecordingGesture];
  }

  return sub_AC70(v4);
}

- (id)modeLabel
{
  if (self->_isOnConnectSettings)
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
  [(GCSettingsGameIntentController *)self loadDevice];
  [(GCSettingsGameIntentController *)self initSettings];
  v3 = objc_alloc_init(NSMutableArray);
  v4 = +[PSSpecifier emptyGroupSpecifier];
  v5 = [(GCSettingsGameIntentController *)self specifier];
  v6 = [v5 propertyForKey:@"GameIntentButton"];

  v7 = sub_9EAC(@"%@", @"GAME_INTENT_HOME_BUTTON_DETAIL_DESCRIPTION");
  v8 = [NSString stringWithFormat:v7, v6];
  if (self->_isOnConnectSettings)
  {
    v9 = sub_9E38(@"GAME_INTENT_ON_CONNECT_DETAIL_DESCRIPTION");
    [v4 setProperty:v9 forKey:PSFooterTextGroupKey];
  }

  else
  {
    [v4 setProperty:v8 forKey:PSFooterTextGroupKey];
  }

  [v3 addObject:v4];
  v10 = [(GCSettingsGameIntentController *)self specifier];
  v11 = [v10 name];

  v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:"setSettingEnabled:specifier:" get:"settingEnabled:" detail:0 cell:6 edit:0];

  [v3 addObject:v12];
  v13 = [(GCSettingsGameIntentController *)self settingEnabled:0];
  v14 = [v13 BOOLValue];

  if (v14)
  {
    v15 = [(GCSettingsGameIntentController *)self gestureCustomizationSpecifiers];
    [v3 addObjectsFromArray:v15];
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
  [v5 setProperty:v6 forKey:@"GCLOLSpecifierType"];

  [v5 setProperty:self->_mappableToSystemGesturesButtons forKey:@"ButtonRemapControllerValues"];
  if (self->_isOnConnectSettings)
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
  [v11 setProperty:v12 forKey:@"GCLOLSpecifierType"];

  v13 = [NSNumber numberWithInteger:0];
  v29[0] = v13;
  v14 = [NSNumber numberWithInteger:1];
  v29[1] = v14;
  v15 = [NSNumber numberWithInteger:2];
  v29[2] = v15;
  v16 = [NSArray arrayWithObjects:v29 count:3];

  [v11 setProperty:v16 forKey:@"ButtonRemapControllerValues"];
  if (self->_isOnConnectSettings)
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
  if (!self->_isOnConnectSettings)
  {
    v19 = sub_9E38(@"VIDEO_RECORDING_MODE");
    v20 = [PSSpecifier preferenceSpecifierNamed:v19 target:self set:0 get:"modeLabel" detail:objc_opt_class() cell:2 edit:0];

    v21 = [NSNumber numberWithInteger:2];
    [v20 setProperty:v21 forKey:@"GCLOLSpecifierType"];

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

- (void)onLoadItemInRemapController:(id)a3 item:(id)a4 cell:(id)a5
{
  v29 = a4;
  v8 = a5;
  v9 = [a3 specifier];
  v10 = [v9 propertyForKey:@"GCLOLSpecifierType"];

  v11 = [v10 integerValue];
  if (v10 && !v11)
  {
    v12 = v29;
    v13 = [(NSMutableDictionary *)self->_elements objectForKeyedSubscript:v12];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 unmappedSfSymbolsName];
      sub_A26C(v8, v15);

      v16 = [v8 titleLabel];
      v17 = [v14 unmappedLocalizedName];
      [v16 setText:v17];

      v29 = v12;
    }

    else
    {
      v23 = [v8 titleLabel];
      [v23 setText:v12];

      v29 = +[NSString string];
      v16 = v12;
    }

    settings = self->_settings;
    if (self->_isOnConnectSettings)
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
      v27 = [v14 primaryAlias];
      v28 = [v27 isEqualToString:v26];
    }

    else
    {
      v28 = [v25 length] == 0;
    }

    [v8 setChecked:v28];

    goto LABEL_22;
  }

  if (v10 && v11 == &dword_0 + 1)
  {
    v18 = [v29 integerValue];
    v12 = sub_AC70(v18);
    v19 = [v8 titleLabel];
    [v19 setText:v12];

    v20 = self->_settings;
    if (self->_isOnConnectSettings)
    {
      v21 = [(GCControllerSettings *)v20 screenShotGesture];
    }

    else
    {
      v21 = [(GCControllerSettings *)v20 videoRecordingGesture];
    }

    goto LABEL_21;
  }

  if (v10 && v11 == &dword_0 + 2)
  {
    v18 = [v29 integerValue];
    v12 = sub_AD28(v18);
    v22 = [v8 titleLabel];
    [v22 setText:v12];

    v21 = [(GCControllerSettings *)self->_settings videoRecordingMode];
LABEL_21:
    [v8 setChecked:v21 == v18];
LABEL_22:
  }
}

- (void)didSelectItemInRemapController:(id)a3 item:(id)a4
{
  v15 = a4;
  v6 = [a3 specifier];
  v7 = [v6 propertyForKey:@"GCLOLSpecifierType"];

  v8 = [v7 integerValue];
  if (!v7 || v8)
  {
    if (v7 && v8 == &dword_0 + 1)
    {
      v11 = [v15 integerValue];
      settings = self->_settings;
      if (self->_isOnConnectSettings)
      {
        [(GCControllerSettings *)settings setScreenShotGesture:v11];
      }

      else
      {
        [(GCControllerSettings *)settings setVideoRecordingGesture:v11];
      }
    }

    else if (v7 && v8 == &dword_0 + 2)
    {
      -[GCControllerSettings setVideoRecordingMode:](self->_settings, "setVideoRecordingMode:", [v15 integerValue]);
    }
  }

  else
  {
    v9 = [(NSMutableDictionary *)self->_elements objectForKeyedSubscript:v15];
    if (v9)
    {
      v10 = v15;
    }

    else
    {
      v13 = +[NSString string];

      v10 = v13;
    }

    v14 = self->_settings;
    v15 = v10;
    if (self->_isOnConnectSettings)
    {
      [(GCControllerSettings *)v14 setScreenShotKey:?];
    }

    else
    {
      [(GCControllerSettings *)v14 setVideoRecordingKey:?];
    }
  }

  [(GCSettingsGameIntentController *)self reloadSpecifiers];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GCSettingsGameIntentController *)self specifierAtIndexPath:v6];
  v9 = [v8 propertyForKey:@"GCLOLSpecifierType"];
  v10 = [v9 integerValue];
  if (!v9 || v10)
  {
    v18.receiver = self;
    v18.super_class = GCSettingsGameIntentController;
    v11 = [(GCSettingsGameIntentController *)&v18 tableView:v7 cellForRowAtIndexPath:v6];
  }

  else
  {
    v11 = [v7 dequeueReusableCellWithIdentifier:@"RemappableElementCell" forIndexPath:v6];

    [v11 setAccessoryType:1];
    settings = self->_settings;
    if (self->_isOnConnectSettings)
    {
      [(GCControllerSettings *)settings screenShotKey];
    }

    else
    {
      [(GCControllerSettings *)settings videoRecordingKey];
    }
    v7 = ;
    v13 = [v11 titleLabel];
    v14 = [v8 name];
    [v13 setText:v14];

    v15 = [(NSMutableDictionary *)self->_elements objectForKeyedSubscript:v7];
    v16 = v15;
    if (v15)
    {
      v6 = [v15 unmappedSfSymbolsName];
    }

    else
    {
      v6 = 0;
    }

    sub_A394(v11, v6);
  }

  return v11;
}

@end