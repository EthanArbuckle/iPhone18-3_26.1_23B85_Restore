@interface CLFullAccuracySession
+ (id)fullAccuracySessionWithLocationManager:(id)a3 purposeKey:(id)a4 queue:(id)a5 handler:(id)a6;
- (CLFullAccuracySession)initWithLocationManager:(id)a3 purposeKey:(id)a4 queue:(id)a5 handler:(id)a6;
- (void)createConnection;
- (void)dealloc;
- (void)destroyConnection;
- (void)handleMessage:(shared_ptr<CLConnectionMessage>)a3;
- (void)handleMessageDiagnostics:(shared_ptr<CLConnectionMessage>)a3;
- (void)invalidate;
- (void)manageConnection;
- (void)tearDown;
- (void)updateIdentityToken:(id)a3 withStorageToken:(id)a4;
@end

@implementation CLFullAccuracySession

+ (id)fullAccuracySessionWithLocationManager:(id)a3 purposeKey:(id)a4 queue:(id)a5 handler:(id)a6
{
  v7 = [[CLFullAccuracySession alloc] initWithLocationManager:a3 purposeKey:a4 queue:a5 handler:a6];
  [a3 addIdentifiableClient:v7];
  return v7;
}

- (CLFullAccuracySession)initWithLocationManager:(id)a3 purposeKey:(id)a4 queue:(id)a5 handler:(id)a6
{
  v36 = *MEMORY[0x1E69E9840];
  v12 = _os_activity_create(&dword_19B873000, "CL: CLFullAccuracySession #fullAccuracySession", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v12, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6D690);
  }

  v13 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v14 = NSStringFromSelector(a2);
    *buf = 68290050;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    v28 = 2082;
    v29 = "activity";
    v30 = 2114;
    v31 = v14;
    v32 = 2050;
    v33 = self;
    v34 = 2050;
    v35 = a3;
    _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLFullAccuracySession #fullAccuracySession, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, manager:%{public}p}", buf, 0x3Au);
  }

  v22.receiver = self;
  v22.super_class = CLFullAccuracySession;
  v15 = [(CLFullAccuracySession *)&v22 init];
  if (v15)
  {
    if (([a3 isMasquerading] & 1) == 0)
    {
      if ((sub_19B8B8818() & 1) == 0)
      {
        NSLog(&cfstr_ErrorClfullacc.isa);
      }

      MainBundle = CFBundleGetMainBundle();
      if (MainBundle)
      {
        ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(MainBundle, @"NSLocationTemporaryUsageDescriptionDictionary");
        if (!ValueForInfoDictionaryKey || !CFDictionaryGetCount(ValueForInfoDictionaryKey))
        {
          NSLog(&cfstr_ErrorNslocatio.isa);
        }
      }
    }

    v18 = a5;
    if (!a5)
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D690);
      }

      v19 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289282;
        v25 = 0;
        v26 = 2082;
        v27 = "";
        v28 = 2050;
        v29 = v15;
        _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#fullAccuracySession has nil callback queue; Creating locally, self:%{public}p}", buf, 0x1Cu);
      }

      v18 = +[CLLocationManager sharedQueue];
    }

    v15->_silo = [objc_alloc(MEMORY[0x1E69AD360]) initWithUnderlyingQueue:v18];
    if (v18 != a5)
    {
      dispatch_release(v18);
    }

    [(CLFullAccuracySession *)v15 setIsValid:1];
    v15->_purposeKey = [a4 copy];
    [(CLFullAccuracySession *)v15 setManager:a3];
    if (a6)
    {
      v15->_clientCallback = _Block_copy(a6);
    }
  }

  os_activity_scope_leave(&state);
  v20 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)updateIdentityToken:(id)a3 withStorageToken:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = _os_activity_create(&dword_19B873000, "CL: CLFullAccuracySession #fullAccuracySession", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v7, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6D690);
  }

  v8 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 68289794;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "activity";
    v20 = 2114;
    v21 = v9;
    v22 = 2050;
    v23 = self;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLFullAccuracySession #fullAccuracySession, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  silo = self->_silo;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_19B95EA9C;
  v12[3] = &unk_1E753CF38;
  v12[4] = self;
  v12[5] = a3;
  [(CLDispatchSilo *)silo async:v12];
  os_activity_scope_leave(&state);
  v11 = *MEMORY[0x1E69E9840];
}

- (void)manageConnection
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLFullAccuracySession #fullAccuracySession", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v4, &v8);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6D690);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    v14 = "activity";
    v15 = 2114;
    v16 = v6;
    v17 = 2050;
    v18 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLFullAccuracySession #fullAccuracySession, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  [(CLDispatchSilo *)self->_silo assertInside];
  if ([(CLFullAccuracySession *)self identityToken]&& [(CLFullAccuracySession *)self isValid])
  {
    [(CLFullAccuracySession *)self createConnection];
  }

  else
  {
    [(CLFullAccuracySession *)self destroyConnection];
  }

  os_activity_scope_leave(&v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)createConnection
{
  v4 = *MEMORY[0x1E69E9840];
  [(CLDispatchSilo *)self->_silo assertInside];
  if (!self->_locationdConnection)
  {
    operator new();
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)handleMessage:(shared_ptr<CLConnectionMessage>)a3
{
  var0 = a3.var0;
  v32 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLFullAccuracySession #fullAccuracySession", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6D690);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    v9 = CLConnectionMessage::name(*var0);
    if (*(v9 + 23) >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = *v9;
    }

    *buf = 68290050;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    v24 = 2082;
    v25 = "activity";
    v26 = 2114;
    v27 = v8;
    v28 = 2050;
    v29 = self;
    v30 = 2082;
    v31 = v10;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLFullAccuracySession #fullAccuracySession, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, message:%{public, location:escape_only}s}", buf, 0x3Au);
  }

  v11 = CLConnectionMessage::name(*var0);
  if (*(v11 + 23) < 0 && *(v11 + 8) == 31)
  {
    v12 = **v11 == 0x656E6E6F434C436BLL && *(*v11 + 8) == 0x73654D6E6F697463;
    v13 = v12 && *(*v11 + 16) == 0x6761694465676173;
    if (v13 && *(*v11 + 23) == 0x73636974736F6E67)
    {
      v15 = *(var0 + 1);
      v17 = *var0;
      v18 = v15;
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      [(CLFullAccuracySession *)self handleMessageDiagnostics:&v17];
      if (v18)
      {
        sub_19B8750F8(v18);
      }
    }
  }

  os_activity_scope_leave(&state);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)handleMessageDiagnostics:(shared_ptr<CLConnectionMessage>)a3
{
  var0 = a3.var0;
  v30 = *MEMORY[0x1E69E9840];
  [(CLDispatchSilo *)self->_silo assertInside:a3.var0];
  if ([(CLFullAccuracySession *)self isValid]&& self->_clientCallback)
  {
    v6 = *var0;
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(v6, v9);
    v11 = _os_activity_create(&dword_19B873000, "CL: CLLocationUpdater #locationUpdater", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v11, &state);

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D690);
    }

    v12 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v13 = NSStringFromSelector(a2);
      *buf = 68290051;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2082;
      v23 = "activity";
      v24 = 2114;
      v25 = v13;
      v26 = 2050;
      v27 = self;
      v28 = 2113;
      v29 = DictionaryOfClasses;
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationUpdater #locationUpdater, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, payload:%{private, location:escape_only}@}", buf, 0x3Au);
    }

    v14 = [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{@"kCLConnectionMessageDiagnosticsKey", "unsignedLongValue"}];
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D690);
    }

    v15 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2050;
      v23 = self;
      v24 = 1026;
      LODWORD(v25) = v14;
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#fullAccuracySession handleMessageDiagnostics, self:%{public}p, diagnosticMask:%{public}d}", buf, 0x22u);
    }

    (*(self->_clientCallback + 2))();
    os_activity_scope_leave(&state);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)tearDown
{
  [(CLLocationManager *)[(CLFullAccuracySession *)self manager] removeIdentifiableClient:self];
  [(CLFullAccuracySession *)self setIdentityToken:0];
  [(CLFullAccuracySession *)self setStorageToken:0];

  self->_purposeKey = 0;
  _Block_release(self->_clientCallback);
  self->_clientCallback = 0;
  [(CLFullAccuracySession *)self setManager:0];

  self->_silo = 0;
}

- (void)destroyConnection
{
  v17 = *MEMORY[0x1E69E9840];
  [(CLDispatchSilo *)self->_silo assertInside];
  if (self->_locationdConnection)
  {
    if ([(CLFullAccuracySession *)self identityToken]&& ![(CLFullAccuracySession *)self isValid])
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D690);
      }

      v3 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289538;
        *&buf[4] = 0;
        v12[0] = 2082;
        *&v12[1] = "";
        v13 = 2082;
        v14 = [(NSString *)[(CLFullAccuracySession *)self identityToken] UTF8String];
        v15 = 2050;
        v16 = self;
        _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#fullAccuracySession destroyUponDisconnection(DIC), identityToken:%{public, location:escape_only}s, self:%{public}p}", buf, 0x26u);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6D690);
        }
      }

      v4 = qword_1ED519090;
      if (os_signpost_enabled(qword_1ED519090))
      {
        v5 = [(NSString *)[(CLFullAccuracySession *)self identityToken] UTF8String];
        *buf = 68289538;
        *&buf[4] = 0;
        v12[0] = 2082;
        *&v12[1] = "";
        v13 = 2082;
        v14 = v5;
        v15 = 2050;
        v16 = self;
        _os_signpost_emit_with_name_impl(&dword_19B873000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#fullAccuracySession destroyUponDisconnection(DIC)", "{msg%{public}.0s:#fullAccuracySession destroyUponDisconnection(DIC), identityToken:%{public, location:escape_only}s, self:%{public}p}", buf, 0x26u);
      }

      sub_19B943C68();
    }

    locationdConnection = self->_locationdConnection;
    self->_locationdConnection = 0;
    CLConnection::deferredDelete(locationdConnection);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D690);
    }

    v7 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      *&buf[4] = 0;
      v12[0] = 2082;
      *&v12[1] = "";
      v13 = 2082;
      v14 = [(NSString *)[(CLFullAccuracySession *)self identityToken] UTF8String];
      v15 = 2050;
      v16 = self;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#fullAccuracySession invalidated and destroyed connection, identityToken:%{public, location:escape_only}s, self:%{public}p}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D690);
      }
    }

    v8 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      v9 = [(NSString *)[(CLFullAccuracySession *)self identityToken] UTF8String];
      *buf = 68289538;
      *&buf[4] = 0;
      v12[0] = 2082;
      *&v12[1] = "";
      v13 = 2082;
      v14 = v9;
      v15 = 2050;
      v16 = self;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#fullAccuracySession invalidated and destroyed connection", "{msg%{public}.0s:#fullAccuracySession invalidated and destroyed connection, identityToken:%{public, location:escape_only}s, self:%{public}p}", buf, 0x26u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLFullAccuracySession #fullAccuracySession", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6D690);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "activity";
    v20 = 2114;
    v21 = v6;
    v22 = 2050;
    v23 = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLFullAccuracySession #fullAccuracySession, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  [(CLFullAccuracySession *)self setIsValid:0];
  locationdConnection = self->_locationdConnection;
  self->_locationdConnection = 0;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", self];
  silo = self->_silo;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_19B95FDB8;
  v12[3] = &unk_1E753CFB0;
  v12[4] = v8;
  v12[5] = locationdConnection;
  [(CLDispatchSilo *)silo async:v12];
  [(CLFullAccuracySession *)self tearDown];
  v11.receiver = self;
  v11.super_class = CLFullAccuracySession;
  [(CLFullAccuracySession *)&v11 dealloc];
  os_activity_scope_leave(&state);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  v21 = *MEMORY[0x1E69E9840];
  if ([(CLFullAccuracySession *)self isValid])
  {
    v4 = _os_activity_create(&dword_19B873000, "CL: CLFullAccuracySession #fullAccuracySession", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v4, &state);

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D690);
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
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLFullAccuracySession #fullAccuracySession, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
    }

    [(CLFullAccuracySession *)self setIsValid:0];
    silo = self->_silo;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_19B9601B0;
    v9[3] = &unk_1E753CC90;
    v9[4] = self;
    [(CLDispatchSilo *)silo async:v9];
    os_activity_scope_leave(&state);
  }

  v8 = *MEMORY[0x1E69E9840];
}

@end