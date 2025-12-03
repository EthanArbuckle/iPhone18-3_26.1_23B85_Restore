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
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v5 = *(selfCopy + 2);
      *(selfCopy + 2) = dictionary;
      MEMORY[0x277D82BD8](v5);
      mach_timebase_info(selfCopy + 4);
      *(selfCopy + 3) = mach_absolute_time();
    }

    v12 = MEMORY[0x277D82BE0](selfCopy);
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
  v6 = MEMORY[0x282217098];
  v15 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  if (self->_initTime)
  {
    v9 = mach_absolute_time();
    [(AKCAReporter *)selfCopy machAbsoluteTimeToTimeInterval:v9 - selfCopy->_initTime];
    v8 = *&v2;
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:v2];
    [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
    MEMORY[0x277D82BD8](v5);
    selfCopy->_initTime = 0;
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_2_8_64_8_0(v13, selfCopy->_eventName, v8);
      _os_log_debug_impl(&dword_222379000, oslog, OS_LOG_TYPE_DEBUG, "Sending Report: %@ (time: %f)", v13, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    if (v6)
    {
      eventName = selfCopy->_eventName;
      reportData = selfCopy->_reportData;
      AnalyticsSendEvent();
    }
  }

  else
  {
    location[0] = _AKLogSystem();
    v10 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v14, selfCopy->_eventName);
      _os_log_debug_impl(&dword_222379000, location[0], v10, "Already sent AKCA event: %@", v14, 0xCu);
    }

    objc_storeStrong(location, 0);
  }

  *MEMORY[0x277D85DE8];
}

@end