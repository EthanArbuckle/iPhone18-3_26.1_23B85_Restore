@interface CKAdopterProcessScopedDaemonProxy
+ (NSXPCInterface)CKXPCClientToDaemonAdopterProcessScopedInterface;
- (CKAdopterProcessScopedDaemonProxy)initWithConnection:(id)a3;
- (CKXPCConnection)connection;
- (id)globalDeviceIdentifierWithError:(id *)a3;
- (void)dealloc;
@end

@implementation CKAdopterProcessScopedDaemonProxy

+ (NSXPCInterface)CKXPCClientToDaemonAdopterProcessScopedInterface
{
  if (qword_1ED4B6220 != -1)
  {
    dispatch_once(&qword_1ED4B6220, &unk_1EFA2F168);
  }

  v3 = qword_1ED4B6218;

  return v3;
}

- (CKAdopterProcessScopedDaemonProxy)initWithConnection:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CKAdopterProcessScopedDaemonProxy;
  v5 = [(CKAdopterProcessScopedDaemonProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_connection, v4);
  }

  return v6;
}

- (void)dealloc
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2);
  v7 = objc_msgSend_connectionInterruptedObserver(self, v5, v6);
  objc_msgSend_removeObserver_(v4, v8, v7);

  v9.receiver = self;
  v9.super_class = CKAdopterProcessScopedDaemonProxy;
  [(CKAdopterProcessScopedDaemonProxy *)&v9 dealloc];
}

- (id)globalDeviceIdentifierWithError:(id *)a3
{
  v5 = _os_activity_create(&dword_1883EA000, "client/global-device-identifier", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v6 = ck_log_facility_distributed_sync;
  if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1883EA000, v6, OS_LOG_TYPE_INFO, "Will fetch global device identifier from daemon", buf, 2u);
  }

  *buf = 0;
  v19 = buf;
  v20 = 0x3032000000;
  v21 = sub_1883ED938;
  v22 = sub_1883EF5D4;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1883ED938;
  v16 = sub_1883EF5D4;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1885AA298;
  v11[3] = &unk_1E70BC990;
  v11[4] = &v12;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1885AA394;
  v10[3] = &unk_1E70BE6F0;
  v10[4] = &v12;
  v10[5] = buf;
  objc_msgSend__getAdopterProcessScopedDaemonProxySynchronous_errorHandler_daemonProxyHandler_(self, v7, 1, v11, v10);
  if (a3)
  {
    *a3 = v13[5];
  }

  v8 = *(v19 + 5);
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(buf, 8);
  os_activity_scope_leave(&state);

  return v8;
}

- (CKXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

@end