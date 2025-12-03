@interface AFSecurityConnection
- (AFSecurityConnection)initWithInstanceContext:(id)context;
- (id)_connection;
- (void)_connectionInterrupted;
- (void)_connectionInvalidated;
- (void)_dispatchCallbackForProcessedData:(id)data error:(id)error completion:(id)completion;
- (void)_dispatchCallbackForProcessedDataMap:(id)map errorMap:(id)errorMap completion:(id)completion;
- (void)_invalidateConnection;
- (void)_processData:(id)data usingProcedure:(int64_t)procedure completion:(id)completion;
- (void)_processDataMap:(id)map usingProcedure:(int64_t)procedure completion:(id)completion;
- (void)dealloc;
- (void)internalAuthAppleConnectServiceTicket:(id)ticket;
- (void)internalAuthSessionToken:(id)token;
- (void)invalidate;
- (void)processData:(id)data usingProcedure:(int64_t)procedure completion:(id)completion;
- (void)processDataMap:(id)map usingProcedure:(int64_t)procedure completion:(id)completion;
- (void)setInternalAuthAppleConnectServiceTicket:(id)ticket completion:(id)completion;
- (void)setInternalAuthSessionToken:(id)token completion:(id)completion;
- (void)setKeychainValue:(id)value forKey:(id)key accountIdentifier:(id)identifier completion:(id)completion;
@end

@implementation AFSecurityConnection

- (void)_dispatchCallbackForProcessedDataMap:(id)map errorMap:(id)errorMap completion:(id)completion
{
  mapCopy = map;
  errorMapCopy = errorMap;
  completionCopy = completion;
  v11 = completionCopy;
  if (completionCopy)
  {
    callbackQueue = self->_callbackQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __81__AFSecurityConnection__dispatchCallbackForProcessedDataMap_errorMap_completion___block_invoke;
    block[3] = &unk_1E73496E8;
    v16 = completionCopy;
    v14 = mapCopy;
    v15 = errorMapCopy;
    dispatch_async(callbackQueue, block);
  }
}

- (void)_dispatchCallbackForProcessedData:(id)data error:(id)error completion:(id)completion
{
  dataCopy = data;
  errorCopy = error;
  completionCopy = completion;
  v11 = completionCopy;
  if (completionCopy)
  {
    callbackQueue = self->_callbackQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__AFSecurityConnection__dispatchCallbackForProcessedData_error_completion___block_invoke;
    block[3] = &unk_1E73496E8;
    v16 = completionCopy;
    v14 = dataCopy;
    v15 = errorCopy;
    dispatch_async(callbackQueue, block);
  }
}

- (void)_processDataMap:(id)map usingProcedure:(int64_t)procedure completion:(id)completion
{
  v24[1] = *MEMORY[0x1E69E9840];
  mapCopy = map;
  completionCopy = completion;
  _connection = [(AFSecurityConnection *)self _connection];
  if (_connection)
  {
    objc_initWeak(&location, self);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __66__AFSecurityConnection__processDataMap_usingProcedure_completion___block_invoke;
    v19[3] = &unk_1E7341D60;
    objc_copyWeak(&v21, &location);
    v11 = completionCopy;
    v20 = v11;
    v12 = [_connection remoteObjectProxyWithErrorHandler:v19];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __66__AFSecurityConnection__processDataMap_usingProcedure_completion___block_invoke_2;
    v16[3] = &unk_1E7341DB0;
    objc_copyWeak(&v18, &location);
    v17 = v11;
    [v12 processDataMap:mapCopy usingProcedure:procedure completion:v16];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  else
  {
    v23 = @"error";
    v13 = [AFError errorWithCode:1606];
    v24[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    [(AFSecurityConnection *)self _dispatchCallbackForProcessedDataMap:0 errorMap:v14 completion:completionCopy];
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __66__AFSecurityConnection__processDataMap_usingProcedure_completion___block_invoke(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = @"error";
  v8[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [WeakRetained _dispatchCallbackForProcessedDataMap:0 errorMap:v5 completion:*(a1 + 32)];

  v6 = *MEMORY[0x1E69E9840];
}

void __66__AFSecurityConnection__processDataMap_usingProcedure_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _dispatchCallbackForProcessedDataMap:v6 errorMap:v5 completion:*(a1 + 32)];
}

- (void)_processData:(id)data usingProcedure:(int64_t)procedure completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  _connection = [(AFSecurityConnection *)self _connection];
  if (_connection)
  {
    objc_initWeak(&location, self);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __63__AFSecurityConnection__processData_usingProcedure_completion___block_invoke;
    v17[3] = &unk_1E7341D60;
    objc_copyWeak(&v19, &location);
    v11 = completionCopy;
    v18 = v11;
    v12 = [_connection remoteObjectProxyWithErrorHandler:v17];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __63__AFSecurityConnection__processData_usingProcedure_completion___block_invoke_2;
    v14[3] = &unk_1E7341D88;
    objc_copyWeak(&v16, &location);
    v15 = v11;
    [v12 processData:dataCopy usingProcedure:procedure completion:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
    v13 = [AFError errorWithCode:1606];
    [(AFSecurityConnection *)self _dispatchCallbackForProcessedData:0 error:v13 completion:completionCopy];
  }
}

void __63__AFSecurityConnection__processData_usingProcedure_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _dispatchCallbackForProcessedData:0 error:v3 completion:*(a1 + 32)];
}

void __63__AFSecurityConnection__processData_usingProcedure_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _dispatchCallbackForProcessedData:v6 error:v5 completion:*(a1 + 32)];
}

- (void)_connectionInvalidated
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v8 = "[AFSecurityConnection _connectionInvalidated]";
    _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s ", buf, 0xCu);
  }

  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__AFSecurityConnection__connectionInvalidated__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(connectionQueue, block);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_connectionInterrupted
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[AFSecurityConnection _connectionInterrupted]";
    _os_log_error_impl(&dword_1912FE000, v2, OS_LOG_TYPE_ERROR, "%s ", &v4, 0xCu);
  }

  v3 = *MEMORY[0x1E69E9840];
}

- (void)_invalidateConnection
{
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection invalidate];
    v4 = self->_connection;
    self->_connection = 0;
  }
}

- (id)_connection
{
  connection = self->_connection;
  if (!connection)
  {
    instanceContext = self->_instanceContext;
    if (!instanceContext)
    {
      v5 = +[AFInstanceContext defaultContext];
      v6 = self->_instanceContext;
      self->_instanceContext = v5;

      instanceContext = self->_instanceContext;
    }

    v7 = [(AFInstanceContext *)instanceContext createXPCConnectionWithMachServiceName:@"com.apple.assistant.security" options:0];
    v8 = self->_connection;
    self->_connection = v7;

    [(NSXPCConnection *)self->_connection _setQueue:self->_connectionQueue];
    v9 = self->_connection;
    v10 = AFSecurityServiceGetXPCInterface();
    [(NSXPCConnection *)v9 setRemoteObjectInterface:v10];

    objc_initWeak(&location, self);
    v11 = self->_connection;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __35__AFSecurityConnection__connection__block_invoke;
    v16[3] = &unk_1E7348A80;
    objc_copyWeak(&v17, &location);
    [(NSXPCConnection *)v11 setInterruptionHandler:v16];
    v12 = self->_connection;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __35__AFSecurityConnection__connection__block_invoke_2;
    v14[3] = &unk_1E7348A80;
    objc_copyWeak(&v15, &location);
    [(NSXPCConnection *)v12 setInvalidationHandler:v14];
    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  return connection;
}

void __35__AFSecurityConnection__connection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionInterrupted];
}

void __35__AFSecurityConnection__connection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _connectionInvalidated];
}

- (void)internalAuthSessionToken:(id)token
{
  tokenCopy = token;
  v5 = self->_callbackQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49__AFSecurityConnection_internalAuthSessionToken___block_invoke;
  v13[3] = &unk_1E7341D10;
  v14 = v5;
  v15 = tokenCopy;
  v6 = v5;
  v7 = tokenCopy;
  v8 = MEMORY[0x193AFB7B0](v13);
  connectionQueue = self->_connectionQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__AFSecurityConnection_internalAuthSessionToken___block_invoke_3;
  v11[3] = &unk_1E7349838;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_async(connectionQueue, v11);
}

void __49__AFSecurityConnection_internalAuthSessionToken___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__AFSecurityConnection_internalAuthSessionToken___block_invoke_2;
    block[3] = &unk_1E73496E8;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

void __49__AFSecurityConnection_internalAuthSessionToken___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _connection];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__AFSecurityConnection_internalAuthSessionToken___block_invoke_4;
  v6[3] = &unk_1E7348AA8;
  v7 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v6];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__AFSecurityConnection_internalAuthSessionToken___block_invoke_5;
  v4[3] = &unk_1E7341D38;
  v5 = *(a1 + 40);
  [v3 internalAuthSessionToken:v4];
}

- (void)internalAuthAppleConnectServiceTicket:(id)ticket
{
  ticketCopy = ticket;
  v5 = self->_callbackQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__AFSecurityConnection_internalAuthAppleConnectServiceTicket___block_invoke;
  v13[3] = &unk_1E7341D10;
  v14 = v5;
  v15 = ticketCopy;
  v6 = v5;
  v7 = ticketCopy;
  v8 = MEMORY[0x193AFB7B0](v13);
  connectionQueue = self->_connectionQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__AFSecurityConnection_internalAuthAppleConnectServiceTicket___block_invoke_3;
  v11[3] = &unk_1E7349838;
  v11[4] = self;
  v12 = v8;
  v10 = v8;
  dispatch_async(connectionQueue, v11);
}

void __62__AFSecurityConnection_internalAuthAppleConnectServiceTicket___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__AFSecurityConnection_internalAuthAppleConnectServiceTicket___block_invoke_2;
    block[3] = &unk_1E73496E8;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

void __62__AFSecurityConnection_internalAuthAppleConnectServiceTicket___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _connection];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__AFSecurityConnection_internalAuthAppleConnectServiceTicket___block_invoke_4;
  v6[3] = &unk_1E7348AA8;
  v7 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v6];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__AFSecurityConnection_internalAuthAppleConnectServiceTicket___block_invoke_5;
  v4[3] = &unk_1E7341D38;
  v5 = *(a1 + 40);
  [v3 internalAuthAppleConnectServiceTicket:v4];
}

- (void)setInternalAuthSessionToken:(id)token completion:(id)completion
{
  tokenCopy = token;
  completionCopy = completion;
  v8 = self->_callbackQueue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __63__AFSecurityConnection_setInternalAuthSessionToken_completion___block_invoke;
  v18[3] = &unk_1E7348AD0;
  v19 = v8;
  v20 = completionCopy;
  v9 = v8;
  v10 = completionCopy;
  v11 = MEMORY[0x193AFB7B0](v18);
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__AFSecurityConnection_setInternalAuthSessionToken_completion___block_invoke_3;
  block[3] = &unk_1E73496E8;
  v16 = tokenCopy;
  v17 = v11;
  block[4] = self;
  v13 = tokenCopy;
  v14 = v11;
  dispatch_async(connectionQueue, block);
}

void __63__AFSecurityConnection_setInternalAuthSessionToken_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __63__AFSecurityConnection_setInternalAuthSessionToken_completion___block_invoke_2;
    v6[3] = &unk_1E7349838;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __63__AFSecurityConnection_setInternalAuthSessionToken_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _connection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __63__AFSecurityConnection_setInternalAuthSessionToken_completion___block_invoke_4;
  v7[3] = &unk_1E7348AA8;
  v8 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v7];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__AFSecurityConnection_setInternalAuthSessionToken_completion___block_invoke_5;
  v5[3] = &unk_1E7348AA8;
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v3 setInternalAuthSessionToken:v4 completion:v5];
}

- (void)setInternalAuthAppleConnectServiceTicket:(id)ticket completion:(id)completion
{
  ticketCopy = ticket;
  completionCopy = completion;
  v8 = self->_callbackQueue;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __76__AFSecurityConnection_setInternalAuthAppleConnectServiceTicket_completion___block_invoke;
  v18[3] = &unk_1E7348AD0;
  v19 = v8;
  v20 = completionCopy;
  v9 = v8;
  v10 = completionCopy;
  v11 = MEMORY[0x193AFB7B0](v18);
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__AFSecurityConnection_setInternalAuthAppleConnectServiceTicket_completion___block_invoke_3;
  block[3] = &unk_1E73496E8;
  v16 = ticketCopy;
  v17 = v11;
  block[4] = self;
  v13 = ticketCopy;
  v14 = v11;
  dispatch_async(connectionQueue, block);
}

void __76__AFSecurityConnection_setInternalAuthAppleConnectServiceTicket_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __76__AFSecurityConnection_setInternalAuthAppleConnectServiceTicket_completion___block_invoke_2;
    v6[3] = &unk_1E7349838;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __76__AFSecurityConnection_setInternalAuthAppleConnectServiceTicket_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _connection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__AFSecurityConnection_setInternalAuthAppleConnectServiceTicket_completion___block_invoke_4;
  v7[3] = &unk_1E7348AA8;
  v8 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v7];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__AFSecurityConnection_setInternalAuthAppleConnectServiceTicket_completion___block_invoke_5;
  v5[3] = &unk_1E7348AA8;
  v4 = *(a1 + 40);
  v6 = *(a1 + 48);
  [v3 setInternalAuthAppleConnectServiceTicket:v4 completion:v5];
}

- (void)setKeychainValue:(id)value forKey:(id)key accountIdentifier:(id)identifier completion:(id)completion
{
  valueCopy = value;
  keyCopy = key;
  identifierCopy = identifier;
  completionCopy = completion;
  v14 = self->_callbackQueue;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __77__AFSecurityConnection_setKeychainValue_forKey_accountIdentifier_completion___block_invoke;
  v28[3] = &unk_1E7348AD0;
  v29 = v14;
  v30 = completionCopy;
  v15 = v14;
  v16 = completionCopy;
  v17 = MEMORY[0x193AFB7B0](v28);
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__AFSecurityConnection_setKeychainValue_forKey_accountIdentifier_completion___block_invoke_3;
  block[3] = &unk_1E7348AF8;
  v26 = identifierCopy;
  v27 = v17;
  block[4] = self;
  v24 = valueCopy;
  v25 = keyCopy;
  v19 = identifierCopy;
  v20 = keyCopy;
  v21 = valueCopy;
  v22 = v17;
  dispatch_async(connectionQueue, block);
}

void __77__AFSecurityConnection_setKeychainValue_forKey_accountIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __77__AFSecurityConnection_setKeychainValue_forKey_accountIdentifier_completion___block_invoke_2;
    v6[3] = &unk_1E7349838;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __77__AFSecurityConnection_setKeychainValue_forKey_accountIdentifier_completion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) _connection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__AFSecurityConnection_setKeychainValue_forKey_accountIdentifier_completion___block_invoke_4;
  v9[3] = &unk_1E7348AA8;
  v10 = *(a1 + 64);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v9];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__AFSecurityConnection_setKeychainValue_forKey_accountIdentifier_completion___block_invoke_5;
  v7[3] = &unk_1E7348AA8;
  v6 = *(a1 + 56);
  v8 = *(a1 + 64);
  [v3 setKeychainValue:v4 forKey:v5 accountIdentifier:v6 completion:v7];
}

- (void)processDataMap:(id)map usingProcedure:(int64_t)procedure completion:(id)completion
{
  v24[1] = *MEMORY[0x1E69E9840];
  mapCopy = map;
  completionCopy = completion;
  if (completionCopy)
  {
    if (procedure)
    {
      if (mapCopy)
      {
        connectionQueue = self->_connectionQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __65__AFSecurityConnection_processDataMap_usingProcedure_completion___block_invoke;
        block[3] = &unk_1E7343940;
        block[4] = self;
        v18 = mapCopy;
        procedureCopy = procedure;
        v19 = completionCopy;
        dispatch_async(connectionQueue, block);

        goto LABEL_8;
      }

      v21 = @"error";
      v11 = [AFError errorWithCode:1603];
      v22 = v11;
      v12 = MEMORY[0x1E695DF20];
      v13 = &v22;
      v14 = &v21;
    }

    else
    {
      v23 = @"error";
      v11 = [AFError errorWithCode:1600];
      v24[0] = v11;
      v12 = MEMORY[0x1E695DF20];
      v13 = v24;
      v14 = &v23;
    }

    v15 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:1];
    [(AFSecurityConnection *)self _dispatchCallbackForProcessedDataMap:0 errorMap:v15 completion:completionCopy];
  }

LABEL_8:

  v16 = *MEMORY[0x1E69E9840];
}

- (void)processData:(id)data usingProcedure:(int64_t)procedure completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  if (completionCopy)
  {
    if (procedure)
    {
      if (dataCopy)
      {
        connectionQueue = self->_connectionQueue;
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __62__AFSecurityConnection_processData_usingProcedure_completion___block_invoke;
        v13[3] = &unk_1E7343940;
        v13[4] = self;
        v14 = dataCopy;
        procedureCopy = procedure;
        v15 = completionCopy;
        dispatch_async(connectionQueue, v13);

        goto LABEL_8;
      }

      v11 = 1603;
    }

    else
    {
      v11 = 1600;
    }

    v12 = [AFError errorWithCode:v11];
    [(AFSecurityConnection *)self _dispatchCallbackForProcessedData:0 error:v12 completion:completionCopy];
  }

LABEL_8:
}

- (void)invalidate
{
  connectionQueue = self->_connectionQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__AFSecurityConnection_invalidate__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(connectionQueue, block);
}

- (void)dealloc
{
  [(AFSecurityConnection *)self _invalidateConnection];
  v3.receiver = self;
  v3.super_class = AFSecurityConnection;
  [(AFSecurityConnection *)&v3 dealloc];
}

- (AFSecurityConnection)initWithInstanceContext:(id)context
{
  contextCopy = context;
  v14.receiver = self;
  v14.super_class = AFSecurityConnection;
  v6 = [(AFSecurityConnection *)&v14 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.assistant.security.connection", v7);

    connectionQueue = v6->_connectionQueue;
    v6->_connectionQueue = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.assistant.security.callback", v10);

    callbackQueue = v6->_callbackQueue;
    v6->_callbackQueue = v11;

    objc_storeStrong(&v6->_instanceContext, context);
  }

  return v6;
}

@end