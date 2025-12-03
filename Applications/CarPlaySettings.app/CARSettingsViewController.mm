@interface CARSettingsViewController
- (CARSession)carSession;
- (CARSettingsViewController)initWithSessionStatus:(id)status windowScene:(id)scene;
- (CRVehicle)vehicle;
- (CRVehicleVideoSettings)vehicleVideoSettings;
- (UITraitOverrides)panelTraitOverrides;
- (id)loadWallpaperPreferences;
- (void)_pairedVehiclesDidChange:(id)change;
- (void)_reloadVehicle;
- (void)_updateTraitOverridesForTraitOverrides:(id)overrides;
- (void)addNotificationSettingsObserver:(id)observer;
- (void)addObserver:(id)observer;
- (void)addSiriPreferencesObserver:(id)observer;
- (void)carManagerRequestedDevicePicker:(id)picker;
- (void)deregisterPanel:(id)panel;
- (void)dismissPanel:(id)panel completion:(id)completion;
- (void)invalidate;
- (void)popIfPanel:(id)panel;
- (void)popToRootPanelIfHierarchyContainsPanel:(id)panel;
- (void)pushPanels:(id)panels;
- (void)registerPanel:(id)panel;
- (void)removeNotificationSettingsObserver:(id)observer;
- (void)removeObserver:(id)observer;
- (void)removeSiriPreferencesObserver:(id)observer;
- (void)saveVehicle:(id)vehicle;
- (void)sessionDidConnect:(id)connect;
- (void)userNotificationSettingsCenter:(id)center didUpdateNotificationSystemSettings:(id)settings;
@end

@implementation CARSettingsViewController

- (CARSettingsViewController)initWithSessionStatus:(id)status windowScene:(id)scene
{
  statusCopy = status;
  sceneCopy = scene;
  v37.receiver = self;
  v37.super_class = CARSettingsViewController;
  v9 = [(CARSettingsViewController *)&v37 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_windowScene, scene);
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
    notificationSystemSettings = [v19 notificationSystemSettings];
    currentNotificationSystemSettings = v10->_currentNotificationSystemSettings;
    v10->_currentNotificationSystemSettings = notificationSystemSettings;

    v22 = +[UNNotificationSettingsCenter currentNotificationSettingsCenter];
    [v22 setDelegate:v10];

    objc_storeStrong(&v10->_sessionStatus, status);
    [(CARSessionStatus *)v10->_sessionStatus addSessionObserver:v10];
    v23 = objc_alloc_init(CRPairedVehicleManager);
    pairedManager = v10->_pairedManager;
    v10->_pairedManager = v23;

    currentSession = [statusCopy currentSession];
    configuration = [currentSession configuration];
    supportsVehicleData = [configuration supportsVehicleData];

    if (supportsVehicleData)
    {
      v28 = +[_TtC15CarPlaySettings16CARAssetsManager sharedInstance];
      [v28 setup];
    }

    v29 = [[CARRootPanel alloc] initWithPanelController:v10];
    rootPanel = v10->_rootPanel;
    v10->_rootPanel = v29;

    [(CARSettingsViewController *)v10 pushViewController:v10->_rootPanel animated:0];
    v31 = +[CARSettingsAppDelegate sharedDelegate];
    carManager = [v31 carManager];
    [carManager addObserver:v10];

    v33 = +[NSDistributedNotificationCenter defaultCenter];
    [v33 addObserver:v10 selector:"_pairedVehiclesDidChange:" name:CRPairedVehiclesDidChangeNotification object:0];

    panelTraitOverrides = [(CARSettingsViewController *)v10 panelTraitOverrides];
    [(CARSettingsViewController *)v10 _updateTraitOverridesForTraitOverrides:panelTraitOverrides];

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
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Settings] #DEBUG [LIFECYCLE] CARSettingsViewController Invalidate - Object %p being invalidated", &v8, 0xCu);
  }

  v4 = +[UNNotificationSettingsCenter currentNotificationSettingsCenter];
  [v4 setDelegate:0];

  panels = [(CARSettingsViewController *)self panels];
  [panels invalidate];

  clusterThemeManager = [(CARSettingsViewController *)self clusterThemeManager];
  [clusterThemeManager invalidate];

  rootPanel = self->_rootPanel;
  self->_rootPanel = 0;
}

- (void)pushPanels:(id)panels
{
  panelsCopy = panels;
  viewControllers = [(CARSettingsViewController *)self viewControllers];
  v6 = [viewControllers mutableCopy];

  [v6 addObjectsFromArray:panelsCopy];
  [(CARSettingsViewController *)self setViewControllers:v6];
}

- (void)popIfPanel:(id)panel
{
  panelCopy = panel;
  topViewController = [(CARSettingsViewController *)self topViewController];

  if (topViewController == panelCopy)
  {

    [(CARSettingsViewController *)self popPanel];
  }
}

- (void)popToRootPanelIfHierarchyContainsPanel:(id)panel
{
  panelCopy = panel;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  viewControllers = [(CARSettingsViewController *)self viewControllers];
  v6 = [viewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(viewControllers);
        }

        if (*(*(&v10 + 1) + 8 * v9) == panelCopy)
        {

          [(CARSettingsViewController *)self popToRootPanel];
          goto LABEL_11;
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [viewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)dismissPanel:(id)panel completion:(id)completion
{
  completionCopy = completion;
  panelCopy = panel;
  presentedViewController = [(CARSettingsViewController *)self presentedViewController];

  if (presentedViewController == panelCopy)
  {
    [(CARSettingsViewController *)self dismissViewControllerAnimated:1 completion:completionCopy];
  }
}

- (void)registerPanel:(id)panel
{
  panelCopy = panel;
  panels = [(CARSettingsViewController *)self panels];
  [panels addObserver:panelCopy];
}

- (void)deregisterPanel:(id)panel
{
  panelCopy = panel;
  panels = [(CARSettingsViewController *)self panels];
  [panels removeObserver:panelCopy];
}

- (id)loadWallpaperPreferences
{
  vehicle = [(CARSettingsViewController *)self vehicle];
  clusterAssetIdentifier = [vehicle clusterAssetIdentifier];
  if (clusterAssetIdentifier)
  {
    v5 = clusterAssetIdentifier;
    carSession = [(CARSettingsViewController *)self carSession];
    configuration = [carSession configuration];
    supportsVehicleData = [configuration supportsVehicleData];

    if (supportsVehicleData)
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
  vehicle2 = [(CARSettingsViewController *)self vehicle];
  [v11 setVehicle:vehicle2];

  return v11;
}

- (CARSession)carSession
{
  sessionStatus = [(CARSettingsViewController *)self sessionStatus];
  currentSession = [sessionStatus currentSession];

  return currentSession;
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

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CARSettingsViewController *)self observers];
  [observers addObserver:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CARSettingsViewController *)self observers];
  [observers removeObserver:observerCopy];
}

- (void)addSiriPreferencesObserver:(id)observer
{
  observerCopy = observer;
  siriPreferences = [(CARSettingsViewController *)self siriPreferences];
  [siriPreferences addObserver:observerCopy];
}

- (void)removeSiriPreferencesObserver:(id)observer
{
  observerCopy = observer;
  siriPreferences = [(CARSettingsViewController *)self siriPreferences];
  [siriPreferences removeObserver:observerCopy];
}

- (void)addNotificationSettingsObserver:(id)observer
{
  observerCopy = observer;
  notificationSettingsObservers = [(CARSettingsViewController *)self notificationSettingsObservers];
  [notificationSettingsObservers addObserver:observerCopy];
}

- (void)removeNotificationSettingsObserver:(id)observer
{
  observerCopy = observer;
  notificationSettingsObservers = [(CARSettingsViewController *)self notificationSettingsObservers];
  [notificationSettingsObservers removeObserver:observerCopy];
}

- (void)carManagerRequestedDevicePicker:(id)picker
{
  rootPanel = [(CARSettingsViewController *)self rootPanel];
  devicePickerSpecifier = [rootPanel devicePickerSpecifier];

  if (devicePickerSpecifier)
  {
    rootPanel2 = [(CARSettingsViewController *)self rootPanel];
    navigationController = [rootPanel2 navigationController];
    v8 = [navigationController popToRootViewControllerAnimated:0];

    rootPanel3 = [(CARSettingsViewController *)self rootPanel];
    devicePickerSpecifier2 = [rootPanel3 devicePickerSpecifier];
    actionBlock = [devicePickerSpecifier2 actionBlock];
    (actionBlock)[2](actionBlock, self);
  }
}

- (void)saveVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  pairedManager = [(CARSettingsViewController *)self pairedManager];
  [pairedManager saveVehicle:vehicleCopy completion:&stru_1000DB0C8];
}

- (void)sessionDidConnect:(id)connect
{
  connectCopy = connect;
  observers = [(CARSettingsViewController *)self observers];
  [observers sessionDidConnect:connectCopy];
}

- (void)userNotificationSettingsCenter:(id)center didUpdateNotificationSystemSettings:(id)settings
{
  settingsCopy = settings;
  currentNotificationSystemSettings = [(CARSettingsViewController *)self currentNotificationSystemSettings];
  v17 = [currentNotificationSystemSettings copy];

  [(CARSettingsViewController *)self setCurrentNotificationSystemSettings:settingsCopy];
  announcementSetting = [v17 announcementSetting];
  currentNotificationSystemSettings2 = [(CARSettingsViewController *)self currentNotificationSystemSettings];
  announcementSetting2 = [currentNotificationSystemSettings2 announcementSetting];

  if (announcementSetting != announcementSetting2)
  {
    notificationSettingsObservers = [(CARSettingsViewController *)self notificationSettingsObservers];
    currentNotificationSystemSettings3 = [(CARSettingsViewController *)self currentNotificationSystemSettings];
    [notificationSettingsObservers announceEnabledStateUpdated:{objc_msgSend(currentNotificationSystemSettings3, "announcementSetting")}];
  }

  announcementCarPlaySetting = [v17 announcementCarPlaySetting];
  currentNotificationSystemSettings4 = [(CARSettingsViewController *)self currentNotificationSystemSettings];
  announcementCarPlaySetting2 = [currentNotificationSystemSettings4 announcementCarPlaySetting];

  if (announcementCarPlaySetting != announcementCarPlaySetting2)
  {
    notificationSettingsObservers2 = [(CARSettingsViewController *)self notificationSettingsObservers];
    currentNotificationSystemSettings5 = [(CARSettingsViewController *)self currentNotificationSystemSettings];
    [notificationSettingsObservers2 announceCarPlaySettingUpdated:{objc_msgSend(currentNotificationSystemSettings5, "announcementCarPlaySetting")}];
  }
}

- (CRVehicleVideoSettings)vehicleVideoSettings
{
  vehicleVideoSettings = self->_vehicleVideoSettings;
  if (!vehicleVideoSettings)
  {
    vehicle = [(CARSettingsViewController *)self vehicle];
    identifier = [vehicle identifier];

    if (identifier)
    {
      v6 = [[CRVehicleVideoSettings alloc] initWithVehicleIdentifier:identifier];
      v7 = self->_vehicleVideoSettings;
      self->_vehicleVideoSettings = v6;
    }

    vehicleVideoSettings = self->_vehicleVideoSettings;
  }

  return vehicleVideoSettings;
}

- (UITraitOverrides)panelTraitOverrides
{
  windowScene = [(CARSettingsViewController *)self windowScene];
  traitOverrides = [windowScene traitOverrides];

  return traitOverrides;
}

- (void)_pairedVehiclesDidChange:(id)change
{
  [(CARSettingsViewController *)self _reloadVehicle];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"CARSettingsPanelControllerVehicleDidChangeNotification" object:0];
}

- (void)_reloadVehicle
{
  carSession = [(CARSettingsViewController *)self carSession];
  mFiCertificateSerialNumber = [carSession MFiCertificateSerialNumber];

  pairedManager = [(CARSettingsViewController *)self pairedManager];
  v6 = [pairedManager vehicleForCertificateSerial:mFiCertificateSerialNumber];
  vehicle = self->_vehicle;
  self->_vehicle = v6;

  if (!self->_vehicle)
  {
    v8 = sub_10001C784();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000915D4(self, mFiCertificateSerialNumber, v8);
    }
  }
}

- (void)_updateTraitOverridesForTraitOverrides:(id)overrides
{
  overridesCopy = overrides;
  vehicle = [(CARSettingsViewController *)self vehicle];
  v5 = [vehicle homeScreenStyleDataForDisplayWithID:0];
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
    [overridesCopy setObject:v9 forTrait:v10];
  }

  else
  {
    [overridesCopy removeTrait:v10];
  }
}

@end