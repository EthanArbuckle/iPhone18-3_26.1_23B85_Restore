@interface AKBAATimeProvider
+ (id)sharedInstance;
- (AKBAATimeProvider)init;
- (BOOL)_shouldUpdateTimeConfigWithNewTime:(double)a3;
- (double)_adjustedEpoch;
- (double)_calculateTimeUsingConfig:(id)a3;
- (double)_epochFromServerTime:(id)a3;
- (double)_systemEpochTime;
- (id)_extractServerTimeFromResponseHeaders:(id)a3;
- (id)adjustedDeviceTime;
- (id)internalTimeInfo;
- (unint64_t)addServerAdjustment:(id)a3;
- (void)_loadBAATimeConfig;
- (void)_refreshAutomaticTimeState;
- (void)_startListeningForAutomaticTimeStatusNotification;
- (void)_stopListeningForAutomaticTimeStatusNotification;
- (void)dealloc;
- (void)updateTimeFromResponseHeaders:(id)a3;
@end

@implementation AKBAATimeProvider

- (id)adjustedDeviceTime
{
  v6[3] = self;
  v6[2] = a2;
  [(AKBAATimeProvider *)self _adjustedEpoch];
  v6[1] = v2;
  v4 = [NSNumber numberWithLongLong:(*&v2 * 1000.0)];
  v6[0] = [(NSNumber *)v4 stringValue];
  _objc_release(v4);
  v5 = _objc_retain(v6[0]);
  objc_storeStrong(v6, 0);

  return v5;
}

+ (id)sharedInstance
{
  v5 = &unk_100374940;
  location = 0;
  objc_storeStrong(&location, &stru_100325438);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_100374948;

  return v2;
}

- (double)_systemEpochTime
{
  v4 = [(AKBAATimeProvider *)self _currentSystemDate];
  [v4 timeIntervalSince1970];
  v5 = v2;
  _objc_release(v4);
  return v5;
}

- (AKBAATimeProvider)init
{
  v8 = a2;
  v9 = 0;
  v7.receiver = self;
  v7.super_class = AKBAATimeProvider;
  v9 = [(AKBAATimeProvider *)&v7 init];
  objc_storeStrong(&v9, v9);
  if (v9)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2 = dispatch_queue_create("com.apple.akd.timeProviderQ", v6);
    timeProviderQueue = v9->_timeProviderQueue;
    v9->_timeProviderQueue = v2;
    _objc_release(timeProviderQueue);
    _objc_release(v6);
    [(AKBAATimeProvider *)v9 _loadBAATimeConfig];
    [(AKBAATimeProvider *)v9 _startListeningForAutomaticTimeStatusNotification];
    [(AKBAATimeProvider *)v9 _refreshAutomaticTimeState];
  }

  v5 = _objc_retain(v9);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  [(AKBAATimeProvider *)self _stopListeningForAutomaticTimeStatusNotification];
  v2.receiver = v4;
  v2.super_class = AKBAATimeProvider;
  [(AKBAATimeProvider *)&v2 dealloc];
}

- (void)_loadBAATimeConfig
{
  v23 = self;
  v22[1] = a2;
  v11 = +[AKConfiguration sharedConfiguration];
  v22[0] = [v11 configurationValueForKey:@"timeConfig" useDomain:1];
  _objc_release(v11);
  if (v22[0])
  {
    v20 = 0;
    v2 = objc_opt_class();
    v18 = v20;
    v10 = [NSKeyedUnarchiver unarchivedObjectOfClass:v2 fromData:v22[0] error:&v18];
    objc_storeStrong(&v20, v18);
    v19 = v10;
    if (v20)
    {
      v17 = _AKLogSystem();
      v16 = 16;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        log = v17;
        type = v16;
        sub_10001CEEC(v15);
        _os_log_error_impl(&_mh_execute_header, log, type, "Could not unarchive time sync config", v15, 2u);
      }

      objc_storeStrong(&v17, 0);
      v21 = 1;
    }

    else
    {
      [(AKBAATimeProvider *)v23 _monotonicClock];
      v14[1] = v3;
      v7 = *&v3;
      [v19 lastLocalTimeInterval];
      if (v7 >= v4)
      {
        objc_storeStrong(&v23->_baaTimeConfig, v19);
        v21 = 0;
      }

      else
      {
        v14[0] = _AKLogSystem();
        v13 = 16;
        if (os_log_type_enabled(v14[0], OS_LOG_TYPE_ERROR))
        {
          v5 = v14[0];
          v6 = v13;
          sub_10001CEEC(v12);
          _os_log_error_impl(&_mh_execute_header, v5, v6, "System monotonic time less than stored. Monotonic likely reset and cannot be trusted.", v12, 2u);
        }

        objc_storeStrong(v14, 0);
        v21 = 1;
      }
    }

    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v20, 0);
  }

  else
  {
    v21 = 1;
  }

  objc_storeStrong(v22, 0);
}

- (double)_adjustedEpoch
{
  v6 = self;
  location[1] = a2;
  location[0] = [(AKBAATimeProvider *)self baaTimeConfig];
  if ([(AKBAATimeProvider *)v6 automaticTimeState]!= 1 && location[0])
  {
    [(AKBAATimeProvider *)v6 _calculateTimeUsingConfig:location[0]];
    v7 = v3;
  }

  else
  {
    [(AKBAATimeProvider *)v6 _systemEpochTime];
    v7 = v2;
  }

  objc_storeStrong(location, 0);
  return v7;
}

- (id)internalTimeInfo
{
  v14 = self;
  v13[1] = a2;
  v9 = +[AKDevice currentDevice];
  v13[0] = [v9 bootSessionUUID];
  _objc_release(v9);
  location = [(AKBAATimeProvider *)v14 baaTimeConfig];
  if (location)
  {
    [(AKBAATimeProvider *)v14 _systemEpochTime];
    v10 = (v2 * 1000.0);
    [(AKBAATimeProvider *)v14 _calculateTimeUsingConfig:location];
    v11 = v10 - (v3 * 1000.0);
    v7 = [(AKBAATimeProvider *)v14 baaTimeConfig];
    v6 = [(AKBAATimeConfig *)v7 bootSessionUUID];
    v8 = [v13[0] isEqual:?];
    _objc_release(v6);
    _objc_release(v7);
    v15 = [NSString stringWithFormat:@"ats:%li;diff:%lli;sameBoot:%i", [(AKBAATimeProvider *)v14 automaticTimeState], v11, v8 & 1];
  }

  else
  {
    v15 = 0;
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(v13, 0);
  v4 = v15;

  return v4;
}

- (void)updateTimeFromResponseHeaders:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(AKBAATimeProvider *)v5 _extractServerTimeFromResponseHeaders:location[0]];
  [(AKBAATimeProvider *)v5 addServerAdjustment:v3];
  objc_storeStrong(&v3, 0);
  objc_storeStrong(location, 0);
}

- (unint64_t)addServerAdjustment:(id)a3
{
  v30 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    [(AKBAATimeProvider *)v30 _epochFromServerTime:location[0]];
    v27 = v3;
    if (v3 >= 1704067200.0)
    {
      if ([(AKBAATimeProvider *)v30 _shouldUpdateTimeConfigWithNewTime:v27])
      {
        [(AKBAATimeProvider *)v30 _monotonicClock];
        v23 = v4;
        v9 = [AKBAATimeConfig alloc];
        v11 = +[AKDevice currentDevice];
        v10 = [v11 bootSessionUUID];
        v22 = [(AKBAATimeConfig *)v9 initWithServerTimeInterval:v27 localTimeInterval:v23 bootSessionUUID:?];
        _objc_release(0);
        _objc_release(v10);
        _objc_release(v11);
        v21 = 0;
        v19 = 0;
        v12 = [NSKeyedArchiver archivedDataWithRootObject:v22 requiringSecureCoding:1 error:&v19];
        objc_storeStrong(&v21, v19);
        v20 = v12;
        if (v21)
        {
          v18 = _AKLogSystem();
          v17 = 16;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v7 = v18;
            v8 = v17;
            sub_10001CEEC(v16);
            _os_log_error_impl(&_mh_execute_header, v7, v8, "Could not archive time sync config", v16, 2u);
          }

          objc_storeStrong(&v18, 0);
        }

        v6 = +[AKConfiguration sharedConfiguration];
        [v6 setDomainConfigurationValue:v20 forKey:@"timeConfig"];
        _objc_release(v6);
        [(AKBAATimeProvider *)v30 setBaaTimeConfig:v22];
        oslog = _AKLogSystem();
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000194D4(v32, v22);
          _os_log_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEFAULT, "Setting time config - %@", v32, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        v31 = 1;
        v28 = 1;
        objc_storeStrong(&v20, 0);
        objc_storeStrong(&v21, 0);
        objc_storeStrong(&v22, 0);
      }

      else
      {
        v26 = _AKLogSystem();
        v25 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          log = v26;
          type = v25;
          sub_10001CEEC(v24);
          _os_log_impl(&_mh_execute_header, log, type, "Skipping time config update", v24, 2u);
        }

        objc_storeStrong(&v26, 0);
        v31 = 2;
        v28 = 1;
      }
    }

    else
    {
      v31 = 0;
      v28 = 1;
    }
  }

  else
  {
    v31 = 0;
    v28 = 1;
  }

  objc_storeStrong(location, 0);
  return v31;
}

- (id)_extractServerTimeFromResponseHeaders:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [location[0] objectForKeyedSubscript:AKHTTPResponseHeaderServerTimeKey];
  if (![v7 length])
  {
    v3 = [location[0] objectForKeyedSubscript:AKHTTPResponseHeaderGenericServerTimeKey];
    v4 = v7;
    v7 = v3;
    _objc_release(v4);
  }

  v6 = _objc_retain(v7);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v6;
}

- (double)_epochFromServerTime:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] length])
  {
    v7 = [location[0] ak_numberObject];
    if (v7)
    {
      v6 = [v7 longLongValue] / 1000;
      v10 = v6;
      v8 = 1;
    }

    else
    {
      v5 = [NSDate ak_dateFromString:location[0]];
      if (!v5)
      {
        v5 = [NSDate ak_dateFromRFC2822String:location[0]];
        _objc_release(0);
      }

      [v5 timeIntervalSince1970];
      v10 = v3;
      v8 = 1;
      objc_storeStrong(&v5, 0);
    }

    objc_storeStrong(&v7, 0);
  }

  else
  {
    v10 = 0.0;
    v8 = 1;
  }

  objc_storeStrong(location, 0);
  return v10;
}

- (void)_refreshAutomaticTimeState
{
  v8[2] = self;
  v8[1] = a2;
  queue = self->_timeProviderQueue;
  v3 = _NSConcreteStackBlock;
  v4 = -1073741824;
  v5 = 0;
  v6 = sub_100180FC0;
  v7 = &unk_10031F8B0;
  v8[0] = _objc_retain(self);
  dispatch_async(queue, &v3);
  objc_storeStrong(v8, 0);
}

- (double)_calculateTimeUsingConfig:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0])
  {
    [(AKBAATimeProvider *)v10 _monotonicClock];
    v8 = v3;
    [location[0] lastServerTimeInterval];
    v7 = v4;
    [location[0] lastLocalTimeInterval];
    v11 = v7 + v8 - v5;
  }

  else
  {
    v11 = 0.0;
  }

  objc_storeStrong(location, 0);
  return v11;
}

- (BOOL)_shouldUpdateTimeConfigWithNewTime:(double)a3
{
  v29 = self;
  v28 = a2;
  v27 = *&a3;
  v26 = [(AKBAATimeProvider *)self baaTimeConfig];
  if (v26)
  {
    v9 = [v26 bootSessionUUID];
    v8 = +[AKDevice currentDevice];
    v7 = [v8 bootSessionUUID];
    v10 = [v9 isEqual:?];
    _objc_release(v7);
    _objc_release(v8);
    _objc_release(v9);
    if (v10)
    {
      [(AKBAATimeProvider *)v29 _calculateTimeUsingConfig:v26];
      v18 = *&v3;
      v17 = vabdd_f64(*&v27, v3);
      oslog = _AKLogSystem();
      v15 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        sub_100181604(v32, v18, v27, *&v17);
        _os_log_impl(&_mh_execute_header, oslog, v15, "Time difference check: existing=%.3f, new=%.3f, diff=%.3f", v32, 0x20u);
      }

      objc_storeStrong(&oslog, 0);
      v14 = v17 >= 5.0;
      if (v17 < 5.0)
      {
        v13 = _AKLogSystem();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          sub_100036FE8(v31, *&v17);
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Time difference (%.3f seconds) is less than 5-second threshold", v31, 0xCu);
        }

        objc_storeStrong(&v13, 0);
      }

      v30 = v14;
      v22 = 1;
    }

    else
    {
      v21 = _AKLogSystem();
      v20 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v21;
        v6 = v20;
        sub_10001CEEC(v19);
        _os_log_impl(&_mh_execute_header, v5, v6, "Existing time info has mismatching boot session id - allowing update", v19, 2u);
      }

      objc_storeStrong(&v21, 0);
      v30 = 1;
      v22 = 1;
    }
  }

  else
  {
    location = _AKLogSystem();
    v24 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      log = location;
      type = v24;
      sub_10001CEEC(v23);
      _os_log_impl(&_mh_execute_header, log, type, "No existing time config - allowing update", v23, 2u);
    }

    objc_storeStrong(&location, 0);
    v30 = 1;
    v22 = 1;
  }

  objc_storeStrong(&v26, 0);
  return v30 & 1;
}

- (void)_startListeningForAutomaticTimeStatusNotification
{
  v8 = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v6;
    sub_10001CEEC(v5);
    _os_log_impl(&_mh_execute_header, log, type, "Listening for automatic time status notification.", v5, 2u);
  }

  objc_storeStrong(location, 0);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, v8, sub_100181738, TMLocationTimeZoneActiveNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_stopListeningForAutomaticTimeStatusNotification
{
  v8 = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v6;
    sub_10001CEEC(v5);
    _os_log_impl(&_mh_execute_header, log, type, "No longer listening for automatic time status notification.", v5, 2u);
  }

  objc_storeStrong(location, 0);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, v8, TMLocationTimeZoneActiveNotification, 0);
}

@end