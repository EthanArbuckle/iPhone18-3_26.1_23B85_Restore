@interface AAUIGenericTermsRemoteUI
- (AAUIGenericTermsRemoteUI)initWithAccount:(id)account inStore:(id)store;
- (AAUIGenericTermsRemoteUI)initWithAccount:(id)account inStore:(id)store termsEntries:(id)entries;
- (AAUIGenericTermsRemoteUIDelegate)delegate;
- (BOOL)_isUnauthorizedError:(id)error;
- (UIViewController)originatingViewController;
- (id)_authContextForRenewCredentials;
- (id)_sessionConfiguration;
- (id)_viewControllerForAlertPresentation;
- (void)_addHeadersToRequest:(id)request;
- (void)_agreeToTermsWithURLString:(id)string serverInfo:(id)info preferPassword:(BOOL)password completion:(id)completion;
- (void)_cleanUpAndDismissWithSuccess:(BOOL)success agreeURL:(id)l serverInfo:(id)info;
- (void)_cleanupRUILoader;
- (void)_disagreeToTermsWithURLString:(id)string serverInfo:(id)info;
- (void)_displayConnectionErrorAndDismiss;
- (void)_loadRequestPreferringPassword:(BOOL)password;
- (void)_renewCredentialsWithCompletion:(id)completion;
- (void)_reportTermsUserAction:(id)action agreeUrl:(id)url;
- (void)_sendAcceptedTermsInfo:(id)info;
- (void)_setupActionForButtons;
- (void)presentFromViewController:(id)controller modal:(BOOL)modal;
- (void)remoteUIController:(id)controller didPresentObjectModel:(id)model modally:(BOOL)modally;
- (void)remoteUIController:(id)controller didReceiveObjectModel:(id)model actionSignal:(unint64_t *)signal;
- (void)remoteUIController:(id)controller shouldLoadRequest:(id)request redirectResponse:(id)response withCompletionHandler:(id)handler;
@end

@implementation AAUIGenericTermsRemoteUI

- (AAUIGenericTermsRemoteUI)initWithAccount:(id)account inStore:(id)store
{
  v38[2] = *MEMORY[0x1E69E9840];
  accountCopy = account;
  storeCopy = store;
  v28.receiver = self;
  v28.super_class = AAUIGenericTermsRemoteUI;
  v9 = [(AAUIGenericTermsRemoteUI *)&v28 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, account);
    objc_storeStrong(&v10->_accountStore, store);
    v11 = objc_alloc_init(MEMORY[0x1E69C7048]);
    remoteUIController = v10->_remoteUIController;
    v10->_remoteUIController = v11;

    [(RemoteUIController *)v10->_remoteUIController setDelegate:v10];
    _sessionConfiguration = [(AAUIGenericTermsRemoteUI *)v10 _sessionConfiguration];
    [(RemoteUIController *)v10->_remoteUIController setSessionConfiguration:_sessionConfiguration];

    v14 = objc_alloc(MEMORY[0x1E69C7030]);
    v15 = v10->_remoteUIController;
    v34 = 0;
    v35 = &v34;
    v36 = 0x2050000000;
    v16 = getFALaunchScreenTimeSetupHookClass_softClass_0;
    v37 = getFALaunchScreenTimeSetupHookClass_softClass_0;
    if (!getFALaunchScreenTimeSetupHookClass_softClass_0)
    {
      v29 = MEMORY[0x1E69E9820];
      v30 = 3221225472;
      v31 = __getFALaunchScreenTimeSetupHookClass_block_invoke_0;
      v32 = &unk_1E820BE08;
      v33 = &v34;
      __getFALaunchScreenTimeSetupHookClass_block_invoke_0(&v29);
      v16 = v35[3];
    }

    v17 = v16;
    _Block_object_dispose(&v34, 8);
    v18 = objc_opt_new();
    v34 = 0;
    v35 = &v34;
    v36 = 0x2050000000;
    v19 = getFARUIHookProviderClass_softClass;
    v37 = getFARUIHookProviderClass_softClass;
    v38[0] = v18;
    if (!getFARUIHookProviderClass_softClass)
    {
      v29 = MEMORY[0x1E69E9820];
      v30 = 3221225472;
      v31 = __getFARUIHookProviderClass_block_invoke;
      v32 = &unk_1E820BE08;
      v33 = &v34;
      __getFARUIHookProviderClass_block_invoke(&v29);
      v19 = v35[3];
    }

    v20 = v19;
    _Block_object_dispose(&v34, 8);
    expressParentalControlHook = [v19 expressParentalControlHook];
    v38[1] = expressParentalControlHook;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
    v23 = [v14 initWithRemoteUIController:v15 hooks:v22];
    serverHookHandler = v10->_serverHookHandler;
    v10->_serverHookHandler = v23;

    v25 = objc_alloc_init(AAUIServerHookHandlerDelegate);
    hookHandlerDelegate = v10->_hookHandlerDelegate;
    v10->_hookHandlerDelegate = v25;

    [(RUIServerHookHandler *)v10->_serverHookHandler setDelegate:v10->_hookHandlerDelegate];
    [(AAUIGenericTermsRemoteUI *)v10 _setupActionForButtons];
  }

  return v10;
}

- (AAUIGenericTermsRemoteUI)initWithAccount:(id)account inStore:(id)store termsEntries:(id)entries
{
  entriesCopy = entries;
  v10 = [(AAUIGenericTermsRemoteUI *)self initWithAccount:account inStore:store];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_termsEntries, entries);
  }

  return v11;
}

- (void)presentFromViewController:(id)controller modal:(BOOL)modal
{
  modalCopy = modal;
  v19 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  objc_storeWeak(&self->_originatingViewController, controllerCopy);
  remoteUIController = [(AAUIGenericTermsRemoteUI *)self remoteUIController];
  [remoteUIController setHostViewController:controllerCopy];

  navigationController = [controllerCopy navigationController];
  objc_storeWeak(&self->_parentNavController, navigationController);

  self->_isModal = modalCopy;
  v9 = _AAUILogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (modalCopy)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    WeakRetained = objc_loadWeakRetained(&self->_parentNavController);
    viewControllers = [WeakRetained viewControllers];
    v13 = 138412802;
    v14 = v10;
    v15 = 2112;
    v16 = controllerCopy;
    v17 = 2112;
    v18 = viewControllers;
    _os_log_impl(&dword_1C5355000, v9, OS_LOG_TYPE_DEFAULT, "Terms: Attempting to show terms UI modally: %@ on parent: %@ with children: %@", &v13, 0x20u);
  }

  [(AAUIGenericTermsRemoteUI *)self _loadRequestPreferringPassword:1];
}

- (void)remoteUIController:(id)controller didReceiveObjectModel:(id)model actionSignal:(unint64_t *)signal
{
  v15 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  v8 = _AAUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x1E69C7010] signalWithType:*signal];
    v13 = 138412290;
    v14 = v9;
    _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "Terms: Got object model with signal: %@", &v13, 0xCu);
  }

  if (*signal == 1)
  {
    [(AAUIGenericTermsRemoteUI *)self _cleanUpAndDismissWithSuccess:0 agreeURL:0 serverInfo:0];
    clientInfo = [modelCopy clientInfo];
    v11 = _AAUILogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [AAUIGenericTermsRemoteUI remoteUIController:didReceiveObjectModel:actionSignal:];
    }

    v12 = [clientInfo objectForKeyedSubscript:@"agreeUrl"];
    [(AAUIGenericTermsRemoteUI *)self _reportTermsUserAction:@"Dismiss" agreeUrl:v12];
  }
}

- (void)remoteUIController:(id)controller didPresentObjectModel:(id)model modally:(BOOL)modally
{
  modallyCopy = modally;
  modelCopy = model;
  serverHookHandler = [(AAUIGenericTermsRemoteUI *)self serverHookHandler];
  [serverHookHandler processObjectModel:modelCopy isModal:modallyCopy];
}

- (void)remoteUIController:(id)controller shouldLoadRequest:(id)request redirectResponse:(id)response withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(AAUIGenericTermsRemoteUI *)self _addHeadersToRequest:request];
  handlerCopy[2](handlerCopy, 1, 0);
}

- (BOOL)_isUnauthorizedError:(id)error
{
  errorCopy = error;
  if ([errorCopy code] == -1012)
  {
    domain = [errorCopy domain];
    v5 = [domain isEqualToString:*MEMORY[0x1E696A978]];

    if (v5)
    {
      goto LABEL_5;
    }
  }

  domain2 = [errorCopy domain];
  if ([domain2 isEqualToString:*MEMORY[0x1E69C7060]])
  {
    userInfo = [errorCopy userInfo];
    v8 = [userInfo objectForKeyedSubscript:@"statusCode"];
    integerValue = [v8 integerValue];

    if (integerValue == 401)
    {
LABEL_5:
      v10 = 1;
      goto LABEL_11;
    }
  }

  else
  {
  }

  domain3 = [errorCopy domain];
  if ([domain3 isEqualToString:*MEMORY[0x1E69C7070]])
  {
    userInfo2 = [errorCopy userInfo];
    v13 = [userInfo2 objectForKeyedSubscript:@"statusCode"];
    v10 = [v13 integerValue] == 401;
  }

  else
  {
    v10 = 0;
  }

LABEL_11:
  return v10;
}

- (void)_setupActionForButtons
{
  objc_initWeak(&location, self);
  remoteUIController = [(AAUIGenericTermsRemoteUI *)self remoteUIController];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__AAUIGenericTermsRemoteUI__setupActionForButtons__block_invoke;
  v10[3] = &unk_1E820D080;
  objc_copyWeak(&v11, &location);
  v10[4] = self;
  [remoteUIController setHandlerForButtonName:@"agree" handler:v10];

  remoteUIController2 = [(AAUIGenericTermsRemoteUI *)self remoteUIController];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__AAUIGenericTermsRemoteUI__setupActionForButtons__block_invoke_90;
  v8[3] = &unk_1E820D0A8;
  objc_copyWeak(&v9, &location);
  [remoteUIController2 setHandlerForButtonName:@"defer" handler:v8];

  remoteUIController3 = [(AAUIGenericTermsRemoteUI *)self remoteUIController];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__AAUIGenericTermsRemoteUI__setupActionForButtons__block_invoke_94;
  v6[3] = &unk_1E820D0A8;
  objc_copyWeak(&v7, &location);
  [remoteUIController3 setHandlerForButtonName:@"disagree" handler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __50__AAUIGenericTermsRemoteUI__setupActionForButtons__block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [v3 clientInfo];
    v6 = _AAUILogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __50__AAUIGenericTermsRemoteUI__setupActionForButtons__block_invoke_cold_1();
    }

    v7 = [v5 objectForKey:@"agreeUrl"];
    v8 = [v5 objectForKey:@"agreeDialogTitle"];
    v9 = [v5 objectForKey:@"agreeDialogText"];
    v10 = [v5 objectForKey:@"agreeDialogOK"];
    v11 = [v5 objectForKey:@"agreeDialogCancel"];
    v12 = [v5 objectForKey:@"SLAVersion"];
    v13 = *(a1 + 32);
    v14 = *(v13 + 56);
    *(v13 + 56) = v12;

    v15 = [v3 serverInfo];
    v16 = [v15 objectForKeyedSubscript:@"serverInfoKey"];

    if (v9 && v10 && v11)
    {
      v29 = v10;
      v17 = _AAUILogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5355000, v17, OS_LOG_TYPE_DEFAULT, "Attempting to show alert view", buf, 2u);
      }

      v18 = MEMORY[0x1E69DC650];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __50__AAUIGenericTermsRemoteUI__setupActionForButtons__block_invoke_84;
      v30[3] = &unk_1E820D058;
      v19 = WeakRetained;
      v31 = v19;
      v32 = v7;
      v33 = v16;
      v28 = v9;
      v20 = [v18 alertWithTitle:v8 message:v9 cancelButtonTitle:v11 defaultButtonTitle:v29 actionHandler:v30];
      v21 = _AAUILogSystem();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        [v19 remoteUIController];
        v22 = v27 = v7;
        [v22 currentPresentationContext];
        v23 = v26 = v8;
        *buf = 138412290;
        v35 = v23;
        _os_log_impl(&dword_1C5355000, v21, OS_LOG_TYPE_DEFAULT, "Attempting to present terms and conditions alert on current presentation context %@", buf, 0xCu);

        v8 = v26;
        v7 = v27;
      }

      v24 = [v19 remoteUIController];
      v25 = [v24 currentPresentationContext];
      [v25 presentViewController:v20 animated:1 completion:0];

      v9 = v28;
      v10 = v29;
    }

    else
    {
      [WeakRetained _cleanUpAndDismissWithSuccess:1 agreeURL:v7 serverInfo:v16];
    }
  }

  else
  {
    v5 = _AAUILogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __50__AAUIGenericTermsRemoteUI__setupActionForButtons__block_invoke_cold_2();
    }
  }
}

uint64_t __50__AAUIGenericTermsRemoteUI__setupActionForButtons__block_invoke_84(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [*(result + 32) _cleanUpAndDismissWithSuccess:1 agreeURL:*(result + 40) serverInfo:*(result + 48)];
  }

  return result;
}

void __50__AAUIGenericTermsRemoteUI__setupActionForButtons__block_invoke_90(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _cleanUpAndDismissWithSuccess:1 agreeURL:0 serverInfo:0];
    v6 = [v3 clientInfo];
    v7 = _AAUILogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __50__AAUIGenericTermsRemoteUI__setupActionForButtons__block_invoke_90_cold_1();
    }

    v8 = [v6 objectForKeyedSubscript:@"agreeUrl"];
    [v5 _reportTermsUserAction:@"Not Now" agreeUrl:v8];
  }

  else
  {
    v6 = _AAUILogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __50__AAUIGenericTermsRemoteUI__setupActionForButtons__block_invoke_cold_2();
    }
  }
}

void __50__AAUIGenericTermsRemoteUI__setupActionForButtons__block_invoke_94(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 clientInfo];
    v6 = [v5 objectForKeyedSubscript:@"disagreeUrl"];
    v7 = [v3 serverInfo];
    v8 = [v7 objectForKeyedSubscript:@"serverInfoKey"];

    v9 = _AAUILogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __50__AAUIGenericTermsRemoteUI__setupActionForButtons__block_invoke_94_cold_1();
    }

    [WeakRetained _disagreeToTermsWithURLString:v6 serverInfo:v8];
    [WeakRetained _cleanUpAndDismissWithSuccess:0 agreeURL:0 serverInfo:0];
    v10 = [v5 objectForKeyedSubscript:@"agreeUrl"];
    [WeakRetained _reportTermsUserAction:@"Decline" agreeUrl:v10];
  }

  else
  {
    v5 = _AAUILogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __50__AAUIGenericTermsRemoteUI__setupActionForButtons__block_invoke_cold_2();
    }
  }
}

- (void)_loadRequestPreferringPassword:(BOOL)password
{
  self->_isPreferringPassword = password;
  termsEntries = self->_termsEntries;
  if (termsEntries)
  {
    v5 = termsEntries;
  }

  else
  {
    v5 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E698B7F0], 0}];
  }

  v6 = v5;
  v7 = [objc_alloc(MEMORY[0x1E698B8C8]) initWithAccount:self->_account termsEntries:v5];
  [v7 setPreferPassword:self->_isPreferringPassword];
  additionalHeaders = [(AAUIGenericTermsRemoteUI *)self additionalHeaders];
  [v7 setAdditionalHeaders:additionalHeaders];

  _aa_termsServerInfo = [(ACAccount *)self->_account _aa_termsServerInfo];
  [v7 setServerInfo:_aa_termsServerInfo];

  [(ACAccount *)self->_account _aa_setTermsServerInfo:0];
  urlRequest = [v7 urlRequest];
  v11 = [urlRequest mutableCopy];

  [(AAUIGenericTermsRemoteUI *)self _addHeadersToRequest:v11];
  remoteUIController = [(AAUIGenericTermsRemoteUI *)self remoteUIController];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__AAUIGenericTermsRemoteUI__loadRequestPreferringPassword___block_invoke;
  v13[3] = &unk_1E820C1A8;
  v13[4] = self;
  [remoteUIController loadRequest:v11 completion:v13];
}

void __59__AAUIGenericTermsRemoteUI__loadRequestPreferringPassword___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v6 = _AAUILogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __59__AAUIGenericTermsRemoteUI__loadRequestPreferringPassword___block_invoke_cold_1();
    }

    v7 = [*(a1 + 32) _isUnauthorizedError:v5];
    v8 = *(a1 + 32);
    if (v7 && v8[49] == 1)
    {
      if (v8[50] == 1)
      {
        v9 = _AAUILogSystem();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          __59__AAUIGenericTermsRemoteUI__loadRequestPreferringPassword___block_invoke_cold_3();
        }

        [*(a1 + 32) _loadRequestPreferringPassword:0];
      }

      else
      {
        v8[50] = 1;
        v14 = _AAUILogSystem();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          __59__AAUIGenericTermsRemoteUI__loadRequestPreferringPassword___block_invoke_cold_2();
        }

        v15 = *(a1 + 32);
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __59__AAUIGenericTermsRemoteUI__loadRequestPreferringPassword___block_invoke_97;
        v20[3] = &unk_1E820C140;
        v20[4] = v15;
        [v15 _renewCredentialsWithCompletion:v20];
      }
    }

    else
    {
      v10 = [v8 delegate];
      v11 = objc_opt_respondsToSelector();

      v12 = _AAUILogSystem();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      if (v11)
      {
        if (v13)
        {
          *buf = 0;
          _os_log_impl(&dword_1C5355000, v12, OS_LOG_TYPE_DEFAULT, "Notifying delegate of connection error", buf, 2u);
        }

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __59__AAUIGenericTermsRemoteUI__loadRequestPreferringPassword___block_invoke_100;
        block[3] = &unk_1E820BEB8;
        block[4] = *(a1 + 32);
        v18 = v5;
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }

      else
      {
        if (v13)
        {
          *buf = 0;
          _os_log_impl(&dword_1C5355000, v12, OS_LOG_TYPE_DEFAULT, "Presenting failure alert to user", buf, 2u);
        }

        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __59__AAUIGenericTermsRemoteUI__loadRequestPreferringPassword___block_invoke_102;
        v16[3] = &unk_1E820B8F0;
        v16[4] = *(a1 + 32);
        dispatch_async(MEMORY[0x1E69E96A0], v16);
      }
    }
  }
}

uint64_t __59__AAUIGenericTermsRemoteUI__loadRequestPreferringPassword___block_invoke_97(uint64_t a1, uint64_t a2)
{
  v4 = _AAUILogSystem();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (a2)
  {
    if (v5)
    {
      __59__AAUIGenericTermsRemoteUI__loadRequestPreferringPassword___block_invoke_97_cold_2();
    }
  }

  else if (v5)
  {
    __59__AAUIGenericTermsRemoteUI__loadRequestPreferringPassword___block_invoke_97_cold_1();
  }

  return [*(a1 + 32) _loadRequestPreferringPassword:a2];
}

uint64_t __59__AAUIGenericTermsRemoteUI__loadRequestPreferringPassword___block_invoke_100(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 genericTermsRemoteUI:*(a1 + 32) failedToLoadTermsWithError:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 _cleanUpAndDismissWithSuccess:0 agreeURL:0 serverInfo:0];
}

- (id)_viewControllerForAlertPresentation
{
  delegate = [(AAUIGenericTermsRemoteUI *)self delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    delegate2 = [(AAUIGenericTermsRemoteUI *)self delegate];
    parentViewControllerPresentsErrorAlert = [delegate2 parentViewControllerPresentsErrorAlert];

    if (parentViewControllerPresentsErrorAlert)
    {
      remoteUIController = _AAUILogSystem();
      if (os_log_type_enabled(remoteUIController, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C5355000, remoteUIController, OS_LOG_TYPE_DEFAULT, "Sign in controller supports displaying it's own error", buf, 2u);
      }

      currentPresentationContext = 0;
      goto LABEL_10;
    }
  }

  else
  {
  }

  v8 = _AAUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "Presenting alert on remoteUIController currentPresentationContext", v10, 2u);
  }

  remoteUIController = [(AAUIGenericTermsRemoteUI *)self remoteUIController];
  currentPresentationContext = [remoteUIController currentPresentationContext];
LABEL_10:

  return currentPresentationContext;
}

- (void)_agreeToTermsWithURLString:(id)string serverInfo:(id)info preferPassword:(BOOL)password completion:(id)completion
{
  passwordCopy = password;
  completionCopy = completion;
  v11 = MEMORY[0x1E698B9E8];
  infoCopy = info;
  stringCopy = string;
  v14 = [[v11 alloc] initWithURLString:stringCopy account:self->_account];

  additionalHeaders = [(AAUIGenericTermsRemoteUI *)self additionalHeaders];
  [v14 setAdditionalHeaders:additionalHeaders];

  [v14 setPreferPassword:passwordCopy];
  [v14 setServerInfo:infoCopy];

  if (self->_slaVersion)
  {
    v16 = _AAUILogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [AAUIGenericTermsRemoteUI _agreeToTermsWithURLString:serverInfo:preferPassword:completion:];
    }

    [v14 setSlaVersion:self->_slaVersion];
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __92__AAUIGenericTermsRemoteUI__agreeToTermsWithURLString_serverInfo_preferPassword_completion___block_invoke;
  v18[3] = &unk_1E820D0D0;
  v18[4] = self;
  v19 = completionCopy;
  v17 = completionCopy;
  [v14 performRequestWithHandler:v18];
}

void __92__AAUIGenericTermsRemoteUI__agreeToTermsWithURLString_serverInfo_preferPassword_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = _AAUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __92__AAUIGenericTermsRemoteUI__agreeToTermsWithURLString_serverInfo_preferPassword_completion___block_invoke_cold_1();
  }

  if (([v6 statusCode] - 200) > 0x63)
  {
    v16 = _AAUILogSystem();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (v17)
      {
        __92__AAUIGenericTermsRemoteUI__agreeToTermsWithURLString_serverInfo_preferPassword_completion___block_invoke_cold_2();
      }
    }

    else if (v17)
    {
      __92__AAUIGenericTermsRemoteUI__agreeToTermsWithURLString_serverInfo_preferPassword_completion___block_invoke_cold_3();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = _AAUILogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&dword_1C5355000, v9, OS_LOG_TYPE_DEFAULT, "Successfully agreed to iCloud terms!", v18, 2u);
    }

    v10 = *(a1 + 32);
    v11 = v6;
    v12 = [v11 acceptedTermsInfo];
    [v10 _sendAcceptedTermsInfo:v12];

    v13 = *(a1 + 40);
    v14 = [v11 responseDictionary];
    v15 = [v14 objectForKeyedSubscript:@"serverInfo"];
    (*(v13 + 16))(v13, 1, v15);
  }
}

- (void)_disagreeToTermsWithURLString:(id)string serverInfo:(id)info
{
  v6 = MEMORY[0x1E698B9F0];
  infoCopy = info;
  stringCopy = string;
  v10 = [[v6 alloc] initWithURLString:stringCopy account:self->_account];

  additionalHeaders = [(AAUIGenericTermsRemoteUI *)self additionalHeaders];
  [v10 setAdditionalHeaders:additionalHeaders];

  [v10 setServerInfo:infoCopy];
  [v10 performRequestWithHandler:&__block_literal_global_15];
}

void __69__AAUIGenericTermsRemoteUI__disagreeToTermsWithURLString_serverInfo___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = _AAUILogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __69__AAUIGenericTermsRemoteUI__disagreeToTermsWithURLString_serverInfo___block_invoke_cold_1();
    }
  }

  else
  {
    v8 = [v5 statusCode];
    v9 = _AAUILogSystem();
    v7 = v9;
    if (v8 == 200)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_1C5355000, v7, OS_LOG_TYPE_DEFAULT, "Marked terms as disagreed in iCloud", v10, 2u);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __69__AAUIGenericTermsRemoteUI__disagreeToTermsWithURLString_serverInfo___block_invoke_cold_2(v5, v7);
    }
  }
}

- (void)_sendAcceptedTermsInfo:(id)info
{
  infoCopy = info;
  if ([infoCopy count])
  {
    delegate = [(AAUIGenericTermsRemoteUI *)self delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      delegate2 = [(AAUIGenericTermsRemoteUI *)self delegate];
      [delegate2 genericTermsRemoteUI:self acceptedTermsInfo:infoCopy];
    }
  }
}

- (void)_cleanUpAndDismissWithSuccess:(BOOL)success agreeURL:(id)l serverInfo:(id)info
{
  successCopy = success;
  lCopy = l;
  infoCopy = info;
  remoteUIController = [(AAUIGenericTermsRemoteUI *)self remoteUIController];
  currentPresentationContext = [remoteUIController currentPresentationContext];

  [(AAUIGenericTermsRemoteUI *)self _cleanupRUILoader];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__AAUIGenericTermsRemoteUI__cleanUpAndDismissWithSuccess_agreeURL_serverInfo___block_invoke;
  aBlock[3] = &unk_1E820D168;
  aBlock[4] = self;
  v12 = currentPresentationContext;
  v21 = v12;
  v13 = _Block_copy(aBlock);
  v14 = v13;
  if (lCopy && successCopy)
  {
    v15 = _AAUILogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v15, OS_LOG_TYPE_DEFAULT, "Marking account as agreed to terms...", buf, 2u);
    }

    [(ACAccount *)self->_account aa_setNeedsToVerifyTerms:0];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __78__AAUIGenericTermsRemoteUI__cleanUpAndDismissWithSuccess_agreeURL_serverInfo___block_invoke_118;
    v16[3] = &unk_1E820D190;
    v18 = v14;
    v16[4] = self;
    v17 = lCopy;
    [(AAUIGenericTermsRemoteUI *)self _agreeToTermsWithURLString:v17 serverInfo:infoCopy preferPassword:1 completion:v16];
  }

  else if (successCopy)
  {
    (*(v13 + 2))(v13, 1, 0);
  }

  else
  {
    [(ACAccount *)self->_account aa_setNeedsToVerifyTerms:1];
    v14[2](v14, 0, 0);
  }
}

void __78__AAUIGenericTermsRemoteUI__cleanUpAndDismissWithSuccess_agreeURL_serverInfo___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__AAUIGenericTermsRemoteUI__cleanUpAndDismissWithSuccess_agreeURL_serverInfo___block_invoke_2;
  v8[3] = &unk_1E820CC28;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v11 = a2;
  v9 = v6;
  v10 = v5;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

void __78__AAUIGenericTermsRemoteUI__cleanUpAndDismissWithSuccess_agreeURL_serverInfo___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__AAUIGenericTermsRemoteUI__cleanUpAndDismissWithSuccess_agreeURL_serverInfo___block_invoke_3;
  aBlock[3] = &unk_1E820D118;
  aBlock[4] = *(a1 + 32);
  v2 = _Block_copy(aBlock);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = _AAUILogSystem();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (isKindOfClass)
  {
    if (v5)
    {
      v6 = *(a1 + 40);
      *buf = 138412290;
      v15 = v6;
      _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "Dismissing presented RUINavigationController %@...", buf, 0xCu);
    }

    v7 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __78__AAUIGenericTermsRemoteUI__cleanUpAndDismissWithSuccess_agreeURL_serverInfo___block_invoke_117;
    v9[3] = &unk_1E820D140;
    v11 = v2;
    v12 = *(a1 + 56);
    v10 = *(a1 + 48);
    [v7 dismissViewControllerAnimated:1 completion:v9];
  }

  else
  {
    if (v5)
    {
      v8 = *(a1 + 40);
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "Terms error alert is not being presented %@. Skipping dismiss", buf, 0xCu);
    }

    (*(v2 + 2))(v2, *(a1 + 56), *(a1 + 48));
  }
}

void __78__AAUIGenericTermsRemoteUI__cleanUpAndDismissWithSuccess_agreeURL_serverInfo___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  v5 = [*(a1 + 32) delegate];
  v6 = objc_opt_respondsToSelector();

  v7 = [*(a1 + 32) delegate];
  v8 = v7;
  v9 = *(a1 + 32);
  if (v6)
  {
    [v7 genericTermsRemoteUI:v9 didFinishWithSuccess:a2 serverInfo:v10];
  }

  else
  {
    [v7 genericTermsRemoteUI:v9 didFinishWithSuccess:a2];
  }
}

uint64_t __78__AAUIGenericTermsRemoteUI__cleanUpAndDismissWithSuccess_agreeURL_serverInfo___block_invoke_117(uint64_t a1)
{
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C5355000, v2, OS_LOG_TYPE_DEFAULT, "Dismissed presented RUINavigationController", v4, 2u);
  }

  return (*(*(a1 + 40) + 16))();
}

void __78__AAUIGenericTermsRemoteUI__cleanUpAndDismissWithSuccess_agreeURL_serverInfo___block_invoke_118(uint64_t a1, int a2, void *a3)
{
  if (a2)
  {
    v4 = *(a1 + 48);
    v5 = *(v4 + 16);
    v6 = a3;
    v5(v4, 1, v6);
  }

  else
  {
    v7 = a3;
    v8 = _AAUILogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "Failed to agree using PET, attempting with token...", buf, 2u);
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __78__AAUIGenericTermsRemoteUI__cleanUpAndDismissWithSuccess_agreeURL_serverInfo___block_invoke_119;
    v11[3] = &unk_1E820C620;
    v12 = *(a1 + 48);
    [v9 _agreeToTermsWithURLString:v10 serverInfo:v7 preferPassword:0 completion:v11];

    v6 = v12;
  }
}

- (void)_cleanupRUILoader
{
  [(RemoteUIController *)self->_remoteUIController setDelegate:0];
  remoteUIController = self->_remoteUIController;
  self->_remoteUIController = 0;
}

- (id)_sessionConfiguration
{
  defaultSessionConfiguration = [MEMORY[0x1E696AF80] defaultSessionConfiguration];
  v3 = objc_alloc_init(MEMORY[0x1E698DCC8]);
  [defaultSessionConfiguration set_appleIDContext:v3];

  return defaultSessionConfiguration;
}

- (void)_displayConnectionErrorAndDismiss
{
  remoteUIController = [(AAUIGenericTermsRemoteUI *)self remoteUIController];
  currentPresentationContext = [remoteUIController currentPresentationContext];

  if (currentPresentationContext)
  {
    v5 = MEMORY[0x1E69DC650];
    v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"SERVER_UNREACHABLE_MESSAGE" value:&stru_1F447F790 table:@"Localizable"];
    v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"OK" value:&stru_1F447F790 table:@"Localizable"];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __61__AAUIGenericTermsRemoteUI__displayConnectionErrorAndDismiss__block_invoke;
    v11[3] = &unk_1E820B8F0;
    v11[4] = self;
    v10 = [v5 alertWithTitle:v7 message:0 buttonTitle:v9 actionHandler:v11];

    [currentPresentationContext presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    [(AAUIGenericTermsRemoteUI *)self _cleanUpAndDismissWithSuccess:0 agreeURL:0 serverInfo:0];
  }
}

- (void)_addHeadersToRequest:(id)request
{
  v13 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  [requestCopy aa_addClientInfoHeaders];
  [requestCopy aa_addAuthTokenOrBasicAuthHeaderWithAccount:self->_account preferUsingPassword:self->_isPreferringPassword];
  additionalHeaders = [(AAUIGenericTermsRemoteUI *)self additionalHeaders];

  if (additionalHeaders)
  {
    additionalHeaders2 = [(AAUIGenericTermsRemoteUI *)self additionalHeaders];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__AAUIGenericTermsRemoteUI__addHeadersToRequest___block_invoke;
    v9[3] = &unk_1E820D1B8;
    v10 = requestCopy;
    [additionalHeaders2 enumerateKeysAndObjectsUsingBlock:v9];
  }

  v7 = _AAUILogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    allHTTPHeaderFields = [requestCopy allHTTPHeaderFields];
    *buf = 138412290;
    v12 = allHTTPHeaderFields;
    _os_log_impl(&dword_1C5355000, v7, OS_LOG_TYPE_DEFAULT, "Terms Secondary Request Headers: %@", buf, 0xCu);
  }
}

- (void)_renewCredentialsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (self->_account)
  {
    v6 = objc_alloc_init(MEMORY[0x1E698DCC0]);
    _authContextForRenewCredentials = [(AAUIGenericTermsRemoteUI *)self _authContextForRenewCredentials];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__AAUIGenericTermsRemoteUI__renewCredentialsWithCompletion___block_invoke;
    v8[3] = &unk_1E820D1E0;
    v8[4] = self;
    v9 = v5;
    [v6 authenticateWithContext:_authContextForRenewCredentials completion:v8];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __60__AAUIGenericTermsRemoteUI__renewCredentialsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = [a2 objectForKeyedSubscript:*MEMORY[0x1E698DBC8]];
    [*(*(a1 + 32) + 24) aa_setPassword:v4];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }
}

- (id)_authContextForRenewCredentials
{
  v3 = objc_alloc_init(MEMORY[0x1E698DE80]);
  username = [(ACAccount *)self->_account username];
  [v3 setUsername:username];

  [v3 setIsUsernameEditable:0];
  WeakRetained = objc_loadWeakRetained(&self->_originatingViewController);
  [v3 setPresentingViewController:WeakRetained];

  [v3 setShouldOfferSecurityUpgrade:0];
  [v3 setServiceType:1];
  [v3 setAuthenticationType:0];
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"PASSWORD_REQUIRED_TITLE" value:&stru_1F447F790 table:@"Localizable"];
  [v3 setTitle:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"RENEW_FOR_TERMS_AND_CONDITIONS_MESSAGE" value:&stru_1F447F790 table:@"Localizable"];
  username2 = [(ACAccount *)self->_account username];
  v12 = [v8 stringWithFormat:v10, username2];
  [v3 setReason:v12];

  return v3;
}

- (void)_reportTermsUserAction:(id)action agreeUrl:(id)url
{
  v13[1] = *MEMORY[0x1E69E9840];
  actionCopy = action;
  urlCopy = url;
  v8 = objc_alloc(MEMORY[0x1E695DF90]);
  v12 = *MEMORY[0x1E698BA08];
  v13[0] = actionCopy;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = [v8 initWithDictionary:v9];

  if (urlCopy)
  {
    [v10 setObject:urlCopy forKeyedSubscript:@"agreeUrl"];
  }

  v11 = [objc_alloc(MEMORY[0x1E698B998]) initWithAccount:self->_account parameters:v10];
  [v11 reportEvent];
}

- (AAUIGenericTermsRemoteUIDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIViewController)originatingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_originatingViewController);

  return WeakRetained;
}

void __59__AAUIGenericTermsRemoteUI__loadRequestPreferringPassword___block_invoke_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  v3 = 1024;
  v4 = v0;
  _os_log_error_impl(&dword_1C5355000, v1, OS_LOG_TYPE_ERROR, "RUILoader didFailWithError: %@, success = %i", v2, 0x12u);
}

void __59__AAUIGenericTermsRemoteUI__loadRequestPreferringPassword___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __59__AAUIGenericTermsRemoteUI__loadRequestPreferringPassword___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __59__AAUIGenericTermsRemoteUI__loadRequestPreferringPassword___block_invoke_97_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __59__AAUIGenericTermsRemoteUI__loadRequestPreferringPassword___block_invoke_97_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __92__AAUIGenericTermsRemoteUI__agreeToTermsWithURLString_serverInfo_preferPassword_completion___block_invoke_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_1C5355000, v1, OS_LOG_TYPE_DEBUG, "AAiCloudTermsAgreeRequest response: %@. Error: %@", v2, 0x16u);
}

void __92__AAUIGenericTermsRemoteUI__agreeToTermsWithURLString_serverInfo_preferPassword_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __92__AAUIGenericTermsRemoteUI__agreeToTermsWithURLString_serverInfo_preferPassword_completion___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __69__AAUIGenericTermsRemoteUI__disagreeToTermsWithURLString_serverInfo___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __69__AAUIGenericTermsRemoteUI__disagreeToTermsWithURLString_serverInfo___block_invoke_cold_2(void *a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  [a1 statusCode];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_1C5355000, a2, OS_LOG_TYPE_ERROR, "Failed to mark terms as disagreed in iCloud with HTTP status %ld", v3, 0xCu);
}

@end