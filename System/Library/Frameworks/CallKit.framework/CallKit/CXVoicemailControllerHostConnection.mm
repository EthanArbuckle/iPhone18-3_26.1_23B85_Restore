@interface CXVoicemailControllerHostConnection
- (BOOL)isPermittedToUsePrivateAPI;
- (CXVoicemailControllerHostConnection)initWithConnection:(id)connection serialQueue:(id)queue;
- (CXVoicemailControllerHostConnectionDelegate)delegate;
- (CXVoicemailControllerVendorProtocol)remoteObjectProxy;
- (NSString)description;
- (void)addOrUpdateVoicemails:(id)voicemails;
- (void)dealloc;
- (void)removeVoicemails:(id)voicemails;
- (void)requestTransaction:(id)transaction reply:(id)reply;
- (void)requestVoicemails:(id)voicemails;
@end

@implementation CXVoicemailControllerHostConnection

- (CXVoicemailControllerHostConnection)initWithConnection:(id)connection serialQueue:(id)queue
{
  v45 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  queueCopy = queue;
  v34.receiver = self;
  v34.super_class = CXVoicemailControllerHostConnection;
  v9 = [(CXVoicemailControllerHostConnection *)&v34 init];
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

    if (v10->_applicationIdentifier && [(CXVoicemailControllerHostConnection *)v10 isPermittedToUsePrivateAPI])
    {
      objc_storeStrong(&v10->_connection, connection);
      [(NSXPCConnection *)v10->_connection setExportedObject:v10];
      cx_voicemailControllerHostInterface = [MEMORY[0x1E696B0D0] cx_voicemailControllerHostInterface];
      [(NSXPCConnection *)v10->_connection setExportedInterface:cx_voicemailControllerHostInterface];

      cx_voicemailControllerVendorInterface = [MEMORY[0x1E696B0D0] cx_voicemailControllerVendorInterface];
      [(NSXPCConnection *)v10->_connection setRemoteObjectInterface:cx_voicemailControllerVendorInterface];

      objc_initWeak(&location, v10);
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __70__CXVoicemailControllerHostConnection_initWithConnection_serialQueue___block_invoke;
      v31[3] = &unk_1E7C06E50;
      objc_copyWeak(&v32, &location);
      [(NSXPCConnection *)v10->_connection setInterruptionHandler:v31];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __70__CXVoicemailControllerHostConnection_initWithConnection_serialQueue___block_invoke_3;
      v29[3] = &unk_1E7C06E50;
      objc_copyWeak(&v30, &location);
      [(NSXPCConnection *)v10->_connection setInvalidationHandler:v29];
      [(NSXPCConnection *)v10->_connection resume];
      v20 = CXDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v10;
        _os_log_impl(&dword_1B47F3000, v20, OS_LOG_TYPE_DEFAULT, "Created %@", buf, 0xCu);
      }

      objc_destroyWeak(&v30);
      objc_destroyWeak(&v32);
      objc_destroyWeak(&location);
    }

    else
    {
      v21 = CXDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v24 = objc_opt_class();
        v25 = v10->_applicationIdentifier;
        v26 = v10->_bundleURL;
        v27 = v10->_capabilities;
        *buf = 138413314;
        v36 = v24;
        v37 = 2112;
        v38 = v25;
        v39 = 2112;
        v40 = v26;
        v41 = 2112;
        v42 = v27;
        v43 = 2112;
        v44 = connectionCopy;
        v28 = v24;
        _os_log_error_impl(&dword_1B47F3000, v21, OS_LOG_TYPE_ERROR, "Denying creation of %@ with applicationIdentifier: %@ bundleURL: %@ capabilities: %@ connection: %@", buf, 0x34u);
      }

      v10 = 0;
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return v10;
}

void __70__CXVoicemailControllerHostConnection_initWithConnection_serialQueue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__CXVoicemailControllerHostConnection_initWithConnection_serialQueue___block_invoke_2;
  block[3] = &unk_1E7C06CA8;
  v5 = WeakRetained;
  v3 = WeakRetained;
  dispatch_async(v2, block);
}

uint64_t __70__CXVoicemailControllerHostConnection_initWithConnection_serialQueue___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Connection interrupted for voicemail controller host connection: %@", &v6, 0xCu);
  }

  result = [*(*(a1 + 32) + 40) invalidate];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void __70__CXVoicemailControllerHostConnection_initWithConnection_serialQueue___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__CXVoicemailControllerHostConnection_initWithConnection_serialQueue___block_invoke_2_4;
  block[3] = &unk_1E7C06CA8;
  v5 = WeakRetained;
  v3 = WeakRetained;
  dispatch_async(v2, block);
}

void __70__CXVoicemailControllerHostConnection_initWithConnection_serialQueue___block_invoke_2_4(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Connection invalidated for voicemail controller host connection: %@", &v6, 0xCu);
  }

  v4 = [*(a1 + 32) delegate];
  [v4 voicemailControllerHostConnectionInvalidated:*(a1 + 32)];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = CXVoicemailControllerHostConnection;
  [(CXVoicemailControllerHostConnection *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  applicationIdentifier = [(CXVoicemailControllerHostConnection *)self applicationIdentifier];
  bundleURL = [(CXVoicemailControllerHostConnection *)self bundleURL];
  capabilities = [(CXVoicemailControllerHostConnection *)self capabilities];
  v8 = [v3 stringWithFormat:@"<%@ %p applicationIdentifier=%@ bundleURL=%@ capabilities=%@", v4, self, applicationIdentifier, bundleURL, capabilities];

  return v8;
}

- (BOOL)isPermittedToUsePrivateAPI
{
  capabilities = [(CXVoicemailControllerHostConnection *)self capabilities];
  v3 = [capabilities containsObject:@"private-voicemail-controller-api"];

  return v3;
}

- (CXVoicemailControllerVendorProtocol)remoteObjectProxy
{
  connection = [(CXVoicemailControllerHostConnection *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];

  return remoteObjectProxy;
}

- (void)addOrUpdateVoicemails:(id)voicemails
{
  voicemailsCopy = voicemails;
  remoteObjectProxy = [(CXVoicemailControllerHostConnection *)self remoteObjectProxy];
  [remoteObjectProxy addOrUpdateVoicemails:voicemailsCopy];
}

- (void)removeVoicemails:(id)voicemails
{
  voicemailsCopy = voicemails;
  remoteObjectProxy = [(CXVoicemailControllerHostConnection *)self remoteObjectProxy];
  [remoteObjectProxy removeVoicemails:voicemailsCopy];
}

- (void)requestVoicemails:(id)voicemails
{
  voicemailsCopy = voicemails;
  serialQueue = [(CXVoicemailControllerHostConnection *)self serialQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__CXVoicemailControllerHostConnection_requestVoicemails___block_invoke;
  v7[3] = &unk_1E7C06CF8;
  v7[4] = self;
  v8 = voicemailsCopy;
  v6 = voicemailsCopy;
  dispatch_async(serialQueue, v7);
}

void __57__CXVoicemailControllerHostConnection_requestVoicemails___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 voicemailControllerHostConnection:*(a1 + 32) requestVoicemails:*(a1 + 40)];
}

- (void)requestTransaction:(id)transaction reply:(id)reply
{
  transactionCopy = transaction;
  replyCopy = reply;
  serialQueue = [(CXVoicemailControllerHostConnection *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__CXVoicemailControllerHostConnection_requestTransaction_reply___block_invoke;
  block[3] = &unk_1E7C06D20;
  block[4] = self;
  v12 = transactionCopy;
  v13 = replyCopy;
  v9 = replyCopy;
  v10 = transactionCopy;
  dispatch_async(serialQueue, block);
}

void __64__CXVoicemailControllerHostConnection_requestTransaction_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 voicemailControllerHostConnection:*(a1 + 32) requestTransaction:*(a1 + 40) completion:*(a1 + 48)];
}

- (CXVoicemailControllerHostConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end