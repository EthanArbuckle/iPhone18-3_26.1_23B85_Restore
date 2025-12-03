@interface CXXPCProvider
- (CXXPCProvider)initWithConfiguration:(id)configuration;
- (NSXPCConnection)connection;
- (id)hostProtocolDelegate;
- (void)dealloc;
- (void)invalidate;
@end

@implementation CXXPCProvider

- (id)hostProtocolDelegate
{
  connection = [(CXXPCProvider *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];

  return remoteObjectProxy;
}

- (NSXPCConnection)connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.callkit.callsourcehost" options:0];
    v5 = self->_connection;
    self->_connection = v4;

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    cx_providerVendorInterface = [MEMORY[0x1E696B0D0] cx_providerVendorInterface];
    [(NSXPCConnection *)self->_connection setExportedInterface:cx_providerVendorInterface];

    cx_providerHostInterface = [MEMORY[0x1E696B0D0] cx_providerHostInterface];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:cx_providerHostInterface];

    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __27__CXXPCProvider_connection__block_invoke;
    v12[3] = &unk_1E7C06E50;
    objc_copyWeak(&v13, &location);
    [(NSXPCConnection *)self->_connection setInterruptionHandler:v12];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __27__CXXPCProvider_connection__block_invoke_2;
    v10[3] = &unk_1E7C06E50;
    objc_copyWeak(&v11, &location);
    [(NSXPCConnection *)self->_connection setInvalidationHandler:v10];
    [(NSXPCConnection *)self->_connection resume];
    abstractProvider = [(CXProvider *)self abstractProvider];
    [abstractProvider sendDidBeginForProvider:self];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  return connection;
}

- (CXXPCProvider)initWithConfiguration:(id)configuration
{
  v11.receiver = self;
  v11.super_class = CXXPCProvider;
  v3 = [(CXProvider *)&v11 initWithConfiguration:configuration];
  v4 = v3;
  if (v3)
  {
    abstractProvider = [(CXProvider *)v3 abstractProvider];
    queue = [abstractProvider queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__CXXPCProvider_initWithConfiguration___block_invoke;
    block[3] = &unk_1E7C06CA8;
    v7 = v4;
    v10 = v7;
    dispatch_async(queue, block);

    [(CXProvider *)v7 registerCurrentConfiguration];
  }

  return v4;
}

void __39__CXXPCProvider_initWithConfiguration___block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(a1 + 32);
  v3 = [v2 abstractProvider];
  v4 = [v3 queue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__CXXPCProvider_initWithConfiguration___block_invoke_2;
  v5[3] = &unk_1E7C072B0;
  objc_copyWeak(&v6, &location);
  notify_register_dispatch("com.apple.callkit.callsourcehost.started", v2 + 12, v4, v5);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __39__CXXPCProvider_initWithConfiguration___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "com.apple.callkit.callsourcehost.started";
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Handling %s by setting up XPC connection", &v4, 0xCu);
  }

  [WeakRetained registerCurrentConfiguration];
  v3 = *MEMORY[0x1E69E9840];
}

void __27__CXXPCProvider_connection__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = CXDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = WeakRetained[7];
      *buf = 138412546;
      v9 = v3;
      v10 = 2112;
      v11 = WeakRetained;
      _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Connection %@ interrupted for XPC provider %@", buf, 0x16u);
    }

    v4 = [WeakRetained abstractProvider];
    v5 = [v4 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __27__CXXPCProvider_connection__block_invoke_3;
    block[3] = &unk_1E7C06CA8;
    block[4] = WeakRetained;
    dispatch_async(v5, block);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __27__CXXPCProvider_connection__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) abstractProvider];
  [v2 handleConnectionInterruptionForProvider:*(a1 + 32)];
}

void __27__CXXPCProvider_connection__block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = CXDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = WeakRetained[7];
      *buf = 138412546;
      v9 = v3;
      v10 = 2112;
      v11 = WeakRetained;
      _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Connection %@ invalidated for XPC provider %@", buf, 0x16u);
    }

    v4 = [WeakRetained abstractProvider];
    v5 = [v4 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __27__CXXPCProvider_connection__block_invoke_4;
    block[3] = &unk_1E7C06CA8;
    block[4] = WeakRetained;
    dispatch_async(v5, block);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __27__CXXPCProvider_connection__block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  *(v2 + 56) = 0;

  v4 = [*(a1 + 32) abstractProvider];
  [v4 handleConnectionInterruptionForProvider:*(a1 + 32)];
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  notify_cancel([(CXXPCProvider *)self notifyToken]);
  v3.receiver = self;
  v3.super_class = CXXPCProvider;
  [(CXXPCProvider *)&v3 dealloc];
}

- (void)invalidate
{
  abstractProvider = [(CXProvider *)self abstractProvider];
  queue = [abstractProvider queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__CXXPCProvider_invalidate__block_invoke;
  block[3] = &unk_1E7C06CA8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __27__CXXPCProvider_invalidate__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "self: %@", &v6, 0xCu);
  }

  v4 = [*(a1 + 32) connection];
  [v4 invalidate];

  v5 = *MEMORY[0x1E69E9840];
}

@end