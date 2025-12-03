@interface CXChannelSourceManager
- (CXChannelSourceManager)initWithDelegate:(id)delegate queue:(id)queue;
- (CXChannelSourceManagerDelegate)delegate;
- (NSArray)channelSources;
- (id)channelSourceForIdentifier:(id)identifier;
- (void)addAction:(id)action toUncommittedTransactionForChannelSource:(id)source;
- (void)addChannelSource:(id)source;
- (void)commitUncommittedTransactions;
- (void)failOutstandingActionsForChannelWithUUID:(id)d;
- (void)performDelegateCallback:(id)callback;
- (void)removeChannelSource:(id)source;
- (void)serviceServer:(id)server client:(id)client actionCompleted:(id)completed;
- (void)serviceServer:(id)server client:(id)client registeredWithConfiguration:(id)configuration;
- (void)serviceServer:(id)server client:(id)client reportedAudioFinishedForChannelWithUUID:(id)d;
- (void)serviceServer:(id)server client:(id)client reportedChannelWithUUID:(id)d connectedAtDate:(id)date;
- (void)serviceServer:(id)server client:(id)client reportedChannelWithUUID:(id)d disconnectedAtDate:(id)date disconnectedReason:(int64_t)reason;
- (void)serviceServer:(id)server client:(id)client reportedChannelWithUUID:(id)d startedConnectingAtDate:(id)date;
- (void)serviceServer:(id)server client:(id)client reportedChannelWithUUID:(id)d updated:(id)updated;
- (void)serviceServer:(id)server client:(id)client reportedIncomingTransmissionEndedForChannelWithUUID:(id)d reason:(int64_t)reason completionHandler:(id)handler;
- (void)serviceServer:(id)server client:(id)client reportedIncomingTransmissionStartedForChannelWithUUID:(id)d update:(id)update shouldReplaceOutgoingTransmission:(BOOL)transmission completionHandler:(id)handler;
- (void)serviceServer:(id)server client:(id)client requestedTransaction:(id)transaction completionHandler:(id)handler;
- (void)serviceServer:(id)server didAddClient:(id)client;
- (void)serviceServer:(id)server didRemoveClient:(id)client;
- (void)transactionManager:(id)manager actionTimedOut:(id)out forCallSource:(id)source;
- (void)transactionManager:(id)manager transactionGroupCompleted:(id)completed;
@end

@implementation CXChannelSourceManager

- (CXChannelSourceManager)initWithDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v28.receiver = self;
  v28.super_class = CXChannelSourceManager;
  v8 = [(CXChannelSourceManager *)&v28 init];
  v9 = v8;
  if (v8)
  {
    v8->_accessorLock._os_unfair_lock_opaque = 0;
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.callkit.queue.%@.%p", objc_opt_class(), v8];
    uTF8String = [v10 UTF8String];
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create(uTF8String, v12);
    queue = v9->_queue;
    v9->_queue = v13;

    objc_storeWeak(&v9->_delegate, delegateCopy);
    if (queueCopy)
    {
      v15 = queueCopy;
      delegateQueue = v9->_delegateQueue;
      v9->_delegateQueue = v15;
    }

    else
    {
      v17 = MEMORY[0x1E69E96A0];
      v18 = MEMORY[0x1E69E96A0];
      delegateQueue = v9->_delegateQueue;
      v9->_delegateQueue = v17;
    }

    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    identifierToChannelSource = v9->_identifierToChannelSource;
    v9->_identifierToChannelSource = v19;

    v21 = [[CXTransactionManager alloc] initWithQueue:v9->_queue];
    transactionManager = v9->_transactionManager;
    v9->_transactionManager = v21;

    [(CXTransactionManager *)v9->_transactionManager setDelegate:v9];
    v23 = objc_alloc_init(CXTransactionGroup);
    uncommittedTransactionGroup = v9->_uncommittedTransactionGroup;
    v9->_uncommittedTransactionGroup = v23;

    v25 = objc_alloc_init(CXChannelServiceServer);
    serviceServer = v9->_serviceServer;
    v9->_serviceServer = v25;

    [(CXChannelServiceServer *)v9->_serviceServer setDelegate:v9];
    [(CXChannelServiceServer *)v9->_serviceServer activate];
  }

  return v9;
}

- (void)addChannelSource:(id)source
{
  v12 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = sourceCopy;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Asked to add channel source %@", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_accessorLock);
  identifierToChannelSource = [(CXChannelSourceManager *)self identifierToChannelSource];
  identifier = [sourceCopy identifier];
  [identifierToChannelSource setObject:sourceCopy forKeyedSubscript:identifier];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__CXChannelSourceManager_addChannelSource___block_invoke;
  v9[3] = &unk_1E7C06CA8;
  v9[4] = self;
  [(CXChannelSourceManager *)self performDelegateCallback:v9];
  os_unfair_lock_unlock(&self->_accessorLock);

  v8 = *MEMORY[0x1E69E9840];
}

void __43__CXChannelSourceManager_addChannelSource___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 channelSourcesChangedForChannelSourceManager:*(a1 + 32)];
}

- (id)channelSourceForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_accessorLock);
  identifierToChannelSource = [(CXChannelSourceManager *)self identifierToChannelSource];
  v6 = [identifierToChannelSource objectForKeyedSubscript:identifierCopy];

  os_unfair_lock_unlock(&self->_accessorLock);

  return v6;
}

- (NSArray)channelSources
{
  os_unfair_lock_lock(&self->_accessorLock);
  identifierToChannelSource = [(CXChannelSourceManager *)self identifierToChannelSource];
  allValues = [identifierToChannelSource allValues];

  os_unfair_lock_unlock(&self->_accessorLock);

  return allValues;
}

- (void)removeChannelSource:(id)source
{
  v15 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = sourceCopy;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Asked to remove channel source %@", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_accessorLock);
  identifier = [sourceCopy identifier];
  identifierToChannelSource = [(CXChannelSourceManager *)self identifierToChannelSource];
  v8 = [identifierToChannelSource objectForKeyedSubscript:identifier];
  v9 = [v8 isEqual:sourceCopy];

  if (v9)
  {
    identifierToChannelSource2 = [(CXChannelSourceManager *)self identifierToChannelSource];
    [identifierToChannelSource2 setObject:0 forKeyedSubscript:identifier];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __46__CXChannelSourceManager_removeChannelSource___block_invoke;
    v12[3] = &unk_1E7C06CA8;
    v12[4] = self;
    [(CXChannelSourceManager *)self performDelegateCallback:v12];
  }

  os_unfair_lock_unlock(&self->_accessorLock);
  v11 = *MEMORY[0x1E69E9840];
}

void __46__CXChannelSourceManager_removeChannelSource___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 channelSourcesChangedForChannelSourceManager:*(a1 + 32)];
}

- (void)performDelegateCallback:(id)callback
{
  block = callback;
  delegate = [(CXChannelSourceManager *)self delegate];

  if (delegate)
  {
    delegateQueue = [(CXChannelSourceManager *)self delegateQueue];
    dispatch_async(delegateQueue, block);
  }
}

- (void)addAction:(id)action toUncommittedTransactionForChannelSource:(id)source
{
  actionCopy = action;
  sourceCopy = source;
  queue = [(CXChannelSourceManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__CXChannelSourceManager_addAction_toUncommittedTransactionForChannelSource___block_invoke;
  block[3] = &unk_1E7C06C80;
  v12 = actionCopy;
  v13 = sourceCopy;
  selfCopy = self;
  v9 = sourceCopy;
  v10 = actionCopy;
  dispatch_async(queue, block);
}

void __77__CXChannelSourceManager_addAction_toUncommittedTransactionForChannelSource___block_invoke(id *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [a1[4] UUID];
    *buf = 138412290;
    v18 = v3;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Asked to add action UUID=%@", buf, 0xCu);
  }

  v4 = [a1[4] debugDescription];
  v5 = [a1[5] debugDescription];
  v6 = CXOversizedLogQueue();
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __77__CXChannelSourceManager_addAction_toUncommittedTransactionForChannelSource___block_invoke_6;
  v14 = &unk_1E7C06BE0;
  v15 = v4;
  v16 = v5;
  v7 = v5;
  v8 = v4;
  dispatch_async(v6, &v11);

  v9 = [a1[6] uncommittedTransactionGroup];
  [v9 addAction:a1[4] forProviderSource:a1[5]];

  v10 = *MEMORY[0x1E69E9840];
}

void __77__CXChannelSourceManager_addAction_toUncommittedTransactionForChannelSource___block_invoke_6(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = CXOversizedLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Asked to add action %@ to uncommitted transaction for channel source %@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)failOutstandingActionsForChannelWithUUID:(id)d
{
  dCopy = d;
  queue = [(CXChannelSourceManager *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__CXChannelSourceManager_failOutstandingActionsForChannelWithUUID___block_invoke;
  v7[3] = &unk_1E7C06BE0;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

void __67__CXChannelSourceManager_failOutstandingActionsForChannelWithUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transactionManager];
  [v2 failOutstandingActionsForChannelWithUUID:*(a1 + 40)];
}

- (void)commitUncommittedTransactions
{
  queue = [(CXChannelSourceManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__CXChannelSourceManager_commitUncommittedTransactions__block_invoke;
  block[3] = &unk_1E7C06CA8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __55__CXChannelSourceManager_commitUncommittedTransactions__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = CXDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) uncommittedTransactionGroup];
    *buf = 138412290;
    v23 = v3;
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Asked to commit uncommitted transactions: %@", buf, 0xCu);
  }

  v4 = [*(a1 + 32) transactionManager];
  v5 = [*(a1 + 32) uncommittedTransactionGroup];
  [v4 addOutstandingTransactionGroup:v5];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [*(a1 + 32) uncommittedTransactionGroup];
  v7 = [v6 providerSources];

  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        v13 = [*(a1 + 32) uncommittedTransactionGroup];
        v14 = [v13 transactionForProviderSource:v12];

        [v12 commitTransaction:v14];
        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = objc_alloc_init(CXTransactionGroup);
  [*(a1 + 32) setUncommittedTransactionGroup:v15];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)serviceServer:(id)server client:(id)client actionCompleted:(id)completed
{
  clientCopy = client;
  completedCopy = completed;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [clientCopy identifier];
    v10 = [(CXChannelSourceManager *)self channelSourceForIdentifier:identifier];

    if (v10)
    {
      queue = [(CXChannelSourceManager *)self queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __63__CXChannelSourceManager_serviceServer_client_actionCompleted___block_invoke;
      block[3] = &unk_1E7C06C80;
      block[4] = self;
      v13 = v10;
      v14 = completedCopy;
      dispatch_async(queue, block);
    }
  }
}

void __63__CXChannelSourceManager_serviceServer_client_actionCompleted___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v14 = 0;
  v5 = [v2 channelSource:v3 shouldProcessAction:v4 error:&v14];
  v6 = v14;

  if ((v5 & 1) != 0 || v6 && ([v6 code] == 5 || objc_msgSend(v6, "code") == 7))
  {
    v7 = CXDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      *buf = 138412802;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_1B47F3000, v7, OS_LOG_TYPE_DEFAULT, "Determined that channelSource: %@, should process action: %@, error: %@", buf, 0x20u);
    }

    v10 = [*(a1 + 32) transactionManager];
    [v10 updateWithCompletedAction:*(a1 + 48)];
  }

  else
  {
    v10 = CXDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      *buf = 138412802;
      v16 = v12;
      v17 = 2112;
      v18 = v13;
      v19 = 2112;
      v20 = v6;
      _os_log_error_impl(&dword_1B47F3000, v10, OS_LOG_TYPE_ERROR, "Determined that channelSource: %@, should not process action: %@, error: %@", buf, 0x20u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)serviceServer:(id)server didAddClient:(id)client
{
  clientCopy = client;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[CXXPCChannelSource alloc] initWithClient:clientCopy];
    [(CXChannelSourceManager *)self addChannelSource:v5];
  }
}

- (void)serviceServer:(id)server didRemoveClient:(id)client
{
  clientCopy = client;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [clientCopy identifier];
    v6 = [(CXChannelSourceManager *)self channelSourceForIdentifier:identifier];

    if (v6)
    {
      [(CXChannelSourceManager *)self removeChannelSource:v6];
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)serviceServer:(id)server client:(id)client registeredWithConfiguration:(id)configuration
{
  clientCopy = client;
  configurationCopy = configuration;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [clientCopy identifier];
    v10 = [(CXChannelSourceManager *)self channelSourceForIdentifier:identifier];

    if (v10)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __75__CXChannelSourceManager_serviceServer_client_registeredWithConfiguration___block_invoke;
      v11[3] = &unk_1E7C06C80;
      v11[4] = self;
      v12 = v10;
      v13 = configurationCopy;
      [(CXChannelSourceManager *)self performDelegateCallback:v11];
    }
  }
}

void __75__CXChannelSourceManager_serviceServer_client_registeredWithConfiguration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 providerSource:*(a1 + 40) registeredWithConfiguration:*(a1 + 48)];
}

- (void)serviceServer:(id)server client:(id)client reportedAudioFinishedForChannelWithUUID:(id)d
{
  clientCopy = client;
  dCopy = d;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [clientCopy identifier];
    v10 = [(CXChannelSourceManager *)self channelSourceForIdentifier:identifier];

    if (v10)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __87__CXChannelSourceManager_serviceServer_client_reportedAudioFinishedForChannelWithUUID___block_invoke;
      v11[3] = &unk_1E7C06C80;
      v11[4] = self;
      v12 = v10;
      v13 = dCopy;
      [(CXChannelSourceManager *)self performDelegateCallback:v11];
    }
  }
}

void __87__CXChannelSourceManager_serviceServer_client_reportedAudioFinishedForChannelWithUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 providerSource:*(a1 + 40) reportedAudioFinishedForChannelWithUUID:*(a1 + 48)];
}

- (void)serviceServer:(id)server client:(id)client reportedChannelWithUUID:(id)d startedConnectingAtDate:(id)date
{
  clientCopy = client;
  dCopy = d;
  dateCopy = date;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [clientCopy identifier];
    v13 = [(CXChannelSourceManager *)self channelSourceForIdentifier:identifier];

    if (v13)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __95__CXChannelSourceManager_serviceServer_client_reportedChannelWithUUID_startedConnectingAtDate___block_invoke;
      v14[3] = &unk_1E7C06F98;
      v14[4] = self;
      v15 = v13;
      v16 = dCopy;
      v17 = dateCopy;
      [(CXChannelSourceManager *)self performDelegateCallback:v14];
    }
  }
}

void __95__CXChannelSourceManager_serviceServer_client_reportedChannelWithUUID_startedConnectingAtDate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 providerSource:*(a1 + 40) reportedChannelWithUUID:*(a1 + 48) startedConnectingAtDate:*(a1 + 56)];
}

- (void)serviceServer:(id)server client:(id)client reportedChannelWithUUID:(id)d connectedAtDate:(id)date
{
  clientCopy = client;
  dCopy = d;
  dateCopy = date;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [clientCopy identifier];
    v13 = [(CXChannelSourceManager *)self channelSourceForIdentifier:identifier];

    if (v13)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __87__CXChannelSourceManager_serviceServer_client_reportedChannelWithUUID_connectedAtDate___block_invoke;
      v14[3] = &unk_1E7C06F98;
      v14[4] = self;
      v15 = v13;
      v16 = dCopy;
      v17 = dateCopy;
      [(CXChannelSourceManager *)self performDelegateCallback:v14];
    }
  }
}

void __87__CXChannelSourceManager_serviceServer_client_reportedChannelWithUUID_connectedAtDate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 providerSource:*(a1 + 40) reportedChannelWithUUID:*(a1 + 48) connectedAtDate:*(a1 + 56)];
}

- (void)serviceServer:(id)server client:(id)client reportedChannelWithUUID:(id)d disconnectedAtDate:(id)date disconnectedReason:(int64_t)reason
{
  clientCopy = client;
  dCopy = d;
  dateCopy = date;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [clientCopy identifier];
    v15 = [(CXChannelSourceManager *)self channelSourceForIdentifier:identifier];

    if (v15)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __109__CXChannelSourceManager_serviceServer_client_reportedChannelWithUUID_disconnectedAtDate_disconnectedReason___block_invoke;
      v16[3] = &unk_1E7C06FE8;
      v16[4] = self;
      v17 = v15;
      v18 = dCopy;
      v19 = dateCopy;
      reasonCopy = reason;
      [(CXChannelSourceManager *)self performDelegateCallback:v16];
    }
  }
}

void __109__CXChannelSourceManager_serviceServer_client_reportedChannelWithUUID_disconnectedAtDate_disconnectedReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 providerSource:*(a1 + 40) reportedChannelWithUUID:*(a1 + 48) disconnectedAtDate:*(a1 + 56) disconnectedReason:*(a1 + 64)];
}

- (void)serviceServer:(id)server client:(id)client reportedChannelWithUUID:(id)d updated:(id)updated
{
  clientCopy = client;
  dCopy = d;
  updatedCopy = updated;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [clientCopy identifier];
    v13 = [(CXChannelSourceManager *)self channelSourceForIdentifier:identifier];

    if (v13)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __79__CXChannelSourceManager_serviceServer_client_reportedChannelWithUUID_updated___block_invoke;
      v14[3] = &unk_1E7C06F98;
      v14[4] = self;
      v15 = v13;
      v16 = dCopy;
      v17 = updatedCopy;
      [(CXChannelSourceManager *)self performDelegateCallback:v14];
    }
  }
}

void __79__CXChannelSourceManager_serviceServer_client_reportedChannelWithUUID_updated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 providerSource:*(a1 + 40) reportedChannelWithUUID:*(a1 + 48) updated:*(a1 + 56)];
}

- (void)serviceServer:(id)server client:(id)client reportedIncomingTransmissionEndedForChannelWithUUID:(id)d reason:(int64_t)reason completionHandler:(id)handler
{
  clientCopy = client;
  dCopy = d;
  handlerCopy = handler;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [clientCopy identifier];
    v15 = [(CXChannelSourceManager *)self channelSourceForIdentifier:identifier];

    if (v15)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __124__CXChannelSourceManager_serviceServer_client_reportedIncomingTransmissionEndedForChannelWithUUID_reason_completionHandler___block_invoke;
      v16[3] = &unk_1E7C07338;
      v16[4] = self;
      v17 = v15;
      v18 = dCopy;
      reasonCopy = reason;
      v19 = handlerCopy;
      [(CXChannelSourceManager *)self performDelegateCallback:v16];
    }
  }
}

void __124__CXChannelSourceManager_serviceServer_client_reportedIncomingTransmissionEndedForChannelWithUUID_reason_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 providerSource:*(a1 + 40) reportedIncomingTransmissionEndedForChannelWithUUID:*(a1 + 48) reason:*(a1 + 64) completionHandler:*(a1 + 56)];
}

- (void)serviceServer:(id)server client:(id)client reportedIncomingTransmissionStartedForChannelWithUUID:(id)d update:(id)update shouldReplaceOutgoingTransmission:(BOOL)transmission completionHandler:(id)handler
{
  clientCopy = client;
  dCopy = d;
  updateCopy = update;
  handlerCopy = handler;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [clientCopy identifier];
    v18 = [(CXChannelSourceManager *)self channelSourceForIdentifier:identifier];

    if (v18)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __160__CXChannelSourceManager_serviceServer_client_reportedIncomingTransmissionStartedForChannelWithUUID_update_shouldReplaceOutgoingTransmission_completionHandler___block_invoke;
      v19[3] = &unk_1E7C07360;
      v19[4] = self;
      v20 = v18;
      v21 = dCopy;
      v22 = updateCopy;
      transmissionCopy = transmission;
      v23 = handlerCopy;
      [(CXChannelSourceManager *)self performDelegateCallback:v19];
    }
  }
}

void __160__CXChannelSourceManager_serviceServer_client_reportedIncomingTransmissionStartedForChannelWithUUID_update_shouldReplaceOutgoingTransmission_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 providerSource:*(a1 + 40) reportedIncomingTransmissionStartedForChannelWithUUID:*(a1 + 48) update:*(a1 + 56) shouldReplaceOutgoingTransmission:*(a1 + 72) completionHandler:*(a1 + 64)];
}

- (void)serviceServer:(id)server client:(id)client requestedTransaction:(id)transaction completionHandler:(id)handler
{
  clientCopy = client;
  transactionCopy = transaction;
  handlerCopy = handler;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [clientCopy identifier];
    v13 = [(CXChannelSourceManager *)self channelSourceForIdentifier:identifier];

    if (v13)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __86__CXChannelSourceManager_serviceServer_client_requestedTransaction_completionHandler___block_invoke;
      v14[3] = &unk_1E7C06DE0;
      v14[4] = self;
      v15 = v13;
      v16 = transactionCopy;
      v17 = handlerCopy;
      [(CXChannelSourceManager *)self performDelegateCallback:v14];
    }
  }
}

void __86__CXChannelSourceManager_serviceServer_client_requestedTransaction_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 providerSource:*(a1 + 40) requestedTransaction:*(a1 + 48) completionHandler:*(a1 + 56)];
}

- (void)transactionManager:(id)manager actionTimedOut:(id)out forCallSource:(id)source
{
  v14 = *MEMORY[0x1E69E9840];
  outCopy = out;
  sourceCopy = source;
  v8 = CXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = outCopy;
    v12 = 2112;
    v13 = sourceCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Action %@ timed out for call source %@", &v10, 0x16u);
  }

  [sourceCopy handleActionTimeout:outCopy];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)transactionManager:(id)manager transactionGroupCompleted:(id)completed
{
  v13 = *MEMORY[0x1E69E9840];
  completedCopy = completed;
  v6 = CXDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = completedCopy;
    _os_log_impl(&dword_1B47F3000, v6, OS_LOG_TYPE_DEFAULT, "Notifying delegate of completed transaction group: %@", buf, 0xCu);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__CXChannelSourceManager_transactionManager_transactionGroupCompleted___block_invoke;
  v9[3] = &unk_1E7C06BE0;
  v9[4] = self;
  v10 = completedCopy;
  v7 = completedCopy;
  [(CXChannelSourceManager *)self performDelegateCallback:v9];

  v8 = *MEMORY[0x1E69E9840];
}

void __71__CXChannelSourceManager_transactionManager_transactionGroupCompleted___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 channelSourceManager:*(a1 + 32) completedTransactionGroup:*(a1 + 40)];
}

- (CXChannelSourceManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end