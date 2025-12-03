@interface COSReachabilityMonitor
+ (id)sharedMonitor;
- (BOOL)isNetworkReachable;
- (COSReachabilityMonitor)init;
- (void)centralManagerDidUpdateState:(id)state;
- (void)dealloc;
- (void)startMonitoring;
- (void)stopMonitoring;
- (void)updateRadioStateWithCompletion:(id)completion;
- (void)updateReachabilityRadioState;
@end

@implementation COSReachabilityMonitor

+ (id)sharedMonitor
{
  if (qword_1002BD650 != -1)
  {
    sub_10000F474();
  }

  v3 = qword_1002BD648;

  return v3;
}

- (COSReachabilityMonitor)init
{
  v4.receiver = self;
  v4.super_class = COSReachabilityMonitor;
  v2 = [(COSReachabilityMonitor *)&v4 init];
  if (v2)
  {
    if (sub_10000F59C())
    {
      *(v2 + 25) = 257;
    }

    else
    {
      *(v2 + 2) = SCNetworkReachabilityCreateWithName(kCFAllocatorDefault, [@"apple.com" UTF8String]);
    }

    v2[27] = 1;
    v2[24] = 0;
  }

  return v2;
}

- (void)startMonitoring
{
  if (sub_10000F59C())
  {
    goto LABEL_20;
  }

  reachability = self->_reachability;
  if (!reachability)
  {
    goto LABEL_20;
  }

  flags = 0;
  if (!SCNetworkReachabilityGetFlags(reachability, &flags))
  {
    v5 = pbb_bridge_log();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR) || !os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    LOWORD(buf.version) = 0;
    v8 = "SCNetworkReachabilityGetFlags did not get valid state at startup! Assuming we're connected until updated otherwise...";
    v9 = v5;
    v10 = 2;
    goto LABEL_9;
  }

  v4 = flags;
  self->_isConnectedOverWifi = (flags & 0x40000) == 0;
  self->_isNetworkReachable = (v4 & 2) != 0;
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    isNetworkReachable = self->_isNetworkReachable;
    isConnectedOverWifi = self->_isConnectedOverWifi;
    LODWORD(buf.version) = 67109376;
    HIDWORD(buf.version) = isNetworkReachable;
    LOWORD(buf.info) = 1024;
    *(&buf.info + 2) = isConnectedOverWifi;
    v8 = "Reachability Monitor: Network reachability at startup: %d isWifi: %d";
    v9 = v5;
    v10 = 14;
LABEL_9:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, &buf, v10);
  }

LABEL_10:

  buf.version = 0;
  memset(&buf.retain, 0, 24);
  buf.info = self;
  if (!SCNetworkReachabilitySetCallback(self->_reachability, sub_100010274, &buf))
  {
    v13 = pbb_bridge_log();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR) || !os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *v17 = 0;
    v14 = "SCNetworkReachabilitySetCallback returned false, assuming current state";
    goto LABEL_18;
  }

  v11 = self->_reachability;
  Current = CFRunLoopGetCurrent();
  if (!SCNetworkReachabilityScheduleWithRunLoop(v11, Current, kCFRunLoopDefaultMode))
  {
    v13 = pbb_bridge_log();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR) || !os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *v17 = 0;
    v14 = "SCNetworkReachabilityScheduleWithRunLoop returned false, assuming current state";
LABEL_18:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, v17, 2u);
LABEL_19:
  }

LABEL_20:
  v15 = [[CBCentralManager alloc] initWithDelegate:self queue:&_dispatch_main_q options:0];
  manager = self->_manager;
  self->_manager = v15;

  [(COSReachabilityMonitor *)self centralManagerDidUpdateState:self->_manager];
  self->_monitorStarted = 1;
}

- (BOOL)isNetworkReachable
{
  if (!self->_monitorStarted)
  {
    [(COSReachabilityMonitor *)self startMonitoring];
  }

  return self->_isNetworkReachable;
}

- (void)dealloc
{
  [(COSReachabilityMonitor *)self stopMonitoring];
  reachability = self->_reachability;
  if (reachability)
  {
    CFRelease(reachability);
  }

  v4.receiver = self;
  v4.super_class = COSReachabilityMonitor;
  [(COSReachabilityMonitor *)&v4 dealloc];
}

- (void)stopMonitoring
{
  reachability = self->_reachability;
  if (reachability)
  {
    Current = CFRunLoopGetCurrent();
    SCNetworkReachabilityUnscheduleFromRunLoop(reachability, Current, kCFRunLoopDefaultMode);
  }

  [(CBCentralManager *)self->_manager setDelegate:0];
  manager = self->_manager;
  self->_manager = 0;

  self->_monitorStarted = 0;
}

- (void)centralManagerDidUpdateState:(id)state
{
  self->_isBluetoothAvailable = [state state] == 5;
  v4 = pbb_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    isBluetoothAvailable = self->_isBluetoothAvailable;
    v6[0] = 67109120;
    v6[1] = isBluetoothAvailable;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Bluetooth Updated ~ Bluetooth is on: %d", v6, 8u);
  }
}

- (void)updateRadioStateWithCompletion:(id)completion
{
  completionCopy = completion;
  [(COSReachabilityMonitor *)self updateReachabilityRadioState];
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  if (self->_radioState)
  {
    v5 = pbb_setupflow_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Radio State might not be ready, try again ever second for 5 seconds before posting alert", buf, 2u);
    }

    objc_initWeak(buf, self);
    radioStateTimer = self->_radioStateTimer;
    if (radioStateTimer)
    {
      [(NSTimer *)radioStateTimer invalidate];
      v7 = self->_radioStateTimer;
      self->_radioStateTimer = 0;
    }

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000EE8F4;
    v10[3] = &unk_10026BA60;
    objc_copyWeak(&v13, buf);
    v12 = v15;
    v11 = completionCopy;
    v8 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:v10 block:1.0];
    v9 = self->_radioStateTimer;
    self->_radioStateTimer = v8;

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  else
  {
    completionCopy[2](completionCopy);
  }

  _Block_object_dispose(v15, 8);
}

- (void)updateReachabilityRadioState
{
  v3 = MGGetBoolAnswer();
  if (v3)
  {
    v4 = +[PSBluetoothSettingsDetail isEnabled];
  }

  else
  {
    v4 = 0;
  }

  v5 = +[COSReachabilityMonitor sharedMonitor];
  isNetworkReachable = [v5 isNetworkReachable];

  self->_radioState = 0;
  if (v3)
  {
    if ((v4 & 1) == 0)
    {
      v7 = pbb_setupflow_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10018A2B8(v7);
      }

      self->_radioState |= 2uLL;
    }
  }

  else
  {
    v8 = pbb_setupflow_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "No Bluetooth capability, Bluetooth state ignored", v10, 2u);
    }
  }

  if ((isNetworkReachable & 1) == 0)
  {
    v9 = pbb_setupflow_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10018A2FC(v9);
    }

    self->_radioState |= 4uLL;
  }
}

@end