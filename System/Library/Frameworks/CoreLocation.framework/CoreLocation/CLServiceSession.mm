@interface CLServiceSession
+ (id)disconnectedSessionRequiringAuthorization:(int64_t)authorization;
+ (id)disconnectedSessionRequiringAuthorization:(int64_t)authorization fullAccuracyPurposeKey:(id)key;
+ (id)sessionRequiringAuthorization:(int64_t)authorization;
+ (id)sessionRequiringAuthorization:(int64_t)authorization fullAccuracyPurposeKey:(id)key;
+ (id)sessionRequiringAuthorization:(int64_t)authorization fullAccuracyPurposeKey:(id)key queue:(id)queue handler:(id)handler;
+ (id)sessionRequiringAuthorization:(int64_t)authorization queue:(id)queue handler:(id)handler;
+ (id)sessionWithLocationManager:(id)manager authorizationRequirement:(int64_t)requirement fullAccuracyPurposeKey:(id)key queue:(id)queue handler:(id)handler;
- (CLServiceSession)initWithLocationManager:(id)manager authorizationRequirement:(int64_t)requirement fullAccuracyPurposeKey:(id)key queue:(id)queue handler:(id)handler;
- (id)initDisconnectedSessionWithAuthorizationRequirement:(int64_t)requirement fullAccuracyPurposeKey:(id)key;
- (void)dealloc;
- (void)handleDiagnosticUpdate;
- (void)invalidate;
- (void)setHandler:(id)handler;
- (void)setupSessionInternalWithLocationManager:(id)manager authorizationRequirement:(int64_t)requirement fullAccuracyPurposeKey:(id)key queue:(id)queue;
@end

@implementation CLServiceSession

+ (id)sessionRequiringAuthorization:(int64_t)authorization
{
  v3 = [[CLServiceSession alloc] initWithLocationManager:+[CLLocationManager weakSharedInstance](CLLocationManager authorizationRequirement:"weakSharedInstance") fullAccuracyPurposeKey:authorization queue:0 handler:+[CLLocationManager sharedQueue], 0];

  return v3;
}

+ (id)disconnectedSessionRequiringAuthorization:(int64_t)authorization
{
  v3 = [[CLServiceSession alloc] initDisconnectedSessionWithAuthorizationRequirement:authorization fullAccuracyPurposeKey:0];

  return v3;
}

+ (id)sessionRequiringAuthorization:(int64_t)authorization queue:(id)queue handler:(id)handler
{
  handler = [[CLServiceSession alloc] initWithLocationManager:+[CLLocationManager authorizationRequirement:"weakSharedInstance"]fullAccuracyPurposeKey:authorization queue:0 handler:queue, handler];

  return handler;
}

+ (id)sessionRequiringAuthorization:(int64_t)authorization fullAccuracyPurposeKey:(id)key
{
  v4 = [[CLServiceSession alloc] initWithLocationManager:+[CLLocationManager weakSharedInstance](CLLocationManager authorizationRequirement:"weakSharedInstance") fullAccuracyPurposeKey:authorization queue:key handler:+[CLLocationManager sharedQueue], 0];

  return v4;
}

+ (id)disconnectedSessionRequiringAuthorization:(int64_t)authorization fullAccuracyPurposeKey:(id)key
{
  v4 = [[CLServiceSession alloc] initDisconnectedSessionWithAuthorizationRequirement:authorization fullAccuracyPurposeKey:key];

  return v4;
}

+ (id)sessionRequiringAuthorization:(int64_t)authorization fullAccuracyPurposeKey:(id)key queue:(id)queue handler:(id)handler
{
  handler = [[CLServiceSession alloc] initWithLocationManager:+[CLLocationManager authorizationRequirement:"weakSharedInstance"]fullAccuracyPurposeKey:authorization queue:key handler:queue, handler];

  return handler;
}

+ (id)sessionWithLocationManager:(id)manager authorizationRequirement:(int64_t)requirement fullAccuracyPurposeKey:(id)key queue:(id)queue handler:(id)handler
{
  v7 = [[CLServiceSession alloc] initWithLocationManager:manager authorizationRequirement:requirement fullAccuracyPurposeKey:key queue:queue handler:handler];

  return v7;
}

- (void)setupSessionInternalWithLocationManager:(id)manager authorizationRequirement:(int64_t)requirement fullAccuracyPurposeKey:(id)key queue:(id)queue
{
  queueCopy = queue;
  managerCopy = manager;
  v26 = *MEMORY[0x1E69E9840];
  if (manager)
  {
    if (queue)
    {
      goto LABEL_3;
    }
  }

  else
  {
    managerCopy = +[CLLocationManager weakSharedInstance];
    if (queueCopy)
    {
      goto LABEL_3;
    }
  }

  queueCopy = +[CLLocationManager sharedQueue];
LABEL_3:
  switch(requirement)
  {
    case 2:
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = sub_19B995AC0;
      v18[3] = &unk_1E753E1D0;
      v18[4] = self;
      v11 = [CLServiceSessionInternal alwaysSessionWithLocationManager:managerCopy queue:queueCopy handler:v18];
      goto LABEL_11;
    case 1:
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_19B995AB0;
      v19[3] = &unk_1E753E1D0;
      v19[4] = self;
      v11 = [CLServiceSessionInternal whenInUseSessionWithLocationManager:managerCopy queue:queueCopy handler:v19];
      goto LABEL_11;
    case 0:
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = sub_19B995AA0;
      v20[3] = &unk_1E753E1D0;
      v20[4] = self;
      v11 = [CLServiceSessionInternal passiveSessionWithLocationManager:managerCopy queue:queueCopy handler:v20];
LABEL_11:
      self->_serviceSessionInternal = v11;
      goto LABEL_12;
  }

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E048);
  }

  v15 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
  {
    buf = 68289282;
    v22 = 2082;
    v23 = "";
    v24 = 1026;
    requirementCopy2 = requirement;
    _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Invalid AuthorizationRequirementType for CLServiceSession, authorizationRequirement:%{public}d}", &buf, 0x18u);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E048);
    }
  }

  v16 = qword_1ED519090;
  if (os_signpost_enabled(qword_1ED519090))
  {
    buf = 68289282;
    v22 = 2082;
    v23 = "";
    v24 = 1026;
    requirementCopy2 = requirement;
    _os_signpost_emit_with_name_impl(&dword_19B873000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Invalid AuthorizationRequirementType for CLServiceSession", "{msg%{public}.0s:Invalid AuthorizationRequirementType for CLServiceSession, authorizationRequirement:%{public}d}", &buf, 0x18u);
  }

LABEL_12:
  if ([key length])
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_19B995AD0;
    v17[3] = &unk_1E753E1D0;
    v17[4] = self;
    self->_fullAccuracySession = [CLFullAccuracySession fullAccuracySessionWithLocationManager:managerCopy purposeKey:key queue:queueCopy handler:v17];
  }

  v12 = self->_serviceSessionInternal;
  v13 = self->_fullAccuracySession;
  v14 = *MEMORY[0x1E69E9840];
}

- (id)initDisconnectedSessionWithAuthorizationRequirement:(int64_t)requirement fullAccuracyPurposeKey:(id)key
{
  v9.receiver = self;
  v9.super_class = CLServiceSession;
  v6 = [(CLServiceSession *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_aggregatedDiagnosticMask = -1;
    v6->_authorizationRequirement = requirement;
    v6->_fullAccuracyPurposeKey = key;
  }

  return v7;
}

- (CLServiceSession)initWithLocationManager:(id)manager authorizationRequirement:(int64_t)requirement fullAccuracyPurposeKey:(id)key queue:(id)queue handler:(id)handler
{
  v15.receiver = self;
  v15.super_class = CLServiceSession;
  v12 = [(CLServiceSession *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_aggregatedDiagnosticMask = -1;
    if (handler)
    {
      v12->_clientCallback = _Block_copy(handler);
    }

    [(CLServiceSession *)v13 setupSessionInternalWithLocationManager:manager authorizationRequirement:requirement fullAccuracyPurposeKey:key queue:queue];
  }

  return v13;
}

- (void)setHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  if (self->_clientCallback)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E048);
    }

    v9 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289795;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2050;
      selfCopy6 = self;
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "_clientCallback == nullptr";
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#serviceSession should initially be nil, self:%{public}p, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E048);
      }
    }

    v10 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289795;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2050;
      selfCopy6 = self;
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "_clientCallback == nullptr";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#serviceSession should initially be nil", "{msg%{public}.0s:#serviceSession should initially be nil, self:%{public}p, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E048);
      }
    }

    v11 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
    {
      *buf = 68289795;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2050;
      selfCopy6 = self;
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "_clientCallback == nullptr";
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#serviceSession should initially be nil, self:%{public}p, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
    }

LABEL_27:
    abort_report_np();
  }

  if (!handler)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E048);
    }

    v12 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289795;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2050;
      selfCopy6 = self;
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "handler != nullptr";
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#serviceSession can't set a nil handler, self:%{public}p, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E048);
      }
    }

    v13 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289795;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2050;
      selfCopy6 = self;
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "handler != nullptr";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#serviceSession can't set a nil handler", "{msg%{public}.0s:#serviceSession can't set a nil handler, self:%{public}p, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E048);
      }
    }

    v14 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
    {
      *buf = 68289795;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2050;
      selfCopy6 = self;
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "handler != nullptr";
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#serviceSession can't set a nil handler, self:%{public}p, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x30u);
    }

    goto LABEL_27;
  }

  self->_clientCallback = _Block_copy(handler);
  v4 = +[CLLocationManager weakSharedInstance];
  authorizationRequirement = self->_authorizationRequirement;
  fullAccuracyPurposeKey = self->_fullAccuracyPurposeKey;
  v7 = +[CLLocationManager sharedQueue];
  v8 = *MEMORY[0x1E69E9840];

  [(CLServiceSession *)self setupSessionInternalWithLocationManager:v4 authorizationRequirement:authorizationRequirement fullAccuracyPurposeKey:fullAccuracyPurposeKey queue:v7];
}

- (void)handleDiagnosticUpdate
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = self->_fullAccuracySessionDiagnosticMask | self->_serviceSessionDiagnosticMask;
  if (self->_aggregatedDiagnosticMask == v3)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E048);
    }

    v4 = qword_1ED519090;
    if (!os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    aggregatedDiagnosticMask = self->_aggregatedDiagnosticMask;
    *buf = 68289538;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2050;
    selfCopy2 = self;
    v19 = 1026;
    v20 = aggregatedDiagnosticMask;
    v6 = "{msg%{public}.0s:#serviceSession skip diagnosticUpdate delivery - new and old aggregatedMask are same, self:%{public}p, aggregatedDiagnosticMask:%{public}d}";
    v7 = v4;
    v8 = 34;
LABEL_14:
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
LABEL_15:
    v11 = *MEMORY[0x1E69E9840];
    return;
  }

  self->_aggregatedDiagnosticMask = v3;
  if (!self->_clientCallback)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E048);
    }

    v10 = qword_1ED519090;
    if (!os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 68289282;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2050;
    selfCopy2 = self;
    v6 = "{msg%{public}.0s:#serviceSession skip diagnosticUpdate delivery - no callback handler, self:%{public}p}";
    v7 = v10;
    v8 = 28;
    goto LABEL_14;
  }

  v12 = [[CLServiceSessionDiagnostic alloc] initWithDiagnostics:v3];
  (*(self->_clientCallback + 2))();
  v9 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  [(CLServiceSessionInternal *)self->_serviceSessionInternal invalidate];
  fullAccuracySession = self->_fullAccuracySession;

  [(CLFullAccuracySession *)fullAccuracySession invalidate];
}

- (void)dealloc
{
  _Block_release(self->_clientCallback);
  self->_clientCallback = 0;
  v3.receiver = self;
  v3.super_class = CLServiceSession;
  [(CLServiceSession *)&v3 dealloc];
}

@end