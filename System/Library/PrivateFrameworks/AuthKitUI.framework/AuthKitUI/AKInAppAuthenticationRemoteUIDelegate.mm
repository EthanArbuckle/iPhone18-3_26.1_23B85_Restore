@interface AKInAppAuthenticationRemoteUIDelegate
- (AKInAppAuthenticationRemoteUIDelegate)initWithContext:(id)a3;
- (BOOL)_isDeferrableFinalResponseHarvested;
- (unint64_t)_passwordResetRequestType;
- (void)_addBackButtonForController:(id)a3;
- (void)_handleBackButtonTap:(id)a3;
- (void)_processAndHandleConflictErrorFromResponse:(id)a3;
- (void)_showAlert:(id)a3;
- (void)didLoadURL:(id)a3 error:(id)a4;
- (void)processedElementWithError:(id)a3 forElement:(id)a4;
- (void)remoteUIController:(id)a3 didDismissModalNavigationWithObjectModels:(id)a4;
- (void)remoteUIController:(id)a3 didFinishLoadWithError:(id)a4 forRequest:(id)a5;
- (void)remoteUIController:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)remoteUIController:(id)a3 didReceiveHTTPResponse:(id)a4 forRequest:(id)a5;
- (void)remoteUIController:(id)a3 didReceiveObjectModel:(id)a4 actionSignal:(unint64_t *)a5;
- (void)remoteUIController:(id)a3 shouldLoadRequest:(id)a4 redirectResponse:(id)a5 withCompletionHandler:(id)a6;
- (void)remoteUIController:(id)a3 willPresentModalNavigationController:(id)a4;
- (void)remoteUIController:(id)a3 willPresentObjectModel:(id)a4 modally:(BOOL)a5;
- (void)willActivateElement:(id)a3;
- (void)willDisplayUI:(id)a3;
- (void)willLoadURL:(id)a3;
- (void)willProcessHook:(id)a3;
@end

@implementation AKInAppAuthenticationRemoteUIDelegate

- (AKInAppAuthenticationRemoteUIDelegate)initWithContext:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = AKInAppAuthenticationRemoteUIDelegate;
  v8 = [(AKInAppAuthenticationRemoteUIDelegate *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    objc_storeWeak(&v8->_context, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (void)remoteUIController:(id)a3 shouldLoadRequest:(id)a4 redirectResponse:(id)a5 withCompletionHandler:(id)a6
{
  v41 = *MEMORY[0x277D85DE8];
  v39 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v37 = 0;
  objc_storeStrong(&v37, a4);
  v36 = 0;
  objc_storeStrong(&v36, a5);
  v35 = 0;
  objc_storeStrong(&v35, a6);
  [(AKAppleIDServerUIContextController *)v39->_serverUIContextController processResponse:v36];
  WeakRetained = objc_loadWeakRetained(&v39->_context);
  v33 = [WeakRetained presentingViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = [v33 topViewController];
    v31 = _AKLogSystem();
    v30 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v40, v32);
      _os_log_impl(&dword_222379000, v31, v30, "Starting nav controller: %@", v40, 0xCu);
    }

    objc_storeStrong(&v31, 0);
    objc_storeWeak(&v39->_topViewControllerOnLoadStart, v32);
    objc_storeStrong(&v32, 0);
  }

  v29 = [WeakRetained httpHeadersForRemoteUI];
  v17 = v29;
  v23 = MEMORY[0x277D85DD0];
  v24 = -1073741824;
  v25 = 0;
  v26 = __117__AKInAppAuthenticationRemoteUIDelegate_remoteUIController_shouldLoadRequest_redirectResponse_withCompletionHandler___block_invoke;
  v27 = &unk_2784A7710;
  v28 = MEMORY[0x277D82BE0](v37);
  [v17 enumerateKeysAndObjectsUsingBlock:&v23];
  v18 = 0;
  if ([WeakRetained needsCredentialRecovery])
  {
    v18 = [WeakRetained isRequestedFromOOPViewService];
  }

  v15 = [MEMORY[0x277CF0228] sharedManager];
  v16 = 0;
  if ([v15 isForgotPasswordNativeTakeoverEnabled])
  {
    v16 = v18 & 1;
  }

  v6 = MEMORY[0x277D82BD8](v15).n128_u64[0];
  if (v16)
  {
    v22 = [(AKInAppAuthenticationRemoteUIDelegate *)v39 _passwordResetRequestType];
    v12 = v37;
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
    v13 = [v14 stringValue];
    v7 = *MEMORY[0x277CEFEB8];
    [v12 setValue:? forHTTPHeaderField:?];
    MEMORY[0x277D82BD8](v13);
    *&v8 = MEMORY[0x277D82BD8](v14).n128_u64[0];
    if ([WeakRetained isNativeTakeover])
    {
      [v37 setValue:*MEMORY[0x277CF00B8] forHTTPHeaderField:*MEMORY[0x277CEFFF8]];
    }

    else
    {
      v10 = [WeakRetained serviceIdentifier];
      v11 = [v10 isEqualToString:*MEMORY[0x277CEFF68]];
      v6 = MEMORY[0x277D82BD8](v10).n128_u64[0];
      if (v11)
      {
        [v37 setValue:*MEMORY[0x277CF00B0] forHTTPHeaderField:{*MEMORY[0x277CEFFF8], *&v6}];
      }
    }
  }

  [(AKAppleIDServerUIContextController *)v39->_serverUIContextController signRequest:v37 withCompletionHandler:v35, *&v6, &v35];
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v33, 0);
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

- (void)remoteUIController:(id)a3 didReceiveHTTPResponse:(id)a4 forRequest:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  v28 = 0;
  objc_storeStrong(&v28, a5);
  v27 = _AKLogSystem();
  v26 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v32, v29);
    _os_log_impl(&dword_222379000, v27, v26, "A server UI request load succeeded with response: %@", v32, 0xCu);
  }

  objc_storeStrong(&v27, 0);
  [(AKAppleIDServerUIContextController *)v31->_serverUIContextController processResponse:v29];
  if ([(AKInAppAuthenticationRemoteUIDelegate *)v31 _isDeferrableFinalResponseHarvested])
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
    if (v31->_currentRemoteOM)
    {
      v13 = [(AKAppleIDServerUIContextController *)v31->_serverUIContextController serverDataHarvester];
      [(AKAppleIDServerUIDataHarvester *)v13 harvestDataFromServerUIObjectModel:v31->_currentRemoteOM];
      MEMORY[0x277D82BD8](v13);
    }

    v11 = [(AKAppleIDServerUIContextController *)v31->_serverUIContextController serverUIDelegate];
    v12 = [(AKAppleIDServerResourceLoadDelegate *)v11 isResponseFinal:v29];
    MEMORY[0x277D82BD8](v11);
    v25 = v12;
    if (v12)
    {
      if (v31->_modalRemoteUINavController)
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
        objc_storeStrong(&v31->_deferredResponse, v29);
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
        [(AKAppleIDServerUIContextController *)v31->_serverUIContextController completeWithFinalResponse:v29];
      }
    }
  }

  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)remoteUIController:(id)a3 didFinishLoadWithError:(id)a4 forRequest:(id)a5
{
  v49 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v47 = 0;
  objc_storeStrong(&v47, a4);
  v46 = 0;
  objc_storeStrong(&v46, a5);
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
    v45 = [v47 domain];
    v44 = 1;
    v18 = [v45 isEqualToString:*MEMORY[0x277CCA738]];
  }

  if (v44)
  {
    MEMORY[0x277D82BD8](v45);
  }

  if ((v18 & 1) == 0)
  {
    v15 = [v47 userInfo];
    v39 = [v15 objectForKeyedSubscript:*MEMORY[0x277D46268]];
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
      WeakRetained = objc_loadWeakRetained(&v49->_context);
      v32 = v34;
      v11 = [v10 buildReauthenticationContextFromContext:? error:?];
      objc_storeStrong(&v34, v32);
      v33 = v11;
      *&v5 = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
      if (v34)
      {
        [(AKInAppAuthenticationRemoteUIDelegate *)v49 _showAlert:v47, v5];
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
        v29 = MEMORY[0x277D82BE0](v49);
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
      [(AKInAppAuthenticationRemoteUIDelegate *)v49 _processAndHandleConflictErrorFromResponse:v39];
    }

    else
    {
      [(AKInAppAuthenticationRemoteUIDelegate *)v49 _showAlert:v47];
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

- (void)remoteUIController:(id)a3 willPresentModalNavigationController:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v10, v7);
    _os_log_impl(&dword_222379000, oslog, OS_LOG_TYPE_DEFAULT, "Presenting modal nav controller: %@", v10, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(&v9->_modalRemoteUINavController, v7);
  WeakRetained = objc_loadWeakRetained(&v9->_context);
  [WeakRetained willPresentModalNavigationController:v7];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)remoteUIController:(id)a3 didDismissModalNavigationWithObjectModels:(id)a4
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
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
  WeakRetained = objc_loadWeakRetained(&v17->_context);
  objc_storeStrong(&v17->_modalRemoteUINavController, 0);
  [WeakRetained willPresentModalNavigationController:0];
  if (v17->_deferredResponse)
  {
    [WeakRetained setPresentingServerUI:0];
    [(AKAppleIDServerUIContextController *)v17->_serverUIContextController completeWithFinalResponse:v17->_deferredResponse];
    objc_storeStrong(&v17->_deferredResponse, 0);
  }

  else
  {
    serverUIContextController = v17->_serverUIContextController;
    v7 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7003];
    v6 = [(AKAppleIDServerUIContextController *)v17->_serverUIContextController serverDataHarvester];
    v5 = [(AKAppleIDServerUIDataHarvester *)v6 harvestedData];
    [(AKAppleIDServerUIContextController *)serverUIContextController completeWithError:v7 additionalData:?];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
  }

  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)remoteUIController:(id)a3 didReceiveObjectModel:(id)a4 actionSignal:(unint64_t *)a5
{
  v91 = *MEMORY[0x277D85DE8];
  v88 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v86 = 0;
  objc_storeStrong(&v86, a4);
  v85 = a5;
  v84 = _AKLogSystem();
  v83 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_4_0(v90, v86, v85 != 0);
    _os_log_impl(&dword_222379000, v84, v83, "Server UI object model received: %@ - %d", v90, 0x12u);
  }

  objc_storeStrong(&v84, 0);
  objc_storeStrong(&v88->_currentRemoteOM, v86);
  v43 = [v86 allPages];
  v81 = 0;
  v44 = 0;
  if (![v43 count])
  {
    v82 = [v86 clientInfo];
    v81 = 1;
    v44 = [v82 count] != 0;
  }

  if (v81)
  {
    MEMORY[0x277D82BD8](v82);
  }

  *&v5 = MEMORY[0x277D82BD8](v43).n128_u64[0];
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
    [(AAUICDPStingrayRemoteUIController *)v88->_stingrayController processObjectModel:v86 isModal:0];
  }

  v77 = [location[0] navigationController];
  WeakRetained = objc_loadWeakRetained(&v88->_context);
  v75 = objc_loadWeakRetained(&v88->_topViewControllerOnLoadStart);
  if (([WeakRetained forceInlinePresentation] & 1) != 0 && v75)
  {
    v40 = [WeakRetained presentingViewController];
    v74 = [v40 topViewController];
    MEMORY[0x277D82BD8](v40);
    if (v74 == v75)
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
      v70 = MEMORY[0x277D82BE0](v74);
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
      if (v85)
      {
        *v85 = 0;
      }
    }

    objc_storeStrong(&v74, 0);
  }

  if (v85)
  {
    v35 = *v85;
  }

  else
  {
    v35 = 0;
  }

  v63 = v35;
  if (v85)
  {
    if (*v85 == 1)
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
      if (v88->_deferredResponse)
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

    v28 = [v77 presentedViewController];
    MEMORY[0x277D82BD8](v28);
    if (v28)
    {
      if (!*v85 || *v85 == 5)
      {
        *v85 = 2;
      }
    }

    else if (!*v85 || *v85 == 2)
    {
      *v85 = 5;
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
    if (v85)
    {
      *v85 = v63;
      v53 = _AKLogSystem();
      v52 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*v85];
        __os_log_helper_16_2_1_8_64(v89, v25);
        _os_log_impl(&dword_222379000, v53, v52, "Incoming signal: %@", v89, 0xCu);
        MEMORY[0x277D82BD8](v25);
      }

      objc_storeStrong(&v53, 0);
      if (v88->_overrideFirstActionSignal)
      {
        if (*v85 == 5)
        {
          *v85 = 2;
        }

        if (*v85 == 2)
        {
          v24 = 0;
          if ([WeakRetained needsCredentialRecovery])
          {
            v24 = [WeakRetained isRequestedFromOOPViewService];
          }

          v51 = v24 & 1;
          v21 = [v77 viewControllers];
          v50 = [v21 count] != 0;
          v22 = [MEMORY[0x277CF0228] sharedManager];
          v23 = 0;
          if ([v22 isForgotPasswordNativeTakeoverEnabled])
          {
            v23 = v51;
          }

          *&v8 = MEMORY[0x277D82BD8](v22).n128_u64[0];
          if (v23)
          {
            if (v50)
            {
              v19 = [v77 viewControllers];
              v20 = [v19 count] == 1;
              *&v9 = MEMORY[0x277D82BD8](v19).n128_u64[0];
              v49 = v20;
              if (v20)
              {
                v18 = [v86 defaultPages];
                v48 = [v18 firstObject];
                *&v10 = MEMORY[0x277D82BD8](v18).n128_u64[0];
                [v48 setLeftNavigationBarButtonItem:v10];
                [(AKInAppAuthenticationRemoteUIDelegate *)v88 _addBackButtonForController:v75];
                objc_storeStrong(&v48, 0);
              }
            }
          }

          else
          {
            if (v50)
            {
              v17 = [v86 defaultPages];
              v47 = [v17 firstObject];
              *&v11 = MEMORY[0x277D82BD8](v17).n128_u64[0];
              [v47 setLeftNavigationBarButtonItem:v11];
              objc_storeStrong(&v47, 0);
            }

            v15 = [MEMORY[0x277CF0228] sharedManager];
            v16 = [v15 isAuthKitSolariumFeatureEnabled];
            v12 = MEMORY[0x277D82BD8](v15).n128_u64[0];
            if (!v16)
            {
              goto LABEL_66;
            }

            v13 = [MEMORY[0x277CF0228] sharedManager];
            v14 = 0;
            if ([v13 isAuthKitSolariumFeatureEnabled])
            {
              v14 = !v50;
            }

            v12 = MEMORY[0x277D82BD8](v13).n128_u64[0];
            if (v14)
            {
LABEL_66:
              [(AKInAppAuthenticationRemoteUIDelegate *)v88 _addBackButtonForController:v75, *&v12];
            }
          }
        }
      }
    }
  }

  objc_storeStrong(&v75, 0);
  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(&v77, 0);
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

- (void)_addBackButtonForController:(id)a3
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = [MEMORY[0x277CF0228] sharedManager];
  v14 = [v13 isAuthKitSolariumFeatureEnabled];
  MEMORY[0x277D82BD8](v13);
  if (v14)
  {
    v3 = objc_alloc(MEMORY[0x277D751E0]);
    v18 = [v3 initWithBarButtonSystemItem:101 target:v20 action:sel__handleBackButtonTap_];
    v11 = v18;
    v12 = [location[0] navigationItem];
    [v12 setBackBarButtonItem:v11];
    MEMORY[0x277D82BD8](v12);
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
    v20->_navBarButtonOverridden = 1;
    v4 = objc_alloc(MEMORY[0x277D751E0]);
    v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKitUI"];
    v7 = [v8 localizedStringForKey:@"GENERIC_BACK_BUTTON" value:&stru_28358EF68 table:@"Localizable"];
    v6 = [v4 initWithTitle:? style:? target:? action:?];
    v5 = [location[0] navigationItem];
    [v5 setBackBarButtonItem:v6];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    v20->_overrideFirstActionSignal = 0;
  }

  objc_storeStrong(location, 0);
}

- (void)_handleBackButtonTap:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v5->_navBarButtonOverridden)
  {
    [MEMORY[0x277D75780] _setUseCustomBackButtonAction:0];
    v5->_navBarButtonOverridden = 0;
  }

  WeakRetained = objc_loadWeakRetained(&v5->_context);
  [WeakRetained _handleBackButtonTap:location[0]];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(location, 0);
}

- (void)remoteUIController:(id)a3 willPresentObjectModel:(id)a4 modally:(BOOL)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v39 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v37 = 0;
  objc_storeStrong(&v37, a4);
  v36 = a5;
  v35 = _AKLogSystem();
  v34 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v40, v37);
    _os_log_impl(&dword_222379000, v35, v34, "Server UI will present an object model: %@", v40, 0xCu);
  }

  objc_storeStrong(&v35, 0);
  WeakRetained = objc_loadWeakRetained(&v39->_context);
  [WeakRetained setPresentingServerUI:1];
  if (!v36 && ([WeakRetained forceInlinePresentation] & 1) != 0)
  {
    v32 = [location[0] navigationController];
    v21 = [v32 viewControllers];
    v22 = [v21 count];
    *&v5 = MEMORY[0x277D82BD8](v21).n128_u64[0];
    if (v22)
    {
      v20 = 0;
      if ([WeakRetained needsCredentialRecovery])
      {
        v20 = [WeakRetained isRequestedFromOOPViewService];
      }

      v31 = v20 & 1;
      v18 = [MEMORY[0x277CF0228] sharedManager];
      v19 = 0;
      if ([v18 isForgotPasswordNativeTakeoverEnabled])
      {
        v19 = v31;
      }

      *&v6 = MEMORY[0x277D82BD8](v18).n128_u64[0];
      if (v19)
      {
        v16 = [v32 viewControllers];
        v17 = [v16 count] == 1;
        *&v7 = MEMORY[0x277D82BD8](v16).n128_u64[0];
        v30 = v17;
        if (v17)
        {
          v15 = [v37 defaultPages];
          v29 = [v15 firstObject];
          *&v8 = MEMORY[0x277D82BD8](v15).n128_u64[0];
          [v29 setLeftNavigationBarButtonItem:v8];
          objc_storeStrong(&v29, 0);
        }
      }

      else
      {
        v14 = [v37 defaultPages];
        v28 = [v14 firstObject];
        *&v9 = MEMORY[0x277D82BD8](v14).n128_u64[0];
        [v28 setLeftNavigationBarButtonItem:v9];
        objc_storeStrong(&v28, 0);
      }
    }

    objc_storeStrong(&v32, 0);
  }

  if (v39->_currentRemoteOM && [(AKInAppAuthenticationRemoteUIDelegate *)v39 _isDeferrableFinalResponseHarvested])
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
    v11 = [(AKAppleIDServerUIContextController *)v39->_serverUIContextController serverDataHarvester];
    [(AKAppleIDServerUIDataHarvester *)v11 harvestDataFromServerUIObjectModel:v39->_currentRemoteOM];
    *&v10 = MEMORY[0x277D82BD8](v11).n128_u64[0];
    [(AKAppleIDServerUIContextController *)v39->_serverUIContextController completeWithFinalResponse:0, v10];
  }

  else
  {
    [(AAUICDPStingrayRemoteUIController *)v39->_stingrayController processObjectModel:v37 isModal:v36];
  }

  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)remoteUIController:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = 0;
  objc_storeStrong(&v15, a5);
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

- (void)willDisplayUI:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = [MEMORY[0x277CE44D8] ak_analyticsEventWithRUITelemetryElement:location[0] eventName:*MEMORY[0x277CF0350] error:0];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [MEMORY[0x277CE44D8] encodedElementNameWithDomainPrefix:@"com.apple.remoteui" element:location[0] activeElements:v9];
  v5 = [v9 aaf_arrayAsCommaSeperatedString];
  v3 = *MEMORY[0x277CF0328];
  [v10 setObject:? forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v5);
  WeakRetained = objc_loadWeakRetained(&v12->_context);
  v6 = [WeakRetained telemetryFlowID];
  v4 = *MEMORY[0x277CE45B8];
  [v10 setObject:? forKeyedSubscript:?];
  v7 = [MEMORY[0x277CF0158] rtcAnalyticsReporter];
  [v7 sendEvent:v10];
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)willActivateElement:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [MEMORY[0x277CE44D8] ak_analyticsEventWithRUITelemetryElement:location[0] eventName:*MEMORY[0x277CF0330] error:0];
  WeakRetained = objc_loadWeakRetained(&v9->_context);
  v4 = [WeakRetained telemetryFlowID];
  v3 = *MEMORY[0x277CE45B8];
  [v7 setObject:? forKeyedSubscript:?];
  v5 = [MEMORY[0x277CF0158] rtcAnalyticsReporter];
  [v5 sendEvent:v7];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)willLoadURL:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [MEMORY[0x277CE44D8] ak_analyticsEventWithRUITelemetryElement:location[0] eventName:*MEMORY[0x277CF0338] error:0];
  WeakRetained = objc_loadWeakRetained(&v9->_context);
  v4 = [WeakRetained telemetryFlowID];
  v3 = *MEMORY[0x277CE45B8];
  [v7 setObject:? forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v4);
  v6 = [MEMORY[0x277CF0158] rtcAnalyticsReporter];
  [v6 sendEvent:v7];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)didLoadURL:(id)a3 error:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9 = [MEMORY[0x277CE44D8] ak_analyticsEventWithRUITelemetryElement:location[0] eventName:*MEMORY[0x277CF0340] error:v10];
  WeakRetained = objc_loadWeakRetained(&v12->_context);
  v6 = [WeakRetained telemetryFlowID];
  v4 = *MEMORY[0x277CE45B8];
  [v9 setObject:? forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v6);
  v8 = [MEMORY[0x277CF0158] rtcAnalyticsReporter];
  [v8 sendEvent:v9];
  MEMORY[0x277D82BD8](v8);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)willProcessHook:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = [MEMORY[0x277CE44D8] ak_analyticsEventWithRUITelemetryElement:location[0] eventName:*MEMORY[0x277CF0348] error:0];
  WeakRetained = objc_loadWeakRetained(&v13->_context);
  v6 = [WeakRetained telemetryFlowID];
  v3 = *MEMORY[0x277CE45B8];
  [v11 setObject:? forKeyedSubscript:?];
  *&v4 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  v8 = [location[0] attributes];
  v7 = [v8 objectForKeyedSubscript:@"name"];
  v5 = *MEMORY[0x277CF0370];
  [v11 setObject:? forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v7);
  v9 = [MEMORY[0x277CF0158] rtcAnalyticsReporter];
  [v9 sendEvent:v11];
  MEMORY[0x277D82BD8](v9);
  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)processedElementWithError:(id)a3 forElement:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  if (location[0])
  {
    v9 = [MEMORY[0x277CE44D8] ak_analyticsEventWithRUITelemetryElement:v11 eventName:*MEMORY[0x277CF0358] error:location[0]];
    WeakRetained = objc_loadWeakRetained(&v13->_context);
    v5 = [WeakRetained telemetryFlowID];
    v4 = *MEMORY[0x277CE45B8];
    [v9 setObject:? forKeyedSubscript:?];
    v6 = [MEMORY[0x277CF0158] rtcAnalyticsReporter];
    [v6 sendEvent:v9];
    MEMORY[0x277D82BD8](v6);
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
  v6 = [MEMORY[0x277CF0130] sharedInstance];
  location = [v6 primaryAuthKitAccount];
  *&v2 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  if (location)
  {
    v4 = [v14[0] username];
    v11 = 0;
    v9 = 0;
    v7 = 0;
    v5 = 0;
    if (v4)
    {
      v12 = [v14[0] username];
      v11 = 1;
      v5 = 0;
      if ([v12 length])
      {
        v10 = [location username];
        v9 = 1;
        v8 = [v14[0] username];
        v7 = 1;
        v5 = [v10 isEqualToString:?];
      }
    }

    if (v7)
    {
      MEMORY[0x277D82BD8](v8);
    }

    if (v9)
    {
      MEMORY[0x277D82BD8](v10);
    }

    if (v11)
    {
      MEMORY[0x277D82BD8](v12);
    }

    MEMORY[0x277D82BD8](v4);
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
  v3 = [(AKAppleIDServerUIContextController *)self->_serverUIContextController serverDataHarvester];
  v4 = [(AKAppleIDServerUIDataHarvester *)v3 harvestedData];
  v5 = [(NSDictionary *)v4 objectForKeyedSubscript:*MEMORY[0x277CEFEE0]];
  v11 = 0;
  v9 = 0;
  v7 = 0;
  v6 = 1;
  if (([v5 isEqualToString:*MEMORY[0x277CEFEF8]] & 1) == 0)
  {
    v12 = [(AKAppleIDServerUIContextController *)self->_serverUIContextController serverDataHarvester];
    v11 = 1;
    v10 = [(AKAppleIDServerUIDataHarvester *)v12 harvestedData];
    v9 = 1;
    v8 = [(NSDictionary *)v10 objectForKeyedSubscript:*MEMORY[0x277CEFEE0]];
    v7 = 1;
    v6 = [v8 isEqualToString:*MEMORY[0x277CEFF00]];
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](v10);
  }

  if (v11)
  {
    MEMORY[0x277D82BD8](v12);
  }

  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v3);
  return v6 & 1;
}

- (void)_showAlert:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __52__AKInAppAuthenticationRemoteUIDelegate__showAlert___block_invoke;
  v10 = &unk_2784A6420;
  v11 = MEMORY[0x277D82BE0](location[0]);
  v12 = MEMORY[0x277D82BE0](v14);
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

- (void)_processAndHandleConflictErrorFromResponse:(id)a3
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(AKAppleIDServerUIContextController *)v17->_serverUIContextController processResponse:location[0]];
  v14 = 0;
  v7 = 0;
  if (![(AKInAppAuthenticationRemoteUIDelegate *)v17 _isDeferrableFinalResponseHarvested])
  {
    v15 = [(AKAppleIDServerUIContextController *)v17->_serverUIContextController serverUIDelegate];
    v14 = 1;
    v7 = [(AKAppleIDServerResourceLoadDelegate *)v15 isResponseCompleteAndConflict:location[0]];
  }

  if (v14)
  {
    MEMORY[0x277D82BD8](v15);
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
    [(AKAppleIDServerUIContextController *)v17->_serverUIContextController completeWithFinalResponse:location[0]];
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