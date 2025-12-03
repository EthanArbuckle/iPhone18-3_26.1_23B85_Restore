@interface DAChamberDetector
- (BOOL)shouldStopAfterEventReceived:(id)received;
- (DAChamberDetector)initWithInputs:(id)inputs;
- (DAChamberDetectorDelegate)delegate;
- (void)checkChamberIsReady;
- (void)dealloc;
- (void)handleSensorEvent:(id)event;
- (void)start;
- (void)stop;
@end

@implementation DAChamberDetector

- (DAChamberDetector)initWithInputs:(id)inputs
{
  inputsCopy = inputs;
  v22.receiver = self;
  v22.super_class = DAChamberDetector;
  v6 = [(DAChamberDetector *)&v22 init];
  v7 = v6;
  if (v6)
  {
    v6->_started = 0;
    objc_storeStrong(&v6->_inputs, inputs);
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
      detectChamberReadyWaitTime = [(DAChamberInputs *)v7->_inputs detectChamberReadyWaitTime];
      detectChamberSensor = [(DAChamberInputs *)v7->_inputs detectChamberSensor];
      *buf = 67109376;
      v24 = detectChamberReadyWaitTime;
      v25 = 1024;
      v26 = detectChamberSensor;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "DAChamberDetector: Setup parameters: detectChamberReadyWaitTime(%dsec), detectChamberSensor(%x)", buf, 0xEu);
    }
  }

  return v7;
}

- (void)start
{
  sensors = [(DAChamberDetector *)self sensors];
  v4 = [sensors count];

  if (v4)
  {
    v5 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      sensors2 = [(DAChamberDetector *)self sensors];
      *buf = 138412290;
      v26 = sensors2;
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
            expectations = [(DAChamberDetector *)self expectations];
            v13 = [[DAChamberSensorEvent alloc] initWithSensorType:1 eventType:3];
            [expectations addObject:v13];
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            expectations2 = [(DAChamberDetector *)self expectations];
            v15 = [[DAChamberSensorEvent alloc] initWithSensorType:0 eventType:2];
            [expectations2 addObject:v15];
          }

          [v11 startMonitoring];
        }

        v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    v16 = dispatch_semaphore_create(0);
    [(DAChamberDetector *)self setChamberReadySemaphore:v16];

    eventQueue = [(DAChamberDetector *)self eventQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100002BD8;
    block[3] = &unk_10001C5A0;
    block[4] = self;
    dispatch_async(eventQueue, block);

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
    sensors = [(DAChamberDetector *)self sensors];
    v4 = [sensors countByEnumeratingWithState:&v10 objects:v15 count:16];
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
            objc_enumerationMutation(sensors);
          }

          [*(*(&v10 + 1) + 8 * v7) stopMonitoring];
          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [sensors countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v5);
    }

    expectations = [(DAChamberDetector *)self expectations];
    [expectations removeAllObjects];

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
  expectations = [(DAChamberDetector *)self expectations];
  if ([expectations count])
  {
  }

  else
  {
    started = [(DAChamberDetector *)self started];

    if (started)
    {
      v4 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "DAChamberDetector: Chamber is ready", buf, 2u);
      }

      chamberReadySemaphore = [(DAChamberDetector *)self chamberReadySemaphore];

      if (chamberReadySemaphore)
      {
        chamberReadySemaphore2 = [(DAChamberDetector *)self chamberReadySemaphore];
        dispatch_semaphore_signal(chamberReadySemaphore2);
      }

      delegate = [(DAChamberDetector *)self delegate];
      [delegate handleChamberStatus:1];
    }
  }
}

- (BOOL)shouldStopAfterEventReceived:(id)received
{
  receivedCopy = received;
  if (![(DAChamberDetector *)self started])
  {
    goto LABEL_11;
  }

  expectations = [(DAChamberDetector *)self expectations];
  if (![expectations count])
  {
    sensors = [(DAChamberDetector *)self sensors];
    if (![sensors count])
    {

      goto LABEL_3;
    }

    if ([receivedCopy eventType] == 1)
    {

LABEL_10:
      [(DAChamberDetector *)self stop];
      expectations = [(DAChamberDetector *)self delegate];
      [expectations handleChamberStatus:3];
      v6 = 1;
      goto LABEL_4;
    }

    eventType = [receivedCopy eventType];

    if (eventType == 4)
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

- (void)handleSensorEvent:(id)event
{
  eventCopy = event;
  v5 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = eventCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "DAChamberDetector: Received sensor event: %@", &v11, 0xCu);
  }

  if (![(DAChamberDetector *)self shouldStopAfterEventReceived:eventCopy])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    expectations = [(DAChamberDetector *)selfCopy expectations];
    [expectations removeObject:eventCopy];

    v8 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      expectations2 = [(DAChamberDetector *)selfCopy expectations];
      v10 = [expectations2 count];
      v11 = 134217984;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "DAChamberDetector: Expectations left: %lu", &v11, 0xCu);
    }

    [(DAChamberDetector *)selfCopy checkChamberIsReady];
    objc_sync_exit(selfCopy);
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