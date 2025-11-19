@interface CLLocationUpdater
+ (id)_historicalUpdaterWithCenter:(CLLocationCoordinate2D)a3 radius:(double)a4 dateInterval:(id)a5 sampleCount:(int)a6 queue:(id)a7 handler:(id)a8;
+ (id)_historicalUpdaterWithDateInterval:(id)a3 sampleCount:(int)a4 queue:(id)a5 handler:(id)a6;
+ (id)_liveUpdaterWithConfiguration:(int64_t)a3 queue:(id)a4 handler:(id)a5;
+ (id)liveUpdaterWithConfiguration:(int64_t)a3 locationManager:(id)a4 queue:(id)a5 handler:(id)a6;
- (CLLocationUpdater)initWithRegistrationMessageName:(const char *)a3 messagePayload:(id)a4 locationManager:(id)a5 queue:(id)a6 handler:(id)a7;
- (void)dealloc;
- (void)handleMessageDiagnostics:(id)a3;
- (void)handleMessageHistoricalLocations:(id)a3;
- (void)handleMessageHistoricalLocationsFinished:(id)a3;
- (void)handleMessageLocation:(id)a3;
- (void)handleMessageLocationUnavailable:(id)a3;
- (void)handleMessageWithName:(id)a3 payload:(id)a4;
- (void)invalidate;
- (void)pause;
- (void)resume;
- (void)setHandler:(id)a3;
- (void)tearDown;
@end

@implementation CLLocationUpdater

+ (id)_liveUpdaterWithConfiguration:(int64_t)a3 queue:(id)a4 handler:(id)a5
{
  +[CLLocationManager weakSharedInstance];

  return MEMORY[0x1EEE66B58](CLLocationUpdater, sel_liveUpdaterWithConfiguration_locationManager_queue_handler_);
}

+ (id)_historicalUpdaterWithDateInterval:(id)a3 sampleCount:(int)a4 queue:(id)a5 handler:(id)a6
{
  +[CLLocationManager weakSharedInstance];

  return MEMORY[0x1EEE66B58](CLLocationUpdater, sel_historicalUpdaterWithDateInterval_sampleCount_locationManager_queue_handler_);
}

+ (id)_historicalUpdaterWithCenter:(CLLocationCoordinate2D)a3 radius:(double)a4 dateInterval:(id)a5 sampleCount:(int)a6 queue:(id)a7 handler:(id)a8
{
  +[CLLocationManager weakSharedInstance];

  return MEMORY[0x1EEE66B58](CLLocationUpdater, sel_historicalUpdaterWithCenter_radius_dateInterval_sampleCount_locationManager_queue_handler_);
}

- (CLLocationUpdater)initWithRegistrationMessageName:(const char *)a3 messagePayload:(id)a4 locationManager:(id)a5 queue:(id)a6 handler:(id)a7
{
  v43 = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = CLLocationUpdater;
  v13 = [(CLLocationUpdater *)&v27 init];
  if (v13)
  {
    v14 = _os_activity_create(&dword_19B873000, "CL: CLLocationUpdater #locationUpdater", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v14, &state);

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
    }

    v15 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v16 = NSStringFromSelector(a2);
      buf = 68290563;
      v29 = 2082;
      v30 = "";
      v31 = 2082;
      v32 = "activity";
      v33 = 2114;
      v34 = v16;
      v35 = 2050;
      v36 = v13;
      v37 = 2082;
      v38 = a3;
      v39 = 2113;
      v40 = a4;
      v41 = 2050;
      v42 = a5;
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationUpdater #locationUpdater, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, name:%{public, location:escape_only}s, messagePayload:%{private, location:escape_only}@, manager:%{public}p}", &buf, 0x4Eu);
    }

    if (!a6)
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
      }

      v17 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        buf = 68289282;
        v29 = 2082;
        v30 = "";
        v31 = 2050;
        v32 = v13;
        _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#locationUpdater has nil callback queue; Creating locally, self:%{public}p}", &buf, 0x1Cu);
      }

      a6 = +[CLLocationManager sharedQueue];
    }

    v13->_silo = [objc_alloc(MEMORY[0x1E69AD360]) initWithUnderlyingQueue:a6 bePermissive:0];
    v13->_messageName = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3];
    v13->_mutableMsgDictionary = [a4 mutableCopy];
    if (a7)
    {
      v13->_clientCallback = _Block_copy(a7);
    }

    objc_initWeak(&buf, v13);
    v18 = [CLIdentifiableClientConnectionManager alloc];
    silo = v13->_silo;
    messageName = v13->_messageName;
    mutableMsgDictionary = v13->_mutableMsgDictionary;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_19B8DD4AC;
    v24[3] = &unk_1E753D5B8;
    objc_copyWeak(&v25, &buf);
    v13->_connectionManager = [(CLIdentifiableClientConnectionManager *)v18 initWithSilo:silo locationManager:a5 startMessageName:messageName startMessagePayload:mutableMsgDictionary responseHandler:v24];
    objc_destroyWeak(&v25);
    objc_destroyWeak(&buf);
    os_activity_scope_leave(&state);
  }

  v22 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (id)liveUpdaterWithConfiguration:(int64_t)a3 locationManager:(id)a4 queue:(id)a5 handler:(id)a6
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (([a4 isMasquerading] & 1) == 0 && (sub_19B8B8818() & 1) == 0)
  {
    NSLog(&cfstr_ErrorCllocatio.isa);
  }

  v21 = @"config";
  v22[0] = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v10 = -[CLLocationUpdater initWithRegistrationMessageName:messagePayload:locationManager:queue:handler:]([CLLocationUpdater alloc], "initWithRegistrationMessageName:messagePayload:locationManager:queue:handler:", "LocationUpdaterLive/kCLConnectionMessage", [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1], a4, a5, a6);
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
  }

  v11 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 68289282;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v19 = 2050;
    v20 = v10;
    _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#locationUpdater liveUpdaterWithConfiguration:queue:handler: created, updater:%{public}p}", &v15, 0x1Cu);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
    }
  }

  v12 = qword_1ED519090;
  if (os_signpost_enabled(qword_1ED519090))
  {
    v15 = 68289282;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v19 = 2050;
    v20 = v10;
    _os_signpost_emit_with_name_impl(&dword_19B873000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#locationUpdater liveUpdaterWithConfiguration:queue:handler: created", "{msg%{public}.0s:#locationUpdater liveUpdaterWithConfiguration:queue:handler: created, updater:%{public}p}", &v15, 0x1Cu);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)pause
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationUpdater #locationUpdater", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v6;
    v19 = 2050;
    v20 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationUpdater #locationUpdater, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  silo = self->_silo;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B8DE1A4;
  v9[3] = &unk_1E753CC90;
  v9[4] = self;
  [(CLDispatchSilo *)silo async:v9];
  os_activity_scope_leave(&state);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)resume
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationUpdater #locationUpdater", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v6;
    v19 = 2050;
    v20 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationUpdater #locationUpdater, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  silo = self->_silo;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B8DE36C;
  v9[3] = &unk_1E753CC90;
  v9[4] = self;
  [(CLDispatchSilo *)silo async:v9];
  os_activity_scope_leave(&state);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)tearDown
{
  self->_mutableMsgDictionary = 0;

  self->_messageName = 0;
  clientCallback = self->_clientCallback;
  if (clientCallback)
  {
    _Block_release(clientCallback);
    self->_clientCallback = 0;
  }

  self->_silo = 0;
  self->_connectionManager = 0;
}

- (void)invalidate
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationUpdater #locationUpdater", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v6;
    v19 = 2050;
    v20 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationUpdater #locationUpdater, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  silo = self->_silo;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B8DE760;
  v9[3] = &unk_1E753CC90;
  v9[4] = self;
  [(CLDispatchSilo *)silo async:v9];
  os_activity_scope_leave(&state);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationUpdater #locationUpdater", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    v16 = 2114;
    v17 = v6;
    v18 = 2050;
    v19 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationUpdater #locationUpdater, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  [(CLLocationUpdater *)self tearDown];
  v8.receiver = self;
  v8.super_class = CLLocationUpdater;
  [(CLLocationUpdater *)&v8 dealloc];
  os_activity_scope_leave(&state);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)handleMessageLocation:(id)a3
{
  [(CLDispatchSilo *)self->_silo assertInside];
  if (self->_clientCallback)
  {
    v7 = copyLocationsFromLocationMessagePayload();
    if ([v7 count])
    {
      v5 = [v7 objectAtIndexedSubscript:0];
    }

    else
    {
      v5 = 0;
    }

    v6 = -[CLUpdate initWithLocation:diagnostics:]([CLUpdate alloc], "initWithLocation:diagnostics:", v5, [objc_msgSend(a3 objectForKeyedSubscript:{@"kCLConnectionMessageDiagnosticsKey", "unsignedLongValue"}]);
    (*(self->_clientCallback + 2))();
  }
}

- (void)handleMessageLocationUnavailable:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  [(CLDispatchSilo *)self->_silo assertInside];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
  }

  v6 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v15 = 2082;
    v16 = "";
    v17 = 2050;
    v18 = self;
    _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#locationUpdater location unavailable, self:%{public}p}", buf, 0x1Cu);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
    }
  }

  v7 = qword_1ED519090;
  if (os_signpost_enabled(qword_1ED519090))
  {
    *buf = 68289282;
    v15 = 2082;
    v16 = "";
    v17 = 2050;
    v18 = self;
    _os_signpost_emit_with_name_impl(&dword_19B873000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#locationUpdater location unavailable", "{msg%{public}.0s:#locationUpdater location unavailable, self:%{public}p}", buf, 0x1Cu);
  }

  if (self->_clientCallback)
  {
    v8 = _os_activity_create(&dword_19B873000, "CL: CLLocationUpdater #locationUpdater", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &v13);

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
    }

    v9 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v10 = NSStringFromSelector(a2);
      *buf = 68290051;
      *&buf[4] = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "activity";
      v19 = 2114;
      v20 = v10;
      v21 = 2050;
      v22 = self;
      v23 = 2113;
      v24 = a3;
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationUpdater #locationUpdater, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, payload:%{private, location:escape_only}@}", buf, 0x3Au);
    }

    v11 = -[CLUpdate initWithLocation:diagnostics:]([CLUpdate alloc], "initWithLocation:diagnostics:", 0, [objc_msgSend(a3 objectForKeyedSubscript:{@"kCLConnectionMessageDiagnosticsKey", "unsignedLongValue"}]);
    (*(self->_clientCallback + 2))();

    os_activity_scope_leave(&v13);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)handleMessageHistoricalLocations:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  [(CLDispatchSilo *)self->_silo assertInside];
  if (self->_clientCallback)
  {
    v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationUpdater #locationUpdater", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &state);

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
    }

    v7 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NSStringFromSelector(a2);
      *buf = 68290051;
      v30 = 2082;
      v31 = "";
      v32 = 2082;
      *v33 = "activity";
      *&v33[8] = 2114;
      *&v33[10] = v8;
      v34 = 2050;
      v35 = self;
      v36 = 2113;
      v37 = a3;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationUpdater #locationUpdater, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, payload:%{private, location:escape_only}@}", buf, 0x3Au);
    }

    v9 = [a3 objectForKeyedSubscript:@"Locations"];
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
    }

    v10 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v9 count];
      *buf = 68289538;
      v30 = 2082;
      v31 = "";
      v32 = 1026;
      *v33 = v11;
      *&v33[4] = 2050;
      *&v33[6] = self;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#locationUpdater historical received historicalLocations, Count:%{public}d, self:%{public}p}", buf, 0x22u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
      }
    }

    v12 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      v13 = [v9 count];
      *buf = 68289538;
      v30 = 2082;
      v31 = "";
      v32 = 1026;
      *v33 = v13;
      *&v33[4] = 2050;
      *&v33[6] = self;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#locationUpdater historical received historicalLocations", "{msg%{public}.0s:#locationUpdater historical received historicalLocations, Count:%{public}d, self:%{public}p}", buf, 0x22u);
    }

    v14 = [objc_msgSend(a3 objectForKeyedSubscript:{@"kCLConnectionMessageDiagnosticsKey", "unsignedLongValue"}];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v15 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v15)
    {
      v16 = *v24;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v9);
          }

          v18 = *(*(&v23 + 1) + 8 * i);
          v19 = objc_autoreleasePoolPush();
          v20 = [[CLUpdate alloc] initWithLocation:v18 diagnostics:v14];
          (*(self->_clientCallback + 2))();

          [objc_msgSend(v18 "timestamp")];
          [(CLIdentifiableClientConnectionManager *)self->_connectionManager updateLastHistoricalLocationTimestamp:?];
          objc_autoreleasePoolPop(v19);
        }

        v15 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v15);
    }

    v21 = [[CLUpdate alloc] initWithLocation:0 diagnostics:v14];
    (*(self->_clientCallback + 2))();

    os_activity_scope_leave(&state);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)handleMessageHistoricalLocationsFinished:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  [(CLDispatchSilo *)self->_silo assertInside];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
  }

  v4 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 68289282;
    v9 = 2082;
    v10 = "";
    v11 = 2050;
    v12 = self;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#locationUpdater historical delivery completed, self:%{public}p}", &v8, 0x1Cu);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
    }
  }

  v5 = qword_1ED519090;
  if (os_signpost_enabled(qword_1ED519090))
  {
    v8 = 68289282;
    v9 = 2082;
    v10 = "";
    v11 = 2050;
    v12 = self;
    _os_signpost_emit_with_name_impl(&dword_19B873000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#locationUpdater historical delivery completed", "{msg%{public}.0s:#locationUpdater historical delivery completed, self:%{public}p}", &v8, 0x1Cu);
  }

  clientCallback = self->_clientCallback;
  if (clientCallback)
  {
    clientCallback[2](clientCallback, 0);
  }

  [(CLLocationUpdater *)self invalidate];
  v7 = *MEMORY[0x1E69E9840];
}

- (void)handleMessageDiagnostics:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  [(CLDispatchSilo *)self->_silo assertInside];
  if (self->_clientCallback)
  {
    v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationUpdater #locationUpdater", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &v11);

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
    }

    v7 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v8 = NSStringFromSelector(a2);
      *buf = 68290051;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = "activity";
      v17 = 2114;
      v18 = v8;
      v19 = 2050;
      v20 = self;
      v21 = 2113;
      v22 = a3;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationUpdater #locationUpdater, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, payload:%{private, location:escape_only}@}", buf, 0x3Au);
    }

    v9 = -[CLUpdate initWithLocation:diagnostics:]([CLUpdate alloc], "initWithLocation:diagnostics:", 0, [objc_msgSend(a3 objectForKeyedSubscript:{@"kCLConnectionMessageDiagnosticsKey", "unsignedLongValue"}]);
    (*(self->_clientCallback + 2))();

    os_activity_scope_leave(&v11);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setHandler:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_clientCallback)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
    }

    v8 = qword_1ED519090;
    p_info = "assert";
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "assert";
      v15 = 2081;
      v16 = "_clientCallback == nullptr";
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#locationUpdater should initially be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
      }
    }

    v9 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "assert";
      v15 = 2081;
      v16 = "_clientCallback == nullptr";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#locationUpdater should initially be nil", "{msg%{public}.0s:#locationUpdater should initially be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
      }
    }

    v3 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "assert";
      v15 = 2081;
      v16 = "_clientCallback == nullptr";
      _os_log_impl(&dword_19B873000, &v3->super, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#locationUpdater should initially be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
LABEL_22:
    dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
    goto LABEL_5;
  }

  v3 = self;
  if (a3)
  {
    self->_clientCallback = _Block_copy(a3);
    goto LABEL_10;
  }

  p_info = CLLocationManagerInternal.info;
  if (qword_1ED519088 != -1)
  {
    goto LABEL_22;
  }

LABEL_5:
  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    *buf = 68289282;
    v11 = 2082;
    v12 = "";
    v13 = 2050;
    v14 = v3;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#locationUpdater can't set a nil handler, self:%{public}p}", buf, 0x1Cu);
    if (p_info[17] != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
    }
  }

  v6 = qword_1ED519090;
  if (os_signpost_enabled(qword_1ED519090))
  {
    *buf = 68289282;
    v11 = 2082;
    v12 = "";
    v13 = 2050;
    v14 = v3;
    _os_signpost_emit_with_name_impl(&dword_19B873000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#locationUpdater can't set a nil handler", "{msg%{public}.0s:#locationUpdater can't set a nil handler, self:%{public}p}", buf, 0x1Cu);
  }

LABEL_10:
  v7 = *MEMORY[0x1E69E9840];
}

- (void)handleMessageWithName:(id)a3 payload:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = _os_activity_create(&dword_19B873000, "CL: CLLocationUpdater #locationUpdater", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &v17);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
  }

  v9 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    v11 = [a3 UTF8String];
    *buf = 68290050;
    v19 = 0;
    v20 = 2082;
    v21 = "";
    v22 = 2082;
    v23 = "activity";
    v24 = 2114;
    v25 = v10;
    v26 = 2050;
    v27 = self;
    v28 = 2082;
    v29 = v11;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationUpdater #locationUpdater, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, message:%{public, location:escape_only}s}", buf, 0x3Au);
  }

  if (([a3 isEqualToString:@"kCLConnectionMessageLocation"] & 1) != 0 || objc_msgSend(a3, "isEqualToString:", @"kCLConnectionMessageCompensatedLocation"))
  {
    [(CLLocationUpdater *)self handleMessageLocation:a4];
  }

  else if ([a3 isEqualToString:@"kCLConnectionMessageHistoricalLocations"])
  {
    [(CLLocationUpdater *)self handleMessageHistoricalLocations:a4];
  }

  else if ([a3 isEqualToString:@"kCLConnectionMessageHistoricalLocationsFinished"])
  {
    [(CLLocationUpdater *)self handleMessageHistoricalLocationsFinished:a4];
  }

  else if ([a3 isEqualToString:@"kCLConnectionMessageLocationUnavailable"])
  {
    [(CLLocationUpdater *)self handleMessageLocationUnavailable:a4];
  }

  else if ([a3 isEqualToString:@"kCLConnectionMessageDiagnostics"])
  {
    [(CLLocationUpdater *)self handleMessageDiagnostics:a4];
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
    }

    v13 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      v14 = [a3 UTF8String];
      *buf = 68289538;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2082;
      v23 = v14;
      v24 = 2050;
      v25 = self;
      _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#locationUpdater received unhandled message, Message:%{public, location:escape_only}s, self:%{public}p}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B900);
      }
    }

    v15 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      v16 = [a3 UTF8String];
      *buf = 68289538;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2082;
      v23 = v16;
      v24 = 2050;
      v25 = self;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#locationUpdater received unhandled message", "{msg%{public}.0s:#locationUpdater received unhandled message, Message:%{public, location:escape_only}s, self:%{public}p}", buf, 0x26u);
    }
  }

  os_activity_scope_leave(&v17);
  v12 = *MEMORY[0x1E69E9840];
}

@end