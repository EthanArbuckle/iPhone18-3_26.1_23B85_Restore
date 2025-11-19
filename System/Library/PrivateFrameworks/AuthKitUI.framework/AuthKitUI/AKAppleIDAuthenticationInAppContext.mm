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
- (void)_cleanUpBasicLoginWithCompletion:(id)a3;
- (void)_contextDidEndPresentingSecondaryUI;
- (void)_contextWillBeginPresentingSecondaryUIWithCompletion:(id)a3;
- (void)_dismissServerProvidedUIWithCompletion:(id)a3;
- (void)_handleBackButtonTap:(id)a3;
- (void)_presentLoginAlertWithError:(id)a3 title:(id)a4 message:(id)a5 waitForInteraction:(BOOL)a6 completion:(id)a7;
- (void)_presentTooManyLoginAttemptsViewWithCompletion:(id)a3;
- (void)activateProximitySession:(id)a3 completion:(id)a4;
- (void)completeWithError:(id)a3;
- (void)didLoadURL:(id)a3 error:(id)a4;
- (void)dismissBasicLoginUIWithCompletion:(id)a3;
- (void)dismissKeepUsingUIWithCompletion:(id)a3;
- (void)dismissNativeRecoveryUIWithCompletion:(id)a3;
- (void)dismissProximityPairingUIWithCompletion:(id)a3;
- (void)dismissSecondFactorUIWithCompletion:(id)a3;
- (void)dismissServerProvidedUIWithCompletion:(id)a3;
- (void)presentBasicLoginUIWithCompletion:(id)a3;
- (void)presentBiometricOrPasscodeValidationForAppleID:(id)a3 completion:(id)a4;
- (void)presentFidoAuthForContext:(id)a3 fidoContext:(id)a4 completion:(id)a5;
- (void)presentKeepUsingUIForAppleID:(id)a3 completion:(id)a4;
- (void)presentLoginAlertWithError:(id)a3 title:(id)a4 message:(id)a5 completion:(id)a6;
- (void)presentNativeRecoveryUIWithContext:(id)a3 completion:(id)a4;
- (void)presentProximityBroadcastUIWithCompletion:(id)a3;
- (void)presentProximityPairingUIWithVerificationCode:(id)a3 completion:(id)a4;
- (void)presentProximityPinCodeUIWithCompletion:(id)a3;
- (void)presentSecondFactorAlertWithError:(id)a3 title:(id)a4 message:(id)a5 completion:(id)a6;
- (void)presentSecondFactorUIWithCompletion:(id)a3;
- (void)presentServerProvidedUIWithConfiguration:(id)a3 completion:(id)a4;
- (void)processedElementWithError:(id)a3 forElement:(id)a4;
- (void)remoteUIController:(id)a3 didDismissModalNavigationWithObjectModels:(id)a4;
- (void)remoteUIController:(id)a3 didFinishLoadWithError:(id)a4 forRequest:(id)a5;
- (void)remoteUIController:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)remoteUIController:(id)a3 didReceiveHTTPResponse:(id)a4 forRequest:(id)a5;
- (void)remoteUIController:(id)a3 didReceiveObjectModel:(id)a4 actionSignal:(unint64_t *)a5;
- (void)remoteUIController:(id)a3 shouldLoadRequest:(id)a4 redirectResponse:(id)a5 withCompletionHandler:(id)a6;
- (void)remoteUIController:(id)a3 willPresentModalNavigationController:(id)a4;
- (void)remoteUIController:(id)a3 willPresentObjectModel:(id)a4 modally:(BOOL)a5;
- (void)showProximityErrorWithCompletion:(id)a3;
- (void)willActivateElement:(id)a3;
- (void)willDisplayUI:(id)a3;
- (void)willLoadURL:(id)a3;
- (void)willPresentModalNavigationController:(id)a3;
- (void)willProcessHook:(id)a3;
@end

@implementation AKAppleIDAuthenticationInAppContext

- (AKInAppAuthenticationUIProvider)inAppAuthUIProvider
{
  v12 = self;
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
    v3 = [(AKInAppAuthenticationRemoteUIProvider *)v2 initWithContext:v12];
    inAppAuthUIProvider = v12->_inAppAuthUIProvider;
    v12->_inAppAuthUIProvider = v3;
    MEMORY[0x277D82BD8](inAppAuthUIProvider);
  }

  v5 = v12->_inAppAuthUIProvider;

  return v5;
}

- (CDPStateUIProvider)cdpUiProvider
{
  v22 = *MEMORY[0x277D85DE8];
  v20 = self;
  v19[1] = a2;
  if (!self->_cdpUiProvider)
  {
    v19[0] = [(AKAppleIDAuthenticationInAppContext *)v20 inAppAuthUIProvider];
    v5 = [v19[0] remoteUIControllerDelegate];
    v6 = [v5 modalRemoteUINavController];
    v16 = 0;
    v14 = 0;
    v12 = 0;
    v10 = 0;
    if (v6)
    {
      v17 = [v19[0] remoteUIControllerDelegate];
      v16 = 1;
      v15 = [v17 modalRemoteUINavController];
      v14 = 1;
      v2 = MEMORY[0x277D82BE0](v15);
    }

    else
    {
      v13 = [v19[0] remoteUIController];
      v12 = 1;
      v11 = [v13 navigationController];
      v10 = 1;
      v2 = MEMORY[0x277D82BE0](v11);
    }

    v18 = v2;
    if (v10)
    {
      MEMORY[0x277D82BD8](v11);
    }

    if (v12)
    {
      MEMORY[0x277D82BD8](v13);
    }

    if (v14)
    {
      MEMORY[0x277D82BD8](v15);
    }

    if (v16)
    {
      MEMORY[0x277D82BD8](v17);
    }

    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v5);
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
    objc_storeStrong(&v20->_cdpUiProvider, obj);
    objc_storeStrong(&obj, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(v19, 0);
  }

  *MEMORY[0x277D85DE8];
  cdpUiProvider = v20->_cdpUiProvider;

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

- (void)presentBasicLoginUIWithCompletion:(id)a3
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
  v9 = __73__AKAppleIDAuthenticationInAppContext_presentBasicLoginUIWithCompletion___block_invoke;
  v10 = &unk_2784A63C8;
  v11 = MEMORY[0x277D82BE0](v14);
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

- (void)presentLoginAlertWithError:(id)a3 title:(id)a4 message:(id)a5 completion:(id)a6
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = 0;
  objc_storeStrong(&v11, a5);
  v10 = 0;
  objc_storeStrong(&v10, a6);
  v9 = [(AKAppleIDAuthenticationInAppContext *)v14 inAppAuthUIProvider];
  [(AKInAppAuthenticationUIProvider *)v9 presentLoginAlertWithError:location[0] title:v12 message:v11 completion:v10];
  MEMORY[0x277D82BD8](v9);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)_presentTooManyLoginAttemptsViewWithCompletion:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)dismissBasicLoginUIWithCompletion:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(AKAppleIDAuthenticationInAppContext *)v5 inAppAuthUIProvider];
  [(AKInAppAuthenticationUIProvider *)v3 dismissBasicLoginUIWithCompletion:location[0]];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (void)presentKeepUsingUIForAppleID:(id)a3 completion:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5 = [(AKAppleIDAuthenticationInAppContext *)v8 inAppAuthUIProvider];
  [(AKInAppAuthenticationUIProvider *)v5 presentKeepUsingUIForAppleID:location[0] completion:v6];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)dismissKeepUsingUIWithCompletion:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(AKAppleIDAuthenticationInAppContext *)v5 inAppAuthUIProvider];
  [(AKInAppAuthenticationUIProvider *)v3 dismissKeepUsingUIWithCompletion:location[0]];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (void)presentSecondFactorUIWithCompletion:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(AKAppleIDAuthenticationInAppContext *)v5 inAppAuthUIProvider];
  [(AKInAppAuthenticationUIProvider *)v3 presentSecondFactorUIWithCompletion:location[0]];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (void)presentSecondFactorAlertWithError:(id)a3 title:(id)a4 message:(id)a5 completion:(id)a6
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = 0;
  objc_storeStrong(&v11, a5);
  v10 = 0;
  objc_storeStrong(&v10, a6);
  v9 = [(AKAppleIDAuthenticationInAppContext *)v14 inAppAuthUIProvider];
  [(AKInAppAuthenticationUIProvider *)v9 presentSecondFactorAlertWithError:location[0] title:v12 message:v11 completion:v10];
  MEMORY[0x277D82BD8](v9);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)dismissSecondFactorUIWithCompletion:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(AKAppleIDAuthenticationInAppContext *)v5 inAppAuthUIProvider];
  [(AKInAppAuthenticationUIProvider *)v3 dismissSecondFactorUIWithCompletion:location[0]];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (void)presentBiometricOrPasscodeValidationForAppleID:(id)a3 completion:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5 = [(AKAppleIDAuthenticationInAppContext *)v8 inAppAuthUIProvider];
  [(AKInAppAuthenticationUIProvider *)v5 presentBiometricOrPasscodeValidationForAppleID:location[0] completion:v6];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)presentServerProvidedUIWithConfiguration:(id)a3 completion:(id)a4
{
  v34 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v32 = 0;
  objc_storeStrong(&v32, a4);
  v16 = [location[0] request];
  *&v4 = MEMORY[0x277D82BD8](v16).n128_u64[0];
  if (v16)
  {
    v11 = [location[0] resourceLoadDelegate];
    v29 = 0;
    v27 = 0;
    v25 = 0;
    v12 = 0;
    if (v11)
    {
      v30 = [(AKAppleIDAuthenticationInAppContext *)v34 anisetteDataProvider];
      v29 = 1;
      v12 = 0;
      if (v30)
      {
        v28 = [location[0] resourceLoadDelegate];
        v27 = 1;
        v26 = [v28 anisetteDataProvider];
        v25 = 1;
        v12 = v26 == 0;
      }
    }

    if (v25)
    {
      MEMORY[0x277D82BD8](v26);
    }

    if (v27)
    {
      MEMORY[0x277D82BD8](v28);
    }

    if (v29)
    {
      MEMORY[0x277D82BD8](v30);
    }

    v5 = MEMORY[0x277D82BD8](v11).n128_u64[0];
    if (v12)
    {
      v10 = [(AKAppleIDAuthenticationInAppContext *)v34 anisetteDataProvider];
      v9 = [location[0] resourceLoadDelegate];
      [v9 setAnisetteDataProvider:v10];
      MEMORY[0x277D82BD8](v9);
      v5 = MEMORY[0x277D82BD8](v10).n128_u64[0];
    }

    [(AKAppleIDAuthenticationInAppContext *)v34 _assertValidPresentingViewController];
    v7 = MEMORY[0x277D85CD0];
    v6 = MEMORY[0x277D85CD0];
    queue = v7;
    v17 = MEMORY[0x277D85DD0];
    v18 = -1073741824;
    v19 = 0;
    v20 = __91__AKAppleIDAuthenticationInAppContext_presentServerProvidedUIWithConfiguration_completion___block_invoke;
    v21 = &unk_2784A6818;
    v22 = MEMORY[0x277D82BE0](v34);
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

- (void)_dismissServerProvidedUIWithCompletion:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(AKAppleIDAuthenticationInAppContext *)v5 inAppAuthUIProvider];
  [(AKInAppAuthenticationUIProvider *)v3 dismissServerProvidedUIWithCompletion:location[0]];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (void)presentProximityBroadcastUIWithCompletion:(id)a3
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
  v9 = __81__AKAppleIDAuthenticationInAppContext_presentProximityBroadcastUIWithCompletion___block_invoke;
  v10 = &unk_2784A63C8;
  v11 = MEMORY[0x277D82BE0](v14);
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

- (void)presentProximityPairingUIWithVerificationCode:(id)a3 completion:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __96__AKAppleIDAuthenticationInAppContext_presentProximityPairingUIWithVerificationCode_completion___block_invoke;
  v12 = &unk_2784A6818;
  v13 = MEMORY[0x277D82BE0](v18);
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

- (void)presentProximityPinCodeUIWithCompletion:(id)a3
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
  v9 = __79__AKAppleIDAuthenticationInAppContext_presentProximityPinCodeUIWithCompletion___block_invoke;
  v10 = &unk_2784A63C8;
  v11 = MEMORY[0x277D82BE0](v14);
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

- (void)activateProximitySession:(id)a3 completion:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __75__AKAppleIDAuthenticationInAppContext_activateProximitySession_completion___block_invoke;
  v12 = &unk_2784A6818;
  v13 = MEMORY[0x277D82BE0](v18);
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

- (void)dismissProximityPairingUIWithCompletion:(id)a3
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
  v9 = __79__AKAppleIDAuthenticationInAppContext_dismissProximityPairingUIWithCompletion___block_invoke;
  v10 = &unk_2784A63C8;
  v11 = MEMORY[0x277D82BE0](v14);
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

- (void)showProximityErrorWithCompletion:(id)a3
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
  v9 = __72__AKAppleIDAuthenticationInAppContext_showProximityErrorWithCompletion___block_invoke;
  v10 = &unk_2784A63C8;
  v11 = MEMORY[0x277D82BE0](v14);
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

- (void)presentNativeRecoveryUIWithContext:(id)a3 completion:(id)a4
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __85__AKAppleIDAuthenticationInAppContext_presentNativeRecoveryUIWithContext_completion___block_invoke;
  v12 = &unk_2784A6818;
  v13 = MEMORY[0x277D82BE0](location[0]);
  v14 = MEMORY[0x277D82BE0](v18);
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

- (void)dismissNativeRecoveryUIWithCompletion:(id)a3
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
  v9 = __77__AKAppleIDAuthenticationInAppContext_dismissNativeRecoveryUIWithCompletion___block_invoke;
  v10 = &unk_2784A63C8;
  v11 = MEMORY[0x277D82BE0](v14);
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

- (void)dismissServerProvidedUIWithCompletion:(id)a3
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
  v9 = __77__AKAppleIDAuthenticationInAppContext_dismissServerProvidedUIWithCompletion___block_invoke;
  v10 = &unk_2784A63C8;
  v11 = MEMORY[0x277D82BE0](v14);
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

- (void)presentFidoAuthForContext:(id)a3 fidoContext:(id)a4 completion:(id)a5
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = 0;
  objc_storeStrong(&v14, a4);
  v13 = 0;
  objc_storeStrong(&v13, a5);
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
  v5 = [(AKAppleIDAuthenticationInAppContext *)v16 inAppAuthUIProvider];
  [(AKInAppAuthenticationUIProvider *)v5 presentFidoAuthForContext:location[0] fidoContext:v14 completion:v13];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)_contextWillBeginPresentingSecondaryUIWithCompletion:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(AKAppleIDAuthenticationInAppContext *)v5 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 contextWillBeginPresentingSecondaryUI:v5 completion:location[0]];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v3 contextWillBeginPresentingSecondaryUI:v5];
    if (location[0])
    {
      (*(location[0] + 2))();
    }
  }

  else if (location[0])
  {
    (*(location[0] + 2))();
  }

  objc_storeStrong(&v3, 0);
  objc_storeStrong(location, 0);
}

- (void)_contextDidEndPresentingSecondaryUI
{
  v3 = self;
  location[1] = a2;
  location[0] = [(AKAppleIDAuthenticationInAppContext *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [location[0] contextDidEndPresentingSecondaryUI:v3];
  }

  objc_storeStrong(location, 0);
}

- (void)_cleanUpBasicLoginWithCompletion:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(AKAppleIDAuthenticationInAppContext *)v5 inAppAuthUIProvider];
  [(AKInAppAuthenticationUIProvider *)v3 cleanUpBasicLoginWithCompletion:location[0]];
  objc_storeStrong(&v3, 0);
  objc_storeStrong(location, 0);
}

- (void)_presentLoginAlertWithError:(id)a3 title:(id)a4 message:(id)a5 waitForInteraction:(BOOL)a6 completion:(id)a7
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = 0;
  objc_storeStrong(&v14, a5);
  v13 = a6;
  v12 = 0;
  objc_storeStrong(&v12, a7);
  v11 = [(AKAppleIDAuthenticationInAppContext *)v17 inAppAuthUIProvider];
  [(AKInAppAuthenticationUIProvider *)v11 presentLoginAlertWithError:location[0] title:v15 message:v14 waitForInteraction:v13 completion:v12];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)completeWithError:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(AKAppleIDAuthenticationInAppContext *)v7 inAppAuthUIProvider];
  v4 = [(AKInAppAuthenticationUIProvider *)v5 remoteUIControllerDelegate];
  v3 = [v4 serverUIContextController];
  [v3 completeWithError:location[0]];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (id)serverDataHarvester
{
  v6[2] = self;
  v6[1] = a2;
  v6[0] = [(AKAppleIDAuthenticationInAppContext *)self inAppAuthUIProvider];
  v4 = [v6[0] remoteUIControllerDelegate];
  v3 = [v4 serverUIContextController];
  v5 = [v3 serverDataHarvester];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(v6, 0);

  return v5;
}

- (void)_handleBackButtonTap:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  v3 = v11;
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
    v10 = [v9[0] remoteUIStyle];
  }

  else
  {
    v10 = 0;
  }

  objc_storeStrong(v9, 0);
  v2 = v10;

  return v2;
}

- (void)willPresentModalNavigationController:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = [(AKAppleIDAuthenticationInAppContext *)v10 delegate];
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
    [v8 willPresentModalNavigationController:location[0]];
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
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
  v6 = [v9 aaf_arrayAsCommaSeperatedString];
  v3 = *MEMORY[0x277CF0328];
  [v10 setObject:? forKeyedSubscript:?];
  *&v4 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  v7 = [(AKAppleIDAuthenticationInAppContext *)v12 telemetryFlowID];
  v5 = *MEMORY[0x277CE45B8];
  [v10 setObject:? forKeyedSubscript:?];
  v8 = [MEMORY[0x277CF0158] rtcAnalyticsReporter];
  [v8 sendEvent:v10];
  MEMORY[0x277D82BD8](v8);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)willActivateElement:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [MEMORY[0x277CE44D8] ak_analyticsEventWithRUITelemetryElement:location[0] eventName:*MEMORY[0x277CF0330] error:0];
  v4 = [(AKAppleIDAuthenticationInAppContext *)v8 telemetryFlowID];
  v3 = *MEMORY[0x277CE45B8];
  [v6 setObject:? forKeyedSubscript:?];
  v5 = [MEMORY[0x277CF0158] rtcAnalyticsReporter];
  [v5 sendEvent:v6];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)willLoadURL:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [MEMORY[0x277CE44D8] ak_analyticsEventWithRUITelemetryElement:location[0] eventName:*MEMORY[0x277CF0338] error:0];
  v4 = [(AKAppleIDAuthenticationInAppContext *)v8 telemetryFlowID];
  v3 = *MEMORY[0x277CE45B8];
  [v6 setObject:? forKeyedSubscript:?];
  v5 = [MEMORY[0x277CF0158] rtcAnalyticsReporter];
  [v5 sendEvent:v6];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)didLoadURL:(id)a3 error:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = [MEMORY[0x277CE44D8] ak_analyticsEventWithRUITelemetryElement:location[0] eventName:*MEMORY[0x277CF0340] error:v9];
  v6 = [(AKAppleIDAuthenticationInAppContext *)v11 telemetryFlowID];
  v4 = *MEMORY[0x277CE45B8];
  [v8 setObject:? forKeyedSubscript:?];
  v7 = [MEMORY[0x277CF0158] rtcAnalyticsReporter];
  [v7 sendEvent:v8];
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)willProcessHook:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = [MEMORY[0x277CE44D8] ak_analyticsEventWithRUITelemetryElement:location[0] eventName:*MEMORY[0x277CF0348] error:0];
  v6 = [(AKAppleIDAuthenticationInAppContext *)v12 telemetryFlowID];
  v3 = *MEMORY[0x277CE45B8];
  [v10 setObject:? forKeyedSubscript:?];
  *&v4 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  v8 = [location[0] attributes];
  v7 = [v8 objectForKeyedSubscript:@"name"];
  v5 = *MEMORY[0x277CF0370];
  [v10 setObject:? forKeyedSubscript:?];
  MEMORY[0x277D82BD8](v7);
  v9 = [MEMORY[0x277CF0158] rtcAnalyticsReporter];
  [v9 sendEvent:v10];
  MEMORY[0x277D82BD8](v9);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)processedElementWithError:(id)a3 forElement:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  if (location[0])
  {
    v8 = [MEMORY[0x277CE44D8] ak_analyticsEventWithRUITelemetryElement:v10 eventName:*MEMORY[0x277CF0358] error:location[0]];
    v5 = [(AKAppleIDAuthenticationInAppContext *)v12 telemetryFlowID];
    v4 = *MEMORY[0x277CE45B8];
    [v8 setObject:? forKeyedSubscript:?];
    v6 = [MEMORY[0x277CF0158] rtcAnalyticsReporter];
    [v6 sendEvent:v8];
    MEMORY[0x277D82BD8](v6);
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
  v3 = [v4[0] remoteUIControllerDelegate];
  objc_storeStrong(v4, 0);

  return v3;
}

- (void)remoteUIController:(id)a3 shouldLoadRequest:(id)a4 redirectResponse:(id)a5 withCompletionHandler:(id)a6
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = 0;
  objc_storeStrong(&v11, a5);
  v10 = 0;
  objc_storeStrong(&v10, a6);
  v9 = [(AKAppleIDAuthenticationInAppContext *)v14 _remoteUIControllerDelegate];
  [v9 remoteUIController:location[0] shouldLoadRequest:v12 redirectResponse:v11 withCompletionHandler:v10];
  MEMORY[0x277D82BD8](v9);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)remoteUIController:(id)a3 didReceiveHTTPResponse:(id)a4 forRequest:(id)a5
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = 0;
  objc_storeStrong(&v8, a5);
  v7 = [(AKAppleIDAuthenticationInAppContext *)v11 _remoteUIControllerDelegate];
  [v7 remoteUIController:location[0] didReceiveHTTPResponse:v9 forRequest:v8];
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)remoteUIController:(id)a3 didFinishLoadWithError:(id)a4 forRequest:(id)a5
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = 0;
  objc_storeStrong(&v8, a5);
  v7 = [(AKAppleIDAuthenticationInAppContext *)v11 _remoteUIControllerDelegate];
  [v7 remoteUIController:location[0] didFinishLoadWithError:v9 forRequest:v8];
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)remoteUIController:(id)a3 willPresentModalNavigationController:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5 = [(AKAppleIDAuthenticationInAppContext *)v8 _remoteUIControllerDelegate];
  [v5 remoteUIController:location[0] willPresentModalNavigationController:v6];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)remoteUIController:(id)a3 didDismissModalNavigationWithObjectModels:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5 = [(AKAppleIDAuthenticationInAppContext *)v8 _remoteUIControllerDelegate];
  [v5 remoteUIController:location[0] didDismissModalNavigationWithObjectModels:v6];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)remoteUIController:(id)a3 didReceiveObjectModel:(id)a4 actionSignal:(unint64_t *)a5
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = [(AKAppleIDAuthenticationInAppContext *)v10 _remoteUIControllerDelegate];
  [v7 remoteUIController:location[0] didReceiveObjectModel:v8 actionSignal:a5];
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)remoteUIController:(id)a3 willPresentObjectModel:(id)a4 modally:(BOOL)a5
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = [(AKAppleIDAuthenticationInAppContext *)v10 _remoteUIControllerDelegate];
  [v7 remoteUIController:location[0] willPresentObjectModel:v8 modally:a5];
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)remoteUIController:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = 0;
  objc_storeStrong(&v8, a5);
  v7 = [(AKAppleIDAuthenticationInAppContext *)v11 _remoteUIControllerDelegate];
  [v7 remoteUIController:location[0] didReceiveChallenge:v9 completionHandler:v8];
  MEMORY[0x277D82BD8](v7);
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