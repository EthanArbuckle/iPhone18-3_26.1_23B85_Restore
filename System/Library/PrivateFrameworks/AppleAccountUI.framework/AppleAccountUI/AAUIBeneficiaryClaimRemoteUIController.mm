@interface AAUIBeneficiaryClaimRemoteUIController
- (AAUIBeneficiaryClaimRemoteUIController)initWithAppleAccount:(id)account claimCode:(id)code;
- (BOOL)remoteUIController:(id)controller shouldLoadRequest:(id)request redirectResponse:(id)response;
- (id)_authController;
- (id)_grandSlamAccount;
- (id)remoteUIController:(id)controller createPageWithName:(id)name attributes:(id)attributes;
- (void)_addHeadersToRequest:(id)request;
- (void)_getServerUILoadDelegateWithCompletion:(id)completion;
- (void)_handleObjectModelChangeForController:(id)controller objectModel:(id)model isModal:(BOOL)modal;
- (void)presentRemoteUIFromNavigationController:(id)controller withCompletion:(id)completion;
- (void)remoteUIController:(id)controller didReceiveHTTPResponse:(id)response;
- (void)remoteUIController:(id)controller didRefreshObjectModel:(id)model;
- (void)remoteUIController:(id)controller willPresentObjectModel:(id)model modally:(BOOL)modally;
@end

@implementation AAUIBeneficiaryClaimRemoteUIController

- (AAUIBeneficiaryClaimRemoteUIController)initWithAppleAccount:(id)account claimCode:(id)code
{
  accountCopy = account;
  codeCopy = code;
  v12.receiver = self;
  v12.super_class = AAUIBeneficiaryClaimRemoteUIController;
  v9 = [(AAUIBeneficiaryClaimRemoteUIController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_appleAccount, account);
    objc_storeStrong(&v10->_claimCode, code);
  }

  return v10;
}

- (void)presentRemoteUIFromNavigationController:(id)controller withCompletion:(id)completion
{
  completionCopy = completion;
  controllerCopy = controller;
  v8 = _AAUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "Attempting to load Remote UI for Starting Beneficiary Claim...", buf, 2u);
  }

  v9 = objc_alloc(MEMORY[0x1E698B820]);
  _grandSlamAccount = [(AAUIBeneficiaryClaimRemoteUIController *)self _grandSlamAccount];
  accountStore = [(ACAccount *)self->_appleAccount accountStore];
  v12 = [v9 initWithGrandSlamAccount:_grandSlamAccount accountStore:accountStore claimCode:self->_claimCode];

  v13 = objc_alloc_init(AAUIRemoteUIController);
  benefeciaryClaimRemoteUIController = self->_benefeciaryClaimRemoteUIController;
  self->_benefeciaryClaimRemoteUIController = v13;

  [(AAUIRemoteUIController *)self->_benefeciaryClaimRemoteUIController setNavigationController:controllerCopy];
  [(AAUIRemoteUIController *)self->_benefeciaryClaimRemoteUIController setDelegate:self];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __97__AAUIBeneficiaryClaimRemoteUIController_presentRemoteUIFromNavigationController_withCompletion___block_invoke;
  v17[3] = &unk_1E820C1F8;
  v18 = v12;
  v19 = completionCopy;
  v17[4] = self;
  v15 = v12;
  v16 = completionCopy;
  [(AAUIBeneficiaryClaimRemoteUIController *)self _getServerUILoadDelegateWithCompletion:v17];
}

void __97__AAUIBeneficiaryClaimRemoteUIController_presentRemoteUIFromNavigationController_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(*(a1 + 32) + 48);
    v8 = [*(a1 + 40) urlRequest];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __97__AAUIBeneficiaryClaimRemoteUIController_presentRemoteUIFromNavigationController_withCompletion___block_invoke_2;
    v10[3] = &unk_1E820C988;
    v10[4] = *(a1 + 32);
    v11 = *(a1 + 48);
    [v7 loadRequest:v8 completion:v10];
  }

  else
  {
    v9 = *(a1 + 48);
    if (v9)
    {
      (*(v9 + 16))(v9, 0, v6);
    }
  }
}

void __97__AAUIBeneficiaryClaimRemoteUIController_presentRemoteUIFromNavigationController_withCompletion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(*(a1 + 32) + 48);
    *buf = 138412802;
    v15 = v7;
    v16 = 1024;
    v17 = a2;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "%@ done loading request with success %d. Error: %@", buf, 0x1Cu);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__AAUIBeneficiaryClaimRemoteUIController_presentRemoteUIFromNavigationController_withCompletion___block_invoke_35;
  block[3] = &unk_1E820D140;
  v8 = *(a1 + 40);
  v13 = a2;
  v11 = v5;
  v12 = v8;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __97__AAUIBeneficiaryClaimRemoteUIController_presentRemoteUIFromNavigationController_withCompletion___block_invoke_35(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

- (BOOL)remoteUIController:(id)controller shouldLoadRequest:(id)request redirectResponse:(id)response
{
  controllerCopy = controller;
  requestCopy = request;
  [(AKAppleIDServerResourceLoadDelegate *)self->_serverUILoadDelegate processResponse:response];
  [(AAUIBeneficiaryClaimRemoteUIController *)self _addHeadersToRequest:requestCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    redirectResponse = [controllerCopy redirectResponse];
    v11 = redirectResponse;
    if (redirectResponse)
    {
      allHeaderFields = [redirectResponse allHeaderFields];
      v13 = [allHeaderFields objectForKey:@"X-Apple-2SV-Authenticate"];

      if (v13)
      {
        objc_storeStrong(&self->_secondaryToken, v13);
      }
    }
  }

  secondaryToken = self->_secondaryToken;
  if (secondaryToken)
  {
    [requestCopy setValue:secondaryToken forHTTPHeaderField:@"X-Apple-2SV-Authenticate"];
  }

  return 1;
}

- (void)remoteUIController:(id)controller didReceiveHTTPResponse:(id)response
{
  serverUILoadDelegate = self->_serverUILoadDelegate;
  responseCopy = response;
  [(AKAppleIDServerResourceLoadDelegate *)serverUILoadDelegate processResponse:responseCopy];
  allHeaderFields = [responseCopy allHeaderFields];

  obj = [allHeaderFields objectForKey:@"X-Apple-2SV-Authenticate"];

  v8 = obj;
  if (obj)
  {
    objc_storeStrong(&self->_secondaryToken, obj);
    v8 = obj;
  }
}

- (id)remoteUIController:(id)controller createPageWithName:(id)name attributes:(id)attributes
{
  v5 = objc_alloc_init(AAUIRemotePage);
  [(AAUIRemotePage *)v5 setHidesBottomBarWhenPushed:1];

  return v5;
}

- (void)remoteUIController:(id)controller didRefreshObjectModel:(id)model
{
  controllerCopy = controller;
  modelCopy = model;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AAUIBeneficiaryClaimRemoteUIController *)self _handleObjectModelChangeForController:controllerCopy objectModel:modelCopy isModal:0];
  }
}

- (void)remoteUIController:(id)controller willPresentObjectModel:(id)model modally:(BOOL)modally
{
  modallyCopy = modally;
  controllerCopy = controller;
  modelCopy = model;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AAUIBeneficiaryClaimRemoteUIController *)self _handleObjectModelChangeForController:controllerCopy objectModel:modelCopy isModal:modallyCopy];
  }
}

- (void)_handleObjectModelChangeForController:(id)controller objectModel:(id)model isModal:(BOOL)modal
{
  modalCopy = modal;
  v31 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  modelCopy = model;
  v10 = _AAUILogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [modelCopy identifier];
    *buf = 138412290;
    v30 = identifier;
    _os_log_impl(&dword_1C5355000, v10, OS_LOG_TYPE_DEFAULT, "Handling an object model: %@", buf, 0xCu);
  }

  objc_storeStrong(&self->_currentObjectModel, model);
  defaultPages = [modelCopy defaultPages];
  firstObject = [defaultPages firstObject];
  navigationItem = [firstObject navigationItem];

  if (+[AAUIFeatureFlags isSolariumEnabled](AAUIFeatureFlags, "isSolariumEnabled") && ([navigationItem rightBarButtonItems], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "count") == 0, v15, v16))
  {
    if (modalCopy)
    {
      if (+[AAUIFeatureFlags isHighlightAAUICloseButtonInRUIFlowsEnabled])
      {
        v20 = 16;
      }

      else
      {
        v20 = 24;
      }

      v21 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:v20 target:self action:sel__cancelButtonForRemoteObjectModelWasTapped_];
      [navigationItem setRightBarButtonItem:v21];
    }
  }

  else if (!+[AAUIFeatureFlags isSolariumEnabled](AAUIFeatureFlags, "isSolariumEnabled") && ([navigationItem leftBarButtonItems], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "count") == 0, v17, v18))
  {
    if (modalCopy)
    {
      v22 = objc_alloc(MEMORY[0x1E69DC708]);
      v23 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v24 = [v23 localizedStringForKey:@"CANCEL" value:&stru_1F447F790 table:@"Localizable"];
      v25 = [v22 initWithTitle:v24 style:0 target:self action:sel__cancelButtonForRemoteObjectModelWasTapped_];
      [navigationItem setLeftBarButtonItem:v25];
    }
  }

  else
  {
    objc_initWeak(buf, controllerCopy);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __100__AAUIBeneficiaryClaimRemoteUIController__handleObjectModelChangeForController_objectModel_isModal___block_invoke;
    v26[3] = &unk_1E820DB30;
    objc_copyWeak(&v27, buf);
    v19 = *MEMORY[0x1E698DAE0];
    v28 = modalCopy;
    [controllerCopy setHandlerForButtonName:v19 handler:v26];
    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
  }
}

void __100__AAUIBeneficiaryClaimRemoteUIController__handleObjectModelChangeForController_objectModel_isModal___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E698DB08]];
    v8 = [v7 isEqualToString:*MEMORY[0x1E698DAE8]];

    if (v8)
    {
      if (*(a1 + 40) == 1)
      {
        v9 = [WeakRetained dismissObjectModelsAnimated:1 completion:0];
      }

      else
      {
        v10 = _AAUILogSystem();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *v11 = 0;
          _os_log_impl(&dword_1C5355000, v10, OS_LOG_TYPE_DEFAULT, "Cancel action received for a non-modal flow", v11, 2u);
        }
      }
    }
  }
}

- (void)_addHeadersToRequest:(id)request
{
  v13 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = requestCopy;
    _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Appending headers to page request %@...", &v11, 0xCu);
  }

  _grandSlamAccount = [(AAUIBeneficiaryClaimRemoteUIController *)self _grandSlamAccount];
  accountStore = [(ACAccount *)self->_appleAccount accountStore];
  v8 = [accountStore credentialForAccount:_grandSlamAccount serviceID:*MEMORY[0x1E698B7B0]];

  token = [v8 token];
  [(AKAppleIDServerResourceLoadDelegate *)self->_serverUILoadDelegate setServiceToken:token];
  [(AKAppleIDServerResourceLoadDelegate *)self->_serverUILoadDelegate signRequest:requestCopy];
  aida_dsid = [_grandSlamAccount aida_dsid];
  [requestCopy aa_addDeviceProvisioningInfoHeadersWithDSID:aida_dsid];
}

- (id)_grandSlamAccount
{
  grandSlamAccount = self->_grandSlamAccount;
  if (!grandSlamAccount)
  {
    v4 = _AAUILogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "Fetching grandslam account from apple account", buf, 2u);
    }

    accountStore = [(ACAccount *)self->_appleAccount accountStore];
    v6 = [accountStore aida_accountForiCloudAccount:self->_appleAccount];
    v7 = self->_grandSlamAccount;
    self->_grandSlamAccount = v6;

    grandSlamAccount = self->_grandSlamAccount;
    if (!grandSlamAccount)
    {
      v8 = _AAUILogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "Could not fetch GrandSlam Account, we're destined for failure!", v10, 2u);
      }

      grandSlamAccount = self->_grandSlamAccount;
    }
  }

  return grandSlamAccount;
}

- (id)_authController
{
  authController = self->_authController;
  if (!authController)
  {
    v4 = objc_alloc_init(MEMORY[0x1E698DCC0]);
    v5 = self->_authController;
    self->_authController = v4;

    authController = self->_authController;
  }

  return authController;
}

- (void)_getServerUILoadDelegateWithCompletion:(id)completion
{
  completionCopy = completion;
  serverUILoadDelegate = self->_serverUILoadDelegate;
  v6 = _AAUILogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (serverUILoadDelegate)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "AKAppleIDServerResourceLoadDelegate cache available", buf, 2u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, self->_serverUILoadDelegate, 0);
    }
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "Starting to fetch AKAppleIDServerResourceLoadDelegate", buf, 2u);
    }

    _grandSlamAccount = [(AAUIBeneficiaryClaimRemoteUIController *)self _grandSlamAccount];
    v9 = objc_alloc_init(MEMORY[0x1E698DCB8]);
    aida_alternateDSID = [_grandSlamAccount aida_alternateDSID];
    [v9 setAltDSID:aida_alternateDSID];

    [v9 setAnticipateEscrowAttempt:1];
    _authController = [(AAUIBeneficiaryClaimRemoteUIController *)self _authController];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __81__AAUIBeneficiaryClaimRemoteUIController__getServerUILoadDelegateWithCompletion___block_invoke;
    v12[3] = &unk_1E820DB80;
    v12[4] = self;
    v13 = completionCopy;
    [_authController getServerUILoadDelegateWithContext:v9 completion:v12];
  }
}

void __81__AAUIBeneficiaryClaimRemoteUIController__getServerUILoadDelegateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = _AAUILogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_1C5355000, v7, OS_LOG_TYPE_DEFAULT, "Error! Unable to get AKAppleIDServerResourceLoadDelegate. %@", buf, 0xCu);
    }
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81__AAUIBeneficiaryClaimRemoteUIController__getServerUILoadDelegateWithCompletion___block_invoke_57;
  v12[3] = &unk_1E820DB58;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v5;
  v14 = v8;
  v15 = v6;
  v16 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v12);
}

uint64_t __81__AAUIBeneficiaryClaimRemoteUIController__getServerUILoadDelegateWithCompletion___block_invoke_57(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    objc_storeStrong((a1[5] + 24), v2);
  }

  result = a1[7];
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

@end