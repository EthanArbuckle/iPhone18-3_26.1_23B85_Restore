@interface AKAppleIDFollowUpServerUIPresenter
- (AKAppleIDFollowUpServerUIPresenter)init;
- (BOOL)_shouldSignWithIDMSAppleIDHeader;
- (BOOL)shouldAcknowledgeUserAction;
- (id)_authContextWithAltDSID:(id)d account:(id)account;
- (id)_authKitAccountWithAltDSID:(id)d;
- (id)_fetchCurrentFollowUpItem;
- (id)_makeAppleIDAuthenticationController;
- (void)_performAuthKitActionWithResponse:(id)response additionalData:(id)data error:(id)error;
- (void)_performClientCompletionWithServerResponse:(id)response additionalData:(id)data error:(id)error;
- (void)_performClientCompletionWithSuccess:(BOOL)success error:(id)error;
- (void)_prepareServerUIContext;
- (void)_presentServerUIWithCompletion:(id)completion;
- (void)_presentServerUIWithConfiguration:(id)configuration;
- (void)_signRequestAndPrepareServerConfig:(id)config;
- (void)_signWithIDMSAppleIDHeaderForRequest:(id)request withCompletion:(id)completion;
- (void)_urlAtKey:(id)key completion:(id)completion;
- (void)acknowledgeActionTakenOnFollowUpWithIdentifier:(id)identifier withAdditionalData:(id)data completion:(id)completion;
- (void)handleFinalResponse:(id)response additionalData:(id)data error:(id)error;
- (void)presentServerUIWithContext:(id)context withCompletion:(id)completion;
- (void)presentServerUIWithContext:(id)context withCompletion:(id)completion withResponse:(id)response;
- (void)signAdditionalHeadersWithRequest:(id)request;
@end

@implementation AKAppleIDFollowUpServerUIPresenter

- (AKAppleIDFollowUpServerUIPresenter)init
{
  v8 = a2;
  v9 = 0;
  v7.receiver = self;
  v7.super_class = AKAppleIDFollowUpServerUIPresenter;
  v6 = [(AKAppleIDFollowUpServerUIPresenter *)&v7 init];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    v2 = objc_opt_new();
    eventHandler = v9->_eventHandler;
    v9->_eventHandler = v2;
    MEMORY[0x277D82BD8](eventHandler);
  }

  v5 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (void)presentServerUIWithContext:(id)context withCompletion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v9 = 0;
  objc_storeStrong(&v9, completion);
  oslog = _AKLogSystem();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v12, location[0]);
    _os_log_debug_impl(&dword_222379000, oslog, OS_LOG_TYPE_DEBUG, "Present Server UI with follow up context: %@", v12, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(&selfCopy->_followupHelperContext, location[0]);
  _fetchCurrentFollowUpItem = [(AKAppleIDFollowUpServerUIPresenter *)selfCopy _fetchCurrentFollowUpItem];
  item = selfCopy->_item;
  selfCopy->_item = _fetchCurrentFollowUpItem;
  *&v6 = MEMORY[0x277D82BD8](item).n128_u64[0];
  [(AKAppleIDFollowUpServerUIPresenter *)selfCopy _presentServerUIWithCompletion:v9, v6];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)presentServerUIWithContext:(id)context withCompletion:(id)completion withResponse:(id)response
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v11 = 0;
  objc_storeStrong(&v11, completion);
  v10 = 0;
  objc_storeStrong(&v10, response);
  v5 = MEMORY[0x223DB6C90](v10);
  presentingClientResponseCompletion = selfCopy->_presentingClientResponseCompletion;
  selfCopy->_presentingClientResponseCompletion = v5;
  *&v7 = MEMORY[0x277D82BD8](presentingClientResponseCompletion).n128_u64[0];
  [(AKAppleIDFollowUpServerUIPresenter *)selfCopy presentServerUIWithContext:location[0] withCompletion:v11, v7];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)_presentServerUIWithCompletion:(id)completion
{
  v46 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v41 = _AKLogSystem();
  v40 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
  {
    urlKey = [(AKExtensionlessFollowUpHelperContext *)selfCopy->_followupHelperContext urlKey];
    __os_log_helper_16_2_1_8_64(v45, urlKey);
    _os_log_debug_impl(&dword_222379000, v41, v40, "_presentServerUIWithCompletion with urlKey: %@", v45, 0xCu);
    MEMORY[0x277D82BD8](urlKey);
  }

  objc_storeStrong(&v41, 0);
  userInfo = [(FLFollowUpItem *)selfCopy->_item userInfo];
  v39 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CF0028]];
  v3 = MEMORY[0x277D82BD8](userInfo).n128_u64[0];
  if (!v39)
  {
    v38 = _AKLogSystem();
    v37 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v38;
      v15 = v37;
      __os_log_helper_16_0_0(v36);
      _os_log_impl(&dword_222379000, v14, v15, "_presentServerUIWithCompletion - altDSID not found in follow up _item, checking _followupHelperContext instead.", v36, 2u);
    }

    objc_storeStrong(&v38, 0);
    altDSID = [(AKExtensionlessFollowUpHelperContext *)selfCopy->_followupHelperContext altDSID];
    v5 = v39;
    v39 = altDSID;
    v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  }

  if (v39)
  {
    v31 = [(AKAppleIDFollowUpServerUIPresenter *)selfCopy _authKitAccountWithAltDSID:v39, *&v3];
    if (v31)
    {
      objc_initWeak(&from, selfCopy);
      v7 = selfCopy;
      urlKey2 = [(AKExtensionlessFollowUpHelperContext *)selfCopy->_followupHelperContext urlKey];
      v18 = MEMORY[0x277D85DD0];
      v19 = -1073741824;
      v20 = 0;
      v21 = __69__AKAppleIDFollowUpServerUIPresenter__presentServerUIWithCompletion___block_invoke;
      v22 = &unk_2784A7C50;
      objc_copyWeak(v27, &from);
      v26 = MEMORY[0x277D82BE0](location[0]);
      v23 = MEMORY[0x277D82BE0](selfCopy);
      v24 = MEMORY[0x277D82BE0](v39);
      v25 = MEMORY[0x277D82BE0](v31);
      [(AKAppleIDFollowUpServerUIPresenter *)v7 _urlAtKey:urlKey2 completion:&v18];
      MEMORY[0x277D82BD8](urlKey2);
      objc_storeStrong(&v25, 0);
      objc_storeStrong(&v24, 0);
      objc_storeStrong(&v23, 0);
      objc_storeStrong(&v26, 0);
      objc_destroyWeak(v27);
      objc_destroyWeak(&from);
      v32 = 0;
    }

    else
    {
      v30 = _AKLogSystem();
      v29 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v44, v39);
        _os_log_error_impl(&dword_222379000, v30, v29, "No account found with altDSID %@, cannot present server UI", v44, 0xCu);
      }

      objc_storeStrong(&v30, 0);
      v9 = location[0];
      v8 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7055];
      v9[2](v9, 0);
      MEMORY[0x277D82BD8](v8);
      v32 = 1;
    }

    objc_storeStrong(&v31, 0);
  }

  else
  {
    v35 = _AKLogSystem();
    v34 = 16;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v12 = v35;
      v13 = v34;
      __os_log_helper_16_0_0(v33);
      _os_log_error_impl(&dword_222379000, v12, v13, "_presentServerUIWithCompletion - no altDSID provided in FollowUp or context, cannot present server UI.", v33, 2u);
    }

    objc_storeStrong(&v35, 0);
    v11 = location[0];
    v10 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7025];
    v11[2](v11, 0);
    MEMORY[0x277D82BD8](v10);
    v32 = 1;
  }

  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __69__AKAppleIDFollowUpServerUIPresenter__presentServerUIWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v19 = 0;
  objc_storeStrong(&v19, a3);
  v18[1] = a1;
  v18[0] = objc_loadWeakRetained((a1 + 64));
  if (v18[0])
  {
    if (location[0])
    {
      objc_storeStrong(v18[0] + 7, location[0]);
      v3 = MEMORY[0x223DB6C90](*(a1 + 56));
      v4 = *(v18[0] + 4);
      *(v18[0] + 4) = v3;
      *&v5 = MEMORY[0x277D82BD8](v4).n128_u64[0];
      v9 = *(a1 + 32);
      v8 = *(a1 + 40);
      v10 = [*(a1 + 48) username];
      v6 = [v9 _authContextWithAltDSID:v8 account:?];
      v7 = *(v18[0] + 11);
      *(v18[0] + 11) = v6;
      MEMORY[0x277D82BD8](v7);
      [*(a1 + 32) _prepareServerUIContext];
      v17 = 0;
    }

    else
    {
      v16 = _AKLogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v13 = [*(v18[0] + 10) urlKey];
        __os_log_helper_16_2_1_8_64(v21, v13);
        _os_log_error_impl(&dword_222379000, v16, OS_LOG_TYPE_ERROR, "_presentServerUIWithCompletion - failed to find URL key: %@ in bag, cannot present server UI", v21, 0xCu);
        MEMORY[0x277D82BD8](v13);
      }

      objc_storeStrong(&v16, 0);
      v11 = *(a1 + 56);
      v12 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7097];
      (*(v11 + 16))(v11, 0);
      MEMORY[0x277D82BD8](v12);
      v17 = 1;
    }
  }

  else
  {
    v17 = 1;
  }

  objc_storeStrong(v18, 0);
  if (!v17)
  {
    v17 = 0;
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (id)_authContextWithAltDSID:(id)d account:(id)account
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v14 = 0;
  objc_storeStrong(&v14, account);
  v13 = 0;
  v4 = objc_alloc_init(AKAppleIDAuthenticationInAppExtensionContext);
  v5 = v13;
  v13 = v4;
  *&v6 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  [(AKAppleIDAuthenticationInAppExtensionContext *)v13 setCellularDataAttributionAppBundleID:*MEMORY[0x277CEFFF0], v6];
  [(AKAppleIDAuthenticationInAppExtensionContext *)v13 set_shouldSendIdentityTokenForRemoteUI:0];
  presentingViewController = [(AKExtensionlessFollowUpHelperContext *)selfCopy->_followupHelperContext presentingViewController];
  [(AKAppleIDAuthenticationInAppContext *)v13 setPresentingViewController:?];
  *&v7 = MEMORY[0x277D82BD8](presentingViewController).n128_u64[0];
  forceInlinePresentation = [(AKExtensionlessFollowUpHelperContext *)selfCopy->_followupHelperContext forceInlinePresentation];
  [(AKAppleIDAuthenticationInAppContext *)v13 setForceInlinePresentation:forceInlinePresentation];
  [(AKAppleIDAuthenticationInAppExtensionContext *)v13 setAltDSID:location[0]];
  [(AKAppleIDAuthenticationInAppExtensionContext *)v13 setUsername:v14];
  v12 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);

  return v12;
}

- (id)_authKitAccountWithAltDSID:(id)d
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
  v5 = [mEMORY[0x277CF0130] authKitAccountWithAltDSID:location[0] error:0];
  MEMORY[0x277D82BD8](mEMORY[0x277CF0130]);
  objc_storeStrong(location, 0);

  return v5;
}

- (void)_urlAtKey:(id)key completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v6 = 0;
  objc_storeStrong(&v6, completion);
  mEMORY[0x277CF02F0] = [MEMORY[0x277CF02F0] sharedBag];
  [mEMORY[0x277CF02F0] urlForKey:location[0] completion:v6];
  MEMORY[0x277D82BD8](mEMORY[0x277CF02F0]);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)_prepareServerUIContext
{
  v20 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v16 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    altDSID = [(AKAppleIDAuthenticationInAppExtensionContext *)selfCopy->_authContext altDSID];
    __os_log_helper_16_2_2_8_112_8_64(v19, 1752392040, altDSID);
    _os_log_impl(&dword_222379000, location[0], v16, "_prepareServerUIContext with altDSID=%{mask.hash}@", v19, 0x16u);
    MEMORY[0x277D82BD8](altDSID);
  }

  objc_storeStrong(location, 0);
  _makeAppleIDAuthenticationController = [(AKAppleIDFollowUpServerUIPresenter *)selfCopy _makeAppleIDAuthenticationController];
  authController = selfCopy->_authController;
  selfCopy->_authController = _makeAppleIDAuthenticationController;
  MEMORY[0x277D82BD8](authController);
  v15 = objc_alloc_init(MEMORY[0x277CF0170]);
  altDSID2 = [(AKAppleIDAuthenticationInAppExtensionContext *)selfCopy->_authContext altDSID];
  [v15 setAltDSID:?];
  *&v4 = MEMORY[0x277D82BD8](altDSID2).n128_u64[0];
  [v15 setAnticipateEscrowAttempt:{1, v4}];
  v7 = selfCopy->_authController;
  v6 = v15;
  v9 = MEMORY[0x277D85DD0];
  v10 = -1073741824;
  v11 = 0;
  v12 = __61__AKAppleIDFollowUpServerUIPresenter__prepareServerUIContext__block_invoke;
  v13 = &unk_2784A7C78;
  v14 = MEMORY[0x277D82BE0](selfCopy);
  [(AKAppleIDAuthenticationController *)v7 getServerUILoadDelegateWithContext:v6 completion:&v9];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  *MEMORY[0x277D85DE8];
}

void __61__AKAppleIDFollowUpServerUIPresenter__prepareServerUIContext__block_invoke(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  if (location[0])
  {
    v6 = [*(a1[4] + 10) urlKey];
    [location[0] setBagUrlKey:?];
    *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
    [a1[4] _signRequestAndPrepareServerConfig:{location[0], v3}];
  }

  else if (v9)
  {
    [a1[4] _performClientCompletionWithSuccess:0 error:v9];
  }

  else
  {
    v4 = a1[4];
    v5 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7019];
    [v4 _performClientCompletionWithSuccess:0 error:?];
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (id)_makeAppleIDAuthenticationController
{
  v2 = objc_alloc_init(MEMORY[0x277CF0178]);

  return v2;
}

- (void)_signRequestAndPrepareServerConfig:(id)config
{
  v40 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, config);
  v35 = _AKLogSystem();
  v34 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v39, selfCopy->_initialURL);
    _os_log_impl(&dword_222379000, v35, v34, "_signRequestAndPrepareServerConfig for initialURL: %@", v39, 0xCu);
  }

  objc_storeStrong(&v35, 0);
  mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
  altDSID = [location[0] altDSID];
  v32 = [mEMORY[0x277CF0130] appleIDAccountWithAltDSID:?];
  v31 = [mEMORY[0x277CF0130] settingsServiceTokenForAccount:{v32, MEMORY[0x277D82BD8](altDSID).n128_f64[0]}];
  if ([v31 length])
  {
    [location[0] setServiceToken:v31];
    [location[0] setServiceTokenIdentifier:@"com.apple.gs.appleid.auth"];
  }

  v30 = [MEMORY[0x277CCAB70] requestWithURL:selfCopy->_initialURL];
  v29 = [objc_alloc(MEMORY[0x277CF02D8]) initWithRequest:v30 requestType:0];
  [v29 setResourceLoadDelegate:location[0]];
  if (selfCopy->_item && [(AKAppleIDFollowUpServerUIPresenter *)selfCopy _shouldSignWithIDMSAppleIDHeader])
  {
    v28 = _AKLogSystem();
    v27 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v28;
      v14 = v27;
      __os_log_helper_16_0_0(v26);
      _os_log_impl(&dword_222379000, v13, v14, "Signing with idms header", v26, 2u);
    }

    objc_storeStrong(&v28, 0);
    userInfo = [(FLFollowUpItem *)selfCopy->_item userInfo];
    v25 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CF0030]];
    *&v3 = MEMORY[0x277D82BD8](userInfo).n128_u64[0];
    if (v25)
    {
      resourceLoadDelegate = [v29 resourceLoadDelegate];
      [resourceLoadDelegate setContinuityIDMSData:v25];
      MEMORY[0x277D82BD8](resourceLoadDelegate);
    }

    else
    {
      v24 = _AKLogSystem();
      v23 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        uniqueItemIdentifier = [(AKExtensionlessFollowUpHelperContext *)selfCopy->_followupHelperContext uniqueItemIdentifier];
        __os_log_helper_16_2_1_8_64(v38, uniqueItemIdentifier);
        _os_log_error_impl(&dword_222379000, v24, v23, "Failed to find IDMS data with id: %@", v38, 0xCu);
        MEMORY[0x277D82BD8](uniqueItemIdentifier);
      }

      objc_storeStrong(&v24, 0);
    }

    objc_storeStrong(&v25, 0);
  }

  [v29 setPresentationType:2];
  objc_initWeak(&from, selfCopy);
  v16 = MEMORY[0x277D85DD0];
  v17 = -1073741824;
  v18 = 0;
  v19 = __73__AKAppleIDFollowUpServerUIPresenter__signRequestAndPrepareServerConfig___block_invoke;
  v20 = &unk_2784A7CA0;
  objc_copyWeak(&v21, &from);
  v9 = MEMORY[0x223DB6C90](&v16);
  serverUICompletion = selfCopy->_serverUICompletion;
  selfCopy->_serverUICompletion = v9;
  MEMORY[0x277D82BD8](serverUICompletion);
  v8 = [AKAppleIDServerUIContextController alloc];
  v7 = [(AKAppleIDServerUIContextController *)v8 initWithRequestConfiguration:v29 completion:selfCopy->_serverUICompletion];
  serverUIContextController = selfCopy->_serverUIContextController;
  selfCopy->_serverUIContextController = v7;
  *&v6 = MEMORY[0x277D82BD8](serverUIContextController).n128_u64[0];
  [(AKAppleIDFollowUpServerUIPresenter *)selfCopy _presentServerUIWithConfiguration:v29, v6];
  objc_destroyWeak(&v21);
  objc_destroyWeak(&from);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&mEMORY[0x277CF0130], 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __73__AKAppleIDFollowUpServerUIPresenter__signRequestAndPrepareServerConfig___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = 0;
  objc_storeStrong(&v14, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12[1] = a1;
  v12[0] = objc_loadWeakRetained(a1 + 4);
  if (v12[0])
  {
    v11 = _AKLogSystem();
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      log = v11;
      type = v10;
      __os_log_helper_16_0_0(v9);
      _os_log_impl(&dword_222379000, log, type, "Server UI finished processing", v9, 2u);
    }

    objc_storeStrong(&v11, 0);
    [v12[0] _performClientCompletionWithServerResponse:location[0] additionalData:v14 error:v13];
    if (v13)
    {
      [v12[0] _performClientCompletionWithSuccess:0 error:v13];
    }

    else
    {
      [v12[0] _performClientCompletionWithSuccess:1 error:0];
    }
  }

  objc_storeStrong(v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)_presentServerUIWithConfiguration:(id)configuration
{
  v28 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  v24 = _AKLogSystem();
  v23 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v27, location[0]);
    _os_log_impl(&dword_222379000, v24, v23, "Presenting server provided UI with configuration %@", v27, 0xCu);
  }

  objc_storeStrong(&v24, 0);
  if (selfCopy->_item)
  {
    v22 = _AKLogSystem();
    v21 = 2;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v9 = v22;
      v10 = v21;
      __os_log_helper_16_0_0(v20);
      _os_log_debug_impl(&dword_222379000, v9, v10, "Acknowledging user interacted with continuity push", v20, 2u);
    }

    objc_storeStrong(&v22, 0);
    v7 = selfCopy;
    uniqueItemIdentifier = [(AKExtensionlessFollowUpHelperContext *)selfCopy->_followupHelperContext uniqueItemIdentifier];
    [AKAppleIDFollowUpServerUIPresenter acknowledgeActionTakenOnFollowUpWithIdentifier:v7 withAdditionalData:"acknowledgeActionTakenOnFollowUpWithIdentifier:withAdditionalData:completion:" completion:?];
    MEMORY[0x277D82BD8](uniqueItemIdentifier);
  }

  else
  {
    v19 = _AKLogSystem();
    v18 = 2;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v5 = v19;
      v6 = v18;
      __os_log_helper_16_0_0(v17);
      _os_log_debug_impl(&dword_222379000, v5, v6, "Follow up item is missing, user interaction will not be acknowledged with server.", v17, 2u);
    }

    objc_storeStrong(&v19, 0);
  }

  authContext = selfCopy->_authContext;
  v3 = location[0];
  v11 = MEMORY[0x277D85DD0];
  v12 = -1073741824;
  v13 = 0;
  v14 = __72__AKAppleIDFollowUpServerUIPresenter__presentServerUIWithConfiguration___block_invoke;
  v15 = &unk_2784A7CC8;
  v16 = MEMORY[0x277D82BE0](selfCopy);
  [(AKAppleIDAuthenticationInAppContext *)authContext presentServerProvidedUIWithConfiguration:v3 completion:&v11];
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __72__AKAppleIDFollowUpServerUIPresenter__presentServerUIWithConfiguration___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  [a1[4] _performClientCompletionWithServerResponse:location[0] additionalData:v8 error:v7];
  [*(a1[4] + 1) processResponse:location[0]];
  [a1[4] _performAuthKitActionWithResponse:location[0] additionalData:v8 error:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)acknowledgeActionTakenOnFollowUpWithIdentifier:(id)identifier withAdditionalData:(id)data completion:(id)completion
{
  v44 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v40 = 0;
  objc_storeStrong(&v40, data);
  v39 = 0;
  objc_storeStrong(&v39, completion);
  if ([(AKAppleIDFollowUpServerUIPresenter *)selfCopy shouldAcknowledgeUserAction])
  {
    v38 = _AKLogSystem();
    v37 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v43, location[0]);
      _os_log_impl(&dword_222379000, v38, v37, "Sending acknowledgment for follow up item with id: %@", v43, 0xCu);
    }

    objc_storeStrong(&v38, 0);
    v30 = 0;
    v31 = &v30;
    v32 = 838860800;
    v33 = 48;
    v34 = __Block_byref_object_copy__0;
    v35 = __Block_byref_object_dispose__0;
    v36 = objc_alloc_init(MEMORY[0x277CF0178]);
    v29 = objc_opt_new();
    userInfo = [(FLFollowUpItem *)selfCopy->_item userInfo];
    v28 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CF0030]];
    *&v5 = MEMORY[0x277D82BD8](userInfo).n128_u64[0];
    userInfo2 = [(FLFollowUpItem *)selfCopy->_item userInfo];
    v27 = [userInfo2 objectForKeyedSubscript:@"txnid"];
    *&v6 = MEMORY[0x277D82BD8](userInfo2).n128_u64[0];
    uniqueItemIdentifier = [(AKExtensionlessFollowUpHelperContext *)selfCopy->_followupHelperContext uniqueItemIdentifier];
    [v29 setItemIdentifier:?];
    *&v7 = MEMORY[0x277D82BD8](uniqueItemIdentifier).n128_u64[0];
    userInfo3 = [(FLFollowUpItem *)selfCopy->_item userInfo];
    v14 = [userInfo3 objectForKeyedSubscript:*MEMORY[0x277CF0028]];
    [v29 setAltDSID:?];
    MEMORY[0x277D82BD8](v14);
    [v29 setAkAction:{0x283592E68, MEMORY[0x277D82BD8](userInfo3).n128_f64[0]}];
    [v29 setIsContinuityPush:1];
    if (v28)
    {
      userInfo4 = [(FLFollowUpItem *)selfCopy->_item userInfo];
      v12 = [userInfo4 objectForKeyedSubscript:*MEMORY[0x277CF0030]];
      [v29 setIdmsData:?];
      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](userInfo4);
    }

    if (v27)
    {
      userInfo5 = [(FLFollowUpItem *)selfCopy->_item userInfo];
      v10 = [userInfo5 objectForKeyedSubscript:@"txnid"];
      [v29 setTxnid:?];
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](userInfo5);
    }

    v9 = v31[5];
    v8 = v29;
    v21 = MEMORY[0x277D85DD0];
    v22 = -1073741824;
    v23 = 0;
    v24 = __115__AKAppleIDFollowUpServerUIPresenter_acknowledgeActionTakenOnFollowUpWithIdentifier_withAdditionalData_completion___block_invoke;
    v25 = &unk_2784A7CF0;
    v26[1] = &v30;
    v26[0] = MEMORY[0x277D82BE0](v39);
    [v9 teardownFollowUpWithContext:v8 completion:&v21];
    objc_storeStrong(v26, 0);
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v29, 0);
    _Block_object_dispose(&v30, 8);
    objc_storeStrong(&v36, 0);
  }

  else if (v39)
  {
    (*(v39 + 2))(v39, 1, 0);
  }

  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __115__AKAppleIDFollowUpServerUIPresenter_acknowledgeActionTakenOnFollowUpWithIdentifier_withAdditionalData_completion___block_invoke(NSObject *a1, char a2, id obj)
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = a1;
  v7 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  oslog[0] = _AKLogSystem();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    if (v7)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    __os_log_helper_16_2_2_8_64_8_64(v9, v3, location);
    _os_log_impl(&dword_222379000, oslog[0], OS_LOG_TYPE_DEFAULT, "Followup teardown is complete with success: %@, error: %@", v9, 0x16u);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong((*(a1[5].isa + 1) + 40), 0);
  if (a1[4].isa)
  {
    (*(a1[4].isa + 2))();
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)signAdditionalHeadersWithRequest:(id)request
{
  v16 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  if (selfCopy->_item && [(AKAppleIDFollowUpServerUIPresenter *)selfCopy _shouldSignWithIDMSAppleIDHeader])
  {
    v12 = _AKLogSystem();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      log = v12;
      type = v11;
      __os_log_helper_16_0_0(v10);
      _os_log_impl(&dword_222379000, log, type, "Signing with idms header", v10, 2u);
    }

    objc_storeStrong(&v12, 0);
    userInfo = [(FLFollowUpItem *)selfCopy->_item userInfo];
    v9 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CF0030]];
    *&v3 = MEMORY[0x277D82BD8](userInfo).n128_u64[0];
    if (v9)
    {
      [location[0] setValue:v9 forHTTPHeaderField:{@"X-Apple-I-IdMS-Data", v3}];
    }

    else
    {
      oslog = _AKLogSystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        uniqueItemIdentifier = [(AKExtensionlessFollowUpHelperContext *)selfCopy->_followupHelperContext uniqueItemIdentifier];
        __os_log_helper_16_2_1_8_64(v15, uniqueItemIdentifier);
        _os_log_error_impl(&dword_222379000, oslog, OS_LOG_TYPE_ERROR, "Failed to find IDMS data with id: %@", v15, 0xCu);
        MEMORY[0x277D82BD8](uniqueItemIdentifier);
      }

      objc_storeStrong(&oslog, 0);
    }

    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldSignWithIDMSAppleIDHeader
{
  actions = [(FLFollowUpItem *)self->_item actions];
  firstObject = [actions firstObject];
  identifier = [firstObject identifier];
  v6 = [identifier isEqualToString:@"continuity_push_followup_notification"];
  MEMORY[0x277D82BD8](identifier);
  MEMORY[0x277D82BD8](firstObject);
  MEMORY[0x277D82BD8](actions);
  return v6;
}

- (BOOL)shouldAcknowledgeUserAction
{
  actions = [(FLFollowUpItem *)self->_item actions];
  firstObject = [actions firstObject];
  identifier = [firstObject identifier];
  v6 = [identifier isEqualToString:@"continuity_push_followup_notification"];
  MEMORY[0x277D82BD8](identifier);
  MEMORY[0x277D82BD8](firstObject);
  MEMORY[0x277D82BD8](actions);
  return v6;
}

- (id)_fetchCurrentFollowUpItem
{
  v36 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v31 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    uniqueItemIdentifier = [(AKExtensionlessFollowUpHelperContext *)selfCopy->_followupHelperContext uniqueItemIdentifier];
    __os_log_helper_16_2_1_8_64(v35, uniqueItemIdentifier);
    _os_log_impl(&dword_222379000, location[0], v31, "Fetching follow up item with id: %@", v35, 0xCu);
    MEMORY[0x277D82BD8](uniqueItemIdentifier);
  }

  objc_storeStrong(location, 0);
  if (CoreFollowUpLibraryCore(0))
  {
    v2 = objc_alloc_init(getFLFollowUpItemClass());
  }

  else
  {
    v2 = objc_alloc_init(0);
  }

  v30 = v2;
  v29 = 0;
  followUpProvider = [(AKAppleIDFollowUpServerUIPresenter *)selfCopy followUpProvider];
  v3 = MEMORY[0x277D82BD8](followUpProvider).n128_u64[0];
  if (!followUpProvider)
  {
    v28 = _AKLogSystem();
    v27 = 2;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v13 = v28;
      v14 = v27;
      __os_log_helper_16_0_0(v26);
      _os_log_debug_impl(&dword_222379000, v13, v14, "Client did not provide a followUpProvider, defaulting to the AuthKit default one, which will only work with follow ups posted by AuthKit.", v26, 2u);
    }

    objc_storeStrong(&v28, 0);
    mEMORY[0x277CF0248] = [MEMORY[0x277CF0248] sharedAuthKitFollowupProvider];
    [(AKAppleIDFollowUpServerUIPresenter *)selfCopy setFollowUpProvider:?];
    v3 = MEMORY[0x277D82BD8](mEMORY[0x277CF0248]).n128_u64[0];
  }

  followUpProvider2 = [(AKAppleIDFollowUpServerUIPresenter *)selfCopy followUpProvider];
  v24 = v29;
  v9 = [(AKFollowUpProvider *)followUpProvider2 pendingFollowUpItems:&v24];
  objc_storeStrong(&v29, v24);
  v25 = v9;
  MEMORY[0x277D82BD8](followUpProvider2);
  v11 = v25;
  v18 = MEMORY[0x277D85DD0];
  v19 = -1073741824;
  v20 = 0;
  v21 = __63__AKAppleIDFollowUpServerUIPresenter__fetchCurrentFollowUpItem__block_invoke;
  v22 = &unk_2784A7D18;
  v23 = MEMORY[0x277D82BE0](selfCopy);
  v4 = [v11 aaf_firstObjectPassingTest:&v18];
  v5 = v30;
  v30 = v4;
  MEMORY[0x277D82BD8](v5);
  if (v29 || !v30)
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      uniqueItemIdentifier2 = [(AKExtensionlessFollowUpHelperContext *)selfCopy->_followupHelperContext uniqueItemIdentifier];
      __os_log_helper_16_2_2_8_64_8_64(v34, uniqueItemIdentifier2, v29);
      _os_log_error_impl(&dword_222379000, oslog, OS_LOG_TYPE_ERROR, "Failed to fetch follow up items with id: %@\nfetchError: %@", v34, 0x16u);
      MEMORY[0x277D82BD8](uniqueItemIdentifier2);
    }

    objc_storeStrong(&oslog, 0);
  }

  v7 = MEMORY[0x277D82BE0](v30);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  *MEMORY[0x277D85DE8];

  return v7;
}

uint64_t __63__AKAppleIDFollowUpServerUIPresenter__fetchCurrentFollowUpItem__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = [location[0] uniqueIdentifier];
  v4 = [*(a1[4] + 80) uniqueItemIdentifier];
  v6 = [v5 isEqualToString:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(location, 0);
  return v6;
}

- (void)_signWithIDMSAppleIDHeaderForRequest:(id)request withCompletion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, request);
  v15 = 0;
  objc_storeStrong(&v15, completion);
  if (selfCopy->_item)
  {
    v14 = _AKLogSystem();
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      log = v14;
      type = v13;
      __os_log_helper_16_0_0(v12);
      _os_log_impl(&dword_222379000, log, type, "Signing with IDMS data", v12, 2u);
    }

    objc_storeStrong(&v14, 0);
    userInfo = [(FLFollowUpItem *)selfCopy->_item userInfo];
    v11 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CF0030]];
    *&v4 = MEMORY[0x277D82BD8](userInfo).n128_u64[0];
    if (v11)
    {
      [location[0] setValue:v11 forHTTPHeaderField:{@"X-Apple-I-IdMS-Data", v4}];
    }

    else
    {
      v10 = _AKLogSystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        uniqueItemIdentifier = [(AKExtensionlessFollowUpHelperContext *)selfCopy->_followupHelperContext uniqueItemIdentifier];
        __os_log_helper_16_2_1_8_64(v18, uniqueItemIdentifier);
        _os_log_error_impl(&dword_222379000, v10, OS_LOG_TYPE_ERROR, "Failed to find IDMS data with id: %@", v18, 0xCu);
        MEMORY[0x277D82BD8](uniqueItemIdentifier);
      }

      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&v11, 0);
  }

  (*(v15 + 2))(v15, location[0]);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_performClientCompletionWithSuccess:(BOOL)success error:(id)error
{
  selfCopy = self;
  v9 = a2;
  successCopy = success;
  location = 0;
  objc_storeStrong(&location, error);
  serverUIDelegate = [(AKAppleIDServerUIContextController *)selfCopy->_serverUIContextController serverUIDelegate];
  [(AKAppleIDServerResourceLoadDelegate *)serverUIDelegate setContinuityIDMSData:0];
  v4 = MEMORY[0x277D82BD8](serverUIDelegate);
  if (selfCopy->_presentingClientCompletion)
  {
    (*(selfCopy->_presentingClientCompletion + 2))(v4);
  }

  [(AKAppleIDAuthenticationInAppContext *)selfCopy->_authContext dismissServerProvidedUIWithCompletion:v4.n128_f64[0], 0];
  objc_storeStrong(&location, obj);
}

- (void)_performClientCompletionWithServerResponse:(id)response additionalData:(id)data error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v13 = 0;
  objc_storeStrong(&v13, data);
  v12 = 0;
  objc_storeStrong(&v12, error);
  if (selfCopy->_presentingClientResponseCompletion)
  {
    v11 = _AKLogSystem();
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      log = v11;
      type = v10;
      __os_log_helper_16_0_0(v9);
      _os_log_impl(&dword_222379000, log, type, "Handing the server response to the calling client", v9, 2u);
    }

    objc_storeStrong(&v11, 0);
    (*(selfCopy->_presentingClientResponseCompletion + 2))();
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)_performAuthKitActionWithResponse:(id)response additionalData:(id)data error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v70 = 0;
  objc_storeStrong(&v70, data);
  v69 = 0;
  objc_storeStrong(&v69, error);
  serverUIDelegate = [(AKAppleIDServerUIContextController *)selfCopy->_serverUIContextController serverUIDelegate];
  v66 = 0;
  v64 = 0;
  v26 = 1;
  if (([serverUIDelegate isAuthenticationRequired:location[0]] & 1) == 0)
  {
    userInfo = [v69 userInfo];
    v66 = 1;
    v65 = [userInfo objectForKeyedSubscript:@"statusCode"];
    v64 = 1;
    v26 = [v65 isEqual:&unk_2835AAF48];
  }

  if (v64)
  {
    MEMORY[0x277D82BD8](v65);
  }

  if (v66)
  {
    MEMORY[0x277D82BD8](userInfo);
  }

  if (v26)
  {
    v63 = _AKLogSystem();
    v62 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      log = v63;
      type = v62;
      __os_log_helper_16_0_0(v61);
      _os_log_impl(&dword_222379000, log, type, "Signal received with authentication required", v61, 2u);
    }

    objc_storeStrong(&v63, 0);
    eventHandler = selfCopy->_eventHandler;
    authContext = selfCopy->_authContext;
    v54 = MEMORY[0x277D85DD0];
    v55 = -1073741824;
    v56 = 0;
    v57 = __93__AKAppleIDFollowUpServerUIPresenter__performAuthKitActionWithResponse_additionalData_error___block_invoke;
    v58 = &unk_2784A75D0;
    v59 = MEMORY[0x277D82BE0](selfCopy);
    v60 = MEMORY[0x277D82BE0](serverUIDelegate);
    [(AKAppleIDServerUIEventHandlerImp *)eventHandler reauthenticateWithContext:authContext withCompletion:&v54];
    objc_storeStrong(&v60, 0);
    objc_storeStrong(&v59, 0);
LABEL_26:
    v30 = 0;
    goto LABEL_27;
  }

  if ([serverUIDelegate isResponseActionable:location[0]])
  {
    v53 = _AKLogSystem();
    v52 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v53;
      v19 = v52;
      __os_log_helper_16_0_0(v51);
      _os_log_impl(&dword_222379000, v18, v19, "Signal received with an actionable response", v51, 2u);
    }

    objc_storeStrong(&v53, 0);
    v17 = selfCopy->_eventHandler;
    v14 = location[0];
    v15 = selfCopy->_authContext;
    authController = selfCopy->_authController;
    v45 = MEMORY[0x277D85DD0];
    v46 = -1073741824;
    v47 = 0;
    v48 = __93__AKAppleIDFollowUpServerUIPresenter__performAuthKitActionWithResponse_additionalData_error___block_invoke_58;
    v49 = &unk_2784A6D00;
    v50 = MEMORY[0x277D82BE0](selfCopy);
    [(AKAppleIDServerUIEventHandlerImp *)v17 updateStateWithExternalAuthenticationResponse:v14 forContext:v15 withAuthController:authController completion:&v45];
    objc_storeStrong(&v50, 0);
    goto LABEL_26;
  }

  if ([serverUIDelegate isResponseFinalForHSA2ServerFlow:location[0]])
  {
    v44 = _AKLogSystem();
    v43 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v44;
      v13 = v43;
      __os_log_helper_16_0_0(v42);
      _os_log_impl(&dword_222379000, v12, v13, "Signal received for Final HSAA2 Server Flow", v42, 2u);
    }

    objc_storeStrong(&v44, 0);
    v11 = selfCopy->_eventHandler;
    v9 = selfCopy->_authContext;
    v10 = v70;
    v34 = MEMORY[0x277D85DD0];
    v35 = -1073741824;
    v36 = 0;
    v37 = __93__AKAppleIDFollowUpServerUIPresenter__performAuthKitActionWithResponse_additionalData_error___block_invoke_59;
    v38 = &unk_2784A7D40;
    v39 = MEMORY[0x277D82BE0](selfCopy);
    v40 = MEMORY[0x277D82BE0](location[0]);
    v41 = MEMORY[0x277D82BE0](v70);
    [(AKAppleIDServerUIEventHandlerImp *)v11 startCDPRepairWithContext:v9 withAdditionalData:v10 completion:&v34];
    objc_storeStrong(&v41, 0);
    objc_storeStrong(&v40, 0);
    objc_storeStrong(&v39, 0);
    goto LABEL_26;
  }

  if (([serverUIDelegate isResponseCompleteAndConflict:location[0]] & 1) == 0)
  {
    v29 = _AKLogSystem();
    v28 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v29;
      v6 = v28;
      __os_log_helper_16_0_0(v27);
      _os_log_impl(&dword_222379000, v5, v6, "Handling final response", v27, 2u);
    }

    objc_storeStrong(&v29, 0);
    [(AKAppleIDFollowUpServerUIPresenter *)selfCopy handleFinalResponse:location[0] additionalData:v70 error:v69];
    goto LABEL_26;
  }

  oslog = _AKLogSystem();
  v32 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = oslog;
    v8 = v32;
    __os_log_helper_16_0_0(v31);
    _os_log_impl(&dword_222379000, v7, v8, "Signal received with complete", v31, 2u);
  }

  objc_storeStrong(&oslog, 0);
  [(AKAppleIDFollowUpServerUIPresenter *)selfCopy _performClientCompletionWithSuccess:1 error:0];
  v30 = 1;
LABEL_27:
  objc_storeStrong(&serverUIDelegate, 0);
  objc_storeStrong(&v69, 0);
  objc_storeStrong(&v70, 0);
  objc_storeStrong(location, 0);
}

void __93__AKAppleIDFollowUpServerUIPresenter__performAuthKitActionWithResponse_additionalData_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  if (v5)
  {
    [*(a1 + 32) _performClientCompletionWithSuccess:0 error:v5];
  }

  else
  {
    [*(a1 + 32) _signRequestAndPrepareServerConfig:*(a1 + 40)];
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void __93__AKAppleIDFollowUpServerUIPresenter__performAuthKitActionWithResponse_additionalData_error___block_invoke_58(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  [*(a1 + 32) _performClientCompletionWithSuccess:v5 & 1 error:location];
  objc_storeStrong(&location, 0);
}

void __93__AKAppleIDFollowUpServerUIPresenter__performAuthKitActionWithResponse_additionalData_error___block_invoke_59(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  if ((v5 & 1) == 0)
  {
    [*(*(a1 + 32) + 24) postCDPFollowUpForError:location];
  }

  [*(a1 + 32) handleFinalResponse:*(a1 + 40) additionalData:*(a1 + 48) error:location];
  objc_storeStrong(&location, 0);
}

- (void)handleFinalResponse:(id)response additionalData:(id)data error:(id)error
{
  v44 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, response);
  v40 = 0;
  objc_storeStrong(&v40, data);
  v39 = 0;
  objc_storeStrong(&v39, error);
  v38 = [MEMORY[0x277CF0180] signalFromServerResponse:location[0]];
  serverUIDelegate = [(AKAppleIDServerUIContextController *)selfCopy->_serverUIContextController serverUIDelegate];
  v23 = [(AKAppleIDServerResourceLoadDelegate *)serverUIDelegate isResponseFinal:location[0]];
  MEMORY[0x277D82BD8](serverUIDelegate);
  if (v23)
  {
    v37 = _AKLogSystem();
    v36 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      log = v37;
      type = v36;
      __os_log_helper_16_0_0(v35);
      _os_log_impl(&dword_222379000, log, type, "Signal received with final response", v35, 2u);
    }

    objc_storeStrong(&v37, 0);
    eventHandler = selfCopy->_eventHandler;
    altDSID = [(AKAppleIDAuthenticationInAppExtensionContext *)selfCopy->_authContext altDSID];
    [AKAppleIDServerUIEventHandlerImp updateAccountUsernameForAltDSID:"updateAccountUsernameForAltDSID:withHarvestedData:" withHarvestedData:?];
    *&v5 = MEMORY[0x277D82BD8](altDSID).n128_u64[0];
    [(AKAppleIDServerUIContextController *)selfCopy->_serverUIContextController completeWithFinalResponse:location[0], v5];
    v34 = 1;
  }

  else
  {
    switch(v38)
    {
      case 2:
        v33 = _AKLogSystem();
        v32 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v14 = v33;
          v15 = v32;
          __os_log_helper_16_0_0(v31);
          _os_log_impl(&dword_222379000, v14, v15, "Signal received to cancel", v31, 2u);
        }

        objc_storeStrong(&v33, 0);
        serverUIContextController = selfCopy->_serverUIContextController;
        v13 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7003];
        [(AKAppleIDServerUIContextController *)serverUIContextController completeWithError:?];
        MEMORY[0x277D82BD8](v13);
        break;
      case 8:
      case 7:
        v30 = _AKLogSystem();
        v29 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v30;
          v11 = v29;
          __os_log_helper_16_0_0(v28);
          _os_log_impl(&dword_222379000, v10, v11, "Signal received to teardown/ delete", v28, 2u);
        }

        objc_storeStrong(&v30, 0);
        [(AKAppleIDFollowUpServerUIPresenter *)selfCopy _performClientCompletionWithSuccess:0 error:0];
        break;
      case 1:
        v27 = _AKLogSystem();
        v26 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v8 = v27;
          v9 = v26;
          __os_log_helper_16_0_0(v25);
          _os_log_impl(&dword_222379000, v8, v9, "Signal received to skip user action", v25, 2u);
        }

        objc_storeStrong(&v27, 0);
        v6 = selfCopy->_serverUIContextController;
        v7 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7038];
        [(AKAppleIDServerUIContextController *)v6 completeWithError:?];
        MEMORY[0x277D82BD8](v7);
        break;
      default:
        v24 = _AKLogSystem();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_1_8_64(v43, location[0]);
          _os_log_impl(&dword_222379000, v24, OS_LOG_TYPE_DEFAULT, "Unknown server response %@", v43, 0xCu);
        }

        objc_storeStrong(&v24, 0);
        [(AKAppleIDFollowUpServerUIPresenter *)selfCopy _performClientCompletionWithSuccess:0 error:0];
        break;
    }

    v34 = 0;
  }

  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

@end