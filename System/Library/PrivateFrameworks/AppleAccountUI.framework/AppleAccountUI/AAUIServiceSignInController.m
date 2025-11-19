@interface AAUIServiceSignInController
- (AAUIAgeAttestationStateProviding)ageAttestationStateProvider;
- (AAUIServiceSignInController)initWithSignInConfiguration:(id)a3;
- (AAUISignInViewController)signInViewController;
- (AKAppleIDAuthenticationController)authenticationController;
- (BOOL)_allowsAccountCreation;
- (BOOL)_isAuthenticatingPrimary:(id)a3;
- (BOOL)_shouldShieldSignInUI;
- (BOOL)_showsServiceIcons;
- (id)_alertControllerForReusingAccount:(id)a3 serviceType:(id)a4 inViewController:(id)a5 completion:(id)a6;
- (id)_serviceContextForCloudAndInactiveStoreWithAuthResults:(id)a3 parentViewController:(id)a4;
- (id)_serviceContextWithResults:(id)a3 parentViewController:(id)a4;
- (id)_serviceOwnersManager;
- (id)_spinnerMessageForService:(id)a3;
- (id)_spinnerViewController;
- (void)_attemptReauthAndSignInToServices;
- (void)_attemptSignInForServices:(id)a3 serviceContext:(id)a4;
- (void)_authenticateExistingAccount:(id)a3 serviceType:(id)a4 inViewController:(id)a5 completion:(id)a6;
- (void)_commonInit;
- (void)_delegate_serviceSignInControllerDidCancel;
- (void)_delegate_signInControllerDidCompleteWithSuccess:(BOOL)a3 error:(id)a4;
- (void)_invokeShieldUIWithViewController:(id)a3 completion:(id)a4;
- (void)_mainQueue_continueSignInWithAuthenticationResults:(id)a3 parentViewController:(id)a4;
- (void)_mainQueue_presentAlertForError:(id)a3 inViewController:(id)a4 completion:(id)a5;
- (void)_mainQueue_presentContinueUsingInViewController:(id)a3 account:(id)a4 serviceType:(id)a5 completion:(id)a6;
- (void)_mainQueue_presentSpinnerViewControllerInParentViewController:(id)a3 withCompletion:(id)a4;
- (void)_prepareToSignInForServices:(id)a3 withAuthenticationResults:(id)a4 parentViewController:(id)a5;
- (void)_setInitialViewController:(id)a3;
- (void)continueSignInWithAuthenticationResults:(id)a3 viewController:(id)a4 completion:(id)a5;
- (void)controllerFinishedWithAIDAResults:(id)a3;
- (void)loadViewControllerForPresentation;
- (void)prepareInViewController:(id)a3 completion:(id)a4;
- (void)signInViewController:(id)a3 didCompleteWithAuthenticationResults:(id)a4;
- (void)signInViewControllerDidCancel:(id)a3;
- (void)signInViewControllerDidSelectChildSignIn:(id)a3;
- (void)signInViewControllerDidSelectOtherOptions:(id)a3;
- (void)signInViewControllerDidSkip:(id)a3;
- (void)startSplitAcountSignInFlow;
- (void)willAuthenticateWithContext:(id)a3;
@end

@implementation AAUIServiceSignInController

- (AAUIServiceSignInController)initWithSignInConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AAUIServiceSignInController;
  v6 = [(AAUIServiceSignInController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_signInConfig, a3);
    [(AAUIServiceSignInController *)v7 _commonInit];
  }

  return v7;
}

- (void)_commonInit
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)loadViewControllerForPresentation
{
  v3 = [(AAUIServiceSignInConfiguration *)self->_signInConfig navigationController];
  v4 = [v3 navigationBar];
  [v4 setAccessibilityIdentifier:@"sign-in-nav-bar"];

  if ([(AAUIServiceSignInController *)self _shouldShieldSignInUI])
  {
    v5 = _AAUILogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Invoking shield UI.", buf, 2u);
    }

    v6 = [(AAUIServiceSignInController *)self signInConfig];
    v7 = [v6 navigationController];
    [v7 setNavigationBarHidden:1 animated:0];

    objc_initWeak(buf, self);
    v8 = [(AAUIServiceSignInController *)self signInConfig];
    v9 = [v8 navigationController];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __64__AAUIServiceSignInController_loadViewControllerForPresentation__block_invoke;
    v19[3] = &unk_1E820DE68;
    objc_copyWeak(&v20, buf);
    [(AAUIServiceSignInController *)self _invokeShieldUIWithViewController:v9 completion:v19];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  else if ([(AAUIServiceSignInConfiguration *)self->_signInConfig newSignInReauth]&& ([(AAUIServiceSignInConfiguration *)self->_signInConfig username], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    v11 = _AAUILogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1C5355000, v11, OS_LOG_TYPE_DEFAULT, "Service sign in configuration signaled for reauth.", buf, 2u);
    }

    v12 = [(AAUIServiceSignInController *)self _spinnerViewController];
    [(AAUIServiceSignInController *)self _setInitialViewController:v12];

    [(AAUIServiceSignInController *)self _attemptReauthAndSignInToServices];
  }

  else
  {
    v13 = [(AAUIServiceSignInConfiguration *)self->_signInConfig authenticationResults];

    v14 = _AAUILogSystem();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v15)
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1C5355000, v14, OS_LOG_TYPE_DEFAULT, "Continuing sign in with authentication results...", buf, 2u);
      }

      v16 = [(AAUIServiceSignInController *)self _spinnerViewController];
      [(AAUIServiceSignInController *)self _setInitialViewController:v16];

      v17 = [(AAUIServiceSignInConfiguration *)self->_signInConfig authenticationResults];
      v18 = [(AAUIServiceSignInConfiguration *)self->_signInConfig navigationController];
      [(AAUIServiceSignInController *)self _mainQueue_continueSignInWithAuthenticationResults:v17 parentViewController:v18];
    }

    else
    {
      if (v15)
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1C5355000, v14, OS_LOG_TYPE_DEFAULT, "No authentication results found, displaying sign in...", buf, 2u);
      }

      v17 = [(AAUIServiceSignInController *)self signInViewController];
      [(AAUIServiceSignInController *)self _setInitialViewController:v17];
    }
  }
}

void __64__AAUIServiceSignInController_loadViewControllerForPresentation__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = _AAUILogSystem();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __64__AAUIServiceSignInController_loadViewControllerForPresentation__block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "Shield UI completed successfully.", buf, 2u);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__AAUIServiceSignInController_loadViewControllerForPresentation__block_invoke_38;
  v8[3] = &unk_1E820BE68;
  objc_copyWeak(&v10, (a1 + 32));
  v9 = v4;
  v7 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v8);

  objc_destroyWeak(&v10);
}

void __64__AAUIServiceSignInController_loadViewControllerForPresentation__block_invoke_38(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _delegate_signInControllerDidCompleteWithSuccess:*(a1 + 32) == 0 error:?];
}

- (BOOL)_shouldShieldSignInUI
{
  if ([(AAUIServiceSignInConfiguration *)self->_signInConfig skipShieldUI])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(AAUIServiceSignInController *)self ageAttestationStateProvider];
    v5 = [v4 ageAttestationPhase1Enabled];

    if (v5)
    {
      v6 = [(AAUIServiceSignInController *)self ageAttestationStateProvider];
      v7 = [v6 shieldSignInOrCreateFlows];
    }

    else
    {
      v7 = 0;
    }

    v8 = [(AAUIServiceSignInController *)self ageAttestationStateProvider];
    v9 = [v8 ageBasedAccountSupportEnabled];

    v3 = v9 | v7;
    if (v9 && (v7 & 1) == 0)
    {
      v10 = [(AAUIServiceSignInController *)self ageAttestationStateProvider];
      if ([v10 shieldSignInOrCreateFlowsForTeen])
      {
        v11 = [(AAUIServiceSignInConfiguration *)self->_signInConfig serviceTypes];
        v3 = v11 == 0;
      }

      else
      {
        v3 = 0;
      }
    }
  }

  return v3 & 1;
}

- (AAUIAgeAttestationStateProviding)ageAttestationStateProvider
{
  ageAttestationStateProvider = self->_ageAttestationStateProvider;
  if (!ageAttestationStateProvider)
  {
    v4 = objc_alloc_init(AAUIAgeAttestationStateProvider);
    v5 = self->_ageAttestationStateProvider;
    self->_ageAttestationStateProvider = v4;

    ageAttestationStateProvider = self->_ageAttestationStateProvider;
  }

  return ageAttestationStateProvider;
}

- (void)_setInitialViewController:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  signInConfig = self->_signInConfig;
  v5 = a3;
  v6 = [(AAUIServiceSignInConfiguration *)signInConfig navigationController];
  v7 = [v6 viewControllers];
  v8 = [v7 count];

  v9 = [(AAUIServiceSignInConfiguration *)self->_signInConfig navigationController];
  v11 = v9;
  if (v8)
  {
    [v9 pushViewController:v5 animated:1];
  }

  else
  {
    v12[0] = v5;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];

    [v11 setViewControllers:v10 animated:0];
  }
}

- (void)_attemptReauthAndSignInToServices
{
  v26 = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__AAUIServiceSignInController__attemptReauthAndSignInToServices__block_invoke;
  aBlock[3] = &unk_1E820C6E8;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = [(AAUIServiceSignInController *)self _serviceOwnersManager];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [objc_opt_class() supportedServices];
  v5 = [obj countByEnumeratingWithState:&v18 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    v16 = v3;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v4 accountForService:{v9, v16}];
        v11 = [v10 username];
        v12 = [(AAUIServiceSignInConfiguration *)self->_signInConfig username];
        v13 = [v11 isEqualToString:v12];

        if (v13)
        {
          v14 = _AAUILogSystem();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v24 = v9;
            _os_log_impl(&dword_1C5355000, v14, OS_LOG_TYPE_DEFAULT, "Found account for service %{public}@, prompting for sign in...", buf, 0xCu);
          }

          v15 = [(AAUIServiceSignInConfiguration *)self->_signInConfig navigationController];
          v3 = v16;
          [(AAUIServiceSignInController *)self _authenticateExistingAccount:v10 serviceType:v9 inViewController:v15 completion:v16];

          goto LABEL_13;
        }
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v25 count:16];
      v3 = v16;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

void __64__AAUIServiceSignInController__attemptReauthAndSignInToServices__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (a3)
  {
    v6 = _AAUILogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __64__AAUIServiceSignInController__attemptReauthAndSignInToServices__block_invoke_cold_1();
    }

    v7 = [*(*(a1 + 32) + 88) navigationController];
    v8 = [*(a1 + 32) signInViewController];
    [v7 pushViewController:v8 animated:1];
  }

  else
  {
    [*(*(a1 + 32) + 88) setAuthenticationResults:v5];
    v9 = *(a1 + 32);
    v10 = [v9[11] authenticationResults];
    v11 = [*(*(a1 + 32) + 88) navigationController];
    [v9 _mainQueue_continueSignInWithAuthenticationResults:v10 parentViewController:v11];
  }
}

- (id)_serviceOwnersManager
{
  serviceOwnersManager = self->_serviceOwnersManager;
  if (!serviceOwnersManager)
  {
    v4 = objc_alloc_init(MEMORY[0x1E6959A48]);
    v5 = [objc_alloc(MEMORY[0x1E698C268]) initWithAccountStore:v4];
    v6 = self->_serviceOwnersManager;
    self->_serviceOwnersManager = v5;

    serviceOwnersManager = self->_serviceOwnersManager;
  }

  return serviceOwnersManager;
}

- (AKAppleIDAuthenticationController)authenticationController
{
  authenticationController = self->_authenticationController;
  if (authenticationController)
  {
    v3 = authenticationController;
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x1E698DCC0]);
  }

  return v3;
}

- (id)_spinnerMessageForService:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 isEqualToString:*MEMORY[0x1E698C218]])
    {
      v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v6 = v5;
      v7 = @"SIGN_IN_SPINNER_LABEL_ICLOUD_REBRAND";
      goto LABEL_16;
    }

    if ([v4 isEqualToString:*MEMORY[0x1E698C238]])
    {
      v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v6 = v5;
      v7 = @"SIGN_IN_SPINNER_LABEL_STORE";
      goto LABEL_16;
    }

    if ([v4 isEqualToString:*MEMORY[0x1E698C230]])
    {
      v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v6 = v5;
      v7 = @"SIGN_IN_SPINNER_LABEL_IMESSAGE";
      goto LABEL_16;
    }

    if ([v4 isEqualToString:*MEMORY[0x1E698C220]])
    {
      v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v6 = v5;
      v7 = @"SIGN_IN_SPINNER_LABEL_FACETIME";
      goto LABEL_16;
    }

    if ([v4 isEqualToString:*MEMORY[0x1E698C228]])
    {
      v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v6 = v5;
      v7 = @"SIGN_IN_SPINNER_LABEL_GAMECENTER";
      goto LABEL_16;
    }

    v8 = _AAUILogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [AAUIServiceSignInController _spinnerMessageForService:];
    }
  }

  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = v5;
  v7 = @"SIGN_IN_SPINNER_LABEL_REBRAND";
LABEL_16:
  v9 = [v5 localizedStringForKey:v7 value:&stru_1F447F790 table:@"Localizable"];

  return v9;
}

- (id)_spinnerViewController
{
  spinnerViewController = self->_spinnerViewController;
  if (!spinnerViewController)
  {
    if (+[AAUIFeatureFlags isNewSignInProgressEnabled])
    {
      v4 = [AAUISpinnerViewController newSpinnerProgressViewForType:0 fullName:&stru_1F447F790];
    }

    else
    {
      v4 = objc_alloc_init(AAUISpinnerViewController);
      v5 = [(AAUISpinnerViewController *)v4 label];
      v6 = [(AAUIServiceSignInConfiguration *)self->_signInConfig serviceType];
      v7 = [(AAUIServiceSignInController *)self _spinnerMessageForService:v6];
      [v5 setText:v7];
    }

    v8 = self->_spinnerViewController;
    self->_spinnerViewController = &v4->super;

    spinnerViewController = self->_spinnerViewController;
  }

  return spinnerViewController;
}

- (BOOL)_showsServiceIcons
{
  v3 = [(AAUIServiceSignInConfiguration *)self->_signInConfig serviceType];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = [(AAUIServiceSignInConfiguration *)self->_signInConfig splitSignIn];

  return v5;
}

- (BOOL)_allowsAccountCreation
{
  v3 = [(AAUIServiceSignInConfiguration *)self->_signInConfig serviceTypes];
  v4 = [v3 count];

  v5 = [(AAUIServiceSignInConfiguration *)self->_signInConfig serviceTypes];
  if ([v5 count] == 1)
  {
    v6 = [(AAUIServiceSignInConfiguration *)self->_signInConfig serviceTypes];
    v7 = [v6 objectAtIndexedSubscript:0];
    v8 = v7 == *MEMORY[0x1E698C218];
  }

  else
  {
    v8 = 0;
  }

  return v4 == 0 || v8;
}

- (BOOL)_isAuthenticatingPrimary:(id)a3
{
  v4 = a3;
  v5 = [(AAUIServiceSignInConfiguration *)self->_signInConfig serviceType];
  if (v5 && (v6 = v5, -[AAUIServiceSignInConfiguration serviceType](self->_signInConfig, "serviceType"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isEqualToString:v4], v7, v6, !v8))
  {
    v11 = 0;
  }

  else
  {
    v9 = [(AAUIServiceSignInController *)self _serviceOwnersManager];
    v10 = [v9 accountForService:v4];

    v11 = v10 == 0;
  }

  return v11;
}

- (id)_serviceContextWithResults:(id)a3 parentViewController:(id)a4
{
  v6 = a3;
  signInConfig = self->_signInConfig;
  v8 = a4;
  v9 = [(AAUIServiceSignInConfiguration *)signInConfig serviceContext];

  if (v9 && (-[AAUIServiceSignInConfiguration serviceContext](self->_signInConfig, "serviceContext"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 mutableCopy], v10, v11))
  {
    v12 = _AAUILogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [AAUIServiceSignInController _serviceContextWithResults:parentViewController:];
    }

    v13 = 1;
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E698C258]);
    [v11 setShouldForceOperation:{-[AAUIServiceSignInConfiguration shouldForceOperation](self->_signInConfig, "shouldForceOperation")}];
    v13 = 0;
  }

  [v11 setAuthenticationResults:v6];
  [v11 setOperationUIPermissions:{-[AAUIServiceSignInConfiguration aidaOperationUIPermissions](self->_signInConfig, "aidaOperationUIPermissions")}];
  [v11 setViewController:v8];

  v14 = objc_alloc(MEMORY[0x1E6997858]);
  v15 = [v11 viewController];
  v16 = [v14 initWithPresentingViewController:v15];
  cdpUIController = self->_cdpUIController;
  self->_cdpUIController = v16;

  [(CDPUIController *)self->_cdpUIController setForceInlinePresentation:1];
  [v11 setCdpUiProvider:self->_cdpUIController];
  v18 = [v11 signInContexts];
  v19 = v18;
  if (v13)
  {
    v20 = [v18 objectForKeyedSubscript:*MEMORY[0x1E698C218]];
    flowControllerDelegate = self->_flowControllerDelegate;
    self->_flowControllerDelegate = v20;

    v22 = [v11 viewController];
    [(AAUISignInFlowControllerDelegate *)self->_flowControllerDelegate setPresentingViewController:v22];
  }

  else
  {
    v23 = [v18 mutableCopy];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = objc_opt_new();
    }

    v22 = v25;

    v26 = [AAUISignInFlowControllerDelegate alloc];
    v27 = [v11 viewController];
    v28 = [(AAUISignInFlowControllerDelegate *)v26 initWithPresentingViewController:v27];
    v29 = self->_flowControllerDelegate;
    self->_flowControllerDelegate = v28;

    [(AAUISignInFlowControllerDelegate *)self->_flowControllerDelegate setProgressViewAlreadyPresented:self->_spinnerViewController != 0];
    [v22 setObject:self->_flowControllerDelegate forKeyedSubscript:*MEMORY[0x1E698C218]];
    [v11 setSignInContexts:v22];
  }

  v30 = [(AAUIServiceSignInConfiguration *)self->_signInConfig localSecret];
  if (v30)
  {
  }

  else if (![(AAUIServiceSignInConfiguration *)self->_signInConfig isAttemptingBackupRestore])
  {
    goto LABEL_19;
  }

  v31 = [objc_alloc(MEMORY[0x1E69977E8]) initWithAuthenticationResults:v6];
  [v31 setIsAttemptingBackupRestore:{-[AAUIServiceSignInConfiguration isAttemptingBackupRestore](self->_signInConfig, "isAttemptingBackupRestore")}];
  v32 = [(AAUIServiceSignInConfiguration *)self->_signInConfig localSecret];

  if (v32)
  {
    v33 = [(AAUIServiceSignInConfiguration *)self->_signInConfig localSecret];
    v34 = [v33 validatedSecret];
    [v31 setCachedLocalSecret:v34];

    v35 = [(AAUIServiceSignInConfiguration *)self->_signInConfig localSecret];
    [v31 setCachedLocalSecretType:{objc_msgSend(v35, "secretType")}];
  }

  [(AAUISignInFlowControllerDelegate *)self->_flowControllerDelegate setCdpContext:v31];

LABEL_19:

  return v11;
}

- (AAUISignInViewController)signInViewController
{
  signInViewController = self->_signInViewController;
  if (signInViewController)
  {
    goto LABEL_16;
  }

  [MEMORY[0x1E698B940] verifyAndFixPersonaIfNeeded:self->_originalPersona desiredContext:self->_originalPersonaContext];
  v4 = objc_alloc_init(AAUISignInViewController);
  v5 = [(AAUIServiceSignInConfiguration *)self->_signInConfig serviceType];
  [(AAUISignInViewController *)v4 _setAkServiceType:AKServiceTypeFromAIDAServiceType(v5)];

  v6 = [(AAUIServiceSignInConfiguration *)self->_signInConfig username];
  [(AAUISignInViewController *)v4 setUsername:v6];

  v7 = [(AAUIServiceSignInConfiguration *)self->_signInConfig privacyLinkIdentifiers];
  [(AAUISignInViewController *)v4 setPrivacyLinkIdentifiers:v7];

  [(AAUISignInViewController *)v4 setAllowSkip:[(AAUIServiceSignInConfiguration *)self->_signInConfig allowSkip]];
  [(AAUISignInViewController *)v4 setShouldShowSystemBackButton:[(AAUIServiceSignInConfiguration *)self->_signInConfig shouldShowSystemBackButton]];
  [(AAUISignInViewController *)v4 setHidesBackOrCancelButton:[(AAUIServiceSignInConfiguration *)self->_signInConfig hidesBackOrCancelButton]];
  if (![(AAUIServiceSignInConfiguration *)self->_signInConfig canEditUsername])
  {
    [(AAUISignInViewController *)v4 setCanEditUsername:0];
    goto LABEL_6;
  }

  if ([(AAUIServiceSignInConfiguration *)self->_signInConfig shouldDisableAccountCreation])
  {
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v8 = [(AAUIServiceSignInController *)self _allowsAccountCreation];
LABEL_7:
  [(AAUISignInViewController *)v4 setAllowsAccountCreation:v8];
  if ([(AAUIServiceSignInConfiguration *)self->_signInConfig offeriCloudAMSSplitSignIn])
  {
    [(AAUISignInViewController *)v4 setShowOtherOptions:1];
  }

  [(AAUISignInViewController *)v4 setDelegate:self];
  [(AAUISignInViewController *)v4 setShowServiceIcons:[(AAUIServiceSignInController *)self _showsServiceIcons]];
  v9 = [AAUIServiceSignInMessageProvider messageForConfiguration:self->_signInConfig];
  if (v9)
  {
    [(AAUISignInViewController *)v4 setMessageLabel:v9];
  }

  if ([(AAUIServiceSignInController *)self _isAuthenticatingPrimary:*MEMORY[0x1E698C218]])
  {
    [(AAUISignInViewController *)v4 _setShouldAnticipatePiggybacking:1];
    [(AAUISignInViewController *)v4 _setAkServiceType:1];
  }

  if ([(AAUIServiceSignInConfiguration *)self->_signInConfig skipShieldUI])
  {
    v10 = [objc_alloc(MEMORY[0x1E698DDC8]) initWithGivenName:0 lastName:0 ageRange:0];
    [(AAUISignInViewController *)v4 setProtoAccountContext:v10];
  }

  [(AAUISignInViewController *)v4 setShowsChildSignIn:[(AAUIServiceSignInConfiguration *)self->_signInConfig showsChildSignIn]];
  v11 = [(AAUIServiceSignInController *)self akURLBag];
  [(AAUISignInViewController *)v4 setAKURLBag:v11];

  v12 = self->_signInViewController;
  self->_signInViewController = v4;

  signInViewController = self->_signInViewController;
LABEL_16:

  return signInViewController;
}

- (id)_alertControllerForReusingAccount:(id)a3 serviceType:(id)a4 inViewController:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v56 = a5;
  v55 = a6;
  v60 = v11;
  v12 = AALocalizedStringForServiceType();
  v58 = self;
  v13 = [(AAUIServiceSignInConfiguration *)self->_signInConfig serviceType];
  v65 = AALocalizedStringForServiceType();

  v14 = [v10 userFullName];
  v62 = v14;
  v63 = v12;
  if (v14)
  {
    v15 = v14;
    v16 = MEMORY[0x1E696AEC0];
    v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"SIGN_IN_CONTINUE_USING_TITLE" value:&stru_1F447F790 table:@"Localizable"];
    v19 = v15;
    v64 = [v16 stringWithFormat:v18, v65, v15];

    v20 = MEMORY[0x1E696AEC0];
    v21 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"SIGN_IN_CONTINUE_USING_MESSAGE_REBRAND" value:&stru_1F447F790 table:@"Localizable"];
    v23 = [v10 aa_formattedUsername];
    v24 = [v20 stringWithFormat:v22, v12, v23, v15, v65];

    v25 = MEMORY[0x1E696AEC0];
    v26 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v27 = [v26 localizedStringForKey:@"SIGN_IN_CONTINUE_USING_DIFFERENT" value:&stru_1F447F790 table:@"Localizable"];
    v54 = [v25 stringWithFormat:v27, v19];
  }

  else
  {
    [v10 aa_formattedUsername];
    v26 = v28 = v12;
    v29 = MEMORY[0x1E696AEC0];
    v30 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v31 = [v30 localizedStringForKey:@"SIGN_IN_CONTINUE_USING_TITLE_USERNAME" value:&stru_1F447F790 table:@"Localizable"];
    v64 = [v29 stringWithFormat:v31, v65, v26];

    v32 = MEMORY[0x1E696AEC0];
    v33 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v34 = [v33 localizedStringForKey:@"SIGN_IN_CONTINUE_USING_MESSAGE_USERNAME_REBRAND" value:&stru_1F447F790 table:@"Localizable"];
    v24 = [v32 stringWithFormat:v34, v28, v26, v26, v65];

    v35 = MEMORY[0x1E696AEC0];
    v27 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v36 = [v27 localizedStringForKey:@"SIGN_IN_CONTINUE_USING_DIFFERENT_USERNAME" value:&stru_1F447F790 table:@"Localizable"];
    v54 = [v35 stringWithFormat:v36, v26];
  }

  v37 = [MEMORY[0x1E69DC650] alertWithTitle:v64 message:v24];
  v38 = MEMORY[0x1E69DC648];
  v39 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v40 = [v39 localizedStringForKey:@"SIGN_IN_CONTINUE_USING_SAME" value:&stru_1F447F790 table:@"Localizable"];
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __105__AAUIServiceSignInController__alertControllerForReusingAccount_serviceType_inViewController_completion___block_invoke;
  v70[3] = &unk_1E820DE90;
  v70[4] = v58;
  v71 = v10;
  v72 = v60;
  v73 = v56;
  v41 = v55;
  v74 = v41;
  v59 = v56;
  v61 = v60;
  v57 = v10;
  v42 = [v38 actionWithTitle:v40 style:0 handler:v70];
  [v37 addAction:v42];

  v43 = MEMORY[0x1E69DC648];
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __105__AAUIServiceSignInController__alertControllerForReusingAccount_serviceType_inViewController_completion___block_invoke_105;
  v68[3] = &unk_1E820CA70;
  v44 = v41;
  v69 = v44;
  v45 = [v43 actionWithTitle:v54 style:0 handler:v68];
  [v37 addAction:v45];

  v46 = MEMORY[0x1E69DC648];
  v47 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v48 = [v47 localizedStringForKey:@"SIGN_IN_CONTINUE_USING_CANCEL" value:&stru_1F447F790 table:@"Localizable"];
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __105__AAUIServiceSignInController__alertControllerForReusingAccount_serviceType_inViewController_completion___block_invoke_109;
  v66[3] = &unk_1E820CA70;
  v67 = v44;
  v49 = v44;
  v50 = [v46 actionWithTitle:v48 style:0 handler:v66];
  [v37 addAction:v50];

  v51 = [v37 actions];
  v52 = [v51 firstObject];
  [v37 setPreferredAction:v52];

  return v37;
}

uint64_t __105__AAUIServiceSignInController__alertControllerForReusingAccount_serviceType_inViewController_completion___block_invoke(uint64_t a1)
{
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C5355000, v2, OS_LOG_TYPE_DEFAULT, "User opted to continue using account.", v4, 2u);
  }

  return [*(a1 + 32) _authenticateExistingAccount:*(a1 + 40) serviceType:*(a1 + 48) inViewController:*(a1 + 56) completion:*(a1 + 64)];
}

uint64_t __105__AAUIServiceSignInController__alertControllerForReusingAccount_serviceType_inViewController_completion___block_invoke_105(uint64_t a1)
{
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1C5355000, v2, OS_LOG_TYPE_DEFAULT, "User opted to sign in as a different account.", v4, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void __105__AAUIServiceSignInController__alertControllerForReusingAccount_serviceType_inViewController_completion___block_invoke_109(uint64_t a1)
{
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C5355000, v2, OS_LOG_TYPE_DEFAULT, "User canceled option to continue using...", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-1];
  (*(v3 + 16))(v3, 0, v4);
}

- (void)prepareInViewController:(id)a3 completion:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v23 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__AAUIServiceSignInController_prepareInViewController_completion___block_invoke;
  aBlock[3] = &unk_1E820D1E0;
  aBlock[4] = self;
  v22 = v6;
  v29 = v22;
  v21 = _Block_copy(aBlock);
  v7 = [(AAUIServiceSignInController *)self _serviceOwnersManager];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = [objc_opt_class() supportedServices];
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [v7 accountForService:v13];
        v15 = [v14 username];
        v16 = [v15 length];

        if (v16)
        {
          v20 = _AAUILogSystem();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v31 = v13;
            _os_log_impl(&dword_1C5355000, v20, OS_LOG_TYPE_DEFAULT, "Found account for service %{public}@, prompting for sign in...", buf, 0xCu);
          }

          v19 = v23;
          v18 = v21;
          [(AAUIServiceSignInController *)self _mainQueue_presentContinueUsingInViewController:v23 account:v14 serviceType:v13 completion:v21];

          goto LABEL_15;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v17 = _AAUILogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v17, OS_LOG_TYPE_DEFAULT, "No primary account to attempt continuation against, bailing...", buf, 2u);
  }

  v18 = v21;
  (*(v21 + 2))(v21, 0, 0);
  v19 = v23;
LABEL_15:
}

void __66__AAUIServiceSignInController_prepareInViewController_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = a2;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [*(*(a1 + 32) + 88) setAuthenticationResults:v5];

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v7 == 0);
  }
}

- (void)_mainQueue_presentContinueUsingInViewController:(id)a3 account:(id)a4 serviceType:(id)a5 completion:(id)a6
{
  v10 = a6;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __110__AAUIServiceSignInController__mainQueue_presentContinueUsingInViewController_account_serviceType_completion___block_invoke;
  v14[3] = &unk_1E820D630;
  v15 = v10;
  v11 = v10;
  v12 = a3;
  v13 = [(AAUIServiceSignInController *)self _alertControllerForReusingAccount:a4 serviceType:a5 inViewController:v12 completion:v14];
  [v12 presentViewController:v13 animated:1 completion:0];
}

void __110__AAUIServiceSignInController__mainQueue_presentContinueUsingInViewController_account_serviceType_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = v5;
  if (v12)
  {
    v7 = *(*(a1 + 32) + 16);
LABEL_5:
    v7();
    goto LABEL_6;
  }

  if (v5)
  {
    v7 = *(*(a1 + 32) + 16);
    goto LABEL_5;
  }

  v8 = [MEMORY[0x1E698DDA0] sharedNetworkObserver];
  v9 = [v8 isNetworkReachable];

  v10 = *(a1 + 32);
  if (v9)
  {
    (*(v10 + 16))(v10, 0, 0);
  }

  else
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E698B7E0] code:-8009 userInfo:0];
    (*(v10 + 16))(v10, 0, v11);
  }

LABEL_6:
}

- (void)_invokeShieldUIWithViewController:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E698DE80]);
  [v8 setPresentingViewController:v6];
  [v8 setAuthenticationType:2];
  v9 = objc_alloc_init(MEMORY[0x1E698DDC8]);
  v10 = [(AAUIServiceSignInController *)self ageAttestationStateProvider];
  if ([v10 ageBasedAccountSupportEnabled])
  {
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = _AKLogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [AAUIServiceSignInController _invokeShieldUIWithViewController:completion:];
      }

      [v9 setShouldForceShieldUI:1];
      [v8 setProtoAccountContext:v9];
    }
  }

  else
  {
  }

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__14;
  v22 = __Block_byref_object_dispose__14;
  v23 = [(AAUIServiceSignInController *)self authenticationController];
  v13 = v19[5];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__AAUIServiceSignInController__invokeShieldUIWithViewController_completion___block_invoke;
  v15[3] = &unk_1E820B730;
  v17 = &v18;
  v14 = v7;
  v16 = v14;
  [v13 authenticateWithContext:v8 completion:v15];

  _Block_object_dispose(&v18, 8);
}

void __76__AAUIServiceSignInController__invokeShieldUIWithViewController_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
  v7 = a3;
  v8 = a2;

  (*(*(a1 + 32) + 16))();
}

- (void)_authenticateExistingAccount:(id)a3 serviceType:(id)a4 inViewController:(id)a5 completion:(id)a6
{
  v38 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_alloc_init(MEMORY[0x1E698DE80]);
  [v14 setShouldOfferSecurityUpgrade:0];
  v15 = [(AAUIServiceSignInController *)self _serviceOwnersManager];
  v16 = [v15 altDSIDForAccount:v10 service:v11];
  [v14 setAltDSID:v16];

  v17 = [(AAUIServiceSignInController *)self _serviceOwnersManager];
  v18 = [v17 DSIDForAccount:v10 service:v11];
  [v14 setDSID:v18];

  v19 = [v10 username];
  [v14 setIsUsernameEditable:{objc_msgSend(v19, "length") == 0}];

  [v14 setPresentingViewController:v12];
  v20 = [(AAUIServiceSignInConfiguration *)self->_signInConfig serviceType];
  [v14 setServiceType:AKServiceTypeFromAIDAServiceType(v20)];

  v21 = [v10 username];
  [v14 setUsername:v21];

  LODWORD(v18) = [(AAUIServiceSignInController *)self _isAuthenticatingPrimary:*MEMORY[0x1E698C218]];
  v22 = _AAUILogSystem();
  v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    if (v23)
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v25;
      _os_log_impl(&dword_1C5355000, v22, OS_LOG_TYPE_DEFAULT, "%@ detected primary iCloud sign in.", &buf, 0xCu);
    }

    [v14 setAnticipateEscrowAttempt:1];
    [v14 setServiceType:1];
    [v14 setAuthenticationType:2];
    [v14 setShouldOfferSecurityUpgrade:1];
    [v14 setSupportsPiggybacking:1];
  }

  else
  {
    if (v23)
    {
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v27;
      _os_log_impl(&dword_1C5355000, v22, OS_LOG_TYPE_DEFAULT, "%@ detected non-primary iCloud sign in.", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__14;
  v36 = __Block_byref_object_dispose__14;
  v37 = [(AAUIServiceSignInController *)self authenticationController];
  v28 = *(*(&buf + 1) + 40);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __100__AAUIServiceSignInController__authenticateExistingAccount_serviceType_inViewController_completion___block_invoke;
  v30[3] = &unk_1E820B730;
  p_buf = &buf;
  v29 = v13;
  v31 = v29;
  [v28 authenticateWithContext:v14 completion:v30];

  _Block_object_dispose(&buf, 8);
}

void __100__AAUIServiceSignInController__authenticateExistingAccount_serviceType_inViewController_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__AAUIServiceSignInController__authenticateExistingAccount_serviceType_inViewController_completion___block_invoke_2;
  block[3] = &unk_1E820BBE8;
  v9 = *(a1 + 32);
  v14 = v6;
  v15 = v9;
  v13 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_mainQueue_continueSignInWithAuthenticationResults:(id)a3 parentViewController:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __103__AAUIServiceSignInController__mainQueue_continueSignInWithAuthenticationResults_parentViewController___block_invoke;
  aBlock[3] = &unk_1E820C1A8;
  aBlock[4] = self;
  v8 = _Block_copy(aBlock);
  v9 = [(AAUIServiceSignInConfiguration *)self->_signInConfig serviceTypes];
  v10 = [v9 count];

  v11 = _AAUILogSystem();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = [(AAUIServiceSignInConfiguration *)self->_signInConfig serviceTypes];
      *buf = 138543362;
      v17 = v13;
      _os_log_impl(&dword_1C5355000, v11, OS_LOG_TYPE_DEFAULT, "Client opted to sign in %{public}@, attempting sign in now...", buf, 0xCu);
    }

    v14 = [(AAUIServiceSignInConfiguration *)self->_signInConfig serviceTypes];
    [(AAUIServiceSignInController *)self _prepareToSignInForServices:v14 withAuthenticationResults:v7 parentViewController:v6];

    v6 = v7;
    v7 = v14;
  }

  else
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v11, OS_LOG_TYPE_DEFAULT, "No service specified by client, attempting sign in for all...", buf, 2u);
    }

    [(AAUIServiceSignInController *)self continueSignInWithAuthenticationResults:v7 viewController:v6 completion:v8];
  }
}

void __103__AAUIServiceSignInController__mainQueue_continueSignInWithAuthenticationResults_parentViewController___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = _AAUILogSystem();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v7, OS_LOG_TYPE_DEFAULT, "AAUISignInController signed in with authentication results successfully!", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __103__AAUIServiceSignInController__mainQueue_continueSignInWithAuthenticationResults_parentViewController___block_invoke_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__AAUIServiceSignInController__mainQueue_continueSignInWithAuthenticationResults_parentViewController___block_invoke_115;
  block[3] = &unk_1E820DEB8;
  v8 = *(a1 + 32);
  v12 = a2;
  block[4] = v8;
  v11 = v5;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)continueSignInWithAuthenticationResults:(id)a3 viewController:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [(AAUIServiceSignInController *)self _serviceContextWithResults:a3 parentViewController:a4];
  v10 = [(AAUIServiceSignInController *)self _serviceOwnersManager];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v12 = [(AAUIServiceSignInController *)self _serviceOwnersManager];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __97__AAUIServiceSignInController_continueSignInWithAuthenticationResults_viewController_completion___block_invoke;
    v14[3] = &unk_1E820C308;
    v15 = v8;
    [v12 signInToAllServicesInBackgroundUsingContext:v9 completion:v14];
  }

  else
  {
    v13 = _AAUILogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [AAUIServiceSignInController continueSignInWithAuthenticationResults:viewController:completion:];
    }

    if (v8)
    {
      (*(v8 + 2))(v8, 0, 0);
    }
  }
}

void __97__AAUIServiceSignInController_continueSignInWithAuthenticationResults_viewController_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__AAUIServiceSignInController_continueSignInWithAuthenticationResults_viewController_completion___block_invoke_2;
  aBlock[3] = &unk_1E820D140;
  v11 = *(a1 + 32);
  v12 = a2;
  v6 = v5;
  v10 = v6;
  v7 = _Block_copy(aBlock);
  if ((a2 & 1) == 0)
  {
    v8 = _AAUILogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = v6;
      _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "Sign in attempt for iCloud failed, error: %{public}@", buf, 0xCu);
    }
  }

  v7[2](v7);
}

void __97__AAUIServiceSignInController_continueSignInWithAuthenticationResults_viewController_completion___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__AAUIServiceSignInController_continueSignInWithAuthenticationResults_viewController_completion___block_invoke_3;
  block[3] = &unk_1E820D140;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v3 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __97__AAUIServiceSignInController_continueSignInWithAuthenticationResults_viewController_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

- (void)_delegate_signInControllerDidCompleteWithSuccess:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__14;
  v23[4] = __Block_byref_object_dispose__14;
  v7 = [(AAUIServiceSignInConfiguration *)self->_signInConfig serviceType];
  v8 = v7;
  v9 = *MEMORY[0x1E698C218];
  if (v7)
  {
    v9 = v7;
  }

  v24 = v9;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__AAUIServiceSignInController__delegate_signInControllerDidCompleteWithSuccess_error___block_invoke;
  aBlock[3] = &unk_1E820DEE0;
  aBlock[4] = self;
  aBlock[5] = v23;
  v10 = _Block_copy(aBlock);
  v11 = v10;
  if (!v6)
  {
    (*(v10 + 2))(v10, v4, 0);
    goto LABEL_19;
  }

  v12 = [v6 aa_isAAErrorWithCode:-1];
  v13 = [v6 domain];
  v14 = [v13 isEqualToString:*MEMORY[0x1E69977D8]];

  if (v14)
  {
    if ([v6 shouldDisplayToUser])
    {
LABEL_13:
      v16 = _AAUILogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [AAUIServiceSignInController _delegate_signInControllerDidCompleteWithSuccess:error:];
      }

      v17 = [(AAUIServiceSignInConfiguration *)self->_signInConfig navigationController];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __86__AAUIServiceSignInController__delegate_signInControllerDidCompleteWithSuccess_error___block_invoke_122;
      v18[3] = &unk_1E820DF08;
      v19 = v6;
      v20 = v11;
      v21 = v4;
      [(AAUIServiceSignInController *)self _mainQueue_presentAlertForError:v19 inViewController:v17 completion:v18];

      goto LABEL_19;
    }
  }

  else if (([v6 aa_isAASignInErrorWithCode:-8006] & 1) == 0 && ((objc_msgSend(v6, "ak_isUserCancelError") | v12) & 1) == 0)
  {
    goto LABEL_13;
  }

  if (v12)
  {
    v15 = _AAUILogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [AAUIServiceSignInController _delegate_signInControllerDidCompleteWithSuccess:error:];
    }
  }

  else
  {
    v15 = _AAUILogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [AAUIServiceSignInController _delegate_signInControllerDidCompleteWithSuccess:error:];
    }
  }

  (v11)[2](v11, v4, v6);
LABEL_19:

  _Block_object_dispose(v23, 8);
}

void __86__AAUIServiceSignInController__delegate_signInControllerDidCompleteWithSuccess_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [*(*(a1 + 32) + 88) serviceDelegate];
  if ([v5 aa_isAAErrorWithCode:-1])
  {
    v7 = _AAUILogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v5;
      _os_log_impl(&dword_1C5355000, v7, OS_LOG_TYPE_DEFAULT, "AAUIServiceSignInController calling delegate call serviceSignInControllerDidCancel for error: %@", &v14, 0xCu);
    }

    v8 = [*(*(a1 + 32) + 88) navigationController];
    [v6 serviceSignInControllerDidCancel:v8];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v9 = [*(*(a1 + 32) + 88) navigationController];
      [v6 serviceSignInController:v9 didCompleteWithSuccess:a2 error:v5];
    }

    if (objc_opt_respondsToSelector())
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v11 = [objc_alloc(MEMORY[0x1E698C260]) initWithSuccess:a2 error:v5 type:*(*(*(a1 + 40) + 8) + 40)];
      [v10 setObject:v11 forKeyedSubscript:*(*(*(a1 + 40) + 8) + 40)];

      v12 = [*(*(a1 + 32) + 88) navigationController];
      v13 = [v10 copy];
      [v6 serviceSignInController:v12 didCompleteWithOperationsResults:v13];
    }
  }
}

uint64_t __86__AAUIServiceSignInController__delegate_signInControllerDidCompleteWithSuccess_error___block_invoke_122(uint64_t a1)
{
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __86__AAUIServiceSignInController__delegate_signInControllerDidCompleteWithSuccess_error___block_invoke_122_cold_1();
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)controllerFinishedWithAIDAResults:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__AAUIServiceSignInController_controllerFinishedWithAIDAResults___block_invoke;
  aBlock[3] = &unk_1E820DF50;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v6 = *MEMORY[0x1E698C218];
  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x1E698C218]];
  if (v7)
  {
    v8 = v7;
    v9 = [v4 objectForKeyedSubscript:v6];
    v10 = [v9 error];

    if (v10)
    {
      v11 = [v4 objectForKeyedSubscript:v6];
      v12 = [v11 error];

      v13 = [v12 aa_isAAErrorWithCode:-1];
      v14 = [v12 domain];
      v15 = [v14 isEqualToString:*MEMORY[0x1E69977D8]];

      if (v15)
      {
        if (![v12 shouldDisplayToUser])
        {
LABEL_5:
          v16 = _AAUILogSystem();
          v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
          if (v13)
          {
            if (v17)
            {
              [AAUIServiceSignInController controllerFinishedWithAIDAResults:];
            }
          }

          else if (v17)
          {
            [AAUIServiceSignInController _delegate_signInControllerDidCompleteWithSuccess:error:];
          }

          v5[2](v5, v4);
LABEL_16:

          goto LABEL_17;
        }
      }

      else if (([v12 aa_isAASignInErrorWithCode:-8006] | v13))
      {
        goto LABEL_5;
      }

      v18 = _AAUILogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [AAUIServiceSignInController _delegate_signInControllerDidCompleteWithSuccess:error:];
      }

      v19 = [(AAUIServiceSignInConfiguration *)self->_signInConfig navigationController];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __65__AAUIServiceSignInController_controllerFinishedWithAIDAResults___block_invoke_126;
      v20[3] = &unk_1E820BAD0;
      v21 = v12;
      v23 = v5;
      v22 = v4;
      [(AAUIServiceSignInController *)self _mainQueue_presentAlertForError:v21 inViewController:v19 completion:v20];

      goto LABEL_16;
    }
  }

  v5[2](v5, v4);
LABEL_17:
}

void __65__AAUIServiceSignInController_controllerFinishedWithAIDAResults___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 88) serviceDelegate];
  v5 = [v3 objectForKey:*MEMORY[0x1E698C218]];
  v6 = [v5 error];
  v7 = [v6 aa_isAAErrorWithCode:-1];

  if (v7)
  {
    v8 = _AAUILogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v5 error];
      v22 = 138412290;
      v23 = v9;
      _os_log_impl(&dword_1C5355000, v8, OS_LOG_TYPE_DEFAULT, "AAUIServiceSignInController calling delegate call serviceSignInControllerDidCancel for error: %@", &v22, 0xCu);
    }

    v10 = [*(*(a1 + 32) + 88) navigationController];
    [v4 serviceSignInControllerDidCancel:v10];
LABEL_20:

    goto LABEL_21;
  }

  if (objc_opt_respondsToSelector())
  {
    v11 = [*(*(a1 + 32) + 88) navigationController];
    [v4 serviceSignInController:v11 didCompleteWithOperationsResults:v3];
  }

  if (objc_opt_respondsToSelector())
  {
    if (v5)
    {
      v12 = _AAUILogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v5 error];
        v22 = 138412290;
        v23 = v13;
        _os_log_impl(&dword_1C5355000, v12, OS_LOG_TYPE_DEFAULT, "AAUIServiceSignInController calling deprecated delegate callback for cloud service type %@", &v22, 0xCu);
      }

      v10 = [*(*(a1 + 32) + 88) navigationController];
      v14 = [v5 error];
      v15 = [v5 error];
      [v4 serviceSignInController:v10 didCompleteWithSuccess:v14 == 0 error:v15];
    }

    else
    {
      v16 = [v3 allValues];
      v10 = [v16 aaf_filter:&__block_literal_global_25];

      if ([v10 count])
      {
        v17 = [v10 firstObject];
        v18 = _AAUILogSystem();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          __65__AAUIServiceSignInController_controllerFinishedWithAIDAResults___block_invoke_cold_1(v17, v18);
        }

        v19 = [*(*(a1 + 32) + 88) navigationController];
        v20 = [v17 error];
        [v4 serviceSignInController:v19 didCompleteWithSuccess:0 error:v20];
      }

      else
      {
        v21 = _AAUILogSystem();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v22) = 0;
          _os_log_impl(&dword_1C5355000, v21, OS_LOG_TYPE_DEFAULT, "AAUIServiceSignInController calling deprecated delegate callback for success", &v22, 2u);
        }

        v17 = [*(*(a1 + 32) + 88) navigationController];
        [v4 serviceSignInController:v17 didCompleteWithSuccess:1 error:0];
      }
    }

    goto LABEL_20;
  }

LABEL_21:
}

uint64_t __65__AAUIServiceSignInController_controllerFinishedWithAIDAResults___block_invoke_126(uint64_t a1)
{
  v2 = _AAUILogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __86__AAUIServiceSignInController__delegate_signInControllerDidCompleteWithSuccess_error___block_invoke_122_cold_1();
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)_prepareToSignInForServices:(id)a3 withAuthenticationResults:(id)a4 parentViewController:(id)a5
{
  v18[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count] == 1 && (objc_msgSend(v8, "objectAtIndexedSubscript:", 0), v11 = objc_claimAutoreleasedReturnValue(), v12 = *MEMORY[0x1E698C218], v11, v11 == v12))
  {
    v14 = _AAUILogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_1C5355000, v14, OS_LOG_TYPE_DEFAULT, "Detected cloud only service sign in.", v17, 2u);
    }

    v13 = [(AAUIServiceSignInController *)self _serviceContextForCloudAndInactiveStoreWithAuthResults:v9 parentViewController:v10];
    v15 = *MEMORY[0x1E698C238];
    v18[0] = v12;
    v18[1] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];

    v8 = v16;
  }

  else
  {
    v13 = [(AAUIServiceSignInController *)self _serviceContextWithResults:v9 parentViewController:v10];
  }

  [(AAUIServiceSignInController *)self _attemptSignInForServices:v8 serviceContext:v13];
}

- (void)_attemptSignInForServices:(id)a3 serviceContext:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = _AAUILogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [AAUIServiceSignInController _attemptSignInForServices:v8 serviceContext:?];
  }

  [MEMORY[0x1E698B940] verifyAndFixPersonaIfNeeded:self->_originalPersona desiredContext:self->_originalPersonaContext];
  v9 = _AAUILogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = v6;
    _os_log_impl(&dword_1C5355000, v9, OS_LOG_TYPE_DEFAULT, "Attempting sign in for services %{public}@ with authentication results", buf, 0xCu);
  }

  v10 = [(AAUIServiceSignInController *)self _serviceOwnersManager];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v12 = [(AAUIServiceSignInController *)self _serviceOwnersManager];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __72__AAUIServiceSignInController__attemptSignInForServices_serviceContext___block_invoke;
    v18[3] = &unk_1E820DF78;
    v18[4] = self;
    [v12 signInToServices:v6 usingContext:v7 completion:v18];
  }

  else
  {
    v13 = _AALogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [AAUIServiceSignInController _attemptSignInForServices:serviceContext:];
    }

    v14 = objc_alloc(MEMORY[0x1E698C260]);
    v15 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-3];
    v16 = *MEMORY[0x1E698C218];
    v12 = [v14 initWithSuccess:0 error:v15 type:*MEMORY[0x1E698C218]];

    v19 = v16;
    v20 = v12;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    [(AAUIServiceSignInController *)self controllerFinishedWithAIDAResults:v17];
  }
}

void __72__AAUIServiceSignInController__attemptSignInForServices_serviceContext___block_invoke(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = _AAUILogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1C5355000, v6, OS_LOG_TYPE_DEFAULT, "AAUISignInController sign in for services completed successfully! %@ ", buf, 0xCu);
    }
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__AAUIServiceSignInController__attemptSignInForServices_serviceContext___block_invoke_127;
  v8[3] = &unk_1E820BEB8;
  v8[4] = *(a1 + 32);
  v9 = v5;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

- (id)_serviceContextForCloudAndInactiveStoreWithAuthResults:(id)a3 parentViewController:(id)a4
{
  v4 = [(AAUIServiceSignInController *)self _serviceContextWithResults:a3 parentViewController:a4];
  v5 = [v4 signInContexts];
  v6 = [v5 mutableCopy];

  v7 = objc_alloc_init(MEMORY[0x1E698CB28]);
  [v7 setCanMakeAccountActive:0];
  [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x1E698C238]];
  v8 = [v6 copy];
  [v4 setSignInContexts:v8];

  v9 = [v4 copy];

  return v9;
}

- (void)signInViewController:(id)a3 didCompleteWithAuthenticationResults:(id)a4
{
  v8 = a4;
  v9 = a3;
  v10 = _AAUILogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v10, OS_LOG_TYPE_DEFAULT, "Sign in view controller completed with authentication results!", buf, 2u);
  }

  v11 = [v9 parentViewController];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__AAUIServiceSignInController_signInViewController_didCompleteWithAuthenticationResults___block_invoke;
  aBlock[3] = &unk_1E820BF58;
  aBlock[4] = self;
  v12 = v8;
  v25 = v12;
  v13 = v11;
  v26 = v13;
  v14 = _Block_copy(aBlock);
  if (!+[AAUIFeatureFlags isNewSignInProgressEnabled])
  {
    goto LABEL_12;
  }

  v15 = [(AAUIServiceSignInConfiguration *)self->_signInConfig serviceTypes];
  v16 = [v15 count];
  if (v16)
  {
    v17 = *MEMORY[0x1E698C218];
    goto LABEL_6;
  }

  v21 = [(AAUIServiceSignInConfiguration *)self->_signInConfig serviceType];
  if (!v21)
  {
LABEL_16:

    goto LABEL_17;
  }

  v4 = v21;
  v22 = [(AAUIServiceSignInConfiguration *)self->_signInConfig serviceType];
  v5 = v22;
  v17 = *MEMORY[0x1E698C218];
  if (v22 == *MEMORY[0x1E698C218])
  {

    goto LABEL_16;
  }

LABEL_6:
  v18 = [(AAUIServiceSignInConfiguration *)self->_signInConfig serviceTypes];
  v19 = [v18 containsObject:v17];

  if (!v16)
  {
  }

  if ((v19 & 1) == 0)
  {
    v20 = _AAUILogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [AAUIServiceSignInController signInViewController:didCompleteWithAuthenticationResults:];
    }

LABEL_12:
    [(AAUIServiceSignInController *)self _mainQueue_presentSpinnerViewControllerInParentViewController:v13 withCompletion:v14];
    goto LABEL_20;
  }

LABEL_17:
  v23 = _AAUILogSystem();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    [AAUIServiceSignInController signInViewController:didCompleteWithAuthenticationResults:];
  }

  v14[2](v14);
LABEL_20:
}

- (void)signInViewControllerDidCancel:(id)a3
{
  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "Sign in view controller canceled!", v11, 2u);
  }

  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (self->_splitAccountSignInController)
  {
    v5 = [(AAUIServiceSignInConfiguration *)self->_signInConfig navigationController];
    v6 = [v5 topViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = [(AAUIServiceSignInConfiguration *)self->_signInConfig navigationController];
      v9 = [v8 popViewControllerAnimated:1];
    }

    else
    {
      v8 = _AAUILogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [AAUIServiceSignInController signInViewControllerDidCancel:];
      }
    }

    splitAccountSignInController = self->_splitAccountSignInController;
    self->_splitAccountSignInController = 0;
  }

  else
  {
    [(AAUIServiceSignInController *)self _delegate_serviceSignInControllerDidCancel];
  }
}

- (void)_delegate_serviceSignInControllerDidCancel
{
  v4 = [(AAUIServiceSignInConfiguration *)self->_signInConfig serviceDelegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = [(AAUIServiceSignInConfiguration *)self->_signInConfig navigationController];
    [v4 serviceSignInControllerDidCancel:v3];
  }
}

- (void)signInViewControllerDidSkip:(id)a3
{
  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "Sign in view controller skipped!", v7, 2u);
  }

  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = [(AAUIServiceSignInConfiguration *)self->_signInConfig serviceDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(AAUIServiceSignInConfiguration *)self->_signInConfig navigationController];
    [v5 serviceSignInController:v6 didSkipWithReason:0];
  }
}

- (void)signInViewControllerDidSelectChildSignIn:(id)a3
{
  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "Sign in view controller selected child sign in option", v7, 2u);
  }

  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = [(AAUIServiceSignInConfiguration *)self->_signInConfig serviceDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(AAUIServiceSignInConfiguration *)self->_signInConfig navigationController];
    [v5 serviceSignInController:v6 didSkipWithReason:1];
  }
}

- (void)signInViewControllerDidSelectOtherOptions:(id)a3
{
  if (-[AAUIServiceSignInConfiguration offeriCloudAMSSplitSignIn](self->_signInConfig, "offeriCloudAMSSplitSignIn", a3) && (-[AAUIServiceSignInConfiguration serviceTypes](self->_signInConfig, "serviceTypes"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 count], v4, !v5))
  {
    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v6 = [v7 localizedStringForKey:@"SIGN_IN_OTHER_SIGN_IN_OPTIONS" value:&stru_1F447F790 table:@"Localizable"];

    v8 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"SIGN_IN_OTHER_SIGN_IN_OPTIONS_USE_MULTIPLE" value:&stru_1F447F790 table:@"Localizable"];

    v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"CANCEL" value:&stru_1F447F790 table:@"Localizable"];

    v12 = [MEMORY[0x1E69DC650] alertWithTitle:v6 message:0];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __73__AAUIServiceSignInController_signInViewControllerDidSelectOtherOptions___block_invoke;
    v16[3] = &unk_1E820BFA8;
    v16[4] = self;
    v13 = [MEMORY[0x1E69DC648] actionWithTitle:v9 style:0 handler:v16];
    [v12 addAction:v13];

    v14 = [MEMORY[0x1E69DC648] actionWithTitle:v11 style:1 handler:0];
    [v12 addAction:v14];

    v15 = [(AAUIServiceSignInConfiguration *)self->_signInConfig navigationController];
    [v15 presentViewController:v12 animated:1 completion:0];
  }

  else
  {
    v6 = _AAUILogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [AAUIServiceSignInController signInViewControllerDidSelectOtherOptions:];
    }
  }
}

- (void)startSplitAcountSignInFlow
{
  v3 = [AAUIAppleIDSignInConfigSplitAccountiCloud alloc];
  v4 = [(AAUIServiceSignInConfiguration *)self->_signInConfig navigationController];
  v14 = [(AAUIAppleIDSignInConfigSplitAccountiCloud *)v3 initWithNavController:v4];

  v5 = [[AAUIOnboardingSignInController alloc] initWithSetupSignInConfig:v14];
  splitAccountSignInController = self->_splitAccountSignInController;
  self->_splitAccountSignInController = v5;

  v7 = [(AAUIServiceSignInController *)self authenticationController];
  v8 = [(AAUIOnboardingSignInController *)self->_splitAccountSignInController serviceController];
  v9 = [v8 signInViewController];
  [v9 setAuthenticationController:v7];

  v10 = [(AAUIServiceSignInController *)self _serviceOwnersManager];
  v11 = [(AAUIOnboardingSignInController *)self->_splitAccountSignInController serviceController];
  [v11 setServiceOwnersManager:v10];

  v12 = [[AAUIOnboardingSplitSignInDelegate alloc] initWithServiceSignInController:self];
  splitSignInDelegate = self->_splitSignInDelegate;
  self->_splitSignInDelegate = v12;

  [(AAUIOnboardingSignInController *)self->_splitAccountSignInController setDelegate:self->_splitSignInDelegate];
  [(AAUIOnboardingSignInController *)self->_splitAccountSignInController start];
}

- (void)willAuthenticateWithContext:(id)a3
{
  v3 = [(AAUIServiceSignInConfiguration *)self->_signInConfig navigationController];
  [v3 setModalInPresentation:1];
}

- (void)_mainQueue_presentSpinnerViewControllerInParentViewController:(id)a3 withCompletion:(id)a4
{
  v8 = a4;
  v6 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v7 = [(AAUIServiceSignInController *)self _spinnerViewController];
  [v6 showViewController:v7 sender:self];

  v8[2]();
}

- (void)_mainQueue_presentAlertForError:(id)a3 inViewController:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x1E696AAE8];
  v9 = a4;
  v10 = a3;
  v11 = [v8 bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"SIGN_IN_ERROR_TITLE" value:&stru_1F447F790 table:@"Localizable"];

  v13 = [v10 userInfo];

  v14 = [v13 objectForKeyedSubscript:*MEMORY[0x1E696A578]];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v16 = [v17 localizedStringForKey:@"SIGN_IN_ERROR_MESSAGE" value:&stru_1F447F790 table:@"Localizable"];
  }

  v18 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"SIGN_IN_ERROR_BUTTON" value:&stru_1F447F790 table:@"Localizable"];

  v20 = [MEMORY[0x1E69DC650] alertWithTitle:v12 message:v16];
  v21 = MEMORY[0x1E69DC648];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __91__AAUIServiceSignInController__mainQueue_presentAlertForError_inViewController_completion___block_invoke;
  v24[3] = &unk_1E820CA70;
  v25 = v7;
  v22 = v7;
  v23 = [v21 actionWithTitle:v19 style:0 handler:v24];
  [v20 addAction:v23];

  [v9 presentViewController:v20 animated:1 completion:0];
}

void __64__AAUIServiceSignInController_loadViewControllerForPresentation__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __64__AAUIServiceSignInController__attemptReauthAndSignInToServices__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_spinnerMessageForService:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __103__AAUIServiceSignInController__mainQueue_continueSignInWithAuthenticationResults_parentViewController___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)continueSignInWithAuthenticationResults:viewController:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_delegate_signInControllerDidCompleteWithSuccess:error:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_delegate_signInControllerDidCompleteWithSuccess:error:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_delegate_signInControllerDidCompleteWithSuccess:error:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)controllerFinishedWithAIDAResults:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __65__AAUIServiceSignInController_controllerFinishedWithAIDAResults___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [a1 type];
  v5 = [a1 error];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_1C5355000, a2, OS_LOG_TYPE_ERROR, "AAUIServiceSignInController calling deprecated delegate callback for service %@ with error %@", &v6, 0x16u);
}

- (void)_attemptSignInForServices:(os_log_t)log serviceContext:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "[AAUIServiceSignInController _attemptSignInForServices:serviceContext:]";
  _os_log_debug_impl(&dword_1C5355000, log, OS_LOG_TYPE_DEBUG, "Verifying persona in %s", &v1, 0xCu);
}

- (void)signInViewControllerDidCancel:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)signInViewControllerDidSelectOtherOptions:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end