@interface AXServer
- (AXIPCClient)client;
- (AXServer)init;
- (BOOL)_connectIfNecessary;
- (BOOL)_connectServerIfNecessary;
- (BOOL)sendSimpleMessage:(id)message enqueueError:(id *)error;
- (BOOL)sendSimpleMessageWithResult:(id)result;
- (NSString)serverIdentifier;
- (id)_handleActionResult:(id)result;
- (id)_sendMessage:(id)message error:(id *)error;
- (id)_serviceName;
- (id)sendSimpleMessageWithObjectResult:(id)result;
- (void)_connectIfNecessary;
- (void)_connectServerIfNecessary;
- (void)_didConnectToServer;
- (void)_ensureAssertionsHaveBeenProcessedWithCompletion:(id)completion;
- (void)_initializeAssertionBookkeeping;
- (void)_processAssertionBacklog;
- (void)_registerActionHandler:(id)handler withIdentifierCallback:(id)callback retryInterval:(double)interval registrationMessageKey:(int)key;
- (void)_removeActionHandler:(id)handler registrationMessageKey:(int)key;
- (void)acquireAssertionWithType:(id)type identifier:(id)identifier;
- (void)dealloc;
- (void)relinquishAssertionWithType:(id)type identifier:(id)identifier;
- (void)sendAsynchronousMessage:(id)message replyOnQueue:(id)queue BOOLResultHandler:(id)handler;
- (void)sendAsynchronousMessage:(id)message replyOnQueue:(id)queue handler:(id)handler;
- (void)sendAsynchronousMessage:(id)message replyOnQueue:(id)queue objectResultHandler:(id)handler;
- (void)setClient:(id)client;
@end

@implementation AXServer

- (AXServer)init
{
  v7.receiver = self;
  v7.super_class = AXServer;
  v2 = [(AXServer *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.accessibility.AXServer.assertion", 0);
    [(AXServer *)v2 setAssertionWorkQueue:v3];

    *&v2->_clientLock._os_unfair_lock_opaque = 0;
    v4 = objc_opt_new();
    actionHandlers = v2->_actionHandlers;
    v2->_actionHandlers = v4;
  }

  return v2;
}

- (void)dealloc
{
  [(AXServer *)self _willClearServer];
  client = [(AXServer *)self client];
  [client setPortDeathHandler:0];

  v4.receiver = self;
  v4.super_class = AXServer;
  [(AXServer *)&v4 dealloc];
}

- (NSString)serverIdentifier
{
  serverIdentifier = self->_serverIdentifier;
  if (!serverIdentifier)
  {
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    serverIdentifier_count = [v4 initWithFormat:@"%@-%d-%d", @"com.apple.accessibility.AXSystemReplyServer", getpid(), serverIdentifier_count];
    v6 = self->_serverIdentifier;
    self->_serverIdentifier = serverIdentifier_count;

    ++serverIdentifier_count;
    serverIdentifier = self->_serverIdentifier;
  }

  return serverIdentifier;
}

- (BOOL)sendSimpleMessage:(id)message enqueueError:(id *)error
{
  messageCopy = message;
  [(AXServer *)self _connectIfNecessary];
  client = [(AXServer *)self client];
  LOBYTE(error) = [client sendSimpleMessage:messageCopy withError:error];

  return error;
}

- (BOOL)sendSimpleMessageWithResult:(id)result
{
  resultCopy = result;
  objc_opt_class();
  v5 = [(AXServer *)self sendSimpleMessageWithObjectResult:resultCopy];
  v6 = __UIAccessibilityCastAsClass();

  bOOLValue = [v6 BOOLValue];
  return bOOLValue;
}

- (id)sendSimpleMessageWithObjectResult:(id)result
{
  resultCopy = result;
  if ([(AXServer *)self _connectIfNecessary])
  {
    client = [(AXServer *)self client];
    v12 = 0;
    v6 = [client sendMessage:resultCopy withError:&v12];
    v7 = v12;

    if (v7)
    {
      v8 = AXLogIPC();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(AXServer *)resultCopy sendSimpleMessageWithObjectResult:v7];
      }
    }

    payload = [v6 payload];
    v10 = [payload objectForKey:@"result"];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_sendMessage:(id)message error:(id *)error
{
  if (message)
  {
    messageCopy = message;
    [(AXServer *)self _connectIfNecessary];
    client = [(AXServer *)self client];
    v8 = [client sendMessage:messageCopy withError:error];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)sendAsynchronousMessage:(id)message replyOnQueue:(id)queue BOOLResultHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__AXServer_sendAsynchronousMessage_replyOnQueue_BOOLResultHandler___block_invoke;
  v10[3] = &unk_1E71EA3B8;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(AXServer *)self sendAsynchronousMessage:message replyOnQueue:queue objectResultHandler:v10];
}

uint64_t __67__AXServer_sendAsynchronousMessage_replyOnQueue_BOOLResultHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 BOOLValue];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)sendAsynchronousMessage:(id)message replyOnQueue:(id)queue objectResultHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__AXServer_sendAsynchronousMessage_replyOnQueue_objectResultHandler___block_invoke;
  v12[3] = &unk_1E71EA7C8;
  v13 = messageCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = messageCopy;
  [(AXServer *)self sendAsynchronousMessage:v11 replyOnQueue:queue handler:v12];
}

void __69__AXServer_sendAsynchronousMessage_replyOnQueue_objectResultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = AXLogIPC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __69__AXServer_sendAsynchronousMessage_replyOnQueue_objectResultHandler___block_invoke_cold_1(a1, v5);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = [a2 payload];
    v9 = [v8 objectForKey:@"result"];
    (*(v7 + 16))(v7, v9);
  }
}

- (void)sendAsynchronousMessage:(id)message replyOnQueue:(id)queue handler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  queueCopy = queue;
  if (messageCopy)
  {
    [(AXServer *)self _connectIfNecessary];
    client = [(AXServer *)self client];
    [client sendAsyncMessage:messageCopy replyOnQueue:queueCopy replyHandler:handlerCopy];
  }

  else
  {
    _AXLogWithFacility();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__AXServer_sendAsynchronousMessage_replyOnQueue_handler___block_invoke;
    block[3] = &unk_1E71EA2F0;
    v13 = handlerCopy;
    dispatch_async(queueCopy, block);
  }
}

- (void)_processAssertionBacklog
{
  v14 = *MEMORY[0x1E69E9840];
  type = [a2 type];
  identifier = [a2 identifier];
  v8 = 138412802;
  selfCopy = self;
  v10 = 2112;
  v11 = type;
  v12 = 2112;
  v13 = identifier;
  _os_log_error_impl(&dword_18B15E000, a3, OS_LOG_TYPE_ERROR, "Timed out trying to %@ assertion with type: %@ identifier: error: %@. will retry.", &v8, 0x20u);
}

void __36__AXServer__processAssertionBacklog__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _processAssertionBacklog];
}

- (void)_initializeAssertionBookkeeping
{
  assertionWorkBacklog = [(AXServer *)self assertionWorkBacklog];

  if (!assertionWorkBacklog)
  {
    array = [MEMORY[0x1E695DF70] array];
    [(AXServer *)self setAssertionWorkBacklog:array];
  }

  assertionRetryTimer = [(AXServer *)self assertionRetryTimer];

  if (!assertionRetryTimer)
  {
    v6 = objc_alloc(MEMORY[0x1E6988780]);
    assertionWorkQueue = [(AXServer *)self assertionWorkQueue];
    v8 = [v6 initWithTargetSerialQueue:assertionWorkQueue];

    [v8 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    [(AXServer *)self setAssertionRetryTimer:v8];
  }
}

- (void)acquireAssertionWithType:(id)type identifier:(id)identifier
{
  typeCopy = type;
  identifierCopy = identifier;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__AXServer_acquireAssertionWithType_identifier___block_invoke;
  aBlock[3] = &unk_1E71EA7F0;
  aBlock[4] = self;
  v13 = typeCopy;
  v14 = identifierCopy;
  v8 = identifierCopy;
  v9 = typeCopy;
  v10 = _Block_copy(aBlock);
  assertionWorkQueue = [(AXServer *)self assertionWorkQueue];
  dispatch_async(assertionWorkQueue, v10);
}

void __48__AXServer_acquireAssertionWithType_identifier___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _initializeAssertionBookkeeping];
  v3 = [[AXAssertionWorkItem alloc] initWithType:*(a1 + 40) identifier:*(a1 + 48) isAcquisition:1];
  v2 = [*(a1 + 32) assertionWorkBacklog];
  [v2 addObject:v3];

  [*(a1 + 32) _processAssertionBacklog];
}

- (void)relinquishAssertionWithType:(id)type identifier:(id)identifier
{
  typeCopy = type;
  identifierCopy = identifier;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__AXServer_relinquishAssertionWithType_identifier___block_invoke;
  aBlock[3] = &unk_1E71EA7F0;
  aBlock[4] = self;
  v13 = typeCopy;
  v14 = identifierCopy;
  v8 = identifierCopy;
  v9 = typeCopy;
  v10 = _Block_copy(aBlock);
  assertionWorkQueue = [(AXServer *)self assertionWorkQueue];
  dispatch_async(assertionWorkQueue, v10);
}

void __51__AXServer_relinquishAssertionWithType_identifier___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _initializeAssertionBookkeeping];
  v3 = [[AXAssertionWorkItem alloc] initWithType:*(a1 + 40) identifier:*(a1 + 48) isAcquisition:0];
  v2 = [*(a1 + 32) assertionWorkBacklog];
  [v2 addObject:v3];

  [*(a1 + 32) _processAssertionBacklog];
}

- (void)_didConnectToServer
{
  _actionResultKey = [(AXServer *)self _actionResultKey];
  if (_actionResultKey)
  {
    v4 = _actionResultKey;
    server = [(AXServer *)self server];
    [server setHandlerWithTarget:self selector:sel__handleActionResult_ forKey:v4];
  }
}

- (AXIPCClient)client
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__4;
  v8 = __Block_byref_object_dispose__4;
  v9 = 0;
  AX_PERFORM_WITH_LOCK();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void __18__AXServer_client__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (!v2)
  {
    v3 = [AXIPCClient alloc];
    v4 = [*(a1 + 32) _serviceName];
    v5 = [(AXIPCClient *)v3 initWithServiceName:v4];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [*(*(*(a1 + 40) + 8) + 40) setShouldRegisterCallbackSourceOnMainRunloop:{objc_msgSend(*(a1 + 32), "shouldRegisterClientCallbackSourceOnMainRunloop")}];
    LODWORD(v8) = 1.0;
    [*(*(*(a1 + 40) + 8) + 40) setTimeout:v8];
    objc_storeStrong((*(a1 + 32) + 32), *(*(*(a1 + 40) + 8) + 40));
    v2 = *(*(a1 + 32) + 32);
  }

  v9 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v9, v2);
}

- (void)setClient:(id)client
{
  clientCopy = client;
  v3 = clientCopy;
  AX_PERFORM_WITH_LOCK();
}

- (BOOL)_connectIfNecessary
{
  client = [(AXServer *)self client];
  if ([client isConnected])
  {
    v4 = 1;
  }

  else
  {
    v15 = 0;
    [client connectWithError:&v15];
    v5 = v15;
    v4 = v5 == 0;
    if (v5)
    {
      v6 = AXLogSystemApp();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        [(AXServer *)v5 _connectIfNecessary];
      }
    }

    else
    {
      serverIdentifier = [(AXServer *)self serverIdentifier];
      [client setClientIdentifier:serverIdentifier];

      objc_initWeak(&location, self);
      v8 = objc_initWeak(&from, client);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __31__AXServer__connectIfNecessary__block_invoke;
      v10[3] = &unk_1E71EA840;
      objc_copyWeak(&v11, &location);
      objc_copyWeak(&v12, &from);
      [client setPortDeathHandler:v10];

      objc_destroyWeak(&v12);
      objc_destroyWeak(&v11);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }

    [(AXServer *)self _didConnectToClient];
  }

  return v4;
}

void __31__AXServer__connectIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _wasDisconnectedFromClient];
  [v2 setPortDeathHandler:0];
  [WeakRetained setClient:0];
  [WeakRetained _willClearServer];
  v3 = [WeakRetained server];
  [v3 stopServerWithError:0];

  [WeakRetained setServer:0];
}

- (BOOL)_connectServerIfNecessary
{
  server = [(AXServer *)self server];
  isRunning = [server isRunning];

  if ((isRunning & 1) == 0)
  {
    server2 = [(AXServer *)self server];

    if (server2)
    {
LABEL_4:
      server3 = [(AXServer *)self server];
      isRunning2 = [server3 isRunning];

      if ((isRunning2 & 1) == 0)
      {
        server4 = [(AXServer *)self server];
        v21 = 0;
        v10 = [server4 startServerWithError:&v21];
        v11 = v21;

        if (!v10 || v11)
        {
          v16 = AXLogIPC();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [(AXServer *)v11 _connectServerIfNecessary];
          }
        }

        else
        {
          [(AXServer *)self _didConnectToServer];
        }
      }

      server5 = [(AXServer *)self server];
      isRunning3 = [server5 isRunning];
      goto LABEL_22;
    }

    client = [(AXServer *)self client];
    server5 = client;
    if (client)
    {
      clientCallbackPort = [client clientCallbackPort];
      if (clientCallbackPort)
      {
        v15 = -[AXIPCServer initWithPort:serviceRunLoopSource:]([AXIPCServer alloc], "initWithPort:serviceRunLoopSource:", clientCallbackPort, [server5 clientCallbackSource]);
        [(AXServer *)self setServer:v15];

        goto LABEL_4;
      }

      v17 = AXLogIPC();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v18 = "not connecting to server, no client callback port yet";
        v19 = buf;
        goto LABEL_20;
      }
    }

    else
    {
      v17 = AXLogIPC();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v23 = 0;
        v18 = "not connecting to server, no client yet";
        v19 = &v23;
LABEL_20:
        _os_log_impl(&dword_18B15E000, v17, OS_LOG_TYPE_INFO, v18, v19, 2u);
      }
    }

    isRunning3 = 0;
LABEL_22:

    return isRunning3;
  }

  return 1;
}

- (void)_ensureAssertionsHaveBeenProcessedWithCompletion:(id)completion
{
  completionCopy = completion;
  assertionWorkQueue = [(AXServer *)self assertionWorkQueue];
  dispatch_async(assertionWorkQueue, completionCopy);
}

- (void)_registerActionHandler:(id)handler withIdentifierCallback:(id)callback retryInterval:(double)interval registrationMessageKey:(int)key
{
  v6 = *&key;
  handlerCopy = handler;
  callbackCopy = callback;
  if ([(AXServer *)self _connectIfNecessary])
  {
    [(AXServer *)self _connectServerIfNecessary];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    v14 = objc_opt_new();
    [v14 setIdentifier:uUIDString];
    [v14 setHandler:handlerCopy];
    v15 = [[AXIPCMessage alloc] initWithKey:v6 payload:&unk_1EFE973A8];
    client = [(AXServer *)self client];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __95__AXServer__registerActionHandler_withIdentifierCallback_retryInterval_registrationMessageKey___block_invoke_2;
    v21[3] = &unk_1E71EA890;
    v21[4] = self;
    v22 = v14;
    v23 = uUIDString;
    v24 = callbackCopy;
    v25 = handlerCopy;
    intervalCopy = interval;
    v27 = v6;
    v17 = callbackCopy;
    v18 = handlerCopy;
    v19 = uUIDString;
    v20 = v14;
    [client sendAsyncMessage:v15 withReplyHandler:v21];
  }

  else
  {
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __95__AXServer__registerActionHandler_withIdentifierCallback_retryInterval_registrationMessageKey___block_invoke;
    v31 = &unk_1E71EA868;
    selfCopy = self;
    v33 = handlerCopy;
    v34 = callbackCopy;
    intervalCopy2 = interval;
    v36 = v6;
    v20 = callbackCopy;
    v15 = handlerCopy;
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

void __95__AXServer__registerActionHandler_withIdentifierCallback_retryInterval_registrationMessageKey___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 payload];
  v4 = [v3 objectForKey:@"result"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = *(a1 + 32);
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __95__AXServer__registerActionHandler_withIdentifierCallback_retryInterval_registrationMessageKey___block_invoke_3;
    v15 = &unk_1E71EA128;
    v16 = v6;
    v7 = &v17;
    v17 = *(a1 + 40);
    AX_PERFORM_WITH_LOCK();
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v7 = &v8;
    v8 = *(a1 + 64);
    v9 = *(a1 + 56);
    v10 = *(a1 + 72);
    v11 = *(a1 + 80);
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

void __95__AXServer__registerActionHandler_withIdentifierCallback_retryInterval_registrationMessageKey___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) actionHandlers];
  [v2 addObject:*(a1 + 40)];
}

- (void)_removeActionHandler:(id)handler registrationMessageKey:(int)key
{
  v4 = *&key;
  handlerCopy = handler;
  if (handlerCopy)
  {
    [(AXServer *)self _connectIfNecessary];
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v9 = handlerCopy;
    AX_PERFORM_WITH_LOCK();
    if ((v11[3] & 1) == 0)
    {
      v7 = [[AXIPCMessage alloc] initWithKey:v4 payload:&unk_1EFE973D0];
      client = [(AXServer *)self client];
      [client sendSimpleMessage:v7];
    }

    _Block_object_dispose(&v10, 8);
  }
}

void __56__AXServer__removeActionHandler_registrationMessageKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) actionHandlers];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__AXServer__removeActionHandler_registrationMessageKey___block_invoke_2;
  v4[3] = &unk_1E71EA8B8;
  v5 = *(a1 + 40);
  v3 = [v2 indexOfObjectPassingTest:v4];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v2 removeObjectAtIndex:v3];
    *(*(*(a1 + 48) + 8) + 24) = [v2 count] != 0;
  }
}

uint64_t __56__AXServer__removeActionHandler_registrationMessageKey___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)_handleActionResult:(id)result
{
  payload = [result payload];
  v4 = [payload objectForKey:@"type"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 integerValue];
    v7 = [payload objectForKey:@"payload"];
    v5 = v7;
    AX_PERFORM_WITH_LOCK();
  }

  return 0;
}

void __32__AXServer__handleActionResult___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) actionHandlers];
  v3 = [v2 copy];

  v5 = *(a1 + 40);
  v4 = v3;
  AXPerformBlockAsynchronouslyOnMainThread();
}

void __32__AXServer__handleActionResult___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v8 + 1) + 8 * v6) handler];
        v7[2](v7, *(a1 + 48), *(a1 + 40));

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (id)_serviceName
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)sendSimpleMessageWithObjectResult:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(a1, "key")}];
  v4 = [a2 ax_nonRedundantDescription];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2(&dword_18B15E000, v5, v6, "couldn't send message (%@): %@", v7, v8, v9, v10, v11);
}

void __69__AXServer_sendAsynchronousMessage_replyOnQueue_objectResultHandler___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v2 = [a2 ax_nonRedundantDescription];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2(&dword_18B15E000, v3, v4, "couldn't get async result for message %@: %@", v5, v6, v7, v8, v9);
}

- (void)_connectIfNecessary
{
  v6 = *MEMORY[0x1E69E9840];
  ax_nonRedundantDescription = [self ax_nonRedundantDescription];
  v4 = 138543362;
  v5 = ax_nonRedundantDescription;
  _os_log_debug_impl(&dword_18B15E000, a2, OS_LOG_TYPE_DEBUG, "AX SystemApp: Error: %{public}@", &v4, 0xCu);
}

- (void)_connectServerIfNecessary
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_18B15E000, a2, OS_LOG_TYPE_ERROR, "failed to start ipc server due to: %@", &v2, 0xCu);
}

@end