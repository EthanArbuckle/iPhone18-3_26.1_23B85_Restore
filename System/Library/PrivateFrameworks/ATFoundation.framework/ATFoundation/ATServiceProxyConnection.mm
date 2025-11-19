@interface ATServiceProxyConnection
- (ATService)service;
- (ATServiceProxyConnection)initWithService:(id)a3 connection:(id)a4;
- (void)fetchMessageLinksWithCompletion:(id)a3;
- (void)service:(id)a3 willOpenMessageLink:(id)a4;
@end

@implementation ATServiceProxyConnection

- (ATService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

- (void)fetchMessageLinksWithCompletion:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ATServiceProxyConnection *)self service];
  if (objc_opt_respondsToSelector())
  {
    v23 = v5;
    v6 = [v5 allMessageLinkProxyListeners];
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = v6;
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
          v15 = [v13 endpoint];
          v16 = [v14 initWithEndpoint:v15];

          v17 = [v13 messageLink];
          v18 = [v17 guid];
          [v16 setIdentifier:v18];

          v19 = [v13 messageLink];
          [v16 setOpen:{objc_msgSend(v19, "isOpen")}];

          v20 = [v13 messageLink];
          [v16 setInitialized:{objc_msgSend(v20, "isInitialized")}];

          v21 = [v13 messageLink];
          [v16 setEndpointType:{objc_msgSend(v21, "endpointType")}];

          [v7 addObject:v16];
        }

        v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v10);
    }

    v4[2](v4, v7, 0);
    v5 = v23;
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 willOpenMessageLink:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (objc_opt_respondsToSelector())
  {
    v8 = [v6 proxyListenerForMessageLink:v7];
    v9 = objc_alloc(MEMORY[0x277CEA450]);
    v10 = [v8 endpoint];
    v11 = [v9 initWithEndpoint:v10];

    v12 = dispatch_semaphore_create(0);
    v13 = [(ATServiceProxyConnection *)self connection];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __56__ATServiceProxyConnection_service_willOpenMessageLink___block_invoke;
    v19[3] = &unk_2784E9430;
    v14 = v12;
    v20 = v14;
    v15 = [v13 remoteObjectProxyWithErrorHandler:v19];
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

- (ATServiceProxyConnection)initWithService:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = ATServiceProxyConnection;
  v8 = [(ATServiceProxyConnection *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_service, v6);
    objc_storeStrong(&v9->_connection, a4);
  }

  return v9;
}

@end