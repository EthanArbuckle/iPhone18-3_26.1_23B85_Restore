@interface BCLightLevelController
+ (id)sharedInstance;
+ (void)preWarm;
- (BCLightLevelController)init;
- (BOOL)_sensorAvailable;
- (BOOL)_sensorShouldBeAvailable;
- (BOOL)shouldMonitorLightLevel;
- (int64_t)_luxToLightLevel:(float)level;
- (int64_t)currentLightLevel;
- (void)_notifyLightLevelChange;
- (void)_startMonitoring;
- (void)_stopMonitoring;
- (void)_updateCurrentLightLevel:(int64_t)level force:(BOOL)force;
- (void)_updateStatsAndLightLevelNow;
- (void)addObserver:(id)observer changeHandler:(id)handler;
- (void)dealloc;
- (void)emulateCurrentLightLevelChange:(int64_t)change;
- (void)removeObserver:(id)observer;
@end

@implementation BCLightLevelController

+ (void)preWarm
{
  v2 = +[BCLightLevelController sharedInstance];
  [v2 _startMonitoring];
}

+ (id)sharedInstance
{
  if (qword_342900 != -1)
  {
    sub_1E9EB0();
  }

  v3 = qword_3428F8;

  return v3;
}

- (BCLightLevelController)init
{
  v6.receiver = self;
  v6.super_class = BCLightLevelController;
  v2 = [(BCLightLevelController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(BrightnessSystemClient);
    client = v2->_client;
    v2->_client = v3;

    v2->_emulatedLightLevel = 0;
    v2->_currentLightLevel = 0;
  }

  return v2;
}

- (void)dealloc
{
  [(BCLightLevelController *)self _stopMonitoring];
  v3.receiver = self;
  v3.super_class = BCLightLevelController;
  [(BCLightLevelController *)&v3 dealloc];
}

- (BOOL)_sensorAvailable
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_E4530;
  block[3] = &unk_2C7FE0;
  block[4] = self;
  if (qword_342910 != -1)
  {
    dispatch_once(&qword_342910, block);
  }

  return byte_342908;
}

- (BOOL)_sensorShouldBeAvailable
{
  if (qword_342920 != -1)
  {
    sub_1E9EC4();
  }

  return byte_342918;
}

- (BOOL)shouldMonitorLightLevel
{
  _sensorAvailable = [(BCLightLevelController *)self _sensorAvailable];
  if (_sensorAvailable)
  {

    LOBYTE(_sensorAvailable) = [(BCLightLevelController *)self _sensorShouldBeAvailable];
  }

  return _sensorAvailable;
}

- (void)addObserver:(id)observer changeHandler:(id)handler
{
  observerCopy = observer;
  handlerCopy = handler;
  observers = self->_observers;
  if (!observers)
  {
    v8 = +[NSMapTable weakToStrongObjectsMapTable];
    v9 = self->_observers;
    self->_observers = v8;

    observers = self->_observers;
  }

  v10 = [handlerCopy copy];
  [(NSMapTable *)observers setObject:v10 forKey:observerCopy];

  [(BCLightLevelController *)self _startMonitoring];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  [(NSMapTable *)self->_observers removeObjectForKey:?];
  if (![(NSMapTable *)self->_observers count])
  {
    [(BCLightLevelController *)self _stopMonitoring];
  }
}

- (int64_t)currentLightLevel
{
  result = self->_emulatedLightLevel;
  if (!result)
  {
    return self->_currentLightLevel;
  }

  return result;
}

- (void)emulateCurrentLightLevelChange:(int64_t)change
{
  currentLightLevel = [(BCLightLevelController *)self currentLightLevel];
  self->_emulatedLightLevel = change;
  if (currentLightLevel != [(BCLightLevelController *)self currentLightLevel])
  {

    [(BCLightLevelController *)self _notifyLightLevelChange];
  }
}

- (void)_updateCurrentLightLevel:(int64_t)level force:(BOOL)force
{
  currentLightLevel = [(BCLightLevelController *)self currentLightLevel];
  if (force || level && self->_currentLightLevel != level)
  {
    self->_currentLightLevel = level;
  }

  if (currentLightLevel != [(BCLightLevelController *)self currentLightLevel])
  {
    v8 = _BCLightLevelLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (currentLightLevel == &dword_0 + 1)
      {
        v9 = @"regular";
      }

      else
      {
        v9 = @"unknown";
      }

      if (currentLightLevel == &dword_0 + 2)
      {
        v9 = @"low";
      }

      v10 = v9;
      if (level == 1)
      {
        v11 = @"regular";
      }

      else
      {
        v11 = @"unknown";
      }

      if (level == 2)
      {
        v11 = @"low";
      }

      v12 = v11;
      v13 = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "_notifyLightLevelChange old:%@ new: %@", &v13, 0x16u);
    }

    [(BCLightLevelController *)self _notifyLightLevelChange];
  }
}

- (void)_notifyLightLevelChange
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"BCLightLevelChangedNotification" object:self];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  keyEnumerator = [(NSMapTable *)self->_observers keyEnumerator];
  v5 = [keyEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [(NSMapTable *)self->_observers objectForKey:v8];
        (v9)[2](v9, self, v8);
      }

      v5 = [keyEnumerator countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (int64_t)_luxToLightLevel:(float)level
{
  if (level < 0.0)
  {
    return 0;
  }

  if (level <= 2.5)
  {
    return 2;
  }

  return level >= 20.0;
}

- (void)_updateStatsAndLightLevelNow
{
  if ([(BCLightLevelController *)self shouldMonitorLightLevel])
  {
    v3 = [(BrightnessSystemClient *)self->_client copyPropertyForKey:@"TrustedLux"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v5 = _BCLightLevelLog();
    v6 = v5;
    if (isKindOfClass)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = v3;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "_updateStatsAndLightLevelNow: lux value: %@", &v11, 0xCu);
      }

      [v3 floatValue];
      v7 = [(BCLightLevelController *)self _luxToLightLevel:?];
      if (v7 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v7;
      }

      [(BCLightLevelController *)self _updateCurrentLightLevel:v8 force:1];
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = 138412290;
        v12 = v10;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "Object for 'kCBTrustedLux' was '%@' and not NSNumber like expected", &v11, 0xCu);
      }
    }
  }
}

- (void)_startMonitoring
{
  if (!self->_monitoring && [(BCLightLevelController *)self shouldMonitorLightLevel])
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    v4 = [v3 BOOLForKey:@"BCShouldOverrideNightMode"];

    client = self->_client;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_E4E88;
    v8[3] = &unk_2CD2E0;
    v9 = v4;
    v8[4] = self;
    [(BrightnessSystemClient *)client registerNotificationBlock:v8 forProperties:&off_2EBDC0];
    self->_monitoring = 1;
    [(BCLightLevelController *)self _updateStatsAndLightLevelNow];
    v6 = _BCLightLevelLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Light Level Monitoring Started", v7, 2u);
    }
  }
}

- (void)_stopMonitoring
{
  client = self->_client;
  if (client)
  {
    [(BrightnessSystemClient *)client registerNotificationBlock:0 forProperties:0];
    v4 = _BCLightLevelLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Light Level Monitoring Stopped", v5, 2u);
    }
  }

  self->_monitoring = 0;
}

@end