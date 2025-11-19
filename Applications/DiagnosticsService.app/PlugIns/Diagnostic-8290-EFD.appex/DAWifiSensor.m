@interface DAWifiSensor
- (DAChamberSensorDelegate)delegate;
- (DAWifiSensor)initWithDelegate:(id)a3 scanInterval:(double)a4;
- (void)dealloc;
- (void)scanAvailableNetworks;
- (void)scheduleNetworksScanWithDelay:(double)a3;
- (void)startMonitoring;
- (void)stopMonitoring;
@end

@implementation DAWifiSensor

- (DAWifiSensor)initWithDelegate:(id)a3 scanInterval:(double)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = DAWifiSensor;
  v7 = [(DAWifiSensor *)&v15 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_delegate, v6);
    v9 = objc_alloc_init(CWFInterface);
    interface = v8->_interface;
    v8->_interface = v9;

    v8->_scanInterval = a4;
    v11 = dispatch_queue_create("DAWifiSensorQueue", 0);
    scanQueue = v8->_scanQueue;
    v8->_scanQueue = v11;

    mostRecentEvent = v8->_mostRecentEvent;
    v8->_mostRecentEvent = 0;
  }

  return v8;
}

- (void)startMonitoring
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DAWifiSensor:: Start monitoring", v5, 2u);
  }

  v4 = [(DAWifiSensor *)self interface];
  [v4 activate];

  [(DAWifiSensor *)self setStarted:1];
  [(DAWifiSensor *)self scheduleNetworksScanWithDelay:0.0];
}

- (void)stopMonitoring
{
  v3 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DAWifiSensor:: Stop monitoring", buf, 2u);
  }

  if ([(DAWifiSensor *)self started])
  {
    [(DAWifiSensor *)self setStarted:0];
    [(DAWifiSensor *)self setMostRecentEvent:0];
    v4 = [(DAWifiSensor *)self interface];
    [v4 invalidate];
  }

  else
  {
    v4 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Attempt to stop DAWifiSensor that hasn't been started.", v5, 2u);
    }
  }
}

- (void)scanAvailableNetworks
{
  if ([(DAWifiSensor *)self started])
  {
    v3 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "DAWifiSensor: Scanning wifi networks", buf, 2u);
    }

    v4 = objc_alloc_init(CWFScanParameters);
    [v4 setMergeScanResults:1];
    [v4 setAcceptableCacheAge:0];
    [v4 setChannels:0];
    v5 = [NSSet setWithArray:&off_10001DAD8];
    [v4 setIncludeProperties:v5];

    v6 = [(DAWifiSensor *)self interface];
    v31 = 0;
    v7 = [v6 performScanWithParameters:v4 error:&v31];
    v8 = v31;

    v9 = DiagnosticLogHandleForCategory();
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000101A4(v8, &v10->super);
      }
    }

    else
    {
      v26 = v4;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [v7 count];
        *buf = 134217984;
        v33 = v11;
        _os_log_impl(&_mh_execute_header, &v10->super, OS_LOG_TYPE_DEFAULT, "DAWifiSensor: Found %lu networks", buf, 0xCu);
      }

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = v7;
      v12 = v7;
      v13 = [v12 countByEnumeratingWithState:&v27 objects:v36 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v28;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v28 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v27 + 1) + 8 * i);
            v18 = DiagnosticLogHandleForCategory();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = [v17 networkName];
              v20 = [v17 RSSI];
              *buf = 138412546;
              v33 = v19;
              v34 = 2048;
              v35 = v20;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "SSID: %@, RSSI: %ld, ", buf, 0x16u);
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v27 objects:v36 count:16];
        }

        while (v14);
      }

      if ([v12 count])
      {
        v21 = 4;
      }

      else
      {
        v21 = 3;
      }

      v10 = [[DAChamberSensorEvent alloc] initWithSensorType:1 eventType:v21];
      v22 = [(DAWifiSensor *)self mostRecentEvent];
      v23 = [(DAChamberSensorEvent *)v10 isEqual:v22];

      if ((v23 & 1) == 0)
      {
        v24 = [(DAWifiSensor *)self delegate];
        [v24 handleSensorEvent:v10];

        [(DAWifiSensor *)self setMostRecentEvent:v10];
      }

      v7 = v25;
      v4 = v26;
      v8 = 0;
    }

    [(DAWifiSensor *)self scanInterval];
    [(DAWifiSensor *)self scheduleNetworksScanWithDelay:?];
  }
}

- (void)scheduleNetworksScanWithDelay:(double)a3
{
  v4 = dispatch_time(0, (a3 * 1000000000.0));
  v5 = [(DAWifiSensor *)self scanQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000C498;
  block[3] = &unk_10001C5A0;
  block[4] = self;
  dispatch_after(v4, v5, block);
}

- (void)dealloc
{
  [(DAWifiSensor *)self stopMonitoring];
  v3.receiver = self;
  v3.super_class = DAWifiSensor;
  [(DAWifiSensor *)&v3 dealloc];
}

- (DAChamberSensorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end