@interface ProcessExitFetcher
+ (id)sharedInstance;
- (ProcessExitFetcher)initWithMonitorID:(id)a3 fetchIntervalMs:(double)a4;
- (id)extractProcessNameToDisplayFromBundleID:(id)a3;
- (id)getProcessExitRecordFetchQueue;
- (id)processNameToDisplayForBundleID:(id)a3;
- (void)fetchProcessExitInfo;
- (void)kickOffFetchTimer;
- (void)stopFetchTimer;
@end

@implementation ProcessExitFetcher

+ (id)sharedInstance
{
  if (qword_10003E7D8 != -1)
  {
    sub_100019E5C();
  }

  v3 = qword_10003E7D0;

  return v3;
}

- (ProcessExitFetcher)initWithMonitorID:(id)a3 fetchIntervalMs:(double)a4
{
  v7 = a3;
  v19.receiver = self;
  v19.super_class = ProcessExitFetcher;
  v8 = [(ProcessExitFetcher *)&v19 init];
  v9 = v8;
  if (v8)
  {
    processExitHandler = v8->_processExitHandler;
    v8->_processExitHandler = 0;

    v11 = objc_alloc_init(NSMutableArray);
    processExitRecords = v9->_processExitRecords;
    v9->_processExitRecords = v11;

    objc_storeStrong(&v9->_launchServiceMonitorID, a3);
    v9->_launchServiceMaxRecordCount = 128;
    v9->_fetchIntervalMs = a4;
    v13 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v14 = dispatch_queue_create("com.apple.HangHUD.procExitfetchTimer", v13);
    timerQueue = v9->_timerQueue;
    v9->_timerQueue = v14;

    v16 = objc_alloc_init(NSCache);
    bundleIdToProcessNameCache = v9->_bundleIdToProcessNameCache;
    v9->_bundleIdToProcessNameCache = v16;

    [(NSCache *)v9->_bundleIdToProcessNameCache setCountLimit:100];
  }

  return v9;
}

- (id)getProcessExitRecordFetchQueue
{
  if (qword_10003E7E8 != -1)
  {
    sub_100019E70();
  }

  v3 = qword_10003E7E0;

  return v3;
}

- (void)fetchProcessExitInfo
{
  v32 = 0;
  v3 = mach_absolute_time();
  [(NSString *)self->_launchServiceMonitorID UTF8String];
  launchServiceMaxRecordCount_low = LODWORD(self->_launchServiceMaxRecordCount);
  v5 = _launch_service_stats_copy_impl();
  v6 = mach_absolute_time();
  if (v5)
  {
    v7 = sub_10000A9AC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = strerror(v5);
      sub_100018560(v8, buf, v5, v7);
    }
  }

  else
  {
    v9 = v6;
    [(NSMutableArray *)self->_processExitRecords removeAllObjects];
    v7 = objc_alloc_init(NSMutableDictionary);
    if (v32)
    {
      v10 = 0;
      v11 = 0;
      v31 = v9 - v3;
      do
      {
        v12 = [NSString stringWithCString:xpc_array_get_string(0 encoding:*v10), 1];
        v13 = [(ProcessExitFetcher *)self processNameToDisplayForBundleID:v12];
        v14 = sub_100017B08(*(v10 + 1));
        v15 = sub_100017B08(*(v10 + 3));
        v16 = [HTProcessLaunchExitRecord alloc];
        LOWORD(v30) = *(v10 + 49);
        v17 = [(HTProcessLaunchExitRecord *)v16 initWithInfo:v13 pid:v10[5] spawnTimestamp:v14 exitTimestamp:v15 exitReasonCode:*(v10 + 29) exitReasonNamespace:*(v10 + 28) jetsam_priority:v30];
        v18 = sub_10000A9AC();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v26 = sub_100017A6C(v31);
          v27 = [(HTProcessLaunchExitRecord *)v17 exitReasonCode];
          v28 = [(HTProcessLaunchExitRecord *)v17 exitReasonNamespace];
          *buf = 138413058;
          v34 = v13;
          v35 = 2048;
          v36 = v26;
          v37 = 2048;
          v38 = v27;
          v39 = 1024;
          v40 = v28;
          _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, " Process %@ exited - Fetch duration is : %f MS, reasonCode:%llu, exitReasonNamespce:%i", buf, 0x26u);
        }

        v19 = [v7 objectForKey:v13];
        v20 = v19 == 0;

        if (v20)
        {
          [v7 setObject:&off_100035D68 forKeyedSubscript:v13];
        }

        else
        {
          v21 = [v7 objectForKeyedSubscript:v13];
          v22 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v21 integerValue] + 1);
          [v7 setObject:v22 forKeyedSubscript:v13];
        }

        v23 = +[ProcessExitScreener sharedInstance];
        v24 = [v23 isProcessExitRecordAllowed:v17];

        if (v24)
        {
          v25 = sub_10000A9AC();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v34 = v13;
            _os_log_debug_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "Adding process exit with process name %@", buf, 0xCu);
          }

          [(NSMutableArray *)self->_processExitRecords addObject:v17];
        }

        ++v11;
        v10 = (v10 + 59);
      }

      while (v11 < v32);
      if (v32)
      {
        v29 = sub_10000A9AC();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          sub_100019F3C();
        }
      }
    }
  }
}

- (id)processNameToDisplayForBundleID:(id)a3
{
  v4 = a3;
  v5 = [(NSCache *)self->_bundleIdToProcessNameCache objectForKey:v4];
  if (!v5)
  {
    v11 = 0;
    v6 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v4 allowPlaceholder:0 error:&v11];
    v7 = v11;
    if (v7)
    {
      v5 = [(ProcessExitFetcher *)self extractProcessNameToDisplayFromBundleID:v4];
    }

    else
    {
      v8 = +[HUDConfiguration sharedInstance];
      v9 = [v8 thirdPartyDevPreferredLanguages];

      if ([v9 count])
      {
        [v6 localizedNameWithPreferredLocalizations:v9];
      }

      else
      {
        [v6 localizedName];
      }
      v5 = ;
    }

    [(NSCache *)self->_bundleIdToProcessNameCache setObject:v5 forKey:v4];
  }

  return v5;
}

- (id)extractProcessNameToDisplayFromBundleID:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@"."];
  v4 = [v3 objectAtIndexedSubscript:{objc_msgSend(v3, "count") - 1}];
  v5 = +[NSCharacterSet characterSetWithCharactersInString:](NSCharacterSet, "characterSetWithCharactersInString:", @"[({<");
  v6 = [v4 rangeOfCharacterFromSet:v5];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v4 substringToIndex:v6];

    v4 = v7;
  }

  return v4;
}

- (void)kickOffFetchTimer
{
  if (!self->_fetchTimer)
  {
    handler[9] = v2;
    handler[10] = v3;
    [(NSString *)self->_launchServiceMonitorID UTF8String];
    launchServiceMaxRecordCount_low = LODWORD(self->_launchServiceMaxRecordCount);
    launch_service_stats_enable();
    v6 = sub_10000A9AC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100019FB0();
    }

    v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_timerQueue);
    fetchTimer = self->_fetchTimer;
    self->_fetchTimer = v7;

    v9 = dispatch_time(0, 0);
    dispatch_source_set_timer(self->_fetchTimer, v9, (self->_fetchIntervalMs * 1000000.0), (self->_fetchIntervalMs * 1000000.0) / 0xA);
    v10 = self->_fetchTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100011248;
    handler[3] = &unk_100030668;
    handler[4] = self;
    dispatch_source_set_event_handler(v10, handler);
    v11 = sub_10000A9AC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_10001A03C();
    }

    dispatch_resume(self->_fetchTimer);
  }
}

- (void)stopFetchTimer
{
  if (self->_fetchTimer)
  {
    v3 = sub_10000A9AC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_10001A07C();
    }

    dispatch_source_cancel(self->_fetchTimer);
    fetchTimer = self->_fetchTimer;
    self->_fetchTimer = 0;

    [(NSString *)self->_launchServiceMonitorID UTF8String];
    launch_service_stats_disable();
  }
}

@end