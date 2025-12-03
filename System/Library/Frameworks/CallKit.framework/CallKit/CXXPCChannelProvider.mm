@interface CXXPCChannelProvider
- (CXXPCChannelProvider)initWithConfiguration:(id)configuration;
- (id)hostProtocolDelegate;
- (void)dealloc;
- (void)invalidate;
@end

@implementation CXXPCChannelProvider

- (CXXPCChannelProvider)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v38.receiver = self;
  v38.super_class = CXXPCChannelProvider;
  v5 = [(CXChannelProvider *)&v38 initWithConfiguration:configurationCopy];
  if (v5)
  {
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.callkit.queue.%@.%p", objc_opt_class(), v5];
    uTF8String = [v31 UTF8String];
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create(uTF8String, v7);

    objc_storeStrong(&v5->_queue, v8);
    v9 = objc_alloc_init(CXChannelServiceDefinition);
    objc_storeStrong(&v5->_definition, v9);
    v10 = MEMORY[0x1E698F498];
    domain = [(CXChannelServiceDefinition *)v5->_definition domain];
    machName = [domain machName];
    name = [(CXChannelServiceDefinition *)v9 name];
    v14 = [v10 endpointForMachName:machName service:name instance:0];

    v15 = MEMORY[0x1E698F470];
    name2 = [(CXChannelServiceDefinition *)v9 name];
    v17 = [v15 interfaceWithIdentifier:name2];

    v18 = MEMORY[0x1E698E710];
    clientXPCInterface = [(CXChannelServiceDefinition *)v9 clientXPCInterface];
    v20 = [v18 protocolForProtocol:clientXPCInterface];
    [v17 setClient:v20];

    v21 = MEMORY[0x1E698E710];
    serverXPCInterface = [(CXChannelServiceDefinition *)v9 serverXPCInterface];
    v23 = [v21 protocolForProtocol:serverXPCInterface];
    [v17 setServer:v23];

    objc_initWeak(&location, v5);
    v24 = [MEMORY[0x1E698F490] connectionWithEndpoint:v14];
    connection = v5->_connection;
    v5->_connection = v24;

    v26 = v5->_connection;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __46__CXXPCChannelProvider_initWithConfiguration___block_invoke;
    v32[3] = &unk_1E7C07528;
    v27 = v17;
    v33 = v27;
    v28 = v5;
    v34 = v28;
    v29 = v8;
    v35 = v29;
    objc_copyWeak(&v36, &location);
    [(BSServiceConnection *)v26 configureConnection:v32];
    [(BSServiceConnection *)v5->_connection activate];
    [(CXChannelProvider *)v28 registerCurrentConfiguration];
    objc_destroyWeak(&v36);

    objc_destroyWeak(&location);
  }

  return v5;
}

void __46__CXXPCChannelProvider_initWithConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setInterface:*(a1 + 32)];
  [v3 setInterfaceTarget:*(a1 + 40)];
  v4 = [MEMORY[0x1E698F500] utility];
  [v3 setServiceQuality:v4];

  [v3 setTargetQueue:*(a1 + 48)];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__CXXPCChannelProvider_initWithConfiguration___block_invoke_2;
  v9[3] = &unk_1E7C074D8;
  objc_copyWeak(&v11, (a1 + 56));
  v10 = *(a1 + 40);
  [v3 setActivationHandler:v9];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__CXXPCChannelProvider_initWithConfiguration___block_invoke_8;
  v7[3] = &unk_1E7C07500;
  objc_copyWeak(&v8, (a1 + 56));
  [v3 setInterruptionHandler:v7];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__CXXPCChannelProvider_initWithConfiguration___block_invoke_9;
  v5[3] = &unk_1E7C07500;
  objc_copyWeak(&v6, (a1 + 56));
  [v3 setInvalidationHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);

  objc_destroyWeak(&v11);
}

void __46__CXXPCChannelProvider_initWithConfiguration___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = CXDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Activated connection %@", &v8, 0xCu);
    }

    v6 = [WeakRetained abstractProvider];
    [v6 sendDidBeginForProvider:*(a1 + 32)];
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __46__CXXPCChannelProvider_initWithConfiguration___block_invoke_8(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = CXDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      v9 = v3;
      v10 = 2112;
      v11 = WeakRetained;
      _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Interrupted connection %@ for XPC provider %@", &v8, 0x16u);
    }

    v6 = [WeakRetained abstractProvider];
    [v6 handleConnectionInterruptionForProvider:WeakRetained];
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __46__CXXPCChannelProvider_initWithConfiguration___block_invoke_9(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = CXDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      v9 = v3;
      v10 = 2112;
      v11 = WeakRetained;
      _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Invalidated connection %@ for XPC provider %@", &v8, 0x16u);
    }

    [WeakRetained setConnection:0];
    v6 = [WeakRetained abstractProvider];
    [v6 handleConnectionInterruptionForProvider:WeakRetained];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(BSServiceConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = CXXPCChannelProvider;
  [(CXXPCChannelProvider *)&v3 dealloc];
}

- (void)invalidate
{
  connection = [(CXXPCChannelProvider *)self connection];
  [connection invalidate];
}

- (id)hostProtocolDelegate
{
  connection = [(CXXPCChannelProvider *)self connection];
  remoteTarget = [connection remoteTarget];

  return remoteTarget;
}

@end