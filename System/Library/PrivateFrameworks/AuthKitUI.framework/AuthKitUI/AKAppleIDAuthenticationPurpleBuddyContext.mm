@interface AKAppleIDAuthenticationPurpleBuddyContext
- (AKAppleIDAuthenticationPurpleBuddyContext)init;
- (NSString)passwordForCreating;
- (NSString)usernameForCreating;
- (UINavigationController)navigationController;
- (void)dismissBasicLoginUIWithCompletion:(id)completion;
- (void)dismissServerProvidedUIWithCompletion:(id)completion;
- (void)presentBasicLoginUIWithCompletion:(id)completion;
- (void)presentBiometricOrPasscodeValidationForAppleID:(id)d completion:(id)completion;
- (void)presentLoginAlertWithError:(id)error title:(id)title message:(id)message completion:(id)completion;
- (void)remoteUIController:(id)controller didReceiveObjectModel:(id)model actionSignal:(unint64_t *)signal;
@end

@implementation AKAppleIDAuthenticationPurpleBuddyContext

- (AKAppleIDAuthenticationPurpleBuddyContext)init
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = 0;
  v7.receiver = self;
  v7.super_class = AKAppleIDAuthenticationPurpleBuddyContext;
  v9 = [(AKAppleIDAuthenticationPurpleBuddyContext *)&v7 init];
  objc_storeStrong(&v9, v9);
  if (v9)
  {
    [(AKAppleIDAuthenticationPurpleBuddyContext *)v9 setShouldUpdatePersistentServiceTokens:1];
    [(AKAppleIDAuthenticationPurpleBuddyContext *)v9 setAuthenticationType:2];
    [(AKAppleIDAuthenticationPurpleBuddyContext *)v9 setSupportsPiggybacking:1];
    [(AKAppleIDAuthenticationInAppContext *)v9 setForceInlinePresentation:1];
    v6 = _AKLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v10, v9);
      _os_log_impl(&dword_222379000, v6, OS_LOG_TYPE_DEFAULT, "Applying empty proto account context to %@ in order to bypass shield UI", v10, 0xCu);
    }

    objc_storeStrong(&v6, 0);
    v4 = v9;
    v5 = [objc_alloc(MEMORY[0x277CF02A8]) initWithGivenName:0 lastName:0 ageRange:0];
    [(AKAppleIDAuthenticationPurpleBuddyContext *)v4 setProtoAccountContext:?];
    MEMORY[0x277D82BD8](v5);
  }

  v3 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v9, 0);
  *MEMORY[0x277D85DE8];
  return v3;
}

- (NSString)usernameForCreating
{
  serverDataHarvester = [(AKAppleIDAuthenticationInAppContext *)self serverDataHarvester];
  harvestedData = [serverDataHarvester harvestedData];
  v5 = [harvestedData objectForKeyedSubscript:*MEMORY[0x277CEFFD8]];
  MEMORY[0x277D82BD8](harvestedData);
  MEMORY[0x277D82BD8](serverDataHarvester);

  return v5;
}

- (NSString)passwordForCreating
{
  v14 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v11[1] = a2;
  serverDataHarvester = [(AKAppleIDAuthenticationInAppContext *)self serverDataHarvester];
  harvestedData = [serverDataHarvester harvestedData];
  v11[0] = [harvestedData objectForKeyedSubscript:*MEMORY[0x277CEFFC8]];
  MEMORY[0x277D82BD8](harvestedData);
  MEMORY[0x277D82BD8](serverDataHarvester);
  location = _AKLogSystem();
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
  {
    serverDataHarvester2 = [(AKAppleIDAuthenticationInAppContext *)selfCopy serverDataHarvester];
    if (v11[0])
    {
      v2 = [v11[0] length];
      v3 = @"(empty)";
      if (v2)
      {
        v3 = @"(******)";
      }

      v6 = v3;
    }

    else
    {
      v6 = @"(null)";
    }

    __os_log_helper_16_3_2_8_65_8_65(v13, serverDataHarvester2, v6);
    _os_log_debug_impl(&dword_222379000, location, OS_LOG_TYPE_DEBUG, "Buddy password from harverster %{private}@ - %{private}@", v13, 0x16u);
    MEMORY[0x277D82BD8](serverDataHarvester2);
  }

  objc_storeStrong(&location, 0);
  v5 = MEMORY[0x277D82BE0](v11[0]);
  objc_storeStrong(v11, 0);
  *MEMORY[0x277D85DE8];

  return v5;
}

- (void)presentBasicLoginUIWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  _shortLivedToken = [(AKAppleIDAuthenticationPurpleBuddyContext *)selfCopy _shortLivedToken];
  *&v3 = MEMORY[0x277D82BD8](_shortLivedToken).n128_u64[0];
  if (_shortLivedToken)
  {
    v12 = _AKLogSystem();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      log = v12;
      type = v11;
      __os_log_helper_16_0_0(v10);
      _os_log_impl(&dword_222379000, log, type, "Suppressing interactive login for SLT upgrade", v10, 2u);
    }

    objc_storeStrong(&v12, 0);
    if (location[0])
    {
      v4 = location[0];
      v5 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7027];
      (*(v4 + 2))(v4, 0, 0);
      MEMORY[0x277D82BD8](v5);
    }
  }

  else
  {
    v9.receiver = selfCopy;
    v9.super_class = AKAppleIDAuthenticationPurpleBuddyContext;
    [(AKAppleIDAuthenticationInAppContext *)&v9 presentBasicLoginUIWithCompletion:location[0], v3];
  }

  objc_storeStrong(location, 0);
}

- (void)dismissBasicLoginUIWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  _shortLivedToken = [(AKAppleIDAuthenticationPurpleBuddyContext *)selfCopy _shortLivedToken];
  *&v3 = MEMORY[0x277D82BD8](_shortLivedToken).n128_u64[0];
  if (_shortLivedToken)
  {
    v12 = _AKLogSystem();
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      log = v12;
      type = v11;
      __os_log_helper_16_0_0(v10);
      _os_log_impl(&dword_222379000, log, type, "Suppressing login dismiss for SLT upgrade", v10, 2u);
    }

    objc_storeStrong(&v12, 0);
    if (location[0])
    {
      v4 = location[0];
      v5 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7027];
      v4[2](v4, 0);
      MEMORY[0x277D82BD8](v5);
    }
  }

  else
  {
    v9.receiver = selfCopy;
    v9.super_class = AKAppleIDAuthenticationPurpleBuddyContext;
    [(AKAppleIDAuthenticationInAppContext *)&v9 dismissBasicLoginUIWithCompletion:location[0], v3];
  }

  objc_storeStrong(location, 0);
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
  v9 = __83__AKAppleIDAuthenticationPurpleBuddyContext_dismissServerProvidedUIWithCompletion___block_invoke;
  v10 = &unk_2784A63C8;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  v12 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

id __83__AKAppleIDAuthenticationPurpleBuddyContext_dismissServerProvidedUIWithCompletion___block_invoke(uint64_t a1)
{
  v7 = a1;
  v6 = a1;
  if ([*(a1 + 32) isPresentingServerUI])
  {
    v3 = [*(a1 + 32) presentingViewController];
    [v3 dismissViewControllerAnimated:1 completion:0];
    MEMORY[0x277D82BD8](v3);
  }

  v1 = *(a1 + 40);
  v5.receiver = *(a1 + 32);
  v5.super_class = AKAppleIDAuthenticationPurpleBuddyContext;
  return objc_msgSendSuper2(&v5, sel_dismissServerProvidedUIWithCompletion_, v1);
}

- (void)presentLoginAlertWithError:(id)error title:(id)title message:(id)message completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v20 = 0;
  objc_storeStrong(&v20, title);
  v19 = 0;
  objc_storeStrong(&v19, message);
  v18 = 0;
  objc_storeStrong(&v18, completion);
  domain = [location[0] domain];
  v13 = 0;
  if ([domain isEqualToString:*MEMORY[0x277CEFF48]])
  {
    v13 = [location[0] code] == -7034;
  }

  *&v6 = MEMORY[0x277D82BD8](domain).n128_u64[0];
  if (v13)
  {
    v17 = _AKLogSystem();
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      log = v17;
      type = v16;
      __os_log_helper_16_0_0(v15);
      _os_log_impl(&dword_222379000, log, type, "Suppressing error for forced failure", v15, 2u);
    }

    objc_storeStrong(&v17, 0);
    if (v18)
    {
      (*(v18 + 2))(v18, 0, 0, 0, location[0]);
    }
  }

  else
  {
    v14.receiver = selfCopy;
    v14.super_class = AKAppleIDAuthenticationPurpleBuddyContext;
    [(AKAppleIDAuthenticationInAppContext *)&v14 _presentLoginAlertWithError:location[0] title:v20 message:v19 waitForInteraction:1 completion:v18, v6];
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (void)presentBiometricOrPasscodeValidationForAppleID:(id)d completion:(id)completion
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v7 = 0;
  objc_storeStrong(&v7, completion);
  v5 = v7;
  v6 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7027];
  v5[2](v5, 0);
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)remoteUIController:(id)controller didReceiveObjectModel:(id)model actionSignal:(unint64_t *)signal
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v10 = 0;
  objc_storeStrong(&v10, model);
  signalCopy = signal;
  v8.receiver = selfCopy;
  v8.super_class = AKAppleIDAuthenticationPurpleBuddyContext;
  [(AKAppleIDAuthenticationInAppContext *)&v8 remoteUIController:location[0] didReceiveObjectModel:v10 actionSignal:signal];
  setupAssistantStyle = [MEMORY[0x277D46210] setupAssistantStyle];
  [setupAssistantStyle applyToObjectModel:v10];
  MEMORY[0x277D82BD8](setupAssistantStyle);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (UINavigationController)navigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationController);

  return WeakRetained;
}

@end