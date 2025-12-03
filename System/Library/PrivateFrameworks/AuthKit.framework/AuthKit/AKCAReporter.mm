@interface AKCAReporter
- (AKCAReporter)initWithEvent:(id)event;
- (id)objectForKeyedSubscript:(id)subscript;
- (void)sendReport;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
@end

@implementation AKCAReporter

- (AKCAReporter)initWithEvent:(id)event
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  if (getenv("__OSINSTALL_ENVIRONMENT") || getenv("__AKSYNCBUBBLE"))
  {
    v12 = 0;
    v9 = 1;
  }

  else
  {
    v3 = selfCopy;
    selfCopy = 0;
    v8.receiver = v3;
    v8.super_class = AKCAReporter;
    v7 = [(AKCAReporter *)&v8 init];
    selfCopy = v7;
    objc_storeStrong(&selfCopy, v7);
    if (v7)
    {
      objc_storeStrong(selfCopy + 1, location[0]);
      v4 = +[NSMutableDictionary dictionary];
      v5 = *(selfCopy + 2);
      *(selfCopy + 2) = v4;
      _objc_release(v5);
      mach_timebase_info(selfCopy + 4);
      *(selfCopy + 3) = mach_absolute_time();
    }

    v12 = _objc_retain(selfCopy);
    v9 = 1;
  }

  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v12;
}

- (id)objectForKeyedSubscript:(id)subscript
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, subscript);
  v4 = [(NSMutableDictionary *)selfCopy->_reportData objectForKeyedSubscript:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, object);
  v5 = 0;
  objc_storeStrong(&v5, subscript);
  [(NSMutableDictionary *)selfCopy->_reportData setObject:location[0] forKeyedSubscript:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)sendReport
{
  selfCopy = self;
  location[1] = a2;
  if (self->_initTime)
  {
    v8 = mach_absolute_time();
    [(AKCAReporter *)selfCopy machAbsoluteTimeToTimeInterval:v8 - selfCopy->_initTime];
    v7 = *&v2;
    v5 = [NSNumber numberWithDouble:v2];
    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
    _objc_release(v5);
    selfCopy->_initTime = 0;
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      sub_100074370(v12, selfCopy->_eventName, v7);
      _os_log_debug_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_DEBUG, "Sending Report: %@ (time: %f)", v12, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    if (&_AnalyticsSendEvent)
    {
      eventName = selfCopy->_eventName;
      reportData = selfCopy->_reportData;
      AnalyticsSendEvent();
    }
  }

  else
  {
    location[0] = _AKLogSystem();
    v9 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
    {
      sub_1000194D4(v13, selfCopy->_eventName);
      _os_log_debug_impl(&_mh_execute_header, location[0], v9, "Already sent AKCA event: %@", v13, 0xCu);
    }

    objc_storeStrong(location, 0);
  }
}

@end