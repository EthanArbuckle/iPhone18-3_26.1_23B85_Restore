@interface NavdDefaultsUpdater
- (NavdDefaultsUpdater)initWithDefaults:(id)a3 navigationService:(id)a4 carDisplayController:(id)a5;
- (int64_t)_currentTransportType;
- (void)_migrateDeprecatedSettings;
- (void)_startObserving;
- (void)_updateSettings;
- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5;
- (void)setRoutePlanningSession:(id)a3;
@end

@implementation NavdDefaultsUpdater

- (void)_migrateDeprecatedSettings
{
  v3 = [(NavdDefaultsUpdater *)self userDefaults];
  v13 = [v3 objectForKey:@"VoiceNavigationVolume"];

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
      v8 = [v6 path];
      _CFPreferencesSetAppValueWithContainer();
    }

    if (qword_10195E0D8 != -1)
    {
      dispatch_once(&qword_10195E0D8, &stru_101631860);
    }

    v9 = qword_10195E0D0;
    [NSNumber numberWithBool:v7];
    v10 = [v9 path];
    _CFPreferencesSetAppValueWithContainer();

    v11 = [v9 path];

    _CFPreferencesSynchronizeWithContainer();
    GSSendAppPreferencesChanged();
    GSSendAppPreferencesChanged();

    v12 = [(NavdDefaultsUpdater *)self userDefaults];
    [v12 removeObjectForKey:@"VoiceNavigationVolume"];

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
  v3 = [(NavdDefaultsUpdater *)self carDisplayController];
  v4 = [v3 isCurrentlyConnectedToAnyCarScene];
  v5 = [(NavdDefaultsUpdater *)self settingsMonitor];
  [v5 setIsCarPlay:v4];

  v6 = [(NavdDefaultsUpdater *)self _currentTransportType];
  v7 = [(NavdDefaultsUpdater *)self settingsMonitor];
  [v7 setTransportType:v6];

  v10 = [(NavdDefaultsUpdater *)self navigationService];
  v8 = [(NavdDefaultsUpdater *)self settingsMonitor];
  v9 = [v8 userOptions];
  [v10 changeUserOptions:v9];
}

- (int64_t)_currentTransportType
{
  v3 = [(NavdDefaultsUpdater *)self routePlanningSession];

  if (v3)
  {
    v4 = [(NavdDefaultsUpdater *)self routePlanningSession];
LABEL_5:
    v6 = v4;
    v7 = [v4 currentTransportType];

    return v7;
  }

  v5 = [(NavdDefaultsUpdater *)self navigationSession];

  if (v5)
  {
    v4 = [(NavdDefaultsUpdater *)self navigationSession];
    goto LABEL_5;
  }

  return 0;
}

- (void)setRoutePlanningSession:(id)a3
{
  v5 = a3;
  routePlanningSession = self->_routePlanningSession;
  if (routePlanningSession != v5)
  {
    v7 = v5;
    [(RoutePlanningSession *)routePlanningSession unregisterObserver:self];
    objc_storeStrong(&self->_routePlanningSession, a3);
    [(RoutePlanningSession *)self->_routePlanningSession registerObserver:self];
    v5 = v7;
  }
}

- (void)platformController:(id)a3 didChangeCurrentSessionFromSession:(id)a4 toSession:(id)a5
{
  v6 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [(NavdDefaultsUpdater *)self setNavigationSession:v8];

  v11 = v6;
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

- (NavdDefaultsUpdater)initWithDefaults:(id)a3 navigationService:(id)a4 carDisplayController:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = NavdDefaultsUpdater;
  v12 = [(NavdDefaultsUpdater *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_userDefaults, a3);
    objc_storeStrong(&v13->_navigationService, a4);
    objc_storeStrong(&v13->_carDisplayController, a5);
    v14 = [[NavigationSettingsMonitor alloc] initWithUserDefaults:v9];
    settingsMonitor = v13->_settingsMonitor;
    v13->_settingsMonitor = v14;

    [(NavdDefaultsUpdater *)v13 _migrateDeprecatedSettings];
    [(NavdDefaultsUpdater *)v13 _startObserving];
    [(NavdDefaultsUpdater *)v13 _updateSettings];
  }

  return v13;
}

@end