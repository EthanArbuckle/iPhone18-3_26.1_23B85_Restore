@interface CXCallControllerHostConnection
- (BOOL)isChannelTransactionRequestPermitted;
- (BOOL)isPermittedToUsePrivateAPI;
- (BOOL)isPermittedToUsePublicAPI;
- (CXCallControllerHostConnection)initWithConnection:(id)connection serialQueue:(id)queue;
- (CXCallControllerHostConnectionDelegate)delegate;
- (CXCallControllerVendorProtocol)remoteObjectProxy;
- (NSString)description;
- (void)addOrUpdateCall:(id)call;
- (void)dealloc;
- (void)removeCall:(id)call;
- (void)requestCalls:(id)calls;
- (void)requestTransaction:(id)transaction reply:(id)reply;
@end

@implementation CXCallControllerHostConnection

- (CXCallControllerVendorProtocol)remoteObjectProxy
{
  connection = [(CXCallControllerHostConnection *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];

  return remoteObjectProxy;
}

- (BOOL)isPermittedToUsePrivateAPI
{
  capabilities = [(CXCallControllerHostConnection *)self capabilities];
  v3 = [capabilities containsObject:@"private-controller-api"];

  return v3;
}

- (CXCallControllerHostConnection)initWithConnection:(id)connection serialQueue:(id)queue
{
  v31 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  queueCopy = queue;
  v28.receiver = self;
  v28.super_class = CXCallControllerHostConnection;
  v9 = [(CXCallControllerHostConnection *)&v28 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_serialQueue, queue);
    cx_applicationIdentifier = [connectionCopy cx_applicationIdentifier];
    applicationIdentifier = v10->_applicationIdentifier;
    v10->_applicationIdentifier = cx_applicationIdentifier;

    cx_capabilities = [connectionCopy cx_capabilities];
    capabilities = v10->_capabilities;
    v10->_capabilities = cx_capabilities;

    v15 = [MEMORY[0x1E69635F8] cx_applicationRecordForConnection:connectionCopy];
    v16 = [v15 URL];
    bundleURL = v10->_bundleURL;
    v10->_bundleURL = v16;

    v10->_hasVoIPBackgroundMode = [v15 containsBackgroundModeOptions:1];
    v10->_hasPushToTalkBackgroundMode = [v15 containsBackgroundModeOptions:2];
    objc_storeStrong(&v10->_connection, connection);
    [(NSXPCConnection *)v10->_connection setExportedObject:v10];
    cx_callControllerHostInterface = [MEMORY[0x1E696B0D0] cx_callControllerHostInterface];
    [(NSXPCConnection *)v10->_connection setExportedInterface:cx_callControllerHostInterface];

    cx_callControllerVendorInterface = [MEMORY[0x1E696B0D0] cx_callControllerVendorInterface];
    [(NSXPCConnection *)v10->_connection setRemoteObjectInterface:cx_callControllerVendorInterface];

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
  hasVoIPBackgroundMode = [(CXCallControllerHostConnection *)self hasVoIPBackgroundMode];
  applicationIdentifier = [(CXCallControllerHostConnection *)self applicationIdentifier];
  bundleURL = [(CXCallControllerHostConnection *)self bundleURL];
  capabilities = [(CXCallControllerHostConnection *)self capabilities];
  v9 = [v3 stringWithFormat:@"<%@ %p hasVoIPBackgroundMode=%d applicationIdentifier=%@ bundleURL=%@ capabilities=%@", v4, self, hasVoIPBackgroundMode, applicationIdentifier, bundleURL, capabilities];

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

- (void)addOrUpdateCall:(id)call
{
  callCopy = call;
  remoteObjectProxy = [(CXCallControllerHostConnection *)self remoteObjectProxy];
  [remoteObjectProxy addOrUpdateCall:callCopy];
}

- (void)removeCall:(id)call
{
  callCopy = call;
  remoteObjectProxy = [(CXCallControllerHostConnection *)self remoteObjectProxy];
  [remoteObjectProxy removeCall:callCopy];
}

- (void)requestCalls:(id)calls
{
  callsCopy = calls;
  serialQueue = [(CXCallControllerHostConnection *)self serialQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__CXCallControllerHostConnection_requestCalls___block_invoke;
  v7[3] = &unk_1E7C06CF8;
  v7[4] = self;
  v8 = callsCopy;
  v6 = callsCopy;
  dispatch_async(serialQueue, v7);
}

void __47__CXCallControllerHostConnection_requestCalls___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callControllerHostConnection:*(a1 + 32) requestCalls:*(a1 + 40)];
}

- (void)requestTransaction:(id)transaction reply:(id)reply
{
  transactionCopy = transaction;
  replyCopy = reply;
  serialQueue = [(CXCallControllerHostConnection *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__CXCallControllerHostConnection_requestTransaction_reply___block_invoke;
  block[3] = &unk_1E7C06D20;
  block[4] = self;
  v12 = transactionCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = transactionCopy;
  dispatch_async(serialQueue, block);
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