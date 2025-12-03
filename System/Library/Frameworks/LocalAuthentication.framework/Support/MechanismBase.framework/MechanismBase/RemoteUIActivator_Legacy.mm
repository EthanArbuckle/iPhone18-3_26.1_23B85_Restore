@interface RemoteUIActivator_Legacy
- (BOOL)_activateFrontBoardUIWithParams:(id)params;
- (BOOL)_activateSpringBoardUIWithParams:(id)params;
- (BOOL)_isActivationSuspended;
- (BOOL)activateUIWithParams:(id)params;
- (RemoteUIActivatorDelegate)delegate;
- (RemoteUIActivator_Legacy)init;
- (SBSRemoteAlertHandle)activatingHandle;
- (SBSRemoteAlertHandle)activeHandle;
- (id)_sbHandleWithDefinition:(id)definition configurationContext:(id)context;
- (void)_activateRemoteAlertHandle:(id)handle activationContext:(id)context params:(id)params;
- (void)_dispatchRemoteAlertHandle:(id)handle activationContext:(id)context params:(id)params;
- (void)_postNotificationsAndActivateRemoteAlertHandle:(id)handle activationContext:(id)context params:(id)params;
- (void)_resumeActivationQueue;
- (void)_suspendActivationQueue;
- (void)invalidateUIForRequest:(unsigned int)request;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
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

- (BOOL)_activateSpringBoardUIWithParams:(id)params
{
  v25 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  uiMechanism = [paramsCopy uiMechanism];
  isRunning = [uiMechanism isRunning];

  if (isRunning)
  {
    if ([paramsCopy forSoftwareUpdate])
    {
      SBSUndimScreen();
    }

    v7 = objc_alloc(MEMORY[0x277D66BE0]);
    uiMechanism2 = [paramsCopy uiMechanism];
    remoteAlertViewControllerName = [uiMechanism2 remoteAlertViewControllerName];
    v10 = [v7 initWithServiceName:@"com.apple.CoreAuthUI" viewControllerClassName:remoteAlertViewControllerName];

    [v10 setSecondaryViewControllerClassName:@"TransitionViewController"];
    v11 = LALogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      secondaryViewControllerClassName = [v10 secondaryViewControllerClassName];
      v23 = 138543362;
      v24 = secondaryViewControllerClassName;
      _os_log_impl(&dword_238B95000, v11, OS_LOG_TYPE_DEFAULT, "Specifying secondary view controller class name %{public}@", &v23, 0xCu);
    }

    v13 = objc_opt_new();
    v14 = MEMORY[0x277D24118];
    auditTokenData = [paramsCopy auditTokenData];
    v16 = [v14 activationContextWithAuditToken:auditTokenData isAuditTokenApplicationIdentity:objc_msgSend(paramsCopy isForSiri:{"lsApplicationIdentity"), objc_msgSend(paramsCopy, "forSiri")}];

    v17 = [(RemoteUIActivator_Legacy *)self _sbHandleWithDefinition:v10 configurationContext:v13];
    v18 = v17;
    v19 = v17 != 0;
    if (v17)
    {
      [v17 registerObserver:self];
      [(RemoteUIActivator_Legacy *)self _dispatchRemoteAlertHandle:v18 activationContext:v16 params:paramsCopy];
    }
  }

  else
  {
    v10 = LALogForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      uiMechanism3 = [paramsCopy uiMechanism];
      v23 = 138543362;
      v24 = uiMechanism3;
      _os_log_impl(&dword_238B95000, v10, OS_LOG_TYPE_DEFAULT, "Aborting UI activation because %{public}@ is not running", &v23, 0xCu);
    }

    v19 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)_dispatchRemoteAlertHandle:(id)handle activationContext:(id)context params:(id)params
{
  v24 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  contextCopy = context;
  paramsCopy = params;
  v11 = LALogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = handleCopy;
    _os_log_impl(&dword_238B95000, v11, OS_LOG_TYPE_DEFAULT, "Dispatching %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  activationQueue = self->_activationQueue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __80__RemoteUIActivator_Legacy__dispatchRemoteAlertHandle_activationContext_params___block_invoke;
  v17[3] = &unk_278A62E88;
  objc_copyWeak(&v21, buf);
  v18 = handleCopy;
  v19 = contextCopy;
  v20 = paramsCopy;
  v13 = paramsCopy;
  v14 = contextCopy;
  v15 = handleCopy;
  dispatch_async(activationQueue, v17);

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_postNotificationsAndActivateRemoteAlertHandle:(id)handle activationContext:(id)context params:(id)params
{
  handleCopy = handle;
  contextCopy = context;
  paramsCopy = params;
  notificationCenter = [paramsCopy notificationCenter];
  if (!notificationCenter)
  {
    [RemoteUIActivator_Legacy _postNotificationsAndActivateRemoteAlertHandle:activationContext:params:];
  }

  notificationCenter2 = [paramsCopy notificationCenter];
  [notificationCenter2 postNotificationUIDidAppear];

  [(RemoteUIActivator_Legacy *)self _activateRemoteAlertHandle:handleCopy activationContext:contextCopy params:paramsCopy];
}

- (void)_activateRemoteAlertHandle:(id)handle activationContext:(id)context params:(id)params
{
  v24 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  contextCopy = context;
  paramsCopy = params;
  v11 = LALogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    uiMechanism = [paramsCopy uiMechanism];
    v18 = 138543874;
    v19 = handleCopy;
    v20 = 2114;
    v21 = contextCopy;
    v22 = 2114;
    v23 = uiMechanism;
    _os_log_impl(&dword_238B95000, v11, OS_LOG_TYPE_DEFAULT, "Activating %{public}@ with %{public}@ for %{public}@", &v18, 0x20u);
  }

  uiMechanism2 = [paramsCopy uiMechanism];
  isRunning = [uiMechanism2 isRunning];

  if (isRunning)
  {
    [(RemoteUIActivator_Legacy *)self setActivatingHandle:handleCopy];
    [(RemoteUIActivator_Legacy *)self setRemoteAlertWasInvalidated:0];
    [handleCopy activateWithContext:contextCopy];
  }

  else
  {
    v15 = LALogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      uiMechanism3 = [paramsCopy uiMechanism];
      v18 = 138543362;
      v19 = uiMechanism3;
      _os_log_impl(&dword_238B95000, v15, OS_LOG_TYPE_DEFAULT, "Aborting UI activation because %{public}@ is not running", &v18, 0xCu);
    }

    [(RemoteUIActivator_Legacy *)self _resumeActivationQueue];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_suspendActivationQueue
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(RemoteUIActivator_Legacy *)selfCopy _isActivationSuspended])
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

    activationQueue = [(RemoteUIActivator_Legacy *)selfCopy activationQueue];
    dispatch_suspend(activationQueue);

    selfCopy->_activationSuspended = 1;
    objc_initWeak(&location, selfCopy);
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __51__RemoteUIActivator_Legacy__suspendActivationQueue__block_invoke;
    v14 = &unk_278A626F0;
    objc_copyWeak(&v15, &location);
    v6 = dispatch_block_create(0, &v11);
    onActivationTimeout = selfCopy->_onActivationTimeout;
    selfCopy->_onActivationTimeout = v6;

    v8 = dispatch_time(0, 5000000000);
    queue = [MEMORY[0x277CD47C8] queue];
    onActivationTimeout = [(RemoteUIActivator_Legacy *)selfCopy onActivationTimeout];
    dispatch_after(v8, queue, onActivationTimeout);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(selfCopy);
}

- (void)_resumeActivationQueue
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(RemoteUIActivator_Legacy *)selfCopy _isActivationSuspended])
  {
    onActivationTimeout = [(RemoteUIActivator_Legacy *)selfCopy onActivationTimeout];
    dispatch_block_cancel(onActivationTimeout);

    onActivationTimeout = selfCopy->_onActivationTimeout;
    selfCopy->_onActivationTimeout = 0;

    v5 = LALogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [RemoteUIActivator_Legacy _resumeActivationQueue];
    }

    activationQueue = [(RemoteUIActivator_Legacy *)selfCopy activationQueue];
    dispatch_resume(activationQueue);

    selfCopy->_activationSuspended = 0;
  }

  else
  {
    v7 = LALogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [RemoteUIActivator_Legacy _resumeActivationQueue];
    }
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)_isActivationSuspended
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  activationSuspended = selfCopy->_activationSuspended;
  objc_sync_exit(selfCopy);

  return activationSuspended;
}

- (id)_sbHandleWithDefinition:(id)definition configurationContext:(id)context
{
  definitionCopy = definition;
  contextCopy = context;
  v7 = [MEMORY[0x277D66BE8] newHandleWithDefinition:definitionCopy configurationContext:contextCopy];
  if (!v7)
  {
    v8 = LALogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(RemoteUIActivator_Legacy *)definitionCopy _sbHandleWithDefinition:contextCopy configurationContext:v8];
    }
  }

  return v7;
}

- (BOOL)_activateFrontBoardUIWithParams:(id)params
{
  v31[1] = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v5 = MEMORY[0x277CCACA8];
  uiMechanism = [paramsCopy uiMechanism];
  request = [uiMechanism request];
  v8 = [v5 stringWithFormat:@"%u", objc_msgSend(request, "identifier")];

  v9 = MEMORY[0x277D24100];
  uiMechanism2 = [paramsCopy uiMechanism];
  remoteAlertViewControllerName = [uiMechanism2 remoteAlertViewControllerName];
  v30 = @"requestID";
  v31[0] = v8;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  v13 = [v9 applicationPayloadURLForBundleID:@"com.apple.CoreAuthUI" rootControllerName:remoteAlertViewControllerName parameters:v12];

  v14 = [MEMORY[0x277D24100] applicationOptionsForPayloadURL:v13 softwareUpdate:{objc_msgSend(paramsCopy, "forSoftwareUpdate")}];
  v15 = [MEMORY[0x277D0AD68] optionsWithDictionary:v14];
  serviceWithDefaultShellEndpoint = [MEMORY[0x277D0AD70] serviceWithDefaultShellEndpoint];
  notificationCenter = [paramsCopy notificationCenter];
  if (!notificationCenter)
  {
    [RemoteUIActivator_Legacy _activateFrontBoardUIWithParams:];
  }

  notificationCenter2 = [paramsCopy notificationCenter];
  [notificationCenter2 postNotificationUIDidAppear];

  v19 = LALogForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    uiMechanism3 = [paramsCopy uiMechanism];
    *buf = 138543618;
    v27 = uiMechanism3;
    v28 = 2114;
    v29 = v15;
    _os_log_impl(&dword_238B95000, v19, OS_LOG_TYPE_DEFAULT, "Activating remote UI for %{public}@ via FB with options %{public}@", buf, 0x16u);
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __60__RemoteUIActivator_Legacy__activateFrontBoardUIWithParams___block_invoke;
  v24[3] = &unk_278A62EB0;
  v24[4] = self;
  v25 = serviceWithDefaultShellEndpoint;
  v21 = serviceWithDefaultShellEndpoint;
  [v21 openApplication:@"com.apple.CoreAuthUI" withOptions:v15 completion:v24];

  v22 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)activateUIWithParams:(id)params
{
  v4 = MEMORY[0x277D24050];
  paramsCopy = params;
  sharedInstance = [v4 sharedInstance];
  usesFrontBoardServicesForRemoteUI = [sharedInstance usesFrontBoardServicesForRemoteUI];

  if (usesFrontBoardServicesForRemoteUI)
  {
    v8 = [(RemoteUIActivator_Legacy *)self _activateFrontBoardUIWithParams:paramsCopy];
  }

  else
  {
    v8 = [(RemoteUIActivator_Legacy *)self _activateSpringBoardUIWithParams:paramsCopy];
  }

  v9 = v8;

  return v9;
}

- (void)remoteAlertHandleDidActivate:(id)activate
{
  v11 = *MEMORY[0x277D85DE8];
  activateCopy = activate;
  v5 = LALogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = activateCopy;
    _os_log_impl(&dword_238B95000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ didActivate", &v9, 0xCu);
  }

  activatingHandle = [(RemoteUIActivator_Legacy *)self activatingHandle];

  if (activatingHandle != activateCopy)
  {
    v7 = LALogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(RemoteUIActivator_Legacy *)activateCopy remoteAlertHandleDidActivate:?];
    }
  }

  [(RemoteUIActivator_Legacy *)self setActiveHandle:activateCopy];
  [(RemoteUIActivator_Legacy *)self setActivatingHandle:0];
  [(RemoteUIActivator_Legacy *)self _resumeActivationQueue];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  v14 = *MEMORY[0x277D85DE8];
  deactivateCopy = deactivate;
  v5 = LALogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = deactivateCopy;
    _os_log_impl(&dword_238B95000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ didDeactivate", &v12, 0xCu);
  }

  activeHandle = [(RemoteUIActivator_Legacy *)self activeHandle];
  v7 = activeHandle;
  if (activeHandle == deactivateCopy)
  {
    activatingHandle = [(RemoteUIActivator_Legacy *)self activatingHandle];

    if (!activatingHandle)
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
    [(RemoteUIActivator_Legacy *)deactivateCopy remoteAlertHandleDidDeactivate:?];
  }

LABEL_8:

  v10 = *MEMORY[0x277D85DE8];
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  v25 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  errorCopy = error;
  v8 = 1;
  [(RemoteUIActivator_Legacy *)self setRemoteAlertWasInvalidated:1];
  activatingHandle = [(RemoteUIActivator_Legacy *)self activatingHandle];
  if (activatingHandle != handleCopy)
  {
    activeHandle = [(RemoteUIActivator_Legacy *)self activeHandle];
    v8 = activeHandle == handleCopy;
  }

  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277D67168]])
  {
    v12 = [errorCopy code] == 4 || objc_msgSend(errorCopy, "code") == 5;
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
    activeHandle2 = [(RemoteUIActivator_Legacy *)self activeHandle];
    v14 = OS_LOG_TYPE_ERROR;
    if (!activeHandle2)
    {
      activatingHandle2 = [(RemoteUIActivator_Legacy *)self activatingHandle];
      if (activatingHandle2)
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
    v22 = handleCopy;
    v23 = 2114;
    v24 = errorCopy;
    _os_log_impl(&dword_238B95000, v13, v14, "%{public}@ didInvalidateWithError: %{public}@", &v21, 0x16u);
  }

  if (v8)
  {
    if (!v12)
    {
      v17 = [MEMORY[0x277CD47F0] errorWithCode:-4 message:@"Remote alert invalidated" suberror:errorCopy];
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
      [(RemoteUIActivator_Legacy *)handleCopy remoteAlertHandle:v19 didInvalidateWithError:?];
    }
  }

  if ([(RemoteUIActivator_Legacy *)self _isActivationSuspended])
  {
    [(RemoteUIActivator_Legacy *)self _resumeActivationQueue];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)invalidateUIForRequest:(unsigned int)request
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