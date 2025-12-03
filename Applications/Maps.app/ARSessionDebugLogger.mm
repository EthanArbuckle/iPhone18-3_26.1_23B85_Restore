@interface ARSessionDebugLogger
- (ARSession)session;
- (ARSessionDebugLogger)initWithSession:(id)session;
- (void)dealloc;
- (void)session:(id)session cameraDidChangeTrackingState:(id)state;
- (void)session:(id)session didChangeGeoTrackingStatus:(id)status;
- (void)session:(id)session didChangeState:(unint64_t)state;
- (void)session:(id)session didFailWithError:(id)error;
- (void)session:(id)session didUpdateFrame:(id)frame;
- (void)session:(id)session requestedRunWithConfiguration:(id)configuration options:(unint64_t)options;
- (void)session:(id)session willRunWithConfiguration:(id)configuration;
- (void)sessionInterruptionEnded:(id)ended;
- (void)sessionWasInterrupted:(id)interrupted;
@end

@implementation ARSessionDebugLogger

- (ARSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

- (void)session:(id)session didChangeGeoTrackingStatus:(id)status
{
  sessionCopy = session;
  statusCopy = status;
  v7 = sub_1008A42B4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    [statusCopy state];
    v8 = NSStringFromARGeoTrackingState();
    [statusCopy stateReason];
    v9 = NSStringFromARGeoTrackingStateReason();
    [statusCopy accuracy];
    v10 = NSStringFromARGeoTrackingAccuracy();
    v11 = 136316418;
    v12 = "[ARSessionDebugLogger session:didChangeGeoTrackingStatus:]";
    v13 = 2112;
    v14 = sessionCopy;
    v15 = 2112;
    v16 = statusCopy;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s:%@:%@:state=%@:reason=%@:accuracy=%@", &v11, 0x3Eu);
  }
}

- (void)sessionInterruptionEnded:(id)ended
{
  endedCopy = ended;
  v4 = sub_1008A42B4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[ARSessionDebugLogger sessionInterruptionEnded:]";
    v7 = 2112;
    v8 = endedCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s:%@", &v5, 0x16u);
  }
}

- (void)sessionWasInterrupted:(id)interrupted
{
  interruptedCopy = interrupted;
  v4 = sub_1008A42B4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[ARSessionDebugLogger sessionWasInterrupted:]";
    v7 = 2112;
    v8 = interruptedCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s:%@", &v5, 0x16u);
  }
}

- (void)session:(id)session cameraDidChangeTrackingState:(id)state
{
  sessionCopy = session;
  stateCopy = state;
  v7 = sub_1008A42B4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    trackingState = [stateCopy trackingState];
    if (trackingState >= 3)
    {
      v9 = [NSString stringWithFormat:@"%ld", trackingState];
    }

    else
    {
      v9 = *(&off_10162D1B0 + trackingState);
    }

    v10 = v9;
    trackingStateReason = [stateCopy trackingStateReason];
    if (trackingStateReason >= 5)
    {
      v12 = [NSString stringWithFormat:@"%ld", trackingStateReason];
    }

    else
    {
      v12 = *(&off_10162D1C8 + trackingStateReason);
    }

    *buf = 136316162;
    v14 = "[ARSessionDebugLogger session:cameraDidChangeTrackingState:]";
    v15 = 2112;
    v16 = sessionCopy;
    v17 = 2112;
    v18 = stateCopy;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s:%@:%@:state=%@:reason=%@", buf, 0x34u);
  }
}

- (void)session:(id)session didFailWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  v7 = sub_1008A42B4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315650;
    v9 = "[ARSessionDebugLogger session:didFailWithError:]";
    v10 = 2112;
    v11 = sessionCopy;
    v12 = 2112;
    v13 = errorCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s:%@:%@", &v8, 0x20u);
  }
}

- (void)session:(id)session didUpdateFrame:(id)frame
{
  sessionCopy = session;
  frameCopy = frame;
  vlState = [frameCopy vlState];
  [vlState timeSinceLastLocalization];
  v9 = v8;

  if (v9 > 0.0)
  {
    v10 = sub_1008A42B4();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      vlState2 = [frameCopy vlState];
      vlState3 = [frameCopy vlState];
      [vlState3 timeSinceLastLocalization];
      v14 = v13;
      [frameCopy heading];
      v16 = v15;
      location = [frameCopy location];
      [frameCopy rawHeading];
      v19 = v18;
      rawLocation = [frameCopy rawLocation];
      [frameCopy rawLocationTimestamp];
      v22 = 136317442;
      v23 = "[ARSessionDebugLogger session:didUpdateFrame:]";
      v24 = 2112;
      v25 = sessionCopy;
      v26 = 2112;
      v27 = frameCopy;
      v28 = 2112;
      v29 = vlState2;
      v30 = 2048;
      v31 = v14;
      v32 = 2048;
      v33 = v16;
      v34 = 2112;
      v35 = location;
      v36 = 2048;
      v37 = v19;
      v38 = 2112;
      v39 = rawLocation;
      v40 = 2048;
      v41 = v21;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s:%@:%@:vlState=%@:timeSinceLastLocalization=%f:heading=%f:location=%@:rawHeading=%f:rawLocation=%@:rawLocationTimestamp=%f", &v22, 0x66u);
    }
  }
}

- (void)session:(id)session willRunWithConfiguration:(id)configuration
{
  sessionCopy = session;
  configurationCopy = configuration;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = sub_1008A42B4();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (isKindOfClass)
  {
    if (v9)
    {
      templateConfiguration = [configurationCopy templateConfiguration];
      v11 = 136315906;
      v12 = "[ARSessionDebugLogger session:willRunWithConfiguration:]";
      v13 = 2112;
      v14 = sessionCopy;
      v15 = 2112;
      v16 = configurationCopy;
      v17 = 2112;
      v18 = templateConfiguration;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s:%@:%@(%@)", &v11, 0x2Au);
    }
  }

  else if (v9)
  {
    v11 = 136315650;
    v12 = "[ARSessionDebugLogger session:willRunWithConfiguration:]";
    v13 = 2112;
    v14 = sessionCopy;
    v15 = 2112;
    v16 = configurationCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s:%@:%@", &v11, 0x20u);
  }
}

- (void)session:(id)session requestedRunWithConfiguration:(id)configuration options:(unint64_t)options
{
  sessionCopy = session;
  configurationCopy = configuration;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v10 = sub_1008A42B4();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (isKindOfClass)
  {
    if (v11)
    {
      templateConfiguration = [configurationCopy templateConfiguration];
      v13 = 136316162;
      v14 = "[ARSessionDebugLogger session:requestedRunWithConfiguration:options:]";
      v15 = 2112;
      v16 = sessionCopy;
      v17 = 2112;
      v18 = configurationCopy;
      v19 = 2112;
      optionsCopy2 = templateConfiguration;
      v21 = 2048;
      optionsCopy = options;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s:%@:%@(%@)%lu", &v13, 0x34u);
    }
  }

  else if (v11)
  {
    v13 = 136315906;
    v14 = "[ARSessionDebugLogger session:requestedRunWithConfiguration:options:]";
    v15 = 2112;
    v16 = sessionCopy;
    v17 = 2112;
    v18 = configurationCopy;
    v19 = 2048;
    optionsCopy2 = options;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s:%@:%@:%lu", &v13, 0x2Au);
  }
}

- (void)session:(id)session didChangeState:(unint64_t)state
{
  sessionCopy = session;
  v6 = sub_1008A42B4();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (state >= 3)
    {
      state = [NSString stringWithFormat:@"%lu", state];
    }

    else
    {
      state = *(&off_10162D198 + state);
    }

    *buf = 136315650;
    v9 = "[ARSessionDebugLogger session:didChangeState:]";
    v10 = 2112;
    v11 = sessionCopy;
    v12 = 2112;
    v13 = state;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s:%@:%@", buf, 0x20u);
  }
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_session);
  [WeakRetained _removeObserver:self];

  v4.receiver = self;
  v4.super_class = ARSessionDebugLogger;
  [(ARSessionDebugLogger *)&v4 dealloc];
}

- (ARSessionDebugLogger)initWithSession:(id)session
{
  sessionCopy = session;
  v9.receiver = self;
  v9.super_class = ARSessionDebugLogger;
  v5 = [(ARSessionDebugLogger *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_session, sessionCopy);
    [sessionCopy _addObserver:v6];
  }

  return v6;
}

@end