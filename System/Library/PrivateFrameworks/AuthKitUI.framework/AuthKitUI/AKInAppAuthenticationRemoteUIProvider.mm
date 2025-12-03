@interface AKInAppAuthenticationRemoteUIProvider
- (AKAppleIDAuthenticationInAppContext)context;
- (AKInAppAuthenticationRemoteUIProvider)initWithContext:(id)context;
- (AKProximityAuthViewController)proximityAuthViewController;
- (BOOL)_shouldUsePasswordDelegate;
- (RemoteUIController)remoteUIController;
- (id)_actionsForLoginWithCompletion:(id)completion;
- (id)_navController;
- (id)_secondFactorActionsForAlert:(id)alert completion:(id)completion;
- (id)presentationAnchorForWebAuthenticationSession:(id)session;
- (void)_clearRemoteUIController;
- (void)_configureProximityAuthLoginOptionsWithCompletion:(id)completion;
- (void)_contextDidDismissLoginAlertController;
- (void)_contextDidPresentLoginController;
- (void)_contextWillDismissLoginAlertController;
- (void)_disableIdleTimerIfNeeded;
- (void)_enableIdleTimerIfNeeded;
- (void)_showMaxAttemptAlertWithCompletion:(id)completion;
- (void)_showPasswordFieldWithCompletion:(id)completion;
- (void)_startAnimating;
- (void)_updateReason;
- (void)activateProximitySession:(id)session completion:(id)completion;
- (void)basicLoginControllerDidDismiss:(id)dismiss;
- (void)basicLoginControllerDidPresent:(id)present;
- (void)basicLoginControllerWillDismiss:(id)dismiss;
- (void)cleanUpBasicLoginWithCompletion:(id)completion;
- (void)completeProximityAuth;
- (void)dealloc;
- (void)dismissBasicLoginUIWithCompletion:(id)completion;
- (void)dismissKeepUsingUIWithCompletion:(id)completion;
- (void)dismissNativeRecoveryUIWithCompletion:(id)completion;
- (void)dismissProximityPairingUIWithCompletion:(id)completion;
- (void)dismissSecondFactorUIWithCompletion:(id)completion;
- (void)dismissServerProvidedUIWithCompletion:(id)completion;
- (void)presentBasicLoginUIAsAlertWithCompletion:(id)completion;
- (void)presentBasicLoginUIAsViewWithCompletion:(id)completion;
- (void)presentBasicLoginUIWithCompletion:(id)completion;
- (void)presentBiometricOrPasscodeValidationForAppleID:(id)d completion:(id)completion;
- (void)presentFidoAuthForContext:(id)context fidoContext:(id)fidoContext completion:(id)completion;
- (void)presentIDPProvidedUIWithConfiguration:(id)configuration completion:(id)completion;
- (void)presentKeepUsingUIForAppleID:(id)d completion:(id)completion;
- (void)presentLoginAlertUIAsViewWithError:(id)error title:(id)title message:(id)message waitForInteraction:(BOOL)interaction completion:(id)completion;
- (void)presentLoginAlertWithError:(id)error title:(id)title message:(id)message completion:(id)completion;
- (void)presentLoginAlertWithError:(id)error title:(id)title message:(id)message waitForInteraction:(BOOL)interaction completion:(id)completion;
- (void)presentNativeRecoveryUIWithContext:(id)context completion:(id)completion;
- (void)presentProximityBroadcastUIWithCompletion:(id)completion;
- (void)presentProximityPairingUIWithVerificationCode:(id)code completion:(id)completion;
- (void)presentProximityPinCodeUIWithCompletion:(id)completion;
- (void)presentSecondFactorAlertWithError:(id)error title:(id)title message:(id)message completion:(id)completion;
- (void)presentSecondFactorUIWithCompletion:(id)completion;
- (void)presentServerProvidedUIWithConfiguration:(id)configuration completion:(id)completion;
- (void)proximitySetupCompletedWithResult:(id)result;
- (void)proximitySetupSelectedAccount:(int64_t)account completion:(id)completion;
- (void)setupPasscodeAndBiometricWithCompletion:(id)completion;
- (void)setupPerformAIDASignInWith:(id)with completion:(id)completion;
- (void)showProximityErrorWithCompletion:(id)completion;
@end

@implementation AKInAppAuthenticationRemoteUIProvider

- (AKInAppAuthenticationRemoteUIProvider)initWithContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v3 = selfCopy;
  selfCopy = 0;
  v9.receiver = v3;
  v9.super_class = AKInAppAuthenticationRemoteUIProvider;
  selfCopy = [(AKInAppAuthenticationRemoteUIProvider *)&v9 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeWeak(&selfCopy->_context, location[0]);
    v4 = [AKInAppAuthenticationRemoteUIDelegate alloc];
    v5 = [(AKInAppAuthenticationRemoteUIDelegate *)v4 initWithContext:location[0]];
    remoteUIControllerDelegate = selfCopy->_remoteUIControllerDelegate;
    selfCopy->_remoteUIControllerDelegate = v5;
    MEMORY[0x277D82BD8](remoteUIControllerDelegate);
  }

  v8 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  if (self->_remoteUIController)
  {
    [(AKInAppAuthenticationRemoteUIProvider *)selfCopy _clearRemoteUIController];
  }

  v2.receiver = selfCopy;
  v2.super_class = AKInAppAuthenticationRemoteUIProvider;
  [(AKInAppAuthenticationRemoteUIProvider *)&v2 dealloc];
}

- (void)presentBasicLoginUIWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  if ([(AKInAppAuthenticationRemoteUIProvider *)selfCopy _shouldShowAsView])
  {
    [(AKInAppAuthenticationRemoteUIProvider *)selfCopy presentBasicLoginUIAsViewWithCompletion:location[0]];
  }

  else
  {
    [(AKInAppAuthenticationRemoteUIProvider *)selfCopy presentBasicLoginUIAsAlertWithCompletion:location[0]];
  }

  objc_storeStrong(location, 0);
}

- (void)presentLoginAlertWithError:(id)error title:(id)title message:(id)message completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v29 = 0;
  objc_storeStrong(&v29, title);
  v28 = 0;
  objc_storeStrong(&v28, message);
  v27 = 0;
  objc_storeStrong(&v27, completion);
  if (([location[0] ak_isAuthenticationErrorWithCode:-7012] & 1) != 0 && -[AKInAppAuthenticationRemoteUIProvider _shouldUsePasswordDelegate](selfCopy, "_shouldUsePasswordDelegate"))
  {
    v26 = _AKLogSystem();
    v25 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      log = v26;
      type = v25;
      __os_log_helper_16_0_0(v24);
      _os_log_impl(&dword_222379000, log, type, "Username is present but password is missing and required. Client should provide us with password.", v24, 2u);
    }

    objc_storeStrong(&v26, 0);
    context = [(AKInAppAuthenticationRemoteUIProvider *)selfCopy context];
    username = [(AKAppleIDAuthenticationInAppContext *)context username];
    MEMORY[0x277D82BD8](context);
    v8 = MEMORY[0x277D85CD0];
    v6 = MEMORY[0x277D85CD0];
    queue = v8;
    v15 = MEMORY[0x277D85DD0];
    v16 = -1073741824;
    v17 = 0;
    v18 = __93__AKInAppAuthenticationRemoteUIProvider_presentLoginAlertWithError_title_message_completion___block_invoke;
    v19 = &unk_2784A7328;
    v20 = MEMORY[0x277D82BE0](selfCopy);
    v22 = MEMORY[0x277D82BE0](v27);
    v21 = MEMORY[0x277D82BE0](username);
    dispatch_async(queue, &v15);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&username, 0);
  }

  else if ([(AKInAppAuthenticationRemoteUIProvider *)selfCopy _shouldShowAsView])
  {
    [(AKInAppAuthenticationRemoteUIProvider *)selfCopy presentLoginAlertUIAsViewWithError:location[0] title:v29 message:v28 waitForInteraction:0 completion:v27];
  }

  else
  {
    [(AKInAppAuthenticationRemoteUIProvider *)selfCopy presentLoginAlertWithError:location[0] title:v29 message:v28 waitForInteraction:0 completion:v27];
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
}

void __93__AKInAppAuthenticationRemoteUIProvider_presentLoginAlertWithError_title_message_completion___block_invoke(uint64_t a1)
{
  v14[2] = a1;
  v14[1] = a1;
  if ([*(a1 + 32) _shouldShowAsView])
  {
    v5 = [*(a1 + 32) _actionsForLoginWithCompletion:*(a1 + 48)];
    [*(*(a1 + 32) + 16) setLoginActions:?];
    v1 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  }

  else
  {
    v4 = [*(a1 + 32) _actionsForLoginWithCompletion:*(a1 + 48)];
    [*(*(a1 + 32) + 8) setLoginActions:?];
    v1 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  }

  v14[0] = [*(a1 + 32) context];
  v3 = [v14[0] _passwordDelegate];
  v2 = v14[0];
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __93__AKInAppAuthenticationRemoteUIProvider_presentLoginAlertWithError_title_message_completion___block_invoke_2;
  v11 = &unk_2784A7300;
  v13 = MEMORY[0x277D82BE0](*(a1 + 48));
  v12 = MEMORY[0x277D82BE0](*(a1 + 40));
  [v3 context:v2 needsPasswordWithCompletion:&v7];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(v14, 0);
}

void __93__AKInAppAuthenticationRemoteUIProvider_presentLoginAlertWithError_title_message_completion___block_invoke_2(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  v3 = a1[4];
  (*(a1[5] + 16))();
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)dismissBasicLoginUIWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __75__AKInAppAuthenticationRemoteUIProvider_dismissBasicLoginUIWithCompletion___block_invoke;
  v10 = &unk_2784A63C8;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  v12 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void __75__AKInAppAuthenticationRemoteUIProvider_dismissBasicLoginUIWithCompletion___block_invoke(void *a1)
{
  v7[2] = a1;
  v7[1] = a1;
  v1 = a1[4];
  v2 = MEMORY[0x277D85DD0];
  v3 = -1073741824;
  v4 = 0;
  v5 = __75__AKInAppAuthenticationRemoteUIProvider_dismissBasicLoginUIWithCompletion___block_invoke_2;
  v6 = &unk_2784A7350;
  v7[0] = MEMORY[0x277D82BE0](a1[5]);
  [v1 cleanUpBasicLoginWithCompletion:?];
  objc_storeStrong(v7, 0);
}

- (void)presentProximityBroadcastUIWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  context = [(AKInAppAuthenticationRemoteUIProvider *)selfCopy context];
  presentingViewController = [context presentingViewController];
  WeakRetained = objc_loadWeakRetained(&selfCopy->_proximityAuthViewController);
  if (WeakRetained)
  {
    v35 = _AKLogSystem();
    v34 = 16;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v23 = v35;
      v24 = v34;
      __os_log_helper_16_0_0(v33);
      _os_log_error_impl(&dword_222379000, v23, v24, "Proximity Authentication login UI is already on screen.", v33, 2u);
    }

    objc_storeStrong(&v35, 0);
    if (location[0])
    {
      v21 = location[0];
      v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CEFF58] code:-13003 userInfo:?];
      v21[2](v21, 0);
      MEMORY[0x277D82BD8](v22);
    }

    v32 = 1;
  }

  else
  {
    [(AKInAppAuthenticationRemoteUIProvider *)selfCopy _disableIdleTimerIfNeeded];
    v41 = _AKLogSystem();
    v40 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      log = v41;
      type = v40;
      __os_log_helper_16_0_0(v39);
      _os_log_impl(&dword_222379000, log, type, "Creating new proximity pairing view.", v39, 2u);
    }

    objc_storeStrong(&v41, 0);
    v38 = 0;
    protoAccountContext = [context protoAccountContext];
    *&v3 = MEMORY[0x277D82BD8](protoAccountContext).n128_u64[0];
    if (protoAccountContext)
    {
      [WeakRetained setModalPresentationStyle:{2, v3}];
      v37 = 0;
      v4 = objc_opt_class();
      v36 = _AKSafeCast_4(v4, context);
      secondaryButtonTitle = [v36 secondaryButtonTitle];
      v6 = v37;
      v37 = secondaryButtonTitle;
      MEMORY[0x277D82BD8](v6);
      v7 = [AKProximityMessageViewModel alloc];
      v8 = [(AKProximityMessageViewModel *)v7 initWithType:5 secondaryButtonTitle:v37];
      v9 = v38;
      v38 = v8;
      MEMORY[0x277D82BD8](v9);
      objc_storeStrong(&v36, 0);
      objc_storeStrong(&v37, 0);
    }

    else
    {
      v10 = [[AKProximityMessageViewModel alloc] initWithType:0];
      v11 = v38;
      v38 = v10;
      MEMORY[0x277D82BD8](v11);
    }

    v12 = [AKProximityAuthViewController alloc];
    v13 = [(AKProximityAuthViewController *)v12 initWithViewModel:v38];
    v14 = WeakRetained;
    WeakRetained = v13;
    MEMORY[0x277D82BD8](v14);
    objc_storeWeak(&selfCopy->_proximityAuthViewController, WeakRetained);
    objc_storeStrong(&v38, 0);
    [(AKInAppAuthenticationRemoteUIProvider *)selfCopy _configureProximityAuthLoginOptionsWithCompletion:location[0]];
    v31 = _AKLogSystem();
    v30 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v31;
      v20 = v30;
      __os_log_helper_16_0_0(v29);
      _os_log_impl(&dword_222379000, v19, v20, "Presenting Proximity Pairing View", v29, 2u);
    }

    objc_storeStrong(&v31, 0);
    ak_topPresentedViewController = [presentingViewController ak_topPresentedViewController];
    v16 = presentingViewController;
    presentingViewController = ak_topPresentedViewController;
    MEMORY[0x277D82BD8](v16);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [presentingViewController pushViewController:WeakRetained animated:1];
    }

    else
    {
      v17 = objc_alloc(MEMORY[0x277D757A0]);
      v28 = [v17 initWithRootViewController:WeakRetained];
      ak_topPresentedViewController2 = [presentingViewController ak_topPresentedViewController];
      [ak_topPresentedViewController2 presentViewController:v28 animated:1 completion:?];
      MEMORY[0x277D82BD8](ak_topPresentedViewController2);
      objc_storeStrong(&v28, 0);
    }

    v32 = 0;
  }

  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(&presentingViewController, 0);
  objc_storeStrong(&context, 0);
  objc_storeStrong(location, 0);
}

- (void)presentProximityPairingUIWithVerificationCode:(id)code completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, code);
  v24 = 0;
  objc_storeStrong(&v24, completion);
  v23 = _AKLogSystem();
  v22 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    log = v23;
    type = v22;
    __os_log_helper_16_0_0(v21);
    _os_log_impl(&dword_222379000, log, type, "Updating Proximity view to show visual pairing.", v21, 2u);
  }

  objc_storeStrong(&v23, 0);
  context = [(AKInAppAuthenticationRemoteUIProvider *)selfCopy context];
  presentingViewController = [context presentingViewController];
  v18 = 0;
  v17 = [[AKProximityMessageViewModel alloc] initWithType:1];
  WeakRetained = objc_loadWeakRetained(&selfCopy->_proximityAuthViewController);
  v14 = 0;
  v9 = 1;
  if (WeakRetained)
  {
    viewModel = [WeakRetained viewModel];
    v14 = 1;
    v9 = [viewModel type] == 5;
  }

  if (v14)
  {
    MEMORY[0x277D82BD8](viewModel);
  }

  if (v9)
  {
    v4 = [[AKProximityAuthViewController alloc] initWithViewModel:v17];
    v5 = WeakRetained;
    WeakRetained = v4;
    MEMORY[0x277D82BD8](v5);
    objc_storeWeak(&selfCopy->_proximityAuthViewController, WeakRetained);
    v18 = 1;
  }

  [WeakRetained setVerificationCode:location[0]];
  [(AKInAppAuthenticationRemoteUIProvider *)selfCopy _configureProximityAuthLoginOptionsWithCompletion:v24];
  if (v18)
  {
    ak_topPresentedViewController = [presentingViewController ak_topPresentedViewController];
    v7 = presentingViewController;
    presentingViewController = ak_topPresentedViewController;
    MEMORY[0x277D82BD8](v7);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [presentingViewController pushViewController:WeakRetained animated:1];
    }

    else
    {
      v13 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:WeakRetained];
      ak_topPresentedViewController2 = [presentingViewController ak_topPresentedViewController];
      [ak_topPresentedViewController2 presentViewController:v13 animated:1 completion:?];
      MEMORY[0x277D82BD8](ak_topPresentedViewController2);
      objc_storeStrong(&v13, 0);
    }
  }

  else
  {
    [WeakRetained updateViewWithViewModel:v17];
  }

  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&presentingViewController, 0);
  objc_storeStrong(&context, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

- (void)presentProximityPinCodeUIWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v16 = _AKLogSystem();
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    log = v16;
    type = v15;
    __os_log_helper_16_0_0(v14);
    _os_log_impl(&dword_222379000, log, type, "Updating Proximity view to show PIN code.", v14, 2u);
  }

  objc_storeStrong(&v16, 0);
  v13 = [[AKProximityMessageViewModel alloc] initWithType:2];
  WeakRetained = objc_loadWeakRetained(&selfCopy->_proximityAuthViewController);
  if (WeakRetained)
  {
    [WeakRetained updateViewWithViewModel:v13];
    if (location[0])
    {
      (*(location[0] + 2))(location[0], 1, 0);
    }
  }

  else
  {
    v11 = _AKLogSystem();
    v10 = 16;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v5 = v11;
      v6 = v10;
      __os_log_helper_16_0_0(v9);
      _os_log_error_impl(&dword_222379000, v5, v6, "Attempting to show prox PIN code, but there is no prox view.", v9, 2u);
    }

    objc_storeStrong(&v11, 0);
    if (location[0])
    {
      v3 = location[0];
      v4 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7013];
      v3[2](v3, 0);
      MEMORY[0x277D82BD8](v4);
    }
  }

  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)activateProximitySession:(id)session completion:(id)completion
{
  v45 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v40 = 0;
  objc_storeStrong(&v40, completion);
  v39 = 0;
  v38 = _AKLogSystem();
  v37 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    log = v38;
    type = v37;
    __os_log_helper_16_0_0(v36);
    _os_log_impl(&dword_222379000, log, type, "Activating Proximity message session...", v36, 2u);
  }

  objc_storeStrong(&v38, 0);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_proximityAuthViewController);
  if (WeakRetained)
  {
    navigationController = [WeakRetained navigationController];
    v5 = v39;
    v39 = navigationController;
    MEMORY[0x277D82BD8](v5);
    v34 = [[AKProximityMessageViewModel alloc] initWithType:3];
    [WeakRetained updateViewWithViewModel:v34];
    objc_storeStrong(&v34, 0);
  }

  else
  {
    v33 = _AKLogSystem();
    v32 = 16;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v15 = v33;
      v16 = v32;
      __os_log_helper_16_0_0(v31);
      _os_log_error_impl(&dword_222379000, v15, v16, "Missing navigation controller to initate set up for self...", v31, 2u);
    }

    objc_storeStrong(&v33, 0);
  }

  [(AKInAppAuthenticationRemoteUIProvider *)selfCopy _configureProximityAuthLoginOptionsWithCompletion:v40];
  v6 = MEMORY[0x223DB6C90](v40);
  proxAuthCompletion = selfCopy->_proxAuthCompletion;
  selfCopy->_proxAuthCompletion = v6;
  MEMORY[0x277D82BD8](proxAuthCompletion);
  if (ProximityAppleIDSetupUILibraryCore(0))
  {
    v8 = objc_alloc_init(getPASUIDependentViewPresenterClass());
  }

  else
  {
    v8 = objc_alloc_init(0);
  }

  v9 = v8;
  pasViewPresenter = selfCopy->_pasViewPresenter;
  selfCopy->_pasViewPresenter = v9;
  *&v11 = MEMORY[0x277D82BD8](pasViewPresenter).n128_u64[0];
  [(PASUIDependentViewPresenter *)selfCopy->_pasViewPresenter setDelegate:selfCopy, v11];
  v12 = selfCopy->_pasViewPresenter;
  if (objc_opt_respondsToSelector())
  {
    v30 = _AKLogSystem();
    v29 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v44, selfCopy->_pasViewPresenter);
      _os_log_debug_impl(&dword_222379000, v30, v29, "Setting 'shouldSignInForSelf=YES' for PAS view presenter (%@)", v44, 0xCu);
    }

    objc_storeStrong(&v30, 0);
    [(PASUIDependentViewPresenter *)selfCopy->_pasViewPresenter setShouldSignInForSelf:1];
  }

  else
  {
    v28 = _AKLogSystem();
    v27 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v43, selfCopy->_pasViewPresenter);
      _os_log_error_impl(&dword_222379000, v28, v27, "PAS view presenter (%@) does not respond to 'shouldSignInForSelf' selector", v43, 0xCu);
    }

    objc_storeStrong(&v28, 0);
  }

  v14 = selfCopy->_pasViewPresenter;
  v13 = location[0];
  v20 = MEMORY[0x277D85DD0];
  v21 = -1073741824;
  v22 = 0;
  v23 = __77__AKInAppAuthenticationRemoteUIProvider_activateProximitySession_completion___block_invoke;
  v24 = &unk_2784A6420;
  v25 = MEMORY[0x277D82BE0](selfCopy);
  v26 = MEMORY[0x277D82BE0](v39);
  [(PASUIDependentViewPresenter *)v14 activateWithTemplateMessageSession:v13 completionHandler:&v20];
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __77__AKInAppAuthenticationRemoteUIProvider_activateProximitySession_completion___block_invoke(void *a1)
{
  v11[2] = a1;
  v11[1] = a1;
  v2 = MEMORY[0x277D85CD0];
  v1 = MEMORY[0x277D85CD0];
  queue = v2;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __77__AKInAppAuthenticationRemoteUIProvider_activateProximitySession_completion___block_invoke_2;
  v9 = &unk_2784A6420;
  v10 = MEMORY[0x277D82BE0](a1[4]);
  v11[0] = MEMORY[0x277D82BE0](a1[5]);
  dispatch_async(queue, &v5);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v11, 0);
  objc_storeStrong(&v10, 0);
}

- (void)_configureProximityAuthLoginOptionsWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_context);
  presentingViewController = [WeakRetained presentingViewController];
  ak_topPresentedViewController = [presentingViewController ak_topPresentedViewController];
  v4 = presentingViewController;
  presentingViewController = ak_topPresentedViewController;
  MEMORY[0x277D82BD8](v4);
  objc_opt_class();
  v36 = (objc_opt_isKindOfClass() & 1) == 0;
  objc_initWeak(&v35, selfCopy);
  v34 = objc_loadWeakRetained(&selfCopy->_proximityAuthViewController);
  v5 = MEMORY[0x223DB6C90](location[0]);
  proxAuthCompletion = selfCopy->_proxAuthCompletion;
  selfCopy->_proxAuthCompletion = v5;
  MEMORY[0x277D82BD8](proxAuthCompletion);
  v27 = MEMORY[0x277D85DD0];
  v28 = -1073741824;
  v29 = 0;
  v30 = __91__AKInAppAuthenticationRemoteUIProvider__configureProximityAuthLoginOptionsWithCompletion___block_invoke;
  v31 = &unk_2784A6720;
  objc_copyWeak(&v32, &v35);
  v33 = v36;
  [v34 setPrimaryButtonAction:&v27];
  v20 = MEMORY[0x277D85DD0];
  v21 = -1073741824;
  v22 = 0;
  v23 = __91__AKInAppAuthenticationRemoteUIProvider__configureProximityAuthLoginOptionsWithCompletion___block_invoke_3;
  v24 = &unk_2784A6720;
  objc_copyWeak(&v25, &v35);
  v26 = v36;
  [v34 setAlternateButtonAction:&v20];
  v14 = MEMORY[0x277D85DD0];
  v15 = -1073741824;
  v16 = 0;
  v17 = __91__AKInAppAuthenticationRemoteUIProvider__configureProximityAuthLoginOptionsWithCompletion___block_invoke_3_59;
  v18 = &unk_2784A6770;
  objc_copyWeak(&v19, &v35);
  [v34 setCancelAction:&v14];
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __91__AKInAppAuthenticationRemoteUIProvider__configureProximityAuthLoginOptionsWithCompletion___block_invoke_2_61;
  v12 = &unk_2784A6770;
  objc_copyWeak(&v13, &v35);
  [v34 setDeallocAction:&v8];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&v25);
  objc_destroyWeak(&v32);
  objc_storeStrong(&v34, 0);
  objc_destroyWeak(&v35);
  objc_storeStrong(&presentingViewController, 0);
  objc_storeStrong(location, 0);
}

void __91__AKInAppAuthenticationRemoteUIProvider__configureProximityAuthLoginOptionsWithCompletion___block_invoke(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v26 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v26;
    __os_log_helper_16_0_0(v25);
    _os_log_impl(&dword_222379000, log, type, "User choose primary fallback to proximity auth.", v25, 2u);
  }

  objc_storeStrong(location, 0);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v23 = objc_loadWeakRetained(WeakRetained + 13);
    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CEFF58] code:-13008 userInfo:0];
    v15 = MEMORY[0x277D85DD0];
    v16 = -1073741824;
    v17 = 0;
    v18 = __91__AKInAppAuthenticationRemoteUIProvider__configureProximityAuthLoginOptionsWithCompletion___block_invoke_55;
    v19 = &unk_2784A6550;
    v20 = MEMORY[0x277D82BE0](WeakRetained);
    v21 = MEMORY[0x223DB6C90](&v15);
    if (*(a1 + 40))
    {
      v4 = v23;
      v8 = MEMORY[0x277D85DD0];
      v9 = -1073741824;
      v10 = 0;
      v11 = __91__AKInAppAuthenticationRemoteUIProvider__configureProximityAuthLoginOptionsWithCompletion___block_invoke_2;
      v12 = &unk_2784A7378;
      v14 = MEMORY[0x277D82BE0](v21);
      v13 = MEMORY[0x277D82BE0](v22);
      [v4 dismissViewControllerAnimated:1 completion:&v8];
      objc_storeStrong(&v13, 0);
      objc_storeStrong(&v14, 0);
    }

    else
    {
      v3 = [v23 navigationController];
      v1 = [v3 popViewControllerAnimated:1];
      v2 = MEMORY[0x277D82BD8](v3);
      (*(v21 + 2))(v21, 0, v22, v2);
    }

    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v23, 0);
  }

  objc_storeStrong(&WeakRetained, 0);
}

void __91__AKInAppAuthenticationRemoteUIProvider__configureProximityAuthLoginOptionsWithCompletion___block_invoke_55(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  if (*(a1[4] + 6))
  {
    (*(*(a1[4] + 6) + 16))();
  }

  [a1[4] completeProximityAuth];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void __91__AKInAppAuthenticationRemoteUIProvider__configureProximityAuthLoginOptionsWithCompletion___block_invoke_3(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v23 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v23;
    __os_log_helper_16_0_0(v22);
    _os_log_impl(&dword_222379000, log, type, "User choose alternate/secondary fallback to proximity auth.", v22, 2u);
  }

  objc_storeStrong(location, 0);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v20 = objc_loadWeakRetained(WeakRetained + 13);
    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CEFF58] code:-13009 userInfo:0];
    v12 = MEMORY[0x277D85DD0];
    v13 = -1073741824;
    v14 = 0;
    v15 = __91__AKInAppAuthenticationRemoteUIProvider__configureProximityAuthLoginOptionsWithCompletion___block_invoke_57;
    v16 = &unk_2784A6550;
    v17 = MEMORY[0x277D82BE0](WeakRetained);
    v18 = MEMORY[0x223DB6C90](&v12);
    if (*(a1 + 40))
    {
      v1 = v20;
      v5 = MEMORY[0x277D85DD0];
      v6 = -1073741824;
      v7 = 0;
      v8 = __91__AKInAppAuthenticationRemoteUIProvider__configureProximityAuthLoginOptionsWithCompletion___block_invoke_2_58;
      v9 = &unk_2784A7378;
      v11 = MEMORY[0x277D82BE0](v18);
      v10 = MEMORY[0x277D82BE0](v19);
      [v1 dismissViewControllerAnimated:1 completion:&v5];
      objc_storeStrong(&v10, 0);
      objc_storeStrong(&v11, 0);
    }

    else
    {
      (*(v18 + 2))(v18, 0, v19);
    }

    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v20, 0);
  }

  objc_storeStrong(&WeakRetained, 0);
}

void __91__AKInAppAuthenticationRemoteUIProvider__configureProximityAuthLoginOptionsWithCompletion___block_invoke_57(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  if (*(a1[4] + 6))
  {
    (*(*(a1[4] + 6) + 16))();
  }

  [a1[4] completeProximityAuth];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void __91__AKInAppAuthenticationRemoteUIProvider__configureProximityAuthLoginOptionsWithCompletion___block_invoke_3_59(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v13;
    __os_log_helper_16_0_0(v12);
    _os_log_impl(&dword_222379000, log, type, "User canceled proximity auth.", v12, 2u);
  }

  objc_storeStrong(location, 0);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  v1 = WeakRetained;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __91__AKInAppAuthenticationRemoteUIProvider__configureProximityAuthLoginOptionsWithCompletion___block_invoke_60;
  v9 = &unk_2784A6550;
  v10 = MEMORY[0x277D82BE0](WeakRetained);
  [v1 dismissProximityPairingUIWithCompletion:&v5];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&WeakRetained, 0);
}

void __91__AKInAppAuthenticationRemoteUIProvider__configureProximityAuthLoginOptionsWithCompletion___block_invoke_60(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  if (*(a1[4] + 6))
  {
    (*(*(a1[4] + 6) + 16))();
  }

  [a1[4] completeProximityAuth];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

void __91__AKInAppAuthenticationRemoteUIProvider__configureProximityAuthLoginOptionsWithCompletion___block_invoke_2_61(id *a1)
{
  v7[2] = a1;
  v7[1] = a1;
  v7[0] = objc_loadWeakRetained(a1 + 4);
  if (v7[0] && *(v7[0] + 6))
  {
    location = _AKLogSystem();
    v5 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      log = location;
      type = v5;
      __os_log_helper_16_0_0(v4);
      _os_log_impl(&dword_222379000, log, type, "Calling end proximity auth on view dealloc", v4, 2u);
    }

    objc_storeStrong(&location, 0);
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CEFF58] code:-13006 userInfo:0];
    if (*(v7[0] + 6))
    {
      (*(*(v7[0] + 6) + 16))();
    }

    [v7[0] completeProximityAuth];
    objc_storeStrong(&v3, 0);
  }

  objc_storeStrong(v7, 0);
}

- (void)completeProximityAuth
{
  objc_storeWeak(&self->_proximityAuthViewController, 0);
  objc_storeStrong(&self->_navController, 0);
  proxAuthCompletion = self->_proxAuthCompletion;
  self->_proxAuthCompletion = 0;
  MEMORY[0x277D82BD8](proxAuthCompletion);
  objc_storeStrong(&self->_proxAuthResults, 0);
  objc_storeStrong(&self->_pasViewPresenter, 0);
  objc_storeStrong(&self->_proxSetupError, 0);
  [(AKInAppAuthenticationRemoteUIProvider *)self _enableIdleTimerIfNeeded];
}

- (void)_enableIdleTimerIfNeeded
{
  selfCopy = self;
  location[1] = a2;
  if (self->_didDisableIdleTimer)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] setIdleTimerDisabled:0];
    MEMORY[0x277D82BD8](mEMORY[0x277D75128]);
    selfCopy->_didDisableIdleTimer = 0;
  }

  else
  {
    location[0] = _AKLogSystem();
    v6 = 2;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
    {
      log = location[0];
      type = v6;
      __os_log_helper_16_0_0(v5);
      _os_log_debug_impl(&dword_222379000, log, type, "Skipping enabling idle timer...", v5, 2u);
    }

    objc_storeStrong(location, 0);
  }
}

- (void)_disableIdleTimerIfNeeded
{
  selfCopy = self;
  location[1] = a2;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  isIdleTimerDisabled = [mEMORY[0x277D75128] isIdleTimerDisabled];
  *&v2 = MEMORY[0x277D82BD8](mEMORY[0x277D75128]).n128_u64[0];
  if (isIdleTimerDisabled)
  {
    selfCopy->_didDisableIdleTimer = 0;
    location[0] = _AKLogSystem();
    v14 = 2;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
    {
      log = location[0];
      type = v14;
      __os_log_helper_16_0_0(v13);
      _os_log_debug_impl(&dword_222379000, log, type, "Client already has idle timer disabled...", v13, 2u);
    }

    objc_storeStrong(location, 0);
  }

  else
  {
    mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128]2 setIdleTimerDisabled:1];
    MEMORY[0x277D82BD8](mEMORY[0x277D75128]2);
    selfCopy->_didDisableIdleTimer = 1;
    v12 = _AKLogSystem();
    v11 = 2;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v3 = v12;
      v4 = v11;
      __os_log_helper_16_0_0(v10);
      _os_log_debug_impl(&dword_222379000, v3, v4, "Disabling idle timer...", v10, 2u);
    }

    objc_storeStrong(&v12, 0);
  }
}

- (void)dismissProximityPairingUIWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v19 = _AKLogSystem();
  v18 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    log = v19;
    type = v18;
    __os_log_helper_16_0_0(v17);
    _os_log_impl(&dword_222379000, log, type, "Dismissing Proximity Pairing UI...", v17, 2u);
  }

  objc_storeStrong(&v19, 0);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_proximityAuthViewController);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __81__AKInAppAuthenticationRemoteUIProvider_dismissProximityPairingUIWithCompletion___block_invoke;
  v12 = &unk_2784A6818;
  v13 = MEMORY[0x277D82BE0](WeakRetained);
  v14 = MEMORY[0x277D82BE0](selfCopy);
  v15 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(location, 0);
}

void __81__AKInAppAuthenticationRemoteUIProvider_dismissProximityPairingUIWithCompletion___block_invoke(void *a1)
{
  v14[2] = a1;
  v14[1] = a1;
  if (a1[4])
  {
    v3 = a1[4];
    v8 = MEMORY[0x277D85DD0];
    v9 = -1073741824;
    v10 = 0;
    v11 = __81__AKInAppAuthenticationRemoteUIProvider_dismissProximityPairingUIWithCompletion___block_invoke_2;
    v12 = &unk_2784A63C8;
    v13 = MEMORY[0x277D82BE0](a1[5]);
    v14[0] = MEMORY[0x277D82BE0](a1[6]);
    [v3 dismissViewControllerAnimated:1 completion:&v8];
    objc_storeStrong(v14, 0);
    objc_storeStrong(&v13, 0);
  }

  else
  {
    v7 = _AKLogSystem();
    v6 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      log = v7;
      type = v6;
      __os_log_helper_16_0_0(v5);
      _os_log_impl(&dword_222379000, log, type, "Proximity Pairing UI is not shown, nothing to clean up", v5, 2u);
    }

    objc_storeStrong(&v7, 0);
    if (a1[6])
    {
      (*(a1[6] + 16))();
    }
  }
}

void __81__AKInAppAuthenticationRemoteUIProvider_dismissProximityPairingUIWithCompletion___block_invoke_2(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CEFF58] code:-13004 userInfo:0];
  if (*(a1[4] + 64))
  {
    objc_storeStrong(location, *(a1[4] + 64));
  }

  if (a1[5])
  {
    (*(a1[5] + 16))();
  }

  objc_storeStrong(location, 0);
}

- (void)showProximityErrorWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v21 = _AKLogSystem();
  v20 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    log = v21;
    type = v20;
    __os_log_helper_16_0_0(v19);
    _os_log_impl(&dword_222379000, log, type, "Showing Proximity Error UI...", v19, 2u);
  }

  objc_storeStrong(&v21, 0);
  v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CEFF58] code:-130011 userInfo:0];
  proxSetupError = selfCopy->_proxSetupError;
  selfCopy->_proxSetupError = v3;
  MEMORY[0x277D82BD8](proxSetupError);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_proximityAuthViewController);
  v6 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  queue = v6;
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __74__AKInAppAuthenticationRemoteUIProvider_showProximityErrorWithCompletion___block_invoke;
  v14 = &unk_2784A7328;
  v15 = MEMORY[0x277D82BE0](WeakRetained);
  v17 = MEMORY[0x277D82BE0](location[0]);
  v16 = MEMORY[0x277D82BE0](selfCopy);
  dispatch_async(queue, &v10);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(location, 0);
}

void __74__AKInAppAuthenticationRemoteUIProvider_showProximityErrorWithCompletion___block_invoke(uint64_t a1)
{
  v8[2] = a1;
  v8[1] = a1;
  if (*(a1 + 32))
  {
    v8[0] = [[AKProximityMessageViewModel alloc] initWithType:4];
    [*(a1 + 32) updateViewWithViewModel:v8[0]];
    objc_storeStrong(v8, 0);
  }

  else
  {
    v7 = _AKLogSystem();
    v6 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      log = v7;
      type = v6;
      __os_log_helper_16_0_0(v5);
      _os_log_impl(&dword_222379000, log, type, "Proximity Pairing UI is not shown, nothing to clean up", v5, 2u);
    }

    objc_storeStrong(&v7, 0);
    if (*(a1 + 48))
    {
      v1 = *(*(a1 + 40) + 64);
      (*(*(a1 + 48) + 16))();
    }
  }
}

- (void)presentKeepUsingUIForAppleID:(id)d completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __81__AKInAppAuthenticationRemoteUIProvider_presentKeepUsingUIForAppleID_completion___block_invoke;
  v12 = &unk_2784A6818;
  v13 = MEMORY[0x277D82BE0](location[0]);
  v14 = MEMORY[0x277D82BE0](selfCopy);
  v15 = MEMORY[0x277D82BE0](v16);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void __81__AKInAppAuthenticationRemoteUIProvider_presentKeepUsingUIForAppleID_completion___block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v49 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v51, *(a1 + 32));
    _os_log_impl(&dword_222379000, location[0], v49, "Presenting keep using alert for %@", v51, 0xCu);
  }

  objc_storeStrong(location, 0);
  v48 = [*(a1 + 40) context];
  v5 = MEMORY[0x277CCACA8];
  v9 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:?];
  v8 = [v9 localizedStringForKey:@"KEEP_USING_ALERT_TITLE_REBRAND" value:? table:?];
  v7 = [MEMORY[0x277CF0300] formattedUsernameFromUsername:*(a1 + 32)];
  [v48 serviceType];
  v6 = AKLocStringFromServiceType();
  v47 = [v5 stringWithFormat:v8, v7, v6];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  *&v1 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  v46 = [MEMORY[0x277D75110] alertControllerWithTitle:v47 message:0 preferredStyle:{1, v1}];
  v11 = v46;
  v10 = MEMORY[0x277D750F8];
  v14 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKitUI"];
  v13 = [v14 localizedStringForKey:@"KEEP_USING_ALERT_YES_BUTTON" value:&stru_28358EF68 table:@"Localizable"];
  v38[1] = MEMORY[0x277D85DD0];
  v39 = -1073741824;
  v40 = 0;
  v41 = __81__AKInAppAuthenticationRemoteUIProvider_presentKeepUsingUIForAppleID_completion___block_invoke_80;
  v42 = &unk_2784A73A0;
  v43 = MEMORY[0x277D82BE0](v48);
  v44 = MEMORY[0x277D82BE0](*(a1 + 32));
  v45 = MEMORY[0x277D82BE0](*(a1 + 48));
  v12 = [v10 actionWithTitle:v13 style:? handler:?];
  [v11 addAction:?];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  *&v2 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  v16 = v46;
  v15 = MEMORY[0x277D750F8];
  v19 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:{@"com.apple.AuthKitUI", v2}];
  v18 = [v19 localizedStringForKey:@"KEEP_USING_ALERT_NO_BUTTON_REBRAND" value:&stru_28358EF68 table:@"Localizable"];
  v33 = MEMORY[0x277D85DD0];
  v34 = -1073741824;
  v35 = 0;
  v36 = __81__AKInAppAuthenticationRemoteUIProvider_presentKeepUsingUIForAppleID_completion___block_invoke_85;
  v37 = &unk_2784A64D8;
  v38[0] = MEMORY[0x277D82BE0](*(a1 + 48));
  v17 = [v15 actionWithTitle:v18 style:0 handler:&v33];
  [v16 addAction:?];
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  *&v3 = MEMORY[0x277D82BD8](v19).n128_u64[0];
  v21 = v46;
  v20 = MEMORY[0x277D750F8];
  v24 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:{@"com.apple.AuthKitUI", v3}];
  v23 = [v24 localizedStringForKey:@"KEEP_USING_ALERT_CANCEL_BUTTON" value:&stru_28358EF68 table:@"Localizable"];
  v27 = MEMORY[0x277D85DD0];
  v28 = -1073741824;
  v29 = 0;
  v30 = __81__AKInAppAuthenticationRemoteUIProvider_presentKeepUsingUIForAppleID_completion___block_invoke_89;
  v31 = &unk_2784A64D8;
  v32 = MEMORY[0x277D82BE0](*(a1 + 48));
  v22 = [v20 actionWithTitle:v23 style:0 handler:&v27];
  [v21 addAction:?];
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  *&v4 = MEMORY[0x277D82BD8](v24).n128_u64[0];
  v25 = [v48 presentingViewController];
  [v25 presentViewController:v46 animated:1 completion:0];
  MEMORY[0x277D82BD8](v25);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(v38, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v47, 0);
  objc_storeStrong(&v48, 0);
  *MEMORY[0x277D85DE8];
}

void __81__AKInAppAuthenticationRemoteUIProvider_presentKeepUsingUIForAppleID_completion___block_invoke_80(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7[1] = a1;
  v7[0] = _AKLogSystem();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v7[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v7[0];
    type = v6;
    __os_log_helper_16_0_0(v5);
    _os_log_impl(&dword_222379000, log, type, "User accepted using the suggested Apple ID.", v5, 2u);
  }

  objc_storeStrong(v7, 0);
  [*(a1 + 32) setUsername:*(a1 + 40)];
  [*(a1 + 32) setIsUsernameEditable:0];
  (*(*(a1 + 48) + 16))();
  objc_storeStrong(location, 0);
}

void __81__AKInAppAuthenticationRemoteUIProvider_presentKeepUsingUIForAppleID_completion___block_invoke_85(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9[1] = a1;
  v9[0] = _AKLogSystem();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v9[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v9[0];
    type = v8;
    __os_log_helper_16_0_0(v7);
    _os_log_impl(&dword_222379000, log, type, "User opted to use another Apple ID.", v7, 2u);
  }

  objc_storeStrong(v9, 0);
  if (a1[4])
  {
    v2 = a1[4];
    v3 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7119];
    (*(v2 + 16))(v2, 0);
    MEMORY[0x277D82BD8](v3);
  }

  objc_storeStrong(location, 0);
}

void __81__AKInAppAuthenticationRemoteUIProvider_presentKeepUsingUIForAppleID_completion___block_invoke_89(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9[1] = a1;
  v9[0] = _AKLogSystem();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v9[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v9[0];
    type = v8;
    __os_log_helper_16_0_0(v7);
    _os_log_impl(&dword_222379000, log, type, "User opted to cancel using the suggested Apple ID.", v7, 2u);
  }

  objc_storeStrong(v9, 0);
  v2 = a1[4];
  v3 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7003];
  (*(v2 + 16))(v2, 0);
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (void)dismissKeepUsingUIWithCompletion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  (*(location[0] + 2))(location[0], 1, 0);
  objc_storeStrong(location, 0);
}

- (void)presentSecondFactorUIWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __77__AKInAppAuthenticationRemoteUIProvider_presentSecondFactorUIWithCompletion___block_invoke;
  v10 = &unk_2784A63C8;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  v12 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void __77__AKInAppAuthenticationRemoteUIProvider_presentSecondFactorUIWithCompletion___block_invoke(void *a1)
{
  v9[2] = a1;
  v9[1] = a1;
  v2 = a1[4];
  v3 = MEMORY[0x277D85DD0];
  v4 = -1073741824;
  v5 = 0;
  v6 = __77__AKInAppAuthenticationRemoteUIProvider_presentSecondFactorUIWithCompletion___block_invoke_2;
  v7 = &unk_2784A63C8;
  v8 = MEMORY[0x277D82BE0](a1[4]);
  v9[0] = MEMORY[0x277D82BE0](a1[5]);
  [v2 cleanUpBasicLoginWithCompletion:?];
  objc_storeStrong(v9, 0);
  objc_storeStrong(&v8, 0);
}

void __77__AKInAppAuthenticationRemoteUIProvider_presentSecondFactorUIWithCompletion___block_invoke_2(uint64_t a1)
{
  v33[2] = a1;
  v33[1] = a1;
  v33[0] = 0;
  v32 = [*(a1 + 32) context];
  location = [v32 presentingViewController];
  v21 = [location presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  *&v1 = MEMORY[0x277D82BD8](v21).n128_u64[0];
  if (isKindOfClass)
  {
    v2 = [location presentedViewController];
    v3 = v33[0];
    v33[0] = v2;
    v19 = [v32 _message];
    v29 = 0;
    v27 = 0;
    if (v19)
    {
      [v33[0] setReason:v19];
    }

    else
    {
      v4 = *(a1 + 32);
      v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v29 = 1;
      v28 = [v30 localizedStringForKey:@"ENTER_VERIFICATION_CODE" value:&stru_28358EF68 table:@"Localizable"];
      v27 = 1;
      [v33[0] setReason:v28];
    }

    if (v27)
    {
      MEMORY[0x277D82BD8](v28);
    }

    if (v29)
    {
      MEMORY[0x277D82BD8](v30);
    }

    v5 = MEMORY[0x277D82BD8](v19).n128_u64[0];
  }

  else if ([v32 piggybackingForTrustedDevice] == 1)
  {
    v6 = [[AKBasicLoginAlertController alloc] initWithAlertStyle:5];
    v7 = v33[0];
    v33[0] = v6;
    MEMORY[0x277D82BD8](v7);
    v8 = *(a1 + 32);
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v18 localizedStringForKey:@"ENTER_VERIFICATION_CODE_REPAIR" value:&stru_28358EF68 table:@"Localizable"];
    [v33[0] setReason:?];
    MEMORY[0x277D82BD8](v17);
    v5 = MEMORY[0x277D82BD8](v18).n128_u64[0];
  }

  else
  {
    v9 = [[AKBasicLoginAlertController alloc] initWithAlertStyle:4];
    v10 = v33[0];
    v33[0] = v9;
    v16 = [v32 _message];
    v25 = 0;
    v23 = 0;
    if (v16)
    {
      [v33[0] setReason:v16];
    }

    else
    {
      v11 = *(a1 + 32);
      v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v25 = 1;
      v24 = [v26 localizedStringForKey:@"ENTER_VERIFICATION_CODE" value:&stru_28358EF68 table:@"Localizable"];
      v23 = 1;
      [v33[0] setReason:v24];
    }

    if (v23)
    {
      MEMORY[0x277D82BD8](v24);
    }

    if (v25)
    {
      MEMORY[0x277D82BD8](v26);
    }

    v5 = MEMORY[0x277D82BD8](v16).n128_u64[0];
  }

  v13 = [v32 username];
  [v33[0] setUsername:?];
  [v33[0] setDelegate:{*(a1 + 32), MEMORY[0x277D82BD8](v13).n128_f64[0]}];
  v14 = [*(a1 + 32) _secondFactorActionsForAlert:v33[0] completion:*(a1 + 40)];
  [v33[0] setSecondFactorActions:?];
  v15 = [v33[0] presentingViewController];
  *&v12 = MEMORY[0x277D82BD8](v15).n128_u64[0];
  if (!v15)
  {
    [location presentViewController:v33[0] animated:1 completion:{0, v12}];
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(v33, 0);
}

- (void)presentSecondFactorAlertWithError:(id)error title:(id)title message:(id)message completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v24 = 0;
  objc_storeStrong(&v24, title);
  v23 = 0;
  objc_storeStrong(&v23, message);
  v22 = 0;
  objc_storeStrong(&v22, completion);
  v10 = MEMORY[0x277D85CD0];
  v6 = MEMORY[0x277D85CD0];
  queue = v10;
  v12 = MEMORY[0x277D85DD0];
  v13 = -1073741824;
  v14 = 0;
  v15 = __100__AKInAppAuthenticationRemoteUIProvider_presentSecondFactorAlertWithError_title_message_completion___block_invoke;
  v16 = &unk_2784A73F0;
  v17 = MEMORY[0x277D82BE0](selfCopy);
  v18 = MEMORY[0x277D82BE0](location[0]);
  v21 = MEMORY[0x277D82BE0](v22);
  v19 = MEMORY[0x277D82BE0](v24);
  v20 = MEMORY[0x277D82BE0](v23);
  dispatch_async(queue, &v12);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
}

void __100__AKInAppAuthenticationRemoteUIProvider_presentSecondFactorAlertWithError_title_message_completion___block_invoke(uint64_t a1)
{
  v44[2] = a1;
  v44[1] = a1;
  v44[0] = [*(a1 + 32) context];
  v43 = [v44[0] presentingViewController];
  v22 = [*(a1 + 40) domain];
  v23 = 0;
  if ([v22 isEqual:*MEMORY[0x277CEFF48]])
  {
    v23 = [*(a1 + 40) code] == -7036;
  }

  *&v1 = MEMORY[0x277D82BD8](v22).n128_u64[0];
  if (v23)
  {
    v42 = [v43 presentedViewController];
    [v42 jiggleAView];
    [v42 clearSecondFactorEntry];
    [v42 setPasscodeFieldDisabled:0];
    if ([v44[0] piggybackingForTrustedDevice] == 1)
    {
      v2 = *(a1 + 32);
      v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v19 = [v20 localizedStringForKey:@"ENTER_VERIFICATION_CODE_REPAIR" value:&stru_28358EF68 table:@"Localizable"];
      [v42 setReason:?];
      MEMORY[0x277D82BD8](v19);
      v3 = MEMORY[0x277D82BD8](v20).n128_u64[0];
    }

    else
    {
      v18 = [v44[0] _message];
      v40 = 0;
      v38 = 0;
      if (v18)
      {
        [v42 setReason:v18];
      }

      else
      {
        v4 = *(a1 + 32);
        v41 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v40 = 1;
        v39 = [v41 localizedStringForKey:@"ENTER_VERIFICATION_CODE" value:&stru_28358EF68 table:@"Localizable"];
        v38 = 1;
        [v42 setReason:v39];
      }

      if (v38)
      {
        MEMORY[0x277D82BD8](v39);
      }

      if (v40)
      {
        MEMORY[0x277D82BD8](v41);
      }

      v3 = MEMORY[0x277D82BD8](v18).n128_u64[0];
    }

    v17 = [*(a1 + 32) _secondFactorActionsForAlert:v42 completion:{*(a1 + 64), *&v3}];
    [v42 setSecondFactorActions:?];
    MEMORY[0x277D82BD8](v17);
    objc_storeStrong(&v42, 0);
  }

  else
  {
    [v43 dismissViewControllerAnimated:1 completion:v1];
    v37 = [MEMORY[0x277D75110] alertControllerWithTitle:*(a1 + 48) message:*(a1 + 56) preferredStyle:?];
    v8 = v37;
    v7 = MEMORY[0x277D750F8];
    v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:?];
    v10 = [v11 localizedStringForKey:@"CANCEL" value:? table:?];
    v31 = MEMORY[0x277D85DD0];
    v32 = -1073741824;
    v33 = 0;
    v34 = __100__AKInAppAuthenticationRemoteUIProvider_presentSecondFactorAlertWithError_title_message_completion___block_invoke_2;
    v35 = &unk_2784A64D8;
    v36 = MEMORY[0x277D82BE0](*(a1 + 64));
    v9 = [v7 actionWithTitle:v10 style:1 handler:&v31];
    [v8 addAction:?];
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    *&v5 = MEMORY[0x277D82BD8](v11).n128_u64[0];
    v13 = v37;
    v12 = MEMORY[0x277D750F8];
    v16 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:{@"com.apple.AuthKitUI", v5}];
    v15 = [v16 localizedStringForKey:@"TRY_AGAIN" value:&stru_28358EF68 table:@"Localizable"];
    v24 = MEMORY[0x277D85DD0];
    v25 = -1073741824;
    v26 = 0;
    v27 = __100__AKInAppAuthenticationRemoteUIProvider_presentSecondFactorAlertWithError_title_message_completion___block_invoke_103;
    v28 = &unk_2784A73C8;
    v29 = MEMORY[0x277D82BE0](*(a1 + 32));
    v30 = MEMORY[0x277D82BE0](*(a1 + 64));
    v14 = [v12 actionWithTitle:v15 style:0 handler:&v24];
    [v13 addAction:?];
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    *&v6 = MEMORY[0x277D82BD8](v16).n128_u64[0];
    [v43 presentViewController:v37 animated:1 completion:{0, v6}];
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v36, 0);
    objc_storeStrong(&v37, 0);
  }

  objc_storeStrong(&v43, 0);
  objc_storeStrong(v44, 0);
}

void __100__AKInAppAuthenticationRemoteUIProvider_presentSecondFactorAlertWithError_title_message_completion___block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9[1] = a1;
  v9[0] = _AKLogSystem();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v9[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v9[0];
    type = v8;
    __os_log_helper_16_0_0(v7);
    _os_log_impl(&dword_222379000, log, type, "User canceled second-factor entry!", v7, 2u);
  }

  objc_storeStrong(v9, 0);
  v2 = a1[4];
  v3 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7003];
  (*(v2 + 16))(v2, 0);
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

void __100__AKInAppAuthenticationRemoteUIProvider_presentSecondFactorAlertWithError_title_message_completion___block_invoke_103(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [*(a1 + 32) presentSecondFactorUIWithCompletion:*(a1 + 40)];
  objc_storeStrong(location, 0);
}

- (void)dismissSecondFactorUIWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __77__AKInAppAuthenticationRemoteUIProvider_dismissSecondFactorUIWithCompletion___block_invoke;
  v10 = &unk_2784A63C8;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  v12 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void __77__AKInAppAuthenticationRemoteUIProvider_dismissSecondFactorUIWithCompletion___block_invoke(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  [*(*(a1 + 32) + 96) clearObjectModel];
  v3 = [*(a1 + 32) context];
  location[0] = [v3 presentingViewController];
  v4 = [location[0] presentedViewController];
  v1 = MEMORY[0x277D82BD8](v4);
  if (v4)
  {
    [location[0] dismissViewControllerAnimated:1 completion:{0, v1.n128_f64[0]}];
  }

  (*(*(a1 + 40) + 16))(v1);
  objc_storeStrong(location, 0);
}

- (void)presentIDPProvidedUIWithConfiguration:(id)configuration completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  v34 = 0;
  objc_storeStrong(&v34, completion);
  if (AuthenticationServicesLibraryCore(0))
  {
    v4 = objc_alloc(getASWebAuthenticationSessionClass());
  }

  else
  {
    v4 = [0 alloc];
  }

  v15 = v4;
  request = [location[0] request];
  v16 = [AKIDPUtility idpURLFromRequest:?];
  v14 = AKIDPUtilityIDPScheme;
  v26 = MEMORY[0x277D85DD0];
  v27 = -1073741824;
  v28 = 0;
  v29 = __90__AKInAppAuthenticationRemoteUIProvider_presentIDPProvidedUIWithConfiguration_completion___block_invoke;
  v30 = &unk_2784A7440;
  v31 = MEMORY[0x277D82BE0](location[0]);
  v32 = MEMORY[0x277D82BE0](selfCopy);
  v33 = MEMORY[0x277D82BE0](v34);
  v5 = [v15 initWithURL:v16 callbackURLScheme:v14 completionHandler:&v26];
  webAuthenticationSession = selfCopy->_webAuthenticationSession;
  selfCopy->_webAuthenticationSession = v5;
  MEMORY[0x277D82BD8](webAuthenticationSession);
  MEMORY[0x277D82BD8](v16);
  *&v7 = MEMORY[0x277D82BD8](request).n128_u64[0];
  [(ASWebAuthenticationSession *)selfCopy->_webAuthenticationSession setPrefersEphemeralWebBrowserSession:1, v7];
  [(ASWebAuthenticationSession *)selfCopy->_webAuthenticationSession setPresentationContextProvider:selfCopy];
  [(ASWebAuthenticationSession *)selfCopy->_webAuthenticationSession start];
  modalRemoteUINavController = [(AKInAppAuthenticationRemoteUIDelegate *)selfCopy->_remoteUIControllerDelegate modalRemoteUINavController];
  *&v8 = MEMORY[0x277D82BD8](modalRemoteUINavController).n128_u64[0];
  if (modalRemoteUINavController)
  {
    [(AKInAppAuthenticationRemoteUIProvider *)selfCopy _contextDidPresentLoginController];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->_context);
    presentingViewController = [WeakRetained presentingViewController];
    v9 = objc_alloc(MEMORY[0x277D757A0]);
    v11 = objc_opt_new();
    v10 = [v9 initWithRootViewController:?];
    v20 = MEMORY[0x277D85DD0];
    v21 = -1073741824;
    v22 = 0;
    v23 = __90__AKInAppAuthenticationRemoteUIProvider_presentIDPProvidedUIWithConfiguration_completion___block_invoke_2;
    v24 = &unk_2784A5C90;
    v25 = MEMORY[0x277D82BE0](selfCopy);
    [presentingViewController presentViewController:v10 animated:1 completion:&v20];
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](presentingViewController);
    MEMORY[0x277D82BD8](WeakRetained);
    objc_storeStrong(&v25, 0);
  }

  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
}

void __90__AKInAppAuthenticationRemoteUIProvider_presentIDPProvidedUIWithConfiguration_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v24 = 0;
  objc_storeStrong(&v24, a3);
  v23[1] = a1;
  v8 = location[0];
  v9 = [*(a1 + 32) request];
  v23[0] = [AKIDPUtility parametersFromResponseURL:v8 request:?];
  MEMORY[0x277D82BD8](v9);
  if (v24)
  {
    v22 = _AKLogSystem();
    v21 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v27, v24);
      _os_log_error_impl(&dword_222379000, v22, v21, "IDP ASWebAuthenticationSession completed error: %@", v27, 0xCu);
    }

    objc_storeStrong(&v22, 0);
  }

  else
  {
    v20 = _AKLogSystem();
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v26, v23[0]);
      _os_log_impl(&dword_222379000, v20, v19, "IDP ASWebAuthenticationSession completed parameters: %@", v26, 0xCu);
    }

    objc_storeStrong(&v20, 0);
  }

  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __90__AKInAppAuthenticationRemoteUIProvider_presentIDPProvidedUIWithConfiguration_completion___block_invoke_105;
  v14 = &unk_2784A7418;
  v15 = MEMORY[0x277D82BE0](*(a1 + 40));
  v18 = MEMORY[0x277D82BE0](*(a1 + 48));
  v16 = MEMORY[0x277D82BE0](v23[0]);
  v17 = MEMORY[0x277D82BE0](v24);
  dispatch_async(queue, &v10);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

double __90__AKInAppAuthenticationRemoteUIProvider_presentIDPProvidedUIWithConfiguration_completion___block_invoke_105(uint64_t a1)
{
  [*(a1 + 32) _contextWillDismissLoginAlertController];
  v4 = *(a1 + 56);
  v3 = *(a1 + 40);
  v5 = [AKIDPUtility convertError:*(a1 + 48)];
  (*(v4 + 16))(v4, 0, v3);
  *&result = MEMORY[0x277D82BD8](v5).n128_u64[0];
  return result;
}

- (void)presentServerProvidedUIWithConfiguration:(id)configuration completion:(id)completion
{
  v43 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  v39 = 0;
  objc_storeStrong(&v39, completion);
  v38 = _AKLogSystem();
  v37 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v42, selfCopy, location[0]);
    _os_log_impl(&dword_222379000, v38, v37, "%@: Presenting server provided UI with configuration (%@)", v42, 0x16u);
  }

  objc_storeStrong(&v38, 0);
  context = [(AKInAppAuthenticationRemoteUIProvider *)selfCopy context];
  if (([context forceInlinePresentation] & 1) != 0 && objc_msgSend(location[0], "presentationType") != 2)
  {
    [(AKInAppAuthenticationRemoteUIDelegate *)selfCopy->_remoteUIControllerDelegate setOverrideFirstActionSignal:1];
  }

  v4 = [AKAppleIDServerUIContextController alloc];
  v35 = [(AKAppleIDServerUIContextController *)v4 initWithRequestConfiguration:location[0] completion:v39];
  [(AKInAppAuthenticationRemoteUIDelegate *)selfCopy->_remoteUIControllerDelegate setServerUIContextController:v35];
  presentingViewController = [context presentingViewController];
  remoteUIController = [(AKInAppAuthenticationRemoteUIProvider *)selfCopy remoteUIController];
  ak_topPresentedViewController = [presentingViewController ak_topPresentedViewController];
  [(RemoteUIController *)remoteUIController setHostViewController:?];
  MEMORY[0x277D82BD8](ak_topPresentedViewController);
  *&v5 = MEMORY[0x277D82BD8](remoteUIController).n128_u64[0];
  ruiPreferences = [(AKInAppAuthenticationRemoteUIProvider *)selfCopy ruiPreferences];
  v6 = MEMORY[0x277D82BD8](ruiPreferences).n128_u64[0];
  if (ruiPreferences)
  {
    remoteUIController2 = [(AKInAppAuthenticationRemoteUIProvider *)selfCopy remoteUIController];
    ruiPreferences2 = [(AKInAppAuthenticationRemoteUIProvider *)selfCopy ruiPreferences];
    [(RemoteUIController *)remoteUIController2 presentLoadingSheet:?];
    MEMORY[0x277D82BD8](ruiPreferences2);
    v6 = MEMORY[0x277D82BD8](remoteUIController2).n128_u64[0];
  }

  remoteUIController3 = [(AKInAppAuthenticationRemoteUIProvider *)selfCopy remoteUIController];
  v12 = *MEMORY[0x277CEFEC0];
  v28 = MEMORY[0x277D85DD0];
  v29 = -1073741824;
  v30 = 0;
  v31 = __93__AKInAppAuthenticationRemoteUIProvider_presentServerProvidedUIWithConfiguration_completion___block_invoke;
  v32 = &unk_2784A7468;
  v33 = MEMORY[0x277D82BE0](v35);
  [(RemoteUIController *)remoteUIController3 setHandlerForElementName:v12 handler:&v28];
  *&v7 = MEMORY[0x277D82BD8](remoteUIController3).n128_u64[0];
  if (selfCopy->_basicLoginAlertController || selfCopy->_basicLoginViewController)
  {
    v11 = selfCopy;
    v20 = MEMORY[0x277D85DD0];
    v21 = -1073741824;
    v22 = 0;
    v23 = __93__AKInAppAuthenticationRemoteUIProvider_presentServerProvidedUIWithConfiguration_completion___block_invoke_2;
    v24 = &unk_2784A6360;
    v25 = MEMORY[0x277D82BE0](selfCopy);
    v26 = MEMORY[0x277D82BE0](presentingViewController);
    v27 = MEMORY[0x277D82BE0](location[0]);
    [(AKInAppAuthenticationRemoteUIProvider *)v11 cleanUpBasicLoginWithCompletion:&v20];
    objc_storeStrong(&v27, 0);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v25, 0);
  }

  else
  {
    remoteUIController4 = [(AKInAppAuthenticationRemoteUIProvider *)selfCopy remoteUIController];
    request = [location[0] request];
    v8 = [request mutableCopy];
    [RemoteUIController loadRequest:remoteUIController4 completion:"loadRequest:completion:"];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](request);
    MEMORY[0x277D82BD8](remoteUIController4);
  }

  objc_storeStrong(&v33, 0);
  objc_storeStrong(&presentingViewController, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&context, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __93__AKInAppAuthenticationRemoteUIProvider_presentServerProvidedUIWithConfiguration_completion___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10 = 0;
  objc_storeStrong(&v10, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8[1] = a1;
  v8[0] = [v9 objectForKeyedSubscript:*MEMORY[0x277CEFEE8]];
  if (![a1[4] handleAuthKitActionAttribute:v8[0]] && (objc_msgSend(v8[0], "isEqualToString:", *MEMORY[0x277CEFEF0]) & 1) != 0)
  {
    v4 = [a1[4] serverDataHarvester];
    [v4 harvestDataFromServerUIObjectModel:location[0]];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

double __93__AKInAppAuthenticationRemoteUIProvider_presentServerProvidedUIWithConfiguration_completion___block_invoke_2(id *a1)
{
  v3 = [a1[4] remoteUIController];
  v2 = [a1[5] ak_topPresentedViewController];
  [v3 setHostViewController:?];
  MEMORY[0x277D82BD8](v2);
  v7 = [a1[4] remoteUIController];
  v6 = [a1[6] request];
  v5 = [v6 mutableCopy];
  [v7 loadRequest:? completion:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  *&result = MEMORY[0x277D82BD8](v7).n128_u64[0];
  return result;
}

- (void)dismissServerProvidedUIWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v25 = _AKLogSystem();
  v24 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    log = v25;
    type = v24;
    __os_log_helper_16_0_0(v23);
    _os_log_impl(&dword_222379000, log, type, "Client was asked to dismiss server-provided UI.", v23, 2u);
  }

  objc_storeStrong(&v25, 0);
  context = [(AKInAppAuthenticationRemoteUIProvider *)selfCopy context];
  presentingViewController = [(AKAppleIDAuthenticationInAppContext *)context presentingViewController];
  if ([(AKAppleIDAuthenticationInAppContext *)context isPresentingServerUI])
  {
    viewControllers = [(UINavigationController *)selfCopy->_navController viewControllers];
    v3 = [(NSArray *)viewControllers containsObject:selfCopy->_basicLoginAlertController];
    v16 = 0;
    v8 = 1;
    if (!v3)
    {
      viewControllers2 = [(UINavigationController *)selfCopy->_navController viewControllers];
      v16 = 1;
      v8 = [(NSArray *)viewControllers2 containsObject:selfCopy->_basicLoginViewController];
    }

    if (v16)
    {
      MEMORY[0x277D82BD8](viewControllers2);
    }

    *&v4 = MEMORY[0x277D82BD8](viewControllers).n128_u64[0];
    if (v8)
    {
      v15 = _AKLogSystem();
      v14 = 2;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v5 = v15;
        v6 = v14;
        __os_log_helper_16_0_0(v13);
        _os_log_debug_impl(&dword_222379000, v5, v6, "We still have basic login UI in our nav stack. Ignoring dismiss request.", v13, 2u);
      }

      objc_storeStrong(&v15, 0);
    }

    else if (![(AKAppleIDAuthenticationInAppContext *)context forceInlinePresentation])
    {
      [presentingViewController dismissViewControllerAnimated:1 completion:0];
    }
  }

  else
  {
    v20 = _AKLogSystem();
    v19 = 2;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v9 = v20;
      v10 = v19;
      __os_log_helper_16_0_0(v18);
      _os_log_debug_impl(&dword_222379000, v9, v10, "Looks like the InApp UI has already been dismissed.", v18, 2u);
    }

    objc_storeStrong(&v20, 0);
  }

  [(AKAppleIDAuthenticationInAppContext *)context setPresentingServerUI:0];
  [(AKInAppAuthenticationRemoteUIProvider *)selfCopy _clearRemoteUIController];
  (*(location[0] + 2))(location[0], 1);
  objc_storeStrong(&presentingViewController, 0);
  objc_storeStrong(&context, 0);
  objc_storeStrong(location, 0);
}

- (void)presentBiometricOrPasscodeValidationForAppleID:(id)d completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v15 = 0;
  objc_storeStrong(&v15, completion);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __99__AKInAppAuthenticationRemoteUIProvider_presentBiometricOrPasscodeValidationForAppleID_completion___block_invoke;
  v12 = &unk_2784A63C8;
  v13 = MEMORY[0x277D82BE0](selfCopy);
  v14 = MEMORY[0x277D82BE0](v15);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

void __99__AKInAppAuthenticationRemoteUIProvider_presentBiometricOrPasscodeValidationForAppleID_completion___block_invoke(void *a1)
{
  v61[2] = *MEMORY[0x277D85DE8];
  v58[2] = a1;
  v58[1] = a1;
  v58[0] = objc_opt_new();
  v25 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKitUI"];
  v24 = [v25 localizedStringForKey:@"CANCEL" value:? table:?];
  [v58[0] setLocalizedCancelTitle:?];
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  [v58[0] setTouchIDAuthenticationAllowableReuseDuration:20.0];
  [v58[0] setTouchIDAuthenticationRetryLimit:&unk_2835AAE70];
  v57 = 0;
  v56 = 2;
  v1 = a1[4];
  v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v55 = [v26 localizedStringForKey:@"SIGN_IN" value:&stru_28358EF68 table:@"Localizable"];
  MEMORY[0x277D82BD8](v26);
  WeakRetained = objc_loadWeakRetained((a1[4] + 112));
  v29 = [WeakRetained title];
  if (v29)
  {
    v2 = MEMORY[0x277D82BE0](v29);
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](v55);
  }

  location = v2;
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](WeakRetained);
  v3 = a1[4];
  v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v53 = [v21 localizedStringForKey:@"AUTHORIZE_PASSCODE_VALIDATION_TITLE" value:&stru_28358EF68 table:@"Localizable"];
  MEMORY[0x277D82BD8](v21);
  v22 = objc_loadWeakRetained((a1[4] + 112));
  v51 = 0;
  v23 = 0;
  if ([v22 isPasscodeOnlyPolicy])
  {
    v52 = objc_loadWeakRetained((a1[4] + 112));
    v51 = 1;
    v23 = [v52 serviceType] == 2;
  }

  if (v51)
  {
    MEMORY[0x277D82BD8](v52);
  }

  v4 = MEMORY[0x277D82BD8](v22).n128_u64[0];
  if (v23)
  {
    objc_storeStrong(&location, &stru_28358EF68);
    v19 = objc_loadWeakRetained((a1[4] + 112));
    v20 = [v19 title];
    v49 = 0;
    v47 = 0;
    if (v20)
    {
      objc_storeStrong(&v53, v20);
    }

    else
    {
      v5 = a1[4];
      v50 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v49 = 1;
      v48 = [v50 localizedStringForKey:@"PASSCODE_AUTHENTICATION_TITLE" value:&stru_28358EF68 table:@"Localizable"];
      v47 = 1;
      objc_storeStrong(&v53, v48);
    }

    if (v47)
    {
      MEMORY[0x277D82BD8](v48);
    }

    if (v49)
    {
      MEMORY[0x277D82BD8](v50);
    }

    MEMORY[0x277D82BD8](v20);
    v4 = MEMORY[0x277D82BD8](v19).n128_u64[0];
  }

  v60[0] = &unk_2835AAE88;
  v61[0] = location;
  v60[1] = &unk_2835AAEA0;
  v61[1] = v53;
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:{2, *&v4}];
  v17 = objc_loadWeakRetained((a1[4] + 112));
  v18 = [v17 biometricSkipPasscodeFallback];
  *&v6 = MEMORY[0x277D82BD8](v17).n128_u64[0];
  if (v18)
  {
    v56 = 1;
    [v58[0] setLocalizedFallbackTitle:{&stru_28358EF68, v6}];
  }

  v16 = objc_loadWeakRetained((a1[4] + 112));
  if ([v16 isPasscodeOnlyPolicy])
  {
    v15 = 1007;
  }

  else
  {
    v15 = v56;
  }

  v56 = v15;
  *&v7 = MEMORY[0x277D82BD8](v16).n128_u64[0];
  v45 = v57;
  v14 = [v58[0] canEvaluatePolicy:v56 error:{&v45, v7}];
  objc_storeStrong(&v57, v45);
  if (v14)
  {
    v13 = v58[0];
    v11 = v56;
    v12 = v46;
    v39 = MEMORY[0x277D85DD0];
    v40 = -1073741824;
    v41 = 0;
    v42 = __99__AKInAppAuthenticationRemoteUIProvider_presentBiometricOrPasscodeValidationForAppleID_completion___block_invoke_127;
    v43 = &unk_2784A67C8;
    v44 = MEMORY[0x277D82BE0](a1[5]);
    [v13 evaluatePolicy:v11 options:v12 reply:&v39];
    objc_storeStrong(&v44, 0);
  }

  else
  {
    v38 = _AKLogSystem();
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v59, v57);
      _os_log_impl(&dword_222379000, v38, type, "Cannot Evaluate Policy error %@", v59, 0xCu);
    }

    objc_storeStrong(&v38, 0);
    v9 = MEMORY[0x277D85CD0];
    v8 = MEMORY[0x277D85CD0];
    queue = v9;
    v30 = MEMORY[0x277D85DD0];
    v31 = -1073741824;
    v32 = 0;
    v33 = __99__AKInAppAuthenticationRemoteUIProvider_presentBiometricOrPasscodeValidationForAppleID_completion___block_invoke_129;
    v34 = &unk_2784A7378;
    v36 = MEMORY[0x277D82BE0](a1[5]);
    v35 = MEMORY[0x277D82BE0](v57);
    dispatch_async(queue, &v30);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v35, 0);
    objc_storeStrong(&v36, 0);
  }

  objc_storeStrong(&v46, 0);
  objc_storeStrong(&v53, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v55, 0);
  objc_storeStrong(&v57, 0);
  objc_storeStrong(v58, 0);
  *MEMORY[0x277D85DE8];
}

void __99__AKInAppAuthenticationRemoteUIProvider_presentBiometricOrPasscodeValidationForAppleID_completion___block_invoke_127(void *a1, void *a2, void *a3)
{
  v38[1] = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v32 = 0;
  objc_storeStrong(&v32, a3);
  v31[1] = a1;
  v31[0] = 0;
  if (v32)
  {
    if ([v32 code] == -2)
    {
      v30 = _AKLogSystem();
      v29 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        log = v30;
        type = v29;
        __os_log_helper_16_0_0(v28);
        _os_log_impl(&dword_222379000, log, type, "User canceled the biometric authentication!", v28, 2u);
      }

      objc_storeStrong(&v30, 0);
      v12 = MEMORY[0x277CCA9B8];
      v37 = *MEMORY[0x277CCA7E8];
      v38[0] = v32;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
      v3 = [v12 ak_errorWithCode:-7003 userInfo:?];
      v4 = v31[0];
      v31[0] = v3;
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v13);
    }

    else
    {
      v27 = _AKLogSystem();
      v26 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_64(v36, v32);
        _os_log_impl(&dword_222379000, v27, v26, "Biometric authentication failed with error: %@", v36, 0xCu);
      }

      objc_storeStrong(&v27, 0);
      v10 = MEMORY[0x277CCA9B8];
      v34 = *MEMORY[0x277CCA7E8];
      v35 = v32;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v5 = [v10 ak_errorWithCode:-7068 userInfo:?];
      v6 = v31[0];
      v31[0] = v5;
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v11);
    }
  }

  v8 = MEMORY[0x277D85CD0];
  v7 = MEMORY[0x277D85CD0];
  queue = v8;
  v18 = MEMORY[0x277D85DD0];
  v19 = -1073741824;
  v20 = 0;
  v21 = __99__AKInAppAuthenticationRemoteUIProvider_presentBiometricOrPasscodeValidationForAppleID_completion___block_invoke_128;
  v22 = &unk_2784A7490;
  v25 = MEMORY[0x277D82BE0](a1[4]);
  v23 = MEMORY[0x277D82BE0](location[0]);
  v24 = MEMORY[0x277D82BE0](v31[0]);
  dispatch_async(queue, &v18);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)presentNativeRecoveryUIWithContext:(id)context completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v7 = 0;
  objc_storeStrong(&v7, completion);
  v5 = v7;
  v6 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7027];
  v5[2](v5, 0);
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)dismissNativeRecoveryUIWithCompletion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v3 = location[0];
  v4 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7027];
  v3[2](v3, 0);
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (void)presentFidoAuthForContext:(id)context fidoContext:(id)fidoContext completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v14 = 0;
  objc_storeStrong(&v14, fidoContext);
  v13 = 0;
  objc_storeStrong(&v13, completion);
  v12 = _AKLogFido();
  v11 = 2;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    log = v12;
    type = v11;
    __os_log_helper_16_0_0(v10);
    _os_log_debug_impl(&dword_222379000, log, type, "Presenting Fido authentication flow in remote UI provider.", v10, 2u);
  }

  objc_storeStrong(&v12, 0);
  v9 = objc_alloc_init(AKFidoUIController);
  [(AKFidoUIController *)v9 verifyFidoKeyWithFidoContext:v14 completion:v13];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)basicLoginControllerDidPresent:(id)present
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, present);
  [(AKInAppAuthenticationRemoteUIProvider *)selfCopy _contextDidPresentLoginController];
  objc_storeStrong(location, 0);
}

- (void)basicLoginControllerWillDismiss:(id)dismiss
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dismiss);
  [(AKInAppAuthenticationRemoteUIProvider *)selfCopy _contextWillDismissLoginAlertController];
  objc_storeStrong(location, 0);
}

- (void)basicLoginControllerDidDismiss:(id)dismiss
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dismiss);
  [(AKInAppAuthenticationRemoteUIProvider *)selfCopy _contextDidDismissLoginAlertController];
  objc_storeStrong(location, 0);
}

- (RemoteUIController)remoteUIController
{
  selfCopy = self;
  v42[1] = a2;
  v42[0] = [(AKInAppAuthenticationRemoteUIProvider *)self context];
  if (!selfCopy->_remoteUIController)
  {
    defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    v40 = objc_alloc_init(MEMORY[0x277CF0188]);
    proxiedDevice = [v42[0] proxiedDevice];
    v2 = MEMORY[0x277D82BD8](proxiedDevice).n128_u64[0];
    if (proxiedDevice)
    {
      location = _AKLogSystem();
      v38 = 2;
      if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
      {
        v34 = location;
        v35 = v38;
        __os_log_helper_16_0_0(v37);
        _os_log_debug_impl(&dword_222379000, v34, v35, "Proxying for another device, so attaching secondary Anisette controller to our URL session config.", v37, 2u);
      }

      objc_storeStrong(&location, 0);
      v30 = v40;
      anisetteDataProvider = [v42[0] anisetteDataProvider];
      [v30 setAnisetteDataProvider:?];
      *&v3 = MEMORY[0x277D82BD8](anisetteDataProvider).n128_u64[0];
      v32 = v40;
      proxiedDevice2 = [v42[0] proxiedDevice];
      [v32 setPairedDevice:?];
      v2 = MEMORY[0x277D82BD8](proxiedDevice2).n128_u64[0];
    }

    [defaultSessionConfiguration set_appleIDContext:{v40, *&v2}];
    v4 = objc_alloc_init(MEMORY[0x277D46220]);
    remoteUIController = selfCopy->_remoteUIController;
    selfCopy->_remoteUIController = v4;
    *&v6 = MEMORY[0x277D82BD8](remoteUIController).n128_u64[0];
    [(RemoteUIController *)selfCopy->_remoteUIController setSessionConfiguration:defaultSessionConfiguration, v6];
    [(RemoteUIController *)selfCopy->_remoteUIController setNavigationController:selfCopy->_navController];
    v26 = selfCopy->_remoteUIController;
    remoteUIStyle = [v42[0] remoteUIStyle];
    [(RemoteUIController *)v26 setStyle:?];
    *&v7 = MEMORY[0x277D82BD8](remoteUIStyle).n128_u64[0];
    [(RemoteUIController *)selfCopy->_remoteUIController setDelegate:v42[0], v7];
    mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
    isRUITelemetryEnabled = [mEMORY[0x277CF0228] isRUITelemetryEnabled];
    *&v8 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
    if (isRUITelemetryEnabled)
    {
      [(RemoteUIController *)selfCopy->_remoteUIController setTelemetryDelegate:v42[0], v8];
    }

    prepareRUIController = [v42[0] prepareRUIController];
    v9 = MEMORY[0x277D82BD8](prepareRUIController).n128_u64[0];
    if (prepareRUIController)
    {
      prepareRUIController2 = [v42[0] prepareRUIController];
      (prepareRUIController2)[2](prepareRUIController2, selfCopy->_remoteUIController);
      v9 = MEMORY[0x277D82BD8](prepareRUIController2).n128_u64[0];
    }

    cellularDataAttributionAppBundleID = [v42[0] cellularDataAttributionAppBundleID];
    *&v10 = MEMORY[0x277D82BD8](cellularDataAttributionAppBundleID).n128_u64[0];
    if (cellularDataAttributionAppBundleID)
    {
      cellularDataAttributionAppBundleID2 = [v42[0] cellularDataAttributionAppBundleID];
      [defaultSessionConfiguration set_sourceApplicationBundleIdentifier:?];
      MEMORY[0x277D82BD8](cellularDataAttributionAppBundleID2);
    }

    if (AppleAccountUILibraryCore(0))
    {
      v11 = objc_alloc(getAAUICDPStingrayRemoteUIControllerClass());
    }

    else
    {
      v11 = [0 alloc];
    }

    v19 = [v11 initWithRemoteUIController:selfCopy->_remoteUIController];
    [(AKInAppAuthenticationRemoteUIDelegate *)selfCopy->_remoteUIControllerDelegate setStingrayController:?];
    *&v12 = MEMORY[0x277D82BD8](v19).n128_u64[0];
    stingrayController = [(AKInAppAuthenticationRemoteUIDelegate *)selfCopy->_remoteUIControllerDelegate stingrayController];
    v21 = objc_opt_respondsToSelector();
    *&v13 = MEMORY[0x277D82BD8](stingrayController).n128_u64[0];
    if (v21)
    {
      stingrayController2 = [(AKInAppAuthenticationRemoteUIDelegate *)selfCopy->_remoteUIControllerDelegate stingrayController];
      telemetryFlowID = [v42[0] telemetryFlowID];
      [(AAUICDPStingrayRemoteUIController *)stingrayController2 attachAllHandlersWithTelemetryFlowID:?];
      MEMORY[0x277D82BD8](telemetryFlowID);
      MEMORY[0x277D82BD8](stingrayController2);
    }

    else
    {
      stingrayController3 = [(AKInAppAuthenticationRemoteUIDelegate *)selfCopy->_remoteUIControllerDelegate stingrayController];
      [(AAUICDPStingrayRemoteUIController *)stingrayController3 attachAllHandlers];
      MEMORY[0x277D82BD8](stingrayController3);
    }

    objc_storeStrong(&v40, 0);
    objc_storeStrong(&defaultSessionConfiguration, 0);
  }

  if (![(RemoteUIController *)selfCopy->_remoteUIController isListeningForHSATokenAutoFill])
  {
    [(RemoteUIController *)selfCopy->_remoteUIController startListeningForHSATokenAutoFill];
  }

  v15 = MEMORY[0x277D82BE0](selfCopy->_remoteUIController);
  objc_storeStrong(v42, 0);

  return v15;
}

- (void)_clearRemoteUIController
{
  if (([(RemoteUIController *)self->_remoteUIController isListeningForHSATokenAutoFill]& 1) != 0)
  {
    [(RemoteUIController *)self->_remoteUIController stopListeningForHSATokenAutoFill];
  }

  [(RemoteUIController *)self->_remoteUIController setDelegate:0];
  objc_storeStrong(&self->_remoteUIController, obj);
}

- (id)_navController
{
  if (!self->_navController)
  {
    v2 = objc_alloc_init(MEMORY[0x277D757A0]);
    navController = self->_navController;
    self->_navController = v2;
    navigationItem = [(UINavigationController *)self->_navController navigationItem];
    [navigationItem setHidesBackButton:1];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];
    *&v4 = MEMORY[0x277D82BD8](currentDevice).n128_u64[0];
    if (userInterfaceIdiom == 1)
    {
      [(UINavigationController *)self->_navController setModalPresentationStyle:2, v4];
    }

    WeakRetained = objc_loadWeakRetained(&self->_context);
    [WeakRetained willPresentModalNavigationController:self->_navController];
    MEMORY[0x277D82BD8](WeakRetained);
  }

  v5 = self->_navController;

  return v5;
}

- (void)cleanUpBasicLoginWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  if ([(AKInAppAuthenticationRemoteUIProvider *)selfCopy _shouldShowAsView]&& selfCopy->_basicLoginViewController && [(AKBasicLoginViewController *)selfCopy->_basicLoginViewController isPresentedModally])
  {
    v19 = _AKLogSystem();
    v18 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      log = v19;
      type = v18;
      __os_log_helper_16_0_0(v17);
      _os_log_impl(&dword_222379000, log, type, "Cleaning up Basic Login View", v17, 2u);
    }

    objc_storeStrong(&v19, 0);
    [(AKBasicLoginViewController *)selfCopy->_basicLoginViewController setLoginActions:0];
    [(AKBasicLoginViewController *)selfCopy->_basicLoginViewController stopAnimating];
    [(AKBasicLoginViewController *)selfCopy->_basicLoginViewController dismissViewControllerAnimated:1 completion:location[0]];
    objc_storeStrong(&selfCopy->_basicLoginViewController, 0);
    objc_storeStrong(&selfCopy->_navController, 0);
  }

  else if (selfCopy->_basicLoginAlertController)
  {
    v16 = _AKLogSystem();
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v16;
      v8 = v15;
      __os_log_helper_16_0_0(v14);
      _os_log_impl(&dword_222379000, v7, v8, "Cleaning up Basic Login Alert View", v14, 2u);
    }

    objc_storeStrong(&v16, 0);
    [(AKBasicLoginAlertController *)selfCopy->_basicLoginAlertController setLoginActions:0];
    [(AKBasicLoginAlertController *)selfCopy->_basicLoginAlertController setSecondFactorActions:0];
    [(AKBasicLoginAlertController *)selfCopy->_basicLoginAlertController stopAnimating];
    presentingViewController = [(AKBasicLoginViewController *)selfCopy->_basicLoginViewController presentingViewController];
    v3 = MEMORY[0x277D82BD8](presentingViewController);
    if (presentingViewController)
    {
      [(AKBasicLoginAlertController *)selfCopy->_basicLoginAlertController dismissViewControllerAnimated:1 completion:location[0], v3.n128_f64[0]];
    }

    else if (location[0])
    {
      (*(location[0] + 2))(v3);
    }

    objc_storeStrong(&selfCopy->_basicLoginAlertController, 0);
    objc_storeStrong(&selfCopy->_navController, 0);
  }

  else if (location[0])
  {
    v13 = _AKLogSystem();
    v12 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v13;
      v5 = v12;
      __os_log_helper_16_0_0(v11);
      _os_log_impl(&dword_222379000, v4, v5, "Asked to cleanup Basic Login UI, but there is nothing to clean up.", v11, 2u);
    }

    objc_storeStrong(&v13, 0);
    (*(location[0] + 2))();
  }

  objc_storeStrong(location, 0);
}

- (void)_contextDidPresentLoginController
{
  v3[2] = self;
  v3[1] = a2;
  v3[0] = [(AKInAppAuthenticationRemoteUIProvider *)self context];
  location = [v3[0] delegate];
  if (objc_opt_respondsToSelector())
  {
    [location contextDidPresentLoginAlertController:v3[0]];
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(v3, 0);
}

- (void)_contextWillDismissLoginAlertController
{
  v3[2] = self;
  v3[1] = a2;
  v3[0] = [(AKInAppAuthenticationRemoteUIProvider *)self context];
  location = [v3[0] delegate];
  if (objc_opt_respondsToSelector())
  {
    [location contextWillDismissLoginAlertController:v3[0]];
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(v3, 0);
}

- (void)_contextDidDismissLoginAlertController
{
  v3[2] = self;
  v3[1] = a2;
  v3[0] = [(AKInAppAuthenticationRemoteUIProvider *)self context];
  location = [v3[0] delegate];
  if (objc_opt_respondsToSelector())
  {
    [location contextDidDismissLoginAlertController:v3[0]];
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(v3, 0);
}

- (void)_showMaxAttemptAlertWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v3 = selfCopy;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __76__AKInAppAuthenticationRemoteUIProvider__showMaxAttemptAlertWithCompletion___block_invoke;
  v8 = &unk_2784A7378;
  v10 = MEMORY[0x277D82BE0](location[0]);
  v9 = MEMORY[0x277D82BE0](selfCopy);
  [(AKInAppAuthenticationRemoteUIProvider *)v3 cleanUpBasicLoginWithCompletion:?];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

void __76__AKInAppAuthenticationRemoteUIProvider__showMaxAttemptAlertWithCompletion___block_invoke(void *a1)
{
  v30[2] = a1;
  v30[1] = a1;
  v30[0] = [MEMORY[0x277CF0218] deviceSpecificLocalizedStringWithKey:@"FORGOT_PASSWORD_ALERT_MESSAGE_REBRAND"];
  v3 = MEMORY[0x277D75110];
  v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:?];
  v4 = [v5 localizedStringForKey:@"FORGOT_PASSWORD_ALERT_TITLE" value:? table:?];
  v29 = [v3 alertControllerWithTitle:? message:? preferredStyle:?];
  MEMORY[0x277D82BD8](v4);
  *&v1 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  v7 = v29;
  v6 = MEMORY[0x277D750F8];
  v10 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:{@"com.apple.AuthKit", v1}];
  v9 = [v10 localizedStringForKey:@"FORGOT_PASSWORD_ALERT_CANCEL_BUTTON" value:&stru_28358EF68 table:@"Localizable"];
  v23[1] = MEMORY[0x277D85DD0];
  v24 = -1073741824;
  v25 = 0;
  v26 = __76__AKInAppAuthenticationRemoteUIProvider__showMaxAttemptAlertWithCompletion___block_invoke_2;
  v27 = &unk_2784A64D8;
  v28 = MEMORY[0x277D82BE0](a1[5]);
  v8 = [v6 actionWithTitle:v9 style:1 handler:?];
  [v7 addAction:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  *&v2 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  v12 = v29;
  v11 = MEMORY[0x277D750F8];
  v15 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:{@"com.apple.AuthKit", v2}];
  v14 = [v15 localizedStringForKey:@"FORGOT_PASSWORD_ALERT_RESET_BUTTON" value:&stru_28358EF68 table:@"Localizable"];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __76__AKInAppAuthenticationRemoteUIProvider__showMaxAttemptAlertWithCompletion___block_invoke_160;
  v22 = &unk_2784A64D8;
  v23[0] = MEMORY[0x277D82BE0](a1[5]);
  v13 = [v11 actionWithTitle:v14 style:0 handler:?];
  [v12 addAction:?];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  WeakRetained = objc_loadWeakRetained((a1[4] + 112));
  v17 = [WeakRetained presentingViewController];
  [v17 presentViewController:v29 animated:1 completion:?];
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(v23, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(v30, 0);
}

void __76__AKInAppAuthenticationRemoteUIProvider__showMaxAttemptAlertWithCompletion___block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9[1] = a1;
  v9[0] = _AKLogSystem();
  v8 = 2;
  if (os_log_type_enabled(v9[0], OS_LOG_TYPE_DEBUG))
  {
    log = v9[0];
    type = v8;
    __os_log_helper_16_0_0(v7);
    _os_log_debug_impl(&dword_222379000, log, type, "User canceled login error alert.", v7, 2u);
  }

  objc_storeStrong(v9, 0);
  v2 = a1[4];
  v3 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7003];
  (*(v2 + 16))(v2, 0, 0);
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

void __76__AKInAppAuthenticationRemoteUIProvider__showMaxAttemptAlertWithCompletion___block_invoke_160(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9[1] = a1;
  v9[0] = _AKLogSystem();
  v8 = 2;
  if (os_log_type_enabled(v9[0], OS_LOG_TYPE_DEBUG))
  {
    log = v9[0];
    type = v8;
    __os_log_helper_16_0_0(v7);
    _os_log_debug_impl(&dword_222379000, log, type, "User asked to reset password in response to login error.", v7, 2u);
  }

  objc_storeStrong(v9, 0);
  v2 = a1[4];
  v3 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7017];
  (*(v2 + 16))(v2, 0, 0);
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (id)_actionsForLoginWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  objc_initWeak(&from, selfCopy);
  v40 = objc_opt_new();
  v33 = MEMORY[0x277D85DD0];
  v34 = -1073741824;
  v35 = 0;
  v36 = __72__AKInAppAuthenticationRemoteUIProvider__actionsForLoginWithCompletion___block_invoke;
  v37 = &unk_2784A74B8;
  objc_copyWeak(v39, &from);
  v38 = MEMORY[0x277D82BE0](location[0]);
  [v40 setAuthenticateAction:&v33];
  v26 = MEMORY[0x277D85DD0];
  v27 = -1073741824;
  v28 = 0;
  v29 = __72__AKInAppAuthenticationRemoteUIProvider__actionsForLoginWithCompletion___block_invoke_163;
  v30 = &unk_2784A74E0;
  objc_copyWeak(&v32, &from);
  v31 = MEMORY[0x277D82BE0](location[0]);
  [v40 setAk_cancelAction:&v26];
  v19 = MEMORY[0x277D85DD0];
  v20 = -1073741824;
  v21 = 0;
  v22 = __72__AKInAppAuthenticationRemoteUIProvider__actionsForLoginWithCompletion___block_invoke_2;
  v23 = &unk_2784A74E0;
  objc_copyWeak(&v25, &from);
  v24 = MEMORY[0x277D82BE0](location[0]);
  [v40 setCreateIDAction:&v19];
  v12 = MEMORY[0x277D85DD0];
  v13 = -1073741824;
  v14 = 0;
  v15 = __72__AKInAppAuthenticationRemoteUIProvider__actionsForLoginWithCompletion___block_invoke_2_166;
  v16 = &unk_2784A74E0;
  objc_copyWeak(&v18, &from);
  v17 = MEMORY[0x277D82BE0](location[0]);
  [v40 setUseIDAction:&v12];
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __72__AKInAppAuthenticationRemoteUIProvider__actionsForLoginWithCompletion___block_invoke_2_168;
  v9 = &unk_2784A7508;
  objc_copyWeak(&v11, &from);
  v10 = MEMORY[0x277D82BE0](location[0]);
  [v40 setForgotPasswordAction:&v5];
  v4 = MEMORY[0x277D82BE0](v40);
  objc_storeStrong(&v10, 0);
  objc_destroyWeak(&v11);
  objc_storeStrong(&v17, 0);
  objc_destroyWeak(&v18);
  objc_storeStrong(&v24, 0);
  objc_destroyWeak(&v25);
  objc_storeStrong(&v31, 0);
  objc_destroyWeak(&v32);
  objc_storeStrong(&v38, 0);
  objc_destroyWeak(v39);
  objc_storeStrong(&v40, 0);
  objc_destroyWeak(&from);
  objc_storeStrong(location, 0);

  return v4;
}

void __72__AKInAppAuthenticationRemoteUIProvider__actionsForLoginWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v11 = 0;
  objc_storeStrong(&v11, a3);
  v10[1] = a1;
  v10[0] = _AKLogSystem();
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v10[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v10[0];
    type = v9;
    __os_log_helper_16_0_0(v8);
    _os_log_impl(&dword_222379000, log, type, "User is trying to sign in!", v8, 2u);
  }

  objc_storeStrong(v10, 0);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [WeakRetained _startAnimating];
  }

  (*(*(a1 + 32) + 16))();
  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void __72__AKInAppAuthenticationRemoteUIProvider__actionsForLoginWithCompletion___block_invoke_163(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v13;
    __os_log_helper_16_0_0(v12);
    _os_log_impl(&dword_222379000, log, type, "User canceled!", v12, 2u);
  }

  objc_storeStrong(location, 0);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v1 = WeakRetained;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __72__AKInAppAuthenticationRemoteUIProvider__actionsForLoginWithCompletion___block_invoke_164;
  v9 = &unk_2784A7350;
  v10 = MEMORY[0x277D82BE0](*(a1 + 32));
  [v1 cleanUpBasicLoginWithCompletion:&v5];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&WeakRetained, 0);
}

double __72__AKInAppAuthenticationRemoteUIProvider__actionsForLoginWithCompletion___block_invoke_164(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7003];
  (*(v2 + 16))(v2, 0, 0);
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

void __72__AKInAppAuthenticationRemoteUIProvider__actionsForLoginWithCompletion___block_invoke_2(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v13;
    __os_log_helper_16_0_0(v12);
    _os_log_impl(&dword_222379000, log, type, "User is creating an AppleID!", v12, 2u);
  }

  objc_storeStrong(location, 0);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v1 = WeakRetained;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __72__AKInAppAuthenticationRemoteUIProvider__actionsForLoginWithCompletion___block_invoke_165;
  v9 = &unk_2784A7350;
  v10 = MEMORY[0x277D82BE0](*(a1 + 32));
  [v1 cleanUpBasicLoginWithCompletion:&v5];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&WeakRetained, 0);
}

double __72__AKInAppAuthenticationRemoteUIProvider__actionsForLoginWithCompletion___block_invoke_165(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7016];
  (*(v2 + 16))(v2, 0, 0);
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

void __72__AKInAppAuthenticationRemoteUIProvider__actionsForLoginWithCompletion___block_invoke_2_166(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v14;
    __os_log_helper_16_0_0(v13);
    _os_log_impl(&dword_222379000, log, type, "User is using an AppleID!", v13, 2u);
  }

  objc_storeStrong(location, 0);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v1 = WeakRetained;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __72__AKInAppAuthenticationRemoteUIProvider__actionsForLoginWithCompletion___block_invoke_167;
  v9 = &unk_2784A63C8;
  v10 = MEMORY[0x277D82BE0](WeakRetained);
  v11 = MEMORY[0x277D82BE0](*(a1 + 32));
  [v1 cleanUpBasicLoginWithCompletion:&v5];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&WeakRetained, 0);
}

void __72__AKInAppAuthenticationRemoteUIProvider__actionsForLoginWithCompletion___block_invoke_167(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = [*(a1 + 32) context];
  [location[0] setShouldAllowAppleIDCreation:0];
  v3 = [location[0] username];
  v5 = 0;
  v4 = 0;
  if (v3)
  {
    v6 = [location[0] username];
    v5 = 1;
    v4 = [v6 length] != 0;
  }

  if (v5)
  {
    MEMORY[0x277D82BD8](v6);
  }

  *&v1 = MEMORY[0x277D82BD8](v3).n128_u64[0];
  if (v4)
  {
    [location[0] setIsUsernameEditable:{0, v1}];
  }

  else
  {
    [location[0] setIsUsernameEditable:{1, v1}];
  }

  [*(a1 + 32) presentBasicLoginUIWithCompletion:*(a1 + 40)];
  objc_storeStrong(location, 0);
}

void __72__AKInAppAuthenticationRemoteUIProvider__actionsForLoginWithCompletion___block_invoke_2_168(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v15[1] = a1;
  v15[0] = _AKLogSystem();
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v15[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v15[0];
    type = v14;
    __os_log_helper_16_0_0(v13);
    _os_log_impl(&dword_222379000, log, type, "User forgot the password!", v13, 2u);
  }

  objc_storeStrong(v15, 0);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = WeakRetained;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __72__AKInAppAuthenticationRemoteUIProvider__actionsForLoginWithCompletion___block_invoke_169;
  v10 = &unk_2784A7350;
  v11 = MEMORY[0x277D82BE0](*(a1 + 32));
  [v2 cleanUpBasicLoginWithCompletion:&v6];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(location, 0);
}

double __72__AKInAppAuthenticationRemoteUIProvider__actionsForLoginWithCompletion___block_invoke_169(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7017];
  (*(v2 + 16))(v2, 0, 0);
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

- (void)_startAnimating
{
  if ([(AKInAppAuthenticationRemoteUIProvider *)self _shouldShowAsView])
  {
    [(AKBasicLoginViewController *)self->_basicLoginViewController startAnimating];
  }

  else
  {
    [(AKBasicLoginAlertController *)self->_basicLoginAlertController startAnimating];
  }
}

- (id)_secondFactorActionsForAlert:(id)alert completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, alert);
  v24 = 0;
  objc_storeStrong(&v24, completion);
  v23 = objc_opt_new();
  v17 = MEMORY[0x277D85DD0];
  v18 = -1073741824;
  v19 = 0;
  v20 = __81__AKInAppAuthenticationRemoteUIProvider__secondFactorActionsForAlert_completion___block_invoke;
  v21 = &unk_2784A7350;
  v22 = MEMORY[0x277D82BE0](v24);
  [v23 setAk_cancelAction:&v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __81__AKInAppAuthenticationRemoteUIProvider__secondFactorActionsForAlert_completion___block_invoke_172;
  v15[3] = &unk_2784A7350;
  v16 = MEMORY[0x277D82BE0](v24);
  [v23 setRegenerateCodeAction:v15];
  objc_initWeak(&v14, location[0]);
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __81__AKInAppAuthenticationRemoteUIProvider__secondFactorActionsForAlert_completion___block_invoke_173;
  v11 = &unk_2784A7508;
  objc_copyWeak(&v13, &v14);
  v12 = MEMORY[0x277D82BE0](v24);
  [v23 setCodeEnteredAction:&v7];
  v5 = MEMORY[0x277D82BE0](v23);
  objc_storeStrong(&v12, 0);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v14);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);

  return v5;
}

double __81__AKInAppAuthenticationRemoteUIProvider__secondFactorActionsForAlert_completion___block_invoke(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    v5 = v8;
    __os_log_helper_16_0_0(v7);
    _os_log_impl(&dword_222379000, log, v5, "User canceled second-factor entry!", v7, 2u);
  }

  objc_storeStrong(location, 0);
  v2 = a1[4];
  v3 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7003];
  (*(v2 + 16))(v2, 0);
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

double __81__AKInAppAuthenticationRemoteUIProvider__secondFactorActionsForAlert_completion___block_invoke_172(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    v5 = v8;
    __os_log_helper_16_0_0(v7);
    _os_log_impl(&dword_222379000, log, v5, "User says they did not get a code.", v7, 2u);
  }

  objc_storeStrong(location, 0);
  v2 = a1[4];
  v3 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7035];
  (*(v2 + 16))(v2, 0);
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

void __81__AKInAppAuthenticationRemoteUIProvider__secondFactorActionsForAlert_completion___block_invoke_173(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7[1] = a1;
  v7[0] = _AKLogSystem();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v7[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v9, location[0]);
    _os_log_impl(&dword_222379000, v7[0], v6, "User entered code %@.", v9, 0xCu);
  }

  objc_storeStrong(v7, 0);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [WeakRetained setPasscodeFieldDisabled:1];
  }

  v2 = (*(a1 + 32) + 16);
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(location[0], "integerValue")}];
  (*v2)();
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_updateReason
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(AKInAppAuthenticationRemoteUIProvider *)self context];
  reason = [location[0] reason];
  v19 = 0;
  v18 = 0;
  if (!reason)
  {
    username = [location[0] username];
    v19 = 1;
    v18 = 0;
    if (username)
    {
      v18 = [location[0] isUsernameEditable] == 0;
    }
  }

  if (v19)
  {
    MEMORY[0x277D82BD8](username);
  }

  *&v2 = MEMORY[0x277D82BD8](reason).n128_u64[0];
  if (v18)
  {
    currentDevice = [MEMORY[0x277CF0218] currentDevice];
    isMultiUserMode = [currentDevice isMultiUserMode];
    *&v3 = MEMORY[0x277D82BD8](currentDevice).n128_u64[0];
    if (isMultiUserMode)
    {
      [location[0] serviceType];
      v14 = AKSharedDevicePasscodePromptAlertMessageWithServiceType();
      [location[0] setReason:?];
      MEMORY[0x277D82BD8](v14);
    }

    else
    {
      v7 = MEMORY[0x277CCACA8];
      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = [v13 localizedStringForKey:@"DEFAULT_PLACEHOLDER_AUTHENTICATION_REASON" value:&stru_28358EF68 table:@"Localizable"];
      v6 = MEMORY[0x277CF0300];
      WeakRetained = objc_loadWeakRetained(&selfCopy->_context);
      username2 = [WeakRetained username];
      v9 = [v6 formattedUsernameFromUsername:?];
      v8 = [v7 stringWithFormat:v12, v9];
      [location[0] setReason:?];
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](username2);
      MEMORY[0x277D82BD8](WeakRetained);
      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](v13);
      if (selfCopy->_basicLoginViewController)
      {
        v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v4 = [v5 localizedStringForKey:@"DEFAULT_PLACEHOLDER_AUTHENTICATION_REASON_GENERIC" value:&stru_28358EF68 table:@"Localizable"];
        [location[0] setReason:?];
        MEMORY[0x277D82BD8](v4);
        MEMORY[0x277D82BD8](v5);
      }
    }
  }

  objc_storeStrong(location, 0);
}

- (BOOL)_shouldUsePasswordDelegate
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(AKInAppAuthenticationRemoteUIProvider *)self context];
  username = [location[0] username];
  v7 = 0;
  v5 = 0;
  v4 = 0;
  if ([username length])
  {
    _password = [location[0] _password];
    v7 = 1;
    v4 = 0;
    if (![_password length])
    {
      _passwordDelegate = [location[0] _passwordDelegate];
      v5 = 1;
      v4 = _passwordDelegate != 0;
    }
  }

  v10 = v4;
  if (v5)
  {
    MEMORY[0x277D82BD8](_passwordDelegate);
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](_password);
  }

  MEMORY[0x277D82BD8](username);
  objc_storeStrong(location, 0);
  return v10;
}

- (void)_showPasswordFieldWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __74__AKInAppAuthenticationRemoteUIProvider__showPasswordFieldWithCompletion___block_invoke;
  v10 = &unk_2784A63C8;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  v12 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void __74__AKInAppAuthenticationRemoteUIProvider__showPasswordFieldWithCompletion___block_invoke(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v18 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v18;
    __os_log_helper_16_0_0(v17);
    _os_log_impl(&dword_222379000, log, type, "Attempting to show password field.", v17, 2u);
  }

  objc_storeStrong(location, 0);
  v16 = [*(a1 + 32) context];
  if ([*(a1 + 32) _shouldShowAsView])
  {
    v5 = [*(a1 + 32) _actionsForLoginWithCompletion:*(a1 + 40)];
    [*(*(a1 + 32) + 16) setLoginActions:?];
    v1 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  }

  else
  {
    v4 = [*(a1 + 32) _actionsForLoginWithCompletion:*(a1 + 40)];
    [*(*(a1 + 32) + 8) setLoginActions:?];
    v1 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  }

  v3 = [v16 _passwordDelegate];
  v2 = v16;
  v9 = MEMORY[0x277D85DD0];
  v10 = -1073741824;
  v11 = 0;
  v12 = __74__AKInAppAuthenticationRemoteUIProvider__showPasswordFieldWithCompletion___block_invoke_181;
  v13 = &unk_2784A7300;
  v15 = MEMORY[0x277D82BE0](*(a1 + 40));
  v14 = MEMORY[0x277D82BE0](*(a1 + 32));
  [v3 context:v2 needsPasswordWithCompletion:&v9];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
}

void __74__AKInAppAuthenticationRemoteUIProvider__showPasswordFieldWithCompletion___block_invoke_181(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v5 = *(a1 + 40);
  v7 = [*(a1 + 32) context];
  v6 = [v7 username];
  (*(v5 + 16))();
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)presentBasicLoginUIAsAlertWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v54 = 0;
  context = [(AKInAppAuthenticationRemoteUIProvider *)selfCopy context];
  presentingViewController = [context presentingViewController];
  if (selfCopy->_basicLoginAlertController)
  {
    v44 = _AKLogSystem();
    v43 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v44;
      v19 = v43;
      __os_log_helper_16_0_0(v42);
      _os_log_impl(&dword_222379000, v18, v19, "Basic login UI is already on screen.", v42, 2u);
    }

    objc_storeStrong(&v44, 0);
  }

  else
  {
    v51 = _AKLogSystem();
    v50 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      log = v51;
      type = v50;
      __os_log_helper_16_0_0(v49);
      _os_log_impl(&dword_222379000, log, type, "Creating new basic login UI instance as alert.", v49, 2u);
    }

    objc_storeStrong(&v51, 0);
    v54 = 1;
    v3 = [[AKBasicLoginAlertController alloc] initWithNibName:0 bundle:?];
    basicLoginAlertController = selfCopy->_basicLoginAlertController;
    selfCopy->_basicLoginAlertController = v3;
    *&v5 = MEMORY[0x277D82BD8](basicLoginAlertController).n128_u64[0];
    defaultButtonString = [context defaultButtonString];
    v47 = 0;
    v45 = 0;
    if (defaultButtonString)
    {
      v26 = defaultButtonString;
    }

    else
    {
      v48 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v47 = 1;
      v46 = [v48 localizedStringForKey:@"SIGN_IN" value:&stru_28358EF68 table:@"Localizable"];
      v45 = 1;
      v26 = v46;
    }

    [(AKBasicLoginAlertController *)selfCopy->_basicLoginAlertController setAuthenticateButtonTitle:v26];
    if (v45)
    {
      MEMORY[0x277D82BD8](v46);
    }

    if (v47)
    {
      MEMORY[0x277D82BD8](v48);
    }

    *&v6 = MEMORY[0x277D82BD8](defaultButtonString).n128_u64[0];
    title = [context title];
    [(AKBasicLoginAlertController *)selfCopy->_basicLoginAlertController setAuthenticateTitle:?];
    *&v7 = MEMORY[0x277D82BD8](title).n128_u64[0];
    [(AKBasicLoginAlertController *)selfCopy->_basicLoginAlertController setDelegate:selfCopy, v7];
    username = [context username];
    [(AKBasicLoginAlertController *)selfCopy->_basicLoginAlertController setUsername:?];
    *&v8 = MEMORY[0x277D82BD8](username).n128_u64[0];
    if (([context isUsernameEditable] & 1) == 0 && (objc_msgSend(context, "shouldAllowAppleIDCreation") & 1) == 0)
    {
      [(AKBasicLoginAlertController *)selfCopy->_basicLoginAlertController setAlertStyle:1];
      WeakRetained = objc_loadWeakRetained(&selfCopy->_context);
      username2 = [WeakRetained username];
      MEMORY[0x277D82BD8](username2);
      *&v9 = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
      if (!username2)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"username must not be nil for pre-filled alert style", v9}];
      }
    }

    [(AKInAppAuthenticationRemoteUIProvider *)selfCopy _updateReason];
    if ([context shouldAllowAppleIDCreation])
    {
      [(AKBasicLoginAlertController *)selfCopy->_basicLoginAlertController setAlertStyle:2];
    }

    v20 = selfCopy->_basicLoginAlertController;
    _interpolatedReasonWithBlame = [context _interpolatedReasonWithBlame];
    [(AKBasicLoginAlertController *)v20 setReason:?];
    *&v10 = MEMORY[0x277D82BD8](_interpolatedReasonWithBlame).n128_u64[0];
  }

  v17 = [(AKInAppAuthenticationRemoteUIProvider *)selfCopy _actionsForLoginWithCompletion:location[0], v10];
  [(AKBasicLoginAlertController *)selfCopy->_basicLoginAlertController setLoginActions:?];
  *&v11 = MEMORY[0x277D82BD8](v17).n128_u64[0];
  if (v54)
  {
    navigationController = [presentingViewController navigationController];
    transitionCoordinator = [navigationController transitionCoordinator];
    v38 = 0;
    v36 = 0;
    v16 = 1;
    if (!transitionCoordinator)
    {
      view = [presentingViewController view];
      v38 = 1;
      superview = [view superview];
      v36 = 1;
      v16 = superview == 0;
    }

    if (v36)
    {
      MEMORY[0x277D82BD8](superview);
    }

    if (v38)
    {
      MEMORY[0x277D82BD8](view);
    }

    if (v16)
    {
      v35 = _AKLogSystem();
      v34 = 16;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v14 = v35;
        v15 = v34;
        __os_log_helper_16_0_0(v33);
        _os_log_error_impl(&dword_222379000, v14, v15, "Attempting to present basic login instance during animation or without a superview... dragons ahead...", v33, 2u);
      }

      objc_storeStrong(&v35, 0);
    }

    v32 = _AKLogSystem();
    v31 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v32;
      v13 = v31;
      __os_log_helper_16_0_0(v30);
      _os_log_impl(&dword_222379000, v12, v13, "Presenting basic login instance as alert...", v30, 2u);
    }

    objc_storeStrong(&v32, 0);
    [presentingViewController presentViewController:selfCopy->_basicLoginAlertController animated:1 completion:0];
    objc_storeStrong(&transitionCoordinator, 0);
    objc_storeStrong(&navigationController, 0);
  }

  objc_storeStrong(&presentingViewController, 0);
  objc_storeStrong(&context, 0);
  objc_storeStrong(location, 0);
}

- (void)presentLoginAlertWithError:(id)error title:(id)title message:(id)message waitForInteraction:(BOOL)interaction completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v28 = 0;
  objc_storeStrong(&v28, title);
  v27 = 0;
  objc_storeStrong(&v27, message);
  interactionCopy = interaction;
  v25 = 0;
  objc_storeStrong(&v25, completion);
  v12 = MEMORY[0x277D85CD0];
  v7 = MEMORY[0x277D85CD0];
  queue = v12;
  v14 = MEMORY[0x277D85DD0];
  v15 = -1073741824;
  v16 = 0;
  v17 = __112__AKInAppAuthenticationRemoteUIProvider_presentLoginAlertWithError_title_message_waitForInteraction_completion___block_invoke;
  v18 = &unk_2784A7580;
  v19 = MEMORY[0x277D82BE0](selfCopy);
  v20 = MEMORY[0x277D82BE0](location[0]);
  v23 = MEMORY[0x277D82BE0](v25);
  v21 = MEMORY[0x277D82BE0](v28);
  v22 = MEMORY[0x277D82BE0](v27);
  v24 = interactionCopy;
  dispatch_async(queue, &v14);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

void __112__AKInAppAuthenticationRemoteUIProvider_presentLoginAlertWithError_title_message_waitForInteraction_completion___block_invoke(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v34 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v34;
    __os_log_helper_16_0_0(v33);
    _os_log_impl(&dword_222379000, log, type, "akd says there was an issue with the login. Will display alert.", v33, 2u);
  }

  objc_storeStrong(location, 0);
  v32 = [*(a1 + 32) context];
  v31 = [v32 presentingViewController];
  v6 = [*(a1 + 40) domain];
  v7 = 0;
  if ([v6 isEqual:*MEMORY[0x277CEFF48]])
  {
    v7 = [*(a1 + 40) code] == -7028;
  }

  *&v1 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  if (v7)
  {
    [*(a1 + 32) _showMaxAttemptAlertWithCompletion:{*(a1 + 64), v1}];
    v30 = 1;
  }

  else
  {
    v29 = MEMORY[0x277D82BE0](*(*(a1 + 32) + 8));
    v15 = MEMORY[0x277D85DD0];
    v16 = -1073741824;
    v17 = 0;
    v18 = __112__AKInAppAuthenticationRemoteUIProvider_presentLoginAlertWithError_title_message_waitForInteraction_completion___block_invoke_186;
    v19 = &unk_2784A7558;
    v20 = MEMORY[0x277D82BE0](*(a1 + 48));
    v21 = MEMORY[0x277D82BE0](*(a1 + 56));
    v22 = MEMORY[0x277D82BE0](v29);
    v23 = MEMORY[0x277D82BE0](*(a1 + 32));
    v26 = MEMORY[0x277D82BE0](*(a1 + 64));
    v27 = *(a1 + 72) & 1;
    v24 = MEMORY[0x277D82BE0](*(a1 + 40));
    v25 = MEMORY[0x277D82BE0](v31);
    v28 = MEMORY[0x223DB6C90](&v15);
    v14 = [v32 alertDelegate];
    if (objc_opt_respondsToSelector())
    {
      oslog = _AKLogSystem();
      v12 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        v4 = oslog;
        v5 = v12;
        __os_log_helper_16_0_0(v11);
        _os_log_debug_impl(&dword_222379000, v4, v5, "Will skip showing login error alert.", v11, 2u);
      }

      objc_storeStrong(&oslog, 0);
      [v14 displayAlertForContext:v32 error:*(a1 + 40) completion:*(a1 + 64)];
      v30 = 1;
    }

    else if (v29)
    {
      if ([*(a1 + 40) ak_isAuthenticationErrorWithCode:-7006])
      {
        [*(*(a1 + 32) + 8) stopAnimating];
        [*(*(a1 + 32) + 8) jiggleAView];
        [*(*(a1 + 32) + 8) clearPasswordField];
        v3 = [*(a1 + 32) _actionsForLoginWithCompletion:*(a1 + 64)];
        [*(*(a1 + 32) + 8) setLoginActions:?];
        MEMORY[0x277D82BD8](v3);
      }

      else
      {
        [*(a1 + 32) cleanUpBasicLoginWithCompletion:v28];
      }

      v30 = 0;
    }

    else
    {
      (*(v28 + 2))();
      if ((*(a1 + 72) & 1) == 0)
      {
        v2 = *(a1 + 40);
        (*(*(a1 + 64) + 16))();
      }

      v30 = 1;
    }

    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v28, 0);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v26, 0);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v29, 0);
  }

  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
}

void __112__AKInAppAuthenticationRemoteUIProvider_presentLoginAlertWithError_title_message_waitForInteraction_completion___block_invoke_186(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v22 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v22;
    __os_log_helper_16_0_0(v21);
    _os_log_impl(&dword_222379000, log, type, "Displaying login alert...", v21, 2u);
  }

  objc_storeStrong(location, 0);
  v20 = [MEMORY[0x277D75110] alertControllerWithTitle:*(a1 + 32) message:*(a1 + 40) preferredStyle:?];
  v3 = v20;
  v2 = MEMORY[0x277D750F8];
  v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKitUI"];
  v5 = [v6 localizedStringForKey:@"OK" value:&stru_28358EF68 table:@"Localizable"];
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __112__AKInAppAuthenticationRemoteUIProvider_presentLoginAlertWithError_title_message_waitForInteraction_completion___block_invoke_190;
  v14 = &unk_2784A7530;
  v15 = MEMORY[0x277D82BE0](*(a1 + 48));
  v16 = MEMORY[0x277D82BE0](*(a1 + 56));
  v18 = MEMORY[0x277D82BE0](*(a1 + 80));
  v19 = *(a1 + 88) & 1;
  v17 = MEMORY[0x277D82BE0](*(a1 + 64));
  v4 = [v2 actionWithTitle:v5 style:1 handler:&v10];
  [v3 addAction:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  *&v1 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  [*(a1 + 72) presentViewController:v20 animated:1 completion:{0, v1}];
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v20, 0);
}

void __112__AKInAppAuthenticationRemoteUIProvider_presentLoginAlertWithError_title_message_waitForInteraction_completion___block_invoke_190(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8[1] = a1;
  v8[0] = _AKLogSystem();
  v7 = 2;
  if (os_log_type_enabled(v8[0], OS_LOG_TYPE_DEBUG))
  {
    log = v8[0];
    type = v7;
    __os_log_helper_16_0_0(v6);
    _os_log_debug_impl(&dword_222379000, log, type, "User dismissed login error alert.", v6, 2u);
  }

  objc_storeStrong(v8, 0);
  if (*(a1 + 32))
  {
    [*(a1 + 40) presentBasicLoginUIWithCompletion:*(a1 + 56)];
  }

  else if (*(a1 + 64))
  {
    v2 = *(a1 + 48);
    (*(*(a1 + 56) + 16))();
  }

  objc_storeStrong(location, 0);
}

- (void)presentBasicLoginUIAsViewWithCompletion:(id)completion
{
  v50 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  context = [(AKInAppAuthenticationRemoteUIProvider *)selfCopy context];
  presentingViewController = [context presentingViewController];
  v43 = 0;
  if (selfCopy->_basicLoginViewController)
  {
    v39 = _AKLogSystem();
    v38 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v39;
      v14 = v38;
      __os_log_helper_16_0_0(v37);
      _os_log_impl(&dword_222379000, v13, v14, "Basic login UI is already on screen.", v37, 2u);
    }

    objc_storeStrong(&v39, 0);
  }

  else
  {
    v42 = _AKLogSystem();
    v41 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      log = v42;
      type = v41;
      __os_log_helper_16_0_0(v40);
      _os_log_impl(&dword_222379000, log, type, "Creating new basic login UI instance as view.", v40, 2u);
    }

    objc_storeStrong(&v42, 0);
    v43 = 1;
    v3 = [[AKBasicLoginViewController alloc] initWithContext:context];
    basicLoginViewController = selfCopy->_basicLoginViewController;
    selfCopy->_basicLoginViewController = v3;
    [context _setPasswordDelegate:{selfCopy->_basicLoginViewController, MEMORY[0x277D82BD8](basicLoginViewController).n128_f64[0]}];
    [(AKBasicLoginViewController *)selfCopy->_basicLoginViewController setDelegate:selfCopy];
    [(AKInAppAuthenticationRemoteUIProvider *)selfCopy _updateReason];
  }

  v36 = [(AKInAppAuthenticationRemoteUIProvider *)selfCopy _actionsForLoginWithCompletion:location[0]];
  [(AKBasicLoginViewController *)selfCopy->_basicLoginViewController setLoginActions:v36];
  if (v43)
  {
    navigationController = [presentingViewController navigationController];
    transitionCoordinator = [navigationController transitionCoordinator];
    MEMORY[0x277D82BD8](navigationController);
    v33 = 0;
    v31 = 0;
    v29 = 0;
    v27 = 0;
    v12 = 1;
    if (!transitionCoordinator)
    {
      WeakRetained = objc_loadWeakRetained(&selfCopy->_context);
      v33 = 1;
      presentingViewController2 = [WeakRetained presentingViewController];
      v31 = 1;
      view = [presentingViewController2 view];
      v29 = 1;
      superview = [view superview];
      v27 = 1;
      v12 = superview == 0;
    }

    if (v27)
    {
      MEMORY[0x277D82BD8](superview);
    }

    if (v29)
    {
      MEMORY[0x277D82BD8](view);
    }

    if (v31)
    {
      MEMORY[0x277D82BD8](presentingViewController2);
    }

    if (v33)
    {
      MEMORY[0x277D82BD8](WeakRetained);
    }

    if (v12)
    {
      v26 = _AKLogSystem();
      v25 = 16;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v9 = v26;
        v10 = v25;
        __os_log_helper_16_0_0(v24);
        _os_log_error_impl(&dword_222379000, v9, v10, "Attempting to present basic login instance during animation or without a superview... dragons ahead...", v24, 2u);
      }

      objc_storeStrong(&v26, 0);
    }

    oslog = _AKLogSystem();
    v22 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = oslog;
      v8 = v22;
      __os_log_helper_16_0_0(v21);
      _os_log_impl(&dword_222379000, v7, v8, "Presenting basic login instance as view...", v21, 2u);
    }

    objc_storeStrong(&oslog, 0);
    ak_topPresentedViewController = [presentingViewController ak_topPresentedViewController];
    v6 = presentingViewController;
    presentingViewController = ak_topPresentedViewController;
    MEMORY[0x277D82BD8](v6);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || [context forceModalPresentation])
    {
      _navController = [(AKInAppAuthenticationRemoteUIProvider *)selfCopy _navController];
      v17 = _AKLogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_3_8_64_8_64_8_64(v48, selfCopy->_basicLoginViewController, _navController, presentingViewController);
        _os_log_debug_impl(&dword_222379000, v17, OS_LOG_TYPE_DEBUG, "Pushing %@ onto %@ and presenting on %@", v48, 0x20u);
      }

      objc_storeStrong(&v17, 0);
      [_navController pushViewController:selfCopy->_basicLoginViewController animated:0];
      [presentingViewController presentViewController:_navController animated:1 completion:&__block_literal_global_5];
      objc_storeStrong(&_navController, 0);
    }

    else
    {
      v20 = _AKLogSystem();
      v19 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_64_8_64(v49, selfCopy->_basicLoginViewController, presentingViewController);
        _os_log_debug_impl(&dword_222379000, v20, v19, "Pushing %@ onto %@", v49, 0x16u);
      }

      objc_storeStrong(&v20, 0);
      [presentingViewController pushViewController:selfCopy->_basicLoginViewController animated:1];
    }

    objc_storeStrong(&transitionCoordinator, 0);
  }

  objc_storeStrong(&v36, 0);
  objc_storeStrong(&presentingViewController, 0);
  objc_storeStrong(&context, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)presentLoginAlertUIAsViewWithError:(id)error title:(id)title message:(id)message waitForInteraction:(BOOL)interaction completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v28 = 0;
  objc_storeStrong(&v28, title);
  v27 = 0;
  objc_storeStrong(&v27, message);
  interactionCopy = interaction;
  v25 = 0;
  objc_storeStrong(&v25, completion);
  v12 = MEMORY[0x277D85CD0];
  v7 = MEMORY[0x277D85CD0];
  queue = v12;
  v14 = MEMORY[0x277D85DD0];
  v15 = -1073741824;
  v16 = 0;
  v17 = __120__AKInAppAuthenticationRemoteUIProvider_presentLoginAlertUIAsViewWithError_title_message_waitForInteraction_completion___block_invoke;
  v18 = &unk_2784A7580;
  v19 = MEMORY[0x277D82BE0](selfCopy);
  v20 = MEMORY[0x277D82BE0](location[0]);
  v23 = MEMORY[0x277D82BE0](v25);
  v21 = MEMORY[0x277D82BE0](v28);
  v22 = MEMORY[0x277D82BE0](v27);
  v24 = interactionCopy;
  dispatch_async(queue, &v14);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

void __120__AKInAppAuthenticationRemoteUIProvider_presentLoginAlertUIAsViewWithError_title_message_waitForInteraction_completion___block_invoke(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v59 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v59;
    __os_log_helper_16_0_0(v58);
    _os_log_impl(&dword_222379000, log, type, "akd says there was an issue with the login. Will display alert.", v58, 2u);
  }

  objc_storeStrong(location, 0);
  v57 = [*(a1 + 32) context];
  v25 = [*(a1 + 40) domain];
  v26 = 0;
  if ([v25 isEqual:*MEMORY[0x277CEFF48]])
  {
    v26 = [*(a1 + 40) code] == -7028;
  }

  *&v1 = MEMORY[0x277D82BD8](v25).n128_u64[0];
  if (v26)
  {
    [*(a1 + 32) _showMaxAttemptAlertWithCompletion:{*(a1 + 64), v1}];
    v56 = 1;
  }

  else
  {
    v55 = [v57 alertDelegate];
    if (objc_opt_respondsToSelector())
    {
      v54 = _AKLogSystem();
      v53 = 2;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
        v23 = v54;
        v24 = v53;
        __os_log_helper_16_0_0(v52);
        _os_log_debug_impl(&dword_222379000, v23, v24, "Will skip showing login error alert.", v52, 2u);
      }

      objc_storeStrong(&v54, 0);
      [v55 displayAlertForContext:v57 error:*(a1 + 40) completion:*(a1 + 64)];
      v56 = 1;
    }

    else
    {
      v51 = _AKLogSystem();
      v50 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v51;
        v22 = v50;
        __os_log_helper_16_0_0(v49);
        _os_log_impl(&dword_222379000, v21, v22, "Displaying login alert...", v49, 2u);
      }

      objc_storeStrong(&v51, 0);
      v48 = [MEMORY[0x277D75110] alertControllerWithTitle:*(a1 + 48) message:*(a1 + 56) preferredStyle:1];
      v20 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKitUI"];
      v47 = [v20 localizedStringForKey:@"OK" value:&stru_28358EF68 table:@"Localizable"];
      if ([*(a1 + 40) ak_isAuthenticationErrorWithCode:{-7094, MEMORY[0x277D82BD8](v20).n128_f64[0]}])
      {
        v16 = MEMORY[0x277D750F8];
        v18 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:?];
        v17 = [v18 localizedStringForKey:@"CONTINUE" value:? table:?];
        v38 = MEMORY[0x277D85DD0];
        v39 = -1073741824;
        v40 = 0;
        v41 = __120__AKInAppAuthenticationRemoteUIProvider_presentLoginAlertUIAsViewWithError_title_message_waitForInteraction_completion___block_invoke_197;
        v42 = &unk_2784A75A8;
        v45 = *(a1 + 72) & 1;
        v44 = MEMORY[0x277D82BE0](*(a1 + 64));
        v43 = MEMORY[0x277D82BE0](*(a1 + 40));
        v46 = [v16 actionWithTitle:v17 style:0 handler:&v38];
        MEMORY[0x277D82BD8](v17);
        *&v2 = MEMORY[0x277D82BD8](v18).n128_u64[0];
        [v48 addAction:{v46, v2}];
        [v48 setPreferredAction:v46];
        v19 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKitUI"];
        v3 = [v19 localizedStringForKey:@"CANCEL" value:&stru_28358EF68 table:@"Localizable"];
        v4 = v47;
        v47 = v3;
        MEMORY[0x277D82BD8](v4);
        MEMORY[0x277D82BD8](v19);
        objc_storeStrong(&v46, 0);
        objc_storeStrong(&v43, 0);
        objc_storeStrong(&v44, 0);
      }

      v14 = v48;
      v13 = MEMORY[0x277D750F8];
      v12 = v47;
      v30 = MEMORY[0x277D85DD0];
      v31 = -1073741824;
      v32 = 0;
      v33 = __120__AKInAppAuthenticationRemoteUIProvider_presentLoginAlertUIAsViewWithError_title_message_waitForInteraction_completion___block_invoke_203;
      v34 = &unk_2784A75A8;
      v37 = *(a1 + 72) & 1;
      v36 = MEMORY[0x277D82BE0](*(a1 + 64));
      v35 = MEMORY[0x277D82BE0](*(a1 + 40));
      v15 = [v13 actionWithTitle:v12 style:1 handler:&v30];
      [v14 addAction:?];
      *&v5 = MEMORY[0x277D82BD8](v15).n128_u64[0];
      if (*(*(a1 + 32) + 16))
      {
        [*(*(a1 + 32) + 16) stopAnimating];
        [*(*(a1 + 32) + 16) clearPasswordField];
        v9 = [*(a1 + 32) _actionsForLoginWithCompletion:*(a1 + 64)];
        [*(*(a1 + 32) + 16) setLoginActions:?];
        *&v8 = MEMORY[0x277D82BD8](v9).n128_u64[0];
        [*(*(a1 + 32) + 16) presentViewController:v48 animated:1 completion:{0, v8}];
        v56 = 0;
      }

      else
      {
        WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 112));
        v10 = [WeakRetained presentingViewController];
        [v10 presentViewController:v48 animated:1 completion:0];
        MEMORY[0x277D82BD8](v10);
        v6 = MEMORY[0x277D82BD8](WeakRetained);
        if ((*(a1 + 72) & 1) == 0)
        {
          v7 = *(a1 + 40);
          (*(*(a1 + 64) + 16))(v6);
        }

        v56 = 1;
      }

      objc_storeStrong(&v35, 0);
      objc_storeStrong(&v36, 0);
      objc_storeStrong(&v47, 0);
      objc_storeStrong(&v48, 0);
    }

    objc_storeStrong(&v55, 0);
  }

  objc_storeStrong(&v57, 0);
}

void __120__AKInAppAuthenticationRemoteUIProvider_presentLoginAlertUIAsViewWithError_title_message_waitForInteraction_completion___block_invoke_197(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12[1] = a1;
  v12[0] = MEMORY[0x277D82BE0](@"prefs:root=General&path=ManagedConfigurationList");
  v11 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=General&path=ManagedConfigurationList"];
  v10 = _AKLogSystem();
  v9 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    log = v10;
    type = v9;
    __os_log_helper_16_0_0(v8);
    _os_log_impl(&dword_222379000, log, type, "Attempting to redirect to device management landing page", v8, 2u);
  }

  objc_storeStrong(&v10, 0);
  v4 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v4 openSensitiveURL:v11 withOptions:0];
  v2 = MEMORY[0x277D82BD8](v4);
  if (*(a1 + 48))
  {
    v3 = *(a1 + 32);
    (*(*(a1 + 40) + 16))(v2);
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(v12, 0);
  objc_storeStrong(location, 0);
}

void __120__AKInAppAuthenticationRemoteUIProvider_presentLoginAlertUIAsViewWithError_title_message_waitForInteraction_completion___block_invoke_203(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8[1] = a1;
  v8[0] = _AKLogSystem();
  v7 = 2;
  if (os_log_type_enabled(v8[0], OS_LOG_TYPE_DEBUG))
  {
    log = v8[0];
    type = v7;
    __os_log_helper_16_0_0(v6);
    _os_log_debug_impl(&dword_222379000, log, type, "User dismissed login error alert.", v6, 2u);
  }

  objc_storeStrong(v8, 0);
  if (*(a1 + 48))
  {
    v2 = *(a1 + 32);
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(location, 0);
}

- (id)presentationAnchorForWebAuthenticationSession:(id)session
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v16 = 0;
  modalRemoteUINavController = [(AKInAppAuthenticationRemoteUIDelegate *)selfCopy->_remoteUIControllerDelegate modalRemoteUINavController];
  *&v3 = MEMORY[0x277D82BD8](modalRemoteUINavController).n128_u64[0];
  if (modalRemoteUINavController)
  {
    modalRemoteUINavController2 = [(AKInAppAuthenticationRemoteUIDelegate *)selfCopy->_remoteUIControllerDelegate modalRemoteUINavController];
    view = [(UINavigationController *)modalRemoteUINavController2 view];
    window = [view window];
    v5 = v16;
    v16 = window;
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](view);
    MEMORY[0x277D82BD8](modalRemoteUINavController2);
  }

  else
  {
    context = [(AKInAppAuthenticationRemoteUIProvider *)selfCopy context];
    presentingViewController = [(AKAppleIDAuthenticationInAppContext *)context presentingViewController];
    view2 = [(UIViewController *)presentingViewController view];
    window2 = [(UIView *)view2 window];
    v7 = v16;
    v16 = window2;
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](view2);
    MEMORY[0x277D82BD8](presentingViewController);
    MEMORY[0x277D82BD8](context);
  }

  v9 = MEMORY[0x277D82BE0](v16);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);

  return v9;
}

- (void)proximitySetupCompletedWithResult:(id)result
{
  v41 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, result);
  [(AKInAppAuthenticationRemoteUIProvider *)selfCopy _enableIdleTimerIfNeeded];
  error = [location[0] error];
  MEMORY[0x277D82BD8](error);
  if (error)
  {
    v36 = _AKLogSystem();
    v35 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      error2 = [location[0] error];
      __os_log_helper_16_2_1_8_64(v40, error2);
      _os_log_error_impl(&dword_222379000, v36, v35, "Proximity Setup Completed with error: %@", v40, 0xCu);
      MEMORY[0x277D82BD8](error2);
    }

    objc_storeStrong(&v36, 0);
  }

  else
  {
    v34 = _AKLogSystem();
    v33 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      authResults = [location[0] authResults];
      __os_log_helper_16_2_1_8_64(v39, authResults);
      _os_log_debug_impl(&dword_222379000, v34, v33, "Proximity Setup Completed with auth results: %@", v39, 0xCu);
      MEMORY[0x277D82BD8](authResults);
    }

    objc_storeStrong(&v34, 0);
  }

  v25 = MEMORY[0x277D85DD0];
  v26 = -1073741824;
  v27 = 0;
  v28 = __75__AKInAppAuthenticationRemoteUIProvider_proximitySetupCompletedWithResult___block_invoke;
  v29 = &unk_2784A75D0;
  v30 = MEMORY[0x277D82BE0](selfCopy);
  v31 = MEMORY[0x277D82BE0](location[0]);
  v32 = MEMORY[0x223DB6C90](&v25);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_context);
  _shouldBroadcastForProximityAuthOnly = [WeakRetained _shouldBroadcastForProximityAuthOnly];
  MEMORY[0x277D82BD8](WeakRetained);
  if (_shouldBroadcastForProximityAuthOnly)
  {
    objc_storeWeak(&selfCopy->_proximityAuthViewController, 0);
    error3 = [location[0] error];
    error4 = [location[0] error];
    code = [error4 code];
    v3 = MEMORY[0x277D82BD8](error4).n128_u64[0];
    if (code == -7003)
    {
      v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CEFF58] code:-13004 userInfo:{0, *&v3}];
      v5 = error3;
      error3 = v4;
      v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
    }

    v6 = v32;
    authResults2 = [location[0] authResults];
    v6[2]();
    MEMORY[0x277D82BD8](authResults2);
    objc_storeStrong(&error3, 0);
  }

  else
  {
    v10 = objc_loadWeakRetained(&selfCopy->_proximityAuthViewController);
    v17 = MEMORY[0x277D85DD0];
    v18 = -1073741824;
    v19 = 0;
    v20 = __75__AKInAppAuthenticationRemoteUIProvider_proximitySetupCompletedWithResult___block_invoke_206;
    v21 = &unk_2784A7328;
    v22 = MEMORY[0x277D82BE0](selfCopy);
    v24 = MEMORY[0x277D82BE0](v32);
    v23 = MEMORY[0x277D82BE0](location[0]);
    [v10 dismissViewControllerAnimated:0 completion:&v17];
    MEMORY[0x277D82BD8](v10);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v22, 0);
  }

  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __75__AKInAppAuthenticationRemoteUIProvider_proximitySetupCompletedWithResult___block_invoke(id *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v28 = 0;
  objc_storeStrong(&v28, a3);
  v27[1] = a1;
  v27[0] = [a1[4] context];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = _AKLogSystem();
    v25 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v32, v27[0]);
      _os_log_debug_impl(&dword_222379000, v26, v25, "Auth context is of proximity type: %@", v32, 0xCu);
    }

    objc_storeStrong(&v26, 0);
    v24 = MEMORY[0x277D82BE0](v27[0]);
    v11 = [MEMORY[0x277CF0228] sharedManager];
    v12 = 0;
    if ([v11 isAgeAttestationPhase1Enabled])
    {
      v12 = objc_opt_respondsToSelector();
    }

    *&v3 = MEMORY[0x277D82BD8](v11).n128_u64[0];
    if (v12)
    {
      v23 = [v27[0] proxDelegate];
      v22 = _AKLogSystem();
      v21 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_64(v31, v23);
        _os_log_debug_impl(&dword_222379000, v22, v21, "Auth context has a prox delegate to respond to: %@", v31, 0xCu);
      }

      objc_storeStrong(&v22, 0);
      if (v23)
      {
        v10 = [a1[5] authResults];
        v18 = 0;
        if (v10)
        {
          v19 = [a1[5] authResults];
          v18 = 1;
          v4 = MEMORY[0x277D82BE0](v19);
        }

        else
        {
          v4 = MEMORY[0x277D82BE0](*(a1[4] + 7));
        }

        v20 = v4;
        if (v18)
        {
          MEMORY[0x277D82BD8](v19);
        }

        MEMORY[0x277D82BD8](v10);
        v17 = _AKLogSystem();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v9 = [a1[5] error];
          __os_log_helper_16_2_2_8_64_8_64(v30, v20, v9);
          _os_log_debug_impl(&dword_222379000, v17, OS_LOG_TYPE_DEBUG, "Calling prox delegate with auth results: %@ and error: %@", v30, 0x16u);
          MEMORY[0x277D82BD8](v9);
        }

        objc_storeStrong(&v17, 0);
        [v23 proximitySetupCompletedWithResult:v20 error:v28];
        objc_storeStrong(&v20, 0);
      }

      objc_storeStrong(&v23, 0);
    }

    objc_storeStrong(&v24, 0);
  }

  if (*(a1[4] + 6))
  {
    v7 = *(a1[4] + 6);
    v8 = [a1[5] authResults];
    v15 = 0;
    if (v8)
    {
      v16 = [a1[5] authResults];
      v15 = 1;
      (*(v7 + 16))(v7, v16, v28);
    }

    else
    {
      (*(v7 + 16))(v7, *(a1[4] + 7), v28);
    }

    if (v15)
    {
      MEMORY[0x277D82BD8](v16);
    }

    MEMORY[0x277D82BD8](v8);
  }

  v5 = a1[4];
  v6 = v5[6];
  v5[6] = 0;
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(a1[4] + 7, 0);
  objc_storeStrong(a1[4] + 5, 0);
  objc_storeStrong(v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

double __75__AKInAppAuthenticationRemoteUIProvider_proximitySetupCompletedWithResult___block_invoke_206(uint64_t a1)
{
  v14[2] = a1;
  v14[1] = a1;
  objc_storeWeak((*(a1 + 32) + 104), 0);
  objc_storeStrong((*(a1 + 32) + 24), 0);
  if (*(*(a1 + 32) + 16))
  {
    v5 = *(*(a1 + 32) + 16);
    v7 = MEMORY[0x277D85DD0];
    v8 = -1073741824;
    v9 = 0;
    v10 = __75__AKInAppAuthenticationRemoteUIProvider_proximitySetupCompletedWithResult___block_invoke_2;
    v11 = &unk_2784A7328;
    v12 = MEMORY[0x277D82BE0](*(a1 + 32));
    v14[0] = MEMORY[0x277D82BE0](*(a1 + 48));
    v13 = MEMORY[0x277D82BE0](*(a1 + 40));
    [v5 dismissViewControllerAnimated:0 completion:&v7];
    objc_storeStrong(&v13, 0);
    objc_storeStrong(v14, 0);
    objc_storeStrong(&v12, 0);
  }

  else
  {
    v2 = *(a1 + 48);
    v4 = [*(a1 + 40) authResults];
    v3 = [*(a1 + 40) error];
    (*(v2 + 16))(v2, v4);
    MEMORY[0x277D82BD8](v3);
    *&result = MEMORY[0x277D82BD8](v4).n128_u64[0];
  }

  return result;
}

double __75__AKInAppAuthenticationRemoteUIProvider_proximitySetupCompletedWithResult___block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 16), 0);
  v3 = *(a1 + 48);
  v5 = [*(a1 + 40) authResults];
  v4 = [*(a1 + 40) error];
  (*(v3 + 16))(v3, v5);
  MEMORY[0x277D82BD8](v4);
  *&result = MEMORY[0x277D82BD8](v5).n128_u64[0];
  return result;
}

- (void)setupPasscodeAndBiometricWithCompletion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_context);
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  v7 = 0;
  if ([mEMORY[0x277CF0228] isAgeAttestationPhase1Enabled])
  {
    v7 = objc_opt_respondsToSelector();
  }

  v3 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
  if (v7)
  {
    proxDelegate = [WeakRetained proxDelegate];
    v12 = _AKLogSystem();
    v11 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v17, proxDelegate);
      _os_log_debug_impl(&dword_222379000, v12, v11, "Auth context has a prox delegate to respond to: %@", v17, 0xCu);
    }

    objc_storeStrong(&v12, 0);
    if (proxDelegate)
    {
      v10 = _AKLogSystem();
      v9 = 2;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v4 = v10;
        v5 = v9;
        __os_log_helper_16_0_0(v8);
        _os_log_debug_impl(&dword_222379000, v4, v5, "Calling prox delegate to go ahead and setup passcode and biometrics", v8, 2u);
      }

      objc_storeStrong(&v10, 0);
      [proxDelegate setupPasscodeAndBiometricWithCompletion:location[0]];
    }

    else
    {
      (*(location[0] + 2))(location[0], 1);
    }

    objc_storeStrong(&proxDelegate, 0);
  }

  else
  {
    (*(location[0] + 2))(location[0], 1, v3);
  }

  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)setupPerformAIDASignInWith:(id)with completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, with);
  v27 = 0;
  objc_storeStrong(&v27, completion);
  objc_storeStrong(&selfCopy->_proxAuthResults, location[0]);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_context);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_24;
  }

  v25 = MEMORY[0x277D82BE0](WeakRetained);
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  v9 = 0;
  if ([mEMORY[0x277CF0228] isAgeAttestationPhase1Enabled])
  {
    v9 = objc_opt_respondsToSelector();
  }

  *&v4 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  if ((v9 & 1) == 0)
  {
    goto LABEL_13;
  }

  proxDelegate = [WeakRetained proxDelegate];
  v23 = _AKLogSystem();
  v22 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v31, proxDelegate);
    _os_log_debug_impl(&dword_222379000, v23, v22, "Auth context has a prox delegate to respond to: %@", v31, 0xCu);
  }

  objc_storeStrong(&v23, 0);
  if (proxDelegate)
  {
    v21 = _AKLogSystem();
    v20 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v30, location[0]);
      _os_log_debug_impl(&dword_222379000, v21, v20, "Calling prox delegate to perform AIDA sign in with auth results: %@", v30, 0xCu);
    }

    objc_storeStrong(&v21, 0);
    [proxDelegate setupPerformAIDASignInWith:location[0] completion:v27];
    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  objc_storeStrong(&proxDelegate, 0);
  if (!v19)
  {
LABEL_13:
    v17 = 0;
    v7 = 0;
    if ([v25 _shouldBroadcastForProximityAuthOnly])
    {
      proximityAIDAHandler = [v25 proximityAIDAHandler];
      v17 = 1;
      v7 = proximityAIDAHandler != 0;
    }

    if (v17)
    {
      MEMORY[0x277D82BD8](proximityAIDAHandler);
    }

    if (v7)
    {
      proximityAIDAHandler2 = [v25 proximityAIDAHandler];
      v5 = location[0];
      v11 = MEMORY[0x277D85DD0];
      v12 = -1073741824;
      v13 = 0;
      v14 = __79__AKInAppAuthenticationRemoteUIProvider_setupPerformAIDASignInWith_completion___block_invoke;
      v15 = &unk_2784A7350;
      v16 = MEMORY[0x277D82BE0](v27);
      proximityAIDAHandler2[2](proximityAIDAHandler2, v5, &v11);
      MEMORY[0x277D82BD8](proximityAIDAHandler2);
      objc_storeStrong(&v16, 0);
    }

    else if ([v25 _shouldBroadcastForProximityAuthOnly])
    {
      (*(v27 + 2))(v27, 0);
    }

    else
    {
      (*(v27 + 2))(v27, 1);
    }

    v19 = 0;
  }

  objc_storeStrong(&v25, 0);
  if (!v19)
  {
LABEL_24:
    v19 = 0;
  }

  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)proximitySetupSelectedAccount:(int64_t)account completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v15 = a2;
  accountCopy = account;
  location = 0;
  objc_storeStrong(&location, completion);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_context);
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  v6 = 0;
  if ([mEMORY[0x277CF0228] isAgeAttestationPhase1Enabled])
  {
    v6 = objc_opt_respondsToSelector();
  }

  v4 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
  if ((v6 & 1) == 0)
  {
    goto LABEL_12;
  }

  proxDelegate = [WeakRetained proxDelegate];
  v10 = _AKLogSystem();
  v9 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_1_8_64(v18, proxDelegate);
    _os_log_debug_impl(&dword_222379000, v10, v9, "Auth context has a prox delegate to respond to: %@", v18, 0xCu);
  }

  objc_storeStrong(&v10, 0);
  if (proxDelegate)
  {
    oslog = _AKLogSystem();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_0_1_8_0(v17, accountCopy);
      _os_log_debug_impl(&dword_222379000, oslog, OS_LOG_TYPE_DEBUG, "Calling prox delegate selected account with account type: %ld", v17, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [proxDelegate proximitySetupSelectedAccount:accountCopy completion:location];
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  objc_storeStrong(&proxDelegate, 0);
  if (!v7)
  {
LABEL_12:
    (*(location + 2))(location, 1, v4);
  }

  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (AKProximityAuthViewController)proximityAuthViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_proximityAuthViewController);

  return WeakRetained;
}

- (AKAppleIDAuthenticationInAppContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

@end