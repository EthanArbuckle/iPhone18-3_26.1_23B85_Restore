@interface RemoteUIActivator_Legacy
- (BOOL)_activateFrontBoardUIWithParams:(id)a3;
- (BOOL)_activateSpringBoardUIWithParams:(id)a3;
- (BOOL)_isActivationSuspended;
- (BOOL)activateUIWithParams:(id)a3;
- (RemoteUIActivatorDelegate)delegate;
- (RemoteUIActivator_Legacy)init;
- (SBSRemoteAlertHandle)activatingHandle;
- (SBSRemoteAlertHandle)activeHandle;
- (id)_sbHandleWithDefinition:(id)a3 configurationContext:(id)a4;
- (void)_activateRemoteAlertHandle:(id)a3 activationContext:(id)a4 params:(id)a5;
- (void)_dispatchRemoteAlertHandle:(id)a3 activationContext:(id)a4 params:(id)a5;
- (void)_postNotificationsAndActivateRemoteAlertHandle:(id)a3 activationContext:(id)a4 params:(id)a5;
- (void)_resumeActivationQueue;
- (void)_suspendActivationQueue;
- (void)invalidateUIForRequest:(unsigned int)a3;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
@end

@implementation RemoteUIActivator_Legacy

- (RemoteUIActivator_Legacy)init
{
  v8.receiver = self;
  v8.super_class = RemoteUIActivator_Legacy;
  v2 = [(RemoteUIActivator_Legacy *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D24028] createUserInitiatedSerialQueueWithIdentifier:@"activation"];
    activationQueue = v2->_activationQueue;
    v2->_activationQueue = v3;

    v5 = objc_opt_new();
    activeInterfaces = v2->_activeInterfaces;
    v2->_activeInterfaces = v5;
  }

  return v2;
}

- (BOOL)_activateSpringBoardUIWithParams:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 uiMechanism];
  v6 = [v5 isRunning];

  if (v6)
  {
    if ([v4 forSoftwareUpdate])
    {
      SBSUndimScreen();
    }

    v7 = objc_alloc(MEMORY[0x277D66BE0]);
    v8 = [v4 uiMechanism];
    v9 = [v8 remoteAlertViewControllerName];
    v10 = [v7 initWithServiceName:@"com.apple.CoreAuthUI" viewControllerClassName:v9];

    [v10 setSecondaryViewControllerClassName:@"TransitionViewController"];
    v11 = LALogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v10 secondaryViewControllerClassName];
      v23 = 138543362;
      v24 = v12;
      _os_log_impl(&dword_238B95000, v11, OS_LOG_TYPE_DEFAULT, "Specifying secondary view controller class name %{public}@", &v23, 0xCu);
    }

    v13 = objc_opt_new();
    v14 = MEMORY[0x277D24118];
    v15 = [v4 auditTokenData];
    v16 = [v14 activationContextWithAuditToken:v15 isAuditTokenApplicationIdentity:objc_msgSend(v4 isForSiri:{"lsApplicationIdentity"), objc_msgSend(v4, "forSiri")}];

    v17 = [(RemoteUIActivator_Legacy *)self _sbHandleWithDefinition:v10 configurationContext:v13];
    v18 = v17;
    v19 = v17 != 0;
    if (v17)
    {
      [v17 registerObserver:self];
      [(RemoteUIActivator_Legacy *)self _dispatchRemoteAlertHandle:v18 activationContext:v16 params:v4];
    }
  }

  else
  {
    v10 = LALogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v4 uiMechanism];
      v23 = 138543362;
      v24 = v20;
      _os_log_impl(&dword_238B95000, v10, OS_LOG_TYPE_DEFAULT, "Aborting UI activation because %{public}@ is not running", &v23, 0xCu);
    }

    v19 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)_dispatchRemoteAlertHandle:(id)a3 activationContext:(id)a4 params:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = LALogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = v8;
    _os_log_impl(&dword_238B95000, v11, OS_LOG_TYPE_DEFAULT, "Dispatching %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  activationQueue = self->_activationQueue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __80__RemoteUIActivator_Legacy__dispatchRemoteAlertHandle_activationContext_params___block_invoke;
  v17[3] = &unk_278A62E88;
  objc_copyWeak(&v21, buf);
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  dispatch_async(activationQueue, v17);

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_postNotificationsAndActivateRemoteAlertHandle:(id)a3 activationContext:(id)a4 params:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 notificationCenter];
  if (!v10)
  {
    [RemoteUIActivator_Legacy _postNotificationsAndActivateRemoteAlertHandle:activationContext:params:];
  }

  v11 = [v9 notificationCenter];
  [v11 postNotificationUIDidAppear];

  [(RemoteUIActivator_Legacy *)self _activateRemoteAlertHandle:v12 activationContext:v8 params:v9];
}

- (void)_activateRemoteAlertHandle:(id)a3 activationContext:(id)a4 params:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = LALogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 uiMechanism];
    v18 = 138543874;
    v19 = v8;
    v20 = 2114;
    v21 = v9;
    v22 = 2114;
    v23 = v12;
    _os_log_impl(&dword_238B95000, v11, OS_LOG_TYPE_DEFAULT, "Activating %{public}@ with %{public}@ for %{public}@", &v18, 0x20u);
  }

  v13 = [v10 uiMechanism];
  v14 = [v13 isRunning];

  if (v14)
  {
    [(RemoteUIActivator_Legacy *)self setActivatingHandle:v8];
    [(RemoteUIActivator_Legacy *)self setRemoteAlertWasInvalidated:0];
    [v8 activateWithContext:v9];
  }

  else
  {
    v15 = LALogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v10 uiMechanism];
      v18 = 138543362;
      v19 = v16;
      _os_log_impl(&dword_238B95000, v15, OS_LOG_TYPE_DEFAULT, "Aborting UI activation because %{public}@ is not running", &v18, 0xCu);
    }

    [(RemoteUIActivator_Legacy *)self _resumeActivationQueue];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_suspendActivationQueue
{
  v2 = self;
  objc_sync_enter(v2);
  if ([(RemoteUIActivator_Legacy *)v2 _isActivationSuspended])
  {
    v3 = LALogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [RemoteUIActivator_Legacy _suspendActivationQueue];
    }
  }

  else
  {
    v4 = LALogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [RemoteUIActivator_Legacy _suspendActivationQueue];
    }

    v5 = [(RemoteUIActivator_Legacy *)v2 activationQueue];
    dispatch_suspend(v5);

    v2->_activationSuspended = 1;
    objc_initWeak(&location, v2);
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __51__RemoteUIActivator_Legacy__suspendActivationQueue__block_invoke;
    v14 = &unk_278A626F0;
    objc_copyWeak(&v15, &location);
    v6 = dispatch_block_create(0, &v11);
    onActivationTimeout = v2->_onActivationTimeout;
    v2->_onActivationTimeout = v6;

    v8 = dispatch_time(0, 5000000000);
    v9 = [MEMORY[0x277CD47C8] queue];
    v10 = [(RemoteUIActivator_Legacy *)v2 onActivationTimeout];
    dispatch_after(v8, v9, v10);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(v2);
}

- (void)_resumeActivationQueue
{
  v2 = self;
  objc_sync_enter(v2);
  if ([(RemoteUIActivator_Legacy *)v2 _isActivationSuspended])
  {
    v3 = [(RemoteUIActivator_Legacy *)v2 onActivationTimeout];
    dispatch_block_cancel(v3);

    onActivationTimeout = v2->_onActivationTimeout;
    v2->_onActivationTimeout = 0;

    v5 = LALogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [RemoteUIActivator_Legacy _resumeActivationQueue];
    }

    v6 = [(RemoteUIActivator_Legacy *)v2 activationQueue];
    dispatch_resume(v6);

    v2->_activationSuspended = 0;
  }

  else
  {
    v7 = LALogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [RemoteUIActivator_Legacy _resumeActivationQueue];
    }
  }

  objc_sync_exit(v2);
}

- (BOOL)_isActivationSuspended
{
  v2 = self;
  objc_sync_enter(v2);
  activationSuspended = v2->_activationSuspended;
  objc_sync_exit(v2);

  return activationSuspended;
}

- (id)_sbHandleWithDefinition:(id)a3 configurationContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277D66BE8] newHandleWithDefinition:v5 configurationContext:v6];
  if (!v7)
  {
    v8 = LALogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(RemoteUIActivator_Legacy *)v5 _sbHandleWithDefinition:v6 configurationContext:v8];
    }
  }

  return v7;
}

- (BOOL)_activateFrontBoardUIWithParams:(id)a3
{
  v31[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CCACA8];
  v6 = [v4 uiMechanism];
  v7 = [v6 request];
  v8 = [v5 stringWithFormat:@"%u", objc_msgSend(v7, "identifier")];

  v9 = MEMORY[0x277D24100];
  v10 = [v4 uiMechanism];
  v11 = [v10 remoteAlertViewControllerName];
  v30 = @"requestID";
  v31[0] = v8;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  v13 = [v9 applicationPayloadURLForBundleID:@"com.apple.CoreAuthUI" rootControllerName:v11 parameters:v12];

  v14 = [MEMORY[0x277D24100] applicationOptionsForPayloadURL:v13 softwareUpdate:{objc_msgSend(v4, "forSoftwareUpdate")}];
  v15 = [MEMORY[0x277D0AD68] optionsWithDictionary:v14];
  v16 = [MEMORY[0x277D0AD70] serviceWithDefaultShellEndpoint];
  v17 = [v4 notificationCenter];
  if (!v17)
  {
    [RemoteUIActivator_Legacy _activateFrontBoardUIWithParams:];
  }

  v18 = [v4 notificationCenter];
  [v18 postNotificationUIDidAppear];

  v19 = LALogForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v4 uiMechanism];
    *buf = 138543618;
    v27 = v20;
    v28 = 2114;
    v29 = v15;
    _os_log_impl(&dword_238B95000, v19, OS_LOG_TYPE_DEFAULT, "Activating remote UI for %{public}@ via FB with options %{public}@", buf, 0x16u);
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __60__RemoteUIActivator_Legacy__activateFrontBoardUIWithParams___block_invoke;
  v24[3] = &unk_278A62EB0;
  v24[4] = self;
  v25 = v16;
  v21 = v16;
  [v21 openApplication:@"com.apple.CoreAuthUI" withOptions:v15 completion:v24];

  v22 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)activateUIWithParams:(id)a3
{
  v4 = MEMORY[0x277D24050];
  v5 = a3;
  v6 = [v4 sharedInstance];
  v7 = [v6 usesFrontBoardServicesForRemoteUI];

  if (v7)
  {
    v8 = [(RemoteUIActivator_Legacy *)self _activateFrontBoardUIWithParams:v5];
  }

  else
  {
    v8 = [(RemoteUIActivator_Legacy *)self _activateSpringBoardUIWithParams:v5];
  }

  v9 = v8;

  return v9;
}

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = LALogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v4;
    _os_log_impl(&dword_238B95000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ didActivate", &v9, 0xCu);
  }

  v6 = [(RemoteUIActivator_Legacy *)self activatingHandle];

  if (v6 != v4)
  {
    v7 = LALogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(RemoteUIActivator_Legacy *)v4 remoteAlertHandleDidActivate:?];
    }
  }

  [(RemoteUIActivator_Legacy *)self setActiveHandle:v4];
  [(RemoteUIActivator_Legacy *)self setActivatingHandle:0];
  [(RemoteUIActivator_Legacy *)self _resumeActivationQueue];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = LALogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = v4;
    _os_log_impl(&dword_238B95000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ didDeactivate", &v12, 0xCu);
  }

  v6 = [(RemoteUIActivator_Legacy *)self activeHandle];
  v7 = v6;
  if (v6 == v4)
  {
    v8 = [(RemoteUIActivator_Legacy *)self activatingHandle];

    if (!v8)
    {
      v9 = [MEMORY[0x277CD47F0] errorWithCode:-4 message:@"Remote alert deactivated"];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained didReceiveExpectedError:v9];

      [(RemoteUIActivator_Legacy *)self setActiveHandle:0];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v9 = LALogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [(RemoteUIActivator_Legacy *)v4 remoteAlertHandleDidDeactivate:?];
  }

LABEL_8:

  v10 = *MEMORY[0x277D85DE8];
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = 1;
  [(RemoteUIActivator_Legacy *)self setRemoteAlertWasInvalidated:1];
  v9 = [(RemoteUIActivator_Legacy *)self activatingHandle];
  if (v9 != v6)
  {
    v10 = [(RemoteUIActivator_Legacy *)self activeHandle];
    v8 = v10 == v6;
  }

  v11 = [v7 domain];
  if ([v11 isEqualToString:*MEMORY[0x277D67168]])
  {
    v12 = [v7 code] == 4 || objc_msgSend(v7, "code") == 5;
  }

  else
  {
    v12 = 0;
  }

  v13 = LALogForCategory();
  if (v8 && v12)
  {
    v14 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    v15 = [(RemoteUIActivator_Legacy *)self activeHandle];
    v14 = OS_LOG_TYPE_ERROR;
    if (!v15)
    {
      v16 = [(RemoteUIActivator_Legacy *)self activatingHandle];
      if (v16)
      {
        v14 = OS_LOG_TYPE_ERROR;
      }

      else
      {
        v14 = OS_LOG_TYPE_DEBUG;
      }
    }
  }

  if (os_log_type_enabled(v13, v14))
  {
    v21 = 138543618;
    v22 = v6;
    v23 = 2114;
    v24 = v7;
    _os_log_impl(&dword_238B95000, v13, v14, "%{public}@ didInvalidateWithError: %{public}@", &v21, 0x16u);
  }

  if (v8)
  {
    if (!v12)
    {
      v17 = [MEMORY[0x277CD47F0] errorWithCode:-4 message:@"Remote alert invalidated" suberror:v7];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained didReceiveUnexpectedError:v17];
    }

    [(RemoteUIActivator_Legacy *)self setActiveHandle:0];
    [(RemoteUIActivator_Legacy *)self setActivatingHandle:0];
  }

  else
  {
    v19 = LALogForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [(RemoteUIActivator_Legacy *)v6 remoteAlertHandle:v19 didInvalidateWithError:?];
    }
  }

  if ([(RemoteUIActivator_Legacy *)self _isActivationSuspended])
  {
    [(RemoteUIActivator_Legacy *)self _resumeActivationQueue];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)invalidateUIForRequest:(unsigned int)a3
{
  v3 = LALogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [RemoteUIActivator_Legacy invalidateUIForRequest:];
  }
}

- (RemoteUIActivatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBSRemoteAlertHandle)activatingHandle
{
  WeakRetained = objc_loadWeakRetained(&self->_activatingHandle);

  return WeakRetained;
}

- (SBSRemoteAlertHandle)activeHandle
{
  WeakRetained = objc_loadWeakRetained(&self->_activeHandle);

  return WeakRetained;
}

- (void)_sbHandleWithDefinition:(os_log_t)log configurationContext:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_238B95000, log, OS_LOG_TYPE_ERROR, "Failed to create remote alert handle with %{public}@ and %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)remoteAlertHandleDidActivate:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [a2 activatingHandle];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_238B95000, v3, v4, "Unexpected alert activated: %{public}@ Was expecting: %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)remoteAlertHandleDidDeactivate:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [a2 activeHandle];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_238B95000, v3, v4, "Ignoring deactivation of %{public}@ because %{public}@ is active", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)remoteAlertHandle:(NSObject *)a3 didInvalidateWithError:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = [a2 activeHandle];
  v7 = [a2 activatingHandle];
  v9 = 138543874;
  v10 = a1;
  v11 = 2114;
  v12 = v6;
  v13 = 2114;
  v14 = v7;
  _os_log_debug_impl(&dword_238B95000, a3, OS_LOG_TYPE_DEBUG, "Ignoring invalidation of %{public}@ because %{public}@ is active and %{public}@ is activating", &v9, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

@end