@interface ATMessageLinkProxy
- (ATMessageLinkProxy)initWithCoder:(id)a3;
- (ATMessageLinkProxy)initWithEndpoint:(id)a3;
- (NSString)description;
- (void)addObserver:(id)a3;
- (void)addRequestHandler:(id)a3 forDataClass:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)messageLink:(id)a3 didReceiveRequest:(id)a4 completion:(id)a5;
- (void)messageLinkWasClosed:(id)a3;
- (void)messageLinkWasInitialized:(id)a3;
- (void)messageLinkWasOpened:(id)a3;
- (void)removeObserver:(id)a3;
- (void)removeRequestHandlerForDataClass:(id)a3;
- (void)sendRequest:(id)a3 withCompletion:(id)a4;
- (void)sendResponse:(id)a3 withCompletion:(id)a4;
@end

@implementation ATMessageLinkProxy

- (void)removeRequestHandlerForDataClass:(id)a3
{
  v4 = a3;
  v5 = self->_requestHandlers;
  objc_sync_enter(v5);
  v6 = dispatch_semaphore_create(0);
  connection = self->_connection;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __55__ATMessageLinkProxy_removeRequestHandlerForDataClass___block_invoke;
  v17[3] = &unk_278C6D8A0;
  v17[4] = self;
  v8 = v6;
  v18 = v8;
  v9 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v17];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __55__ATMessageLinkProxy_removeRequestHandlerForDataClass___block_invoke_100;
  v14 = &unk_278C6D8A0;
  v15 = self;
  v10 = v8;
  v16 = v10;
  [v9 removeRequestHandlerForDataClass:v4 completion:&v11];

  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  [(NSMutableDictionary *)self->_requestHandlers removeObjectForKey:v4, v11, v12, v13, v14, v15];

  objc_sync_exit(v5);
}

void __55__ATMessageLinkProxy_removeRequestHandlerForDataClass___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.AirTraffic", "Framework");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_23EC61000, v4, OS_LOG_TYPE_ERROR, "%{public}@ error removing request handler. failed to connect to remote proxy with error:%{public}@", &v7, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v6 = *MEMORY[0x277D85DE8];
}

void __55__ATMessageLinkProxy_removeRequestHandlerForDataClass___block_invoke_100(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.AirTraffic", "Framework");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_23EC61000, v4, OS_LOG_TYPE_ERROR, "%{public}@ error:%{public}@ removing request handler.", &v7, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addRequestHandler:(id)a3 forDataClass:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_requestHandlers;
  objc_sync_enter(v8);
  [(NSMutableDictionary *)self->_requestHandlers setObject:v6 forKey:v7];
  v9 = dispatch_semaphore_create(0);
  connection = self->_connection;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __53__ATMessageLinkProxy_addRequestHandler_forDataClass___block_invoke;
  v16[3] = &unk_278C6D8A0;
  v16[4] = self;
  v11 = v9;
  v17 = v11;
  v12 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __53__ATMessageLinkProxy_addRequestHandler_forDataClass___block_invoke_99;
  v14[3] = &unk_278C6D8A0;
  v14[4] = self;
  v13 = v11;
  v15 = v13;
  [v12 addRequestHandler:0 forDataClass:v7 completion:v14];

  dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  objc_sync_exit(v8);
}

void __53__ATMessageLinkProxy_addRequestHandler_forDataClass___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.AirTraffic", "Framework");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_23EC61000, v4, OS_LOG_TYPE_ERROR, "%{public}@ error adding request handler. failed to connect to remote proxy with error:%{public}@", &v7, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v6 = *MEMORY[0x277D85DE8];
}

void __53__ATMessageLinkProxy_addRequestHandler_forDataClass___block_invoke_99(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.AirTraffic", "Framework");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_23EC61000, v4, OS_LOG_TYPE_ERROR, "%{public}@ error:%{public}@ adding request handler.", &v7, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeObserver:(id)a3
{
  v5 = a3;
  v4 = self->_observers;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_observers removeObject:v5];
  objc_sync_exit(v4);
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = self->_observers;
  objc_sync_enter(v5);
  [(NSHashTable *)self->_observers addObject:v4];
  objc_sync_exit(v5);

  v6 = dispatch_semaphore_create(0);
  connection = self->_connection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __34__ATMessageLinkProxy_addObserver___block_invoke;
  v13[3] = &unk_278C6D8A0;
  v13[4] = self;
  v8 = v6;
  v14 = v8;
  v9 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __34__ATMessageLinkProxy_addObserver___block_invoke_98;
  v11[3] = &unk_278C6D8A0;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  [v9 connectWithCompletion:v11];

  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
}

void __34__ATMessageLinkProxy_addObserver___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_log_create("com.apple.amp.AirTraffic", "Framework");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v3;
    _os_log_impl(&dword_23EC61000, v4, OS_LOG_TYPE_ERROR, "%{public}@ error adding observer. failed to connect to remote proxy with error:%{public}@", &v7, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v6 = *MEMORY[0x277D85DE8];
}

void __34__ATMessageLinkProxy_addObserver___block_invoke_98(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.AirTraffic", "Framework");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v7 = 138543618;
      v8 = v5;
      v9 = 2114;
      v10 = v3;
      _os_log_impl(&dword_23EC61000, v4, OS_LOG_TYPE_ERROR, "%{public}@ error:%{public}@ adding observer.", &v7, 0x16u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));

  v6 = *MEMORY[0x277D85DE8];
}

- (void)sendResponse:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  connection = self->_connection;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __50__ATMessageLinkProxy_sendResponse_withCompletion___block_invoke;
  v14[3] = &unk_278C6DA58;
  v8 = v6;
  v15 = v8;
  v9 = a3;
  v10 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__ATMessageLinkProxy_sendResponse_withCompletion___block_invoke_2;
  v12[3] = &unk_278C6DA58;
  v13 = v8;
  v11 = v8;
  [v10 sendResponse:v9 withCompletion:v12];
}

uint64_t __50__ATMessageLinkProxy_sendResponse_withCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __50__ATMessageLinkProxy_sendResponse_withCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)sendRequest:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  connection = self->_connection;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __49__ATMessageLinkProxy_sendRequest_withCompletion___block_invoke;
  v14[3] = &unk_278C6DA58;
  v8 = v6;
  v15 = v8;
  v9 = a3;
  v10 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49__ATMessageLinkProxy_sendRequest_withCompletion___block_invoke_2;
  v12[3] = &unk_278C6D560;
  v13 = v8;
  v11 = v8;
  [v10 sendRequest:v9 withCompletion:v12];
}

uint64_t __49__ATMessageLinkProxy_sendRequest_withCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

uint64_t __49__ATMessageLinkProxy_sendRequest_withCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)messageLink:(id)a3 didReceiveRequest:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self->_requestHandlers;
  objc_sync_enter(v11);
  requestHandlers = self->_requestHandlers;
  v13 = [v9 dataClass];
  v14 = [(NSMutableDictionary *)requestHandlers objectForKey:v13];

  v15 = dispatch_get_global_queue(0, 0);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __63__ATMessageLinkProxy_messageLink_didReceiveRequest_completion___block_invoke;
  v19[3] = &unk_278C6D538;
  v20 = v14;
  v21 = self;
  v22 = v9;
  v23 = v10;
  v16 = v10;
  v17 = v9;
  v18 = v14;
  dispatch_async(v15, v19);

  objc_sync_exit(v11);
}

uint64_t __63__ATMessageLinkProxy_messageLink_didReceiveRequest_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) messageLink:*(a1 + 40) didReceiveRequest:*(a1 + 48)];
  }

  v3 = [*(a1 + 48) dataStream];
  if (v3)
  {
    v4 = [*(a1 + 48) dataStream];
    [v4 streamStatus];
  }

  v5 = *(*(a1 + 56) + 16);

  return v5();
}

- (void)messageLinkWasClosed:(id)a3
{
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__ATMessageLinkProxy_messageLinkWasClosed___block_invoke;
  block[3] = &unk_278C6DBE0;
  block[4] = self;
  dispatch_async(v4, block);
}

void __43__ATMessageLinkProxy_messageLinkWasClosed___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 48) == 1)
  {
    v3 = *(v1 + 24);
    objc_sync_enter(v3);
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = *(*(a1 + 32) + 24);
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v10 + 1) + 8 * v7);
          if (objc_opt_respondsToSelector())
          {
            [v8 messageLinkWasClosed:{*(a1 + 32), v10}];
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    *(*(a1 + 32) + 48) = 0;
    objc_sync_exit(v3);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)messageLinkWasInitialized:(id)a3
{
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__ATMessageLinkProxy_messageLinkWasInitialized___block_invoke;
  block[3] = &unk_278C6DBE0;
  block[4] = self;
  dispatch_async(v4, block);
}

void __48__ATMessageLinkProxy_messageLinkWasInitialized___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 49) = 1;
  v2 = *(*(a1 + 32) + 24);
  objc_sync_enter(v2);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(*(a1 + 32) + 24);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 messageLinkWasInitialized:{*(a1 + 32), v9}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  objc_sync_exit(v2);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)messageLinkWasOpened:(id)a3
{
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__ATMessageLinkProxy_messageLinkWasOpened___block_invoke;
  block[3] = &unk_278C6DBE0;
  block[4] = self;
  dispatch_async(v4, block);
}

void __43__ATMessageLinkProxy_messageLinkWasOpened___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 48) = 1;
  v2 = *(*(a1 + 32) + 24);
  objc_sync_enter(v2);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(*(a1 + 32) + 24);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 messageLinkWasOpened:{*(a1 + 32), v9}];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  objc_sync_exit(v2);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)a3
{
  endpoint = self->_endpoint;
  v5 = a3;
  [v5 encodeObject:endpoint forKey:@"endpoint"];
  [v5 encodeBool:self->_initialized forKey:@"initialized"];
  [v5 encodeBool:self->_open forKey:@"open"];
  [v5 encodeInt32:self->_endpointType forKey:@"endpointType"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
}

- (ATMessageLinkProxy)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATMessageLinkProxy *)self initWithEndpoint:0];
  if (v5)
  {
    v5->_open = [v4 decodeBoolForKey:@"open"];
    v5->_initialized = [v4 decodeBoolForKey:@"initialized"];
    v5->_endpointType = [v4 decodeInt32ForKey:@"endpointType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endpoint"];
    v9 = [objc_alloc(MEMORY[0x277CCAE80]) initWithListenerEndpoint:v8];
    connection = v5->_connection;
    v5->_connection = v9;

    v11 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285162A08];
    [(NSXPCConnection *)v5->_connection setRemoteObjectInterface:v11];

    v12 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285162AD0];
    [(NSXPCConnection *)v5->_connection setExportedInterface:v12];
    [(NSXPCConnection *)v5->_connection setExportedObject:v5];
    objc_initWeak(&location, v5);
    v13 = v5->_connection;
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __36__ATMessageLinkProxy_initWithCoder___block_invoke;
    v18 = &unk_278C6DA10;
    objc_copyWeak(&v19, &location);
    [(NSXPCConnection *)v13 setInvalidationHandler:&v15];
    [(NSXPCConnection *)v5->_connection resume:v15];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __36__ATMessageLinkProxy_initWithCoder___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained messageLinkWasClosed:0];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ATMessageLinkProxy *)self identifier];
  v7 = [v3 stringWithFormat:@"<%@: %p %@ open=%d, initialized=%d, endpointType=%d>", v5, self, v6, self->_open, self->_initialized, self->_endpointType];

  return v7;
}

- (void)dealloc
{
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection invalidate];
  }

  v4.receiver = self;
  v4.super_class = ATMessageLinkProxy;
  [(ATMessageLinkProxy *)&v4 dealloc];
}

- (ATMessageLinkProxy)initWithEndpoint:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = ATMessageLinkProxy;
  v6 = [(ATMessageLink *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_endpoint, a3);
    v8 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v7->_observers;
    v7->_observers = v8;

    v10 = objc_opt_new();
    requestHandlers = v7->_requestHandlers;
    v7->_requestHandlers = v10;

    v12 = [MEMORY[0x277CBEB58] set];
    streams = v7->_streams;
    v7->_streams = v12;
  }

  return v7;
}

@end