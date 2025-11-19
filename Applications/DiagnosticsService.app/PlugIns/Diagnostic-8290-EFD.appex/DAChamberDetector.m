@interface DAChamberDetector
- (BOOL)shouldStopAfterEventReceived:(id)a3;
- (DAChamberDetector)initWithInputs:(id)a3;
- (DAChamberDetectorDelegate)delegate;
- (void)checkChamberIsReady;
- (void)dealloc;
- (void)handleSensorEvent:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation DAChamberDetector

- (DAChamberDetector)initWithInputs:(id)a3
{
  v5 = a3;
  v22.receiver = self;
  v22.super_class = DAChamberDetector;
  v6 = [(DAChamberDetector *)&v22 init];
  v7 = v6;
  if (v6)
  {
    v6->_started = 0;
    objc_storeStrong(&v6->_inputs, a3);
    v8 = +[NSMutableSet set];
    sensors = v7->_sensors;
    v7->_sensors = v8;

    v10 = +[NSMutableSet set];
    expectations = v7->_expectations;
    v7->_expectations = v10;

    v12 = dispatch_queue_create("DAChamberDetectorEventQueue", &_dispatch_queue_attr_concurrent);
    eventQueue = v7->_eventQueue;
    v7->_eventQueue = v12;

    if (([(DAChamberInputs *)v7->_inputs detectChamberSensor]& 2) != 0)
    {
      v14 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "DAChamberDetector: Creating Wifi sensor", buf, 2u);
      }

      v15 = [[DAWifiSensor alloc] initWithDelegate:v7 scanInterval:8.0];
      [(NSMutableSet *)v7->_sensors addObject:v15];
    }

    if (([(DAChamberInputs *)v7->_inputs detectChamberSensor]& 1) != 0)
    {
      v16 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "DAChamberDetector: Creating ALS sensor", buf, 2u);
      }

      v17 = [[DAALSSensor alloc] initWithDelegate:v7 threshold:[(DAChamberInputs *)v7->_inputs detectChamberReadyALSThreshold]];
      [(NSMutableSet *)v7->_sensors addObject:v17];
    }

    v18 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(DAChamberInputs *)v7->_inputs detectChamberReadyWaitTime];
      v20 = [(DAChamberInputs *)v7->_inputs detectChamberSensor];
      *buf = 67109376;
      v24 = v19;
      v25 = 1024;
      v26 = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "DAChamberDetector: Setup parameters: detectChamberReadyWaitTime(%dsec), detectChamberSensor(%x)", buf, 0xEu);
    }
  }

  return v7;
}

- (void)start
{
  v3 = [(DAChamberDetector *)self sensors];
  v4 = [v3 count];

  if (v4)
  {
    v5 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(DAChamberDetector *)self sensors];
      *buf = 138412290;
      v26 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "DAChamberDetector: Starting sensors: %@", buf, 0xCu);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = [(DAChamberDetector *)self sensors];
    v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = [(DAChamberDetector *)self expectations];
            v13 = [[DAChamberSensorEvent alloc] initWithSensorType:1 eventType:3];
            [v12 addObject:v13];
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [(DAChamberDetector *)self expectations];
            v15 = [[DAChamberSensorEvent alloc] initWithSensorType:0 eventType:2];
            [v14 addObject:v15];
          }

          [v11 startMonitoring];
        }

        v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    v16 = dispatch_semaphore_create(0);
    [(DAChamberDetector *)self setChamberReadySemaphore:v16];

    v17 = [(DAChamberDetector *)self eventQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002BD8;
    block[3] = &unk_10001C5A0;
    block[4] = self;
    dispatch_async(v17, block);

    [(DAChamberDetector *)self setStarted:1];
  }

  else
  {
    [(DAChamberDetector *)self setStarted:1];

    [(DAChamberDetector *)self checkChamberIsReady];
  }
}

- (void)stop
{
  if ([(DAChamberDetector *)self started])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = [(DAChamberDetector *)self sensors];
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v10 + 1) + 8 * v7) stopMonitoring];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v5);
    }

    v8 = [(DAChamberDetector *)self expectations];
    [v8 removeAllObjects];

    [(DAChamberDetector *)self setStarted:0];
  }

  else
  {
    v9 = DiagnosticsKitLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Attempt to stop DAChamberDetector that hasn't been started.", buf, 2u);
    }
  }
}

- (void)checkChamberIsReady
{
  v8 = [(DAChamberDetector *)self expectations];
  if ([v8 count])
  {
  }

  else
  {
    v3 = [(DAChamberDetector *)self started];

    if (v3)
    {
      v4 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "DAChamberDetector: Chamber is ready", buf, 2u);
      }

      v5 = [(DAChamberDetector *)self chamberReadySemaphore];

      if (v5)
      {
        v6 = [(DAChamberDetector *)self chamberReadySemaphore];
        dispatch_semaphore_signal(v6);
      }

      v7 = [(DAChamberDetector *)self delegate];
      [v7 handleChamberStatus:1];
    }
  }
}

- (BOOL)shouldStopAfterEventReceived:(id)a3
{
  v4 = a3;
  if (![(DAChamberDetector *)self started])
  {
    goto LABEL_11;
  }

  v5 = [(DAChamberDetector *)self expectations];
  if (![v5 count])
  {
    v7 = [(DAChamberDetector *)self sensors];
    if (![v7 count])
    {

      goto LABEL_3;
    }

    if ([v4 eventType] == 1)
    {

LABEL_10:
      [(DAChamberDetector *)self stop];
      v5 = [(DAChamberDetector *)self delegate];
      [v5 handleChamberStatus:3];
      v6 = 1;
      goto LABEL_4;
    }

    v8 = [v4 eventType];

    if (v8 == 4)
    {
      goto LABEL_10;
    }

LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

LABEL_3:
  v6 = 0;
LABEL_4:

LABEL_12:
  return v6;
}

- (void)handleSensorEvent:(id)a3
{
  v4 = a3;
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "DAChamberDetector: Received sensor event: %@", &v11, 0xCu);
  }

  if (![(DAChamberDetector *)self shouldStopAfterEventReceived:v4])
  {
    v6 = self;
    objc_sync_enter(v6);
    v7 = [(DAChamberDetector *)v6 expectations];
    [v7 removeObject:v4];

    v8 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(DAChamberDetector *)v6 expectations];
      v10 = [v9 count];
      v11 = 134217984;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "DAChamberDetector: Expectations left: %lu", &v11, 0xCu);
    }

    [(DAChamberDetector *)v6 checkChamberIsReady];
    objc_sync_exit(v6);
  }
}

- (void)dealloc
{
  [(DAChamberDetector *)self stop];
  v3.receiver = self;
  v3.super_class = DAChamberDetector;
  [(DAChamberDetector *)&v3 dealloc];
}

- (DAChamberDetectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end