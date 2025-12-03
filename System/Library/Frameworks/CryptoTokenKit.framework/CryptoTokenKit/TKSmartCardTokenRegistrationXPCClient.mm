@interface TKSmartCardTokenRegistrationXPCClient
- (BOOL)registerSmartCardWithTokenID:(id)d promptMessage:(id)message callerBundleID:(id)iD error:(id *)error;
- (BOOL)unregisterSmartCardWithTokenID:(id)d callerBundleID:(id)iD error:(id *)error;
- (TKSmartCardTokenRegistrationXPCClient)init;
- (id)_connectionWithErrorHandler:(id)handler;
- (id)_remoteObjectProxy;
- (id)_synchronousRemoteObjectProxy;
- (id)_synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (id)registeredSmartCardTokens;
- (void)_handleConnectionClose;
- (void)connectionDidActivate:(id)activate;
- (void)dealloc;
- (void)registerSmartCardWithTokenID:(id)d promptMessage:(id)message callerBundleID:(id)iD completion:(id)completion;
- (void)registeredSmartCardsWithCompletion:(id)completion;
- (void)unregisterSmartCardWithTokenID:(id)d callerBundleID:(id)iD completion:(id)completion;
@end

@implementation TKSmartCardTokenRegistrationXPCClient

- (TKSmartCardTokenRegistrationXPCClient)init
{
  v3.receiver = self;
  v3.super_class = TKSmartCardTokenRegistrationXPCClient;
  result = [(TKSmartCardTokenRegistrationXPCClient *)&v3 init];
  if (result)
  {
    result->_connectionLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)dealloc
{
  [(TKXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = TKSmartCardTokenRegistrationXPCClient;
  [(TKSmartCardTokenRegistrationXPCClient *)&v3 dealloc];
}

- (BOOL)registerSmartCardWithTokenID:(id)d promptMessage:(id)message callerBundleID:(id)iD error:(id *)error
{
  dCopy = d;
  messageCopy = message;
  iDCopy = iD;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  _synchronousRemoteObjectProxy = [(TKSmartCardTokenRegistrationXPCClient *)self _synchronousRemoteObjectProxy];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __105__TKSmartCardTokenRegistrationXPCClient_registerSmartCardWithTokenID_promptMessage_callerBundleID_error___block_invoke;
  v18[3] = &unk_1E86B7610;
  v14 = dCopy;
  v19 = v14;
  v15 = iDCopy;
  v20 = v15;
  v21 = &v22;
  [_synchronousRemoteObjectProxy registerSmartCardWithTokenID:v14 promptMessage:messageCopy callerBundleID:v15 completion:v18];

  if (error)
  {
    *error = 0;
  }

  v16 = *(v23 + 24);

  _Block_object_dispose(&v22, 8);
  return v16;
}

void __105__TKSmartCardTokenRegistrationXPCClient_registerSmartCardWithTokenID_promptMessage_callerBundleID_error___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = TK_LOG_smartcard_0();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __105__TKSmartCardTokenRegistrationXPCClient_registerSmartCardWithTokenID_promptMessage_callerBundleID_error___block_invoke_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __105__TKSmartCardTokenRegistrationXPCClient_registerSmartCardWithTokenID_promptMessage_callerBundleID_error___block_invoke_cold_2(a1, v7);
  }

  *(*(*(a1 + 48) + 8) + 24) = a2;
}

- (BOOL)unregisterSmartCardWithTokenID:(id)d callerBundleID:(id)iD error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  _synchronousRemoteObjectProxy = [(TKSmartCardTokenRegistrationXPCClient *)self _synchronousRemoteObjectProxy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __93__TKSmartCardTokenRegistrationXPCClient_unregisterSmartCardWithTokenID_callerBundleID_error___block_invoke;
  v14[3] = &unk_1E86B7638;
  v11 = dCopy;
  v15 = v11;
  v16 = &v17;
  [_synchronousRemoteObjectProxy unregisterSmartCardWithTokenID:v11 callerBundleID:iDCopy completion:v14];

  if (error)
  {
    *error = 0;
  }

  v12 = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return v12;
}

void __93__TKSmartCardTokenRegistrationXPCClient_unregisterSmartCardWithTokenID_callerBundleID_error___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = TK_LOG_smartcard_0();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __93__TKSmartCardTokenRegistrationXPCClient_unregisterSmartCardWithTokenID_callerBundleID_error___block_invoke_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __93__TKSmartCardTokenRegistrationXPCClient_unregisterSmartCardWithTokenID_callerBundleID_error___block_invoke_cold_2(a1, v7);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (id)registeredSmartCardTokens
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  array = [MEMORY[0x1E695DEC8] array];
  _synchronousRemoteObjectProxy = [(TKSmartCardTokenRegistrationXPCClient *)self _synchronousRemoteObjectProxy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__TKSmartCardTokenRegistrationXPCClient_registeredSmartCardTokens__block_invoke;
  v6[3] = &unk_1E86B7660;
  v6[4] = &v7;
  [_synchronousRemoteObjectProxy registeredSmartCardsWithCompletion:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)registerSmartCardWithTokenID:(id)d promptMessage:(id)message callerBundleID:(id)iD completion:(id)completion
{
  completionCopy = completion;
  iDCopy = iD;
  messageCopy = message;
  dCopy = d;
  _remoteObjectProxy = [(TKSmartCardTokenRegistrationXPCClient *)self _remoteObjectProxy];
  [_remoteObjectProxy registerSmartCardWithTokenID:dCopy promptMessage:messageCopy callerBundleID:iDCopy completion:completionCopy];
}

- (void)unregisterSmartCardWithTokenID:(id)d callerBundleID:(id)iD completion:(id)completion
{
  completionCopy = completion;
  iDCopy = iD;
  dCopy = d;
  _remoteObjectProxy = [(TKSmartCardTokenRegistrationXPCClient *)self _remoteObjectProxy];
  [_remoteObjectProxy unregisterSmartCardWithTokenID:dCopy callerBundleID:iDCopy completion:completionCopy];
}

- (void)registeredSmartCardsWithCompletion:(id)completion
{
  completionCopy = completion;
  _remoteObjectProxy = [(TKSmartCardTokenRegistrationXPCClient *)self _remoteObjectProxy];
  [_remoteObjectProxy registeredSmartCardsWithCompletion:completionCopy];
}

- (id)_synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [(TKSmartCardTokenRegistrationXPCClient *)self _connectionWithErrorHandler:handlerCopy];
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (id)_connectionWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_connectionLock);
  if (self->_connection)
  {
    goto LABEL_3;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__TKSmartCardTokenRegistrationXPCClient__connectionWithErrorHandler___block_invoke;
  v12[3] = &unk_1E86B7688;
  v12[4] = self;
  v5 = __69__TKSmartCardTokenRegistrationXPCClient__connectionWithErrorHandler___block_invoke(v12);
  connection = self->_connection;
  self->_connection = v5;

  [(TKXPCConnection *)self->_connection activate];
  if (self->_connection)
  {
LABEL_3:
    v7 = 0;
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithCode:-2 debugDescription:@"XPC connection to TKSmartCardTokenRegistrationXPC could not be created"];
    v7 = v11;
    if (handlerCopy && v11)
    {
      handlerCopy[2](handlerCopy, v11);
    }
  }

  os_unfair_lock_unlock(&self->_connectionLock);
  v8 = self->_connection;
  v9 = v8;

  return v8;
}

TKXPCConnectionDefault *__69__TKSmartCardTokenRegistrationXPCClient__connectionWithErrorHandler___block_invoke(uint64_t a1)
{
  v2 = [[TKXPCConnectionDefault alloc] initWithMachServiceName:@"com.apple.ctkd.smartcardregistration-client" options:4096];
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5A89EB8];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  [v3 setClasses:v6 forSelector:sel_registeredSmartCardsWithCompletion_ argumentIndex:0 ofReply:1];
  v7 = [[TKXPCConnectionConfigurationDefault alloc] initWithRemoteObjectInterface:v3 exportedInterface:0 exportedObject:0 replyQueue:0];
  [(TKXPCConnectionDefault *)v2 configureWithConfiguration:v7];

  [(TKXPCConnectionDefault *)v2 setDelegate:*(a1 + 32)];

  return v2;
}

- (void)_handleConnectionClose
{
  connection = self->_connection;
  if (connection)
  {
    [(TKXPCConnection *)connection invalidate];
    v4 = self->_connection;
    self->_connection = 0;
  }
}

- (id)_remoteObjectProxy
{
  v2 = [(TKSmartCardTokenRegistrationXPCClient *)self _connectionWithErrorHandler:&__block_literal_global_5];
  remoteObjectProxy = [v2 remoteObjectProxy];

  return remoteObjectProxy;
}

void __59__TKSmartCardTokenRegistrationXPCClient__remoteObjectProxy__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TK_LOG_smartcard_0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __59__TKSmartCardTokenRegistrationXPCClient__remoteObjectProxy__block_invoke_cold_1();
  }
}

- (id)_synchronousRemoteObjectProxy
{
  v2 = [(TKSmartCardTokenRegistrationXPCClient *)self _connectionWithErrorHandler:&__block_literal_global_65];
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_68];

  return v3;
}

void __70__TKSmartCardTokenRegistrationXPCClient__synchronousRemoteObjectProxy__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TK_LOG_smartcard_0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __70__TKSmartCardTokenRegistrationXPCClient__synchronousRemoteObjectProxy__block_invoke_cold_1();
  }
}

void __70__TKSmartCardTokenRegistrationXPCClient__synchronousRemoteObjectProxy__block_invoke_66(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = TK_LOG_smartcard_0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __70__TKSmartCardTokenRegistrationXPCClient__synchronousRemoteObjectProxy__block_invoke_66_cold_1();
  }
}

- (void)connectionDidActivate:(id)activate
{
  activateCopy = activate;
  v4 = TK_LOG_smartcard_0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [TKSmartCardTokenRegistrationXPCClient connectionDidActivate:];
  }
}

void __105__TKSmartCardTokenRegistrationXPCClient_registerSmartCardWithTokenID_promptMessage_callerBundleID_error___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) stringRepresentation];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1(&dword_1DF413000, v2, v3, "Failed to register smartcard, tokenID: %{public}@, error: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __105__TKSmartCardTokenRegistrationXPCClient_registerSmartCardWithTokenID_promptMessage_callerBundleID_error___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = 138543618;
  v6 = v2;
  v7 = 2112;
  v8 = v3;
  _os_log_debug_impl(&dword_1DF413000, a2, OS_LOG_TYPE_DEBUG, "Registered smartcard, tokenID: %{public}@, bundleID: %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __93__TKSmartCardTokenRegistrationXPCClient_unregisterSmartCardWithTokenID_callerBundleID_error___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) stringRepresentation];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1(&dword_1DF413000, v2, v3, "Failed to unregister smartcard, tokenID: %{public}@, error: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __93__TKSmartCardTokenRegistrationXPCClient_unregisterSmartCardWithTokenID_callerBundleID_error___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 138543362;
  v5 = v2;
  _os_log_debug_impl(&dword_1DF413000, a2, OS_LOG_TYPE_DEBUG, "Unregistered smartcard, tokenID: %{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __59__TKSmartCardTokenRegistrationXPCClient__remoteObjectProxy__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_2(&dword_1DF413000, v0, v1, "Remote object proxy failed: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __70__TKSmartCardTokenRegistrationXPCClient__synchronousRemoteObjectProxy__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_2(&dword_1DF413000, v0, v1, "Synchronous remote object proxy failed: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __70__TKSmartCardTokenRegistrationXPCClient__synchronousRemoteObjectProxy__block_invoke_66_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_2(&dword_1DF413000, v0, v1, "Synchronous call failed: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)connectionDidActivate:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_1DF413000, v0, OS_LOG_TYPE_DEBUG, "XPC connection %@ was activated", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end