@interface CBSensorActivityDataProvider
- (CBSensorActivityAttribution)mostRecentCameraAndMicrophoneSensorActivityAttribution;
- (CBSensorActivityDataProvider)init;
- (CBSensorActivityDataProvider)initWithSystemStatusServer:(id)a3;
- (NSSet)activeAndRecentSensorActivityAttributions;
- (NSSet)activeCameraAndMicrophoneActivityAttributions;
- (id)_recentCameraAndMicrophoneActivityAttributions;
- (void)_handleNewDomainData:(id)a3;
- (void)_notifyObserversOfActivityChange;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)removeObserver:(id)a3;
@end

@implementation CBSensorActivityDataProvider

- (CBSensorActivityDataProvider)init
{
  v3 = +[NSNull null];
  v4 = [(CBSensorActivityDataProvider *)self initWithSystemStatusServer:v3];

  return v4;
}

- (CBSensorActivityDataProvider)initWithSystemStatusServer:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CBSensorActivityDataProvider;
  v5 = [(CBSensorActivityDataProvider *)&v17 init];
  if (v5)
  {
    v6 = [[STUIDataAccessStatusDomain alloc] initWithServerHandle:v4];
    dataAccessDomain = v5->_dataAccessDomain;
    v5->_dataAccessDomain = v6;

    v8 = CheckerBoardLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v5->_dataAccessDomain;
      *buf = 138412290;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Initializing CBSensorActivityDataProvider with dataAccessDomain %@", buf, 0xCu);
    }

    objc_initWeak(buf, v5);
    v10 = v5->_dataAccessDomain;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100013DA8;
    v15[3] = &unk_10007DAC8;
    objc_copyWeak(&v16, buf);
    [(STUIDataAccessStatusDomain *)v10 observeDataWithBlock:v15];
    v11 = +[NSHashTable weakObjectsHashTable];
    observers = v5->_observers;
    v5->_observers = v11;

    v13 = [(STUIDataAccessStatusDomain *)v5->_dataAccessDomain data];
    [(CBSensorActivityDataProvider *)v5 _handleNewDomainData:v13];

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }

  return v5;
}

- (void)dealloc
{
  [(STUIDataAccessStatusDomain *)self->_dataAccessDomain invalidate];
  v3.receiver = self;
  v3.super_class = CBSensorActivityDataProvider;
  [(CBSensorActivityDataProvider *)&v3 dealloc];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Adding sensor activity data provider observer %@", &v7, 0xCu);
  }

  v6 = [(CBSensorActivityDataProvider *)self observers];
  [v6 addObject:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing sensor activity data provider observer %@", &v7, 0xCu);
  }

  v6 = [(CBSensorActivityDataProvider *)self observers];
  [v6 removeObject:v4];
}

- (NSSet)activeAndRecentSensorActivityAttributions
{
  v3 = [(CBSensorActivityDataProvider *)self activeSensorActivityAttributions];
  v4 = [v3 mutableCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = +[NSMutableSet set];
  }

  v7 = v6;

  v8 = [(CBSensorActivityDataProvider *)self recentSensorActivityAttributions];
  [v7 unionSet:v8];

  v9 = [v7 copy];

  return v9;
}

- (NSSet)activeCameraAndMicrophoneActivityAttributions
{
  v2 = [(CBSensorActivityDataProvider *)self activeSensorActivityAttributions];
  v3 = [v2 objectsPassingTest:&stru_10007DB08];

  return v3;
}

- (CBSensorActivityAttribution)mostRecentCameraAndMicrophoneSensorActivityAttribution
{
  v2 = [(CBSensorActivityDataProvider *)self _recentCameraAndMicrophoneActivityAttributions];
  v3 = [v2 lastObject];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if (v9 != v3)
        {
          v10 = [*(*(&v14 + 1) + 8 * i) bundleIdentifier];
          v11 = [v3 bundleIdentifier];
          if ([v10 isEqualToString:v11])
          {
            v12 = [v9 sensor];

            if (v12)
            {
              continue;
            }

            v10 = v3;
            v3 = v9;
          }

          else
          {
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)_recentCameraAndMicrophoneActivityAttributions
{
  v2 = [(CBSensorActivityDataProvider *)self recentSensorActivityAttributions];
  v3 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (![v9 sensor] || objc_msgSend(v9, "sensor") == 1)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (void)_handleNewDomainData:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 activeAttributionData];
    v7 = [v6 dataAccessAttributions];

    v8 = [v7 bs_map:&stru_10007DB48];
    v9 = [NSSet setWithArray:v8];

    [(CBSensorActivityDataProvider *)self setActiveSensorActivityAttributions:v9];
    v10 = [v5 recentAttributionData];
    v11 = [v10 dataAccessAttributions];

    v12 = [v11 bs_map:&stru_10007DB68];
    v13 = [NSSet setWithArray:v12];

    [(CBSensorActivityDataProvider *)self setRecentSensorActivityAttributions:v13];
  }

  else
  {
    v14 = +[NSSet set];
    [(CBSensorActivityDataProvider *)self setActiveSensorActivityAttributions:v14];

    v7 = +[NSSet set];
    [(CBSensorActivityDataProvider *)self setRecentSensorActivityAttributions:v7];
  }

  v15 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Notifying sensor activity data provider observers of activity change", v16, 2u);
  }

  [(CBSensorActivityDataProvider *)self _notifyObserversOfActivityChange];
}

- (void)_notifyObserversOfActivityChange
{
  v3 = [(CBSensorActivityDataProvider *)self observers];
  v4 = [v3 copy];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) activityDidChangeForSensorActivityDataProvider:{self, v10}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end