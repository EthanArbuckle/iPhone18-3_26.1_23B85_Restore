@interface MapsLightLevelController
+ (LightLevelProviding)sharedController;
- (MapsLightLevelController)initWithWindowScene:(id)scene;
- (UIWindowScene)windowScene;
- (int64_t)_computedLightLevel;
- (void)addObserver:(id)observer;
- (void)ambientLightMonitorDidUpdate:(id)update;
- (void)astronomicalConditionMonitorDidUpdate:(id)update;
- (void)didUpdateMitigationNamed:(id)named;
- (void)externalLightMonitorDidUpdate:(id)update;
- (void)lightMonitorDidUpdate:(id)update;
- (void)reloadForChangedLightLevelTrackers;
- (void)removeObserver:(id)observer;
- (void)setActive:(BOOL)active;
- (void)setCurrentLightLevel:(int64_t)level forceUpdate:(BOOL)update;
- (void)setWindowScene:(id)scene;
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
  _computedLightLevel = [(MapsLightLevelController *)self _computedLightLevel];

  [(MapsLightLevelController *)self setCurrentLightLevel:_computedLightLevel forceUpdate:1];
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

  externalLightMonitor = [(MapsLightLevelController *)self externalLightMonitor];
  isCarPlayConnected = [externalLightMonitor isCarPlayConnected];

  if (isCarPlayConnected)
  {
    v9 = sub_100014EFC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      externalLightMonitor2 = [(MapsLightLevelController *)self externalLightMonitor];
      lightLevel = [externalLightMonitor2 lightLevel];
      if (lightLevel >= 3)
      {
        v12 = [NSString stringWithFormat:@"<Unknown: %ld>", lightLevel];
      }

      else
      {
        v12 = *(&off_10162D210 + lightLevel);
      }

      *buf = 138412290;
      v28 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Connected to CarPlay and car provided light level: %@", buf, 0xCu);
    }

    externalLightMonitor3 = [(MapsLightLevelController *)self externalLightMonitor];
    lightLevel2 = [externalLightMonitor3 lightLevel];
LABEL_33:

    return lightLevel2;
  }

  astronomicalConditionMonitor = [(MapsLightLevelController *)self astronomicalConditionMonitor];
  astronomicalCondition = [astronomicalConditionMonitor astronomicalCondition];

  v15 = sub_100014EFC();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
  if (astronomicalCondition != 2)
  {
    if (v16)
    {
      astronomicalConditionMonitor2 = [(MapsLightLevelController *)self astronomicalConditionMonitor];
      astronomicalCondition2 = [astronomicalConditionMonitor2 astronomicalCondition];
      if (astronomicalCondition2 >= 4)
      {
        v22 = [NSString stringWithFormat:@"<Unknown: %ld>", astronomicalCondition2];
      }

      else
      {
        v22 = *(&off_10162D228 + astronomicalCondition2);
      }

      *buf = 138412290;
      v28 = v22;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Astronomical condition is full Day or Night: %@", buf, 0xCu);
    }

    externalLightMonitor3 = [(MapsLightLevelController *)self astronomicalConditionMonitor];
    if ([externalLightMonitor3 astronomicalCondition] == 1)
    {
      lightLevel2 = 2;
    }

    else
    {
      lightLevel2 = 1;
    }

    goto LABEL_33;
  }

  if (v16)
  {
    ambientLightMonitor = [(MapsLightLevelController *)self ambientLightMonitor];
    ambientLightLevel = [ambientLightMonitor ambientLightLevel];
    if (ambientLightLevel >= 3)
    {
      v19 = [NSString stringWithFormat:@"<Unknown: %ld>", ambientLightLevel];
    }

    else
    {
      v19 = *(&off_10162D210 + ambientLightLevel);
    }

    *buf = 138412290;
    v28 = v19;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Astronomical condition is transitory, using light level: %@", buf, 0xCu);
  }

  ambientLightMonitor2 = [(MapsLightLevelController *)self ambientLightMonitor];
  lightLevel2 = [ambientLightMonitor2 ambientLightLevel];

  if (lightLevel2)
  {
    if (lightLevel2 == 1)
    {
      return lightLevel2;
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

- (void)externalLightMonitorDidUpdate:(id)update
{
  _computedLightLevel = [(MapsLightLevelController *)self _computedLightLevel];

  [(MapsLightLevelController *)self setCurrentLightLevel:_computedLightLevel];
}

- (void)astronomicalConditionMonitorDidUpdate:(id)update
{
  updateCopy = update;
  astronomicalCondition = [updateCopy astronomicalCondition];
  isBeforeSolarTransit = [updateCopy isBeforeSolarTransit];

  ambientLightMonitor = [(MapsLightLevelController *)self ambientLightMonitor];
  [ambientLightMonitor setIsBeforeSolarTransit:isBeforeSolarTransit];

  v8 = sub_100014EFC();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (astronomicalCondition == 2)
  {
    if (v9)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Astronomical conditions in transition period", buf, 2u);
    }

    ambientLightMonitor2 = [(MapsLightLevelController *)self ambientLightMonitor];
    [ambientLightMonitor2 startMonitoringWithObserver:self];

    ambientLightMonitor3 = [(MapsLightLevelController *)self ambientLightMonitor];
    [ambientLightMonitor3 initializeWithLightLevel:{-[MapsLightLevelController currentLightLevel](self, "currentLightLevel")}];
  }

  else
  {
    if (v9)
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Astronomical conditions not in transition period", v12, 2u);
    }

    [(MapsLightLevelController *)self setCurrentLightLevel:[(MapsLightLevelController *)self _computedLightLevel]];
    ambientLightMonitor3 = [(MapsLightLevelController *)self ambientLightMonitor];
    [ambientLightMonitor3 stopMonitoringWithObserver:self];
  }
}

- (void)ambientLightMonitorDidUpdate:(id)update
{
  _computedLightLevel = [(MapsLightLevelController *)self _computedLightLevel];

  [(MapsLightLevelController *)self setCurrentLightLevel:_computedLightLevel];
}

- (void)lightMonitorDidUpdate:(id)update
{
  updateCopy = update;
  ambientLightMonitor = [(MapsLightLevelController *)self ambientLightMonitor];

  if (ambientLightMonitor == updateCopy)
  {
    [(MapsLightLevelController *)self ambientLightMonitorDidUpdate:updateCopy];
  }

  else
  {
    astronomicalConditionMonitor = [(MapsLightLevelController *)self astronomicalConditionMonitor];

    if (astronomicalConditionMonitor == updateCopy)
    {
      [(MapsLightLevelController *)self astronomicalConditionMonitorDidUpdate:updateCopy];
    }

    else
    {
      externalLightMonitor = [(MapsLightLevelController *)self externalLightMonitor];

      if (externalLightMonitor == updateCopy)
      {
        [(MapsLightLevelController *)self externalLightMonitorDidUpdate:updateCopy];
      }
    }
  }
}

- (void)didUpdateMitigationNamed:(id)named
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1008A7988;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)removeObserver:(id)observer
{
  [(GEOObserverHashTable *)self->_observers unregisterObserver:observer];
  hasObservers = [(GEOObserverHashTable *)self->_observers hasObservers];

  [(MapsLightLevelController *)self setActive:hasObservers];
}

- (void)addObserver:(id)observer
{
  [(GEOObserverHashTable *)self->_observers registerObserver:observer];

  [(MapsLightLevelController *)self setActive:1];
}

- (void)setCurrentLightLevel:(int64_t)level forceUpdate:(BOOL)update
{
  if (self->_currentLightLevel == level)
  {
    if (!update)
    {
      return;
    }

    v6 = sub_100014EFC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      if (level >= 3)
      {
        level = [NSString stringWithFormat:@"<Unknown: %ld>", level];
      }

      else
      {
        level = *(&off_10162D210 + level);
      }

      *buf = 138412290;
      v14 = level;
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
      if (level >= 3)
      {
        level2 = [NSString stringWithFormat:@"<Unknown: %ld>", level];
      }

      else
      {
        level2 = *(&off_10162D210 + level);
      }

      *buf = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = level2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Changing light level from %@ to %@", buf, 0x16u);
    }

    self->_currentLightLevel = level;
  }

  [(GEOObserverHashTable *)self->_observers lightLevelController:self didUpdateLightLevel:level];
}

- (void)setWindowScene:(id)scene
{
  obj = scene;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_windowScene, obj);
    [(MapsExternalDeviceLightMonitor *)self->_externalLightMonitor setWindowScene:obj];
  }
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    v15 = v3;
    v16 = v4;
    activeCopy = active;
    v7 = sub_100014EFC();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
    if (activeCopy)
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Activated light level controller", buf, 2u);
      }

      astronomicalConditionMonitor = [(MapsLightLevelController *)self astronomicalConditionMonitor];
      [astronomicalConditionMonitor startMonitoringWithObserver:self];

      externalLightMonitor = [(MapsLightLevelController *)self externalLightMonitor];
      [externalLightMonitor startMonitoringWithObserver:self];
    }

    else
    {
      if (v8)
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Deactivated light level controller", v13, 2u);
      }

      ambientLightMonitor = [(MapsLightLevelController *)self ambientLightMonitor];
      [ambientLightMonitor stopMonitoringWithObserver:self];

      astronomicalConditionMonitor2 = [(MapsLightLevelController *)self astronomicalConditionMonitor];
      [astronomicalConditionMonitor2 stopMonitoringWithObserver:self];

      externalLightMonitor = [(MapsLightLevelController *)self externalLightMonitor];
      [externalLightMonitor stopMonitoringWithObserver:self];
    }

    self->_active = activeCopy;
  }
}

- (MapsLightLevelController)initWithWindowScene:(id)scene
{
  sceneCopy = scene;
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

    v12 = [[MapsExternalDeviceLightMonitor alloc] initWithWindowScene:sceneCopy];
    externalLightMonitor = v5->_externalLightMonitor;
    v5->_externalLightMonitor = v12;

    v14 = +[MapsThermalPressureController sharedController];
    [v14 addObserver:v5 forMitigationNamed:@"NavigationForceNightModeMitigation"];
  }

  return v5;
}

@end