@interface CBSensorActivityDataProvider
- (CBSensorActivityAttribution)mostRecentCameraAndMicrophoneSensorActivityAttribution;
- (CBSensorActivityDataProvider)init;
- (CBSensorActivityDataProvider)initWithSystemStatusServer:(id)server;
- (NSSet)activeAndRecentSensorActivityAttributions;
- (NSSet)activeCameraAndMicrophoneActivityAttributions;
- (id)_recentCameraAndMicrophoneActivityAttributions;
- (void)_handleNewDomainData:(id)data;
- (void)_notifyObserversOfActivityChange;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)removeObserver:(id)observer;
@end

@implementation CBSensorActivityDataProvider

- (CBSensorActivityDataProvider)init
{
  v3 = +[NSNull null];
  v4 = [(CBSensorActivityDataProvider *)self initWithSystemStatusServer:v3];

  return v4;
}

- (CBSensorActivityDataProvider)initWithSystemStatusServer:(id)server
{
  serverCopy = server;
  v17.receiver = self;
  v17.super_class = CBSensorActivityDataProvider;
  v5 = [(CBSensorActivityDataProvider *)&v17 init];
  if (v5)
  {
    v6 = [[STUIDataAccessStatusDomain alloc] initWithServerHandle:serverCopy];
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

    data = [(STUIDataAccessStatusDomain *)v5->_dataAccessDomain data];
    [(CBSensorActivityDataProvider *)v5 _handleNewDomainData:data];

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

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = observerCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Adding sensor activity data provider observer %@", &v7, 0xCu);
  }

  observers = [(CBSensorActivityDataProvider *)self observers];
  [observers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  v5 = CheckerBoardLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = observerCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing sensor activity data provider observer %@", &v7, 0xCu);
  }

  observers = [(CBSensorActivityDataProvider *)self observers];
  [observers removeObject:observerCopy];
}

- (NSSet)activeAndRecentSensorActivityAttributions
{
  activeSensorActivityAttributions = [(CBSensorActivityDataProvider *)self activeSensorActivityAttributions];
  v4 = [activeSensorActivityAttributions mutableCopy];
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

  recentSensorActivityAttributions = [(CBSensorActivityDataProvider *)self recentSensorActivityAttributions];
  [v7 unionSet:recentSensorActivityAttributions];

  v9 = [v7 copy];

  return v9;
}

- (NSSet)activeCameraAndMicrophoneActivityAttributions
{
  activeSensorActivityAttributions = [(CBSensorActivityDataProvider *)self activeSensorActivityAttributions];
  v3 = [activeSensorActivityAttributions objectsPassingTest:&stru_10007DB08];

  return v3;
}

- (CBSensorActivityAttribution)mostRecentCameraAndMicrophoneSensorActivityAttribution
{
  _recentCameraAndMicrophoneActivityAttributions = [(CBSensorActivityDataProvider *)self _recentCameraAndMicrophoneActivityAttributions];
  lastObject = [_recentCameraAndMicrophoneActivityAttributions lastObject];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = _recentCameraAndMicrophoneActivityAttributions;
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
        if (v9 != lastObject)
        {
          bundleIdentifier = [*(*(&v14 + 1) + 8 * i) bundleIdentifier];
          bundleIdentifier2 = [lastObject bundleIdentifier];
          if ([bundleIdentifier isEqualToString:bundleIdentifier2])
          {
            sensor = [v9 sensor];

            if (sensor)
            {
              continue;
            }

            bundleIdentifier = lastObject;
            lastObject = v9;
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

  return lastObject;
}

- (id)_recentCameraAndMicrophoneActivityAttributions
{
  recentSensorActivityAttributions = [(CBSensorActivityDataProvider *)self recentSensorActivityAttributions];
  v3 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = recentSensorActivityAttributions;
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

- (void)_handleNewDomainData:(id)data
{
  dataCopy = data;
  v5 = dataCopy;
  if (dataCopy)
  {
    activeAttributionData = [dataCopy activeAttributionData];
    dataAccessAttributions = [activeAttributionData dataAccessAttributions];

    v8 = [dataAccessAttributions bs_map:&stru_10007DB48];
    v9 = [NSSet setWithArray:v8];

    [(CBSensorActivityDataProvider *)self setActiveSensorActivityAttributions:v9];
    recentAttributionData = [v5 recentAttributionData];
    dataAccessAttributions2 = [recentAttributionData dataAccessAttributions];

    v12 = [dataAccessAttributions2 bs_map:&stru_10007DB68];
    v13 = [NSSet setWithArray:v12];

    [(CBSensorActivityDataProvider *)self setRecentSensorActivityAttributions:v13];
  }

  else
  {
    v14 = +[NSSet set];
    [(CBSensorActivityDataProvider *)self setActiveSensorActivityAttributions:v14];

    dataAccessAttributions = +[NSSet set];
    [(CBSensorActivityDataProvider *)self setRecentSensorActivityAttributions:dataAccessAttributions];
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
  observers = [(CBSensorActivityDataProvider *)self observers];
  v4 = [observers copy];

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