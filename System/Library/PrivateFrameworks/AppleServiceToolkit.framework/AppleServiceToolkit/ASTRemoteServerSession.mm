@interface ASTRemoteServerSession
+ (ASTRemoteServerSession)sessionWithContext:(id)a3;
+ (ASTRemoteServerSession)sessionWithIdentity:(id)a3;
+ (ASTRemoteServerSession)sessionWithSerialNumber:(id)a3;
+ (BOOL)auditToken:(id *)a3 hasEntitlement:(id)a4;
+ (void)downloadAsset:(id)a3 serverURL:(id)a4 endpoint:(id)a5 fileHandle:(id)a6 completionHandler:(id)a7;
+ (void)prepareDeviceWithIdentities:(id)a3 completionHandler:(id)a4;
- (ASTRemoteServerSession)initWithContext:(id)a3;
- (ASTRemoteServerSession)initWithIdentity:(id)a3;
- (ASTRemoteServerSession)initWithSerialNumber:(id)a3;
- (BOOL)_authInfoIfNecessary;
- (BOOL)_profile;
- (BOOL)_shouldAllowCellularForSealedSealablePayload:(id)a3;
- (BOOL)_shouldAllowCellularForSealedTestResult:(id)a3;
- (BOOL)_validateCommand:(int64_t)a3 clientStatus:(int64_t)a4;
- (BOOL)sendAuthInfoResult:(id)a3 error:(id *)a4;
- (BOOL)sendProfileResult:(id)a3 error:(id *)a4;
- (BOOL)sendTestResult:(id)a3 error:(id *)a4;
- (id)_abort;
- (id)_clientAbort;
- (id)_continueWithLastRequest:(id)a3;
- (id)_idle;
- (id)_retryRequest;
- (id)_sendPropertiesWithData:(id)a3;
- (id)_sendRequest:(id)a3;
- (id)_sendTestResults:(id)a3;
- (id)_showInstructionalPromptWithData:(id)a3;
- (id)_signFile:(id)a3 error:(id *)a4;
- (id)_signPayload:(id)a3 error:(id *)a4;
- (id)_startNewTest:(id)a3 data:(id)a4;
- (id)_updateSessionSettingsWithData:(id)a3;
- (id)_updateUIWithData:(id)a3;
- (void)_abortRunningProcedures;
- (void)_archive;
- (void)_backoff;
- (void)_cancelControlExecution;
- (void)_cancelRunningTests;
- (void)_cancelSendingTestResults;
- (void)_protocolError;
- (void)_rebootWithData:(id)a3;
- (void)_setup;
- (void)_shutdownWithData:(id)a3;
- (void)_startClientStatusLoop;
- (void)_teardown;
- (void)_updateProgress:(id)a3;
- (void)archive;
- (void)connectionManager:(id)a3 pausedSendingResultForTest:(id)a4 reason:(int64_t)a5;
- (void)connectionManager:(id)a3 resumedSendingResultForTest:(id)a4;
- (void)connectionManagerRequestPaused:(id)a3;
- (void)connectionManagerRequestResumed:(id)a3;
- (void)dealloc;
- (void)end;
- (void)idleWithCompletion:(id)a3;
- (void)invalidate;
- (void)requestSuiteStart:(id)a3 completionHandler:(id)a4;
- (void)requestSuiteSummary:(id)a3 completionHandler:(id)a4;
- (void)requestSuitesAvailableWithCompletionHandler:(id)a3;
- (void)setSessionEndReason:(int64_t)a3;
- (void)start;
- (void)updateAction:(id)a3;
@end

@implementation ASTRemoteServerSession

- (ASTRemoteServerSession)initWithSerialNumber:(id)a3
{
  v4 = [ASTIdentity identityWithSerialNumber:a3];
  v5 = [(ASTRemoteServerSession *)self initWithIdentity:v4];

  return v5;
}

+ (ASTRemoteServerSession)sessionWithSerialNumber:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithSerialNumber:v4];

  return v5;
}

- (ASTRemoteServerSession)initWithIdentity:(id)a3
{
  v4 = a3;
  v5 = [[ASTContext alloc] initWithIdentity:v4];

  v6 = [(ASTRemoteServerSession *)self initWithContext:v5];
  return v6;
}

+ (ASTRemoteServerSession)sessionWithIdentity:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithIdentity:v4];

  return v5;
}

- (ASTRemoteServerSession)initWithContext:(id)a3
{
  v5 = a3;
  v28.receiver = self;
  v28.super_class = ASTRemoteServerSession;
  v6 = [(ASTRemoteServerSession *)&v28 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->super._context, a3);
    v8 = +[ASTEnvironment currentEnvironment];
    v9 = [v8 SOCKSProxyServer];
    v10 = [v8 SOCKSProxyPort];
    v11 = [[ASTMaterializedConnectionManager alloc] initWithSOCKSProxyServer:v9 port:v10];
    connectionManager = v7->_connectionManager;
    v7->_connectionManager = v11;

    [(ASTConnectionManager *)v7->_connectionManager setDelegate:v7];
    v13 = [(ASTContext *)v7->super._context identity];
    [(ASTConnectionManager *)v7->_connectionManager setIdentity:v13];

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

+ (ASTRemoteServerSession)sessionWithContext:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithContext:v4];

  return v5;
}

+ (void)prepareDeviceWithIdentities:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v10 = +[ASTEnvironment currentEnvironment];
  v7 = [v10 SOCKSProxyServer];
  v8 = [v10 SOCKSProxyPort];
  v9 = [[ASTMaterializedConnectionManager alloc] initWithSOCKSProxyServer:v7 port:v8];
  [(ASTMaterializedConnectionManager *)v9 postPrepareDeviceWithIdentities:v6 allowsCellularAccess:1 completionHandler:v5];
}

- (void)setSessionEndReason:(int64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  if (!obj->super._sessionEndReason)
  {
    obj->super._sessionEndReason = a3;
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
  v2 = self;
  objc_sync_enter(v2);
  if ([(ASTRemoteServerSession *)v2 phase])
  {
    objc_sync_exit(v2);

    v3 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [ASTRemoteServerSession start];
    }

    return;
  }

  [(ASTRemoteServerSession *)v2 setPhase:1];
  objc_sync_exit(v2);

  if (+[ASTRemoteServerSession currentProcessHasEntitlement])
  {
    [(ASTRemoteServerSession *)v2 _setup];
    objc_initWeak(&location, v2);
    v4 = [(ASTRemoteServerSession *)v2 clientStatusQueue];
    v5 = v13;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __31__ASTRemoteServerSession_start__block_invoke;
    v13[3] = &unk_278CBD6F0;
    objc_copyWeak(&v14, &location);
    v6 = v13;
LABEL_11:
    dispatch_async(v4, v6);

    objc_destroyWeak(v5 + 4);
    objc_destroyWeak(&location);
    return;
  }

  v7 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    [ASTRemoteServerSession start];
  }

  v8 = v2;
  objc_sync_enter(v8);
  [(ASTRemoteServerSession *)v8 setPhase:0];
  objc_sync_exit(v8);

  v9 = [(ASTSession *)v8 delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    objc_initWeak(&location, v8);
    v4 = [(ASTRemoteServerSession *)v8 delegateQueue];
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

- (void)idleWithCompletion:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(ASTRemoteServerSession *)self sessionId];
    v12 = 138412290;
    v13 = v6;
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[IDLE] (%@)", &v12, 0xCu);
  }

  v7 = [v4 copy];
  clientAbortCompletion = self->_clientAbortCompletion;
  self->_clientAbortCompletion = v7;

  [(ASTRemoteServerSession *)self setShouldAbort:1];
  v9 = [(ASTRemoteServerSession *)self backoffTimer];

  if (v9)
  {
    v10 = [(ASTRemoteServerSession *)self backoffTimer];
    dispatch_semaphore_signal(v10);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)end
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(ASTRemoteServerSession *)self sessionId];
    v6 = 138412290;
    v7 = v4;
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
    v4 = [(ASTRemoteServerSession *)self sessionId];
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&dword_240F3C000, v3, OS_LOG_TYPE_DEFAULT, "[INVALIDATE] (%@)", buf, 0xCu);
  }

  v5 = self;
  objc_sync_enter(v5);
  [(ASTRemoteServerSession *)v5 setPhase:3];
  objc_sync_exit(v5);

  objc_initWeak(buf, v5);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__ASTRemoteServerSession_invalidate__block_invoke;
  v7[3] = &unk_278CBD6F0;
  objc_copyWeak(&v8, buf);
  [(ASTRemoteServerSession *)v5 setSessionTeardownCompletion:v7];
  [(ASTRemoteServerSession *)v5 _endAndUnenrollIfNecessary:0];
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
  v3 = [(ASTRemoteServerSession *)self sessionId];

  if (v3)
  {
    v4 = [(ASTRemoteServerSession *)self connectionManager];
    v5 = [(ASTRemoteServerSession *)self sessionId];
    v6 = [(ASTRemoteServerSession *)self payloadSigner];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __33__ASTRemoteServerSession_archive__block_invoke;
    v8[3] = &unk_278CBD590;
    v8[4] = self;
    [v4 requestSessionArchiveWithSessionID:v5 withPayloadSigner:v6 allowsCellularAccess:1 completionHandler:v8];
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
  v2 = self;
  objc_sync_enter(v2);
  [(ASTRemoteServerSession *)v2 setPhase:2];
  objc_sync_exit(v2);

  objc_initWeak(&location, v2);
  v3 = [(ASTSession *)v2 delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(ASTRemoteServerSession *)v2 delegateQueue];
    block = MEMORY[0x277D85DD0];
    v54 = 3221225472;
    v55 = __48__ASTRemoteServerSession__startClientStatusLoop__block_invoke;
    v56 = &unk_278CBD6F0;
    objc_copyWeak(&v57, &location);
    dispatch_async(v5, &block);

    objc_destroyWeak(&v57);
  }

  v6 = objc_alloc_init(ASTRequest);
  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [(ASTSession *)v2 context];
  v9 = [v8 clientStatus];

  if ((v9 - 13) < 2)
  {
    v10 = [(ASTSession *)v2 context];
    v11 = [v10 controlCommand];
    v12 = [v11 requestData];
    [(ASTRequest *)v6 setData:v12];

LABEL_7:
    v14 = [(ASTSession *)v2 context];
    -[ASTRequest setClientStatus:](v6, "setClientStatus:", [v14 clientStatus]);

    goto LABEL_8;
  }

  if (v9)
  {
    goto LABEL_7;
  }

  [(ASTRequest *)v6 setClientStatus:1];
LABEL_8:
  *&v13 = 138412290;
  v52 = v13;
  while ([(ASTRemoteServerSession *)v2 shouldContinueRequestLoop:v52])
  {
    v15 = objc_autoreleasePoolPush();
    if ([(ASTRemoteServerSession *)v2 shouldAbort])
    {
      [(ASTRemoteServerSession *)v2 setShouldAbort:0];
      v16 = [(ASTRemoteServerSession *)v2 _clientAbort];

      v6 = v16;
    }

    v17 = [(ASTRequest *)v6 clientStatus];
    v18 = [(ASTSession *)v2 context];
    [v18 setClientStatus:v17];

    v19 = [(ASTRemoteServerSession *)v2 _sendRequest:v6];
    v20 = v19;
    if (!v19)
    {
      v26 = [(ASTRemoteServerSession *)v2 _retryRequest];
      goto LABEL_20;
    }

    v21 = [v19 progress];
    [(ASTRemoteServerSession *)v2 _updateProgress:v21];

    v22 = [v20 command];
    if (![(ASTRemoteServerSession *)v2 _validateCommand:v22 clientStatus:[(ASTRequest *)v6 clientStatus]])
    {
      [(ASTRemoteServerSession *)v2 _protocolError];
      v26 = [(ASTRemoteServerSession *)v2 _retryRequest];
LABEL_20:
      v27 = v6;
      v6 = v26;
LABEL_21:

      goto LABEL_22;
    }

    v23 = [v20 command];
    v24 = [(ASTSession *)v2 context];
    [v24 setCommand:v23];

    if (v22 != 7)
    {
      [(ASTRemoteServerSession *)v2 setBackoffCounter:0];
    }

    [(ASTRemoteServerSession *)v2 setRetryCounter:0];
    switch(v22)
    {
      case 1:
        v25 = [(ASTRemoteServerSession *)v2 _idle];
        goto LABEL_38;
      case 2:
        v30 = [v20 data];
        v31 = [(ASTRemoteServerSession *)v2 _updateUIWithData:v30];
        goto LABEL_35;
      case 3:
        v30 = [v20 testId];
        v34 = [v20 data];
        v37 = [(ASTRemoteServerSession *)v2 _startNewTest:v30 data:v34];
        goto LABEL_30;
      case 4:
        v30 = [v20 testId];
        v31 = [(ASTRemoteServerSession *)v2 _sendTestResults:v30];
        goto LABEL_35;
      case 5:
        v30 = [v20 data];
        v31 = [(ASTRemoteServerSession *)v2 _sendPropertiesWithData:v30];
        goto LABEL_35;
      case 6:
        v30 = [v20 data];
        v31 = [(ASTRemoteServerSession *)v2 _updateSessionSettingsWithData:v30];
        goto LABEL_35;
      case 7:
        v25 = [(ASTRemoteServerSession *)v2 _continueWithLastRequest:v6];
        goto LABEL_38;
      case 8:
        v25 = [(ASTRemoteServerSession *)v2 _abort];
LABEL_38:
        v37 = v25;
        goto LABEL_39;
      case 9:
        [(ASTRemoteServerSession *)v2 _archive];
        v29 = 1;
        goto LABEL_43;
      case 10:
        v32 = ASTLogHandleForCategory(0);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = [(ASTRemoteServerSession *)v2 sessionId];
          *buf = v52;
          v62 = v33;
          _os_log_impl(&dword_240F3C000, v32, OS_LOG_TYPE_DEFAULT, "[CONTROL] (%@)", buf, 0xCu);
        }

        v30 = [(ASTSession *)v2 context];
        v34 = [(ASTRequest *)v30 controlCommand];
        v35 = [v20 data];
        v36 = [(ASTRemoteServerSession *)v2 delegateQueue];
        v37 = [(ASTRequest *)v34 requestWithData:v35 session:v2 queue:v36];

        v6 = v35;
LABEL_30:

        v6 = v34;
        goto LABEL_36;
      case 11:
        v28 = [v20 data];
        [(ASTRemoteServerSession *)v2 _rebootWithData:v28];
        v29 = 2;
        goto LABEL_41;
      case 12:
        v28 = [v20 data];
        [(ASTRemoteServerSession *)v2 _shutdownWithData:v28];
        v29 = 3;
LABEL_41:

LABEL_43:
        [(ASTRemoteServerSession *)v2 setSessionEndReason:v29];
        [(ASTRemoteServerSession *)v2 setShouldContinueRequestLoop:0];
        break;
      case 13:
        v30 = [v20 data];
        v31 = [(ASTRemoteServerSession *)v2 _showInstructionalPromptWithData:v30];
LABEL_35:
        v37 = v31;
LABEL_36:

        v6 = v30;
LABEL_39:

        v6 = v37;
        break;
      default:
        break;
    }

    if ([(ASTRequest *)v6 clientStatus]!= 13 && [(ASTRequest *)v6 clientStatus]!= 14)
    {
      v38 = [(ASTSession *)v2 context];
      v39 = [v38 clientStatus] == 14;

      if (v39)
      {
        v27 = [(ASTSession *)v2 context];
        v40 = [v27 controlCommand];
        [v40 reset];

        goto LABEL_21;
      }
    }

LABEL_22:

    objc_autoreleasePoolPop(v15);
  }

  if ([(ASTRemoteServerSession *)v2 shouldUnenroll])
  {
    v41 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = [(ASTRemoteServerSession *)v2 sessionId];
      *buf = v52;
      v62 = v42;
      _os_log_impl(&dword_240F3C000, v41, OS_LOG_TYPE_DEFAULT, "[UNENROLL] (%@)", buf, 0xCu);
    }

    v43 = +[ASTRequest request];
    [v43 setClientStatus:9];
    [(ASTRemoteServerSession *)v2 setSessionEndReason:4];
    v44 = [(ASTRemoteServerSession *)v2 payloadSigner];
    [v43 sealWithPayloadSigner:v44 error:0];

    v45 = [(ASTRemoteServerSession *)v2 _shouldAllowCellularForSealedSealablePayload:v43];
    v46 = [(ASTRemoteServerSession *)v2 connectionManager];
    v47 = [v46 postRequest:v43 allowsCellularAccess:v45];

    v48 = [MEMORY[0x277CBEAA8] date];
    [v48 timeIntervalSinceDate:v7];
    v59 = @"sessionDuration";
    v49 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v60 = v49;
    v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
    [ASTAnalytics sendAnalyticsWithEvent:3 payloadDict:v50];
  }

  [(ASTRemoteServerSession *)v2 _teardown];

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
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [(ASTRemoteServerSession *)self setRunningTests:v3];

  v4 = [MEMORY[0x277CBEB38] dictionary];
  [(ASTRemoteServerSession *)self setPendingTestResults:v4];

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

  v4 = self;
  objc_sync_enter(v4);
  v5 = [(ASTRemoteServerSession *)v4 phase];
  objc_sync_exit(v4);

  if (v5 != 3)
  {
    [(ASTRemoteServerSession *)v4 _cancelControlExecution];
  }

  [(ASTRemoteServerSession *)v4 _cancelRunningTests];
  v6 = v4;
  objc_sync_enter(v6);
  [(ASTRemoteServerSession *)v6 setPhase:0];
  objc_sync_exit(v6);

  v7 = [(ASTRemoteServerSession *)v6 sessionTeardownCompletion];

  if (v7)
  {
    v8 = [(ASTRemoteServerSession *)v6 sessionTeardownCompletion];
    v8[2]();
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
    v6 = self;
    objc_sync_enter(v6);
    [(ASTRemoteServerSession *)v6 setPendingAuthInfoSemaphore:v5];
    objc_sync_exit(v6);

    objc_initWeak(buf, v6);
    v7 = [(ASTRemoteServerSession *)v6 delegateQueue];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __46__ASTRemoteServerSession__authInfoIfNecessary__block_invoke;
    v17 = &unk_278CBD718;
    objc_copyWeak(&v19, buf);
    v3 = v5;
    v18 = v3;
    dispatch_async(v7, &v14);

    dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
    v8 = v6;
    objc_sync_enter(v8);
    v9 = [(ASTRemoteServerSession *)v8 pendingAuthInfoResult:v14];
    [(ASTRemoteServerSession *)v8 setPendingAuthInfoResult:0];
    [(ASTRemoteServerSession *)v8 setPendingAuthInfoSemaphore:0];
    objc_sync_exit(v8);

    if (v9)
    {
      v10 = [(ASTRemoteServerSession *)v8 _shouldAllowCellularForSealedSealablePayload:v9];
      v11 = [(ASTRemoteServerSession *)v8 connectionManager];
      v4 = [(ASTRemoteServerSession *)v11 postAuthInfo:v9 allowsCellularAccess:v10];
    }

    else
    {
      v11 = v8;
      objc_sync_enter(v11);
      v4 = [(ASTRemoteServerSession *)v11 phase]== 1;
      objc_sync_exit(v11);
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
    v5 = [(ASTSession *)self context];
    v6 = [v5 identity];
    v23 = [ASTProfileResult resultWithIdentity:v6];

    v7 = dispatch_semaphore_create(0);
    v8 = self;
    objc_sync_enter(v8);
    [(ASTRemoteServerSession *)v8 setPendingProfileSemaphore:v7];
    objc_sync_exit(v8);

    objc_initWeak(&location, v8);
    v9 = [(ASTRemoteServerSession *)v8 delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __34__ASTRemoteServerSession__profile__block_invoke;
    block[3] = &unk_278CBD740;
    objc_copyWeak(&v17, &location);
    block[4] = &buf;
    dispatch_async(v9, block);

    dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
    v10 = v8;
    objc_sync_enter(v10);
    v11 = [(ASTRemoteServerSession *)v10 pendingProfileResult];
    [(ASTRemoteServerSession *)v10 setPendingProfileSemaphore:0];
    [(ASTRemoteServerSession *)v10 setPendingProfileResult:0];
    objc_sync_exit(v10);

    if (v11)
    {
      v12 = [(ASTRemoteServerSession *)v10 _shouldAllowCellularForSealedSealablePayload:v11];
      v13 = [(ASTRemoteServerSession *)v10 connectionManager];
      v4 = [v13 postProfile:v11 allowsCellularAccess:v12];
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

- (id)_sendRequest:(id)a3
{
  v4 = a3;
  v5 = [(ASTRemoteServerSession *)self runningTests];
  objc_sync_enter(v5);
  v6 = [(ASTRemoteServerSession *)self runningTests];
  v7 = [v6 allKeys];

  objc_sync_exit(v5);
  v8 = [(ASTRemoteServerSession *)self pendingTestResults];
  v9 = [v8 allKeys];

  if (v7 && ([v7 count] || objc_msgSend(v9, "count")))
  {
    v10 = [(ASTRemoteServerSession *)self runningTests];
    v11 = [v10 allKeys];
    v12 = [v11 firstObject];

    v13 = [(ASTRemoteServerSession *)self pendingTestResults];
    v14 = [v13 allKeys];
    v15 = [v14 firstObject];

    if (v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v15;
    }

    v17 = v16;
    [v4 setCurrentTest:v17];
    if (v12)
    {
      v18 = [(ASTSession *)self delegate];
      v19 = objc_opt_respondsToSelector();

      if (v19)
      {
        v20 = [(ASTRemoteServerSession *)self delegateQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __39__ASTRemoteServerSession__sendRequest___block_invoke;
        block[3] = &unk_278CBCF40;
        block[4] = self;
        v37 = v12;
        v38 = v4;
        dispatch_sync(v20, block);
      }

      if (+[ASTRequest isEstimatedTimeRemainingFeatureEnabled])
      {
        v21 = [(ASTSession *)self delegate];
        v22 = objc_opt_respondsToSelector();

        if (v22)
        {
          v23 = [(ASTRemoteServerSession *)self delegateQueue];
          v29 = MEMORY[0x277D85DD0];
          v30 = 3221225472;
          v31 = __39__ASTRemoteServerSession__sendRequest___block_invoke_2;
          v32 = &unk_278CBCF40;
          v33 = self;
          v34 = v12;
          v35 = v4;
          dispatch_sync(v23, &v29);
        }
      }
    }

    else if ([v4 clientStatus] == 4)
    {
      [v4 setProgress:&unk_2852D60A8];
      [v4 setEstimatedTimeRemaining:&unk_2852D60C0];
    }
  }

  v24 = [(ASTRemoteServerSession *)self payloadSigner:v29];
  [v4 sealWithPayloadSigner:v24 error:0];

  v25 = [(ASTRemoteServerSession *)self _shouldAllowCellularForSealedSealablePayload:v4];
  v26 = [(ASTRemoteServerSession *)self connectionManager];
  v27 = [v26 postRequest:v4 allowsCellularAccess:v25];

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

- (void)_updateProgress:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(ASTSession *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      objc_initWeak(&location, self);
      v7 = [(ASTRemoteServerSession *)self delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __42__ASTRemoteServerSession__updateProgress___block_invoke;
      block[3] = &unk_278CBD718;
      objc_copyWeak(&v10, &location);
      v9 = v4;
      dispatch_async(v7, block);

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
    v4 = [(ASTRemoteServerSession *)self sessionId];
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_240F3C000, v3, OS_LOG_TYPE_DEFAULT, "[IDLE] (%@)", &v8, 0xCu);
  }

  [(ASTRemoteServerSession *)self _backoff];
  v5 = +[ASTRequest request];
  [v5 setClientStatus:1];
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_updateUIWithData:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(ASTRemoteServerSession *)self sessionId];
    *buf = 138412290;
    v29 = v6;
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[UPDATE UI] (%@)", buf, 0xCu);
  }

  v7 = +[ASTRequest request];
  [v7 setClientStatus:2];
  v8 = [v4 objectForKeyedSubscript:@"action"];
  if ([v8 isEqualToString:@"TestSuiteStarting"])
  {
    v9 = [(ASTSession *)self context];
    [v9 setTestSuiteRunning:1];

    v10 = [(ASTSession *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if ((v11 & 1) == 0)
    {
      goto LABEL_9;
    }

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __44__ASTRemoteServerSession__updateUIWithData___block_invoke;
    v25[3] = &unk_278CBD790;
    v26 = v4;
    v27 = self;
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
    v24 = v4;
    [v7 setCompletion:v23];
    v12 = v24;
LABEL_8:

    goto LABEL_9;
  }

  if ([v8 isEqualToString:@"TestSuiteImage"])
  {
    v15 = [v4 objectForKeyedSubscript:@"imageName"];
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

      v20 = [(ASTRemoteServerSession *)self _retryRequest];

      v7 = v20;
    }
  }

  else
  {
    v17 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(ASTRemoteServerSession *)v8 _updateUIWithData:v17];
    }

    v18 = [(ASTRemoteServerSession *)self _retryRequest];

    v7 = v18;
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

- (id)_startNewTest:(id)a3 data:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(ASTRemoteServerSession *)self sessionId];
    *buf = 138412290;
    v31 = v9;
    _os_log_impl(&dword_240F3C000, v8, OS_LOG_TYPE_DEFAULT, "[START NEW TEST] (%@)", buf, 0xCu);
  }

  v10 = +[ASTRequest request];
  [v10 setClientStatus:4];
  v11 = [(ASTSession *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [ASTTestResult resultWithTestId:v6 parameters:v7];
    v14 = dispatch_semaphore_create(0);
    v15 = [(ASTRemoteServerSession *)self runningTests];
    objc_sync_enter(v15);
    v16 = [(ASTRemoteServerSession *)self runningTests];
    [v16 setObject:v14 forKeyedSubscript:v6];

    objc_sync_exit(v15);
    objc_initWeak(buf, self);
    v17 = [(ASTRemoteServerSession *)self delegateQueue];
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __45__ASTRemoteServerSession__startNewTest_data___block_invoke;
    v25 = &unk_278CBD7E0;
    objc_copyWeak(&v29, buf);
    v26 = v6;
    v27 = v7;
    v18 = v13;
    v28 = v18;
    dispatch_async(v17, &v22);

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

- (id)_sendTestResults:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(ASTRemoteServerSession *)self sessionId];
    *buf = 138412290;
    v63 = v6;
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[SEND TEST RESULTS] (%@)", buf, 0xCu);
  }

  v7 = [(ASTRemoteServerSession *)self pendingTestResults];
  v8 = [v7 objectForKeyedSubscript:v4];

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
    v47 = v4;
    v57 = v47;
    v12 = v11;
    v58 = v12;
    v49 = MEMORY[0x245CD5130](v56);
    v13 = [v8 files];
    if (v13 && (v14 = v13, [v8 files], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "count"), v15, v14, v16))
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v17 = [v50 files];
      v51 = [v17 countByEnumeratingWithState:&v52 objects:v61 count:16];
      if (v51)
      {
        v41 = v10;
        v42 = v4;
        v44 = *v53;
        v45 = v12;
        v18 = 1;
        obj = v17;
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
            v21 = [(ASTRemoteServerSession *)self connectionManager];
            v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v18];
            v23 = MEMORY[0x277CCACA8];
            v24 = [v50 files];
            v25 = [v23 stringWithFormat:@"%lu", objc_msgSend(v24, "count")];
            v26 = v20;
            [v20 fileURL];
            v28 = v27 = self;
            v29 = [v28 lastPathComponent];
            [v21 postSealableFile:v26 fileSequence:v22 totalFiles:v25 testId:v47 dataId:v29 allowsCellularAccess:v48 completion:v49];

            self = v27;
            v12 = v45;

            ++v18;
          }

          v17 = obj;
          v51 = [obj countByEnumeratingWithState:&v52 objects:v61 count:16];
        }

        while (v51);
        v10 = v41;
        v4 = v42;
      }
    }

    else
    {
      dispatch_group_enter(v12);
      v17 = [(ASTRemoteServerSession *)self connectionManager];
      [v17 postTestResult:v50 allowsCellularAccess:v48 completion:v49];
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
      v32 = [v50 testId];
      v33 = [v31 stringWithFormat:@"%@", v32];
      v60[0] = v33;
      v59[1] = @"statusCode";
      v34 = [v50 statusCode];
      v60[1] = v34;
      v59[2] = @"statusCodeStr";
      v35 = MEMORY[0x277CCACA8];
      v36 = [v50 statusCode];
      v37 = [v35 stringWithFormat:@"%@", v36];
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

- (id)_continueWithLastRequest:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(ASTRemoteServerSession *)self sessionId];
    *buf = 138412290;
    v32 = v6;
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[CONTINUE] (%@)", buf, 0xCu);
  }

  v7 = v4;
  if ([v7 clientStatus] == 3)
  {
    v8 = [(ASTRemoteServerSession *)self runningTests];
    v9 = [v8 count];

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
    v10 = [(ASTRemoteServerSession *)self pendingTestResults];
    v11 = [v10 count];

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

  v13 = [(ASTSession *)self context];
  v14 = [v13 controlCommand];
  v15 = [v14 allActionsFinished];

  if (!v15)
  {
    [v12 setClientStatus:13];
    v25 = [(ASTSession *)self context];
    v26 = [v25 controlCommand];
    v27 = [v26 requestData];
    [v12 setData:v27];

    goto LABEL_14;
  }

  [v12 setClientStatus:14];
  v16 = [(ASTSession *)self context];
  v17 = [v16 controlCommand];
  v18 = [v17 completionArray];
  v19 = [v18 count];

  if (v19)
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __51__ASTRemoteServerSession__continueWithLastRequest___block_invoke;
    v30[3] = &unk_278CBCFB0;
    v30[4] = self;
    [v12 setCompletion:v30];
  }

  v20 = [(ASTSession *)self context];
  v21 = [v20 controlCommand];
  v22 = [v21 requestData];
  [v12 setData:v22];

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

- (id)_sendPropertiesWithData:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(ASTRemoteServerSession *)self sessionId];
    *buf = 138412290;
    v27 = v6;
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[SEND PROPERTIES] (%@)", buf, 0xCu);
  }

  v7 = [v4 objectForKeyedSubscript:@"propertyItems"];

  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = [v4 objectForKeyedSubscript:@"propertyItems"];
  v9 = [(ASTSession *)self context];
  v10 = [v9 identity];
  v11 = [ASTProfileResult resultWithIdentity:v10];

  v12 = dispatch_semaphore_create(0);
  v13 = self;
  objc_sync_enter(v13);
  [(ASTRemoteServerSession *)v13 setPendingPropertiesSemaphore:v12];
  objc_sync_exit(v13);

  objc_initWeak(buf, v13);
  v14 = [(ASTRemoteServerSession *)v13 delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ASTRemoteServerSession__sendPropertiesWithData___block_invoke;
  block[3] = &unk_278CBD768;
  objc_copyWeak(&v25, buf);
  v15 = v11;
  v23 = v15;
  v16 = v8;
  v24 = v16;
  dispatch_async(v14, block);

  dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  v17 = v13;
  objc_sync_enter(v17);
  v18 = [(ASTRemoteServerSession *)v17 pendingPropertiesResult];
  [(ASTRemoteServerSession *)v17 setPendingPropertiesSemaphore:0];
  [(ASTRemoteServerSession *)v17 setPendingPropertiesResult:0];
  objc_sync_exit(v17);

  objc_destroyWeak(&v25);
  objc_destroyWeak(buf);

  if (!v18)
  {
LABEL_5:
    v18 = +[ASTRequest request];
    v19 = [(ASTErrorStatus *)ASTSendPropertiesErrorStatus errorStatusWithCode:-2];
    [v18 setError:v19];

    [v18 setClientStatus:10];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v18;
}

void __50__ASTRemoteServerSession__sendPropertiesWithData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained delegate];
  [v2 session:WeakRetained profile:*(a1 + 32) filteredByComponents:*(a1 + 40)];
}

- (id)_updateSessionSettingsWithData:(id)a3
{
  v4 = a3;
  v5 = +[ASTRequest request];
  v6 = [(ASTSession *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = dispatch_semaphore_create(0);
    objc_initWeak(&location, self);
    v9 = [(ASTRemoteServerSession *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__ASTRemoteServerSession__updateSessionSettingsWithData___block_invoke;
    block[3] = &unk_278CBD7E0;
    objc_copyWeak(&v16, &location);
    v13 = v4;
    v14 = v5;
    v15 = v8;
    v10 = v8;
    dispatch_async(v9, block);

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
    v4 = [(ASTRemoteServerSession *)self sessionId];
    v8 = 138412290;
    v9 = v4;
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
    v4 = [(ASTRemoteServerSession *)self sessionId];
    v8 = 138412290;
    v9 = v4;
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
    v4 = [(ASTRemoteServerSession *)self sessionId];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_240F3C000, v3, OS_LOG_TYPE_DEFAULT, "[ARCHIVE] (%@)", &v6, 0xCu);
  }

  [(ASTRemoteServerSession *)self _abortRunningProcedures];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_rebootWithData:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(ASTRemoteServerSession *)self sessionId];
    *buf = 138412290;
    v20 = v6;
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[REBOOT] (%@)", buf, 0xCu);
  }

  [(ASTRemoteServerSession *)self _abortRunningProcedures];
  v7 = [(ASTSession *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    objc_initWeak(buf, self);
    v9 = [(ASTRemoteServerSession *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__ASTRemoteServerSession__rebootWithData___block_invoke;
    block[3] = &unk_278CBD718;
    objc_copyWeak(&v18, buf);
    v17 = v4;
    dispatch_async(v9, block);

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }

  else
  {
    v10 = [(ASTSession *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      objc_initWeak(buf, self);
      v12 = [(ASTRemoteServerSession *)self delegateQueue];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __42__ASTRemoteServerSession__rebootWithData___block_invoke_2;
      v14[3] = &unk_278CBD6F0;
      objc_copyWeak(&v15, buf);
      dispatch_async(v12, v14);

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

- (void)_shutdownWithData:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(ASTRemoteServerSession *)self sessionId];
    *buf = 138412290;
    v15 = v6;
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[SHUTDOWN] (%@)", buf, 0xCu);
  }

  [(ASTRemoteServerSession *)self _abortRunningProcedures];
  v7 = [(ASTSession *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    objc_initWeak(buf, self);
    v9 = [(ASTRemoteServerSession *)self delegateQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __44__ASTRemoteServerSession__shutdownWithData___block_invoke;
    v11[3] = &unk_278CBD718;
    objc_copyWeak(&v13, buf);
    v12 = v4;
    dispatch_async(v9, v11);

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

- (id)_showInstructionalPromptWithData:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(ASTRemoteServerSession *)self sessionId];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_240F3C000, v5, OS_LOG_TYPE_DEFAULT, "[SHOW INSTRUCTIONS] (%@)", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__4;
  v44 = __Block_byref_object_dispose__4;
  v45 = 0;
  v7 = [v4 objectForKeyedSubscript:@"instructionId"];
  v8 = [v4 objectForKeyedSubscript:@"reference"];
  v30 = [v4 objectForKeyedSubscript:@"type"];
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
    v11 = [(ASTRemoteServerSession *)self _retryRequest];
    v12 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v11;

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
    v15 = [MEMORY[0x277CBEAF8] preferredLanguages];
    v16 = [v15 firstObject];

    v17 = [MEMORY[0x277CBEAF8] currentLocale];
    v18 = [v17 localeIdentifier];

    v19 = [(ASTRemoteServerSession *)self connectionManager];
    v20 = v19 == 0;

    if (v20)
    {
      v25 = [(ASTRemoteServerSession *)self _retryRequest];
      v26 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v25;

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
      v22 = [(ASTRemoteServerSession *)self connectionManager];
      v23 = [(ASTRemoteServerSession *)self payloadSigner];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __59__ASTRemoteServerSession__showInstructionalPromptWithData___block_invoke;
      v31[3] = &unk_278CBD8A0;
      p_buf = &buf;
      v31[4] = self;
      v24 = v21;
      v32 = v24;
      v33 = v8;
      [v22 requestInstructionalPromptDetailsWithInstructionID:v7 type:v30 withPayloadSigner:v23 language:v16 locale:v18 allowsCellularAccess:1 completionHandler:v31];

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
  v3 = [(ASTSession *)self context];
  v4 = [v3 testSuiteRunning];

  if (v4)
  {
    [(ASTRemoteServerSession *)self _cancelRunningTests];
    [(ASTRemoteServerSession *)self _cancelSendingTestResults];
    v5 = [(ASTSession *)self context];
    [v5 setTestSuiteRunning:0];

    v6 = [(ASTSession *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      objc_initWeak(&location, self);
      v8 = [(ASTRemoteServerSession *)self delegateQueue];
      v9 = MEMORY[0x277D85DD0];
      v10 = 3221225472;
      v11 = __49__ASTRemoteServerSession__abortRunningProcedures__block_invoke;
      v12 = &unk_278CBD6F0;
      objc_copyWeak(&v13, &location);
      dispatch_async(v8, &v9);

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
  v3 = [(ASTRemoteServerSession *)self runningTests];
  objc_sync_enter(v3);
  v4 = [(ASTRemoteServerSession *)self runningTests];
  v5 = [v4 copy];

  objc_sync_exit(v3);
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
        v10 = [(ASTSession *)self delegate];
        v11 = objc_opt_respondsToSelector();

        if (v11)
        {
          objc_initWeak(&location, self);
          v12 = [(ASTRemoteServerSession *)self delegateQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __45__ASTRemoteServerSession__cancelRunningTests__block_invoke;
          block[3] = &unk_278CBD718;
          objc_copyWeak(&v18, &location);
          block[4] = v9;
          dispatch_async(v12, block);

          objc_destroyWeak(&v18);
          objc_destroyWeak(&location);
        }

        v13 = [(ASTRemoteServerSession *)self runningTests];
        objc_sync_enter(v13);
        v14 = [(ASTRemoteServerSession *)self runningTests];
        [v14 removeObjectForKey:v9];

        objc_sync_exit(v13);
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

- (BOOL)sendAuthInfoResult:(id)a3 error:(id *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[ASTRemoteServerSession sendAuthInfoResult:error:]";
    _os_log_impl(&dword_240F3C000, v7, OS_LOG_TYPE_DEFAULT, "[ASTRemoteServerSession] %s", &v16, 0xCu);
  }

  v8 = self;
  objc_sync_enter(v8);
  v9 = [(ASTRemoteServerSession *)v8 pendingAuthInfoSemaphore];
  objc_sync_exit(v8);

  if (!v9)
  {
    if (a4)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-1007 userInfo:0];
      *a4 = v13 = 0;
      goto LABEL_10;
    }

LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  if (v6)
  {
    v10 = [(ASTRemoteServerSession *)v8 payloadSigner];
    v11 = [v6 sealWithPayloadSigner:v10 error:a4];

    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v12 = v8;
  objc_sync_enter(v12);
  [(ASTRemoteServerSession *)v12 setPendingAuthInfoResult:v6];
  objc_sync_exit(v12);

  dispatch_semaphore_signal(v9);
  v13 = 1;
LABEL_10:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)sendProfileResult:(id)a3 error:(id *)a4
{
  v26[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(ASTRemoteServerSession *)v7 pendingPropertiesSemaphore];
  v9 = [(ASTRemoteServerSession *)v7 pendingProfileSemaphore];
  objc_sync_exit(v7);

  if (!v9)
  {
    if (!v8)
    {
      if (a4)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-1007 userInfo:0];
        *a4 = v13 = 0;
        goto LABEL_20;
      }

LABEL_11:
      v13 = 0;
      goto LABEL_20;
    }

    if (v6)
    {
      v14 = +[ASTRequest request];
      [v14 setClientStatus:10];
      if ([v6 isSealed])
      {
        [v14 setData:MEMORY[0x277CBEC10]];
        v15 = [(ASTErrorStatus *)ASTSendPropertiesErrorStatus errorStatusWithCode:-3];
        [v14 setError:v15];

        if (a4)
        {
          *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-4002 userInfo:0];
        }
      }

      else
      {
        v16 = [v6 properties];
        v17 = [v16 count];

        if (v17)
        {
          v25 = @"propertyItems";
          v18 = [v6 properties];
          v26[0] = v18;
          v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
          [v14 setData:v19];
        }
      }

      if (v14)
      {
        v20 = [(ASTRemoteServerSession *)v7 payloadSigner];
        v21 = [v14 sealWithPayloadSigner:v20 error:a4];

        if (v21)
        {
          v22 = v7;
          objc_sync_enter(v22);
          [(ASTRemoteServerSession *)v22 setPendingPropertiesResult:v14];
          objc_sync_exit(v22);

          dispatch_semaphore_signal(v8);
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

  v10 = [(ASTRemoteServerSession *)v7 payloadSigner];
  v11 = [v6 sealWithPayloadSigner:v10 error:a4];

  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = v7;
  objc_sync_enter(v12);
  [(ASTRemoteServerSession *)v12 setPendingProfileResult:v6];
  objc_sync_exit(v12);

  dispatch_semaphore_signal(v9);
  v13 = 1;
LABEL_20:

  v23 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)sendTestResult:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(ASTRemoteServerSession *)self runningTests];
  objc_sync_enter(v7);
  if ([(ASTRemoteServerSession *)self phase]== 2)
  {
    v8 = [(ASTRemoteServerSession *)self runningTests];
    v9 = [v6 testId];
    v10 = [v8 objectForKeyedSubscript:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(ASTRemoteServerSession *)self runningTests];
  v12 = [v6 testId];
  [v11 removeObjectForKey:v12];

  objc_sync_exit(v7);
  if (!v10)
  {
    if (a4)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-1007 userInfo:0];
      *a4 = v25 = 0;
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v13 = [v6 files];
  if (v13)
  {
    v14 = v13;
    v15 = [v6 files];
    v16 = [v15 count];

    if (v16)
    {
      v17 = [(ASTRemoteServerSession *)self fileSigner];
      v18 = [v6 sealWithFileSigner:v17 error:a4];

      if ((v18 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }
  }

  v19 = [(ASTRemoteServerSession *)self payloadSigner];
  v20 = [v6 sealWithPayloadSigner:v19 error:a4];

  if (!v20)
  {
LABEL_15:
    v25 = 0;
    goto LABEL_16;
  }

LABEL_10:
  v21 = [(ASTRemoteServerSession *)self pendingTestResults];
  v22 = [v6 testId];
  [v21 setObject:v6 forKeyedSubscript:v22];

  dispatch_semaphore_signal(v10);
  v23 = [(ASTRemoteServerSession *)self backoffTimer];

  if (v23)
  {
    v24 = [(ASTRemoteServerSession *)self backoffTimer];
    dispatch_semaphore_signal(v24);
  }

  v25 = 1;
LABEL_16:

  return v25;
}

- (void)_cancelSendingTestResults
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(ASTRemoteServerSession *)self connectionManager];
  [v3 cancelAllTestResults];

  v4 = [(ASTRemoteServerSession *)self pendingTestResults];
  v5 = [v4 allKeys];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
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
        v12 = [(ASTRemoteServerSession *)self pendingTestResults];
        [v12 removeObjectForKey:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)updateAction:(id)a3
{
  v4 = a3;
  v5 = [(ASTSession *)self context];
  v6 = [v5 controlCommand];
  [v6 updateAction:v4];

  v7 = [(ASTRemoteServerSession *)self backoffTimer];

  if (v7)
  {
    v8 = [(ASTRemoteServerSession *)self backoffTimer];
    dispatch_semaphore_signal(v8);
  }
}

+ (void)downloadAsset:(id)a3 serverURL:(id)a4 endpoint:(id)a5 fileHandle:(id)a6 completionHandler:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v19 = +[ASTEnvironment currentEnvironment];
  v16 = [v19 SOCKSProxyServer];
  v17 = [v19 SOCKSProxyPort];
  v18 = [[ASTMaterializedConnectionManager alloc] initWithSOCKSProxyServer:v16 port:v17];
  [(ASTMaterializedConnectionManager *)v18 downloadAsset:v15 serverURL:v14 endpoint:v13 destinationFileHandle:v12 allowsCellularAccess:1 completion:v11];
}

- (void)_backoff
{
  v3 = 1000000000;
  v4 = [(ASTRemoteServerSession *)self runningTests];
  if ([v4 count])
  {
  }

  else
  {
    v5 = [(ASTRemoteServerSession *)self pendingTestResults];
    v6 = [v5 count];

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
  v7 = [ASTRequest stringFromClientStatus:a1];
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_cancelControlExecution
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(ASTSession *)self context];
  v4 = [v3 controlCommand];
  v5 = [v4 reset];

  v6 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = v5;
    _os_log_impl(&dword_240F3C000, v6, OS_LOG_TYPE_DEFAULT, "Reset control command: %d", &buf, 8u);
  }

  if (v5)
  {
    objc_initWeak(&buf, self);
    v7 = [(ASTRemoteServerSession *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__ASTRemoteServerSession__cancelControlExecution__block_invoke;
    block[3] = &unk_278CBD6F0;
    objc_copyWeak(&v10, &buf);
    dispatch_async(v7, block);

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

- (BOOL)_validateCommand:(int64_t)a3 clientStatus:(int64_t)a4
{
  if (a3 > 0xD)
  {
LABEL_12:
    if (a3 != 1)
    {
      goto LABEL_15;
    }

    v7 = a4 - 1;
    if ((a4 - 1) >= 0xF)
    {
      goto LABEL_15;
    }

    v8 = 28323;
    goto LABEL_7;
  }

  if (((1 << a3) & 0x3BC0) != 0)
  {
    return 1;
  }

  if (((1 << a3) & 0x42C) == 0)
  {
    if (a3 == 4)
    {
      if (((a4 - 4) & 0xFFFFFFFFFFFFFFF7) == 0)
      {
        return 1;
      }

      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v7 = a4 - 1;
  if ((a4 - 1) >= 0xF)
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
    [ASTRemoteServerSession _validateCommand:a3 clientStatus:a4];
  }

  return 0;
}

- (void)connectionManagerRequestPaused:(id)a3
{
  v4 = a3;
  v5 = [(ASTSession *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-1004 userInfo:0];
    objc_initWeak(&location, self);
    v8 = [(ASTRemoteServerSession *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__ASTRemoteServerSession_connectionManagerRequestPaused___block_invoke;
    block[3] = &unk_278CBD718;
    objc_copyWeak(&v12, &location);
    v11 = v7;
    v9 = v7;
    dispatch_async(v8, block);

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

- (void)connectionManagerRequestResumed:(id)a3
{
  v4 = a3;
  v5 = [(ASTSession *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    objc_initWeak(&location, self);
    v7 = [(ASTRemoteServerSession *)self delegateQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __58__ASTRemoteServerSession_connectionManagerRequestResumed___block_invoke;
    v8[3] = &unk_278CBD6F0;
    objc_copyWeak(&v9, &location);
    dispatch_async(v7, v8);

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

- (void)connectionManager:(id)a3 pausedSendingResultForTest:(id)a4 reason:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(ASTSession *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    if (a5)
    {
      v12 = -1003;
    }

    else
    {
      v12 = -1004;
    }

    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:v12 userInfo:0];
    objc_initWeak(&location, self);
    v14 = [(ASTRemoteServerSession *)self delegateQueue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __78__ASTRemoteServerSession_connectionManager_pausedSendingResultForTest_reason___block_invoke;
    v16[3] = &unk_278CBD768;
    objc_copyWeak(&v19, &location);
    v17 = v9;
    v18 = v13;
    v15 = v13;
    dispatch_async(v14, v16);

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

- (void)connectionManager:(id)a3 resumedSendingResultForTest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ASTSession *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    objc_initWeak(&location, self);
    v10 = [(ASTRemoteServerSession *)self delegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__ASTRemoteServerSession_connectionManager_resumedSendingResultForTest___block_invoke;
    block[3] = &unk_278CBD718;
    objc_copyWeak(&v13, &location);
    v12 = v7;
    dispatch_async(v10, block);

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

- (id)_signPayload:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__4;
  v22 = __Block_byref_object_dispose__4;
  v23 = 0;
  v7 = [(ASTSession *)self delegate];
  if ([v7 conformsToProtocol:&unk_2852D8970])
  {
    v8 = [(ASTSession *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) == 0)
    {
      goto LABEL_5;
    }

    v7 = [(ASTSession *)self delegate];
    v10 = dispatch_semaphore_create(0);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __45__ASTRemoteServerSession__signPayload_error___block_invoke;
    v14[3] = &unk_278CBD8C8;
    v16 = &v18;
    v17 = a4;
    v11 = v10;
    v15 = v11;
    [v7 session:self signPayload:v6 completionHandler:v14];
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

- (id)_signFile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__4;
  v22 = __Block_byref_object_dispose__4;
  v23 = 0;
  v7 = [(ASTSession *)self delegate];
  if ([v7 conformsToProtocol:&unk_2852D8970])
  {
    v8 = [(ASTSession *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) == 0)
    {
      goto LABEL_5;
    }

    v7 = [(ASTSession *)self delegate];
    v10 = dispatch_semaphore_create(0);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __42__ASTRemoteServerSession__signFile_error___block_invoke;
    v14[3] = &unk_278CBD8C8;
    v16 = &v18;
    v17 = a4;
    v11 = v10;
    v15 = v11;
    [v7 session:self signFile:v6 completionHandler:v14];
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

- (BOOL)_shouldAllowCellularForSealedTestResult:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASTSession *)self allowCellularSizeThreshold];
  v6 = [v4 allowCellularSizeThreshold];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    v8 = [v4 allowCellularSizeThreshold];
    v5 = [v8 unsignedIntegerValue];

    v9 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v36 = v5;
      _os_log_impl(&dword_240F3C000, v9, OS_LOG_TYPE_DEFAULT, "Using cellular size threshold from test result: %lu", buf, 0xCu);
    }
  }

  if (v5 == -1)
  {
    v10 = 1;
  }

  else
  {
    v11 = [v4 files];
    if (v11 && (v12 = v11, [v4 files], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "count"), v13, v12, v14))
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v15 = [v4 files];
      v16 = [v15 countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (v16)
      {
        v17 = v16;
        v29 = v5;
        v30 = v4;
        v18 = 0;
        v19 = *v32;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v32 != v19)
            {
              objc_enumerationMutation(v15);
            }

            v21 = *(*(&v31 + 1) + 8 * i);
            v22 = [MEMORY[0x277CCAA00] defaultManager];
            v23 = [v21 fileURL];
            v24 = [v23 path];
            v25 = [v22 attributesOfItemAtPath:v24 error:0];
            v18 += [v25 fileSize];
          }

          v17 = [v15 countByEnumeratingWithState:&v31 objects:v39 count:16];
        }

        while (v17);
        v5 = v29;
        v4 = v30;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v15 = [v4 payload];
      v18 = [v15 length];
    }

    v26 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v36 = v18;
      v37 = 2048;
      v38 = v5;
      _os_log_impl(&dword_240F3C000, v26, OS_LOG_TYPE_DEFAULT, "Payload size: %llu, threshold: %lu", buf, 0x16u);
    }

    v10 = v18 <= v5;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)_shouldAllowCellularForSealedSealablePayload:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASTSession *)self allowCellularSizeThreshold];
  if (v5 == -1)
  {
    v6 = 1;
  }

  else
  {
    v7 = v5;
    v8 = [v4 payload];
    v9 = [v8 length];

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

+ (BOOL)auditToken:(id *)a3 hasEntitlement:(id)a4
{
  [a4 UTF8String];
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

- (void)requestSuitesAvailableWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(ASTRemoteServerSession *)self phase]!= 2)
  {
    v9 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ASTRemoteServerSession requestSuitesAvailableWithCompletionHandler:?];
    }

    v6 = [MEMORY[0x277CBEA60] array];
    v10 = [(ASTRemoteServerSession *)self clientStatusLoopError];
    v4[2](v4, v6, v10);
    goto LABEL_10;
  }

  v5 = +[ASTEnvironment currentEnvironment];
  v6 = [v5 configCode];

  if (!v6)
  {
    v11 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ASTRemoteServerSession requestSuitesAvailableWithCompletionHandler:];
    }

    v10 = [MEMORY[0x277CBEA60] array];
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-4003 userInfo:0];
    v4[2](v4, v10, v12);

LABEL_10:
    goto LABEL_11;
  }

  v7 = [(ASTRemoteServerSession *)self connectionManager];
  v8 = [(ASTRemoteServerSession *)self payloadSigner];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__ASTRemoteServerSession_requestSuitesAvailableWithCompletionHandler___block_invoke;
  v13[3] = &unk_278CBD8F0;
  v13[4] = self;
  v14 = v4;
  [v7 requestSelfServiceSuitesAvailableWithConfigCode:v6 withPayloadSigner:v8 allowsCellularAccess:1 completionHandler:v13];

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

- (void)requestSuiteStart:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([(ASTRemoteServerSession *)self phase]== 2)
  {
    v8 = [(ASTRemoteServerSession *)self connectionManager];
    v9 = [(ASTRemoteServerSession *)self payloadSigner];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __62__ASTRemoteServerSession_requestSuiteStart_completionHandler___block_invoke;
    v11[3] = &unk_278CBD918;
    v12 = v6;
    [v8 postSelectSelfServiceSuite:v7 withPayloadSigner:v9 allowsCellularAccess:1 completionHandler:v11];
  }

  else
  {
    v10 = [(ASTRemoteServerSession *)self clientStatusLoopError];
    (*(v6 + 2))(v6, v7, 0, 0, v10);
  }
}

- (void)requestSuiteSummary:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(ASTRemoteServerSession *)self phase]!= 2)
  {
    v10 = [(ASTRemoteServerSession *)self clientStatusLoopError];
LABEL_8:
    v12 = v10;
    v7[2](v7, 0, v10);

    goto LABEL_9;
  }

  if (![v6 length])
  {
    v11 = ASTLogHandleForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ASTRemoteServerSession requestSuiteSummary:completionHandler:];
    }

    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-4004 userInfo:0];
    goto LABEL_8;
  }

  v8 = [(ASTRemoteServerSession *)self connectionManager];
  v9 = [(ASTRemoteServerSession *)self payloadSigner];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__ASTRemoteServerSession_requestSuiteSummary_completionHandler___block_invoke;
  v13[3] = &unk_278CBD940;
  v14 = v7;
  [v8 requestSelfServiceSuiteResultsWithDiagnosticEventID:v6 withPayloadSigner:v9 allowsCellularAccess:1 completionHandler:v13];

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