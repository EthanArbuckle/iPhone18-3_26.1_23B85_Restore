@interface AAUIServiceSignInController
- (AAUIAgeAttestationStateProviding)ageAttestationStateProvider;
- (AAUIServiceSignInController)initWithSignInConfiguration:(id)configuration;
- (AAUISignInViewController)signInViewController;
- (AKAppleIDAuthenticationController)authenticationController;
- (BOOL)_allowsAccountCreation;
- (BOOL)_isAuthenticatingPrimary:(id)primary;
- (BOOL)_shouldShieldSignInUI;
- (BOOL)_showsServiceIcons;
- (id)_alertControllerForReusingAccount:(id)account serviceType:(id)type inViewController:(id)controller completion:(id)completion;
- (id)_serviceContextForCloudAndInactiveStoreWithAuthResults:(id)results parentViewController:(id)controller;
- (id)_serviceContextWithResults:(id)results parentViewController:(id)controller;
- (id)_serviceOwnersManager;
- (id)_spinnerMessageForService:(id)service;
- (id)_spinnerViewController;
- (void)_attemptReauthAndSignInToServices;
- (void)_attemptSignInForServices:(id)services serviceContext:(id)context;
- (void)_authenticateExistingAccount:(id)account serviceType:(id)type inViewController:(id)controller completion:(id)completion;
- (void)_commonInit;
- (void)_delegate_serviceSignInControllerDidCancel;
- (void)_delegate_signInControllerDidCompleteWithSuccess:(BOOL)success error:(id)error;
- (void)_invokeShieldUIWithViewController:(id)controller completion:(id)completion;
- (void)_mainQueue_continueSignInWithAuthenticationResults:(id)results parentViewController:(id)controller;
- (void)_mainQueue_presentAlertForError:(id)error inViewController:(id)controller completion:(id)completion;
- (void)_mainQueue_presentContinueUsingInViewController:(id)controller account:(id)account serviceType:(id)type completion:(id)completion;
- (void)_mainQueue_presentSpinnerViewControllerInParentViewController:(id)controller withCompletion:(id)completion;
- (void)_prepareToSignInForServices:(id)services withAuthenticationResults:(id)results parentViewController:(id)controller;
- (void)_setInitialViewController:(id)controller;
- (void)continueSignInWithAuthenticationResults:(id)results viewController:(id)controller completion:(id)completion;
- (void)controllerFinishedWithAIDAResults:(id)results;
- (void)loadViewControllerForPresentation;
- (void)prepareInViewController:(id)controller completion:(id)completion;
- (void)signInViewController:(id)controller didCompleteWithAuthenticationResults:(id)results;
- (void)signInViewControllerDidCancel:(id)cancel;
- (void)signInViewControllerDidSelectChildSignIn:(id)in;
- (void)signInViewControllerDidSelectOtherOptions:(id)options;
- (void)signInViewControllerDidSkip:(id)skip;
- (void)startSplitAcountSignInFlow;
- (void)willAuthenticateWithContext:(id)context;
@end

@implementation AAUIServiceSignInController

- (AAUIServiceSignInController)initWithSignInConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = AAUIServiceSignInController;
  v6 = [(AAUIServiceSignInController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_signInConfig, configuration);
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
  navigationController = [(AAUIServiceSignInConfiguration *)self->_signInConfig navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar setAccessibilityIdentifier:@"sign-in-nav-bar"];

  if ([(AAUIServiceSignInController *)self _shouldShieldSignInUI])
  {
    v5 = _AAUILogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1C5355000, v5, OS_LOG_TYPE_DEFAULT, "Invoking shield UI.", buf, 2u);
    }

    signInConfig = [(AAUIServiceSignInController *)self signInConfig];
    navigationController2 = [signInConfig navigationController];
    [navigationController2 setNavigationBarHidden:1 animated:0];

    objc_initWeak(buf, self);
    signInConfig2 = [(AAUIServiceSignInController *)self signInConfig];
    navigationController3 = [signInConfig2 navigationController];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __64__AAUIServiceSignInController_loadViewControllerForPresentation__block_invoke;
    v19[3] = &unk_1E820DE68;
    objc_copyWeak(&v20, buf);
    [(AAUIServiceSignInController *)self _invokeShieldUIWithViewController:navigationController3 completion:v19];

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

    _spinnerViewController = [(AAUIServiceSignInController *)self _spinnerViewController];
    [(AAUIServiceSignInController *)self _setInitialViewController:_spinnerViewController];

    [(AAUIServiceSignInController *)self _attemptReauthAndSignInToServices];
  }

  else
  {
    authenticationResults = [(AAUIServiceSignInConfiguration *)self->_signInConfig authenticationResults];

    v14 = _AAUILogSystem();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (authenticationResults)
    {
      if (v15)
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1C5355000, v14, OS_LOG_TYPE_DEFAULT, "Continuing sign in with authentication results...", buf, 2u);
      }

      _spinnerViewController2 = [(AAUIServiceSignInController *)self _spinnerViewController];
      [(AAUIServiceSignInController *)self _setInitialViewController:_spinnerViewController2];

      authenticationResults2 = [(AAUIServiceSignInConfiguration *)self->_signInConfig authenticationResults];
      navigationController4 = [(AAUIServiceSignInConfiguration *)self->_signInConfig navigationController];
      [(AAUIServiceSignInController *)self _mainQueue_continueSignInWithAuthenticationResults:authenticationResults2 parentViewController:navigationController4];
    }

    else
    {
      if (v15)
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1C5355000, v14, OS_LOG_TYPE_DEFAULT, "No authentication results found, displaying sign in...", buf, 2u);
      }

      authenticationResults2 = [(AAUIServiceSignInController *)self signInViewController];
      [(AAUIServiceSignInController *)self _setInitialViewController:authenticationResults2];
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
    ageAttestationStateProvider = [(AAUIServiceSignInController *)self ageAttestationStateProvider];
    ageAttestationPhase1Enabled = [ageAttestationStateProvider ageAttestationPhase1Enabled];

    if (ageAttestationPhase1Enabled)
    {
      ageAttestationStateProvider2 = [(AAUIServiceSignInController *)self ageAttestationStateProvider];
      shieldSignInOrCreateFlows = [ageAttestationStateProvider2 shieldSignInOrCreateFlows];
    }

    else
    {
      shieldSignInOrCreateFlows = 0;
    }

    ageAttestationStateProvider3 = [(AAUIServiceSignInController *)self ageAttestationStateProvider];
    ageBasedAccountSupportEnabled = [ageAttestationStateProvider3 ageBasedAccountSupportEnabled];

    v3 = ageBasedAccountSupportEnabled | shieldSignInOrCreateFlows;
    if (ageBasedAccountSupportEnabled && (shieldSignInOrCreateFlows & 1) == 0)
    {
      ageAttestationStateProvider4 = [(AAUIServiceSignInController *)self ageAttestationStateProvider];
      if ([ageAttestationStateProvider4 shieldSignInOrCreateFlowsForTeen])
      {
        serviceTypes = [(AAUIServiceSignInConfiguration *)self->_signInConfig serviceTypes];
        v3 = serviceTypes == 0;
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

- (void)_setInitialViewController:(id)controller
{
  v12[1] = *MEMORY[0x1E69E9840];
  signInConfig = self->_signInConfig;
  controllerCopy = controller;
  navigationController = [(AAUIServiceSignInConfiguration *)signInConfig navigationController];
  viewControllers = [navigationController viewControllers];
  v8 = [viewControllers count];

  navigationController2 = [(AAUIServiceSignInConfiguration *)self->_signInConfig navigationController];
  v11 = navigationController2;
  if (v8)
  {
    [navigationController2 pushViewController:controllerCopy animated:1];
  }

  else
  {
    v12[0] = controllerCopy;
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
  _serviceOwnersManager = [(AAUIServiceSignInController *)self _serviceOwnersManager];
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
        v10 = [_serviceOwnersManager accountForService:{v9, v16}];
        username = [v10 username];
        username2 = [(AAUIServiceSignInConfiguration *)self->_signInConfig username];
        v13 = [username isEqualToString:username2];

        if (v13)
        {
          v14 = _AAUILogSystem();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v24 = v9;
            _os_log_impl(&dword_1C5355000, v14, OS_LOG_TYPE_DEFAULT, "Found account for service %{public}@, prompting for sign in...", buf, 0xCu);
          }

          navigationController = [(AAUIServiceSignInConfiguration *)self->_signInConfig navigationController];
          v3 = v16;
          [(AAUIServiceSignInController *)self _authenticateExistingAccount:v10 serviceType:v9 inViewController:navigationController completion:v16];

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

- (id)_spinnerMessageForService:(id)service
{
  serviceCopy = service;
  v4 = serviceCopy;
  if (serviceCopy)
  {
    if ([serviceCopy isEqualToString:*MEMORY[0x1E698C218]])
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
      label = [(AAUISpinnerViewController *)v4 label];
      serviceType = [(AAUIServiceSignInConfiguration *)self->_signInConfig serviceType];
      v7 = [(AAUIServiceSignInController *)self _spinnerMessageForService:serviceType];
      [label setText:v7];
    }

    v8 = self->_spinnerViewController;
    self->_spinnerViewController = &v4->super;

    spinnerViewController = self->_spinnerViewController;
  }

  return spinnerViewController;
}

- (BOOL)_showsServiceIcons
{
  serviceType = [(AAUIServiceSignInConfiguration *)self->_signInConfig serviceType];
  if (!serviceType)
  {
    return 1;
  }

  v4 = serviceType;
  splitSignIn = [(AAUIServiceSignInConfiguration *)self->_signInConfig splitSignIn];

  return splitSignIn;
}

- (BOOL)_allowsAccountCreation
{
  serviceTypes = [(AAUIServiceSignInConfiguration *)self->_signInConfig serviceTypes];
  v4 = [serviceTypes count];

  serviceTypes2 = [(AAUIServiceSignInConfiguration *)self->_signInConfig serviceTypes];
  if ([serviceTypes2 count] == 1)
  {
    serviceTypes3 = [(AAUIServiceSignInConfiguration *)self->_signInConfig serviceTypes];
    v7 = [serviceTypes3 objectAtIndexedSubscript:0];
    v8 = v7 == *MEMORY[0x1E698C218];
  }

  else
  {
    v8 = 0;
  }

  return v4 == 0 || v8;
}

- (BOOL)_isAuthenticatingPrimary:(id)primary
{
  primaryCopy = primary;
  serviceType = [(AAUIServiceSignInConfiguration *)self->_signInConfig serviceType];
  if (serviceType && (v6 = serviceType, -[AAUIServiceSignInConfiguration serviceType](self->_signInConfig, "serviceType"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isEqualToString:primaryCopy], v7, v6, !v8))
  {
    v11 = 0;
  }

  else
  {
    _serviceOwnersManager = [(AAUIServiceSignInController *)self _serviceOwnersManager];
    v10 = [_serviceOwnersManager accountForService:primaryCopy];

    v11 = v10 == 0;
  }

  return v11;
}

- (id)_serviceContextWithResults:(id)results parentViewController:(id)controller
{
  resultsCopy = results;
  signInConfig = self->_signInConfig;
  controllerCopy = controller;
  serviceContext = [(AAUIServiceSignInConfiguration *)signInConfig serviceContext];

  if (serviceContext && (-[AAUIServiceSignInConfiguration serviceContext](self->_signInConfig, "serviceContext"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 mutableCopy], v10, v11))
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

  [v11 setAuthenticationResults:resultsCopy];
  [v11 setOperationUIPermissions:{-[AAUIServiceSignInConfiguration aidaOperationUIPermissions](self->_signInConfig, "aidaOperationUIPermissions")}];
  [v11 setViewController:controllerCopy];

  v14 = objc_alloc(MEMORY[0x1E6997858]);
  viewController = [v11 viewController];
  v16 = [v14 initWithPresentingViewController:viewController];
  cdpUIController = self->_cdpUIController;
  self->_cdpUIController = v16;

  [(CDPUIController *)self->_cdpUIController setForceInlinePresentation:1];
  [v11 setCdpUiProvider:self->_cdpUIController];
  signInContexts = [v11 signInContexts];
  v19 = signInContexts;
  if (v13)
  {
    v20 = [signInContexts objectForKeyedSubscript:*MEMORY[0x1E698C218]];
    flowControllerDelegate = self->_flowControllerDelegate;
    self->_flowControllerDelegate = v20;

    viewController2 = [v11 viewController];
    [(AAUISignInFlowControllerDelegate *)self->_flowControllerDelegate setPresentingViewController:viewController2];
  }

  else
  {
    v23 = [signInContexts mutableCopy];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = objc_opt_new();
    }

    viewController2 = v25;

    v26 = [AAUISignInFlowControllerDelegate alloc];
    viewController3 = [v11 viewController];
    v28 = [(AAUISignInFlowControllerDelegate *)v26 initWithPresentingViewController:viewController3];
    v29 = self->_flowControllerDelegate;
    self->_flowControllerDelegate = v28;

    [(AAUISignInFlowControllerDelegate *)self->_flowControllerDelegate setProgressViewAlreadyPresented:self->_spinnerViewController != 0];
    [viewController2 setObject:self->_flowControllerDelegate forKeyedSubscript:*MEMORY[0x1E698C218]];
    [v11 setSignInContexts:viewController2];
  }

  localSecret = [(AAUIServiceSignInConfiguration *)self->_signInConfig localSecret];
  if (localSecret)
  {
  }

  else if (![(AAUIServiceSignInConfiguration *)self->_signInConfig isAttemptingBackupRestore])
  {
    goto LABEL_19;
  }

  v31 = [objc_alloc(MEMORY[0x1E69977E8]) initWithAuthenticationResults:resultsCopy];
  [v31 setIsAttemptingBackupRestore:{-[AAUIServiceSignInConfiguration isAttemptingBackupRestore](self->_signInConfig, "isAttemptingBackupRestore")}];
  localSecret2 = [(AAUIServiceSignInConfiguration *)self->_signInConfig localSecret];

  if (localSecret2)
  {
    localSecret3 = [(AAUIServiceSignInConfiguration *)self->_signInConfig localSecret];
    validatedSecret = [localSecret3 validatedSecret];
    [v31 setCachedLocalSecret:validatedSecret];

    localSecret4 = [(AAUIServiceSignInConfiguration *)self->_signInConfig localSecret];
    [v31 setCachedLocalSecretType:{objc_msgSend(localSecret4, "secretType")}];
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
  serviceType = [(AAUIServiceSignInConfiguration *)self->_signInConfig serviceType];
  [(AAUISignInViewController *)v4 _setAkServiceType:AKServiceTypeFromAIDAServiceType(serviceType)];

  username = [(AAUIServiceSignInConfiguration *)self->_signInConfig username];
  [(AAUISignInViewController *)v4 setUsername:username];

  privacyLinkIdentifiers = [(AAUIServiceSignInConfiguration *)self->_signInConfig privacyLinkIdentifiers];
  [(AAUISignInViewController *)v4 setPrivacyLinkIdentifiers:privacyLinkIdentifiers];

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
    _allowsAccountCreation = 0;
    goto LABEL_7;
  }

  _allowsAccountCreation = [(AAUIServiceSignInController *)self _allowsAccountCreation];
LABEL_7:
  [(AAUISignInViewController *)v4 setAllowsAccountCreation:_allowsAccountCreation];
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
  akURLBag = [(AAUIServiceSignInController *)self akURLBag];
  [(AAUISignInViewController *)v4 setAKURLBag:akURLBag];

  v12 = self->_signInViewController;
  self->_signInViewController = v4;

  signInViewController = self->_signInViewController;
LABEL_16:

  return signInViewController;
}

- (id)_alertControllerForReusingAccount:(id)account serviceType:(id)type inViewController:(id)controller completion:(id)completion
{
  accountCopy = account;
  typeCopy = type;
  controllerCopy = controller;
  completionCopy = completion;
  v60 = typeCopy;
  v12 = AALocalizedStringForServiceType();
  selfCopy = self;
  serviceType = [(AAUIServiceSignInConfiguration *)self->_signInConfig serviceType];
  v65 = AALocalizedStringForServiceType();

  userFullName = [accountCopy userFullName];
  v62 = userFullName;
  v63 = v12;
  if (userFullName)
  {
    v15 = userFullName;
    v16 = MEMORY[0x1E696AEC0];
    v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"SIGN_IN_CONTINUE_USING_TITLE" value:&stru_1F447F790 table:@"Localizable"];
    v19 = v15;
    v64 = [v16 stringWithFormat:v18, v65, v15];

    v20 = MEMORY[0x1E696AEC0];
    v21 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"SIGN_IN_CONTINUE_USING_MESSAGE_REBRAND" value:&stru_1F447F790 table:@"Localizable"];
    aa_formattedUsername = [accountCopy aa_formattedUsername];
    v24 = [v20 stringWithFormat:v22, v12, aa_formattedUsername, v15, v65];

    v25 = MEMORY[0x1E696AEC0];
    v26 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v27 = [v26 localizedStringForKey:@"SIGN_IN_CONTINUE_USING_DIFFERENT" value:&stru_1F447F790 table:@"Localizable"];
    v54 = [v25 stringWithFormat:v27, v19];
  }

  else
  {
    [accountCopy aa_formattedUsername];
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
  v70[4] = selfCopy;
  v71 = accountCopy;
  v72 = v60;
  v73 = controllerCopy;
  v41 = completionCopy;
  v74 = v41;
  v59 = controllerCopy;
  v61 = v60;
  v57 = accountCopy;
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

  actions = [v37 actions];
  firstObject = [actions firstObject];
  [v37 setPreferredAction:firstObject];

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

- (void)prepareInViewController:(id)controller completion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  completionCopy = completion;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__AAUIServiceSignInController_prepareInViewController_completion___block_invoke;
  aBlock[3] = &unk_1E820D1E0;
  aBlock[4] = self;
  v22 = completionCopy;
  v29 = v22;
  v21 = _Block_copy(aBlock);
  _serviceOwnersManager = [(AAUIServiceSignInController *)self _serviceOwnersManager];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  supportedServices = [objc_opt_class() supportedServices];
  v9 = [supportedServices countByEnumeratingWithState:&v24 objects:v32 count:16];
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
          objc_enumerationMutation(supportedServices);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [_serviceOwnersManager accountForService:v13];
        username = [v14 username];
        v16 = [username length];

        if (v16)
        {
          v20 = _AAUILogSystem();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v31 = v13;
            _os_log_impl(&dword_1C5355000, v20, OS_LOG_TYPE_DEFAULT, "Found account for service %{public}@, prompting for sign in...", buf, 0xCu);
          }

          v19 = controllerCopy;
          v18 = v21;
          [(AAUIServiceSignInController *)self _mainQueue_presentContinueUsingInViewController:controllerCopy account:v14 serviceType:v13 completion:v21];

          goto LABEL_15;
        }
      }

      v10 = [supportedServices countByEnumeratingWithState:&v24 objects:v32 count:16];
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
  v19 = controllerCopy;
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

- (void)_mainQueue_presentContinueUsingInViewController:(id)controller account:(id)account serviceType:(id)type completion:(id)completion
{
  completionCopy = completion;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __110__AAUIServiceSignInController__mainQueue_presentContinueUsingInViewController_account_serviceType_completion___block_invoke;
  v14[3] = &unk_1E820D630;
  v15 = completionCopy;
  v11 = completionCopy;
  controllerCopy = controller;
  v13 = [(AAUIServiceSignInController *)self _alertControllerForReusingAccount:account serviceType:type inViewController:controllerCopy completion:v14];
  [controllerCopy presentViewController:v13 animated:1 completion:0];
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

- (void)_invokeShieldUIWithViewController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  v8 = objc_alloc_init(MEMORY[0x1E698DE80]);
  [v8 setPresentingViewController:controllerCopy];
  [v8 setAuthenticationType:2];
  v9 = objc_alloc_init(MEMORY[0x1E698DDC8]);
  ageAttestationStateProvider = [(AAUIServiceSignInController *)self ageAttestationStateProvider];
  if ([ageAttestationStateProvider ageBasedAccountSupportEnabled])
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
  authenticationController = [(AAUIServiceSignInController *)self authenticationController];
  v13 = v19[5];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__AAUIServiceSignInController__invokeShieldUIWithViewController_completion___block_invoke;
  v15[3] = &unk_1E820B730;
  v17 = &v18;
  v14 = completionCopy;
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

- (void)_authenticateExistingAccount:(id)account serviceType:(id)type inViewController:(id)controller completion:(id)completion
{
  v38 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  typeCopy = type;
  controllerCopy = controller;
  completionCopy = completion;
  v14 = objc_alloc_init(MEMORY[0x1E698DE80]);
  [v14 setShouldOfferSecurityUpgrade:0];
  _serviceOwnersManager = [(AAUIServiceSignInController *)self _serviceOwnersManager];
  v16 = [_serviceOwnersManager altDSIDForAccount:accountCopy service:typeCopy];
  [v14 setAltDSID:v16];

  _serviceOwnersManager2 = [(AAUIServiceSignInController *)self _serviceOwnersManager];
  v18 = [_serviceOwnersManager2 DSIDForAccount:accountCopy service:typeCopy];
  [v14 setDSID:v18];

  username = [accountCopy username];
  [v14 setIsUsernameEditable:{objc_msgSend(username, "length") == 0}];

  [v14 setPresentingViewController:controllerCopy];
  serviceType = [(AAUIServiceSignInConfiguration *)self->_signInConfig serviceType];
  [v14 setServiceType:AKServiceTypeFromAIDAServiceType(serviceType)];

  username2 = [accountCopy username];
  [v14 setUsername:username2];

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
  authenticationController = [(AAUIServiceSignInController *)self authenticationController];
  v28 = *(*(&buf + 1) + 40);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __100__AAUIServiceSignInController__authenticateExistingAccount_serviceType_inViewController_completion___block_invoke;
  v30[3] = &unk_1E820B730;
  p_buf = &buf;
  v29 = completionCopy;
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

- (void)_mainQueue_continueSignInWithAuthenticationResults:(id)results parentViewController:(id)controller
{
  v18 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  resultsCopy = results;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __103__AAUIServiceSignInController__mainQueue_continueSignInWithAuthenticationResults_parentViewController___block_invoke;
  aBlock[3] = &unk_1E820C1A8;
  aBlock[4] = self;
  v8 = _Block_copy(aBlock);
  serviceTypes = [(AAUIServiceSignInConfiguration *)self->_signInConfig serviceTypes];
  v10 = [serviceTypes count];

  v11 = _AAUILogSystem();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      serviceTypes2 = [(AAUIServiceSignInConfiguration *)self->_signInConfig serviceTypes];
      *buf = 138543362;
      v17 = serviceTypes2;
      _os_log_impl(&dword_1C5355000, v11, OS_LOG_TYPE_DEFAULT, "Client opted to sign in %{public}@, attempting sign in now...", buf, 0xCu);
    }

    serviceTypes3 = [(AAUIServiceSignInConfiguration *)self->_signInConfig serviceTypes];
    [(AAUIServiceSignInController *)self _prepareToSignInForServices:serviceTypes3 withAuthenticationResults:resultsCopy parentViewController:controllerCopy];

    controllerCopy = resultsCopy;
    resultsCopy = serviceTypes3;
  }

  else
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&dword_1C5355000, v11, OS_LOG_TYPE_DEFAULT, "No service specified by client, attempting sign in for all...", buf, 2u);
    }

    [(AAUIServiceSignInController *)self continueSignInWithAuthenticationResults:resultsCopy viewController:controllerCopy completion:v8];
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

- (void)continueSignInWithAuthenticationResults:(id)results viewController:(id)controller completion:(id)completion
{
  completionCopy = completion;
  v9 = [(AAUIServiceSignInController *)self _serviceContextWithResults:results parentViewController:controller];
  _serviceOwnersManager = [(AAUIServiceSignInController *)self _serviceOwnersManager];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    _serviceOwnersManager2 = [(AAUIServiceSignInController *)self _serviceOwnersManager];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __97__AAUIServiceSignInController_continueSignInWithAuthenticationResults_viewController_completion___block_invoke;
    v14[3] = &unk_1E820C308;
    v15 = completionCopy;
    [_serviceOwnersManager2 signInToAllServicesInBackgroundUsingContext:v9 completion:v14];
  }

  else
  {
    v13 = _AAUILogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [AAUIServiceSignInController continueSignInWithAuthenticationResults:viewController:completion:];
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
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

- (void)_delegate_signInControllerDidCompleteWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  errorCopy = error;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = __Block_byref_object_copy__14;
  v23[4] = __Block_byref_object_dispose__14;
  serviceType = [(AAUIServiceSignInConfiguration *)self->_signInConfig serviceType];
  v8 = serviceType;
  v9 = *MEMORY[0x1E698C218];
  if (serviceType)
  {
    v9 = serviceType;
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
  if (!errorCopy)
  {
    (*(v10 + 2))(v10, successCopy, 0);
    goto LABEL_19;
  }

  v12 = [errorCopy aa_isAAErrorWithCode:-1];
  domain = [errorCopy domain];
  v14 = [domain isEqualToString:*MEMORY[0x1E69977D8]];

  if (v14)
  {
    if ([errorCopy shouldDisplayToUser])
    {
LABEL_13:
      v16 = _AAUILogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [AAUIServiceSignInController _delegate_signInControllerDidCompleteWithSuccess:error:];
      }

      navigationController = [(AAUIServiceSignInConfiguration *)self->_signInConfig navigationController];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __86__AAUIServiceSignInController__delegate_signInControllerDidCompleteWithSuccess_error___block_invoke_122;
      v18[3] = &unk_1E820DF08;
      v19 = errorCopy;
      v20 = v11;
      v21 = successCopy;
      [(AAUIServiceSignInController *)self _mainQueue_presentAlertForError:v19 inViewController:navigationController completion:v18];

      goto LABEL_19;
    }
  }

  else if (([errorCopy aa_isAASignInErrorWithCode:-8006] & 1) == 0 && ((objc_msgSend(errorCopy, "ak_isUserCancelError") | v12) & 1) == 0)
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

  (v11)[2](v11, successCopy, errorCopy);
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

- (void)controllerFinishedWithAIDAResults:(id)results
{
  resultsCopy = results;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__AAUIServiceSignInController_controllerFinishedWithAIDAResults___block_invoke;
  aBlock[3] = &unk_1E820DF50;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v6 = *MEMORY[0x1E698C218];
  v7 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698C218]];
  if (v7)
  {
    v8 = v7;
    v9 = [resultsCopy objectForKeyedSubscript:v6];
    error = [v9 error];

    if (error)
    {
      v11 = [resultsCopy objectForKeyedSubscript:v6];
      error2 = [v11 error];

      v13 = [error2 aa_isAAErrorWithCode:-1];
      domain = [error2 domain];
      v15 = [domain isEqualToString:*MEMORY[0x1E69977D8]];

      if (v15)
      {
        if (![error2 shouldDisplayToUser])
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

          v5[2](v5, resultsCopy);
LABEL_16:

          goto LABEL_17;
        }
      }

      else if (([error2 aa_isAASignInErrorWithCode:-8006] | v13))
      {
        goto LABEL_5;
      }

      v18 = _AAUILogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [AAUIServiceSignInController _delegate_signInControllerDidCompleteWithSuccess:error:];
      }

      navigationController = [(AAUIServiceSignInConfiguration *)self->_signInConfig navigationController];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __65__AAUIServiceSignInController_controllerFinishedWithAIDAResults___block_invoke_126;
      v20[3] = &unk_1E820BAD0;
      v21 = error2;
      v23 = v5;
      v22 = resultsCopy;
      [(AAUIServiceSignInController *)self _mainQueue_presentAlertForError:v21 inViewController:navigationController completion:v20];

      goto LABEL_16;
    }
  }

  v5[2](v5, resultsCopy);
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

- (void)_prepareToSignInForServices:(id)services withAuthenticationResults:(id)results parentViewController:(id)controller
{
  v18[2] = *MEMORY[0x1E69E9840];
  servicesCopy = services;
  resultsCopy = results;
  controllerCopy = controller;
  if ([servicesCopy count] == 1 && (objc_msgSend(servicesCopy, "objectAtIndexedSubscript:", 0), v11 = objc_claimAutoreleasedReturnValue(), v12 = *MEMORY[0x1E698C218], v11, v11 == v12))
  {
    v14 = _AAUILogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_1C5355000, v14, OS_LOG_TYPE_DEFAULT, "Detected cloud only service sign in.", v17, 2u);
    }

    v13 = [(AAUIServiceSignInController *)self _serviceContextForCloudAndInactiveStoreWithAuthResults:resultsCopy parentViewController:controllerCopy];
    v15 = *MEMORY[0x1E698C238];
    v18[0] = v12;
    v18[1] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];

    servicesCopy = v16;
  }

  else
  {
    v13 = [(AAUIServiceSignInController *)self _serviceContextWithResults:resultsCopy parentViewController:controllerCopy];
  }

  [(AAUIServiceSignInController *)self _attemptSignInForServices:servicesCopy serviceContext:v13];
}

- (void)_attemptSignInForServices:(id)services serviceContext:(id)context
{
  v23 = *MEMORY[0x1E69E9840];
  servicesCopy = services;
  contextCopy = context;
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
    v22 = servicesCopy;
    _os_log_impl(&dword_1C5355000, v9, OS_LOG_TYPE_DEFAULT, "Attempting sign in for services %{public}@ with authentication results", buf, 0xCu);
  }

  _serviceOwnersManager = [(AAUIServiceSignInController *)self _serviceOwnersManager];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    _serviceOwnersManager2 = [(AAUIServiceSignInController *)self _serviceOwnersManager];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __72__AAUIServiceSignInController__attemptSignInForServices_serviceContext___block_invoke;
    v18[3] = &unk_1E820DF78;
    v18[4] = self;
    [_serviceOwnersManager2 signInToServices:servicesCopy usingContext:contextCopy completion:v18];
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
    _serviceOwnersManager2 = [v14 initWithSuccess:0 error:v15 type:*MEMORY[0x1E698C218]];

    v19 = v16;
    v20 = _serviceOwnersManager2;
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

- (id)_serviceContextForCloudAndInactiveStoreWithAuthResults:(id)results parentViewController:(id)controller
{
  v4 = [(AAUIServiceSignInController *)self _serviceContextWithResults:results parentViewController:controller];
  signInContexts = [v4 signInContexts];
  v6 = [signInContexts mutableCopy];

  v7 = objc_alloc_init(MEMORY[0x1E698CB28]);
  [v7 setCanMakeAccountActive:0];
  [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x1E698C238]];
  v8 = [v6 copy];
  [v4 setSignInContexts:v8];

  v9 = [v4 copy];

  return v9;
}

- (void)signInViewController:(id)controller didCompleteWithAuthenticationResults:(id)results
{
  resultsCopy = results;
  controllerCopy = controller;
  v10 = _AAUILogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5355000, v10, OS_LOG_TYPE_DEFAULT, "Sign in view controller completed with authentication results!", buf, 2u);
  }

  parentViewController = [controllerCopy parentViewController];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__AAUIServiceSignInController_signInViewController_didCompleteWithAuthenticationResults___block_invoke;
  aBlock[3] = &unk_1E820BF58;
  aBlock[4] = self;
  v12 = resultsCopy;
  v25 = v12;
  v13 = parentViewController;
  v26 = v13;
  v14 = _Block_copy(aBlock);
  if (!+[AAUIFeatureFlags isNewSignInProgressEnabled])
  {
    goto LABEL_12;
  }

  serviceTypes = [(AAUIServiceSignInConfiguration *)self->_signInConfig serviceTypes];
  v16 = [serviceTypes count];
  if (v16)
  {
    v17 = *MEMORY[0x1E698C218];
    goto LABEL_6;
  }

  serviceType = [(AAUIServiceSignInConfiguration *)self->_signInConfig serviceType];
  if (!serviceType)
  {
LABEL_16:

    goto LABEL_17;
  }

  v4 = serviceType;
  serviceType2 = [(AAUIServiceSignInConfiguration *)self->_signInConfig serviceType];
  v5 = serviceType2;
  v17 = *MEMORY[0x1E698C218];
  if (serviceType2 == *MEMORY[0x1E698C218])
  {

    goto LABEL_16;
  }

LABEL_6:
  serviceTypes2 = [(AAUIServiceSignInConfiguration *)self->_signInConfig serviceTypes];
  v19 = [serviceTypes2 containsObject:v17];

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

- (void)signInViewControllerDidCancel:(id)cancel
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
    navigationController = [(AAUIServiceSignInConfiguration *)self->_signInConfig navigationController];
    topViewController = [navigationController topViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      navigationController2 = [(AAUIServiceSignInConfiguration *)self->_signInConfig navigationController];
      v9 = [navigationController2 popViewControllerAnimated:1];
    }

    else
    {
      navigationController2 = _AAUILogSystem();
      if (os_log_type_enabled(navigationController2, OS_LOG_TYPE_ERROR))
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
  serviceDelegate = [(AAUIServiceSignInConfiguration *)self->_signInConfig serviceDelegate];
  if (objc_opt_respondsToSelector())
  {
    navigationController = [(AAUIServiceSignInConfiguration *)self->_signInConfig navigationController];
    [serviceDelegate serviceSignInControllerDidCancel:navigationController];
  }
}

- (void)signInViewControllerDidSkip:(id)skip
{
  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "Sign in view controller skipped!", v7, 2u);
  }

  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  serviceDelegate = [(AAUIServiceSignInConfiguration *)self->_signInConfig serviceDelegate];
  if (objc_opt_respondsToSelector())
  {
    navigationController = [(AAUIServiceSignInConfiguration *)self->_signInConfig navigationController];
    [serviceDelegate serviceSignInController:navigationController didSkipWithReason:0];
  }
}

- (void)signInViewControllerDidSelectChildSignIn:(id)in
{
  v4 = _AAUILogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1C5355000, v4, OS_LOG_TYPE_DEFAULT, "Sign in view controller selected child sign in option", v7, 2u);
  }

  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  serviceDelegate = [(AAUIServiceSignInConfiguration *)self->_signInConfig serviceDelegate];
  if (objc_opt_respondsToSelector())
  {
    navigationController = [(AAUIServiceSignInConfiguration *)self->_signInConfig navigationController];
    [serviceDelegate serviceSignInController:navigationController didSkipWithReason:1];
  }
}

- (void)signInViewControllerDidSelectOtherOptions:(id)options
{
  if (-[AAUIServiceSignInConfiguration offeriCloudAMSSplitSignIn](self->_signInConfig, "offeriCloudAMSSplitSignIn", options) && (-[AAUIServiceSignInConfiguration serviceTypes](self->_signInConfig, "serviceTypes"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 count], v4, !v5))
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

    navigationController = [(AAUIServiceSignInConfiguration *)self->_signInConfig navigationController];
    [navigationController presentViewController:v12 animated:1 completion:0];
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
  navigationController = [(AAUIServiceSignInConfiguration *)self->_signInConfig navigationController];
  v14 = [(AAUIAppleIDSignInConfigSplitAccountiCloud *)v3 initWithNavController:navigationController];

  v5 = [[AAUIOnboardingSignInController alloc] initWithSetupSignInConfig:v14];
  splitAccountSignInController = self->_splitAccountSignInController;
  self->_splitAccountSignInController = v5;

  authenticationController = [(AAUIServiceSignInController *)self authenticationController];
  serviceController = [(AAUIOnboardingSignInController *)self->_splitAccountSignInController serviceController];
  signInViewController = [serviceController signInViewController];
  [signInViewController setAuthenticationController:authenticationController];

  _serviceOwnersManager = [(AAUIServiceSignInController *)self _serviceOwnersManager];
  serviceController2 = [(AAUIOnboardingSignInController *)self->_splitAccountSignInController serviceController];
  [serviceController2 setServiceOwnersManager:_serviceOwnersManager];

  v12 = [[AAUIOnboardingSplitSignInDelegate alloc] initWithServiceSignInController:self];
  splitSignInDelegate = self->_splitSignInDelegate;
  self->_splitSignInDelegate = v12;

  [(AAUIOnboardingSignInController *)self->_splitAccountSignInController setDelegate:self->_splitSignInDelegate];
  [(AAUIOnboardingSignInController *)self->_splitAccountSignInController start];
}

- (void)willAuthenticateWithContext:(id)context
{
  navigationController = [(AAUIServiceSignInConfiguration *)self->_signInConfig navigationController];
  [navigationController setModalInPresentation:1];
}

- (void)_mainQueue_presentSpinnerViewControllerInParentViewController:(id)controller withCompletion:(id)completion
{
  completionCopy = completion;
  controllerCopy = controller;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  _spinnerViewController = [(AAUIServiceSignInController *)self _spinnerViewController];
  [controllerCopy showViewController:_spinnerViewController sender:self];

  completionCopy[2]();
}

- (void)_mainQueue_presentAlertForError:(id)error inViewController:(id)controller completion:(id)completion
{
  completionCopy = completion;
  v8 = MEMORY[0x1E696AAE8];
  controllerCopy = controller;
  errorCopy = error;
  v11 = [v8 bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"SIGN_IN_ERROR_TITLE" value:&stru_1F447F790 table:@"Localizable"];

  userInfo = [errorCopy userInfo];

  v14 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696A578]];
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
  v25 = completionCopy;
  v22 = completionCopy;
  v23 = [v21 actionWithTitle:v19 style:0 handler:v24];
  [v20 addAction:v23];

  [controllerCopy presentViewController:v20 animated:1 completion:0];
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