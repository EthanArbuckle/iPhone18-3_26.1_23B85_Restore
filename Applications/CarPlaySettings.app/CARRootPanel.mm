@interface CARRootPanel
- (BOOL)_announceNotificationsEnabled;
- (CARRootPanel)initWithPanelController:(id)controller;
- (NSArray)panels;
- (id)panelPassingTest:(id)test;
- (id)specifierSections;
- (void)_limitedUIDidChange:(id)change;
- (void)_updateAIEnabled;
- (void)_updateVehicleWithDarkModeOnlyIfNeeded;
- (void)assetsManagerReady;
- (void)dealloc;
- (void)invalidate;
- (void)resetAllSpecifiers;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CARRootPanel

- (CARRootPanel)initWithPanelController:(id)controller
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = CARRootPanel;
  v5 = [(CARSettingsPanel *)&v11 initWithPanelController:controllerCopy];
  if (v5)
  {
    v6 = sub_10001C784();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10009073C(v5, v6);
    }

    [controllerCopy addNotificationSettingsObserver:v5];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v5, sub_1000029C0, @"com.apple.gms.availability.notification", 0, 0);
    [(CARRootPanel *)v5 _updateAIEnabled];
    v8 = +[_TtC15CarPlaySettings16CARAssetsManager sharedInstance];
    [v8 addObserver:v5];

    v9 = +[_TtC15CarPlaySettings16CARAssetsManager sharedInstance];
    v5->_isDarkModeOnly = [v9 isDarkModeAppearanceOnly];

    [(CARRootPanel *)v5 _updateVehicleWithDarkModeOnlyIfNeeded];
  }

  return v5;
}

- (void)viewDidLoad
{
  v18.receiver = self;
  v18.super_class = CARRootPanel;
  [(CARSettingsTablePanel *)&v18 viewDidLoad];
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 objectForKey:@"CARLastPanelKey"];

  panelController = [(CARSettingsPanel *)self panelController];
  vehicle = [panelController vehicle];
  v7 = [_TtC15CarPlaySettings20CARSettingsUtilities lastPanelID:@"kCARSettingsDisplayPanelID" vehicle:vehicle];
  v8 = [v4 isEqualToString:v7];

  if (v8)
  {
    v9 = sub_10001C784();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[Settings] Display scale was reset, reopen DisplayScale panel", v17, 2u);
    }

    v10 = [(CARRootPanel *)self panelPassingTest:&stru_1000DACE0];
  }

  else
  {
    v10 = 0;
  }

  panelController2 = [(CARSettingsPanel *)self panelController];
  carSession = [panelController2 carSession];
  configuration = [carSession configuration];
  screens = [configuration screens];
  v15 = [screens bs_containsObjectPassingTest:&stru_1000DAD20];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && v15)
  {
    panelController3 = [(CARSettingsPanel *)self panelController];
    [panelController3 pushPanel:v10];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = CARRootPanel;
  [(CARSettingsTablePanel *)&v6 viewWillAppear:appear];
  v3 = sub_10001C784();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Settings] CARRootPanel appeared. Reset kCARSettingsLastPanelKey", v5, 2u);
  }

  v4 = +[NSUserDefaults standardUserDefaults];
  [v4 removeObjectForKey:@"CARLastPanelKey"];
}

- (void)dealloc
{
  v3 = sub_10001C784();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1000907B4(self, v3);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v5.receiver = self;
  v5.super_class = CARRootPanel;
  [(CARRootPanel *)&v5 dealloc];
}

- (id)panelPassingTest:(id)test
{
  testCopy = test;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_panels;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = (i + 1))
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) bs_firstObjectPassingTest:{testCopy, v11}];
        if (v9)
        {
          v6 = v9;

          v5 = v6;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (NSArray)panels
{
  panels = self->_panels;
  if (panels)
  {
    v3 = panels;
    goto LABEL_32;
  }

  v5 = +[NSMutableArray array];
  v6 = +[NSMutableArray array];
  if (!self->_notificationPanel)
  {
    v7 = [CARAnnounceNotificationsPanel alloc];
    panelController = [(CARSettingsPanel *)self panelController];
    v9 = [(CARAnnounceNotificationsPanel *)v7 initWithPanelController:panelController];
    notificationPanel = self->_notificationPanel;
    self->_notificationPanel = v9;
  }

  v11 = [CARDNDPanel alloc];
  panelController2 = [(CARSettingsPanel *)self panelController];
  v13 = [(CARDNDPanel *)v11 initWithPanelController:panelController2];
  v14 = self->_notificationPanel;
  v100[0] = v13;
  v100[1] = v14;
  v15 = [NSArray arrayWithObjects:v100 count:2];
  [v6 addObjectsFromArray:v15];

  panelController3 = [(CARSettingsPanel *)self panelController];
  carSession = [panelController3 carSession];
  configuration = [carSession configuration];
  supportsVehicleData = [configuration supportsVehicleData];

  if (supportsVehicleData)
  {
    v20 = [CARDevicePickerPanel alloc];
    panelController4 = [(CARSettingsPanel *)self panelController];
    v22 = [(CARSettingsPanel *)v20 initWithPanelController:panelController4];

    cellSpecifier = [(CARDevicePickerPanel *)v22 cellSpecifier];
    devicePickerSpecifier = self->_devicePickerSpecifier;
    self->_devicePickerSpecifier = cellSpecifier;

    [v6 addObject:v22];
    v25 = +[NSNotificationCenter defaultCenter];
    [v25 addObserver:self selector:"_limitedUIDidChange:" name:CARSessionLimitUserInterfacesChangedNotification object:0];
  }

  v98 = v6;
  [v5 addObject:{v6, v5}];
  v26 = +[NSMutableArray array];
  v27 = [CARAppearancePanel alloc];
  panelController5 = [(CARSettingsPanel *)self panelController];
  v29 = [(CARAppearancePanel *)v27 initWithPanelController:panelController5];
  appearancePanel = self->_appearancePanel;
  self->_appearancePanel = v29;

  [(CARAppearancePanel *)self->_appearancePanel setDarkModeOnly:[(CARRootPanel *)self isDarkModeOnly]];
  [v26 addObject:self->_appearancePanel];
  v31 = [CARIconCustomizationPanel alloc];
  panelController6 = [(CARSettingsPanel *)self panelController];
  v33 = [(CARIconCustomizationPanel *)v31 initWithPanelController:panelController6];
  [v26 addObject:v33];

  panelController7 = [(CARSettingsPanel *)self panelController];
  vehicle = [panelController7 vehicle];
  clusterAssetIdentifier = [vehicle clusterAssetIdentifier];
  if (clusterAssetIdentifier)
  {
    v37 = clusterAssetIdentifier;
    panelController8 = [(CARSettingsPanel *)self panelController];
    carSession2 = [panelController8 carSession];
    configuration2 = [carSession2 configuration];
    supportsVehicleData2 = [configuration2 supportsVehicleData];

    if (supportsVehicleData2)
    {
      v42 = off_1000D9580;
      goto LABEL_12;
    }
  }

  else
  {
  }

  v42 = &off_1000D9588;
LABEL_12:
  v43 = objc_alloc(*v42);
  panelController9 = [(CARSettingsPanel *)self panelController];
  v45 = [v43 initWithPanelController:panelController9];
  [v26 addObject:v45];

  v46 = [CARDisplayPanel alloc];
  panelController10 = [(CARSettingsPanel *)self panelController];
  v48 = [(CARDisplayPanel *)v46 initWithPanelController:panelController10];
  displayPanel = self->_displayPanel;
  self->_displayPanel = v48;

  v50 = [CARDisplayPanel alloc];
  panelController11 = [(CARSettingsPanel *)self panelController];
  v52 = [(CARDisplayPanel *)v50 initWithPanelController:panelController11];
  [v26 addObject:v52];

  if (_os_feature_enabled_impl())
  {
    v53 = [CARAccessibilityPanel alloc];
    panelController12 = [(CARSettingsPanel *)self panelController];
    v55 = [(CARAccessibilityPanel *)v53 initWithPanelController:panelController12];
    [v26 addObject:v55];
  }

  [(NSArray *)v97 addObject:v26];
  v56 = +[NSMutableArray array];
  panelController13 = [(CARSettingsPanel *)self panelController];
  carSession3 = [panelController13 carSession];
  configuration3 = [carSession3 configuration];
  if ([configuration3 supportsSiriZLL])
  {
    v60 = +[NSUserDefaults standardUserDefaults];
    if ([v60 BOOLForKey:@"HeySiriEnabled"])
    {

LABEL_20:
      v62 = [CARSiriPanel alloc];
      panelController14 = [(CARSettingsPanel *)self panelController];
      traitCollection = [(CARSiriPanel *)v62 initWithPanelController:panelController14];

      [(CARSiriPanel *)traitCollection setAppleIntelligenceEnabled:[(CARRootPanel *)self AIEnabled]];
      [v56 addObject:traitCollection];
      goto LABEL_22;
    }

    v61 = _os_feature_enabled_impl();
  }

  else
  {
    v61 = _os_feature_enabled_impl();
  }

  if (v61)
  {
    goto LABEL_20;
  }

  v65 = [CARDashboardSuggestionsSpecifier alloc];
  traitCollection = [(CARRootPanel *)self traitCollection];
  v66 = [(CARDashboardSuggestionsSpecifier *)v65 initWithTraitCollection:traitCollection];
  v67 = [CARSettingsCellSpecifierWrapperPanel panelWrappingCellSpecifier:v66];
  [v56 addObject:v67];

LABEL_22:
  panelController15 = [(CARSettingsPanel *)self panelController];
  carSession4 = [panelController15 carSession];
  configuration4 = [carSession4 configuration];
  liveActivitiesMode = [configuration4 liveActivitiesMode];

  if (_os_feature_enabled_impl() && liveActivitiesMode != 1)
  {
    v72 = [CARLiveActivitiesSpecifier alloc];
    v73 = +[CARPrototypePref liveActivitiesDisabled];
    traitCollection2 = [(CARRootPanel *)self traitCollection];
    v75 = [(CARLiveActivitiesSpecifier *)v72 initWithPrototype:v73 traitCollection:traitCollection2];
    liveActivitiesSpecifier = self->_liveActivitiesSpecifier;
    self->_liveActivitiesSpecifier = v75;

    v77 = [CARSettingsCellSpecifierWrapperPanel panelWrappingCellSpecifier:self->_liveActivitiesSpecifier];
    [v56 addObject:v77];
  }

  if (_os_feature_enabled_impl())
  {
    panelController16 = [(CARSettingsPanel *)self panelController];
    carSession5 = [panelController16 carSession];
    configuration5 = [carSession5 configuration];
    videoPlaybackSupported = [configuration5 videoPlaybackSupported];

    if (videoPlaybackSupported)
    {
      v82 = [CARAirPlaySettingsPanel alloc];
      panelController17 = [(CARSettingsPanel *)self panelController];
      v84 = [(CARSettingsPanel *)v82 initWithPanelController:panelController17];
      [v56 addObject:v84];
    }
  }

  v85 = [CARSilentModePanel alloc];
  panelController18 = [(CARSettingsPanel *)self panelController];
  v87 = [(CARSilentModePanel *)v85 initWithPanelController:panelController18];
  [v56 addObject:v87];

  [(NSArray *)v97 addObject:v56];
  if (CRIsInternalInstall())
  {
    v88 = +[CARPrototypePref showInternalSettings];
    state = [v88 state];

    if (state)
    {
      v90 = [CARInternalSettingsPanel alloc];
      panelController19 = [(CARSettingsPanel *)self panelController];
      v92 = [(CARInternalSettingsPanel *)v90 initWithPanelController:panelController19];
      v99 = v92;
      v93 = [NSArray arrayWithObjects:&v99 count:1];
      [(NSArray *)v97 addObject:v93];
    }
  }

  v94 = self->_panels;
  self->_panels = v97;
  v95 = v97;

  v3 = self->_panels;
LABEL_32:

  return v3;
}

- (id)specifierSections
{
  specifierSections = self->_specifierSections;
  if (specifierSections)
  {
    v3 = specifierSections;
  }

  else
  {
    v5 = +[NSMutableArray array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    selfCopy = self;
    panels = [(CARRootPanel *)self panels];
    v7 = [panels countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(panels);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v12 = NSStringFromSelector("cellSpecifier");
          v13 = [v11 valueForKey:v12];

          v14 = [[CARSettingsCellSpecifierSection alloc] initWithSpecifiers:v13];
          [(NSArray *)v5 addObject:v14];
        }

        v8 = [panels countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }

    v15 = selfCopy->_specifierSections;
    selfCopy->_specifierSections = v5;
    v16 = v5;

    v3 = selfCopy->_specifierSections;
  }

  return v3;
}

- (void)resetAllSpecifiers
{
  panels = self->_panels;
  self->_panels = 0;

  specifierSections = self->_specifierSections;
  self->_specifierSections = 0;

  [(CARSettingsTablePanel *)self reloadSpecifiers];
}

- (void)invalidate
{
  v3 = sub_10001C784();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Settings] #DEBUG [LIFECYCLE] CARAnnounceNotificationsPanel Invalidate - Object %p being invalidated", buf, 0xCu);
  }

  [(CARAnnounceNotificationsPanel *)self->_notificationPanel invalidate];
  panelController = [(CARSettingsPanel *)self panelController];
  [panelController removeObserver:self];

  panelController2 = [(CARSettingsPanel *)self panelController];
  [panelController2 removeNotificationSettingsObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  notificationPanel = self->_notificationPanel;
  self->_notificationPanel = 0;

  appearancePanel = self->_appearancePanel;
  self->_appearancePanel = 0;

  displayPanel = self->_displayPanel;
  self->_displayPanel = 0;

  panels = self->_panels;
  self->_panels = 0;

  specifierSections = self->_specifierSections;
  self->_specifierSections = 0;

  v12.receiver = self;
  v12.super_class = CARRootPanel;
  [(CARSettingsPanel *)&v12 invalidate];
}

- (void)_updateAIEnabled
{
  v3 = AFDeviceSupportsSystemAssistantExperience();
  v4 = sub_10001C784();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (v3)
    {
      v5 = @"YES";
    }

    *buf = 138543362;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Settings] Apple intelligence enabled: %{public}@", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100003C44;
  v6[3] = &unk_1000DAD48;
  v6[4] = self;
  v7 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)assetsManagerReady
{
  v3 = +[_TtC15CarPlaySettings16CARAssetsManager sharedInstance];
  isDarkModeAppearanceOnly = [v3 isDarkModeAppearanceOnly];

  if (isDarkModeAppearanceOnly != [(CARRootPanel *)self isDarkModeOnly])
  {
    self->_isDarkModeOnly = isDarkModeAppearanceOnly;
    [(CARAppearancePanel *)self->_appearancePanel setDarkModeOnly:isDarkModeAppearanceOnly];
    [(CARRootPanel *)self _updateVehicleWithDarkModeOnlyIfNeeded];

    [(CARRootPanel *)self resetAllSpecifiers];
  }
}

- (BOOL)_announceNotificationsEnabled
{
  panelController = [(CARSettingsPanel *)self panelController];
  notificationSystemSettings = [panelController notificationSystemSettings];
  announcementSetting = [notificationSystemSettings announcementSetting];

  return announcementSetting == 2;
}

- (void)_limitedUIDidChange:(id)change
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003E10;
  block[3] = &unk_1000DAD70;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_updateVehicleWithDarkModeOnlyIfNeeded
{
  if ([(CARRootPanel *)self isDarkModeOnly])
  {
    panelController = [(CARSettingsPanel *)self panelController];
    vehicle = [panelController vehicle];
    appearanceModePreference = [vehicle appearanceModePreference];

    if (appearanceModePreference != 2)
    {
      panelController2 = [(CARSettingsPanel *)self panelController];
      vehicle2 = [panelController2 vehicle];
      [vehicle2 setAppearanceModePreference:2];

      panelController3 = [(CARSettingsPanel *)self panelController];
      panelController4 = [(CARSettingsPanel *)self panelController];
      vehicle3 = [panelController4 vehicle];
      [panelController3 saveVehicle:vehicle3];
    }
  }
}

@end