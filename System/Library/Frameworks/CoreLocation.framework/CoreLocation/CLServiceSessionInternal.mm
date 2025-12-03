@interface CLServiceSessionInternal
- (CLServiceSessionInternal)initWithLocationManager:(id)manager serviceSessionType:(int)type queue:(id)queue handler:(id)p_info;
- (void)createConnection;
- (void)dealloc;
- (void)destroyConnection;
- (void)handleMessage:(shared_ptr<CLConnectionMessage>)message;
- (void)handleMessageDiagnostics:(shared_ptr<CLConnectionMessage>)diagnostics;
- (void)invalidate;
- (void)manageConnection;
- (void)tearDown;
- (void)updateIdentityToken:(id)token withStorageToken:(id)storageToken;
@end

@implementation CLServiceSessionInternal

- (CLServiceSessionInternal)initWithLocationManager:(id)manager serviceSessionType:(int)type queue:(id)queue handler:(id)p_info
{
  LODWORD(v8) = type;
  v37 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = CLServiceSessionInternal;
  v11 = [(CLServiceSessionInternal *)&v24 init];
  if (!v11)
  {
    goto LABEL_16;
  }

  if (!queue)
  {
    p_info = CLLocationManagerInternal.info;
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D480);
    }

    v8 = CLLocationManagerInternal.info;
    v18 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      v29 = 2082;
      v30 = "assert";
      v31 = 2081;
      v32 = "queue";
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:queue cannot be nil while creating ExplicitServiceSession, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D480);
      }
    }

    v19 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289539;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      v29 = 2082;
      v30 = "assert";
      v31 = 2081;
      v32 = "queue";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "queue cannot be nil while creating ExplicitServiceSession", "{msg%{public}.0s:queue cannot be nil while creating ExplicitServiceSession, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D480);
      }
    }

    v11 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      v29 = 2082;
      v30 = "assert";
      v31 = 2081;
      v32 = "queue";
      _os_log_impl(&dword_19B873000, &v11->super, OS_LOG_TYPE_INFO, "{msg%{public}.0s:queue cannot be nil while creating ExplicitServiceSession, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v21 = 98;
    v22 = "[CLServiceSessionInternal initWithLocationManager:serviceSessionType:queue:handler:]";
    v20 = "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreLocation/CLServiceSessionInternal.mm";
    abort_report_np();
    __break(1u);
    goto LABEL_28;
  }

  v12 = _os_activity_create(&dword_19B873000, "CL: CLServiceSession #serviceSession", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v12, &state);

  if (qword_1ED519088 != -1)
  {
LABEL_28:
    dispatch_once(&qword_1ED519088, &unk_1F0E6D480);
  }

  v13 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v14 = NSStringFromSelector(a2);
    *buf = 68290050;
    v26 = 0;
    v27 = 2082;
    v28 = "";
    v29 = 2082;
    v30 = "activity";
    v31 = 2114;
    v32 = v14;
    v33 = 2050;
    v34 = v11;
    v35 = 2050;
    managerCopy = manager;
    _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLServiceSession #serviceSession, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, manager:%{public}p}", buf, 0x3Au);
  }

  if (([manager isMasquerading] & 1) == 0)
  {
    if ((sub_19B8B8818() & 1) == 0)
    {
      NSLog(&cfstr_ErrorClservice.isa);
    }

    if (v8 == 2)
    {
      MainBundle = CFBundleGetMainBundle();
      if (MainBundle)
      {
        if (!CFBundleGetValueForInfoDictionaryKey(MainBundle, @"NSLocationAlwaysAndWhenInUseUsageDescription"))
        {
          NSLog(&cfstr_ErrorPrivilege.isa);
        }
      }
    }
  }

  [(CLServiceSessionInternal *)v11 setIsValid:1];
  v11->_silo = [objc_alloc(MEMORY[0x1E69AD360]) initWithUnderlyingQueue:queue];
  [(CLServiceSessionInternal *)v11 setManager:manager];
  v11->_sessionType = v8;
  if (p_info)
  {
    v11->_clientCallback = _Block_copy(p_info);
  }

  os_activity_scope_leave(&state);
LABEL_16:
  v16 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)updateIdentityToken:(id)token withStorageToken:(id)storageToken
{
  silo = self->_silo;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B9425E0;
  v5[3] = &unk_1E753CF38;
  v5[4] = self;
  v5[5] = token;
  [(CLDispatchSilo *)silo async:v5, storageToken];
}

- (void)tearDown
{
  [(CLLocationManager *)[(CLServiceSessionInternal *)self manager] removeIdentifiableClient:self];
  [(CLServiceSessionInternal *)self setIdentityToken:0];
  [(CLServiceSessionInternal *)self setStorageToken:0];
  _Block_release(self->_clientCallback);
  self->_clientCallback = 0;
  [(CLServiceSessionInternal *)self setManager:0];

  self->_silo = 0;
}

- (void)invalidate
{
  v21 = *MEMORY[0x1E69E9840];
  if ([(CLServiceSessionInternal *)self isValid])
  {
    v4 = _os_activity_create(&dword_19B873000, "CL: CLServiceSession #serviceSession", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v4, &state);

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D480);
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
      selfCopy = self;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLServiceSession #serviceSession, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
    }

    [(CLServiceSessionInternal *)self setIsValid:0];
    silo = self->_silo;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_19B942864;
    v9[3] = &unk_1E753CC90;
    v9[4] = self;
    [(CLDispatchSilo *)silo async:v9];
    os_activity_scope_leave(&state);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLServiceSession #serviceSession", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6D480);
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
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLServiceSession #serviceSession, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  [(CLServiceSessionInternal *)self setIsValid:0];
  locationdConnection = self->_locationdConnection;
  self->_locationdConnection = 0;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", self];
  silo = self->_silo;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_19B942AB4;
  v12[3] = &unk_1E753CFB0;
  v12[4] = v8;
  v12[5] = locationdConnection;
  [(CLDispatchSilo *)silo async:v12];
  [(CLServiceSessionInternal *)self tearDown];
  v11.receiver = self;
  v11.super_class = CLServiceSessionInternal;
  [(CLServiceSessionInternal *)&v11 dealloc];
  os_activity_scope_leave(&state);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)manageConnection
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLServiceSession #serviceSession", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v4, &v8);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6D480);
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
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLServiceSession #serviceSession, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  [(CLDispatchSilo *)self->_silo assertInside];
  if ([(CLServiceSessionInternal *)self identityToken]&& [(CLServiceSessionInternal *)self isValid])
  {
    [(CLServiceSessionInternal *)self createConnection];
  }

  else
  {
    [(CLServiceSessionInternal *)self destroyConnection];
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
    if ([(CLServiceSessionInternal *)self identityToken]&& ![(CLServiceSessionInternal *)self isValid])
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D480);
      }

      v3 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289538;
        *&buf[4] = 0;
        v12[0] = 2082;
        *&v12[1] = "";
        v13 = 2082;
        uTF8String = [(NSString *)[(CLServiceSessionInternal *)self identityToken] UTF8String];
        v15 = 2050;
        selfCopy4 = self;
        _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#serviceSession destroyUponDisconnection(DIC), identityToken:%{public, location:escape_only}s, self:%{public}p}", buf, 0x26u);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6D480);
        }
      }

      v4 = qword_1ED519090;
      if (os_signpost_enabled(qword_1ED519090))
      {
        uTF8String2 = [(NSString *)[(CLServiceSessionInternal *)self identityToken] UTF8String];
        *buf = 68289538;
        *&buf[4] = 0;
        v12[0] = 2082;
        *&v12[1] = "";
        v13 = 2082;
        uTF8String = uTF8String2;
        v15 = 2050;
        selfCopy4 = self;
        _os_signpost_emit_with_name_impl(&dword_19B873000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#serviceSession destroyUponDisconnection(DIC)", "{msg%{public}.0s:#serviceSession destroyUponDisconnection(DIC), identityToken:%{public, location:escape_only}s, self:%{public}p}", buf, 0x26u);
      }

      sub_19B943C68();
    }

    locationdConnection = self->_locationdConnection;
    self->_locationdConnection = 0;
    CLConnection::deferredDelete(locationdConnection);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D480);
    }

    v7 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      *&buf[4] = 0;
      v12[0] = 2082;
      *&v12[1] = "";
      v13 = 2082;
      uTF8String = [(NSString *)[(CLServiceSessionInternal *)self identityToken] UTF8String];
      v15 = 2050;
      selfCopy4 = self;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#serviceSession invalidated and destroyed connection, identityToken:%{public, location:escape_only}s, self:%{public}p}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D480);
      }
    }

    v8 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      uTF8String3 = [(NSString *)[(CLServiceSessionInternal *)self identityToken] UTF8String];
      *buf = 68289538;
      *&buf[4] = 0;
      v12[0] = 2082;
      *&v12[1] = "";
      v13 = 2082;
      uTF8String = uTF8String3;
      v15 = 2050;
      selfCopy4 = self;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#serviceSession invalidated and destroyed connection", "{msg%{public}.0s:#serviceSession invalidated and destroyed connection, identityToken:%{public, location:escape_only}s, self:%{public}p}", buf, 0x26u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)handleMessage:(shared_ptr<CLConnectionMessage>)message
{
  var0 = message.var0;
  v32 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLBackgroundActivitySession #backgroundActivitySession", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6D480);
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
    selfCopy = self;
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

      [(CLServiceSessionInternal *)self handleMessageDiagnostics:&v17];
      if (v18)
      {
        sub_19B8750F8(v18);
      }
    }
  }

  os_activity_scope_leave(&state);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)handleMessageDiagnostics:(shared_ptr<CLConnectionMessage>)diagnostics
{
  var0 = diagnostics.var0;
  v18 = *MEMORY[0x1E69E9840];
  [(CLDispatchSilo *)self->_silo assertInside:diagnostics.var0];
  if ([(CLServiceSessionInternal *)self isValid]&& self->_clientCallback)
  {
    v5 = *var0;
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [objc_msgSend(CLConnectionMessage::getDictionaryOfClasses(v5 v6)];
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D480);
    }

    v8 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2050;
      selfCopy = self;
      v16 = 1026;
      v17 = v7;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#serviceSession handleMessageDiagnostics, self:%{public}p, diagnosticMask:%{public}d}", buf, 0x22u);
    }

    (*(self->_clientCallback + 2))();
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end