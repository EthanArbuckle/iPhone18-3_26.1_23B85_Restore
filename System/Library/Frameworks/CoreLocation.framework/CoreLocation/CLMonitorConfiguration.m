@interface CLMonitorConfiguration
+ (CLMonitorConfiguration)configWithMonitorName:(NSString *)name queue:(dispatch_queue_t)queue eventHandler:(void *)eventHandler;
+ (id)_configWithMonitorName:(id)a3;
+ (id)configWithMonitorName:(id)a3 onBehalfOfBundleIdentifier:(id)a4 queue:(id)a5 eventHandler:(id)a6;
- (CLMonitorConfiguration)initWithName:(id)a3 path:(id)a4 onQueue:(id)a5 eventHandler:(id)a6 useMonitorQueueForVendingMonitor:(BOOL)a7 vendingHandler:(id)a8;
- (CLMonitorConfiguration)initWithName:(id)a3 path:(id)a4 onSilo:(id)a5 eventHandler:(id)a6 useMonitorQueueForVendingMonitor:(BOOL)a7 vendingHandler:(id)a8;
- (id)vendingHandler;
- (unint64_t)hash;
- (void)dealloc;
- (void)eventHandler;
- (void)setEventHandler:(id)a3;
- (void)setVendingHandler:(id)a3;
- (void)updateIdentityToken:(id)a3 withStorageToken:(id)a4;
- (void)vendMonitorWithIdentityAndAuthorizationAttributes:(id)a3;
@end

@implementation CLMonitorConfiguration

+ (CLMonitorConfiguration)configWithMonitorName:(NSString *)name queue:(dispatch_queue_t)queue eventHandler:(void *)eventHandler
{
  if (eventHandler)
  {
    if (queue)
    {
      goto LABEL_3;
    }

LABEL_8:
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    if (name)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  if (!queue)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (name)
  {
    goto LABEL_4;
  }

LABEL_9:
  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
LABEL_4:
  v10 = -[CLMonitorConfiguration initWithName:path:onSilo:eventHandler:useMonitorQueueForVendingMonitor:vendingHandler:]([CLMonitorConfiguration alloc], "initWithName:path:onSilo:eventHandler:useMonitorQueueForVendingMonitor:vendingHandler:", name, 0, [objc_alloc(MEMORY[0x1E69AD360]) initWithUnderlyingQueue:queue], eventHandler, 1, 0);

  return v10;
}

+ (id)_configWithMonitorName:(id)a3
{
  if (!a3)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v4 = +[CLLocationManager sharedQueue];
  v5 = -[CLMonitorConfiguration initWithName:path:onSilo:eventHandler:useMonitorQueueForVendingMonitor:vendingHandler:]([CLMonitorConfiguration alloc], "initWithName:path:onSilo:eventHandler:useMonitorQueueForVendingMonitor:vendingHandler:", a3, 0, [objc_alloc(MEMORY[0x1E69AD360]) initWithUnderlyingQueue:v4], 0, 1, 0);

  return v5;
}

+ (id)configWithMonitorName:(id)a3 onBehalfOfBundleIdentifier:(id)a4 queue:(id)a5 eventHandler:(id)a6
{
  v20 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B620);
  }

  v10 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 68289538;
    v13[1] = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2114;
    v17 = a1;
    v18 = 2082;
    v19 = [a4 UTF8String];
    _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#monitor monitor-config with onBehalfOfBundleId, self:%{public, location:escape_only}@, OnBehalfBundleId:%{public, location:escape_only}s}", v13, 0x26u);
  }

  result = -[CLMonitorConfiguration initWithName:path:onSilo:eventHandler:useMonitorQueueForVendingMonitor:vendingHandler:]([CLMonitorConfiguration alloc], "initWithName:path:onSilo:eventHandler:useMonitorQueueForVendingMonitor:vendingHandler:", a3, 0, [objc_alloc(MEMORY[0x1E69AD360]) initWithUnderlyingQueue:a5], 0, 1, 0);
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

- (CLMonitorConfiguration)initWithName:(id)a3 path:(id)a4 onSilo:(id)a5 eventHandler:(id)a6 useMonitorQueueForVendingMonitor:(BOOL)a7 vendingHandler:(id)a8
{
  v35 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = CLMonitorConfiguration;
  v15 = [(CLMonitorConfiguration *)&v22 init];
  if (v15)
  {
    v16 = _os_activity_create(&dword_19B873000, "CL: CLMonitorConfiguration #monitor", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v21.opaque[0] = 0;
    v21.opaque[1] = 0;
    os_activity_scope_enter(v16, &v21);

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B620);
    }

    v17 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v18 = NSStringFromSelector(a2);
      *buf = 68290050;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2082;
      v28 = "activity";
      v29 = 2114;
      v30 = v18;
      v31 = 2050;
      v32 = v15;
      v33 = 2114;
      v34 = a3;
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMonitorConfiguration #monitor, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, name:%{public, location:escape_only}@}", buf, 0x3Au);
    }

    v15->_name = [a3 copy];
    v15->_path = [a4 copy];
    v15->_silo = a5;
    v15->_useMonitorQueue = a7;
    if (a6)
    {
      v15->_eventHandler = _Block_copy(a6);
    }

    if (a8)
    {
      v15->_vendingHandler = _Block_copy(a8);
    }

    os_activity_scope_leave(&v21);
  }

  v19 = *MEMORY[0x1E69E9840];
  return v15;
}

- (CLMonitorConfiguration)initWithName:(id)a3 path:(id)a4 onQueue:(id)a5 eventHandler:(id)a6 useMonitorQueueForVendingMonitor:(BOOL)a7 vendingHandler:(id)a8
{
  v12 = [objc_alloc(MEMORY[0x1E69AD360]) initWithUnderlyingQueue:a5];

  return [(CLMonitorConfiguration *)self initWithName:a3 path:a4 onSilo:v12 eventHandler:a6 useMonitorQueueForVendingMonitor:1 vendingHandler:0];
}

- (void)dealloc
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLMonitorConfiguration #monitor", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B620);
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
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMonitorConfiguration #monitor, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  self->_name = 0;
  self->_path = 0;

  self->_silo = 0;
  _Block_release(self->_eventHandler);
  self->_eventHandler = 0;
  _Block_release(self->_vendingHandler);
  self->_vendingHandler = 0;
  [(CLMonitorConfiguration *)self setIdentityToken:0];
  [(CLMonitorConfiguration *)self setStorageToken:0];
  [(CLMonitorConfiguration *)self setManager:0];
  v8.receiver = self;
  v8.super_class = CLMonitorConfiguration;
  [(CLMonitorConfiguration *)&v8 dealloc];
  os_activity_scope_leave(&state);
  v7 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v2 = [(CLMonitorConfiguration *)self name];

  return [(NSString *)v2 hash];
}

- (void)vendMonitorWithIdentityAndAuthorizationAttributes:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLMonitorConfiguration #monitor", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B620);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68290051;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    v19 = 2114;
    v20 = v8;
    v21 = 2050;
    v22 = self;
    v23 = 2113;
    v24 = a3;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMonitorConfiguration #monitor, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, vendingAttributes:%{private, location:escape_only}@}", buf, 0x3Au);
  }

  [(CLLocationManager *)[(CLMonitorConfiguration *)self manager] removeIdentifiableClient:self];
  global_queue = [(CLDispatchSilo *)self->_silo queue];
  if (![(CLMonitorConfiguration *)self useMonitorQueue])
  {
    global_queue = dispatch_get_global_queue(17, 0);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B891A08;
  v11[3] = &unk_1E753CF38;
  v11[4] = self;
  v11[5] = a3;
  dispatch_async(global_queue, v11);
  os_activity_scope_leave(&state);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)setVendingHandler:(id)a3
{
  v4 = _Block_copy(a3);
  objc_sync_enter(self);
  vendingHandler = self->_vendingHandler;
  if (vendingHandler)
  {
    _Block_release(vendingHandler);
  }

  self->_vendingHandler = v4;

  objc_sync_exit(self);
}

- (id)vendingHandler
{
  objc_sync_enter(self);
  vendingHandler = self->_vendingHandler;
  objc_sync_exit(self);
  return vendingHandler;
}

- (void)setEventHandler:(id)a3
{
  v4 = _Block_copy(a3);
  objc_sync_enter(self);
  eventHandler = self->_eventHandler;
  if (eventHandler)
  {
    _Block_release(eventHandler);
  }

  self->_eventHandler = v4;

  objc_sync_exit(self);
}

- (void)eventHandler
{
  objc_sync_enter(self);
  eventHandler = self->_eventHandler;
  objc_sync_exit(self);
  return eventHandler;
}

- (void)updateIdentityToken:(id)a3 withStorageToken:(id)a4
{
  v17[2] = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  [(CLMonitorConfiguration *)self setIdentityToken:a3];
  [(CLMonitorConfiguration *)self setStorageToken:a4];
  if ([(CLMonitorConfiguration *)self identityToken]&& [(CLMonitorConfiguration *)self storageToken])
  {
    v16[0] = @"kCLMonitorIdentityTokenKey";
    v16[1] = @"kCLMonitorLedgerAccessKey";
    v17[0] = [(CLMonitorConfiguration *)self identityToken];
    v17[1] = [(CLMonitorConfiguration *)self storageToken];
    -[CLMonitorConfiguration vendMonitorWithIdentityAndAuthorizationAttributes:](self, "vendMonitorWithIdentityAndAuthorizationAttributes:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2]);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B620);
    }

    v7 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 68289538;
      v9[1] = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2114;
      v13 = self;
      v14 = 2114;
      v15 = [(CLMonitorConfiguration *)self name];
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#monitor completion handler called, self:%{public, location:escape_only}@, monitor:%{public, location:escape_only}@}", v9, 0x26u);
    }
  }

  objc_sync_exit(self);
  v8 = *MEMORY[0x1E69E9840];
}

@end