@interface RFSelfDiagExtensionHelper
- (BOOL)addAWDConfiguration:(int)configuration;
- (BOOL)isTestSupported:(int)supported;
- (BOOL)loadTestConfigFromUserDefaults;
- (BOOL)prepareSetupForTest;
- (BOOL)recoverBasebandState:(BOOL)state;
- (BOOL)resetBaseband:(BOOL)baseband;
- (BOOL)startBasebandRFSelfTest:(unsigned int)test TestCommand:(unsigned int)command;
- (BOOL)startMonitorChamberOpen;
- (BOOL)updateEnclosedCheckRunningFlag:(BOOL)flag;
- (BOOL)waitForChamberClosed:(unsigned int)closed;
- (RFSelfDiagExtensionHelper)initWithDelegate:(id)delegate;
- (RFSelfDiagExtensionHelperDelegate)delegate;
- (TestConfigFlag)testConfiguration;
- (id).cxx_construct;
- (unsigned)getBasebandResultWaitTime;
- (void)dealloc;
- (void)handleALSEnclosedEvent:(int)event;
- (void)handleWifiAvailabilityEvent:(int)event;
- (void)resetAll;
- (void)restoreSetup;
- (void)stopMonitorChamber;
@end

@implementation RFSelfDiagExtensionHelper

- (RFSelfDiagExtensionHelper)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = RFSelfDiagExtensionHelper;
  v5 = [(RFSelfDiagExtensionHelper *)&v16 init];
  [v5 setDelegate:delegateCopy];
  v6 = dispatch_group_create();
  v7 = *(v5 + 5);
  *(v5 + 5) = v6;
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(v5 + 6);
  *(v5 + 6) = 0;
  if (v8)
  {
    dispatch_group_leave(v8);
    dispatch_release(v8);
  }

  v9 = *(v5 + 3);
  *(v5 + 3) = 0;

  BasebandRFDiagnostics::create(&v15, v10);
  v11 = v15;
  v15 = 0uLL;
  v12 = *(v5 + 2);
  *(v5 + 8) = v11;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = *(&v15 + 1);
  if (*(&v15 + 1) && !atomic_fetch_add((*(&v15 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  *(v5 + 14) = 0;
  v5[60] = 0;
  [v5 setFSensor:{0, v15}];

  return v5;
}

- (void)dealloc
{
  v3 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "RFSelfDiagExtensionHelper dealloc", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = RFSelfDiagExtensionHelper;
  [(RFSelfDiagExtensionHelper *)&v4 dealloc];
}

- (void)resetAll
{
  fALSMonitor = self->fALSMonitor;
  if (fALSMonitor)
  {
    [(DiagExtALSDataMonitor *)fALSMonitor releaseALSClient];
  }

  fWifiScanner = self->fWifiScanner;
  if (fWifiScanner)
  {
    [(DiagExtWifiScanner *)fWifiScanner releaseWifiManagerClient];
  }

  ptr = self->fBasebandDiagnostics.__ptr_;
  if (ptr)
  {
    BasebandRFDiagnostics::resetAll(ptr);
  }

  v6 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "RFSelfDiagExtensionHelper reset", v7, 2u);
  }
}

- (BOOL)isTestSupported:(int)supported
{
  ptr = self->fBasebandDiagnostics.__ptr_;
  isRFTestSupported = BasebandRFDiagnostics::isRFTestSupported();
  if ((isRFTestSupported & 1) == 0)
  {
    v5 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Test is not supported on this device", v7, 2u);
    }
  }

  return isRFTestSupported;
}

- (BOOL)prepareSetupForTest
{
  v3 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Prepare setup for testing", v11, 2u);
  }

  v4 = +[CBSUtilities isCheckerBoardActive];
  v5 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Testing started in CB: disable network reconnect", v11, 2u);
    }

    +[CBSUtilities disableNetworkReconnect];
  }

  else if (v6)
  {
    LOWORD(v11[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Testing started in SB", v11, 2u);
  }

  if ([(RFSelfDiagExtensionHelper *)self fSensor]&& ([(RFSelfDiagExtensionHelper *)self fSensor]& 2) != 0)
  {
    v7 = [(DiagExtWifiScanner *)self->fWifiScanner scanAndGetWifiAvailability:60];
    v8 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109120;
      v11[1] = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Wifi Availability Current state is %D", v11, 8u);
    }

    if (v7 != 2)
    {
      return 0;
    }

    v9 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Disable wifi auto-join", v11, 2u);
    }

    [(DiagExtWifiScanner *)self->fWifiScanner disableAutoJoin];
  }

  return 1;
}

- (void)restoreSetup
{
  v3 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Restore setup", buf, 2u);
  }

  if (([(RFSelfDiagExtensionHelper *)self fSensor]& 2) != 0 && self->fWifiScanner)
  {
    v4 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Enable wifi auto-join", v7, 2u);
    }

    [(DiagExtWifiScanner *)self->fWifiScanner enableAutoJoin];
  }

  if (+[CBSUtilities isCheckerBoardActive])
  {
    v5 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Enable CB network reconnect", v6, 2u);
    }

    +[CBSUtilities enableNetworkReconnect];
  }
}

- (void)stopMonitorChamber
{
  v3 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stop monitoring chamber", v7, 2u);
  }

  fWifiScanner = self->fWifiScanner;
  if (fWifiScanner)
  {
    [(DiagExtWifiScanner *)fWifiScanner stopMonitoring];
  }

  fALSMonitor = self->fALSMonitor;
  if (fALSMonitor)
  {
    [(DiagExtALSDataMonitor *)fALSMonitor stopMonitoring];
  }

  gr_passwd = self->fGroupMonitorChamber.gr_passwd;
  self->fGroupMonitorChamber.gr_passwd = 0;
  if (gr_passwd)
  {
    dispatch_group_leave(gr_passwd);
    dispatch_release(gr_passwd);
  }

  [(RFSelfDiagExtensionHelper *)self setFMonitoring:0];
}

- (BOOL)startMonitorChamberOpen
{
  v3 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Start monitoring chamber Opened", v8, 2u);
    v6 = [(RFSelfDiagExtensionHelper *)self updateEnclosedCheckRunningFlag:0];
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  else
  {
    v4 = [(RFSelfDiagExtensionHelper *)self updateEnclosedCheckRunningFlag:0];
    result = 0;
    if (!v4)
    {
      return result;
    }
  }

  [(RFSelfDiagExtensionHelper *)self setFMonitoring:1];
  if (([(RFSelfDiagExtensionHelper *)self fSensor]& 1) != 0 && ![(DiagExtALSDataMonitor *)self->fALSMonitor startMonitoring])
  {
    goto LABEL_11;
  }

  if (([(RFSelfDiagExtensionHelper *)self fSensor]& 2) == 0)
  {
    return 1;
  }

  LODWORD(v7) = self->testConfig.override_detectChamberSensor;
  if ([(DiagExtWifiScanner *)self->fWifiScanner startMonitoring:v7])
  {
    return 1;
  }

LABEL_11:
  [(RFSelfDiagExtensionHelper *)self stopMonitorChamber];
  return 0;
}

- (BOOL)updateEnclosedCheckRunningFlag:(BOOL)flag
{
  flagCopy = flag;
  self->fGroupMonitorChamber.gr_gid = 0;
  if (([(RFSelfDiagExtensionHelper *)self fSensor]& 1) != 0)
  {
    currentALSEnclosedState = [(DiagExtALSDataMonitor *)self->fALSMonitor currentALSEnclosedState];
    v6 = currentALSEnclosedState;
    if (flagCopy)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    if (currentALSEnclosedState != v7)
    {
      ++self->fGroupMonitorChamber.gr_gid;
    }

    v8 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      gr_gid = self->fGroupMonitorChamber.gr_gid;
      v19 = 67109376;
      v20 = v6;
      v21 = 1024;
      LODWORD(v22) = gr_gid;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "ALS current=%d, monitoring flag=%d", &v19, 0xEu);
    }
  }

  if (([(RFSelfDiagExtensionHelper *)self fSensor]& 2) != 0)
  {
    currentWifiAvailabilityState = [(DiagExtWifiScanner *)self->fWifiScanner currentWifiAvailabilityState];
    v11 = currentWifiAvailabilityState;
    if (flagCopy)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    if (currentWifiAvailabilityState != v12)
    {
      self->fGroupMonitorChamber.gr_gid += 2;
    }

    v13 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->fGroupMonitorChamber.gr_gid;
      v19 = 67109376;
      v20 = v11;
      v21 = 1024;
      LODWORD(v22) = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Reachability current=%d, monitoring flag=%d", &v19, 0xEu);
    }
  }

  v15 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v17 = "Opened";
    v18 = self->fGroupMonitorChamber.gr_gid;
    if (flagCopy)
    {
      v17 = "Closed";
    }

    v19 = 67109378;
    v20 = v18;
    v21 = 2080;
    v22 = v17;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Update monitoring flag to 0x%x. target state=%s", &v19, 0x12u);
  }

  return self->fGroupMonitorChamber.gr_gid != 0;
}

- (BOOL)waitForChamberClosed:(unsigned int)closed
{
  v5 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 67109376;
    closedCopy = closed;
    v22 = 1024;
    fSensor = [(RFSelfDiagExtensionHelper *)self fSensor];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Waiting for Chamber Clossed: waitTime=%d, sensor=%d", &v20, 0xEu);
  }

  if (![(RFSelfDiagExtensionHelper *)self updateEnclosedCheckRunningFlag:1])
  {
    return 1;
  }

  [(RFSelfDiagExtensionHelper *)self setFMonitoring:2];
  gr_gid = self->fGroupMonitorChamber.gr_gid;
  if (gr_gid)
  {
    if (![(DiagExtALSDataMonitor *)self->fALSMonitor startMonitoring])
    {
      goto LABEL_13;
    }

    gr_gid = self->fGroupMonitorChamber.gr_gid;
  }

  if ((gr_gid & 2) == 0 || (LODWORD(v6) = self->testConfig.override_detectChamberSensor, [(DiagExtWifiScanner *)self->fWifiScanner startMonitoring:v6]))
  {
    if (!self->fGroupMonitorChamber.gr_passwd)
    {
      gr_name = self->fGroupMonitorChamber.gr_name;
      if (gr_name)
      {
        dispatch_retain(self->fGroupMonitorChamber.gr_name);
        dispatch_group_enter(gr_name);
        gr_passwd = self->fGroupMonitorChamber.gr_passwd;
        self->fGroupMonitorChamber.gr_passwd = gr_name;
        if (gr_passwd)
        {
          dispatch_group_leave(gr_passwd);
          dispatch_release(gr_passwd);
        }
      }

      else
      {
        self->fGroupMonitorChamber.gr_passwd = 0;
      }
    }

    v8 = 1000000000 * closed;
    v9 = self->fGroupMonitorChamber.gr_name;
    v10 = dispatch_time(0, v8);
    if (dispatch_group_wait(v9, v10))
    {
      v11 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v19 = self->fGroupMonitorChamber.gr_gid;
        v20 = 67109120;
        closedCopy = v19;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Chamber is still Open: MonitoringFlag=%d", &v20, 8u);
      }
    }

    else
    {
      v14 = self->fGroupMonitorChamber.gr_gid == 0;
      v15 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (v14)
      {
        if (v16)
        {
          LOWORD(v20) = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Chamber is ready", &v20, 2u);
        }

        v12 = 1;
        goto LABEL_14;
      }

      if (v16)
      {
        LOWORD(v20) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Chamber monitor stopped", &v20, 2u);
      }
    }
  }

LABEL_13:
  v12 = 0;
LABEL_14:
  [(RFSelfDiagExtensionHelper *)self stopMonitorChamber];
  return v12;
}

- (void)handleALSEnclosedEvent:(int)event
{
  v5 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    gr_gid = self->fGroupMonitorChamber.gr_gid;
    v16[0] = 67109376;
    v16[1] = event;
    v17 = 1024;
    v18 = gr_gid;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received ALS event w/ state=%d, monitoring flag=%d", v16, 0xEu);
  }

  if ([(RFSelfDiagExtensionHelper *)self fMonitoring]&& (self->fGroupMonitorChamber.gr_gid & 1) != 0)
  {
    fMonitoring = [(RFSelfDiagExtensionHelper *)self fMonitoring];
    if (event == 1 && fMonitoring == 2)
    {
      gr_passwd = self->fGroupMonitorChamber.gr_passwd;
      v9 = self->fGroupMonitorChamber.gr_gid - 1;
      self->fGroupMonitorChamber.gr_gid = v9;
      if (v9)
      {
        if (gr_passwd)
        {
          v10 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v16[0]) = 0;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Wait for other sensor to declare Chamber Closed", v16, 2u);
          }
        }
      }

      else if (gr_passwd)
      {
        v14 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v16[0]) = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Chamber closed. Stop monitoring", v16, 2u);
        }

        v15 = self->fGroupMonitorChamber.gr_passwd;
        self->fGroupMonitorChamber.gr_passwd = 0;
        if (v15)
        {
          dispatch_group_leave(v15);
          dispatch_release(v15);
        }
      }
    }

    else
    {
      fMonitoring2 = [(RFSelfDiagExtensionHelper *)self fMonitoring];
      if (event == 2 && fMonitoring2 == 1)
      {
        v12 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v16[0]) = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Chamber opened. Stop monitoring", v16, 2u);
        }

        --self->fGroupMonitorChamber.gr_gid;
        delegate = [(RFSelfDiagExtensionHelper *)self delegate];
        [delegate handleChamberOpenEvent:1];
      }
    }
  }
}

- (void)handleWifiAvailabilityEvent:(int)event
{
  v5 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    gr_gid = self->fGroupMonitorChamber.gr_gid;
    v15[0] = 67109376;
    v15[1] = event;
    v16 = 1024;
    v17 = gr_gid;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received wifi availability event w/ state=%d, monitoring flag=%d", v15, 0xEu);
  }

  if ([(RFSelfDiagExtensionHelper *)self fMonitoring]&& (self->fGroupMonitorChamber.gr_gid & 2) != 0)
  {
    fMonitoring = [(RFSelfDiagExtensionHelper *)self fMonitoring];
    if (event == 1 && fMonitoring == 2)
    {
      gr_passwd = self->fGroupMonitorChamber.gr_passwd;
      v9 = self->fGroupMonitorChamber.gr_gid - 2;
      self->fGroupMonitorChamber.gr_gid = v9;
      if (v9)
      {
        if (gr_passwd)
        {
          v10 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v15[0]) = 0;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Wait for other sensor to detect Chamber Closed", v15, 2u);
          }
        }
      }

      else if (gr_passwd)
      {
        v13 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v15[0]) = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Chamber closed. Stop monitoring", v15, 2u);
        }

        v14 = self->fGroupMonitorChamber.gr_passwd;
        self->fGroupMonitorChamber.gr_passwd = 0;
        if (v14)
        {
          dispatch_group_leave(v14);
          dispatch_release(v14);
        }
      }
    }

    else
    {
      fMonitoring2 = [(RFSelfDiagExtensionHelper *)self fMonitoring];
      if (event == 2 && fMonitoring2 == 1)
      {
        self->fGroupMonitorChamber.gr_gid -= 2;
        delegate = [(RFSelfDiagExtensionHelper *)self delegate];
        [delegate handleChamberOpenEvent:2];
      }
    }
  }
}

- (BOOL)addAWDConfiguration:(int)configuration
{
  v5 = [NSBundle bundleWithIdentifier:@"com.apple.DiagnosticsService.Diagnostic-8209"];
  bundleURL = [v5 bundleURL];

  RadioType = BasebandDiagnostics::getRadioType(self->fBasebandDiagnostics.__ptr_);
  if (RadioType)
  {
    if (RadioType == 1)
    {
      if ((configuration & 0xFFFFFFFE) == 2)
      {
        v8 = @"mav-desense-rf-self-test-result.deviceconfig";
      }

      else
      {
        v8 = @"mav-rf-self-test-result.deviceconfig";
      }
    }

    else
    {
      if (RadioType != 2)
      {
        v18 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *v22 = 0;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to get awd deviceconfig: unknown baseband", v22, 2u);
        }

        goto LABEL_18;
      }

      v8 = @"int-rf-self-test-result.deviceconfig";
    }
  }

  else
  {
    v8 = @"ice-rf-self-test-result.deviceconfig";
  }

  v9 = [bundleURL URLByAppendingPathComponent:v8 isDirectory:0];
  v10 = v9;
  if (v9)
  {
    path = [v9 path];
    v12 = [[NSData alloc] initWithContentsOfFile:path];
    v13 = [v12 length];
    v14 = v13;
    if (v13)
    {
      v15 = operator new[](v13);
      [v12 getBytes:v15 length:v14];
      BasebandDiagnostics::removeAWDConfig(self->fBasebandDiagnostics.__ptr_);
      if (BasebandDiagnostics::addAWDConfigPayload(self->fBasebandDiagnostics.__ptr_, v15, v14))
      {
        ptr = self->fBasebandDiagnostics.__ptr_;
        v23[0] = off_100010478;
        v23[1] = self;
        v24 = v23;
        BasebandDiagnostics::registerAWDMetricHandler();
        if (v24 == v23)
        {
          (*(*v24 + 32))(v24);
          v17 = 1;
        }

        else
        {
          if (v24)
          {
            (*(*v24 + 40))();
          }

          v17 = 1;
        }

        goto LABEL_25;
      }

      v19 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 0;
        v20 = "Failed to add AWD config to Baseband";
        goto LABEL_23;
      }
    }

    else
    {
      v19 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v22 = 0;
        v20 = "Failed to read AWD Config file";
LABEL_23:
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v20, v22, 2u);
      }
    }

    v17 = 0;
LABEL_25:

    goto LABEL_26;
  }

LABEL_18:
  v17 = 0;
LABEL_26:

  return v17;
}

- (BOOL)startBasebandRFSelfTest:(unsigned int)test TestCommand:(unsigned int)command
{
  RadioType = BasebandDiagnostics::getRadioType(self->fBasebandDiagnostics.__ptr_);
  switch(RadioType)
  {
    case 0:
      ptr = self->fBasebandDiagnostics.__ptr_;
      goto LABEL_13;
    case 1:
      if ((*(&self->fGroupMonitorChamber.gr_gid + 1) & 1) == 0)
      {
        v7 = BasebandRFDiagnostics::setBasebandRFSelfTestTicket(self->fBasebandDiagnostics.__ptr_);
        v8 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v16 = 136315138;
          v17 = BasebandRFDiagnostics::asString();
          _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Set RF Self Test Ticket: %s", &v16, 0xCu);
          if (v7)
          {
LABEL_9:
            v9 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
            if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              return v7 == 0;
            }

            goto LABEL_10;
          }
        }

        else if (v7)
        {
          goto LABEL_9;
        }
      }

      if ([(RFSelfDiagExtensionHelper *)self setBasebandFTM])
      {
        v14 = self->fBasebandDiagnostics.__ptr_;
LABEL_21:
        started = BasebandRFDiagnostics::startBasebandRFSelfTestFTMMode();
LABEL_22:
        v7 = started;
        v9 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          return v7 == 0;
        }

        goto LABEL_10;
      }

      v15 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v16) = 0;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to set to FTM", &v16, 2u);
      }

      v7 = 8;
      v9 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        return v7 == 0;
      }

LABEL_10:
      v10 = BasebandRFDiagnostics::asString();
      v16 = 136315138;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Start RF Self Test:  %s", &v16, 0xCu);
      return v7 == 0;
    case 2:
      BasebandRFDiagnostics::prepareRFSelfTest(self->fBasebandDiagnostics.__ptr_);
      ptr = self->fBasebandDiagnostics.__ptr_;
      if (*(&self->fGroupMonitorChamber.gr_gid + 1))
      {
        goto LABEL_21;
      }

LABEL_13:
      started = BasebandRFDiagnostics::startBasebandRFSelfTestAST2Mode(ptr);
      goto LABEL_22;
  }

  v13 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v16) = 0;
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to start: unknown baseband", &v16, 2u);
  }

  v7 = 9;
  v9 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_10;
  }

  return v7 == 0;
}

- (unsigned)getBasebandResultWaitTime
{
  result = BasebandRFDiagnostics::getBasebandEstimatedTestTime(self->fBasebandDiagnostics.__ptr_);
  if (!result)
  {
    return *&self->testConfig.overrideTestConfigEnable;
  }

  return result;
}

- (BOOL)resetBaseband:(BOOL)baseband
{
  ptr = self->fBasebandDiagnostics.__ptr_;
  __p = operator new(0x40uLL);
  strcpy(__p, "RF Self Test: RFSelfDiag extension triggers baseband reset");
  v4 = BasebandDiagnostics::resetBaseband();
  operator delete(__p);
  return v4;
}

- (BOOL)recoverBasebandState:(BOOL)state
{
  RadioType = BasebandDiagnostics::getRadioType(self->fBasebandDiagnostics.__ptr_);
  switch(RadioType)
  {
    case 2:
      goto LABEL_4;
    case 1:
      if (!state)
      {
        v7 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          ptr = self->fBasebandDiagnostics.__ptr_;
          updated = BasebandDiagnostics::updateBasebandOperatingMode();
          v10 = "Failed";
          if (updated)
          {
            v10 = "Success";
          }

          *__p = 136315138;
          *&__p[4] = v10;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Set to baseband online: %s", __p, 0xCu);
        }

        v11 = dispatch_semaphore_create(0);
        v12 = dispatch_time(0, 1000000000);
        if (dispatch_semaphore_wait(v11, v12))
        {
          v13 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *__p = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Trigger reset baseband", __p, 2u);
          }
        }
      }

      goto LABEL_15;
    case 0:
LABEL_4:
      v6 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Trigger reset baseband", __p, 2u);
      }

LABEL_15:
      v14 = self->fBasebandDiagnostics.__ptr_;
      *__p = operator new(0x40uLL);
      *&__p[8] = xmmword_1000093E0;
      strcpy(*__p, "RF Self Test: RFSelfDiag extension triggers baseband reset");
      LOBYTE(v15) = BasebandDiagnostics::resetBaseband();
      if ((__p[23] & 0x80000000) != 0)
      {
        v16 = v15;
        operator delete(*__p);
        LOBYTE(v15) = v16;
      }

      return v15;
  }

  v17 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  v15 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
  if (v15)
  {
    *__p = 0;
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to recover baseband: unknown baseband", __p, 2u);
    LOBYTE(v15) = 0;
  }

  return v15;
}

- (BOOL)loadTestConfigFromUserDefaults
{
  ptr = self->fBasebandDiagnostics.__ptr_;
  *__p = operator new(0x20uLL);
  *&__p[8] = xmmword_1000093F0;
  strcpy(*__p, "overrideTestConfigEnable");
  LOBYTE(self->fGroupMonitorChamber.gr_mem) = BasebandDiagnostics::readIntegerFromUserDefaults() != 0;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v4 = self->fBasebandDiagnostics.__ptr_;
  *__p = operator new(0x20uLL);
  *&__p[8] = xmmword_100009400;
  strcpy(*__p, "override_detectChamberReady");
  LODWORD(v4) = BasebandDiagnostics::readIntegerFromUserDefaults();
  operator delete(*__p);
  HIDWORD(self->fGroupMonitorChamber.gr_mem) = v4 & ~(v4 >> 31);
  v5 = self->fBasebandDiagnostics.__ptr_;
  *__p = operator new(0x20uLL);
  *&__p[8] = xmmword_100009410;
  strcpy(*__p, "override_closeChamberCountdown");
  IntegerFromUserDefaults = BasebandDiagnostics::readIntegerFromUserDefaults();
  operator delete(*__p);
  if (IntegerFromUserDefaults >= 1)
  {
    v7 = IntegerFromUserDefaults;
  }

  else
  {
    v7 = 120;
  }

  LODWORD(self->fSessionMonitorChamber.fObj.fObj) = v7;
  v8 = self->fBasebandDiagnostics.__ptr_;
  __p[23] = 21;
  strcpy(__p, "override_ALSThreshold");
  v9 = BasebandDiagnostics::readIntegerFromUserDefaults();
  if (v9 >= 1)
  {
    v10 = v9;
  }

  else
  {
    v10 = 4;
  }

  HIDWORD(self->fSessionMonitorChamber.fObj.fObj) = v10;
  v11 = self->fBasebandDiagnostics.__ptr_;
  *__p = operator new(0x20uLL);
  *&__p[8] = xmmword_100009410;
  strcpy(*__p, "override_testCompleteAlertTime");
  v12 = BasebandDiagnostics::readIntegerFromUserDefaults();
  operator delete(*__p);
  if (v12 >= 1)
  {
    v13 = v12;
  }

  else
  {
    v13 = 300;
  }

  self->fEnclosedCheckRunningFlag = v13;
  v14 = self->fBasebandDiagnostics.__ptr_;
  *__p = operator new(0x19uLL);
  *&__p[8] = xmmword_100009420;
  strcpy(*__p, "override_vibrationAlert");
  self->fFactoryTestEnabled = BasebandDiagnostics::readIntegerFromUserDefaults() != 0;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v15 = self->fBasebandDiagnostics.__ptr_;
  __p[23] = 19;
  strcpy(__p, "override_chimeAlert");
  *(&self->fFactoryTestEnabled + 1) = BasebandDiagnostics::readIntegerFromUserDefaults() != 0;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  v16 = [ABMDiagnosticExtensionLogging getOSLogHandler:30];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    gr_mem_low = LOBYTE(self->fGroupMonitorChamber.gr_mem);
    *__p = 67109120;
    *&__p[4] = gr_mem_low;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Test config: overrides test config enabled = %d", __p, 8u);
  }

  if (LOBYTE(self->fGroupMonitorChamber.gr_mem) == 1)
  {
    v18 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      gr_mem_high = HIDWORD(self->fGroupMonitorChamber.gr_mem);
      fObj = self->fSessionMonitorChamber.fObj.fObj;
      fObj_high = HIDWORD(self->fSessionMonitorChamber.fObj.fObj);
      fEnclosedCheckRunningFlag = self->fEnclosedCheckRunningFlag;
      fFactoryTestEnabled = self->fFactoryTestEnabled;
      v24 = *(&self->fFactoryTestEnabled + 1);
      *__p = 67110400;
      *&__p[4] = gr_mem_high;
      *&__p[8] = 1024;
      *&__p[10] = fObj;
      *&__p[14] = 1024;
      *&__p[16] = fObj_high;
      *&__p[20] = 1024;
      *&__p[22] = fEnclosedCheckRunningFlag;
      v38 = 1024;
      v39 = fFactoryTestEnabled;
      v40 = 1024;
      v41 = v24;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "\tdetectChamberReady=%d, closeChamberCountdown=%d, ALSThreshold=%d, testCompleteAlertTime=%d, vibrationAlert=%d, chimeAlert=%d", __p, 0x26u);
    }
  }

  v25 = self->fBasebandDiagnostics.__ptr_;
  strcpy(__p, "basebandResultWaitTime");
  __p[23] = 22;
  v26 = BasebandDiagnostics::readIntegerFromUserDefaults();
  if ((__p[23] & 0x80000000) != 0)
  {
    v27 = v26;
    operator delete(*__p);
    v26 = v27;
  }

  if (v26 >= 1)
  {
    v28 = v26;
  }

  else
  {
    v28 = 120;
  }

  *&self->testConfig.overrideTestConfigEnable = v28;
  v29 = self->fBasebandDiagnostics.__ptr_;
  __p[23] = 16;
  strcpy(__p, "wifiScanInterval");
  v30 = BasebandDiagnostics::readIntegerFromUserDefaults();
  if ((__p[23] & 0x80000000) != 0)
  {
    v31 = v30;
    operator delete(*__p);
    v30 = v31;
  }

  if (v30 >= 1)
  {
    v32 = v30;
  }

  else
  {
    v32 = 8;
  }

  self->testConfig.override_detectChamberSensor = v32;
  v33 = +[ABMDiagnosticExtensionLogging getOSLogHandler];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = *&self->testConfig.overrideTestConfigEnable;
    override_detectChamberSensor = self->testConfig.override_detectChamberSensor;
    *__p = 67109376;
    *&__p[4] = v34;
    *&__p[8] = 1024;
    *&__p[10] = override_detectChamberSensor;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Test config: basebandResultWaitTime=%d, wifiScanInterval=%d", __p, 0xEu);
  }

  return self->fGroupMonitorChamber.gr_mem;
}

- (TestConfigFlag)testConfiguration
{
  v3 = *&self[2].override_testCompleteAlertTime;
  *&retstr->overrideTestConfigEnable = *&self[2].overrideTestConfigEnable;
  *&retstr->override_testCompleteAlertTime = v3;
  return self;
}

- (RFSelfDiagExtensionHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->testConfig.override_testCompleteAlertTime);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  return self;
}

@end