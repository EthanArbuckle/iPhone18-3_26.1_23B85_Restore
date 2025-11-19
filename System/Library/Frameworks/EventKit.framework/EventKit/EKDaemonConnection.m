@interface EKDaemonConnection
+ (EKDaemonConnection)preferredAvailableDaemonConnection;
+ (id)anyAvailableDaemonConnection;
+ (id)sharedQueue;
+ (void)addLivingDaemonConnection:(id)a3;
+ (void)setPreferredAvailableDaemonConnection:(id)a3;
- (BOOL)_connectToServer;
- (BOOL)shouldValidateObjectIDs;
- (CADInterface)CADOperationProxy;
- (CADInterface)CADOperationProxySync;
- (EKDaemonConnection)initWithConnectionFactory:(id)a3;
- (EKDaemonConnectionDelegate)delegate;
- (int)databaseRestoreGeneration;
- (int)eventAccessLevel;
- (int64_t)eventAuthorization;
- (int64_t)remindersAuthorization;
- (unsigned)addCancellableRemoteOperation:(id)a3;
- (void)CADClientReceiveDatabaseIntegrityErrors:(id)a3;
- (void)_createConnectionAndOperationProxyIfNeeded;
- (void)_daemonRestarted;
- (void)_eventAuthorization:(int64_t *)a3 remindersAuthorization:(int64_t *)a4;
- (void)_finishAllRepliesOnServerDeath;
- (void)cancelRemoteOperation:(unsigned int)a3;
- (void)clearCachedAuthStatus;
- (void)databaseRestoreGenerationChangedByThisClient:(int)a3;
- (void)dealloc;
- (void)disconnect;
- (void)removeCancellableRemoteOperation:(unsigned int)a3;
- (void)setInitializationOptions:(id)a3;
@end

@implementation EKDaemonConnection

- (int)eventAccessLevel
{
  v2 = [(EKDaemonConnection *)self eventAuthorization];

  return MEMORY[0x1EEDF1DA8](v2);
}

- (int64_t)eventAuthorization
{
  v3 = 0;
  [(EKDaemonConnection *)self _eventAuthorization:&v3 remindersAuthorization:0];
  return v3;
}

- (void)_createConnectionAndOperationProxyIfNeeded
{
  if (!self->_xpcConnection && [(EKDaemonConnection *)self _connectToServer]&& !self->_registeredForStartNote)
  {
    [MEMORY[0x1E6992F98] addObserver:self selector:sel__daemonRestarted name:*MEMORY[0x1E6992420]];
    self->_registeredForStartNote = 1;
  }
}

void __43__EKDaemonConnection_CADOperationProxySync__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _createConnectionAndOperationProxyIfNeeded];
  v2 = *(*(a1 + 32) + 40);
  v3 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v3, v2);
}

- (CADInterface)CADOperationProxySync
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  connectionLock = self->_connectionLock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__EKDaemonConnection_CADOperationProxySync__block_invoke;
  v5[3] = &unk_1E77FD440;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(connectionLock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)shouldValidateObjectIDs
{
  os_unfair_lock_lock(&self->_internalStateLock);
  databaseRestoreGenerationHasEverChangedSignificantly = self->_databaseRestoreGenerationHasEverChangedSignificantly;
  os_unfair_lock_unlock(&self->_internalStateLock);
  return databaseRestoreGenerationHasEverChangedSignificantly;
}

- (void)clearCachedAuthStatus
{
  os_unfair_lock_lock(&self->_internalStateLock);
  self->_accessDetermined = 0;

  os_unfair_lock_unlock(&self->_internalStateLock);
}

- (BOOL)_connectToServer
{
  if (!self->_xpcConnection && !self->_wasAbortedDueToExcessiveConnections)
  {
    objc_initWeak(&location, self);
    connectionFactory = self->_connectionFactory;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __38__EKDaemonConnection__connectToServer__block_invoke;
    v16[3] = &unk_1E77FD3F0;
    objc_copyWeak(&v17, &location);
    v4 = [(EKXPCConnectionFactory *)connectionFactory tryNewConnectionWithExportedObject:self interruptionHandler:v16];
    xpcConnection = self->_xpcConnection;
    self->_xpcConnection = v4;

    v6 = [(EKDaemonConnection *)self initializationOptions];
    v7 = v6;
    if (!self->_xpcConnection)
    {
      self->_wasAbortedDueToExcessiveConnections = 1;
      if ([v6 unitTesting])
      {
        v8 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v8 = OS_LOG_TYPE_FAULT;
      }

      v9 = EKLogHandle;
      if (os_log_type_enabled(EKLogHandle, v8))
      {
        *v15 = 0;
        _os_log_impl(&dword_1A805E000, v9, v8, "Client tried to open too many connections to calaccessd. Refusing to open another", v15, 2u);
      }
    }

    v10 = [objc_alloc(MEMORY[0x1E69923F8]) initWithXPCConnection:self->_xpcConnection protocol:&unk_1F1BAA200 synchronous:0];
    remoteOperationProxy = self->_remoteOperationProxy;
    self->_remoteOperationProxy = v10;

    v12 = [objc_alloc(MEMORY[0x1E69923F8]) initWithXPCConnection:self->_xpcConnection protocol:&unk_1F1BAA200 synchronous:1];
    syncRemoteOperationProxy = self->_syncRemoteOperationProxy;
    self->_syncRemoteOperationProxy = v12;

    [(CADInterface *)self->_remoteOperationProxy setDelegate:self];
    [(CADInterface *)self->_syncRemoteOperationProxy setDelegate:self];
    [(CADInterface *)self->_remoteOperationProxy setInitializationOptions:v7];
    [(CADInterface *)self->_syncRemoteOperationProxy setInitializationOptions:v7];
    [(CADXPCConnection *)self->_xpcConnection resume];
    [(EKDaemonConnection *)self setHasEverConnected:1];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return 1;
}

- (int64_t)remindersAuthorization
{
  v3 = 0;
  [(EKDaemonConnection *)self _eventAuthorization:0 remindersAuthorization:&v3];
  return v3;
}

- (void)disconnect
{
  [MEMORY[0x1E6992F98] removeObserver:self name:*MEMORY[0x1E6992420]];
  replyHandlerLock = self->_replyHandlerLock;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__EKDaemonConnection_disconnect__block_invoke;
  block[3] = &unk_1E77FD418;
  block[4] = self;
  dispatch_sync(replyHandlerLock, block);
  connectionLock = self->_connectionLock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__EKDaemonConnection_disconnect__block_invoke_2;
  v5[3] = &unk_1E77FD418;
  v5[4] = self;
  dispatch_sync(connectionLock, v5);
}

void __32__EKDaemonConnection_disconnect__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 56);
  *(v1 + 56) = 0;
}

void __32__EKDaemonConnection_disconnect__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    [v3 invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = 0;

    v2 = *(a1 + 32);
  }

  v6 = *(v2 + 32);
  *(v2 + 32) = 0;
}

- (void)dealloc
{
  [(EKDaemonConnection *)self disconnect];
  v3.receiver = self;
  v3.super_class = EKDaemonConnection;
  [(EKDaemonConnection *)&v3 dealloc];
}

- (int)databaseRestoreGeneration
{
  os_unfair_lock_lock(&self->_internalStateLock);
  databaseRestoreGeneration = self->_databaseRestoreGeneration;
  os_unfair_lock_unlock(&self->_internalStateLock);
  return databaseRestoreGeneration;
}

+ (id)anyAvailableDaemonConnection
{
  v2 = [a1 preferredAvailableDaemonConnection];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    os_unfair_lock_lock(&livingConnectionLock);
    v4 = [storedWeakReferenceDaemonConnection anyObject];
    os_unfair_lock_unlock(&livingConnectionLock);
  }

  return v4;
}

+ (EKDaemonConnection)preferredAvailableDaemonConnection
{
  os_unfair_lock_lock(&livingConnectionLock);
  WeakRetained = objc_loadWeakRetained(&_preferredAvailableDaemonConnection);
  os_unfair_lock_unlock(&livingConnectionLock);

  return WeakRetained;
}

- (CADInterface)CADOperationProxy
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  connectionLock = self->_connectionLock;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__EKDaemonConnection_CADOperationProxy__block_invoke;
  v5[3] = &unk_1E77FD440;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(connectionLock, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __39__EKDaemonConnection_CADOperationProxy__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _createConnectionAndOperationProxyIfNeeded];
  v2 = *(*(a1 + 32) + 32);
  v3 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v3, v2);
}

- (EKDaemonConnection)initWithConnectionFactory:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = EKDaemonConnection;
  v6 = [(EKDaemonConnection *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connectionFactory, a3);
    objc_opt_class();
    v7->_nextCancellationToken = 1;
    v8 = CalGenerateQualifiedIdentifierWithClassAndSubdomain();
    v9 = [v8 UTF8String];

    v10 = dispatch_queue_create(v9, 0);
    connectionLock = v7->_connectionLock;
    v7->_connectionLock = v10;

    v12 = CalGenerateQualifiedIdentifierWithClassAndSubdomain();
    v13 = [v12 UTF8String];

    v14 = dispatch_queue_create(v13, 0);
    replyHandlerLock = v7->_replyHandlerLock;
    v7->_replyHandlerLock = v14;

    v7->_databaseRestoreGeneration = -1;
    v7->_internalStateLock._os_unfair_lock_opaque = 0;
    [EKDaemonConnection addLivingDaemonConnection:v7];
  }

  return v7;
}

void __38__EKDaemonConnection__connectToServer__block_invoke(uint64_t a1)
{
  v2 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    __38__EKDaemonConnection__connectToServer__block_invoke_cold_1(v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _finishAllRepliesOnServerDeath];
  }
}

+ (void)setPreferredAvailableDaemonConnection:(id)a3
{
  v3 = a3;
  os_unfair_lock_lock(&livingConnectionLock);
  objc_storeWeak(&_preferredAvailableDaemonConnection, v3);

  os_unfair_lock_unlock(&livingConnectionLock);
}

+ (void)addLivingDaemonConnection:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&livingConnectionLock);
  v3 = storedWeakReferenceDaemonConnection;
  if (!storedWeakReferenceDaemonConnection)
  {
    v4 = [MEMORY[0x1E696AC70] hashTableWithOptions:5];
    v5 = storedWeakReferenceDaemonConnection;
    storedWeakReferenceDaemonConnection = v4;

    v3 = storedWeakReferenceDaemonConnection;
  }

  [v3 addObject:v6];
  os_unfair_lock_unlock(&livingConnectionLock);
}

+ (id)sharedQueue
{
  if (sharedQueue_onceToken != -1)
  {
    +[EKDaemonConnection sharedQueue];
  }

  v3 = sharedQueue_sharedQueue;

  return v3;
}

void __33__EKDaemonConnection_sharedQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("EventKitClientConnectionQ", v2);
  v1 = sharedQueue_sharedQueue;
  sharedQueue_sharedQueue = v0;
}

- (void)_daemonRestarted
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained daemonRestarted];
    WeakRetained = v3;
  }
}

- (void)setInitializationOptions:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  connectionLock = self->_connectionLock;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__EKDaemonConnection_setInitializationOptions___block_invoke;
  block[3] = &unk_1E77FD468;
  block[4] = self;
  v6 = v4;
  v11 = v6;
  v12 = &v13;
  dispatch_sync(connectionLock, block);
  if (*(v14 + 24) == 1)
  {
    v7 = [(EKDaemonConnection *)self CADOperationProxy];
    initializationOptions = self->_initializationOptions;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __47__EKDaemonConnection_setInitializationOptions___block_invoke_2;
    v9[3] = &unk_1E77FD490;
    v9[4] = self;
    [v7 CADDatabaseSetInitializationOptions:initializationOptions reply:v9];
  }

  [(EKDaemonConnection *)self clearCachedAuthStatus];

  _Block_object_dispose(&v13, 8);
}

void __47__EKDaemonConnection_setInitializationOptions___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 112), *(a1 + 40));
  if (*(*(a1 + 32) + 32))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    [*(*(a1 + 32) + 32) setInitializationOptions:*(a1 + 40)];
    v2 = *(a1 + 40);
    v3 = *(*(a1 + 32) + 40);

    [v3 setInitializationOptions:v2];
  }
}

void __47__EKDaemonConnection_setInitializationOptions___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      __47__EKDaemonConnection_setInitializationOptions___block_invoke_2_cold_1(v4, a2);
    }
  }

  else
  {
    v5 = *(a1 + 32);

    [v5 setDatabaseRestoreGeneration:?];
  }
}

- (void)databaseRestoreGenerationChangedByThisClient:(int)a3
{
  os_unfair_lock_lock(&self->_internalStateLock);
  self->_databaseRestoreGeneration = a3;
  self->_databaseRestoreGenerationHasEverChangedSignificantly = 1;

  os_unfair_lock_unlock(&self->_internalStateLock);
}

- (unsigned)addCancellableRemoteOperation:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  replyHandlerLock = self->_replyHandlerLock;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__EKDaemonConnection_addCancellableRemoteOperation___block_invoke;
  block[3] = &unk_1E77FD4B8;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(replyHandlerLock, block);
  LODWORD(replyHandlerLock) = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return replyHandlerLock;
}

void __52__EKDaemonConnection_addCancellableRemoteOperation___block_invoke(void *a1)
{
  v2 = a1[4];
  if (!*(v2 + 56))
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    v4 = a1[4];
    v5 = *(v4 + 56);
    *(v4 + 56) = v3;

    v2 = a1[4];
  }

  v6 = *(v2 + 64);
  *(v2 + 64) = v6 + 1;
  *(*(a1[6] + 8) + 24) = v6;
  v7 = a1[5];
  v8 = *(a1[4] + 56);
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(*(a1[6] + 8) + 24)];
  [v8 setObject:v7 forKey:v9];
}

- (void)removeCancellableRemoteOperation:(unsigned int)a3
{
  replyHandlerLock = self->_replyHandlerLock;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__EKDaemonConnection_removeCancellableRemoteOperation___block_invoke;
  v4[3] = &unk_1E77FD4E0;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(replyHandlerLock, v4);
}

void __55__EKDaemonConnection_removeCancellableRemoteOperation___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 56);
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 40)];
  [v1 removeObjectForKey:v2];
}

- (void)cancelRemoteOperation:(unsigned int)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  replyHandlerLock = self->_replyHandlerLock;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__EKDaemonConnection_cancelRemoteOperation___block_invoke;
  block[3] = &unk_1E77FD508;
  block[4] = self;
  block[5] = &v6;
  v5 = a3;
  dispatch_sync(replyHandlerLock, block);
  [v7[5] cancel];
  _Block_object_dispose(&v6, 8);
}

void __44__EKDaemonConnection_cancelRemoteOperation___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 48)];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = *(*(a1 + 32) + 56);
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 48)];
  [v7 removeObjectForKey:v8];
}

- (void)_finishAllRepliesOnServerDeath
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  replyHandlerLock = self->_replyHandlerLock;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__EKDaemonConnection__finishAllRepliesOnServerDeath__block_invoke;
  block[3] = &unk_1E77FD530;
  block[4] = self;
  block[5] = &v6;
  dispatch_sync(replyHandlerLock, block);
  if ([v7[5] count])
  {
    v3 = +[EKDaemonConnection sharedQueue];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __52__EKDaemonConnection__finishAllRepliesOnServerDeath__block_invoke_2;
    v4[3] = &unk_1E77FCFD8;
    v4[4] = &v6;
    dispatch_async(v3, v4);
  }

  _Block_object_dispose(&v6, 8);
}

uint64_t __52__EKDaemonConnection__finishAllRepliesOnServerDeath__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 32) + 56);

  return [v5 removeAllObjects];
}

void __52__EKDaemonConnection__finishAllRepliesOnServerDeath__block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    __52__EKDaemonConnection__finishAllRepliesOnServerDeath__block_invoke_2_cold_1(a1, v2);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(*(a1 + 32) + 8) + 40) objectForKey:{*(*(&v11 + 1) + 8 * v7), v11}];
        if (objc_opt_respondsToSelector())
        {
          [v8 disconnected];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = EKLogHandle;
  if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    __52__EKDaemonConnection__finishAllRepliesOnServerDeath__block_invoke_2_cold_2(v9);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __70__EKDaemonConnection_operationForToken_respondingToSelector_finished___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 56);
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 48)];
  v3 = [v2 objectForKeyedSubscript:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)CADClientReceiveDatabaseIntegrityErrors:(id)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = EKLogHandle;
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
    {
      [(EKDaemonConnection *)v4 CADClientReceiveDatabaseIntegrityErrors:v5];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    v10 = @"integrityErrors";
    v11[0] = v4;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [v7 postNotificationName:@"EKEventStoreIntegrityErrorsFoundNotification" object:WeakRetained userInfo:v8];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_eventAuthorization:(int64_t *)a3 remindersAuthorization:(int64_t *)a4
{
  os_unfair_lock_lock(&self->_internalStateLock);
  if (self->_accessDetermined)
  {
    if (a3)
    {
      *a3 = self->_eventAuthorization;
    }

    if (a4)
    {
      *a4 = self->_remindersAuthorization;
    }

    os_unfair_lock_unlock(&self->_internalStateLock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_internalStateLock);
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v7 = [(EKDaemonConnection *)self CADOperationProxySync];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __65__EKDaemonConnection__eventAuthorization_remindersAuthorization___block_invoke;
    v8[3] = &unk_1E77FD5A8;
    v8[4] = &v9;
    v8[5] = &v17;
    v8[6] = &v13;
    [v7 CADDatabaseGetAccess:v8];

    if (v10[3])
    {
      os_unfair_lock_lock(&self->_internalStateLock);
      self->_accessDetermined = 1;
      self->_eventAuthorization = v18[3];
      self->_remindersAuthorization = v14[3];
      os_unfair_lock_unlock(&self->_internalStateLock);
      if (a3)
      {
        *a3 = v18[3];
      }

      if (a4)
      {
        *a4 = v14[3];
      }
    }

    _Block_object_dispose(&v9, 8);
    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v17, 8);
  }
}

void __65__EKDaemonConnection__eventAuthorization_remindersAuthorization___block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  *(*(a1[4] + 8) + 24) = a2 == 0;
  *(*(a1[5] + 8) + 24) = a3;
  *(*(a1[6] + 8) + 24) = a4;
  v4 = EKLogHandle;
  if (*(*(a1[4] + 8) + 24))
  {
    if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_INFO))
    {
      v6 = *(*(a1[5] + 8) + 24);
      v7 = *(*(a1[6] + 8) + 24);
      v10[0] = 67109376;
      v10[1] = v6;
      v11 = 1024;
      v12 = v7;
      _os_log_impl(&dword_1A805E000, v4, OS_LOG_TYPE_INFO, "Loaded access. eventAuth = %d, remindersAuth = %d", v10, 0xEu);
    }
  }

  else if (os_log_type_enabled(EKLogHandle, OS_LOG_TYPE_ERROR))
  {
    __65__EKDaemonConnection__eventAuthorization_remindersAuthorization___block_invoke_cold_1(v4, a2);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (EKDaemonConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __47__EKDaemonConnection_setInitializationOptions___block_invoke_2_cold_1(void *a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v4 = a1;
  v5 = [v3 errorWithCADResult:a2];
  OUTLINED_FUNCTION_0_1(&dword_1A805E000, v6, v7, "Error setting initialization options: %@", v8, v9, v10, v11, 2u);

  v12 = *MEMORY[0x1E69E9840];
}

void __52__EKDaemonConnection__finishAllRepliesOnServerDeath__block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = a2;
  v5[0] = 67109120;
  v5[1] = [v2 count];
  _os_log_error_impl(&dword_1A805E000, v3, OS_LOG_TYPE_ERROR, "Notifying %d asynchronous operations about the dropped XPC connection", v5, 8u);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)CADClientReceiveDatabaseIntegrityErrors:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A805E000, a2, OS_LOG_TYPE_ERROR, "Detected database integrity errors: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __65__EKDaemonConnection__eventAuthorization_remindersAuthorization___block_invoke_cold_1(void *a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v4 = a1;
  v5 = [v3 errorWithCADResult:a2];
  OUTLINED_FUNCTION_0_1(&dword_1A805E000, v6, v7, "Error loading access: %@", v8, v9, v10, v11, 2u);

  v12 = *MEMORY[0x1E69E9840];
}

@end