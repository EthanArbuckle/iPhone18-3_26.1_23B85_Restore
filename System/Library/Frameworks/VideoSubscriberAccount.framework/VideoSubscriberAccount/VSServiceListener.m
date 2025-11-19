@interface VSServiceListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (VSServiceListener)init;
- (void)_addConnectionHandler:(id)a3;
- (void)_removeConnectionHandler:(id)a3;
@end

@implementation VSServiceListener

- (VSServiceListener)init
{
  v6.receiver = self;
  v6.super_class = VSServiceListener;
  v2 = [(VSServiceListener *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    connectionHandlers = v2->_connectionHandlers;
    v2->_connectionHandlers = v3;
  }

  return v2;
}

- (void)_addConnectionHandler:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(VSServiceListener *)v4 connectionHandlers];
  [v5 addObject:v6];

  objc_sync_exit(v4);
}

- (void)_removeConnectionHandler:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(VSServiceListener *)v4 connectionHandlers];
  [v5 removeObject:v6];

  objc_sync_exit(v4);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = VSDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v5;
    _os_log_impl(&dword_23AB8E000, v6, OS_LOG_TYPE_DEFAULT, "Received request to open connection %@", buf, 0xCu);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = self;
  v7 = [(VSServiceListener *)self entitlementNames];
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        v13 = [v5 valueForEntitlement:v12];
        if ((objc_opt_respondsToSelector() & 1) != 0 && [v13 BOOLValue])
        {
          v17 = VSDefaultLogObject();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v29 = v12;
            _os_log_impl(&dword_23AB8E000, v17, OS_LOG_TYPE_DEFAULT, "Will accept connection due to %@ entitlement.", buf, 0xCu);
          }

          v18 = [(VSServiceListener *)v23 exportedInterface];
          [v5 setExportedInterface:v18];

          v19 = [(VSServiceListener *)v23 exportedObject];
          [v5 setExportedObject:v19];

          v20 = objc_alloc_init(VSServiceConnectionHandler);
          [(VSServiceConnectionHandler *)v20 setDelegate:v23];
          [(VSServiceConnectionHandler *)v20 setConnection:v5];
          [(VSServiceListener *)v23 _addConnectionHandler:v20];

          v21 = VSDefaultLogObject();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v29 = v5;
            _os_log_impl(&dword_23AB8E000, v21, OS_LOG_TYPE_DEFAULT, "Will accept connection %@", buf, 0xCu);
          }

          [v5 resume];
          v16 = 1;
          goto LABEL_22;
        }

        v14 = VSDefaultLogObject();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v29 = v12;
          v30 = 2112;
          v31 = v13;
          _os_log_impl(&dword_23AB8E000, v14, OS_LOG_TYPE_DEFAULT, "Value for %@ entitlement (%@) was inadequate.", buf, 0x16u);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = VSErrorLogObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [VSServiceListener listener:v5 shouldAcceptNewConnection:v15];
  }

  v16 = 0;
LABEL_22:

  return v16;
}

- (void)listener:(uint64_t)a1 shouldAcceptNewConnection:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Will NOT accept connection %@", &v2, 0xCu);
}

@end