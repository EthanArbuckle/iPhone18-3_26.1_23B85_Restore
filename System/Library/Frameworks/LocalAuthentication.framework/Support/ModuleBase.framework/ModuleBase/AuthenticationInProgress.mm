@interface AuthenticationInProgress
- (AuthenticationInProgress)initWithMechanism:(id)mechanism policy:(int64_t)policy uiDelegate:(id)delegate originator:(id)originator request:(id)request internalInfo:(id)info reply:(id)reply;
- (BOOL)_isInteractiveEvaluationWithinProtectedAppsEvaluation:(id)evaluation;
- (BOOL)shouldEnqueueAuthentication:(id)authentication;
- (LACClientInfo)clientInfo;
- (id)description;
- (id)shouldDequeueAndRunAfterAuthentication:(id)authentication result:(id)result error:(id)error;
- (void)_bypassPreflightCache:(BOOL)cache;
- (void)cancelWithError:(id)error;
- (void)enqueueAuthentication:(id)authentication;
- (void)runWithCompletionHandler:(id)handler;
@end

@implementation AuthenticationInProgress

- (AuthenticationInProgress)initWithMechanism:(id)mechanism policy:(int64_t)policy uiDelegate:(id)delegate originator:(id)originator request:(id)request internalInfo:(id)info reply:(id)reply
{
  mechanismCopy = mechanism;
  delegateCopy = delegate;
  originatorCopy = originator;
  requestCopy = request;
  infoCopy = info;
  replyCopy = reply;
  v29.receiver = self;
  v29.super_class = AuthenticationInProgress;
  v20 = [(AuthenticationInProgress *)&v29 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_mechanism, mechanism);
    v21->_policy = policy;
    objc_storeStrong(&v21->_uiDelegate, delegate);
    objc_storeStrong(&v21->_internalOptions, info);
    v22 = [infoCopy objectForKeyedSubscript:{@"Options", delegateCopy, mechanismCopy}];
    options = v21->_options;
    v21->_options = v22;

    v21->_originatorId = [originatorCopy originatorId];
    v21->_originatorPid = [originatorCopy processId];
    v21->_originatorUid = [originatorCopy userId];
    objc_storeStrong(&v21->_request, request);
    v24 = MEMORY[0x23EE740C0](replyCopy);
    reply = v21->_reply;
    v21->_reply = v24;
  }

  return v21;
}

- (id)description
{
  v3 = objc_opt_new();
  started = self->_started;
  if (started)
  {
    v5 = [MEMORY[0x277CCA968] localizedStringFromDate:started dateStyle:1 timeStyle:3];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"started: %@", v5];
    [v3 addObject:v6];
  }

  originatorUid = self->_originatorUid;
  if (originatorUid != getuid())
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"uid: %u", self->_originatorUid];
    [v3 addObject:v8];
  }

  enqueuedAuthentication = [(AuthenticationInProgress *)self enqueuedAuthentication];

  if (enqueuedAuthentication)
  {
    v10 = MEMORY[0x277CCACA8];
    enqueuedAuthentication2 = [(AuthenticationInProgress *)self enqueuedAuthentication];
    v12 = [v10 stringWithFormat:@"enqueued: %@", enqueuedAuthentication2];
    [v3 addObject:v12];
  }

  v13 = MEMORY[0x277CCACA8];
  policy = [(AuthenticationInProgress *)self policy];
  options = [(AuthenticationInProgress *)self options];
  AuthenticationPriorityForPolicy(policy, options);
  v16 = NSStringFromLACAuthenticationPriority();
  v17 = [v13 stringWithFormat:@"priority: %@", v16];

  [v3 addObject:v17];
  v18 = MEMORY[0x277CCACA8];
  originatorPid = self->_originatorPid;
  v20 = [v3 componentsJoinedByString:{@", "}];
  v21 = [v18 stringWithFormat:@"<AuthenticationInProgress: %p pid:%u, %@>", self, originatorPid, v20];;

  return v21;
}

- (void)runWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  self->_running = 1;
  date = [MEMORY[0x277CBEAA8] date];
  started = self->_started;
  self->_started = date;

  options = [(AuthenticationInProgress *)self options];
  v8 = [options objectForKeyedSubscript:&unk_284B7A880];

  if (v8)
  {
    [v8 doubleValue];
    v10 = dispatch_time(0, (v9 * 1000000000.0));
    objc_initWeak(&location, self);
    mEMORY[0x277CD47C8] = [MEMORY[0x277CD47C8] sharedInstance];
    serverQueue = [mEMORY[0x277CD47C8] serverQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__AuthenticationInProgress_runWithCompletionHandler___block_invoke;
    block[3] = &unk_278A64600;
    objc_copyWeak(&v25, &location);
    dispatch_after(v10, serverQueue, block);

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  policy = [(AuthenticationInProgress *)self policy];
  options2 = [(AuthenticationInProgress *)self options];
  v15 = AuthenticationPriorityForPolicy(policy, options2) > 1;

  [(AuthenticationInProgress *)self _bypassPreflightCache:v15];
  objc_initWeak(&location, self);
  mechanism = self->_mechanism;
  p_uiDelegate = &self->_uiDelegate;
  uiDelegate = self->_uiDelegate;
  v18 = p_uiDelegate[1];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __53__AuthenticationInProgress_runWithCompletionHandler___block_invoke_2;
  v21[3] = &unk_278A64628;
  objc_copyWeak(&v23, &location);
  v20 = handlerCopy;
  v22 = v20;
  [(MechanismBase *)mechanism runWithHints:v18 eventsDelegate:uiDelegate reply:v21];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __53__AuthenticationInProgress_runWithCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained mechanism];
  v2 = [MEMORY[0x277D24060] errorWithCode:*MEMORY[0x277D23E98] debugDescription:@"Timeout expired."];
  [v1 finishRunWithResult:0 error:v2];
}

void __53__AuthenticationInProgress_runWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = LA_LOG();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v12 = v6;
      if (v5)
      {
        v12 = [v5 objectForKeyedSubscript:@"Result"];
      }

      v13 = 138543618;
      v14 = WeakRetained;
      v15 = 2114;
      v16 = v12;
      _os_log_debug_impl(&dword_238BBF000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ returned %{public}@", &v13, 0x16u);
      if (v5)
      {
      }
    }

    [WeakRetained _bypassPreflightCache:0];
    v9 = *(WeakRetained + 3);
    if (v9)
    {
      (*(v9 + 16))(v9, v5, v6);
      v10 = *(WeakRetained + 3);
      *(WeakRetained + 3) = 0;
    }

    *(WeakRetained + 64) = 0;
    (*(*(a1 + 32) + 16))();
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_bypassPreflightCache:(BOOL)cache
{
  cacheCopy = cache;
  preflightCacheBypassAssertion = self->_preflightCacheBypassAssertion;
  if (preflightCacheBypassAssertion)
  {
    [(PreflightCacheBypassAssertion *)preflightCacheBypassAssertion drop];
    v6 = self->_preflightCacheBypassAssertion;
    self->_preflightCacheBypassAssertion = 0;
  }

  if (cacheCopy)
  {
    mEMORY[0x277CD47D8] = [MEMORY[0x277CD47D8] sharedInstance];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"running high priority authentication: %@", self];
    v8 = [mEMORY[0x277CD47D8] acquireBypassAssertionWithReason:v7];
    v9 = self->_preflightCacheBypassAssertion;
    self->_preflightCacheBypassAssertion = v8;
  }
}

- (void)cancelWithError:(id)error
{
  errorCopy = error;
  if ([(AuthenticationInProgress *)self isRunning])
  {
    mechanism = [(AuthenticationInProgress *)self mechanism];
    [mechanism failAuthenticationWithError:errorCopy];
  }

  else
  {
    reply = self->_reply;
    if (!reply)
    {
      goto LABEL_6;
    }

    reply[2](reply, 0, errorCopy);
    mechanism = self->_reply;
    self->_reply = 0;
  }

LABEL_6:
}

- (void)enqueueAuthentication:(id)authentication
{
  v14 = *MEMORY[0x277D85DE8];
  authenticationCopy = authentication;
  if ([(AuthenticationInProgress *)self shouldEnqueueAuthentication:authenticationCopy])
  {
    enqueuedAuthentication = self->_enqueuedAuthentication;
    if (enqueuedAuthentication)
    {
      v7 = [MEMORY[0x277D24060] errorWithCode:*MEMORY[0x277D23E90] subcode:*MEMORY[0x277D23EC0] debugDescription:@"Canceled by another authentication."];
      [(AuthenticationInProgress *)enqueuedAuthentication cancelWithError:v7];
    }

    v8 = LA_LOG();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = authenticationCopy;
      v12 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_238BBF000, v8, OS_LOG_TYPE_DEFAULT, "Enqueued %@ after %@", &v10, 0x16u);
    }

    objc_storeStrong(&self->_enqueuedAuthentication, authentication);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldEnqueueAuthentication:(id)authentication
{
  authenticationCopy = authentication;
  mechanism = [authenticationCopy mechanism];
  request = [mechanism request];
  retryingForError = [request retryingForError];

  if (retryingForError)
  {
    v8 = 0;
  }

  else
  {
    v8 = [(AuthenticationInProgress *)self _isInteractiveEvaluationWithinProtectedAppsEvaluation:authenticationCopy];
  }

  return v8;
}

- (BOOL)_isInteractiveEvaluationWithinProtectedAppsEvaluation:(id)evaluation
{
  v31 = *MEMORY[0x277D85DE8];
  evaluationCopy = evaluation;
  options = [(AuthenticationInProgress *)self options];
  v6 = LACLightweightUIModeFromOptions();
  v7 = *MEMORY[0x277D23F18];

  if (v6 == v7)
  {
    goto LABEL_10;
  }

  if (![(AuthenticationInProgress *)self isRunning])
  {
    goto LABEL_10;
  }

  options2 = [evaluationCopy options];
  v9 = [options2 objectForKeyedSubscript:&unk_284B7A898];
  bOOLValue = [v9 BOOLValue];

  if ((bOOLValue & 1) != 0 || ([evaluationCopy options], v11 = objc_claimAutoreleasedReturnValue(), v12 = LACLightweightUIModeFromOptions(), v11, v12 != v7))
  {
LABEL_10:
    v20 = 0;
  }

  else
  {
    clientInfo = [(AuthenticationInProgress *)self clientInfo];
    bundleId = [clientInfo bundleId];

    clientInfo2 = [evaluationCopy clientInfo];
    bundleId2 = [clientInfo2 bundleId];

    if (bundleId == bundleId2 || ([bundleId isEqualToString:bundleId2] & 1) != 0)
    {
      v17 = LA_LOG();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        clientInfo3 = [evaluationCopy clientInfo];
        bundleId3 = [clientInfo3 bundleId];
        v27 = 138543362;
        v28 = bundleId3;
        _os_log_impl(&dword_238BBF000, v17, OS_LOG_TYPE_DEFAULT, "Will enqueue authentication by '%{public}@'", &v27, 0xCu);
      }

      v20 = 1;
    }

    else
    {
      v17 = LA_LOG();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        clientInfo4 = [evaluationCopy clientInfo];
        bundleId4 = [clientInfo4 bundleId];
        clientInfo5 = [(AuthenticationInProgress *)self clientInfo];
        bundleId5 = [clientInfo5 bundleId];
        v27 = 138543618;
        v28 = bundleId4;
        v29 = 2114;
        v30 = bundleId5;
        _os_log_impl(&dword_238BBF000, v17, OS_LOG_TYPE_DEFAULT, "Will not enqueue '%{public}@', PA is '%{public}@'", &v27, 0x16u);
      }

      v20 = 0;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (id)shouldDequeueAndRunAfterAuthentication:(id)authentication result:(id)result error:(id)error
{
  v23 = *MEMORY[0x277D85DE8];
  authenticationCopy = authentication;
  errorCopy = error;
  enqueuedAuthentication = [authenticationCopy enqueuedAuthentication];

  if (enqueuedAuthentication == self)
  {
    v15 = LA_LOG();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      if (v16)
      {
        *buf = 0;
        _os_log_impl(&dword_238BBF000, v15, OS_LOG_TYPE_DEFAULT, "The enqueued authentication will start because the previous authentication has finished successfully.", buf, 2u);
      }

      v14 = 0;
    }

    else
    {
      if (v16)
      {
        *buf = 138543618;
        v20 = authenticationCopy;
        v21 = 2114;
        v22 = errorCopy;
        _os_log_impl(&dword_238BBF000, v15, OS_LOG_TYPE_DEFAULT, "The enqueued authentication will fail with the same error as %{public}@ -> %{public}@", buf, 0x16u);
      }

      v14 = errorCopy;
    }
  }

  else
  {
    v11 = MEMORY[0x277D24060];
    v12 = *MEMORY[0x277D23E88];
    authenticationCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Inconsistent authentication binding, %@ is not enqueued after %@", self, authenticationCopy];
    v14 = [v11 errorWithCode:v12 debugDescription:authenticationCopy];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v14;
}

- (LACClientInfo)clientInfo
{
  clientInfo = self->_clientInfo;
  if (!clientInfo)
  {
    mEMORY[0x277D24020] = [MEMORY[0x277D24020] sharedInstance];
    client = [(LACEvaluationRequest *)self->_request client];
    options = [(AuthenticationInProgress *)self options];
    v7 = [mEMORY[0x277D24020] infoForXPCClient:client evaluationOptions:options];
    v8 = self->_clientInfo;
    self->_clientInfo = v7;

    clientInfo = self->_clientInfo;
  }

  return clientInfo;
}

@end