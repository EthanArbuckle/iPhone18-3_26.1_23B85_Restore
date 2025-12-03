@interface FPXConnectionHandler
- (BOOL)shouldAcceptConnection:(id)connection;
- (FPXConnectionHandler)init;
- (id)makeNewContext;
- (void)invalidateCurrentContext:(void *)context;
- (void)makeNewContext;
@end

@implementation FPXConnectionHandler

- (id)makeNewContext
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  ++selfCopy->_activeConnections;
  if (selfCopy->_currentContext)
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      [(FPXConnectionHandler *)selfCopy makeNewContext];
    }
  }

  else
  {
    v4 = objc_alloc_init(FPXExtensionContext);
    currentContext = selfCopy->_currentContext;
    selfCopy->_currentContext = v4;
  }

  v6 = selfCopy->_currentContext;
  objc_sync_exit(selfCopy);

  return v6;
}

- (FPXConnectionHandler)init
{
  v10 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = FPXConnectionHandler;
  v2 = [(FPXConnectionHandler *)&v7 init];
  if (v2 && +[FPDaemonConnection runningInSyncBubble])
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = geteuid();
      *buf = 67109120;
      v9 = v4;
      _os_log_impl(&dword_1AAAE1000, v3, OS_LOG_TYPE_DEFAULT, "[NOTICE] shared iPad: extension is running in the sync bubble for euid %u", buf, 8u);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)invalidateCurrentContext:(void *)context
{
  v17 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = selfCopy->_activeConnections - 1;
  selfCopy->_activeConnections = v5;
  if (v5)
  {
    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      activeConnections = selfCopy->_activeConnections;
      v13 = 134218240;
      contextCopy2 = context;
      v15 = 1024;
      v16 = activeConnections;
      v8 = "[INFO] [helena] connection %p was invalidated, %d left";
      v9 = v6;
      v10 = 18;
LABEL_6:
      _os_log_impl(&dword_1AAAE1000, v9, OS_LOG_TYPE_INFO, v8, &v13, v10);
    }
  }

  else
  {
    [(FPXExtensionContext *)selfCopy->_currentContext invalidate];
    currentContext = selfCopy->_currentContext;
    selfCopy->_currentContext = 0;

    v6 = fp_current_or_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v13 = 134217984;
      contextCopy2 = context;
      v8 = "[INFO] [helena] last connection %p was invalidated, tearing down";
      v9 = v6;
      v10 = 12;
      goto LABEL_6;
    }
  }

  objc_sync_exit(selfCopy);
  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)shouldAcceptConnection:(id)connection
{
  v19 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v5 = fp_current_or_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v18 = connectionCopy;
    _os_log_impl(&dword_1AAAE1000, v5, OS_LOG_TYPE_INFO, "[INFO] [helena] accepting connection %@", buf, 0xCu);
  }

  v6 = FPXVendorXPCInterface();
  [connectionCopy setExportedInterface:v6];

  makeNewContext = [(FPXConnectionHandler *)self makeNewContext];
  [connectionCopy setExportedObject:makeNewContext];
  objc_initWeak(buf, self);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __47__FPXConnectionHandler_shouldAcceptConnection___block_invoke;
  v15[3] = &unk_1E793CDF8;
  objc_copyWeak(v16, buf);
  v16[1] = connectionCopy;
  [connectionCopy setInvalidationHandler:v15];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __47__FPXConnectionHandler_shouldAcceptConnection___block_invoke_2;
  v13 = &unk_1E793CDF8;
  objc_copyWeak(v14, buf);
  v14[1] = connectionCopy;
  [connectionCopy setInterruptionHandler:&v10];
  [connectionCopy activate];
  objc_destroyWeak(v14);
  objc_destroyWeak(v16);
  objc_destroyWeak(buf);

  v8 = *MEMORY[0x1E69E9840];
  return 1;
}

void __47__FPXConnectionHandler_shouldAcceptConnection___block_invoke(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __61__FPXXPCListenerDelegate_listener_shouldAcceptNewConnection___block_invoke_cold_1(v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidateCurrentContext:*(a1 + 40)];
}

void __47__FPXConnectionHandler_shouldAcceptConnection___block_invoke_2(uint64_t a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __61__FPXXPCListenerDelegate_listener_shouldAcceptNewConnection___block_invoke_1_cold_1(v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidateCurrentContext:*(a1 + 40)];
}

- (void)makeNewContext
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v5 = 138412546;
  selfCopy = self;
  v7 = 1024;
  v8 = v3;
  _os_log_fault_impl(&dword_1AAAE1000, log, OS_LOG_TYPE_FAULT, "[CRIT] [helena] %@ has existing context, so we have gotten two calls to create a connection (connection count is %d)", &v5, 0x12u);
  v4 = *MEMORY[0x1E69E9840];
}

@end