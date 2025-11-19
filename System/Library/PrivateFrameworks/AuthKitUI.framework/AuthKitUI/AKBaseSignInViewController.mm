@interface AKBaseSignInViewController
- (AKAppleIDAuthenticationController)authenticationController;
- (AKSignInViewControllerDelegate)delegate;
- (BOOL)_canBeginAuthenticationWithOption:(unint64_t)a3;
- (BOOL)_isAccountModificationRestricted;
- (BOOL)_isSignInAllowed;
- (id)_initWithAuthController:(id)a3;
- (id)_initWithNibName:(id)a3 bundle:(id)a4;
- (id)_serverFriendlyUsername:(id)a3;
- (void)_authenticateWithContext:(id)a3;
- (void)_beginAuthenticationIfPossibleWithOption:(unint64_t)a3 withUsername:(id)a4 password:(id)a5;
- (void)_beginProximityAdvertisement;
- (void)_endProximityAdvertisement;
- (void)_provideDelegateWithAuthResults:(id)a3 error:(id)a4;
- (void)_setPasswordFieldHiddenIfNeeded;
- (void)dealloc;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation AKBaseSignInViewController

- (id)_initWithAuthController:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v7.receiver = v3;
  v7.super_class = AKBaseSignInViewController;
  v6 = [(AKBaseSignInViewController *)&v7 init];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    objc_storeStrong(&v9->_authenticationController, location[0]);
  }

  v5 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (id)_initWithNibName:(id)a3 bundle:(id)a4
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v4 = v11;
  v11 = 0;
  v8.receiver = v4;
  v8.super_class = AKBaseSignInViewController;
  v11 = [(AKBaseSignInViewController *)&v8 initWithNibName:location[0] bundle:v9];
  v7 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v7;
}

- (void)dealloc
{
  v8 = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v6 = 2;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    log = location[0];
    type = v6;
    __os_log_helper_16_0_0(v5);
    _os_log_debug_impl(&dword_222379000, log, type, "AKBaseSignInViewController deallocated", v5, 2u);
  }

  objc_storeStrong(location, 0);
  [(AKBaseSignInViewController *)v8 _endProximityAdvertisement];
  v4.receiver = v8;
  v4.super_class = AKBaseSignInViewController;
  [(AKBaseSignInViewController *)&v4 dealloc];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = AKBaseSignInViewController;
  [(AKBaseSignInViewController *)&v3 viewDidAppear:a3];
  [(AKBaseSignInViewController *)v6 _setPasswordFieldHiddenIfNeeded];
  [(AKBaseSignInViewController *)v6 _beginProximityAdvertisement];
}

- (void)_beginProximityAdvertisement
{
  v17 = self;
  location[1] = a2;
  if ([MEMORY[0x277CF0228] isProxForAuthkitEnabled])
  {
    v2 = objc_alloc_init(AKAppleIDProximityAuthenticationContext);
    proximityContext = v17->_proximityContext;
    v17->_proximityContext = v2;
    [(AKAppleIDAuthenticationInAppContext *)v17->_proximityContext setPresentingViewController:v17, MEMORY[0x277D82BD8](proximityContext).n128_f64[0]];
    [(AKAppleIDProximityAuthenticationContext *)v17->_proximityContext setAuthenticationType:2];
    location[0] = _AKLogSystem();
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      log = location[0];
      type = v15;
      __os_log_helper_16_0_0(v14);
      _os_log_impl(&dword_222379000, log, type, "Attempting to begin proximity authentication", v14, 2u);
    }

    objc_storeStrong(location, 0);
    v5 = [(AKBaseSignInViewController *)v17 authenticationController];
    v4 = v17->_proximityContext;
    v8 = MEMORY[0x277D85DD0];
    v9 = -1073741824;
    v10 = 0;
    v11 = __58__AKBaseSignInViewController__beginProximityAdvertisement__block_invoke;
    v12 = &unk_2784A6550;
    v13 = MEMORY[0x277D82BE0](v17);
    [(AKAppleIDAuthenticationController *)v5 authenticateWithContext:v4 completion:&v8];
    MEMORY[0x277D82BD8](v5);
    objc_storeStrong(&v13, 0);
  }
}

void __58__AKBaseSignInViewController__beginProximityAdvertisement__block_invoke(NSObject *a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  oslog[1] = a1;
  if (v6 && ([v6 code] == -13002 || objc_msgSend(v6, "code") == -13003))
  {
    oslog[0] = _AKLogSystem();
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v8, v6);
      _os_log_error_impl(&dword_222379000, oslog[0], OS_LOG_TYPE_ERROR, "AKInlineSignInViewController - attempt to broadcast for proximity failed with error: %@", v8, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    [(objc_class *)a1[4].isa _provideDelegateWithAuthResults:location[0] error:v6];
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_endProximityAdvertisement
{
  v15 = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v13;
    __os_log_helper_16_0_0(v12);
    _os_log_impl(&dword_222379000, log, type, "Attempting to end proximity authentication", v12, 2u);
  }

  objc_storeStrong(location, 0);
  if (v15->_proximityContext)
  {
    if ([MEMORY[0x277CF0228] isProxForAuthkitEnabled])
    {
      v3 = [(AKBaseSignInViewController *)v15 authenticationController];
      proximityContext = v15->_proximityContext;
      v6 = MEMORY[0x277D85DD0];
      v7 = -1073741824;
      v8 = 0;
      v9 = __56__AKBaseSignInViewController__endProximityAdvertisement__block_invoke;
      v10 = &unk_2784A6550;
      v11 = MEMORY[0x277D82BE0](v15);
      [(AKAppleIDAuthenticationController *)v3 endProximityAuthenticationForContext:proximityContext completion:&v6];
      MEMORY[0x277D82BD8](v3);
      objc_storeStrong(&v11, 0);
    }
  }
}

void __56__AKBaseSignInViewController__endProximityAdvertisement__block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v5 = 0;
  objc_storeStrong(&v5, a3);
  objc_storeStrong((a1[4] + 1000), 0);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)_setPasswordFieldHiddenIfNeeded
{
  v3 = [(AKBaseSignInViewController *)self context];
  v5 = 0;
  v4 = 0;
  if (([(AKAppleIDAuthenticationInAppContext *)v3 _requiresPasswordInput]& 1) != 0)
  {
    v6 = [(AKBaseSignInViewController *)self presentedViewController];
    v5 = 1;
    v4 = v6 == 0;
  }

  if (v5)
  {
    MEMORY[0x277D82BD8](v6);
  }

  *&v2 = MEMORY[0x277D82BD8](v3).n128_u64[0];
  if (v4)
  {
    [(AKBaseSignInViewController *)self _setPasswordFieldHidden:0 animated:0, v2];
  }
}

- (AKAppleIDAuthenticationController)authenticationController
{
  if (!self->_authenticationController)
  {
    v2 = objc_alloc_init(MEMORY[0x277CF0178]);
    authenticationController = self->_authenticationController;
    self->_authenticationController = v2;
    MEMORY[0x277D82BD8](authenticationController);
  }

  v4 = self->_authenticationController;

  return v4;
}

- (BOOL)_isSignInAllowed
{
  v3 = [(AKBaseSignInViewController *)self context];
  v4 = 1;
  if (([(AKAppleIDAuthenticationInAppContext *)v3 isEphemeral]& 1) == 0)
  {
    v4 = ![(AKBaseSignInViewController *)self _isAccountModificationRestricted];
  }

  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (BOOL)_isAccountModificationRestricted
{
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  v4 = [v3 effectiveBoolValueForSetting:*MEMORY[0x277D25CD0]];
  MEMORY[0x277D82BD8](v3);
  return v4 == 2;
}

- (BOOL)_canBeginAuthenticationWithOption:(unint64_t)a3
{
  v11 = self;
  v10 = a2;
  v9 = a3;
  if ([(AKBaseSignInViewController *)self isAuthInProgress])
  {
    location = _AKLogSystem();
    v7 = 16;
    if (os_log_type_enabled(location, OS_LOG_TYPE_ERROR))
    {
      log = location;
      type = v7;
      __os_log_helper_16_0_0(v6);
      _os_log_error_impl(&dword_222379000, log, type, "Authentication is already in progress.", v6, 2u);
    }

    objc_storeStrong(&location, 0);
    return 0;
  }

  else if (v9 == 1)
  {
    return [(AKBaseSignInViewController *)v11 _isSignInAllowed];
  }

  else
  {
    return v9 - 2 <= 1 && ![(AKBaseSignInViewController *)v11 _isAccountModificationRestricted];
  }
}

- (void)_beginAuthenticationIfPossibleWithOption:(unint64_t)a3 withUsername:(id)a4 password:(id)a5
{
  v29 = self;
  v28 = a2;
  v27 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v25 = 0;
  objc_storeStrong(&v25, a5);
  if ([(AKBaseSignInViewController *)v29 _canBeginAuthenticationWithOption:v27])
  {
    [(AKBaseSignInViewController *)v29 setAuthInProgress:1];
    v20 = [(AKBaseSignInViewController *)v29 delegate];
    if (!v20)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"you must set a delegate before the button is pressed"];
    }

    [(AKBaseSignInViewController *)v29 startAnimating];
    v19 = [(AKBaseSignInViewController *)v29 context];
    v18 = [(AKBaseSignInViewController *)v29 _serverFriendlyUsername:location];
    [v19 setUsername:v18];
    if (v25)
    {
      [v19 _setPassword:v25];
    }

    [v19 setNeedsCredentialRecovery:v27 == 2];
    [v19 setNeedsNewAppleID:v27 == 3];
    [v19 setAuthenticationType:2];
    if (objc_opt_respondsToSelector())
    {
      v7 = v20;
      v5 = v29;
      v6 = v19;
      v11 = MEMORY[0x277D85DD0];
      v12 = -1073741824;
      v13 = 0;
      v14 = __93__AKBaseSignInViewController__beginAuthenticationIfPossibleWithOption_withUsername_password___block_invoke;
      v15 = &unk_2784A6420;
      v16 = MEMORY[0x277D82BE0](v29);
      v17 = MEMORY[0x277D82BE0](v19);
      [v7 signInViewController:v5 willPerformAuthenticationWithContext:v6 completionHandler:&v11];
      objc_storeStrong(&v17, 0);
      objc_storeStrong(&v16, 0);
    }

    else
    {
      [(AKBaseSignInViewController *)v29 _authenticateWithContext:v19];
    }

    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v20, 0);
    v21 = 0;
  }

  else
  {
    v24 = _AKLogSystem();
    v23 = 16;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      log = v24;
      type = v23;
      __os_log_helper_16_0_0(v22);
      _os_log_error_impl(&dword_222379000, log, type, "Authentication not possible due to a restriction MCFeatureAccountModificationAllowed.", v22, 2u);
    }

    objc_storeStrong(&v24, 0);
    v21 = 1;
  }

  objc_storeStrong(&v25, 0);
  objc_storeStrong(&location, 0);
}

- (void)_authenticateWithContext:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_initWeak(&from, v14);
  [(AKBaseSignInViewController *)v14 _endProximityAdvertisement];
  v4 = [(AKBaseSignInViewController *)v14 authenticationController];
  v3 = location[0];
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __55__AKBaseSignInViewController__authenticateWithContext___block_invoke;
  v9 = &unk_2784A68C8;
  objc_copyWeak(v11, &from);
  v10 = MEMORY[0x277D82BE0](v14);
  [(AKAppleIDAuthenticationController *)v4 authenticateWithContext:v3 completion:&v5];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(&v10, 0);
  objc_destroyWeak(v11);
  objc_destroyWeak(&from);
  objc_storeStrong(location, 0);
}

void __55__AKBaseSignInViewController__authenticateWithContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12 = 0;
  objc_storeStrong(&v12, a3);
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained((a1 + 40));
  [v11[0] _provideDelegateWithAuthResults:location[0] error:v12];
  v5 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__AKBaseSignInViewController__authenticateWithContext___block_invoke_2;
  v8[3] = &unk_2784A6420;
  v9 = MEMORY[0x277D82BE0](*(a1 + 32));
  v10 = MEMORY[0x277D82BE0](v11[0]);
  dispatch_async(queue, v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)_provideDelegateWithAuthResults:(id)a3 error:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = [(AKBaseSignInViewController *)v10 delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = v10;
    v5 = [location[0] mutableCopy];
    [v7 signInViewController:v4 didAuthenticateWithResults:? error:?];
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (id)_serverFriendlyUsername:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] containsString:@"@"])
  {
    v7 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v5 = objc_opt_new();
    v7 = [v5 normalizedFormatFor:location[0]];
    objc_storeStrong(&v5, 0);
  }

  objc_storeStrong(location, 0);
  v3 = v7;

  return v3;
}

- (AKSignInViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end