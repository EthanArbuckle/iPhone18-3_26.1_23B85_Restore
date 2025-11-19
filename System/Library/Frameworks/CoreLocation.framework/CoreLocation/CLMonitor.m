@interface CLMonitor
+ (BOOL)isMonitorNameInUse:(id)a3;
+ (id)sharedMonitorSet;
+ (void)_requestMonitorWithConfiguration:(id)a3 locationManager:(id)a4 completion:(id)a5;
+ (void)addMonitorName:(id)a3;
+ (void)removeMonitorName:(id)a3;
+ (void)requestMonitorWithConfiguration:(CLMonitorConfiguration *)config completion:(void *)completionHandler;
- (CLMonitor)initWithLedgerName:(id)a3 path:(id)a4 onSilo:(id)a5 authIdentity:(id)a6 locationManager:(id)a7 handler:(id)a8;
- (CLMonitoringRecord)monitoringRecordForIdentifier:(NSString *)identifier;
- (NSArray)monitoredIdentifiers;
- (id)_getMonitoredIdentifiers;
- (id)_getMonitoringRecords;
- (id)getMonitorConfiguration;
- (unint64_t)hash;
- (void)_addConditionForMonitoring:(id)a3 identifier:(id)a4 options:(unint64_t)a5 assumedState:(unint64_t)a6;
- (void)_removeConditionFromMonitoringWithIdentifier:(id)a3;
- (void)addConditionForMonitoring:(id)a3 identifier:(id)a4 options:(unint64_t)a5 assumedState:(unint64_t)a6;
- (void)createConnection;
- (void)dealloc;
- (void)destroyConnection;
- (void)handleMessageMonitor:(shared_ptr<CLConnectionMessage>)a3;
- (void)manageConnection;
- (void)removeConditionFromMonitoringWithIdentifier:(NSString *)identifier;
- (void)setMonitoringEventHandler:(id)a3;
- (void)updateEvent:(id)a3 forIdentifier:(id)a4;
- (void)updateEventReceivedFromDaemon:(id)a3;
- (void)updateIdentityToken:(id)a3 withStorageToken:(id)a4;
@end

@implementation CLMonitor

- (CLMonitor)initWithLedgerName:(id)a3 path:(id)a4 onSilo:(id)a5 authIdentity:(id)a6 locationManager:(id)a7 handler:(id)a8
{
  v45 = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = CLMonitor;
  v15 = [(CLMonitor *)&v29 init];
  if (v15)
  {
    v16 = _os_activity_create(&dword_19B873000, "CL: CLMonitor #monitor", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v16, &v28);

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
    }

    v17 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v18 = NSStringFromSelector(a2);
      *buf = 68290307;
      v33 = 2082;
      v34 = "";
      v35 = 2082;
      v36 = "activity";
      v37 = 2114;
      v38 = v18;
      v39 = 2050;
      v40 = v15;
      v41 = 2114;
      v42 = a3;
      v43 = 2113;
      v44 = a6;
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMonitor #monitor, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, name:%{public, location:escape_only}@, authIdentity:%{private, location:escape_only}@}", buf, 0x44u);
    }

    v15->_name = [a3 copy];
    v15->_silo = a5;
    [(CLMonitor *)v15 setManager:a7];
    v19 = a4 != 0;
    v20 = [a6 objectForKeyedSubscript:@"kCLMonitorIdentityTokenKey"];
    v21 = [a6 objectForKeyedSubscript:@"kCLMonitorLedgerAccessKey"];
    v22 = [MEMORY[0x1E695DF90] dictionary];
    v31[0] = a3;
    v30[0] = @"kCLMonitorLedgerNameKey";
    v30[1] = @"kCLMonitorLedgerProcessNameKey";
    v23 = [(CLLocationManager *)[(CLMonitor *)v15 manager] processName];
    v30[2] = @"kCLMonitorDispatchSiloKey";
    silo = v15->_silo;
    v31[1] = v23;
    v31[2] = silo;
    v30[3] = @"kCLMonitorIdentityTokenKey";
    v30[4] = @"kCLMonitorLedgerAccessKey";
    v31[3] = v20;
    v31[4] = v21;
    [v22 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v31, v30, 5)}];
    if (a4)
    {
      v25 = [a4 copy];
      [v22 setObject:v25 forKeyedSubscript:@"kCLMonitorLedgerPathKey"];
    }

    [(CLMonitor *)v15 setIdentityToken:v20];
    [(CLMonitor *)v15 setStorageToken:v21];
    v15->_conditionLedger = [[CLConditionLedger alloc] initWithStoreType:v19 domain:v19 monitorConfiguration:v22];
    [(CLMonitor *)v15 setMonitoringEventHandler:a8];
    [(CLMonitor *)v15 createConnection];
    os_activity_scope_leave(&v28);
  }

  v26 = *MEMORY[0x1E69E9840];
  return v15;
}

- (void)dealloc
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLMonitor #monitor", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    v7 = [(NSString *)[(CLMonitor *)self name] UTF8String];
    *buf = 68290050;
    *&buf[4] = 0;
    *v15 = 2082;
    *&v15[2] = "";
    *&v15[10] = 2082;
    *&v15[12] = "activity";
    *&v15[20] = 2114;
    *&v15[22] = v6;
    v16 = 2050;
    v17 = self;
    v18 = 2082;
    v19 = v7;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMonitor #monitor, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, name:%{public, location:escape_only}s}", buf, 0x3Au);
  }

  [(CLLocationManager *)[(CLMonitor *)self manager] removeIdentifiableClient:self];
  _Block_release(self->_eventHandler);
  self->_eventHandler = 0;
  [(CLMonitor *)self setIdentityToken:0];
  [(CLMonitor *)self setStorageToken:0];

  self->_conditionLedger = 0;
  [(CLMonitor *)self setManager:0];
  [CLMonitor removeMonitorName:self->_name];

  self->_name = 0;
  *buf = 0;
  *v15 = buf;
  *&v15[8] = 0x2020000000;
  silo = self->_silo;
  *&v15[16] = self->_locationdConnection;
  v9 = [(CLDispatchSilo *)silo queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B9D0B34;
  block[3] = &unk_1E753E880;
  block[4] = silo;
  block[5] = buf;
  dispatch_async(v9, block);

  self->_silo = 0;
  v11.receiver = self;
  v11.super_class = CLMonitor;
  [(CLMonitor *)&v11 dealloc];
  _Block_object_dispose(buf, 8);
  os_activity_scope_leave(&state);
  v10 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v2 = [(CLMonitor *)self name];

  return [(NSString *)v2 hash];
}

- (NSArray)monitoredIdentifiers
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLMonitor #monitor", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v4, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
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
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMonitor #monitor, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  [(CLDispatchSilo *)self->_silo assertInside];
  v7 = [(CLConditionLedger *)self->_conditionLedger allMonitoringIdentifiers];
  os_activity_scope_leave(&v10);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)_getMonitoredIdentifiers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_19B9D0FA8;
  v11 = sub_19B9D0FB8;
  v12 = [MEMORY[0x1E695DF70] array];
  v3 = [(CLDispatchSilo *)self->_silo queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B9D0FC4;
  v6[3] = &unk_1E753E880;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)_getMonitoringRecords
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_19B9D0FA8;
  v11 = sub_19B9D0FB8;
  v12 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [(CLDispatchSilo *)self->_silo queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B9D10F4;
  v6[3] = &unk_1E753E880;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (void)setMonitoringEventHandler:(id)a3
{
  v4 = _Block_copy(a3);
  eventHandler = self->_eventHandler;
  if (eventHandler)
  {
    _Block_release(eventHandler);
  }

  self->_eventHandler = v4;
}

- (void)addConditionForMonitoring:(id)a3 identifier:(id)a4 options:(unint64_t)a5 assumedState:(unint64_t)a6
{
  v45 = *MEMORY[0x1E69E9840];
  v12 = _os_activity_create(&dword_19B873000, "CL: CLMonitor #monitor", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v12, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
  }

  v13 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v14 = NSStringFromSelector(a2);
    *buf = 68290306;
    *&buf[4] = 0;
    v33 = 2082;
    v34 = "";
    v35 = 2082;
    v36 = "activity";
    v37 = 2114;
    v38 = v14;
    v39 = 2050;
    v40 = self;
    v41 = 2114;
    v42 = a4;
    v43 = 2050;
    v44 = a6;
    _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMonitor #monitor, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, identifier:%{public, location:escape_only}@, assumedState:%{public, location:CLMonitoringState}lld}", buf, 0x44u);
  }

  [(CLDispatchSilo *)self->_silo assertInside];
  v15 = [(CLConditionLedger *)self->_conditionLedger monitoringRecordForIdentifier:a4];
  v16 = v15;
  if (!v15)
  {
LABEL_16:
    v25 = [[CLMonitoringRecord alloc] initRecordWithCondition:a3 identifier:a4 options:a5 initialState:a6];
    [(CLConditionLedger *)self->_conditionLedger addRecordForMonitoring:v25 identifier:a4 persist:1];
    if ([(CLMonitor *)self identityToken])
    {
      if (self->_locationdConnection)
      {
        v26 = [MEMORY[0x1E695DF90] dictionary];
        [v26 setObject:-[CLMonitor identityToken](self forKeyedSubscript:{"identityToken"), @"kCLConnectionMessageClientKeyForIdentityValidation"}];
        [v26 setObject:v25 forKeyedSubscript:@"kCLConnectionMessageMonitorMonitoringRecordKey"];
        [v26 addEntriesFromDictionary:{-[CLMonitor getMonitorConfiguration](self, "getMonitorConfiguration")}];
        operator new();
      }

      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
      }

      v27 = qword_1ED519090;
      if (!os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      v29 = [a4 UTF8String];
      *buf = 68289282;
      v33 = 2082;
      v34 = "";
      v35 = 2082;
      v36 = v29;
      v19 = "{msg%{public}.0s:#monitor No valid connection to locationd to add for monitoring, identifier:%{public, location:escape_only}s}";
    }

    else
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
      }

      v27 = qword_1ED519090;
      if (!os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_29;
      }

      v28 = [a4 UTF8String];
      *buf = 68289282;
      v33 = 2082;
      v34 = "";
      v35 = 2082;
      v36 = v28;
      v19 = "{msg%{public}.0s:#monitor Client is not authorized to monitor just yet., identifier:%{public, location:escape_only}s}";
    }

    v20 = v27;
    v21 = 28;
    goto LABEL_28;
  }

  if (![objc_msgSend(v15 "condition")])
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
    }

    v22 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [a4 UTF8String];
      v24 = [v16 condition];
      *buf = 68289539;
      *&buf[4] = 0;
      v33 = 2082;
      v34 = "";
      v35 = 2082;
      v36 = v23;
      v37 = 2113;
      v38 = v24;
      _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#monitor removing currently monitored condition, identifier:%{public, location:escape_only}s, toBeRemoved:%{private, location:escape_only}@}", buf, 0x26u);
    }

    [(CLMonitor *)self removeConditionFromMonitoringWithIdentifier:a4];
    goto LABEL_16;
  }

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
  }

  v17 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [a4 UTF8String];
    *buf = 68289539;
    *&buf[4] = 0;
    v33 = 2082;
    v34 = "";
    v35 = 2082;
    v36 = v18;
    v37 = 2113;
    v38 = a3;
    v19 = "{msg%{public}.0s:#monitor given identifier and condition is currently monitored, identifier:%{public, location:escape_only}s, condition:%{private, location:escape_only}@}";
    v20 = v17;
    v21 = 38;
LABEL_28:
    _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
  }

LABEL_29:
  os_activity_scope_leave(&state);
  v30 = *MEMORY[0x1E69E9840];
}

- (void)_addConditionForMonitoring:(id)a3 identifier:(id)a4 options:(unint64_t)a5 assumedState:(unint64_t)a6
{
  objc_initWeak(&location, self);
  v11 = [(CLDispatchSilo *)self->_silo queue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_19B9D18D8;
  v12[3] = &unk_1E753E8A8;
  objc_copyWeak(v13, &location);
  v12[4] = a3;
  v12[5] = a4;
  v13[1] = a5;
  v13[2] = a6;
  dispatch_async(v11, v12);
  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

- (void)removeConditionFromMonitoringWithIdentifier:(NSString *)identifier
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLMonitor #monitor", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68290050;
    *&buf[4] = 0;
    v17 = 2082;
    v18 = "";
    v19 = 2082;
    v20 = "activity";
    v21 = 2114;
    v22 = v8;
    v23 = 2050;
    v24 = self;
    v25 = 2114;
    v26 = identifier;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMonitor #monitor, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, identifier:%{public, location:escape_only}@}", buf, 0x3Au);
  }

  [(CLDispatchSilo *)self->_silo assertInside];
  [(CLConditionLedger *)self->_conditionLedger removeRecordFromMonitoringWithIdentifier:identifier];
  if ([(CLMonitor *)self identityToken])
  {
    if (self->_locationdConnection)
    {
      v9 = [MEMORY[0x1E695DF90] dictionary];
      [v9 setObject:-[CLMonitor identityToken](self forKeyedSubscript:{"identityToken"), @"kCLConnectionMessageClientKeyForIdentityValidation"}];
      [v9 setObject:identifier forKeyedSubscript:@"kCLConnectionMessageMonitorIdentifierKey"];
      [v9 addEntriesFromDictionary:{-[CLMonitor getMonitorConfiguration](self, "getMonitorConfiguration")}];
      operator new();
    }

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
    }

    v10 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(NSString *)identifier UTF8String];
      *buf = 68289282;
      *&buf[4] = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2082;
      v20 = v13;
      v12 = "{msg%{public}.0s:#monitor No valid connection to locationd to remove from monitoring, identifier:%{public, location:escape_only}s}";
      goto LABEL_16;
    }
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
    }

    v10 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(NSString *)identifier UTF8String];
      *buf = 68289282;
      *&buf[4] = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2082;
      v20 = v11;
      v12 = "{msg%{public}.0s:#monitor Client is not authorized to remove from monitor just yet., identifier:%{public, location:escape_only}s}";
LABEL_16:
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEFAULT, v12, buf, 0x1Cu);
    }
  }

  os_activity_scope_leave(&state);
  v14 = *MEMORY[0x1E69E9840];
}

- (void)_removeConditionFromMonitoringWithIdentifier:(id)a3
{
  objc_initWeak(&location, self);
  v5 = [(CLDispatchSilo *)self->_silo queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B9D1E8C;
  block[3] = &unk_1E753E8D0;
  objc_copyWeak(&v7, &location);
  block[4] = a3;
  dispatch_async(v5, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)updateEvent:(id)a3 forIdentifier:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = _os_activity_create(&dword_19B873000, "CL: CLMonitor #monitor", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
  }

  v9 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 68290306;
    *&buf[4] = 0;
    v17 = 2082;
    v18 = "";
    v19 = 2082;
    v20 = "activity";
    v21 = 2114;
    v22 = v10;
    v23 = 2050;
    v24 = self;
    v25 = 2114;
    v26 = a4;
    v27 = 2114;
    v28 = a3;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMonitor #monitor, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, identifier:%{public, location:escape_only}@, event:%{public, location:escape_only}@}", buf, 0x44u);
  }

  [(CLConditionLedger *)self->_conditionLedger updateEvent:a3 forIdentifier:a4];
  if ([(CLMonitor *)self identityToken])
  {
    if (self->_locationdConnection)
    {
      v11 = [MEMORY[0x1E695DF90] dictionary];
      [v11 setObject:-[CLMonitor identityToken](self forKeyedSubscript:{"identityToken"), @"kCLConnectionMessageClientKeyForIdentityValidation"}];
      [v11 setObject:a3 forKeyedSubscript:@"kCLConnectionMessageMonitorEventKey"];
      [v11 addEntriesFromDictionary:{-[CLMonitor getMonitorConfiguration](self, "getMonitorConfiguration")}];
      operator new();
    }

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
    }

    v12 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2114;
      v20 = a4;
      v21 = 2113;
      v22 = a3;
      v13 = "{msg%{public}.0s:#monitor No valid connection to locationd to update event, identifier:%{public, location:escape_only}@, event:%{private, location:escape_only}@}";
      goto LABEL_16;
    }
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
    }

    v12 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2114;
      v20 = a4;
      v21 = 2113;
      v22 = a3;
      v13 = "{msg%{public}.0s:#monitor Client is not authorized just yet., identifier:%{public, location:escape_only}@, event:%{private, location:escape_only}@}";
LABEL_16:
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 0x26u);
    }
  }

  os_activity_scope_leave(&state);
  v14 = *MEMORY[0x1E69E9840];
}

- (void)updateEventReceivedFromDaemon:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  [(CLDispatchSilo *)self->_silo assertInside];
  v5 = [objc_msgSend(a3 "lastEvent")];
  v6 = [(CLMonitor *)self monitoringRecordForIdentifier:v5];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 68289539;
    v14[1] = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2113;
    v18 = a3;
    v19 = 2113;
    v20 = v6;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#monitor updatingEventReceivedFromDaemon, newRecordReceivedFromDaemon:%{private, location:escape_only}@, existingRecord:%{private, location:escape_only}@}", v14, 0x26u);
  }

  if (-[NSArray containsObject:](-[CLMonitor monitoredIdentifiers](self, "monitoredIdentifiers"), "containsObject:", v5) && [objc_msgSend(a3 "condition")])
  {
    if ([objc_msgSend(a3 "lastEvent")])
    {
      v8 = [objc_msgSend(a3 "lastEvent")];
      v9 = v8 != [(CLMonitoringEvent *)[(CLMonitoringRecord *)v6 lastEvent] state];
    }

    else
    {
      v9 = 0;
    }

    v10 = [objc_msgSend(objc_msgSend(a3 "lastEvent")];
    if (v9 || !v10)
    {
      v11 = [a3 lastEvent];
    }

    else
    {
      v11 = -[CLMonitoringEvent initWithIdentifier:refinement:state:date:diagnostics:]([CLMonitoringEvent alloc], "initWithIdentifier:refinement:state:date:diagnostics:", v5, -[CLMonitoringEvent refinement](-[CLMonitoringRecord lastEvent](v6, "lastEvent"), "refinement"), -[CLMonitoringEvent state](-[CLMonitoringRecord lastEvent](v6, "lastEvent"), "state"), -[CLMonitoringEvent date](-[CLMonitoringRecord lastEvent](v6, "lastEvent"), "date"), [objc_msgSend(a3 "lastEvent")]);
    }

    v12 = v11;
    (*(self->_eventHandler + 2))();
    [(CLMonitor *)self updateEvent:v12 forIdentifier:v5];
  }

  else
  {
    [(CLMonitor *)self removeConditionFromMonitoringWithIdentifier:v5];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (CLMonitoringRecord)monitoringRecordForIdentifier:(NSString *)identifier
{
  [(CLDispatchSilo *)self->_silo assertInside];
  conditionLedger = self->_conditionLedger;

  return [(CLConditionLedger *)conditionLedger monitoringRecordForIdentifier:identifier];
}

- (void)manageConnection
{
  [(CLDispatchSilo *)self->_silo assertInside];
  if ([(CLMonitor *)self identityToken])
  {

    [(CLMonitor *)self createConnection];
  }

  else
  {

    [(CLMonitor *)self destroyConnection];
  }
}

- (void)createConnection
{
  v8 = *MEMORY[0x1E69E9840];
  [(CLDispatchSilo *)self->_silo assertInside];
  if (!self->_locationdConnection)
  {
    if ([(CLMonitor *)self identityToken])
    {
      operator new();
    }

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
    }

    v3 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v6 = 2082;
      v7 = "";
      _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#monitor Client is not authorized just yet to create connection}", buf, 0x12u);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)destroyConnection
{
  v11 = *MEMORY[0x1E69E9840];
  [(CLDispatchSilo *)self->_silo assertInside];
  locationdConnection = self->_locationdConnection;
  if (locationdConnection)
  {
    self->_locationdConnection = 0;
    CLConnection::deferredDelete(locationdConnection);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
    }

    v4 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 68289282;
      v6[1] = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2050;
      v10 = locationdConnection;
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#monitor destroying connection, connection:%{public}p}", v6, 0x1Cu);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)handleMessageMonitor:(shared_ptr<CLConnectionMessage>)a3
{
  var0 = a3.var0;
  v22 = *MEMORY[0x1E69E9840];
  v5 = CLConnectionMessage::name(*a3.var0);
  if (*(v5 + 23) < 0 && *(v5 + 8) == 46 && !memcmp(*v5, "Monitor/kCLConnectionMessageMonitorUpdateEvent", 0x2EuLL))
  {
    v13 = *var0;
    v14 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    [CLConnectionMessage::getDictionaryOfClasses(v13 v14)];
    v15 = *MEMORY[0x1E69E9840];

    MEMORY[0x1EEE66B58](self, sel_updateEventReceivedFromDaemon_);
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
    }

    v6 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      v7 = CLConnectionMessage::name(*var0);
      v8 = *(v7 + 23) >= 0 ? v7 : *v7;
      *buf = 68289282;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = v8;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#monitor unsupported message received, message:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
      }
    }

    v9 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      v10 = CLConnectionMessage::name(*var0);
      if (*(v10 + 23) >= 0)
      {
        v11 = v10;
      }

      else
      {
        v11 = *v10;
      }

      *buf = 68289282;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = v11;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#monitor unsupported message received", "{msg%{public}.0s:#monitor unsupported message received, message:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    v12 = *MEMORY[0x1E69E9840];
  }
}

- (id)getMonitorConfiguration
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:-[CLConditionLedger allMonitoringRecordsByIdentifier](self->_conditionLedger forKeyedSubscript:{"allMonitoringRecordsByIdentifier"), @"kCLConnectionMessageMonitorLedger"}];
  [v3 setObject:-[CLMonitor identityToken](self forKeyedSubscript:{"identityToken"), @"kCLConnectionMessageMonitorIdentityTokenKey"}];
  [v3 setObject:-[CLMonitor name](self forKeyedSubscript:{"name"), @"kCLConnectionMessageMonitorNameKey"}];
  [v3 setObject:-[CLLocationManager processName](-[CLMonitor manager](self forKeyedSubscript:{"manager"), "processName"), @"kCLConnectionMessageMonitorProcessNameKey"}];

  return v3;
}

- (void)updateIdentityToken:(id)a3 withStorageToken:(id)a4
{
  silo = self->_silo;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_19B9D30F4;
  v5[3] = &unk_1E753D098;
  v5[4] = self;
  v5[5] = a3;
  v5[6] = a4;
  [(CLDispatchSilo *)silo async:v5];
}

+ (void)_requestMonitorWithConfiguration:(id)a3 locationManager:(id)a4 completion:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  objc_sync_enter(a1);
  if ((sub_19B8B7F14([a3 name]) & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  if (!a5)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  if (![a3 eventHandler])
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  if (+[CLMonitor isMonitorNameInUse:](CLMonitor, "isMonitorNameInUse:", [a3 name]))
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  if (!a4)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
    }

    v11 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "locationManager";
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CLLocationManager must not be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
      }
    }

    v12 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289539;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "locationManager";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLLocationManager must not be nil", "{msg%{public}.0s:CLLocationManager must not be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E618);
      }
    }

    v13 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "locationManager";
      _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CLLocationManager must not be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np();
    __break(1u);
  }

  if (([a4 isMasquerading] & 1) == 0 && (sub_19B8B8818() & 1) == 0)
  {
    NSLog(&cfstr_ErrorClmonitor.isa);
  }

  [a3 setManager:a4];
  [a3 setVendingHandler:a5];
  +[CLMonitor addMonitorName:](CLMonitor, "addMonitorName:", [a3 name]);
  [a4 addIdentifiableClient:a3];
  v10 = *MEMORY[0x1E69E9840];

  objc_sync_exit(a1);
}

+ (void)requestMonitorWithConfiguration:(CLMonitorConfiguration *)config completion:(void *)completionHandler
{
  +[CLLocationManager weakSharedInstance];

  MEMORY[0x1EEE66B58](CLMonitor, sel__requestMonitorWithConfiguration_locationManager_completion_);
}

+ (id)sharedMonitorSet
{
  if (qword_1ED519308 != -1)
  {
    dispatch_once(&qword_1ED519308, &unk_1F0E6E5F8);
  }

  return qword_1ED519300;
}

+ (BOOL)isMonitorNameInUse:(id)a3
{
  os_unfair_lock_lock(&unk_1EAFE50E8);
  LOBYTE(a3) = [+[CLMonitor sharedMonitorSet](CLMonitor "sharedMonitorSet")];
  os_unfair_lock_unlock(&unk_1EAFE50E8);
  return a3;
}

+ (void)addMonitorName:(id)a3
{
  os_unfair_lock_lock(&unk_1EAFE50E8);
  [+[CLMonitor sharedMonitorSet](CLMonitor "sharedMonitorSet")];

  os_unfair_lock_unlock(&unk_1EAFE50E8);
}

+ (void)removeMonitorName:(id)a3
{
  os_unfair_lock_lock(&unk_1EAFE50E8);
  [+[CLMonitor sharedMonitorSet](CLMonitor "sharedMonitorSet")];

  os_unfair_lock_unlock(&unk_1EAFE50E8);
}

@end