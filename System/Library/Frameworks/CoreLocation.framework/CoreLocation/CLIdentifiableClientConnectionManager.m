@interface CLIdentifiableClientConnectionManager
- (CLIdentifiableClientConnectionManager)initWithSilo:(id)a3 locationManager:(id)a4 startMessageName:(id)a5 startMessagePayload:(id)a6 responseHandler:(id)a7;
- (void)_pauseLocationUpdater;
- (void)_resumeLocationUpdater;
- (void)_start;
- (void)createConnection;
- (void)dealloc;
- (void)destroyConnection;
- (void)handleResponseMessage:(shared_ptr<CLConnectionMessage>)a3;
- (void)manageConnection;
- (void)pause;
- (void)resume;
- (void)tearDown;
- (void)updateIdentityToken:(id)a3 withStorageToken:(id)a4;
@end

@implementation CLIdentifiableClientConnectionManager

- (CLIdentifiableClientConnectionManager)initWithSilo:(id)a3 locationManager:(id)a4 startMessageName:(id)a5 startMessagePayload:(id)a6 responseHandler:(id)a7
{
  v32 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = CLIdentifiableClientConnectionManager;
  v12 = [(CLIdentifiableClientConnectionManager *)&v23 init];
  if (!v12)
  {
    goto LABEL_19;
  }

  if (a3)
  {
    v13 = a3;
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E748);
    }

    v14 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289282;
      v25 = 0;
      v26 = 2082;
      v27 = "";
      v28 = 2050;
      v29 = v12;
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ficConnectionManager has nil silo; Creating locally, self:%{public}p}", buf, 0x1Cu);
    }

    v15 = +[CLLocationManager sharedQueue];
    v13 = [objc_alloc(MEMORY[0x1E69AD360]) initWithUnderlyingQueue:v15 bePermissive:0];
  }

  v12->_silo = v13;
  if (!a4)
  {
    a4 = +[CLLocationManager weakSharedInstance];
  }

  [(CLIdentifiableClientConnectionManager *)v12 setManager:a4];
  v12->_startMessageName = a5;
  if (a6)
  {
    v16 = [a6 mutableCopy];
  }

  else
  {
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v12->_startMessagePayload = v16;
  if (a7)
  {
    v17 = _Block_copy(a7);
    v12->_responseHandler = v17;
    if (v17)
    {
      goto LABEL_16;
    }
  }

  else if (v12->_responseHandler)
  {
LABEL_16:
    [(CLIdentifiableClientConnectionManager *)v12 setIdentityToken:0];
    [(CLIdentifiableClientConnectionManager *)v12 setShouldBeRunning:0];
    [(CLIdentifiableClientConnectionManager *)v12 setStarted:0];
    if (qword_1ED519088 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_32;
  }

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E748);
  }

  v21 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
  {
    *buf = 68289539;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    v28 = 2082;
    v29 = "assert";
    v30 = 2081;
    v31 = "_responseHandler != nullptr";
    _os_log_impl(&dword_19B873000, v21, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#ficConnectionManager cannnot be created without a response-handler, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E748);
    }
  }

  v22 = qword_1ED519090;
  if (os_signpost_enabled(qword_1ED519090))
  {
    *buf = 68289539;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    v28 = 2082;
    v29 = "assert";
    v30 = 2081;
    v31 = "_responseHandler != nullptr";
    _os_signpost_emit_with_name_impl(&dword_19B873000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#ficConnectionManager cannnot be created without a response-handler", "{msg%{public}.0s:#ficConnectionManager cannnot be created without a response-handler, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E748);
    }
  }

  v12 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
  {
    *buf = 68289539;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    v28 = 2082;
    v29 = "assert";
    v30 = 2081;
    v31 = "_responseHandler != nullptr";
    _os_log_impl(&dword_19B873000, &v12->super, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#ficConnectionManager cannnot be created without a response-handler, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
  }

  abort_report_np();
LABEL_32:
  dispatch_once(&qword_1ED519088, &unk_1F0E6E748);
LABEL_17:
  v18 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289282;
    v25 = 0;
    v26 = 2082;
    v27 = "";
    v28 = 2050;
    v29 = v12;
    _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ficConnectionManager init, self:%{public}p}", buf, 0x1Cu);
  }

LABEL_19:
  v19 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)_start
{
  if (![(CLIdentifiableClientConnectionManager *)self started])
  {
    [(CLIdentifiableClientConnectionManager *)self setStarted:1];
    v3 = [(CLIdentifiableClientConnectionManager *)self manager];

    [(CLLocationManager *)v3 addIdentifiableClient:self];
  }
}

- (void)pause
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E748);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289282;
    v8 = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2050;
    v12 = self;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ficConnectionManager pause, self:%{public}p}", buf, 0x1Cu);
  }

  [(CLIdentifiableClientConnectionManager *)self setShouldBeRunning:0];
  silo = self->_silo;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B9DA858;
  v6[3] = &unk_1E753CC90;
  v6[4] = self;
  [(CLDispatchSilo *)silo async:v6];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)resume
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E748);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289282;
    v8 = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2050;
    v12 = self;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ficConnectionManager resume, self:%{public}p}", buf, 0x1Cu);
  }

  [(CLIdentifiableClientConnectionManager *)self setShouldBeRunning:1];
  [(CLIdentifiableClientConnectionManager *)self _start];
  silo = self->_silo;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B9DA9B0;
  v6[3] = &unk_1E753CC90;
  v6[4] = self;
  [(CLDispatchSilo *)silo async:v6];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_pauseLocationUpdater
{
  v10 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E748);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    v5[0] = 68289282;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2050;
    v9 = self;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ficConnectionManager _pauseLocationUpdater, self:%{public}p}", v5, 0x1Cu);
  }

  [(CLDispatchSilo *)self->_silo assertInside];
  [(CLIdentifiableClientConnectionManager *)self setShouldBeRunning:0];
  [(CLIdentifiableClientConnectionManager *)self manageConnection];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_resumeLocationUpdater
{
  v10 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E748);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    v5[0] = 68289282;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2050;
    v9 = self;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ficConnectionManager _resumeLocationUpdater, self:%{public}p}", v5, 0x1Cu);
  }

  [(CLDispatchSilo *)self->_silo assertInside];
  [(CLIdentifiableClientConnectionManager *)self setShouldBeRunning:1];
  [(CLIdentifiableClientConnectionManager *)self _start];
  [(CLIdentifiableClientConnectionManager *)self manageConnection];
  v4 = *MEMORY[0x1E69E9840];
}

- (void)updateIdentityToken:(id)a3 withStorageToken:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E748);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289538;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2050;
    v16 = self;
    v17 = 2082;
    v18 = [a3 UTF8String];
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ficConnectionManager updateIdentityToken, self:%{public}p, identityToken:%{public, location:escape_only}s}", buf, 0x26u);
  }

  silo = self->_silo;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B9DAD28;
  v10[3] = &unk_1E753D098;
  v10[4] = self;
  v10[5] = a3;
  v10[6] = a4;
  [(CLDispatchSilo *)silo async:v10];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)manageConnection
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E748);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    v5[0] = 68289538;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    v8 = 2050;
    v9 = self;
    v10 = 2082;
    v11 = [(NSString *)[(CLIdentifiableClientConnectionManager *)self identityToken] UTF8String];
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ficConnectionManager manageConnection, self:%{public}p, identityToken:%{public, location:escape_only}s}", v5, 0x26u);
  }

  [(CLDispatchSilo *)self->_silo assertInside];
  if ([(CLIdentifiableClientConnectionManager *)self shouldBeRunning]&& [(CLIdentifiableClientConnectionManager *)self identityToken])
  {
    [(CLIdentifiableClientConnectionManager *)self createConnection];
  }

  else
  {
    [(CLIdentifiableClientConnectionManager *)self destroyConnection];
  }

  v4 = *MEMORY[0x1E69E9840];
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
  v15 = *MEMORY[0x1E69E9840];
  [(CLDispatchSilo *)self->_silo assertInside];
  if (self->_locationdConnection)
  {
    if ([(CLIdentifiableClientConnectionManager *)self identityToken]&& ![(CLIdentifiableClientConnectionManager *)self shouldBeRunning])
    {
      sub_19B943C68();
    }

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E748);
    }

    v3 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
    {
      v4 = [(NSString *)[(CLIdentifiableClientConnectionManager *)self identityToken] UTF8String];
      *buf = 68289538;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2082;
      v12 = v4;
      v13 = 2050;
      v14 = self;
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ficConnectionManager destroying connection, identityToken:%{public, location:escape_only}s, self:%{public}p}", buf, 0x26u);
    }

    locationdConnection = self->_locationdConnection;
    self->_locationdConnection = 0;
    CLConnection::deferredDelete(locationdConnection);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleResponseMessage:(shared_ptr<CLConnectionMessage>)a3
{
  var0 = a3.var0;
  [(CLDispatchSilo *)self->_silo assertInside:a3.var0];
  v5 = *var0;
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(v5, v11);
  if ([(CLIdentifiableClientConnectionManager *)self shouldBeRunning])
  {
    responseHandler = self->_responseHandler;
    if (responseHandler)
    {
      v14 = MEMORY[0x1E696AEC0];
      v15 = CLConnectionMessage::name(*var0);
      if (*(v15 + 23) >= 0)
      {
        v16 = v15;
      }

      else
      {
        v16 = *v15;
      }

      v17 = [v14 stringWithUTF8String:v16];
      v18 = responseHandler[2];

      v18(responseHandler, v17, DictionaryOfClasses);
    }
  }
}

- (void)tearDown
{
  v11 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E748);
  }

  v3 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 68289282;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2050;
    v10 = self;
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ficConnectionManager tearDown, self:%{public}p}", v6, 0x1Cu);
  }

  [(CLLocationManager *)[(CLIdentifiableClientConnectionManager *)self manager] removeIdentifiableClient:self];
  [(CLIdentifiableClientConnectionManager *)self setManager:0];

  self->_startMessageName = 0;
  self->_startMessagePayload = 0;
  responseHandler = self->_responseHandler;
  if (responseHandler)
  {
    _Block_release(responseHandler);
  }

  [(CLIdentifiableClientConnectionManager *)self setShouldBeRunning:0];
  [(CLIdentifiableClientConnectionManager *)self setIdentityToken:0];
  [(CLIdentifiableClientConnectionManager *)self setStorageToken:0];

  self->_silo = 0;
  v5 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  locationdConnection = self->_locationdConnection;
  self->_locationdConnection = 0;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", self];
  silo = self->_silo;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B9DB954;
  v7[3] = &unk_1E753CFB0;
  v7[4] = v4;
  v7[5] = locationdConnection;
  [(CLDispatchSilo *)silo async:v7];
  [(CLIdentifiableClientConnectionManager *)self tearDown];
  v6.receiver = self;
  v6.super_class = CLIdentifiableClientConnectionManager;
  [(CLIdentifiableClientConnectionManager *)&v6 dealloc];
}

@end