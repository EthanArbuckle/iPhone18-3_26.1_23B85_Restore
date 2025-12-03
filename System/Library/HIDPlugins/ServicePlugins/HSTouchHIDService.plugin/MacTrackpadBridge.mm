@interface MacTrackpadBridge
- (MacTrackpadBridge)initWithService:(unsigned int)service;
- (void)cancelDisablingDeviceMonitoring;
- (void)cancelNotificationCenterSource;
- (void)cancelPowerStateMonitoring;
- (void)handleCancelEvent:(id)event;
- (void)handleHSTEvent:(id)event;
- (void)handlePowerState:(unsigned int)state messageArgument:(void *)argument;
- (void)handleSetPropertyEvent:(id)event;
- (void)setQueue:(id)queue;
- (void)startDisablingDeviceMonitoring;
- (void)startForPowerStateMonitoring;
- (void)startNotificationCenterMonitoring:(int)monitoring queue:(id)queue;
- (void)updateDisablerDeviceCount;
@end

@implementation MacTrackpadBridge

- (MacTrackpadBridge)initWithService:(unsigned int)service
{
  v8.receiver = self;
  v8.super_class = MacTrackpadBridge;
  v3 = [(TrackpadBridge *)&v8 initWithService:*&service];
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 196);
    *(v3 + 196) = 0;

    *(v4 + 41) = 0;
    *(v4 + 172) = 0;
    *(v4 + 45) = 0;
    v6 = *(v4 + 188);
    *(v4 + 188) = 0;
  }

  return v4;
}

- (void)handleHSTEvent:(id)event
{
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = eventCopy;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    [(MacTrackpadBridge *)self handleCancelEvent:eventCopy];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = MacTrackpadBridge;
    [(PointerBridge *)&v6 handleHSTEvent:eventCopy];
  }
}

- (void)handleSetPropertyEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy[5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (*(eventCopy + 39) < 0 && eventCopy[3] == &dword_1C + 1)
  {
    v7 = eventCopy[2];
    v8 = *v7;
    v9 = v7[1];
    v10 = v7[2];
    v11 = *(v7 + 21);
    v12 = v8 == 0x6163696669746F4ELL && v9 == 0x746E65436E6F6974;
    v13 = v12 && v10 == 0x7275747365477265;
    v14 = v13 && v11 == 0x65646F4D65727574;
    v15 = !v14;
    if (!v15 && v6 != 0)
    {
      v17 = [v6 objectForKeyedSubscript:@"AlwaysGenerateNotificationCenterGesture"];
      if (objc_opt_respondsToSelector())
      {
        bOOLValue = [v17 BOOLValue];
      }

      else
      {
        bOOLValue = 0;
      }

      v19 = [v6 objectForKeyedSubscript:@"ClientPID"];
      if (objc_opt_respondsToSelector())
      {
        intValue = [v19 intValue];
        if (!bOOLValue)
        {
LABEL_27:
          [(MacTrackpadBridge *)self cancelNotificationCenterSource];
LABEL_32:
          v23 = [NSNumber numberWithBool:bOOLValue];
          [(PointerBridge *)self updatePreference:@"NotificationCenterActive" to:v23];

          goto LABEL_33;
        }
      }

      else
      {
        intValue = 0;
        if (!bOOLValue)
        {
          goto LABEL_27;
        }
      }

      queue = [(PointerBridge *)self queue];

      if (queue && intValue)
      {
        queue2 = [(PointerBridge *)self queue];
        [(MacTrackpadBridge *)self startNotificationCenterMonitoring:intValue queue:queue2];
      }

      goto LABEL_32;
    }
  }

LABEL_33:
  v24.receiver = self;
  v24.super_class = MacTrackpadBridge;
  [(TrackpadBridge *)&v24 handleSetPropertyEvent:eventCopy];
}

- (void)handleCancelEvent:(id)event
{
  eventCopy = event;
  [(MacTrackpadBridge *)self cancelDisablingDeviceMonitoring];
  [(MacTrackpadBridge *)self cancelPowerStateMonitoring];
  [(MacTrackpadBridge *)self cancelNotificationCenterSource];
  [(PointerBridge *)self dispatch:eventCopy];
}

- (void)setQueue:(id)queue
{
  queueCopy = queue;
  v5.receiver = self;
  v5.super_class = MacTrackpadBridge;
  [(PointerBridge *)&v5 setQueue:queueCopy];
  [(MacTrackpadBridge *)self startDisablingDeviceMonitoring];
  [(MacTrackpadBridge *)self startForPowerStateMonitoring];
}

- (void)startDisablingDeviceMonitoring
{
  hidManager = [(MacTrackpadBridge *)self hidManager];
  [hidManager cancel];

  v4 = objc_opt_new();
  [(MacTrackpadBridge *)self setHidManager:v4];

  v21[0] = @"PrimaryUsagePage";
  v21[1] = @"PrimaryUsage";
  v22[0] = &off_112008;
  v22[1] = &off_112020;
  v5 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
  v23[0] = v5;
  v19[0] = @"PrimaryUsagePage";
  v19[1] = @"PrimaryUsage";
  v20[0] = &off_112008;
  v20[1] = &off_112008;
  v6 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  v23[1] = v6;
  v7 = [NSArray arrayWithObjects:v23 count:2];

  hidManager2 = [(MacTrackpadBridge *)self hidManager];
  queue = [(PointerBridge *)self queue];
  [hidManager2 setDispatchQueue:queue];

  hidManager3 = [(MacTrackpadBridge *)self hidManager];
  [hidManager3 setDeviceMatching:v7];

  objc_initWeak(&location, self);
  hidManager4 = [(MacTrackpadBridge *)self hidManager];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __51__MacTrackpadBridge_startDisablingDeviceMonitoring__block_invoke;
  v16[3] = &unk_109178;
  objc_copyWeak(&v17, &location);
  [hidManager4 setDeviceNotificationHandler:v16];

  hidManager5 = [(MacTrackpadBridge *)self hidManager];
  [hidManager5 activate];

  queue2 = [(PointerBridge *)self queue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __51__MacTrackpadBridge_startDisablingDeviceMonitoring__block_invoke_2;
  v14[3] = &unk_1091A0;
  objc_copyWeak(&v15, &location);
  dispatch_async(queue2, v14);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __51__MacTrackpadBridge_startDisablingDeviceMonitoring__block_invoke(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = MTLoggingPlugin();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v11 = "";
    v12 = 2080;
    v13 = "";
    v14 = 2080;
    v15 = "[MacTrackpadBridge startDisablingDeviceMonitoring]_block_invoke";
    v16 = 2048;
    v17 = v5;
    v18 = 1024;
    v19 = a3;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s HID Dev callback %p : %u", buf, 0x30u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained setSignpostBeginTime:mach_continuous_time()];
    v8 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __51__MacTrackpadBridge_startDisablingDeviceMonitoring__block_invoke_42;
    block[3] = &unk_109150;
    block[4] = WeakRetained;
    dispatch_async(v8, block);
  }
}

void __51__MacTrackpadBridge_startDisablingDeviceMonitoring__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained setSignpostBeginTime:mach_continuous_time()];
    [WeakRetained updateDisablerDeviceCount];
  }
}

- (void)cancelDisablingDeviceMonitoring
{
  hidManager = [(MacTrackpadBridge *)self hidManager];
  [hidManager cancel];

  [(MacTrackpadBridge *)self setHidManager:0];
}

- (void)updateDisablerDeviceCount
{
  v3 = *(&self->_notificationCenterMonitoringSource + 4);
  if (v3)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    devices = [v3 devices];
    v5 = 0;
    v6 = [devices countByEnumeratingWithState:&v15 objects:v26 count:16];
    if (v6)
    {
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(devices);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          *entryID = 0;
          IORegistryEntryGetRegistryEntryID([v9 service], entryID);
          parent = 0;
          IORegistryEntryGetParentEntry([(PointerBridge *)self service], "IOService", &parent);
          do
          {
            v10 = parent;
            if (!parent)
            {
              break;
            }

            v13 = 0;
            IORegistryEntryGetRegistryEntryID(parent, &v13);
            IORegistryEntryGetParentEntry(parent, "IOService", &parent);
          }

          while (v13 != *entryID);
          if (!v10)
          {
            ++v5;
          }
        }

        v6 = [devices countByEnumeratingWithState:&v15 objects:v26 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v5 = 0;
  }

  v11 = MTLoggingPlugin();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *entryID = 136315906;
    *&entryID[4] = "";
    v20 = 2080;
    v21 = "";
    v22 = 2080;
    v23 = "[MacTrackpadBridge updateDisablerDeviceCount]";
    v24 = 2048;
    v25 = v5;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s Disabler count : %lu", entryID, 0x2Au);
  }

  v12 = [NSNumber numberWithUnsignedInteger:v5];
  [(PointerBridge *)self updatePreference:@"DisablingDeviceCount" to:v12];
}

- (void)startNotificationCenterMonitoring:(int)monitoring queue:(id)queue
{
  queueCopy = queue;
  [(MacTrackpadBridge *)self cancelNotificationCenterSource];
  v7 = dispatch_source_create(&_dispatch_source_type_proc, monitoring, 0x80000000uLL, queueCopy);
  v8 = *(&self->_powerNotifierObject + 1);
  *(&self->_powerNotifierObject + 1) = v7;

  if (*(&self->_powerNotifierObject + 1))
  {
    objc_initWeak(&location, self);
    v9 = *(&self->_powerNotifierObject + 1);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = __61__MacTrackpadBridge_startNotificationCenterMonitoring_queue___block_invoke;
    handler[3] = &unk_1091C8;
    objc_copyWeak(&v11, &location);
    handler[4] = self;
    dispatch_source_set_event_handler(v9, handler);
    dispatch_resume(*(&self->_powerNotifierObject + 1));
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __61__MacTrackpadBridge_startNotificationCenterMonitoring_queue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = MTLoggingPlugin();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315650;
      v5 = "";
      v6 = 2080;
      v7 = "";
      v8 = 2080;
      v9 = "[MacTrackpadBridge startNotificationCenterMonitoring:queue:]_block_invoke";
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[HID] [MT] %s%s%s NotificationCenter process died.", &v4, 0x20u);
    }

    [WeakRetained cancelNotificationCenterSource];
    [*(a1 + 32) updatePreference:@"NotificationCenterActive" to:&__kCFBooleanFalse];
  }
}

- (void)cancelNotificationCenterSource
{
  v3 = *(&self->_powerNotifierObject + 1);
  if (v3)
  {
    dispatch_source_cancel(v3);
    v4 = *(&self->_powerNotifierObject + 1);
    *(&self->_powerNotifierObject + 1) = 0;
  }
}

- (void)startForPowerStateMonitoring
{
  v3 = IORegisterForSystemPower(self, (&self->_powerNofifierRootIOKitPort + 1), handlePowerStateCallback, &self->_powerNotifierPortRef + 1);
  *(&self->super._deviceOrientation + 1) = v3;
  if (v3)
  {
    v4 = *(&self->_powerNofifierRootIOKitPort + 1);
    queue = [(PointerBridge *)self queue];
    IONotificationPortSetDispatchQueue(v4, queue);
  }

  else
  {
    v5 = MTLoggingPlugin();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v8 = "[Error] ";
      v9 = 2080;
      v10 = "";
      v11 = 2080;
      v12 = "[MacTrackpadBridge startForPowerStateMonitoring]";
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s IORegisterForSystemPower failed", buf, 0x20u);
    }
  }
}

- (void)cancelPowerStateMonitoring
{
  if (HIDWORD(self->_powerNotifierPortRef))
  {
    IODeregisterForSystemPower(&self->_powerNotifierPortRef + 1);
    HIDWORD(self->_powerNotifierPortRef) = 0;
  }

  v3 = *(&self->_powerNofifierRootIOKitPort + 1);
  if (v3)
  {
    IONotificationPortDestroy(v3);
    *(&self->_powerNofifierRootIOKitPort + 1) = 0;
  }

  v4 = *(&self->super._deviceOrientation + 1);
  if (v4)
  {
    IOServiceClose(v4);
    *(&self->super._deviceOrientation + 1) = 0;
  }
}

- (void)handlePowerState:(unsigned int)state messageArgument:(void *)argument
{
  [(PointerBridge *)self setSignpostBeginTime:mach_continuous_time()];
  v7 = objc_opt_new();
  v7[2] = state;
  [(PointerBridge *)self dispatch:v7];
  v8 = v7[2];
  if (v8 == 3758097024 || v8 == 3758097008)
  {
    v10 = IOAllowPowerChange(*(&self->super._deviceOrientation + 1), argument);
    if (v10)
    {
      v11 = MTLoggingPlugin();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = 136315906;
        v13 = "[Error] ";
        v14 = 2080;
        v15 = "";
        v16 = 2080;
        v17 = "[MacTrackpadBridge handlePowerState:messageArgument:]";
        v18 = 2080;
        v19 = mach_error_string(v10);
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "[HID] [MT] %s%s%s IOAllowPowerChange failed with return %s", &v12, 0x2Au);
      }
    }
  }
}

@end