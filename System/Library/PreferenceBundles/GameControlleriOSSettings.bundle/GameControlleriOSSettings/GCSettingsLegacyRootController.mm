@interface GCSettingsLegacyRootController
- (GCSettingsLegacyRootController)init;
- (id)customizableControllers;
- (id)deviceListSpecifiers;
- (id)deviceSpecifiers;
- (id)getHapticsValue;
- (id)screenshotSettingStatus:(id)status;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)videoRecordingSettingStatus:(id)status;
- (void)dealloc;
- (void)didDisconnectToGameController:(id)controller;
- (void)findController;
- (void)initSettings;
- (void)loadDevices;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setHapticsValue:(id)value;
- (void)viewDidLoad;
@end

@implementation GCSettingsLegacyRootController

- (void)didDisconnectToGameController:(id)controller
{
  object = [controller object];
  v15 = object;
  if (self->_isDeviceSpecificController && ((device = self->_device) != 0 ? (v6 = device == object) : (v6 = 0), v6))
  {
    navigationController = [(GCSettingsLegacyRootController *)self navigationController];
    viewControllers = [navigationController viewControllers];
    v9 = [viewControllers indexOfObject:self];

    if (v9 && v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      navigationController2 = [(GCSettingsLegacyRootController *)self navigationController];
      viewControllers2 = [navigationController2 viewControllers];
      v12 = [viewControllers2 objectAtIndex:v9 - 1];

      navigationController3 = [(GCSettingsLegacyRootController *)self navigationController];
      v14 = [navigationController3 popToViewController:v12 animated:1];
    }
  }

  else
  {
    [(GCSettingsLegacyRootController *)self reloadSpecifiers];
  }
}

- (GCSettingsLegacyRootController)init
{
  v7.receiver = self;
  v7.super_class = GCSettingsLegacyRootController;
  v2 = [(GCSettingsLegacyRootController *)&v7 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"didConnectToGameController:" name:GCControllerDidConnectNotification object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"didDisconnectToGameController:" name:GCControllerDidDisconnectNotification object:0];

    v5 = NSSelectorFromString(@"__openXPC_and_CBApplicationDidBecomeActive__");
    if (objc_opt_respondsToSelector())
    {
      [GCController performSelector:v5];
    }
  }

  return v2;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = GCSettingsLegacyRootController;
  [(GCSettingsLegacyRootController *)&v4 viewDidLoad];
  v3 = +[GCAnalytics instance];
  [v3 sendSettingsEnteredEvent];

  [*&self->PSListController_opaque[OBJC_IVAR___PSListController__table] registerClass:objc_opt_class() forCellReuseIdentifier:@"RemappableElementCell"];
}

- (void)loadDevices
{
  v3 = OBJC_IVAR___PSViewController__specifier;
  v4 = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:@"DeviceSpecificController"];
  self->_isDeviceSpecificController = [v4 BOOLValue];

  customizableControllers = [(GCSettingsLegacyRootController *)self customizableControllers];
  devices = self->_devices;
  self->_devices = customizableControllers;

  if (![(NSArray *)self->_devices count])
  {
LABEL_4:
    navigationController = [(GCSettingsLegacyRootController *)self navigationController];
    firstObject = [(GCController *)navigationController popToRootViewControllerAnimated:1];
    v10 = navigationController;
    goto LABEL_8;
  }

  [(GCController *)self->_device removeHapticEngines];
  if (self->_isDeviceSpecificController)
  {
    v7 = [*&self->PSListController_opaque[v3] propertyForKey:@"Controller"];
    device = self->_device;
    self->_device = v7;

    if (self->_device)
    {
      return;
    }

    goto LABEL_4;
  }

  firstObject = [(NSArray *)self->_devices count];
  if (firstObject == (&dword_0 + 1))
  {
    firstObject = [(NSArray *)self->_devices firstObject];
    v10 = self->_device;
    self->_device = firstObject;
  }

  else
  {
    v10 = self->_device;
    self->_device = 0;
  }

LABEL_8:

  _objc_release_x1(firstObject, v10);
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    self->_homeButtonGameIntentItemIndex = -1;
    [(GCSettingsLegacyRootController *)self loadDevices];
    if (self->_device)
    {
      [(GCSettingsLegacyRootController *)self deviceSpecifiers];
    }

    else
    {
      [(GCSettingsLegacyRootController *)self deviceListSpecifiers];
    }
    v5 = ;
    v6 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v5;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)customizableControllers
{
  v2 = +[GCController controllers];
  v3 = [NSPredicate predicateWithBlock:&stru_106688];
  v4 = [v2 filteredArrayUsingPredicate:v3];

  return v4;
}

- (id)deviceListSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = self->_devices;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        vendorName = [v8 vendorName];
        v10 = [PSSpecifier preferenceSpecifierNamed:vendorName target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

        [v10 setProperty:&__kCFBooleanTrue forKey:@"DeviceSpecificController"];
        [v10 setProperty:v8 forKey:@"Controller"];
        [v3 addObject:v10];
      }

      v5 = [(NSArray *)obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  return v3;
}

- (void)setHapticsValue:(id)value
{
  bOOLValue = [value BOOLValue];
  settings = [(GCSettingsLegacyRootController *)self settings];
  [settings setHapticsEnabled:bOOLValue];
}

- (id)getHapticsValue
{
  settings = [(GCSettingsLegacyRootController *)self settings];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [settings hapticsEnabled]);

  return v3;
}

- (void)findController
{
  device = self->_device;
  if (device)
  {
    haptics = [(GCController *)device haptics];

    if (haptics)
    {
      v5 = +[GCAnalytics instance];
      productCategory = [(GCController *)self->_device productCategory];
      [v5 sendSettingsIdentifyControllerEventForProductCategory:productCategory];

      haptics2 = [(GCController *)self->_device haptics];
      v8 = [haptics2 createEngineWithLocality:GCHapticsLocalityDefault];
      engine = self->_engine;
      self->_engine = v8;

      v10 = [CHHapticEventParameter alloc];
      LODWORD(v11) = 1.0;
      v12 = [v10 initWithParameterID:CHHapticEventParameterIDHapticIntensity value:v11];
      v13 = [CHHapticEventParameter alloc];
      LODWORD(v14) = 1.0;
      v15 = [v13 initWithParameterID:CHHapticEventParameterIDHapticSharpness value:v14];
      v16 = [CHHapticEvent alloc];
      v17 = CHHapticEventTypeHapticTransient;
      v39[0] = v12;
      v39[1] = v15;
      v18 = [NSArray arrayWithObjects:v39 count:2];
      v19 = [v16 initWithEventType:v17 parameters:v18 relativeTime:0.0];
      v40[0] = v19;
      v20 = [CHHapticEvent alloc];
      v21 = CHHapticEventTypeHapticTransient;
      v38[0] = v12;
      v38[1] = v15;
      v22 = [NSArray arrayWithObjects:v38 count:2];
      v23 = [v20 initWithEventType:v21 parameters:v22 relativeTime:0.25];
      v40[1] = v23;
      v24 = [NSArray arrayWithObjects:v40 count:2];

      v37 = 0;
      v25 = [[CHHapticPattern alloc] initWithEvents:v24 parameters:&__NSArray0__struct error:&v37];
      v26 = v37;
      if (!v26)
      {
        [(GCSettingsLegacyRootController *)self setFindingController:1];
        v27 = self->_engine;
        v36 = 0;
        [(CHHapticEngine *)v27 startAndReturnError:&v36];
        v28 = v36;
        if (!v28)
        {
          v29 = self->_engine;
          v35 = 0;
          v30 = [(CHHapticEngine *)v29 createPlayerWithPattern:v25 error:&v35];
          v31 = v35;
          if (!v31)
          {
            [v30 startAtTime:0 error:0.0];
            [v25 duration];
            v33 = dispatch_time(0, ((v32 + 0.100000001) * 1000000000.0));
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_8DF0;
            block[3] = &unk_1066B0;
            block[4] = self;
            dispatch_after(v33, &_dispatch_main_q, block);
          }
        }
      }
    }
  }
}

- (void)dealloc
{
  [(GCController *)self->_device removeHapticEngines];
  [(GCControllerSettings *)self->_settings removeObserver:self forKeyPath:@"screenShotEnabled"];
  [(GCControllerSettings *)self->_settings removeObserver:self forKeyPath:@"videoRecordingEnabled"];
  +[GCSettingsAppIcon clearCache];
  v3.receiver = self;
  v3.super_class = GCSettingsLegacyRootController;
  [(GCSettingsLegacyRootController *)&v3 dealloc];
}

- (void)initSettings
{
  v3 = [[GCControllerSettings alloc] initForController:self->_device];
  settings = self->_settings;
  self->_settings = v3;

  [(GCControllerSettings *)self->_settings addObserver:self forKeyPath:@"screenShotEnabled" options:1 context:off_115D28];
  v5 = self->_settings;
  v6 = off_115D28;

  [(GCControllerSettings *)v5 addObserver:self forKeyPath:@"videoRecordingEnabled" options:1 context:v6];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  v11 = pathCopy;
  if (off_115D28 == context)
  {
    if ([pathCopy isEqualToString:@"screenShotEnabled"])
    {
      v12 = @"ScreenshotCustomization";
    }

    else
    {
      if (![v11 isEqualToString:@"videoRecordingEnabled"])
      {
        goto LABEL_8;
      }

      v12 = @"VideoRecordingCustomization";
    }

    v13 = [(GCSettingsLegacyRootController *)self specifierForID:v12];
    [(GCSettingsLegacyRootController *)self reloadSpecifier:v13];

    goto LABEL_8;
  }

  v14.receiver = self;
  v14.super_class = GCSettingsLegacyRootController;
  [(GCSettingsLegacyRootController *)&v14 observeValueForKeyPath:pathCopy ofObject:object change:change context:context];
LABEL_8:
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

- (id)deviceSpecifiers
{
  [(GCSettingsLegacyRootController *)self initSettings];
  v3 = objc_alloc_init(NSMutableArray);
  if (self->_device)
  {
    v4 = sub_9E38(@"NAME_TITLE");
    v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self->_device set:0 get:"vendorName" detail:0 cell:4 edit:0];

    [v3 addObject:v5];
    device = [(GCSettingsLegacyRootController *)self device];
    haptics = [device haptics];

    if (haptics)
    {
      v8 = sub_9E38(@"HAPTICS_TITLE");
      v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:"setHapticsValue:" get:"getHapticsValue" detail:0 cell:6 edit:0];

      [v3 addObject:v9];
      v5 = v9;
    }

    v10 = sub_9E38(@"CUSTOMIZATIONS_TITLE");
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

    [v11 setProperty:self->_device forKey:@"Controller"];
    [v11 setProperty:0 forKey:@"bundleIdentifier"];
    [v3 addObject:v11];
    device2 = [(GCSettingsLegacyRootController *)self device];
    haptics2 = [device2 haptics];

    if (haptics2)
    {
      v14 = [PSSpecifier groupSpecifierWithName:&stru_10B508];

      v15 = sub_9E38(@"FIND_CONTROLLER_DESC_IOS");
      [v14 setProperty:v15 forKey:PSFooterTextGroupKey];

      [v3 addObject:v14];
      v16 = sub_9E38(@"FIND_CONTROLLER_TITLE");
      v11 = [PSSpecifier preferenceSpecifierNamed:v16 target:self set:"findController" get:0 detail:0 cell:13 edit:0];

      [v11 setButtonAction:"findController"];
      [v3 addObject:v11];
    }
  }

  return v3;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  if ([pathCopy item] == self->_homeButtonGameIntentItemIndex)
  {
    v8 = [viewCopy dequeueReusableCellWithIdentifier:@"RemappableElementCell" forIndexPath:pathCopy];

    [v8 setAccessoryType:1];
    device = [(GCSettingsLegacyRootController *)self device];
    physicalInputProfile = [device physicalInputProfile];
    viewCopy = [physicalInputProfile objectForKeyedSubscript:GCInputButtonHome];

    unmappedSfSymbolsName = [viewCopy unmappedSfSymbolsName];
    sub_A26C(v8, unmappedSfSymbolsName);

    titleLabel = [v8 titleLabel];
    unmappedLocalizedName = [viewCopy unmappedLocalizedName];
    [titleLabel setText:unmappedLocalizedName];

    v14 = [(GCControllerSettings *)self->_settings mappingForElement:viewCopy];
    if ([viewCopy isEqual:v14])
    {
      unmappedSfSymbolsName2 = 0;
    }

    else
    {
      unmappedSfSymbolsName2 = [v14 unmappedSfSymbolsName];
    }

    sub_A394(v8, unmappedSfSymbolsName2);
  }

  else
  {
    v17.receiver = self;
    v17.super_class = GCSettingsLegacyRootController;
    v8 = [(GCSettingsLegacyRootController *)&v17 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  }

  return v8;
}

@end