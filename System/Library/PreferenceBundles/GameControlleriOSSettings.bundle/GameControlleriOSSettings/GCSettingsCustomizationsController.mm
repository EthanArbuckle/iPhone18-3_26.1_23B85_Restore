@interface GCSettingsCustomizationsController
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (id)buttonsSectionsSpecifiers;
- (id)getEnableCustomizationsValue;
- (id)getHapticsValue;
- (id)getMappableElementsToSystemGesturesElements:(id)a3;
- (id)getRemappableElements:(id)a3;
- (id)newSpecifiers;
- (id)screenshotSettingStatus:(id)a3;
- (id)shareGestureDetailLabel:(id)a3;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)videoRecordingSettingStatus:(id)a3;
- (void)dealloc;
- (void)deleteAppSettings;
- (void)didSelectItemInRemapController:(id)a3 item:(id)a4;
- (void)filterSupportedApps;
- (void)initSettings;
- (void)launchAppsController;
- (void)loadCustomizableApps;
- (void)loadDevice;
- (void)loadRemappableButtons;
- (void)navigateBackToPreviousViewController;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)onLoadItemInRemapController:(id)a3 item:(id)a4 cell:(id)a5;
- (void)resetRemapping;
- (void)restoreToDefaults;
- (void)setEnableCustomizationsValue:(id)a3;
- (void)setHapticsValue:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation GCSettingsCustomizationsController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = GCSettingsCustomizationsController;
  [(GCSettingsCustomizationsController *)&v3 viewDidLoad];
  [*&self->PSListController_opaque[OBJC_IVAR___PSListController__table] registerClass:objc_opt_class() forCellReuseIdentifier:@"RemappableElementCell"];
}

- (void)filterSupportedApps
{
  v2 = [LSApplicationRecord enumeratorWithOptions:0];
  v3 = [NSPredicate predicateWithFormat:@"SELF.supportsControllerUserInteraction == true" argumentArray:&__NSArray0__struct];
  [v2 setPredicate:v3];

  v20 = +[NSMutableArray array];
  v19 = +[NSMutableArray array];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v2;
  v25 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v25)
  {
    v23 = *v31;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v30 + 1) + 8 * i);
        v6 = [v5 bundleIdentifier];

        if (v6)
        {
          v24 = v5;
          v7 = [v5 supportedGameControllers];
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v8 = v7;
          v9 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v27;
            while (2)
            {
              for (j = 0; j != v10; j = j + 1)
              {
                if (*v27 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = [*(*(&v26 + 1) + 8 * j) objectForKey:@"ProfileName" ofClass:objc_opt_class()];
                v14 = [v13 isEqualToString:@"ExtendedGamepad"];

                if (v14)
                {

                  v15 = [(GCController *)self->_device identifier];
                  v16 = [v24 bundleIdentifier];
                  v17 = [GCControllerSettings settingsCustomizedForController:v15 forBundleIdentifier:v16];

                  if (v17)
                  {
                    v18 = v20;
                  }

                  else
                  {
                    v18 = v19;
                  }

                  [v18 addObject:v24];
                  goto LABEL_20;
                }
              }

              v10 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
              if (v10)
              {
                continue;
              }

              break;
            }
          }

LABEL_20:
        }
      }

      v25 = [obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v25);
  }

  [v20 sortUsingComparator:&stru_1065B0];
  [v19 sortUsingComparator:&stru_1065B0];
  [(GCSettingsCustomizationsController *)self setAppsWithSettings:v20];
  [(GCSettingsCustomizationsController *)self setAppsWithoutSettings:v19];
}

- (void)dealloc
{
  v3 = [(GCController *)self->_device identifier];
  [GCControllerSettings unregisterSettingsCustomizedHandlerForController:v3 forKey:self->_settingsCustomizedIdentifier];

  [(GCControllerSettings *)self->_settings removeObserver:self forKeyPath:@"screenShotEnabled"];
  [(GCControllerSettings *)self->_settings removeObserver:self forKeyPath:@"videoRecordingEnabled"];
  [(GCControllerSettings *)self->_settings removeObserver:self forKeyPath:@"replayKitGestureSettings"];
  v4.receiver = self;
  v4.super_class = GCSettingsCustomizationsController;
  [(GCSettingsCustomizationsController *)&v4 dealloc];
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

    [(GCControllerSettings *)self->_settings addObserver:self forKeyPath:@"screenShotEnabled" options:1 context:off_115B40];
    [(GCControllerSettings *)self->_settings addObserver:self forKeyPath:@"videoRecordingEnabled" options:1 context:off_115B40];
    v12 = self->_settings;
    v13 = off_115B40;

    [(GCControllerSettings *)v12 addObserver:self forKeyPath:@"replayKitGestureSettings" options:1 context:v13];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = v10;
  if (off_115B40 == a6)
  {
    if ([v10 isEqualToString:@"screenShotEnabled"])
    {
      v12 = @"ScreenshotCustomization";
    }

    else if ([v11 isEqualToString:@"videoRecordingEnabled"])
    {
      v12 = @"VideoRecordingCustomization";
    }

    else
    {
      if (![v11 isEqualToString:@"replayKitGestureSettings"])
      {
        goto LABEL_10;
      }

      v13 = [(GCSettingsCustomizationsController *)self specifierForID:@"ReplayKitGestureSettingFirstOption"];
      [(GCSettingsCustomizationsController *)self reloadSpecifier:v13];

      v12 = @"ReplayKitGestureSettingSecondOption";
    }

    v14 = [(GCSettingsCustomizationsController *)self specifierForID:v12];
    [(GCSettingsCustomizationsController *)self reloadSpecifier:v14];

    goto LABEL_10;
  }

  v15.receiver = self;
  v15.super_class = GCSettingsCustomizationsController;
  [(GCSettingsCustomizationsController *)&v15 observeValueForKeyPath:v10 ofObject:a4 change:a5 context:a6];
LABEL_10:
}

- (void)navigateBackToPreviousViewController
{
  v3 = [(GCSettingsCustomizationsController *)self navigationController];
  v4 = [v3 viewControllers];
  v5 = [v4 indexOfObject:self];

  if (v5 && v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(GCSettingsCustomizationsController *)self navigationController];
    v7 = [v6 viewControllers];
    v10 = [v7 objectAtIndex:v5 - 1];

    v8 = [(GCSettingsCustomizationsController *)self navigationController];
    v9 = [v8 popToViewController:v10 animated:1];
  }
}

- (void)loadDevice
{
  v3 = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:@"Controller"];
  if (v3 != self->_device)
  {
    objc_storeStrong(&self->_device, v3);
  }

  _objc_release_x1();
}

- (void)loadCustomizableApps
{
  objc_initWeak(&location, self);
  v3 = +[NSUUID UUID];
  settingsCustomizedIdentifier = self->_settingsCustomizedIdentifier;
  self->_settingsCustomizedIdentifier = v3;

  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_2824;
  v8 = &unk_1065D8;
  objc_copyWeak(&v9, &location);
  [GCControllerSettings registerSettingsCustomizedHandler:&v5 forKey:self->_settingsCustomizedIdentifier];
  [(GCSettingsCustomizationsController *)self filterSupportedApps:v5];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (id)getRemappableElements:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if ([v11 remappable])
        {
          elements = self->_elements;
          v13 = [v11 primaryAlias];
          [(NSMutableDictionary *)elements setObject:v11 forKey:v13];

          v14 = [v11 primaryAlias];
          [v5 addObject:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_2A48;
  v17[3] = &unk_106600;
  v17[4] = self;
  v15 = [v5 sortedArrayUsingComparator:v17];

  return v15;
}

- (id)getMappableElementsToSystemGesturesElements:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        if ([v11 mappableToSystemGestures])
        {
          elements = self->_elements;
          v13 = [v11 primaryAlias];
          [(NSMutableDictionary *)elements setObject:v11 forKey:v13];

          v14 = [v11 primaryAlias];
          [v5 addObject:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_2CCC;
  v17[3] = &unk_106600;
  v17[4] = self;
  v15 = [v5 sortedArrayUsingComparator:v17];

  return v15;
}

- (void)loadRemappableButtons
{
  if (!self->_srcElements && self->_device)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    elements = self->_elements;
    self->_elements = v3;

    v5 = objc_alloc_init(NSMutableArray);
    srcElements = self->_srcElements;
    self->_srcElements = v5;

    v7 = objc_alloc_init(NSMutableArray);
    dstButtons = self->_dstButtons;
    self->_dstButtons = v7;

    v9 = objc_alloc_init(NSMutableArray);
    dstDpads = self->_dstDpads;
    self->_dstDpads = v9;

    v11 = objc_alloc_init(NSMutableArray);
    dstAuxiliaryButtons = self->_dstAuxiliaryButtons;
    self->_dstAuxiliaryButtons = v11;

    v13 = [(GCController *)self->_device extendedGamepad];
    v18 = [v13 allButtons];

    v14 = [(GCSettingsCustomizationsController *)self getRemappableElements:v18];
    [(NSMutableArray *)self->_srcElements addObjectsFromArray:v14];
    [(NSMutableArray *)self->_dstButtons addObjectsFromArray:v14];
    v15 = [(GCController *)self->_device extendedGamepad];
    v16 = [v15 allDpads];

    v17 = [(GCSettingsCustomizationsController *)self getRemappableElements:v16];
    [(NSMutableArray *)self->_srcElements addObjectsFromArray:v17];
    [(NSMutableArray *)self->_dstDpads addObjectsFromArray:v17];
  }
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(GCSettingsCustomizationsController *)self newSpecifiers];
    v6 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v5;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)buttonsSectionsSpecifiers
{
  v16 = objc_alloc_init(NSMutableArray);
  if (self->_device)
  {
    [(GCSettingsCustomizationsController *)self loadRemappableButtons];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    obj = self->_srcElements;
    v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (!v3)
    {
      v5 = 0;
      goto LABEL_19;
    }

    v4 = v3;
    v5 = 0;
    v15 = *v18;
    v6 = PSIDKey;
    while (1)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_elements objectForKeyedSubscript:v8];
        if ([v9 remappable])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = [v9 unmappedLocalizedName];
            v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

            [v11 setProperty:self->_dstButtons forKey:@"ButtonRemapControllerValues"];
LABEL_12:
            v5 = v11;
            goto LABEL_15;
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || [v9 mappableToSystemGestures] && (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v12 = [v9 unmappedLocalizedName];
          v11 = [PSSpecifier preferenceSpecifierNamed:v12 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

          goto LABEL_12;
        }

LABEL_15:
        [v5 setProperty:@"ControllerElement" forKey:v6];
        [v5 setProperty:self->_device forKey:@"Controller"];
        [v5 setProperty:v8 forKey:@"ControllerElement"];
        [v16 addObject:v5];
      }

      v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (!v4)
      {
LABEL_19:

        break;
      }
    }
  }

  return v16;
}

- (void)onLoadItemInRemapController:(id)a3 item:(id)a4 cell:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 specifier];
  v12 = [v11 propertyForKey:@"remapControllerType"];
  v13 = [v12 isEqualToString:@"ReplayKit"];

  if (v13)
  {
    v14 = [v9 integerValue];

    v29 = sub_3544(v14);
    v15 = [v8 titleLabel];
    [v15 setText:v29];

    v16 = [v10 specifier];

    v17 = [v16 propertyForKey:@"GCGestureType"];

    v18 = [(GCControllerSettings *)self->_settings replayKitGestureSettings];
    v19 = [v18 gestureModeForGestureType:{objc_msgSend(v17, "intValue")}];

    [v8 setChecked:v19 == v14];
  }

  else
  {
    v29 = [(NSMutableDictionary *)self->_elements objectForKeyedSubscript:v9];

    v20 = [v29 unmappedSfSymbolsName];
    sub_A26C(v8, v20);

    v21 = [v8 titleLabel];
    v22 = [v29 unmappedLocalizedName];
    [v21 setText:v22];

    v23 = [v10 specifier];

    v17 = [v23 propertyForKey:@"ControllerElement"];

    v24 = [(NSMutableDictionary *)self->_elements objectForKeyedSubscript:v17];
    v25 = [(GCControllerSettings *)self->_settings mappingForElement:v24];
    v26 = [v29 primaryAlias];
    v27 = [v25 primaryAlias];
    v28 = [v26 isEqualToString:v27];

    [v8 setChecked:v28];
    v8 = v24;
  }
}

- (void)didSelectItemInRemapController:(id)a3 item:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = [v17 specifier];
  v8 = [v7 propertyForKey:@"remapControllerType"];
  v9 = [v8 isEqualToString:@"ReplayKit"];

  if (v9)
  {
    v10 = [v6 integerValue];
    v11 = [v17 specifier];
    v12 = [v11 propertyForKey:@"GCGestureType"];

    v13 = [v12 intValue];
    v14 = [(GCControllerSettings *)self->_settings replayKitGestureSettings];
    [v14 setGestureMode:v10 forGestureType:v13];
    [(GCControllerSettings *)self->_settings setReplayKitGestureSettings:v14];
  }

  else
  {
    v15 = [v17 specifier];
    v12 = [v15 propertyForKey:@"ControllerElement"];

    v14 = [(NSMutableDictionary *)self->_elements objectForKeyedSubscript:v12];
    v16 = [(NSMutableDictionary *)self->_elements objectForKeyedSubscript:v6];
    [(GCControllerSettings *)self->_settings setMappingForElement:v14 toElement:v16];
    [(GCSettingsCustomizationsController *)self reloadSpecifiers];
  }
}

- (id)getEnableCustomizationsValue
{
  v2 = [(GCSettingsCustomizationsController *)self settings];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 customizationsEnabled]);

  return v3;
}

- (void)setEnableCustomizationsValue:(id)a3
{
  v4 = [a3 BOOLValue];
  v5 = [(GCSettingsCustomizationsController *)self settings];
  [v5 setCustomizationsEnabled:v4];
}

- (void)setHapticsValue:(id)a3
{
  v4 = [a3 BOOLValue];
  v5 = [(GCSettingsCustomizationsController *)self settings];
  [v5 setHapticsEnabled:v4];
}

- (id)getHapticsValue
{
  v2 = [(GCSettingsCustomizationsController *)self settings];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 hapticsEnabled]);

  return v3;
}

- (void)deleteAppSettings
{
  v3 = [(GCSettingsCustomizationsController *)self settings];
  [v3 eraseAllSettings];

  v4 = [(GCSettingsCustomizationsController *)self parentController];
  [v4 reloadSpecifiers];
  [(GCSettingsCustomizationsController *)self navigateBackToPreviousViewController];
}

- (id)screenshotSettingStatus:(id)a3
{
  if ([(GCControllerSettings *)self->_settings screenShotEnabled])
  {
    v3 = @"ON";
  }

  else
  {
    v3 = @"OFF";
  }

  v4 = sub_9E38(v3);

  return v4;
}

- (id)videoRecordingSettingStatus:(id)a3
{
  if ([(GCControllerSettings *)self->_settings videoRecordingEnabled])
  {
    v3 = @"ON";
  }

  else
  {
    v3 = @"OFF";
  }

  v4 = sub_9E38(v3);

  return v4;
}

- (void)restoreToDefaults
{
  [(GCControllerSettings *)self->_settings restoreElementMappingToDefault];

  [(GCSettingsCustomizationsController *)self reloadSpecifiers];
}

- (id)shareGestureDetailLabel:(id)a3
{
  settings = self->_settings;
  v4 = a3;
  v5 = [(GCControllerSettings *)settings replayKitGestureSettings];
  v6 = [v4 propertyForKey:@"GCGestureType"];

  v7 = sub_3544([v5 gestureModeForGestureType:{objc_msgSend(v6, "intValue")}]);

  return v7;
}

- (id)newSpecifiers
{
  v2 = self;
  self->_buttonsSectionStart = -1;
  self->_appsSectionStart = -1;
  [(GCSettingsCustomizationsController *)self loadDevice];
  [(GCSettingsCustomizationsController *)v2 loadCustomizableApps];
  [(GCSettingsCustomizationsController *)v2 initSettings];
  v3 = objc_alloc_init(NSMutableArray);
  if (!v2->_device)
  {
    return v3;
  }

  if (v2->_appRecord && (-[GCSettingsCustomizationsController device](v2, "device"), v4 = objc_claimAutoreleasedReturnValue(), [v4 haptics], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = sub_9E38(@"HAPTICS_TITLE");
    v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:v2 set:"setHapticsValue:" get:"getHapticsValue" detail:0 cell:6 edit:0];

    [v3 addObject:v7];
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = [PSSpecifier groupSpecifierWithID:@"ButtonsGroup"];
  [v3 addObject:v9];

  v10 = [(GCSettingsCustomizationsController *)v2 buttonsSectionsSpecifiers];
  [v3 addObjectsFromArray:v10];

  v2->_buttonsSectionStart = v8;
  v68 = [PSSpecifier groupSpecifierWithID:@"ResetToDefaultsButtonGroup"];
  [v3 addObject:?];
  v11 = sub_9E38(@"RESTORE_BUTTON_DEFAULTS_TITLE");
  v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:v2 set:0 get:0 detail:0 cell:13 edit:0];

  [v12 setButtonAction:"restoreToDefaults"];
  v69 = v12;
  [v3 addObject:v12];
  v13 = [(GCSettingsCustomizationsController *)v2 device];
  v14 = [v13 physicalInputProfile];
  v15 = [v14 objectForKeyedSubscript:GCInputButtonShare];
  if (v15)
  {

LABEL_9:
    v19 = [(GCSettingsCustomizationsController *)v2 device];
    v20 = [v19 physicalInputProfile];
    v21 = [v20 objectForKeyedSubscript:GCInputButtonShare];

    v22 = sub_9E38(@"SHARE_GESTURES_TITLE");
    v23 = [PSSpecifier groupSpecifierWithName:v22];

    [v3 addObject:v23];
    v66 = sub_9EAC(@"%@", @"SHARE_GESTURES_DESC_ALT");
    v24 = [(GCSettingsCustomizationsController *)v2 device];
    v25 = [v24 physicalInputProfile];
    v26 = v25;
    if (v21)
    {
      v27 = GCInputButtonShare;
    }

    else
    {
      v27 = GCInputButtonOptions;
    }

    if (v21)
    {
      v28 = @"SINGLE_PRESS";
    }

    else
    {
      v28 = @"DOUBLE_PRESS";
    }

    v64 = 2 * (v21 == 0);
    v29 = [v25 objectForKeyedSubscript:v27];
    v30 = [v29 localizedName];
    v65 = [NSString stringWithFormat:v66, v30];

    [v23 setProperty:v65 forKey:PSFooterTextGroupKey];
    v62 = sub_9E38(v28);
    v61 = v8 + 3;
    v63 = sub_9E38(@"LONG_PRESS");
    v31 = [NSNumber numberWithInteger:-1];
    v76[0] = v31;
    v32 = [NSNumber numberWithInteger:0];
    v76[1] = v32;
    v33 = [NSNumber numberWithInteger:1];
    v76[2] = v33;
    v34 = [NSNumber numberWithInteger:2];
    v76[3] = v34;
    v35 = [NSArray arrayWithObjects:v76 count:4];

    v36 = [PSSpecifier preferenceSpecifierNamed:v62 target:v2 set:0 get:"shareGestureDetailLabel:" detail:objc_opt_class() cell:2 edit:0];

    [v36 setProperty:v35 forKey:@"ButtonRemapControllerValues"];
    v37 = PSIDKey;
    [v36 setProperty:@"ReplayKitGestureSettingFirstOption" forKey:PSIDKey];
    v38 = sub_9E38(@"SHARE_GESTURES_DETAIL_FOOTER");
    [v36 setProperty:v38 forKey:@"ButtonRemapControllerFooter"];

    [v36 setProperty:@"ReplayKit" forKey:@"remapControllerType"];
    v39 = [NSNumber numberWithInteger:v64];
    [v36 setProperty:v39 forKey:@"GCGestureType"];

    [v3 addObject:v36];
    v40 = [PSSpecifier preferenceSpecifierNamed:v63 target:v2 set:0 get:"shareGestureDetailLabel:" detail:objc_opt_class() cell:2 edit:0];

    [v40 setProperty:v35 forKey:@"ButtonRemapControllerValues"];
    [v40 setProperty:@"ReplayKitGestureSettingSecondOption" forKey:v37];
    v41 = sub_9E38(@"SHARE_GESTURES_DETAIL_FOOTER");
    [v40 setProperty:v41 forKey:@"ButtonRemapControllerFooter"];

    [v40 setProperty:@"ReplayKit" forKey:@"remapControllerType"];
    v42 = [NSNumber numberWithInteger:1];
    [v40 setProperty:v42 forKey:@"GCGestureType"];

    [v3 addObject:v40];
    goto LABEL_16;
  }

  v16 = [(GCSettingsCustomizationsController *)v2 device];
  v17 = [v16 physicalInputProfile];
  v18 = [v17 objectForKeyedSubscript:GCInputButtonOptions];

  if (v18)
  {
    goto LABEL_9;
  }

  v61 = v8 | 2;
  v40 = v12;
LABEL_16:
  if (v2->_appRecord)
  {
    v43 = [PSSpecifier groupSpecifierWithID:@"DeleteCustomizationGroup"];
    [v3 addObject:v43];

    v44 = sub_9E38(@"DELETE_CUSTOMIZATIONS_TITLE");
    v45 = [PSSpecifier deleteButtonSpecifierWithName:v44 target:v2 action:"deleteAppSettings"];
    [v3 addObject:v45];

    v46 = v68;
  }

  else
  {
    v47 = [(GCSettingsCustomizationsController *)v2 appsWithSettings];
    v48 = [v47 count];

    v49 = sub_9E38(@"APP_CUSTOMIZATION_TITLE");
    v46 = [PSSpecifier groupSpecifierWithName:v49];
    if (v48)
    {

      [v3 addObject:v46];
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      obj = [(GCSettingsCustomizationsController *)v2 appsWithSettings];
      v50 = [obj countByEnumeratingWithState:&v71 objects:v75 count:16];
      if (v50)
      {
        v51 = v50;
        v67 = v46;
        v52 = v2;
        v53 = 0;
        v54 = *v72;
        do
        {
          v55 = 0;
          v56 = v53;
          do
          {
            if (*v72 != v54)
            {
              objc_enumerationMutation(obj);
            }

            v57 = *(*(&v71 + 1) + 8 * v55);
            v58 = [v57 localizedName];
            v53 = [PSSpecifier preferenceSpecifierNamed:v58 target:v52 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

            [v53 setProperty:v52->_device forKey:@"Controller"];
            [v53 setProperty:v57 forKey:@"ApplicationRecord"];
            [v3 addObject:v53];
            v55 = v55 + 1;
            v56 = v53;
          }

          while (v51 != v55);
          v51 = [obj countByEnumeratingWithState:&v71 objects:v75 count:16];
        }

        while (v51);

        v2 = v52;
        v46 = v67;
      }

      v2->_appsSectionStart = v61;
      v46 = [PSSpecifier groupSpecifierWithID:@"AddAppButtonGroup"];
      v49 = v68;
    }

    else
    {
    }

    [v3 addObject:v46];
    v59 = sub_9E38(@"ADD_APP_TITLE");
    v44 = [PSSpecifier preferenceSpecifierNamed:v59 target:v2 set:0 get:0 detail:objc_opt_class() cell:13 edit:0];

    [v44 setButtonAction:"launchAppsController"];
    [v3 addObject:v44];
  }

  return v3;
}

- (void)launchAppsController
{
  v6 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = sub_9E38(@"CHOOSE_APP_TO_CUSTOMIZE_TITLE");
  [v3 setTitle:v4];

  [v3 setParentController:self];
  v5 = [(GCSettingsCustomizationsController *)self appsWithoutSettings];
  [v3 setApps:v5];

  [v6 setModalPresentationStyle:2];
  [v6 pushViewController:v3 animated:0];
  [(GCSettingsCustomizationsController *)self presentViewController:v6 animated:1 completion:0];
  [(GCSettingsCustomizationsController *)self reloadSpecifiers];
}

- (void)resetRemapping
{
  v3 = [(GCSettingsCustomizationsController *)self settings];
  [v3 restoreElementMappingToDefault];

  [(GCSettingsCustomizationsController *)self reloadSpecifiers];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 section] == self->_buttonsSectionStart)
  {
    v8 = [v6 dequeueReusableCellWithIdentifier:@"RemappableElementCell" forIndexPath:v7];
    [v8 setAccessoryType:1];
    v9 = [(GCSettingsCustomizationsController *)self specifierAtIndexPath:v7];
    v10 = [v9 propertyForKey:@"ControllerElement"];
    v11 = [(NSMutableDictionary *)self->_elements objectForKeyedSubscript:v10];
    v12 = [v11 unmappedSfSymbolsName];
    sub_A26C(v8, v12);

    v13 = [v8 titleLabel];
    v14 = [v11 unmappedLocalizedName];
    [v13 setText:v14];

    v15 = [(GCControllerSettings *)self->_settings mappingForElement:v11];
    if ([v11 isEqual:v15])
    {
      v16 = 0;
    }

    else
    {
      v16 = [v15 unmappedSfSymbolsName];
    }

    sub_A394(v8, v16);
  }

  else if ([v7 section] == self->_appsSectionStart)
  {
    v27.receiver = self;
    v27.super_class = GCSettingsCustomizationsController;
    v8 = [(GCSettingsCustomizationsController *)&v27 tableView:v6 cellForRowAtIndexPath:v7];
    v17 = [(GCSettingsCustomizationsController *)self specifierAtIndexPath:v7];
    v18 = [v17 propertyForKey:@"ApplicationRecord"];
    v19 = [v8 titleLabel];
    v20 = [v18 localizedName];
    [v19 setText:v20];

    v21 = [v18 bundleIdentifier];
    v22 = [GCSettingsAppIcon appIconImageForBundleIdentifier:v21];
    v23 = [v22 UIImage];

    [v17 setProperty:v23 forKey:PSIconImageKey];
    v24 = [v8 iconImageView];
    [v24 setImage:v23];
  }

  else
  {
    v26.receiver = self;
    v26.super_class = GCSettingsCustomizationsController;
    v8 = [(GCSettingsCustomizationsController *)&v26 tableView:v6 cellForRowAtIndexPath:v7];
  }

  return v8;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v4.receiver = self;
  v4.super_class = GCSettingsCustomizationsController;
  [(GCSettingsCustomizationsController *)&v4 tableView:a3 didSelectRowAtIndexPath:a4];
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v5 = a4;
  v10 = 0;
  if ([v5 section] == self->_appsSectionStart)
  {
    v6 = [(GCSettingsCustomizationsController *)self specifierAtIndexPath:v5];
    v7 = [v6 identifier];
    v8 = sub_9E38(@"ADD_APP_TITLE");
    v9 = [v7 isEqualToString:v8];

    if (!v9)
    {
      v10 = 1;
    }
  }

  return v10;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  if (a4 == 1)
  {
    v13 = [(GCSettingsCustomizationsController *)self specifierAtIndexPath:a5];
    v7 = [v13 propertyForKey:@"ApplicationRecord"];
    v8 = [GCControllerSettings alloc];
    v9 = [v7 bundleIdentifier];
    v10 = [(GCSettingsCustomizationsController *)self device];
    v11 = [v8 initWithBundleIdentifier:v9 forController:v10];

    [v11 eraseAllSettings];
    v12 = [(GCSettingsCustomizationsController *)self appsWithSettings];
    [v12 removeObject:v7];

    [(GCSettingsCustomizationsController *)self removeSpecifier:v13 animated:1];
    [(GCSettingsCustomizationsController *)self reloadSpecifiers];
  }
}

@end