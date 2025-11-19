@interface LAClient
+ (id)_queue;
+ (id)createConnection:(const unsigned int *)a3 legacyService:(BOOL)a4;
+ (void)_performInvalidationBlocks:(id)a3;
- (BOOL)_setPermanentError:(id)a3;
- (BOOL)setServerPropertyForOption:(int64_t)a3 value:(id)a4 error:(id *)a5;
- (LAClient)initWithExternalizedContext:(id)a3 userSession:(const unsigned int *)a4 flags:(int64_t)a5 context:(id)a6;
- (LAClient)initWithUUID:(id)a3 token:(id)a4 senderAuditTokenData:(id)a5 context:(id)a6;
- (LAContext)context;
- (LAUIDelegate)uiDelegate;
- (NSData)externalizedContext;
- (id)_resolveUIDelegateFromDelegate:(id)a3;
- (id)_updateOptions:(id)a3;
- (id)serverPropertyForOption:(int64_t)a3 error:(id *)a4;
- (id)synchronousExternalizedContextWithError:(id *)a3;
- (void)_checkIdResultForTCC:(id)a3 synchronous:(BOOL)a4 error:(id)a5 retryBlock:(id)a6 finally:(id)a7;
- (void)_handleConnectionResult:(id)a3 uuid:(id)a4 proxyId:(id)a5 error:(id)a6;
- (void)_invalidateCachedExternalizedContextWithError:(id)a3;
- (void)_performSynchronous:(BOOL)a3 callId:(id)a4 finally:(id)a5;
- (void)_recoverConnectionIfNeeded;
- (void)_scheduleRecovery;
- (void)_serializedInvalidateWithMessage:(id)a3;
- (void)_synchronousRemoteObjectProxy:(const unsigned int *)a3 performCall:(id)a4;
- (void)allowTransferToProcess:(int)a3 receiverAuditTokenData:(id)a4 reply:(id)a5;
- (void)authMethodWithReply:(id)a3;
- (void)bootstrapServiceType:(id)a3 completionHandler:(id)a4;
- (void)credentialEncodingSeedWithReply:(id)a3;
- (void)credentialOfType:(int64_t)a3 reply:(id)a4;
- (void)credentialsUUIDWithReply:(id)a3;
- (void)dealloc;
- (void)evaluateACL:(id)a3 operation:(id)a4 options:(id)a5 reply:(id)a6;
- (void)evaluateACL:(id)a3 operation:(id)a4 options:(id)a5 uiDelegate:(id)a6 synchronous:(BOOL)a7 reply:(id)a8;
- (void)evaluatePolicy:(int64_t)a3 options:(id)a4 reply:(id)a5;
- (void)externalizedContextWithReply:(id)a3;
- (void)failProcessedEvent:(int64_t)a3 failureError:(id)a4 reply:(id)a5;
- (void)invalidateWithMessage:(id)a3;
- (void)invalidateWithReply:(id)a3;
- (void)invalidatedWithError:(id)a3;
- (void)isCredentialSet:(int64_t)a3 reply:(id)a4;
- (void)notifyEvent:(int64_t)a3 options:(id)a4 reply:(id)a5;
- (void)optionsForInternalOperation:(int64_t)a3 reply:(id)a4;
- (void)pauseProcessedEvent:(int64_t)a3 pause:(BOOL)a4 reply:(id)a5;
- (void)prearmTouchIdWithReply:(id)a3;
- (void)resetProcessedEvent:(int64_t)a3 reply:(id)a4;
- (void)resetWithReply:(id)a3;
- (void)retryProcessedEvent:(int64_t)a3 reply:(id)a4;
- (void)serverPropertyForOption:(int64_t)a3 reply:(id)a4;
- (void)setCredential:(id)a3 forProcessedEvent:(int64_t)a4 credentialType:(int64_t)a5 reply:(id)a6;
- (void)setCredential:(id)a3 type:(int64_t)a4 options:(id)a5 reply:(id)a6;
- (void)setCredentialsUUID:(id)a3 reply:(id)a4;
- (void)setOptions:(id)a3 forInternalOperation:(int64_t)a4 reply:(id)a5;
- (void)setRemoteContext:(id)a3;
- (void)setServerPropertyForOption:(int64_t)a3 value:(id)a4 reply:(id)a5;
- (void)setShowingCoachingHint:(BOOL)a3 event:(int64_t)a4 reply:(id)a5;
- (void)tokenForTransferToUnknownProcess:(id)a3;
- (void)verifyFileVaultUser:(id)a3 volumeUuid:(id)a4 options:(unint64_t)a5 reply:(id)a6;
@end

@implementation LAClient

+ (id)_queue
{
  if (_queue_onceToken != -1)
  {
    +[LAClient _queue];
  }

  v3 = _queue_queue;

  return v3;
}

void __18__LAClient__queue__block_invoke()
{
  v0 = MEMORY[0x1E69AD238];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = [v0 createDefaultQueueWithIdentifier:@"la_client" concurrencyAttribute:v3];
  v2 = _queue_queue;
  _queue_queue = v1;
}

- (LAUIDelegate)uiDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_uiDelegate);

  return WeakRetained;
}

- (LAContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (NSData)externalizedContext
{
  v3 = [(LAClient *)self cachedExternalizedContext];
  v4 = [v3 externalizedContext];

  if (![v4 length])
  {
    usleep(0x1388u);
    v5 = LALogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(LAClient *)v5 externalizedContext];
    }

    v6 = [(LAClient *)self cachedExternalizedContext];
    v7 = [v6 externalizedContext];

    v4 = v7;
  }

  return v4;
}

- (void)_recoverConnectionIfNeeded
{
  v13 = *MEMORY[0x1E69E9840];
  if ([(LAClient *)self shouldRecoverConnection])
  {
    [(LAClient *)self setShouldRecoverConnection:0];
    v3 = LALogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(LAClient *)self context];
      *buf = 138543362;
      v12 = v4;
      _os_log_impl(&dword_1A784E000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ is recovering connection to server", buf, 0xCu);
    }

    v5 = [(LAClient *)self userSession];
    v6 = [v5 unsignedIntValue];

    *buf = v6;
    v7 = [(LAClient *)self userSession];
    if (v7)
    {
      v8 = buf;
    }

    else
    {
      v8 = 0;
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __38__LAClient__recoverConnectionIfNeeded__block_invoke;
    v10[3] = &unk_1E77CBB00;
    v10[4] = self;
    [(LAClient *)self _synchronousRemoteObjectProxy:v8 performCall:v10];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v3 = [(LAClient *)self serverConnection];
  v4 = [(LAClient *)self invalidations];
  v5 = +[LAClient _queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __19__LAClient_dealloc__block_invoke;
  block[3] = &unk_1E77CBA88;
  v10 = v3;
  v11 = v4;
  v6 = v4;
  v7 = v3;
  dispatch_async(v5, block);

  v8.receiver = self;
  v8.super_class = LAClient;
  [(LAClient *)&v8 dealloc];
}

uint64_t __19__LAClient_dealloc__block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 40);

  return [LAClient _performInvalidationBlocks:v2];
}

- (LAClient)initWithExternalizedContext:(id)a3 userSession:(const unsigned int *)a4 flags:(int64_t)a5 context:(id)a6
{
  v11 = a3;
  v12 = a6;
  v27.receiver = self;
  v27.super_class = LAClient;
  v13 = [(LAClient *)&v27 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_existingContext, a3);
    objc_storeWeak(&v14->_context, v12);
    v15 = objc_alloc(MEMORY[0x1E69AD230]);
    if (v11)
    {
      v16 = [v15 initWithExternalizedContext:v11];
    }

    else
    {
      v16 = [v15 initWithExternalizationDelegate:v14];
    }

    cachedExternalizedContext = v14->_cachedExternalizedContext;
    v14->_cachedExternalizedContext = v16;

    v18 = objc_opt_new();
    invalidations = v14->_invalidations;
    v14->_invalidations = v18;

    if (a4)
    {
      v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*a4];
      userSession = v14->_userSession;
      v14->_userSession = v20;
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __66__LAClient_initWithExternalizedContext_userSession_flags_context___block_invoke;
    v23[3] = &unk_1E77CBA10;
    v24 = v11;
    v25 = v14;
    v26 = a5;
    [(LAClient *)v25 _synchronousRemoteObjectProxy:a4 performCall:v23];
  }

  return v14;
}

void __66__LAClient_initWithExternalizedContext_userSession_flags_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 context];
  v7 = [v6 instanceId];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__LAClient_initWithExternalizedContext_userSession_flags_context___block_invoke_2;
  v9[3] = &unk_1E77CB9E8;
  v8 = *(a1 + 48);
  v10 = *(a1 + 40);
  [v5 connectToExistingContext:v3 callback:v4 clientId:v7 flags:v8 reply:v9];
}

- (LAClient)initWithUUID:(id)a3 token:(id)a4 senderAuditTokenData:(id)a5 context:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v26.receiver = self;
  v26.super_class = LAClient;
  v15 = [(LAClient *)&v26 init];
  if (v15)
  {
    v16 = [objc_alloc(MEMORY[0x1E69AD230]) initWithExternalizationDelegate:v15];
    cachedExternalizedContext = v15->_cachedExternalizedContext;
    v15->_cachedExternalizedContext = v16;

    v18 = objc_opt_new();
    invalidations = v15->_invalidations;
    v15->_invalidations = v18;

    objc_storeStrong(&v15->_uuid, a3);
    objc_storeWeak(&v15->_context, v14);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __60__LAClient_initWithUUID_token_senderAuditTokenData_context___block_invoke;
    v21[3] = &unk_1E77CBA60;
    v22 = v11;
    v23 = v15;
    v24 = v12;
    v25 = v13;
    [(LAClient *)v23 _synchronousRemoteObjectProxy:0 performCall:v21];
  }

  return v15;
}

void __60__LAClient_initWithUUID_token_senderAuditTokenData_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 context];
  v7 = [v6 instanceId];
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__LAClient_initWithUUID_token_senderAuditTokenData_context___block_invoke_2;
  v10[3] = &unk_1E77CBA38;
  v11 = *(a1 + 40);
  v12 = *(a1 + 32);
  [v5 connectToContextWithUUID:v3 callback:v4 clientId:v7 token:v8 senderAuditTokenData:v9 reply:v10];
}

+ (id)createConnection:(const unsigned int *)a3 legacyService:(BOOL)a4
{
  v4 = a4;
  v23 = *MEMORY[0x1E69E9840];
  v6 = LALogForCategory();
  v7 = @"com.apple.CoreAuthentication.daemon";
  if (v4)
  {
    v7 = @"com.apple.CoreAuthentication.daemon.libxpc";
  }

  v8 = v7;
  if (xpc_user_sessions_enabled())
  {
    v9 = 0;
  }

  else
  {
    v9 = 4096;
  }

  v10 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:v8 options:v9];
  if (xpc_user_sessions_enabled())
  {
    *v18 = 0;
    foreground_uid = xpc_user_sessions_get_foreground_uid();
    v12 = [v10 _xpcConnection];
    xpc_connection_set_target_user_session_uid();

    v13 = v6;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [LAClient createConnection:v13 legacyService:?];
    }
  }

  v14 = v6;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    if (a3)
    {
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*a3];
    }

    else
    {
      v15 = 0;
    }

    *v18 = 138543874;
    *&v18[4] = v8;
    v19 = 1024;
    v20 = v9;
    v21 = 2114;
    v22 = v15;
    _os_log_impl(&dword_1A784E000, v14, OS_LOG_TYPE_INFO, "Connecting to %{public}@, flags:%x, uid:%{public}@", v18, 0x1Cu);
    if (a3)
    {
    }
  }

  v16 = *MEMORY[0x1E69E9840];

  return v10;
}

void __67__LAClient__connectToServerWithRecovery_userSession_legacyService___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = v2;
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v5 = [WeakRetained context];
    v6 = *(a1 + 56);
    v7 = objc_loadWeakRetained((a1 + 48));
    *buf = 138543874;
    v13 = v5;
    v14 = 1024;
    v15 = v6;
    v16 = 1024;
    v17 = [v7 willRetryOnInterruptedConnection];
    _os_log_impl(&dword_1A784E000, v3, OS_LOG_TYPE_INFO, "%{public}@ connection to server interrupted (recovery: %d, willRetry: %d)", buf, 0x18u);
  }

  if (*(a1 + 56) == 1 && ([*(a1 + 40) willRetryOnInterruptedConnection] & 1) == 0)
  {
    v8 = +[LAClient _queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__LAClient__connectToServerWithRecovery_userSession_legacyService___block_invoke_46;
    block[3] = &unk_1E77CB1F8;
    objc_copyWeak(&v11, (a1 + 48));
    dispatch_async(v8, block);

    objc_destroyWeak(&v11);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __67__LAClient__connectToServerWithRecovery_userSession_legacyService___block_invoke_46(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _scheduleRecovery];
}

- (void)_synchronousRemoteObjectProxy:(const unsigned int *)a3 performCall:(id)a4
{
  v6 = a4;
  [(LAClient *)self setWillRetryOnInterruptedConnection:1];
  [(LAClient *)self _connectToServerWithRecovery:1 userSession:a3 legacyService:0];
  v7 = [(LAClient *)self serverConnection];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __54__LAClient__synchronousRemoteObjectProxy_performCall___block_invoke;
  v21[3] = &unk_1E77CBAD8;
  v21[4] = self;
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v21];

  v6[2](v6, v8);
  v9 = [(NSError *)self->_permanentError domain];
  v10 = *MEMORY[0x1E696A250];
  if ([v9 isEqualToString:*MEMORY[0x1E696A250]])
  {
    v11 = [(NSError *)self->_permanentError code];

    if (v11 == 4097)
    {
      v12 = LALogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [LAClient _synchronousRemoteObjectProxy:v12 performCall:?];
      }

      [(LAClient *)self _connectToServerWithRecovery:1 userSession:a3 legacyService:0];
      v13 = [(LAClient *)self serverConnection];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __54__LAClient__synchronousRemoteObjectProxy_performCall___block_invoke_48;
      v20[3] = &unk_1E77CBAD8;
      v20[4] = self;
      v14 = [v13 synchronousRemoteObjectProxyWithErrorHandler:v20];

      v6[2](v6, v14);
    }
  }

  else
  {
  }

  [(LAClient *)self setWillRetryOnInterruptedConnection:0];
  v15 = [(NSError *)self->_permanentError domain];
  if ([v15 isEqualToString:v10])
  {
    v16 = [(NSError *)self->_permanentError code];

    if (v16 == 4099)
    {
      [(LAClient *)self _connectToServerWithRecovery:1 userSession:a3 legacyService:1];
      v17 = [(LAClient *)self serverConnection];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __54__LAClient__synchronousRemoteObjectProxy_performCall___block_invoke_2;
      v19[3] = &unk_1E77CBAD8;
      v19[4] = self;
      v18 = [v17 synchronousRemoteObjectProxyWithErrorHandler:v19];

      v6[2](v6, v18);
      v8 = v18;
    }
  }

  else
  {
  }
}

- (void)_handleConnectionResult:(id)a3 uuid:(id)a4 proxyId:(id)a5 error:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v10)
  {
    v14 = LALogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [LAClient _handleConnectionResult:? uuid:? proxyId:? error:?];
    }

    [(LAClient *)self _invalidateCachedExternalizedContextWithError:v13];
  }

  [(LAClient *)self setRemoteContext:v10];
  [(LAClient *)self setUuid:v11];
  [(LAClient *)self setProxyId:v12];
  [(LAClient *)self setPermanentError:v13];
}

- (void)_invalidateCachedExternalizedContextWithError:(id)a3
{
  v7 = a3;
  v4 = [v7 domain];
  if ([v4 isEqualToString:*MEMORY[0x1E696A250]])
  {
    v5 = [v7 code] == 4099;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(LAClient *)self cachedExternalizedContext];
  [v6 invalidateBecauseOfInvalidConnection:v5];
}

- (void)setRemoteContext:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_remoteContext, a3);
  if (v5)
  {
    v6 = [(LAClient *)self remoteContext];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __29__LAClient_setRemoteContext___block_invoke;
    v10[3] = &unk_1E77CBAD8;
    v10[4] = self;
    v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v10];
    synchronousRemoteContext = self->_synchronousRemoteContext;
    self->_synchronousRemoteContext = v7;
  }

  else
  {
    v9 = self->_synchronousRemoteContext;
    self->_synchronousRemoteContext = 0;
  }
}

void __29__LAClient_setRemoteContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LALogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __29__LAClient_setRemoteContext___block_invoke_cold_1(a1);
  }

  [*(a1 + 32) _scheduleRecovery];
}

- (void)_scheduleRecovery
{
  v3 = [MEMORY[0x1E696EE88] errorWithCode:-10 message:@"Lost connection to coreauthd."];
  v4 = [(LAClient *)self _setPermanentError:v3];

  if (v4)
  {

    [(LAClient *)self setShouldRecoverConnection:1];
  }
}

void __38__LAClient__recoverConnectionIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 existingContext];
  v6 = *(a1 + 32);
  v7 = [v6 context];
  v8 = [v7 instanceId];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__LAClient__recoverConnectionIfNeeded__block_invoke_2;
  v9[3] = &unk_1E77CB9E8;
  v9[4] = *(a1 + 32);
  [v4 connectToExistingContext:v5 callback:v6 clientId:v8 flags:0 reply:v9];
}

- (void)allowTransferToProcess:(int)a3 receiverAuditTokenData:(id)a4 reply:(id)a5
{
  v8 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__LAClient_allowTransferToProcess_receiverAuditTokenData_reply___block_invoke;
  v10[3] = &unk_1E77CBB28;
  v12 = a3;
  v10[4] = self;
  v11 = v8;
  v9 = v8;
  [(LAClient *)self _performCallBool:v10 finally:a5];
}

void __64__LAClient_allowTransferToProcess_receiverAuditTokenData_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 synchronousRemoteContext];
  [v5 allowTransferToProcess:*(a1 + 48) receiverAuditTokenData:*(a1 + 40) reply:v4];
}

- (void)tokenForTransferToUnknownProcess:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__LAClient_tokenForTransferToUnknownProcess___block_invoke;
  v3[3] = &unk_1E77CBB50;
  v3[4] = self;
  [(LAClient *)self _performCallId:v3 finally:a3];
}

void __45__LAClient_tokenForTransferToUnknownProcess___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 synchronousRemoteContext];
  [v4 tokenForTransferToUnknownProcess:v3];
}

- (void)invalidatedWithError:(id)a3
{
  v4 = a3;
  v5 = LALogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [LAClient invalidatedWithError:?];
  }

  v6 = +[LAClient _queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __33__LAClient_invalidatedWithError___block_invoke;
  v8[3] = &unk_1E77CBA88;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (void)invalidateWithMessage:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = +[LAClient _queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__LAClient_invalidateWithMessage___block_invoke;
  block[3] = &unk_1E77CBB78;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __34__LAClient_invalidateWithMessage___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _serializedInvalidateWithMessage:*(a1 + 32)];
}

- (void)_serializedInvalidateWithMessage:(id)a3
{
  serverConnection = self->_serverConnection;
  v5 = a3;
  [(NSXPCConnection *)serverConnection invalidate];
  v6 = self->_serverConnection;
  self->_serverConnection = 0;

  v7 = [MEMORY[0x1E696EE88] errorWithCode:-9 message:v5];

  [(LAClient *)self _setPermanentError:v7];
  v8 = [MEMORY[0x1E696EE88] errorWithCode:-10 message:@"Invalid context."];
  [(LAClient *)self setPermanentError:v8];
}

- (void)invalidateWithReply:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__LAClient_invalidateWithReply___block_invoke;
  v3[3] = &unk_1E77CBBA0;
  v3[4] = self;
  [(LAClient *)self _performCallBool:v3 finally:a3];
}

uint64_t __32__LAClient_invalidateWithReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 synchronousRemoteContext];
  [v5 invalidateWithReply:v4];

  v6 = *(a1 + 32);

  return [v6 _serializedInvalidateWithMessage:@"invalidate called"];
}

+ (void)_performInvalidationBlocks:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) invoke];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [v3 removeAllObjects];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_checkIdResultForTCC:(id)a3 synchronous:(BOOL)a4 error:(id)a5 retryBlock:(id)a6 finally:(id)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [(LAClient *)self context];
  v16 = [v15 description];

  if (v11 || ![MEMORY[0x1E696EE88] error:v12 hasCode:-1018] || (objc_msgSend(v12, "userInfo"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "objectForKeyedSubscript:", @"TCCServerPrompt"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "BOOLValue"), v18, v17, (v19 & 1) != 0))
  {
    v14[2](v14, v11, v12);
  }

  else
  {
    v20 = [v12 userInfo];
    v21 = [v20 objectForKeyedSubscript:@"TCCService"];

    v22 = [MEMORY[0x1E69AD2B8] sharedInstance];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __70__LAClient__checkIdResultForTCC_synchronous_error_retryBlock_finally___block_invoke;
    v24[3] = &unk_1E77CBBC8;
    v25 = v16;
    v26 = v21;
    v28 = v13;
    v29 = v14;
    v27 = v12;
    v23 = v21;
    [v22 requestAuthorizationForService:v23 completion:v24];
  }
}

uint64_t __70__LAClient__checkIdResultForTCC_synchronous_error_retryBlock_finally___block_invoke(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = LALogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = a1[5];
    v11 = 138543874;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 1024;
    v16 = a2 == 1;
    _os_log_impl(&dword_1A784E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ TCC access request for %@ returned %d", &v11, 0x1Cu);
  }

  if (a2 == 1)
  {
    v7 = a1[8];
    result = (*(a1[7] + 16))();
  }

  else
  {
    v9 = a1[6];
    result = (*(a1[8] + 16))();
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_performSynchronous:(BOOL)a3 callId:(id)a4 finally:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __47__LAClient__performSynchronous_callId_finally___block_invoke;
  v18 = &unk_1E77CBC68;
  v19 = self;
  v10 = v9;
  v20 = v10;
  v11 = v8;
  v21 = v11;
  v22 = v6;
  v12 = MEMORY[0x1AC55C260](&v15);
  v13 = [LAClient _queue:v15];
  v14 = v13;
  if (v6)
  {
    dispatch_sync(v13, v12);
  }

  else
  {
    dispatch_async(v13, v12);
  }
}

void __47__LAClient__performSynchronous_callId_finally___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  [*(a1 + 32) _recoverConnectionIfNeeded];
  objc_sync_exit(v2);

  v3 = [*(a1 + 32) permanentError];

  if (v3)
  {
    v4 = *(a1 + 40);
    v12 = [*(a1 + 32) permanentError];
    (*(v4 + 16))(v4, 0, v12);
  }

  else
  {
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x2020000000;
    v22 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __47__LAClient__performSynchronous_callId_finally___block_invoke_2;
    v18[3] = &unk_1E77CBBF0;
    v20 = v21;
    v5 = *(a1 + 40);
    v18[4] = *(a1 + 32);
    v19 = v5;
    v6 = MEMORY[0x1AC55C260](v18);
    v7 = [[Invalidation alloc] initWithBlock:v6];
    v8 = *(a1 + 32);
    objc_sync_enter(v8);
    v9 = [*(a1 + 32) invalidations];
    [v9 addObject:v7];

    objc_sync_exit(v8);
    v10 = *(a1 + 48);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __47__LAClient__performSynchronous_callId_finally___block_invoke_3;
    v13[3] = &unk_1E77CBC40;
    v13[4] = *(a1 + 32);
    v11 = v7;
    v14 = v11;
    v16 = v21;
    v17 = *(a1 + 56);
    v15 = *(a1 + 40);
    (*(v10 + 16))(v10, v13);

    _Block_object_dispose(v21, 8);
  }
}

void __47__LAClient__performSynchronous_callId_finally___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  if ((*(v2 + 24) & 1) == 0)
  {
    *(v2 + 24) = 1;
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) permanentError];
    (*(v3 + 16))(v3, 0, v4);
  }
}

void __47__LAClient__performSynchronous_callId_finally___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  objc_sync_enter(v7);
  v8 = [*(a1 + 32) invalidations];
  [v8 removeObject:*(a1 + 40)];

  objc_sync_exit(v7);
  v9 = *(*(a1 + 56) + 8);
  if ((*(v9 + 24) & 1) == 0)
  {
    *(v9 + 24) = 1;
    if (*(a1 + 64) == 1)
    {
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v10 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __47__LAClient__performSynchronous_callId_finally___block_invoke_4;
      block[3] = &unk_1E77CBC18;
      v14 = *(a1 + 48);
      v12 = v5;
      v13 = v6;
      dispatch_async(v10, block);
    }
  }
}

void __49__LAClient__performSynchronous_callBool_finally___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__LAClient__performSynchronous_callBool_finally___block_invoke_2;
  v7[3] = &unk_1E77CBC90;
  v8 = v3;
  v5 = *(v4 + 16);
  v6 = v3;
  v5(v4, v7);
}

void __49__LAClient__performSynchronous_callBool_finally___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E696AD98];
  v6 = a3;
  v7 = [v5 numberWithBool:a2];
  (*(v4 + 16))(v4, v7, v6);
}

void __49__LAClient__performSynchronous_callBool_finally___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  (*(v4 + 16))(v4, [a2 BOOLValue], v5);
}

- (BOOL)_setPermanentError:(id)a3
{
  v4 = a3;
  if (([MEMORY[0x1E696EE88] error:v4 hasCode:-9] & 1) == 0)
  {
    v5 = LALogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [LAClient _setPermanentError:?];
    }
  }

  v6 = [(LAClient *)self permanentError];

  if (!v6)
  {
    v7 = [(LAClient *)self cachedExternalizedContext];
    v8 = [v7 cachedExternalizedContext];
    [(LAClient *)self setExistingContext:v8];

    [(LAClient *)self _invalidateCachedExternalizedContextWithError:v4];
    [(LAClient *)self setRemoteContext:0];
    [(LAClient *)self setPermanentError:v4];
    v9 = self;
    objc_sync_enter(v9);
    v10 = [(LAClient *)v9 invalidations];
    [LAClient _performInvalidationBlocks:v10];

    objc_sync_exit(v9);
  }

  return v6 == 0;
}

- (id)_updateOptions:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:&unk_1F1A6FC38];
  v5 = v3;
  if (v4)
  {
    v5 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v3];
    v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:0];
    [v5 setObject:v6 forKey:&unk_1F1A6FC38];
  }

  return v5;
}

void __56__LAClient_getDomainStateWithOptions_synchronous_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) synchronousRemoteContext];
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__LAClient_getDomainStateWithOptions_synchronous_reply___block_invoke_2;
  v7[3] = &unk_1E77CB0F8;
  v8 = v3;
  v6 = v3;
  [v4 getDomainStateWithOptions:v5 reply:v7];
}

- (void)evaluatePolicy:(int64_t)a3 options:(id)a4 reply:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(LAClient *)self uiDelegate];
  [(LAClient *)self evaluatePolicy:a3 options:v9 uiDelegate:v10 reply:v8];
}

void __64__LAClient_evaluatePolicy_options_uiDelegate_synchronous_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) synchronousRemoteContext];
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__LAClient_evaluatePolicy_options_uiDelegate_synchronous_reply___block_invoke_2;
  v10[3] = &unk_1E77CBD58;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v15 = *(a1 + 64);
  v10[4] = v8;
  v14 = v5;
  v11 = v7;
  v12 = *(a1 + 48);
  v13 = v3;
  v9 = v3;
  [v4 evaluatePolicy:v5 options:v11 uiDelegate:v6 reply:v10];
}

void __64__LAClient_evaluatePolicy_options_uiDelegate_synchronous_reply___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 72);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__LAClient_evaluatePolicy_options_uiDelegate_synchronous_reply___block_invoke_3;
  v9[3] = &unk_1E77CBD30;
  v8 = *(a1 + 64);
  v9[4] = v6;
  v12 = v8;
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  [v6 _checkIdResultForTCC:a2 synchronous:v7 error:a3 retryBlock:v9 finally:*(a1 + 56)];
}

void __64__LAClient_evaluatePolicy_options_uiDelegate_synchronous_reply___block_invoke_3(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 synchronousRemoteContext];
  [v5 evaluatePolicy:a1[7] options:a1[5] uiDelegate:a1[6] reply:v4];
}

- (void)evaluateACL:(id)a3 operation:(id)a4 options:(id)a5 reply:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(LAClient *)self uiDelegate];
  [(LAClient *)self evaluateACL:v13 operation:v12 options:v11 uiDelegate:v14 reply:v10];
}

- (void)evaluateACL:(id)a3 operation:(id)a4 options:(id)a5 uiDelegate:(id)a6 synchronous:(BOOL)a7 reply:(id)a8
{
  v27 = a7;
  v13 = a3;
  v14 = a4;
  v15 = a8;
  v16 = a6;
  v17 = [(LAClient *)self _updateOptions:a5];
  v18 = MEMORY[0x1E696EE88];
  v19 = [MEMORY[0x1E69AD298] checkOptions:v17];
  [v18 raiseExceptionOnError:v19];

  v20 = MEMORY[0x1E696EE88];
  v21 = [MEMORY[0x1E69AD298] checkACL:v13];
  [v20 raiseExceptionOnError:v21];

  v22 = [(LAClient *)self _resolveUIDelegateFromDelegate:v16];

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __71__LAClient_evaluateACL_operation_options_uiDelegate_synchronous_reply___block_invoke;
  v28[3] = &unk_1E77CBDF8;
  v28[4] = self;
  v29 = v13;
  v30 = v14;
  v31 = v17;
  v32 = v22;
  v33 = v27;
  v23 = v22;
  v24 = v17;
  v25 = v14;
  v26 = v13;
  [(LAClient *)self _performSynchronous:v27 callId:v28 finally:v15];
}

void __71__LAClient_evaluateACL_operation_options_uiDelegate_synchronous_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) synchronousRemoteContext];
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__LAClient_evaluateACL_operation_options_uiDelegate_synchronous_reply___block_invoke_2;
  v14[3] = &unk_1E77CBDD0;
  v19 = *(a1 + 72);
  v13 = *(a1 + 32);
  v8 = *(&v13 + 1);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  v15 = v13;
  v16 = v11;
  v17 = *(a1 + 64);
  v18 = v3;
  v12 = v3;
  [v4 evaluateACL:v8 operation:v5 options:v6 uiDelegate:v7 reply:v14];
}

void __71__LAClient_evaluateACL_operation_options_uiDelegate_synchronous_reply___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 80);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__LAClient_evaluateACL_operation_options_uiDelegate_synchronous_reply___block_invoke_3;
  v12[3] = &unk_1E77CBDA8;
  v11 = *(a1 + 32);
  v7 = *(&v11 + 1);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  v13 = v11;
  v14 = v10;
  v15 = *(a1 + 64);
  [v11 _checkIdResultForTCC:a2 synchronous:v6 error:a3 retryBlock:v12 finally:*(a1 + 72)];
}

void __71__LAClient_evaluateACL_operation_options_uiDelegate_synchronous_reply___block_invoke_3(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 synchronousRemoteContext];
  [v5 evaluateACL:a1[5] operation:a1[6] options:a1[7] uiDelegate:a1[8] reply:v4];
}

- (void)failProcessedEvent:(int64_t)a3 failureError:(id)a4 reply:(id)a5
{
  v8 = a4;
  v9 = MEMORY[0x1E696EE88];
  v10 = MEMORY[0x1E69AD298];
  v11 = a5;
  v12 = [v10 checkEvent:a3];
  [v9 raiseExceptionOnError:v12];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __50__LAClient_failProcessedEvent_failureError_reply___block_invoke;
  v14[3] = &unk_1E77CBE20;
  v15 = v8;
  v16 = a3;
  v14[4] = self;
  v13 = v8;
  [(LAClient *)self _performCallBool:v14 finally:v11];
}

void __50__LAClient_failProcessedEvent_failureError_reply___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 synchronousRemoteContext];
  [v5 failProcessedEvent:a1[6] failureError:a1[5] reply:v4];
}

- (void)retryProcessedEvent:(int64_t)a3 reply:(id)a4
{
  v6 = MEMORY[0x1E696EE88];
  v7 = MEMORY[0x1E69AD298];
  v8 = a4;
  v9 = [v7 checkEvent:a3];
  [v6 raiseExceptionOnError:v9];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38__LAClient_retryProcessedEvent_reply___block_invoke;
  v10[3] = &unk_1E77CBE48;
  v10[4] = self;
  v10[5] = a3;
  [(LAClient *)self _performCallBool:v10 finally:v8];
}

void __38__LAClient_retryProcessedEvent_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 synchronousRemoteContext];
  [v5 retryProcessedEvent:*(a1 + 40) reply:v4];
}

- (void)resetProcessedEvent:(int64_t)a3 reply:(id)a4
{
  v6 = MEMORY[0x1E696EE88];
  v7 = MEMORY[0x1E69AD298];
  v8 = a4;
  v9 = [v7 checkEvent:a3];
  [v6 raiseExceptionOnError:v9];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38__LAClient_resetProcessedEvent_reply___block_invoke;
  v10[3] = &unk_1E77CBE48;
  v10[4] = self;
  v10[5] = a3;
  [(LAClient *)self _performCallBool:v10 finally:v8];
}

void __38__LAClient_resetProcessedEvent_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 synchronousRemoteContext];
  [v5 resetProcessedEvent:*(a1 + 40) reply:v4];
}

- (void)pauseProcessedEvent:(int64_t)a3 pause:(BOOL)a4 reply:(id)a5
{
  v8 = MEMORY[0x1E696EE88];
  v9 = MEMORY[0x1E69AD298];
  v10 = a5;
  v11 = [v9 checkEvent:a3];
  [v8 raiseExceptionOnError:v11];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__LAClient_pauseProcessedEvent_pause_reply___block_invoke;
  v12[3] = &unk_1E77CBE70;
  v12[4] = self;
  v12[5] = a3;
  v13 = a4;
  [(LAClient *)self _performCallBool:v12 finally:v10];
}

void __44__LAClient_pauseProcessedEvent_pause_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 synchronousRemoteContext];
  [v5 pauseProcessedEvent:*(a1 + 40) pause:*(a1 + 48) reply:v4];
}

- (void)setCredential:(id)a3 forProcessedEvent:(int64_t)a4 credentialType:(int64_t)a5 reply:(id)a6
{
  v10 = a3;
  v11 = MEMORY[0x1E696EE88];
  v12 = MEMORY[0x1E69AD298];
  v13 = a6;
  v14 = [v12 checkEvent:a4];
  [v11 raiseExceptionOnError:v14];

  v15 = MEMORY[0x1E696EE88];
  v16 = [MEMORY[0x1E69AD298] checkCredentialType:a5];
  [v15 raiseExceptionOnError:v16];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65__LAClient_setCredential_forProcessedEvent_credentialType_reply___block_invoke;
  v18[3] = &unk_1E77CBE98;
  v18[4] = self;
  v19 = v10;
  v20 = a4;
  v21 = a5;
  v17 = v10;
  [(LAClient *)self _performCallBool:v18 finally:v13];
}

void __65__LAClient_setCredential_forProcessedEvent_credentialType_reply___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 synchronousRemoteContext];
  [v5 setCredential:a1[5] forProcessedEvent:a1[6] credentialType:a1[7] reply:v4];
}

- (void)isCredentialSet:(int64_t)a3 reply:(id)a4
{
  v6 = MEMORY[0x1E696EE88];
  v7 = MEMORY[0x1E69AD298];
  v8 = a4;
  v9 = [v7 checkCredentialType:a3];
  [v6 raiseExceptionOnError:v9];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __34__LAClient_isCredentialSet_reply___block_invoke;
  v10[3] = &unk_1E77CBE48;
  v10[4] = self;
  v10[5] = a3;
  [(LAClient *)self _performCallBool:v10 finally:v8];
}

void __34__LAClient_isCredentialSet_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 synchronousRemoteContext];
  [v5 isCredentialSet:*(a1 + 40) reply:v4];
}

- (void)setCredential:(id)a3 type:(int64_t)a4 options:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [(LAClient *)self _updateOptions:a5];
  v13 = MEMORY[0x1E696EE88];
  v14 = [MEMORY[0x1E69AD298] checkOptions:v12];
  [v13 raiseExceptionOnError:v14];

  v15 = MEMORY[0x1E696EE88];
  v16 = [MEMORY[0x1E69AD298] checkCredentialType:a4];
  [v15 raiseExceptionOnError:v16];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __45__LAClient_setCredential_type_options_reply___block_invoke;
  v19[3] = &unk_1E77CBEC0;
  v19[4] = self;
  v20 = v10;
  v21 = v12;
  v22 = a4;
  v17 = v12;
  v18 = v10;
  [(LAClient *)self _performCallBool:v19 finally:v11];
}

void __45__LAClient_setCredential_type_options_reply___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 synchronousRemoteContext];
  [v5 setCredential:a1[5] type:a1[7] options:a1[6] reply:v4];
}

- (void)credentialOfType:(int64_t)a3 reply:(id)a4
{
  v6 = MEMORY[0x1E696EE88];
  v7 = MEMORY[0x1E69AD298];
  v8 = a4;
  v9 = [v7 checkCredentialType:a3];
  [v6 raiseExceptionOnError:v9];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __35__LAClient_credentialOfType_reply___block_invoke;
  v10[3] = &unk_1E77CBEE8;
  v10[4] = self;
  v10[5] = a3;
  [(LAClient *)self _performCallId:v10 finally:v8];
}

void __35__LAClient_credentialOfType_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 synchronousRemoteContext];
  [v5 credentialOfType:*(a1 + 40) reply:v4];
}

- (void)credentialsUUIDWithReply:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __37__LAClient_credentialsUUIDWithReply___block_invoke;
  v3[3] = &unk_1E77CBB50;
  v3[4] = self;
  [(LAClient *)self _performCallId:v3 finally:a3];
}

void __37__LAClient_credentialsUUIDWithReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 synchronousRemoteContext];
  [v4 credentialsUUIDWithReply:v3];
}

- (void)setCredentialsUUID:(id)a3 reply:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__LAClient_setCredentialsUUID_reply___block_invoke;
  v8[3] = &unk_1E77CBF10;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  [(LAClient *)self _performCallBool:v8 finally:a4];
}

void __37__LAClient_setCredentialsUUID_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 synchronousRemoteContext];
  [v5 setCredentialsUUID:*(a1 + 40) reply:v4];
}

- (void)credentialEncodingSeedWithReply:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__LAClient_credentialEncodingSeedWithReply___block_invoke;
  v3[3] = &unk_1E77CBB50;
  v3[4] = self;
  [(LAClient *)self _performCallId:v3 finally:a3];
}

void __44__LAClient_credentialEncodingSeedWithReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 synchronousRemoteContext];
  [v4 credentialEncodingSeedWithReply:v3];
}

- (void)setOptions:(id)a3 forInternalOperation:(int64_t)a4 reply:(id)a5
{
  v8 = a3;
  v9 = MEMORY[0x1E696EE88];
  v10 = MEMORY[0x1E69AD298];
  v11 = a5;
  v12 = [v10 checkInternalOperation:a4 options:v8];
  [v9 raiseExceptionOnError:v12];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __50__LAClient_setOptions_forInternalOperation_reply___block_invoke;
  v14[3] = &unk_1E77CBE20;
  v14[4] = self;
  v15 = v8;
  v16 = a4;
  v13 = v8;
  [(LAClient *)self _performCallBool:v14 finally:v11];
}

void __50__LAClient_setOptions_forInternalOperation_reply___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 synchronousRemoteContext];
  [v5 setOptions:a1[5] forInternalOperation:a1[6] reply:v4];
}

- (void)optionsForInternalOperation:(int64_t)a3 reply:(id)a4
{
  v6 = MEMORY[0x1E696EE88];
  v7 = MEMORY[0x1E69AD298];
  v8 = a4;
  v9 = [v7 checkInternalOperation:a3 options:0];
  [v6 raiseExceptionOnError:v9];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__LAClient_optionsForInternalOperation_reply___block_invoke;
  v10[3] = &unk_1E77CBEE8;
  v10[4] = self;
  v10[5] = a3;
  [(LAClient *)self _performCallId:v10 finally:v8];
}

void __46__LAClient_optionsForInternalOperation_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 synchronousRemoteContext];
  [v5 optionsForInternalOperation:*(a1 + 40) reply:v4];
}

- (void)verifyFileVaultUser:(id)a3 volumeUuid:(id)a4 options:(unint64_t)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57__LAClient_verifyFileVaultUser_volumeUuid_options_reply___block_invoke;
  v14[3] = &unk_1E77CBEC0;
  v14[4] = self;
  v15 = v10;
  v16 = v11;
  v17 = a5;
  v12 = v11;
  v13 = v10;
  [(LAClient *)self _performCallBool:v14 finally:a6];
}

void __57__LAClient_verifyFileVaultUser_volumeUuid_options_reply___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 synchronousRemoteContext];
  [v5 verifyFileVaultUser:a1[5] volumeUuid:a1[6] options:a1[7] reply:v4];
}

- (void)serverPropertyForOption:(int64_t)a3 reply:(id)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__LAClient_serverPropertyForOption_reply___block_invoke;
  v4[3] = &unk_1E77CBEE8;
  v4[4] = self;
  v4[5] = a3;
  [(LAClient *)self _performCallId:v4 finally:a4];
}

void __42__LAClient_serverPropertyForOption_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 synchronousRemoteContext];
  [v5 serverPropertyForOption:*(a1 + 40) reply:v4];
}

- (void)setServerPropertyForOption:(int64_t)a3 value:(id)a4 reply:(id)a5
{
  v8 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__LAClient_setServerPropertyForOption_value_reply___block_invoke;
  v10[3] = &unk_1E77CBE20;
  v11 = v8;
  v12 = a3;
  v10[4] = self;
  v9 = v8;
  [(LAClient *)self _performCallBool:v10 finally:a5];
}

void __51__LAClient_setServerPropertyForOption_value_reply___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 synchronousRemoteContext];
  [v5 setServerPropertyForOption:a1[6] value:a1[5] reply:v4];
}

- (id)serverPropertyForOption:(int64_t)a3 error:(id *)a4
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2;
  v18 = __Block_byref_object_dispose__2;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__2;
  v12 = __Block_byref_object_dispose__2;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__LAClient_serverPropertyForOption_error___block_invoke;
  v7[3] = &unk_1E77CBF38;
  v7[4] = &v14;
  v7[5] = &v8;
  [(LAClient *)self serverPropertyForOption:a3 reply:v7];
  if (a4)
  {
    *a4 = v9[5];
  }

  v5 = v15[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);

  return v5;
}

void __42__LAClient_serverPropertyForOption_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (BOOL)setServerPropertyForOption:(int64_t)a3 value:(id)a4 error:(id *)a5
{
  v8 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__LAClient_setServerPropertyForOption_value_error___block_invoke;
  v11[3] = &unk_1E77CBF60;
  v11[4] = &v18;
  v11[5] = &v12;
  [(LAClient *)self setServerPropertyForOption:a3 value:v8 reply:v11];
  if (a5)
  {
    *a5 = v13[5];
  }

  v9 = *(v19 + 24);
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  return v9;
}

- (void)externalizedContextWithReply:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__LAClient_externalizedContextWithReply___block_invoke;
  v3[3] = &unk_1E77CBB50;
  v3[4] = self;
  [(LAClient *)self _performCallId:v3 finally:a3];
}

void __41__LAClient_externalizedContextWithReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 synchronousRemoteContext];
  [v4 externalizedContextWithReply:v3];
}

- (id)synchronousExternalizedContextWithError:(id *)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2;
  v18 = __Block_byref_object_dispose__2;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__2;
  v12 = __Block_byref_object_dispose__2;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__LAClient_synchronousExternalizedContextWithError___block_invoke;
  v7[3] = &unk_1E77CBB50;
  v7[4] = self;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__LAClient_synchronousExternalizedContextWithError___block_invoke_2;
  v6[3] = &unk_1E77CBF88;
  v6[4] = &v14;
  v6[5] = &v8;
  [(LAClient *)self _performCallId:v7 finally:v6];
  if (a3)
  {
    *a3 = v9[5];
  }

  v4 = v15[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);

  return v4;
}

void __52__LAClient_synchronousExternalizedContextWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 synchronousRemoteContext];
  [v4 externalizedContextWithReply:v3];
}

void __52__LAClient_synchronousExternalizedContextWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)authMethodWithReply:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__LAClient_authMethodWithReply___block_invoke;
  v3[3] = &unk_1E77CBB50;
  v3[4] = self;
  [(LAClient *)self _performCallId:v3 finally:a3];
}

void __32__LAClient_authMethodWithReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 synchronousRemoteContext];
  [v4 authMethodWithReply:v3];
}

- (void)prearmTouchIdWithReply:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__LAClient_prearmTouchIdWithReply___block_invoke;
  v3[3] = &unk_1E77CBB50;
  v3[4] = self;
  [(LAClient *)self _performCallId:v3 finally:a3];
}

void __35__LAClient_prearmTouchIdWithReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) serverConnection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__LAClient_prearmTouchIdWithReply___block_invoke_2;
  v7[3] = &unk_1E77CBFB0;
  v8 = v3;
  v5 = v3;
  v6 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v7];
  [v6 prearmTouchIdWithReply:v5];
}

- (void)resetWithReply:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __27__LAClient_resetWithReply___block_invoke;
  v3[3] = &unk_1E77CBBA0;
  v3[4] = self;
  [(LAClient *)self _performCallBool:v3 finally:a3];
}

void __27__LAClient_resetWithReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 synchronousRemoteContext];
  [v4 resetProcessedEvent:0 reply:v3];
}

- (void)notifyEvent:(int64_t)a3 options:(id)a4 reply:(id)a5
{
  v8 = a4;
  v9 = a5;
  [(LAClient *)self _connectToServerWithRecovery:0 userSession:0 legacyService:0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __38__LAClient_notifyEvent_options_reply___block_invoke;
  v11[3] = &unk_1E77CBE20;
  v12 = v8;
  v13 = a3;
  v11[4] = self;
  v10 = v8;
  [(LAClient *)self _performSynchronous:0 callBool:v11 finally:v9];
}

void __38__LAClient_notifyEvent_options_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) serverConnection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__LAClient_notifyEvent_options_reply___block_invoke_2;
  v7[3] = &unk_1E77CBFB0;
  v8 = v3;
  v5 = v3;
  v6 = [v4 remoteObjectProxyWithErrorHandler:v7];
  [v6 notifyEvent:*(a1 + 48) options:*(a1 + 40) reply:v5];
}

- (void)setShowingCoachingHint:(BOOL)a3 event:(int64_t)a4 reply:(id)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__LAClient_setShowingCoachingHint_event_reply___block_invoke;
  v5[3] = &unk_1E77CBE70;
  v6 = a3;
  v5[4] = self;
  v5[5] = a4;
  [(LAClient *)self _performCallBool:v5 finally:a5];
}

void __47__LAClient_setShowingCoachingHint_event_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 synchronousRemoteContext];
  [v5 setShowingCoachingHint:*(a1 + 48) event:*(a1 + 40) reply:v4];
}

- (void)bootstrapServiceType:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LAClient *)self serverConnection];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __51__LAClient_bootstrapServiceType_completionHandler___block_invoke;
  v18 = &unk_1E77CBFB0;
  v19 = v6;
  v9 = v6;
  v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:&v15];
  v11 = MEMORY[0x1E696AEC0];
  v12 = [MEMORY[0x1E696AE30] processInfo];
  v13 = [v12 processIdentifier];
  v14 = [v11 stringWithFormat:@"%d", v13, v15, v16, v17, v18];
  [v10 bootstrapSessionServiceType:v7 serviceClientID:v14 completionHandler:v9];
}

- (id)_resolveUIDelegateFromDelegate:(id)a3
{
  v3 = a3;
  if (![MEMORY[0x1E69AD280] releaseUIDelegate])
  {
    v4 = v3;
    goto LABEL_5;
  }

  if (v3)
  {
    v4 = [(LACWeakBox *)[LAUIDelegateWeakBox alloc] initWithReceiver:v3];
LABEL_5:
    v5 = v4;
    goto LABEL_6;
  }

  v5 = 0;
LABEL_6:

  return v5;
}

+ (void)createConnection:(int *)a1 legacyService:.cold.1(int *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  xpc_strerror();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)createConnection:(uint64_t)a1 legacyService:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
  v5 = 138543362;
  v6 = v3;
  _os_log_debug_impl(&dword_1A784E000, a2, OS_LOG_TYPE_DEBUG, "xpc_connection_set_target_user_session_uid() setting uid:%{public}@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_handleConnectionResult:(void *)a1 uuid:proxyId:error:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 context];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __29__LAClient_setRemoteContext___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) context];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)invalidatedWithError:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 context];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_setPermanentError:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 context];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end