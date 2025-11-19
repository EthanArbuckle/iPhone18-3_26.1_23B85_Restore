@interface AAUIGrandSlamRemoteUIPresenter
- (AAUIGrandSlamRemoteUIPresenter)initWithAccountManager:(id)a3 hookType:(unint64_t)a4 presenter:(id)a5;
- (AAUIGrandSlamRemoteUIPresenter)initWithAccountManager:(id)a3 hookType:(unint64_t)a4 presenter:(id)a5 cdpContext:(id)a6;
- (AAUIGrandSlamRemoteUIPresenter)initWithAccountManager:(id)a3 presenter:(id)a4 hooks:(id)a5;
- (AAUIGrandSlamRemoteUIPresenterDelegate)delegate;
- (BOOL)_checkFlowEndForResponse:(id)a3;
- (BOOL)_isAuthError:(id)a3;
- (UIViewController)presenter;
- (id)_appleAccount;
- (id)_authContext;
- (id)_grandSlamAccount;
- (id)_remoteUICancelButtonForPage:(id)a3;
- (id)remoteUIController:(id)a3 createPageWithName:(id)a4 attributes:(id)a5;
- (void)_addHeadersToRequest:(id)a3 withCompletion:(id)a4;
- (void)_addRemoteUIEventHandler;
- (void)_getServerUILoadDelegateWithCompletion:(id)a3;
- (void)loadRequest:(id)a3;
- (void)loadRequest:(id)a3 completion:(id)a4;
- (void)remoteUIController:(id)a3 didDismissModalNavigationWithObjectModels:(id)a4;
- (void)remoteUIController:(id)a3 didFinishLoadWithError:(id)a4 forRequest:(id)a5;
- (void)remoteUIController:(id)a3 didPresentObjectModel:(id)a4 modally:(BOOL)a5;
- (void)remoteUIController:(id)a3 didReceiveHTTPResponse:(id)a4;
- (void)remoteUIController:(id)a3 didReceiveObjectModel:(id)a4 actionSignal:(unint64_t *)a5;
- (void)remoteUIController:(id)a3 didRefreshObjectModel:(id)a4;
- (void)remoteUIController:(id)a3 shouldLoadRequest:(id)a4 redirectResponse:(id)a5 withCompletionHandler:(id)a6;
- (void)remoteUIController:(id)a3 willPresentModalNavigationController:(id)a4;
- (void)remoteUIController:(id)a3 willPresentObjectModel:(id)a4 modally:(BOOL)a5;
- (void)remoteUIControllerDidDismiss:(id)a3;
@end

@implementation AAUIGrandSlamRemoteUIPresenter

- (AAUIGrandSlamRemoteUIPresenter)initWithAccountManager:(id)a3 hookType:(unint64_t)a4 presenter:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = objc_opt_new();
  v11 = [v10 hooksFor:a4 accountManager:v9];
  v12 = [(AAUIGrandSlamRemoteUIPresenter *)self initWithAccountManager:v9 presenter:v8 hooks:v11];

  return v12;
}

- (AAUIGrandSlamRemoteUIPresenter)initWithAccountManager:(id)a3 hookType:(unint64_t)a4 presenter:(id)a5 cdpContext:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = objc_opt_new();
  v14 = [v13 hooksFor:a4 accountManager:v12 cdpContext:v10];

  v15 = [(AAUIGrandSlamRemoteUIPresenter *)self initWithAccountManager:v12 presenter:v11 hooks:v14];
  return v15;
}

- (AAUIGrandSlamRemoteUIPresenter)initWithAccountManager:(id)a3 presenter:(id)a4 hooks:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = AAUIGrandSlamRemoteUIPresenter;
  v12 = [(AAUIGrandSlamRemoteUIPresenter *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accountManager, a3);
    objc_storeWeak(&v13->_presenter, v10);
    v14 = objc_alloc_init(MEMORY[0x1E69C7048]);
    remoteUIController = v13->_remoteUIController;
    v13->_remoteUIController = v14;

    [(RemoteUIController *)v13->_remoteUIController setDelegate:v13];
    [(AAUIGrandSlamRemoteUIPresenter *)v13 _addRemoteUIEventHandler];
    if (v11)
    {
      v16 = [objc_alloc(MEMORY[0x1E69C7030]) initWithRemoteUIController:v13->_remoteUIController hooks:v11];
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

- (void)loadRequest:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__AAUIGrandSlamRemoteUIPresenter_loadRequest___block_invoke;
  v6[3] = &unk_1E820C1A8;
  v7 = v4;
  v5 = v4;
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

- (void)loadRequest:(id)a3 completion:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!self->_currentRequest)
  {
    objc_storeStrong(&self->_currentRequest, a3);
    WeakRetained = objc_loadWeakRetained(&self->_presenter);
    v10 = _AAUILogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = v7;
      v15 = 2112;
      v16 = WeakRetained;
      _os_log_impl(&dword_1C5355000, v10, OS_LOG_TYPE_DEFAULT, "AAUIGrandSlamRemoteUIPresenter loading request %@ on presenter %@ ", &v13, 0x16u);
    }

    [(RemoteUIController *)self->_remoteUIController setHostViewController:WeakRetained];
    if (![(AAUIGrandSlamRemoteUIPresenter *)self isModalInPresentation])
    {
      v11 = [WeakRetained navigationController];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = WeakRetained;

        v11 = v12;
      }

      [(RemoteUIController *)self->_remoteUIController setNavigationController:v11];
    }

    [(RemoteUIController *)self->_remoteUIController loadRequest:v7 completion:v8];
  }
}

- (id)_appleAccount
{
  v2 = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E698C218]];

  return v3;
}

- (id)_grandSlamAccount
{
  grandSlamAccount = self->_grandSlamAccount;
  if (!grandSlamAccount)
  {
    v4 = [(AAUIGrandSlamRemoteUIPresenter *)self _appleAccount];

    if (v4)
    {
      v5 = [(AAUIGrandSlamRemoteUIPresenter *)self _accountStore];
      v6 = [(AAUIGrandSlamRemoteUIPresenter *)self _appleAccount];
      v7 = [v5 aida_accountForiCloudAccount:v6];
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
  v4 = [(AAUIGrandSlamRemoteUIPresenter *)self _appleAccount];
  v5 = [v4 aa_altDSID];
  [v3 setAltDSID:v5];

  return v3;
}

- (id)_remoteUICancelButtonForPage:(id)a3
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

- (void)_addHeadersToRequest:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__AAUIGrandSlamRemoteUIPresenter__addHeadersToRequest_withCompletion___block_invoke;
  v10[3] = &unk_1E820C1F8;
  v11 = v6;
  v12 = v7;
  v10[4] = self;
  v8 = v6;
  v9 = v7;
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

- (void)_getServerUILoadDelegateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = v4;
  resourceLoadDelegate = self->_resourceLoadDelegate;
  if (resourceLoadDelegate)
  {
    (*(v4 + 2))(v4, resourceLoadDelegate, 0);
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E698DCC0]);
    v8 = [(AAUIGrandSlamRemoteUIPresenter *)self _authContext];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __73__AAUIGrandSlamRemoteUIPresenter__getServerUILoadDelegateWithCompletion___block_invoke;
    v9[3] = &unk_1E820C220;
    v9[4] = self;
    v10 = v5;
    [v7 getServerUILoadDelegateWithContext:v8 completion:v9];
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

- (BOOL)_isAuthError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_11;
  }

  v5 = [v3 userInfo];
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = v5;
  v7 = [v4 domain];

  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = [v4 domain];
  v9 = [v8 isEqualToString:*MEMORY[0x1E69C7060]];
  if ((v9 & 1) == 0)
  {
    v7 = [v4 domain];
    if (([v7 isEqualToString:*MEMORY[0x1E69C7070]] & 1) == 0)
    {

LABEL_11:
      v13 = 0;
      goto LABEL_12;
    }
  }

  v10 = [v4 userInfo];
  v11 = [v10 objectForKeyedSubscript:@"statusCode"];
  v12 = [v11 integerValue];

  if ((v9 & 1) == 0)
  {
  }

  if (v12 != 401)
  {
    goto LABEL_11;
  }

  v13 = 1;
LABEL_12:

  return v13;
}

- (BOOL)_checkFlowEndForResponse:(id)a3
{
  v3 = [a3 allHeaderFields];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E698DB00]];
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

- (void)remoteUIController:(id)a3 shouldLoadRequest:(id)a4 redirectResponse:(id)a5 withCompletionHandler:(id)a6
{
  resourceLoadDelegate = self->_resourceLoadDelegate;
  v10 = a6;
  v11 = a4;
  [(AKAppleIDServerResourceLoadDelegate *)resourceLoadDelegate processResponse:a5];
  [(AAUIGrandSlamRemoteUIPresenter *)self _addHeadersToRequest:v11 withCompletion:v10];
}

- (void)remoteUIController:(id)a3 didReceiveHTTPResponse:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _AAUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v29 = self;
    v30 = 2112;
    v31 = v6;
    v32 = 2112;
    v33 = v7;
    _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "%@: Controller (%@) did receive HTTP response (%@)", buf, 0x20u);
  }

  [(AKAppleIDServerResourceLoadDelegate *)self->_resourceLoadDelegate processResponse:v7];
  [(RUIServerHookHandler *)self->_serverUIHookHandler processServerResponse:v7];
  self->_isEndOfFlow = [(AAUIGrandSlamRemoteUIPresenter *)self _checkFlowEndForResponse:v7];
  v9 = self->_currentRequest;
  if ([v7 statusCode] == 401)
  {
    v10 = _AAUILogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v7 URL];
      *buf = 138412290;
      v29 = v11;
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

    v16 = [(AAUIGrandSlamRemoteUIPresenter *)self _accountStore];
    v17 = [(AAUIGrandSlamRemoteUIPresenter *)self _grandSlamAccount];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __76__AAUIGrandSlamRemoteUIPresenter_remoteUIController_didReceiveHTTPResponse___block_invoke;
    v20[3] = &unk_1E820C268;
    v21 = v7;
    v22 = self;
    v23 = v9;
    v24 = v6;
    [v16 renewCredentialsForAccount:v17 options:v15 completion:v20];

    goto LABEL_9;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    v15 = objc_loadWeakRetained(&self->_delegate);
    [v15 remoteUIDidReceiveHTTPResponse:v7];
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

- (void)remoteUIController:(id)a3 didFinishLoadWithError:(id)a4 forRequest:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = _AAUILogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 URL];
    v15 = 138412546;
    v16 = v7;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&dword_1C5355000, v9, OS_LOG_TYPE_DEFAULT, "Remote UI load finish with error %@ request %@", &v15, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v12 = WeakRetained;
    v13 = [(AAUIGrandSlamRemoteUIPresenter *)self _isAuthError:v7];

    if (v8)
    {
      if (!v13)
      {
        v14 = objc_loadWeakRetained(&self->_delegate);
        [v14 remoteUIRequestComplete:v8 error:v7];
      }
    }
  }
}

- (id)remoteUIController:(id)a3 createPageWithName:(id)a4 attributes:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(AAUIRemotePage);
  [(AAUIRemotePage *)v11 setHidesBottomBarWhenPushed:1];
  if ([(AAUIGrandSlamRemoteUIPresenter *)self isModalInPresentation])
  {
    if ([(AAUIGrandSlamRemoteUIPresenter *)self showCancelInModalPresentation])
    {
      v12 = [v8 displayedPages];
      v13 = [v12 count];

      if (!v13)
      {
        v14 = [(AAUIGrandSlamRemoteUIPresenter *)self _remoteUICancelButtonForPage:v11];
        [(AAUIRemotePage *)v11 setLeftNavigationBarButtonItem:v14];

        objc_initWeak(&location, v11);
        v15 = [(AAUIRemotePage *)v11 leftNavigationBarButtonItem];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __83__AAUIGrandSlamRemoteUIPresenter_remoteUIController_createPageWithName_attributes___block_invoke;
        v17[3] = &unk_1E820C290;
        objc_copyWeak(&v18, &location);
        [v15 setAction:v17];

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

- (void)remoteUIController:(id)a3 didReceiveObjectModel:(id)a4 actionSignal:(unint64_t *)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v11 = *a5;
  if (*a5)
  {
LABEL_4:
    if (v11 == 1 && self->_isEndOfFlow)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v15 = objc_opt_respondsToSelector();

      if (v15)
      {
        v16 = objc_loadWeakRetained(&self->_delegate);
        [v16 remoteUIDidEndFlow:v8];
      }
    }

    goto LABEL_11;
  }

  v12 = [v9 allPages];
  v13 = [v12 count];

  if (v13)
  {
    v11 = *a5;
    goto LABEL_4;
  }

  v17 = _AAUILogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = self;
    _os_log_impl(&dword_1C5355000, v17, OS_LOG_TYPE_DEFAULT, "%@: Undefined action signal and no page, not displaying modally", &v18, 0xCu);
  }

  [(RUIServerHookHandler *)self->_serverUIHookHandler processObjectModel:v10 isModal:0];
LABEL_11:
}

- (void)remoteUIController:(id)a3 willPresentObjectModel:(id)a4 modally:(BOOL)a5
{
  v5 = a5;
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = _AAUILogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    v15 = 138413058;
    v16 = self;
    if (v5)
    {
      v11 = @"YES";
    }

    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_1C5355000, v10, OS_LOG_TYPE_DEFAULT, "%@: Controller (%@) will present objectModel (%@) modally (%@)", &v15, 0x2Au);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = objc_loadWeakRetained(&self->_delegate);
    [v14 remoteUIWillPresentObjectModel:v9 modally:v5];
  }
}

- (void)remoteUIController:(id)a3 didPresentObjectModel:(id)a4 modally:(BOOL)a5
{
  v5 = a5;
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = _AAUILogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    v15 = 138413058;
    v16 = self;
    if (v5)
    {
      v11 = @"YES";
    }

    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_1C5355000, v10, OS_LOG_TYPE_DEFAULT, "%@: Controller (%@) did present objectModel (%@) modally (%@)", &v15, 0x2Au);
  }

  [(RUIServerHookHandler *)self->_serverUIHookHandler processObjectModel:v9 isModal:v5];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = objc_loadWeakRetained(&self->_delegate);
    [v14 remoteUIDidPresentObjectModel:v9 modally:v5];
  }
}

- (void)remoteUIController:(id)a3 didRefreshObjectModel:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _AAUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412802;
    v10 = self;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "%@: Controller (%@) did refresh objectModel (%@)", &v9, 0x20u);
  }

  [(RUIServerHookHandler *)self->_serverUIHookHandler processObjectModel:v7 isModal:0];
}

- (void)remoteUIController:(id)a3 didDismissModalNavigationWithObjectModels:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
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
    [v10 remoteUIDidDismiss:v5];
  }

  v11 = _AAUILogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    serverUIHookHandler = self->_serverUIHookHandler;
    v13 = 138412546;
    v14 = v5;
    v15 = 2112;
    v16 = serverUIHookHandler;
    _os_log_impl(&dword_1C5355000, v11, OS_LOG_TYPE_DEFAULT, "Dismissing modal for controller: %@, serverHookHandler: %@", &v13, 0x16u);
  }
}

- (void)remoteUIControllerDidDismiss:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _AAUILogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = self;
    v13 = 2112;
    v14 = v4;
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
      v12 = v9;
      _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "Dismissing controller for delegate %@", &v11, 0xCu);
    }

    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 remoteUIDidDismiss:v4];
  }
}

- (void)remoteUIController:(id)a3 willPresentModalNavigationController:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _AAUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    serverUIHookHandler = self->_serverUIHookHandler;
    v10 = 138413058;
    v11 = self;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
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