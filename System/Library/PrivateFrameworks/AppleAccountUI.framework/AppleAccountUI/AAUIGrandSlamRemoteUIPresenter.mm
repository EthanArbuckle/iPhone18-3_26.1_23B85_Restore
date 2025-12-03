@interface AAUIGrandSlamRemoteUIPresenter
- (AAUIGrandSlamRemoteUIPresenter)initWithAccountManager:(id)manager hookType:(unint64_t)type presenter:(id)presenter;
- (AAUIGrandSlamRemoteUIPresenter)initWithAccountManager:(id)manager hookType:(unint64_t)type presenter:(id)presenter cdpContext:(id)context;
- (AAUIGrandSlamRemoteUIPresenter)initWithAccountManager:(id)manager presenter:(id)presenter hooks:(id)hooks;
- (AAUIGrandSlamRemoteUIPresenterDelegate)delegate;
- (BOOL)_checkFlowEndForResponse:(id)response;
- (BOOL)_isAuthError:(id)error;
- (UIViewController)presenter;
- (id)_appleAccount;
- (id)_authContext;
- (id)_grandSlamAccount;
- (id)_remoteUICancelButtonForPage:(id)page;
- (id)remoteUIController:(id)controller createPageWithName:(id)name attributes:(id)attributes;
- (void)_addHeadersToRequest:(id)request withCompletion:(id)completion;
- (void)_addRemoteUIEventHandler;
- (void)_getServerUILoadDelegateWithCompletion:(id)completion;
- (void)loadRequest:(id)request;
- (void)loadRequest:(id)request completion:(id)completion;
- (void)remoteUIController:(id)controller didDismissModalNavigationWithObjectModels:(id)models;
- (void)remoteUIController:(id)controller didFinishLoadWithError:(id)error forRequest:(id)request;
- (void)remoteUIController:(id)controller didPresentObjectModel:(id)model modally:(BOOL)modally;
- (void)remoteUIController:(id)controller didReceiveHTTPResponse:(id)response;
- (void)remoteUIController:(id)controller didReceiveObjectModel:(id)model actionSignal:(unint64_t *)signal;
- (void)remoteUIController:(id)controller didRefreshObjectModel:(id)model;
- (void)remoteUIController:(id)controller shouldLoadRequest:(id)request redirectResponse:(id)response withCompletionHandler:(id)handler;
- (void)remoteUIController:(id)controller willPresentModalNavigationController:(id)navigationController;
- (void)remoteUIController:(id)controller willPresentObjectModel:(id)model modally:(BOOL)modally;
- (void)remoteUIControllerDidDismiss:(id)dismiss;
@end

@implementation AAUIGrandSlamRemoteUIPresenter

- (AAUIGrandSlamRemoteUIPresenter)initWithAccountManager:(id)manager hookType:(unint64_t)type presenter:(id)presenter
{
  presenterCopy = presenter;
  managerCopy = manager;
  v10 = objc_opt_new();
  v11 = [v10 hooksFor:type accountManager:managerCopy];
  v12 = [(AAUIGrandSlamRemoteUIPresenter *)self initWithAccountManager:managerCopy presenter:presenterCopy hooks:v11];

  return v12;
}

- (AAUIGrandSlamRemoteUIPresenter)initWithAccountManager:(id)manager hookType:(unint64_t)type presenter:(id)presenter cdpContext:(id)context
{
  contextCopy = context;
  presenterCopy = presenter;
  managerCopy = manager;
  v13 = objc_opt_new();
  v14 = [v13 hooksFor:type accountManager:managerCopy cdpContext:contextCopy];

  v15 = [(AAUIGrandSlamRemoteUIPresenter *)self initWithAccountManager:managerCopy presenter:presenterCopy hooks:v14];
  return v15;
}

- (AAUIGrandSlamRemoteUIPresenter)initWithAccountManager:(id)manager presenter:(id)presenter hooks:(id)hooks
{
  managerCopy = manager;
  presenterCopy = presenter;
  hooksCopy = hooks;
  v21.receiver = self;
  v21.super_class = AAUIGrandSlamRemoteUIPresenter;
  v12 = [(AAUIGrandSlamRemoteUIPresenter *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accountManager, manager);
    objc_storeWeak(&v13->_presenter, presenterCopy);
    v14 = objc_alloc_init(MEMORY[0x1E69C7048]);
    remoteUIController = v13->_remoteUIController;
    v13->_remoteUIController = v14;

    [(RemoteUIController *)v13->_remoteUIController setDelegate:v13];
    [(AAUIGrandSlamRemoteUIPresenter *)v13 _addRemoteUIEventHandler];
    if (hooksCopy)
    {
      v16 = [objc_alloc(MEMORY[0x1E69C7030]) initWithRemoteUIController:v13->_remoteUIController hooks:hooksCopy];
      serverUIHookHandler = v13->_serverUIHookHandler;
      v13->_serverUIHookHandler = v16;

      v18 = objc_alloc_init(AAUIServerHookHandlerDelegate);
      serverUIHookHandlerDelegate = v13->_serverUIHookHandlerDelegate;
      v13->_serverUIHookHandlerDelegate = v18;

      [(RUIServerHookHandler *)v13->_serverUIHookHandler setDelegate:v13->_serverUIHookHandlerDelegate];
    }
  }

  return v13;
}

- (void)loadRequest:(id)request
{
  requestCopy = request;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__AAUIGrandSlamRemoteUIPresenter_loadRequest___block_invoke;
  v6[3] = &unk_1E820C1A8;
  v7 = requestCopy;
  v5 = requestCopy;
  [(AAUIGrandSlamRemoteUIPresenter *)self loadRequest:v5 completion:v6];
}

void __46__AAUIGrandSlamRemoteUIPresenter_loadRequest___block_invoke(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = _AAUILogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) URL];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "RemoteUI request load success for %@", &v9, 0xCu);
    }
  }

  if (v5)
  {
    v8 = _AAUILogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __46__AAUIGrandSlamRemoteUIPresenter_loadRequest___block_invoke_cold_1(a1, v5, v8);
    }
  }
}

- (void)loadRequest:(id)request completion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completionCopy = completion;
  if (!self->_currentRequest)
  {
    objc_storeStrong(&self->_currentRequest, request);
    WeakRetained = objc_loadWeakRetained(&self->_presenter);
    v10 = _AAUILogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = requestCopy;
      v15 = 2112;
      v16 = WeakRetained;
      _os_log_impl(&dword_1C5355000, v10, OS_LOG_TYPE_DEFAULT, "AAUIGrandSlamRemoteUIPresenter loading request %@ on presenter %@ ", &v13, 0x16u);
    }

    [(RemoteUIController *)self->_remoteUIController setHostViewController:WeakRetained];
    if (![(AAUIGrandSlamRemoteUIPresenter *)self isModalInPresentation])
    {
      navigationController = [WeakRetained navigationController];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = WeakRetained;

        navigationController = v12;
      }

      [(RemoteUIController *)self->_remoteUIController setNavigationController:navigationController];
    }

    [(RemoteUIController *)self->_remoteUIController loadRequest:requestCopy completion:completionCopy];
  }
}

- (id)_appleAccount
{
  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [accounts objectForKeyedSubscript:*MEMORY[0x1E698C218]];

  return v3;
}

- (id)_grandSlamAccount
{
  grandSlamAccount = self->_grandSlamAccount;
  if (!grandSlamAccount)
  {
    _appleAccount = [(AAUIGrandSlamRemoteUIPresenter *)self _appleAccount];

    if (_appleAccount)
    {
      _accountStore = [(AAUIGrandSlamRemoteUIPresenter *)self _accountStore];
      _appleAccount2 = [(AAUIGrandSlamRemoteUIPresenter *)self _appleAccount];
      v7 = [_accountStore aida_accountForiCloudAccount:_appleAccount2];
      v8 = self->_grandSlamAccount;
      self->_grandSlamAccount = v7;
    }

    grandSlamAccount = self->_grandSlamAccount;
    if (!grandSlamAccount)
    {
      v9 = _AAUILogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_1C5355000, v9, OS_LOG_TYPE_DEFAULT, "Could not fetch GrandSlam Account", v11, 2u);
      }

      grandSlamAccount = self->_grandSlamAccount;
    }
  }

  return grandSlamAccount;
}

- (id)_authContext
{
  v3 = objc_alloc_init(MEMORY[0x1E698DCB8]);
  [v3 setVerifyCredentialReason:3];
  _appleAccount = [(AAUIGrandSlamRemoteUIPresenter *)self _appleAccount];
  aa_altDSID = [_appleAccount aa_altDSID];
  [v3 setAltDSID:aa_altDSID];

  return v3;
}

- (id)_remoteUICancelButtonForPage:(id)page
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8 = @"label";
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Cancel" value:&stru_1F447F790 table:@"Localizable"];
  v9[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v6 = [objc_alloc(MEMORY[0x1E69C7018]) initWithAttributes:v5 parent:0];

  return v6;
}

- (void)_addRemoteUIEventHandler
{
  objc_initWeak(&location, self);
  remoteUIController = self->_remoteUIController;
  v4 = *MEMORY[0x1E698DAE0];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__AAUIGrandSlamRemoteUIPresenter__addRemoteUIEventHandler__block_invoke;
  v5[3] = &unk_1E820C1D0;
  objc_copyWeak(&v6, &location);
  [(RemoteUIController *)remoteUIController setHandlerForElementName:v4 handler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __58__AAUIGrandSlamRemoteUIPresenter__addRemoteUIEventHandler__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E698DB08]];
  if ([v8 isEqualToString:*MEMORY[0x1E698DAE8]])
  {
    v9 = [v6 visiblePage];
    [v9 dismissIfPresentedWithCompletion:0];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = _AAUILogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [WeakRetained delegate];
      v16 = 138412290;
      v17 = v14;
      _os_log_impl(&dword_1C5355000, v13, OS_LOG_TYPE_DEFAULT, "Calling remoteUIDidHandleButton for delegate %@", &v16, 0xCu);
    }

    v15 = [WeakRetained delegate];
    [v15 remoteUIDidHandleButton:v7];
  }
}

- (void)_addHeadersToRequest:(id)request withCompletion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__AAUIGrandSlamRemoteUIPresenter__addHeadersToRequest_withCompletion___block_invoke;
  v10[3] = &unk_1E820C1F8;
  v11 = requestCopy;
  v12 = completionCopy;
  v10[4] = self;
  v8 = requestCopy;
  v9 = completionCopy;
  [(AAUIGrandSlamRemoteUIPresenter *)self _getServerUILoadDelegateWithCompletion:v10];
}

void __70__AAUIGrandSlamRemoteUIPresenter__addHeadersToRequest_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      (*(v6 + 16))(v6, 0, v5);
    }
  }

  else
  {
    v7 = [*(a1 + 32) _grandSlamAccount];
    v8 = [*(a1 + 32) _accountStore];
    v9 = [v8 credentialForAccount:v7 serviceID:*MEMORY[0x1E698B7B0]];

    v10 = [v9 token];
    [*(*(a1 + 32) + 32) setServiceToken:v10];
    [*(*(a1 + 32) + 32) signRequest:*(a1 + 40)];
    v11 = *(a1 + 40);
    v12 = [v7 aida_dsid];
    [v11 aa_addDeviceProvisioningInfoHeadersWithDSID:v12];

    v13 = [*(a1 + 32) delegate];
    LOBYTE(v12) = objc_opt_respondsToSelector();

    if (v12)
    {
      v14 = [*(a1 + 32) delegate];
      [v14 remoteUIWillLoadRequest:*(a1 + 40)];
    }

    v15 = *(a1 + 48);
    if (v15)
    {
      (*(v15 + 16))(v15, 1, 0);
    }
  }
}

- (void)_getServerUILoadDelegateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  resourceLoadDelegate = self->_resourceLoadDelegate;
  if (resourceLoadDelegate)
  {
    (*(completionCopy + 2))(completionCopy, resourceLoadDelegate, 0);
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E698DCC0]);
    _authContext = [(AAUIGrandSlamRemoteUIPresenter *)self _authContext];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __73__AAUIGrandSlamRemoteUIPresenter__getServerUILoadDelegateWithCompletion___block_invoke;
    v9[3] = &unk_1E820C220;
    v9[4] = self;
    v10 = v5;
    [v7 getServerUILoadDelegateWithContext:_authContext completion:v9];
  }
}

void __73__AAUIGrandSlamRemoteUIPresenter__getServerUILoadDelegateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = _AAUILogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __73__AAUIGrandSlamRemoteUIPresenter__getServerUILoadDelegateWithCompletion___block_invoke_cold_1(v7, v8);
    }

    v9 = *(*(a1 + 40) + 16);
  }

  else
  {
    [v6 setShouldSendSigningHeaders:1];
    objc_storeStrong((*(a1 + 32) + 32), a2);
    v9 = *(*(a1 + 40) + 16);
  }

  v9();
}

- (BOOL)_isAuthError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (!errorCopy)
  {
    goto LABEL_11;
  }

  userInfo = [errorCopy userInfo];
  if (!userInfo)
  {
    goto LABEL_11;
  }

  v6 = userInfo;
  domain = [v4 domain];

  if (!domain)
  {
    goto LABEL_11;
  }

  domain2 = [v4 domain];
  v9 = [domain2 isEqualToString:*MEMORY[0x1E69C7060]];
  if ((v9 & 1) == 0)
  {
    domain = [v4 domain];
    if (([domain isEqualToString:*MEMORY[0x1E69C7070]] & 1) == 0)
    {

LABEL_11:
      v13 = 0;
      goto LABEL_12;
    }
  }

  userInfo2 = [v4 userInfo];
  v11 = [userInfo2 objectForKeyedSubscript:@"statusCode"];
  integerValue = [v11 integerValue];

  if ((v9 & 1) == 0)
  {
  }

  if (integerValue != 401)
  {
    goto LABEL_11;
  }

  v13 = 1;
LABEL_12:

  return v13;
}

- (BOOL)_checkFlowEndForResponse:(id)response
{
  allHeaderFields = [response allHeaderFields];
  v4 = [allHeaderFields objectForKeyedSubscript:*MEMORY[0x1E698DB00]];
  if ([v4 isEqualToString:*MEMORY[0x1E698DAF8]])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:*MEMORY[0x1E698DAF0]];
  }

  return v5;
}

- (void)remoteUIController:(id)controller shouldLoadRequest:(id)request redirectResponse:(id)response withCompletionHandler:(id)handler
{
  resourceLoadDelegate = self->_resourceLoadDelegate;
  handlerCopy = handler;
  requestCopy = request;
  [(AKAppleIDServerResourceLoadDelegate *)resourceLoadDelegate processResponse:response];
  [(AAUIGrandSlamRemoteUIPresenter *)self _addHeadersToRequest:requestCopy withCompletion:handlerCopy];
}

- (void)remoteUIController:(id)controller didReceiveHTTPResponse:(id)response
{
  v34 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  responseCopy = response;
  v8 = _AAUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v30 = 2112;
    v31 = controllerCopy;
    v32 = 2112;
    v33 = responseCopy;
    _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "%@: Controller (%@) did receive HTTP response (%@)", buf, 0x20u);
  }

  [(AKAppleIDServerResourceLoadDelegate *)self->_resourceLoadDelegate processResponse:responseCopy];
  [(RUIServerHookHandler *)self->_serverUIHookHandler processServerResponse:responseCopy];
  self->_isEndOfFlow = [(AAUIGrandSlamRemoteUIPresenter *)self _checkFlowEndForResponse:responseCopy];
  v9 = self->_currentRequest;
  if ([responseCopy statusCode] == 401)
  {
    v10 = _AAUILogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [responseCopy URL];
      *buf = 138412290;
      selfCopy = v11;
      _os_log_impl(&dword_1C5355000, v10, OS_LOG_TYPE_DEFAULT, "Remote UI request returned 401 for %@", buf, 0xCu);
    }

    v12 = *MEMORY[0x1E6959AA8];
    v27[0] = MEMORY[0x1E695E118];
    v13 = *MEMORY[0x1E6959A90];
    v26[0] = v12;
    v26[1] = v13;
    v25 = *MEMORY[0x1E698B7B0];
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    v27[1] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];

    _accountStore = [(AAUIGrandSlamRemoteUIPresenter *)self _accountStore];
    _grandSlamAccount = [(AAUIGrandSlamRemoteUIPresenter *)self _grandSlamAccount];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __76__AAUIGrandSlamRemoteUIPresenter_remoteUIController_didReceiveHTTPResponse___block_invoke;
    v20[3] = &unk_1E820C268;
    v21 = responseCopy;
    selfCopy2 = self;
    v23 = v9;
    v24 = controllerCopy;
    [_accountStore renewCredentialsForAccount:_grandSlamAccount options:v15 completion:v20];

    goto LABEL_9;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    v15 = objc_loadWeakRetained(&self->_delegate);
    [v15 remoteUIDidReceiveHTTPResponse:responseCopy];
LABEL_9:
  }
}

void __76__AAUIGrandSlamRemoteUIPresenter_remoteUIController_didReceiveHTTPResponse___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _AAUILogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) URL];
    v13 = 138412802;
    v14 = v7;
    v15 = 2048;
    v16 = a2;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "renewing account token for request URL %@ with result %ld error %@", &v13, 0x20u);
  }

  switch(a2)
  {
    case 0:
      [*(a1 + 56) loadRequest:*(a1 + 48) completion:&__block_literal_global_3];
      break;
    case 1:
      WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 72));

      if (WeakRetained)
      {
        if (!v5)
        {
          v9 = MEMORY[0x1E696ABC0];
          v10 = -1;
          goto LABEL_12;
        }

LABEL_13:
        v12 = objc_loadWeakRetained((*(a1 + 40) + 72));
        [v12 remoteUIRequestComplete:*(a1 + 48) error:v5];
      }

      break;
    case 2:
      v8 = objc_loadWeakRetained((*(a1 + 40) + 72));

      if (v8)
      {
        if (!v5)
        {
          v9 = MEMORY[0x1E696ABC0];
          v10 = 0;
LABEL_12:
          v5 = [v9 aa_errorWithCode:v10];
          goto LABEL_13;
        }

        goto LABEL_13;
      }

      break;
  }
}

void __76__AAUIGrandSlamRemoteUIPresenter_remoteUIController_didReceiveHTTPResponse___block_invoke_64(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (a2)
    {
      v6 = @"YES";
    }

    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "RemoteUI Retry request completed with success: %@, error: %@", &v7, 0x16u);
  }
}

- (void)remoteUIController:(id)controller didFinishLoadWithError:(id)error forRequest:(id)request
{
  v19 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  requestCopy = request;
  v9 = _AAUILogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [requestCopy URL];
    v15 = 138412546;
    v16 = errorCopy;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_1C5355000, v9, OS_LOG_TYPE_DEFAULT, "Remote UI load finish with error %@ request %@", &v15, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v12 = WeakRetained;
    v13 = [(AAUIGrandSlamRemoteUIPresenter *)self _isAuthError:errorCopy];

    if (requestCopy)
    {
      if (!v13)
      {
        v14 = objc_loadWeakRetained(&self->_delegate);
        [v14 remoteUIRequestComplete:requestCopy error:errorCopy];
      }
    }
  }
}

- (id)remoteUIController:(id)controller createPageWithName:(id)name attributes:(id)attributes
{
  controllerCopy = controller;
  nameCopy = name;
  attributesCopy = attributes;
  v11 = objc_alloc_init(AAUIRemotePage);
  [(AAUIRemotePage *)v11 setHidesBottomBarWhenPushed:1];
  if ([(AAUIGrandSlamRemoteUIPresenter *)self isModalInPresentation])
  {
    if ([(AAUIGrandSlamRemoteUIPresenter *)self showCancelInModalPresentation])
    {
      displayedPages = [controllerCopy displayedPages];
      v13 = [displayedPages count];

      if (!v13)
      {
        v14 = [(AAUIGrandSlamRemoteUIPresenter *)self _remoteUICancelButtonForPage:v11];
        [(AAUIRemotePage *)v11 setLeftNavigationBarButtonItem:v14];

        objc_initWeak(&location, v11);
        leftNavigationBarButtonItem = [(AAUIRemotePage *)v11 leftNavigationBarButtonItem];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __83__AAUIGrandSlamRemoteUIPresenter_remoteUIController_createPageWithName_attributes___block_invoke;
        v17[3] = &unk_1E820C290;
        objc_copyWeak(&v18, &location);
        [leftNavigationBarButtonItem setAction:v17];

        objc_destroyWeak(&v18);
        objc_destroyWeak(&location);
      }
    }
  }

  return v11;
}

void __83__AAUIGrandSlamRemoteUIPresenter_remoteUIController_createPageWithName_attributes___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissIfPresentedWithCompletion:0];
}

- (void)remoteUIController:(id)controller didReceiveObjectModel:(id)model actionSignal:(unint64_t *)signal
{
  v20 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  modelCopy = model;
  v10 = modelCopy;
  v11 = *signal;
  if (*signal)
  {
LABEL_4:
    if (v11 == 1 && self->_isEndOfFlow)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v15 = objc_opt_respondsToSelector();

      if (v15)
      {
        v16 = objc_loadWeakRetained(&self->_delegate);
        [v16 remoteUIDidEndFlow:controllerCopy];
      }
    }

    goto LABEL_11;
  }

  allPages = [modelCopy allPages];
  v13 = [allPages count];

  if (v13)
  {
    v11 = *signal;
    goto LABEL_4;
  }

  v17 = _AAUILogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1C5355000, v17, OS_LOG_TYPE_DEFAULT, "%@: Undefined action signal and no page, not displaying modally", &v18, 0xCu);
  }

  [(RUIServerHookHandler *)self->_serverUIHookHandler processObjectModel:v10 isModal:0];
LABEL_11:
}

- (void)remoteUIController:(id)controller willPresentObjectModel:(id)model modally:(BOOL)modally
{
  modallyCopy = modally;
  v23 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  modelCopy = model;
  v10 = _AAUILogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    v15 = 138413058;
    selfCopy = self;
    if (modallyCopy)
    {
      v11 = @"YES";
    }

    v17 = 2112;
    v18 = controllerCopy;
    v19 = 2112;
    v20 = modelCopy;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_1C5355000, v10, OS_LOG_TYPE_DEFAULT, "%@: Controller (%@) will present objectModel (%@) modally (%@)", &v15, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = objc_loadWeakRetained(&self->_delegate);
    [v14 remoteUIWillPresentObjectModel:modelCopy modally:modallyCopy];
  }
}

- (void)remoteUIController:(id)controller didPresentObjectModel:(id)model modally:(BOOL)modally
{
  modallyCopy = modally;
  v23 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  modelCopy = model;
  v10 = _AAUILogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    v15 = 138413058;
    selfCopy = self;
    if (modallyCopy)
    {
      v11 = @"YES";
    }

    v17 = 2112;
    v18 = controllerCopy;
    v19 = 2112;
    v20 = modelCopy;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_1C5355000, v10, OS_LOG_TYPE_DEFAULT, "%@: Controller (%@) did present objectModel (%@) modally (%@)", &v15, 0x2Au);
  }

  [(RUIServerHookHandler *)self->_serverUIHookHandler processObjectModel:modelCopy isModal:modallyCopy];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = objc_loadWeakRetained(&self->_delegate);
    [v14 remoteUIDidPresentObjectModel:modelCopy modally:modallyCopy];
  }
}

- (void)remoteUIController:(id)controller didRefreshObjectModel:(id)model
{
  v15 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  modelCopy = model;
  v8 = _AAUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412802;
    selfCopy = self;
    v11 = 2112;
    v12 = controllerCopy;
    v13 = 2112;
    v14 = modelCopy;
    _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "%@: Controller (%@) did refresh objectModel (%@)", &v9, 0x20u);
  }

  [(RUIServerHookHandler *)self->_serverUIHookHandler processObjectModel:modelCopy isModal:0];
}

- (void)remoteUIController:(id)controller didDismissModalNavigationWithObjectModels:(id)models
{
  v17 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = _AAUILogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_loadWeakRetained(&self->_delegate);
      v13 = 138412290;
      v14 = v9;
      _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "Dismissing modal for delegate %@", &v13, 0xCu);
    }

    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 remoteUIDidDismiss:controllerCopy];
  }

  v11 = _AAUILogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    serverUIHookHandler = self->_serverUIHookHandler;
    v13 = 138412546;
    v14 = controllerCopy;
    v15 = 2112;
    v16 = serverUIHookHandler;
    _os_log_impl(&dword_1C5355000, v11, OS_LOG_TYPE_DEFAULT, "Dismissing modal for controller: %@, serverHookHandler: %@", &v13, 0x16u);
  }
}

- (void)remoteUIControllerDidDismiss:(id)dismiss
{
  v15 = *MEMORY[0x1E69E9840];
  dismissCopy = dismiss;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    selfCopy = self;
    v13 = 2112;
    v14 = dismissCopy;
    _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "%@: Did dismiss controller (%@)", &v11, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = _AAUILogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_loadWeakRetained(&self->_delegate);
      v11 = 138412290;
      selfCopy = v9;
      _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "Dismissing controller for delegate %@", &v11, 0xCu);
    }

    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 remoteUIDidDismiss:dismissCopy];
  }
}

- (void)remoteUIController:(id)controller willPresentModalNavigationController:(id)navigationController
{
  v18 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  navigationControllerCopy = navigationController;
  v8 = _AAUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    serverUIHookHandler = self->_serverUIHookHandler;
    v10 = 138413058;
    selfCopy = self;
    v12 = 2112;
    v13 = controllerCopy;
    v14 = 2112;
    v15 = navigationControllerCopy;
    v16 = 2112;
    v17 = serverUIHookHandler;
    _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "%@: Will present modal for controller (%@) with navigationController (%@) using handler (%@)", &v10, 0x2Au);
  }
}

- (AAUIGrandSlamRemoteUIPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIViewController)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

void __46__AAUIGrandSlamRemoteUIPresenter_loadRequest___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 32) URL];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1C5355000, a3, OS_LOG_TYPE_ERROR, "RemoteUI load error for request %@ error %@", &v6, 0x16u);
}

void __73__AAUIGrandSlamRemoteUIPresenter__getServerUILoadDelegateWithCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C5355000, a2, OS_LOG_TYPE_ERROR, "AAUIGrandSlamRemoteUIPresenter resource load delegate error %@", &v2, 0xCu);
}

@end