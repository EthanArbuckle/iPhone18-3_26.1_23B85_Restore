@interface ACOAuthSigner
- (ACOAuthSigner)initWithAccount:(id)account remoteEndpoint:(id)endpoint;
- (id)signedURLRequestWithURLRequest:(id)request applicationID:(id)d timestamp:(id)timestamp;
- (id)signedURLRequestWithURLRequest:(id)request callingPID:(id)d timestamp:(id)timestamp;
- (void)_connectToRemoteOAuthSignerUsingEndpoint:(id)endpoint;
- (void)dealloc;
@end

@implementation ACOAuthSigner

- (ACOAuthSigner)initWithAccount:(id)account remoteEndpoint:(id)endpoint
{
  accountCopy = account;
  endpointCopy = endpoint;
  v14.receiver = self;
  v14.super_class = ACOAuthSigner;
  v9 = [(ACOAuthSigner *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_shouldIncludeAppIdInRequest = 1;
    objc_storeStrong(&v9->_account, account);
    [(ACOAuthSigner *)v10 _connectToRemoteOAuthSignerUsingEndpoint:endpointCopy];
    accountStore = [(ACAccount *)v10->_account accountStore];
    effectiveBundleID = [accountStore effectiveBundleID];

    if (effectiveBundleID)
    {
      [(ACDOAuthSignerProtocol *)v10->_proxyShim setClientBundleID:effectiveBundleID withHandler:&__block_literal_global_4];
    }
  }

  return v10;
}

void __48__ACOAuthSigner_initWithAccount_remoteEndpoint___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = _ACLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __48__ACOAuthSigner_initWithAccount_remoteEndpoint___block_invoke_cold_1(v3);
    }
  }
}

- (void)dealloc
{
  [(ACOAuthSigner *)self disconnectFromRemoteOAuthSigner];
  v3.receiver = self;
  v3.super_class = ACOAuthSigner;
  [(ACOAuthSigner *)&v3 dealloc];
}

- (id)signedURLRequestWithURLRequest:(id)request callingPID:(id)d timestamp:(id)timestamp
{
  requestCopy = request;
  dCopy = d;
  timestampCopy = timestamp;
  if (!dCopy)
  {
    dCopy = [MEMORY[0x1E696AD98] numberWithInt:0];
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__1;
  v24 = __Block_byref_object_dispose__1;
  v25 = 0;
  v11 = dispatch_semaphore_create(0);
  [(ACDOAuthSignerProtocol *)self->_proxyShim setShouldIncludeAppIdInRequest:self->_shouldIncludeAppIdInRequest];
  account = self->_account;
  proxyShim = self->_proxyShim;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __69__ACOAuthSigner_signedURLRequestWithURLRequest_callingPID_timestamp___block_invoke;
  v17[3] = &unk_1E7976EE0;
  v19 = &v20;
  v14 = v11;
  v18 = v14;
  [(ACDOAuthSignerProtocol *)proxyShim signURLRequest:requestCopy withAccount:account callingPID:dCopy timestamp:timestampCopy handler:v17];
  dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  v15 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v15;
}

void __69__ACOAuthSigner_signedURLRequestWithURLRequest_callingPID_timestamp___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = _ACLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __69__ACOAuthSigner_signedURLRequestWithURLRequest_callingPID_timestamp___block_invoke_cold_1(v7, v8);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)signedURLRequestWithURLRequest:(id)request applicationID:(id)d timestamp:(id)timestamp
{
  requestCopy = request;
  dCopy = d;
  timestampCopy = timestamp;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__1;
  v24 = __Block_byref_object_dispose__1;
  v25 = 0;
  v11 = dispatch_semaphore_create(0);
  account = self->_account;
  proxyShim = self->_proxyShim;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__ACOAuthSigner_signedURLRequestWithURLRequest_applicationID_timestamp___block_invoke;
  v17[3] = &unk_1E7976EE0;
  v19 = &v20;
  v14 = v11;
  v18 = v14;
  [(ACDOAuthSignerProtocol *)proxyShim signURLRequest:requestCopy withAccount:account applicationID:dCopy timestamp:timestampCopy handler:v17];
  dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  v15 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v15;
}

void __72__ACOAuthSigner_signedURLRequestWithURLRequest_applicationID_timestamp___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = _ACLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __69__ACOAuthSigner_signedURLRequestWithURLRequest_callingPID_timestamp___block_invoke_cold_1(v7, v8);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)_connectToRemoteOAuthSignerUsingEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v4 = objc_alloc(MEMORY[0x1E696B0B8]);
  if (endpointCopy)
  {
    v5 = [v4 initWithListenerEndpoint:endpointCopy];
  }

  else
  {
    v5 = [v4 initWithMachServiceName:@"com.apple.accountsd.oauthsigner" options:0];
  }

  connection = self->_connection;
  self->_connection = v5;

  v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2124528];
  [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v7];

  [(NSXPCConnection *)self->_connection setInterruptionHandler:&__block_literal_global_60];
  remoteObjectProxy = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  proxyShim = self->_proxyShim;
  self->_proxyShim = remoteObjectProxy;

  [(NSXPCConnection *)self->_connection resume];
}

void __58__ACOAuthSigner__connectToRemoteOAuthSignerUsingEndpoint___block_invoke()
{
  v0 = _ACLogSystem();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1AC3CD000, v0, OS_LOG_TYPE_DEFAULT, "The connection to ACDOAuthSigner was interrupted.", v1, 2u);
  }
}

void __69__ACOAuthSigner_signedURLRequestWithURLRequest_callingPID_timestamp___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1AC3CD000, a2, OS_LOG_TYPE_ERROR, "Error signing request: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end