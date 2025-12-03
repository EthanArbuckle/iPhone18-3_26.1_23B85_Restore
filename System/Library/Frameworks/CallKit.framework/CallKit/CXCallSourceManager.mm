@interface CXCallSourceManager
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CXCallSourceManager)initWithDelegate:(id)delegate queue:(id)queue;
- (CXCallSourceManagerDelegate)delegate;
- (NSArray)callSources;
- (id)callSourceWithIdentifier:(id)identifier;
- (void)_performDelegateCallback:(id)callback;
- (void)addAction:(id)action toUncommittedTransactionForCallSource:(id)source;
- (void)addCallSource:(id)source;
- (void)callSource:(id)source actionCompleted:(id)completed;
- (void)callSource:(id)source registeredWithConfiguration:(id)configuration;
- (void)callSource:(id)source reportedAudioFinishedForCallWithUUID:(id)d;
- (void)callSource:(id)source reportedCallWithUUID:(id)d changedFrequencyData:(id)data forDirection:(int64_t)direction;
- (void)callSource:(id)source reportedCallWithUUID:(id)d changedMeterLevel:(float)level forDirection:(int64_t)direction;
- (void)callSource:(id)source reportedCallWithUUID:(id)d crossDeviceIdentifier:(id)identifier changedBytesOfDataUsed:(int64_t)used;
- (void)callSource:(id)source reportedCallWithUUID:(id)d endedAtDate:(id)date privateReason:(int64_t)reason failureContext:(id)context;
- (void)callSource:(id)source reportedCallWithUUID:(id)d receivedDTMFUpdate:(id)update;
- (void)callSource:(id)source reportedCallWithUUID:(id)d updated:(id)updated;
- (void)callSource:(id)source reportedNewIncomingCallWithUUID:(id)d update:(id)update completion:(id)completion;
- (void)callSource:(id)source reportedNewOutgoingCallWithUUID:(id)d update:(id)update;
- (void)callSource:(id)source reportedOutgoingCallWithUUID:(id)d connectedAtDate:(id)date;
- (void)callSource:(id)source reportedOutgoingCallWithUUID:(id)d sentInvitationAtDate:(id)date;
- (void)callSource:(id)source reportedOutgoingCallWithUUID:(id)d startedConnectingAtDate:(id)date;
- (void)callSource:(id)source requestedTransaction:(id)transaction completion:(id)completion;
- (void)callSourceConnectionEnded:(id)ended;
- (void)callSourceConnectionStarted:(id)started;
- (void)callSourceInvalidated:(id)invalidated;
- (void)commitUncommittedTransactions;
- (void)failOutstandingActionsForCallWithUUID:(id)d;
- (void)performDelegateCallback:(id)callback;
- (void)removeCallSource:(id)source;
- (void)transactionManager:(id)manager actionTimedOut:(id)out forCallSource:(id)source;
- (void)transactionManager:(id)manager transactionGroupCompleted:(id)completed;
@end

@implementation CXCallSourceManager

- (void)commitUncommittedTransactions
{
  queue = [(CXCallSourceManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__CXCallSourceManager_commitUncommittedTransactions__block_invoke;
  block[3] = &unk_1E7C06CA8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __52__CXCallSourceManager_commitUncommittedTransactions__block_invoke(uint64_t a1)
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
  v7 = [v6 callSources];

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
        v14 = [v13 transactionForCallSource:v12];

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

- (CXCallSourceManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CXCallSourceManager)initWithDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v26.receiver = self;
  v26.super_class = CXCallSourceManager;
  v8 = [(CXCallSourceManager *)&v26 init];
  if (v8)
  {
    uTF8String = [@"com.apple.callkit.callsourcehost" UTF8String];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(uTF8String, v10);
    queue = v8->_queue;
    v8->_queue = v11;

    objc_storeWeak(&v8->_delegate, delegateCopy);
    if (queueCopy)
    {
      v13 = queueCopy;
      delegateQueue = v8->_delegateQueue;
      v8->_delegateQueue = v13;
    }

    else
    {
      v15 = MEMORY[0x1E69E96A0];
      v16 = MEMORY[0x1E69E96A0];
      delegateQueue = v8->_delegateQueue;
      v8->_delegateQueue = v15;
    }

    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    identifierToCallSource = v8->_identifierToCallSource;
    v8->_identifierToCallSource = v17;

    v19 = [[CXTransactionManager alloc] initWithQueue:v8->_queue];
    transactionManager = v8->_transactionManager;
    v8->_transactionManager = v19;

    [(CXTransactionManager *)v8->_transactionManager setDelegate:v8];
    v21 = objc_alloc_init(CXTransactionGroup);
    uncommittedTransactionGroup = v8->_uncommittedTransactionGroup;
    v8->_uncommittedTransactionGroup = v21;

    v23 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.callkit.callsourcehost"];
    xpcListener = v8->_xpcListener;
    v8->_xpcListener = v23;

    [(NSXPCListener *)v8->_xpcListener setDelegate:v8];
    [(NSXPCListener *)v8->_xpcListener resume];
    notify_post("com.apple.callkit.callsourcehost.started");
  }

  return v8;
}

- (NSArray)callSources
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  queue = [(CXCallSourceManager *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__CXCallSourceManager_callSources__block_invoke;
  v6[3] = &unk_1E7C06E28;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __34__CXCallSourceManager_callSources__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) identifierToCallSource];
  v2 = [v5 allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)addCallSource:(id)source
{
  v13 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = sourceCopy;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Asked to add call source %@", buf, 0xCu);
  }

  [sourceCopy setDelegate:self];
  queue = [(CXCallSourceManager *)self queue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__CXCallSourceManager_addCallSource___block_invoke;
  v9[3] = &unk_1E7C06BE0;
  v9[4] = self;
  v10 = sourceCopy;
  v7 = sourceCopy;
  dispatch_async(queue, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __37__CXCallSourceManager_addCallSource___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) identifierToCallSource];
  v4 = [*(a1 + 40) identifier];
  [v3 setObject:v2 forKeyedSubscript:v4];

  v5 = [*(a1 + 32) delegate];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__CXCallSourceManager_addCallSource___block_invoke_2;
  v8[3] = &unk_1E7C06BE0;
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  [v6 _performDelegateCallback:v8];
}

- (id)callSourceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  queue = [(CXCallSourceManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CXCallSourceManager_callSourceWithIdentifier___block_invoke;
  block[3] = &unk_1E7C06F48;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(queue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __48__CXCallSourceManager_callSourceWithIdentifier___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) identifierToCallSource];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)removeCallSource:(id)source
{
  v14 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = sourceCopy;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Asked to remove call source %@", buf, 0xCu);
  }

  queue = [(CXCallSourceManager *)self queue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__CXCallSourceManager_removeCallSource___block_invoke;
  v9[3] = &unk_1E7C06BE0;
  v10 = sourceCopy;
  selfCopy = self;
  v7 = sourceCopy;
  dispatch_async(queue, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __40__CXCallSourceManager_removeCallSource___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v3 = [*(a1 + 40) identifierToCallSource];
  v4 = [v3 objectForKeyedSubscript:v2];
  v5 = [v4 isEqual:*(a1 + 32)];

  if (v5)
  {
    v6 = [*(a1 + 40) identifierToCallSource];
    [v6 setObject:0 forKeyedSubscript:v2];

    v7 = [*(a1 + 40) delegate];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __40__CXCallSourceManager_removeCallSource___block_invoke_2;
    v10[3] = &unk_1E7C06BE0;
    v8 = *(a1 + 40);
    v11 = v7;
    v12 = v8;
    v9 = v7;
    [v8 _performDelegateCallback:v10];
  }
}

- (void)addAction:(id)action toUncommittedTransactionForCallSource:(id)source
{
  actionCopy = action;
  sourceCopy = source;
  queue = [(CXCallSourceManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__CXCallSourceManager_addAction_toUncommittedTransactionForCallSource___block_invoke;
  block[3] = &unk_1E7C06C80;
  v12 = actionCopy;
  v13 = sourceCopy;
  selfCopy = self;
  v9 = sourceCopy;
  v10 = actionCopy;
  dispatch_async(queue, block);
}

void __71__CXCallSourceManager_addAction_toUncommittedTransactionForCallSource___block_invoke(id *a1)
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
  v13 = __71__CXCallSourceManager_addAction_toUncommittedTransactionForCallSource___block_invoke_4;
  v14 = &unk_1E7C06BE0;
  v15 = v4;
  v16 = v5;
  v7 = v5;
  v8 = v4;
  dispatch_async(v6, &v11);

  v9 = [a1[6] uncommittedTransactionGroup];
  [v9 addAction:a1[4] forCallSource:a1[5]];

  v10 = *MEMORY[0x1E69E9840];
}

void __71__CXCallSourceManager_addAction_toUncommittedTransactionForCallSource___block_invoke_4(uint64_t a1)
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
    _os_log_impl(&dword_1B47F3000, v2, OS_LOG_TYPE_DEFAULT, "Asked to add action %@ to uncommitted transaction for call source %@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)failOutstandingActionsForCallWithUUID:(id)d
{
  dCopy = d;
  queue = [(CXCallSourceManager *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__CXCallSourceManager_failOutstandingActionsForCallWithUUID___block_invoke;
  v7[3] = &unk_1E7C06BE0;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(queue, v7);
}

void __61__CXCallSourceManager_failOutstandingActionsForCallWithUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) transactionManager];
  [v2 failOutstandingActionsForCallWithUUID:*(a1 + 40)];
}

- (void)performDelegateCallback:(id)callback
{
  callbackCopy = callback;
  queue = [(CXCallSourceManager *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__CXCallSourceManager_performDelegateCallback___block_invoke;
  v7[3] = &unk_1E7C06CF8;
  v7[4] = self;
  v8 = callbackCopy;
  v6 = callbackCopy;
  dispatch_async(queue, v7);
}

- (void)_performDelegateCallback:(id)callback
{
  block = callback;
  delegate = [(CXCallSourceManager *)self delegate];

  if (delegate)
  {
    delegateQueue = [(CXCallSourceManager *)self delegateQueue];
    dispatch_async(delegateQueue, block);
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v17 = *MEMORY[0x1E69E9840];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = CXDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = listenerCopy;
    v15 = 2112;
    v16 = connectionCopy;
    _os_log_impl(&dword_1B47F3000, v8, OS_LOG_TYPE_DEFAULT, "listener: %@ newConnection: %@", &v13, 0x16u);
  }

  v9 = [[CXXPCCallSource alloc] initWithConnection:connectionCopy];
  if (v9)
  {
    [(CXCallSourceManager *)self addCallSource:v9];
  }

  else
  {
    v10 = CXDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = connectionCopy;
      _os_log_impl(&dword_1B47F3000, v10, OS_LOG_TYPE_DEFAULT, "[WARN] Not accepting connection %@ because a CXXPCCallSource couldn't be created", &v13, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9 != 0;
}

- (void)callSourceConnectionStarted:(id)started
{
  v8 = *MEMORY[0x1E69E9840];
  startedCopy = started;
  v4 = CXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = startedCopy;
    _os_log_impl(&dword_1B47F3000, v4, OS_LOG_TYPE_DEFAULT, "Call source connection started: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)callSourceConnectionEnded:(id)ended
{
  v8 = *MEMORY[0x1E69E9840];
  endedCopy = ended;
  v4 = CXDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = endedCopy;
    _os_log_impl(&dword_1B47F3000, v4, OS_LOG_TYPE_DEFAULT, "Call source connection ended: %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)callSourceInvalidated:(id)invalidated
{
  v9 = *MEMORY[0x1E69E9840];
  invalidatedCopy = invalidated;
  v5 = CXDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = invalidatedCopy;
    _os_log_impl(&dword_1B47F3000, v5, OS_LOG_TYPE_DEFAULT, "Call source invalidated: %@", &v7, 0xCu);
  }

  [(CXCallSourceManager *)self removeCallSource:invalidatedCopy];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)callSource:(id)source registeredWithConfiguration:(id)configuration
{
  sourceCopy = source;
  configurationCopy = configuration;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__CXCallSourceManager_callSource_registeredWithConfiguration___block_invoke;
  v10[3] = &unk_1E7C06C80;
  v10[4] = self;
  v11 = sourceCopy;
  v12 = configurationCopy;
  v8 = configurationCopy;
  v9 = sourceCopy;
  [(CXCallSourceManager *)self performDelegateCallback:v10];
}

void __62__CXCallSourceManager_callSource_registeredWithConfiguration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callSource:*(a1 + 40) registeredWithConfiguration:*(a1 + 48)];
}

- (void)callSource:(id)source reportedNewIncomingCallWithUUID:(id)d update:(id)update completion:(id)completion
{
  sourceCopy = source;
  dCopy = d;
  updateCopy = update;
  completionCopy = completion;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __84__CXCallSourceManager_callSource_reportedNewIncomingCallWithUUID_update_completion___block_invoke;
  v18[3] = &unk_1E7C06F70;
  v18[4] = self;
  v19 = sourceCopy;
  v20 = dCopy;
  v21 = updateCopy;
  v22 = completionCopy;
  v14 = completionCopy;
  v15 = updateCopy;
  v16 = dCopy;
  v17 = sourceCopy;
  [(CXCallSourceManager *)self performDelegateCallback:v18];
}

void __84__CXCallSourceManager_callSource_reportedNewIncomingCallWithUUID_update_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callSource:*(a1 + 40) reportedNewIncomingCallWithUUID:*(a1 + 48) update:*(a1 + 56) completion:*(a1 + 64)];
}

- (void)callSource:(id)source reportedCallWithUUID:(id)d updated:(id)updated
{
  sourceCopy = source;
  dCopy = d;
  updatedCopy = updated;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__CXCallSourceManager_callSource_reportedCallWithUUID_updated___block_invoke;
  v14[3] = &unk_1E7C06F98;
  v14[4] = self;
  v15 = sourceCopy;
  v16 = dCopy;
  v17 = updatedCopy;
  v11 = updatedCopy;
  v12 = dCopy;
  v13 = sourceCopy;
  [(CXCallSourceManager *)self performDelegateCallback:v14];
}

void __63__CXCallSourceManager_callSource_reportedCallWithUUID_updated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callSource:*(a1 + 40) reportedCallWithUUID:*(a1 + 48) updated:*(a1 + 56)];
}

- (void)callSource:(id)source reportedCallWithUUID:(id)d receivedDTMFUpdate:(id)update
{
  sourceCopy = source;
  dCopy = d;
  updateCopy = update;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__CXCallSourceManager_callSource_reportedCallWithUUID_receivedDTMFUpdate___block_invoke;
  v14[3] = &unk_1E7C06F98;
  v14[4] = self;
  v15 = sourceCopy;
  v16 = dCopy;
  v17 = updateCopy;
  v11 = updateCopy;
  v12 = dCopy;
  v13 = sourceCopy;
  [(CXCallSourceManager *)self performDelegateCallback:v14];
}

void __74__CXCallSourceManager_callSource_reportedCallWithUUID_receivedDTMFUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callSource:*(a1 + 40) reportedCallWithUUID:*(a1 + 48) receivedDTMFUpdate:*(a1 + 56)];
}

- (void)callSource:(id)source reportedCallWithUUID:(id)d endedAtDate:(id)date privateReason:(int64_t)reason failureContext:(id)context
{
  sourceCopy = source;
  dCopy = d;
  dateCopy = date;
  contextCopy = context;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __96__CXCallSourceManager_callSource_reportedCallWithUUID_endedAtDate_privateReason_failureContext___block_invoke;
  v20[3] = &unk_1E7C06FC0;
  v20[4] = self;
  v21 = sourceCopy;
  v22 = dCopy;
  v23 = dateCopy;
  v24 = contextCopy;
  reasonCopy = reason;
  v16 = contextCopy;
  v17 = dateCopy;
  v18 = dCopy;
  v19 = sourceCopy;
  [(CXCallSourceManager *)self performDelegateCallback:v20];
}

void __96__CXCallSourceManager_callSource_reportedCallWithUUID_endedAtDate_privateReason_failureContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callSource:*(a1 + 40) reportedCallWithUUID:*(a1 + 48) endedAtDate:*(a1 + 56) privateReason:*(a1 + 72) failureContext:*(a1 + 64)];
}

- (void)callSource:(id)source reportedOutgoingCallWithUUID:(id)d sentInvitationAtDate:(id)date
{
  sourceCopy = source;
  dCopy = d;
  dateCopy = date;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __84__CXCallSourceManager_callSource_reportedOutgoingCallWithUUID_sentInvitationAtDate___block_invoke;
  v14[3] = &unk_1E7C06F98;
  v14[4] = self;
  v15 = sourceCopy;
  v16 = dCopy;
  v17 = dateCopy;
  v11 = dateCopy;
  v12 = dCopy;
  v13 = sourceCopy;
  [(CXCallSourceManager *)self performDelegateCallback:v14];
}

void __84__CXCallSourceManager_callSource_reportedOutgoingCallWithUUID_sentInvitationAtDate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callSource:*(a1 + 40) reportedOutgoingCallWithUUID:*(a1 + 48) sentInvitationAtDate:*(a1 + 56)];
}

- (void)callSource:(id)source reportedOutgoingCallWithUUID:(id)d startedConnectingAtDate:(id)date
{
  sourceCopy = source;
  dCopy = d;
  dateCopy = date;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __87__CXCallSourceManager_callSource_reportedOutgoingCallWithUUID_startedConnectingAtDate___block_invoke;
  v14[3] = &unk_1E7C06F98;
  v14[4] = self;
  v15 = sourceCopy;
  v16 = dCopy;
  v17 = dateCopy;
  v11 = dateCopy;
  v12 = dCopy;
  v13 = sourceCopy;
  [(CXCallSourceManager *)self performDelegateCallback:v14];
}

void __87__CXCallSourceManager_callSource_reportedOutgoingCallWithUUID_startedConnectingAtDate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callSource:*(a1 + 40) reportedOutgoingCallWithUUID:*(a1 + 48) startedConnectingAtDate:*(a1 + 56)];
}

- (void)callSource:(id)source reportedOutgoingCallWithUUID:(id)d connectedAtDate:(id)date
{
  sourceCopy = source;
  dCopy = d;
  dateCopy = date;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__CXCallSourceManager_callSource_reportedOutgoingCallWithUUID_connectedAtDate___block_invoke;
  v14[3] = &unk_1E7C06F98;
  v14[4] = self;
  v15 = sourceCopy;
  v16 = dCopy;
  v17 = dateCopy;
  v11 = dateCopy;
  v12 = dCopy;
  v13 = sourceCopy;
  [(CXCallSourceManager *)self performDelegateCallback:v14];
}

void __79__CXCallSourceManager_callSource_reportedOutgoingCallWithUUID_connectedAtDate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callSource:*(a1 + 40) reportedOutgoingCallWithUUID:*(a1 + 48) connectedAtDate:*(a1 + 56)];
}

- (void)callSource:(id)source reportedNewOutgoingCallWithUUID:(id)d update:(id)update
{
  sourceCopy = source;
  dCopy = d;
  updateCopy = update;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __73__CXCallSourceManager_callSource_reportedNewOutgoingCallWithUUID_update___block_invoke;
  v14[3] = &unk_1E7C06F98;
  v14[4] = self;
  v15 = sourceCopy;
  v16 = dCopy;
  v17 = updateCopy;
  v11 = updateCopy;
  v12 = dCopy;
  v13 = sourceCopy;
  [(CXCallSourceManager *)self performDelegateCallback:v14];
}

void __73__CXCallSourceManager_callSource_reportedNewOutgoingCallWithUUID_update___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callSource:*(a1 + 40) reportedNewOutgoingCallWithUUID:*(a1 + 48) update:*(a1 + 56)];
}

- (void)callSource:(id)source reportedAudioFinishedForCallWithUUID:(id)d
{
  sourceCopy = source;
  dCopy = d;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__CXCallSourceManager_callSource_reportedAudioFinishedForCallWithUUID___block_invoke;
  v10[3] = &unk_1E7C06C80;
  v10[4] = self;
  v11 = sourceCopy;
  v12 = dCopy;
  v8 = dCopy;
  v9 = sourceCopy;
  [(CXCallSourceManager *)self performDelegateCallback:v10];
}

void __71__CXCallSourceManager_callSource_reportedAudioFinishedForCallWithUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callSource:*(a1 + 40) reportedAudioFinishedForCallWithUUID:*(a1 + 48)];
}

- (void)callSource:(id)source reportedCallWithUUID:(id)d changedFrequencyData:(id)data forDirection:(int64_t)direction
{
  sourceCopy = source;
  dCopy = d;
  dataCopy = data;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __89__CXCallSourceManager_callSource_reportedCallWithUUID_changedFrequencyData_forDirection___block_invoke;
  v16[3] = &unk_1E7C06FE8;
  v16[4] = self;
  v17 = sourceCopy;
  v18 = dCopy;
  v19 = dataCopy;
  directionCopy = direction;
  v13 = dataCopy;
  v14 = dCopy;
  v15 = sourceCopy;
  [(CXCallSourceManager *)self performDelegateCallback:v16];
}

void __89__CXCallSourceManager_callSource_reportedCallWithUUID_changedFrequencyData_forDirection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callSource:*(a1 + 40) reportedCallWithUUID:*(a1 + 48) changedFrequencyData:*(a1 + 56) forDirection:*(a1 + 64)];
}

- (void)callSource:(id)source reportedCallWithUUID:(id)d changedMeterLevel:(float)level forDirection:(int64_t)direction
{
  sourceCopy = source;
  dCopy = d;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __86__CXCallSourceManager_callSource_reportedCallWithUUID_changedMeterLevel_forDirection___block_invoke;
  v14[3] = &unk_1E7C07010;
  v14[4] = self;
  v15 = sourceCopy;
  levelCopy = level;
  v16 = dCopy;
  directionCopy = direction;
  v12 = dCopy;
  v13 = sourceCopy;
  [(CXCallSourceManager *)self performDelegateCallback:v14];
}

void __86__CXCallSourceManager_callSource_reportedCallWithUUID_changedMeterLevel_forDirection___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  LODWORD(v2) = *(a1 + 64);
  [v3 callSource:*(a1 + 40) reportedCallWithUUID:*(a1 + 48) changedMeterLevel:*(a1 + 56) forDirection:v2];
}

- (void)callSource:(id)source reportedCallWithUUID:(id)d crossDeviceIdentifier:(id)identifier changedBytesOfDataUsed:(int64_t)used
{
  sourceCopy = source;
  dCopy = d;
  identifierCopy = identifier;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __100__CXCallSourceManager_callSource_reportedCallWithUUID_crossDeviceIdentifier_changedBytesOfDataUsed___block_invoke;
  v16[3] = &unk_1E7C06FE8;
  v16[4] = self;
  v17 = sourceCopy;
  v18 = dCopy;
  v19 = identifierCopy;
  usedCopy = used;
  v13 = identifierCopy;
  v14 = dCopy;
  v15 = sourceCopy;
  [(CXCallSourceManager *)self performDelegateCallback:v16];
}

void __100__CXCallSourceManager_callSource_reportedCallWithUUID_crossDeviceIdentifier_changedBytesOfDataUsed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callSource:*(a1 + 40) reportedCallWithUUID:*(a1 + 48) crossDeviceIdentifier:*(a1 + 56) changedBytesOfDataUsed:*(a1 + 64)];
}

- (void)callSource:(id)source requestedTransaction:(id)transaction completion:(id)completion
{
  sourceCopy = source;
  transactionCopy = transaction;
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__CXCallSourceManager_callSource_requestedTransaction_completion___block_invoke;
  v14[3] = &unk_1E7C06DE0;
  v14[4] = self;
  v15 = sourceCopy;
  v16 = transactionCopy;
  v17 = completionCopy;
  v11 = completionCopy;
  v12 = transactionCopy;
  v13 = sourceCopy;
  [(CXCallSourceManager *)self performDelegateCallback:v14];
}

void __66__CXCallSourceManager_callSource_requestedTransaction_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callSource:*(a1 + 40) requestedTransaction:*(a1 + 48) completion:*(a1 + 56)];
}

- (void)callSource:(id)source actionCompleted:(id)completed
{
  sourceCopy = source;
  completedCopy = completed;
  queue = [(CXCallSourceManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__CXCallSourceManager_callSource_actionCompleted___block_invoke;
  block[3] = &unk_1E7C06C80;
  block[4] = self;
  v12 = sourceCopy;
  v13 = completedCopy;
  v9 = completedCopy;
  v10 = sourceCopy;
  dispatch_async(queue, block);
}

void __50__CXCallSourceManager_callSource_actionCompleted___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v14 = 0;
  v5 = [v2 callSource:v3 shouldProcessAction:v4 error:&v14];
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
      _os_log_impl(&dword_1B47F3000, v7, OS_LOG_TYPE_DEFAULT, "Determined that callSource: %@, should process action: %@, error: %@", buf, 0x20u);
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
      _os_log_error_impl(&dword_1B47F3000, v10, OS_LOG_TYPE_ERROR, "Determined that callSource: %@, should not process action: %@, error: %@", buf, 0x20u);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
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
  v9[2] = __68__CXCallSourceManager_transactionManager_transactionGroupCompleted___block_invoke;
  v9[3] = &unk_1E7C06BE0;
  v9[4] = self;
  v10 = completedCopy;
  v7 = completedCopy;
  [(CXCallSourceManager *)self performDelegateCallback:v9];

  v8 = *MEMORY[0x1E69E9840];
}

void __68__CXCallSourceManager_transactionManager_transactionGroupCompleted___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 callSourceManager:*(a1 + 32) completedTransactionGroup:*(a1 + 40)];
}

@end