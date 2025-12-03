@interface ILMessageFilter
- (ILMessageFilter)init;
- (NSXPCConnection)connection;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (void)dealloc;
- (void)performCapabilitiesQueryRequest:(id)request completion:(id)completion;
- (void)performClassificationReportRequest:(id)request completion:(id)completion;
- (void)performQueryRequest:(id)request completion:(id)completion;
- (void)performReportRequest:(id)request completion:(id)completion;
@end

@implementation ILMessageFilter

- (ILMessageFilter)init
{
  v6.receiver = self;
  v6.super_class = ILMessageFilter;
  v2 = [(ILMessageFilter *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.identitylookup.messagefilter", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = ILMessageFilter;
  [(ILMessageFilter *)&v3 dealloc];
}

- (NSXPCConnection)connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.IdentityLookup.MessageFilter"];
    v5 = self->_connection;
    self->_connection = v4;

    il_messageFilterHostInterface = [MEMORY[0x277CCAE90] il_messageFilterHostInterface];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:il_messageFilterHostInterface];

    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __29__ILMessageFilter_connection__block_invoke;
    v10[3] = &unk_278A5E500;
    objc_copyWeak(&v11, &location);
    [(NSXPCConnection *)self->_connection setInterruptionHandler:v10];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __29__ILMessageFilter_connection__block_invoke_2;
    v8[3] = &unk_278A5E500;
    objc_copyWeak(&v9, &location);
    [(NSXPCConnection *)self->_connection setInvalidationHandler:v8];
    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  return connection;
}

void __29__ILMessageFilter_connection__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = ILDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = WeakRetained;
    _os_log_impl(&dword_238A41000, v2, OS_LOG_TYPE_DEFAULT, "Connection interrupted for message filter %@", buf, 0xCu);
  }

  v3 = [WeakRetained queue];

  if (v3)
  {
    v4 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __29__ILMessageFilter_connection__block_invoke_8;
    block[3] = &unk_278A5E4D8;
    block[4] = WeakRetained;
    dispatch_async(v4, block);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __29__ILMessageFilter_connection__block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = ILDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = WeakRetained;
    _os_log_impl(&dword_238A41000, v2, OS_LOG_TYPE_DEFAULT, "Default connection invalidated for message filter %@", buf, 0xCu);
  }

  v3 = [WeakRetained queue];

  if (v3)
  {
    v4 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __29__ILMessageFilter_connection__block_invoke_10;
    block[3] = &unk_278A5E4D8;
    block[4] = WeakRetained;
    dispatch_async(v4, block);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __29__ILMessageFilter_connection__block_invoke_10(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  *(v1 + 8) = 0;
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(ILMessageFilter *)self connection];
  v6 = [connection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (void)performQueryRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  queue = [(ILMessageFilter *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ILMessageFilter_performQueryRequest_completion___block_invoke;
  block[3] = &unk_278A5E528;
  v12 = requestCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = requestCopy;
  v10 = completionCopy;
  dispatch_async(queue, block);
}

void __50__ILMessageFilter_performQueryRequest_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__ILMessageFilter_performQueryRequest_completion___block_invoke_2;
  v4[3] = &unk_278A5E3D0;
  v5 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 performQueryRequest:*(a1 + 40) reply:*(a1 + 48)];
}

void __50__ILMessageFilter_performQueryRequest_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ILDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __50__ILMessageFilter_performQueryRequest_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)performReportRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  queue = [(ILMessageFilter *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__ILMessageFilter_performReportRequest_completion___block_invoke;
  block[3] = &unk_278A5E528;
  v12 = requestCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = requestCopy;
  v10 = completionCopy;
  dispatch_async(queue, block);
}

void __51__ILMessageFilter_performReportRequest_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__ILMessageFilter_performReportRequest_completion___block_invoke_2;
  v4[3] = &unk_278A5E3D0;
  v5 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 performReportRequest:*(a1 + 40) reply:*(a1 + 48)];
}

void __51__ILMessageFilter_performReportRequest_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ILDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __51__ILMessageFilter_performReportRequest_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)performCapabilitiesQueryRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  queue = [(ILMessageFilter *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__ILMessageFilter_performCapabilitiesQueryRequest_completion___block_invoke;
  block[3] = &unk_278A5E528;
  v12 = requestCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = requestCopy;
  v10 = completionCopy;
  dispatch_async(queue, block);
}

void __62__ILMessageFilter_performCapabilitiesQueryRequest_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__ILMessageFilter_performCapabilitiesQueryRequest_completion___block_invoke_2;
  v4[3] = &unk_278A5E3D0;
  v5 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 performCapabilitiesQueryRequest:*(a1 + 40) reply:*(a1 + 48)];
}

void __62__ILMessageFilter_performCapabilitiesQueryRequest_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ILDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __62__ILMessageFilter_performCapabilitiesQueryRequest_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)performClassificationReportRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  queue = [(ILMessageFilter *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__ILMessageFilter_performClassificationReportRequest_completion___block_invoke;
  block[3] = &unk_278A5E528;
  v12 = requestCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = requestCopy;
  v10 = completionCopy;
  dispatch_async(queue, block);
}

void __65__ILMessageFilter_performClassificationReportRequest_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__ILMessageFilter_performClassificationReportRequest_completion___block_invoke_2;
  v4[3] = &unk_278A5E3D0;
  v5 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 performClassificationReportRequest:*(a1 + 40)];

  (*(*(a1 + 48) + 16))();
}

void __65__ILMessageFilter_performClassificationReportRequest_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ILDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __50__ILMessageFilter_performQueryRequest_completion___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __50__ILMessageFilter_performQueryRequest_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_238A41000, v0, v1, "received error calling remote object proxy: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __51__ILMessageFilter_performReportRequest_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_238A41000, v0, v1, "received error calling remote object proxy for performReportRequest: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __62__ILMessageFilter_performCapabilitiesQueryRequest_completion___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_238A41000, v0, v1, "received error calling remote object proxy for performCapabilitiesQueryRequest: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end