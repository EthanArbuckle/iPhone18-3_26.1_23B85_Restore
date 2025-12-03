@interface AKAppleIDAuthenticationInAppContext
- (AKAppleIDAuthenticationInAppContextAlertDelegate)alertDelegate;
- (AKAppleIDAuthenticationInAppContextDelegate)delegate;
- (AKAppleIDAuthenticationInAppContextPasswordDelegate)_passwordDelegate;
- (AKInAppAuthenticationUIProvider)inAppAuthUIProvider;
- (CDPStateUIProvider)cdpUiProvider;
- (UIViewController)presentingViewController;
- (id)_remoteUIControllerDelegate;
- (id)remoteUIStyle;
- (id)serverDataHarvester;
- (void)_assertValidPresentingViewController;
- (void)_cleanUpBasicLoginWithCompletion:(id)completion;
- (void)_contextDidEndPresentingSecondaryUI;
- (void)_contextWillBeginPresentingSecondaryUIWithCompletion:(id)completion;
- (void)_dismissServerProvidedUIWithCompletion:(id)completion;
- (void)_handleBackButtonTap:(id)tap;
- (void)_presentLoginAlertWithError:(id)error title:(id)title message:(id)message waitForInteraction:(BOOL)interaction completion:(id)completion;
- (void)_presentTooManyLoginAttemptsViewWithCompletion:(id)completion;
- (void)activateProximitySession:(id)session completion:(id)completion;
- (void)completeWithError:(id)error;
- (void)didLoadURL:(id)l error:(id)error;
- (void)dismissBasicLoginUIWithCompletion:(id)completion;
- (void)dismissKeepUsingUIWithCompletion:(id)completion;
- (void)dismissNativeRecoveryUIWithCompletion:(id)completion;
- (void)dismissProximityPairingUIWithCompletion:(id)completion;
- (void)dismissSecondFactorUIWithCompletion:(id)completion;
- (void)dismissServerProvidedUIWithCompletion:(id)completion;
- (void)presentBasicLoginUIWithCompletion:(id)completion;
- (void)presentBiometricOrPasscodeValidationForAppleID:(id)d completion:(id)completion;
- (void)presentFidoAuthForContext:(id)context fidoContext:(id)fidoContext completion:(id)completion;
- (void)presentKeepUsingUIForAppleID:(id)d completion:(id)completion;
- (void)presentLoginAlertWithError:(id)error title:(id)title message:(id)message completion:(id)completion;
- (void)presentNativeRecoveryUIWithContext:(id)context completion:(id)completion;
- (void)presentProximityBroadcastUIWithCompletion:(id)completion;
- (void)presentProximityPairingUIWithVerificationCode:(id)code completion:(id)completion;
- (void)presentProximityPinCodeUIWithCompletion:(id)completion;
- (void)presentSecondFactorAlertWithError:(id)error title:(id)title message:(id)message completion:(id)completion;
- (void)presentSecondFactorUIWithCompletion:(id)completion;
- (void)presentServerProvidedUIWithConfiguration:(id)configuration completion:(id)completion;
- (void)processedElementWithError:(id)error forElement:(id)element;
- (void)remoteUIController:(id)controller didDismissModalNavigationWithObjectModels:(id)models;
- (void)remoteUIController:(id)controller didFinishLoadWithError:(id)error forRequest:(id)request;
- (void)remoteUIController:(id)controller didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)remoteUIController:(id)controller didReceiveHTTPResponse:(id)response forRequest:(id)request;
- (void)remoteUIController:(id)controller didReceiveObjectModel:(id)model actionSignal:(unint64_t *)signal;
- (void)remoteUIController:(id)controller shouldLoadRequest:(id)request redirectResponse:(id)response withCompletionHandler:(id)handler;
- (void)remoteUIController:(id)controller willPresentModalNavigationController:(id)navigationController;
- (void)remoteUIController:(id)controller willPresentObjectModel:(id)model modally:(BOOL)modally;
- (void)showProximityErrorWithCompletion:(id)completion;
- (void)willActivateElement:(id)element;
- (void)willDisplayUI:(id)i;
- (void)willLoadURL:(id)l;
- (void)willPresentModalNavigationController:(id)controller;
- (void)willProcessHook:(id)hook;
@end

@implementation AKAppleIDAuthenticationInAppContext

- (AKInAppAuthenticationUIProvider)inAppAuthUIProvider
{
  selfCopy = self;
  location[1] = a2;
  if (!self->_inAppAuthUIProvider)
  {
    location[0] = _AKLogSystem();
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      log = location[0];
      type = v10;
      __os_log_helper_16_0_0(v9);
      _os_log_impl(&dword_222379000, log, type, "InApp Remote UI Provider initialized", v9, 2u);
    }

    objc_storeStrong(location, 0);
    v2 = [AKInAppAuthenticationRemoteUIProvider alloc];
    v3 = [(AKInAppAuthenticationRemoteUIProvider *)v2 initWithContext:selfCopy];
    inAppAuthUIProvider = selfCopy->_inAppAuthUIProvider;
    selfCopy->_inAppAuthUIProvider = v3;
    MEMORY[0x277D82BD8](inAppAuthUIProvider);
  }

  v5 = selfCopy->_inAppAuthUIProvider;

  return v5;
}

- (CDPStateUIProvider)cdpUiProvider
{
  v22 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v19[1] = a2;
  if (!self->_cdpUiProvider)
  {
    v19[0] = [(AKAppleIDAuthenticationInAppContext *)selfCopy inAppAuthUIProvider];
    remoteUIControllerDelegate = [v19[0] remoteUIControllerDelegate];
    modalRemoteUINavController = [remoteUIControllerDelegate modalRemoteUINavController];
    v16 = 0;
    v14 = 0;
    v12 = 0;
    v10 = 0;
    if (modalRemoteUINavController)
    {
      remoteUIControllerDelegate2 = [v19[0] remoteUIControllerDelegate];
      v16 = 1;
      modalRemoteUINavController2 = [remoteUIControllerDelegate2 modalRemoteUINavController];
      v14 = 1;
      v2 = MEMORY[0x277D82BE0](modalRemoteUINavController2);
    }

    else
    {
      remoteUIController = [v19[0] remoteUIController];
      v12 = 1;
      navigationController = [remoteUIController navigationController];
      v10 = 1;
      v2 = MEMORY[0x277D82BE0](navigationController);
    }

    v18 = v2;
    if (v10)
    {
      MEMORY[0x277D82BD8](navigationController);
    }

    if (v12)
    {
      MEMORY[0x277D82BD8](remoteUIController);
    }

    if (v14)
    {
      MEMORY[0x277D82BD8](modalRemoteUINavController2);
    }

    if (v16)
    {
      MEMORY[0x277D82BD8](remoteUIControllerDelegate2);
    }

    MEMORY[0x277D82BD8](modalRemoteUINavController);
    MEMORY[0x277D82BD8](remoteUIControllerDelegate);
    oslog = _AKLogSystem();
    type = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_1_8_64(v21, v18);
      _os_log_debug_impl(&dword_222379000, oslog, type, "Forcing inline presentation with presenter: %@", v21, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    obj = [MEMORY[0x277CF01E0] accountRecoveryControllerWithPresentingViewController:v18];
    [obj setForceInlinePresentation:1];
    objc_storeStrong(&selfCopy->_cdpUiProvider, obj);
    objc_storeStrong(&obj, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(v19, 0);
  }

  *MEMORY[0x277D85DE8];
  cdpUiProvider = selfCopy->_cdpUiProvider;

  return cdpUiProvider;
}

- (void)_assertValidPresentingViewController
{
  location[2] = self;
  location[1] = a2;
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);
  MEMORY[0x277D82BD8](WeakRetained);
  if (!WeakRetained)
  {
    location[0] = _AKLogSystem();
    v6 = 16;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_ERROR))
    {
      log = location[0];
      type = v6;
      __os_log_helper_16_0_0(v5);
      _os_log_error_impl(&dword_222379000, log, type, "Presenting view controller is missing!!! Dragons ahead!", v5, 2u);
    }

    objc_storeStrong(location, 0);
  }
}

- (void)presentBasicLoginUIWithCompletion:(id)completion
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
  v9 = __73__AKAppleIDAuthenticationInAppContext_presentBasicLoginUIWithCompletion___block_invoke;
  v10 = &unk_2784A63C8;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  v12 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void __73__AKAppleIDAuthenticationInAppContext_presentBasicLoginUIWithCompletion___block_invoke(uint64_t a1)
{
  v21[2] = a1;
  v21[1] = a1;
  v21[0] = [*(a1 + 32) _passwordDelegate];
  v8 = [*(a1 + 32) username];
  v9 = 0;
  if ([v8 length])
  {
    v9 = v21[0] != 0;
  }

  *&v1 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  if (v9)
  {
    location = _AKLogSystem();
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      log = location;
      type = v19;
      __os_log_helper_16_0_0(v18);
      _os_log_impl(&dword_222379000, log, type, "Username is present but password is missing and required. Client should provide us with password.", v18, 2u);
    }

    objc_storeStrong(&location, 0);
    v17 = [*(a1 + 32) username];
    v4 = v21[0];
    v3 = *(a1 + 32);
    v10 = MEMORY[0x277D85DD0];
    v11 = -1073741824;
    v12 = 0;
    v13 = __73__AKAppleIDAuthenticationInAppContext_presentBasicLoginUIWithCompletion___block_invoke_17;
    v14 = &unk_2784A7300;
    v16 = MEMORY[0x277D82BE0](*(a1 + 40));
    v15 = MEMORY[0x277D82BE0](v17);
    [v4 context:v3 needsPasswordWithCompletion:&v10];
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v17, 0);
  }

  else
  {
    [*(a1 + 32) _assertValidPresentingViewController];
    v2 = [*(a1 + 32) inAppAuthUIProvider];
    [v2 presentBasicLoginUIWithCompletion:*(a1 + 40)];
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(v21, 0);
}

void __73__AKAppleIDAuthenticationInAppContext_presentBasicLoginUIWithCompletion___block_invoke_17(void *a1, void *a2, void *a3)
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

- (void)presentLoginAlertWithError:(id)error title:(id)title message:(id)message completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v12 = 0;
  objc_storeStrong(&v12, title);
  v11 = 0;
  objc_storeStrong(&v11, message);
  v10 = 0;
  objc_storeStrong(&v10, completion);
  inAppAuthUIProvider = [(AKAppleIDAuthenticationInAppContext *)selfCopy inAppAuthUIProvider];
  [(AKInAppAuthenticationUIProvider *)inAppAuthUIProvider presentLoginAlertWithError:location[0] title:v12 message:v11 completion:v10];
  MEMORY[0x277D82BD8](inAppAuthUIProvider);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)_presentTooManyLoginAttemptsViewWithCompletion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  objc_storeStrong(location, 0);
}

- (void)dismissBasicLoginUIWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  inAppAuthUIProvider = [(AKAppleIDAuthenticationInAppContext *)selfCopy inAppAuthUIProvider];
  [(AKInAppAuthenticationUIProvider *)inAppAuthUIProvider dismissBasicLoginUIWithCompletion:location[0]];
  MEMORY[0x277D82BD8](inAppAuthUIProvider);
  objc_storeStrong(location, 0);
}

- (void)presentKeepUsingUIForAppleID:(id)d completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v6 = 0;
  objc_storeStrong(&v6, completion);
  inAppAuthUIProvider = [(AKAppleIDAuthenticationInAppContext *)selfCopy inAppAuthUIProvider];
  [(AKInAppAuthenticationUIProvider *)inAppAuthUIProvider presentKeepUsingUIForAppleID:location[0] completion:v6];
  MEMORY[0x277D82BD8](inAppAuthUIProvider);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)dismissKeepUsingUIWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  inAppAuthUIProvider = [(AKAppleIDAuthenticationInAppContext *)selfCopy inAppAuthUIProvider];
  [(AKInAppAuthenticationUIProvider *)inAppAuthUIProvider dismissKeepUsingUIWithCompletion:location[0]];
  MEMORY[0x277D82BD8](inAppAuthUIProvider);
  objc_storeStrong(location, 0);
}

- (void)presentSecondFactorUIWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  inAppAuthUIProvider = [(AKAppleIDAuthenticationInAppContext *)selfCopy inAppAuthUIProvider];
  [(AKInAppAuthenticationUIProvider *)inAppAuthUIProvider presentSecondFactorUIWithCompletion:location[0]];
  MEMORY[0x277D82BD8](inAppAuthUIProvider);
  objc_storeStrong(location, 0);
}

- (void)presentSecondFactorAlertWithError:(id)error title:(id)title message:(id)message completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v12 = 0;
  objc_storeStrong(&v12, title);
  v11 = 0;
  objc_storeStrong(&v11, message);
  v10 = 0;
  objc_storeStrong(&v10, completion);
  inAppAuthUIProvider = [(AKAppleIDAuthenticationInAppContext *)selfCopy inAppAuthUIProvider];
  [(AKInAppAuthenticationUIProvider *)inAppAuthUIProvider presentSecondFactorAlertWithError:location[0] title:v12 message:v11 completion:v10];
  MEMORY[0x277D82BD8](inAppAuthUIProvider);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)dismissSecondFactorUIWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  inAppAuthUIProvider = [(AKAppleIDAuthenticationInAppContext *)selfCopy inAppAuthUIProvider];
  [(AKInAppAuthenticationUIProvider *)inAppAuthUIProvider dismissSecondFactorUIWithCompletion:location[0]];
  MEMORY[0x277D82BD8](inAppAuthUIProvider);
  objc_storeStrong(location, 0);
}

- (void)presentBiometricOrPasscodeValidationForAppleID:(id)d completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v6 = 0;
  objc_storeStrong(&v6, completion);
  inAppAuthUIProvider = [(AKAppleIDAuthenticationInAppContext *)selfCopy inAppAuthUIProvider];
  [(AKInAppAuthenticationUIProvider *)inAppAuthUIProvider presentBiometricOrPasscodeValidationForAppleID:location[0] completion:v6];
  MEMORY[0x277D82BD8](inAppAuthUIProvider);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)presentServerProvidedUIWithConfiguration:(id)configuration completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  v32 = 0;
  objc_storeStrong(&v32, completion);
  request = [location[0] request];
  *&v4 = MEMORY[0x277D82BD8](request).n128_u64[0];
  if (request)
  {
    resourceLoadDelegate = [location[0] resourceLoadDelegate];
    v29 = 0;
    v27 = 0;
    v25 = 0;
    v12 = 0;
    if (resourceLoadDelegate)
    {
      anisetteDataProvider = [(AKAppleIDAuthenticationInAppContext *)selfCopy anisetteDataProvider];
      v29 = 1;
      v12 = 0;
      if (anisetteDataProvider)
      {
        resourceLoadDelegate2 = [location[0] resourceLoadDelegate];
        v27 = 1;
        anisetteDataProvider2 = [resourceLoadDelegate2 anisetteDataProvider];
        v25 = 1;
        v12 = anisetteDataProvider2 == 0;
      }
    }

    if (v25)
    {
      MEMORY[0x277D82BD8](anisetteDataProvider2);
    }

    if (v27)
    {
      MEMORY[0x277D82BD8](resourceLoadDelegate2);
    }

    if (v29)
    {
      MEMORY[0x277D82BD8](anisetteDataProvider);
    }

    v5 = MEMORY[0x277D82BD8](resourceLoadDelegate).n128_u64[0];
    if (v12)
    {
      anisetteDataProvider3 = [(AKAppleIDAuthenticationInAppContext *)selfCopy anisetteDataProvider];
      resourceLoadDelegate3 = [location[0] resourceLoadDelegate];
      [resourceLoadDelegate3 setAnisetteDataProvider:anisetteDataProvider3];
      MEMORY[0x277D82BD8](resourceLoadDelegate3);
      v5 = MEMORY[0x277D82BD8](anisetteDataProvider3).n128_u64[0];
    }

    [(AKAppleIDAuthenticationInAppContext *)selfCopy _assertValidPresentingViewController];
    v7 = MEMORY[0x277D85CD0];
    v6 = MEMORY[0x277D85CD0];
    queue = v7;
    v17 = MEMORY[0x277D85DD0];
    v18 = -1073741824;
    v19 = 0;
    v20 = __91__AKAppleIDAuthenticationInAppContext_presentServerProvidedUIWithConfiguration_completion___block_invoke;
    v21 = &unk_2784A6818;
    v22 = MEMORY[0x277D82BE0](selfCopy);
    v23 = MEMORY[0x277D82BE0](location[0]);
    v24 = MEMORY[0x277D82BE0](v32);
    dispatch_async(queue, &v17);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v22, 0);
    v31 = 0;
  }

  else
  {
    v13 = v32;
    v14 = [MEMORY[0x277CCA9B8] ak_errorWithCode:{-7029, v4}];
    v13[2](v13, 0);
    MEMORY[0x277D82BD8](v14);
    v31 = 1;
  }

  objc_storeStrong(&v32, 0);
  objc_storeStrong(location, 0);
}

void __91__AKAppleIDAuthenticationInAppContext_presentServerProvidedUIWithConfiguration_completion___block_invoke(void *a1)
{
  v10[2] = a1;
  v10[1] = a1;
  v2 = a1[4];
  v3 = MEMORY[0x277D85DD0];
  v4 = -1073741824;
  v5 = 0;
  v6 = __91__AKAppleIDAuthenticationInAppContext_presentServerProvidedUIWithConfiguration_completion___block_invoke_2;
  v7 = &unk_2784A6818;
  v8 = MEMORY[0x277D82BE0](a1[5]);
  v9 = MEMORY[0x277D82BE0](a1[4]);
  v10[0] = MEMORY[0x277D82BE0](a1[6]);
  [v2 _contextWillBeginPresentingSecondaryUIWithCompletion:?];
  objc_storeStrong(v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v8, 0);
}

void __91__AKAppleIDAuthenticationInAppContext_presentServerProvidedUIWithConfiguration_completion___block_invoke_2(void *a1)
{
  v12[2] = a1;
  v12[1] = a1;
  v2 = MEMORY[0x277D85CD0];
  v1 = MEMORY[0x277D85CD0];
  queue = v2;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __91__AKAppleIDAuthenticationInAppContext_presentServerProvidedUIWithConfiguration_completion___block_invoke_3;
  v9 = &unk_2784A6818;
  v10 = MEMORY[0x277D82BE0](a1[4]);
  v11 = MEMORY[0x277D82BE0](a1[5]);
  v12[0] = MEMORY[0x277D82BE0](a1[6]);
  dispatch_async(queue, &v5);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
}

void __91__AKAppleIDAuthenticationInAppContext_presentServerProvidedUIWithConfiguration_completion___block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a1;
  v8 = [*(a1 + 32) requestType];
  if (v8)
  {
    if (v8 == 1)
    {
      v9 = _AKLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v3 = [*(a1 + 32) request];
        v2 = [v3 URL];
        __os_log_helper_16_2_1_8_64(v12, v2);
        _os_log_impl(&dword_222379000, v9, OS_LOG_TYPE_DEFAULT, "Presenting IDP flow at url: %@", v12, 0xCu);
        MEMORY[0x277D82BD8](v2);
        MEMORY[0x277D82BD8](v3);
      }

      objc_storeStrong(&v9, 0);
      v1 = [*(a1 + 40) inAppAuthUIProvider];
      [v1 presentIDPProvidedUIWithConfiguration:*(a1 + 32) completion:*(a1 + 48)];
      MEMORY[0x277D82BD8](v1);
    }
  }

  else
  {
    location[0] = _AKLogSystem();
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 32) request];
      v5 = [v6 URL];
      __os_log_helper_16_2_1_8_64(v13, v5);
      _os_log_impl(&dword_222379000, location[0], v10, "Presenting RUI flow at url: %@", v13, 0xCu);
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
    }

    objc_storeStrong(location, 0);
    v4 = [*(a1 + 40) inAppAuthUIProvider];
    [v4 presentServerProvidedUIWithConfiguration:*(a1 + 32) completion:*(a1 + 48)];
    MEMORY[0x277D82BD8](v4);
  }

  *MEMORY[0x277D85DE8];
}

- (void)_dismissServerProvidedUIWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  inAppAuthUIProvider = [(AKAppleIDAuthenticationInAppContext *)selfCopy inAppAuthUIProvider];
  [(AKInAppAuthenticationUIProvider *)inAppAuthUIProvider dismissServerProvidedUIWithCompletion:location[0]];
  MEMORY[0x277D82BD8](inAppAuthUIProvider);
  objc_storeStrong(location, 0);
}

- (void)presentProximityBroadcastUIWithCompletion:(id)completion
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
  v9 = __81__AKAppleIDAuthenticationInAppContext_presentProximityBroadcastUIWithCompletion___block_invoke;
  v10 = &unk_2784A63C8;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  v12 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

double __81__AKAppleIDAuthenticationInAppContext_presentProximityBroadcastUIWithCompletion___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) inAppAuthUIProvider];
  [v3 presentProximityBroadcastUIWithCompletion:*(a1 + 40)];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

- (void)presentProximityPairingUIWithVerificationCode:(id)code completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, code);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __96__AKAppleIDAuthenticationInAppContext_presentProximityPairingUIWithVerificationCode_completion___block_invoke;
  v12 = &unk_2784A6818;
  v13 = MEMORY[0x277D82BE0](selfCopy);
  v14 = MEMORY[0x277D82BE0](location[0]);
  v15 = MEMORY[0x277D82BE0](v16);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

double __96__AKAppleIDAuthenticationInAppContext_presentProximityPairingUIWithVerificationCode_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _assertValidPresentingViewController];
  v3 = [*(a1 + 32) inAppAuthUIProvider];
  [v3 presentProximityPairingUIWithVerificationCode:*(a1 + 40) completion:*(a1 + 48)];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

- (void)presentProximityPinCodeUIWithCompletion:(id)completion
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
  v9 = __79__AKAppleIDAuthenticationInAppContext_presentProximityPinCodeUIWithCompletion___block_invoke;
  v10 = &unk_2784A63C8;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  v12 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

double __79__AKAppleIDAuthenticationInAppContext_presentProximityPinCodeUIWithCompletion___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) inAppAuthUIProvider];
  [v3 presentProximityPinCodeUIWithCompletion:*(a1 + 40)];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

- (void)activateProximitySession:(id)session completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __75__AKAppleIDAuthenticationInAppContext_activateProximitySession_completion___block_invoke;
  v12 = &unk_2784A6818;
  v13 = MEMORY[0x277D82BE0](selfCopy);
  v14 = MEMORY[0x277D82BE0](location[0]);
  v15 = MEMORY[0x277D82BE0](v16);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

double __75__AKAppleIDAuthenticationInAppContext_activateProximitySession_completion___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) inAppAuthUIProvider];
  [v3 activateProximitySession:*(a1 + 40) completion:*(a1 + 48)];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

- (void)dismissProximityPairingUIWithCompletion:(id)completion
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
  v9 = __79__AKAppleIDAuthenticationInAppContext_dismissProximityPairingUIWithCompletion___block_invoke;
  v10 = &unk_2784A63C8;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  v12 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

double __79__AKAppleIDAuthenticationInAppContext_dismissProximityPairingUIWithCompletion___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) inAppAuthUIProvider];
  [v3 dismissProximityPairingUIWithCompletion:*(a1 + 40)];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

- (void)showProximityErrorWithCompletion:(id)completion
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
  v9 = __72__AKAppleIDAuthenticationInAppContext_showProximityErrorWithCompletion___block_invoke;
  v10 = &unk_2784A63C8;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  v12 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

double __72__AKAppleIDAuthenticationInAppContext_showProximityErrorWithCompletion___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) inAppAuthUIProvider];
  [v3 showProximityErrorWithCompletion:*(a1 + 40)];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

- (void)presentNativeRecoveryUIWithContext:(id)context completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v16 = 0;
  objc_storeStrong(&v16, completion);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __85__AKAppleIDAuthenticationInAppContext_presentNativeRecoveryUIWithContext_completion___block_invoke;
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

uint64_t __85__AKAppleIDAuthenticationInAppContext_presentNativeRecoveryUIWithContext_completion___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v11, *(a1 + 32));
    _os_log_impl(&dword_222379000, location[0], OS_LOG_TYPE_DEFAULT, "Starting native recovery flow with context: %@", v11, 0xCu);
  }

  objc_storeStrong(location, 0);
  v6 = objc_alloc(MEMORY[0x277CF0270]);
  v5 = *(a1 + 32);
  v8 = [*(a1 + 40) cdpUiProvider];
  v7 = [*(a1 + 40) telemetryFlowID];
  v1 = [v6 initWithContext:v5 uiProvider:v8 flowID:?];
  v2 = (*(a1 + 40) + 688);
  v3 = *v2;
  *v2 = v1;
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v7);
  result = [*(*(a1 + 40) + 688) presentNativeRecoveryUIWithCompletion:{*(a1 + 48), MEMORY[0x277D82BD8](v8).n128_f64[0]}];
  *MEMORY[0x277D85DE8];
  return result;
}

- (void)dismissNativeRecoveryUIWithCompletion:(id)completion
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
  v9 = __77__AKAppleIDAuthenticationInAppContext_dismissNativeRecoveryUIWithCompletion___block_invoke;
  v10 = &unk_2784A63C8;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  v12 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void __77__AKAppleIDAuthenticationInAppContext_dismissNativeRecoveryUIWithCompletion___block_invoke(void *a1)
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
    _os_log_impl(&dword_222379000, log, type, "Dismissing native recovery flow", v12, 2u);
  }

  objc_storeStrong(location, 0);
  v1 = *(a1[4] + 688);
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __77__AKAppleIDAuthenticationInAppContext_dismissNativeRecoveryUIWithCompletion___block_invoke_22;
  v9 = &unk_2784A7B30;
  v10 = MEMORY[0x277D82BE0](a1[4]);
  v11 = MEMORY[0x277D82BE0](a1[5]);
  [v1 dismissNativeRecoveryUIWithCompletion:&v5];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
}

void __77__AKAppleIDAuthenticationInAppContext_dismissNativeRecoveryUIWithCompletion___block_invoke_22(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  objc_storeStrong((*(a1 + 32) + 688), 0);
  if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(&location, 0);
}

- (void)dismissServerProvidedUIWithCompletion:(id)completion
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
  v9 = __77__AKAppleIDAuthenticationInAppContext_dismissServerProvidedUIWithCompletion___block_invoke;
  v10 = &unk_2784A63C8;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  v12 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void __77__AKAppleIDAuthenticationInAppContext_dismissServerProvidedUIWithCompletion___block_invoke(void *a1)
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
    _os_log_impl(&dword_222379000, log, type, "Context was asked to dismiss server provided UI", v12, 2u);
  }

  objc_storeStrong(location, 0);
  v1 = a1[4];
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __77__AKAppleIDAuthenticationInAppContext_dismissServerProvidedUIWithCompletion___block_invoke_24;
  v9 = &unk_2784A7B30;
  v10 = MEMORY[0x277D82BE0](a1[4]);
  v11 = MEMORY[0x277D82BE0](a1[5]);
  [v1 _dismissServerProvidedUIWithCompletion:&v5];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
}

void __77__AKAppleIDAuthenticationInAppContext_dismissServerProvidedUIWithCompletion___block_invoke_24(uint64_t a1, char a2, id obj)
{
  v6 = a1;
  v5 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  [*(a1 + 32) _contextDidEndPresentingSecondaryUI];
  if (*(a1 + 40))
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(&location, 0);
}

- (void)presentFidoAuthForContext:(id)context fidoContext:(id)fidoContext completion:(id)completion
{
  selfCopy = self;
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
    _os_log_debug_impl(&dword_222379000, log, type, "Presenting Fido authentication flow in the app UI provider.", v10, 2u);
  }

  objc_storeStrong(&v12, 0);
  inAppAuthUIProvider = [(AKAppleIDAuthenticationInAppContext *)selfCopy inAppAuthUIProvider];
  [(AKInAppAuthenticationUIProvider *)inAppAuthUIProvider presentFidoAuthForContext:location[0] fidoContext:v14 completion:v13];
  MEMORY[0x277D82BD8](inAppAuthUIProvider);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)_contextWillBeginPresentingSecondaryUIWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  delegate = [(AKAppleIDAuthenticationInAppContext *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate contextWillBeginPresentingSecondaryUI:selfCopy completion:location[0]];
  }

  else if (objc_opt_respondsToSelector())
  {
    [delegate contextWillBeginPresentingSecondaryUI:selfCopy];
    if (location[0])
    {
      (*(location[0] + 2))();
    }
  }

  else if (location[0])
  {
    (*(location[0] + 2))();
  }

  objc_storeStrong(&delegate, 0);
  objc_storeStrong(location, 0);
}

- (void)_contextDidEndPresentingSecondaryUI
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(AKAppleIDAuthenticationInAppContext *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [location[0] contextDidEndPresentingSecondaryUI:selfCopy];
  }

  objc_storeStrong(location, 0);
}

- (void)_cleanUpBasicLoginWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  inAppAuthUIProvider = [(AKAppleIDAuthenticationInAppContext *)selfCopy inAppAuthUIProvider];
  [(AKInAppAuthenticationUIProvider *)inAppAuthUIProvider cleanUpBasicLoginWithCompletion:location[0]];
  objc_storeStrong(&inAppAuthUIProvider, 0);
  objc_storeStrong(location, 0);
}

- (void)_presentLoginAlertWithError:(id)error title:(id)title message:(id)message waitForInteraction:(BOOL)interaction completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v15 = 0;
  objc_storeStrong(&v15, title);
  v14 = 0;
  objc_storeStrong(&v14, message);
  interactionCopy = interaction;
  v12 = 0;
  objc_storeStrong(&v12, completion);
  inAppAuthUIProvider = [(AKAppleIDAuthenticationInAppContext *)selfCopy inAppAuthUIProvider];
  [(AKInAppAuthenticationUIProvider *)inAppAuthUIProvider presentLoginAlertWithError:location[0] title:v15 message:v14 waitForInteraction:interactionCopy completion:v12];
  objc_storeStrong(&inAppAuthUIProvider, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)completeWithError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  inAppAuthUIProvider = [(AKAppleIDAuthenticationInAppContext *)selfCopy inAppAuthUIProvider];
  remoteUIControllerDelegate = [(AKInAppAuthenticationUIProvider *)inAppAuthUIProvider remoteUIControllerDelegate];
  serverUIContextController = [remoteUIControllerDelegate serverUIContextController];
  [serverUIContextController completeWithError:location[0]];
  MEMORY[0x277D82BD8](serverUIContextController);
  MEMORY[0x277D82BD8](remoteUIControllerDelegate);
  objc_storeStrong(&inAppAuthUIProvider, 0);
  objc_storeStrong(location, 0);
}

- (id)serverDataHarvester
{
  v6[2] = self;
  v6[1] = a2;
  v6[0] = [(AKAppleIDAuthenticationInAppContext *)self inAppAuthUIProvider];
  remoteUIControllerDelegate = [v6[0] remoteUIControllerDelegate];
  serverUIContextController = [remoteUIControllerDelegate serverUIContextController];
  serverDataHarvester = [serverUIContextController serverDataHarvester];
  MEMORY[0x277D82BD8](serverUIContextController);
  MEMORY[0x277D82BD8](remoteUIControllerDelegate);
  objc_storeStrong(v6, 0);

  return serverDataHarvester;
}

- (void)_handleBackButtonTap:(id)tap
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tap);
  v9 = _AKLogSystem();
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    log = v9;
    type = v8;
    __os_log_helper_16_0_0(v7);
    _os_log_impl(&dword_222379000, log, type, "Handling back button tap, coercing into cancel", v7, 2u);
  }

  objc_storeStrong(&v9, 0);
  v3 = selfCopy;
  v4 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7003];
  [(AKAppleIDAuthenticationInAppContext *)v3 completeWithError:?];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (id)remoteUIStyle
{
  v9[2] = self;
  v9[1] = a2;
  v9[0] = [(AKAppleIDAuthenticationInAppContext *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    location = _AKLogSystem();
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      log = location;
      type = v7;
      __os_log_helper_16_0_0(v6);
      _os_log_impl(&dword_222379000, log, type, "Context delegate handling RUI style", v6, 2u);
    }

    objc_storeStrong(&location, 0);
    remoteUIStyle = [v9[0] remoteUIStyle];
  }

  else
  {
    remoteUIStyle = 0;
  }

  objc_storeStrong(v9, 0);
  v2 = remoteUIStyle;

  return v2;
}

- (void)willPresentModalNavigationController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  delegate = [(AKAppleIDAuthenticationInAppContext *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = _AKLogSystem();
    v6 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      log = v7;
      type = v6;
      __os_log_helper_16_0_0(v5);
      _os_log_impl(&dword_222379000, log, type, "Context delegate handling willPresentModalNavigationController:", v5, 2u);
    }

    objc_storeStrong(&v7, 0);
    [delegate willPresentModalNavigationController:location[0]];
  }

  objc_storeStrong(&delegate, 0);
  objc_storeStrong(location, 0);
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
  *&v4 = MEMORY[0x277D82BD8](aaf_arrayAsCommaSeperatedString).n128_u64[0];
  telemetryFlowID = [(AKAppleIDAuthenticationInAppContext *)selfCopy telemetryFlowID];
  v5 = *MEMORY[0x277CE45B8];
  [v10 setObject:? forKeyedSubscript:?];
  rtcAnalyticsReporter = [MEMORY[0x277CF0158] rtcAnalyticsReporter];
  [rtcAnalyticsReporter sendEvent:v10];
  MEMORY[0x277D82BD8](rtcAnalyticsReporter);
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
  v6 = [MEMORY[0x277CE44D8] ak_analyticsEventWithRUITelemetryElement:location[0] eventName:*MEMORY[0x277CF0330] error:0];
  telemetryFlowID = [(AKAppleIDAuthenticationInAppContext *)selfCopy telemetryFlowID];
  v3 = *MEMORY[0x277CE45B8];
  [v6 setObject:? forKeyedSubscript:?];
  rtcAnalyticsReporter = [MEMORY[0x277CF0158] rtcAnalyticsReporter];
  [rtcAnalyticsReporter sendEvent:v6];
  MEMORY[0x277D82BD8](rtcAnalyticsReporter);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)willLoadURL:(id)l
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v6 = [MEMORY[0x277CE44D8] ak_analyticsEventWithRUITelemetryElement:location[0] eventName:*MEMORY[0x277CF0338] error:0];
  telemetryFlowID = [(AKAppleIDAuthenticationInAppContext *)selfCopy telemetryFlowID];
  v3 = *MEMORY[0x277CE45B8];
  [v6 setObject:? forKeyedSubscript:?];
  rtcAnalyticsReporter = [MEMORY[0x277CF0158] rtcAnalyticsReporter];
  [rtcAnalyticsReporter sendEvent:v6];
  MEMORY[0x277D82BD8](rtcAnalyticsReporter);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)didLoadURL:(id)l error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, l);
  v9 = 0;
  objc_storeStrong(&v9, error);
  v8 = [MEMORY[0x277CE44D8] ak_analyticsEventWithRUITelemetryElement:location[0] eventName:*MEMORY[0x277CF0340] error:v9];
  telemetryFlowID = [(AKAppleIDAuthenticationInAppContext *)selfCopy telemetryFlowID];
  v4 = *MEMORY[0x277CE45B8];
  [v8 setObject:? forKeyedSubscript:?];
  rtcAnalyticsReporter = [MEMORY[0x277CF0158] rtcAnalyticsReporter];
  [rtcAnalyticsReporter sendEvent:v8];
  MEMORY[0x277D82BD8](rtcAnalyticsReporter);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)willProcessHook:(id)hook
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, hook);
  v10 = [MEMORY[0x277CE44D8] ak_analyticsEventWithRUITelemetryElement:location[0] eventName:*MEMORY[0x277CF0348] error:0];
  telemetryFlowID = [(AKAppleIDAuthenticationInAppContext *)selfCopy telemetryFlowID];
  v3 = *MEMORY[0x277CE45B8];
  [v10 setObject:? forKeyedSubscript:?];
  *&v4 = MEMORY[0x277D82BD8](telemetryFlowID).n128_u64[0];
  attributes = [location[0] attributes];
  v7 = [attributes objectForKeyedSubscript:@"name"];
  v5 = *MEMORY[0x277CF0370];
  [v10 setObject:? forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v7);
  rtcAnalyticsReporter = [MEMORY[0x277CF0158] rtcAnalyticsReporter];
  [rtcAnalyticsReporter sendEvent:v10];
  MEMORY[0x277D82BD8](rtcAnalyticsReporter);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)processedElementWithError:(id)error forElement:(id)element
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v10 = 0;
  objc_storeStrong(&v10, element);
  if (location[0])
  {
    v8 = [MEMORY[0x277CE44D8] ak_analyticsEventWithRUITelemetryElement:v10 eventName:*MEMORY[0x277CF0358] error:location[0]];
    telemetryFlowID = [(AKAppleIDAuthenticationInAppContext *)selfCopy telemetryFlowID];
    v4 = *MEMORY[0x277CE45B8];
    [v8 setObject:? forKeyedSubscript:?];
    rtcAnalyticsReporter = [MEMORY[0x277CF0158] rtcAnalyticsReporter];
    [rtcAnalyticsReporter sendEvent:v8];
    MEMORY[0x277D82BD8](rtcAnalyticsReporter);
    objc_storeStrong(&v8, 0);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (id)_remoteUIControllerDelegate
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = [(AKAppleIDAuthenticationInAppContext *)self inAppAuthUIProvider];
  remoteUIControllerDelegate = [v4[0] remoteUIControllerDelegate];
  objc_storeStrong(v4, 0);

  return remoteUIControllerDelegate;
}

- (void)remoteUIController:(id)controller shouldLoadRequest:(id)request redirectResponse:(id)response withCompletionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v12 = 0;
  objc_storeStrong(&v12, request);
  v11 = 0;
  objc_storeStrong(&v11, response);
  v10 = 0;
  objc_storeStrong(&v10, handler);
  _remoteUIControllerDelegate = [(AKAppleIDAuthenticationInAppContext *)selfCopy _remoteUIControllerDelegate];
  [_remoteUIControllerDelegate remoteUIController:location[0] shouldLoadRequest:v12 redirectResponse:v11 withCompletionHandler:v10];
  MEMORY[0x277D82BD8](_remoteUIControllerDelegate);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)remoteUIController:(id)controller didReceiveHTTPResponse:(id)response forRequest:(id)request
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v9 = 0;
  objc_storeStrong(&v9, response);
  v8 = 0;
  objc_storeStrong(&v8, request);
  _remoteUIControllerDelegate = [(AKAppleIDAuthenticationInAppContext *)selfCopy _remoteUIControllerDelegate];
  [_remoteUIControllerDelegate remoteUIController:location[0] didReceiveHTTPResponse:v9 forRequest:v8];
  MEMORY[0x277D82BD8](_remoteUIControllerDelegate);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)remoteUIController:(id)controller didFinishLoadWithError:(id)error forRequest:(id)request
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v9 = 0;
  objc_storeStrong(&v9, error);
  v8 = 0;
  objc_storeStrong(&v8, request);
  _remoteUIControllerDelegate = [(AKAppleIDAuthenticationInAppContext *)selfCopy _remoteUIControllerDelegate];
  [_remoteUIControllerDelegate remoteUIController:location[0] didFinishLoadWithError:v9 forRequest:v8];
  MEMORY[0x277D82BD8](_remoteUIControllerDelegate);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)remoteUIController:(id)controller willPresentModalNavigationController:(id)navigationController
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v6 = 0;
  objc_storeStrong(&v6, navigationController);
  _remoteUIControllerDelegate = [(AKAppleIDAuthenticationInAppContext *)selfCopy _remoteUIControllerDelegate];
  [_remoteUIControllerDelegate remoteUIController:location[0] willPresentModalNavigationController:v6];
  MEMORY[0x277D82BD8](_remoteUIControllerDelegate);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)remoteUIController:(id)controller didDismissModalNavigationWithObjectModels:(id)models
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v6 = 0;
  objc_storeStrong(&v6, models);
  _remoteUIControllerDelegate = [(AKAppleIDAuthenticationInAppContext *)selfCopy _remoteUIControllerDelegate];
  [_remoteUIControllerDelegate remoteUIController:location[0] didDismissModalNavigationWithObjectModels:v6];
  MEMORY[0x277D82BD8](_remoteUIControllerDelegate);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)remoteUIController:(id)controller didReceiveObjectModel:(id)model actionSignal:(unint64_t *)signal
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v8 = 0;
  objc_storeStrong(&v8, model);
  _remoteUIControllerDelegate = [(AKAppleIDAuthenticationInAppContext *)selfCopy _remoteUIControllerDelegate];
  [_remoteUIControllerDelegate remoteUIController:location[0] didReceiveObjectModel:v8 actionSignal:signal];
  MEMORY[0x277D82BD8](_remoteUIControllerDelegate);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)remoteUIController:(id)controller willPresentObjectModel:(id)model modally:(BOOL)modally
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v8 = 0;
  objc_storeStrong(&v8, model);
  _remoteUIControllerDelegate = [(AKAppleIDAuthenticationInAppContext *)selfCopy _remoteUIControllerDelegate];
  [_remoteUIControllerDelegate remoteUIController:location[0] willPresentObjectModel:v8 modally:modally];
  MEMORY[0x277D82BD8](_remoteUIControllerDelegate);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)remoteUIController:(id)controller didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v9 = 0;
  objc_storeStrong(&v9, challenge);
  v8 = 0;
  objc_storeStrong(&v8, handler);
  _remoteUIControllerDelegate = [(AKAppleIDAuthenticationInAppContext *)selfCopy _remoteUIControllerDelegate];
  [_remoteUIControllerDelegate remoteUIController:location[0] didReceiveChallenge:v9 completionHandler:v8];
  MEMORY[0x277D82BD8](_remoteUIControllerDelegate);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (AKAppleIDAuthenticationInAppContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (AKAppleIDAuthenticationInAppContextAlertDelegate)alertDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_alertDelegate);

  return WeakRetained;
}

- (AKAppleIDAuthenticationInAppContextPasswordDelegate)_passwordDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->__passwordDelegate);

  return WeakRetained;
}

@end