@interface AXUIClientConnection
+ (id)sharedClientConnection;
- (AXUIClientConnection)init;
- (BSServiceConnectionClient)serviceConnection;
- (id)_clientWithIdentifier:(id)identifier;
- (void)_broadcastConnectedStateChange;
- (void)_initializeServiceConnection;
- (void)_processXPCReply:(id)reply context:(id)context;
- (void)cleanUp;
- (void)dealloc;
- (void)performLaunchAngelQueuedTasks;
- (void)performLaunchAngelTask:(id)task;
- (void)registerClient:(id)client withIdentifier:(id)identifier;
- (void)registerConnectionStateObserver:(id)observer;
- (void)sendBoardServiceMessage:(id)message callback:(id)callback;
- (void)setServiceConnection:(id)connection;
- (void)tearDownConnection;
- (void)unregisterClient:(id)client withIdentifier:(id)identifier;
- (void)unregisterConnectionStateObserver:(id)observer;
@end

@implementation AXUIClientConnection

+ (id)sharedClientConnection
{
  if (sharedClientConnection__AXUIClientSharedConnectionOnceToken != -1)
  {
    +[AXUIClientConnection sharedClientConnection];
  }

  v3 = sharedClientConnection__AXUIClientSharedConnection;

  return v3;
}

uint64_t __46__AXUIClientConnection_sharedClientConnection__block_invoke()
{
  sharedClientConnection__AXUIClientSharedConnection = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (AXUIClientConnection)init
{
  v14.receiver = self;
  v14.super_class = AXUIClientConnection;
  v2 = [(AXUIClientConnection *)&v14 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = [objc_alloc(MEMORY[0x277CE6948]) initWithParentClass:v3 description:@"ConnectionAccessQueue" appendUUIDToLabel:0];
    v5 = [objc_alloc(MEMORY[0x277CE6948]) initWithParentClass:v3 description:@"RegisteredClientsAccessQueue" appendUUIDToLabel:0];
    v2->_serverConnectionLock._os_unfair_lock_opaque = 0;
    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v7 = dispatch_queue_create("accessibilityUIServer.handler", v6);
    serviceConnectionQueue = v2->_serviceConnectionQueue;
    v2->_serviceConnectionQueue = v7;

    v9 = objc_opt_new();
    serviceRequests = v2->_serviceRequests;
    v2->_serviceRequests = v9;

    if (v4 && v5)
    {
      [(AXUIClientConnection *)v2 setConnectionAccessQueue:v4];
      [(AXUIClientConnection *)v2 setRegisteredClientsAccessQueue:v5];
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      [(AXUIClientConnection *)v2 setStateObservers:weakObjectsHashTable];

      p_super = dispatch_queue_create("com.apple.AXUIClientConnection.stateObservers", 0);
      [(AXUIClientConnection *)v2 setStateObserverQueue:p_super];
    }

    else
    {
      p_super = &v2->super;
      v2 = 0;
    }
  }

  return v2;
}

- (BSServiceConnectionClient)serviceConnection
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy_;
  v8 = __Block_byref_object_dispose_;
  v9 = 0;
  AX_PERFORM_WITH_LOCK();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __41__AXUIClientConnection_serviceConnection__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[8];
  if (!v3)
  {
    [v2 _initializeServiceConnection];
    v3 = *(*(a1 + 32) + 64);
  }

  v4 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v4, v3);
}

- (void)_initializeServiceConnection
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_23DBC7000, v0, v1, "Could not register end point %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __52__AXUIClientConnection__initializeServiceConnection__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = AXLogIPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __52__AXUIClientConnection__initializeServiceConnection__block_invoke_cold_1(a1, v4);
  }

  v5 = [MEMORY[0x277CF32C8] userInitiated];
  [v3 setServiceQuality:v5];

  [v3 setInterface:*(a1 + 40)];
  [v3 setTargetQueue:*(*(a1 + 32) + 72)];
  [v3 setInterfaceTarget:*(a1 + 32)];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__AXUIClientConnection__initializeServiceConnection__block_invoke_298;
  v10[3] = &unk_278BF2378;
  objc_copyWeak(&v11, (a1 + 48));
  [v3 setActivationHandler:v10];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__AXUIClientConnection__initializeServiceConnection__block_invoke_301;
  v8[3] = &unk_278BF2378;
  objc_copyWeak(&v9, (a1 + 48));
  [v3 setInterruptionHandler:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__AXUIClientConnection__initializeServiceConnection__block_invoke_303;
  v6[3] = &unk_278BF2378;
  objc_copyWeak(&v7, (a1 + 48));
  [v3 setInvalidationHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
}

- (void)setServiceConnection:(id)connection
{
  connectionCopy = connection;
  v3 = connectionCopy;
  AX_PERFORM_WITH_LOCK();
}

void __45__AXUIClientConnection_setServiceConnection___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1 != *(v2 + 64))
  {
    v4 = AXLogIPC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(*(a1 + 40) + 64);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_23DBC7000, v4, OS_LOG_TYPE_INFO, "Invalidating old connection: %@", &v7, 0xCu);
    }

    [*(*(a1 + 40) + 64) invalidate];
    v1 = *(a1 + 32);
    v2 = *(a1 + 40);
  }

  objc_storeStrong((v2 + 64), v1);
  v6 = *MEMORY[0x277D85DE8];
}

void __52__AXUIClientConnection__initializeServiceConnection__block_invoke_298(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 connectionAccessQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__AXUIClientConnection__initializeServiceConnection__block_invoke_2;
  v7[3] = &unk_278BF2350;
  v7[4] = v4;
  v6 = v3;
  v8 = v6;
  v9 = &v10;
  [v5 performSynchronousWritingBlock:v7];

  if (*(v11 + 24) == 1)
  {
    [v4 performLaunchAngelQueuedTasks];
  }

  _Block_object_dispose(&v10, 8);
}

void __52__AXUIClientConnection__initializeServiceConnection__block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [*(a1 + 40) isEqual:*(v2 + 64)];
    v4 = AXLogIPC();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        v6 = *(a1 + 40);
        v11 = 138412290;
        v12 = v6;
        _os_log_impl(&dword_23DBC7000, v4, OS_LOG_TYPE_DEFAULT, "Connection activated to %@", &v11, 0xCu);
      }

      [*(a1 + 32) setConnectionState:2];
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    else
    {
      if (v5)
      {
        v7 = *(a1 + 40);
        v8 = *(*(a1 + 32) + 64);
        v11 = 138412546;
        v12 = v7;
        v13 = 2112;
        v14 = v8;
        _os_log_impl(&dword_23DBC7000, v4, OS_LOG_TYPE_DEFAULT, "Got activation for connection we were not tracking, ignoring. Connection: %@, actively tracked connection: %@", &v11, 0x16u);
      }
    }
  }

  v9 = AXLogIPC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __52__AXUIClientConnection__initializeServiceConnection__block_invoke_2_cold_1();
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __52__AXUIClientConnection__initializeServiceConnection__block_invoke_301(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained connectionAccessQueue];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __52__AXUIClientConnection__initializeServiceConnection__block_invoke_2_302;
  v10 = &unk_278BF2290;
  v11 = WeakRetained;
  v12 = v3;
  v6 = v3;
  [v5 performSynchronousWritingBlock:&v7];

  [v6 activate];
}

void __52__AXUIClientConnection__initializeServiceConnection__block_invoke_2_302(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (v2)
  {
    if ([*(a1 + 40) isEqual:*(v2 + 64)])
    {
      [*v3 setConnectionState:0];
      v4 = AXLogIPC();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 40);
        v11 = 138412290;
        v12 = v5;
        _os_log_impl(&dword_23DBC7000, v4, OS_LOG_TYPE_DEFAULT, "Connection interrupted to %@", &v11, 0xCu);
      }

      [*v3 _broadcastConnectedStateChange];
    }

    else
    {
      v6 = AXLogIPC();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 40);
        v8 = *(*(a1 + 32) + 64);
        v11 = 138412546;
        v12 = v7;
        v13 = 2112;
        v14 = v8;
        _os_log_impl(&dword_23DBC7000, v6, OS_LOG_TYPE_DEFAULT, "Got interruption for connection we were not tracking, ignoring. Connection: %@, actively tracked connection: %@", &v11, 0x16u);
      }
    }
  }

  v9 = AXLogIPC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __52__AXUIClientConnection__initializeServiceConnection__block_invoke_2_302_cold_1();
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __52__AXUIClientConnection__initializeServiceConnection__block_invoke_303(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = AXLogIPC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __52__AXUIClientConnection__initializeServiceConnection__block_invoke_303_cold_1(v3, WeakRetained, v5);
  }

  else
  {

    if (!WeakRetained)
    {
      goto LABEL_10;
    }
  }

  v6 = [v3 isEqual:WeakRetained[8]];
  v7 = AXLogIPC();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v11 = 138412290;
      v12 = v3;
      _os_log_impl(&dword_23DBC7000, v7, OS_LOG_TYPE_DEFAULT, "Connection Invalidated to %@", &v11, 0xCu);
    }

    [WeakRetained tearDownConnection];
    [WeakRetained performLaunchAngelQueuedTasks];
  }

  else
  {
    if (v8)
    {
      v9 = WeakRetained[8];
      v11 = 138412546;
      v12 = v3;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_23DBC7000, v7, OS_LOG_TYPE_DEFAULT, "Got invalidation for connection we were not tracking, ignoring. Connection: %@, actively tracked connection: %@", &v11, 0x16u);
    }
  }

LABEL_10:

  v10 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(BSServiceConnectionClient *)self->_serviceConnection invalidate];
  v3.receiver = self;
  v3.super_class = AXUIClientConnection;
  [(AXUIClientConnection *)&v3 dealloc];
}

- (void)performLaunchAngelTask:(id)task
{
  taskCopy = task;
  v11 = 0;
  v12[0] = &v11;
  v12[1] = 0x3032000000;
  v12[2] = __Block_byref_object_copy_;
  v12[3] = __Block_byref_object_dispose_;
  v13 = 0;
  connectionAccessQueue = [(AXUIClientConnection *)self connectionAccessQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__AXUIClientConnection_performLaunchAngelTask___block_invoke;
  v8[3] = &unk_278BF23C8;
  v8[4] = self;
  v10 = &v11;
  v6 = taskCopy;
  v9 = v6;
  [connectionAccessQueue performSynchronousWritingBlock:v8];

  if (*(v12[0] + 40))
  {
    v6[2](v6);
    v7 = AXLogIPC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(AXUIClientConnection *)v6 performLaunchAngelTask:v12];
    }
  }

  _Block_object_dispose(&v11, 8);
}

void __47__AXUIClientConnection_performLaunchAngelTask___block_invoke(uint64_t a1)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v2 = AXLogIPC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __47__AXUIClientConnection_performLaunchAngelTask___block_invoke_cold_1(a1);
  }

  v3 = (a1 + 32);
  v4 = [*(a1 + 32) connectionState];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [v5 connectionState];
    v7 = *v3;
    if (v6 == 2)
    {
      v8 = [v7 serviceConnection];
      v9 = [v8 remoteTarget];
      v10 = *(*(a1 + 48) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      v12 = AXLogIPC();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __47__AXUIClientConnection_performLaunchAngelTask___block_invoke_cold_3();
      }
    }

    else
    {
      v19 = [v7 serviceRequests];
      v21 = *(a1 + 40);
      v20 = (a1 + 40);
      v22 = MEMORY[0x23EEF82A0](v21);
      [v19 axSafelyAddObject:v22];

      v12 = AXLogIPC();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        __47__AXUIClientConnection_performLaunchAngelTask___block_invoke_cold_2(v20, v3, v12);
      }
    }
  }

  else
  {
    v13 = [v5 serviceConnection];
    v14 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.common" name:@"BasicAngelIPC"];
    v24[0] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    v16 = [v13 remoteTargetWithLaunchingAssertionAttributes:v15];
    v17 = *(*(a1 + 48) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    [*(a1 + 32) setConnectionState:1];
    v12 = AXLogIPC();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __47__AXUIClientConnection_performLaunchAngelTask___block_invoke_cold_4();
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)performLaunchAngelQueuedTasks
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*self + 40);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_23DBC7000, a2, OS_LOG_TYPE_DEBUG, "performLaunchAngelQueuedTasks: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __53__AXUIClientConnection_performLaunchAngelQueuedTasks__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) serviceRequests];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) serviceRequests];
  [v6 removeAllObjects];
}

- (void)sendBoardServiceMessage:(id)message callback:(id)callback
{
  callbackCopy = callback;
  messageCopy = message;
  v11 = objc_opt_new();
  [v11 setXpc_handler:callbackCopy];

  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  [v11 setProcessHandle:remoteProcess];

  currentContext2 = [MEMORY[0x277CF3280] currentContext];
  [v11 setServiceConnection:currentContext2];

  [(AXUIClientConnection *)self _processXPCReply:messageCopy context:v11];
}

- (void)tearDownConnection
{
  v3 = AXLogAssertions();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23DBC7000, v3, OS_LOG_TYPE_DEFAULT, "ClientConnection teared down xpc connection", buf, 2u);
  }

  connectionAccessQueue = [(AXUIClientConnection *)self connectionAccessQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__AXUIClientConnection_tearDownConnection__block_invoke;
  v5[3] = &unk_278BF22E0;
  v5[4] = self;
  [connectionAccessQueue performSynchronousWritingBlock:v5];
}

uint64_t __42__AXUIClientConnection_tearDownConnection__block_invoke(uint64_t a1)
{
  v2 = AXLogIPC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __42__AXUIClientConnection_tearDownConnection__block_invoke_cold_1(a1);
  }

  [*(a1 + 32) setServiceConnection:0];
  [*(a1 + 32) setConnectionState:0];
  return [*(a1 + 32) _broadcastConnectedStateChange];
}

- (void)_processXPCReply:(id)reply context:(id)context
{
  v59 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  contextCopy = context;
  v8 = MEMORY[0x23EEF8420](replyCopy);
  if (v8 != MEMORY[0x277D86468])
  {
    if (v8 == MEMORY[0x277D86480])
    {
      v20 = MEMORY[0x277D863F8];
      if (replyCopy == MEMORY[0x277D863F8])
      {
        v23 = AXLogUI();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [(AXUIClientConnection *)v23 _processXPCReply:v25 context:v26, v27, v28, v29, v30, v31];
        }
      }

      else
      {
        v21 = replyCopy == MEMORY[0x277D863F0];
        v22 = AXLogUI();
        v23 = v22;
        if (v21)
        {
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            v34 = *MEMORY[0x277CE77B0];
            LODWORD(buf) = 138543362;
            *(&buf + 4) = v34;
            _os_log_impl(&dword_23DBC7000, v23, OS_LOG_TYPE_INFO, "Connection to %{public}@ was interrupted.", &buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [AXUIClientConnection _processXPCReply:replyCopy context:v23];
        }
      }

      v35 = AXLogIPC();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        [(AXUIClientConnection *)replyCopy == v20 _processXPCReply:replyCopy context:v35];
      }

      objc_initWeak(&buf, self);
      connectionAccessQueue = [(AXUIClientConnection *)self connectionAccessQueue];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __49__AXUIClientConnection__processXPCReply_context___block_invoke_344;
      v46[3] = &unk_278BF2468;
      objc_copyWeak(&v47, &buf);
      [connectionAccessQueue performSynchronousWritingBlock:v46];

      objc_destroyWeak(&v47);
      objc_destroyWeak(&buf);
    }

    else
    {
      if (replyCopy)
      {
        v9 = MEMORY[0x23EEF83B0](replyCopy);
      }

      else
      {
        v9 = 0;
      }

      v24 = AXLogUI();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [AXUIClientConnection _processXPCReply:context:];
      }

      if (v9)
      {
        free(v9);
      }
    }

    goto LABEL_60;
  }

  v10 = replyCopy;
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __49__AXUIClientConnection__processXPCReply_context___block_invoke;
  v51[3] = &unk_278BF23F0;
  v52 = contextCopy;
  v11 = v10;
  v53 = v11;
  v12 = MEMORY[0x23EEF82A0](v51);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy_;
  v57 = __Block_byref_object_dispose_;
  v58 = 0;
  string = xpc_dictionary_get_string(v11, *MEMORY[0x277CE77B8]);
  if (!string || (v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:string]) == 0)
  {
    if (v11)
    {
      v14 = MEMORY[0x23EEF83B0](v11);
    }

    else
    {
      v14 = 0;
    }

    v32 = [MEMORY[0x277CCA9B8] ax_errorWithDomain:*MEMORY[0x277CE7760] description:{@"Couldn't find client identifier in incoming message: %s.", v14}];
    v33 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v32;

    if (v14)
    {
      free(v14);
      v14 = 0;
    }

    goto LABEL_57;
  }

  v15 = objc_autoreleasePoolPush();
  v16 = [(AXUIClientConnection *)self _clientWithIdentifier:v14];
  objc_autoreleasePoolPop(v15);
  if (v16)
  {
    uint64 = xpc_dictionary_get_uint64(v11, *MEMORY[0x277CE77C8]);
    if (uint64)
    {
      delegate = [v16 delegate];
      if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && ([delegate userInterfaceClient:v16 messageFromServerForWithIdentifierShouldBeProcessedAsynchronously:uint64])
      {
        v19 = 1;
      }

      else
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          v38 = [MEMORY[0x277CCA9B8] ax_errorWithDomain:*MEMORY[0x277CE7760] description:{@"Delegate of client %@ cannot process any messages: %@", v16, delegate}];
          v39 = *(*(&buf + 1) + 40);
          *(*(&buf + 1) + 40) = v38;
LABEL_55:

          goto LABEL_56;
        }

        v19 = 0;
      }

      if (xpc_dictionary_get_BOOL(v11, *MEMORY[0x277CE77D0]))
      {
        v45 = 0;
      }

      else
      {
        v40 = *(&buf + 1);
        v50 = *(*(&buf + 1) + 40);
        v45 = [MEMORY[0x277CE69B8] dictionaryFromXPCMessage:v11 error:&v50];
        objc_storeStrong((v40 + 40), v50);
      }

      if (!*(*(&buf + 1) + 40))
      {
        if (v19)
        {
          v41 = v49;
          v49[0] = MEMORY[0x277D85DD0];
          v49[1] = 3221225472;
          v49[2] = __49__AXUIClientConnection__processXPCReply_context___block_invoke_2;
          v49[3] = &unk_278BF2418;
          v49[4] = delegate;
          v49[5] = v16;
          v49[6] = v45;
          v49[8] = uint64;
        }

        else
        {
          v41 = v48;
          v48[0] = MEMORY[0x277D85DD0];
          v48[1] = 3221225472;
          v48[2] = __49__AXUIClientConnection__processXPCReply_context___block_invoke_3;
          v48[3] = &unk_278BF2440;
          v48[4] = delegate;
          v48[5] = v16;
          v48[6] = v45;
          v48[8] = &buf;
          v48[9] = uint64;
        }

        v41[7] = v12;
        v44 = MEMORY[0x23EEF82A0](v41);

        if ((objc_opt_respondsToSelector() & 1) != 0 && ([delegate userInterfaceClient:v16 accessQueueForProcessingMessageWithIdentifier:uint64], (v42 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          if ((objc_opt_respondsToSelector() & 1) != 0 && ![delegate userInterfaceClient:v16 messageWithIdentifierRequiresWritingBlock:uint64])
          {
            [v42 performAsynchronousReadingBlock:v44];
          }

          else
          {
            [v42 performAsynchronousWritingBlock:v44];
          }
        }

        else
        {
          v44[2]();
          v42 = 0;
        }
      }

      v39 = v45;
      goto LABEL_55;
    }

    v37 = [MEMORY[0x277CCA9B8] ax_errorWithDomain:*MEMORY[0x277CE7760] description:@"AXUIClientConnection: Got invalid value for message identifier in client connection event handler: 0."];
  }

  else
  {
    v37 = [MEMORY[0x277CCA9B8] ax_errorWithDomain:*MEMORY[0x277CE7760] description:{@"Couldn't find client for identifier: %@.", v14}];
  }

  delegate = *(*(&buf + 1) + 40);
  *(*(&buf + 1) + 40) = v37;
LABEL_56:

LABEL_57:
  if (*(*(&buf + 1) + 40))
  {
    v12[2](v12, 0);
  }

  _Block_object_dispose(&buf, 8);
LABEL_60:

  v43 = *MEMORY[0x277D85DE8];
}

void __49__AXUIClientConnection__processXPCReply_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) connection];

  if (v6)
  {
    [MEMORY[0x277CE7790] sendReply:v11 withError:v5 andOriginalXPCMessage:*(a1 + 40) usingConnection:*(a1 + 32) customDataAddingBlock:0];
  }

  else
  {
    if (v11)
    {
      v7 = _CFXPCCreateXPCMessageWithCFObject();
    }

    else
    {
      v8 = [MEMORY[0x277CBEAC0] dictionary];
      v7 = _CFXPCCreateXPCMessageWithCFObject();
    }

    v9 = [*(a1 + 32) xpc_handler];

    if (v9)
    {
      v10 = [*(a1 + 32) xpc_handler];
      (v10)[2](v10, v7, v5);
    }
  }
}

void __49__AXUIClientConnection__processXPCReply_context___block_invoke_3(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[9];
  v6 = *(a1[8] + 8);
  obj = *(v6 + 40);
  v7 = [v2 userInterfaceClient:v3 processMessageFromServer:v4 withIdentifier:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  v8 = *(*(a1[8] + 8) + 40);
  (*(a1[7] + 16))();
  v9 = *(a1[8] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;
}

void __49__AXUIClientConnection__processXPCReply_context___block_invoke_344(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setConnectionState:0];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _broadcastConnectedStateChange];
}

- (void)registerClient:(id)client withIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  identifierCopy = identifier;
  v8 = AXLogAssertions();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = identifierCopy;
    _os_log_impl(&dword_23DBC7000, v8, OS_LOG_TYPE_DEFAULT, "ClientConnection registered client %@", buf, 0xCu);
  }

  registeredClientsAccessQueue = [(AXUIClientConnection *)self registeredClientsAccessQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__AXUIClientConnection_registerClient_withIdentifier___block_invoke;
  v13[3] = &unk_278BF2490;
  v13[4] = self;
  v14 = clientCopy;
  v15 = identifierCopy;
  v10 = identifierCopy;
  v11 = clientCopy;
  [registeredClientsAccessQueue performSynchronousWritingBlock:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __54__AXUIClientConnection_registerClient_withIdentifier___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) registeredClients];
  if (!v3)
  {
    v3 = objc_opt_new();
    [*(a1 + 32) setRegisteredClients:?];
  }

  v2 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:*(a1 + 40)];
  [v3 setObject:v2 forKey:*(a1 + 48)];
}

- (void)unregisterClient:(id)client withIdentifier:(id)identifier
{
  v14 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v6 = AXLogAssertions();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = identifierCopy;
    _os_log_impl(&dword_23DBC7000, v6, OS_LOG_TYPE_DEFAULT, "ClientConnection unregistered client %@", buf, 0xCu);
  }

  registeredClientsAccessQueue = [(AXUIClientConnection *)self registeredClientsAccessQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__AXUIClientConnection_unregisterClient_withIdentifier___block_invoke;
  v10[3] = &unk_278BF2290;
  v10[4] = self;
  v11 = identifierCopy;
  v8 = identifierCopy;
  [registeredClientsAccessQueue performSynchronousWritingBlock:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __56__AXUIClientConnection_unregisterClient_withIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) registeredClients];
  [v2 removeObjectForKey:*(a1 + 40)];
  if (![v2 count])
  {
    [*(a1 + 32) setRegisteredClients:0];
  }
}

- (id)_clientWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  registeredClientsAccessQueue = [(AXUIClientConnection *)self registeredClientsAccessQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__AXUIClientConnection__clientWithIdentifier___block_invoke;
  v9[3] = &unk_278BF24B8;
  v9[4] = self;
  v11 = &v12;
  v6 = identifierCopy;
  v10 = v6;
  [registeredClientsAccessQueue performSynchronousWritingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __46__AXUIClientConnection__clientWithIdentifier___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) registeredClients];
  v2 = [v6 objectForKey:*(a1 + 40)];
  v3 = [v2 nonretainedObjectValue];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)_broadcastConnectedStateChange
{
  v21 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  stateObserverQueue = [(AXUIClientConnection *)self stateObserverQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__AXUIClientConnection__broadcastConnectedStateChange__block_invoke;
  block[3] = &unk_278BF22B8;
  block[4] = self;
  block[5] = &v14;
  dispatch_sync(stateObserverQueue, block);

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v15[5];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v20 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v7++) clientConnection:self didChangeConnectedState:{-[AXUIClientConnection isConnected](self, "isConnected", v9)}];
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v20 count:16];
    }

    while (v5);
  }

  _Block_object_dispose(&v14, 8);
  v8 = *MEMORY[0x277D85DE8];
}

void __54__AXUIClientConnection__broadcastConnectedStateChange__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) stateObservers];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)registerConnectionStateObserver:(id)observer
{
  observerCopy = observer;
  stateObserverQueue = [(AXUIClientConnection *)self stateObserverQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__AXUIClientConnection_registerConnectionStateObserver___block_invoke;
  v7[3] = &unk_278BF2290;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(stateObserverQueue, v7);
}

void __56__AXUIClientConnection_registerConnectionStateObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stateObservers];
  [v2 addObject:*(a1 + 40)];
}

- (void)unregisterConnectionStateObserver:(id)observer
{
  observerCopy = observer;
  stateObserverQueue = [(AXUIClientConnection *)self stateObserverQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__AXUIClientConnection_unregisterConnectionStateObserver___block_invoke;
  v7[3] = &unk_278BF2290;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(stateObserverQueue, v7);
}

void __58__AXUIClientConnection_unregisterConnectionStateObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stateObservers];
  [v2 removeObject:*(a1 + 40)];
}

- (void)cleanUp
{
  v14 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  stateObserverQueue = [(AXUIClientConnection *)self stateObserverQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__AXUIClientConnection_cleanUp__block_invoke;
  v7[3] = &unk_278BF2328;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(stateObserverQueue, v7);

  v4 = AXLogAssertions();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(v9 + 24);
    *buf = 67109120;
    v13 = v5;
    _os_log_impl(&dword_23DBC7000, v4, OS_LOG_TYPE_DEFAULT, "ClientConnection cleanup, no clients: %d", buf, 8u);
  }

  if (*(v9 + 24) == 1)
  {
    [(AXUIClientConnection *)self tearDownConnection];
  }

  _Block_object_dispose(&v8, 8);
  v6 = *MEMORY[0x277D85DE8];
}

void __31__AXUIClientConnection_cleanUp__block_invoke(uint64_t a1)
{
  v2 = AXLogIPC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __31__AXUIClientConnection_cleanUp__block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 32) stateObservers];
  *(*(*(a1 + 40) + 8) + 24) = [v3 count] == 0;
}

void __52__AXUIClientConnection__initializeServiceConnection__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 64);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_23DBC7000, a2, OS_LOG_TYPE_DEBUG, "Configure connection %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __52__AXUIClientConnection__initializeServiceConnection__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1();
  v8 = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CCABB0];
  [*v1 connectionState];
  [OUTLINED_FUNCTION_8() numberWithInteger:?];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

void __52__AXUIClientConnection__initializeServiceConnection__block_invoke_2_302_cold_1()
{
  OUTLINED_FUNCTION_1();
  v8 = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CCABB0];
  [*v1 connectionState];
  [OUTLINED_FUNCTION_8() numberWithInteger:?];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

void __52__AXUIClientConnection__initializeServiceConnection__block_invoke_303_cold_1(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 64);
  OUTLINED_FUNCTION_3();
  v9 = 2112;
  v10 = v5;
  _os_log_debug_impl(&dword_23DBC7000, v6, OS_LOG_TYPE_DEBUG, "Connection Invalidated\nconnection: %@\nself.connection: %@", v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)performLaunchAngelTask:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x23EEF82A0]();
  v4 = *(*a2 + 40);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

void __47__AXUIClientConnection_performLaunchAngelTask___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "connectionState")}];
  v3 = [*(a1 + 32) serviceConnection];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void __47__AXUIClientConnection_performLaunchAngelTask___block_invoke_cold_2(void *a1, id *a2, NSObject *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x23EEF82A0](*a1);
  v6 = [*a2 serviceRequests];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*a2, "connectionState")}];
  v8 = [*a2 serviceConnection];
  v10 = 138413058;
  v11 = v5;
  v12 = 2112;
  v13 = v6;
  v14 = 2112;
  v15 = v7;
  v16 = 2112;
  v17 = v8;
  _os_log_debug_impl(&dword_23DBC7000, a3, OS_LOG_TYPE_DEBUG, "Added block: %@ to queue: %@, connectionState: %@ connection: %@", &v10, 0x2Au);

  v9 = *MEMORY[0x277D85DE8];
}

void __47__AXUIClientConnection_performLaunchAngelTask___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_1();
  v9 = *MEMORY[0x277D85DE8];
  [*v1 connectionState];
  v2 = [OUTLINED_FUNCTION_8() numberWithInteger:?];
  [*v0 serviceConnection];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

void __47__AXUIClientConnection_performLaunchAngelTask___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_1();
  v9 = *MEMORY[0x277D85DE8];
  [*v1 connectionState];
  v2 = [OUTLINED_FUNCTION_8() numberWithInteger:?];
  [*v0 serviceConnection];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

void __42__AXUIClientConnection_tearDownConnection__block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "connectionState")}];
  v3 = [*(a1 + 32) serviceConnection];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_processXPCReply:context:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(&dword_23DBC7000, v0, v1, "Got object of unexpected type in client connection event handler: %{public}s.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_processXPCReply:(void *)a1 context:(NSObject *)a2 .cold.2(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CE77B0];
  string = xpc_dictionary_get_string(a1, *MEMORY[0x277D86400]);
  v6 = 138543618;
  v7 = v3;
  v8 = 2082;
  v9 = string;
  _os_log_error_impl(&dword_23DBC7000, a2, OS_LOG_TYPE_ERROR, "Unexpected error connecting to %{public}@: %{public}s", &v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_processXPCReply:(uint64_t)a3 context:(uint64_t)a4 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*MEMORY[0x277CE77B0]);
  OUTLINED_FUNCTION_6(&dword_23DBC7000, a1, a3, "Connection to %{public}@ went invalid.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_processXPCReply:(os_log_t)log context:.cold.4(char a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109376;
  v4[1] = a1 & 1;
  v5 = 1024;
  v6 = a2 == MEMORY[0x277D863F0];
  _os_log_debug_impl(&dword_23DBC7000, log, OS_LOG_TYPE_DEBUG, "XPC Error Invalid: %d Interrupted: %d", v4, 0xEu);
  v3 = *MEMORY[0x277D85DE8];
}

void __31__AXUIClientConnection_cleanUp__block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) stateObservers];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

@end