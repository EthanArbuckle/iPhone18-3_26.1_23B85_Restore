@interface CARSettingsViewController
- (CARSession)carSession;
- (CARSettingsViewController)initWithSessionStatus:(id)a3 windowScene:(id)a4;
- (CRVehicle)vehicle;
- (CRVehicleVideoSettings)vehicleVideoSettings;
- (UITraitOverrides)panelTraitOverrides;
- (id)loadWallpaperPreferences;
- (void)_pairedVehiclesDidChange:(id)a3;
- (void)_reloadVehicle;
- (void)_updateTraitOverridesForTraitOverrides:(id)a3;
- (void)addNotificationSettingsObserver:(id)a3;
- (void)addObserver:(id)a3;
- (void)addSiriPreferencesObserver:(id)a3;
- (void)carManagerRequestedDevicePicker:(id)a3;
- (void)deregisterPanel:(id)a3;
- (void)dismissPanel:(id)a3 completion:(id)a4;
- (void)invalidate;
- (void)popIfPanel:(id)a3;
- (void)popToRootPanelIfHierarchyContainsPanel:(id)a3;
- (void)pushPanels:(id)a3;
- (void)registerPanel:(id)a3;
- (void)removeNotificationSettingsObserver:(id)a3;
- (void)removeObserver:(id)a3;
- (void)removeSiriPreferencesObserver:(id)a3;
- (void)saveVehicle:(id)a3;
- (void)sessionDidConnect:(id)a3;
- (void)userNotificationSettingsCenter:(id)a3 didUpdateNotificationSystemSettings:(id)a4;
@end

@implementation CARSettingsViewController

- (CARSettingsViewController)initWithSessionStatus:(id)a3 windowScene:(id)a4
{
  v7 = a3;
  v8 = a4;
  v37.receiver = self;
  v37.super_class = CARSettingsViewController;
  v9 = [(CARSettingsViewController *)&v37 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_windowScene, a4);
    v11 = [[CARObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___CARSessionObserving];
    observers = v10->_observers;
    v10->_observers = v11;

    v13 = [[CARObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___BSInvalidatable];
    panels = v10->_panels;
    v10->_panels = v13;

    v15 = [[CARObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___CARNotificationSystemSettingsObserver];
    notificationSettingsObservers = v10->_notificationSettingsObservers;
    v10->_notificationSettingsObservers = v15;

    v17 = objc_alloc_init(CRSSiriPreferences);
    siriPreferences = v10->_siriPreferences;
    v10->_siriPreferences = v17;

    v19 = +[UNNotificationSettingsCenter currentNotificationSettingsCenter];
    v20 = [v19 notificationSystemSettings];
    currentNotificationSystemSettings = v10->_currentNotificationSystemSettings;
    v10->_currentNotificationSystemSettings = v20;

    v22 = +[UNNotificationSettingsCenter currentNotificationSettingsCenter];
    [v22 setDelegate:v10];

    objc_storeStrong(&v10->_sessionStatus, a3);
    [(CARSessionStatus *)v10->_sessionStatus addSessionObserver:v10];
    v23 = objc_alloc_init(CRPairedVehicleManager);
    pairedManager = v10->_pairedManager;
    v10->_pairedManager = v23;

    v25 = [v7 currentSession];
    v26 = [v25 configuration];
    v27 = [v26 supportsVehicleData];

    if (v27)
    {
      v28 = +[_TtC15CarPlaySettings16CARAssetsManager sharedInstance];
      [v28 setup];
    }

    v29 = [[CARRootPanel alloc] initWithPanelController:v10];
    rootPanel = v10->_rootPanel;
    v10->_rootPanel = v29;

    [(CARSettingsViewController *)v10 pushViewController:v10->_rootPanel animated:0];
    v31 = +[CARSettingsAppDelegate sharedDelegate];
    v32 = [v31 carManager];
    [v32 addObserver:v10];

    v33 = +[NSDistributedNotificationCenter defaultCenter];
    [v33 addObserver:v10 selector:"_pairedVehiclesDidChange:" name:CRPairedVehiclesDidChangeNotification object:0];

    v34 = [(CARSettingsViewController *)v10 panelTraitOverrides];
    [(CARSettingsViewController *)v10 _updateTraitOverridesForTraitOverrides:v34];

    v35 = +[NSNotificationCenter defaultCenter];
    [v35 addObserver:v10 selector:"_didUpdateTintTrait" name:@"didSelectHomeScreenStyle" object:0];
  }

  return v10;
}

- (void)invalidate
{
  v3 = sub_10001C784();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Settings] #DEBUG [LIFECYCLE] CARSettingsViewController Invalidate - Object %p being invalidated", &v8, 0xCu);
  }

  v4 = +[UNNotificationSettingsCenter currentNotificationSettingsCenter];
  [v4 setDelegate:0];

  v5 = [(CARSettingsViewController *)self panels];
  [v5 invalidate];

  v6 = [(CARSettingsViewController *)self clusterThemeManager];
  [v6 invalidate];

  rootPanel = self->_rootPanel;
  self->_rootPanel = 0;
}

- (void)pushPanels:(id)a3
{
  v4 = a3;
  v5 = [(CARSettingsViewController *)self viewControllers];
  v6 = [v5 mutableCopy];

  [v6 addObjectsFromArray:v4];
  [(CARSettingsViewController *)self setViewControllers:v6];
}

- (void)popIfPanel:(id)a3
{
  v4 = a3;
  v5 = [(CARSettingsViewController *)self topViewController];

  if (v5 == v4)
  {

    [(CARSettingsViewController *)self popPanel];
  }
}

- (void)popToRootPanelIfHierarchyContainsPanel:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(CARSettingsViewController *)self viewControllers];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (*(*(&v10 + 1) + 8 * v9) == v4)
        {

          [(CARSettingsViewController *)self popToRootPanel];
          goto LABEL_11;
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)dismissPanel:(id)a3 completion:(id)a4
{
  v8 = a4;
  v6 = a3;
  v7 = [(CARSettingsViewController *)self presentedViewController];

  if (v7 == v6)
  {
    [(CARSettingsViewController *)self dismissViewControllerAnimated:1 completion:v8];
  }
}

- (void)registerPanel:(id)a3
{
  v4 = a3;
  v5 = [(CARSettingsViewController *)self panels];
  [v5 addObserver:v4];
}

- (void)deregisterPanel:(id)a3
{
  v4 = a3;
  v5 = [(CARSettingsViewController *)self panels];
  [v5 removeObserver:v4];
}

- (id)loadWallpaperPreferences
{
  v3 = [(CARSettingsViewController *)self vehicle];
  v4 = [v3 clusterAssetIdentifier];
  if (v4)
  {
    v5 = v4;
    v6 = [(CARSettingsViewController *)self carSession];
    v7 = [v6 configuration];
    v8 = [v7 supportsVehicleData];

    if (v8)
    {
      v9 = objc_alloc_init(CRSUIClusterThemeManager);
      clusterThemeManager = self->_clusterThemeManager;
      self->_clusterThemeManager = v9;

      v11 = [[CRSUIWallpaperPreferences alloc] initWithDataProvider:self->_clusterThemeManager];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v12 = [CRSUIWallpaperPreferences alloc];
  v13 = objc_alloc_init(CRSUISystemWallpaperProvider);
  v11 = [v12 initWithDataProvider:v13];

LABEL_6:
  v14 = [(CARSettingsViewController *)self vehicle];
  [v11 setVehicle:v14];

  return v11;
}

- (CARSession)carSession
{
  v2 = [(CARSettingsViewController *)self sessionStatus];
  v3 = [v2 currentSession];

  return v3;
}

- (CRVehicle)vehicle
{
  vehicle = self->_vehicle;
  if (!vehicle)
  {
    [(CARSettingsViewController *)self _reloadVehicle];
    vehicle = self->_vehicle;
  }

  return vehicle;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(CARSettingsViewController *)self observers];
  [v5 addObserver:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(CARSettingsViewController *)self observers];
  [v5 removeObserver:v4];
}

- (void)addSiriPreferencesObserver:(id)a3
{
  v4 = a3;
  v5 = [(CARSettingsViewController *)self siriPreferences];
  [v5 addObserver:v4];
}

- (void)removeSiriPreferencesObserver:(id)a3
{
  v4 = a3;
  v5 = [(CARSettingsViewController *)self siriPreferences];
  [v5 removeObserver:v4];
}

- (void)addNotificationSettingsObserver:(id)a3
{
  v4 = a3;
  v5 = [(CARSettingsViewController *)self notificationSettingsObservers];
  [v5 addObserver:v4];
}

- (void)removeNotificationSettingsObserver:(id)a3
{
  v4 = a3;
  v5 = [(CARSettingsViewController *)self notificationSettingsObservers];
  [v5 removeObserver:v4];
}

- (void)carManagerRequestedDevicePicker:(id)a3
{
  v4 = [(CARSettingsViewController *)self rootPanel];
  v5 = [v4 devicePickerSpecifier];

  if (v5)
  {
    v6 = [(CARSettingsViewController *)self rootPanel];
    v7 = [v6 navigationController];
    v8 = [v7 popToRootViewControllerAnimated:0];

    v11 = [(CARSettingsViewController *)self rootPanel];
    v9 = [v11 devicePickerSpecifier];
    v10 = [v9 actionBlock];
    (v10)[2](v10, self);
  }
}

- (void)saveVehicle:(id)a3
{
  v4 = a3;
  v5 = [(CARSettingsViewController *)self pairedManager];
  [v5 saveVehicle:v4 completion:&stru_1000DB0C8];
}

- (void)sessionDidConnect:(id)a3
{
  v4 = a3;
  v5 = [(CARSettingsViewController *)self observers];
  [v5 sessionDidConnect:v4];
}

- (void)userNotificationSettingsCenter:(id)a3 didUpdateNotificationSystemSettings:(id)a4
{
  v5 = a4;
  v6 = [(CARSettingsViewController *)self currentNotificationSystemSettings];
  v17 = [v6 copy];

  [(CARSettingsViewController *)self setCurrentNotificationSystemSettings:v5];
  v7 = [v17 announcementSetting];
  v8 = [(CARSettingsViewController *)self currentNotificationSystemSettings];
  v9 = [v8 announcementSetting];

  if (v7 != v9)
  {
    v10 = [(CARSettingsViewController *)self notificationSettingsObservers];
    v11 = [(CARSettingsViewController *)self currentNotificationSystemSettings];
    [v10 announceEnabledStateUpdated:{objc_msgSend(v11, "announcementSetting")}];
  }

  v12 = [v17 announcementCarPlaySetting];
  v13 = [(CARSettingsViewController *)self currentNotificationSystemSettings];
  v14 = [v13 announcementCarPlaySetting];

  if (v12 != v14)
  {
    v15 = [(CARSettingsViewController *)self notificationSettingsObservers];
    v16 = [(CARSettingsViewController *)self currentNotificationSystemSettings];
    [v15 announceCarPlaySettingUpdated:{objc_msgSend(v16, "announcementCarPlaySetting")}];
  }
}

- (CRVehicleVideoSettings)vehicleVideoSettings
{
  vehicleVideoSettings = self->_vehicleVideoSettings;
  if (!vehicleVideoSettings)
  {
    v4 = [(CARSettingsViewController *)self vehicle];
    v5 = [v4 identifier];

    if (v5)
    {
      v6 = [[CRVehicleVideoSettings alloc] initWithVehicleIdentifier:v5];
      v7 = self->_vehicleVideoSettings;
      self->_vehicleVideoSettings = v6;
    }

    vehicleVideoSettings = self->_vehicleVideoSettings;
  }

  return vehicleVideoSettings;
}

- (UITraitOverrides)panelTraitOverrides
{
  v2 = [(CARSettingsViewController *)self windowScene];
  v3 = [v2 traitOverrides];

  return v3;
}

- (void)_pairedVehiclesDidChange:(id)a3
{
  [(CARSettingsViewController *)self _reloadVehicle];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"CARSettingsPanelControllerVehicleDidChangeNotification" object:0];
}

- (void)_reloadVehicle
{
  v3 = [(CARSettingsViewController *)self carSession];
  v4 = [v3 MFiCertificateSerialNumber];

  v5 = [(CARSettingsViewController *)self pairedManager];
  v6 = [v5 vehicleForCertificateSerial:v4];
  vehicle = self->_vehicle;
  self->_vehicle = v6;

  if (!self->_vehicle)
  {
    v8 = sub_10001C784();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000915D4(self, v4, v8);
    }
  }
}

- (void)_updateTraitOverridesForTraitOverrides:(id)a3
{
  v11 = a3;
  v4 = [(CARSettingsViewController *)self vehicle];
  v5 = [v4 homeScreenStyleDataForDisplayWithID:0];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [[CRHomeScreenStyleData alloc] initWithStyleType:2 styleVariant:2];
  }

  v8 = v7;

  v9 = [[SBHIconImageStyleConfiguration alloc] initWithHomeScreenStyleData:v8];
  v10 = objc_opt_self();
  if (v9)
  {
    [v11 setObject:v9 forTrait:v10];
  }

  else
  {
    [v11 removeTrait:v10];
  }
}

@end