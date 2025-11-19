@interface DiagExtWifiScanner
- (BOOL)setupWifiManagerClient;
- (BOOL)startMonitoring:(double)a3;
- (BOOL)startWiFiNetworkScan;
- (DiagExtWifiScanner)initWithDelegate:(id)a3;
- (DiagExtWifiScannerDelegate)delegate;
- (void)dealloc;
- (void)disableAutoJoin;
- (void)enableAutoJoin;
- (void)releaseWifiManagerClient;
- (void)setTimeForNextScan;
- (void)startRunLoop_sync;
- (void)stopMonitoring;
- (void)stopWiFiNetworkScan;
- (void)wifiScanCompleted:(__CFArray *)a3 withError:(int)a4;
@end

@implementation DiagExtWifiScanner

- (DiagExtWifiScanner)initWithDelegate:(id)a3
{
  v6.receiver = self;
  v6.super_class = DiagExtWifiScanner;
  v3 = a3;
  v4 = [(DiagExtWifiScanner *)&v6 init];
  [(DiagExtWifiScanner *)v4 setDelegate:v3, v6.receiver, v6.super_class];

  [(DiagExtWifiScanner *)v4 setFWaitForResult:0];
  [(DiagExtWifiScanner *)v4 setFAvailabilityState:0];
  v4->fWifiManagerRef = 0;
  v4->fWifiDeviceRef = 0;
  v4->fIsMonitoring = 0;
  [(DiagExtWifiScanner *)v4 startRunLoop_sync];
  return v4;
}

- (void)startRunLoop_sync
{
  [(DiagExtWifiScanner *)self setFWaitForResult:dispatch_semaphore_create(0)];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000054A8;
  v6[3] = &unk_100010500;
  v6[4] = self;
  v3 = objc_retainBlock(v6);
  v4 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "DiagExtWifiScanner: Create Runloop", v5, 2u);
  }

  pthread_create(&self->fServerRunLoopThread, 0, sub_1000054FC, v3);
  dispatch_semaphore_wait([(DiagExtWifiScanner *)self fWaitForResult], 0xFFFFFFFFFFFFFFFFLL);
}

- (void)dealloc
{
  v3 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DiagExtWifiScanner dealloc", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = DiagExtWifiScanner;
  [(DiagExtWifiScanner *)&v4 dealloc];
}

- (BOOL)setupWifiManagerClient
{
  if (self->fWifiManagerRef)
  {
    goto LABEL_4;
  }

  self->fWifiManagerRef = WiFiManagerClientCreate();
  v3 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (!os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    fWifiManagerRef = self->fWifiManagerRef;
    if (!fWifiManagerRef)
    {
      return fWifiManagerRef;
    }

LABEL_4:
    if (self->fWifiDeviceRef)
    {
      LOBYTE(fWifiManagerRef) = 0;
      return fWifiManagerRef;
    }

    v5 = WiFiManagerClientCopyDevices();
    if ([v5 count])
    {
      v6 = [v5 objectAtIndexedSubscript:0];

      if (v6)
      {
        self->fWifiDeviceRef = v6;
        CFRetain(v6);
        v7 = self->fWifiManagerRef;
        [(DiagExtWifiScanner *)self fServerRunLoopRef];
        WiFiManagerClientScheduleWithRunLoop();
        Current = CFRunLoopGetCurrent();
        CFRunLoopWakeUp(Current);
        v9 = 1;
        v10 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_17;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v11 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v15) = 0;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "DiagExtWifiScanner: No device available", &v15, 2u);
      }
    }

    v9 = 0;
    v10 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
LABEL_17:

      LOBYTE(fWifiManagerRef) = v9;
      return fWifiManagerRef;
    }

LABEL_13:
    if (self->fWifiDeviceRef)
    {
      v12 = "Success";
    }

    else
    {
      v12 = "Failed";
    }

    v15 = 136315138;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "DiagExtWifiScanner: setup device client %s", &v15, 0xCu);
    goto LABEL_17;
  }

  if (self->fWifiManagerRef)
  {
    v13 = "Success";
  }

  else
  {
    v13 = "Failed";
  }

  v15 = 136315138;
  v16 = v13;
  _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "DiagExtWifiScanner: setup manager client %s", &v15, 0xCu);
  fWifiManagerRef = self->fWifiManagerRef;
  if (fWifiManagerRef)
  {
    goto LABEL_4;
  }

  return fWifiManagerRef;
}

- (void)releaseWifiManagerClient
{
  if (self->fWifiManagerRef)
  {
    [(DiagExtWifiScanner *)self fServerRunLoopRef];
    WiFiManagerClientUnscheduleFromRunLoop();
    CFRelease(self->fWifiManagerRef);
    self->fWifiManagerRef = 0;
    v3 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DiagExtWifiScanner: release manager client", buf, 2u);
    }
  }

  fWifiDeviceRef = self->fWifiDeviceRef;
  if (fWifiDeviceRef)
  {
    CFRelease(fWifiDeviceRef);
    self->fWifiDeviceRef = 0;
    v5 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "DiagExtWifiScanner: release device client", v6, 2u);
    }
  }
}

- (void)setTimeForNextScan
{
  if ([(DiagExtWifiScanner *)self fIsScanning])
  {
    v3 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DiagExtWifiScanner: Device is already scanning for networks", v7, 2u);
    }
  }

  else
  {
    fScanTimer = self->fScanTimer;
    if (fScanTimer)
    {
      [(NSTimer *)fScanTimer invalidate];
    }

    [(DiagExtWifiScanner *)self fScanIntervalInSec];
    v5 = [NSTimer scheduledTimerWithTimeInterval:self target:"startWiFiNetworkScan" selector:0 userInfo:0 repeats:?];
    v6 = self->fScanTimer;
    self->fScanTimer = v5;

    _objc_release_x1();
  }
}

- (BOOL)startMonitoring:(double)a3
{
  fIsMonitoring = self->fIsMonitoring;
  v6 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (fIsMonitoring)
  {
    if (v7)
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DiagExtWifiScanner: already running", &v10, 2u);
    }

    return 1;
  }

  else
  {
    if (v7)
    {
      v10 = 134217984;
      v11 = a3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "DiagExtWifiScanner: Start monitoring w/ scan interval=%lf", &v10, 0xCu);
    }

    [(DiagExtWifiScanner *)self setFScanIntervalInSec:a3];
    v8 = 1;
    [(DiagExtWifiScanner *)self setFScanRepeatRequired:1];
    if ([(DiagExtWifiScanner *)self startWiFiNetworkScan])
    {
      self->fIsMonitoring = 1;
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

- (void)stopMonitoring
{
  v3 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DiagExtWifiScanner: Stop monitoring", v4, 2u);
  }

  [(DiagExtWifiScanner *)self stopWiFiNetworkScan];
  self->fIsMonitoring = 0;
}

- (void)stopWiFiNetworkScan
{
  v3 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DiagExtWifiScanner: Stop wifi scanning", v5, 2u);
  }

  if (self->fWifiDeviceRef)
  {
    WiFiDeviceClientScanCancel();
  }

  fScanTimer = self->fScanTimer;
  if (fScanTimer)
  {
    [(NSTimer *)fScanTimer invalidate];
  }

  [(DiagExtWifiScanner *)self setFIsScanning:0];
}

- (void)wifiScanCompleted:(__CFArray *)a3 withError:(int)a4
{
  if (a4)
  {
    v6 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v21) = a4;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "DiagExtWifiScanner: Scan finished with error 0x%x", buf, 8u);
      [(DiagExtWifiScanner *)self setFIsScanning:0];
      if ([(DiagExtWifiScanner *)self fScanRepeatRequired])
      {
        goto LABEL_23;
      }
    }

    else
    {
      [(DiagExtWifiScanner *)self setFIsScanning:0];
      if ([(DiagExtWifiScanner *)self fScanRepeatRequired])
      {
        goto LABEL_23;
      }
    }

LABEL_4:
    if (![(DiagExtWifiScanner *)self fWaitForResult])
    {
      return;
    }

    goto LABEL_5;
  }

  Count = CFArrayGetCount(a3);
  if (Count < 1)
  {
    v10 = 0;
    goto LABEL_19;
  }

  v10 = 0;
  v11 = 0;
  *&v9 = 138412290;
  v19 = v9;
  do
  {
    while (1)
    {
      CFArrayGetValueAtIndex(a3, v11);
      v13 = WiFiNetworkGetSSID();
      v14 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        break;
      }

      v15 = v13;
      if (![v15 length])
      {
        goto LABEL_12;
      }

LABEL_9:
      v12 = [v15 isEqualToString:{@" ", v19}];

      v10 += (v12 & 1) == 0;
      if (Count == ++v11)
      {
        goto LABEL_16;
      }
    }

    *buf = v19;
    v21 = v13;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "\tSSID=%@", buf, 0xCu);
    v15 = v13;
    if ([v15 length])
    {
      goto LABEL_9;
    }

LABEL_12:

    ++v11;
  }

  while (Count != v11);
LABEL_16:
  if (v10 > 0)
  {
    v16 = 2;
    goto LABEL_20;
  }

LABEL_19:
  v16 = 1;
LABEL_20:
  [(DiagExtWifiScanner *)self setFAvailabilityState:v16, v19];
  v17 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v21) = v10;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "DiagExtWifiScanner: Scan finished and report %d networks", buf, 8u);
  }

  v18 = [(DiagExtWifiScanner *)self delegate];
  [v18 handleWifiAvailabilityEvent:{-[DiagExtWifiScanner fAvailabilityState](self, "fAvailabilityState")}];

  [(DiagExtWifiScanner *)self setFIsScanning:0];
  if (![(DiagExtWifiScanner *)self fScanRepeatRequired])
  {
    goto LABEL_4;
  }

LABEL_23:
  [(DiagExtWifiScanner *)self setTimeForNextScan];
  if ([(DiagExtWifiScanner *)self fWaitForResult])
  {
LABEL_5:
    dispatch_semaphore_signal([(DiagExtWifiScanner *)self fWaitForResult]);
  }
}

- (BOOL)startWiFiNetworkScan
{
  if ([(DiagExtWifiScanner *)self fIsScanning])
  {
    v3 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DiagExtWifiScanner: Scanning already in progress", &v27, 2u);
    }

LABEL_24:
    LOBYTE(v23) = 1;
    return v23;
  }

  if (self->fWifiDeviceRef)
  {
    +[NSDictionary dictionary];
    v4 = WiFiDeviceClientScanAsync();
    if (!v4)
    {
      goto LABEL_21;
    }

    v5 = v4;
    v6 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v27 = 67109120;
      v28 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "DiagExtWifiScanner: Scan request returned error %d", &v27, 8u);
    }

    [NSThread sleepForTimeInterval:2.0];
    fWifiDeviceRef = self->fWifiDeviceRef;
    +[NSDictionary dictionary];
    v8 = WiFiDeviceClientScanAsync();
    if (!v8)
    {
      goto LABEL_21;
    }

    v9 = v8;
    v10 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v27 = 67109120;
      v28 = v9;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "DiagExtWifiScanner: Scan request returned error %d", &v27, 8u);
    }

    [NSThread sleepForTimeInterval:2.0];
    v11 = self->fWifiDeviceRef;
    +[NSDictionary dictionary];
    v12 = WiFiDeviceClientScanAsync();
    if (!v12)
    {
      goto LABEL_21;
    }

    v13 = v12;
    v14 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v27 = 67109120;
      v28 = v13;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "DiagExtWifiScanner: Scan request returned error %d", &v27, 8u);
    }

    [NSThread sleepForTimeInterval:2.0];
    v15 = self->fWifiDeviceRef;
    +[NSDictionary dictionary];
    v16 = WiFiDeviceClientScanAsync();
    if (!v16)
    {
      goto LABEL_21;
    }

    v17 = v16;
    v18 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v27 = 67109120;
      v28 = v17;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "DiagExtWifiScanner: Scan request returned error %d", &v27, 8u);
    }

    [NSThread sleepForTimeInterval:2.0];
    v19 = self->fWifiDeviceRef;
    +[NSDictionary dictionary];
    v20 = WiFiDeviceClientScanAsync();
    if (!v20)
    {
LABEL_21:
      v24 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "DiagExtWifiScanner: Start wifi scanning", &v27, 2u);
      }

      [(DiagExtWifiScanner *)self setFIsScanning:1];
      goto LABEL_24;
    }

    v21 = v20;
    v22 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v27 = 67109120;
      v28 = v21;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "DiagExtWifiScanner: Scan request returned error %d", &v27, 8u);
    }

    [NSThread sleepForTimeInterval:2.0];
    LOBYTE(v23) = 0;
  }

  else
  {
    v25 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    v23 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (v23)
    {
      LOWORD(v27) = 0;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "DiagExtWifiScanner: no client", &v27, 2u);
      LOBYTE(v23) = 0;
    }
  }

  return v23;
}

- (void)disableAutoJoin
{
  fWifiManagerRef = self->fWifiManagerRef;
  if (fWifiManagerRef)
  {
    _WiFiManagerClientDisable(fWifiManagerRef, a2);
  }
}

- (void)enableAutoJoin
{
  fWifiManagerRef = self->fWifiManagerRef;
  if (fWifiManagerRef)
  {
    _WiFiManagerClientEnable(fWifiManagerRef, a2);
  }
}

- (DiagExtWifiScannerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end