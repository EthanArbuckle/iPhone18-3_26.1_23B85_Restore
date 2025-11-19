@interface CARRootPanel
- (BOOL)_announceNotificationsEnabled;
- (CARRootPanel)initWithPanelController:(id)a3;
- (NSArray)panels;
- (id)panelPassingTest:(id)a3;
- (id)specifierSections;
- (void)_limitedUIDidChange:(id)a3;
- (void)_updateAIEnabled;
- (void)_updateVehicleWithDarkModeOnlyIfNeeded;
- (void)assetsManagerReady;
- (void)dealloc;
- (void)invalidate;
- (void)resetAllSpecifiers;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CARRootPanel

- (CARRootPanel)initWithPanelController:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CARRootPanel;
  v5 = [(CARSettingsPanel *)&v11 initWithPanelController:v4];
  if (v5)
  {
    v6 = sub_10001C784();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10009073C(v5, v6);
    }

    [v4 addNotificationSettingsObserver:v5];
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

  v5 = [(CARSettingsPanel *)self panelController];
  v6 = [v5 vehicle];
  v7 = [_TtC15CarPlaySettings20CARSettingsUtilities lastPanelID:@"kCARSettingsDisplayPanelID" vehicle:v6];
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

  v11 = [(CARSettingsPanel *)self panelController];
  v12 = [v11 carSession];
  v13 = [v12 configuration];
  v14 = [v13 screens];
  v15 = [v14 bs_containsObjectPassingTest:&stru_1000DAD20];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && v15)
  {
    v16 = [(CARSettingsPanel *)self panelController];
    [v16 pushPanel:v10];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CARRootPanel;
  [(CARSettingsTablePanel *)&v6 viewWillAppear:a3];
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

- (id)panelPassingTest:(id)a3
{
  v4 = a3;
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

        v9 = [*(*(&v11 + 1) + 8 * i) bs_firstObjectPassingTest:{v4, v11}];
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
    v8 = [(CARSettingsPanel *)self panelController];
    v9 = [(CARAnnounceNotificationsPanel *)v7 initWithPanelController:v8];
    notificationPanel = self->_notificationPanel;
    self->_notificationPanel = v9;
  }

  v11 = [CARDNDPanel alloc];
  v12 = [(CARSettingsPanel *)self panelController];
  v13 = [(CARDNDPanel *)v11 initWithPanelController:v12];
  v14 = self->_notificationPanel;
  v100[0] = v13;
  v100[1] = v14;
  v15 = [NSArray arrayWithObjects:v100 count:2];
  [v6 addObjectsFromArray:v15];

  v16 = [(CARSettingsPanel *)self panelController];
  v17 = [v16 carSession];
  v18 = [v17 configuration];
  v19 = [v18 supportsVehicleData];

  if (v19)
  {
    v20 = [CARDevicePickerPanel alloc];
    v21 = [(CARSettingsPanel *)self panelController];
    v22 = [(CARSettingsPanel *)v20 initWithPanelController:v21];

    v23 = [(CARDevicePickerPanel *)v22 cellSpecifier];
    devicePickerSpecifier = self->_devicePickerSpecifier;
    self->_devicePickerSpecifier = v23;

    [v6 addObject:v22];
    v25 = +[NSNotificationCenter defaultCenter];
    [v25 addObserver:self selector:"_limitedUIDidChange:" name:CARSessionLimitUserInterfacesChangedNotification object:0];
  }

  v98 = v6;
  [v5 addObject:{v6, v5}];
  v26 = +[NSMutableArray array];
  v27 = [CARAppearancePanel alloc];
  v28 = [(CARSettingsPanel *)self panelController];
  v29 = [(CARAppearancePanel *)v27 initWithPanelController:v28];
  appearancePanel = self->_appearancePanel;
  self->_appearancePanel = v29;

  [(CARAppearancePanel *)self->_appearancePanel setDarkModeOnly:[(CARRootPanel *)self isDarkModeOnly]];
  [v26 addObject:self->_appearancePanel];
  v31 = [CARIconCustomizationPanel alloc];
  v32 = [(CARSettingsPanel *)self panelController];
  v33 = [(CARIconCustomizationPanel *)v31 initWithPanelController:v32];
  [v26 addObject:v33];

  v34 = [(CARSettingsPanel *)self panelController];
  v35 = [v34 vehicle];
  v36 = [v35 clusterAssetIdentifier];
  if (v36)
  {
    v37 = v36;
    v38 = [(CARSettingsPanel *)self panelController];
    v39 = [v38 carSession];
    v40 = [v39 configuration];
    v41 = [v40 supportsVehicleData];

    if (v41)
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
  v44 = [(CARSettingsPanel *)self panelController];
  v45 = [v43 initWithPanelController:v44];
  [v26 addObject:v45];

  v46 = [CARDisplayPanel alloc];
  v47 = [(CARSettingsPanel *)self panelController];
  v48 = [(CARDisplayPanel *)v46 initWithPanelController:v47];
  displayPanel = self->_displayPanel;
  self->_displayPanel = v48;

  v50 = [CARDisplayPanel alloc];
  v51 = [(CARSettingsPanel *)self panelController];
  v52 = [(CARDisplayPanel *)v50 initWithPanelController:v51];
  [v26 addObject:v52];

  if (_os_feature_enabled_impl())
  {
    v53 = [CARAccessibilityPanel alloc];
    v54 = [(CARSettingsPanel *)self panelController];
    v55 = [(CARAccessibilityPanel *)v53 initWithPanelController:v54];
    [v26 addObject:v55];
  }

  [(NSArray *)v97 addObject:v26];
  v56 = +[NSMutableArray array];
  v57 = [(CARSettingsPanel *)self panelController];
  v58 = [v57 carSession];
  v59 = [v58 configuration];
  if ([v59 supportsSiriZLL])
  {
    v60 = +[NSUserDefaults standardUserDefaults];
    if ([v60 BOOLForKey:@"HeySiriEnabled"])
    {

LABEL_20:
      v62 = [CARSiriPanel alloc];
      v63 = [(CARSettingsPanel *)self panelController];
      v64 = [(CARSiriPanel *)v62 initWithPanelController:v63];

      [(CARSiriPanel *)v64 setAppleIntelligenceEnabled:[(CARRootPanel *)self AIEnabled]];
      [v56 addObject:v64];
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
  v64 = [(CARRootPanel *)self traitCollection];
  v66 = [(CARDashboardSuggestionsSpecifier *)v65 initWithTraitCollection:v64];
  v67 = [CARSettingsCellSpecifierWrapperPanel panelWrappingCellSpecifier:v66];
  [v56 addObject:v67];

LABEL_22:
  v68 = [(CARSettingsPanel *)self panelController];
  v69 = [v68 carSession];
  v70 = [v69 configuration];
  v71 = [v70 liveActivitiesMode];

  if (_os_feature_enabled_impl() && v71 != 1)
  {
    v72 = [CARLiveActivitiesSpecifier alloc];
    v73 = +[CARPrototypePref liveActivitiesDisabled];
    v74 = [(CARRootPanel *)self traitCollection];
    v75 = [(CARLiveActivitiesSpecifier *)v72 initWithPrototype:v73 traitCollection:v74];
    liveActivitiesSpecifier = self->_liveActivitiesSpecifier;
    self->_liveActivitiesSpecifier = v75;

    v77 = [CARSettingsCellSpecifierWrapperPanel panelWrappingCellSpecifier:self->_liveActivitiesSpecifier];
    [v56 addObject:v77];
  }

  if (_os_feature_enabled_impl())
  {
    v78 = [(CARSettingsPanel *)self panelController];
    v79 = [v78 carSession];
    v80 = [v79 configuration];
    v81 = [v80 videoPlaybackSupported];

    if (v81)
    {
      v82 = [CARAirPlaySettingsPanel alloc];
      v83 = [(CARSettingsPanel *)self panelController];
      v84 = [(CARSettingsPanel *)v82 initWithPanelController:v83];
      [v56 addObject:v84];
    }
  }

  v85 = [CARSilentModePanel alloc];
  v86 = [(CARSettingsPanel *)self panelController];
  v87 = [(CARSilentModePanel *)v85 initWithPanelController:v86];
  [v56 addObject:v87];

  [(NSArray *)v97 addObject:v56];
  if (CRIsInternalInstall())
  {
    v88 = +[CARPrototypePref showInternalSettings];
    v89 = [v88 state];

    if (v89)
    {
      v90 = [CARInternalSettingsPanel alloc];
      v91 = [(CARSettingsPanel *)self panelController];
      v92 = [(CARInternalSettingsPanel *)v90 initWithPanelController:v91];
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
    v18 = self;
    v6 = [(CARRootPanel *)self panels];
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v12 = NSStringFromSelector("cellSpecifier");
          v13 = [v11 valueForKey:v12];

          v14 = [[CARSettingsCellSpecifierSection alloc] initWithSpecifiers:v13];
          [(NSArray *)v5 addObject:v14];
        }

        v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v8);
    }

    v15 = v18->_specifierSections;
    v18->_specifierSections = v5;
    v16 = v5;

    v3 = v18->_specifierSections;
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
    v14 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Settings] #DEBUG [LIFECYCLE] CARAnnounceNotificationsPanel Invalidate - Object %p being invalidated", buf, 0xCu);
  }

  [(CARAnnounceNotificationsPanel *)self->_notificationPanel invalidate];
  v4 = [(CARSettingsPanel *)self panelController];
  [v4 removeObserver:self];

  v5 = [(CARSettingsPanel *)self panelController];
  [v5 removeNotificationSettingsObserver:self];

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
  v4 = [v3 isDarkModeAppearanceOnly];

  if (v4 != [(CARRootPanel *)self isDarkModeOnly])
  {
    self->_isDarkModeOnly = v4;
    [(CARAppearancePanel *)self->_appearancePanel setDarkModeOnly:v4];
    [(CARRootPanel *)self _updateVehicleWithDarkModeOnlyIfNeeded];

    [(CARRootPanel *)self resetAllSpecifiers];
  }
}

- (BOOL)_announceNotificationsEnabled
{
  v2 = [(CARSettingsPanel *)self panelController];
  v3 = [v2 notificationSystemSettings];
  v4 = [v3 announcementSetting];

  return v4 == 2;
}

- (void)_limitedUIDidChange:(id)a3
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
    v3 = [(CARSettingsPanel *)self panelController];
    v4 = [v3 vehicle];
    v5 = [v4 appearanceModePreference];

    if (v5 != 2)
    {
      v6 = [(CARSettingsPanel *)self panelController];
      v7 = [v6 vehicle];
      [v7 setAppearanceModePreference:2];

      v10 = [(CARSettingsPanel *)self panelController];
      v8 = [(CARSettingsPanel *)self panelController];
      v9 = [v8 vehicle];
      [v10 saveVehicle:v9];
    }
  }
}

@end