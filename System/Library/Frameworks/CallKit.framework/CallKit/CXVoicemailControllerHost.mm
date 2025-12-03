@interface CXVoicemailControllerHost
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CXVoicemailControllerHost)initWithVoicemails:(id)voicemails delegate:(id)delegate queue:(id)queue;
- (CXVoicemailControllerHostDelegate)delegate;
- (id)_voicemailsForVoicemailControllerHostConnection:(id)connection;
- (void)_performDelegateCallback:(id)callback;
- (void)addOrUpdateVoicemails:(id)voicemails;
- (void)removeVoicemails:(id)voicemails;
- (void)voicemailControllerHostConnection:(id)connection requestTransaction:(id)transaction completion:(id)completion;
- (void)voicemailControllerHostConnection:(id)connection requestVoicemails:(id)voicemails;
- (void)voicemailControllerHostConnectionInvalidated:(id)invalidated;
@end

@implementation CXVoicemailControllerHost

- (CXVoicemailControllerHost)initWithVoicemails:(id)voicemails delegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = CXVoicemailControllerHost;
  v9 = [(CXVoicemailControllerHost *)&v18 init];
  if (v9)
  {
    v10 = dispatch_queue_create([@"com.apple.callkit.voicemailcontrollerhost" UTF8String], 0);
    queue = v9->_queue;
    v9->_queue = v10;

    v12 = v9->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__CXVoicemailControllerHost_initWithVoicemails_delegate_queue___block_invoke;
    block[3] = &unk_1E7C06C80;
    v15 = v9;
    v16 = delegateCopy;
    v17 = queueCopy;
    dispatch_async(v12, block);
  }

  return v9;
}

uint64_t __63__CXVoicemailControllerHost_initWithVoicemails_delegate_queue___block_invoke(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 16), *(a1 + 40));
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 48));
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [MEMORY[0x1E695DFA8] set];
  v6 = *(a1 + 32);
  v7 = *(v6 + 48);
  *(v6 + 48) = v5;

  v8 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.callkit.voicemailcontrollerhost"];
  v9 = *(a1 + 32);
  v10 = *(v9 + 32);
  *(v9 + 32) = v8;

  [*(*(a1 + 32) + 32) setDelegate:?];
  [*(*(a1 + 32) + 32) resume];
  out_token = 0;
  notify_register_check("com.apple.callkit.voicemailcontrollerhost.started", &out_token);
  notify_set_state(out_token, 1uLL);
  return notify_post("com.apple.callkit.voicemailcontrollerhost.started");
}

- (void)addOrUpdateVoicemails:(id)voicemails
{
  voicemailsCopy = voicemails;
  queue = [(CXVoicemailControllerHost *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__CXVoicemailControllerHost_addOrUpdateVoicemails___block_invoke;
  v7[3] = &unk_1E7C06BE0;
  v8 = voicemailsCopy;
  selfCopy = self;
  v6 = voicemailsCopy;
  dispatch_async(queue, v7);
}

void __51__CXVoicemailControllerHost_addOrUpdateVoicemails___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    do
    {
      v6 = 0;
      do
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v20 + 1) + 8 * v6);
        v8 = [*(a1 + 40) voicemailUUIDToVoicemailMap];
        v9 = [v7 UUID];
        [v8 setObject:v7 forKeyedSubscript:v9];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v4);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [*(a1 + 40) connections];
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v16 + 1) + 8 * v14++) addOrUpdateVoicemails:*(a1 + 32)];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)removeVoicemails:(id)voicemails
{
  voicemailsCopy = voicemails;
  queue = [(CXVoicemailControllerHost *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__CXVoicemailControllerHost_removeVoicemails___block_invoke;
  v7[3] = &unk_1E7C06BE0;
  v8 = voicemailsCopy;
  selfCopy = self;
  v6 = voicemailsCopy;
  dispatch_async(queue, v7);
}

void __46__CXVoicemailControllerHost_removeVoicemails___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    do
    {
      v6 = 0;
      do
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v20 + 1) + 8 * v6);
        v8 = [*(a1 + 40) voicemailUUIDToVoicemailMap];
        v9 = [v7 UUID];
        [v8 removeObjectForKey:v9];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v4);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [*(a1 + 40) connections];
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v16 + 1) + 8 * v14++) removeVoicemails:*(a1 + 32)];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_performDelegateCallback:(id)callback
{
  block = callback;
  queue = [(CXVoicemailControllerHost *)self queue];
  dispatch_assert_queue_V2(queue);

  delegate = [(CXVoicemailControllerHost *)self delegate];
  if (delegate)
  {
    v6 = delegate;
    delegateQueue = [(CXVoicemailControllerHost *)self delegateQueue];

    if (delegateQueue)
    {
      delegateQueue2 = [(CXVoicemailControllerHost *)self delegateQueue];
      dispatch_async(delegateQueue2, block);
    }
  }
}

- (id)_voicemailsForVoicemailControllerHostConnection:(id)connection
{
  v26 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  queue = [(CXVoicemailControllerHost *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = MEMORY[0x1E695DF70];
  voicemailUUIDToVoicemailMap = [(CXVoicemailControllerHost *)self voicemailUUIDToVoicemailMap];
  v8 = [v6 arrayWithCapacity:{objc_msgSend(voicemailUUIDToVoicemailMap, "count")}];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  voicemailUUIDToVoicemailMap2 = [(CXVoicemailControllerHost *)self voicemailUUIDToVoicemailMap];
  allValues = [voicemailUUIDToVoicemailMap2 allValues];

  v11 = [allValues countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(allValues);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        if ([connectionCopy isPermittedToUsePrivateAPI])
        {
          sanitizedCopy = v15;
        }

        else
        {
          sanitizedCopy = [v15 sanitizedCopy];
        }

        v17 = sanitizedCopy;
        [v8 addObject:sanitizedCopy];
      }

      v12 = [allValues countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  v18 = [v8 copy];
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v22 = *MEMORY[0x1E69E9840];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = CXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v19 = listenerCopy;
    v20 = 2112;
    v21 = connectionCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "listener: %@ newConnection: %@", buf, 0x16u);
  }

  v9 = [CXVoicemailControllerHostConnection alloc];
  queue = [(CXVoicemailControllerHost *)self queue];
  v11 = [(CXVoicemailControllerHostConnection *)v9 initWithConnection:connectionCopy serialQueue:queue];

  if (v11)
  {
    [(CXVoicemailControllerHostConnection *)v11 setDelegate:self];
    queue2 = [(CXVoicemailControllerHost *)self queue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __64__CXVoicemailControllerHost_listener_shouldAcceptNewConnection___block_invoke;
    v16[3] = &unk_1E7C06BE0;
    v16[4] = self;
    v17 = v11;
    dispatch_async(queue2, v16);
  }

  else
  {
    v13 = CXDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = connectionCopy;
      _os_log_impl(&dword_1B47F3000, v13, OS_LOG_TYPE_DEFAULT, "[WARN] Not accepting connection %@ because a CXXPCVoicemailSource couldn't be created", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v11 != 0;
}

void __64__CXVoicemailControllerHost_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connections];
  [v2 addObject:*(a1 + 40)];
}

- (void)voicemailControllerHostConnectionInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  queue = [(CXVoicemailControllerHost *)self queue];
  dispatch_assert_queue_V2(queue);

  connections = [(CXVoicemailControllerHost *)self connections];
  [connections removeObject:invalidatedCopy];
}

- (void)voicemailControllerHostConnection:(id)connection requestVoicemails:(id)voicemails
{
  v14 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  voicemailsCopy = voicemails;
  queue = [(CXVoicemailControllerHost *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = CXDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = connectionCopy;
    _os_log_impl(&dword_1B47F3000, v9, OS_LOG_TYPE_DEFAULT, "voicemailControllerHostConnection: %@", &v12, 0xCu);
  }

  v10 = [(CXVoicemailControllerHost *)self _voicemailsForVoicemailControllerHostConnection:connectionCopy];
  voicemailsCopy[2](voicemailsCopy, v10);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)voicemailControllerHostConnection:(id)connection requestTransaction:(id)transaction completion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  transactionCopy = transaction;
  completionCopy = completion;
  queue = [(CXVoicemailControllerHost *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = CXDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = connectionCopy;
    v23 = 2112;
    v24 = transactionCopy;
    _os_log_impl(&dword_1B47F3000, v12, OS_LOG_TYPE_DEFAULT, "voicemailControllerHostConnection: %@ transaction: %@", buf, 0x16u);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __93__CXVoicemailControllerHost_voicemailControllerHostConnection_requestTransaction_completion___block_invoke;
  v17[3] = &unk_1E7C06DE0;
  v17[4] = self;
  v18 = connectionCopy;
  v19 = transactionCopy;
  v20 = completionCopy;
  v13 = completionCopy;
  v14 = transactionCopy;
  v15 = connectionCopy;
  [(CXVoicemailControllerHost *)self _performDelegateCallback:v17];

  v16 = *MEMORY[0x1E69E9840];
}

void __93__CXVoicemailControllerHost_voicemailControllerHostConnection_requestTransaction_completion___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) applicationIdentifier];
  [v4 voicemailControllerHost:v2 clientWithIdentifier:v3 requestedTransaction:*(a1 + 48) completion:*(a1 + 56)];
}

- (CXVoicemailControllerHostDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end