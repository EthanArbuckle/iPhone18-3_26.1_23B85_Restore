@interface CXCallControllerHost
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CXCallControllerHost)initWithCalls:(id)calls delegate:(id)delegate queue:(id)queue;
- (CXCallControllerHost)initWithDelegate:(id)delegate delegateQueue:(id)queue;
- (CXCallControllerHostDelegate)delegate;
- (id)_callsForCallControllerHostConnection:(id)connection;
- (id)_sanitizedCallFromCall:(id)call forCallControllerHostConnection:(id)connection;
- (void)_performDelegateCallback:(id)callback;
- (void)addOrUpdateCall:(id)call;
- (void)callControllerHostConnection:(id)connection requestCalls:(id)calls;
- (void)callControllerHostConnection:(id)connection requestTransaction:(id)transaction completion:(id)completion;
- (void)callControllerHostConnectionInvalidated:(id)invalidated;
- (void)dealloc;
- (void)removeCall:(id)call;
@end

@implementation CXCallControllerHost

- (CXCallControllerHost)initWithCalls:(id)calls delegate:(id)delegate queue:(id)queue
{
  if (queue)
  {
    queueCopy = queue;
  }

  else
  {
    queueCopy = MEMORY[0x1E69E96A0];
  }

  v7 = [(CXCallControllerHost *)self initWithDelegate:delegate delegateQueue:queueCopy];

  return v7;
}

- (CXCallControllerHost)initWithDelegate:(id)delegate delegateQueue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v20.receiver = self;
  v20.super_class = CXCallControllerHost;
  v8 = [(CXCallControllerHost *)&v20 init];
  if (v8)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v10 = *(v8 + 6);
    *(v8 + 6) = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v12 = *(v8 + 7);
    *(v8 + 7) = dictionary2;

    v13 = [MEMORY[0x1E695DFA8] set];
    v14 = *(v8 + 8);
    *(v8 + 8) = v13;

    objc_storeWeak(v8 + 3, delegateCopy);
    objc_storeStrong(v8 + 4, queue);
    v15 = dispatch_queue_create([@"com.apple.callkit.callcontrollerhost" UTF8String], 0);
    v16 = *(v8 + 2);
    *(v8 + 2) = v15;

    v17 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.callkit.callcontrollerhost"];
    v18 = *(v8 + 5);
    *(v8 + 5) = v17;

    [*(v8 + 5) setDelegate:v8];
    notify_register_dispatch("com.apple.callkit.callcontroller.shouldconnect", v8 + 2, *(v8 + 2), &__block_literal_global_1);
    notify_set_state(*(v8 + 2), 0);
    [*(v8 + 5) resume];
  }

  return v8;
}

- (void)dealloc
{
  notify_cancel(self->_clientsShouldConnectToken);
  v3.receiver = self;
  v3.super_class = CXCallControllerHost;
  [(CXCallControllerHost *)&v3 dealloc];
}

- (void)addOrUpdateCall:(id)call
{
  callCopy = call;
  queue = [(CXCallControllerHost *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__CXCallControllerHost_addOrUpdateCall___block_invoke;
  v7[3] = &unk_1E7C06BE0;
  v7[4] = self;
  v8 = callCopy;
  v6 = callCopy;
  dispatch_async(queue, v7);
}

void __40__CXCallControllerHost_addOrUpdateCall___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) callUUIDToCallMap];
  v3 = [v2 count];

  if (!v3)
  {
    notify_set_state(*(*(a1 + 32) + 8), 1uLL);
    notify_post("com.apple.callkit.callcontroller.shouldconnect");
  }

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) callUUIDToCallMap];
  v6 = [*(a1 + 40) UUID];
  [v5 setObject:v4 forKeyedSubscript:v6];

  v7 = [*(a1 + 32) callUUIDToPublicCallUUIDMap];
  v8 = [*(a1 + 40) UUID];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (!v9)
  {
    v10 = [MEMORY[0x1E696AFB0] UUID];
    v11 = [*(a1 + 32) callUUIDToPublicCallUUIDMap];
    v12 = [*(a1 + 40) UUID];
    [v11 setObject:v10 forKeyedSubscript:v12];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = [*(a1 + 32) connections];
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v21 + 1) + 8 * i);
        v19 = [*(a1 + 32) _sanitizedCallFromCall:*(a1 + 40) forCallControllerHostConnection:v18];
        if (v19)
        {
          [v18 addOrUpdateCall:v19];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)removeCall:(id)call
{
  callCopy = call;
  queue = [(CXCallControllerHost *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__CXCallControllerHost_removeCall___block_invoke;
  v7[3] = &unk_1E7C06BE0;
  v7[4] = self;
  v8 = callCopy;
  v6 = callCopy;
  dispatch_async(queue, v7);
}

void __35__CXCallControllerHost_removeCall___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) callUUIDToCallMap];
  v3 = [v2 count];

  if (!v3)
  {
    notify_set_state(*(*(a1 + 32) + 8), 0);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [*(a1 + 32) connections];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [*(a1 + 32) _sanitizedCallFromCall:*(a1 + 40) forCallControllerHostConnection:v9];
        if (v10)
        {
          [v9 removeCall:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v11 = [*(a1 + 32) callUUIDToCallMap];
  v12 = [*(a1 + 40) UUID];
  [v11 removeObjectForKey:v12];

  v13 = [*(a1 + 32) callUUIDToPublicCallUUIDMap];
  v14 = [*(a1 + 40) UUID];
  [v13 removeObjectForKey:v14];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_performDelegateCallback:(id)callback
{
  block = callback;
  queue = [(CXCallControllerHost *)self queue];
  dispatch_assert_queue_V2(queue);

  delegate = [(CXCallControllerHost *)self delegate];
  if (delegate)
  {
    v6 = delegate;
    delegateQueue = [(CXCallControllerHost *)self delegateQueue];

    if (delegateQueue)
    {
      delegateQueue2 = [(CXCallControllerHost *)self delegateQueue];
      dispatch_async(delegateQueue2, block);
    }
  }
}

- (id)_sanitizedCallFromCall:(id)call forCallControllerHostConnection:(id)connection
{
  callCopy = call;
  connectionCopy = connection;
  queue = [(CXCallControllerHost *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([connectionCopy isPermittedToUsePrivateAPI])
  {
    sanitizedCopy = callCopy;
LABEL_6:
    v15 = sanitizedCopy;
    goto LABEL_10;
  }

  providerIdentifier = [callCopy providerIdentifier];
  if (providerIdentifier)
  {
    v11 = providerIdentifier;
    providerIdentifier2 = [callCopy providerIdentifier];
    applicationIdentifier = [connectionCopy applicationIdentifier];
    v14 = [providerIdentifier2 isEqualToString:applicationIdentifier];

    if (v14)
    {
      sanitizedCopy = [callCopy sanitizedCopy];
      goto LABEL_6;
    }
  }

  callUUIDToPublicCallUUIDMap = [(CXCallControllerHost *)self callUUIDToPublicCallUUIDMap];
  uUID = [callCopy UUID];
  v18 = [callUUIDToPublicCallUUIDMap objectForKeyedSubscript:uUID];

  if (v18)
  {
    v19 = [CXCall alloc];
    callUUIDToPublicCallUUIDMap2 = [(CXCallControllerHost *)self callUUIDToPublicCallUUIDMap];
    uUID2 = [callCopy UUID];
    v22 = [callUUIDToPublicCallUUIDMap2 objectForKeyedSubscript:uUID2];
    v15 = [(CXCall *)v19 initWithUUID:v22];

    [callCopy updateSanitizedCopy:v15 withZone:0];
  }

  else
  {
    v15 = 0;
  }

LABEL_10:

  return v15;
}

- (id)_callsForCallControllerHostConnection:(id)connection
{
  v24 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  queue = [(CXCallControllerHost *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = MEMORY[0x1E695DF70];
  callUUIDToCallMap = [(CXCallControllerHost *)self callUUIDToCallMap];
  v8 = [v6 arrayWithCapacity:{objc_msgSend(callUUIDToCallMap, "count")}];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  callUUIDToCallMap2 = [(CXCallControllerHost *)self callUUIDToCallMap];
  allValues = [callUUIDToCallMap2 allValues];

  v11 = [allValues countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(allValues);
        }

        v15 = [(CXCallControllerHost *)self _sanitizedCallFromCall:*(*(&v19 + 1) + 8 * i) forCallControllerHostConnection:connectionCopy];
        if (v15)
        {
          [v8 addObject:v15];
        }
      }

      v12 = [allValues countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v16 = [v8 copy];
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v22 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v6 = CXDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = connectionCopy;
    _os_log_impl(&dword_1B47F3000, v6, OS_LOG_TYPE_DEFAULT, "Asked to accept new connection from %@", buf, 0xCu);
  }

  *buf = 0u;
  v21 = 0u;
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  if (ba_is_process_extension())
  {
    v7 = CXDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 138412290;
      v19 = connectionCopy;
      v8 = "Process is a background asset extension; rejecting connection %@";
LABEL_11:
      _os_log_impl(&dword_1B47F3000, v7, OS_LOG_TYPE_DEFAULT, v8, v18, 0xCu);
    }
  }

  else
  {
    if (![connectionCopy cx_isProcessOnDemandInstallCapable])
    {
      v10 = [CXCallControllerHostConnection alloc];
      queue = [(CXCallControllerHost *)self queue];
      v12 = [(CXCallControllerHostConnection *)v10 initWithConnection:connectionCopy serialQueue:queue];

      [(CXCallControllerHostConnection *)v12 setDelegate:self];
      queue2 = [(CXCallControllerHost *)self queue];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __59__CXCallControllerHost_listener_shouldAcceptNewConnection___block_invoke;
      v16[3] = &unk_1E7C06BE0;
      v16[4] = self;
      v17 = v12;
      v7 = v12;
      dispatch_async(queue2, v16);

      v9 = 1;
      goto LABEL_14;
    }

    v7 = CXDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 138412290;
      v19 = connectionCopy;
      v8 = "Process is an App Clip extension; rejecting connection %@";
      goto LABEL_11;
    }
  }

  v9 = 0;
LABEL_14:

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

void __59__CXCallControllerHost_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connections];
  [v2 addObject:*(a1 + 40)];
}

- (void)callControllerHostConnectionInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  queue = [(CXCallControllerHost *)self queue];
  dispatch_assert_queue_V2(queue);

  connections = [(CXCallControllerHost *)self connections];
  [connections removeObject:invalidatedCopy];
}

- (void)callControllerHostConnection:(id)connection requestCalls:(id)calls
{
  v14 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  callsCopy = calls;
  queue = [(CXCallControllerHost *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = CXDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = connectionCopy;
    _os_log_impl(&dword_1B47F3000, v9, OS_LOG_TYPE_DEFAULT, "callControllerHostConnection: %@", &v12, 0xCu);
  }

  v10 = [(CXCallControllerHost *)self _callsForCallControllerHostConnection:connectionCopy];
  callsCopy[2](callsCopy, v10);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)callControllerHostConnection:(id)connection requestTransaction:(id)transaction completion:(id)completion
{
  v42 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  transactionCopy = transaction;
  completionCopy = completion;
  queue = [(CXCallControllerHost *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = CXDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v39 = connectionCopy;
    v40 = 2112;
    v41 = transactionCopy;
    _os_log_impl(&dword_1B47F3000, v12, OS_LOG_TYPE_DEFAULT, "callControllerHostConnection: %@ transaction: %@", buf, 0x16u);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  actions = [transactionCopy actions];
  v14 = [actions countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (!v14)
  {

    goto LABEL_18;
  }

  v15 = v14;
  v28 = completionCopy;
  v16 = 0;
  v17 = 0;
  v18 = *v34;
  do
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v34 != v18)
      {
        objc_enumerationMutation(actions);
      }

      v20 = *(*(&v33 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = 1;
      }

      else
      {
        objc_opt_class();
        v16 |= objc_opt_isKindOfClass();
      }
    }

    v15 = [actions countByEnumeratingWithState:&v33 objects:v37 count:16];
  }

  while (v15);

  if (v17 & v16)
  {
    v21 = CXDefaultLog();
    completionCopy = v28;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [CXCallControllerHost callControllerHostConnection:connectionCopy requestTransaction:v21 completion:?];
    }

    v22 = MEMORY[0x1E696ABC0];
    v23 = 6;
LABEL_21:
    v25 = [v22 cx_requestTransactionErrorWithCode:v23];
    (*(completionCopy + 2))(completionCopy, v25);

    goto LABEL_22;
  }

  completionCopy = v28;
  if ((v17 & 1) == 0)
  {
    if ((v16 & 1) != 0 && [connectionCopy isChannelTransactionRequestPermitted])
    {
      goto LABEL_28;
    }

LABEL_18:
    v24 = CXDefaultLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [CXCallControllerHost callControllerHostConnection:connectionCopy requestTransaction:v24 completion:?];
    }

    v22 = MEMORY[0x1E696ABC0];
    v23 = 1;
    goto LABEL_21;
  }

  if (([connectionCopy isCallTransactionRequestPermitted] & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_28:
  if (([connectionCopy isPermittedToUsePrivateAPI] & 1) == 0)
  {
    sanitizedCopy = [transactionCopy sanitizedCopy];

    transactionCopy = sanitizedCopy;
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __83__CXCallControllerHost_callControllerHostConnection_requestTransaction_completion___block_invoke;
  v29[3] = &unk_1E7C06DE0;
  v29[4] = self;
  v30 = connectionCopy;
  transactionCopy = transactionCopy;
  v31 = transactionCopy;
  v32 = v28;
  [(CXCallControllerHost *)self _performDelegateCallback:v29];

LABEL_22:
  v26 = *MEMORY[0x1E69E9840];
}

void __83__CXCallControllerHost_callControllerHostConnection_requestTransaction_completion___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) applicationIdentifier];
  [v4 callControllerHost:v2 clientWithIdentifier:v3 requestedTransaction:*(a1 + 48) completion:*(a1 + 56)];
}

- (CXCallControllerHostDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)callControllerHostConnection:(uint64_t)a1 requestTransaction:(NSObject *)a2 completion:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B47F3000, a2, OS_LOG_TYPE_ERROR, "Transaction contains call and channel actions; rejecting request by connection %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)callControllerHostConnection:(uint64_t)a1 requestTransaction:(NSObject *)a2 completion:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B47F3000, a2, OS_LOG_TYPE_ERROR, "Connection is not permitted to issue transaction requests: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end