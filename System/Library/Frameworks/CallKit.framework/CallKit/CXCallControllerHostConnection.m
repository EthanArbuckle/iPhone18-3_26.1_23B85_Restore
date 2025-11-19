@interface CXCallControllerHostConnection
- (BOOL)isChannelTransactionRequestPermitted;
- (BOOL)isPermittedToUsePrivateAPI;
- (BOOL)isPermittedToUsePublicAPI;
- (CXCallControllerHostConnection)initWithConnection:(id)a3 serialQueue:(id)a4;
- (CXCallControllerHostConnectionDelegate)delegate;
- (CXCallControllerVendorProtocol)remoteObjectProxy;
- (NSString)description;
- (void)addOrUpdateCall:(id)a3;
- (void)dealloc;
- (void)removeCall:(id)a3;
- (void)requestCalls:(id)a3;
- (void)requestTransaction:(id)a3 reply:(id)a4;
@end

@implementation CXCallControllerHostConnection

- (CXCallControllerVendorProtocol)remoteObjectProxy
{
  v2 = [(CXCallControllerHostConnection *)self connection];
  v3 = [v2 remoteObjectProxy];

  return v3;
}

- (BOOL)isPermittedToUsePrivateAPI
{
  v2 = [(CXCallControllerHostConnection *)self capabilities];
  v3 = [v2 containsObject:@"private-controller-api"];

  return v3;
}

- (CXCallControllerHostConnection)initWithConnection:(id)a3 serialQueue:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v28.receiver = self;
  v28.super_class = CXCallControllerHostConnection;
  v9 = [(CXCallControllerHostConnection *)&v28 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_serialQueue, a4);
    v11 = [v7 cx_applicationIdentifier];
    applicationIdentifier = v10->_applicationIdentifier;
    v10->_applicationIdentifier = v11;

    v13 = [v7 cx_capabilities];
    capabilities = v10->_capabilities;
    v10->_capabilities = v13;

    v15 = [MEMORY[0x1E69635F8] cx_applicationRecordForConnection:v7];
    v16 = [v15 URL];
    bundleURL = v10->_bundleURL;
    v10->_bundleURL = v16;

    v10->_hasVoIPBackgroundMode = [v15 containsBackgroundModeOptions:1];
    v10->_hasPushToTalkBackgroundMode = [v15 containsBackgroundModeOptions:2];
    objc_storeStrong(&v10->_connection, a3);
    [(NSXPCConnection *)v10->_connection setExportedObject:v10];
    v18 = [MEMORY[0x1E696B0D0] cx_callControllerHostInterface];
    [(NSXPCConnection *)v10->_connection setExportedInterface:v18];

    v19 = [MEMORY[0x1E696B0D0] cx_callControllerVendorInterface];
    [(NSXPCConnection *)v10->_connection setRemoteObjectInterface:v19];

    objc_initWeak(&location, v10);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __65__CXCallControllerHostConnection_initWithConnection_serialQueue___block_invoke;
    v25[3] = &unk_1E7C06E50;
    objc_copyWeak(&v26, &location);
    [(NSXPCConnection *)v10->_connection setInterruptionHandler:v25];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __65__CXCallControllerHostConnection_initWithConnection_serialQueue___block_invoke_3;
    v23[3] = &unk_1E7C06E50;
    objc_copyWeak(&v24, &location);
    [(NSXPCConnection *)v10->_connection setInvalidationHandler:v23];
    [(NSXPCConnection *)v10->_connection resume];
    v20 = CXDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v10;
      _os_log_impl(&dword_1B47F3000, v20, OS_LOG_TYPE_DEFAULT, "Created %@", buf, 0xCu);
    }

    objc_destroyWeak(&v24);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  v21 = *MEMORY[0x1E69E9840];
  return v10;
}

void __65__CXCallControllerHostConnection_initWithConnection_serialQueue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__CXCallControllerHostConnection_initWithConnection_serialQueue___block_invoke_2;
  block[3] = &unk_1E7C06CA8;
  v5 = WeakRetained;
  v3 = WeakRetained;
  dispatch_async(v2, block);
}

uint64_t __65__CXCallControllerHostConnection_initWithConnection_serialQueue___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Connection interrupted for call controller host connection: %@", &v6, 0xCu);
  }

  result = [*(*(a1 + 32) + 48) invalidate];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void __65__CXCallControllerHostConnection_initWithConnection_serialQueue___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__CXCallControllerHostConnection_initWithConnection_serialQueue___block_invoke_2_4;
  block[3] = &unk_1E7C06CA8;
  v5 = WeakRetained;
  v3 = WeakRetained;
  dispatch_async(v2, block);
}

void __65__CXCallControllerHostConnection_initWithConnection_serialQueue___block_invoke_2_4(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Connection invalidated for call controller host connection: %@", &v6, 0xCu);
  }

  v4 = [*(a1 + 32) delegate];
  [v4 callControllerHostConnectionInvalidated:*(a1 + 32)];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = CXCallControllerHostConnection;
  [(CXCallControllerHostConnection *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(CXCallControllerHostConnection *)self hasVoIPBackgroundMode];
  v6 = [(CXCallControllerHostConnection *)self applicationIdentifier];
  v7 = [(CXCallControllerHostConnection *)self bundleURL];
  v8 = [(CXCallControllerHostConnection *)self capabilities];
  v9 = [v3 stringWithFormat:@"<%@ %p hasVoIPBackgroundMode=%d applicationIdentifier=%@ bundleURL=%@ capabilities=%@", v4, self, v5, v6, v7, v8];

  return v9;
}

- (BOOL)isPermittedToUsePublicAPI
{
  if ([(CXCallControllerHostConnection *)self isPermittedToUsePrivateAPI])
  {
    return 1;
  }

  return [(CXCallControllerHostConnection *)self hasVoIPBackgroundMode];
}

- (BOOL)isChannelTransactionRequestPermitted
{
  if ([(CXCallControllerHostConnection *)self isPermittedToUsePrivateAPI])
  {
    return 1;
  }

  return [(CXCallControllerHostConnection *)self hasPushToTalkBackgroundMode];
}

- (void)addOrUpdateCall:(id)a3
{
  v4 = a3;
  v5 = [(CXCallControllerHostConnection *)self remoteObjectProxy];
  [v5 addOrUpdateCall:v4];
}

- (void)removeCall:(id)a3
{
  v4 = a3;
  v5 = [(CXCallControllerHostConnection *)self remoteObjectProxy];
  [v5 removeCall:v4];
}

- (void)requestCalls:(id)a3
{
  v4 = a3;
  v5 = [(CXCallControllerHostConnection *)self serialQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__CXCallControllerHostConnection_requestCalls___block_invoke;
  v7[3] = &unk_1E7C06CF8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __47__CXCallControllerHostConnection_requestCalls___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callControllerHostConnection:*(a1 + 32) requestCalls:*(a1 + 40)];
}

- (void)requestTransaction:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CXCallControllerHostConnection *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__CXCallControllerHostConnection_requestTransaction_reply___block_invoke;
  block[3] = &unk_1E7C06D20;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __59__CXCallControllerHostConnection_requestTransaction_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callControllerHostConnection:*(a1 + 32) requestTransaction:*(a1 + 40) completion:*(a1 + 48)];
}

- (CXCallControllerHostConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end