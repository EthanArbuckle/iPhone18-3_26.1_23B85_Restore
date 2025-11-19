@interface ApplePCIeAnalytics
+ (id)_getProp:(__CFString *)a3 fromReg:(unsigned int)a4 withType:(Class)a5;
- (ApplePCIeAnalytics)init;
- (BOOL)_startEventMonitoring;
- (void)_startEventMonitoring;
- (void)_stopEventMonitoring;
- (void)start;
- (void)stop;
@end

@implementation ApplePCIeAnalytics

- (ApplePCIeAnalytics)init
{
  v12.receiver = self;
  v12.super_class = ApplePCIeAnalytics;
  v2 = [(ApplePCIeAnalytics *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = dispatch_queue_create([v4 UTF8String], 0);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = os_log_create("com.apple.accessories", [v8 UTF8String]);
    log = v2->_log;
    v2->_log = v9;

    v2->_started = 0;
  }

  return v2;
}

- (void)start
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v4 = log;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 138412290;
    v10 = v6;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Starting %@...", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __27__ApplePCIeAnalytics_start__block_invoke;
  block[3] = &unk_20408;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __27__ApplePCIeAnalytics_start__block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  if (*(v1 + 8) == 1)
  {
    v3 = *(v1 + 24);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __27__ApplePCIeAnalytics_start__block_invoke_cold_2(v2, v3);
    }
  }

  else
  {
    *(v1 + 8) = 1;
    if (([*v2 _startEventMonitoring] & 1) == 0)
    {
      v4 = *(*v2 + 24);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __27__ApplePCIeAnalytics_start__block_invoke_cold_1(v2, v4);
      }
    }
  }
}

- (void)stop
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v4 = log;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 138412290;
    v10 = v6;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Stopping %@...", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __26__ApplePCIeAnalytics_stop__block_invoke;
  block[3] = &unk_20408;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __26__ApplePCIeAnalytics_stop__block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  if (*(v1 + 8))
  {
    *(v1 + 8) = 0;
    v3 = *v2;

    [v3 _stopEventMonitoring];
  }

  else
  {
    v4 = *(v1 + 24);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __26__ApplePCIeAnalytics_stop__block_invoke_cold_1(v2, v4);
    }
  }
}

- (BOOL)_startEventMonitoring
{
  if (!self->_started)
  {
    return 0;
  }

  if (self->_monitoring)
  {
    return 1;
  }

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_0, log, OS_LOG_TYPE_DEFAULT, "Starting event monitoring...", v11, 2u);
  }

  self->_monitoring = 1;
  v5 = IONotificationPortCreate(kIOMainPortDefault);
  self->_ioNotificationPort = v5;
  IONotificationPortSetDispatchQueue(v5, self->_queue);
  v6 = IOServiceMatching("IOPCIDevice");
  ioNotificationPort = self->_ioNotificationPort;
  v8 = v6;
  v9 = IOServiceAddMatchingNotification(ioNotificationPort, "IOServiceFirstMatch", v8, _serviceMatched, self, &self->_ioServiceMatchingIterator);
  v3 = v9 == 0;
  if (v9)
  {
    [(ApplePCIeAnalytics *)&self->_log _startEventMonitoring];
  }

  else
  {
    _serviceMatched(self, self->_ioServiceMatchingIterator);
  }

  return v3;
}

- (void)_stopEventMonitoring
{
  if (self->_monitoring)
  {
    v9 = v2;
    v10 = v3;
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_0, log, OS_LOG_TYPE_DEFAULT, "Stopping event monitoring...", v8, 2u);
    }

    self->_monitoring = 0;
    ioServiceMatchingIterator = self->_ioServiceMatchingIterator;
    if (ioServiceMatchingIterator)
    {
      IOObjectRelease(ioServiceMatchingIterator);
    }

    ioNotificationPort = self->_ioNotificationPort;
    if (ioNotificationPort)
    {
      IONotificationPortDestroy(ioNotificationPort);
    }
  }
}

+ (id)_getProp:(__CFString *)a3 fromReg:(unsigned int)a4 withType:(Class)a5
{
  CFProperty = IORegistryEntryCreateCFProperty(a4, a3, kCFAllocatorDefault, 0);
  if (!CFProperty || (objc_opt_isKindOfClass() & 1) == 0)
  {

    CFProperty = 0;
  }

  return CFProperty;
}

void __27__ApplePCIeAnalytics_start__block_invoke_cold_1(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_0(&dword_0, v6, v7, "%@ failed to start!", v8, v9, v10, v11, v12);
}

void __27__ApplePCIeAnalytics_start__block_invoke_cold_2(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_0(&dword_0, v6, v7, "%@ already started... ignoring!", v8, v9, v10, v11, v12);
}

void __26__ApplePCIeAnalytics_stop__block_invoke_cold_1(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_0(&dword_0, v6, v7, "%@ already stopped... ignoring!", v8, v9, v10, v11, v12);
}

- (void)_startEventMonitoring
{
  v3 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
  {
    v4[0] = 67109120;
    v4[1] = a2;
    _os_log_error_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "IOServiceAddMatchingNotification failed: %08x", v4, 8u);
  }
}

@end