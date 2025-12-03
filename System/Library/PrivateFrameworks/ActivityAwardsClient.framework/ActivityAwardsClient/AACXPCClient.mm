@interface AACXPCClient
- (AACXPCClient)init;
- (void)_discardEndpointConnection:(id)connection;
- (void)_handleError:(id)error;
- (void)_remoteProxy:(id)proxy errorHandler:(id)handler;
- (void)_remoteSynchronousProxy:(id)proxy errorHandler:(id)handler;
- (void)_resetEndpointConnection;
- (void)_serverQueue_initializeDaemonConnection;
- (void)dealloc;
- (void)invalidate;
- (void)sendRequest:(unint64_t)request completion:(id)completion;
- (void)sendRequest:(unint64_t)request payload:(id)payload completion:(id)completion;
- (void)sendRequest:(unint64_t)request payloadData:(id)data completion:(id)completion;
- (void)sendSynchronousRequest:(unint64_t)request payload:(id)payload resultHandler:(id)handler;
@end

@implementation AACXPCClient

- (AACXPCClient)init
{
  v12.receiver = self;
  v12.super_class = AACXPCClient;
  v2 = [(AACXPCClient *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = HKCreateSerialDispatchQueue();
    serverQueue = v3->_serverQueue;
    v3->_serverQueue = v4;

    v6 = HKCreateSerialDispatchQueue();
    clientQueue = v3->_clientQueue;
    v3->_clientQueue = v6;

    v8 = v3->_serverQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __20__AACXPCClient_init__block_invoke;
    block[3] = &unk_278C45858;
    v11 = v3;
    dispatch_async(v8, block);
  }

  return v3;
}

- (void)_serverQueue_initializeDaemonConnection
{
  dispatch_assert_queue_V2(self->_serverQueue);
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.activityawardsd" options:0];
  mainDaemonConnection = self->_mainDaemonConnection;
  self->_mainDaemonConnection = v3;

  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2850D2080];
  [(NSXPCConnection *)self->_mainDaemonConnection setRemoteObjectInterface:v5];

  [(NSXPCConnection *)self->_mainDaemonConnection setInvalidationHandler:&__block_literal_global];
  [(NSXPCConnection *)self->_mainDaemonConnection setInterruptionHandler:&__block_literal_global_348];
  v6 = self->_mainDaemonConnection;

  [(NSXPCConnection *)v6 resume];
}

- (void)dealloc
{
  v3 = ACHLogXPC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [AACXPCClient dealloc];
  }

  os_unfair_lock_lock(&self->_lock);
  [(NSXPCConnection *)self->_mainDaemonConnection setInterruptionHandler:0];
  [(NSXPCConnection *)self->_mainDaemonConnection setInvalidationHandler:0];
  [(NSXPCConnection *)self->_mainDaemonConnection invalidate];
  mainDaemonConnection = self->_mainDaemonConnection;
  self->_mainDaemonConnection = 0;

  os_unfair_lock_unlock(&self->_lock);
  v5.receiver = self;
  v5.super_class = AACXPCClient;
  [(AACXPCClient *)&v5 dealloc];
}

- (void)invalidate
{
  v3 = ACHLogXPC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [AACXPCClient invalidate];
  }

  os_unfair_lock_lock(&self->_lock);
  [(NSXPCConnection *)self->_endpointConnection setInterruptionHandler:0];
  [(NSXPCConnection *)self->_endpointConnection setInvalidationHandler:0];
  [(NSXPCConnection *)self->_endpointConnection invalidate];
  endpointConnection = self->_endpointConnection;
  self->_endpointConnection = 0;

  os_unfair_lock_unlock(&self->_lock);
}

void __55__AACXPCClient__serverQueue_initializeDaemonConnection__block_invoke()
{
  v0 = ACHLogXPC();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __55__AACXPCClient__serverQueue_initializeDaemonConnection__block_invoke_cold_1();
  }
}

void __55__AACXPCClient__serverQueue_initializeDaemonConnection__block_invoke_346()
{
  v0 = ACHLogXPC();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __55__AACXPCClient__serverQueue_initializeDaemonConnection__block_invoke_346_cold_1();
  }
}

- (void)sendRequest:(unint64_t)request completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39__AACXPCClient_sendRequest_completion___block_invoke;
  v10[3] = &unk_278C458F0;
  requestCopy = request;
  v10[4] = self;
  v11 = completionCopy;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__AACXPCClient_sendRequest_completion___block_invoke_4;
  v8[3] = &unk_278C45918;
  v9 = v11;
  v7 = v11;
  [(AACXPCClient *)self _remoteProxy:v10 errorHandler:v8];
}

void __39__AACXPCClient_sendRequest_completion___block_invoke(void *a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__AACXPCClient_sendRequest_completion___block_invoke_2;
  v5[3] = &unk_278C458C8;
  v3 = a1[5];
  v4 = a1[6];
  v5[4] = a1[4];
  v6 = v3;
  [a2 transportRequest:v4 data:0 completion:v5];
}

void __39__AACXPCClient_sendRequest_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__AACXPCClient_sendRequest_completion___block_invoke_3;
  block[3] = &unk_278C458A0;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)sendRequest:(unint64_t)request payloadData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __51__AACXPCClient_sendRequest_payloadData_completion___block_invoke;
  v14[3] = &unk_278C45940;
  requestCopy = request;
  v15 = dataCopy;
  selfCopy = self;
  v17 = completionCopy;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__AACXPCClient_sendRequest_payloadData_completion___block_invoke_4;
  v12[3] = &unk_278C45918;
  v13 = v17;
  v10 = v17;
  v11 = dataCopy;
  [(AACXPCClient *)self _remoteProxy:v14 errorHandler:v12];
}

void __51__AACXPCClient_sendRequest_payloadData_completion___block_invoke(void *a1, void *a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__AACXPCClient_sendRequest_payloadData_completion___block_invoke_2;
  v6[3] = &unk_278C458C8;
  v3 = a1[4];
  v4 = a1[6];
  v5 = a1[7];
  v6[4] = a1[5];
  v7 = v4;
  [a2 transportRequest:v5 data:v3 completion:v6];
}

void __51__AACXPCClient_sendRequest_payloadData_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__AACXPCClient_sendRequest_payloadData_completion___block_invoke_3;
  block[3] = &unk_278C458A0;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)sendRequest:(unint64_t)request payload:(id)payload completion:(id)completion
{
  payloadCopy = payload;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__AACXPCClient_sendRequest_payload_completion___block_invoke;
  v14[3] = &unk_278C45940;
  requestCopy = request;
  v15 = payloadCopy;
  selfCopy = self;
  v17 = completionCopy;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __47__AACXPCClient_sendRequest_payload_completion___block_invoke_4;
  v12[3] = &unk_278C45918;
  v13 = v17;
  v10 = v17;
  v11 = payloadCopy;
  [(AACXPCClient *)self _remoteProxy:v14 errorHandler:v12];
}

void __47__AACXPCClient_sendRequest_payload_completion___block_invoke(void *a1, void *a2)
{
  v3 = MEMORY[0x277CCAAA0];
  v4 = a1[4];
  v12 = 0;
  v5 = a2;
  v6 = [v3 dataWithJSONObject:v4 options:4 error:&v12];
  v7 = v12;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__AACXPCClient_sendRequest_payload_completion___block_invoke_2;
  v10[3] = &unk_278C458C8;
  v8 = a1[6];
  v9 = a1[7];
  v10[4] = a1[5];
  v11 = v8;
  [v5 transportRequest:v9 data:v6 completion:v10];
}

void __47__AACXPCClient_sendRequest_payload_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__AACXPCClient_sendRequest_payload_completion___block_invoke_3;
  block[3] = &unk_278C458A0;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)sendSynchronousRequest:(unint64_t)request payload:(id)payload resultHandler:(id)handler
{
  payloadCopy = payload;
  handlerCopy = handler;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61__AACXPCClient_sendSynchronousRequest_payload_resultHandler___block_invoke;
  v14[3] = &unk_278C458F0;
  v15 = payloadCopy;
  requestCopy = request;
  v16 = handlerCopy;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__AACXPCClient_sendSynchronousRequest_payload_resultHandler___block_invoke_2;
  v12[3] = &unk_278C45918;
  v13 = v16;
  v10 = v16;
  v11 = payloadCopy;
  [(AACXPCClient *)self _remoteSynchronousProxy:v14 errorHandler:v12];
}

void __61__AACXPCClient_sendSynchronousRequest_payload_resultHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v11 = 0;
    v5 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v4 options:4 error:&v11];
    v6 = v11;
    if (!v5)
    {
      v7 = ACHLogXPC();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __61__AACXPCClient_sendSynchronousRequest_payload_resultHandler___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__AACXPCClient_sendSynchronousRequest_payload_resultHandler___block_invoke_353;
  v9[3] = &unk_278C45808;
  v8 = *(a1 + 48);
  v10 = *(a1 + 40);
  [v3 transportRequest:v8 data:v5 completion:v9];
}

- (void)_discardEndpointConnection:(id)connection
{
  connectionCopy = connection;
  os_unfair_lock_lock(&self->_lock);
  endpointConnection = self->_endpointConnection;

  if (endpointConnection == connectionCopy)
  {
    [(NSXPCConnection *)endpointConnection invalidate];
    v6 = self->_endpointConnection;
    self->_endpointConnection = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_resetEndpointConnection
{
  os_unfair_lock_lock(&self->_lock);
  [(NSXPCConnection *)self->_endpointConnection invalidate];
  endpointConnection = self->_endpointConnection;
  self->_endpointConnection = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_handleError:(id)error
{
  if ([error hk_isXPCConnectionError])
  {

    [(AACXPCClient *)self _resetEndpointConnection];
  }
}

- (void)_remoteProxy:(id)proxy errorHandler:(id)handler
{
  proxyCopy = proxy;
  handlerCopy = handler;
  serverQueue = self->_serverQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__AACXPCClient__remoteProxy_errorHandler___block_invoke;
  block[3] = &unk_278C45A30;
  block[4] = self;
  v12 = handlerCopy;
  v13 = proxyCopy;
  v9 = proxyCopy;
  v10 = handlerCopy;
  dispatch_async(serverQueue, block);
}

void __42__AACXPCClient__remoteProxy_errorHandler___block_invoke(id *a1)
{
  os_unfair_lock_lock(a1[4] + 2);
  v2 = *(a1[4] + 4);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = *(a1[4] + 5);
  objc_initWeak(&location, a1[4]);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __42__AACXPCClient__remoteProxy_errorHandler___block_invoke_354;
  v14[3] = &unk_278C45990;
  objc_copyWeak(&v17, &location);
  v16 = &v19;
  v15 = a1[5];
  v3 = MEMORY[0x23EF0C2E0](v14);
  os_unfair_lock_unlock(a1[4] + 2);
  v4 = v20[5];
  if (v4)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __42__AACXPCClient__remoteProxy_errorHandler___block_invoke_3;
    v12[3] = &unk_278C45918;
    v13 = v3;
    v5 = [v4 remoteObjectProxyWithErrorHandler:v12];
    (*(a1[6] + 2))();

    v6 = v13;
  }

  else
  {
    v6 = [v2 remoteObjectProxyWithErrorHandler:v3];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __42__AACXPCClient__remoteProxy_errorHandler___block_invoke_355;
    v7[3] = &unk_278C45A08;
    v7[4] = a1[4];
    v10 = &v19;
    objc_copyWeak(&v11, &location);
    v8 = v3;
    v9 = a1[6];
    [v6 createEndpointNamed:@"AAC_XPC_Endpoint_Awards_Client" completion:v7];

    objc_destroyWeak(&v11);
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v19, 8);
}

void __42__AACXPCClient__remoteProxy_errorHandler___block_invoke_354(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if ([v3 hk_isXPCConnectionError])
    {
      [WeakRetained _discardEndpointConnection:*(*(*(a1 + 40) + 8) + 40)];
    }

    v5 = WeakRetained[3];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __42__AACXPCClient__remoteProxy_errorHandler___block_invoke_2;
    v6[3] = &unk_278C45968;
    v8 = *(a1 + 32);
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __42__AACXPCClient__remoteProxy_errorHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ACHLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __42__AACXPCClient__remoteProxy_errorHandler___block_invoke_3_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __42__AACXPCClient__remoteProxy_errorHandler___block_invoke_355(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__AACXPCClient__remoteProxy_errorHandler___block_invoke_2_356;
  block[3] = &unk_278C459E0;
  v17 = *(a1 + 56);
  v12 = v5;
  v13 = v7;
  v9 = v5;
  objc_copyWeak(&v18, (a1 + 64));
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v14 = v6;
  v10 = v6;
  dispatch_async(v8, block);

  objc_destroyWeak(&v18);
}

void __42__AACXPCClient__remoteProxy_errorHandler___block_invoke_2_356(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32) == 0;
  v3 = ACHLogXPC();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __42__AACXPCClient__remoteProxy_errorHandler___block_invoke_2_356_cold_1();
    }

    v13 = *(a1 + 48);
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E4F1000, v4, OS_LOG_TYPE_DEFAULT, "Creating endpoint connection", buf, 2u);
    }

    v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithListenerEndpoint:*(a1 + 32)];
    v6 = *(*(a1 + 72) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2850D1FC8];
    [*(*(*(a1 + 72) + 8) + 40) setRemoteObjectInterface:v8];

    v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2850D1FC8];
    [*(*(*(a1 + 72) + 8) + 40) setExportedInterface:v9];

    [*(*(*(a1 + 72) + 8) + 40) setExportedObject:*(a1 + 40)];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __42__AACXPCClient__remoteProxy_errorHandler___block_invoke_364;
    v19[3] = &unk_278C459B8;
    objc_copyWeak(&v20, (a1 + 80));
    [*(*(*(a1 + 72) + 8) + 40) setInvalidationHandler:v19];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __42__AACXPCClient__remoteProxy_errorHandler___block_invoke_365;
    v17[3] = &unk_278C459B8;
    objc_copyWeak(&v18, (a1 + 80));
    [*(*(*(a1 + 72) + 8) + 40) setInterruptionHandler:v17];
    [*(*(*(a1 + 72) + 8) + 40) resume];
    os_unfair_lock_lock((*(a1 + 40) + 8));
    [*(*(a1 + 40) + 40) invalidate];
    objc_storeStrong((*(a1 + 40) + 40), *(*(*(a1 + 72) + 8) + 40));
    os_unfair_lock_unlock((*(a1 + 40) + 8));
    v10 = *(*(*(a1 + 72) + 8) + 40);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __42__AACXPCClient__remoteProxy_errorHandler___block_invoke_366;
    v15[3] = &unk_278C45918;
    v16 = *(a1 + 56);
    v11 = [v10 remoteObjectProxyWithErrorHandler:v15];
    (*(*(a1 + 64) + 16))();
    v12 = ACHLogXPC();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v22 = @"AAC_XPC_Endpoint_Awards_Client";
      _os_log_impl(&dword_23E4F1000, v12, OS_LOG_TYPE_DEFAULT, "XPC endpoint setup complete for %{public}@.", buf, 0xCu);
    }

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v20);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __42__AACXPCClient__remoteProxy_errorHandler___block_invoke_364(uint64_t a1)
{
  v2 = ACHLogXPC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __42__AACXPCClient__remoteProxy_errorHandler___block_invoke_364_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetEndpointConnection];
}

void __42__AACXPCClient__remoteProxy_errorHandler___block_invoke_365(uint64_t a1)
{
  v2 = ACHLogXPC();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __42__AACXPCClient__remoteProxy_errorHandler___block_invoke_365_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetEndpointConnection];
}

void __42__AACXPCClient__remoteProxy_errorHandler___block_invoke_366(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ACHLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __42__AACXPCClient__remoteProxy_errorHandler___block_invoke_3_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_remoteSynchronousProxy:(id)proxy errorHandler:(id)handler
{
  proxyCopy = proxy;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  serverQueue = self->_serverQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__AACXPCClient__remoteSynchronousProxy_errorHandler___block_invoke;
  block[3] = &unk_278C45AA0;
  block[4] = self;
  objc_copyWeak(&v14, &location);
  v12 = handlerCopy;
  v13 = proxyCopy;
  v9 = proxyCopy;
  v10 = handlerCopy;
  dispatch_sync(serverQueue, block);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __53__AACXPCClient__remoteSynchronousProxy_errorHandler___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = *(*(a1 + 32) + 32);
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__0;
  v15[4] = __Block_byref_object_dispose__0;
  v16 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__AACXPCClient__remoteSynchronousProxy_errorHandler___block_invoke_2;
  v11[3] = &unk_278C45990;
  objc_copyWeak(&v14, (a1 + 56));
  v13 = v15;
  v12 = *(a1 + 40);
  v3 = MEMORY[0x23EF0C2E0](v11);
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  v4 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v3];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__AACXPCClient__remoteSynchronousProxy_errorHandler___block_invoke_4;
  v7[3] = &unk_278C45A78;
  v5 = *(a1 + 32);
  v10 = v15;
  v7[4] = v5;
  v8 = *(a1 + 48);
  v6 = v3;
  v9 = v6;
  [v4 createEndpointNamed:@"AAC_XPC_Endpoint_Awards_Client" completion:v7];

  objc_destroyWeak(&v14);
  _Block_object_dispose(v15, 8);
}

void __53__AACXPCClient__remoteSynchronousProxy_errorHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if ([v3 hk_isXPCConnectionError])
    {
      [WeakRetained _discardEndpointConnection:*(*(*(a1 + 40) + 8) + 40)];
    }

    v5 = WeakRetained[3];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __53__AACXPCClient__remoteSynchronousProxy_errorHandler___block_invoke_3;
    v6[3] = &unk_278C45968;
    v8 = *(a1 + 32);
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __53__AACXPCClient__remoteSynchronousProxy_errorHandler___block_invoke_4(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = ACHLogXPC();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_23E4F1000, v8, OS_LOG_TYPE_DEFAULT, "Creating endpoint connection", v19, 2u);
    }

    v9 = [objc_alloc(MEMORY[0x277CCAE80]) initWithListenerEndpoint:v5];
    v10 = *(a1[7] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2850D1FC8];
    [*(*(a1[7] + 8) + 40) setRemoteObjectInterface:v12];

    v13 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2850D1FC8];
    [*(*(a1[7] + 8) + 40) setExportedInterface:v13];

    [*(*(a1[7] + 8) + 40) setExportedObject:a1[4]];
    [*(*(a1[7] + 8) + 40) setInvalidationHandler:&__block_literal_global_370];
    [*(*(a1[7] + 8) + 40) setInterruptionHandler:&__block_literal_global_373];
    [*(*(a1[7] + 8) + 40) resume];
    v14 = [*(*(a1[7] + 8) + 40) synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_376];
    v15 = ACHLogXPC();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      __53__AACXPCClient__remoteSynchronousProxy_errorHandler___block_invoke_4_cold_1();
    }

    (*(a1[5] + 16))();
    v16 = ACHLogXPC();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      __53__AACXPCClient__remoteSynchronousProxy_errorHandler___block_invoke_4_cold_2();
    }

    [*(*(a1[7] + 8) + 40) invalidate];
    v17 = *(a1[7] + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = 0;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __53__AACXPCClient__remoteSynchronousProxy_errorHandler___block_invoke_4_cold_3();
    }

    (*(a1[6] + 16))();
  }
}

void __53__AACXPCClient__remoteSynchronousProxy_errorHandler___block_invoke_368()
{
  v0 = ACHLogXPC();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __53__AACXPCClient__remoteSynchronousProxy_errorHandler___block_invoke_368_cold_1();
  }
}

void __53__AACXPCClient__remoteSynchronousProxy_errorHandler___block_invoke_371()
{
  v0 = ACHLogXPC();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __53__AACXPCClient__remoteSynchronousProxy_errorHandler___block_invoke_371_cold_1();
  }
}

void __53__AACXPCClient__remoteSynchronousProxy_errorHandler___block_invoke_374(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ACHLogXPC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __53__AACXPCClient__remoteSynchronousProxy_errorHandler___block_invoke_374_cold_1();
  }
}

void __61__AACXPCClient_sendSynchronousRequest_payload_resultHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(&dword_23E4F1000, v0, v1, "Error serializing paylod: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __42__AACXPCClient__remoteProxy_errorHandler___block_invoke_3_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(&dword_23E4F1000, v0, v1, "Failed to fetch endpoint proxy with error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __42__AACXPCClient__remoteProxy_errorHandler___block_invoke_2_356_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_23E4F1000, v0, v1, "Unable to establish XPC endpoint connection for %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __42__AACXPCClient__remoteProxy_errorHandler___block_invoke_364_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_23E4F1000, v0, v1, "XPC client-side connection invalidated for %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __42__AACXPCClient__remoteProxy_errorHandler___block_invoke_365_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_23E4F1000, v0, v1, "XPC client-side connection interrupted for %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __53__AACXPCClient__remoteSynchronousProxy_errorHandler___block_invoke_4_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_23E4F1000, v0, OS_LOG_TYPE_DEBUG, "Sync XPC endpoint setup complete for %{public}@, passing proxy to handler.", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __53__AACXPCClient__remoteSynchronousProxy_errorHandler___block_invoke_4_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_23E4F1000, v0, v1, "Unable to establish Sync XPC endpoint connection for %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __53__AACXPCClient__remoteSynchronousProxy_errorHandler___block_invoke_368_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_23E4F1000, v0, v1, "Sync XPC client-side connection invalidated for %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __53__AACXPCClient__remoteSynchronousProxy_errorHandler___block_invoke_371_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_23E4F1000, v0, v1, "Sync XPC client-side connection interrupted for %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __53__AACXPCClient__remoteSynchronousProxy_errorHandler___block_invoke_374_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_0(&dword_23E4F1000, v0, v1, "Sync XPC failed to fetch endpoint proxy with error %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end