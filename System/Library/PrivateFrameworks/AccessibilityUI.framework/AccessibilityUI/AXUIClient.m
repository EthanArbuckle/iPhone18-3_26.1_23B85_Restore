@interface AXUIClient
- (AXUIClient)initWithIdentifier:(id)a3 serviceBundleName:(id)a4;
- (AXUIClientDelegate)delegate;
- (NSString)description;
- (id)sendSynchronousMessage:(id)a3 withIdentifier:(unint64_t)a4 error:(id *)a5;
- (void)_cleanUp;
- (void)_requestInitializationMessageFromDelegateIfNeeded;
- (void)clientConnection:(id)a3 didChangeConnectedState:(BOOL)a4;
- (void)dealloc;
- (void)invalidate:(id)a3;
- (void)messageSender:(id)a3 accessLaunchAngelConnectionForMessageWithContext:(void *)a4 usingBlock:(id)a5;
- (void)messageSender:(id)a3 extractCustomDataFromXPCReply:(id)a4 numberOfKeyValuePairsForCustomData:(unint64_t *)a5;
- (void)messageSender:(id)a3 processCustomDataFromXPCReply:(void *)a4;
- (void)messageSender:(id)a3 willSendXPCMessage:(id)a4 context:(void *)a5;
@end

@implementation AXUIClient

- (AXUIClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_requestInitializationMessageFromDelegateIfNeeded
{
  v3 = [(AXUIClient *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v4 = [(AXUIClient *)self messageSender];
    v5 = [v4 messageSchedulingSerializationQueue];

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __63__AXUIClient__requestInitializationMessageFromDelegateIfNeeded__block_invoke;
    v9[3] = &unk_278BF22B8;
    v9[4] = self;
    v9[5] = &v10;
    [v5 performSynchronousReadingBlock:v9];
    if ((v11[3] & 1) == 0)
    {
      v6 = objc_opt_new();
      [v3 userInterfaceClient:self willActivateUserInterfaceServiceWithInitializationMessage:v6];
      if ([v6 count])
      {
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = __63__AXUIClient__requestInitializationMessageFromDelegateIfNeeded__block_invoke_2;
        v7[3] = &unk_278BF2290;
        v7[4] = self;
        v8 = v6;
        [v5 performSynchronousWritingBlock:v7];
      }
    }

    _Block_object_dispose(&v10, 8);
  }
}

- (AXUIClient)initWithIdentifier:(id)a3 serviceBundleName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = AXUIClient;
  v8 = [(AXUIClient *)&v14 init];
  if (v8)
  {
    v9 = objc_opt_new();
    v10 = +[AXUIClientConnection sharedClientConnection];
    v11 = [v6 length];
    if (v7 && v11 && v9 && v10)
    {
      [(AXUIClient *)v8 setClientIdentifier:v6];
      [(AXUIClient *)v8 setServiceBundleName:v7];
      [(AXUIClient *)v8 setMessageSender:v9];
      [(AXUIClient *)v8 setClientConnection:v10];
      v12 = [(AXUIClient *)v8 clientConnection];
      [v12 registerConnectionStateObserver:v8];

      [v9 setDelegate:v8];
    }

    else
    {

      v8 = 0;
    }
  }

  return v8;
}

- (void)dealloc
{
  [(AXUIClient *)self _cleanUp];
  v3 = AXLogAssertions();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23DBC7000, v3, OS_LOG_TYPE_DEFAULT, "AXUIClient dealloc", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = AXUIClient;
  [(AXUIClient *)&v4 dealloc];
}

- (id)sendSynchronousMessage:(id)a3 withIdentifier:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  [(AXUIClient *)self _requestInitializationMessageFromDelegateIfNeeded];
  v9 = [(AXUIClient *)self messageSender];
  v10 = [v9 sendSynchronousMessage:v8 withIdentifier:a4 context:0 error:a5];

  return v10;
}

- (void)messageSender:(id)a3 accessLaunchAngelConnectionForMessageWithContext:(void *)a4 usingBlock:(id)a5
{
  v6 = a5;
  v7 = [(AXUIClient *)self clientConnection];
  [v7 performLaunchAngelTask:v6];
}

- (void)messageSender:(id)a3 extractCustomDataFromXPCReply:(id)a4 numberOfKeyValuePairsForCustomData:(unint64_t *)a5
{
  v6 = xpc_dictionary_get_value(a4, *MEMORY[0x277CE77A8]);
  v7 = v6;
  if (a5)
  {
    *a5 = v6 != 0;
  }

  return v7;
}

- (void)messageSender:(id)a3 processCustomDataFromXPCReply:(void *)a4
{
  v6 = [(AXUIClient *)self messageSender];
  v7 = [v6 messageSchedulingSerializationQueue];
  v8 = [v7 canWriteInCurrentExecutionThread];

  if ((v8 & 1) == 0)
  {
    v9 = AXLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [AXUIClient messageSender:? processCustomDataFromXPCReply:?];
    }
  }

  v10 = a4;
  v11 = v10;
  if (v10 && MEMORY[0x23EEF8420](v10) == MEMORY[0x277D86448] && xpc_BOOL_get_value(v11))
  {
    v12 = [(AXUIClient *)self clientConnection];
    [(AXUIClient *)self setRegisteredWithServer:1];
    v13 = [(AXUIClient *)self clientIdentifier];
    [v12 registerClient:self withIdentifier:v13];
  }
}

- (void)messageSender:(id)a3 willSendXPCMessage:(id)a4 context:(void *)a5
{
  v6 = a4;
  v7 = [(AXUIClient *)self messageSender];
  v8 = [v7 messageSchedulingSerializationQueue];
  v9 = [v8 canReadInCurrentExecutionThread];

  if ((v9 & 1) == 0)
  {
    v10 = AXLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [AXUIClient messageSender:? willSendXPCMessage:? context:?];
    }
  }

  if (![(AXUIClient *)self isRegisteredWithServer])
  {
    v11 = *MEMORY[0x277CE77D8];
    v12 = [(AXUIClient *)self serviceBundleName];
    xpc_dictionary_set_string(v6, v11, [v12 UTF8String]);
  }

  v13 = *MEMORY[0x277CE77B8];
  v14 = [(AXUIClient *)self clientIdentifier];
  xpc_dictionary_set_string(v6, v13, [v14 UTF8String]);

  v15 = [(AXUIClient *)self initializationMessage];
  if (v15)
  {
    v19 = 0;
    v16 = [MEMORY[0x277CE69B8] copyXPCMessageFromDictionary:v15 inReplyToXPCMessage:0 error:&v19];
    v17 = v19;
    if (v16)
    {
      xpc_dictionary_set_value(v6, *MEMORY[0x277CE77C0], v16);
      [(AXUIClient *)self setInitializationMessage:0];
    }

    else
    {
      v18 = AXLogUI();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [AXUIClient messageSender:v17 willSendXPCMessage:v18 context:?];
      }
    }
  }
}

- (void)invalidate:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = AXLogAssertions();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    clientIdentifier = self->_clientIdentifier;
    *buf = 138412290;
    v13 = clientIdentifier;
    _os_log_impl(&dword_23DBC7000, v5, OS_LOG_TYPE_DEFAULT, "AXUIClient sending Clean up message %@", buf, 0xCu);
  }

  v7 = *MEMORY[0x277CE77A0];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __25__AXUIClient_invalidate___block_invoke;
  v10[3] = &unk_278BF2268;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  [(AXUIClient *)self sendAsynchronousMessage:MEMORY[0x277CBEC10] withIdentifier:v7 targetAccessQueue:0 completion:v10];

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __25__AXUIClient_invalidate___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cleanUp];
  v2 = AXLogAssertions();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23DBC7000, v2, OS_LOG_TYPE_DEFAULT, "AXUIClient Clean up completed", v4, 2u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_cleanUp
{
  v21 = *MEMORY[0x277D85DE8];
  if (self->_clientIdentifier)
  {
    v3 = AXLogAssertions();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      clientIdentifier = self->_clientIdentifier;
      *buf = 138412290;
      v20 = clientIdentifier;
      _os_log_impl(&dword_23DBC7000, v3, OS_LOG_TYPE_DEFAULT, "AXUIClient Clean up %@", buf, 0xCu);
    }
  }

  v5 = [(AXUIClient *)self clientConnection];
  v6 = [(AXUIClient *)self clientConnection];
  [v6 unregisterConnectionStateObserver:self];

  v7 = [(AXUIClient *)self messageSender];
  v8 = [v7 messageSchedulingSerializationQueue];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __22__AXUIClient__cleanUp__block_invoke;
  v16 = &unk_278BF2290;
  v17 = self;
  v18 = v5;
  v9 = v5;
  [v8 performSynchronousWritingBlock:&v13];

  v10 = [(AXUIClient *)self clientConnection:v13];
  [v10 cleanUp];

  [(AXUIClient *)self setClientConnection:0];
  v11 = [(AXUIClient *)self messageSender];
  [v11 setDelegate:0];

  [(AXUIClient *)self setMessageSender:0];
  [(AXUIClient *)self setServiceBundleName:0];
  [(AXUIClient *)self setClientIdentifier:0];
  [(AXUIClient *)self setInitializationMessage:0];

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __22__AXUIClient__cleanUp__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isRegisteredWithServer];
  if (result)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = [v4 clientIdentifier];
    [v3 unregisterClient:v4 withIdentifier:v5];

    v6 = *(a1 + 32);

    return [v6 setRegisteredWithServer:0];
  }

  return result;
}

uint64_t __63__AXUIClient__requestInitializationMessageFromDelegateIfNeeded__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isRegisteredWithServer];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)clientConnection:(id)a3 didChangeConnectedState:(BOOL)a4
{
  v5 = a3;
  v6 = [(AXUIClient *)self clientConnection];

  if (v6 == v5 && ([v5 isConnected] & 1) == 0)
  {
    v7 = [(AXUIClient *)self messageSender];
    v8 = [v7 messageSchedulingSerializationQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __55__AXUIClient_clientConnection_didChangeConnectedState___block_invoke;
    v11[3] = &unk_278BF22E0;
    v11[4] = self;
    [v8 performSynchronousWritingBlock:v11];

    v9 = [MEMORY[0x277CE6948] backgroundAccessQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __55__AXUIClient_clientConnection_didChangeConnectedState___block_invoke_2;
    v10[3] = &unk_278BF22E0;
    v10[4] = self;
    [v9 performAsynchronousWritingBlock:v10];
  }
}

uint64_t __55__AXUIClient_clientConnection_didChangeConnectedState___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isRegisteredWithServer];
  if (result)
  {
    v3 = [*(a1 + 32) clientConnection];
    v4 = *(a1 + 32);
    v5 = [v4 clientIdentifier];
    [v3 unregisterClient:v4 withIdentifier:v5];

    v6 = *(a1 + 32);

    return [v6 setRegisteredWithServer:0];
  }

  return result;
}

void __55__AXUIClient_clientConnection_didChangeConnectedState___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 connectionWithServiceWasInterruptedForUserInterfaceClient:*(a1 + 32)];
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(AXUIClient *)self clientIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p clientIdentifier = %@>", v5, self, v6];;

  return v7;
}

- (void)messageSender:(void *)a1 processCustomDataFromXPCReply:.cold.1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [a1 messageSender];
  v2 = [v1 messageSchedulingSerializationQueue];
  v3 = [v2 label];
  OUTLINED_FUNCTION_0(&dword_23DBC7000, v4, v5, "This code must execute in a writing block on AXAccessQueue: %@", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)messageSender:(void *)a1 willSendXPCMessage:context:.cold.1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = [a1 messageSender];
  v2 = [v1 messageSchedulingSerializationQueue];
  v3 = [v2 label];
  OUTLINED_FUNCTION_0(&dword_23DBC7000, v4, v5, "This code must execute in a reading (or writing) block on AXAccessQueue: %@", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)messageSender:(uint64_t)a1 willSendXPCMessage:(NSObject *)a2 context:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_23DBC7000, a2, OS_LOG_TYPE_ERROR, "Failed to convert initialization message to XPC object: %{public}@.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end