@interface AKInAppAuthenticationRemoteUIDelegate
- (AKInAppAuthenticationRemoteUIDelegate)initWithContext:(id)context;
- (BOOL)_isDeferrableFinalResponseHarvested;
- (unint64_t)_passwordResetRequestType;
- (void)_addBackButtonForController:(id)controller;
- (void)_handleBackButtonTap:(id)tap;
- (void)_processAndHandleConflictErrorFromResponse:(id)response;
- (void)_showAlert:(id)alert;
- (void)didLoadURL:(id)l error:(id)error;
- (void)processedElementWithError:(id)error forElement:(id)element;
- (void)remoteUIController:(id)controller didDismissModalNavigationWithObjectModels:(id)models;
- (void)remoteUIController:(id)controller didFinishLoadWithError:(id)error forRequest:(id)request;
- (void)remoteUIController:(id)controller didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)remoteUIController:(id)controller didReceiveHTTPResponse:(id)response forRequest:(id)request;
- (void)remoteUIController:(id)controller didReceiveObjectModel:(id)model actionSignal:(unint64_t *)signal;
- (void)remoteUIController:(id)controller shouldLoadRequest:(id)request redirectResponse:(id)response withCompletionHandler:(id)handler;
- (void)remoteUIController:(id)controller willPresentModalNavigationController:(id)navigationController;
- (void)remoteUIController:(id)controller willPresentObjectModel:(id)model modally:(BOOL)modally;
- (void)willActivateElement:(id)element;
- (void)willDisplayUI:(id)i;
- (void)willLoadURL:(id)l;
- (void)willProcessHook:(id)hook;
@end

@implementation AKInAppAuthenticationRemoteUIDelegate

- (AKInAppAuthenticationRemoteUIDelegate)initWithContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = AKInAppAuthenticationRemoteUIDelegate;
  selfCopy = [(AKInAppAuthenticationRemoteUIDelegate *)&v6 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeWeak(&selfCopy->_context, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)remoteUIController:(id)controller shouldLoadRequest:(id)request redirectResponse:(id)response withCompletionHandler:(id)handler
{
  v41 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v37 = 0;
  objc_storeStrong(&v37, request);
  v36 = 0;
  objc_storeStrong(&v36, response);
  v35 = 0;
  objc_storeStrong(&v35, handler);
  [(AKAppleIDServerUIContextController *)selfCopy->_serverUIContextController processResponse:v36];
  WeakRetained = objc_loadWeakRetained(&selfCopy->_context);
  presentingViewController = [WeakRetained presentingViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    topViewController = [presentingViewController topViewController];
    v31 = _AKLogSystem();
    v30 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v40, topViewController);
      _os_log_impl(&dword_222379000, v31, v30, "Starting nav controller: %@", v40, 0xCu);
    }

    objc_storeStrong(&v31, 0);
    objc_storeWeak(&selfCopy->_topViewControllerOnLoadStart, topViewController);
    objc_storeStrong(&topViewController, 0);
  }

  httpHeadersForRemoteUI = [WeakRetained httpHeadersForRemoteUI];
  v17 = httpHeadersForRemoteUI;
  v23 = MEMORY[0x277D85DD0];
  v24 = -1073741824;
  v25 = 0;
  v26 = __117__AKInAppAuthenticationRemoteUIDelegate_remoteUIController_shouldLoadRequest_redirectResponse_withCompletionHandler___block_invoke;
  v27 = &unk_2784A7710;
  v28 = MEMORY[0x277D82BE0](v37);
  [v17 enumerateKeysAndObjectsUsingBlock:&v23];
  isRequestedFromOOPViewService = 0;
  if ([WeakRetained needsCredentialRecovery])
  {
    isRequestedFromOOPViewService = [WeakRetained isRequestedFromOOPViewService];
  }

  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  v16 = 0;
  if ([mEMORY[0x277CF0228] isForgotPasswordNativeTakeoverEnabled])
  {
    v16 = isRequestedFromOOPViewService & 1;
  }

  v6 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  if (v16)
  {
    _passwordResetRequestType = [(AKInAppAuthenticationRemoteUIDelegate *)selfCopy _passwordResetRequestType];
    v12 = v37;
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:_passwordResetRequestType];
    stringValue = [v14 stringValue];
    v7 = *MEMORY[0x277CEFEB8];
    [v12 setValue:? forHTTPHeaderField:?];
    MEMORY[0x277D82BD8](stringValue);
    *&v8 = MEMORY[0x277D82BD8](v14).n128_u64[0];
    if ([WeakRetained isNativeTakeover])
    {
      [v37 setValue:*MEMORY[0x277CF00B8] forHTTPHeaderField:*MEMORY[0x277CEFFF8]];
    }

    else
    {
      serviceIdentifier = [WeakRetained serviceIdentifier];
      v11 = [serviceIdentifier isEqualToString:*MEMORY[0x277CEFF68]];
      v6 = MEMORY[0x277D82BD8](serviceIdentifier).n128_u64[0];
      if (v11)
      {
        [v37 setValue:*MEMORY[0x277CF00B0] forHTTPHeaderField:{*MEMORY[0x277CEFFF8], *&v6}];
      }
    }
  }

  [(AKAppleIDServerUIContextController *)selfCopy->_serverUIContextController signRequest:v37 withCompletionHandler:v35, *&v6, &v35];
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&httpHeadersForRemoteUI, 0);
  objc_storeStrong(&presentingViewController, 0);
  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(v9, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __117__AKInAppAuthenticationRemoteUIDelegate_remoteUIController_shouldLoadRequest_redirectResponse_withCompletionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  [a1[4] setValue:v5 forHTTPHeaderField:location[0]];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)remoteUIController:(id)controller didReceiveHTTPResponse:(id)response forRequest:(id)request
{
  v33 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v29 = 0;
  objc_storeStrong(&v29, response);
  v28 = 0;
  objc_storeStrong(&v28, request);
  v27 = _AKLogSystem();
  v26 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v32, v29);
    _os_log_impl(&dword_222379000, v27, v26, "A server UI request load succeeded with response: %@", v32, 0xCu);
  }

  objc_storeStrong(&v27, 0);
  [(AKAppleIDServerUIContextController *)selfCopy->_serverUIContextController processResponse:v29];
  if ([(AKInAppAuthenticationRemoteUIDelegate *)selfCopy _isDeferrableFinalResponseHarvested])
  {
    v18 = _AKLogSystem();
    v17 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v18;
      v6 = v17;
      __os_log_helper_16_0_0(v16);
      _os_log_impl(&dword_222379000, v5, v6, "A deferrable final response detected, waiting for object model to load before completing", v16, 2u);
    }

    objc_storeStrong(&v18, 0);
  }

  else
  {
    if (selfCopy->_currentRemoteOM)
    {
      serverDataHarvester = [(AKAppleIDServerUIContextController *)selfCopy->_serverUIContextController serverDataHarvester];
      [(AKAppleIDServerUIDataHarvester *)serverDataHarvester harvestDataFromServerUIObjectModel:selfCopy->_currentRemoteOM];
      MEMORY[0x277D82BD8](serverDataHarvester);
    }

    serverUIDelegate = [(AKAppleIDServerUIContextController *)selfCopy->_serverUIContextController serverUIDelegate];
    v12 = [(AKAppleIDServerResourceLoadDelegate *)serverUIDelegate isResponseFinal:v29];
    MEMORY[0x277D82BD8](serverUIDelegate);
    v25 = v12;
    if (v12)
    {
      if (selfCopy->_modalRemoteUINavController)
      {
        v21 = _AKLogSystem();
        v20 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v7 = v21;
          v8 = v20;
          __os_log_helper_16_0_0(v19);
          _os_log_impl(&dword_222379000, v7, v8, "We are inside a modal flow, deferring response processing", v19, 2u);
        }

        objc_storeStrong(&v21, 0);
        objc_storeStrong(&selfCopy->_deferredResponse, v29);
      }

      else
      {
        v24 = _AKLogSystem();
        v23 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v9 = v24;
          v10 = v23;
          __os_log_helper_16_0_0(v22);
          _os_log_impl(&dword_222379000, v9, v10, "Final response detected and we are not modal, finishing...", v22, 2u);
        }

        objc_storeStrong(&v24, 0);
        [(AKAppleIDServerUIContextController *)selfCopy->_serverUIContextController completeWithFinalResponse:v29];
      }
    }
  }

  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)remoteUIController:(id)controller didFinishLoadWithError:(id)error forRequest:(id)request
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v47 = 0;
  objc_storeStrong(&v47, error);
  v46 = 0;
  objc_storeStrong(&v46, request);
  if (!v47)
  {
LABEL_23:
    v40 = 0;
    goto LABEL_24;
  }

  v44 = 0;
  v18 = 0;
  if ([v47 code] == -999)
  {
    domain = [v47 domain];
    v44 = 1;
    v18 = [domain isEqualToString:*MEMORY[0x277CCA738]];
  }

  if (v44)
  {
    MEMORY[0x277D82BD8](domain);
  }

  if ((v18 & 1) == 0)
  {
    userInfo = [v47 userInfo];
    v39 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D46268]];
    if ([v39 statusCode] == 401)
    {
      v38 = _AKLogSystem();
      v37 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v38;
        v14 = v37;
        __os_log_helper_16_0_0(v36);
        _os_log_impl(&dword_222379000, v13, v14, "Received a 401 , Trying to refresh tokens", v36, 2u);
      }

      objc_storeStrong(&v38, 0);
      v35 = objc_alloc_init(AKAuthHandlerUIImpl);
      v34 = 0;
      v10 = v35;
      WeakRetained = objc_loadWeakRetained(&selfCopy->_context);
      v32 = v34;
      v11 = [v10 buildReauthenticationContextFromContext:? error:?];
      objc_storeStrong(&v34, v32);
      v33 = v11;
      *&v5 = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
      if (v34)
      {
        [(AKInAppAuthenticationRemoteUIDelegate *)selfCopy _showAlert:v47, v5];
      }

      else
      {
        v9 = v35;
        v8 = v33;
        v24 = MEMORY[0x277D85DD0];
        v25 = -1073741824;
        v26 = 0;
        v27 = __94__AKInAppAuthenticationRemoteUIDelegate_remoteUIController_didFinishLoadWithError_forRequest___block_invoke;
        v28 = &unk_2784A7738;
        v29 = MEMORY[0x277D82BE0](selfCopy);
        v30 = MEMORY[0x277D82BE0](location[0]);
        v31 = MEMORY[0x277D82BE0](v46);
        [v9 reauthenticateWithContext:v8 completionWithResults:&v24];
        objc_storeStrong(&v31, 0);
        objc_storeStrong(&v30, 0);
        objc_storeStrong(&v29, 0);
      }

      objc_storeStrong(&v33, 0);
      objc_storeStrong(&v34, 0);
      objc_storeStrong(&v35, 0);
    }

    else if ([v39 statusCode] == 409)
    {
      v23 = _AKLogSystem();
      v22 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v23;
        v7 = v22;
        __os_log_helper_16_0_0(v21);
        _os_log_impl(&dword_222379000, v6, v7, "Received a 409 , Trying to rsolve the conflict by calling the appropriate endpoint.", v21, 2u);
      }

      objc_storeStrong(&v23, 0);
      [(AKInAppAuthenticationRemoteUIDelegate *)selfCopy _processAndHandleConflictErrorFromResponse:v39];
    }

    else
    {
      [(AKInAppAuthenticationRemoteUIDelegate *)selfCopy _showAlert:v47];
    }

    objc_storeStrong(&v39, 0);
    goto LABEL_23;
  }

  v43 = _AKLogSystem();
  v42 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    log = v43;
    type = v42;
    __os_log_helper_16_0_0(v41);
    _os_log_impl(&dword_222379000, log, type, "User cancelled error, nothing to do here", v41, 2u);
  }

  objc_storeStrong(&v43, 0);
  v40 = 1;
LABEL_24:
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(location, 0);
}

void __94__AKInAppAuthenticationRemoteUIDelegate_remoteUIController_didFinishLoadWithError_forRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  v10[1] = a1;
  if (location[0])
  {
    v5 = [*(*(a1 + 32) + 40) serverUIDelegate];
    [v5 updateWithAuthResults:location[0]];
    MEMORY[0x277D82BD8](v5);
    v10[0] = _AKLogSystem();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v10[0];
      type = v9;
      __os_log_helper_16_0_0(v8);
      _os_log_impl(&dword_222379000, log, type, "Tokens refreshed try reloading the server UI", v8, 2u);
    }

    objc_storeStrong(v10, 0);
    [*(a1 + 40) loadRequest:*(a1 + 48) completion:0];
  }

  else
  {
    [*(a1 + 32) _showAlert:v11];
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)remoteUIController:(id)controller willPresentModalNavigationController:(id)navigationController
{
  v11 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v7 = 0;
  objc_storeStrong(&v7, navigationController);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v10, v7);
    _os_log_impl(&dword_222379000, oslog, OS_LOG_TYPE_DEFAULT, "Presenting modal nav controller: %@", v10, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(&selfCopy->_modalRemoteUINavController, v7);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_context);
  [WeakRetained willPresentModalNavigationController:v7];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)remoteUIController:(id)controller didDismissModalNavigationWithObjectModels:(id)models
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v15 = 0;
  objc_storeStrong(&v15, models);
  v14 = _AKLogSystem();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    log = v14;
    type = v13;
    __os_log_helper_16_0_0(v12);
    _os_log_impl(&dword_222379000, log, type, "Dismissed the modal nav controller", v12, 2u);
  }

  objc_storeStrong(&v14, 0);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_context);
  objc_storeStrong(&selfCopy->_modalRemoteUINavController, 0);
  [WeakRetained willPresentModalNavigationController:0];
  if (selfCopy->_deferredResponse)
  {
    [WeakRetained setPresentingServerUI:0];
    [(AKAppleIDServerUIContextController *)selfCopy->_serverUIContextController completeWithFinalResponse:selfCopy->_deferredResponse];
    objc_storeStrong(&selfCopy->_deferredResponse, 0);
  }

  else
  {
    serverUIContextController = selfCopy->_serverUIContextController;
    v7 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7003];
    serverDataHarvester = [(AKAppleIDServerUIContextController *)selfCopy->_serverUIContextController serverDataHarvester];
    harvestedData = [(AKAppleIDServerUIDataHarvester *)serverDataHarvester harvestedData];
    [(AKAppleIDServerUIContextController *)serverUIContextController completeWithError:v7 additionalData:?];
    MEMORY[0x277D82BD8](harvestedData);
    MEMORY[0x277D82BD8](serverDataHarvester);
    MEMORY[0x277D82BD8](v7);
  }

  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)remoteUIController:(id)controller didReceiveObjectModel:(id)model actionSignal:(unint64_t *)signal
{
  v91 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v86 = 0;
  objc_storeStrong(&v86, model);
  signalCopy = signal;
  v84 = _AKLogSystem();
  v83 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_4_0(v90, v86, signalCopy != 0);
    _os_log_impl(&dword_222379000, v84, v83, "Server UI object model received: %@ - %d", v90, 0x12u);
  }

  objc_storeStrong(&v84, 0);
  objc_storeStrong(&selfCopy->_currentRemoteOM, v86);
  allPages = [v86 allPages];
  v81 = 0;
  v44 = 0;
  if (![allPages count])
  {
    clientInfo = [v86 clientInfo];
    v81 = 1;
    v44 = [clientInfo count] != 0;
  }

  if (v81)
  {
    MEMORY[0x277D82BD8](clientInfo);
  }

  *&v5 = MEMORY[0x277D82BD8](allPages).n128_u64[0];
  if (v44)
  {
    v80 = _AKLogSystem();
    v79 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
    {
      v41 = v80;
      v42 = v79;
      __os_log_helper_16_0_0(v78);
      _os_log_impl(&dword_222379000, v41, v42, "Request doesn't present anything, invoking processObjectModel since willPresentObjectModel won't get called", v78, 2u);
    }

    objc_storeStrong(&v80, 0);
    [(AAUICDPStingrayRemoteUIController *)selfCopy->_stingrayController processObjectModel:v86 isModal:0];
  }

  navigationController = [location[0] navigationController];
  WeakRetained = objc_loadWeakRetained(&selfCopy->_context);
  v75 = objc_loadWeakRetained(&selfCopy->_topViewControllerOnLoadStart);
  if (([WeakRetained forceInlinePresentation] & 1) != 0 && v75)
  {
    presentingViewController = [WeakRetained presentingViewController];
    topViewController = [presentingViewController topViewController];
    MEMORY[0x277D82BD8](presentingViewController);
    if (topViewController == v75)
    {
      v36 = MEMORY[0x277D85CD0];
      v7 = MEMORY[0x277D85CD0];
      queue = v36;
      v64 = MEMORY[0x277D85DD0];
      v65 = -1073741824;
      v66 = 0;
      v67 = __95__AKInAppAuthenticationRemoteUIDelegate_remoteUIController_didReceiveObjectModel_actionSignal___block_invoke;
      v68 = &unk_2784A6420;
      v69 = MEMORY[0x277D82BE0](WeakRetained);
      v70 = MEMORY[0x277D82BE0](topViewController);
      dispatch_async(queue, &v64);
      MEMORY[0x277D82BD8](queue);
      objc_storeStrong(&v70, 0);
      objc_storeStrong(&v69, 0);
    }

    else
    {
      v73 = _AKLogSystem();
      v72 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        v38 = v73;
        v39 = v72;
        __os_log_helper_16_0_0(v71);
        _os_log_impl(&dword_222379000, v38, v39, "Top view controller has changed since load start. Aborting flow.", v71, 2u);
      }

      objc_storeStrong(&v73, 0);
      if (signalCopy)
      {
        *signalCopy = 0;
      }
    }

    objc_storeStrong(&topViewController, 0);
  }

  if (signalCopy)
  {
    v35 = *signalCopy;
  }

  else
  {
    v35 = 0;
  }

  v63 = v35;
  if (signalCopy)
  {
    if (*signalCopy == 1)
    {
      oslog = _AKLogSystem();
      v61 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v33 = oslog;
        v34 = v61;
        __os_log_helper_16_0_0(v60);
        _os_log_impl(&dword_222379000, v33, v34, "Server UI is being dismissed.", v60, 2u);
      }

      objc_storeStrong(&oslog, 0);
      if (selfCopy->_deferredResponse)
      {
        v59 = _AKLogSystem();
        v58 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          v31 = v59;
          v32 = v58;
          __os_log_helper_16_0_0(v57);
          _os_log_impl(&dword_222379000, v31, v32, "We have a deferred server response, waiting until dismissal completion", v57, 2u);
        }

        objc_storeStrong(&v59, 0);
      }

      else
      {
        [WeakRetained setPresentingServerUI:0];
        v29 = WeakRetained;
        v30 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7003];
        [v29 completeWithError:?];
        *&v6 = MEMORY[0x277D82BD8](v30).n128_u64[0];
      }
    }

    presentedViewController = [navigationController presentedViewController];
    MEMORY[0x277D82BD8](presentedViewController);
    if (presentedViewController)
    {
      if (!*signalCopy || *signalCopy == 5)
      {
        *signalCopy = 2;
      }
    }

    else if (!*signalCopy || *signalCopy == 2)
    {
      *signalCopy = 5;
    }
  }

  if ([WeakRetained forceInlinePresentation])
  {
    v56 = _AKLogSystem();
    v55 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v56;
      v27 = v55;
      __os_log_helper_16_0_0(v54);
      _os_log_impl(&dword_222379000, v26, v27, "Starting inline presentation", v54, 2u);
    }

    objc_storeStrong(&v56, 0);
    if (signalCopy)
    {
      *signalCopy = v63;
      v53 = _AKLogSystem();
      v52 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*signalCopy];
        __os_log_helper_16_2_1_8_64(v89, v25);
        _os_log_impl(&dword_222379000, v53, v52, "Incoming signal: %@", v89, 0xCu);
        MEMORY[0x277D82BD8](v25);
      }

      objc_storeStrong(&v53, 0);
      if (selfCopy->_overrideFirstActionSignal)
      {
        if (*signalCopy == 5)
        {
          *signalCopy = 2;
        }

        if (*signalCopy == 2)
        {
          isRequestedFromOOPViewService = 0;
          if ([WeakRetained needsCredentialRecovery])
          {
            isRequestedFromOOPViewService = [WeakRetained isRequestedFromOOPViewService];
          }

          v51 = isRequestedFromOOPViewService & 1;
          viewControllers = [navigationController viewControllers];
          v50 = [viewControllers count] != 0;
          mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
          v23 = 0;
          if ([mEMORY[0x277CF0228] isForgotPasswordNativeTakeoverEnabled])
          {
            v23 = v51;
          }

          *&v8 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
          if (v23)
          {
            if (v50)
            {
              viewControllers2 = [navigationController viewControllers];
              v20 = [viewControllers2 count] == 1;
              *&v9 = MEMORY[0x277D82BD8](viewControllers2).n128_u64[0];
              v49 = v20;
              if (v20)
              {
                defaultPages = [v86 defaultPages];
                firstObject = [defaultPages firstObject];
                *&v10 = MEMORY[0x277D82BD8](defaultPages).n128_u64[0];
                [firstObject setLeftNavigationBarButtonItem:v10];
                [(AKInAppAuthenticationRemoteUIDelegate *)selfCopy _addBackButtonForController:v75];
                objc_storeStrong(&firstObject, 0);
              }
            }
          }

          else
          {
            if (v50)
            {
              defaultPages2 = [v86 defaultPages];
              firstObject2 = [defaultPages2 firstObject];
              *&v11 = MEMORY[0x277D82BD8](defaultPages2).n128_u64[0];
              [firstObject2 setLeftNavigationBarButtonItem:v11];
              objc_storeStrong(&firstObject2, 0);
            }

            mEMORY[0x277CF0228]2 = [MEMORY[0x277CF0228] sharedManager];
            isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228]2 isAuthKitSolariumFeatureEnabled];
            v12 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]2).n128_u64[0];
            if (!isAuthKitSolariumFeatureEnabled)
            {
              goto LABEL_66;
            }

            mEMORY[0x277CF0228]3 = [MEMORY[0x277CF0228] sharedManager];
            v14 = 0;
            if ([mEMORY[0x277CF0228]3 isAuthKitSolariumFeatureEnabled])
            {
              v14 = !v50;
            }

            v12 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]3).n128_u64[0];
            if (v14)
            {
LABEL_66:
              [(AKInAppAuthenticationRemoteUIDelegate *)selfCopy _addBackButtonForController:v75, *&v12];
            }
          }
        }
      }
    }
  }

  objc_storeStrong(&v75, 0);
  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(&navigationController, 0);
  objc_storeStrong(&v86, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __95__AKInAppAuthenticationRemoteUIDelegate_remoteUIController_didReceiveObjectModel_actionSignal___block_invoke(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = [*(a1 + 32) delegate];
  if (location[0] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [location[0] willShowViewController:*(a1 + 40)];
  }

  objc_storeStrong(location, 0);
}

- (void)_addBackButtonForController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
  MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
  if (isAuthKitSolariumFeatureEnabled)
  {
    v3 = objc_alloc(MEMORY[0x277D751E0]);
    v18 = [v3 initWithBarButtonSystemItem:101 target:selfCopy action:sel__handleBackButtonTap_];
    v11 = v18;
    navigationItem = [location[0] navigationItem];
    [navigationItem setBackBarButtonItem:v11];
    MEMORY[0x277D82BD8](navigationItem);
    objc_storeStrong(&v18, 0);
  }

  else
  {
    v17 = _AKLogSystem();
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      log = v17;
      type = v16;
      __os_log_helper_16_0_0(v15);
      _os_log_impl(&dword_222379000, log, type, "Handling first action signal", v15, 2u);
    }

    objc_storeStrong(&v17, 0);
    [MEMORY[0x277D75780] _setUseCustomBackButtonAction:1];
    selfCopy->_navBarButtonOverridden = 1;
    v4 = objc_alloc(MEMORY[0x277D751E0]);
    v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKitUI"];
    v7 = [v8 localizedStringForKey:@"GENERIC_BACK_BUTTON" value:&stru_28358EF68 table:@"Localizable"];
    v6 = [v4 initWithTitle:? style:? target:? action:?];
    navigationItem2 = [location[0] navigationItem];
    [navigationItem2 setBackBarButtonItem:v6];
    MEMORY[0x277D82BD8](navigationItem2);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    selfCopy->_overrideFirstActionSignal = 0;
  }

  objc_storeStrong(location, 0);
}

- (void)_handleBackButtonTap:(id)tap
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tap);
  if (selfCopy->_navBarButtonOverridden)
  {
    [MEMORY[0x277D75780] _setUseCustomBackButtonAction:0];
    selfCopy->_navBarButtonOverridden = 0;
  }

  WeakRetained = objc_loadWeakRetained(&selfCopy->_context);
  [WeakRetained _handleBackButtonTap:location[0]];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(location, 0);
}

- (void)remoteUIController:(id)controller willPresentObjectModel:(id)model modally:(BOOL)modally
{
  v41 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v37 = 0;
  objc_storeStrong(&v37, model);
  modallyCopy = modally;
  v35 = _AKLogSystem();
  v34 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v40, v37);
    _os_log_impl(&dword_222379000, v35, v34, "Server UI will present an object model: %@", v40, 0xCu);
  }

  objc_storeStrong(&v35, 0);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_context);
  [WeakRetained setPresentingServerUI:1];
  if (!modallyCopy && ([WeakRetained forceInlinePresentation] & 1) != 0)
  {
    navigationController = [location[0] navigationController];
    viewControllers = [navigationController viewControllers];
    v22 = [viewControllers count];
    *&v5 = MEMORY[0x277D82BD8](viewControllers).n128_u64[0];
    if (v22)
    {
      isRequestedFromOOPViewService = 0;
      if ([WeakRetained needsCredentialRecovery])
      {
        isRequestedFromOOPViewService = [WeakRetained isRequestedFromOOPViewService];
      }

      v31 = isRequestedFromOOPViewService & 1;
      mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
      v19 = 0;
      if ([mEMORY[0x277CF0228] isForgotPasswordNativeTakeoverEnabled])
      {
        v19 = v31;
      }

      *&v6 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
      if (v19)
      {
        viewControllers2 = [navigationController viewControllers];
        v17 = [viewControllers2 count] == 1;
        *&v7 = MEMORY[0x277D82BD8](viewControllers2).n128_u64[0];
        v30 = v17;
        if (v17)
        {
          defaultPages = [v37 defaultPages];
          firstObject = [defaultPages firstObject];
          *&v8 = MEMORY[0x277D82BD8](defaultPages).n128_u64[0];
          [firstObject setLeftNavigationBarButtonItem:v8];
          objc_storeStrong(&firstObject, 0);
        }
      }

      else
      {
        defaultPages2 = [v37 defaultPages];
        firstObject2 = [defaultPages2 firstObject];
        *&v9 = MEMORY[0x277D82BD8](defaultPages2).n128_u64[0];
        [firstObject2 setLeftNavigationBarButtonItem:v9];
        objc_storeStrong(&firstObject2, 0);
      }
    }

    objc_storeStrong(&navigationController, 0);
  }

  if (selfCopy->_currentRemoteOM && [(AKInAppAuthenticationRemoteUIDelegate *)selfCopy _isDeferrableFinalResponseHarvested])
  {
    v27 = _AKLogSystem();
    v26 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v27;
      v13 = v26;
      __os_log_helper_16_0_0(v25);
      _os_log_impl(&dword_222379000, v12, v13, "Deferred final response detected, finishing...", v25, 2u);
    }

    objc_storeStrong(&v27, 0);
    serverDataHarvester = [(AKAppleIDServerUIContextController *)selfCopy->_serverUIContextController serverDataHarvester];
    [(AKAppleIDServerUIDataHarvester *)serverDataHarvester harvestDataFromServerUIObjectModel:selfCopy->_currentRemoteOM];
    *&v10 = MEMORY[0x277D82BD8](serverDataHarvester).n128_u64[0];
    [(AKAppleIDServerUIContextController *)selfCopy->_serverUIContextController completeWithFinalResponse:0, v10];
  }

  else
  {
    [(AAUICDPStingrayRemoteUIController *)selfCopy->_stingrayController processObjectModel:v37 isModal:modallyCopy];
  }

  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)remoteUIController:(id)controller didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v16 = 0;
  objc_storeStrong(&v16, challenge);
  v15 = 0;
  objc_storeStrong(&v15, handler);
  queue = dispatch_get_global_queue(0, 0);
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __98__AKInAppAuthenticationRemoteUIDelegate_remoteUIController_didReceiveChallenge_completionHandler___block_invoke;
  v12 = &unk_2784A63C8;
  v13 = MEMORY[0x277D82BE0](v16);
  v14 = MEMORY[0x277D82BE0](v15);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

uint64_t __98__AKInAppAuthenticationRemoteUIDelegate_remoteUIController_didReceiveChallenge_completionHandler___block_invoke(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v22 = 2;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    v14 = location[0];
    v15 = v22;
    __os_log_helper_16_0_0(v21);
    _os_log_debug_impl(&dword_222379000, v14, v15, "Server UI received a challange, validating...", v21, 2u);
  }

  objc_storeStrong(location, 0);
  v12 = [*(a1 + 32) protectionSpace];
  v11 = [v12 authenticationMethod];
  v13 = [v11 isEqualToString:*MEMORY[0x277CCA720]];
  MEMORY[0x277D82BD8](v11);
  v1 = MEMORY[0x277D82BD8](v12);
  if ((v13 & 1) == 0)
  {
    return (*(*(a1 + 40) + 16))(v1);
  }

  v6 = MEMORY[0x277CF01E8];
  v9 = [*(a1 + 32) protectionSpace];
  v5 = [v9 serverTrust];
  v8 = [*(a1 + 32) protectionSpace];
  v7 = [v8 host];
  v10 = [v6 isValidCertificateTrust:v5 forHostname:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v1 = MEMORY[0x277D82BD8](v9);
  v20 = v10;
  if (v10)
  {
    return (*(*(a1 + 40) + 16))(v1);
  }

  v19 = _AKLogSystem();
  v18 = 16;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    log = v19;
    type = v18;
    __os_log_helper_16_0_0(v17);
    _os_log_error_impl(&dword_222379000, log, type, "Server cert validity check failed!", v17, 2u);
  }

  objc_storeStrong(&v19, 0);
  return (*(*(a1 + 40) + 16))();
}

- (void)willDisplayUI:(id)i
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, i);
  v10 = [MEMORY[0x277CE44D8] ak_analyticsEventWithRUITelemetryElement:location[0] eventName:*MEMORY[0x277CF0350] error:0];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [MEMORY[0x277CE44D8] encodedElementNameWithDomainPrefix:@"com.apple.remoteui" element:location[0] activeElements:v9];
  aaf_arrayAsCommaSeperatedString = [v9 aaf_arrayAsCommaSeperatedString];
  v3 = *MEMORY[0x277CF0328];
  [v10 setObject:? forKeyedSubscript:?];
  MEMORY[0x277D82BD8](aaf_arrayAsCommaSeperatedString);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_context);
  telemetryFlowID = [WeakRetained telemetryFlowID];
  v4 = *MEMORY[0x277CE45B8];
  [v10 setObject:? forKeyedSubscript:?];
  rtcAnalyticsReporter = [MEMORY[0x277CF0158] rtcAnalyticsReporter];
  [rtcAnalyticsReporter sendEvent:v10];
  MEMORY[0x277D82BD8](rtcAnalyticsReporter);
  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)willActivateElement:(id)element
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, element);
  v7 = [MEMORY[0x277CE44D8] ak_analyticsEventWithRUITelemetryElement:location[0] eventName:*MEMORY[0x277CF0330] error:0];
  WeakRetained = objc_loadWeakRetained(&selfCopy->_context);
  telemetryFlowID = [WeakRetained telemetryFlowID];
  v3 = *MEMORY[0x277CE45B8];
  [v7 setObject:? forKeyedSubscript:?];
  rtcAnalyticsReporter = [MEMORY[0x277CF0158] rtcAnalyticsReporter];
  [rtcAnalyticsReporter sendEvent:v7];
  MEMORY[0x277D82BD8](rtcAnalyticsReporter);
  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)willLoadURL:(id)l
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v7 = [MEMORY[0x277CE44D8] ak_analyticsEventWithRUITelemetryElement:location[0] eventName:*MEMORY[0x277CF0338] error:0];
  WeakRetained = objc_loadWeakRetained(&selfCopy->_context);
  telemetryFlowID = [WeakRetained telemetryFlowID];
  v3 = *MEMORY[0x277CE45B8];
  [v7 setObject:? forKeyedSubscript:?];
  MEMORY[0x277D82BD8](telemetryFlowID);
  rtcAnalyticsReporter = [MEMORY[0x277CF0158] rtcAnalyticsReporter];
  [rtcAnalyticsReporter sendEvent:v7];
  MEMORY[0x277D82BD8](rtcAnalyticsReporter);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)didLoadURL:(id)l error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v10 = 0;
  objc_storeStrong(&v10, error);
  v9 = [MEMORY[0x277CE44D8] ak_analyticsEventWithRUITelemetryElement:location[0] eventName:*MEMORY[0x277CF0340] error:v10];
  WeakRetained = objc_loadWeakRetained(&selfCopy->_context);
  telemetryFlowID = [WeakRetained telemetryFlowID];
  v4 = *MEMORY[0x277CE45B8];
  [v9 setObject:? forKeyedSubscript:?];
  MEMORY[0x277D82BD8](telemetryFlowID);
  rtcAnalyticsReporter = [MEMORY[0x277CF0158] rtcAnalyticsReporter];
  [rtcAnalyticsReporter sendEvent:v9];
  MEMORY[0x277D82BD8](rtcAnalyticsReporter);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)willProcessHook:(id)hook
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, hook);
  v11 = [MEMORY[0x277CE44D8] ak_analyticsEventWithRUITelemetryElement:location[0] eventName:*MEMORY[0x277CF0348] error:0];
  WeakRetained = objc_loadWeakRetained(&selfCopy->_context);
  telemetryFlowID = [WeakRetained telemetryFlowID];
  v3 = *MEMORY[0x277CE45B8];
  [v11 setObject:? forKeyedSubscript:?];
  *&v4 = MEMORY[0x277D82BD8](telemetryFlowID).n128_u64[0];
  attributes = [location[0] attributes];
  v7 = [attributes objectForKeyedSubscript:@"name"];
  v5 = *MEMORY[0x277CF0370];
  [v11 setObject:? forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v7);
  rtcAnalyticsReporter = [MEMORY[0x277CF0158] rtcAnalyticsReporter];
  [rtcAnalyticsReporter sendEvent:v11];
  MEMORY[0x277D82BD8](rtcAnalyticsReporter);
  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)processedElementWithError:(id)error forElement:(id)element
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v11 = 0;
  objc_storeStrong(&v11, element);
  if (location[0])
  {
    v9 = [MEMORY[0x277CE44D8] ak_analyticsEventWithRUITelemetryElement:v11 eventName:*MEMORY[0x277CF0358] error:location[0]];
    WeakRetained = objc_loadWeakRetained(&selfCopy->_context);
    telemetryFlowID = [WeakRetained telemetryFlowID];
    v4 = *MEMORY[0x277CE45B8];
    [v9 setObject:? forKeyedSubscript:?];
    rtcAnalyticsReporter = [MEMORY[0x277CF0158] rtcAnalyticsReporter];
    [rtcAnalyticsReporter sendEvent:v9];
    MEMORY[0x277D82BD8](rtcAnalyticsReporter);
    objc_storeStrong(&WeakRetained, 0);
    objc_storeStrong(&v9, 0);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (unint64_t)_passwordResetRequestType
{
  v14[2] = self;
  v14[1] = a2;
  v14[0] = objc_loadWeakRetained(&self->_context);
  mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
  location = [mEMORY[0x277CF0130] primaryAuthKitAccount];
  *&v2 = MEMORY[0x277D82BD8](mEMORY[0x277CF0130]).n128_u64[0];
  if (location)
  {
    username = [v14[0] username];
    v11 = 0;
    v9 = 0;
    v7 = 0;
    v5 = 0;
    if (username)
    {
      username2 = [v14[0] username];
      v11 = 1;
      v5 = 0;
      if ([username2 length])
      {
        username3 = [location username];
        v9 = 1;
        username4 = [v14[0] username];
        v7 = 1;
        v5 = [username3 isEqualToString:?];
      }
    }

    if (v7)
    {
      MEMORY[0x277D82BD8](username4);
    }

    if (v9)
    {
      MEMORY[0x277D82BD8](username3);
    }

    if (v11)
    {
      MEMORY[0x277D82BD8](username2);
    }

    MEMORY[0x277D82BD8](username);
    if (v5)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }
  }

  else
  {
    v15 = 0;
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(v14, 0);
  return v15;
}

- (BOOL)_isDeferrableFinalResponseHarvested
{
  serverDataHarvester = [(AKAppleIDServerUIContextController *)self->_serverUIContextController serverDataHarvester];
  harvestedData = [(AKAppleIDServerUIDataHarvester *)serverDataHarvester harvestedData];
  v5 = [(NSDictionary *)harvestedData objectForKeyedSubscript:*MEMORY[0x277CEFEE0]];
  v11 = 0;
  v9 = 0;
  v7 = 0;
  v6 = 1;
  if (([v5 isEqualToString:*MEMORY[0x277CEFEF8]] & 1) == 0)
  {
    serverDataHarvester2 = [(AKAppleIDServerUIContextController *)self->_serverUIContextController serverDataHarvester];
    v11 = 1;
    harvestedData2 = [(AKAppleIDServerUIDataHarvester *)serverDataHarvester2 harvestedData];
    v9 = 1;
    v8 = [(NSDictionary *)harvestedData2 objectForKeyedSubscript:*MEMORY[0x277CEFEE0]];
    v7 = 1;
    v6 = [v8 isEqualToString:*MEMORY[0x277CEFF00]];
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](harvestedData2);
  }

  if (v11)
  {
    MEMORY[0x277D82BD8](serverDataHarvester2);
  }

  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](harvestedData);
  MEMORY[0x277D82BD8](serverDataHarvester);
  return v6 & 1;
}

- (void)_showAlert:(id)alert
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, alert);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __52__AKInAppAuthenticationRemoteUIDelegate__showAlert___block_invoke;
  v10 = &unk_2784A6420;
  v11 = MEMORY[0x277D82BE0](location[0]);
  v12 = MEMORY[0x277D82BE0](selfCopy);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void __52__AKInAppAuthenticationRemoteUIDelegate__showAlert___block_invoke(uint64_t *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v26 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v28, a1[4]);
    _os_log_impl(&dword_222379000, location[0], v26, "A server UI load failed with error %@", v28, 0xCu);
  }

  objc_storeStrong(location, 0);
  v4 = MEMORY[0x277D75110];
  v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:?];
  v7 = [v8 localizedStringForKey:@"VERIFICATION_FAILED" value:? table:?];
  v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKitUI"];
  v5 = [v6 localizedStringForKey:@"SERVER_ERROR" value:&stru_28358EF68 table:@"Localizable"];
  v25 = [v4 alertControllerWithTitle:v7 message:? preferredStyle:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  *&v1 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  v10 = v25;
  v9 = MEMORY[0x277D750F8];
  v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:{@"com.apple.AuthKitUI", v1}];
  v12 = [v13 localizedStringForKey:@"OK" value:&stru_28358EF68 table:@"Localizable"];
  v18 = MEMORY[0x277D85DD0];
  v19 = -1073741824;
  v20 = 0;
  v21 = __52__AKInAppAuthenticationRemoteUIDelegate__showAlert___block_invoke_82;
  v22 = &unk_2784A7760;
  v23 = MEMORY[0x277D82BE0](a1[5]);
  v24 = MEMORY[0x277D82BE0](a1[4]);
  v11 = [v9 actionWithTitle:v12 style:1 handler:&v18];
  [v10 addAction:?];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  WeakRetained = objc_loadWeakRetained((a1[5] + 8));
  v16 = [WeakRetained presentingViewController];
  v14 = [v16 presentedViewController];
  if (v14)
  {
    v3 = v14;
  }

  else
  {
    v3 = v16;
  }

  [v3 presentViewController:v25 animated:1 completion:&v25];
  MEMORY[0x277D82BD8](v14);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(v2, 0);
  *MEMORY[0x277D85DE8];
}

void __52__AKInAppAuthenticationRemoteUIDelegate__showAlert___block_invoke_82(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  WeakRetained = objc_loadWeakRetained((a1[4] + 8));
  v3 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7019 underlyingError:a1[5]];
  [WeakRetained completeWithError:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(location, 0);
}

- (void)_processAndHandleConflictErrorFromResponse:(id)response
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  [(AKAppleIDServerUIContextController *)selfCopy->_serverUIContextController processResponse:location[0]];
  v14 = 0;
  v7 = 0;
  if (![(AKInAppAuthenticationRemoteUIDelegate *)selfCopy _isDeferrableFinalResponseHarvested])
  {
    serverUIDelegate = [(AKAppleIDServerUIContextController *)selfCopy->_serverUIContextController serverUIDelegate];
    v14 = 1;
    v7 = [(AKAppleIDServerResourceLoadDelegate *)serverUIDelegate isResponseCompleteAndConflict:location[0]];
  }

  if (v14)
  {
    MEMORY[0x277D82BD8](serverUIDelegate);
  }

  if (v7)
  {
    v13 = _AKLogSystem();
    v12 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      log = v13;
      type = v12;
      __os_log_helper_16_0_0(v11);
      _os_log_impl(&dword_222379000, log, type, "We have a conflict but complete response.", v11, 2u);
    }

    objc_storeStrong(&v13, 0);
    [(AKAppleIDServerUIContextController *)selfCopy->_serverUIContextController completeWithFinalResponse:location[0]];
  }

  else
  {
    v10 = _AKLogSystem();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v10;
      v4 = v9;
      __os_log_helper_16_0_0(v8);
      _os_log_impl(&dword_222379000, v3, v4, "A deferrable final response detected, waiting for object model to load before completing", v8, 2u);
    }

    objc_storeStrong(&v10, 0);
  }

  objc_storeStrong(location, 0);
}

@end