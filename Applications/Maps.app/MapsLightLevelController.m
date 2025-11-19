@interface MapsLightLevelController
+ (LightLevelProviding)sharedController;
- (MapsLightLevelController)initWithWindowScene:(id)a3;
- (UIWindowScene)windowScene;
- (int64_t)_computedLightLevel;
- (void)addObserver:(id)a3;
- (void)ambientLightMonitorDidUpdate:(id)a3;
- (void)astronomicalConditionMonitorDidUpdate:(id)a3;
- (void)didUpdateMitigationNamed:(id)a3;
- (void)externalLightMonitorDidUpdate:(id)a3;
- (void)lightMonitorDidUpdate:(id)a3;
- (void)reloadForChangedLightLevelTrackers;
- (void)removeObserver:(id)a3;
- (void)setActive:(BOOL)a3;
- (void)setCurrentLightLevel:(int64_t)a3 forceUpdate:(BOOL)a4;
- (void)setWindowScene:(id)a3;
@end

@implementation MapsLightLevelController

+ (LightLevelProviding)sharedController
{
  if (qword_10195DC20 != -1)
  {
    dispatch_once(&qword_10195DC20, &stru_10162D1F0);
  }

  v3 = qword_10195DC18;

  return v3;
}

- (void)reloadForChangedLightLevelTrackers
{
  v3 = [(MapsLightLevelController *)self _computedLightLevel];

  [(MapsLightLevelController *)self setCurrentLightLevel:v3 forceUpdate:1];
}

- (int64_t)_computedLightLevel
{
  v3 = +[MapsThermalPressureController sharedController];
  v4 = [v3 shouldActivateMitigationNamed:@"NavigationForceNightModeMitigation"];

  if (v4)
  {
    v5 = sub_100014EFC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Thermal mitigation is forcing night mode!", buf, 2u);
    }

    return 2;
  }

  v7 = [(MapsLightLevelController *)self externalLightMonitor];
  v8 = [v7 isCarPlayConnected];

  if (v8)
  {
    v9 = sub_100014EFC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [(MapsLightLevelController *)self externalLightMonitor];
      v11 = [v10 lightLevel];
      if (v11 >= 3)
      {
        v12 = [NSString stringWithFormat:@"<Unknown: %ld>", v11];
      }

      else
      {
        v12 = *(&off_10162D210 + v11);
      }

      *buf = 138412290;
      v28 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Connected to CarPlay and car provided light level: %@", buf, 0xCu);
    }

    v23 = [(MapsLightLevelController *)self externalLightMonitor];
    v6 = [v23 lightLevel];
LABEL_33:

    return v6;
  }

  v13 = [(MapsLightLevelController *)self astronomicalConditionMonitor];
  v14 = [v13 astronomicalCondition];

  v15 = sub_100014EFC();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
  if (v14 != 2)
  {
    if (v16)
    {
      v20 = [(MapsLightLevelController *)self astronomicalConditionMonitor];
      v21 = [v20 astronomicalCondition];
      if (v21 >= 4)
      {
        v22 = [NSString stringWithFormat:@"<Unknown: %ld>", v21];
      }

      else
      {
        v22 = *(&off_10162D228 + v21);
      }

      *buf = 138412290;
      v28 = v22;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Astronomical condition is full Day or Night: %@", buf, 0xCu);
    }

    v23 = [(MapsLightLevelController *)self astronomicalConditionMonitor];
    if ([v23 astronomicalCondition] == 1)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    goto LABEL_33;
  }

  if (v16)
  {
    v17 = [(MapsLightLevelController *)self ambientLightMonitor];
    v18 = [v17 ambientLightLevel];
    if (v18 >= 3)
    {
      v19 = [NSString stringWithFormat:@"<Unknown: %ld>", v18];
    }

    else
    {
      v19 = *(&off_10162D210 + v18);
    }

    *buf = 138412290;
    v28 = v19;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Astronomical condition is transitory, using light level: %@", buf, 0xCu);
  }

  v24 = [(MapsLightLevelController *)self ambientLightMonitor];
  v6 = [v24 ambientLightLevel];

  if (v6)
  {
    if (v6 == 1)
    {
      return v6;
    }

    return 2;
  }

  v25 = sub_100014EFC();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Updated from ambient light at 'Unsupported' to 'Regular'", buf, 2u);
  }

  return 1;
}

- (UIWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

- (void)externalLightMonitorDidUpdate:(id)a3
{
  v4 = [(MapsLightLevelController *)self _computedLightLevel];

  [(MapsLightLevelController *)self setCurrentLightLevel:v4];
}

- (void)astronomicalConditionMonitorDidUpdate:(id)a3
{
  v4 = a3;
  v5 = [v4 astronomicalCondition];
  v6 = [v4 isBeforeSolarTransit];

  v7 = [(MapsLightLevelController *)self ambientLightMonitor];
  [v7 setIsBeforeSolarTransit:v6];

  v8 = sub_100014EFC();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v5 == 2)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Astronomical conditions in transition period", buf, 2u);
    }

    v10 = [(MapsLightLevelController *)self ambientLightMonitor];
    [v10 startMonitoringWithObserver:self];

    v11 = [(MapsLightLevelController *)self ambientLightMonitor];
    [v11 initializeWithLightLevel:{-[MapsLightLevelController currentLightLevel](self, "currentLightLevel")}];
  }

  else
  {
    if (v9)
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Astronomical conditions not in transition period", v12, 2u);
    }

    [(MapsLightLevelController *)self setCurrentLightLevel:[(MapsLightLevelController *)self _computedLightLevel]];
    v11 = [(MapsLightLevelController *)self ambientLightMonitor];
    [v11 stopMonitoringWithObserver:self];
  }
}

- (void)ambientLightMonitorDidUpdate:(id)a3
{
  v4 = [(MapsLightLevelController *)self _computedLightLevel];

  [(MapsLightLevelController *)self setCurrentLightLevel:v4];
}

- (void)lightMonitorDidUpdate:(id)a3
{
  v7 = a3;
  v4 = [(MapsLightLevelController *)self ambientLightMonitor];

  if (v4 == v7)
  {
    [(MapsLightLevelController *)self ambientLightMonitorDidUpdate:v7];
  }

  else
  {
    v5 = [(MapsLightLevelController *)self astronomicalConditionMonitor];

    if (v5 == v7)
    {
      [(MapsLightLevelController *)self astronomicalConditionMonitorDidUpdate:v7];
    }

    else
    {
      v6 = [(MapsLightLevelController *)self externalLightMonitor];

      if (v6 == v7)
      {
        [(MapsLightLevelController *)self externalLightMonitorDidUpdate:v7];
      }
    }
  }
}

- (void)didUpdateMitigationNamed:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1008A7988;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)removeObserver:(id)a3
{
  [(GEOObserverHashTable *)self->_observers unregisterObserver:a3];
  v4 = [(GEOObserverHashTable *)self->_observers hasObservers];

  [(MapsLightLevelController *)self setActive:v4];
}

- (void)addObserver:(id)a3
{
  [(GEOObserverHashTable *)self->_observers registerObserver:a3];

  [(MapsLightLevelController *)self setActive:1];
}

- (void)setCurrentLightLevel:(int64_t)a3 forceUpdate:(BOOL)a4
{
  if (self->_currentLightLevel == a3)
  {
    if (!a4)
    {
      return;
    }

    v6 = sub_100014EFC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      if (a3 >= 3)
      {
        v7 = [NSString stringWithFormat:@"<Unknown: %ld>", a3];
      }

      else
      {
        v7 = *(&off_10162D210 + a3);
      }

      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Force updating light level to %@", buf, 0xCu);
    }
  }

  else
  {
    v8 = sub_100014EFC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      currentLightLevel = self->_currentLightLevel;
      if (currentLightLevel >= 3)
      {
        v10 = [NSString stringWithFormat:@"<Unknown: %ld>", self->_currentLightLevel];
      }

      else
      {
        v10 = *(&off_10162D210 + currentLightLevel);
      }

      v11 = v10;
      if (a3 >= 3)
      {
        v12 = [NSString stringWithFormat:@"<Unknown: %ld>", a3];
      }

      else
      {
        v12 = *(&off_10162D210 + a3);
      }

      *buf = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Changing light level from %@ to %@", buf, 0x16u);
    }

    self->_currentLightLevel = a3;
  }

  [(GEOObserverHashTable *)self->_observers lightLevelController:self didUpdateLightLevel:a3];
}

- (void)setWindowScene:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_windowScene, obj);
    [(MapsExternalDeviceLightMonitor *)self->_externalLightMonitor setWindowScene:obj];
  }
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    v15 = v3;
    v16 = v4;
    v5 = a3;
    v7 = sub_100014EFC();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (v5)
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Activated light level controller", buf, 2u);
      }

      v9 = [(MapsLightLevelController *)self astronomicalConditionMonitor];
      [v9 startMonitoringWithObserver:self];

      v10 = [(MapsLightLevelController *)self externalLightMonitor];
      [v10 startMonitoringWithObserver:self];
    }

    else
    {
      if (v8)
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Deactivated light level controller", v13, 2u);
      }

      v11 = [(MapsLightLevelController *)self ambientLightMonitor];
      [v11 stopMonitoringWithObserver:self];

      v12 = [(MapsLightLevelController *)self astronomicalConditionMonitor];
      [v12 stopMonitoringWithObserver:self];

      v10 = [(MapsLightLevelController *)self externalLightMonitor];
      [v10 stopMonitoringWithObserver:self];
    }

    self->_active = v5;
  }
}

- (MapsLightLevelController)initWithWindowScene:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = MapsLightLevelController;
  v5 = [(MapsLightLevelController *)&v16 init];
  if (v5)
  {
    v6 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___LightLevelObserver queue:&_dispatch_main_q];
    observers = v5->_observers;
    v5->_observers = v6;

    v8 = objc_opt_new();
    ambientLightMonitor = v5->_ambientLightMonitor;
    v5->_ambientLightMonitor = v8;

    v10 = +[MapsAstronomicalConditionMonitor sharedMonitor];
    astronomicalConditionMonitor = v5->_astronomicalConditionMonitor;
    v5->_astronomicalConditionMonitor = v10;

    v12 = [[MapsExternalDeviceLightMonitor alloc] initWithWindowScene:v4];
    externalLightMonitor = v5->_externalLightMonitor;
    v5->_externalLightMonitor = v12;

    v14 = +[MapsThermalPressureController sharedController];
    [v14 addObserver:v5 forMitigationNamed:@"NavigationForceNightModeMitigation"];
  }

  return v5;
}

@end