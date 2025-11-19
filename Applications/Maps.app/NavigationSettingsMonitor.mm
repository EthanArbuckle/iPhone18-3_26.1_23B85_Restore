@interface NavigationSettingsMonitor
- (BOOL)isCarPlay;
- (MNUserOptions)userOptions;
- (NavigationSettingsMonitor)initWithUserDefaults:(id)a3;
- (int64_t)transportType;
- (void)_localeMetricDidChange:(id)a3;
- (void)_startObserving;
- (void)_stopObserving;
- (void)_updateUserOptionsAndNotifyObservers:(BOOL)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setIsCarPlay:(BOOL)a3;
- (void)setTransportType:(int64_t)a3;
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
        v9 = [(NavigationSettingsMonitor *)self userDefaults];
        [v9 addObserver:self forKeyPath:v8 options:0 context:&off_101625D88];
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
        v15 = [(NavigationSettingsMonitor *)self userDefaults];
        [v15 addObserver:self forKeyPath:v14 options:0 context:&off_101625D88];
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
  v2 = self;
  objc_sync_enter(v2);
  [(NavigationSettingsMonitor *)v2 _updateUserOptionsAndNotifyObservers:0];
  v3 = v2->_userOptions;
  objc_sync_exit(v2);

  return v3;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v10 || a6 != &off_101625D88)
  {
    goto LABEL_8;
  }

  if (qword_10195CEB0 != -1)
  {
    dispatch_once(&qword_10195CEB0, &stru_101625D90);
  }

  if (([qword_10195CEB8 containsObject:v10] & 1) != 0 || objc_msgSend(&off_1016ED778, "containsObject:", v10))
  {
    [(NavigationSettingsMonitor *)self _updateUserOptionsAndNotifyObservers:1];
  }

  else
  {
LABEL_8:
    v13.receiver = self;
    v13.super_class = NavigationSettingsMonitor;
    [(NavigationSettingsMonitor *)&v13 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)_localeMetricDidChange:(id)a3
{
  v4 = sub_10001FA1C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "_localeMetricDidChange", v5, 2u);
  }

  [(NavigationSettingsMonitor *)self _updateUserOptionsAndNotifyObservers:1];
}

- (void)_updateUserOptionsAndNotifyObservers:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = +[MNNavigationService sharedService];
  v6 = [v5 userOptions];
  v7 = [v6 copy];

  userOptions = v4->_userOptions;
  v4->_userOptions = v7;

  objc_sync_exit(v4);
  if (v3)
  {
    v9 = sub_10001FA1C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [(MNUserOptions *)v4->_userOptions description];
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "NavigationSettingsMonitorDidUpdateSettings fired with %@", &v12, 0xCu);
    }

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 postNotificationName:@"NavigationSettingsMonitorDidUpdateSettings" object:v4];
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
        v9 = [(NavigationSettingsMonitor *)self userDefaults];
        [v9 removeObserver:self forKeyPath:v8];
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
        v15 = [(NavigationSettingsMonitor *)self userDefaults];
        [v15 removeObserver:self forKeyPath:v14];
      }

      v11 = [&off_1016ED778 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v11);
  }
}

- (void)setTransportType:(int64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_transportType != a3)
  {
    obj->_transportType = a3;
    [(NavigationSettingsMonitor *)obj _updateUserOptionsAndNotifyObservers:1];
  }

  objc_sync_exit(obj);
}

- (int64_t)transportType
{
  v2 = self;
  objc_sync_enter(v2);
  transportType = v2->_transportType;
  objc_sync_exit(v2);

  return transportType;
}

- (void)setIsCarPlay:(BOOL)a3
{
  v3 = a3;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_isCarPlay != v3)
  {
    obj->_isCarPlay = v3;
    [(NavigationSettingsMonitor *)obj _updateUserOptionsAndNotifyObservers:1];
  }

  objc_sync_exit(obj);
}

- (BOOL)isCarPlay
{
  v2 = self;
  objc_sync_enter(v2);
  isCarPlay = v2->_isCarPlay;
  objc_sync_exit(v2);

  return isCarPlay;
}

- (void)dealloc
{
  [(NavigationSettingsMonitor *)self _stopObserving];
  v3.receiver = self;
  v3.super_class = NavigationSettingsMonitor;
  [(NavigationSettingsMonitor *)&v3 dealloc];
}

- (NavigationSettingsMonitor)initWithUserDefaults:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NavigationSettingsMonitor;
  v6 = [(NavigationSettingsMonitor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userDefaults, a3);
    [(NavigationSettingsMonitor *)v7 _startObserving];
    [(NavigationSettingsMonitor *)v7 _updateUserOptionsAndNotifyObservers:1];
  }

  return v7;
}

@end