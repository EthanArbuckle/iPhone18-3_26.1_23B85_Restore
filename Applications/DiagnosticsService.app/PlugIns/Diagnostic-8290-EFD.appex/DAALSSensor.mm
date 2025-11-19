@interface DAALSSensor
- (BOOL)setupALSClient;
- (BOOL)setupHIDSystemClient;
- (DAALSSensor)initWithDelegate:(id)a3 threshold:(unsigned int)a4;
- (DAChamberSensorDelegate)delegate;
- (id)averageSampleValue;
- (void)dealloc;
- (void)determineEnclosureState;
- (void)handleHIDEvent:(__IOHIDEvent *)a3;
- (void)releaseALSClient;
- (void)startMonitoring;
- (void)stopMonitoring;
@end

@implementation DAALSSensor

- (DAALSSensor)initWithDelegate:(id)a3 threshold:(unsigned int)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = DAALSSensor;
  v7 = [(DAALSSensor *)&v15 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, v6);
    v9 = objc_alloc_init(NSMutableArray);
    ALSSamples = v8->_ALSSamples;
    v8->_ALSSamples = v9;

    v8->_threshold = a4;
    v8->_minimalALSSampleCount = 10;
    v8->_HIDSystemClient = 0;
    v8->_HIDServiceClient = 0;
    v11 = dispatch_queue_create("DAALSSensorQueue", 0);
    HIDEventQueue = v8->_HIDEventQueue;
    v8->_HIDEventQueue = v11;

    mostRecentEvent = v8->_mostRecentEvent;
    v8->_mostRecentEvent = 0;

    v8->_started = 0;
  }

  return v8;
}

- (void)startMonitoring
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DAALSSensor: Start monitoring", buf, 2u);
  }

  [(DAALSSensor *)self setStarted:[(DAALSSensor *)self setupALSClient]];
  if (![(DAALSSensor *)self started])
  {
    v4 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "DAALSSensor: ALS Client failed to set up.", v5, 2u);
    }
  }
}

- (void)stopMonitoring
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DAALSSensor: Stop monitoring", buf, 2u);
  }

  if ([(DAALSSensor *)self started])
  {
    [(DAALSSensor *)self setStarted:0];
    [(DAALSSensor *)self releaseALSClient];
    v4 = [(DAALSSensor *)self ALSSamples];
    [v4 removeAllObjects];

    [(DAALSSensor *)self setMostRecentEvent:0];
  }

  else
  {
    v5 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "DAALSSensor: Attempt to stop DAALSSensor that hasn't been started.", v6, 2u);
    }
  }
}

- (BOOL)setupALSClient
{
  if ([(DAALSSensor *)self setupHIDSystemClient]&& ([(DAALSSensor *)self HIDEventQueue], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    IOHIDServiceClientSetProperty([(DAALSSensor *)self HIDServiceClient], @"ReportInterval", [NSNumber numberWithInt:10000]);
    [(DAALSSensor *)self HIDSystemClient];
    IOHIDEventSystemClientActivate();
    return 1;
  }

  else
  {
    v5 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10001023C(v5);
    }

    return 0;
  }
}

- (BOOL)setupHIDSystemClient
{
  if ([(DAALSSensor *)self HIDSystemClient]&& [(DAALSSensor *)self HIDServiceClient])
  {
    v3 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100010280(v3);
    }

    LOBYTE(v4) = 0;
  }

  else
  {
    if (![(DAALSSensor *)self HIDSystemClient])
    {
      [(DAALSSensor *)self setHIDSystemClient:IOHIDEventSystemClientCreateWithType()];
      [(DAALSSensor *)self HIDSystemClient];
      IOHIDEventSystemClientRegisterEventCallback();
      [(DAALSSensor *)self HIDSystemClient];
      v5 = [(DAALSSensor *)self HIDEventQueue];
      IOHIDEventSystemClientScheduleWithDispatchQueue();

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000D058;
      block[3] = &unk_10001C5A0;
      block[4] = self;
      v6 = dispatch_block_create(0, block);
      [(DAALSSensor *)self HIDSystemClient];
      IOHIDEventSystemClientSetCancelHandler();
      [(DAALSSensor *)self HIDSystemClient];
      v24[0] = @"PrimaryUsagePage";
      v24[1] = @"PrimaryUsage";
      v25[0] = &off_10001D848;
      v25[1] = &off_10001D860;
      v7 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
      v26 = v7;
      [NSArray arrayWithObjects:&v26 count:1];
      IOHIDEventSystemClientSetMatchingMultiple();

      v8 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [(DAALSSensor *)self HIDSystemClient];
        v10 = "success";
        if (!v9)
        {
          v10 = "failure";
        }

        *buf = 136315138;
        v23 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "DAALSSensor: Setup system client: %s", buf, 0xCu);
      }
    }

    if ([(DAALSSensor *)self HIDSystemClient]&& ![(DAALSSensor *)self HIDServiceClient])
    {
      v11 = IOHIDEventSystemClientCopyServices([(DAALSSensor *)self HIDSystemClient]);
      if (v11)
      {
        v12 = v11;
        if (CFArrayGetCount(v11) >= 1)
        {
          v13 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v12, v13);
            v15 = IOHIDServiceClientCopyProperty(ValueAtIndex, @"PrimaryUsage");
            v16 = v15;
            if (v15)
            {
              if ([v15 intValue] == 4)
              {
                break;
              }
            }

            if (CFArrayGetCount(v12) <= ++v13)
            {
              goto LABEL_22;
            }
          }

          [(DAALSSensor *)self setHIDServiceClient:ValueAtIndex];
          CFRetain(ValueAtIndex);
        }

LABEL_22:
        CFRelease(v12);
      }

      v17 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [(DAALSSensor *)self HIDServiceClient];
        v19 = "success";
        if (!v18)
        {
          v19 = "failure";
        }

        *buf = 136315138;
        v23 = v19;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "DAALSSensor: Setup service client: %s", buf, 0xCu);
      }
    }

    v4 = [(DAALSSensor *)self HIDSystemClient];
    if (v4)
    {
      LOBYTE(v4) = [(DAALSSensor *)self HIDServiceClient]!= 0;
    }
  }

  return v4;
}

- (void)handleHIDEvent:(__IOHIDEvent *)a3
{
  if (IOHIDEventGetType() == 12 && [(DAALSSensor *)self started])
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    v5 = [(DAALSSensor *)self ALSSamples];
    v6 = [NSNumber numberWithLong:IntegerValue];
    [v5 addObject:v6];

    [(DAALSSensor *)self determineEnclosureState];
  }
}

- (id)averageSampleValue
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(DAALSSensor *)self ALSSamples];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 += [*(*(&v12 + 1) + 8 * i) longValue];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v9 = [(DAALSSensor *)self ALSSamples];
  [v9 removeAllObjects];

  v10 = [NSNumber numberWithLong:v6 / [(DAALSSensor *)self minimalALSSampleCount]];

  return v10;
}

- (void)determineEnclosureState
{
  v3 = [(DAALSSensor *)self ALSSamples];
  v4 = [v3 count];
  v5 = [(DAALSSensor *)self minimalALSSampleCount];

  if (v4 >= v5)
  {
    v6 = [(DAALSSensor *)self averageSampleValue];
    v7 = [v6 intValue];

    v8 = [(DAALSSensor *)self threshold];
    v9 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (v7 <= v8)
      {
        v10 = "Closed";
      }

      else
      {
        v10 = "Opened";
      }

      v16 = 136315650;
      v17 = v10;
      v18 = 1024;
      v19 = v7;
      v20 = 1024;
      v21 = [(DAALSSensor *)self threshold];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DAALSSensor: Detect %s - average value= %d, ALS limit = %d", &v16, 0x18u);
    }

    if (v7 > v8)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    v12 = [[DAChamberSensorEvent alloc] initWithSensorType:0 eventType:v11];
    v13 = [(DAALSSensor *)self mostRecentEvent];
    v14 = [(DAChamberSensorEvent *)v12 isEqual:v13];

    if ((v14 & 1) == 0)
    {
      v15 = [(DAALSSensor *)self delegate];
      [v15 handleSensorEvent:v12];

      [(DAALSSensor *)self setMostRecentEvent:v12];
    }
  }
}

- (void)releaseALSClient
{
  if ([(DAALSSensor *)self HIDSystemClient])
  {
    [(DAALSSensor *)self HIDSystemClient];
    IOHIDEventSystemClientUnregisterEventCallback();
    v3 = [(DAALSSensor *)self HIDSystemClient];

    _IOHIDEventSystemClientCancel(v3);
  }
}

- (void)dealloc
{
  [(DAALSSensor *)self stopMonitoring];
  v3.receiver = self;
  v3.super_class = DAALSSensor;
  [(DAALSSensor *)&v3 dealloc];
}

- (DAChamberSensorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end