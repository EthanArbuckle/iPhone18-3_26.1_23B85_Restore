@interface GCSettingsCustomizationsController
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (id)buttonsSectionsSpecifiers;
- (id)getEnableCustomizationsValue;
- (id)getHapticsValue;
- (id)getMappableElementsToSystemGesturesElements:(id)elements;
- (id)getRemappableElements:(id)elements;
- (id)newSpecifiers;
- (id)screenshotSettingStatus:(id)status;
- (id)shareGestureDetailLabel:(id)label;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)videoRecordingSettingStatus:(id)status;
- (void)dealloc;
- (void)deleteAppSettings;
- (void)didSelectItemInRemapController:(id)controller item:(id)item;
- (void)filterSupportedApps;
- (void)initSettings;
- (void)launchAppsController;
- (void)loadCustomizableApps;
- (void)loadDevice;
- (void)loadRemappableButtons;
- (void)navigateBackToPreviousViewController;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)onLoadItemInRemapController:(id)controller item:(id)item cell:(id)cell;
- (void)resetRemapping;
- (void)restoreToDefaults;
- (void)setEnableCustomizationsValue:(id)value;
- (void)setHapticsValue:(id)value;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
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
        bundleIdentifier = [v5 bundleIdentifier];

        if (bundleIdentifier)
        {
          v24 = v5;
          supportedGameControllers = [v5 supportedGameControllers];
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v8 = supportedGameControllers;
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

                  identifier = [(GCController *)self->_device identifier];
                  bundleIdentifier2 = [v24 bundleIdentifier];
                  v17 = [GCControllerSettings settingsCustomizedForController:identifier forBundleIdentifier:bundleIdentifier2];

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
  identifier = [(GCController *)self->_device identifier];
  [GCControllerSettings unregisterSettingsCustomizedHandlerForController:identifier forKey:self->_settingsCustomizedIdentifier];

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

    [(GCControllerSettings *)self->_settings addObserver:self forKeyPath:@"screenShotEnabled" options:1 context:off_115B40];
    [(GCControllerSettings *)self->_settings addObserver:self forKeyPath:@"videoRecordingEnabled" options:1 context:off_115B40];
    v12 = self->_settings;
    v13 = off_115B40;

    [(GCControllerSettings *)v12 addObserver:self forKeyPath:@"replayKitGestureSettings" options:1 context:v13];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  v11 = pathCopy;
  if (off_115B40 == context)
  {
    if ([pathCopy isEqualToString:@"screenShotEnabled"])
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
  [(GCSettingsCustomizationsController *)&v15 observeValueForKeyPath:pathCopy ofObject:object change:change context:context];
LABEL_10:
}

- (void)navigateBackToPreviousViewController
{
  navigationController = [(GCSettingsCustomizationsController *)self navigationController];
  viewControllers = [navigationController viewControllers];
  v5 = [viewControllers indexOfObject:self];

  if (v5 && v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    navigationController2 = [(GCSettingsCustomizationsController *)self navigationController];
    viewControllers2 = [navigationController2 viewControllers];
    v10 = [viewControllers2 objectAtIndex:v5 - 1];

    navigationController3 = [(GCSettingsCustomizationsController *)self navigationController];
    v9 = [navigationController3 popToViewController:v10 animated:1];
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

- (id)getRemappableElements:(id)elements
{
  elementsCopy = elements;
  v5 = objc_alloc_init(NSMutableArray);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = elementsCopy;
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
          primaryAlias = [v11 primaryAlias];
          [(NSMutableDictionary *)elements setObject:v11 forKey:primaryAlias];

          primaryAlias2 = [v11 primaryAlias];
          [v5 addObject:primaryAlias2];
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

- (id)getMappableElementsToSystemGesturesElements:(id)elements
{
  elementsCopy = elements;
  v5 = objc_alloc_init(NSMutableArray);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = elementsCopy;
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
          primaryAlias = [v11 primaryAlias];
          [(NSMutableDictionary *)elements setObject:v11 forKey:primaryAlias];

          primaryAlias2 = [v11 primaryAlias];
          [v5 addObject:primaryAlias2];
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

    extendedGamepad = [(GCController *)self->_device extendedGamepad];
    allButtons = [extendedGamepad allButtons];

    v14 = [(GCSettingsCustomizationsController *)self getRemappableElements:allButtons];
    [(NSMutableArray *)self->_srcElements addObjectsFromArray:v14];
    [(NSMutableArray *)self->_dstButtons addObjectsFromArray:v14];
    extendedGamepad2 = [(GCController *)self->_device extendedGamepad];
    allDpads = [extendedGamepad2 allDpads];

    v17 = [(GCSettingsCustomizationsController *)self getRemappableElements:allDpads];
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
    newSpecifiers = [(GCSettingsCustomizationsController *)self newSpecifiers];
    v6 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = newSpecifiers;

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
            unmappedLocalizedName = [v9 unmappedLocalizedName];
            v11 = [PSSpecifier preferenceSpecifierNamed:unmappedLocalizedName target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

            [v11 setProperty:self->_dstButtons forKey:@"ButtonRemapControllerValues"];
LABEL_12:
            v5 = v11;
            goto LABEL_15;
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || [v9 mappableToSystemGestures] && (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          unmappedLocalizedName2 = [v9 unmappedLocalizedName];
          v11 = [PSSpecifier preferenceSpecifierNamed:unmappedLocalizedName2 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

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

- (void)onLoadItemInRemapController:(id)controller item:(id)item cell:(id)cell
{
  cellCopy = cell;
  itemCopy = item;
  controllerCopy = controller;
  specifier = [controllerCopy specifier];
  v12 = [specifier propertyForKey:@"remapControllerType"];
  v13 = [v12 isEqualToString:@"ReplayKit"];

  if (v13)
  {
    integerValue = [itemCopy integerValue];

    v29 = sub_3544(integerValue);
    titleLabel = [cellCopy titleLabel];
    [titleLabel setText:v29];

    specifier2 = [controllerCopy specifier];

    v17 = [specifier2 propertyForKey:@"GCGestureType"];

    replayKitGestureSettings = [(GCControllerSettings *)self->_settings replayKitGestureSettings];
    v19 = [replayKitGestureSettings gestureModeForGestureType:{objc_msgSend(v17, "intValue")}];

    [cellCopy setChecked:v19 == integerValue];
  }

  else
  {
    v29 = [(NSMutableDictionary *)self->_elements objectForKeyedSubscript:itemCopy];

    unmappedSfSymbolsName = [v29 unmappedSfSymbolsName];
    sub_A26C(cellCopy, unmappedSfSymbolsName);

    titleLabel2 = [cellCopy titleLabel];
    unmappedLocalizedName = [v29 unmappedLocalizedName];
    [titleLabel2 setText:unmappedLocalizedName];

    specifier3 = [controllerCopy specifier];

    v17 = [specifier3 propertyForKey:@"ControllerElement"];

    v24 = [(NSMutableDictionary *)self->_elements objectForKeyedSubscript:v17];
    v25 = [(GCControllerSettings *)self->_settings mappingForElement:v24];
    primaryAlias = [v29 primaryAlias];
    primaryAlias2 = [v25 primaryAlias];
    v28 = [primaryAlias isEqualToString:primaryAlias2];

    [cellCopy setChecked:v28];
    cellCopy = v24;
  }
}

- (void)didSelectItemInRemapController:(id)controller item:(id)item
{
  controllerCopy = controller;
  itemCopy = item;
  specifier = [controllerCopy specifier];
  v8 = [specifier propertyForKey:@"remapControllerType"];
  v9 = [v8 isEqualToString:@"ReplayKit"];

  if (v9)
  {
    integerValue = [itemCopy integerValue];
    specifier2 = [controllerCopy specifier];
    v12 = [specifier2 propertyForKey:@"GCGestureType"];

    intValue = [v12 intValue];
    replayKitGestureSettings = [(GCControllerSettings *)self->_settings replayKitGestureSettings];
    [replayKitGestureSettings setGestureMode:integerValue forGestureType:intValue];
    [(GCControllerSettings *)self->_settings setReplayKitGestureSettings:replayKitGestureSettings];
  }

  else
  {
    specifier3 = [controllerCopy specifier];
    v12 = [specifier3 propertyForKey:@"ControllerElement"];

    replayKitGestureSettings = [(NSMutableDictionary *)self->_elements objectForKeyedSubscript:v12];
    v16 = [(NSMutableDictionary *)self->_elements objectForKeyedSubscript:itemCopy];
    [(GCControllerSettings *)self->_settings setMappingForElement:replayKitGestureSettings toElement:v16];
    [(GCSettingsCustomizationsController *)self reloadSpecifiers];
  }
}

- (id)getEnableCustomizationsValue
{
  settings = [(GCSettingsCustomizationsController *)self settings];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [settings customizationsEnabled]);

  return v3;
}

- (void)setEnableCustomizationsValue:(id)value
{
  bOOLValue = [value BOOLValue];
  settings = [(GCSettingsCustomizationsController *)self settings];
  [settings setCustomizationsEnabled:bOOLValue];
}

- (void)setHapticsValue:(id)value
{
  bOOLValue = [value BOOLValue];
  settings = [(GCSettingsCustomizationsController *)self settings];
  [settings setHapticsEnabled:bOOLValue];
}

- (id)getHapticsValue
{
  settings = [(GCSettingsCustomizationsController *)self settings];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [settings hapticsEnabled]);

  return v3;
}

- (void)deleteAppSettings
{
  settings = [(GCSettingsCustomizationsController *)self settings];
  [settings eraseAllSettings];

  parentController = [(GCSettingsCustomizationsController *)self parentController];
  [parentController reloadSpecifiers];
  [(GCSettingsCustomizationsController *)self navigateBackToPreviousViewController];
}

- (id)screenshotSettingStatus:(id)status
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

- (id)videoRecordingSettingStatus:(id)status
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

- (id)shareGestureDetailLabel:(id)label
{
  settings = self->_settings;
  labelCopy = label;
  replayKitGestureSettings = [(GCControllerSettings *)settings replayKitGestureSettings];
  v6 = [labelCopy propertyForKey:@"GCGestureType"];

  v7 = sub_3544([replayKitGestureSettings gestureModeForGestureType:{objc_msgSend(v6, "intValue")}]);

  return v7;
}

- (id)newSpecifiers
{
  selfCopy = self;
  self->_buttonsSectionStart = -1;
  self->_appsSectionStart = -1;
  [(GCSettingsCustomizationsController *)self loadDevice];
  [(GCSettingsCustomizationsController *)selfCopy loadCustomizableApps];
  [(GCSettingsCustomizationsController *)selfCopy initSettings];
  v3 = objc_alloc_init(NSMutableArray);
  if (!selfCopy->_device)
  {
    return v3;
  }

  if (selfCopy->_appRecord && (-[GCSettingsCustomizationsController device](selfCopy, "device"), v4 = objc_claimAutoreleasedReturnValue(), [v4 haptics], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = sub_9E38(@"HAPTICS_TITLE");
    v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:selfCopy set:"setHapticsValue:" get:"getHapticsValue" detail:0 cell:6 edit:0];

    [v3 addObject:v7];
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = [PSSpecifier groupSpecifierWithID:@"ButtonsGroup"];
  [v3 addObject:v9];

  buttonsSectionsSpecifiers = [(GCSettingsCustomizationsController *)selfCopy buttonsSectionsSpecifiers];
  [v3 addObjectsFromArray:buttonsSectionsSpecifiers];

  selfCopy->_buttonsSectionStart = v8;
  v68 = [PSSpecifier groupSpecifierWithID:@"ResetToDefaultsButtonGroup"];
  [v3 addObject:?];
  v11 = sub_9E38(@"RESTORE_BUTTON_DEFAULTS_TITLE");
  v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:selfCopy set:0 get:0 detail:0 cell:13 edit:0];

  [v12 setButtonAction:"restoreToDefaults"];
  v69 = v12;
  [v3 addObject:v12];
  device = [(GCSettingsCustomizationsController *)selfCopy device];
  physicalInputProfile = [device physicalInputProfile];
  v15 = [physicalInputProfile objectForKeyedSubscript:GCInputButtonShare];
  if (v15)
  {

LABEL_9:
    device2 = [(GCSettingsCustomizationsController *)selfCopy device];
    physicalInputProfile2 = [device2 physicalInputProfile];
    v21 = [physicalInputProfile2 objectForKeyedSubscript:GCInputButtonShare];

    v22 = sub_9E38(@"SHARE_GESTURES_TITLE");
    v23 = [PSSpecifier groupSpecifierWithName:v22];

    [v3 addObject:v23];
    v66 = sub_9EAC(@"%@", @"SHARE_GESTURES_DESC_ALT");
    device3 = [(GCSettingsCustomizationsController *)selfCopy device];
    physicalInputProfile3 = [device3 physicalInputProfile];
    v26 = physicalInputProfile3;
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
    v29 = [physicalInputProfile3 objectForKeyedSubscript:v27];
    localizedName = [v29 localizedName];
    v65 = [NSString stringWithFormat:v66, localizedName];

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

    v36 = [PSSpecifier preferenceSpecifierNamed:v62 target:selfCopy set:0 get:"shareGestureDetailLabel:" detail:objc_opt_class() cell:2 edit:0];

    [v36 setProperty:v35 forKey:@"ButtonRemapControllerValues"];
    v37 = PSIDKey;
    [v36 setProperty:@"ReplayKitGestureSettingFirstOption" forKey:PSIDKey];
    v38 = sub_9E38(@"SHARE_GESTURES_DETAIL_FOOTER");
    [v36 setProperty:v38 forKey:@"ButtonRemapControllerFooter"];

    [v36 setProperty:@"ReplayKit" forKey:@"remapControllerType"];
    v39 = [NSNumber numberWithInteger:v64];
    [v36 setProperty:v39 forKey:@"GCGestureType"];

    [v3 addObject:v36];
    v40 = [PSSpecifier preferenceSpecifierNamed:v63 target:selfCopy set:0 get:"shareGestureDetailLabel:" detail:objc_opt_class() cell:2 edit:0];

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

  device4 = [(GCSettingsCustomizationsController *)selfCopy device];
  physicalInputProfile4 = [device4 physicalInputProfile];
  v18 = [physicalInputProfile4 objectForKeyedSubscript:GCInputButtonOptions];

  if (v18)
  {
    goto LABEL_9;
  }

  v61 = v8 | 2;
  v40 = v12;
LABEL_16:
  if (selfCopy->_appRecord)
  {
    v43 = [PSSpecifier groupSpecifierWithID:@"DeleteCustomizationGroup"];
    [v3 addObject:v43];

    v44 = sub_9E38(@"DELETE_CUSTOMIZATIONS_TITLE");
    v45 = [PSSpecifier deleteButtonSpecifierWithName:v44 target:selfCopy action:"deleteAppSettings"];
    [v3 addObject:v45];

    v46 = v68;
  }

  else
  {
    appsWithSettings = [(GCSettingsCustomizationsController *)selfCopy appsWithSettings];
    v48 = [appsWithSettings count];

    v49 = sub_9E38(@"APP_CUSTOMIZATION_TITLE");
    v46 = [PSSpecifier groupSpecifierWithName:v49];
    if (v48)
    {

      [v3 addObject:v46];
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      obj = [(GCSettingsCustomizationsController *)selfCopy appsWithSettings];
      v50 = [obj countByEnumeratingWithState:&v71 objects:v75 count:16];
      if (v50)
      {
        v51 = v50;
        v67 = v46;
        v52 = selfCopy;
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
            localizedName2 = [v57 localizedName];
            v53 = [PSSpecifier preferenceSpecifierNamed:localizedName2 target:v52 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

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

        selfCopy = v52;
        v46 = v67;
      }

      selfCopy->_appsSectionStart = v61;
      v46 = [PSSpecifier groupSpecifierWithID:@"AddAppButtonGroup"];
      v49 = v68;
    }

    else
    {
    }

    [v3 addObject:v46];
    v59 = sub_9E38(@"ADD_APP_TITLE");
    v44 = [PSSpecifier preferenceSpecifierNamed:v59 target:selfCopy set:0 get:0 detail:objc_opt_class() cell:13 edit:0];

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
  appsWithoutSettings = [(GCSettingsCustomizationsController *)self appsWithoutSettings];
  [v3 setApps:appsWithoutSettings];

  [v6 setModalPresentationStyle:2];
  [v6 pushViewController:v3 animated:0];
  [(GCSettingsCustomizationsController *)self presentViewController:v6 animated:1 completion:0];
  [(GCSettingsCustomizationsController *)self reloadSpecifiers];
}

- (void)resetRemapping
{
  settings = [(GCSettingsCustomizationsController *)self settings];
  [settings restoreElementMappingToDefault];

  [(GCSettingsCustomizationsController *)self reloadSpecifiers];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section] == self->_buttonsSectionStart)
  {
    v8 = [viewCopy dequeueReusableCellWithIdentifier:@"RemappableElementCell" forIndexPath:pathCopy];
    [v8 setAccessoryType:1];
    v9 = [(GCSettingsCustomizationsController *)self specifierAtIndexPath:pathCopy];
    v10 = [v9 propertyForKey:@"ControllerElement"];
    v11 = [(NSMutableDictionary *)self->_elements objectForKeyedSubscript:v10];
    unmappedSfSymbolsName = [v11 unmappedSfSymbolsName];
    sub_A26C(v8, unmappedSfSymbolsName);

    titleLabel = [v8 titleLabel];
    unmappedLocalizedName = [v11 unmappedLocalizedName];
    [titleLabel setText:unmappedLocalizedName];

    v15 = [(GCControllerSettings *)self->_settings mappingForElement:v11];
    if ([v11 isEqual:v15])
    {
      unmappedSfSymbolsName2 = 0;
    }

    else
    {
      unmappedSfSymbolsName2 = [v15 unmappedSfSymbolsName];
    }

    sub_A394(v8, unmappedSfSymbolsName2);
  }

  else if ([pathCopy section] == self->_appsSectionStart)
  {
    v27.receiver = self;
    v27.super_class = GCSettingsCustomizationsController;
    v8 = [(GCSettingsCustomizationsController *)&v27 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
    v17 = [(GCSettingsCustomizationsController *)self specifierAtIndexPath:pathCopy];
    v18 = [v17 propertyForKey:@"ApplicationRecord"];
    titleLabel2 = [v8 titleLabel];
    localizedName = [v18 localizedName];
    [titleLabel2 setText:localizedName];

    bundleIdentifier = [v18 bundleIdentifier];
    v22 = [GCSettingsAppIcon appIconImageForBundleIdentifier:bundleIdentifier];
    uIImage = [v22 UIImage];

    [v17 setProperty:uIImage forKey:PSIconImageKey];
    iconImageView = [v8 iconImageView];
    [iconImageView setImage:uIImage];
  }

  else
  {
    v26.receiver = self;
    v26.super_class = GCSettingsCustomizationsController;
    v8 = [(GCSettingsCustomizationsController *)&v26 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  }

  return v8;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v4.receiver = self;
  v4.super_class = GCSettingsCustomizationsController;
  [(GCSettingsCustomizationsController *)&v4 tableView:view didSelectRowAtIndexPath:path];
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  pathCopy = path;
  v10 = 0;
  if ([pathCopy section] == self->_appsSectionStart)
  {
    v6 = [(GCSettingsCustomizationsController *)self specifierAtIndexPath:pathCopy];
    identifier = [v6 identifier];
    v8 = sub_9E38(@"ADD_APP_TITLE");
    v9 = [identifier isEqualToString:v8];

    if (!v9)
    {
      v10 = 1;
    }
  }

  return v10;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  if (style == 1)
  {
    v13 = [(GCSettingsCustomizationsController *)self specifierAtIndexPath:path];
    v7 = [v13 propertyForKey:@"ApplicationRecord"];
    v8 = [GCControllerSettings alloc];
    bundleIdentifier = [v7 bundleIdentifier];
    device = [(GCSettingsCustomizationsController *)self device];
    v11 = [v8 initWithBundleIdentifier:bundleIdentifier forController:device];

    [v11 eraseAllSettings];
    appsWithSettings = [(GCSettingsCustomizationsController *)self appsWithSettings];
    [appsWithSettings removeObject:v7];

    [(GCSettingsCustomizationsController *)self removeSpecifier:v13 animated:1];
    [(GCSettingsCustomizationsController *)self reloadSpecifiers];
  }
}

@end