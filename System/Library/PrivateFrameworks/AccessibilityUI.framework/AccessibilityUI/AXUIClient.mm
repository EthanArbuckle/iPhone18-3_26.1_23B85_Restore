@interface AXUIClient
- (AXUIClient)initWithIdentifier:(id)identifier serviceBundleName:(id)name;
- (AXUIClientDelegate)delegate;
- (NSString)description;
- (id)sendSynchronousMessage:(id)message withIdentifier:(unint64_t)identifier error:(id *)error;
- (void)_cleanUp;
- (void)_requestInitializationMessageFromDelegateIfNeeded;
- (void)clientConnection:(id)connection didChangeConnectedState:(BOOL)state;
- (void)dealloc;
- (void)invalidate:(id)invalidate;
- (void)messageSender:(id)sender accessLaunchAngelConnectionForMessageWithContext:(void *)context usingBlock:(id)block;
- (void)messageSender:(id)sender extractCustomDataFromXPCReply:(id)reply numberOfKeyValuePairsForCustomData:(unint64_t *)data;
- (void)messageSender:(id)sender processCustomDataFromXPCReply:(void *)reply;
- (void)messageSender:(id)sender willSendXPCMessage:(id)message context:(void *)context;
@end

@implementation AXUIClient

- (AXUIClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_requestInitializationMessageFromDelegateIfNeeded
{
  delegate = [(AXUIClient *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    messageSender = [(AXUIClient *)self messageSender];
    messageSchedulingSerializationQueue = [messageSender messageSchedulingSerializationQueue];

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __63__AXUIClient__requestInitializationMessageFromDelegateIfNeeded__block_invoke;
    v9[3] = &unk_278BF22B8;
    v9[4] = self;
    v9[5] = &v10;
    [messageSchedulingSerializationQueue performSynchronousReadingBlock:v9];
    if ((v11[3] & 1) == 0)
    {
      v6 = objc_opt_new();
      [delegate userInterfaceClient:self willActivateUserInterfaceServiceWithInitializationMessage:v6];
      if ([v6 count])
      {
        v7[0] = MEMORY[0x277D85DD0];
        v7[1] = 3221225472;
        v7[2] = __63__AXUIClient__requestInitializationMessageFromDelegateIfNeeded__block_invoke_2;
        v7[3] = &unk_278BF2290;
        v7[4] = self;
        v8 = v6;
        [messageSchedulingSerializationQueue performSynchronousWritingBlock:v7];
      }
    }

    _Block_object_dispose(&v10, 8);
  }
}

- (AXUIClient)initWithIdentifier:(id)identifier serviceBundleName:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = AXUIClient;
  v8 = [(AXUIClient *)&v14 init];
  if (v8)
  {
    v9 = objc_opt_new();
    v10 = +[AXUIClientConnection sharedClientConnection];
    v11 = [identifierCopy length];
    if (nameCopy && v11 && v9 && v10)
    {
      [(AXUIClient *)v8 setClientIdentifier:identifierCopy];
      [(AXUIClient *)v8 setServiceBundleName:nameCopy];
      [(AXUIClient *)v8 setMessageSender:v9];
      [(AXUIClient *)v8 setClientConnection:v10];
      clientConnection = [(AXUIClient *)v8 clientConnection];
      [clientConnection registerConnectionStateObserver:v8];

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

- (id)sendSynchronousMessage:(id)message withIdentifier:(unint64_t)identifier error:(id *)error
{
  messageCopy = message;
  [(AXUIClient *)self _requestInitializationMessageFromDelegateIfNeeded];
  messageSender = [(AXUIClient *)self messageSender];
  v10 = [messageSender sendSynchronousMessage:messageCopy withIdentifier:identifier context:0 error:error];

  return v10;
}

- (void)messageSender:(id)sender accessLaunchAngelConnectionForMessageWithContext:(void *)context usingBlock:(id)block
{
  blockCopy = block;
  clientConnection = [(AXUIClient *)self clientConnection];
  [clientConnection performLaunchAngelTask:blockCopy];
}

- (void)messageSender:(id)sender extractCustomDataFromXPCReply:(id)reply numberOfKeyValuePairsForCustomData:(unint64_t *)data
{
  v6 = xpc_dictionary_get_value(reply, *MEMORY[0x277CE77A8]);
  v7 = v6;
  if (data)
  {
    *data = v6 != 0;
  }

  return v7;
}

- (void)messageSender:(id)sender processCustomDataFromXPCReply:(void *)reply
{
  messageSender = [(AXUIClient *)self messageSender];
  messageSchedulingSerializationQueue = [messageSender messageSchedulingSerializationQueue];
  canWriteInCurrentExecutionThread = [messageSchedulingSerializationQueue canWriteInCurrentExecutionThread];

  if ((canWriteInCurrentExecutionThread & 1) == 0)
  {
    v9 = AXLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [AXUIClient messageSender:? processCustomDataFromXPCReply:?];
    }
  }

  replyCopy = reply;
  v11 = replyCopy;
  if (replyCopy && MEMORY[0x23EEF8420](replyCopy) == MEMORY[0x277D86448] && xpc_BOOL_get_value(v11))
  {
    clientConnection = [(AXUIClient *)self clientConnection];
    [(AXUIClient *)self setRegisteredWithServer:1];
    clientIdentifier = [(AXUIClient *)self clientIdentifier];
    [clientConnection registerClient:self withIdentifier:clientIdentifier];
  }
}

- (void)messageSender:(id)sender willSendXPCMessage:(id)message context:(void *)context
{
  messageCopy = message;
  messageSender = [(AXUIClient *)self messageSender];
  messageSchedulingSerializationQueue = [messageSender messageSchedulingSerializationQueue];
  canReadInCurrentExecutionThread = [messageSchedulingSerializationQueue canReadInCurrentExecutionThread];

  if ((canReadInCurrentExecutionThread & 1) == 0)
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
    serviceBundleName = [(AXUIClient *)self serviceBundleName];
    xpc_dictionary_set_string(messageCopy, v11, [serviceBundleName UTF8String]);
  }

  v13 = *MEMORY[0x277CE77B8];
  clientIdentifier = [(AXUIClient *)self clientIdentifier];
  xpc_dictionary_set_string(messageCopy, v13, [clientIdentifier UTF8String]);

  initializationMessage = [(AXUIClient *)self initializationMessage];
  if (initializationMessage)
  {
    v19 = 0;
    v16 = [MEMORY[0x277CE69B8] copyXPCMessageFromDictionary:initializationMessage inReplyToXPCMessage:0 error:&v19];
    v17 = v19;
    if (v16)
    {
      xpc_dictionary_set_value(messageCopy, *MEMORY[0x277CE77C0], v16);
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

- (void)invalidate:(id)invalidate
{
  v14 = *MEMORY[0x277D85DE8];
  invalidateCopy = invalidate;
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
  v11 = invalidateCopy;
  v8 = invalidateCopy;
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

  clientConnection = [(AXUIClient *)self clientConnection];
  clientConnection2 = [(AXUIClient *)self clientConnection];
  [clientConnection2 unregisterConnectionStateObserver:self];

  messageSender = [(AXUIClient *)self messageSender];
  messageSchedulingSerializationQueue = [messageSender messageSchedulingSerializationQueue];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __22__AXUIClient__cleanUp__block_invoke;
  v16 = &unk_278BF2290;
  selfCopy = self;
  v18 = clientConnection;
  v9 = clientConnection;
  [messageSchedulingSerializationQueue performSynchronousWritingBlock:&v13];

  v10 = [(AXUIClient *)self clientConnection:v13];
  [v10 cleanUp];

  [(AXUIClient *)self setClientConnection:0];
  messageSender2 = [(AXUIClient *)self messageSender];
  [messageSender2 setDelegate:0];

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

- (void)clientConnection:(id)connection didChangeConnectedState:(BOOL)state
{
  connectionCopy = connection;
  clientConnection = [(AXUIClient *)self clientConnection];

  if (clientConnection == connectionCopy && ([connectionCopy isConnected] & 1) == 0)
  {
    messageSender = [(AXUIClient *)self messageSender];
    messageSchedulingSerializationQueue = [messageSender messageSchedulingSerializationQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __55__AXUIClient_clientConnection_didChangeConnectedState___block_invoke;
    v11[3] = &unk_278BF22E0;
    v11[4] = self;
    [messageSchedulingSerializationQueue performSynchronousWritingBlock:v11];

    backgroundAccessQueue = [MEMORY[0x277CE6948] backgroundAccessQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __55__AXUIClient_clientConnection_didChangeConnectedState___block_invoke_2;
    v10[3] = &unk_278BF22E0;
    v10[4] = self;
    [backgroundAccessQueue performAsynchronousWritingBlock:v10];
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
  clientIdentifier = [(AXUIClient *)self clientIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p clientIdentifier = %@>", v5, self, clientIdentifier];;

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