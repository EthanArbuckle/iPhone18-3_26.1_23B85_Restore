@interface LAClient
+ (id)_queue;
+ (id)createConnection:(const unsigned int *)connection legacyService:(BOOL)service;
+ (void)_performInvalidationBlocks:(id)blocks;
- (BOOL)_setPermanentError:(id)error;
- (BOOL)setServerPropertyForOption:(int64_t)option value:(id)value error:(id *)error;
- (LAClient)initWithExternalizedContext:(id)context userSession:(const unsigned int *)session flags:(int64_t)flags context:(id)a6;
- (LAClient)initWithUUID:(id)d token:(id)token senderAuditTokenData:(id)data context:(id)context;
- (LAContext)context;
- (LAUIDelegate)uiDelegate;
- (NSData)externalizedContext;
- (id)_resolveUIDelegateFromDelegate:(id)delegate;
- (id)_updateOptions:(id)options;
- (id)serverPropertyForOption:(int64_t)option error:(id *)error;
- (id)synchronousExternalizedContextWithError:(id *)error;
- (void)_checkIdResultForTCC:(id)c synchronous:(BOOL)synchronous error:(id)error retryBlock:(id)block finally:(id)finally;
- (void)_handleConnectionResult:(id)result uuid:(id)uuid proxyId:(id)id error:(id)error;
- (void)_invalidateCachedExternalizedContextWithError:(id)error;
- (void)_performSynchronous:(BOOL)synchronous callId:(id)id finally:(id)finally;
- (void)_recoverConnectionIfNeeded;
- (void)_scheduleRecovery;
- (void)_serializedInvalidateWithMessage:(id)message;
- (void)_synchronousRemoteObjectProxy:(const unsigned int *)proxy performCall:(id)call;
- (void)allowTransferToProcess:(int)process receiverAuditTokenData:(id)data reply:(id)reply;
- (void)authMethodWithReply:(id)reply;
- (void)bootstrapServiceType:(id)type completionHandler:(id)handler;
- (void)credentialEncodingSeedWithReply:(id)reply;
- (void)credentialOfType:(int64_t)type reply:(id)reply;
- (void)credentialsUUIDWithReply:(id)reply;
- (void)dealloc;
- (void)evaluateACL:(id)l operation:(id)operation options:(id)options reply:(id)reply;
- (void)evaluateACL:(id)l operation:(id)operation options:(id)options uiDelegate:(id)delegate synchronous:(BOOL)synchronous reply:(id)reply;
- (void)evaluatePolicy:(int64_t)policy options:(id)options reply:(id)reply;
- (void)externalizedContextWithReply:(id)reply;
- (void)failProcessedEvent:(int64_t)event failureError:(id)error reply:(id)reply;
- (void)invalidateWithMessage:(id)message;
- (void)invalidateWithReply:(id)reply;
- (void)invalidatedWithError:(id)error;
- (void)isCredentialSet:(int64_t)set reply:(id)reply;
- (void)notifyEvent:(int64_t)event options:(id)options reply:(id)reply;
- (void)optionsForInternalOperation:(int64_t)operation reply:(id)reply;
- (void)pauseProcessedEvent:(int64_t)event pause:(BOOL)pause reply:(id)reply;
- (void)prearmTouchIdWithReply:(id)reply;
- (void)resetProcessedEvent:(int64_t)event reply:(id)reply;
- (void)resetWithReply:(id)reply;
- (void)retryProcessedEvent:(int64_t)event reply:(id)reply;
- (void)serverPropertyForOption:(int64_t)option reply:(id)reply;
- (void)setCredential:(id)credential forProcessedEvent:(int64_t)event credentialType:(int64_t)type reply:(id)reply;
- (void)setCredential:(id)credential type:(int64_t)type options:(id)options reply:(id)reply;
- (void)setCredentialsUUID:(id)d reply:(id)reply;
- (void)setOptions:(id)options forInternalOperation:(int64_t)operation reply:(id)reply;
- (void)setRemoteContext:(id)context;
- (void)setServerPropertyForOption:(int64_t)option value:(id)value reply:(id)reply;
- (void)setShowingCoachingHint:(BOOL)hint event:(int64_t)event reply:(id)reply;
- (void)tokenForTransferToUnknownProcess:(id)process;
- (void)verifyFileVaultUser:(id)user volumeUuid:(id)uuid options:(unint64_t)options reply:(id)reply;
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
  cachedExternalizedContext = [(LAClient *)self cachedExternalizedContext];
  externalizedContext = [cachedExternalizedContext externalizedContext];

  if (![externalizedContext length])
  {
    usleep(0x1388u);
    v5 = LALogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(LAClient *)v5 externalizedContext];
    }

    cachedExternalizedContext2 = [(LAClient *)self cachedExternalizedContext];
    externalizedContext2 = [cachedExternalizedContext2 externalizedContext];

    externalizedContext = externalizedContext2;
  }

  return externalizedContext;
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
      context = [(LAClient *)self context];
      *buf = 138543362;
      v12 = context;
      _os_log_impl(&dword_1A784E000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ is recovering connection to server", buf, 0xCu);
    }

    userSession = [(LAClient *)self userSession];
    unsignedIntValue = [userSession unsignedIntValue];

    *buf = unsignedIntValue;
    userSession2 = [(LAClient *)self userSession];
    if (userSession2)
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
  serverConnection = [(LAClient *)self serverConnection];
  invalidations = [(LAClient *)self invalidations];
  v5 = +[LAClient _queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __19__LAClient_dealloc__block_invoke;
  block[3] = &unk_1E77CBA88;
  v10 = serverConnection;
  v11 = invalidations;
  v6 = invalidations;
  v7 = serverConnection;
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

- (LAClient)initWithExternalizedContext:(id)context userSession:(const unsigned int *)session flags:(int64_t)flags context:(id)a6
{
  contextCopy = context;
  v12 = a6;
  v27.receiver = self;
  v27.super_class = LAClient;
  v13 = [(LAClient *)&v27 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_existingContext, context);
    objc_storeWeak(&v14->_context, v12);
    v15 = objc_alloc(MEMORY[0x1E69AD230]);
    if (contextCopy)
    {
      v16 = [v15 initWithExternalizedContext:contextCopy];
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

    if (session)
    {
      v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*session];
      userSession = v14->_userSession;
      v14->_userSession = v20;
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __66__LAClient_initWithExternalizedContext_userSession_flags_context___block_invoke;
    v23[3] = &unk_1E77CBA10;
    v24 = contextCopy;
    v25 = v14;
    flagsCopy = flags;
    [(LAClient *)v25 _synchronousRemoteObjectProxy:session performCall:v23];
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

- (LAClient)initWithUUID:(id)d token:(id)token senderAuditTokenData:(id)data context:(id)context
{
  dCopy = d;
  tokenCopy = token;
  dataCopy = data;
  contextCopy = context;
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

    objc_storeStrong(&v15->_uuid, d);
    objc_storeWeak(&v15->_context, contextCopy);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __60__LAClient_initWithUUID_token_senderAuditTokenData_context___block_invoke;
    v21[3] = &unk_1E77CBA60;
    v22 = dCopy;
    v23 = v15;
    v24 = tokenCopy;
    v25 = dataCopy;
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

+ (id)createConnection:(const unsigned int *)connection legacyService:(BOOL)service
{
  serviceCopy = service;
  v23 = *MEMORY[0x1E69E9840];
  v6 = LALogForCategory();
  v7 = @"com.apple.CoreAuthentication.daemon";
  if (serviceCopy)
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
    _xpcConnection = [v10 _xpcConnection];
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
    if (connection)
    {
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*connection];
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
    if (connection)
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

- (void)_synchronousRemoteObjectProxy:(const unsigned int *)proxy performCall:(id)call
{
  callCopy = call;
  [(LAClient *)self setWillRetryOnInterruptedConnection:1];
  [(LAClient *)self _connectToServerWithRecovery:1 userSession:proxy legacyService:0];
  serverConnection = [(LAClient *)self serverConnection];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __54__LAClient__synchronousRemoteObjectProxy_performCall___block_invoke;
  v21[3] = &unk_1E77CBAD8;
  v21[4] = self;
  v8 = [serverConnection synchronousRemoteObjectProxyWithErrorHandler:v21];

  callCopy[2](callCopy, v8);
  domain = [(NSError *)self->_permanentError domain];
  v10 = *MEMORY[0x1E696A250];
  if ([domain isEqualToString:*MEMORY[0x1E696A250]])
  {
    code = [(NSError *)self->_permanentError code];

    if (code == 4097)
    {
      v12 = LALogForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [LAClient _synchronousRemoteObjectProxy:v12 performCall:?];
      }

      [(LAClient *)self _connectToServerWithRecovery:1 userSession:proxy legacyService:0];
      serverConnection2 = [(LAClient *)self serverConnection];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __54__LAClient__synchronousRemoteObjectProxy_performCall___block_invoke_48;
      v20[3] = &unk_1E77CBAD8;
      v20[4] = self;
      v14 = [serverConnection2 synchronousRemoteObjectProxyWithErrorHandler:v20];

      callCopy[2](callCopy, v14);
    }
  }

  else
  {
  }

  [(LAClient *)self setWillRetryOnInterruptedConnection:0];
  domain2 = [(NSError *)self->_permanentError domain];
  if ([domain2 isEqualToString:v10])
  {
    code2 = [(NSError *)self->_permanentError code];

    if (code2 == 4099)
    {
      [(LAClient *)self _connectToServerWithRecovery:1 userSession:proxy legacyService:1];
      serverConnection3 = [(LAClient *)self serverConnection];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __54__LAClient__synchronousRemoteObjectProxy_performCall___block_invoke_2;
      v19[3] = &unk_1E77CBAD8;
      v19[4] = self;
      v18 = [serverConnection3 synchronousRemoteObjectProxyWithErrorHandler:v19];

      callCopy[2](callCopy, v18);
      v8 = v18;
    }
  }

  else
  {
  }
}

- (void)_handleConnectionResult:(id)result uuid:(id)uuid proxyId:(id)id error:(id)error
{
  resultCopy = result;
  uuidCopy = uuid;
  idCopy = id;
  errorCopy = error;
  if (!resultCopy)
  {
    v14 = LALogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [LAClient _handleConnectionResult:? uuid:? proxyId:? error:?];
    }

    [(LAClient *)self _invalidateCachedExternalizedContextWithError:errorCopy];
  }

  [(LAClient *)self setRemoteContext:resultCopy];
  [(LAClient *)self setUuid:uuidCopy];
  [(LAClient *)self setProxyId:idCopy];
  [(LAClient *)self setPermanentError:errorCopy];
}

- (void)_invalidateCachedExternalizedContextWithError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A250]])
  {
    v5 = [errorCopy code] == 4099;
  }

  else
  {
    v5 = 0;
  }

  cachedExternalizedContext = [(LAClient *)self cachedExternalizedContext];
  [cachedExternalizedContext invalidateBecauseOfInvalidConnection:v5];
}

- (void)setRemoteContext:(id)context
{
  contextCopy = context;
  objc_storeStrong(&self->_remoteContext, context);
  if (contextCopy)
  {
    remoteContext = [(LAClient *)self remoteContext];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __29__LAClient_setRemoteContext___block_invoke;
    v10[3] = &unk_1E77CBAD8;
    v10[4] = self;
    v7 = [remoteContext synchronousRemoteObjectProxyWithErrorHandler:v10];
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

- (void)allowTransferToProcess:(int)process receiverAuditTokenData:(id)data reply:(id)reply
{
  dataCopy = data;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__LAClient_allowTransferToProcess_receiverAuditTokenData_reply___block_invoke;
  v10[3] = &unk_1E77CBB28;
  processCopy = process;
  v10[4] = self;
  v11 = dataCopy;
  v9 = dataCopy;
  [(LAClient *)self _performCallBool:v10 finally:reply];
}

void __64__LAClient_allowTransferToProcess_receiverAuditTokenData_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 synchronousRemoteContext];
  [v5 allowTransferToProcess:*(a1 + 48) receiverAuditTokenData:*(a1 + 40) reply:v4];
}

- (void)tokenForTransferToUnknownProcess:(id)process
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__LAClient_tokenForTransferToUnknownProcess___block_invoke;
  v3[3] = &unk_1E77CBB50;
  v3[4] = self;
  [(LAClient *)self _performCallId:v3 finally:process];
}

void __45__LAClient_tokenForTransferToUnknownProcess___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 synchronousRemoteContext];
  [v4 tokenForTransferToUnknownProcess:v3];
}

- (void)invalidatedWithError:(id)error
{
  errorCopy = error;
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
  v9 = errorCopy;
  v7 = errorCopy;
  dispatch_async(v6, v8);
}

- (void)invalidateWithMessage:(id)message
{
  messageCopy = message;
  objc_initWeak(&location, self);
  v5 = +[LAClient _queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__LAClient_invalidateWithMessage___block_invoke;
  block[3] = &unk_1E77CBB78;
  objc_copyWeak(&v9, &location);
  v8 = messageCopy;
  v6 = messageCopy;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __34__LAClient_invalidateWithMessage___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _serializedInvalidateWithMessage:*(a1 + 32)];
}

- (void)_serializedInvalidateWithMessage:(id)message
{
  serverConnection = self->_serverConnection;
  messageCopy = message;
  [(NSXPCConnection *)serverConnection invalidate];
  v6 = self->_serverConnection;
  self->_serverConnection = 0;

  v7 = [MEMORY[0x1E696EE88] errorWithCode:-9 message:messageCopy];

  [(LAClient *)self _setPermanentError:v7];
  v8 = [MEMORY[0x1E696EE88] errorWithCode:-10 message:@"Invalid context."];
  [(LAClient *)self setPermanentError:v8];
}

- (void)invalidateWithReply:(id)reply
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__LAClient_invalidateWithReply___block_invoke;
  v3[3] = &unk_1E77CBBA0;
  v3[4] = self;
  [(LAClient *)self _performCallBool:v3 finally:reply];
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

+ (void)_performInvalidationBlocks:(id)blocks
{
  v14 = *MEMORY[0x1E69E9840];
  blocksCopy = blocks;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [blocksCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(blocksCopy);
        }

        [*(*(&v9 + 1) + 8 * v7++) invoke];
      }

      while (v5 != v7);
      v5 = [blocksCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [blocksCopy removeAllObjects];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_checkIdResultForTCC:(id)c synchronous:(BOOL)synchronous error:(id)error retryBlock:(id)block finally:(id)finally
{
  cCopy = c;
  errorCopy = error;
  blockCopy = block;
  finallyCopy = finally;
  context = [(LAClient *)self context];
  v16 = [context description];

  if (cCopy || ![MEMORY[0x1E696EE88] error:errorCopy hasCode:-1018] || (objc_msgSend(errorCopy, "userInfo"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "objectForKeyedSubscript:", @"TCCServerPrompt"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "BOOLValue"), v18, v17, (v19 & 1) != 0))
  {
    finallyCopy[2](finallyCopy, cCopy, errorCopy);
  }

  else
  {
    userInfo = [errorCopy userInfo];
    v21 = [userInfo objectForKeyedSubscript:@"TCCService"];

    mEMORY[0x1E69AD2B8] = [MEMORY[0x1E69AD2B8] sharedInstance];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __70__LAClient__checkIdResultForTCC_synchronous_error_retryBlock_finally___block_invoke;
    v24[3] = &unk_1E77CBBC8;
    v25 = v16;
    v26 = v21;
    v28 = blockCopy;
    v29 = finallyCopy;
    v27 = errorCopy;
    v23 = v21;
    [mEMORY[0x1E69AD2B8] requestAuthorizationForService:v23 completion:v24];
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

- (void)_performSynchronous:(BOOL)synchronous callId:(id)id finally:(id)finally
{
  synchronousCopy = synchronous;
  idCopy = id;
  finallyCopy = finally;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __47__LAClient__performSynchronous_callId_finally___block_invoke;
  v18 = &unk_1E77CBC68;
  selfCopy = self;
  v10 = finallyCopy;
  v20 = v10;
  v11 = idCopy;
  v21 = v11;
  v22 = synchronousCopy;
  v12 = MEMORY[0x1AC55C260](&v15);
  v13 = [LAClient _queue:v15];
  v14 = v13;
  if (synchronousCopy)
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

- (BOOL)_setPermanentError:(id)error
{
  errorCopy = error;
  if (([MEMORY[0x1E696EE88] error:errorCopy hasCode:-9] & 1) == 0)
  {
    v5 = LALogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [LAClient _setPermanentError:?];
    }
  }

  permanentError = [(LAClient *)self permanentError];

  if (!permanentError)
  {
    cachedExternalizedContext = [(LAClient *)self cachedExternalizedContext];
    v7CachedExternalizedContext = [cachedExternalizedContext cachedExternalizedContext];
    [(LAClient *)self setExistingContext:v7CachedExternalizedContext];

    [(LAClient *)self _invalidateCachedExternalizedContextWithError:errorCopy];
    [(LAClient *)self setRemoteContext:0];
    [(LAClient *)self setPermanentError:errorCopy];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    invalidations = [(LAClient *)selfCopy invalidations];
    [LAClient _performInvalidationBlocks:invalidations];

    objc_sync_exit(selfCopy);
  }

  return permanentError == 0;
}

- (id)_updateOptions:(id)options
{
  optionsCopy = options;
  v4 = [optionsCopy objectForKeyedSubscript:&unk_1F1A6FC38];
  v5 = optionsCopy;
  if (v4)
  {
    v5 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:optionsCopy];
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

- (void)evaluatePolicy:(int64_t)policy options:(id)options reply:(id)reply
{
  replyCopy = reply;
  optionsCopy = options;
  uiDelegate = [(LAClient *)self uiDelegate];
  [(LAClient *)self evaluatePolicy:policy options:optionsCopy uiDelegate:uiDelegate reply:replyCopy];
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

- (void)evaluateACL:(id)l operation:(id)operation options:(id)options reply:(id)reply
{
  replyCopy = reply;
  optionsCopy = options;
  operationCopy = operation;
  lCopy = l;
  uiDelegate = [(LAClient *)self uiDelegate];
  [(LAClient *)self evaluateACL:lCopy operation:operationCopy options:optionsCopy uiDelegate:uiDelegate reply:replyCopy];
}

- (void)evaluateACL:(id)l operation:(id)operation options:(id)options uiDelegate:(id)delegate synchronous:(BOOL)synchronous reply:(id)reply
{
  synchronousCopy = synchronous;
  lCopy = l;
  operationCopy = operation;
  replyCopy = reply;
  delegateCopy = delegate;
  v17 = [(LAClient *)self _updateOptions:options];
  v18 = MEMORY[0x1E696EE88];
  v19 = [MEMORY[0x1E69AD298] checkOptions:v17];
  [v18 raiseExceptionOnError:v19];

  v20 = MEMORY[0x1E696EE88];
  v21 = [MEMORY[0x1E69AD298] checkACL:lCopy];
  [v20 raiseExceptionOnError:v21];

  v22 = [(LAClient *)self _resolveUIDelegateFromDelegate:delegateCopy];

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __71__LAClient_evaluateACL_operation_options_uiDelegate_synchronous_reply___block_invoke;
  v28[3] = &unk_1E77CBDF8;
  v28[4] = self;
  v29 = lCopy;
  v30 = operationCopy;
  v31 = v17;
  v32 = v22;
  v33 = synchronousCopy;
  v23 = v22;
  v24 = v17;
  v25 = operationCopy;
  v26 = lCopy;
  [(LAClient *)self _performSynchronous:synchronousCopy callId:v28 finally:replyCopy];
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

- (void)failProcessedEvent:(int64_t)event failureError:(id)error reply:(id)reply
{
  errorCopy = error;
  v9 = MEMORY[0x1E696EE88];
  v10 = MEMORY[0x1E69AD298];
  replyCopy = reply;
  v12 = [v10 checkEvent:event];
  [v9 raiseExceptionOnError:v12];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __50__LAClient_failProcessedEvent_failureError_reply___block_invoke;
  v14[3] = &unk_1E77CBE20;
  v15 = errorCopy;
  eventCopy = event;
  v14[4] = self;
  v13 = errorCopy;
  [(LAClient *)self _performCallBool:v14 finally:replyCopy];
}

void __50__LAClient_failProcessedEvent_failureError_reply___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 synchronousRemoteContext];
  [v5 failProcessedEvent:a1[6] failureError:a1[5] reply:v4];
}

- (void)retryProcessedEvent:(int64_t)event reply:(id)reply
{
  v6 = MEMORY[0x1E696EE88];
  v7 = MEMORY[0x1E69AD298];
  replyCopy = reply;
  v9 = [v7 checkEvent:event];
  [v6 raiseExceptionOnError:v9];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38__LAClient_retryProcessedEvent_reply___block_invoke;
  v10[3] = &unk_1E77CBE48;
  v10[4] = self;
  v10[5] = event;
  [(LAClient *)self _performCallBool:v10 finally:replyCopy];
}

void __38__LAClient_retryProcessedEvent_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 synchronousRemoteContext];
  [v5 retryProcessedEvent:*(a1 + 40) reply:v4];
}

- (void)resetProcessedEvent:(int64_t)event reply:(id)reply
{
  v6 = MEMORY[0x1E696EE88];
  v7 = MEMORY[0x1E69AD298];
  replyCopy = reply;
  v9 = [v7 checkEvent:event];
  [v6 raiseExceptionOnError:v9];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38__LAClient_resetProcessedEvent_reply___block_invoke;
  v10[3] = &unk_1E77CBE48;
  v10[4] = self;
  v10[5] = event;
  [(LAClient *)self _performCallBool:v10 finally:replyCopy];
}

void __38__LAClient_resetProcessedEvent_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 synchronousRemoteContext];
  [v5 resetProcessedEvent:*(a1 + 40) reply:v4];
}

- (void)pauseProcessedEvent:(int64_t)event pause:(BOOL)pause reply:(id)reply
{
  v8 = MEMORY[0x1E696EE88];
  v9 = MEMORY[0x1E69AD298];
  replyCopy = reply;
  v11 = [v9 checkEvent:event];
  [v8 raiseExceptionOnError:v11];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __44__LAClient_pauseProcessedEvent_pause_reply___block_invoke;
  v12[3] = &unk_1E77CBE70;
  v12[4] = self;
  v12[5] = event;
  pauseCopy = pause;
  [(LAClient *)self _performCallBool:v12 finally:replyCopy];
}

void __44__LAClient_pauseProcessedEvent_pause_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 synchronousRemoteContext];
  [v5 pauseProcessedEvent:*(a1 + 40) pause:*(a1 + 48) reply:v4];
}

- (void)setCredential:(id)credential forProcessedEvent:(int64_t)event credentialType:(int64_t)type reply:(id)reply
{
  credentialCopy = credential;
  v11 = MEMORY[0x1E696EE88];
  v12 = MEMORY[0x1E69AD298];
  replyCopy = reply;
  v14 = [v12 checkEvent:event];
  [v11 raiseExceptionOnError:v14];

  v15 = MEMORY[0x1E696EE88];
  v16 = [MEMORY[0x1E69AD298] checkCredentialType:type];
  [v15 raiseExceptionOnError:v16];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65__LAClient_setCredential_forProcessedEvent_credentialType_reply___block_invoke;
  v18[3] = &unk_1E77CBE98;
  v18[4] = self;
  v19 = credentialCopy;
  eventCopy = event;
  typeCopy = type;
  v17 = credentialCopy;
  [(LAClient *)self _performCallBool:v18 finally:replyCopy];
}

void __65__LAClient_setCredential_forProcessedEvent_credentialType_reply___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 synchronousRemoteContext];
  [v5 setCredential:a1[5] forProcessedEvent:a1[6] credentialType:a1[7] reply:v4];
}

- (void)isCredentialSet:(int64_t)set reply:(id)reply
{
  v6 = MEMORY[0x1E696EE88];
  v7 = MEMORY[0x1E69AD298];
  replyCopy = reply;
  v9 = [v7 checkCredentialType:set];
  [v6 raiseExceptionOnError:v9];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __34__LAClient_isCredentialSet_reply___block_invoke;
  v10[3] = &unk_1E77CBE48;
  v10[4] = self;
  v10[5] = set;
  [(LAClient *)self _performCallBool:v10 finally:replyCopy];
}

void __34__LAClient_isCredentialSet_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 synchronousRemoteContext];
  [v5 isCredentialSet:*(a1 + 40) reply:v4];
}

- (void)setCredential:(id)credential type:(int64_t)type options:(id)options reply:(id)reply
{
  credentialCopy = credential;
  replyCopy = reply;
  v12 = [(LAClient *)self _updateOptions:options];
  v13 = MEMORY[0x1E696EE88];
  v14 = [MEMORY[0x1E69AD298] checkOptions:v12];
  [v13 raiseExceptionOnError:v14];

  v15 = MEMORY[0x1E696EE88];
  v16 = [MEMORY[0x1E69AD298] checkCredentialType:type];
  [v15 raiseExceptionOnError:v16];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __45__LAClient_setCredential_type_options_reply___block_invoke;
  v19[3] = &unk_1E77CBEC0;
  v19[4] = self;
  v20 = credentialCopy;
  v21 = v12;
  typeCopy = type;
  v17 = v12;
  v18 = credentialCopy;
  [(LAClient *)self _performCallBool:v19 finally:replyCopy];
}

void __45__LAClient_setCredential_type_options_reply___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 synchronousRemoteContext];
  [v5 setCredential:a1[5] type:a1[7] options:a1[6] reply:v4];
}

- (void)credentialOfType:(int64_t)type reply:(id)reply
{
  v6 = MEMORY[0x1E696EE88];
  v7 = MEMORY[0x1E69AD298];
  replyCopy = reply;
  v9 = [v7 checkCredentialType:type];
  [v6 raiseExceptionOnError:v9];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __35__LAClient_credentialOfType_reply___block_invoke;
  v10[3] = &unk_1E77CBEE8;
  v10[4] = self;
  v10[5] = type;
  [(LAClient *)self _performCallId:v10 finally:replyCopy];
}

void __35__LAClient_credentialOfType_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 synchronousRemoteContext];
  [v5 credentialOfType:*(a1 + 40) reply:v4];
}

- (void)credentialsUUIDWithReply:(id)reply
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __37__LAClient_credentialsUUIDWithReply___block_invoke;
  v3[3] = &unk_1E77CBB50;
  v3[4] = self;
  [(LAClient *)self _performCallId:v3 finally:reply];
}

void __37__LAClient_credentialsUUIDWithReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 synchronousRemoteContext];
  [v4 credentialsUUIDWithReply:v3];
}

- (void)setCredentialsUUID:(id)d reply:(id)reply
{
  dCopy = d;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__LAClient_setCredentialsUUID_reply___block_invoke;
  v8[3] = &unk_1E77CBF10;
  v8[4] = self;
  v9 = dCopy;
  v7 = dCopy;
  [(LAClient *)self _performCallBool:v8 finally:reply];
}

void __37__LAClient_setCredentialsUUID_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 synchronousRemoteContext];
  [v5 setCredentialsUUID:*(a1 + 40) reply:v4];
}

- (void)credentialEncodingSeedWithReply:(id)reply
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__LAClient_credentialEncodingSeedWithReply___block_invoke;
  v3[3] = &unk_1E77CBB50;
  v3[4] = self;
  [(LAClient *)self _performCallId:v3 finally:reply];
}

void __44__LAClient_credentialEncodingSeedWithReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 synchronousRemoteContext];
  [v4 credentialEncodingSeedWithReply:v3];
}

- (void)setOptions:(id)options forInternalOperation:(int64_t)operation reply:(id)reply
{
  optionsCopy = options;
  v9 = MEMORY[0x1E696EE88];
  v10 = MEMORY[0x1E69AD298];
  replyCopy = reply;
  v12 = [v10 checkInternalOperation:operation options:optionsCopy];
  [v9 raiseExceptionOnError:v12];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __50__LAClient_setOptions_forInternalOperation_reply___block_invoke;
  v14[3] = &unk_1E77CBE20;
  v14[4] = self;
  v15 = optionsCopy;
  operationCopy = operation;
  v13 = optionsCopy;
  [(LAClient *)self _performCallBool:v14 finally:replyCopy];
}

void __50__LAClient_setOptions_forInternalOperation_reply___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 synchronousRemoteContext];
  [v5 setOptions:a1[5] forInternalOperation:a1[6] reply:v4];
}

- (void)optionsForInternalOperation:(int64_t)operation reply:(id)reply
{
  v6 = MEMORY[0x1E696EE88];
  v7 = MEMORY[0x1E69AD298];
  replyCopy = reply;
  v9 = [v7 checkInternalOperation:operation options:0];
  [v6 raiseExceptionOnError:v9];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__LAClient_optionsForInternalOperation_reply___block_invoke;
  v10[3] = &unk_1E77CBEE8;
  v10[4] = self;
  v10[5] = operation;
  [(LAClient *)self _performCallId:v10 finally:replyCopy];
}

void __46__LAClient_optionsForInternalOperation_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 synchronousRemoteContext];
  [v5 optionsForInternalOperation:*(a1 + 40) reply:v4];
}

- (void)verifyFileVaultUser:(id)user volumeUuid:(id)uuid options:(unint64_t)options reply:(id)reply
{
  userCopy = user;
  uuidCopy = uuid;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57__LAClient_verifyFileVaultUser_volumeUuid_options_reply___block_invoke;
  v14[3] = &unk_1E77CBEC0;
  v14[4] = self;
  v15 = userCopy;
  v16 = uuidCopy;
  optionsCopy = options;
  v12 = uuidCopy;
  v13 = userCopy;
  [(LAClient *)self _performCallBool:v14 finally:reply];
}

void __57__LAClient_verifyFileVaultUser_volumeUuid_options_reply___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 synchronousRemoteContext];
  [v5 verifyFileVaultUser:a1[5] volumeUuid:a1[6] options:a1[7] reply:v4];
}

- (void)serverPropertyForOption:(int64_t)option reply:(id)reply
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__LAClient_serverPropertyForOption_reply___block_invoke;
  v4[3] = &unk_1E77CBEE8;
  v4[4] = self;
  v4[5] = option;
  [(LAClient *)self _performCallId:v4 finally:reply];
}

void __42__LAClient_serverPropertyForOption_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 synchronousRemoteContext];
  [v5 serverPropertyForOption:*(a1 + 40) reply:v4];
}

- (void)setServerPropertyForOption:(int64_t)option value:(id)value reply:(id)reply
{
  valueCopy = value;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__LAClient_setServerPropertyForOption_value_reply___block_invoke;
  v10[3] = &unk_1E77CBE20;
  v11 = valueCopy;
  optionCopy = option;
  v10[4] = self;
  v9 = valueCopy;
  [(LAClient *)self _performCallBool:v10 finally:reply];
}

void __51__LAClient_setServerPropertyForOption_value_reply___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 synchronousRemoteContext];
  [v5 setServerPropertyForOption:a1[6] value:a1[5] reply:v4];
}

- (id)serverPropertyForOption:(int64_t)option error:(id *)error
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
  [(LAClient *)self serverPropertyForOption:option reply:v7];
  if (error)
  {
    *error = v9[5];
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

- (BOOL)setServerPropertyForOption:(int64_t)option value:(id)value error:(id *)error
{
  valueCopy = value;
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
  [(LAClient *)self setServerPropertyForOption:option value:valueCopy reply:v11];
  if (error)
  {
    *error = v13[5];
  }

  v9 = *(v19 + 24);
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  return v9;
}

- (void)externalizedContextWithReply:(id)reply
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__LAClient_externalizedContextWithReply___block_invoke;
  v3[3] = &unk_1E77CBB50;
  v3[4] = self;
  [(LAClient *)self _performCallId:v3 finally:reply];
}

void __41__LAClient_externalizedContextWithReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 synchronousRemoteContext];
  [v4 externalizedContextWithReply:v3];
}

- (id)synchronousExternalizedContextWithError:(id *)error
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
  if (error)
  {
    *error = v9[5];
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

- (void)authMethodWithReply:(id)reply
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__LAClient_authMethodWithReply___block_invoke;
  v3[3] = &unk_1E77CBB50;
  v3[4] = self;
  [(LAClient *)self _performCallId:v3 finally:reply];
}

void __32__LAClient_authMethodWithReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 synchronousRemoteContext];
  [v4 authMethodWithReply:v3];
}

- (void)prearmTouchIdWithReply:(id)reply
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35__LAClient_prearmTouchIdWithReply___block_invoke;
  v3[3] = &unk_1E77CBB50;
  v3[4] = self;
  [(LAClient *)self _performCallId:v3 finally:reply];
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

- (void)resetWithReply:(id)reply
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __27__LAClient_resetWithReply___block_invoke;
  v3[3] = &unk_1E77CBBA0;
  v3[4] = self;
  [(LAClient *)self _performCallBool:v3 finally:reply];
}

void __27__LAClient_resetWithReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 synchronousRemoteContext];
  [v4 resetProcessedEvent:0 reply:v3];
}

- (void)notifyEvent:(int64_t)event options:(id)options reply:(id)reply
{
  optionsCopy = options;
  replyCopy = reply;
  [(LAClient *)self _connectToServerWithRecovery:0 userSession:0 legacyService:0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __38__LAClient_notifyEvent_options_reply___block_invoke;
  v11[3] = &unk_1E77CBE20;
  v12 = optionsCopy;
  eventCopy = event;
  v11[4] = self;
  v10 = optionsCopy;
  [(LAClient *)self _performSynchronous:0 callBool:v11 finally:replyCopy];
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

- (void)setShowingCoachingHint:(BOOL)hint event:(int64_t)event reply:(id)reply
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__LAClient_setShowingCoachingHint_event_reply___block_invoke;
  v5[3] = &unk_1E77CBE70;
  hintCopy = hint;
  v5[4] = self;
  v5[5] = event;
  [(LAClient *)self _performCallBool:v5 finally:reply];
}

void __47__LAClient_setShowingCoachingHint_event_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 synchronousRemoteContext];
  [v5 setShowingCoachingHint:*(a1 + 48) event:*(a1 + 40) reply:v4];
}

- (void)bootstrapServiceType:(id)type completionHandler:(id)handler
{
  handlerCopy = handler;
  typeCopy = type;
  serverConnection = [(LAClient *)self serverConnection];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __51__LAClient_bootstrapServiceType_completionHandler___block_invoke;
  v18 = &unk_1E77CBFB0;
  v19 = handlerCopy;
  v9 = handlerCopy;
  v10 = [serverConnection synchronousRemoteObjectProxyWithErrorHandler:&v15];
  v11 = MEMORY[0x1E696AEC0];
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processIdentifier = [processInfo processIdentifier];
  v14 = [v11 stringWithFormat:@"%d", processIdentifier, v15, v16, v17, v18];
  [v10 bootstrapSessionServiceType:typeCopy serviceClientID:v14 completionHandler:v9];
}

- (id)_resolveUIDelegateFromDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (![MEMORY[0x1E69AD280] releaseUIDelegate])
  {
    v4 = delegateCopy;
    goto LABEL_5;
  }

  if (delegateCopy)
  {
    v4 = [(LACWeakBox *)[LAUIDelegateWeakBox alloc] initWithReceiver:delegateCopy];
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