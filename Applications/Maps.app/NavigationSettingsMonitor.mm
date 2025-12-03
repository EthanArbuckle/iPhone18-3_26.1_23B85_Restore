@interface NavigationSettingsMonitor
- (BOOL)isCarPlay;
- (MNUserOptions)userOptions;
- (NavigationSettingsMonitor)initWithUserDefaults:(id)defaults;
- (int64_t)transportType;
- (void)_localeMetricDidChange:(id)change;
- (void)_startObserving;
- (void)_stopObserving;
- (void)_updateUserOptionsAndNotifyObservers:(BOOL)observers;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setIsCarPlay:(BOOL)play;
- (void)setTransportType:(int64_t)type;
@end

@implementation NavigationSettingsMonitor

- (void)_startObserving
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  if (qword_10195CEB0 != -1)
  {
    dispatch_once(&qword_10195CEB0, &stru_101625D90);
  }

  v3 = qword_10195CEB8;
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        userDefaults = [(NavigationSettingsMonitor *)self userDefaults];
        [userDefaults addObserver:self forKeyPath:v8 options:0 context:&off_101625D88];
      }

      v5 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [&off_1016ED778 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (j = 0; j != v11; j = j + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(&off_1016ED778);
        }

        v14 = *(*(&v18 + 1) + 8 * j);
        userDefaults2 = [(NavigationSettingsMonitor *)self userDefaults];
        [userDefaults2 addObserver:self forKeyPath:v14 options:0 context:&off_101625D88];
      }

      v11 = [&off_1016ED778 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v11);
  }

  v16 = +[NSNotificationCenter defaultCenter];
  v17 = MNLocaleDidChangeNotification();
  [v16 addObserver:self selector:"_localeMetricDidChange:" name:v17 object:0];
}

- (MNUserOptions)userOptions
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NavigationSettingsMonitor *)selfCopy _updateUserOptionsAndNotifyObservers:0];
  v3 = selfCopy->_userOptions;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (!pathCopy || context != &off_101625D88)
  {
    goto LABEL_8;
  }

  if (qword_10195CEB0 != -1)
  {
    dispatch_once(&qword_10195CEB0, &stru_101625D90);
  }

  if (([qword_10195CEB8 containsObject:pathCopy] & 1) != 0 || objc_msgSend(&off_1016ED778, "containsObject:", pathCopy))
  {
    [(NavigationSettingsMonitor *)self _updateUserOptionsAndNotifyObservers:1];
  }

  else
  {
LABEL_8:
    v13.receiver = self;
    v13.super_class = NavigationSettingsMonitor;
    [(NavigationSettingsMonitor *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)_localeMetricDidChange:(id)change
{
  v4 = sub_10001FA1C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "_localeMetricDidChange", v5, 2u);
  }

  [(NavigationSettingsMonitor *)self _updateUserOptionsAndNotifyObservers:1];
}

- (void)_updateUserOptionsAndNotifyObservers:(BOOL)observers
{
  observersCopy = observers;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = +[MNNavigationService sharedService];
  userOptions = [v5 userOptions];
  v7 = [userOptions copy];

  userOptions = selfCopy->_userOptions;
  selfCopy->_userOptions = v7;

  objc_sync_exit(selfCopy);
  if (observersCopy)
  {
    v9 = sub_10001FA1C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [(MNUserOptions *)selfCopy->_userOptions description];
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "NavigationSettingsMonitorDidUpdateSettings fired with %@", &v12, 0xCu);
    }

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 postNotificationName:@"NavigationSettingsMonitorDidUpdateSettings" object:selfCopy];
  }
}

- (void)_stopObserving
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  if (qword_10195CEB0 != -1)
  {
    dispatch_once(&qword_10195CEB0, &stru_101625D90);
  }

  v3 = qword_10195CEB8;
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        userDefaults = [(NavigationSettingsMonitor *)self userDefaults];
        [userDefaults removeObserver:self forKeyPath:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [&off_1016ED778 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (j = 0; j != v11; j = j + 1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(&off_1016ED778);
        }

        v14 = *(*(&v16 + 1) + 8 * j);
        userDefaults2 = [(NavigationSettingsMonitor *)self userDefaults];
        [userDefaults2 removeObserver:self forKeyPath:v14];
      }

      v11 = [&off_1016ED778 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v11);
  }
}

- (void)setTransportType:(int64_t)type
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_transportType != type)
  {
    obj->_transportType = type;
    [(NavigationSettingsMonitor *)obj _updateUserOptionsAndNotifyObservers:1];
  }

  objc_sync_exit(obj);
}

- (int64_t)transportType
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  transportType = selfCopy->_transportType;
  objc_sync_exit(selfCopy);

  return transportType;
}

- (void)setIsCarPlay:(BOOL)play
{
  playCopy = play;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_isCarPlay != playCopy)
  {
    obj->_isCarPlay = playCopy;
    [(NavigationSettingsMonitor *)obj _updateUserOptionsAndNotifyObservers:1];
  }

  objc_sync_exit(obj);
}

- (BOOL)isCarPlay
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  isCarPlay = selfCopy->_isCarPlay;
  objc_sync_exit(selfCopy);

  return isCarPlay;
}

- (void)dealloc
{
  [(NavigationSettingsMonitor *)self _stopObserving];
  v3.receiver = self;
  v3.super_class = NavigationSettingsMonitor;
  [(NavigationSettingsMonitor *)&v3 dealloc];
}

- (NavigationSettingsMonitor)initWithUserDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v9.receiver = self;
  v9.super_class = NavigationSettingsMonitor;
  v6 = [(NavigationSettingsMonitor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userDefaults, defaults);
    [(NavigationSettingsMonitor *)v7 _startObserving];
    [(NavigationSettingsMonitor *)v7 _updateUserOptionsAndNotifyObservers:1];
  }

  return v7;
}

@end