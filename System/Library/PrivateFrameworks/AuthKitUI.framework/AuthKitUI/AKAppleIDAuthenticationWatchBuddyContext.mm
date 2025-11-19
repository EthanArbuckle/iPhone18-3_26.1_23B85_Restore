@interface AKAppleIDAuthenticationWatchBuddyContext
- (RUIStyle)remoteUIStyle;
- (void)dismissBasicLoginUIWithCompletion:(id)a3;
- (void)presentBasicLoginUIWithCompletion:(id)a3;
- (void)presentBiometricOrPasscodeValidationForAppleID:(id)a3 completion:(id)a4;
- (void)presentLoginAlertWithError:(id)a3 title:(id)a4 message:(id)a5 completion:(id)a6;
- (void)willPresentModalNavigationController:(id)a3;
@end

@implementation AKAppleIDAuthenticationWatchBuddyContext

- (void)presentBasicLoginUIWithCompletion:(id)a3
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
    _os_log_impl(&dword_222379000, log, type, "Asked to present basic login UI; Forwarding password to akd.", v7, 2u);
  }

  objc_storeStrong(&v9, 0);
  v6 = [(AKAppleIDAuthenticationWatchBuddyContext *)v11 username];
  if (!v6)
  {
    __assert_rtn("[AKAppleIDAuthenticationWatchBuddyContext presentBasicLoginUIWithCompletion:]", "AKAppleIDAuthenticationWatchBuddyContext.m", 49, "username");
  }

  v5 = [(AKAppleIDAuthenticationWatchBuddyContext *)v11 password];
  if (!v5)
  {
    __assert_rtn("[AKAppleIDAuthenticationWatchBuddyContext presentBasicLoginUIWithCompletion:]", "AKAppleIDAuthenticationWatchBuddyContext.m", 52, "password");
  }

  (*(location[0] + 2))(location[0], v6, v5, 0);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)dismissBasicLoginUIWithCompletion:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = _AKLogSystem();
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    log = v7;
    type = v6;
    __os_log_helper_16_0_0(v5);
    _os_log_impl(&dword_222379000, log, type, "Asked to dismiss basic login UI.", v5, 2u);
  }

  objc_storeStrong(&v7, 0);
  (*(location[0] + 2))(location[0], 1, 0);
  objc_storeStrong(location, 0);
}

- (void)presentLoginAlertWithError:(id)a3 title:(id)a4 message:(id)a5 completion:(id)a6
{
  v31 = *MEMORY[0x277D85DE8];
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v27 = 0;
  objc_storeStrong(&v27, a4);
  v26 = 0;
  objc_storeStrong(&v26, a5);
  v25 = 0;
  objc_storeStrong(&v25, a6);
  v24 = _AKLogSystem();
  v23 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v30, v27, v26);
    _os_log_impl(&dword_222379000, v24, v23, "Asked to present login error alert; Title: (%@); Message: (%@).", v30, 0x16u);
  }

  objc_storeStrong(&v24, 0);
  [(AKAppleIDAuthenticationInAppContext *)v29 _assertValidPresentingViewController];
  v8 = MEMORY[0x277D85CD0];
  v6 = MEMORY[0x277D85CD0];
  queue = v8;
  v15 = MEMORY[0x277D85DD0];
  v16 = -1073741824;
  v17 = 0;
  v18 = __96__AKAppleIDAuthenticationWatchBuddyContext_presentLoginAlertWithError_title_message_completion___block_invoke;
  v19 = &unk_2784A6360;
  v20 = MEMORY[0x277D82BE0](v27);
  v21 = MEMORY[0x277D82BE0](v26);
  v22 = MEMORY[0x277D82BE0](v29);
  dispatch_async(queue, &v15);
  *&v7 = MEMORY[0x277D82BD8](queue).n128_u64[0];
  v10 = v25;
  v11 = [MEMORY[0x277CCA9B8] ak_errorWithCode:{-7003, v7}];
  (*(v10 + 2))(v10, 0, 0);
  MEMORY[0x277D82BD8](v11);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __96__AKAppleIDAuthenticationWatchBuddyContext_presentLoginAlertWithError_title_message_completion___block_invoke(uint64_t a1)
{
  v8[2] = a1;
  v8[1] = a1;
  v8[0] = [MEMORY[0x277D75110] alertControllerWithTitle:*(a1 + 32) message:*(a1 + 40) preferredStyle:?];
  v2 = v8[0];
  v1 = MEMORY[0x277D750F8];
  v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKitUI"];
  v4 = [v5 localizedStringForKey:@"OK" value:&stru_28358EF68 table:@"Localizable"];
  v3 = [v1 actionWithTitle:? style:? handler:?];
  [v2 addAction:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  v7 = [*(a1 + 48) presentingViewController];
  [v7 presentViewController:v8[0] animated:1 completion:&__block_literal_global_47];
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(v8, 0);
}

void __96__AKAppleIDAuthenticationWatchBuddyContext_presentLoginAlertWithError_title_message_completion___block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_storeStrong(location, 0);
}

- (void)presentBiometricOrPasscodeValidationForAppleID:(id)a3 completion:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v5 = v7;
  v6 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7027];
  v5[2](v5, 0);
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (RUIStyle)remoteUIStyle
{
  v12 = self;
  v11[1] = a2;
  v11[0] = [(AKAppleIDAuthenticationInAppContext *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    location = _AKLogSystem();
    v9 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      log = location;
      type = v9;
      __os_log_helper_16_0_0(v8);
      _os_log_impl(&dword_222379000, log, type, "Watch buddy context delegate providing style", v8, 2u);
    }

    objc_storeStrong(&location, 0);
    v13 = [v11[0] remoteUIStyle];
  }

  else
  {
    if (!v12->_remoteUIStyle)
    {
      if (BridgePreferencesLibraryCore(0))
      {
        getBPSRemoteUISetupStyleClass();
      }

      v2 = objc_opt_new();
      remoteUIStyle = v12->_remoteUIStyle;
      v12->_remoteUIStyle = v2;
      MEMORY[0x277D82BD8](remoteUIStyle);
    }

    v13 = MEMORY[0x277D82BE0](v12->_remoteUIStyle);
  }

  objc_storeStrong(v11, 0);
  v4 = v13;

  return v4;
}

- (void)willPresentModalNavigationController:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = [(AKAppleIDAuthenticationInAppContext *)v11 delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = _AKLogSystem();
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      log = v8;
      type = v7;
      __os_log_helper_16_0_0(v6);
      _os_log_impl(&dword_222379000, log, type, "Watch buddy context delegate handling willPresentModalNavigationController:", v6, 2u);
    }

    objc_storeStrong(&v8, 0);
    [v9 willPresentModalNavigationController:location[0]];
  }

  else
  {
    v3 = [location[0] navigationBar];
    SBPSApplyStyleToNavBar(v3);
    MEMORY[0x277D82BD8](v3);
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

@end