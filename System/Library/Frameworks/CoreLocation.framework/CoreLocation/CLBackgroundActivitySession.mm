@interface CLBackgroundActivitySession
+ (CLBackgroundActivitySession)backgroundActivitySession;
+ (CLBackgroundActivitySession)backgroundActivitySessionWithQueue:(id)a3 handler:(id)a4;
+ (CLBackgroundActivitySession)sessionWithLocationManager:(id)a3 queue:(id)a4 handler:(id)a5;
- (CLBackgroundActivitySession)initWithLocationManager:(id)a3 queue:(id)a4 handler:(id)a5;
- (void)createConnection;
- (void)dealloc;
- (void)destroyConnection;
- (void)handleMessage:(shared_ptr<CLConnectionMessage>)a3;
- (void)handleMessageDiagnostics:(shared_ptr<CLConnectionMessage>)a3;
- (void)invalidate;
- (void)manageConnection;
- (void)setHandler:(id)a3;
- (void)tearDown;
- (void)updateIdentityToken:(id)a3 withStorageToken:(id)a4;
@end

@implementation CLBackgroundActivitySession

+ (CLBackgroundActivitySession)sessionWithLocationManager:(id)a3 queue:(id)a4 handler:(id)a5
{
  v6 = [[CLBackgroundActivitySession alloc] initWithLocationManager:a3 queue:a4 handler:a5];
  [a3 addIdentifiableClient:v6];
  return v6;
}

+ (CLBackgroundActivitySession)backgroundActivitySession
{
  +[CLLocationManager weakSharedInstance];

  return MEMORY[0x1EEE66B58](CLBackgroundActivitySession, sel_backgroundActivitySessionWithLocationManager_);
}

+ (CLBackgroundActivitySession)backgroundActivitySessionWithQueue:(id)a3 handler:(id)a4
{
  +[CLLocationManager weakSharedInstance];

  return MEMORY[0x1EEE66B58](CLBackgroundActivitySession, sel_sessionWithLocationManager_requestPrivilege_queue_handler_);
}

- (CLBackgroundActivitySession)initWithLocationManager:(id)a3 queue:(id)a4 handler:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = CLBackgroundActivitySession;
  v9 = [(CLBackgroundActivitySession *)&v17 init];
  if (v9)
  {
    v10 = _os_activity_create(&dword_19B873000, "CL: CLBackgroundActivitySession #backgroundActivitySession", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &v16);

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D5F0);
    }

    v11 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v12 = NSStringFromSelector(a2);
      *buf = 68290050;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2082;
      v23 = "activity";
      v24 = 2114;
      v25 = v12;
      v26 = 2050;
      v27 = v9;
      v28 = 2050;
      v29 = a3;
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLBackgroundActivitySession #backgroundActivitySession, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, manager:%{public}p}", buf, 0x3Au);
    }

    if (([a3 isMasquerading] & 1) == 0 && (sub_19B8B8818() & 1) == 0)
    {
      NSLog(&cfstr_ErrorClbackgro.isa);
    }

    [(CLBackgroundActivitySession *)v9 setShouldBeRunning:1];
    if (!a4)
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D5F0);
      }

      v13 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289282;
        v19 = 0;
        v20 = 2082;
        v21 = "";
        v22 = 2050;
        v23 = v9;
        _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#backgroundActivitySession, nil callback queue creating locally, self:%{public}p}", buf, 0x1Cu);
      }

      a4 = +[CLLocationManager sharedQueue];
    }

    v9->_silo = [objc_alloc(MEMORY[0x1E69AD360]) initWithUnderlyingQueue:a4];
    [(CLBackgroundActivitySession *)v9 setManager:a3];
    if (a5)
    {
      v9->_clientCallback = _Block_copy(a5);
    }

    os_activity_scope_leave(&v16);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)updateIdentityToken:(id)a3 withStorageToken:(id)a4
{
  silo = self->_silo;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B9511F0;
  v5[3] = &unk_1E753CF38;
  v5[4] = self;
  v5[5] = a3;
  [(CLDispatchSilo *)silo async:v5, a4];
}

- (void)tearDown
{
  [(CLLocationManager *)[(CLBackgroundActivitySession *)self manager] removeIdentifiableClient:self];
  [(CLBackgroundActivitySession *)self setIdentityToken:0];
  [(CLBackgroundActivitySession *)self setStorageToken:0];
  _Block_release(self->_clientCallback);
  self->_clientCallback = 0;
  [(CLBackgroundActivitySession *)self setManager:0];

  self->_silo = 0;
}

- (void)invalidate
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLBackgroundActivitySession #backgroundActivitySession", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6D5F0);
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
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLBackgroundActivitySession #backgroundActivitySession, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  [(CLBackgroundActivitySession *)self setShouldBeRunning:0];
  silo = self->_silo;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B95146C;
  v9[3] = &unk_1E753CC90;
  v9[4] = self;
  [(CLDispatchSilo *)silo async:v9];
  os_activity_scope_leave(&state);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLBackgroundActivitySession #backgroundActivitySession", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6D5F0);
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
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLBackgroundActivitySession #backgroundActivitySession, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  [(CLBackgroundActivitySession *)self setShouldBeRunning:0];
  locationdConnection = self->_locationdConnection;
  self->_locationdConnection = 0;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", self];
  silo = self->_silo;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_19B9516BC;
  v12[3] = &unk_1E753CFB0;
  v12[4] = v8;
  v12[5] = locationdConnection;
  [(CLDispatchSilo *)silo async:v12];
  [(CLBackgroundActivitySession *)self tearDown];
  v11.receiver = self;
  v11.super_class = CLBackgroundActivitySession;
  [(CLBackgroundActivitySession *)&v11 dealloc];
  os_activity_scope_leave(&state);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)manageConnection
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLBackgroundActivitySession #backgroundActivitySession", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v4, &v8);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6D5F0);
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
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLBackgroundActivitySession #backgroundActivitySession, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  [(CLDispatchSilo *)self->_silo assertInside];
  if ([(CLBackgroundActivitySession *)self identityToken]&& [(CLBackgroundActivitySession *)self shouldBeRunning])
  {
    [(CLBackgroundActivitySession *)self createConnection];
  }

  else
  {
    [(CLBackgroundActivitySession *)self destroyConnection];
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

- (void)destroyConnection
{
  v17 = *MEMORY[0x1E69E9840];
  [(CLDispatchSilo *)self->_silo assertInside];
  if (self->_locationdConnection)
  {
    if ([(CLBackgroundActivitySession *)self identityToken]&& ![(CLBackgroundActivitySession *)self shouldBeRunning])
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D5F0);
      }

      v3 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289538;
        *&buf[4] = 0;
        v12[0] = 2082;
        *&v12[1] = "";
        v13 = 2082;
        v14 = [(NSString *)[(CLBackgroundActivitySession *)self identityToken] UTF8String];
        v15 = 2050;
        v16 = self;
        _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#backgroundActivitySession destroyUponDisconnection(DIC), identityToken:%{public, location:escape_only}s, self:%{public}p}", buf, 0x26u);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6D5F0);
        }
      }

      v4 = qword_1ED519090;
      if (os_signpost_enabled(qword_1ED519090))
      {
        v5 = [(NSString *)[(CLBackgroundActivitySession *)self identityToken] UTF8String];
        *buf = 68289538;
        *&buf[4] = 0;
        v12[0] = 2082;
        *&v12[1] = "";
        v13 = 2082;
        v14 = v5;
        v15 = 2050;
        v16 = self;
        _os_signpost_emit_with_name_impl(&dword_19B873000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#backgroundActivitySession destroyUponDisconnection(DIC)", "{msg%{public}.0s:#backgroundActivitySession destroyUponDisconnection(DIC), identityToken:%{public, location:escape_only}s, self:%{public}p}", buf, 0x26u);
      }

      sub_19B943C68();
    }

    locationdConnection = self->_locationdConnection;
    self->_locationdConnection = 0;
    CLConnection::deferredDelete(locationdConnection);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D5F0);
    }

    v7 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      *&buf[4] = 0;
      v12[0] = 2082;
      *&v12[1] = "";
      v13 = 2082;
      v14 = [(NSString *)[(CLBackgroundActivitySession *)self identityToken] UTF8String];
      v15 = 2050;
      v16 = self;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#backgroundActivitySession invalidated and destroyed connection, identityToken:%{public, location:escape_only}s, self:%{public}p}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D5F0);
      }
    }

    v8 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      v9 = [(NSString *)[(CLBackgroundActivitySession *)self identityToken] UTF8String];
      *buf = 68289538;
      *&buf[4] = 0;
      v12[0] = 2082;
      *&v12[1] = "";
      v13 = 2082;
      v14 = v9;
      v15 = 2050;
      v16 = self;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#backgroundActivitySession invalidated and destroyed connection", "{msg%{public}.0s:#backgroundActivitySession invalidated and destroyed connection, identityToken:%{public, location:escape_only}s, self:%{public}p}", buf, 0x26u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)handleMessage:(shared_ptr<CLConnectionMessage>)a3
{
  var0 = a3.var0;
  v32 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLBackgroundActivitySession #backgroundActivitySession", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6D5F0);
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
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLBackgroundActivitySession #backgroundActivitySession, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, message:%{public, location:escape_only}s}", buf, 0x3Au);
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

      [(CLBackgroundActivitySession *)self handleMessageDiagnostics:&v17];
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
  v29 = *MEMORY[0x1E69E9840];
  [(CLDispatchSilo *)self->_silo assertInside:a3.var0];
  if ([(CLBackgroundActivitySession *)self shouldBeRunning]&& self->_clientCallback)
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
      dispatch_once(&qword_1ED519088, &unk_1F0E6D5F0);
    }

    v12 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v13 = NSStringFromSelector(a2);
      *buf = 68290051;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2082;
      v22 = "activity";
      v23 = 2114;
      v24 = v13;
      v25 = 2050;
      v26 = self;
      v27 = 2113;
      v28 = DictionaryOfClasses;
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationUpdater #locationUpdater, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, payload:%{private, location:escape_only}@}", buf, 0x3Au);
    }

    v14 = -[CLBackgroundActivitySessionDiagnostic initWithDiagnostics:]([CLBackgroundActivitySessionDiagnostic alloc], "initWithDiagnostics:", [objc_msgSend(DictionaryOfClasses objectForKeyedSubscript:{@"kCLConnectionMessageDiagnosticsKey", "unsignedLongValue"}]);
    (*(self->_clientCallback + 2))();

    os_activity_scope_leave(&state);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)setHandler:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  if (self->_clientCallback)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D5F0);
    }

    v5 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289795;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2050;
      v16 = self;
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "_clientCallback == nullptr";
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#backgroundActivitySession should initially be nil, self:%{public}p, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D5F0);
      }
    }

    v6 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289795;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2050;
      v16 = self;
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "_clientCallback == nullptr";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#backgroundActivitySession should initially be nil", "{msg%{public}.0s:#backgroundActivitySession should initially be nil, self:%{public}p, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D5F0);
      }
    }

    v7 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
    {
      *buf = 68289795;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2050;
      v16 = self;
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "_clientCallback == nullptr";
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#backgroundActivitySession should initially be nil, self:%{public}p, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
    }

LABEL_25:
    abort_report_np();
  }

  if (!a3)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D5F0);
    }

    v8 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289795;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2050;
      v16 = self;
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "handler != nullptr";
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#backgroundActivitySession can't set a nil handler, self:%{public}p, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D5F0);
      }
    }

    v9 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289795;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2050;
      v16 = self;
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "handler != nullptr";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#backgroundActivitySession can't set a nil handler", "{msg%{public}.0s:#backgroundActivitySession can't set a nil handler, self:%{public}p, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D5F0);
      }
    }

    v10 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
    {
      *buf = 68289795;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2050;
      v16 = self;
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "handler != nullptr";
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#backgroundActivitySession can't set a nil handler, self:%{public}p, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
    }

    goto LABEL_25;
  }

  self->_clientCallback = _Block_copy(a3);
  v4 = *MEMORY[0x1E69E9840];
}

@end