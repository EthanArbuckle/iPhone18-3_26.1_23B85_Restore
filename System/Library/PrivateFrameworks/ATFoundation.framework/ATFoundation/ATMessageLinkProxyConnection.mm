@interface ATMessageLinkProxyConnection
- (ATMessageLink)messageLink;
- (ATMessageLinkProxyConnection)initWithMessageLink:(id)link connection:(id)connection;
- (void)addRequestHandler:(id)handler forDataClass:(id)class completion:(id)completion;
- (void)messageLink:(id)link didReceiveRequest:(id)request;
- (void)messageLinkWasClosed:(id)closed;
- (void)messageLinkWasInitialized:(id)initialized;
- (void)messageLinkWasOpened:(id)opened;
- (void)removeRequestHandlerForDataClass:(id)class completion:(id)completion;
- (void)sendRequest:(id)request withCompletion:(id)completion;
- (void)sendResponse:(id)response withCompletion:(id)completion;
- (void)stop;
@end

@implementation ATMessageLinkProxyConnection

- (ATMessageLink)messageLink
{
  WeakRetained = objc_loadWeakRetained(&self->_messageLink);

  return WeakRetained;
}

- (void)removeRequestHandlerForDataClass:(id)class completion:(id)completion
{
  completionCopy = completion;
  classCopy = class;
  messageLink = [(ATMessageLinkProxyConnection *)self messageLink];
  [messageLink removeRequestHandlerForDataClass:classCopy];

  completionCopy[2](completionCopy, 0);
}

- (void)addRequestHandler:(id)handler forDataClass:(id)class completion:(id)completion
{
  completionCopy = completion;
  classCopy = class;
  messageLink = [(ATMessageLinkProxyConnection *)self messageLink];
  [messageLink addRequestHandler:self forDataClass:classCopy];

  completionCopy[2](completionCopy, 0);
}

- (void)sendResponse:(id)response withCompletion:(id)completion
{
  completionCopy = completion;
  responseCopy = response;
  messageLink = [(ATMessageLinkProxyConnection *)self messageLink];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__ATMessageLinkProxyConnection_sendResponse_withCompletion___block_invoke;
  v10[3] = &unk_2784E94A8;
  v11 = completionCopy;
  v9 = completionCopy;
  [messageLink sendResponse:responseCopy withCompletion:v10];
}

- (void)sendRequest:(id)request withCompletion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  messageLink = [(ATMessageLinkProxyConnection *)self messageLink];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__ATMessageLinkProxyConnection_sendRequest_withCompletion___block_invoke;
  v10[3] = &unk_2784E9480;
  v11 = completionCopy;
  v9 = completionCopy;
  [messageLink sendRequest:requestCopy withCompletion:v10];
}

- (void)messageLink:(id)link didReceiveRequest:(id)request
{
  requestCopy = request;
  v6 = dispatch_semaphore_create(0);
  connection = [(ATMessageLinkProxyConnection *)self connection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__ATMessageLinkProxyConnection_messageLink_didReceiveRequest___block_invoke;
  v13[3] = &unk_2784E9430;
  v8 = v6;
  v14 = v8;
  v9 = [connection remoteObjectProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__ATMessageLinkProxyConnection_messageLink_didReceiveRequest___block_invoke_5;
  v11[3] = &unk_2784E9458;
  v12 = v8;
  v10 = v8;
  [v9 messageLink:0 didReceiveRequest:requestCopy completion:v11];

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

- (void)messageLinkWasClosed:(id)closed
{
  connection = [(ATMessageLinkProxyConnection *)self connection];
  v5 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_4];
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

- (void)messageLinkWasInitialized:(id)initialized
{
  connection = [(ATMessageLinkProxyConnection *)self connection];
  v3 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_2];
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

- (void)messageLinkWasOpened:(id)opened
{
  connection = [(ATMessageLinkProxyConnection *)self connection];
  v3 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_1924];
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
    selfCopy = self;
    _os_log_impl(&dword_22392A000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Stopping .. ", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_messageLink);
  [WeakRetained removeObserver:self];

  v5 = *MEMORY[0x277D85DE8];
}

- (ATMessageLinkProxyConnection)initWithMessageLink:(id)link connection:(id)connection
{
  linkCopy = link;
  connectionCopy = connection;
  v11.receiver = self;
  v11.super_class = ATMessageLinkProxyConnection;
  v8 = [(ATMessageLinkProxyConnection *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_connection, connection);
    objc_storeWeak(&v9->_messageLink, linkCopy);
    [linkCopy addObserver:v9];
  }

  return v9;
}

@end