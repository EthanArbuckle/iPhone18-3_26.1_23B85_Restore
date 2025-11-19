@interface AuthenticationManager
+ (id)sharedInstance;
- (AuthenticationManager)init;
- (BOOL)canStartAuthenticationWithPolicy:(int64_t)a3 options:(id)a4;
- (id)findMechanismForEvent:(int64_t)a3 mustBeRunning:(BOOL)a4 plugin:(id)a5;
- (void)_clearAuthentication:(id)a3;
- (void)_handleCompletionOfAuthentication:(id)a3 result:(id)a4 error:(id)a5;
- (void)_runAuthentication:(id)a3;
- (void)_runIdleBlocksNow;
- (void)authenticateForPolicy:(int64_t)a3 constraintData:(id)a4 internalInfo:(id)a5 uiDelegate:(id)a6 originator:(id)a7 request:(id)a8 mechanism:(id)a9 reply:(id)a10;
- (void)cancelWithError:(id)a3 originatorId:(unint64_t)a4 reply:(id)a5;
- (void)runWhenIdle:(id)a3;
@end

@implementation AuthenticationManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[AuthenticationManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __39__AuthenticationManager_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (AuthenticationManager)init
{
  v6.receiver = self;
  v6.super_class = AuthenticationManager;
  v2 = [(AuthenticationManager *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    idleBlocks = v2->_idleBlocks;
    v2->_idleBlocks = v3;
  }

  return v2;
}

- (BOOL)canStartAuthenticationWithPolicy:(int64_t)a3 options:(id)a4
{
  if (!self->_runningAuthentication)
  {
    return 1;
  }

  v5 = AuthenticationPriorityForPolicy(a3, a4);
  v6 = [(AuthenticationInProgress *)self->_runningAuthentication policy];
  v7 = [(AuthenticationInProgress *)self->_runningAuthentication options];
  v8 = v5 >= AuthenticationPriorityForPolicy(v6, v7);

  return v8;
}

- (void)authenticateForPolicy:(int64_t)a3 constraintData:(id)a4 internalInfo:(id)a5 uiDelegate:(id)a6 originator:(id)a7 request:(id)a8 mechanism:(id)a9 reply:(id)a10
{
  v40 = a5;
  v15 = a10;
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = [[AuthenticationInProgress alloc] initWithMechanism:v16 policy:a3 uiDelegate:v19 originator:v18 request:v17 internalInfo:v40 reply:v15];

  if ([(AuthenticationInProgress *)self->_runningAuthentication shouldEnqueueAuthentication:v20])
  {
    [(AuthenticationInProgress *)self->_runningAuthentication enqueueAuthentication:v20];
    goto LABEL_15;
  }

  v21 = [v40 objectForKeyedSubscript:@"Options"];
  if ([(AuthenticationManager *)self canStartAuthenticationWithPolicy:a3 options:v21])
  {
    v22 = 0;
  }

  else
  {
    v22 = [(AuthenticationInProgress *)self->_runningAuthentication description];
    v23 = [v21 objectForKeyedSubscript:&unk_284B7A8B0];
    v24 = [v23 BOOLValue];

    if ((v24 & 1) == 0)
    {
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Higher priority authentication already running: %@", v22];
      v30 = [(AuthenticationManager *)self _cancelationErrorWithDescription:v25 cancelledByHigherPriority:1];
      goto LABEL_13;
    }
  }

  v25 = [v40 objectForKeyedSubscript:@"InteractiveError"];
  if (!v25)
  {
    v26 = [v21 objectForKeyedSubscript:&unk_284B7A8B0];
    v27 = [v26 BOOLValue];
    v25 = @"User interaction is required.";
    v28 = v27 ? @"User interaction is required." : 0;
    v29 = v28;

    if (!v27)
    {
      objc_storeStrong(&self->_pendingAuthentication, v20);
      if ([(AuthenticationInProgress *)self->_runningAuthentication isRunning])
      {
        v32 = [(AuthenticationInProgress *)self->_runningAuthentication policy];
        v33 = [(AuthenticationInProgress *)self->_runningAuthentication options];
        v34 = AuthenticationPriorityForPolicy(v32, v33);
        v35 = [(AuthenticationInProgress *)v20 policy];
        v36 = [(AuthenticationInProgress *)v20 options];
        v37 = v34 < AuthenticationPriorityForPolicy(v35, v36);

        v38 = [(AuthenticationInProgress *)self->_runningAuthentication mechanism];
        v39 = [(AuthenticationManager *)self _cancelationErrorWithDescription:@"Canceled by another authentication." cancelledByHigherPriority:v37];
        [v38 finishRunWithResult:0 error:v39];
      }

      [(AuthenticationManager *)self _runAuthentication:v20];
      goto LABEL_14;
    }
  }

  v30 = [MEMORY[0x277CD47F0] errorWithCode:-1004 message:v25];
LABEL_13:
  v31 = v30;
  v15[2](v15, 0, v30);

LABEL_14:
LABEL_15:
}

- (void)_runAuthentication:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = LA_LOG_AuthenticationManager();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    runningAuthentication = self->_runningAuthentication;
    *buf = 138543618;
    v24 = v5;
    v25 = 2114;
    v26 = runningAuthentication;
    _os_log_impl(&dword_238BBF000, v6, OS_LOG_TYPE_DEFAULT, "Started: %{public}@, replaced: %{public}@", buf, 0x16u);
  }

  if (self->_pendingAuthentication == v5)
  {
    objc_storeStrong(&self->_runningAuthentication, a3);
    pendingAuthentication = self->_pendingAuthentication;
    self->_pendingAuthentication = 0;

    objc_initWeak(buf, self);
    v18 = self->_runningAuthentication;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __44__AuthenticationManager__runAuthentication___block_invoke;
    v20[3] = &unk_278A64670;
    objc_copyWeak(&v22, buf);
    v21 = v5;
    [(AuthenticationInProgress *)v18 runWithCompletionHandler:v20];

    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }

  else
  {
    v8 = LA_LOG_AuthenticationManager();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_pendingAuthentication;
      *buf = 138543618;
      v24 = v5;
      v25 = 2114;
      v26 = v9;
      _os_log_impl(&dword_238BBF000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ was canceled while pending, replaced by %{public}@.", buf, 0x16u);
    }

    if (self->_pendingAuthentication)
    {
      v10 = [(AuthenticationInProgress *)v5 policy];
      v11 = [(AuthenticationInProgress *)v5 options];
      v12 = AuthenticationPriorityForPolicy(v10, v11);
      v13 = [(AuthenticationInProgress *)self->_pendingAuthentication policy];
      v14 = [(AuthenticationInProgress *)self->_pendingAuthentication options];
      v15 = v12 < AuthenticationPriorityForPolicy(v13, v14);

      [(AuthenticationManager *)self _cancelationErrorWithDescription:@"Canceled by another authentication." cancelledByHigherPriority:v15];
    }

    else
    {
      [(AuthenticationManager *)self _invalidationError];
    }
    v16 = ;
    [(AuthenticationInProgress *)v5 cancelWithError:v16];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __44__AuthenticationManager__runAuthentication___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleCompletionOfAuthentication:*(a1 + 32) result:v8 error:v5];
  }
}

- (void)_handleCompletionOfAuthentication:(id)a3 result:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = LA_LOG_AuthenticationManager();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [AuthenticationManager _handleCompletionOfAuthentication:v11 result:? error:?];
  }

  if (self->_completionHandler)
  {
    v12 = MEMORY[0x23EE740C0]();
    completionHandler = self->_completionHandler;
    self->_completionHandler = 0;

    v12[2](v12);
  }

  v14 = [(AuthenticationInProgress *)self->_runningAuthentication enqueuedAuthentication];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 shouldDequeueAndRunAfterAuthentication:self->_runningAuthentication result:v9 error:v10];
    if (!v16)
    {
      objc_storeStrong(&self->_pendingAuthentication, v15);
      [(AuthenticationManager *)self _runAuthentication:v15];
      goto LABEL_10;
    }

    v17 = v16;
    [v15 cancelWithError:v16];
  }

  objc_initWeak(&location, self);
  v18 = [MEMORY[0x277CD47C8] sharedInstance];
  v19 = [v18 serverQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__AuthenticationManager__handleCompletionOfAuthentication_result_error___block_invoke;
  block[3] = &unk_278A64698;
  objc_copyWeak(&v22, &location);
  v21 = v8;
  dispatch_async(v19, block);

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
LABEL_10:
}

void __72__AuthenticationManager__handleCompletionOfAuthentication_result_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _clearAuthentication:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (void)_clearAuthentication:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_runningAuthentication == a3)
  {
    v4 = LA_LOG_AuthenticationManager();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      runningAuthentication = self->_runningAuthentication;
      v8 = 138543362;
      v9 = runningAuthentication;
      _os_log_impl(&dword_238BBF000, v4, OS_LOG_TYPE_DEFAULT, "clearing authentication: %{public}@", &v8, 0xCu);
    }

    v6 = self->_runningAuthentication;
    self->_runningAuthentication = 0;

    [(AuthenticationManager *)self _runIdleBlocks];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)cancelWithError:(id)a3 originatorId:(unint64_t)a4 reply:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  runningAuthentication = self->_runningAuthentication;
  if (runningAuthentication && [(AuthenticationInProgress *)runningAuthentication originatorId]== a4)
  {
    v11 = self->_runningAuthentication;
    if (!v11)
    {
LABEL_15:
      if (v9)
      {
        v9[2](v9);
      }

      v11 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    pendingAuthentication = self->_pendingAuthentication;
    if (!pendingAuthentication)
    {
      goto LABEL_15;
    }

    if ([(AuthenticationInProgress *)pendingAuthentication originatorId]!= a4)
    {
      goto LABEL_15;
    }

    v11 = self->_pendingAuthentication;
    v13 = self->_pendingAuthentication;
    self->_pendingAuthentication = 0;

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  v14 = LA_LOG_AuthenticationManager();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    if (v11 == self->_runningAuthentication)
    {
      v15 = "running";
    }

    else
    {
      v15 = "pending";
    }

    v16 = [(AuthenticationInProgress *)v11 mechanism];
    v20 = 136446722;
    v21 = v15;
    v22 = 2114;
    v23 = v11;
    v24 = 2114;
    v25 = v16;
    _os_log_impl(&dword_238BBF000, v14, OS_LOG_TYPE_DEFAULT, "canceling %{public}s authentication: %{public}@ mechanism: %{public}@", &v20, 0x20u);
  }

  if ([(AuthenticationInProgress *)v11 isRunning])
  {
    v17 = MEMORY[0x23EE740C0](v9);
    completionHandler = self->_completionHandler;
    self->_completionHandler = v17;

    [(AuthenticationInProgress *)v11 cancelWithError:v8];
  }

  else
  {
    [(AuthenticationInProgress *)v11 cancelWithError:v8];
    if (v9)
    {
      v9[2](v9);
    }
  }

LABEL_18:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)runWhenIdle:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = LA_LOG_AuthenticationManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(NSMutableArray *)self->_idleBlocks count];
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = v6;
    _os_log_impl(&dword_238BBF000, v5, OS_LOG_TYPE_DEFAULT, "biometry is now idle, %u blocks in queue", &buf, 8u);
  }

  idleBlocks = self->_idleBlocks;
  v8 = MEMORY[0x23EE740C0](v4);
  [(NSMutableArray *)idleBlocks addObject:v8];

  if (!self->_runningAuthentication)
  {
    objc_initWeak(&buf, self);
    v9 = [MEMORY[0x277CD47C8] sharedInstance];
    v10 = [v9 serverQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__AuthenticationManager_runWhenIdle___block_invoke;
    block[3] = &unk_278A64600;
    objc_copyWeak(&v13, &buf);
    dispatch_async(v10, block);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&buf);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __37__AuthenticationManager_runWhenIdle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _runIdleBlocks];
    WeakRetained = v2;
  }
}

- (void)_runIdleBlocksNow
{
  v16 = *MEMORY[0x277D85DE8];
  *&v2 = 136315650;
  v9 = v2;
  do
  {
    if (![(NSMutableArray *)self->_idleBlocks count])
    {
      break;
    }

    v4 = LA_LOG_AuthenticationManager();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NSMutableArray count](self->_idleBlocks, "count")}];
      *buf = v9;
      v11 = "[AuthenticationManager _runIdleBlocksNow]";
      v12 = 2114;
      v13 = v5;
      v14 = 2112;
      v15 = self;
      _os_log_impl(&dword_238BBF000, v4, OS_LOG_TYPE_DEFAULT, "%s %{public}@ block(s) in queue on %@", buf, 0x20u);
    }

    v6 = [(NSMutableArray *)self->_idleBlocks objectAtIndexedSubscript:0];
    [(NSMutableArray *)self->_idleBlocks removeObjectAtIndex:0];
    v6[2](v6);
    runningAuthentication = self->_runningAuthentication;
  }

  while (!runningAuthentication);
  v8 = *MEMORY[0x277D85DE8];
}

- (id)findMechanismForEvent:(int64_t)a3 mustBeRunning:(BOOL)a4 plugin:(id)a5
{
  v5 = a4;
  v21 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = [(AuthenticationManager *)self runningAuthentication];
  v10 = [v9 mechanism];
  v11 = [v10 findMechanismWithEventIdentifier:a3];

  if (!v11)
  {
    v14 = LA_LOG_AuthenticationManager();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 67109120;
      LODWORD(v20) = a3;
      _os_log_impl(&dword_238BBF000, v14, OS_LOG_TYPE_DEFAULT, "No mechanism found for event %d", &v19, 8u);
    }

    goto LABEL_17;
  }

  if (v5 && ([v11 isRunning] & 1) == 0)
  {
    v13 = LA_LOG_AuthenticationManager();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543362;
      v20 = v11;
      _os_log_impl(&dword_238BBF000, v13, OS_LOG_TYPE_DEFAULT, "Found %{public}@ but it's not running", &v19, 0xCu);
    }

    goto LABEL_16;
  }

  if (v8)
  {
    v12 = [v11 cachedExternalizationDelegate];

    if (v12 != v8)
    {
      v13 = LA_LOG_AuthenticationManager();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [AuthenticationManager findMechanismForEvent:v11 mustBeRunning:v8 plugin:v13];
      }

LABEL_16:

LABEL_17:
      v16 = 0;
      goto LABEL_18;
    }
  }

  v15 = LA_LOG_AuthenticationManager();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [AuthenticationManager findMechanismForEvent:v11 mustBeRunning:v15 plugin:?];
  }

  v16 = v11;
LABEL_18:

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)_handleCompletionOfAuthentication:(uint64_t)a1 result:(NSObject *)a2 error:.cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v4 = 138543362;
  v5 = v2;
  _os_log_debug_impl(&dword_238BBF000, a2, OS_LOG_TYPE_DEBUG, "authentication completed: %{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)findMechanismForEvent:(uint64_t)a1 mustBeRunning:(uint64_t)a2 plugin:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_238BBF000, log, OS_LOG_TYPE_ERROR, "Found %{public}@ but it does not belong to %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)findMechanismForEvent:(uint64_t)a1 mustBeRunning:(NSObject *)a2 plugin:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_238BBF000, a2, OS_LOG_TYPE_DEBUG, "Found %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end