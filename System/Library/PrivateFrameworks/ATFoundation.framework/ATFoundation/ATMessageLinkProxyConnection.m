@interface ATMessageLinkProxyConnection
- (ATMessageLink)messageLink;
- (ATMessageLinkProxyConnection)initWithMessageLink:(id)a3 connection:(id)a4;
- (void)addRequestHandler:(id)a3 forDataClass:(id)a4 completion:(id)a5;
- (void)messageLink:(id)a3 didReceiveRequest:(id)a4;
- (void)messageLinkWasClosed:(id)a3;
- (void)messageLinkWasInitialized:(id)a3;
- (void)messageLinkWasOpened:(id)a3;
- (void)removeRequestHandlerForDataClass:(id)a3 completion:(id)a4;
- (void)sendRequest:(id)a3 withCompletion:(id)a4;
- (void)sendResponse:(id)a3 withCompletion:(id)a4;
- (void)stop;
@end

@implementation ATMessageLinkProxyConnection

- (ATMessageLink)messageLink
{
  WeakRetained = objc_loadWeakRetained(&self->_messageLink);

  return WeakRetained;
}

- (void)removeRequestHandlerForDataClass:(id)a3 completion:(id)a4
{
  v8 = a4;
  v6 = a3;
  v7 = [(ATMessageLinkProxyConnection *)self messageLink];
  [v7 removeRequestHandlerForDataClass:v6];

  v8[2](v8, 0);
}

- (void)addRequestHandler:(id)a3 forDataClass:(id)a4 completion:(id)a5
{
  v9 = a5;
  v7 = a4;
  v8 = [(ATMessageLinkProxyConnection *)self messageLink];
  [v8 addRequestHandler:self forDataClass:v7];

  v9[2](v9, 0);
}

- (void)sendResponse:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ATMessageLinkProxyConnection *)self messageLink];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__ATMessageLinkProxyConnection_sendResponse_withCompletion___block_invoke;
  v10[3] = &unk_2784E94A8;
  v11 = v6;
  v9 = v6;
  [v8 sendResponse:v7 withCompletion:v10];
}

- (void)sendRequest:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ATMessageLinkProxyConnection *)self messageLink];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__ATMessageLinkProxyConnection_sendRequest_withCompletion___block_invoke;
  v10[3] = &unk_2784E9480;
  v11 = v6;
  v9 = v6;
  [v8 sendRequest:v7 withCompletion:v10];
}

- (void)messageLink:(id)a3 didReceiveRequest:(id)a4
{
  v5 = a4;
  v6 = dispatch_semaphore_create(0);
  v7 = [(ATMessageLinkProxyConnection *)self connection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__ATMessageLinkProxyConnection_messageLink_didReceiveRequest___block_invoke;
  v13[3] = &unk_2784E9430;
  v8 = v6;
  v14 = v8;
  v9 = [v7 remoteObjectProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__ATMessageLinkProxyConnection_messageLink_didReceiveRequest___block_invoke_5;
  v11[3] = &unk_2784E9458;
  v12 = v8;
  v10 = v8;
  [v9 messageLink:0 didReceiveRequest:v5 completion:v11];

  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
}

void __62__ATMessageLinkProxyConnection_messageLink_didReceiveRequest___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _ATLogCategoryXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_22392A000, v4, OS_LOG_TYPE_ERROR, "%{public}@", &v6, 0xCu);
  }

  dispatch_semaphore_signal(*(a1 + 32));
  v5 = *MEMORY[0x277D85DE8];
}

- (void)messageLinkWasClosed:(id)a3
{
  v4 = [(ATMessageLinkProxyConnection *)self connection];
  v5 = [v4 remoteObjectProxyWithErrorHandler:&__block_literal_global_4];
  [v5 messageLinkWasClosed:0];

  [(ATMessageLinkProxyConnection *)self stop];
}

void __53__ATMessageLinkProxyConnection_messageLinkWasClosed___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = _ATLogCategoryXPC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_22392A000, v3, OS_LOG_TYPE_ERROR, "%{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)messageLinkWasInitialized:(id)a3
{
  v4 = [(ATMessageLinkProxyConnection *)self connection];
  v3 = [v4 remoteObjectProxyWithErrorHandler:&__block_literal_global_2];
  [v3 messageLinkWasInitialized:0];
}

void __58__ATMessageLinkProxyConnection_messageLinkWasInitialized___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = _ATLogCategoryXPC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_22392A000, v3, OS_LOG_TYPE_ERROR, "%{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)messageLinkWasOpened:(id)a3
{
  v4 = [(ATMessageLinkProxyConnection *)self connection];
  v3 = [v4 remoteObjectProxyWithErrorHandler:&__block_literal_global_1924];
  [v3 messageLinkWasOpened:0];
}

void __53__ATMessageLinkProxyConnection_messageLinkWasOpened___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = _ATLogCategoryXPC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_22392A000, v3, OS_LOG_TYPE_ERROR, "%{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)stop
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _ATLogCategoryDeviceSync();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = self;
    _os_log_impl(&dword_22392A000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Stopping .. ", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_messageLink);
  [WeakRetained removeObserver:self];

  v5 = *MEMORY[0x277D85DE8];
}

- (ATMessageLinkProxyConnection)initWithMessageLink:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ATMessageLinkProxyConnection;
  v8 = [(ATMessageLinkProxyConnection *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_connection, a4);
    objc_storeWeak(&v9->_messageLink, v6);
    [v6 addObserver:v9];
  }

  return v9;
}

@end