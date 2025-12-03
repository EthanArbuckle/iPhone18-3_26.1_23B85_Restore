@interface NavdDefaultsUpdater
- (NavdDefaultsUpdater)initWithDefaults:(id)defaults navigationService:(id)service carDisplayController:(id)controller;
- (int64_t)_currentTransportType;
- (void)_migrateDeprecatedSettings;
- (void)_startObserving;
- (void)_updateSettings;
- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession;
- (void)setRoutePlanningSession:(id)session;
@end

@implementation NavdDefaultsUpdater

- (void)_migrateDeprecatedSettings
{
  userDefaults = [(NavdDefaultsUpdater *)self userDefaults];
  v13 = [userDefaults objectForKey:@"VoiceNavigationVolume"];

  v4 = v13;
  if (v13)
  {
    v5 = v13;
    if (qword_10195E0D8 != -1)
    {
      dispatch_once(&qword_10195E0D8, &stru_101631860);
    }

    v6 = qword_10195E0D0;
    v7 = [v5 isEqualToString:@"Off Volume"];
    if ((v7 & 1) == 0)
    {
      path = [v6 path];
      _CFPreferencesSetAppValueWithContainer();
    }

    if (qword_10195E0D8 != -1)
    {
      dispatch_once(&qword_10195E0D8, &stru_101631860);
    }

    v9 = qword_10195E0D0;
    [NSNumber numberWithBool:v7];
    path2 = [v9 path];
    _CFPreferencesSetAppValueWithContainer();

    path3 = [v9 path];

    _CFPreferencesSynchronizeWithContainer();
    GSSendAppPreferencesChanged();
    GSSendAppPreferencesChanged();

    userDefaults2 = [(NavdDefaultsUpdater *)self userDefaults];
    [userDefaults2 removeObjectForKey:@"VoiceNavigationVolume"];

    v4 = v13;
  }
}

- (void)_startObserving
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_carPlayConnectionUpdated:" name:@"CarDisplayDidChangeConnectedNotification" object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_sceneDidActivateNotification:" name:UISceneDidActivateNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_navigationSettingsUpdated:" name:@"NavigationSettingsMonitorDidUpdateSettings" object:self->_settingsMonitor];
}

- (void)_updateSettings
{
  carDisplayController = [(NavdDefaultsUpdater *)self carDisplayController];
  isCurrentlyConnectedToAnyCarScene = [carDisplayController isCurrentlyConnectedToAnyCarScene];
  settingsMonitor = [(NavdDefaultsUpdater *)self settingsMonitor];
  [settingsMonitor setIsCarPlay:isCurrentlyConnectedToAnyCarScene];

  _currentTransportType = [(NavdDefaultsUpdater *)self _currentTransportType];
  settingsMonitor2 = [(NavdDefaultsUpdater *)self settingsMonitor];
  [settingsMonitor2 setTransportType:_currentTransportType];

  navigationService = [(NavdDefaultsUpdater *)self navigationService];
  settingsMonitor3 = [(NavdDefaultsUpdater *)self settingsMonitor];
  userOptions = [settingsMonitor3 userOptions];
  [navigationService changeUserOptions:userOptions];
}

- (int64_t)_currentTransportType
{
  routePlanningSession = [(NavdDefaultsUpdater *)self routePlanningSession];

  if (routePlanningSession)
  {
    routePlanningSession2 = [(NavdDefaultsUpdater *)self routePlanningSession];
LABEL_5:
    v6 = routePlanningSession2;
    currentTransportType = [routePlanningSession2 currentTransportType];

    return currentTransportType;
  }

  navigationSession = [(NavdDefaultsUpdater *)self navigationSession];

  if (navigationSession)
  {
    routePlanningSession2 = [(NavdDefaultsUpdater *)self navigationSession];
    goto LABEL_5;
  }

  return 0;
}

- (void)setRoutePlanningSession:(id)session
{
  sessionCopy = session;
  routePlanningSession = self->_routePlanningSession;
  if (routePlanningSession != sessionCopy)
  {
    v7 = sessionCopy;
    [(RoutePlanningSession *)routePlanningSession unregisterObserver:self];
    objc_storeStrong(&self->_routePlanningSession, session);
    [(RoutePlanningSession *)self->_routePlanningSession registerObserver:self];
    sessionCopy = v7;
  }
}

- (void)platformController:(id)controller didChangeCurrentSessionFromSession:(id)session toSession:(id)toSession
{
  toSessionCopy = toSession;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = toSessionCopy;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [(NavdDefaultsUpdater *)self setNavigationSession:v8];

  v11 = toSessionCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v11;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  [(NavdDefaultsUpdater *)self setRoutePlanningSession:v10];
  [(NavdDefaultsUpdater *)self _updateSettings];
}

- (NavdDefaultsUpdater)initWithDefaults:(id)defaults navigationService:(id)service carDisplayController:(id)controller
{
  defaultsCopy = defaults;
  serviceCopy = service;
  controllerCopy = controller;
  v17.receiver = self;
  v17.super_class = NavdDefaultsUpdater;
  v12 = [(NavdDefaultsUpdater *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_userDefaults, defaults);
    objc_storeStrong(&v13->_navigationService, service);
    objc_storeStrong(&v13->_carDisplayController, controller);
    v14 = [[NavigationSettingsMonitor alloc] initWithUserDefaults:defaultsCopy];
    settingsMonitor = v13->_settingsMonitor;
    v13->_settingsMonitor = v14;

    [(NavdDefaultsUpdater *)v13 _migrateDeprecatedSettings];
    [(NavdDefaultsUpdater *)v13 _startObserving];
    [(NavdDefaultsUpdater *)v13 _updateSettings];
  }

  return v13;
}

@end