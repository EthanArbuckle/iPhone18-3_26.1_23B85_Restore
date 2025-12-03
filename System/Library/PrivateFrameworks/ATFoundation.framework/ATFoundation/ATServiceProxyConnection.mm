@interface ATServiceProxyConnection
- (ATService)service;
- (ATServiceProxyConnection)initWithService:(id)service connection:(id)connection;
- (void)fetchMessageLinksWithCompletion:(id)completion;
- (void)service:(id)service willOpenMessageLink:(id)link;
@end

@implementation ATServiceProxyConnection

- (ATService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

- (void)fetchMessageLinksWithCompletion:(id)completion
{
  v29 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  service = [(ATServiceProxyConnection *)self service];
  if (objc_opt_respondsToSelector())
  {
    v23 = service;
    allMessageLinkProxyListeners = [service allMessageLinkProxyListeners];
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(allMessageLinkProxyListeners, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = allMessageLinkProxyListeners;
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          v14 = objc_alloc(MEMORY[0x277CEA450]);
          endpoint = [v13 endpoint];
          v16 = [v14 initWithEndpoint:endpoint];

          messageLink = [v13 messageLink];
          guid = [messageLink guid];
          [v16 setIdentifier:guid];

          messageLink2 = [v13 messageLink];
          [v16 setOpen:{objc_msgSend(messageLink2, "isOpen")}];

          messageLink3 = [v13 messageLink];
          [v16 setInitialized:{objc_msgSend(messageLink3, "isInitialized")}];

          messageLink4 = [v13 messageLink];
          [v16 setEndpointType:{objc_msgSend(messageLink4, "endpointType")}];

          [v7 addObject:v16];
        }

        v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v10);
    }

    completionCopy[2](completionCopy, v7, 0);
    service = v23;
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)service willOpenMessageLink:(id)link
{
  serviceCopy = service;
  linkCopy = link;
  if (objc_opt_respondsToSelector())
  {
    v8 = [serviceCopy proxyListenerForMessageLink:linkCopy];
    v9 = objc_alloc(MEMORY[0x277CEA450]);
    endpoint = [v8 endpoint];
    v11 = [v9 initWithEndpoint:endpoint];

    v12 = dispatch_semaphore_create(0);
    connection = [(ATServiceProxyConnection *)self connection];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __56__ATServiceProxyConnection_service_willOpenMessageLink___block_invoke;
    v19[3] = &unk_2784E9430;
    v14 = v12;
    v20 = v14;
    v15 = [connection remoteObjectProxyWithErrorHandler:v19];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __56__ATServiceProxyConnection_service_willOpenMessageLink___block_invoke_2;
    v17[3] = &unk_2784E9430;
    v18 = v14;
    v16 = v14;
    [v15 service:0 willOpenMessageLink:v11 completion:v17];

    dispatch_semaphore_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
  }
}

- (ATServiceProxyConnection)initWithService:(id)service connection:(id)connection
{
  serviceCopy = service;
  connectionCopy = connection;
  v11.receiver = self;
  v11.super_class = ATServiceProxyConnection;
  v8 = [(ATServiceProxyConnection *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_service, serviceCopy);
    objc_storeStrong(&v9->_connection, connection);
  }

  return v9;
}

@end