@interface ASTSession
+ (id)sessionWithContext:(id)context;
+ (id)sessionWithIdentity:(id)identity;
+ (id)sessionWithSerialNumber:(id)number;
+ (void)requestAsset:(id)asset completionHandler:(id)handler;
+ (void)requestAsset:(id)asset serverURL:(id)l endpoint:(id)endpoint completionHandler:(id)handler;
+ (void)sessionExistsForIdentities:(id)identities ticketNumber:(id)number completionHandler:(id)handler;
+ (void)sessionExistsForIdentities:(id)identities ticketNumber:(id)number timeout:(double)timeout completion:(id)completion;
+ (void)sessionExistsForIdentities:(id)identities ticketNumber:(id)number timeout:(double)timeout completionHandler:(id)handler;
+ (void)sessionExistsForSerialNumbers:(id)numbers ticketNumber:(id)number timeout:(double)timeout completionHandler:(id)handler;
- (ASTSession)initWithContext:(id)context;
- (ASTSession)initWithIdentity:(id)identity;
- (ASTSession)initWithSerialNumber:(id)number;
- (ASTSessionDelegate)delegate;
- (BOOL)sendAuthInfoResult:(id)result error:(id *)error;
- (BOOL)sendProfileResult:(id)result error:(id *)error;
- (BOOL)sendTestResult:(id)result error:(id *)error;
- (BOOL)shouldEvictCachedAssetForName:(id)name;
- (BOOL)shouldShowResults;
- (id)destinationAssetDirectory;
- (id)destinationURLForAsset:(id)asset;
- (id)readContentsOfFileHandle:(id)handle error:(id *)error;
- (void)archive;
- (void)dealloc;
- (void)end;
- (void)fetchAsset:(id)asset sessionClass:(Class)class serverURL:(id)l endpoint:(id)endpoint completionHandler:(id)handler;
- (void)idle;
- (void)idleWithCompletion:(id)completion;
- (void)invalidate;
- (void)removeDownloadedAssets;
- (void)requestAsset:(id)asset completionHandler:(id)handler;
- (void)requestAsset:(id)asset serverURL:(id)l endpoint:(id)endpoint completionHandler:(id)handler;
- (void)requestSuiteStart:(id)start completionHandler:(id)handler;
- (void)requestSuiteSummary:(id)summary completionHandler:(id)handler;
- (void)requestSuitesAvailableWithCompletionHandler:(id)handler;
- (void)session:(id)session cancelTest:(id)test;
- (void)session:(id)session didEndWithError:(id)error;
- (void)session:(id)session didPauseWithError:(id)error;
- (void)session:(id)session generateAuthInfoWithNonce:(id)nonce;
- (void)session:(id)session profile:(id)profile filteredByComponents:(id)components;
- (void)session:(id)session signFile:(id)file completionHandler:(id)handler;
- (void)session:(id)session signPayload:(id)payload completionHandler:(id)handler;
- (void)session:(id)session startTest:(id)test parameters:(id)parameters testResult:(id)result;
- (void)sessionDidResume:(id)resume;
- (void)sessionDidStart:(id)start;
- (void)setActiveSession:(id)session;
- (void)startWithMode:(int)mode;
- (void)updateAction:(id)action;
@end

@implementation ASTSession

+ (id)sessionWithSerialNumber:(id)number
{
  numberCopy = number;
  v5 = [[self alloc] initWithSerialNumber:numberCopy];

  return v5;
}

+ (id)sessionWithIdentity:(id)identity
{
  identityCopy = identity;
  v5 = [[self alloc] initWithIdentity:identityCopy];

  return v5;
}

+ (id)sessionWithContext:(id)context
{
  contextCopy = context;
  v5 = [[self alloc] initWithContext:contextCopy];

  return v5;
}

- (ASTSession)initWithSerialNumber:(id)number
{
  numberCopy = number;
  v15.receiver = self;
  v15.super_class = ASTSession;
  v5 = [(ASTSession *)&v15 init];
  if (v5)
  {
    v6 = [[ASTRemoteServerSession alloc] initWithSerialNumber:numberCopy];
    serverSession = v5->_serverSession;
    v5->_serverSession = v6;

    v8 = objc_alloc_init(ASTRepairSession);
    repairSession = v5->_repairSession;
    v5->_repairSession = v8;

    v10 = [MEMORY[0x277CBEB58] set];
    startedSessions = v5->_startedSessions;
    v5->_startedSessions = v10;

    array = [MEMORY[0x277CBEB18] array];
    destinations = v5->_destinations;
    v5->_destinations = array;
  }

  return v5;
}

- (ASTSession)initWithIdentity:(id)identity
{
  identityCopy = identity;
  v15.receiver = self;
  v15.super_class = ASTSession;
  v5 = [(ASTSession *)&v15 init];
  if (v5)
  {
    v6 = [[ASTRemoteServerSession alloc] initWithIdentity:identityCopy];
    serverSession = v5->_serverSession;
    v5->_serverSession = v6;

    v8 = objc_alloc_init(ASTRepairSession);
    repairSession = v5->_repairSession;
    v5->_repairSession = v8;

    v10 = [MEMORY[0x277CBEB58] set];
    startedSessions = v5->_startedSessions;
    v5->_startedSessions = v10;

    array = [MEMORY[0x277CBEB18] array];
    destinations = v5->_destinations;
    v5->_destinations = array;
  }

  return v5;
}

- (ASTSession)initWithContext:(id)context
{
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = ASTSession;
  v5 = [(ASTSession *)&v15 init];
  if (v5)
  {
    v6 = [[ASTRemoteServerSession alloc] initWithContext:contextCopy];
    serverSession = v5->_serverSession;
    v5->_serverSession = v6;

    v8 = objc_alloc_init(ASTRepairSession);
    repairSession = v5->_repairSession;
    v5->_repairSession = v8;

    v10 = [MEMORY[0x277CBEB58] set];
    startedSessions = v5->_startedSessions;
    v5->_startedSessions = v10;

    array = [MEMORY[0x277CBEB18] array];
    destinations = v5->_destinations;
    v5->_destinations = array;
  }

  return v5;
}

- (void)setActiveSession:(id)session
{
  sessionCopy = session;
  [(ASTSession *)self->_activeSession setDelegate:0];
  activeSession = self->_activeSession;
  self->_activeSession = sessionCopy;
  v6 = sessionCopy;

  delegate = [(ASTSession *)self delegate];
  [(ASTSession *)self->_activeSession setDelegate:delegate];
}

- (BOOL)shouldShowResults
{
  activeSession = [(ASTSession *)self activeSession];
  shouldShowResults = [activeSession shouldShowResults];

  return shouldShowResults;
}

+ (void)sessionExistsForSerialNumbers:(id)numbers ticketNumber:(id)number timeout:(double)timeout completionHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  numbersCopy = numbers;
  numberCopy = number;
  handlerCopy = handler;
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(numbersCopy, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = numbersCopy;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [ASTIdentity identityWithSerialNumber:*(*(&v20 + 1) + 8 * v17), v20];
        [v12 addObject:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v15);
  }

  [objc_opt_class() sessionExistsForIdentities:v12 ticketNumber:numberCopy timeout:handlerCopy completionHandler:timeout];
  v19 = *MEMORY[0x277D85DE8];
}

+ (void)sessionExistsForIdentities:(id)identities ticketNumber:(id)number completionHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__ASTSession_sessionExistsForIdentities_ticketNumber_completionHandler___block_invoke;
  v10[3] = &unk_278CBCF68;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [self sessionStatusForIdentities:identities ticketNumber:number timeout:v10 completionHandler:15.0];
}

+ (void)sessionExistsForIdentities:(id)identities ticketNumber:(id)number timeout:(double)timeout completionHandler:(id)handler
{
  handlerCopy = handler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80__ASTSession_sessionExistsForIdentities_ticketNumber_timeout_completionHandler___block_invoke;
  v12[3] = &unk_278CBCF68;
  v13 = handlerCopy;
  v11 = handlerCopy;
  [self sessionStatusForIdentities:identities ticketNumber:number timeout:v12 completionHandler:timeout];
}

+ (void)sessionExistsForIdentities:(id)identities ticketNumber:(id)number timeout:(double)timeout completion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__ASTSession_sessionExistsForIdentities_ticketNumber_timeout_completion___block_invoke;
  v12[3] = &unk_278CBCF68;
  v13 = completionCopy;
  v11 = completionCopy;
  [self sessionStatusForIdentities:identities ticketNumber:number timeout:0 requestQueuedSuiteInfo:v12 completionHandler:timeout];
}

void __73__ASTSession_sessionExistsForIdentities_ticketNumber_timeout_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  isASTGuidedSession = [a3 isGuidedSessionType];
  (*(*(a1 + 32) + 16))();
}

void __103__ASTSession_sessionStatusForIdentities_ticketNumber_timeout_requestQueuedSuiteInfo_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  isASTGuidedSession = [v7 isGuidedSessionType];
  (*(*(a1 + 32) + 16))();
}

- (void)startWithMode:(int)mode
{
  v78 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    modeCopy = mode;
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "Starting ASTSession in mode %d", buf, 8u);
  }

  destinations = [(ASTSession *)self destinations];
  v7 = [ASTSelfServiceDestination alloc];
  v8 = [(ASTSelfServiceDestination *)v7 initWithEndpoint:1 suites:MEMORY[0x277CBEBF8]];
  v75[0] = v8;
  v9 = [ASTSelfServiceDestination alloc];
  v10 = [(ASTSelfServiceDestination *)v9 initWithEndpoint:2 suites:MEMORY[0x277CBEBF8]];
  v75[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:2];
  v12 = [destinations isEqualToArray:v11];

  if (v12)
  {
    v13 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_240F3C000, v13, OS_LOG_TYPE_DEFAULT, "ASTSession has already been started and all destinations were loaded", buf, 2u);
    }
  }

  else if (mode == 2 || (isASTGuidedSession & 1) == 0)
  {
    v21 = dispatch_group_create();
    [(ASTSession *)self setSessionStartDispatchGroup:v21];

    if (mode == 2)
    {
      goto LABEL_21;
    }

    startedSessions = [(ASTSession *)self startedSessions];
    serverSession = [(ASTSession *)self serverSession];
    v24 = [startedSessions containsObject:serverSession];

    if (v24)
    {
      v25 = ASTLogHandleForCategory(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_240F3C000, v25, OS_LOG_TYPE_DEFAULT, "Skipping starting a server session as it has already been started", buf, 2u);
      }
    }

    else
    {
      sessionStartDispatchGroup = [(ASTSession *)self sessionStartDispatchGroup];
      dispatch_group_enter(sessionStartDispatchGroup);

      v27 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __28__ASTSession_startWithMode___block_invoke_23;
      block[3] = &unk_278CBCFB0;
      block[4] = self;
      dispatch_async(v27, block);
    }

    if (mode != 1)
    {
LABEL_21:
      startedSessions2 = [(ASTSession *)self startedSessions];
      repairSession = [(ASTSession *)self repairSession];
      v30 = [startedSessions2 containsObject:repairSession];

      if (v30)
      {
        v31 = ASTLogHandleForCategory(0);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_240F3C000, v31, OS_LOG_TYPE_DEFAULT, "Skipping starting a repair session as it has already been started", buf, 2u);
        }
      }

      else
      {
        sessionStartDispatchGroup2 = [(ASTSession *)self sessionStartDispatchGroup];
        dispatch_group_enter(sessionStartDispatchGroup2);

        v33 = dispatch_get_global_queue(0, 0);
        v72[0] = MEMORY[0x277D85DD0];
        v72[1] = 3221225472;
        v72[2] = __28__ASTSession_startWithMode___block_invoke_25;
        v72[3] = &unk_278CBCFB0;
        v72[4] = self;
        dispatch_async(v33, v72);
      }
    }

    sessionStartDispatchGroup3 = [(ASTSession *)self sessionStartDispatchGroup];
    v35 = dispatch_time(0, 300000000000);
    dispatch_group_wait(sessionStartDispatchGroup3, v35);

    [(ASTSession *)self setSessionStartDispatchGroup:0];
    v36 = dispatch_group_create();
    repairSession2 = [(ASTSession *)self repairSession];
    if (repairSession2)
    {
      startedSessions3 = [(ASTSession *)self startedSessions];
      repairSession3 = [(ASTSession *)self repairSession];
      v40 = [startedSessions3 containsObject:repairSession3];

      if (v40)
      {
        destinations2 = [(ASTSession *)self destinations];
        v42 = [ASTSelfServiceDestination alloc];
        v43 = [(ASTSelfServiceDestination *)v42 initWithEndpoint:2 suites:MEMORY[0x277CBEBF8]];
        v44 = [destinations2 containsObject:v43];

        if (v44)
        {
          v45 = ASTLogHandleForCategory(0);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_240F3C000, v45, OS_LOG_TYPE_DEFAULT, "Skipping getting suites for repair destination as they have already been obtained", buf, 2u);
          }
        }

        else
        {
          dispatch_group_enter(v36);
          repairSession4 = [(ASTSession *)self repairSession];
          v69[0] = MEMORY[0x277D85DD0];
          v69[1] = 3221225472;
          v69[2] = __28__ASTSession_startWithMode___block_invoke_26;
          v69[3] = &unk_278CBCFD8;
          objc_copyWeak(&v71, &location);
          v69[4] = self;
          v70 = v36;
          [repairSession4 requestSuitesAvailableWithCompletionHandler:v69];

          objc_destroyWeak(&v71);
        }
      }
    }

    serverSession2 = [(ASTSession *)self serverSession];
    if (serverSession2)
    {
      startedSessions4 = [(ASTSession *)self startedSessions];
      serverSession3 = [(ASTSession *)self serverSession];
      v50 = [startedSessions4 containsObject:serverSession3];

      if (v50)
      {
        destinations3 = [(ASTSession *)self destinations];
        v52 = [ASTSelfServiceDestination alloc];
        v53 = [(ASTSelfServiceDestination *)v52 initWithEndpoint:1 suites:MEMORY[0x277CBEBF8]];
        v54 = [destinations3 containsObject:v53];

        if (v54)
        {
          v55 = ASTLogHandleForCategory(0);
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_240F3C000, v55, OS_LOG_TYPE_DEFAULT, "Skipping getting suites for AST2 destination as they have already been obtained", buf, 2u);
          }
        }

        else
        {
          dispatch_group_enter(v36);
          serverSession4 = [(ASTSession *)self serverSession];
          v66[0] = MEMORY[0x277D85DD0];
          v66[1] = 3221225472;
          v66[2] = __28__ASTSession_startWithMode___block_invoke_28;
          v66[3] = &unk_278CBCFD8;
          objc_copyWeak(&v68, &location);
          v66[4] = self;
          v67 = v36;
          [serverSession4 requestSuitesAvailableWithCompletionHandler:v66];

          objc_destroyWeak(&v68);
        }
      }
    }

    v57 = dispatch_time(0, 5000000000);
    dispatch_group_wait(v36, v57);

    delegate = [(ASTSession *)self delegate];
    v59 = objc_opt_respondsToSelector();

    if (v59)
    {
      delegate2 = [(ASTSession *)self delegate];
      destinations4 = [(ASTSession *)self destinations];
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = __28__ASTSession_startWithMode___block_invoke_29;
      v64[3] = &unk_278CBD000;
      objc_copyWeak(&v65, &location);
      [delegate2 session:self didRequestSuiteRunWithDestinations:destinations4 confirmation:v64];

      objc_destroyWeak(&v65);
    }

    else
    {
      serverSession5 = [(ASTSession *)self serverSession];
      [(ASTSession *)self setActiveSession:serverSession5];

      repairSession5 = [(ASTSession *)self repairSession];
      [repairSession5 end];

      [(ASTSession *)self setRepairSession:0];
    }
  }

  else
  {
    v15 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_240F3C000, v15, OS_LOG_TYPE_DEFAULT, "Guided session was detected.", buf, 2u);
    }

    serverSession6 = [(ASTSession *)self serverSession];
    [serverSession6 start];

    serverSession7 = [(ASTSession *)self serverSession];
    [(ASTSession *)self setActiveSession:serverSession7];

    [(ASTSession *)self setRepairSession:0];
    delegate3 = [(ASTSession *)self delegate];
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      delegate4 = [(ASTSession *)self delegate];
      [delegate4 session:self didRequestSuiteRunWithDestinations:MEMORY[0x277CBEBF8] confirmation:&__block_literal_global_0];
    }
  }

  objc_destroyWeak(&location);
  v14 = *MEMORY[0x277D85DE8];
}

void __28__ASTSession_startWithMode___block_invoke_23(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 serverSession];
  [v3 setDelegate:v2];

  v4 = [*(a1 + 32) serverSession];
  [v4 start];
}

void __28__ASTSession_startWithMode___block_invoke_25(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 repairSession];
  [v3 setDelegate:v2];

  v4 = [*(a1 + 32) repairSession];
  [v4 start];
}

void __28__ASTSession_startWithMode___block_invoke_26(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([v5 count])
  {
    v8 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v5;
      _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "Repaird returned suites to run: %@", &v17, 0xCu);
    }

    v9 = [[ASTSelfServiceDestination alloc] initWithEndpoint:2 suites:v5];
    v10 = *(a1 + 32);
    objc_sync_enter(v10);
    v11 = [WeakRetained destinations];
    [v11 addObject:v9];

    objc_sync_exit(v10);
    v12 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [WeakRetained destinations];
      v17 = 138412290;
      v18 = v13;
      _os_log_impl(&dword_240F3C000, v12, OS_LOG_TYPE_DEFAULT, "Destinations available: %@", &v17, 0xCu);
    }
  }

  else
  {
    v9 = ASTLogHandleForCategory(0);
    v16 = os_log_type_enabled(&v9->super, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      if (v16)
      {
        __28__ASTSession_startWithMode___block_invoke_26_cold_1();
      }
    }

    else if (v16)
    {
      __28__ASTSession_startWithMode___block_invoke_26_cold_2();
    }
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    dispatch_group_leave(v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __28__ASTSession_startWithMode___block_invoke_28(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([v5 count])
  {
    v8 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v5;
      _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "AST returned suites to run: %@", &v17, 0xCu);
    }

    v9 = [[ASTSelfServiceDestination alloc] initWithEndpoint:1 suites:v5];
    v10 = *(a1 + 32);
    objc_sync_enter(v10);
    v11 = [WeakRetained destinations];
    [v11 addObject:v9];

    objc_sync_exit(v10);
    v12 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [WeakRetained destinations];
      v17 = 138412290;
      v18 = v13;
      _os_log_impl(&dword_240F3C000, v12, OS_LOG_TYPE_DEFAULT, "Destinations available: %@", &v17, 0xCu);
    }
  }

  else
  {
    v9 = ASTLogHandleForCategory(0);
    v16 = os_log_type_enabled(&v9->super, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      if (v16)
      {
        __28__ASTSession_startWithMode___block_invoke_28_cold_1();
      }
    }

    else if (v16)
    {
      __28__ASTSession_startWithMode___block_invoke_28_cold_2();
    }
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    dispatch_group_leave(v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __28__ASTSession_startWithMode___block_invoke_29(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = ASTLogHandleForCategory(0);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2 == 1)
  {
    if (v5)
    {
      *v9 = 0;
      _os_log_impl(&dword_240F3C000, v4, OS_LOG_TYPE_DEFAULT, "Switching to the server session", v9, 2u);
    }

    v6 = [WeakRetained serverSession];
    goto LABEL_9;
  }

  if (a2 == 2)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_240F3C000, v4, OS_LOG_TYPE_DEFAULT, "Switching to the repair session", buf, 2u);
    }

    v6 = [WeakRetained repairSession];
LABEL_9:
    v7 = v6;
    [WeakRetained setActiveSession:v6];

    goto LABEL_13;
  }

  if (v5)
  {
    *v8 = 0;
    _os_log_impl(&dword_240F3C000, v4, OS_LOG_TYPE_DEFAULT, "Invalidating the active session", v8, 2u);
  }

  [WeakRetained setActiveSession:0];
LABEL_13:
}

- (void)idle
{
  activeSession = [(ASTSession *)self activeSession];
  [activeSession idle];
}

- (void)idleWithCompletion:(id)completion
{
  completionCopy = completion;
  activeSession = [(ASTSession *)self activeSession];
  [activeSession idleWithCompletion:completionCopy];
}

- (void)end
{
  activeSession = [(ASTSession *)self activeSession];
  [activeSession end];
}

- (void)invalidate
{
  activeSession = [(ASTSession *)self activeSession];
  [activeSession invalidate];
}

- (void)archive
{
  serverSession = [(ASTSession *)self serverSession];

  if (serverSession)
  {
    v4 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_240F3C000, v4, OS_LOG_TYPE_DEFAULT, "Archiving AST2 session", v6, 2u);
    }

    serverSession2 = [(ASTSession *)self serverSession];
    [serverSession2 archive];
  }
}

- (BOOL)sendAuthInfoResult:(id)result error:(id *)error
{
  resultCopy = result;
  activeSession = [(ASTSession *)self activeSession];
  LOBYTE(error) = [activeSession sendAuthInfoResult:resultCopy error:error];

  return error;
}

- (BOOL)sendProfileResult:(id)result error:(id *)error
{
  resultCopy = result;
  activeSession = [(ASTSession *)self activeSession];
  LOBYTE(error) = [activeSession sendProfileResult:resultCopy error:error];

  return error;
}

- (BOOL)sendTestResult:(id)result error:(id *)error
{
  resultCopy = result;
  activeSession = [(ASTSession *)self activeSession];
  LOBYTE(error) = [activeSession sendTestResult:resultCopy error:error];

  return error;
}

- (void)updateAction:(id)action
{
  actionCopy = action;
  activeSession = [(ASTSession *)self activeSession];
  [activeSession updateAction:actionCopy];
}

- (void)requestSuitesAvailableWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  activeSession = [(ASTSession *)self activeSession];
  [activeSession requestSuitesAvailableWithCompletionHandler:handlerCopy];
}

- (void)requestSuiteStart:(id)start completionHandler:(id)handler
{
  handlerCopy = handler;
  startCopy = start;
  activeSession = [(ASTSession *)self activeSession];
  [activeSession requestSuiteStart:startCopy completionHandler:handlerCopy];
}

- (void)requestSuiteSummary:(id)summary completionHandler:(id)handler
{
  summaryCopy = summary;
  handlerCopy = handler;
  if ([summaryCopy length])
  {
    activeSession = [(ASTSession *)self activeSession];
    [activeSession requestSuiteSummary:summaryCopy completionHandler:handlerCopy];
  }

  else
  {
    activeSession = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(activeSession, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_240F3C000, activeSession, OS_LOG_TYPE_DEFAULT, "Not requesting suite summary because diagnostic event id is nil", v9, 2u);
    }
  }
}

- (void)session:(id)session startTest:(id)test parameters:(id)parameters testResult:(id)result
{
  sessionCopy = session;
  testCopy = test;
  parametersCopy = parameters;
  resultCopy = result;
  activeSession = [(ASTSession *)self activeSession];

  if (activeSession == sessionCopy)
  {
    delegate = [(ASTSession *)self delegate];
    [delegate session:sessionCopy startTest:testCopy parameters:parametersCopy testResult:resultCopy];
  }
}

- (void)session:(id)session cancelTest:(id)test
{
  sessionCopy = session;
  testCopy = test;
  activeSession = [(ASTSession *)self activeSession];

  if (activeSession == sessionCopy)
  {
    delegate = [(ASTSession *)self delegate];
    [delegate session:sessionCopy cancelTest:testCopy];
  }
}

- (void)session:(id)session profile:(id)profile filteredByComponents:(id)components
{
  componentsCopy = components;
  profileCopy = profile;
  sessionCopy = session;
  delegate = [(ASTSession *)self delegate];
  [delegate session:sessionCopy profile:profileCopy filteredByComponents:componentsCopy];
}

- (void)session:(id)session didPauseWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  delegate = [(ASTSession *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(ASTSession *)self delegate];
    [delegate2 session:sessionCopy didPauseWithError:errorCopy];
  }
}

- (void)sessionDidResume:(id)resume
{
  resumeCopy = resume;
  delegate = [(ASTSession *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(ASTSession *)self delegate];
    [delegate2 sessionDidResume:resumeCopy];
  }
}

- (void)session:(id)session didEndWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  serverSession = [(ASTSession *)self serverSession];

  if (serverSession != sessionCopy)
  {
    repairSession = [(ASTSession *)self repairSession];

    if (repairSession == sessionCopy)
    {
      sessionStartDispatchGroup = [(ASTSession *)self sessionStartDispatchGroup];

      if (sessionStartDispatchGroup)
      {
        sessionStartDispatchGroup2 = [(ASTSession *)self sessionStartDispatchGroup];
        dispatch_group_leave(sessionStartDispatchGroup2);
      }

      startedSessions = [(ASTSession *)self startedSessions];
      repairSession2 = [(ASTSession *)self repairSession];
      v17 = [startedSessions containsObject:repairSession2];

      if (v17)
      {
        selfCopy = self;
        objc_sync_enter(selfCopy);
        startedSessions2 = [(ASTSession *)selfCopy startedSessions];
        repairSession3 = [(ASTSession *)selfCopy repairSession];
        [startedSessions2 removeObject:repairSession3];

        objc_sync_exit(selfCopy);
      }

      [(ASTSession *)self setRepairSession:0];
    }

    else
    {
      v10 = ASTLogHandleForCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [ASTSession session:didEndWithError:];
      }
    }

    goto LABEL_19;
  }

  sessionStartDispatchGroup3 = [(ASTSession *)self sessionStartDispatchGroup];

  if (sessionStartDispatchGroup3)
  {
    sessionStartDispatchGroup4 = [(ASTSession *)self sessionStartDispatchGroup];
    dispatch_group_leave(sessionStartDispatchGroup4);
LABEL_15:

    goto LABEL_16;
  }

  activeSession = [(ASTSession *)self activeSession];

  if (activeSession != sessionCopy)
  {
    sessionStartDispatchGroup4 = [(ASTSession *)self delegate];
    [sessionStartDispatchGroup4 session:sessionCopy didEndWithError:errorCopy];
    goto LABEL_15;
  }

LABEL_16:
  startedSessions3 = [(ASTSession *)self startedSessions];
  serverSession2 = [(ASTSession *)self serverSession];
  v24 = [startedSessions3 containsObject:serverSession2];

  if (v24)
  {
    selfCopy2 = self;
    objc_sync_enter(selfCopy2);
    startedSessions4 = [(ASTSession *)selfCopy2 startedSessions];
    serverSession3 = [(ASTSession *)selfCopy2 serverSession];
    [startedSessions4 removeObject:serverSession3];

    objc_sync_exit(selfCopy2);
  }

  [(ASTSession *)self setServerSession:0];
LABEL_19:
}

- (void)sessionDidStart:(id)start
{
  v17 = *MEMORY[0x277D85DE8];
  startCopy = start;
  serverSession = [(ASTSession *)self serverSession];
  v6 = serverSession;
  if (serverSession == startCopy)
  {
  }

  else
  {
    repairSession = [(ASTSession *)self repairSession];

    if (repairSession != startCopy)
    {
      v8 = ASTLogHandleForCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [ASTSession session:didEndWithError:];
      }

      goto LABEL_10;
    }
  }

  sessionStartDispatchGroup = [(ASTSession *)self sessionStartDispatchGroup];

  if (sessionStartDispatchGroup)
  {
    sessionStartDispatchGroup2 = [(ASTSession *)self sessionStartDispatchGroup];
    dispatch_group_leave(sessionStartDispatchGroup2);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  startedSessions = [(ASTSession *)selfCopy startedSessions];
  [startedSessions addObject:startCopy];

  objc_sync_exit(selfCopy);
  v8 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    startedSessions2 = [(ASTSession *)selfCopy startedSessions];
    v15 = 138412290;
    v16 = startedSessions2;
    _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "Started sessions: %@", &v15, 0xCu);
  }

LABEL_10:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)session generateAuthInfoWithNonce:(id)nonce
{
  sessionCopy = session;
  nonceCopy = nonce;
  delegate = [(ASTSession *)self delegate];
  v8 = [delegate conformsToProtocol:&unk_2852D8970];

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    delegate2 = [(ASTSession *)self delegate];
    [delegate2 session:sessionCopy generateAuthInfoWithNonce:nonceCopy];

    objc_autoreleasePoolPop(v9);
  }
}

- (void)session:(id)session signPayload:(id)payload completionHandler:(id)handler
{
  sessionCopy = session;
  payloadCopy = payload;
  handlerCopy = handler;
  delegate = [(ASTSession *)self delegate];
  v11 = [delegate conformsToProtocol:&unk_2852D8970];

  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    delegate2 = [(ASTSession *)self delegate];
    [delegate2 session:sessionCopy signPayload:payloadCopy completionHandler:handlerCopy];

    objc_autoreleasePoolPop(v12);
  }
}

- (void)session:(id)session signFile:(id)file completionHandler:(id)handler
{
  sessionCopy = session;
  fileCopy = file;
  handlerCopy = handler;
  delegate = [(ASTSession *)self delegate];
  v11 = [delegate conformsToProtocol:&unk_2852D8970];

  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    delegate2 = [(ASTSession *)self delegate];
    [delegate2 session:sessionCopy signFile:fileCopy completionHandler:handlerCopy];

    objc_autoreleasePoolPop(v12);
  }
}

+ (void)requestAsset:(id)asset completionHandler:(id)handler
{
  handlerCopy = handler;
  assetCopy = asset;
  v9 = +[ASTEnvironment currentEnvironment];
  assetURL = [v9 assetURL];
  [self requestAsset:assetCopy serverURL:assetURL endpoint:0 completionHandler:handlerCopy];
}

+ (void)requestAsset:(id)asset serverURL:(id)l endpoint:(id)endpoint completionHandler:(id)handler
{
  handlerCopy = handler;
  endpointCopy = endpoint;
  lCopy = l;
  assetCopy = asset;
  v13 = objc_alloc_init(ASTSession);
  [(ASTSession *)v13 requestAsset:assetCopy serverURL:lCopy endpoint:endpointCopy completionHandler:handlerCopy];
}

- (void)requestAsset:(id)asset completionHandler:(id)handler
{
  handlerCopy = handler;
  assetCopy = asset;
  v9 = +[ASTEnvironment currentEnvironment];
  assetURL = [v9 assetURL];
  [(ASTSession *)self requestAsset:assetCopy serverURL:assetURL endpoint:0 completionHandler:handlerCopy];
}

- (void)requestAsset:(id)asset serverURL:(id)l endpoint:(id)endpoint completionHandler:(id)handler
{
  handlerCopy = handler;
  endpointCopy = endpoint;
  lCopy = l;
  assetCopy = asset;
  activeSession = [(ASTSession *)self activeSession];
  [(ASTSession *)self fetchAsset:assetCopy sessionClass:objc_opt_class() serverURL:lCopy endpoint:endpointCopy completionHandler:handlerCopy];
}

- (void)fetchAsset:(id)asset sessionClass:(Class)class serverURL:(id)l endpoint:(id)endpoint completionHandler:(id)handler
{
  v45 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  lCopy = l;
  endpointCopy = endpoint;
  handlerCopy = handler;
  if (!class)
  {
    class = objc_opt_class();
  }

  if (class == objc_opt_class() || class == objc_opt_class())
  {
    v15 = [(ASTSession *)self destinationURLForAsset:assetCopy];
    path = [v15 path];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (-[ASTSession shouldEvictCachedAssetForName:](selfCopy, "shouldEvictCachedAssetForName:", assetCopy) && ([MEMORY[0x277CCAA00] defaultManager], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "fileExistsAtPath:", path), v18, v19))
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v42 = 0;
      v21 = [defaultManager removeItemAtPath:path error:&v42];
      v22 = v42;

      if (v21)
      {
        v23 = ASTLogHandleForCategory(1);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v44 = assetCopy;
          _os_log_impl(&dword_240F3C000, v23, OS_LOG_TYPE_DEFAULT, "Eviction of stale asset [%@] from disk was successful", buf, 0xCu);
        }
      }

      else
      {
        v23 = ASTLogHandleForCategory(1);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [ASTSession fetchAsset:sessionClass:serverURL:endpoint:completionHandler:];
        }
      }
    }

    else
    {
      v22 = 0;
    }

    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v25 = [defaultManager2 fileExistsAtPath:path];

    if (v25)
    {
      v26 = ASTLogHandleForCategory(1);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v44 = assetCopy;
        _os_log_impl(&dword_240F3C000, v26, OS_LOG_TYPE_DEFAULT, "Using cached version of asset [%@] on disk", buf, 0xCu);
      }

      v27 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:path];
      handlerCopy[2](handlerCopy, v27, v22);
      v28 = v22;
    }

    else
    {
      v41 = v22;
      v27 = [ASTFileManagement unprotectedFileHandleForFileURL:v15 error:&v41];
      v28 = v41;

      if (v27)
      {
        v35[0] = MEMORY[0x277D85DD0];
        v35[1] = 3221225472;
        v35[2] = __75__ASTSession_fetchAsset_sessionClass_serverURL_endpoint_completionHandler___block_invoke;
        v35[3] = &unk_278CBD028;
        v29 = assetCopy;
        v36 = v29;
        v37 = selfCopy;
        v27 = v27;
        v38 = v27;
        v39 = path;
        v40 = handlerCopy;
        v30 = MEMORY[0x245CD5130](v35);
        if (class == objc_opt_class())
        {
          [ASTRemoteServerSession downloadAsset:v29 serverURL:lCopy endpoint:endpointCopy fileHandle:v27 completionHandler:v30];
        }

        else if (class == objc_opt_class())
        {
          [ASTRepairSession downloadAsset:v29 fileHandle:v27 completionHandler:v30];
        }
      }

      else
      {
        v31 = ASTLogHandleForCategory(1);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [ASTSession fetchAsset:sessionClass:serverURL:endpoint:completionHandler:];
        }

        handlerCopy[2](handlerCopy, 0, v28);
      }
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v14 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ASTSession fetchAsset:sessionClass:serverURL:endpoint:completionHandler:];
    }

    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-1002 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v15);
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __75__ASTSession_fetchAsset_sessionClass_serverURL_endpoint_completionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = ASTLogHandleForCategory(1);
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 138412290;
      v23 = v8;
      _os_log_impl(&dword_240F3C000, v7, OS_LOG_TYPE_DEFAULT, "Download of asset [%@] was successful", buf, 0xCu);
    }

    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v21 = v5;
    v11 = [v9 readContentsOfFileHandle:v10 error:&v21];
    v12 = v21;

    [*(a1 + 48) closeFile];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __75__ASTSession_fetchAsset_sessionClass_serverURL_endpoint_completionHandler___block_invoke_cold_1(a1);
    }

    v13 = [MEMORY[0x277CCAA00] defaultManager];
    v14 = [v13 fileExistsAtPath:*(a1 + 56)];

    if (!v14)
    {
      v11 = 0;
      goto LABEL_13;
    }

    v15 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      *buf = 138412290;
      v23 = v16;
      _os_log_impl(&dword_240F3C000, v15, OS_LOG_TYPE_DEFAULT, "Removing empty asset file [%@]", buf, 0xCu);
    }

    [*(a1 + 48) closeFile];
    v17 = [MEMORY[0x277CCAA00] defaultManager];
    v18 = *(a1 + 56);
    v20 = v5;
    [v17 removeItemAtPath:v18 error:&v20];
    v12 = v20;

    v11 = 0;
  }

  v5 = v12;
LABEL_13:
  (*(*(a1 + 64) + 16))();

  v19 = *MEMORY[0x277D85DE8];
}

- (id)destinationURLForAsset:(id)asset
{
  v16 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  destinationAssetDirectory = [(ASTSession *)self destinationAssetDirectory];
  v6 = [ASTEncodingUtilities SHA256HashForString:assetCopy];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"unknown";
  }

  v8 = [destinationAssetDirectory URLByAppendingPathComponent:v7];
  v9 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v8;
    v14 = 2112;
    v15 = assetCopy;
    _os_log_impl(&dword_240F3C000, v9, OS_LOG_TYPE_DEFAULT, "Using [%@] as path for asset [%@]", &v12, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)destinationAssetDirectory
{
  v8[3] = *MEMORY[0x277D85DE8];
  string = NSTemporaryDirectory();
  if (!string)
  {
    string = [MEMORY[0x277CCACA8] string];
  }

  v3 = MEMORY[0x277CBEBC0];
  v8[0] = string;
  v8[1] = @"com.apple.AppleServiceToolkit";
  v8[2] = @"assets";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];
  v5 = [v3 fileURLWithPathComponents:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)readContentsOfFileHandle:(id)handle error:(id *)error
{
  v8 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  [handleCopy seekToFileOffset:0];
  readDataToEndOfFile = [handleCopy readDataToEndOfFile];

  v6 = *MEMORY[0x277D85DE8];

  return readDataToEndOfFile;
}

- (void)removeDownloadedAssets
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  destinationAssetDirectory = [(ASTSession *)self destinationAssetDirectory];
  [defaultManager removeItemAtURL:destinationAssetDirectory error:0];
}

- (BOOL)shouldEvictCachedAssetForName:(id)name
{
  nameCopy = name;
  v5 = [(ASTSession *)self destinationURLForAsset:nameCopy];
  path = [v5 path];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [defaultManager fileExistsAtPath:path];

  v9 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:path];
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11 || [v9 length])
  {
    v12 = shouldEvictCachedAssetForName__evictCacheForAssets;
    if (!shouldEvictCachedAssetForName__evictCacheForAssets)
    {
      v13 = [MEMORY[0x277CBEB98] setWithObjects:{@"strings", 0}];
      v14 = shouldEvictCachedAssetForName__evictCacheForAssets;
      shouldEvictCachedAssetForName__evictCacheForAssets = v13;

      v12 = shouldEvictCachedAssetForName__evictCacheForAssets;
    }

    v15 = [v12 containsObject:nameCopy];
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (void)dealloc
{
  [(ASTSession *)self removeDownloadedAssets];
  v3.receiver = self;
  v3.super_class = ASTSession;
  [(ASTSession *)&v3 dealloc];
}

- (ASTSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __28__ASTSession_startWithMode___block_invoke_26_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __28__ASTSession_startWithMode___block_invoke_26_cold_2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __28__ASTSession_startWithMode___block_invoke_28_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __28__ASTSession_startWithMode___block_invoke_28_cold_2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)session:didEndWithError:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)fetchAsset:sessionClass:serverURL:endpoint:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)fetchAsset:sessionClass:serverURL:endpoint:completionHandler:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_240F3C000, v0, v1, "Eviction of stale asset [%@] from disk was NOT successful: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)fetchAsset:sessionClass:serverURL:endpoint:completionHandler:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_240F3C000, v0, v1, "Could not open file handle for [%@]: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __75__ASTSession_fetchAsset_sessionClass_serverURL_endpoint_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1(&dword_240F3C000, v1, v2, "Download of asset [%@] was NOT successful: %@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

- (void)readContentsOfFileHandle:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end