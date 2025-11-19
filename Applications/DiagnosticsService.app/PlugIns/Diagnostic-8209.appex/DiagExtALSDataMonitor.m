@interface DiagExtALSDataMonitor
- (BOOL)setupALSClient;
- (BOOL)setupHIDClient;
- (BOOL)startMonitoring;
- (DiagExtALSDataMonitor)initWithDelegate:(id)a3;
- (DiagExtALSDataMonitorDelegate)delegate;
- (id)averageSampleQueue;
- (void)dealloc;
- (void)determineEnclosureState;
- (void)releaseALSClient;
- (void)stopMonitoring;
@end

@implementation DiagExtALSDataMonitor

- (DiagExtALSDataMonitor)initWithDelegate:(id)a3
{
  v7.receiver = self;
  v7.super_class = DiagExtALSDataMonitor;
  v3 = a3;
  v4 = [(DiagExtALSDataMonitor *)&v7 init];
  [(DiagExtALSDataMonitor *)v4 setDelegate:v3, v7.receiver, v7.super_class];

  v5 = objc_alloc_init(NSMutableArray);
  [(DiagExtALSDataMonitor *)v4 setValueQueue:v5];

  [(DiagExtALSDataMonitor *)v4 setFALSEnclosedLimit:15];
  [(DiagExtALSDataMonitor *)v4 setFALSEnclosedSampleCount:10];
  [(DiagExtALSDataMonitor *)v4 setFEnclosedStateFlag:0];
  [(DiagExtALSDataMonitor *)v4 setFIsMonitoring:0];
  v4->fHIDSystemClient = 0;
  v4->fHIDServiceClient = 0;
  v4->fHIDEventQueue = dispatch_queue_create("DE.ALSDataMonitor.queue", 0);
  return v4;
}

- (void)dealloc
{
  v3 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "ALSDataMonitor dealloc", buf, 2u);
  }

  fHIDEventQueue = self->fHIDEventQueue;
  if (fHIDEventQueue)
  {
    dispatch_release(fHIDEventQueue);
  }

  v5.receiver = self;
  v5.super_class = DiagExtALSDataMonitor;
  [(DiagExtALSDataMonitor *)&v5 dealloc];
}

- (BOOL)setupALSClient
{
  if ([(DiagExtALSDataMonitor *)self setupHIDClient]&& self->fHIDEventQueue)
  {
    IOHIDServiceClientSetProperty(self->fHIDServiceClient, @"ReportInterval", [NSNumber numberWithInt:10000]);
    fHIDSystemClient = self->fHIDSystemClient;
    IOHIDEventSystemClientActivate();
    LOBYTE(v4) = 1;
  }

  else
  {
    v5 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    v4 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (v4)
    {
      *v7 = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "ALSDataMonitor: Failed to setup service client for ALS", v7, 2u);
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (void)releaseALSClient
{
  if (self->fHIDSystemClient)
  {
    IOHIDEventSystemClientUnregisterEventCallback();
    fHIDSystemClient = self->fHIDSystemClient;

    _IOHIDEventSystemClientCancel(fHIDSystemClient);
  }
}

- (BOOL)setupHIDClient
{
  fHIDSystemClient = self->fHIDSystemClient;
  if (fHIDSystemClient)
  {
    p_fHIDServiceClient = &self->fHIDServiceClient;
    if (self->fHIDServiceClient)
    {
      goto LABEL_28;
    }
  }

  else
  {
    self->fHIDSystemClient = IOHIDEventSystemClientCreateWithType();
    IOHIDEventSystemClientRegisterEventCallback();
    v5 = self->fHIDSystemClient;
    fHIDEventQueue = self->fHIDEventQueue;
    IOHIDEventSystemClientScheduleWithDispatchQueue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100006D44;
    block[3] = &unk_100010500;
    block[4] = self;
    v7 = dispatch_block_create(0, block);
    v8 = self->fHIDSystemClient;
    IOHIDEventSystemClientSetCancelHandler();
    v9 = +[NSMutableArray array];
    v26[0] = @"PrimaryUsagePage";
    v26[1] = @"PrimaryUsage";
    v27[0] = &off_100010B78;
    v27[1] = &off_100010B90;
    v10 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
    [v9 addObject:v10];

    v11 = self->fHIDSystemClient;
    IOHIDEventSystemClientSetMatchingMultiple();
    v12 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (self->fHIDSystemClient)
      {
        v13 = "Success";
      }

      else
      {
        v13 = "Failed";
      }

      *buf = 136315138;
      v25 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "ALSDataMonitor: setup system client %s", buf, 0xCu);
    }

    fHIDSystemClient = self->fHIDSystemClient;
    if (!fHIDSystemClient)
    {
      return fHIDSystemClient;
    }

    p_fHIDServiceClient = &self->fHIDServiceClient;
    if (self->fHIDServiceClient)
    {
      goto LABEL_25;
    }
  }

  v14 = IOHIDEventSystemClientCopyServices(fHIDSystemClient);
  if (!v14)
  {
    goto LABEL_20;
  }

  v15 = v14;
  if (CFArrayGetCount(v14) < 1)
  {
    goto LABEL_19;
  }

  v16 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v15, v16);
    v18 = IOHIDServiceClientCopyProperty(ValueAtIndex, @"PrimaryUsage");
    if (v18)
    {
      break;
    }

LABEL_14:
    if (CFArrayGetCount(v15) <= ++v16)
    {
      goto LABEL_19;
    }
  }

  v19 = v18;
  if ([v18 intValue] != 4)
  {
    CFRelease(v19);
    goto LABEL_14;
  }

  *p_fHIDServiceClient = ValueAtIndex;
  CFRetain(ValueAtIndex);
LABEL_19:
  CFRelease(v15);
LABEL_20:
  v20 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    if (*p_fHIDServiceClient)
    {
      v21 = "Success";
    }

    else
    {
      v21 = "Failed";
    }

    *buf = 136315138;
    v25 = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "ALSDataMonitor: setup service client %s", buf, 0xCu);
  }

LABEL_25:
  if (self->fHIDSystemClient)
  {
    LOBYTE(fHIDSystemClient) = *p_fHIDServiceClient != 0;
    return fHIDSystemClient;
  }

LABEL_28:
  LOBYTE(fHIDSystemClient) = 0;
  return fHIDSystemClient;
}

- (id)averageSampleQueue
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(DiagExtALSDataMonitor *)self valueQueue];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 += [*(*(&v12 + 1) + 8 * v8) intValue];
        v8 = v8 + 1;
      }

      while (v5 != v8);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v9 = [(DiagExtALSDataMonitor *)self valueQueue];
  [v9 removeAllObjects];

  v10 = [NSNumber numberWithInt:(v6 / [(DiagExtALSDataMonitor *)self fALSEnclosedSampleCount])];

  return v10;
}

- (void)determineEnclosureState
{
  v3 = [(DiagExtALSDataMonitor *)self valueQueue];
  v4 = [v3 count];
  v5 = [(DiagExtALSDataMonitor *)self fALSEnclosedSampleCount];

  if (v5 <= v4)
  {
    v6 = [(DiagExtALSDataMonitor *)self averageSampleQueue];
    v7 = [v6 intValue];

    v8 = [(DiagExtALSDataMonitor *)self fALSEnclosedLimit];
    v9 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      if (v7 <= v8)
      {
        v12 = "Closed";
      }

      else
      {
        v12 = "Opened";
      }

      v14 = 136315650;
      v15 = v12;
      v16 = 1024;
      v17 = v7;
      v18 = 1024;
      v19 = [(DiagExtALSDataMonitor *)self fALSEnclosedLimit];
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "ALSDataMonitor: Detect %s - average value= %d, ALS limit = %d", &v14, 0x18u);
      v10 = [(DiagExtALSDataMonitor *)self fEnclosedStateFlag];
      if (v7 > v8)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v10 = [(DiagExtALSDataMonitor *)self fEnclosedStateFlag];
      if (v7 > v8)
      {
LABEL_4:
        if (v10 == 2)
        {
          return;
        }

        v11 = 2;
LABEL_12:
        [(DiagExtALSDataMonitor *)self setFEnclosedStateFlag:v11];
        v13 = [(DiagExtALSDataMonitor *)self delegate];
        [v13 handleALSEnclosedEvent:v11];

        return;
      }
    }

    if (v10 == 1)
    {
      return;
    }

    v11 = 1;
    goto LABEL_12;
  }
}

- (BOOL)startMonitoring
{
  v3 = [(DiagExtALSDataMonitor *)self fIsMonitoring];
  v4 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ALSDataMonitor: already running", buf, 2u);
    }

    return 1;
  }

  else
  {
    if (v5)
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ALSDataMonitor: Start monitoring", v7, 2u);
    }

    [(DiagExtALSDataMonitor *)self setFIsMonitoring:1];
    return 1;
  }
}

- (void)stopMonitoring
{
  v3 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "ALSDataMonitor: Stop monitoring", v5, 2u);
  }

  [(DiagExtALSDataMonitor *)self setFIsMonitoring:0];
  v4 = [(DiagExtALSDataMonitor *)self valueQueue];
  [v4 removeAllObjects];
}

- (DiagExtALSDataMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end