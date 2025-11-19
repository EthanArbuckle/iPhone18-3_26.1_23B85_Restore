@interface AuthenticationInProgress
- (AuthenticationInProgress)initWithMechanism:(id)a3 policy:(int64_t)a4 uiDelegate:(id)a5 originator:(id)a6 request:(id)a7 internalInfo:(id)a8 reply:(id)a9;
- (BOOL)_isInteractiveEvaluationWithinProtectedAppsEvaluation:(id)a3;
- (BOOL)shouldEnqueueAuthentication:(id)a3;
- (LACClientInfo)clientInfo;
- (id)description;
- (id)shouldDequeueAndRunAfterAuthentication:(id)a3 result:(id)a4 error:(id)a5;
- (void)_bypassPreflightCache:(BOOL)a3;
- (void)cancelWithError:(id)a3;
- (void)enqueueAuthentication:(id)a3;
- (void)runWithCompletionHandler:(id)a3;
@end

@implementation AuthenticationInProgress

- (AuthenticationInProgress)initWithMechanism:(id)a3 policy:(int64_t)a4 uiDelegate:(id)a5 originator:(id)a6 request:(id)a7 internalInfo:(id)a8 reply:(id)a9
{
  v28 = a3;
  v27 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v29.receiver = self;
  v29.super_class = AuthenticationInProgress;
  v20 = [(AuthenticationInProgress *)&v29 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_mechanism, a3);
    v21->_policy = a4;
    objc_storeStrong(&v21->_uiDelegate, a5);
    objc_storeStrong(&v21->_internalOptions, a8);
    v22 = [v18 objectForKeyedSubscript:{@"Options", v27, v28}];
    options = v21->_options;
    v21->_options = v22;

    v21->_originatorId = [v16 originatorId];
    v21->_originatorPid = [v16 processId];
    v21->_originatorUid = [v16 userId];
    objc_storeStrong(&v21->_request, a7);
    v24 = MEMORY[0x23EE740C0](v19);
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

  v9 = [(AuthenticationInProgress *)self enqueuedAuthentication];

  if (v9)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [(AuthenticationInProgress *)self enqueuedAuthentication];
    v12 = [v10 stringWithFormat:@"enqueued: %@", v11];
    [v3 addObject:v12];
  }

  v13 = MEMORY[0x277CCACA8];
  v14 = [(AuthenticationInProgress *)self policy];
  v15 = [(AuthenticationInProgress *)self options];
  AuthenticationPriorityForPolicy(v14, v15);
  v16 = NSStringFromLACAuthenticationPriority();
  v17 = [v13 stringWithFormat:@"priority: %@", v16];

  [v3 addObject:v17];
  v18 = MEMORY[0x277CCACA8];
  originatorPid = self->_originatorPid;
  v20 = [v3 componentsJoinedByString:{@", "}];
  v21 = [v18 stringWithFormat:@"<AuthenticationInProgress: %p pid:%u, %@>", self, originatorPid, v20];;

  return v21;
}

- (void)runWithCompletionHandler:(id)a3
{
  v4 = a3;
  self->_running = 1;
  v5 = [MEMORY[0x277CBEAA8] date];
  started = self->_started;
  self->_started = v5;

  v7 = [(AuthenticationInProgress *)self options];
  v8 = [v7 objectForKeyedSubscript:&unk_284B7A880];

  if (v8)
  {
    [v8 doubleValue];
    v10 = dispatch_time(0, (v9 * 1000000000.0));
    objc_initWeak(&location, self);
    v11 = [MEMORY[0x277CD47C8] sharedInstance];
    v12 = [v11 serverQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__AuthenticationInProgress_runWithCompletionHandler___block_invoke;
    block[3] = &unk_278A64600;
    objc_copyWeak(&v25, &location);
    dispatch_after(v10, v12, block);

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  v13 = [(AuthenticationInProgress *)self policy];
  v14 = [(AuthenticationInProgress *)self options];
  v15 = AuthenticationPriorityForPolicy(v13, v14) > 1;

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
  v20 = v4;
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

- (void)_bypassPreflightCache:(BOOL)a3
{
  v3 = a3;
  preflightCacheBypassAssertion = self->_preflightCacheBypassAssertion;
  if (preflightCacheBypassAssertion)
  {
    [(PreflightCacheBypassAssertion *)preflightCacheBypassAssertion drop];
    v6 = self->_preflightCacheBypassAssertion;
    self->_preflightCacheBypassAssertion = 0;
  }

  if (v3)
  {
    v10 = [MEMORY[0x277CD47D8] sharedInstance];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"running high priority authentication: %@", self];
    v8 = [v10 acquireBypassAssertionWithReason:v7];
    v9 = self->_preflightCacheBypassAssertion;
    self->_preflightCacheBypassAssertion = v8;
  }
}

- (void)cancelWithError:(id)a3
{
  v6 = a3;
  if ([(AuthenticationInProgress *)self isRunning])
  {
    v4 = [(AuthenticationInProgress *)self mechanism];
    [v4 failAuthenticationWithError:v6];
  }

  else
  {
    reply = self->_reply;
    if (!reply)
    {
      goto LABEL_6;
    }

    reply[2](reply, 0, v6);
    v4 = self->_reply;
    self->_reply = 0;
  }

LABEL_6:
}

- (void)enqueueAuthentication:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([(AuthenticationInProgress *)self shouldEnqueueAuthentication:v5])
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
      v11 = v5;
      v12 = 2112;
      v13 = self;
      _os_log_impl(&dword_238BBF000, v8, OS_LOG_TYPE_DEFAULT, "Enqueued %@ after %@", &v10, 0x16u);
    }

    objc_storeStrong(&self->_enqueuedAuthentication, a3);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldEnqueueAuthentication:(id)a3
{
  v4 = a3;
  v5 = [v4 mechanism];
  v6 = [v5 request];
  v7 = [v6 retryingForError];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = [(AuthenticationInProgress *)self _isInteractiveEvaluationWithinProtectedAppsEvaluation:v4];
  }

  return v8;
}

- (BOOL)_isInteractiveEvaluationWithinProtectedAppsEvaluation:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(AuthenticationInProgress *)self options];
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

  v8 = [v4 options];
  v9 = [v8 objectForKeyedSubscript:&unk_284B7A898];
  v10 = [v9 BOOLValue];

  if ((v10 & 1) != 0 || ([v4 options], v11 = objc_claimAutoreleasedReturnValue(), v12 = LACLightweightUIModeFromOptions(), v11, v12 != v7))
  {
LABEL_10:
    v20 = 0;
  }

  else
  {
    v13 = [(AuthenticationInProgress *)self clientInfo];
    v14 = [v13 bundleId];

    v15 = [v4 clientInfo];
    v16 = [v15 bundleId];

    if (v14 == v16 || ([v14 isEqualToString:v16] & 1) != 0)
    {
      v17 = LA_LOG();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v4 clientInfo];
        v19 = [v18 bundleId];
        v27 = 138543362;
        v28 = v19;
        _os_log_impl(&dword_238BBF000, v17, OS_LOG_TYPE_DEFAULT, "Will enqueue authentication by '%{public}@'", &v27, 0xCu);
      }

      v20 = 1;
    }

    else
    {
      v17 = LA_LOG();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v4 clientInfo];
        v24 = [v23 bundleId];
        v25 = [(AuthenticationInProgress *)self clientInfo];
        v26 = [v25 bundleId];
        v27 = 138543618;
        v28 = v24;
        v29 = 2114;
        v30 = v26;
        _os_log_impl(&dword_238BBF000, v17, OS_LOG_TYPE_DEFAULT, "Will not enqueue '%{public}@', PA is '%{public}@'", &v27, 0x16u);
      }

      v20 = 0;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (id)shouldDequeueAndRunAfterAuthentication:(id)a3 result:(id)a4 error:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [v8 enqueuedAuthentication];

  if (v10 == self)
  {
    v15 = LA_LOG();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (a4)
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
        v20 = v8;
        v21 = 2114;
        v22 = v9;
        _os_log_impl(&dword_238BBF000, v15, OS_LOG_TYPE_DEFAULT, "The enqueued authentication will fail with the same error as %{public}@ -> %{public}@", buf, 0x16u);
      }

      v14 = v9;
    }
  }

  else
  {
    v11 = MEMORY[0x277D24060];
    v12 = *MEMORY[0x277D23E88];
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Inconsistent authentication binding, %@ is not enqueued after %@", self, v8];
    v14 = [v11 errorWithCode:v12 debugDescription:v13];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v14;
}

- (LACClientInfo)clientInfo
{
  clientInfo = self->_clientInfo;
  if (!clientInfo)
  {
    v4 = [MEMORY[0x277D24020] sharedInstance];
    v5 = [(LACEvaluationRequest *)self->_request client];
    v6 = [(AuthenticationInProgress *)self options];
    v7 = [v4 infoForXPCClient:v5 evaluationOptions:v6];
    v8 = self->_clientInfo;
    self->_clientInfo = v7;

    clientInfo = self->_clientInfo;
  }

  return clientInfo;
}

@end