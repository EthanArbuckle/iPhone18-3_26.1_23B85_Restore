@interface CKProcessScopedDaemonProxy
+ (NSXPCInterface)CKXPCClientToDaemonProcessScopedInterface;
+ (NSXPCInterface)CKXPCDaemonToClientProcessScopedInterface;
- (CKProcessScopedDaemonProxy)initWithConnection:(id)connection;
- (CKXPCConnection)connection;
- (unint64_t)maxInlineMergeableDeltaSize;
- (void)accountWithID:(id)d changedWithChangeType:(int64_t)type;
- (void)accountsDidGrantAccessToBundleID:(id)d containerIdentifiers:(id)identifiers;
- (void)accountsDidRevokeAccessToBundleID:(id)d containerIdentifiers:(id)identifiers;
- (void)accountsWillDeleteAccount:(id)account completionHandler:(id)handler;
- (void)clearPCSCachesForKnownContainersWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)dumpAllClientsStatusReportToFileHandle:(id)handle completionHandler:(id)handler;
- (void)fetchUsabilityForTestAccountCredentials:(id)credentials completionHandler:(id)handler;
- (void)kill;
- (void)updatePushTokens;
- (void)wipeAllCachesAndDie;
- (void)wipeServerConfigurationsAndDie;
@end

@implementation CKProcessScopedDaemonProxy

+ (NSXPCInterface)CKXPCClientToDaemonProcessScopedInterface
{
  if (qword_1ED4B6250 != -1)
  {
    dispatch_once(&qword_1ED4B6250, &unk_1EFA2F408);
  }

  v3 = qword_1ED4B6248;

  return v3;
}

+ (NSXPCInterface)CKXPCDaemonToClientProcessScopedInterface
{
  if (qword_1ED4B6260 != -1)
  {
    dispatch_once(&qword_1ED4B6260, &unk_1EFA2F428);
  }

  v3 = qword_1ED4B6258;

  return v3;
}

- (CKProcessScopedDaemonProxy)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v8.receiver = self;
  v8.super_class = CKProcessScopedDaemonProxy;
  v5 = [(CKProcessScopedDaemonProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_connection, connectionCopy);
  }

  return v6;
}

- (void)dealloc
{
  v4 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2);
  v7 = objc_msgSend_connectionInterruptedObserver(self, v5, v6);
  objc_msgSend_removeObserver_(v4, v8, v7);

  v9.receiver = self;
  v9.super_class = CKProcessScopedDaemonProxy;
  [(CKProcessScopedDaemonProxy *)&v9 dealloc];
}

- (void)accountsDidGrantAccessToBundleID:(id)d containerIdentifiers:(id)identifiers
{
  dCopy = d;
  identifiersCopy = identifiers;
  v8 = _os_activity_create(&dword_1883EA000, "client/accounts-did-grant-access-to-bundle-id", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v11 = objc_msgSend_CKDeepCopy(identifiersCopy, v9, v10);

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1885ACC40;
  v18[3] = &unk_1E70BE848;
  v19 = dCopy;
  v20 = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1885ACD3C;
  v15[3] = &unk_1E70BE870;
  v12 = v19;
  v16 = v12;
  v13 = v20;
  v17 = v13;
  objc_msgSend__getProcessScopedDaemonProxySynchronous_errorHandler_daemonProxyHandler_(self, v14, 0, v18, v15);

  os_activity_scope_leave(&state);
}

- (void)accountsDidRevokeAccessToBundleID:(id)d containerIdentifiers:(id)identifiers
{
  dCopy = d;
  identifiersCopy = identifiers;
  v8 = _os_activity_create(&dword_1883EA000, "client/accounts-did-revoke-access-to-bundle-id", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v11 = objc_msgSend_CKDeepCopy(identifiersCopy, v9, v10);

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1885ACEEC;
  v18[3] = &unk_1E70BE848;
  v19 = dCopy;
  v20 = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1885ACFE8;
  v15[3] = &unk_1E70BE870;
  v12 = v19;
  v16 = v12;
  v13 = v20;
  v17 = v13;
  objc_msgSend__getProcessScopedDaemonProxySynchronous_errorHandler_daemonProxyHandler_(self, v14, 0, v18, v15);

  os_activity_scope_leave(&state);
}

- (void)accountsWillDeleteAccount:(id)account completionHandler:(id)handler
{
  accountCopy = account;
  handlerCopy = handler;
  v8 = _os_activity_create(&dword_1883EA000, "client/accounts-will-delete-account", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1885AD17C;
  v15[3] = &unk_1E70BC518;
  v16 = accountCopy;
  v17 = handlerCopy;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1885AD284;
  v12[3] = &unk_1E70BE898;
  v9 = v16;
  v13 = v9;
  v10 = v17;
  v14 = v10;
  objc_msgSend__getProcessScopedDaemonProxySynchronous_errorHandler_daemonProxyHandler_(self, v11, 0, v15, v12);

  os_activity_scope_leave(&state);
}

- (void)accountWithID:(id)d changedWithChangeType:(int64_t)type
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v7 = _os_activity_create(&dword_1883EA000, "client/account-with-id-changed-with-change-type", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v8 = ck_log_facility_ck;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = CKStringFromAccountChangeType(type);
    *buf = 138412546;
    v20 = dCopy;
    v21 = 2114;
    v22 = v9;
    _os_log_impl(&dword_1883EA000, v8, OS_LOG_TYPE_INFO, "Notifying cloudd that account %@ changed with type %{public}@", buf, 0x16u);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1885AD4D0;
  v16[3] = &unk_1E70BC048;
  v17 = dCopy;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1885AD5C0;
  v13[3] = &unk_1E70BE8C0;
  v10 = v17;
  v14 = v10;
  typeCopy = type;
  objc_msgSend__getProcessScopedDaemonProxySynchronous_errorHandler_daemonProxyHandler_(self, v11, type == 5, v16, v13);

  os_activity_scope_leave(&state);
  v12 = *MEMORY[0x1E69E9840];
}

- (void)fetchUsabilityForTestAccountCredentials:(id)credentials completionHandler:(id)handler
{
  credentialsCopy = credentials;
  handlerCopy = handler;
  v8 = _os_activity_create(&dword_1883EA000, "client/fetch-usability-for-test-account-credentials", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1885AD740;
  v15[3] = &unk_1E70BC540;
  v16 = handlerCopy;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1885AD80C;
  v12[3] = &unk_1E70BE898;
  v9 = credentialsCopy;
  v13 = v9;
  v10 = v16;
  v14 = v10;
  objc_msgSend__getProcessScopedDaemonProxySynchronous_errorHandler_daemonProxyHandler_(self, v11, 0, v15, v12);

  os_activity_scope_leave(&state);
}

- (void)wipeAllCachesAndDie
{
  v3 = _os_activity_create(&dword_1883EA000, "client/wipe-all-caches-and-die", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v3, &v5);
  objc_msgSend__getProcessScopedDaemonProxySynchronous_errorHandler_daemonProxyHandler_(self, v4, 0, &unk_1EFA2F2E8, &unk_1EFA2F308);
  os_activity_scope_leave(&v5);
}

- (void)wipeServerConfigurationsAndDie
{
  v3 = _os_activity_create(&dword_1883EA000, "client/wipe-server-configurations-and-die", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v3, &v5);
  objc_msgSend__getProcessScopedDaemonProxySynchronous_errorHandler_daemonProxyHandler_(self, v4, 0, &unk_1EFA2F328, &unk_1EFA2F348);
  os_activity_scope_leave(&v5);
}

- (void)updatePushTokens
{
  v3 = _os_activity_create(&dword_1883EA000, "client/update-push-tokens", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v5.opaque[0] = 0;
  v5.opaque[1] = 0;
  os_activity_scope_enter(v3, &v5);
  objc_msgSend__getProcessScopedDaemonProxySynchronous_errorHandler_daemonProxyHandler_(self, v4, 0, &unk_1EFA2F368, &unk_1EFA2F388);
  os_activity_scope_leave(&v5);
}

- (void)dumpAllClientsStatusReportToFileHandle:(id)handle completionHandler:(id)handler
{
  handleCopy = handle;
  handlerCopy = handler;
  v8 = _os_activity_create(&dword_1883EA000, "client/dump-all-clients-status-report", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1885ADD00;
  v12[3] = &unk_1E70BE898;
  v9 = handleCopy;
  v13 = v9;
  v10 = handlerCopy;
  v14 = v10;
  objc_msgSend__getProcessScopedDaemonProxySynchronous_errorHandler_daemonProxyHandler_(self, v11, 0, v10, v12);

  os_activity_scope_leave(&state);
}

- (void)clearPCSCachesForKnownContainersWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _os_activity_create(&dword_1883EA000, "client/clear-pcs-chaches-for-known-containers", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1885ADE58;
  v10[3] = &unk_1E70BC540;
  v11 = handlerCopy;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1885ADE70;
  v8[3] = &unk_1E70BE908;
  v6 = v11;
  v9 = v6;
  objc_msgSend__getProcessScopedDaemonProxySynchronous_errorHandler_daemonProxyHandler_(self, v7, 0, v10, v8);

  os_activity_scope_leave(&state);
}

- (void)kill
{
  v7 = objc_msgSend_connection(self, a2, v2);
  v5 = objc_msgSend_processIdentifier(v7, v3, v4);
  if (v5)
  {
    kill(v5, 9);
    objc_msgSend_invalidate_(v7, v6, 0);
  }
}

- (unint64_t)maxInlineMergeableDeltaSize
{
  v3 = _os_activity_create(&dword_1883EA000, "client/max-inline-mergeable-delta-size", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v5, v6);
  if (v7 - *&qword_1EA9115E0 > 86400.0)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v8 = ck_log_facility_distributed_sync;
    if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_1883EA000, v8, OS_LOG_TYPE_INFO, "Will fetch max inline delta size from daemon", v12, 2u);
    }

    objc_msgSend__getProcessScopedDaemonProxySynchronous_errorHandler_daemonProxyHandler_(selfCopy, v9, 1, &unk_1EFA2F3A8, &unk_1EFA2F3C8);
  }

  v10 = qword_1EA90C0E0;
  objc_sync_exit(selfCopy);

  os_activity_scope_leave(&state);
  return v10;
}

- (CKXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

@end