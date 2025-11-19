@interface VSUserAccountUpdateManager
- (VSUserAccountUpdateManager)initWithUserAccountUpdateRequests:(id)a3;
- (VSUserAccountUpdateManagerDelegate)delegate;
- (id)_requestOptionsWithUserAccounts:(id)a3 callback:(id)a4;
- (void)_configureWatchdogWithSeconds:(unint64_t)a3;
- (void)app:(id)a3 didFailToStartWithError:(id)a4;
- (void)app:(id)a3 prewarmWithContext:(id)a4;
- (void)appDidStart:(id)a3;
- (void)appDidStop:(id)a3;
- (void)transitionToBootingAppState;
- (void)transitionToEnqueuingNextUserAccountSetState;
- (void)transitionToInvokingOnRequestCallbackState;
- (void)transitionToNotifyingFinishState;
- (void)transitionToNotifyingForUserAccountSetState;
- (void)transitionToStoppingAppState;
- (void)transitionToWaitingForAppStopState;
- (void)updateUserAccounts;
@end

@implementation VSUserAccountUpdateManager

- (VSUserAccountUpdateManager)initWithUserAccountUpdateRequests:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = VSUserAccountUpdateManager;
  v5 = [(VSUserAccountUpdateManager *)&v16 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB58] setWithArray:v4];
    updateRequests = v5->_updateRequests;
    v5->_updateRequests = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    updatedUserAccounts = v5->_updatedUserAccounts;
    v5->_updatedUserAccounts = v8;

    v10 = objc_alloc_init(VSStateMachine);
    stateMachine = v5->_stateMachine;
    v5->_stateMachine = v10;

    v12 = v5->_stateMachine;
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [(VSStateMachine *)v12 setName:v14];

    [(VSStateMachine *)v5->_stateMachine setDelegate:v5];
    [(VSStateMachine *)v5->_stateMachine setDestinationState:@"Enqueuing Next User Account Set" forEvent:@"Start" inState:@"Initial"];
    [(VSStateMachine *)v5->_stateMachine setDestinationState:@"Done" forEvent:@"Done" inState:@"Initial"];
    [(VSStateMachine *)v5->_stateMachine setDestinationState:@"Booting App" forEvent:@"Done" inState:@"Enqueuing Next User Account Set"];
    [(VSStateMachine *)v5->_stateMachine setDestinationState:@"Notifying Finish" forEvent:@"Stop" inState:@"Enqueuing Next User Account Set"];
    [(VSStateMachine *)v5->_stateMachine setDestinationState:@"Waiting For App Boot" forEvent:@"Done" inState:@"Booting App"];
    [(VSStateMachine *)v5->_stateMachine setDestinationState:@"Notifying For User Account Set" forEvent:@"Error" inState:@"Booting App"];
    [(VSStateMachine *)v5->_stateMachine setDestinationState:@"Invoking On Request Callback" forEvent:@"Done" inState:@"Waiting For App Boot"];
    [(VSStateMachine *)v5->_stateMachine setDestinationState:@"Notifying For User Account Set" forEvent:@"Timeout" inState:@"Waiting For App Boot"];
    [(VSStateMachine *)v5->_stateMachine setDestinationState:@"Notifying For User Account Set" forEvent:@"Error" inState:@"Waiting For App Boot"];
    [(VSStateMachine *)v5->_stateMachine setDestinationState:@"Waiting For On Request Callback" forEvent:@"Done" inState:@"Invoking On Request Callback"];
    [(VSStateMachine *)v5->_stateMachine setDestinationState:@"Notifying For User Account Set" forEvent:@"Error" inState:@"Invoking On Request Callback"];
    [(VSStateMachine *)v5->_stateMachine setDestinationState:@"Stopping App" forEvent:@"Done" inState:@"Waiting For On Request Callback"];
    [(VSStateMachine *)v5->_stateMachine setDestinationState:@"Notifying For User Account Set" forEvent:@"Error" inState:@"Waiting For On Request Callback"];
    [(VSStateMachine *)v5->_stateMachine setDestinationState:@"Notifying For User Account Set" forEvent:@"Timeout" inState:@"Waiting For On Request Callback"];
    [(VSStateMachine *)v5->_stateMachine setDestinationState:@"Waiting for App Stop" forEvent:@"Done" inState:@"Stopping App"];
    [(VSStateMachine *)v5->_stateMachine setDestinationState:@"Notifying For User Account Set" forEvent:@"Done" inState:@"Waiting for App Stop"];
    [(VSStateMachine *)v5->_stateMachine setDestinationState:@"Notifying For User Account Set" forEvent:@"Timeout" inState:@"Waiting for App Stop"];
    [(VSStateMachine *)v5->_stateMachine setDestinationState:@"Enqueuing Next User Account Set" forEvent:@"Done" inState:@"Notifying For User Account Set"];
    [(VSStateMachine *)v5->_stateMachine setDestinationState:@"Done" forEvent:@"Done" inState:@"Notifying Finish"];
    [(VSStateMachine *)v5->_stateMachine activateWithState:@"Initial"];
  }

  return v5;
}

- (void)updateUserAccounts
{
  v3 = [(VSUserAccountUpdateManager *)self updateRequests];
  v4 = [v3 count];

  v5 = [(VSUserAccountUpdateManager *)self stateMachine];
  v7 = v5;
  if (v4)
  {
    v6 = @"Start";
  }

  else
  {
    v6 = @"Done";
  }

  [v5 enqueueEvent:v6];
}

- (id)_requestOptionsWithUserAccounts:(id)a3 callback:(id)a4
{
  v5 = MEMORY[0x277CBEB38];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v9 setObject:@"refreshAccounts" forKeyedSubscript:@"requestType"];
  v10 = [VSJSUserAccount jsUserAccountsFromUserAccounts:v7];

  [v9 setObject:v10 forKeyedSubscript:@"currentUserAccounts"];
  [v8 setObject:v9 forKeyedSubscript:@"request"];
  [v8 setObject:v6 forKeyedSubscript:@"callback"];

  return v8;
}

- (void)_configureWatchdogWithSeconds:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = [(VSUserAccountUpdateManager *)self watchdog];
  v6 = VSDefaultLogObject();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a3)
  {
    if (v7)
    {
      *buf = 134217984;
      v13 = a3;
      _os_log_impl(&dword_23AB8E000, v6, OS_LOG_TYPE_DEFAULT, "Configuring watchdog timer for %lu seconds", buf, 0xCu);
    }

    if (v5)
    {
      dispatch_source_cancel(v5);
      [(VSUserAccountUpdateManager *)self setWatchdog:0];
    }

    v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);

    v9 = dispatch_time(0, 1000000000 * a3);
    dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
    objc_initWeak(buf, self);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __60__VSUserAccountUpdateManager__configureWatchdogWithSeconds___block_invoke;
    handler[3] = &unk_278B74110;
    objc_copyWeak(&v11, buf);
    dispatch_source_set_event_handler(v8, handler);
    [(VSUserAccountUpdateManager *)self setWatchdog:v8];
    dispatch_activate(v8);
    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
    goto LABEL_11;
  }

  if (v7)
  {
    *buf = 0;
    _os_log_impl(&dword_23AB8E000, v6, OS_LOG_TYPE_DEFAULT, "Cancelling watchdog timer", buf, 2u);
  }

  if (v5)
  {
    dispatch_source_cancel(v5);
    [(VSUserAccountUpdateManager *)self setWatchdog:0];
    v8 = v5;
LABEL_11:
  }
}

void __60__VSUserAccountUpdateManager__configureWatchdogWithSeconds___block_invoke(uint64_t a1)
{
  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_23AB8E000, v2, OS_LOG_TYPE_DEFAULT, "Watchdog timer fired.", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained stateMachine];
    [v5 enqueueEvent:@"Timeout"];
  }
}

- (void)transitionToEnqueuingNextUserAccountSetState
{
  v13 = *MEMORY[0x277D85DE8];
  [(VSUserAccountUpdateManager *)self setCurrentApp:0];
  [(VSUserAccountUpdateManager *)self setCurrentUpdateRequest:0];
  v3 = [(VSUserAccountUpdateManager *)self updateRequests];
  v4 = [v3 allObjects];
  v5 = [v4 firstObject];

  if (v5)
  {
    v6 = VSDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_23AB8E000, v6, OS_LOG_TYPE_DEFAULT, "Enqueuing update request: %@", &v11, 0xCu);
    }

    v7 = [(VSUserAccountUpdateManager *)self updateRequests];
    [v7 removeObject:v5];

    [(VSUserAccountUpdateManager *)self setCurrentUpdateRequest:v5];
    v8 = [(VSUserAccountUpdateManager *)self stateMachine];
    v9 = v8;
    v10 = @"Done";
  }

  else
  {
    v8 = [(VSUserAccountUpdateManager *)self stateMachine];
    v9 = v8;
    v10 = @"Stop";
  }

  [v8 enqueueEvent:v10];
}

- (void)transitionToBootingAppState
{
  v8 = [(VSUserAccountUpdateManager *)self currentUpdateRequest];
  v3 = [v8 userAccount];
  v4 = [v3 updateURL];

  v5 = [[VSJSApp alloc] initWithScriptURL:v4];
  v6 = [v8 userAccount];
  -[VSJSApp setEnforceSystemTrust:](v5, "setEnforceSystemTrust:", [v6 requiresSystemTrust]);

  [(VSUserAccountUpdateManager *)self setCurrentApp:v5];
  [(VSJSApp *)v5 setDelegate:self];
  [(VSJSApp *)v5 start];
  v7 = [(VSUserAccountUpdateManager *)self stateMachine];
  [v7 enqueueEvent:@"Done"];
}

- (void)transitionToInvokingOnRequestCallbackState
{
  v3 = [(VSUserAccountUpdateManager *)self currentApp];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __72__VSUserAccountUpdateManager_transitionToInvokingOnRequestCallbackState__block_invoke;
  v5[3] = &unk_278B74160;
  v5[4] = self;
  [v3 evaluateWithBlock:v5];

  v4 = [(VSUserAccountUpdateManager *)self stateMachine];
  [v4 enqueueEvent:@"Done"];

  [(VSUserAccountUpdateManager *)self _configureWatchdogWithSeconds:30];
}

void __72__VSUserAccountUpdateManager_transitionToInvokingOnRequestCallbackState__block_invoke(uint64_t a1, void *a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v4 = MEMORY[0x277CD4658];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__VSUserAccountUpdateManager_transitionToInvokingOnRequestCallbackState__block_invoke_2;
  aBlock[3] = &unk_278B74138;
  objc_copyWeak(&v18, &location);
  v5 = _Block_copy(aBlock);
  v6 = [v3 context];
  v7 = [v4 valueWithObject:v5 inContext:v6];

  v8 = [*(a1 + 32) currentUpdateRequest];
  LODWORD(v5) = v8 == 0;

  if (v5)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [self currentUpdateRequest] parameter must not be nil."];
  }

  v9 = [*(a1 + 32) currentUpdateRequest];
  v10 = [v9 userAccount];
  v21[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];

  v12 = [*(a1 + 32) _requestOptionsWithUserAccounts:v11 callback:v7];
  v13 = [v3 context];
  v14 = [v13 objectForKeyedSubscript:@"App"];

  VSAssertWithMessage(v14 != 0, @"App object undefined");
  v20 = v12;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  v16 = [v14 invokeMethod:@"onRequest" withArguments:v15];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __72__VSUserAccountUpdateManager_transitionToInvokingOnRequestCallbackState__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = VSDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = @"onRequest";
    _os_log_impl(&dword_23AB8E000, v7, OS_LOG_TYPE_DEFAULT, "%@ callback invoked", &v18, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _configureWatchdogWithSeconds:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!v5)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The responsePayloadOrNil parameter must not be nil."];
      }

      v10 = [v5 userAccounts];
      v11 = [VSJSUserAccount userAccountsFromJSUserAccounts:v10];
      v12 = [v11 firstObject];

      v13 = [v9 currentUpdateRequest];
      [v13 setUpdatedUserAccount:v12];

      v14 = [v9 stateMachine];
      [v14 enqueueEvent:@"Done"];
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v16 = VSErrorLogObject();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
      if (isKindOfClass)
      {
        if (v17)
        {
          __72__VSUserAccountUpdateManager_transitionToInvokingOnRequestCallbackState__block_invoke_2_cold_2(v6, v16);
        }
      }

      else
      {
        if (v17)
        {
          __72__VSUserAccountUpdateManager_transitionToInvokingOnRequestCallbackState__block_invoke_2_cold_1(v16);
        }

        v16 = [v9 currentApp];
        [v16 setExceptionWithMessage:@"Must provide a valid ResponsePayload or Error object to onRequest callback."];
      }

      v12 = [v9 stateMachine];
      [v12 enqueueEvent:@"Error"];
    }
  }
}

- (void)transitionToStoppingAppState
{
  v3 = [(VSUserAccountUpdateManager *)self currentApp];
  [v3 stop];

  v4 = [(VSUserAccountUpdateManager *)self stateMachine];
  [v4 enqueueEvent:@"Done"];
}

- (void)transitionToWaitingForAppStopState
{
  v2 = [(VSUserAccountUpdateManager *)self stateMachine];
  [v2 enqueueEvent:@"Done"];
}

- (void)transitionToNotifyingForUserAccountSetState
{
  v5 = [(VSUserAccountUpdateManager *)self currentUpdateRequest];
  v3 = [(VSUserAccountUpdateManager *)self delegate];
  [v3 updateManager:self updateRequestDidFinish:v5];
  v4 = [(VSUserAccountUpdateManager *)self stateMachine];
  [v4 enqueueEvent:@"Done"];
}

- (void)transitionToNotifyingFinishState
{
  v3 = [(VSUserAccountUpdateManager *)self delegate];
  [v3 updateManagerDidFinish:self];

  v4 = [(VSUserAccountUpdateManager *)self stateMachine];
  [v4 enqueueEvent:@"Done"];
}

- (void)app:(id)a3 prewarmWithContext:(id)a4
{
  v4 = [a4 objectForKeyedSubscript:@"App"];
  VSAssertWithMessage(v4 != 0, @"App object undefined");
  [v4 setObject:objc_opt_class() forKeyedSubscript:@"UserAccount"];
  [v4 setObject:objc_opt_class() forKeyedSubscript:@"AppleSubscription"];
  [v4 setObject:objc_opt_class() forKeyedSubscript:@"ResponsePayload"];
}

- (void)app:(id)a3 didFailToStartWithError:(id)a4
{
  v5 = a4;
  v6 = VSErrorLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [VSUserAccountUpdateManager app:v5 didFailToStartWithError:v6];
  }

  v7 = [(VSUserAccountUpdateManager *)self currentUpdateRequest];
  [v7 setUpdateError:v5];

  v8 = [(VSUserAccountUpdateManager *)self stateMachine];
  [v8 enqueueEvent:@"Error"];
}

- (void)appDidStart:(id)a3
{
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_23AB8E000, v4, OS_LOG_TYPE_DEFAULT, "JS app did finish starting.", v6, 2u);
  }

  v5 = [(VSUserAccountUpdateManager *)self stateMachine];
  [v5 enqueueEvent:@"Done"];
}

- (void)appDidStop:(id)a3
{
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_23AB8E000, v4, OS_LOG_TYPE_DEFAULT, "JS app did stop.", v6, 2u);
  }

  v5 = [(VSUserAccountUpdateManager *)self stateMachine];
  [v5 enqueueEvent:@"Done"];
}

- (VSUserAccountUpdateManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __72__VSUserAccountUpdateManager_transitionToInvokingOnRequestCallbackState__block_invoke_2_cold_2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 message];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "Error updating user account(s): %@", &v4, 0xCu);
}

- (void)app:(uint64_t)a1 didFailToStartWithError:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23AB8E000, a2, OS_LOG_TYPE_ERROR, "JS app failed to start: %@", &v2, 0xCu);
}

@end