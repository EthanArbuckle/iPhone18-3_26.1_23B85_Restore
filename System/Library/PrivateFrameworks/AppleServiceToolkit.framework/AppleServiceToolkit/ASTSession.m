@interface ASTSession
+ (id)sessionWithContext:(id)a3;
+ (id)sessionWithIdentity:(id)a3;
+ (id)sessionWithSerialNumber:(id)a3;
+ (void)requestAsset:(id)a3 completionHandler:(id)a4;
+ (void)requestAsset:(id)a3 serverURL:(id)a4 endpoint:(id)a5 completionHandler:(id)a6;
+ (void)sessionExistsForIdentities:(id)a3 ticketNumber:(id)a4 completionHandler:(id)a5;
+ (void)sessionExistsForIdentities:(id)a3 ticketNumber:(id)a4 timeout:(double)a5 completion:(id)a6;
+ (void)sessionExistsForIdentities:(id)a3 ticketNumber:(id)a4 timeout:(double)a5 completionHandler:(id)a6;
+ (void)sessionExistsForSerialNumbers:(id)a3 ticketNumber:(id)a4 timeout:(double)a5 completionHandler:(id)a6;
- (ASTSession)initWithContext:(id)a3;
- (ASTSession)initWithIdentity:(id)a3;
- (ASTSession)initWithSerialNumber:(id)a3;
- (ASTSessionDelegate)delegate;
- (BOOL)sendAuthInfoResult:(id)a3 error:(id *)a4;
- (BOOL)sendProfileResult:(id)a3 error:(id *)a4;
- (BOOL)sendTestResult:(id)a3 error:(id *)a4;
- (BOOL)shouldEvictCachedAssetForName:(id)a3;
- (BOOL)shouldShowResults;
- (id)destinationAssetDirectory;
- (id)destinationURLForAsset:(id)a3;
- (id)readContentsOfFileHandle:(id)a3 error:(id *)a4;
- (void)archive;
- (void)dealloc;
- (void)end;
- (void)fetchAsset:(id)a3 sessionClass:(Class)a4 serverURL:(id)a5 endpoint:(id)a6 completionHandler:(id)a7;
- (void)idle;
- (void)idleWithCompletion:(id)a3;
- (void)invalidate;
- (void)removeDownloadedAssets;
- (void)requestAsset:(id)a3 completionHandler:(id)a4;
- (void)requestAsset:(id)a3 serverURL:(id)a4 endpoint:(id)a5 completionHandler:(id)a6;
- (void)requestSuiteStart:(id)a3 completionHandler:(id)a4;
- (void)requestSuiteSummary:(id)a3 completionHandler:(id)a4;
- (void)requestSuitesAvailableWithCompletionHandler:(id)a3;
- (void)session:(id)a3 cancelTest:(id)a4;
- (void)session:(id)a3 didEndWithError:(id)a4;
- (void)session:(id)a3 didPauseWithError:(id)a4;
- (void)session:(id)a3 generateAuthInfoWithNonce:(id)a4;
- (void)session:(id)a3 profile:(id)a4 filteredByComponents:(id)a5;
- (void)session:(id)a3 signFile:(id)a4 completionHandler:(id)a5;
- (void)session:(id)a3 signPayload:(id)a4 completionHandler:(id)a5;
- (void)session:(id)a3 startTest:(id)a4 parameters:(id)a5 testResult:(id)a6;
- (void)sessionDidResume:(id)a3;
- (void)sessionDidStart:(id)a3;
- (void)setActiveSession:(id)a3;
- (void)startWithMode:(int)a3;
- (void)updateAction:(id)a3;
@end

@implementation ASTSession

+ (id)sessionWithSerialNumber:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithSerialNumber:v4];

  return v5;
}

+ (id)sessionWithIdentity:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithIdentity:v4];

  return v5;
}

+ (id)sessionWithContext:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithContext:v4];

  return v5;
}

- (ASTSession)initWithSerialNumber:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ASTSession;
  v5 = [(ASTSession *)&v15 init];
  if (v5)
  {
    v6 = [[ASTRemoteServerSession alloc] initWithSerialNumber:v4];
    serverSession = v5->_serverSession;
    v5->_serverSession = v6;

    v8 = objc_alloc_init(ASTRepairSession);
    repairSession = v5->_repairSession;
    v5->_repairSession = v8;

    v10 = [MEMORY[0x277CBEB58] set];
    startedSessions = v5->_startedSessions;
    v5->_startedSessions = v10;

    v12 = [MEMORY[0x277CBEB18] array];
    destinations = v5->_destinations;
    v5->_destinations = v12;
  }

  return v5;
}

- (ASTSession)initWithIdentity:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ASTSession;
  v5 = [(ASTSession *)&v15 init];
  if (v5)
  {
    v6 = [[ASTRemoteServerSession alloc] initWithIdentity:v4];
    serverSession = v5->_serverSession;
    v5->_serverSession = v6;

    v8 = objc_alloc_init(ASTRepairSession);
    repairSession = v5->_repairSession;
    v5->_repairSession = v8;

    v10 = [MEMORY[0x277CBEB58] set];
    startedSessions = v5->_startedSessions;
    v5->_startedSessions = v10;

    v12 = [MEMORY[0x277CBEB18] array];
    destinations = v5->_destinations;
    v5->_destinations = v12;
  }

  return v5;
}

- (ASTSession)initWithContext:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ASTSession;
  v5 = [(ASTSession *)&v15 init];
  if (v5)
  {
    v6 = [[ASTRemoteServerSession alloc] initWithContext:v4];
    serverSession = v5->_serverSession;
    v5->_serverSession = v6;

    v8 = objc_alloc_init(ASTRepairSession);
    repairSession = v5->_repairSession;
    v5->_repairSession = v8;

    v10 = [MEMORY[0x277CBEB58] set];
    startedSessions = v5->_startedSessions;
    v5->_startedSessions = v10;

    v12 = [MEMORY[0x277CBEB18] array];
    destinations = v5->_destinations;
    v5->_destinations = v12;
  }

  return v5;
}

- (void)setActiveSession:(id)a3
{
  v4 = a3;
  [(ASTSession *)self->_activeSession setDelegate:0];
  activeSession = self->_activeSession;
  self->_activeSession = v4;
  v6 = v4;

  v7 = [(ASTSession *)self delegate];
  [(ASTSession *)self->_activeSession setDelegate:v7];
}

- (BOOL)shouldShowResults
{
  v2 = [(ASTSession *)self activeSession];
  v3 = [v2 shouldShowResults];

  return v3;
}

+ (void)sessionExistsForSerialNumbers:(id)a3 ticketNumber:(id)a4 timeout:(double)a5 completionHandler:(id)a6
{
  v25 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = v9;
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

  [objc_opt_class() sessionExistsForIdentities:v12 ticketNumber:v10 timeout:v11 completionHandler:a5];
  v19 = *MEMORY[0x277D85DE8];
}

+ (void)sessionExistsForIdentities:(id)a3 ticketNumber:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__ASTSession_sessionExistsForIdentities_ticketNumber_completionHandler___block_invoke;
  v10[3] = &unk_278CBCF68;
  v11 = v8;
  v9 = v8;
  [a1 sessionStatusForIdentities:a3 ticketNumber:a4 timeout:v10 completionHandler:15.0];
}

+ (void)sessionExistsForIdentities:(id)a3 ticketNumber:(id)a4 timeout:(double)a5 completionHandler:(id)a6
{
  v10 = a6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80__ASTSession_sessionExistsForIdentities_ticketNumber_timeout_completionHandler___block_invoke;
  v12[3] = &unk_278CBCF68;
  v13 = v10;
  v11 = v10;
  [a1 sessionStatusForIdentities:a3 ticketNumber:a4 timeout:v12 completionHandler:a5];
}

+ (void)sessionExistsForIdentities:(id)a3 ticketNumber:(id)a4 timeout:(double)a5 completion:(id)a6
{
  v10 = a6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__ASTSession_sessionExistsForIdentities_ticketNumber_timeout_completion___block_invoke;
  v12[3] = &unk_278CBCF68;
  v13 = v10;
  v11 = v10;
  [a1 sessionStatusForIdentities:a3 ticketNumber:a4 timeout:0 requestQueuedSuiteInfo:v12 completionHandler:a5];
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

- (void)startWithMode:(int)a3
{
  v78 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v77 = a3;
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "Starting ASTSession in mode %d", buf, 8u);
  }

  v6 = [(ASTSession *)self destinations];
  v7 = [ASTSelfServiceDestination alloc];
  v8 = [(ASTSelfServiceDestination *)v7 initWithEndpoint:1 suites:MEMORY[0x277CBEBF8]];
  v75[0] = v8;
  v9 = [ASTSelfServiceDestination alloc];
  v10 = [(ASTSelfServiceDestination *)v9 initWithEndpoint:2 suites:MEMORY[0x277CBEBF8]];
  v75[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:2];
  v12 = [v6 isEqualToArray:v11];

  if (v12)
  {
    v13 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_240F3C000, v13, OS_LOG_TYPE_DEFAULT, "ASTSession has already been started and all destinations were loaded", buf, 2u);
    }
  }

  else if (a3 == 2 || (isASTGuidedSession & 1) == 0)
  {
    v21 = dispatch_group_create();
    [(ASTSession *)self setSessionStartDispatchGroup:v21];

    if (a3 == 2)
    {
      goto LABEL_21;
    }

    v22 = [(ASTSession *)self startedSessions];
    v23 = [(ASTSession *)self serverSession];
    v24 = [v22 containsObject:v23];

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
      v26 = [(ASTSession *)self sessionStartDispatchGroup];
      dispatch_group_enter(v26);

      v27 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __28__ASTSession_startWithMode___block_invoke_23;
      block[3] = &unk_278CBCFB0;
      block[4] = self;
      dispatch_async(v27, block);
    }

    if (a3 != 1)
    {
LABEL_21:
      v28 = [(ASTSession *)self startedSessions];
      v29 = [(ASTSession *)self repairSession];
      v30 = [v28 containsObject:v29];

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
        v32 = [(ASTSession *)self sessionStartDispatchGroup];
        dispatch_group_enter(v32);

        v33 = dispatch_get_global_queue(0, 0);
        v72[0] = MEMORY[0x277D85DD0];
        v72[1] = 3221225472;
        v72[2] = __28__ASTSession_startWithMode___block_invoke_25;
        v72[3] = &unk_278CBCFB0;
        v72[4] = self;
        dispatch_async(v33, v72);
      }
    }

    v34 = [(ASTSession *)self sessionStartDispatchGroup];
    v35 = dispatch_time(0, 300000000000);
    dispatch_group_wait(v34, v35);

    [(ASTSession *)self setSessionStartDispatchGroup:0];
    v36 = dispatch_group_create();
    v37 = [(ASTSession *)self repairSession];
    if (v37)
    {
      v38 = [(ASTSession *)self startedSessions];
      v39 = [(ASTSession *)self repairSession];
      v40 = [v38 containsObject:v39];

      if (v40)
      {
        v41 = [(ASTSession *)self destinations];
        v42 = [ASTSelfServiceDestination alloc];
        v43 = [(ASTSelfServiceDestination *)v42 initWithEndpoint:2 suites:MEMORY[0x277CBEBF8]];
        v44 = [v41 containsObject:v43];

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
          v46 = [(ASTSession *)self repairSession];
          v69[0] = MEMORY[0x277D85DD0];
          v69[1] = 3221225472;
          v69[2] = __28__ASTSession_startWithMode___block_invoke_26;
          v69[3] = &unk_278CBCFD8;
          objc_copyWeak(&v71, &location);
          v69[4] = self;
          v70 = v36;
          [v46 requestSuitesAvailableWithCompletionHandler:v69];

          objc_destroyWeak(&v71);
        }
      }
    }

    v47 = [(ASTSession *)self serverSession];
    if (v47)
    {
      v48 = [(ASTSession *)self startedSessions];
      v49 = [(ASTSession *)self serverSession];
      v50 = [v48 containsObject:v49];

      if (v50)
      {
        v51 = [(ASTSession *)self destinations];
        v52 = [ASTSelfServiceDestination alloc];
        v53 = [(ASTSelfServiceDestination *)v52 initWithEndpoint:1 suites:MEMORY[0x277CBEBF8]];
        v54 = [v51 containsObject:v53];

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
          v56 = [(ASTSession *)self serverSession];
          v66[0] = MEMORY[0x277D85DD0];
          v66[1] = 3221225472;
          v66[2] = __28__ASTSession_startWithMode___block_invoke_28;
          v66[3] = &unk_278CBCFD8;
          objc_copyWeak(&v68, &location);
          v66[4] = self;
          v67 = v36;
          [v56 requestSuitesAvailableWithCompletionHandler:v66];

          objc_destroyWeak(&v68);
        }
      }
    }

    v57 = dispatch_time(0, 5000000000);
    dispatch_group_wait(v36, v57);

    v58 = [(ASTSession *)self delegate];
    v59 = objc_opt_respondsToSelector();

    if (v59)
    {
      v60 = [(ASTSession *)self delegate];
      v61 = [(ASTSession *)self destinations];
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = __28__ASTSession_startWithMode___block_invoke_29;
      v64[3] = &unk_278CBD000;
      objc_copyWeak(&v65, &location);
      [v60 session:self didRequestSuiteRunWithDestinations:v61 confirmation:v64];

      objc_destroyWeak(&v65);
    }

    else
    {
      v62 = [(ASTSession *)self serverSession];
      [(ASTSession *)self setActiveSession:v62];

      v63 = [(ASTSession *)self repairSession];
      [v63 end];

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

    v16 = [(ASTSession *)self serverSession];
    [v16 start];

    v17 = [(ASTSession *)self serverSession];
    [(ASTSession *)self setActiveSession:v17];

    [(ASTSession *)self setRepairSession:0];
    v18 = [(ASTSession *)self delegate];
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      v20 = [(ASTSession *)self delegate];
      [v20 session:self didRequestSuiteRunWithDestinations:MEMORY[0x277CBEBF8] confirmation:&__block_literal_global_0];
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
  v2 = [(ASTSession *)self activeSession];
  [v2 idle];
}

- (void)idleWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(ASTSession *)self activeSession];
  [v5 idleWithCompletion:v4];
}

- (void)end
{
  v2 = [(ASTSession *)self activeSession];
  [v2 end];
}

- (void)invalidate
{
  v2 = [(ASTSession *)self activeSession];
  [v2 invalidate];
}

- (void)archive
{
  v3 = [(ASTSession *)self serverSession];

  if (v3)
  {
    v4 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_240F3C000, v4, OS_LOG_TYPE_DEFAULT, "Archiving AST2 session", v6, 2u);
    }

    v5 = [(ASTSession *)self serverSession];
    [v5 archive];
  }
}

- (BOOL)sendAuthInfoResult:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(ASTSession *)self activeSession];
  LOBYTE(a4) = [v7 sendAuthInfoResult:v6 error:a4];

  return a4;
}

- (BOOL)sendProfileResult:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(ASTSession *)self activeSession];
  LOBYTE(a4) = [v7 sendProfileResult:v6 error:a4];

  return a4;
}

- (BOOL)sendTestResult:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(ASTSession *)self activeSession];
  LOBYTE(a4) = [v7 sendTestResult:v6 error:a4];

  return a4;
}

- (void)updateAction:(id)a3
{
  v4 = a3;
  v5 = [(ASTSession *)self activeSession];
  [v5 updateAction:v4];
}

- (void)requestSuitesAvailableWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(ASTSession *)self activeSession];
  [v5 requestSuitesAvailableWithCompletionHandler:v4];
}

- (void)requestSuiteStart:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ASTSession *)self activeSession];
  [v8 requestSuiteStart:v7 completionHandler:v6];
}

- (void)requestSuiteSummary:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    v8 = [(ASTSession *)self activeSession];
    [v8 requestSuiteSummary:v6 completionHandler:v7];
  }

  else
  {
    v8 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "Not requesting suite summary because diagnostic event id is nil", v9, 2u);
    }
  }
}

- (void)session:(id)a3 startTest:(id)a4 parameters:(id)a5 testResult:(id)a6
{
  v15 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(ASTSession *)self activeSession];

  if (v13 == v15)
  {
    v14 = [(ASTSession *)self delegate];
    [v14 session:v15 startTest:v10 parameters:v11 testResult:v12];
  }
}

- (void)session:(id)a3 cancelTest:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(ASTSession *)self activeSession];

  if (v7 == v9)
  {
    v8 = [(ASTSession *)self delegate];
    [v8 session:v9 cancelTest:v6];
  }
}

- (void)session:(id)a3 profile:(id)a4 filteredByComponents:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(ASTSession *)self delegate];
  [v11 session:v10 profile:v9 filteredByComponents:v8];
}

- (void)session:(id)a3 didPauseWithError:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(ASTSession *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(ASTSession *)self delegate];
    [v9 session:v10 didPauseWithError:v6];
  }
}

- (void)sessionDidResume:(id)a3
{
  v7 = a3;
  v4 = [(ASTSession *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ASTSession *)self delegate];
    [v6 sessionDidResume:v7];
  }
}

- (void)session:(id)a3 didEndWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ASTSession *)self serverSession];

  if (v8 != v6)
  {
    v9 = [(ASTSession *)self repairSession];

    if (v9 == v6)
    {
      v13 = [(ASTSession *)self sessionStartDispatchGroup];

      if (v13)
      {
        v14 = [(ASTSession *)self sessionStartDispatchGroup];
        dispatch_group_leave(v14);
      }

      v15 = [(ASTSession *)self startedSessions];
      v16 = [(ASTSession *)self repairSession];
      v17 = [v15 containsObject:v16];

      if (v17)
      {
        v18 = self;
        objc_sync_enter(v18);
        v19 = [(ASTSession *)v18 startedSessions];
        v20 = [(ASTSession *)v18 repairSession];
        [v19 removeObject:v20];

        objc_sync_exit(v18);
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

  v11 = [(ASTSession *)self sessionStartDispatchGroup];

  if (v11)
  {
    v12 = [(ASTSession *)self sessionStartDispatchGroup];
    dispatch_group_leave(v12);
LABEL_15:

    goto LABEL_16;
  }

  v21 = [(ASTSession *)self activeSession];

  if (v21 != v6)
  {
    v12 = [(ASTSession *)self delegate];
    [v12 session:v6 didEndWithError:v7];
    goto LABEL_15;
  }

LABEL_16:
  v22 = [(ASTSession *)self startedSessions];
  v23 = [(ASTSession *)self serverSession];
  v24 = [v22 containsObject:v23];

  if (v24)
  {
    v25 = self;
    objc_sync_enter(v25);
    v26 = [(ASTSession *)v25 startedSessions];
    v27 = [(ASTSession *)v25 serverSession];
    [v26 removeObject:v27];

    objc_sync_exit(v25);
  }

  [(ASTSession *)self setServerSession:0];
LABEL_19:
}

- (void)sessionDidStart:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASTSession *)self serverSession];
  v6 = v5;
  if (v5 == v4)
  {
  }

  else
  {
    v7 = [(ASTSession *)self repairSession];

    if (v7 != v4)
    {
      v8 = ASTLogHandleForCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [ASTSession session:didEndWithError:];
      }

      goto LABEL_10;
    }
  }

  v9 = [(ASTSession *)self sessionStartDispatchGroup];

  if (v9)
  {
    v10 = [(ASTSession *)self sessionStartDispatchGroup];
    dispatch_group_leave(v10);
  }

  v11 = self;
  objc_sync_enter(v11);
  v12 = [(ASTSession *)v11 startedSessions];
  [v12 addObject:v4];

  objc_sync_exit(v11);
  v8 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(ASTSession *)v11 startedSessions];
    v15 = 138412290;
    v16 = v13;
    _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "Started sessions: %@", &v15, 0xCu);
  }

LABEL_10:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)a3 generateAuthInfoWithNonce:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(ASTSession *)self delegate];
  v8 = [v7 conformsToProtocol:&unk_2852D8970];

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [(ASTSession *)self delegate];
    [v10 session:v11 generateAuthInfoWithNonce:v6];

    objc_autoreleasePoolPop(v9);
  }
}

- (void)session:(id)a3 signPayload:(id)a4 completionHandler:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(ASTSession *)self delegate];
  v11 = [v10 conformsToProtocol:&unk_2852D8970];

  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = [(ASTSession *)self delegate];
    [v13 session:v14 signPayload:v8 completionHandler:v9];

    objc_autoreleasePoolPop(v12);
  }
}

- (void)session:(id)a3 signFile:(id)a4 completionHandler:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(ASTSession *)self delegate];
  v11 = [v10 conformsToProtocol:&unk_2852D8970];

  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = [(ASTSession *)self delegate];
    [v13 session:v14 signFile:v8 completionHandler:v9];

    objc_autoreleasePoolPop(v12);
  }
}

+ (void)requestAsset:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = +[ASTEnvironment currentEnvironment];
  v8 = [v9 assetURL];
  [a1 requestAsset:v7 serverURL:v8 endpoint:0 completionHandler:v6];
}

+ (void)requestAsset:(id)a3 serverURL:(id)a4 endpoint:(id)a5 completionHandler:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(ASTSession);
  [(ASTSession *)v13 requestAsset:v12 serverURL:v11 endpoint:v10 completionHandler:v9];
}

- (void)requestAsset:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = +[ASTEnvironment currentEnvironment];
  v8 = [v9 assetURL];
  [(ASTSession *)self requestAsset:v7 serverURL:v8 endpoint:0 completionHandler:v6];
}

- (void)requestAsset:(id)a3 serverURL:(id)a4 endpoint:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(ASTSession *)self activeSession];
  [(ASTSession *)self fetchAsset:v13 sessionClass:objc_opt_class() serverURL:v12 endpoint:v11 completionHandler:v10];
}

- (void)fetchAsset:(id)a3 sessionClass:(Class)a4 serverURL:(id)a5 endpoint:(id)a6 completionHandler:(id)a7
{
  v45 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v33 = a5;
  v34 = a6;
  v13 = a7;
  if (!a4)
  {
    a4 = objc_opt_class();
  }

  if (a4 == objc_opt_class() || a4 == objc_opt_class())
  {
    v15 = [(ASTSession *)self destinationURLForAsset:v12];
    v16 = [v15 path];
    v17 = self;
    objc_sync_enter(v17);
    if (-[ASTSession shouldEvictCachedAssetForName:](v17, "shouldEvictCachedAssetForName:", v12) && ([MEMORY[0x277CCAA00] defaultManager], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "fileExistsAtPath:", v16), v18, v19))
    {
      v20 = [MEMORY[0x277CCAA00] defaultManager];
      v42 = 0;
      v21 = [v20 removeItemAtPath:v16 error:&v42];
      v22 = v42;

      if (v21)
      {
        v23 = ASTLogHandleForCategory(1);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v44 = v12;
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

    v24 = [MEMORY[0x277CCAA00] defaultManager];
    v25 = [v24 fileExistsAtPath:v16];

    if (v25)
    {
      v26 = ASTLogHandleForCategory(1);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v44 = v12;
        _os_log_impl(&dword_240F3C000, v26, OS_LOG_TYPE_DEFAULT, "Using cached version of asset [%@] on disk", buf, 0xCu);
      }

      v27 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v16];
      v13[2](v13, v27, v22);
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
        v29 = v12;
        v36 = v29;
        v37 = v17;
        v27 = v27;
        v38 = v27;
        v39 = v16;
        v40 = v13;
        v30 = MEMORY[0x245CD5130](v35);
        if (a4 == objc_opt_class())
        {
          [ASTRemoteServerSession downloadAsset:v29 serverURL:v33 endpoint:v34 fileHandle:v27 completionHandler:v30];
        }

        else if (a4 == objc_opt_class())
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

        v13[2](v13, 0, v28);
      }
    }

    objc_sync_exit(v17);
  }

  else
  {
    v14 = ASTLogHandleForCategory(1);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ASTSession fetchAsset:sessionClass:serverURL:endpoint:completionHandler:];
    }

    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-1002 userInfo:0];
    v13[2](v13, 0, v15);
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

- (id)destinationURLForAsset:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASTSession *)self destinationAssetDirectory];
  v6 = [ASTEncodingUtilities SHA256HashForString:v4];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"unknown";
  }

  v8 = [v5 URLByAppendingPathComponent:v7];
  v9 = ASTLogHandleForCategory(1);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v8;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_240F3C000, v9, OS_LOG_TYPE_DEFAULT, "Using [%@] as path for asset [%@]", &v12, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)destinationAssetDirectory
{
  v8[3] = *MEMORY[0x277D85DE8];
  v2 = NSTemporaryDirectory();
  if (!v2)
  {
    v2 = [MEMORY[0x277CCACA8] string];
  }

  v3 = MEMORY[0x277CBEBC0];
  v8[0] = v2;
  v8[1] = @"com.apple.AppleServiceToolkit";
  v8[2] = @"assets";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];
  v5 = [v3 fileURLWithPathComponents:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)readContentsOfFileHandle:(id)a3 error:(id *)a4
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 seekToFileOffset:0];
  v5 = [v4 readDataToEndOfFile];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)removeDownloadedAssets
{
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [(ASTSession *)self destinationAssetDirectory];
  [v4 removeItemAtURL:v3 error:0];
}

- (BOOL)shouldEvictCachedAssetForName:(id)a3
{
  v4 = a3;
  v5 = [(ASTSession *)self destinationURLForAsset:v4];
  v6 = [v5 path];
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [v7 fileExistsAtPath:v6];

  v9 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v6];
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

    v15 = [v12 containsObject:v4];
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