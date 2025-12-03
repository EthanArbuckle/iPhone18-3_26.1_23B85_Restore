@interface ASTRemoteServerSession
+ (ASTRemoteServerSession)sessionWithContext:(id)context;
+ (ASTRemoteServerSession)sessionWithIdentity:(id)identity;
+ (ASTRemoteServerSession)sessionWithSerialNumber:(id)number;
+ (BOOL)auditToken:(id *)token hasEntitlement:(id)entitlement;
+ (void)downloadAsset:(id)asset serverURL:(id)l endpoint:(id)endpoint fileHandle:(id)handle completionHandler:(id)handler;
+ (void)prepareDeviceWithIdentities:(id)identities completionHandler:(id)handler;
- (ASTRemoteServerSession)initWithContext:(id)context;
- (ASTRemoteServerSession)initWithIdentity:(id)identity;
- (ASTRemoteServerSession)initWithSerialNumber:(id)number;
- (BOOL)_authInfoIfNecessary;
- (BOOL)_profile;
- (BOOL)_shouldAllowCellularForSealedSealablePayload:(id)payload;
- (BOOL)_shouldAllowCellularForSealedTestResult:(id)result;
- (BOOL)_validateCommand:(int64_t)command clientStatus:(int64_t)status;
- (BOOL)sendAuthInfoResult:(id)result error:(id *)error;
- (BOOL)sendProfileResult:(id)result error:(id *)error;
- (BOOL)sendTestResult:(id)result error:(id *)error;
- (id)_abort;
- (id)_clientAbort;
- (id)_continueWithLastRequest:(id)request;
- (id)_idle;
- (id)_retryRequest;
- (id)_sendPropertiesWithData:(id)data;
- (id)_sendRequest:(id)request;
- (id)_sendTestResults:(id)results;
- (id)_showInstructionalPromptWithData:(id)data;
- (id)_signFile:(id)file error:(id *)error;
- (id)_signPayload:(id)payload error:(id *)error;
- (id)_startNewTest:(id)test data:(id)data;
- (id)_updateSessionSettingsWithData:(id)data;
- (id)_updateUIWithData:(id)data;
- (void)_abortRunningProcedures;
- (void)_archive;
- (void)_backoff;
- (void)_cancelControlExecution;
- (void)_cancelRunningTests;
- (void)_cancelSendingTestResults;
- (void)_protocolError;
- (void)_rebootWithData:(id)data;
- (void)_setup;
- (void)_shutdownWithData:(id)data;
- (void)_startClientStatusLoop;
- (void)_teardown;
- (void)_updateProgress:(id)progress;
- (void)archive;
- (void)connectionManager:(id)manager pausedSendingResultForTest:(id)test reason:(int64_t)reason;
- (void)connectionManager:(id)manager resumedSendingResultForTest:(id)test;
- (void)connectionManagerRequestPaused:(id)paused;
- (void)connectionManagerRequestResumed:(id)resumed;
- (void)dealloc;
- (void)end;
- (void)idleWithCompletion:(id)completion;
- (void)invalidate;
- (void)requestSuiteStart:(id)start completionHandler:(id)handler;
- (void)requestSuiteSummary:(id)summary completionHandler:(id)handler;
- (void)requestSuitesAvailableWithCompletionHandler:(id)handler;
- (void)setSessionEndReason:(int64_t)reason;
- (void)start;
- (void)updateAction:(id)action;
@end

@implementation ASTRemoteServerSession

- (ASTRemoteServerSession)initWithSerialNumber:(id)number
{
  v4 = [ASTIdentity identityWithSerialNumber:number];
  v5 = [(ASTRemoteServerSession *)self initWithIdentity:v4];

  return v5;
}

+ (ASTRemoteServerSession)sessionWithSerialNumber:(id)number
{
  numberCopy = number;
  v5 = [[self alloc] initWithSerialNumber:numberCopy];

  return v5;
}

- (ASTRemoteServerSession)initWithIdentity:(id)identity
{
  identityCopy = identity;
  v5 = [[ASTContext alloc] initWithIdentity:identityCopy];

  v6 = [(ASTRemoteServerSession *)self initWithContext:v5];
  return v6;
}

+ (ASTRemoteServerSession)sessionWithIdentity:(id)identity
{
  identityCopy = identity;
  v5 = [[self alloc] initWithIdentity:identityCopy];

  return v5;
}

- (ASTRemoteServerSession)initWithContext:(id)context
{
  contextCopy = context;
  v28.receiver = self;
  v28.super_class = ASTRemoteServerSession;
  v6 = [(ASTRemoteServerSession *)&v28 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->super._context, context);
    v8 = +[ASTEnvironment currentEnvironment];
    sOCKSProxyServer = [v8 SOCKSProxyServer];
    sOCKSProxyPort = [v8 SOCKSProxyPort];
    v11 = [[ASTMaterializedConnectionManager alloc] initWithSOCKSProxyServer:sOCKSProxyServer port:sOCKSProxyPort];
    connectionManager = v7->_connectionManager;
    v7->_connectionManager = v11;

    [(ASTConnectionManager *)v7->_connectionManager setDelegate:v7];
    identity = [(ASTContext *)v7->super._context identity];
    [(ASTConnectionManager *)v7->_connectionManager setIdentity:identity];

    v7->super._sessionEndReason = 0;
    v14 = dispatch_queue_create("com.apple.AppleServiceToolkit.delegateQueue", 0);
    delegateQueue = v7->_delegateQueue;
    v7->_delegateQueue = v14;

    v16 = dispatch_queue_create("com.apple.AppleServiceToolkit.clientStatusLoop", 0);
    clientStatusQueue = v7->_clientStatusQueue;
    v7->_clientStatusQueue = v16;

    v7->super._allowCellularSizeThreshold = +[ASTConnectionUtilities allowCellularSizeThreshold];
    objc_initWeak(&location, v7);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __42__ASTRemoteServerSession_initWithContext___block_invoke;
    v25[3] = &unk_278CBD678;
    objc_copyWeak(&v26, &location);
    v18 = MEMORY[0x245CD5130](v25);
    payloadSigner = v7->_payloadSigner;
    v7->_payloadSigner = v18;

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __42__ASTRemoteServerSession_initWithContext___block_invoke_2;
    v23[3] = &unk_278CBD6A0;
    objc_copyWeak(&v24, &location);
    v20 = MEMORY[0x245CD5130](v23);
    fileSigner = v7->_fileSigner;
    v7->_fileSigner = v20;

    objc_destroyWeak(&v24);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return v7;
}

id __42__ASTRemoteServerSession_initWithContext___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained _signPayload:v5 error:a3];

  return v7;
}

id __42__ASTRemoteServerSession_initWithContext___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained _signFile:v5 error:a3];

  return v7;
}

+ (ASTRemoteServerSession)sessionWithContext:(id)context
{
  contextCopy = context;
  v5 = [[self alloc] initWithContext:contextCopy];

  return v5;
}

+ (void)prepareDeviceWithIdentities:(id)identities completionHandler:(id)handler
{
  handlerCopy = handler;
  identitiesCopy = identities;
  v10 = +[ASTEnvironment currentEnvironment];
  sOCKSProxyServer = [v10 SOCKSProxyServer];
  sOCKSProxyPort = [v10 SOCKSProxyPort];
  v9 = [[ASTMaterializedConnectionManager alloc] initWithSOCKSProxyServer:sOCKSProxyServer port:sOCKSProxyPort];
  [(ASTMaterializedConnectionManager *)v9 postPrepareDeviceWithIdentities:identitiesCopy allowsCellularAccess:1 completionHandler:handlerCopy];
}

- (void)setSessionEndReason:(int64_t)reason
{
  obj = self;
  objc_sync_enter(obj);
  if (!obj->super._sessionEndReason)
  {
    obj->super._sessionEndReason = reason;
  }

  objc_sync_exit(obj);
}

void __115__ASTRemoteServerSession_sessionStatusForIdentities_ticketNumber_timeout_requestQueuedSuiteInfo_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, void *a6, void *a7, uint64_t a8, void *a9, void *a10)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v14 = a6;
  v15 = a7;
  v16 = a9;
  v17 = a10;
  v18 = v17;
  if (v17)
  {
    v19 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA7E8];
    v33[0] = v17;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v21 = [v19 errorWithDomain:@"ASTErrorDomain" code:-1002 userInfo:v20];
  }

  else
  {
    v22 = +[ASTEnvironment currentEnvironment];
    [v22 setDiagsChannel:v14];

    v23 = +[ASTEnvironment currentEnvironment];
    [v23 setConfigCode:v15];

    v24 = +[ASTEnvironment currentEnvironment];
    [v24 setAssetURL:v16];

    v21 = 0;
  }

  v25 = __OFSUB__(a4, 1);
  v26 = (a4 - 1);
  if (((v26 & 0x80000000) != 0) != v25 || [*(a1 + 32) count] <= v26)
  {
    v28 = 0;
  }

  else
  {
    v27 = [*(a1 + 32) objectAtIndexedSubscript:v26];
    v28 = [v27 serialNumber];
  }

  v29 = [[ASTSessionInfo alloc] initWithIsGuided:a3 deviceSerialNumber:v28 sessionType:a8];
  (*(*(a1 + 40) + 16))();

  v30 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(ASTRemoteServerSession *)selfCopy phase])
  {
    objc_sync_exit(selfCopy);

    v3 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [ASTRemoteServerSession start];
    }

    return;
  }

  [(ASTRemoteServerSession *)selfCopy setPhase:1];
  objc_sync_exit(selfCopy);

  if (+[ASTRemoteServerSession currentProcessHasEntitlement])
  {
    [(ASTRemoteServerSession *)selfCopy _setup];
    objc_initWeak(&location, selfCopy);
    clientStatusQueue = [(ASTRemoteServerSession *)selfCopy clientStatusQueue];
    v5 = v13;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __31__ASTRemoteServerSession_start__block_invoke;
    v13[3] = &unk_278CBD6F0;
    objc_copyWeak(&v14, &location);
    v6 = v13;
LABEL_11:
    dispatch_async(clientStatusQueue, v6);

    objc_destroyWeak(v5 + 4);
    objc_destroyWeak(&location);
    return;
  }

  v7 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    [ASTRemoteServerSession start];
  }

  v8 = selfCopy;
  objc_sync_enter(v8);
  [(ASTRemoteServerSession *)v8 setPhase:0];
  objc_sync_exit(v8);

  delegate = [(ASTSession *)v8 delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    objc_initWeak(&location, v8);
    clientStatusQueue = [(ASTRemoteServerSession *)v8 delegateQueue];
    v5 = block;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __31__ASTRemoteServerSession_start__block_invoke_33;
    block[3] = &unk_278CBD6F0;
    objc_copyWeak(&v12, &location);
    v6 = block;
    goto LABEL_11;
  }
}

void __31__ASTRemoteServerSession_start__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained connectionManager];
  v3 = [v2 postEnrollAllowingCellularAccess:1];
  [WeakRetained setSessionId:v3];

  v4 = [WeakRetained sessionId];

  if (!v4)
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-1000 userInfo:0];
    [WeakRetained setClientStatusLoopError:v10];

    v11 = [WeakRetained clientStatusLoopError];
    [ASTAnalytics sendAnalyticsWithEvent:0 error:v11];

    v12 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __31__ASTRemoteServerSession_start__block_invoke_cold_3();
    }

    goto LABEL_13;
  }

  if (([WeakRetained _authInfoIfNecessary] & 1) == 0)
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-1005 userInfo:0];
    [WeakRetained setClientStatusLoopError:v13];

    v14 = [WeakRetained clientStatusLoopError];
    [ASTAnalytics sendAnalyticsWithEvent:1 error:v14];

    v12 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __31__ASTRemoteServerSession_start__block_invoke_cold_1();
    }

    goto LABEL_13;
  }

  if (([WeakRetained _profile] & 1) == 0)
  {
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-1001 userInfo:0];
    [WeakRetained setClientStatusLoopError:v15];

    v16 = [WeakRetained clientStatusLoopError];
    [ASTAnalytics sendAnalyticsWithEvent:2 error:v16];

    v12 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __31__ASTRemoteServerSession_start__block_invoke_cold_2();
    }

LABEL_13:

    [WeakRetained _teardown];
    goto LABEL_14;
  }

  v5 = [WeakRetained context];
  v6 = [v5 controlCommand];

  if (v6)
  {
    v7 = [WeakRetained context];
    v8 = [v7 controlCommand];
    v9 = [WeakRetained delegateQueue];
    [v8 performActionsWithSession:WeakRetained queue:v9];
  }

  [WeakRetained _startClientStatusLoop];
LABEL_14:
}

void __31__ASTRemoteServerSession_start__block_invoke_33(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-2000 userInfo:0];
  v2 = [WeakRetained delegate];
  [v2 session:WeakRetained didEndWithError:v1];

  [ASTAnalytics sendAnalyticsWithEvent:0 error:v1];
}

- (void)idleWithCompletion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sessionId = [(ASTRemoteServerSession *)self sessionId];
    v12 = 138412290;
    v13 = sessionId;
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[IDLE] (%@)", &v12, 0xCu);
  }

  v7 = [completionCopy copy];
  clientAbortCompletion = self->_clientAbortCompletion;
  self->_clientAbortCompletion = v7;

  [(ASTRemoteServerSession *)self setShouldAbort:1];
  backoffTimer = [(ASTRemoteServerSession *)self backoffTimer];

  if (backoffTimer)
  {
    backoffTimer2 = [(ASTRemoteServerSession *)self backoffTimer];
    dispatch_semaphore_signal(backoffTimer2);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)end
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    sessionId = [(ASTRemoteServerSession *)self sessionId];
    v6 = 138412290;
    v7 = sessionId;
    _os_log_impl(&dword_240F3C000, v3, OS_LOG_TYPE_DEFAULT, "[END] (%@)", &v6, 0xCu);
  }

  [(ASTRemoteServerSession *)self _endAndUnenrollIfNecessary:1];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    sessionId = [(ASTRemoteServerSession *)self sessionId];
    *buf = 138412290;
    v10 = sessionId;
    _os_log_impl(&dword_240F3C000, v3, OS_LOG_TYPE_DEFAULT, "[INVALIDATE] (%@)", buf, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(ASTRemoteServerSession *)selfCopy setPhase:3];
  objc_sync_exit(selfCopy);

  objc_initWeak(buf, selfCopy);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__ASTRemoteServerSession_invalidate__block_invoke;
  v7[3] = &unk_278CBD6F0;
  objc_copyWeak(&v8, buf);
  [(ASTRemoteServerSession *)selfCopy setSessionTeardownCompletion:v7];
  [(ASTRemoteServerSession *)selfCopy _endAndUnenrollIfNecessary:0];
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
  v6 = *MEMORY[0x277D85DE8];
}

void __36__ASTRemoteServerSession_invalidate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    v6 = [v5 delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__ASTRemoteServerSession_invalidate__block_invoke_2;
    block[3] = &unk_278CBD6F0;
    objc_copyWeak(&v8, (a1 + 32));
    dispatch_async(v6, block);

    objc_destroyWeak(&v8);
  }
}

void __36__ASTRemoteServerSession_invalidate__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 sessionDidInvalidate:v3];
}

- (void)archive
{
  sessionId = [(ASTRemoteServerSession *)self sessionId];

  if (sessionId)
  {
    connectionManager = [(ASTRemoteServerSession *)self connectionManager];
    sessionId2 = [(ASTRemoteServerSession *)self sessionId];
    payloadSigner = [(ASTRemoteServerSession *)self payloadSigner];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __33__ASTRemoteServerSession_archive__block_invoke;
    v8[3] = &unk_278CBD590;
    v8[4] = self;
    [connectionManager requestSessionArchiveWithSessionID:sessionId2 withPayloadSigner:payloadSigner allowsCellularAccess:1 completionHandler:v8];
  }

  else
  {
    v7 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ASTRemoteServerSession archive];
    }
  }
}

void __33__ASTRemoteServerSession_archive__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __33__ASTRemoteServerSession_archive__block_invoke_cold_1(a1, v3);
    }
  }
}

- (void)_startClientStatusLoop
{
  v63 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(ASTRemoteServerSession *)selfCopy setPhase:2];
  objc_sync_exit(selfCopy);

  objc_initWeak(&location, selfCopy);
  delegate = [(ASTSession *)selfCopy delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegateQueue = [(ASTRemoteServerSession *)selfCopy delegateQueue];
    block = MEMORY[0x277D85DD0];
    v54 = 3221225472;
    v55 = __48__ASTRemoteServerSession__startClientStatusLoop__block_invoke;
    v56 = &unk_278CBD6F0;
    objc_copyWeak(&v57, &location);
    dispatch_async(delegateQueue, &block);

    objc_destroyWeak(&v57);
  }

  v6 = objc_alloc_init(ASTRequest);
  date = [MEMORY[0x277CBEAA8] date];
  context = [(ASTSession *)selfCopy context];
  clientStatus = [context clientStatus];

  if ((clientStatus - 13) < 2)
  {
    context2 = [(ASTSession *)selfCopy context];
    controlCommand = [context2 controlCommand];
    requestData = [controlCommand requestData];
    [(ASTRequest *)v6 setData:requestData];

LABEL_7:
    context3 = [(ASTSession *)selfCopy context];
    -[ASTRequest setClientStatus:](v6, "setClientStatus:", [context3 clientStatus]);

    goto LABEL_8;
  }

  if (clientStatus)
  {
    goto LABEL_7;
  }

  [(ASTRequest *)v6 setClientStatus:1];
LABEL_8:
  *&v13 = 138412290;
  v52 = v13;
  while ([(ASTRemoteServerSession *)selfCopy shouldContinueRequestLoop:v52])
  {
    v15 = objc_autoreleasePoolPush();
    if ([(ASTRemoteServerSession *)selfCopy shouldAbort])
    {
      [(ASTRemoteServerSession *)selfCopy setShouldAbort:0];
      _clientAbort = [(ASTRemoteServerSession *)selfCopy _clientAbort];

      v6 = _clientAbort;
    }

    clientStatus2 = [(ASTRequest *)v6 clientStatus];
    context4 = [(ASTSession *)selfCopy context];
    [context4 setClientStatus:clientStatus2];

    v19 = [(ASTRemoteServerSession *)selfCopy _sendRequest:v6];
    v20 = v19;
    if (!v19)
    {
      _retryRequest = [(ASTRemoteServerSession *)selfCopy _retryRequest];
      goto LABEL_20;
    }

    progress = [v19 progress];
    [(ASTRemoteServerSession *)selfCopy _updateProgress:progress];

    command = [v20 command];
    if (![(ASTRemoteServerSession *)selfCopy _validateCommand:command clientStatus:[(ASTRequest *)v6 clientStatus]])
    {
      [(ASTRemoteServerSession *)selfCopy _protocolError];
      _retryRequest = [(ASTRemoteServerSession *)selfCopy _retryRequest];
LABEL_20:
      context7 = v6;
      v6 = _retryRequest;
LABEL_21:

      goto LABEL_22;
    }

    command2 = [v20 command];
    context5 = [(ASTSession *)selfCopy context];
    [context5 setCommand:command2];

    if (command != 7)
    {
      [(ASTRemoteServerSession *)selfCopy setBackoffCounter:0];
    }

    [(ASTRemoteServerSession *)selfCopy setRetryCounter:0];
    switch(command)
    {
      case 1:
        _idle = [(ASTRemoteServerSession *)selfCopy _idle];
        goto LABEL_38;
      case 2:
        data = [v20 data];
        v31 = [(ASTRemoteServerSession *)selfCopy _updateUIWithData:data];
        goto LABEL_35;
      case 3:
        data = [v20 testId];
        data2 = [v20 data];
        v37 = [(ASTRemoteServerSession *)selfCopy _startNewTest:data data:data2];
        goto LABEL_30;
      case 4:
        data = [v20 testId];
        v31 = [(ASTRemoteServerSession *)selfCopy _sendTestResults:data];
        goto LABEL_35;
      case 5:
        data = [v20 data];
        v31 = [(ASTRemoteServerSession *)selfCopy _sendPropertiesWithData:data];
        goto LABEL_35;
      case 6:
        data = [v20 data];
        v31 = [(ASTRemoteServerSession *)selfCopy _updateSessionSettingsWithData:data];
        goto LABEL_35;
      case 7:
        _idle = [(ASTRemoteServerSession *)selfCopy _continueWithLastRequest:v6];
        goto LABEL_38;
      case 8:
        _idle = [(ASTRemoteServerSession *)selfCopy _abort];
LABEL_38:
        v37 = _idle;
        goto LABEL_39;
      case 9:
        [(ASTRemoteServerSession *)selfCopy _archive];
        v29 = 1;
        goto LABEL_43;
      case 10:
        v32 = ASTLogHandleForCategory(0);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          sessionId = [(ASTRemoteServerSession *)selfCopy sessionId];
          *buf = v52;
          v62 = sessionId;
          _os_log_impl(&dword_240F3C000, v32, OS_LOG_TYPE_DEFAULT, "[CONTROL] (%@)", buf, 0xCu);
        }

        data = [(ASTSession *)selfCopy context];
        data2 = [(ASTRequest *)data controlCommand];
        data3 = [v20 data];
        delegateQueue2 = [(ASTRemoteServerSession *)selfCopy delegateQueue];
        v37 = [(ASTRequest *)data2 requestWithData:data3 session:selfCopy queue:delegateQueue2];

        v6 = data3;
LABEL_30:

        v6 = data2;
        goto LABEL_36;
      case 11:
        data4 = [v20 data];
        [(ASTRemoteServerSession *)selfCopy _rebootWithData:data4];
        v29 = 2;
        goto LABEL_41;
      case 12:
        data4 = [v20 data];
        [(ASTRemoteServerSession *)selfCopy _shutdownWithData:data4];
        v29 = 3;
LABEL_41:

LABEL_43:
        [(ASTRemoteServerSession *)selfCopy setSessionEndReason:v29];
        [(ASTRemoteServerSession *)selfCopy setShouldContinueRequestLoop:0];
        break;
      case 13:
        data = [v20 data];
        v31 = [(ASTRemoteServerSession *)selfCopy _showInstructionalPromptWithData:data];
LABEL_35:
        v37 = v31;
LABEL_36:

        v6 = data;
LABEL_39:

        v6 = v37;
        break;
      default:
        break;
    }

    if ([(ASTRequest *)v6 clientStatus]!= 13 && [(ASTRequest *)v6 clientStatus]!= 14)
    {
      context6 = [(ASTSession *)selfCopy context];
      v39 = [context6 clientStatus] == 14;

      if (v39)
      {
        context7 = [(ASTSession *)selfCopy context];
        controlCommand2 = [context7 controlCommand];
        [controlCommand2 reset];

        goto LABEL_21;
      }
    }

LABEL_22:

    objc_autoreleasePoolPop(v15);
  }

  if ([(ASTRemoteServerSession *)selfCopy shouldUnenroll])
  {
    v41 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      sessionId2 = [(ASTRemoteServerSession *)selfCopy sessionId];
      *buf = v52;
      v62 = sessionId2;
      _os_log_impl(&dword_240F3C000, v41, OS_LOG_TYPE_DEFAULT, "[UNENROLL] (%@)", buf, 0xCu);
    }

    v43 = +[ASTRequest request];
    [v43 setClientStatus:9];
    [(ASTRemoteServerSession *)selfCopy setSessionEndReason:4];
    payloadSigner = [(ASTRemoteServerSession *)selfCopy payloadSigner];
    [v43 sealWithPayloadSigner:payloadSigner error:0];

    v45 = [(ASTRemoteServerSession *)selfCopy _shouldAllowCellularForSealedSealablePayload:v43];
    connectionManager = [(ASTRemoteServerSession *)selfCopy connectionManager];
    v47 = [connectionManager postRequest:v43 allowsCellularAccess:v45];

    date2 = [MEMORY[0x277CBEAA8] date];
    [date2 timeIntervalSinceDate:date];
    v59 = @"sessionDuration";
    v49 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v60 = v49;
    v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
    [ASTAnalytics sendAnalyticsWithEvent:3 payloadDict:v50];
  }

  [(ASTRemoteServerSession *)selfCopy _teardown];

  objc_destroyWeak(&location);
  v51 = *MEMORY[0x277D85DE8];
}

void __48__ASTRemoteServerSession__startClientStatusLoop__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 sessionDidStart:WeakRetained];
}

- (void)_setup
{
  [(ASTRemoteServerSession *)self setShouldContinueRequestLoop:1];
  [(ASTRemoteServerSession *)self setShouldUnenroll:0];
  [(ASTRemoteServerSession *)self setShouldAbort:0];
  [(ASTRemoteServerSession *)self setRetryCounter:0];
  [(ASTRemoteServerSession *)self setBackoffCounter:0];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [(ASTRemoteServerSession *)self setRunningTests:dictionary];

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  [(ASTRemoteServerSession *)self setPendingTestResults:dictionary2];

  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__ASTRemoteServerSession__setup__block_invoke;
  v5[3] = &unk_278CBD6F0;
  objc_copyWeak(&v6, &location);
  [(ASTRemoteServerSession *)self setSessionTeardownCompletion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __32__ASTRemoteServerSession__setup__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    v6 = [v5 delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__ASTRemoteServerSession__setup__block_invoke_2;
    block[3] = &unk_278CBD6F0;
    objc_copyWeak(&v8, (a1 + 32));
    dispatch_async(v6, block);

    objc_destroyWeak(&v8);
  }
}

void __32__ASTRemoteServerSession__setup__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 clientStatusLoopError];
  [v2 session:v3 didEndWithError:v4];
}

- (void)_teardown
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[ASTRemoteServerSession _teardown]";
    _os_log_impl(&dword_240F3C000, v3, OS_LOG_TYPE_DEFAULT, "[ASTRemoteServerSession] %s", &v10, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  phase = [(ASTRemoteServerSession *)selfCopy phase];
  objc_sync_exit(selfCopy);

  if (phase != 3)
  {
    [(ASTRemoteServerSession *)selfCopy _cancelControlExecution];
  }

  [(ASTRemoteServerSession *)selfCopy _cancelRunningTests];
  v6 = selfCopy;
  objc_sync_enter(v6);
  [(ASTRemoteServerSession *)v6 setPhase:0];
  objc_sync_exit(v6);

  sessionTeardownCompletion = [(ASTRemoteServerSession *)v6 sessionTeardownCompletion];

  if (sessionTeardownCompletion)
  {
    sessionTeardownCompletion2 = [(ASTRemoteServerSession *)v6 sessionTeardownCompletion];
    sessionTeardownCompletion2[2]();
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)_authInfoIfNecessary
{
  v22 = *MEMORY[0x277D85DE8];
  if ([(ASTRemoteServerSession *)self phase]== 4)
  {
    v3 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v21 = "[ASTRemoteServerSession _authInfoIfNecessary]";
      _os_log_impl(&dword_240F3C000, v3, OS_LOG_TYPE_DEFAULT, "[ASTRemoteServerSession] %s session has been requested to end, exiting..", buf, 0xCu);
    }

    v4 = 0;
  }

  else
  {
    v5 = dispatch_semaphore_create(0);
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(ASTRemoteServerSession *)selfCopy setPendingAuthInfoSemaphore:v5];
    objc_sync_exit(selfCopy);

    objc_initWeak(buf, selfCopy);
    delegateQueue = [(ASTRemoteServerSession *)selfCopy delegateQueue];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __46__ASTRemoteServerSession__authInfoIfNecessary__block_invoke;
    v17 = &unk_278CBD718;
    objc_copyWeak(&v19, buf);
    v3 = v5;
    v18 = v3;
    dispatch_async(delegateQueue, &v14);

    dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
    v8 = selfCopy;
    objc_sync_enter(v8);
    v9 = [(ASTRemoteServerSession *)v8 pendingAuthInfoResult:v14];
    [(ASTRemoteServerSession *)v8 setPendingAuthInfoResult:0];
    [(ASTRemoteServerSession *)v8 setPendingAuthInfoSemaphore:0];
    objc_sync_exit(v8);

    if (v9)
    {
      v10 = [(ASTRemoteServerSession *)v8 _shouldAllowCellularForSealedSealablePayload:v9];
      connectionManager = [(ASTRemoteServerSession *)v8 connectionManager];
      v4 = [(ASTRemoteServerSession *)connectionManager postAuthInfo:v9 allowsCellularAccess:v10];
    }

    else
    {
      connectionManager = v8;
      objc_sync_enter(connectionManager);
      v4 = [(ASTRemoteServerSession *)connectionManager phase]== 1;
      objc_sync_exit(connectionManager);
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

void __46__ASTRemoteServerSession__authInfoIfNecessary__block_invoke(uint64_t a1)
{
  v12[2] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained delegate];
  v4 = [v3 conformsToProtocol:&unk_2852D8970];

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [WeakRetained delegate];
    v7 = objc_alloc(MEMORY[0x277CCAD78]);
    v8 = [WeakRetained sessionId];
    v9 = [v7 initWithUUIDString:v8];

    v12[0] = 0;
    v12[1] = 0;
    [v9 getUUIDBytes:v12];
    v10 = [MEMORY[0x277CBEA90] dataWithBytes:v12 length:16];
    [v6 session:WeakRetained generateAuthInfoWithNonce:v10];

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    dispatch_semaphore_signal(*(a1 + 32));
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)_profile
{
  v24 = *MEMORY[0x277D85DE8];
  if ([(ASTRemoteServerSession *)self phase]== 4)
  {
    v3 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[ASTRemoteServerSession _profile]";
      _os_log_impl(&dword_240F3C000, v3, OS_LOG_TYPE_DEFAULT, "[ASTRemoteServerSession] %s session has been requested to end, exiting..", &buf, 0xCu);
    }

    v4 = 0;
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__4;
    v22 = __Block_byref_object_dispose__4;
    context = [(ASTSession *)self context];
    identity = [context identity];
    v23 = [ASTProfileResult resultWithIdentity:identity];

    v7 = dispatch_semaphore_create(0);
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(ASTRemoteServerSession *)selfCopy setPendingProfileSemaphore:v7];
    objc_sync_exit(selfCopy);

    objc_initWeak(&location, selfCopy);
    delegateQueue = [(ASTRemoteServerSession *)selfCopy delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__ASTRemoteServerSession__profile__block_invoke;
    block[3] = &unk_278CBD740;
    objc_copyWeak(&v17, &location);
    block[4] = &buf;
    dispatch_async(delegateQueue, block);

    dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
    v10 = selfCopy;
    objc_sync_enter(v10);
    pendingProfileResult = [(ASTRemoteServerSession *)v10 pendingProfileResult];
    [(ASTRemoteServerSession *)v10 setPendingProfileSemaphore:0];
    [(ASTRemoteServerSession *)v10 setPendingProfileResult:0];
    objc_sync_exit(v10);

    if (pendingProfileResult)
    {
      v12 = [(ASTRemoteServerSession *)v10 _shouldAllowCellularForSealedSealablePayload:pendingProfileResult];
      connectionManager = [(ASTRemoteServerSession *)v10 connectionManager];
      v4 = [connectionManager postProfile:pendingProfileResult allowsCellularAccess:v12];
    }

    else
    {
      v4 = 0;
    }

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);

    _Block_object_dispose(&buf, 8);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v4;
}

void __34__ASTRemoteServerSession__profile__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained delegate];
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v6 = [MEMORY[0x277CBEA60] array];
  [v4 session:WeakRetained profile:v5 filteredByComponents:v6];

  objc_autoreleasePoolPop(v2);
}

- (id)_sendRequest:(id)request
{
  requestCopy = request;
  runningTests = [(ASTRemoteServerSession *)self runningTests];
  objc_sync_enter(runningTests);
  runningTests2 = [(ASTRemoteServerSession *)self runningTests];
  allKeys = [runningTests2 allKeys];

  objc_sync_exit(runningTests);
  pendingTestResults = [(ASTRemoteServerSession *)self pendingTestResults];
  allKeys2 = [pendingTestResults allKeys];

  if (allKeys && ([allKeys count] || objc_msgSend(allKeys2, "count")))
  {
    runningTests3 = [(ASTRemoteServerSession *)self runningTests];
    allKeys3 = [runningTests3 allKeys];
    firstObject = [allKeys3 firstObject];

    pendingTestResults2 = [(ASTRemoteServerSession *)self pendingTestResults];
    allKeys4 = [pendingTestResults2 allKeys];
    firstObject2 = [allKeys4 firstObject];

    if (firstObject)
    {
      v16 = firstObject;
    }

    else
    {
      v16 = firstObject2;
    }

    v17 = v16;
    [requestCopy setCurrentTest:v17];
    if (firstObject)
    {
      delegate = [(ASTSession *)self delegate];
      v19 = objc_opt_respondsToSelector();

      if (v19)
      {
        delegateQueue = [(ASTRemoteServerSession *)self delegateQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __39__ASTRemoteServerSession__sendRequest___block_invoke;
        block[3] = &unk_278CBCF40;
        block[4] = self;
        v37 = firstObject;
        v38 = requestCopy;
        dispatch_sync(delegateQueue, block);
      }

      if (+[ASTRequest isEstimatedTimeRemainingFeatureEnabled])
      {
        delegate2 = [(ASTSession *)self delegate];
        v22 = objc_opt_respondsToSelector();

        if (v22)
        {
          delegateQueue2 = [(ASTRemoteServerSession *)self delegateQueue];
          v29 = MEMORY[0x277D85DD0];
          v30 = 3221225472;
          v31 = __39__ASTRemoteServerSession__sendRequest___block_invoke_2;
          v32 = &unk_278CBCF40;
          selfCopy = self;
          v34 = firstObject;
          v35 = requestCopy;
          dispatch_sync(delegateQueue2, &v29);
        }
      }
    }

    else if ([requestCopy clientStatus] == 4)
    {
      [requestCopy setProgress:&unk_2852D60A8];
      [requestCopy setEstimatedTimeRemaining:&unk_2852D60C0];
    }
  }

  v24 = [(ASTRemoteServerSession *)self payloadSigner:v29];
  [requestCopy sealWithPayloadSigner:v24 error:0];

  v25 = [(ASTRemoteServerSession *)self _shouldAllowCellularForSealedSealablePayload:requestCopy];
  connectionManager = [(ASTRemoteServerSession *)self connectionManager];
  v27 = [connectionManager postRequest:requestCopy allowsCellularAccess:v25];

  return v27;
}

void __39__ASTRemoteServerSession__sendRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v7 = [v2 session:*(a1 + 32) progressForTest:*(a1 + 40)];

  v3 = v7;
  if (v7)
  {
    v4 = MEMORY[0x277CCABB0];
    [v7 doubleValue];
    v6 = [v4 numberWithDouble:round(v5)];
    [*(a1 + 48) setProgress:v6];

    v3 = v7;
  }
}

void __39__ASTRemoteServerSession__sendRequest___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v7 = [v2 session:*(a1 + 32) estimatedTimeRemainingForTest:*(a1 + 40)];

  v3 = v7;
  if (v7)
  {
    v4 = MEMORY[0x277CCABB0];
    [v7 doubleValue];
    v6 = [v4 numberWithDouble:round(v5)];
    [*(a1 + 48) setEstimatedTimeRemaining:v6];

    v3 = v7;
  }
}

- (void)_updateProgress:(id)progress
{
  progressCopy = progress;
  if (progressCopy)
  {
    delegate = [(ASTSession *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      objc_initWeak(&location, self);
      delegateQueue = [(ASTRemoteServerSession *)self delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __42__ASTRemoteServerSession__updateProgress___block_invoke;
      block[3] = &unk_278CBD718;
      objc_copyWeak(&v10, &location);
      v9 = progressCopy;
      dispatch_async(delegateQueue, block);

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }
}

void __42__ASTRemoteServerSession__updateProgress___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  [v2 session:WeakRetained didUpdateTestSuiteProgress:*(a1 + 32)];
}

- (id)_idle
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    sessionId = [(ASTRemoteServerSession *)self sessionId];
    v8 = 138412290;
    v9 = sessionId;
    _os_log_impl(&dword_240F3C000, v3, OS_LOG_TYPE_DEFAULT, "[IDLE] (%@)", &v8, 0xCu);
  }

  [(ASTRemoteServerSession *)self _backoff];
  v5 = +[ASTRequest request];
  [v5 setClientStatus:1];
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_updateUIWithData:(id)data
{
  v30 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sessionId = [(ASTRemoteServerSession *)self sessionId];
    *buf = 138412290;
    v29 = sessionId;
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[UPDATE UI] (%@)", buf, 0xCu);
  }

  v7 = +[ASTRequest request];
  [v7 setClientStatus:2];
  v8 = [dataCopy objectForKeyedSubscript:@"action"];
  if ([v8 isEqualToString:@"TestSuiteStarting"])
  {
    context = [(ASTSession *)self context];
    [context setTestSuiteRunning:1];

    delegate = [(ASTSession *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if ((v11 & 1) == 0)
    {
      goto LABEL_9;
    }

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __44__ASTRemoteServerSession__updateUIWithData___block_invoke;
    v25[3] = &unk_278CBD790;
    v26 = dataCopy;
    selfCopy = self;
    [ASTLocalization prepareLocalizedStringsWithCompletionHandler:v25];
    v12 = v26;
    goto LABEL_8;
  }

  if ([v8 isEqualToString:@"TestSuiteComplete"])
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __44__ASTRemoteServerSession__updateUIWithData___block_invoke_3;
    v23[3] = &unk_278CBCF18;
    v23[4] = self;
    v24 = dataCopy;
    [v7 setCompletion:v23];
    v12 = v24;
LABEL_8:

    goto LABEL_9;
  }

  if ([v8 isEqualToString:@"TestSuiteImage"])
  {
    v15 = [dataCopy objectForKeyedSubscript:@"imageName"];
    v16 = v15;
    if (v15)
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __44__ASTRemoteServerSession__updateUIWithData___block_invoke_6;
      v21[3] = &unk_278CBD7B8;
      v21[4] = self;
      v22 = v15;
      [(ASTSession *)self requestAsset:v22 completionHandler:v21];
    }

    else
    {
      v19 = ASTLogHandleForCategory(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [ASTRemoteServerSession _updateUIWithData:];
      }

      _retryRequest = [(ASTRemoteServerSession *)self _retryRequest];

      v7 = _retryRequest;
    }
  }

  else
  {
    v17 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(ASTRemoteServerSession *)v8 _updateUIWithData:v17];
    }

    _retryRequest2 = [(ASTRemoteServerSession *)self _retryRequest];

    v7 = _retryRequest2;
  }

LABEL_9:

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

void __44__ASTRemoteServerSession__updateUIWithData___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) objectForKeyedSubscript:@"viewTitle"];
  v6 = [ASTLocalization localizedStringForKey:v5];

  v7 = [*(a1 + 32) objectForKeyedSubscript:@"suiteName"];
  v8 = [ASTLocalization localizedStringForKey:v7];

  objc_initWeak(&location, *(a1 + 40));
  v9 = [*(a1 + 40) delegateQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__ASTRemoteServerSession__updateUIWithData___block_invoke_2;
  v12[3] = &unk_278CBD768;
  objc_copyWeak(&v15, &location);
  v13 = v8;
  v14 = v6;
  v10 = v6;
  v11 = v8;
  dispatch_async(v9, v12);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __44__ASTRemoteServerSession__updateUIWithData___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained delegate];
  [v2 session:WeakRetained didStartTestSuite:*(a1 + 32) description:*(a1 + 40)];
}

void __44__ASTRemoteServerSession__updateUIWithData___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  [v2 setTestSuiteRunning:0];

  v3 = [*(a1 + 32) delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__ASTRemoteServerSession__updateUIWithData___block_invoke_4;
    v7[3] = &unk_278CBD790;
    v5 = *(a1 + 40);
    v6 = *(a1 + 32);
    v8 = v5;
    v9 = v6;
    [ASTLocalization prepareLocalizedStringsWithCompletionHandler:v7];
  }
}

void __44__ASTRemoteServerSession__updateUIWithData___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) objectForKeyedSubscript:@"viewTitle"];
  v6 = [ASTLocalization localizedStringForKey:v5];

  v7 = [*(a1 + 32) objectForKeyedSubscript:@"suiteName"];
  v8 = [ASTLocalization localizedStringForKey:v7];

  objc_initWeak(&location, *(a1 + 40));
  v9 = [*(a1 + 40) delegateQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__ASTRemoteServerSession__updateUIWithData___block_invoke_5;
  v12[3] = &unk_278CBD768;
  objc_copyWeak(&v15, &location);
  v13 = v8;
  v14 = v6;
  v10 = v6;
  v11 = v8;
  dispatch_async(v9, v12);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __44__ASTRemoteServerSession__updateUIWithData___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained delegate];
  [v2 session:WeakRetained didCompleteTestSuite:*(a1 + 32) description:*(a1 + 40)];
}

void __44__ASTRemoteServerSession__updateUIWithData___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      objc_initWeak(&location, *(a1 + 32));
      v9 = [*(a1 + 32) delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __44__ASTRemoteServerSession__updateUIWithData___block_invoke_7;
      block[3] = &unk_278CBD718;
      objc_copyWeak(&v13, &location);
      v12 = v5;
      dispatch_async(v9, block);

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v10 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __44__ASTRemoteServerSession__updateUIWithData___block_invoke_6_cold_1(a1, v6, v10);
    }
  }
}

void __44__ASTRemoteServerSession__updateUIWithData___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  [v2 session:WeakRetained didUpdateTestSuiteImage:*(a1 + 32)];
}

- (id)_startNewTest:(id)test data:(id)data
{
  v32 = *MEMORY[0x277D85DE8];
  testCopy = test;
  dataCopy = data;
  v8 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sessionId = [(ASTRemoteServerSession *)self sessionId];
    *buf = 138412290;
    v31 = sessionId;
    _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "[START NEW TEST] (%@)", buf, 0xCu);
  }

  v10 = +[ASTRequest request];
  [v10 setClientStatus:4];
  delegate = [(ASTSession *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [ASTTestResult resultWithTestId:testCopy parameters:dataCopy];
    v14 = dispatch_semaphore_create(0);
    runningTests = [(ASTRemoteServerSession *)self runningTests];
    objc_sync_enter(runningTests);
    runningTests2 = [(ASTRemoteServerSession *)self runningTests];
    [runningTests2 setObject:v14 forKeyedSubscript:testCopy];

    objc_sync_exit(runningTests);
    objc_initWeak(buf, self);
    delegateQueue = [(ASTRemoteServerSession *)self delegateQueue];
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __45__ASTRemoteServerSession__startNewTest_data___block_invoke;
    v25 = &unk_278CBD7E0;
    objc_copyWeak(&v29, buf);
    v26 = testCopy;
    v27 = dataCopy;
    v18 = v13;
    v28 = v18;
    dispatch_async(delegateQueue, &v22);

    v19 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v14, v19))
    {
      [v10 setClientStatus:{3, v22, v23, v24, v25, v26, v27}];
    }

    objc_destroyWeak(&v29);
    objc_destroyWeak(buf);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v10;
}

void __45__ASTRemoteServerSession__startNewTest_data___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained delegate];
  [v2 session:WeakRetained startTest:*(a1 + 32) parameters:*(a1 + 40) testResult:*(a1 + 48)];
}

- (id)_sendTestResults:(id)results
{
  v64 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sessionId = [(ASTRemoteServerSession *)self sessionId];
    *buf = 138412290;
    v63 = sessionId;
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[SEND TEST RESULTS] (%@)", buf, 0xCu);
  }

  pendingTestResults = [(ASTRemoteServerSession *)self pendingTestResults];
  v8 = [pendingTestResults objectForKeyedSubscript:resultsCopy];

  v9 = +[ASTRequest request];
  v10 = v9;
  v50 = v8;
  if (v8)
  {
    v48 = [(ASTRemoteServerSession *)self _shouldAllowCellularForSealedTestResult:v8];
    v11 = dispatch_group_create();
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __43__ASTRemoteServerSession__sendTestResults___block_invoke;
    v56[3] = &unk_278CBD808;
    v56[4] = self;
    v47 = resultsCopy;
    v57 = v47;
    v12 = v11;
    v58 = v12;
    v49 = MEMORY[0x245CD5130](v56);
    files = [v8 files];
    if (files && (v14 = files, [v8 files], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "count"), v15, v14, v16))
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      files2 = [v50 files];
      v51 = [files2 countByEnumeratingWithState:&v52 objects:v61 count:16];
      if (v51)
      {
        v41 = v10;
        v42 = resultsCopy;
        v44 = *v53;
        v45 = v12;
        v18 = 1;
        obj = files2;
        do
        {
          for (i = 0; i != v51; ++i)
          {
            if (*v53 != v44)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v52 + 1) + 8 * i);
            dispatch_group_enter(v12);
            connectionManager = [(ASTRemoteServerSession *)self connectionManager];
            v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v18];
            v23 = MEMORY[0x277CCACA8];
            files3 = [v50 files];
            v25 = [v23 stringWithFormat:@"%lu", objc_msgSend(files3, "count")];
            v26 = v20;
            [v20 fileURL];
            v28 = v27 = self;
            lastPathComponent = [v28 lastPathComponent];
            [connectionManager postSealableFile:v26 fileSequence:v22 totalFiles:v25 testId:v47 dataId:lastPathComponent allowsCellularAccess:v48 completion:v49];

            self = v27;
            v12 = v45;

            ++v18;
          }

          files2 = obj;
          v51 = [obj countByEnumeratingWithState:&v52 objects:v61 count:16];
        }

        while (v51);
        v10 = v41;
        resultsCopy = v42;
      }
    }

    else
    {
      dispatch_group_enter(v12);
      files2 = [(ASTRemoteServerSession *)self connectionManager];
      [files2 postTestResult:v50 allowsCellularAccess:v48 completion:v49];
    }

    v30 = dispatch_time(0, 5000000000);
    if (dispatch_group_wait(v12, v30))
    {
      [v10 setClientStatus:5];
    }

    else
    {
      [v10 setClientStatus:6];
      v59[0] = @"testID";
      v46 = v12;
      v31 = MEMORY[0x277CCACA8];
      testId = [v50 testId];
      v33 = [v31 stringWithFormat:@"%@", testId];
      v60[0] = v33;
      v59[1] = @"statusCode";
      statusCode = [v50 statusCode];
      v60[1] = statusCode;
      v59[2] = @"statusCodeStr";
      v35 = MEMORY[0x277CCACA8];
      statusCode2 = [v50 statusCode];
      v37 = [v35 stringWithFormat:@"%@", statusCode2];
      v60[2] = v37;
      v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:3];
      [ASTAnalytics sendAnalyticsWithEvent:4 payloadDict:v38];

      v12 = v46;
    }
  }

  else
  {
    [v9 setClientStatus:8];
  }

  v39 = *MEMORY[0x277D85DE8];

  return v10;
}

void __43__ASTRemoteServerSession__sendTestResults___block_invoke(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) pendingTestResults];
  [v4 removeObjectForKey:*(a1 + 40)];

  if ((a2 & 1) == 0)
  {
    v5 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __43__ASTRemoteServerSession__sendTestResults___block_invoke_cold_1();
    }
  }

  dispatch_group_leave(*(a1 + 48));
  v6 = [*(a1 + 32) backoffTimer];

  if (v6)
  {
    v7 = [*(a1 + 32) backoffTimer];
    dispatch_semaphore_signal(v7);
  }

  v8 = [*(a1 + 32) delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    objc_initWeak(&location, *(a1 + 32));
    v10 = [*(a1 + 32) delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__ASTRemoteServerSession__sendTestResults___block_invoke_154;
    block[3] = &unk_278CBD718;
    objc_copyWeak(&v13, &location);
    v12 = *(a1 + 40);
    dispatch_async(v10, block);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __43__ASTRemoteServerSession__sendTestResults___block_invoke_154(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  [v2 session:WeakRetained didFinishSendingResultForTest:*(a1 + 32)];
}

- (id)_continueWithLastRequest:(id)request
{
  v33 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sessionId = [(ASTRemoteServerSession *)self sessionId];
    *buf = 138412290;
    v32 = sessionId;
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[CONTINUE] (%@)", buf, 0xCu);
  }

  v7 = requestCopy;
  if ([v7 clientStatus] == 3)
  {
    runningTests = [(ASTRemoteServerSession *)self runningTests];
    v9 = [runningTests count];

    if (!v9)
    {
      v12 = +[ASTRequest request];

      v23 = v12;
      v24 = 4;
LABEL_16:
      [v23 setClientStatus:v24];
      goto LABEL_17;
    }
  }

  if ([v7 clientStatus] == 5)
  {
    pendingTestResults = [(ASTRemoteServerSession *)self pendingTestResults];
    v11 = [pendingTestResults count];

    if (!v11)
    {
      v12 = +[ASTRequest request];

      v23 = v12;
      v24 = 6;
      goto LABEL_16;
    }
  }

  v12 = v7;
  if ([v7 clientStatus] != 13)
  {
LABEL_14:
    [(ASTRemoteServerSession *)self _backoff];
    goto LABEL_17;
  }

  v12 = +[ASTRequest request];

  context = [(ASTSession *)self context];
  controlCommand = [context controlCommand];
  allActionsFinished = [controlCommand allActionsFinished];

  if (!allActionsFinished)
  {
    [v12 setClientStatus:13];
    context2 = [(ASTSession *)self context];
    controlCommand2 = [context2 controlCommand];
    requestData = [controlCommand2 requestData];
    [v12 setData:requestData];

    goto LABEL_14;
  }

  [v12 setClientStatus:14];
  context3 = [(ASTSession *)self context];
  controlCommand3 = [context3 controlCommand];
  completionArray = [controlCommand3 completionArray];
  v19 = [completionArray count];

  if (v19)
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __51__ASTRemoteServerSession__continueWithLastRequest___block_invoke;
    v30[3] = &unk_278CBCFB0;
    v30[4] = self;
    [v12 setCompletion:v30];
  }

  context4 = [(ASTSession *)self context];
  controlCommand4 = [context4 controlCommand];
  requestData2 = [controlCommand4 requestData];
  [v12 setData:requestData2];

LABEL_17:
  v28 = *MEMORY[0x277D85DE8];

  return v12;
}

void __51__ASTRemoteServerSession__continueWithLastRequest___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) context];
  v1 = [v3 controlCommand];
  v2 = [v1 completionArray];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_7];
}

- (id)_sendPropertiesWithData:(id)data
{
  v28 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sessionId = [(ASTRemoteServerSession *)self sessionId];
    *buf = 138412290;
    v27 = sessionId;
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[SEND PROPERTIES] (%@)", buf, 0xCu);
  }

  v7 = [dataCopy objectForKeyedSubscript:@"propertyItems"];

  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = [dataCopy objectForKeyedSubscript:@"propertyItems"];
  context = [(ASTSession *)self context];
  identity = [context identity];
  v11 = [ASTProfileResult resultWithIdentity:identity];

  v12 = dispatch_semaphore_create(0);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(ASTRemoteServerSession *)selfCopy setPendingPropertiesSemaphore:v12];
  objc_sync_exit(selfCopy);

  objc_initWeak(buf, selfCopy);
  delegateQueue = [(ASTRemoteServerSession *)selfCopy delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ASTRemoteServerSession__sendPropertiesWithData___block_invoke;
  block[3] = &unk_278CBD768;
  objc_copyWeak(&v25, buf);
  v15 = v11;
  v23 = v15;
  v16 = v8;
  v24 = v16;
  dispatch_async(delegateQueue, block);

  dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  v17 = selfCopy;
  objc_sync_enter(v17);
  pendingPropertiesResult = [(ASTRemoteServerSession *)v17 pendingPropertiesResult];
  [(ASTRemoteServerSession *)v17 setPendingPropertiesSemaphore:0];
  [(ASTRemoteServerSession *)v17 setPendingPropertiesResult:0];
  objc_sync_exit(v17);

  objc_destroyWeak(&v25);
  objc_destroyWeak(buf);

  if (!pendingPropertiesResult)
  {
LABEL_5:
    pendingPropertiesResult = +[ASTRequest request];
    v19 = [(ASTErrorStatus *)ASTSendPropertiesErrorStatus errorStatusWithCode:-2];
    [pendingPropertiesResult setError:v19];

    [pendingPropertiesResult setClientStatus:10];
  }

  v20 = *MEMORY[0x277D85DE8];

  return pendingPropertiesResult;
}

void __50__ASTRemoteServerSession__sendPropertiesWithData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained delegate];
  [v2 session:WeakRetained profile:*(a1 + 32) filteredByComponents:*(a1 + 40)];
}

- (id)_updateSessionSettingsWithData:(id)data
{
  dataCopy = data;
  v5 = +[ASTRequest request];
  delegate = [(ASTSession *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = dispatch_semaphore_create(0);
    objc_initWeak(&location, self);
    delegateQueue = [(ASTRemoteServerSession *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__ASTRemoteServerSession__updateSessionSettingsWithData___block_invoke;
    block[3] = &unk_278CBD7E0;
    objc_copyWeak(&v16, &location);
    v13 = dataCopy;
    v14 = v5;
    v15 = v8;
    v10 = v8;
    dispatch_async(delegateQueue, block);

    dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  [v5 setClientStatus:11];

  return v5;
}

void __57__ASTRemoteServerSession__updateSessionSettingsWithData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained delegate];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__ASTRemoteServerSession__updateSessionSettingsWithData___block_invoke_2;
  v5[3] = &unk_278CBD850;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  [v3 session:WeakRetained didUpdateSettings:v4 completionHandler:v5];
}

void __57__ASTRemoteServerSession__updateSessionSettingsWithData___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    [*(a1 + 32) setData:v7];
  }

  if (v5)
  {
    v6 = +[ASTErrorStatus errorStatusWithCode:](ASTErrorStatus, "errorStatusWithCode:", [v5 code]);
    [*(a1 + 32) setError:v6];
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (id)_abort
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    sessionId = [(ASTRemoteServerSession *)self sessionId];
    v8 = 138412290;
    v9 = sessionId;
    _os_log_impl(&dword_240F3C000, v3, OS_LOG_TYPE_DEFAULT, "[ABORT] (%@)", &v8, 0xCu);
  }

  [(ASTRemoteServerSession *)self _abortRunningProcedures];
  v5 = +[ASTRequest request];
  [v5 setClientStatus:1];
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_clientAbort
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    sessionId = [(ASTRemoteServerSession *)self sessionId];
    v8 = 138412290;
    v9 = sessionId;
    _os_log_impl(&dword_240F3C000, v3, OS_LOG_TYPE_DEFAULT, "[CLIENT ABORT] (%@)", &v8, 0xCu);
  }

  [(ASTRemoteServerSession *)self _abortRunningProcedures];
  v5 = +[ASTRequest request];
  [v5 setClientStatus:12];
  [v5 setCompletion:self->_clientAbortCompletion];
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_archive
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    sessionId = [(ASTRemoteServerSession *)self sessionId];
    v6 = 138412290;
    v7 = sessionId;
    _os_log_impl(&dword_240F3C000, v3, OS_LOG_TYPE_DEFAULT, "[ARCHIVE] (%@)", &v6, 0xCu);
  }

  [(ASTRemoteServerSession *)self _abortRunningProcedures];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_rebootWithData:(id)data
{
  v21 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sessionId = [(ASTRemoteServerSession *)self sessionId];
    *buf = 138412290;
    v20 = sessionId;
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[REBOOT] (%@)", buf, 0xCu);
  }

  [(ASTRemoteServerSession *)self _abortRunningProcedures];
  delegate = [(ASTSession *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    objc_initWeak(buf, self);
    delegateQueue = [(ASTRemoteServerSession *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__ASTRemoteServerSession__rebootWithData___block_invoke;
    block[3] = &unk_278CBD718;
    objc_copyWeak(&v18, buf);
    v17 = dataCopy;
    dispatch_async(delegateQueue, block);

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }

  else
  {
    delegate2 = [(ASTSession *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      objc_initWeak(buf, self);
      delegateQueue2 = [(ASTRemoteServerSession *)self delegateQueue];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __42__ASTRemoteServerSession__rebootWithData___block_invoke_2;
      v14[3] = &unk_278CBD6F0;
      objc_copyWeak(&v15, buf);
      dispatch_async(delegateQueue2, v14);

      objc_destroyWeak(&v15);
      objc_destroyWeak(buf);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __42__ASTRemoteServerSession__rebootWithData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  [v2 sessionDidReboot:WeakRetained withParameters:*(a1 + 32)];
}

void __42__ASTRemoteServerSession__rebootWithData___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 sessionDidReboot:WeakRetained];
}

- (void)_shutdownWithData:(id)data
{
  v16 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sessionId = [(ASTRemoteServerSession *)self sessionId];
    *buf = 138412290;
    v15 = sessionId;
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[SHUTDOWN] (%@)", buf, 0xCu);
  }

  [(ASTRemoteServerSession *)self _abortRunningProcedures];
  delegate = [(ASTSession *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    objc_initWeak(buf, self);
    delegateQueue = [(ASTRemoteServerSession *)self delegateQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __44__ASTRemoteServerSession__shutdownWithData___block_invoke;
    v11[3] = &unk_278CBD718;
    objc_copyWeak(&v13, buf);
    v12 = dataCopy;
    dispatch_async(delegateQueue, v11);

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __44__ASTRemoteServerSession__shutdownWithData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  [v2 sessionDidShutDown:WeakRetained withParameters:*(a1 + 32)];
}

- (id)_showInstructionalPromptWithData:(id)data
{
  v46 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sessionId = [(ASTRemoteServerSession *)self sessionId];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = sessionId;
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[SHOW INSTRUCTIONS] (%@)", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__4;
  v44 = __Block_byref_object_dispose__4;
  v45 = 0;
  v7 = [dataCopy objectForKeyedSubscript:@"instructionId"];
  v8 = [dataCopy objectForKeyedSubscript:@"reference"];
  v30 = [dataCopy objectForKeyedSubscript:@"type"];
  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || v30 == 0)
  {
    _retryRequest = [(ASTRemoteServerSession *)self _retryRequest];
    v12 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = _retryRequest;

    v13 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v35 = 138412802;
      v36 = v7;
      v37 = 2112;
      v38 = v8;
      v39 = 2112;
      v40 = v30;
      _os_log_error_impl(&dword_240F3C000, v13, OS_LOG_TYPE_ERROR, "Bad instructional prompt data, identifier: %@, reference: %@, type: %@", v35, 0x20u);
    }

    v14 = *(*(&buf + 1) + 40);
  }

  else
  {
    preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
    firstObject = [preferredLanguages firstObject];

    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    localeIdentifier = [currentLocale localeIdentifier];

    connectionManager = [(ASTRemoteServerSession *)self connectionManager];
    v20 = connectionManager == 0;

    if (v20)
    {
      _retryRequest2 = [(ASTRemoteServerSession *)self _retryRequest];
      v26 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = _retryRequest2;

      v27 = ASTLogHandleForCategory(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [ASTRemoteServerSession _showInstructionalPromptWithData:];
      }

      v14 = *(*(&buf + 1) + 40);
    }

    else
    {
      v21 = dispatch_semaphore_create(0);
      connectionManager2 = [(ASTRemoteServerSession *)self connectionManager];
      payloadSigner = [(ASTRemoteServerSession *)self payloadSigner];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __59__ASTRemoteServerSession__showInstructionalPromptWithData___block_invoke;
      v31[3] = &unk_278CBD8A0;
      p_buf = &buf;
      v31[4] = self;
      v24 = v21;
      v32 = v24;
      v33 = v8;
      [connectionManager2 requestInstructionalPromptDetailsWithInstructionID:v7 type:v30 withPayloadSigner:payloadSigner language:firstObject locale:localeIdentifier allowsCellularAccess:1 completionHandler:v31];

      dispatch_semaphore_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
      v14 = *(*(&buf + 1) + 40);
    }
  }

  _Block_object_dispose(&buf, 8);
  v28 = *MEMORY[0x277D85DE8];

  return v14;
}

void __59__ASTRemoteServerSession__showInstructionalPromptWithData___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if (a3)
  {
    v7 = [v6 _retryRequest];
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    dispatch_semaphore_signal(*(a1 + 40));
  }

  else
  {
    v10 = [v6 delegate];
    v11 = *(a1 + 32);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __59__ASTRemoteServerSession__showInstructionalPromptWithData___block_invoke_2;
    v18[3] = &unk_278CBD878;
    v12 = *(a1 + 48);
    v17 = *(a1 + 32);
    v13.i64[0] = v12;
    v13.i64[1] = *(a1 + 56);
    v16 = v13;
    v14 = v17.i64[1];
    *&v15 = v16.i64[0];
    *(&v15 + 1) = v17.i64[0];
    v19 = v15;
    v20 = vzip2q_s64(v17, v16);
    [v10 session:v11 didRequestInstructionalPrompt:v5 withConfirmation:v18];
  }
}

void __59__ASTRemoteServerSession__showInstructionalPromptWithData___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6 && *(a1 + 32))
  {
    v8 = +[ASTRequest request];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v19[0] = @"instructionId";
    v19[1] = @"reference";
    v11 = *(a1 + 32);
    v20[0] = v5;
    v20[1] = v11;
    v19[2] = @"queryResponse";
    v20[2] = v7;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
    [*(*(*(a1 + 56) + 8) + 40) setData:v12];

    [*(*(*(a1 + 56) + 8) + 40) setClientStatus:15];
  }

  else
  {
    v13 = [*(a1 + 40) _retryRequest];
    v14 = *(*(a1 + 56) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    v16 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      *buf = 138412802;
      v22 = v5;
      v23 = 2112;
      v24 = v18;
      v25 = 2112;
      v26 = v7;
      _os_log_error_impl(&dword_240F3C000, v16, OS_LOG_TYPE_ERROR, "Bad instructional prompt instructionID: %@, reference: %@ or answer: %@", buf, 0x20u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 48));

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_abortRunningProcedures
{
  context = [(ASTSession *)self context];
  testSuiteRunning = [context testSuiteRunning];

  if (testSuiteRunning)
  {
    [(ASTRemoteServerSession *)self _cancelRunningTests];
    [(ASTRemoteServerSession *)self _cancelSendingTestResults];
    context2 = [(ASTSession *)self context];
    [context2 setTestSuiteRunning:0];

    delegate = [(ASTSession *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      objc_initWeak(&location, self);
      delegateQueue = [(ASTRemoteServerSession *)self delegateQueue];
      v9 = MEMORY[0x277D85DD0];
      v10 = 3221225472;
      v11 = __49__ASTRemoteServerSession__abortRunningProcedures__block_invoke;
      v12 = &unk_278CBD6F0;
      objc_copyWeak(&v13, &location);
      dispatch_async(delegateQueue, &v9);

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }

  [(ASTRemoteServerSession *)self _cancelControlExecution:v9];
}

void __49__ASTRemoteServerSession__abortRunningProcedures__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 sessionDidCancelSuite:WeakRetained];
}

- (void)_cancelRunningTests
{
  v25 = *MEMORY[0x277D85DE8];
  runningTests = [(ASTRemoteServerSession *)self runningTests];
  objc_sync_enter(runningTests);
  runningTests2 = [(ASTRemoteServerSession *)self runningTests];
  v5 = [runningTests2 copy];

  objc_sync_exit(runningTests);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        delegate = [(ASTSession *)self delegate];
        v11 = objc_opt_respondsToSelector();

        if (v11)
        {
          objc_initWeak(&location, self);
          delegateQueue = [(ASTRemoteServerSession *)self delegateQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __45__ASTRemoteServerSession__cancelRunningTests__block_invoke;
          block[3] = &unk_278CBD718;
          objc_copyWeak(&v18, &location);
          block[4] = v9;
          dispatch_async(delegateQueue, block);

          objc_destroyWeak(&v18);
          objc_destroyWeak(&location);
        }

        runningTests3 = [(ASTRemoteServerSession *)self runningTests];
        objc_sync_enter(runningTests3);
        runningTests4 = [(ASTRemoteServerSession *)self runningTests];
        [runningTests4 removeObjectForKey:v9];

        objc_sync_exit(runningTests3);
        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __45__ASTRemoteServerSession__cancelRunningTests__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  [v2 session:WeakRetained cancelTest:*(a1 + 32)];
}

- (BOOL)sendAuthInfoResult:(id)result error:(id *)error
{
  v18 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  v7 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[ASTRemoteServerSession sendAuthInfoResult:error:]";
    _os_log_impl(&dword_240F3C000, v7, OS_LOG_TYPE_DEFAULT, "[ASTRemoteServerSession] %s", &v16, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  pendingAuthInfoSemaphore = [(ASTRemoteServerSession *)selfCopy pendingAuthInfoSemaphore];
  objc_sync_exit(selfCopy);

  if (!pendingAuthInfoSemaphore)
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-1007 userInfo:0];
      *error = v13 = 0;
      goto LABEL_10;
    }

LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  if (resultCopy)
  {
    payloadSigner = [(ASTRemoteServerSession *)selfCopy payloadSigner];
    v11 = [resultCopy sealWithPayloadSigner:payloadSigner error:error];

    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v12 = selfCopy;
  objc_sync_enter(v12);
  [(ASTRemoteServerSession *)v12 setPendingAuthInfoResult:resultCopy];
  objc_sync_exit(v12);

  dispatch_semaphore_signal(pendingAuthInfoSemaphore);
  v13 = 1;
LABEL_10:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)sendProfileResult:(id)result error:(id *)error
{
  v26[1] = *MEMORY[0x277D85DE8];
  resultCopy = result;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  pendingPropertiesSemaphore = [(ASTRemoteServerSession *)selfCopy pendingPropertiesSemaphore];
  pendingProfileSemaphore = [(ASTRemoteServerSession *)selfCopy pendingProfileSemaphore];
  objc_sync_exit(selfCopy);

  if (!pendingProfileSemaphore)
  {
    if (!pendingPropertiesSemaphore)
    {
      if (error)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-1007 userInfo:0];
        *error = v13 = 0;
        goto LABEL_20;
      }

LABEL_11:
      v13 = 0;
      goto LABEL_20;
    }

    if (resultCopy)
    {
      v14 = +[ASTRequest request];
      [v14 setClientStatus:10];
      if ([resultCopy isSealed])
      {
        [v14 setData:MEMORY[0x277CBEC10]];
        v15 = [(ASTErrorStatus *)ASTSendPropertiesErrorStatus errorStatusWithCode:-3];
        [v14 setError:v15];

        if (error)
        {
          *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-4002 userInfo:0];
        }
      }

      else
      {
        properties = [resultCopy properties];
        v17 = [properties count];

        if (v17)
        {
          v25 = @"propertyItems";
          properties2 = [resultCopy properties];
          v26[0] = properties2;
          v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
          [v14 setData:v19];
        }
      }

      if (v14)
      {
        payloadSigner = [(ASTRemoteServerSession *)selfCopy payloadSigner];
        v21 = [v14 sealWithPayloadSigner:payloadSigner error:error];

        if (v21)
        {
          v22 = selfCopy;
          objc_sync_enter(v22);
          [(ASTRemoteServerSession *)v22 setPendingPropertiesResult:v14];
          objc_sync_exit(v22);

          dispatch_semaphore_signal(pendingPropertiesSemaphore);
          v13 = 1;
LABEL_19:

          goto LABEL_20;
        }
      }
    }

    else
    {
      v14 = 0;
    }

    v13 = 0;
    goto LABEL_19;
  }

  payloadSigner2 = [(ASTRemoteServerSession *)selfCopy payloadSigner];
  v11 = [resultCopy sealWithPayloadSigner:payloadSigner2 error:error];

  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = selfCopy;
  objc_sync_enter(v12);
  [(ASTRemoteServerSession *)v12 setPendingProfileResult:resultCopy];
  objc_sync_exit(v12);

  dispatch_semaphore_signal(pendingProfileSemaphore);
  v13 = 1;
LABEL_20:

  v23 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)sendTestResult:(id)result error:(id *)error
{
  resultCopy = result;
  runningTests = [(ASTRemoteServerSession *)self runningTests];
  objc_sync_enter(runningTests);
  if ([(ASTRemoteServerSession *)self phase]== 2)
  {
    runningTests2 = [(ASTRemoteServerSession *)self runningTests];
    testId = [resultCopy testId];
    v10 = [runningTests2 objectForKeyedSubscript:testId];
  }

  else
  {
    v10 = 0;
  }

  runningTests3 = [(ASTRemoteServerSession *)self runningTests];
  testId2 = [resultCopy testId];
  [runningTests3 removeObjectForKey:testId2];

  objc_sync_exit(runningTests);
  if (!v10)
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-1007 userInfo:0];
      *error = v25 = 0;
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  files = [resultCopy files];
  if (files)
  {
    v14 = files;
    files2 = [resultCopy files];
    v16 = [files2 count];

    if (v16)
    {
      fileSigner = [(ASTRemoteServerSession *)self fileSigner];
      v18 = [resultCopy sealWithFileSigner:fileSigner error:error];

      if ((v18 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }
  }

  payloadSigner = [(ASTRemoteServerSession *)self payloadSigner];
  v20 = [resultCopy sealWithPayloadSigner:payloadSigner error:error];

  if (!v20)
  {
LABEL_15:
    v25 = 0;
    goto LABEL_16;
  }

LABEL_10:
  pendingTestResults = [(ASTRemoteServerSession *)self pendingTestResults];
  testId3 = [resultCopy testId];
  [pendingTestResults setObject:resultCopy forKeyedSubscript:testId3];

  dispatch_semaphore_signal(v10);
  backoffTimer = [(ASTRemoteServerSession *)self backoffTimer];

  if (backoffTimer)
  {
    backoffTimer2 = [(ASTRemoteServerSession *)self backoffTimer];
    dispatch_semaphore_signal(backoffTimer2);
  }

  v25 = 1;
LABEL_16:

  return v25;
}

- (void)_cancelSendingTestResults
{
  v19 = *MEMORY[0x277D85DE8];
  connectionManager = [(ASTRemoteServerSession *)self connectionManager];
  [connectionManager cancelAllTestResults];

  pendingTestResults = [(ASTRemoteServerSession *)self pendingTestResults];
  allKeys = [pendingTestResults allKeys];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = allKeys;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        pendingTestResults2 = [(ASTRemoteServerSession *)self pendingTestResults];
        [pendingTestResults2 removeObjectForKey:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)updateAction:(id)action
{
  actionCopy = action;
  context = [(ASTSession *)self context];
  controlCommand = [context controlCommand];
  [controlCommand updateAction:actionCopy];

  backoffTimer = [(ASTRemoteServerSession *)self backoffTimer];

  if (backoffTimer)
  {
    backoffTimer2 = [(ASTRemoteServerSession *)self backoffTimer];
    dispatch_semaphore_signal(backoffTimer2);
  }
}

+ (void)downloadAsset:(id)asset serverURL:(id)l endpoint:(id)endpoint fileHandle:(id)handle completionHandler:(id)handler
{
  handlerCopy = handler;
  handleCopy = handle;
  endpointCopy = endpoint;
  lCopy = l;
  assetCopy = asset;
  v19 = +[ASTEnvironment currentEnvironment];
  sOCKSProxyServer = [v19 SOCKSProxyServer];
  sOCKSProxyPort = [v19 SOCKSProxyPort];
  v18 = [[ASTMaterializedConnectionManager alloc] initWithSOCKSProxyServer:sOCKSProxyServer port:sOCKSProxyPort];
  [(ASTMaterializedConnectionManager *)v18 downloadAsset:assetCopy serverURL:lCopy endpoint:endpointCopy destinationFileHandle:handleCopy allowsCellularAccess:1 completion:handlerCopy];
}

- (void)_backoff
{
  v3 = 1000000000;
  runningTests = [(ASTRemoteServerSession *)self runningTests];
  if ([runningTests count])
  {
  }

  else
  {
    pendingTestResults = [(ASTRemoteServerSession *)self pendingTestResults];
    v6 = [pendingTestResults count];

    if (!v6)
    {
      goto LABEL_7;
    }
  }

  if ([(ASTRemoteServerSession *)self backoffCounter]>= 7)
  {
    [(ASTRemoteServerSession *)self setBackoffCounter:6];
  }

  v7 = kASTBackoffValues[[(ASTRemoteServerSession *)self backoffCounter]];
  [(ASTRemoteServerSession *)self setBackoffCounter:[(ASTRemoteServerSession *)self backoffCounter]+ 1];
  v3 = 1000000000 * v7;
LABEL_7:
  v8 = dispatch_semaphore_create(0);
  [(ASTRemoteServerSession *)self setBackoffTimer:v8];

  dsema = [(ASTRemoteServerSession *)self backoffTimer];
  v9 = dispatch_time(0, v3);
  dispatch_semaphore_wait(dsema, v9);
}

- (id)_retryRequest
{
  [(ASTRemoteServerSession *)self setRetryCounter:[(ASTRemoteServerSession *)self retryCounter]+ 1];
  if ([(ASTRemoteServerSession *)self retryCounter]> 2 || (v3 = objc_alloc_init(ASTRequest), [(ASTRequest *)v3 setClientStatus:8], !v3))
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-1 userInfo:0];
    [(ASTRemoteServerSession *)self setClientStatusLoopError:v4];

    [(ASTRemoteServerSession *)self setShouldContinueRequestLoop:0];
    v3 = 0;
  }

  return v3;
}

- (void)_protocolError
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [ASTRequest stringFromClientStatus:self];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_cancelControlExecution
{
  v12 = *MEMORY[0x277D85DE8];
  context = [(ASTSession *)self context];
  controlCommand = [context controlCommand];
  reset = [controlCommand reset];

  v6 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = reset;
    _os_log_impl(&dword_240F3C000, v6, OS_LOG_TYPE_DEFAULT, "Reset control command: %d", &buf, 8u);
  }

  if (reset)
  {
    objc_initWeak(&buf, self);
    delegateQueue = [(ASTRemoteServerSession *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__ASTRemoteServerSession__cancelControlExecution__block_invoke;
    block[3] = &unk_278CBD6F0;
    objc_copyWeak(&v10, &buf);
    dispatch_async(delegateQueue, block);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&buf);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __49__ASTRemoteServerSession__cancelControlExecution__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  v2 = objc_opt_respondsToSelector();

  if (v2)
  {
    v3 = [WeakRetained delegate];
    [v3 sessionDidAbortWhilePerformingActions:WeakRetained];
  }
}

- (BOOL)_validateCommand:(int64_t)command clientStatus:(int64_t)status
{
  if (command > 0xD)
  {
LABEL_12:
    if (command != 1)
    {
      goto LABEL_15;
    }

    v7 = status - 1;
    if ((status - 1) >= 0xF)
    {
      goto LABEL_15;
    }

    v8 = 28323;
    goto LABEL_7;
  }

  if (((1 << command) & 0x3BC0) != 0)
  {
    return 1;
  }

  if (((1 << command) & 0x42C) == 0)
  {
    if (command == 4)
    {
      if (((status - 4) & 0xFFFFFFFFFFFFFFF7) == 0)
      {
        return 1;
      }

      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v7 = status - 1;
  if ((status - 1) >= 0xF)
  {
    goto LABEL_15;
  }

  v8 = 28195;
LABEL_7:
  if ((v8 >> v7))
  {
    return 1;
  }

LABEL_15:
  v9 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [ASTRemoteServerSession _validateCommand:command clientStatus:status];
  }

  return 0;
}

- (void)connectionManagerRequestPaused:(id)paused
{
  pausedCopy = paused;
  delegate = [(ASTSession *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-1004 userInfo:0];
    objc_initWeak(&location, self);
    delegateQueue = [(ASTRemoteServerSession *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__ASTRemoteServerSession_connectionManagerRequestPaused___block_invoke;
    block[3] = &unk_278CBD718;
    objc_copyWeak(&v12, &location);
    v11 = v7;
    v9 = v7;
    dispatch_async(delegateQueue, block);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __57__ASTRemoteServerSession_connectionManagerRequestPaused___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  [v2 session:WeakRetained didPauseWithError:*(a1 + 32)];
}

- (void)connectionManagerRequestResumed:(id)resumed
{
  resumedCopy = resumed;
  delegate = [(ASTSession *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    objc_initWeak(&location, self);
    delegateQueue = [(ASTRemoteServerSession *)self delegateQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __58__ASTRemoteServerSession_connectionManagerRequestResumed___block_invoke;
    v8[3] = &unk_278CBD6F0;
    objc_copyWeak(&v9, &location);
    dispatch_async(delegateQueue, v8);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __58__ASTRemoteServerSession_connectionManagerRequestResumed___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 sessionDidResume:WeakRetained];
}

- (void)connectionManager:(id)manager pausedSendingResultForTest:(id)test reason:(int64_t)reason
{
  managerCopy = manager;
  testCopy = test;
  delegate = [(ASTSession *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    if (reason)
    {
      v12 = -1003;
    }

    else
    {
      v12 = -1004;
    }

    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:v12 userInfo:0];
    objc_initWeak(&location, self);
    delegateQueue = [(ASTRemoteServerSession *)self delegateQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __78__ASTRemoteServerSession_connectionManager_pausedSendingResultForTest_reason___block_invoke;
    v16[3] = &unk_278CBD768;
    objc_copyWeak(&v19, &location);
    v17 = testCopy;
    v18 = v13;
    v15 = v13;
    dispatch_async(delegateQueue, v16);

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

void __78__ASTRemoteServerSession_connectionManager_pausedSendingResultForTest_reason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained delegate];
  [v2 session:WeakRetained didPauseSendingResultForTest:*(a1 + 32) error:*(a1 + 40)];
}

- (void)connectionManager:(id)manager resumedSendingResultForTest:(id)test
{
  managerCopy = manager;
  testCopy = test;
  delegate = [(ASTSession *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    objc_initWeak(&location, self);
    delegateQueue = [(ASTRemoteServerSession *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__ASTRemoteServerSession_connectionManager_resumedSendingResultForTest___block_invoke;
    block[3] = &unk_278CBD718;
    objc_copyWeak(&v13, &location);
    v12 = testCopy;
    dispatch_async(delegateQueue, block);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __72__ASTRemoteServerSession_connectionManager_resumedSendingResultForTest___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained delegate];
  [v2 session:WeakRetained didResumeSendingResultForTest:*(a1 + 32)];
}

- (id)_signPayload:(id)payload error:(id *)error
{
  payloadCopy = payload;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__4;
  v22 = __Block_byref_object_dispose__4;
  v23 = 0;
  delegate = [(ASTSession *)self delegate];
  if ([delegate conformsToProtocol:&unk_2852D8970])
  {
    delegate2 = [(ASTSession *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) == 0)
    {
      goto LABEL_5;
    }

    delegate = [(ASTSession *)self delegate];
    v10 = dispatch_semaphore_create(0);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __45__ASTRemoteServerSession__signPayload_error___block_invoke;
    v14[3] = &unk_278CBD8C8;
    v16 = &v18;
    errorCopy = error;
    v11 = v10;
    v15 = v11;
    [delegate session:self signPayload:payloadCopy completionHandler:v14];
    dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  }

LABEL_5:
  v12 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v12;
}

void __45__ASTRemoteServerSession__signPayload_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v6 = a3;
  v7 = v6;
  if (*(a1 + 48))
  {
    v8 = v6;
    **(a1 + 48) = v7;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_signFile:(id)file error:(id *)error
{
  fileCopy = file;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__4;
  v22 = __Block_byref_object_dispose__4;
  v23 = 0;
  delegate = [(ASTSession *)self delegate];
  if ([delegate conformsToProtocol:&unk_2852D8970])
  {
    delegate2 = [(ASTSession *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) == 0)
    {
      goto LABEL_5;
    }

    delegate = [(ASTSession *)self delegate];
    v10 = dispatch_semaphore_create(0);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __42__ASTRemoteServerSession__signFile_error___block_invoke;
    v14[3] = &unk_278CBD8C8;
    v16 = &v18;
    errorCopy = error;
    v11 = v10;
    v15 = v11;
    [delegate session:self signFile:fileCopy completionHandler:v14];
    dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  }

LABEL_5:
  v12 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v12;
}

void __42__ASTRemoteServerSession__signFile_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v6 = a3;
  v7 = v6;
  if (*(a1 + 48))
  {
    v8 = v6;
    **(a1 + 48) = v7;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_shouldAllowCellularForSealedTestResult:(id)result
{
  v40 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  allowCellularSizeThreshold = [(ASTSession *)self allowCellularSizeThreshold];
  allowCellularSizeThreshold2 = [resultCopy allowCellularSizeThreshold];
  bOOLValue = [allowCellularSizeThreshold2 BOOLValue];

  if (bOOLValue)
  {
    allowCellularSizeThreshold3 = [resultCopy allowCellularSizeThreshold];
    allowCellularSizeThreshold = [allowCellularSizeThreshold3 unsignedIntegerValue];

    v9 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v36 = allowCellularSizeThreshold;
      _os_log_impl(&dword_240F3C000, v9, OS_LOG_TYPE_DEFAULT, "Using cellular size threshold from test result: %lu", buf, 0xCu);
    }
  }

  if (allowCellularSizeThreshold == -1)
  {
    v10 = 1;
  }

  else
  {
    files = [resultCopy files];
    if (files && (v12 = files, [resultCopy files], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count"), v13, v12, v14))
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      files2 = [resultCopy files];
      v16 = [files2 countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (v16)
      {
        v17 = v16;
        v29 = allowCellularSizeThreshold;
        v30 = resultCopy;
        v18 = 0;
        v19 = *v32;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v32 != v19)
            {
              objc_enumerationMutation(files2);
            }

            v21 = *(*(&v31 + 1) + 8 * i);
            defaultManager = [MEMORY[0x277CCAA00] defaultManager];
            fileURL = [v21 fileURL];
            path = [fileURL path];
            v25 = [defaultManager attributesOfItemAtPath:path error:0];
            v18 += [v25 fileSize];
          }

          v17 = [files2 countByEnumeratingWithState:&v31 objects:v39 count:16];
        }

        while (v17);
        allowCellularSizeThreshold = v29;
        resultCopy = v30;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      files2 = [resultCopy payload];
      v18 = [files2 length];
    }

    v26 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v36 = v18;
      v37 = 2048;
      v38 = allowCellularSizeThreshold;
      _os_log_impl(&dword_240F3C000, v26, OS_LOG_TYPE_DEFAULT, "Payload size: %llu, threshold: %lu", buf, 0x16u);
    }

    v10 = v18 <= allowCellularSizeThreshold;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)_shouldAllowCellularForSealedSealablePayload:(id)payload
{
  v17 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  allowCellularSizeThreshold = [(ASTSession *)self allowCellularSizeThreshold];
  if (allowCellularSizeThreshold == -1)
  {
    v6 = 1;
  }

  else
  {
    v7 = allowCellularSizeThreshold;
    payload = [payloadCopy payload];
    v9 = [payload length];

    v10 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134218240;
      v14 = v9;
      v15 = 2048;
      v16 = v7;
      _os_log_impl(&dword_240F3C000, v10, OS_LOG_TYPE_DEFAULT, "Payload size: %llu, threshold: %lu", &v13, 0x16u);
    }

    v6 = v9 <= v7;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (BOOL)auditToken:(id *)token hasEntitlement:(id)entitlement
{
  [entitlement UTF8String];
  v4 = xpc_copy_entitlement_for_token();
  v5 = v4;
  if (v4)
  {
    value = xpc_BOOL_get_value(v4);
  }

  else
  {
    v7 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[ASTRemoteServerSession auditToken:hasEntitlement:];
    }

    value = 0;
  }

  return value;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[ASTRemoteServerSession dealloc]";
    _os_log_impl(&dword_240F3C000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  +[ASTEnvironment resetEnvironment];
  v5.receiver = self;
  v5.super_class = ASTRemoteServerSession;
  [(ASTSession *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)requestSuitesAvailableWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(ASTRemoteServerSession *)self phase]!= 2)
  {
    v9 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ASTRemoteServerSession requestSuitesAvailableWithCompletionHandler:?];
    }

    array = [MEMORY[0x277CBEA60] array];
    clientStatusLoopError = [(ASTRemoteServerSession *)self clientStatusLoopError];
    handlerCopy[2](handlerCopy, array, clientStatusLoopError);
    goto LABEL_10;
  }

  v5 = +[ASTEnvironment currentEnvironment];
  array = [v5 configCode];

  if (!array)
  {
    v11 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ASTRemoteServerSession requestSuitesAvailableWithCompletionHandler:];
    }

    clientStatusLoopError = [MEMORY[0x277CBEA60] array];
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-4003 userInfo:0];
    handlerCopy[2](handlerCopy, clientStatusLoopError, v12);

LABEL_10:
    goto LABEL_11;
  }

  connectionManager = [(ASTRemoteServerSession *)self connectionManager];
  payloadSigner = [(ASTRemoteServerSession *)self payloadSigner];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__ASTRemoteServerSession_requestSuitesAvailableWithCompletionHandler___block_invoke;
  v13[3] = &unk_278CBD8F0;
  v13[4] = self;
  v14 = handlerCopy;
  [connectionManager requestSelfServiceSuitesAvailableWithConfigCode:array withPayloadSigner:payloadSigner allowsCellularAccess:1 completionHandler:v13];

LABEL_11:
}

void __70__ASTRemoteServerSession_requestSuitesAvailableWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) phase];
  v7 = *(a1 + 40);
  if (v6 == 2)
  {
    (*(v7 + 16))(*(a1 + 40), v10, v5);
  }

  else
  {
    v8 = [MEMORY[0x277CBEA60] array];
    v9 = [*(a1 + 32) clientStatusLoopError];
    (*(v7 + 16))(v7, v8, v9);
  }
}

- (void)requestSuiteStart:(id)start completionHandler:(id)handler
{
  handlerCopy = handler;
  startCopy = start;
  if ([(ASTRemoteServerSession *)self phase]== 2)
  {
    connectionManager = [(ASTRemoteServerSession *)self connectionManager];
    payloadSigner = [(ASTRemoteServerSession *)self payloadSigner];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __62__ASTRemoteServerSession_requestSuiteStart_completionHandler___block_invoke;
    v11[3] = &unk_278CBD918;
    v12 = handlerCopy;
    [connectionManager postSelectSelfServiceSuite:startCopy withPayloadSigner:payloadSigner allowsCellularAccess:1 completionHandler:v11];
  }

  else
  {
    clientStatusLoopError = [(ASTRemoteServerSession *)self clientStatusLoopError];
    (*(handlerCopy + 2))(handlerCopy, startCopy, 0, 0, clientStatusLoopError);
  }
}

- (void)requestSuiteSummary:(id)summary completionHandler:(id)handler
{
  summaryCopy = summary;
  handlerCopy = handler;
  if ([(ASTRemoteServerSession *)self phase]!= 2)
  {
    clientStatusLoopError = [(ASTRemoteServerSession *)self clientStatusLoopError];
LABEL_8:
    v12 = clientStatusLoopError;
    handlerCopy[2](handlerCopy, 0, clientStatusLoopError);

    goto LABEL_9;
  }

  if (![summaryCopy length])
  {
    v11 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ASTRemoteServerSession requestSuiteSummary:completionHandler:];
    }

    clientStatusLoopError = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-4004 userInfo:0];
    goto LABEL_8;
  }

  connectionManager = [(ASTRemoteServerSession *)self connectionManager];
  payloadSigner = [(ASTRemoteServerSession *)self payloadSigner];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__ASTRemoteServerSession_requestSuiteSummary_completionHandler___block_invoke;
  v13[3] = &unk_278CBD940;
  v14 = handlerCopy;
  [connectionManager requestSelfServiceSuiteResultsWithDiagnosticEventID:summaryCopy withPayloadSigner:payloadSigner allowsCellularAccess:1 completionHandler:v13];

LABEL_9:
}

void __33__ASTRemoteServerSession_archive__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) sessionId];
  v4 = [a2 debugDescription];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_updateUIWithData:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_240F3C000, a2, OS_LOG_TYPE_ERROR, "Invalid action: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __44__ASTRemoteServerSession__updateUIWithData___block_invoke_6_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_240F3C000, log, OS_LOG_TYPE_ERROR, "Failed to download test suite image: %@, error: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_validateCommand:(uint64_t)a1 clientStatus:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = [ASTResponse stringFromCommand:a1];
  v4 = [ASTRequest stringFromClientStatus:a2];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)requestSuitesAvailableWithCompletionHandler:(void *)a1 .cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [a1 phase];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

@end