@interface AKCAReporter
- (AKCAReporter)initWithEvent:(id)a3;
- (id)objectForKeyedSubscript:(id)a3;
- (void)sendReport;
- (void)setObject:(id)a3 forKeyedSubscript:(id)a4;
@end

@implementation AKCAReporter

- (AKCAReporter)initWithEvent:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (getenv("__OSINSTALL_ENVIRONMENT") || getenv("__AKSYNCBUBBLE"))
  {
    v12 = 0;
    v9 = 1;
  }

  else
  {
    v3 = v11;
    v11 = 0;
    v8.receiver = v3;
    v8.super_class = AKCAReporter;
    v7 = [(AKCAReporter *)&v8 init];
    v11 = v7;
    objc_storeStrong(&v11, v7);
    if (v7)
    {
      objc_storeStrong(v11 + 1, location[0]);
      v4 = +[NSMutableDictionary dictionary];
      v5 = *(v11 + 2);
      *(v11 + 2) = v4;
      _objc_release(v5);
      mach_timebase_info(v11 + 4);
      *(v11 + 3) = mach_absolute_time();
    }

    v12 = _objc_retain(v11);
    v9 = 1;
  }

  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v12;
}

- (id)objectForKeyedSubscript:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(NSMutableDictionary *)v6->_reportData objectForKeyedSubscript:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

- (void)setObject:(id)a3 forKeyedSubscript:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(NSMutableDictionary *)v7->_reportData setObject:location[0] forKeyedSubscript:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)sendReport
{
  v11 = self;
  location[1] = a2;
  if (self->_initTime)
  {
    v8 = mach_absolute_time();
    [(AKCAReporter *)v11 machAbsoluteTimeToTimeInterval:v8 - v11->_initTime];
    v7 = *&v2;
    v5 = [NSNumber numberWithDouble:v2];
    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
    _objc_release(v5);
    v11->_initTime = 0;
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      sub_100074370(v12, v11->_eventName, v7);
      _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Sending Report: %@ (time: %f)", v12, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    if (&_AnalyticsSendEvent)
    {
      eventName = v11->_eventName;
      reportData = v11->_reportData;
      AnalyticsSendEvent();
    }
  }

  else
  {
    location[0] = _AKLogSystem();
    v9 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v13, v11->_eventName);
      _os_log_debug_impl(&_mh_execute_header, location[0], v9, "Already sent AKCA event: %@", v13, 0xCu);
    }

    objc_storeStrong(location, 0);
  }
}

@end