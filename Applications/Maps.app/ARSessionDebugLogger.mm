@interface ARSessionDebugLogger
- (ARSession)session;
- (ARSessionDebugLogger)initWithSession:(id)a3;
- (void)dealloc;
- (void)session:(id)a3 cameraDidChangeTrackingState:(id)a4;
- (void)session:(id)a3 didChangeGeoTrackingStatus:(id)a4;
- (void)session:(id)a3 didChangeState:(unint64_t)a4;
- (void)session:(id)a3 didFailWithError:(id)a4;
- (void)session:(id)a3 didUpdateFrame:(id)a4;
- (void)session:(id)a3 requestedRunWithConfiguration:(id)a4 options:(unint64_t)a5;
- (void)session:(id)a3 willRunWithConfiguration:(id)a4;
- (void)sessionInterruptionEnded:(id)a3;
- (void)sessionWasInterrupted:(id)a3;
@end

@implementation ARSessionDebugLogger

- (ARSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

- (void)session:(id)a3 didChangeGeoTrackingStatus:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_1008A42B4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    [v6 state];
    v8 = NSStringFromARGeoTrackingState();
    [v6 stateReason];
    v9 = NSStringFromARGeoTrackingStateReason();
    [v6 accuracy];
    v10 = NSStringFromARGeoTrackingAccuracy();
    v11 = 136316418;
    v12 = "[ARSessionDebugLogger session:didChangeGeoTrackingStatus:]";
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s:%@:%@:state=%@:reason=%@:accuracy=%@", &v11, 0x3Eu);
  }
}

- (void)sessionInterruptionEnded:(id)a3
{
  v3 = a3;
  v4 = sub_1008A42B4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[ARSessionDebugLogger sessionInterruptionEnded:]";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s:%@", &v5, 0x16u);
  }
}

- (void)sessionWasInterrupted:(id)a3
{
  v3 = a3;
  v4 = sub_1008A42B4();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "[ARSessionDebugLogger sessionWasInterrupted:]";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s:%@", &v5, 0x16u);
  }
}

- (void)session:(id)a3 cameraDidChangeTrackingState:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_1008A42B4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v6 trackingState];
    if (v8 >= 3)
    {
      v9 = [NSString stringWithFormat:@"%ld", v8];
    }

    else
    {
      v9 = *(&off_10162D1B0 + v8);
    }

    v10 = v9;
    v11 = [v6 trackingStateReason];
    if (v11 >= 5)
    {
      v12 = [NSString stringWithFormat:@"%ld", v11];
    }

    else
    {
      v12 = *(&off_10162D1C8 + v11);
    }

    *buf = 136316162;
    v14 = "[ARSessionDebugLogger session:cameraDidChangeTrackingState:]";
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v10;
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s:%@:%@:state=%@:reason=%@", buf, 0x34u);
  }
}

- (void)session:(id)a3 didFailWithError:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_1008A42B4();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315650;
    v9 = "[ARSessionDebugLogger session:didFailWithError:]";
    v10 = 2112;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s:%@:%@", &v8, 0x20u);
  }
}

- (void)session:(id)a3 didUpdateFrame:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 vlState];
  [v7 timeSinceLastLocalization];
  v9 = v8;

  if (v9 > 0.0)
  {
    v10 = sub_1008A42B4();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v6 vlState];
      v12 = [v6 vlState];
      [v12 timeSinceLastLocalization];
      v14 = v13;
      [v6 heading];
      v16 = v15;
      v17 = [v6 location];
      [v6 rawHeading];
      v19 = v18;
      v20 = [v6 rawLocation];
      [v6 rawLocationTimestamp];
      v22 = 136317442;
      v23 = "[ARSessionDebugLogger session:didUpdateFrame:]";
      v24 = 2112;
      v25 = v5;
      v26 = 2112;
      v27 = v6;
      v28 = 2112;
      v29 = v11;
      v30 = 2048;
      v31 = v14;
      v32 = 2048;
      v33 = v16;
      v34 = 2112;
      v35 = v17;
      v36 = 2048;
      v37 = v19;
      v38 = 2112;
      v39 = v20;
      v40 = 2048;
      v41 = v21;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s:%@:%@:vlState=%@:timeSinceLastLocalization=%f:heading=%f:location=%@:rawHeading=%f:rawLocation=%@:rawLocationTimestamp=%f", &v22, 0x66u);
    }
  }
}

- (void)session:(id)a3 willRunWithConfiguration:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = sub_1008A42B4();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (isKindOfClass)
  {
    if (v9)
    {
      v10 = [v6 templateConfiguration];
      v11 = 136315906;
      v12 = "[ARSessionDebugLogger session:willRunWithConfiguration:]";
      v13 = 2112;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s:%@:%@(%@)", &v11, 0x2Au);
    }
  }

  else if (v9)
  {
    v11 = 136315650;
    v12 = "[ARSessionDebugLogger session:willRunWithConfiguration:]";
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s:%@:%@", &v11, 0x20u);
  }
}

- (void)session:(id)a3 requestedRunWithConfiguration:(id)a4 options:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v10 = sub_1008A42B4();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (isKindOfClass)
  {
    if (v11)
    {
      v12 = [v8 templateConfiguration];
      v13 = 136316162;
      v14 = "[ARSessionDebugLogger session:requestedRunWithConfiguration:options:]";
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v12;
      v21 = 2048;
      v22 = a5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s:%@:%@(%@)%lu", &v13, 0x34u);
    }
  }

  else if (v11)
  {
    v13 = 136315906;
    v14 = "[ARSessionDebugLogger session:requestedRunWithConfiguration:options:]";
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    v19 = 2048;
    v20 = a5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%s:%@:%@:%lu", &v13, 0x2Au);
  }
}

- (void)session:(id)a3 didChangeState:(unint64_t)a4
{
  v5 = a3;
  v6 = sub_1008A42B4();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (a4 >= 3)
    {
      v7 = [NSString stringWithFormat:@"%lu", a4];
    }

    else
    {
      v7 = *(&off_10162D198 + a4);
    }

    *buf = 136315650;
    v9 = "[ARSessionDebugLogger session:didChangeState:]";
    v10 = 2112;
    v11 = v5;
    v12 = 2112;
    v13 = v7;
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

- (ARSessionDebugLogger)initWithSession:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ARSessionDebugLogger;
  v5 = [(ARSessionDebugLogger *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_session, v4);
    [v4 _addObserver:v6];
  }

  return v6;
}

@end