@interface AKAuthorizationViewController
- (AKAuthorizationViewController)init;
- (AKAuthorizationViewController)initWithAuthorizationContext:(id)a3;
- (AKAuthorizationViewController)initWithCoder:(id)a3;
- (AKAuthorizationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (AKAuthorizationViewControllerDelegate)delegate;
- (BOOL)_isFirstTimeAppleIDAuthorization;
- (BOOL)_isManagedAppleID;
- (id)_backBarButtonItem;
- (id)_cancelBarButtonItem;
- (id)_inputPaneViewController;
- (id)_logoBarButtonItem:(id)a3;
- (id)_paneTitleString;
- (id)_parentalApprovalRequestViewController;
- (id)firstTimeViewController;
- (void)_backButtonSelected:(id)a3;
- (void)_cancelButtonSelected:(id)a3;
- (void)_delegate_authorizationViewControllerDidCompleteWithAuthorization:(id)a3 error:(id)a4;
- (void)_performPasswordAuthenticationForFederatedManagedAccountForPaneViewController:(id)a3;
- (void)_presentAuthorizationViewController;
- (void)_presentContainerViewControllerWith:(id)a3;
- (void)_presentFirstTimeViewController;
- (void)_presentInputPaneViewControllerReplacing:(BOOL)a3;
- (void)authorizationContainerViewControllerDidDismiss:(id)a3;
- (void)authorizationPaneViewController:(id)a3 didRequestAuthorizationWithUserProvidedInformation:(id)a4 completion:(id)a5;
- (void)authorizationPaneViewController:(id)a3 didRequestIconWithCompletion:(id)a4;
- (void)authorizationPaneViewController:(id)a3 dismissWithAuthorization:(id)a4 error:(id)a5;
- (void)authorizationPaneViewController:(id)a3 pushEditScope:(id)a4 presentationContext:(id)a5 options:(id)a6;
- (void)performAppleIDAuthorizationForPaneViewController:(id)a3;
- (void)performPasswordAuthenticationForPaneViewController:(id)a3;
- (void)presentAuthenticationChoiceUIWithCompletion:(id)a3;
- (void)presentConfirmPaneViewController;
- (void)presentInputPaneViewController;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation AKAuthorizationViewController

- (AKAuthorizationViewController)init
{
  v3 = self;
  [(AKAuthorizationViewController *)self doesNotRecognizeSelector:a2];
  objc_storeStrong(&v3, 0);
  return 0;
}

- (AKAuthorizationViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v9 = self;
  v8 = a2;
  location = 0;
  objc_storeStrong(&location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  [(AKAuthorizationViewController *)v9 doesNotRecognizeSelector:v8];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v9, 0);
  return 0;
}

- (AKAuthorizationViewController)initWithAuthorizationContext:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v16;
  v16 = 0;
  v14.receiver = v3;
  v14.super_class = AKAuthorizationViewController;
  v16 = [(AKAuthorizationViewController *)&v14 initWithNibName:0 bundle:?];
  objc_storeStrong(&v16, v16);
  if (v16)
  {
    objc_storeStrong(&v16->_presentationContext, location[0]);
    v9 = [location[0] credentialRequestContext];
    v8 = [v9 authorizationRequest];
    v13 = [v8 requestedScopes];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    v11 = [AKAuthorizationScopeChoices alloc];
    v10 = v13;
    v12 = [location[0] userInformation];
    v4 = [(AKAuthorizationScopeChoices *)v11 initWithScopes:v10 userInformation:?];
    scopeChoices = v16->_scopeChoices;
    v16->_scopeChoices = v4;
    MEMORY[0x277D82BD8](scopeChoices);
    MEMORY[0x277D82BD8](v12);
    objc_storeStrong(&v13, 0);
  }

  v7 = MEMORY[0x277D82BE0](v16);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v16, 0);
  return v7;
}

- (AKAuthorizationViewController)initWithCoder:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = AKAuthorizationViewController;
  v8 = [(AKAuthorizationViewController *)&v6 initWithCoder:location[0]];
  objc_storeStrong(&v8, v8);
  v5 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (void)viewDidLoad
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = AKAuthorizationViewController;
  [(AKAuthorizationViewController *)&v2 viewDidLoad];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = AKAuthorizationViewController;
  [(AKAuthorizationViewController *)&v3 viewWillAppear:a3];
  if (!v6->_navigationController)
  {
    [(AKAuthorizationViewController *)v6 _presentAuthorizationViewController];
  }
}

- (void)presentConfirmPaneViewController
{
  if ([(AKAuthorizationViewController *)self _isFirstTimeAppleIDAuthorization])
  {
    [(AKAuthorizationViewController *)self _presentFirstTimeViewController];
  }

  else
  {
    [(AKAuthorizationViewController *)self _presentInputPaneViewControllerReplacing:0];
  }
}

- (void)_presentFirstTimeViewController
{
  v10 = self;
  v9[1] = a2;
  v9[0] = [(AKAuthorizationViewController *)self firstTimeViewController];
  v7 = [(AKAuthorizationViewController *)v10 navigationController];
  v6 = [(AKAuthorizationNavigationController *)v7 viewControllers];
  v8 = [v6 count] != 0;
  MEMORY[0x277D82BD8](v6);
  v2 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v8)
  {
    v5 = [v9[0] navigationItem];
    v4 = [(AKAuthorizationViewController *)v10 _backBarButtonItem];
    [v5 setLeftBarButtonItem:?];
    MEMORY[0x277D82BD8](v4);
    v2 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  }

  v3 = [(AKAuthorizationViewController *)v10 navigationController];
  [(AKAuthorizationNavigationController *)v3 pushViewController:v9[0] animated:1];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(v9, 0);
}

- (void)_presentAuthorizationViewController
{
  v37 = self;
  location[1] = a2;
  v20 = [(AKAuthorizationViewController *)self presentationContext];
  v19 = [(AKAuthorizationPresentationContext *)v20 credentialRequestContext];
  v21 = [v19 passwordRequest];
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v19);
  *&v2 = MEMORY[0x277D82BD8](v20).n128_u64[0];
  if (v21)
  {
    location[0] = _AKLogSiwa();
    v35 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      log = location[0];
      v18 = v35;
      __os_log_helper_16_0_0(v34);
      _os_log_impl(&dword_222379000, log, v18, "Showing AKAuthorizationInputPaneViewController", v34, 2u);
    }

    objc_storeStrong(location, 0);
    v33 = [(AKAuthorizationViewController *)v37 _inputPaneViewController];
    [(AKAuthorizationViewController *)v37 _presentContainerViewControllerWith:v33];
    objc_storeStrong(&v33, 0);
  }

  else if ([(AKAuthorizationViewController *)v37 _isFirstTimeAppleIDAuthorization])
  {
    v32 = _AKLogSiwa();
    v31 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v32;
      type = v31;
      __os_log_helper_16_0_0(v30);
      _os_log_impl(&dword_222379000, v15, type, "Showing AKAuthorizationFirstTimePaneViewController", v30, 2u);
    }

    objc_storeStrong(&v32, 0);
    v29 = [(AKAuthorizationViewController *)v37 firstTimeViewController];
    [(AKAuthorizationViewController *)v37 _presentContainerViewControllerWith:v29];
    objc_storeStrong(&v29, 0);
  }

  else
  {
    v13 = [(AKAuthorizationViewController *)v37 presentationContext];
    v12 = [(AKAuthorizationPresentationContext *)v13 credentialRequestContext];
    v14 = [v12 authorizationRequest];
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    if (v14)
    {
      v28 = 0;
      v27 = _AKLogSiwa();
      v26 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v27;
        v11 = v26;
        __os_log_helper_16_0_0(v25);
        _os_log_impl(&dword_222379000, v10, v11, "Showing AKAuthorizationInputPaneViewController", v25, 2u);
      }

      objc_storeStrong(&v27, 0);
      v3 = [(AKAuthorizationViewController *)v37 _inputPaneViewController];
      v4 = v28;
      v28 = v3;
      *&v5 = MEMORY[0x277D82BD8](v4).n128_u64[0];
      [(AKAuthorizationViewController *)v37 _presentContainerViewControllerWith:v28, v5];
      objc_storeStrong(&v28, 0);
    }

    else
    {
      v24 = _AKLogSiwa();
      v23 = 16;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v8 = v24;
        v9 = v23;
        __os_log_helper_16_0_0(v22);
        _os_log_error_impl(&dword_222379000, v8, v9, "No UI was shown to the user because there is no credential request!", v22, 2u);
      }

      objc_storeStrong(&v24, 0);
      v6 = v37;
      v7 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7001];
      [(AKAuthorizationViewController *)v6 _delegate_authorizationViewControllerDidCompleteWithAuthorization:0 error:?];
      MEMORY[0x277D82BD8](v7);
    }
  }
}

- (void)presentAuthenticationChoiceUIWithCompletion:(id)a3
{
  v40 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = MEMORY[0x277D75110];
  v11 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:?];
  v10 = [v11 localizedStringForKey:@"ACCOUNT_FORK_ALERT_TITLE" value:? table:?];
  v9 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKit"];
  v8 = [v9 localizedStringForKey:@"ACCOUNT_FORK_ALERT_MESSAGE" value:&stru_28358EF68 table:@"Localizable"];
  v38 = [v7 alertControllerWithTitle:v10 message:? preferredStyle:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  *&v3 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  v13 = v38;
  v12 = MEMORY[0x277D750F8];
  v16 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:{@"com.apple.AuthKit", v3}];
  v15 = [v16 localizedStringForKey:@"ACCOUNT_FORK_ALERT_BUTTON_CREATE" value:&stru_28358EF68 table:@"Localizable"];
  v32[1] = MEMORY[0x277D85DD0];
  v33 = -1073741824;
  v34 = 0;
  v35 = __77__AKAuthorizationViewController_presentAuthenticationChoiceUIWithCompletion___block_invoke;
  v36 = &unk_2784A64D8;
  v37 = MEMORY[0x277D82BE0](location[0]);
  v14 = [v12 actionWithTitle:v15 style:? handler:?];
  [v13 addAction:?];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  *&v4 = MEMORY[0x277D82BD8](v16).n128_u64[0];
  v18 = v38;
  v17 = MEMORY[0x277D750F8];
  v21 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:{@"com.apple.AuthKit", v4}];
  v20 = [v21 localizedStringForKey:@"ACCOUNT_FORK_ALERT_BUTTON_KEYCHAIN" value:&stru_28358EF68 table:@"Localizable"];
  v31[1] = MEMORY[0x277D85DD0];
  v31[2] = 3221225472;
  v31[3] = __77__AKAuthorizationViewController_presentAuthenticationChoiceUIWithCompletion___block_invoke_51;
  v31[4] = &unk_2784A64D8;
  v32[0] = MEMORY[0x277D82BE0](location[0]);
  v19 = [v17 actionWithTitle:v20 style:0 handler:?];
  [v18 addAction:?];
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  *&v5 = MEMORY[0x277D82BD8](v21).n128_u64[0];
  v23 = v38;
  v22 = MEMORY[0x277D750F8];
  v26 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:{@"com.apple.AuthKit", v5}];
  v25 = [v26 localizedStringForKey:@"ALERT_DEFAULT_CANCEL" value:&stru_28358EF68 table:@"Localizable"];
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __77__AKAuthorizationViewController_presentAuthenticationChoiceUIWithCompletion___block_invoke_55;
  v30 = &unk_2784A64D8;
  v31[0] = MEMORY[0x277D82BE0](location[0]);
  v24 = [v22 actionWithTitle:v25 style:0 handler:?];
  [v23 addAction:?];
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  *&v6 = MEMORY[0x277D82BD8](v26).n128_u64[0];
  [(AKAuthorizationViewController *)v40 presentViewController:v38 animated:1 completion:0, v6];
  objc_storeStrong(v31, 0);
  objc_storeStrong(v32, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
}

void __77__AKAuthorizationViewController_presentAuthenticationChoiceUIWithCompletion___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7[1] = a1;
  v7[0] = _AKLogSiwa();
  v6 = 2;
  if (os_log_type_enabled(v7[0], OS_LOG_TYPE_DEBUG))
  {
    log = v7[0];
    type = v6;
    __os_log_helper_16_0_0(v5);
    _os_log_debug_impl(&dword_222379000, log, type, "User picked create", v5, 2u);
  }

  objc_storeStrong(v7, 0);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

void __77__AKAuthorizationViewController_presentAuthenticationChoiceUIWithCompletion___block_invoke_51(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7[1] = a1;
  v7[0] = _AKLogSiwa();
  v6 = 2;
  if (os_log_type_enabled(v7[0], OS_LOG_TYPE_DEBUG))
  {
    log = v7[0];
    type = v6;
    __os_log_helper_16_0_0(v5);
    _os_log_debug_impl(&dword_222379000, log, type, "User picked keychain", v5, 2u);
  }

  objc_storeStrong(v7, 0);
  (*(a1[4] + 16))();
  objc_storeStrong(location, 0);
}

void __77__AKAuthorizationViewController_presentAuthenticationChoiceUIWithCompletion___block_invoke_55(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9[1] = a1;
  v9[0] = _AKLogSiwa();
  v8 = 2;
  if (os_log_type_enabled(v9[0], OS_LOG_TYPE_DEBUG))
  {
    log = v9[0];
    type = v8;
    __os_log_helper_16_0_0(v7);
    _os_log_debug_impl(&dword_222379000, log, type, "User picked cancel", v7, 2u);
  }

  objc_storeStrong(v9, 0);
  v2 = a1[4];
  v3 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7003];
  (*(v2 + 16))(v2, 0);
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (void)_presentContainerViewControllerWith:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [AKAuthorizationNavigationController alloc];
  v4 = [(AKAuthorizationNavigationController *)v3 initWithRootViewController:location[0]];
  navigationController = v14->_navigationController;
  v14->_navigationController = v4;
  MEMORY[0x277D82BD8](navigationController);
  v9 = [AKAuthorizationContainerViewController alloc];
  v10 = [(AKAuthorizationViewController *)v14 navigationController];
  presentationContext = v14->_presentationContext;
  v12 = [AKAuthorizationContainerViewController initWithRootViewController:v9 authorizationContext:"initWithRootViewController:authorizationContext:"];
  *&v7 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  [(AKAuthorizationContainerViewController *)v12 setDelegate:v14, v7];
  [(AKAuthorizationContainerViewController *)v12 setPaneDelegate:v14];
  [location[0] sizeToFitPaneContent];
  v11 = [(AKAuthorizationViewController *)v14 navigationController];
  [(AKAuthorizationNavigationController *)v11 setDelegate:v12];
  *&v8 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  [(AKAuthorizationViewController *)v14 presentViewController:v12 animated:1 completion:0, v8];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (id)_parentalApprovalRequestViewController
{
  v15 = self;
  v14[1] = a2;
  v5 = [AKParentalApprovalRequestViewController alloc];
  v6 = [(AKAuthorizationViewController *)v15 presentationContext];
  v14[0] = [(AKParentalApprovalRequestViewController *)v5 initWithPresentationContext:?];
  *&v2 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  [v14[0] setAuthorizationViewController:{v15, v2}];
  v10 = [v14[0] navigationItem];
  v7 = v15;
  v9 = [(AKAuthorizationViewController *)v15 _paneTitleString];
  v8 = [(AKAuthorizationViewController *)v7 _logoBarButtonItem:?];
  [v10 setLeftBarButtonItem:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  *&v3 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  v12 = [v14[0] navigationItem];
  v11 = [(AKAuthorizationViewController *)v15 _cancelBarButtonItem];
  [v12 setRightBarButtonItem:?];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  v13 = MEMORY[0x277D82BE0](v14[0]);
  objc_storeStrong(v14, 0);

  return v13;
}

- (id)firstTimeViewController
{
  v7 = self;
  v6[1] = a2;
  v6[0] = objc_alloc_init(AKAuthorizationFirstTimePaneViewController);
  [v6[0] setAuthorizationViewController:v7];
  v4 = [v6[0] navigationItem];
  v3 = [(AKAuthorizationViewController *)v7 _cancelBarButtonItem];
  [v4 setRightBarButtonItem:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  v5 = MEMORY[0x277D82BE0](v6[0]);
  objc_storeStrong(v6, 0);

  return v5;
}

- (id)_inputPaneViewController
{
  v17 = self;
  v16[1] = a2;
  v6 = [AKAuthorizationInputPaneViewController alloc];
  v8 = [(AKAuthorizationViewController *)v17 presentationContext];
  v7 = [(AKAuthorizationViewController *)v17 scopeChoices];
  v16[0] = [(AKAuthorizationInputPaneViewController *)v6 initWithPresentationContext:v8 scopeChoices:?];
  MEMORY[0x277D82BD8](v7);
  *&v2 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  [v16[0] setAuthorizationViewController:{v17, v2}];
  v9 = v17;
  v10 = [(AKAuthorizationViewController *)v17 _paneTitleString];
  v15 = [(AKAuthorizationViewController *)v9 _logoBarButtonItem:?];
  *&v3 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  [v15 _setPrefersNoPlatter:{1, v3}];
  v11 = [v16[0] navigationItem];
  [v11 setLeftBarButtonItem:v15];
  *&v4 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  v13 = [v16[0] navigationItem];
  v12 = [(AKAuthorizationViewController *)v17 _cancelBarButtonItem];
  [v13 setRightBarButtonItem:?];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  v14 = MEMORY[0x277D82BE0](v16[0]);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(v16, 0);

  return v14;
}

- (id)_logoBarButtonItem:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = objc_alloc(MEMORY[0x277D756B8]);
  v13 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v11 = [MEMORY[0x277CF0228] sharedManager];
  v12 = [v11 isAuthKitSolariumFeatureEnabled];
  *&v4 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  if (v12)
  {
    v10 = [MEMORY[0x277D74300] ak_dynamicFontWithStyle:*MEMORY[0x277D76A20] traits:{2, v4}];
    [v13 setFont:?];
    v5 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  }

  else
  {
    v9 = [MEMORY[0x277D74300] systemFontOfSize:18.0 weight:*MEMORY[0x277D74420]];
    [v13 setFont:?];
    v5 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  }

  [v13 setText:{location[0], *&v5}];
  v6 = objc_alloc(MEMORY[0x277D751E0]);
  v8 = [v6 initWithCustomView:v13];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (id)_cancelBarButtonItem
{
  v31 = self;
  v30[1] = a2;
  v20 = [MEMORY[0x277CF0228] sharedManager];
  v21 = [v20 isAuthKitSolariumFeatureEnabled];
  *&v2 = MEMORY[0x277D82BD8](v20).n128_u64[0];
  if (v21)
  {
    v32 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:24 target:v31 action:sel__cancelButtonSelected_];
  }

  else
  {
    v18 = [MEMORY[0x277CF0228] sharedManager];
    v19 = [v18 isLisbonAvailable];
    MEMORY[0x277D82BD8](v18);
    if (v19)
    {
      v9 = MEMORY[0x277D750C8];
      v24 = MEMORY[0x277D85DD0];
      v25 = -1073741824;
      v26 = 0;
      v27 = __53__AKAuthorizationViewController__cancelBarButtonItem__block_invoke;
      v28 = &unk_2784A6500;
      v29 = MEMORY[0x277D82BE0](v31);
      v30[0] = [v9 actionWithHandler:&v24];
      v23 = [MEMORY[0x277D75220] buttonWithType:? primaryAction:?];
      v10 = v23;
      v13 = [MEMORY[0x277D755B8] kitImageNamed:@"UICloseButtonBackgroundCompact"];
      v12 = [MEMORY[0x277D75348] tertiarySystemFillColor];
      v11 = [v13 imageWithTintColor:?];
      [v10 setBackgroundImage:? forState:?];
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](v13);
      v14 = v23;
      v15 = [MEMORY[0x277D755D0] configurationWithPointSize:7 weight:1 scale:15.0];
      [v14 setPreferredSymbolConfiguration:? forImageInState:?];
      MEMORY[0x277D82BD8](v15);
      v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v16 = [v17 localizedStringForKey:@"AUTHORIZATION_VIEWCONTROLLER_CANCEL" value:&stru_28358EF68 table:@"Localizable"];
      [v23 setAccessibilityLabel:?];
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](v17);
      v3 = objc_alloc(MEMORY[0x277D751E0]);
      v22 = [v3 initWithCustomView:v23];
      v32 = MEMORY[0x277D82BE0](v22);
      objc_storeStrong(&v22, 0);
      objc_storeStrong(&v23, 0);
      objc_storeStrong(v30, 0);
      objc_storeStrong(&v29, 0);
    }

    else
    {
      v6 = objc_alloc(MEMORY[0x277D751E0]);
      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = [v8 localizedStringForKey:@"AUTHORIZATION_VIEWCONTROLLER_CANCEL" value:&stru_28358EF68 table:@"Localizable"];
      v32 = [v6 initWithTitle:? style:? target:? action:?];
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v8);
    }
  }

  v4 = v32;

  return v4;
}

void __53__AKAuthorizationViewController__cancelBarButtonItem__block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] _cancelButtonSelected:location[0]];
  objc_storeStrong(location, 0);
}

- (id)_backBarButtonItem
{
  v3 = objc_alloc(MEMORY[0x277D751E0]);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v5 localizedStringForKey:@"AUTHORIZATION_VIEWCONTROLLER_BACK" value:&stru_28358EF68 table:@"Localizable"];
  v6 = [v3 initWithTitle:? style:? target:? action:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);

  return v6;
}

- (id)_paneTitleString
{
  v6 = [(AKAuthorizationViewController *)self presentationContext];
  v5 = [(AKAuthorizationPresentationContext *)v6 credentialRequestContext];
  v7 = [v5 _isFirstPartyLogin];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  if (v7)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v4 localizedStringForKey:@"AUTHORIZATION_VIEWCONTROLLER_TITLE_REBRAND" value:&stru_28358EF68 table:@"Localizable"];
    MEMORY[0x277D82BD8](v4);
  }

  else
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v3 localizedStringForKey:@"AUTHORIZATION_VIEWCONTROLLER_TITLE_MODERN" value:&stru_28358EF68 table:@"Localizable"];
    MEMORY[0x277D82BD8](v3);
  }

  return v8;
}

- (void)authorizationContainerViewControllerDidDismiss:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7003];
  [(AKAuthorizationViewController *)v5 _delegate_authorizationViewControllerDidCompleteWithAuthorization:0 error:v3];
  objc_storeStrong(&v3, 0);
  objc_storeStrong(location, 0);
}

- (void)presentInputPaneViewController
{
  if ([(AKAuthorizationViewController *)self _isFirstTimeAppleIDAuthorization])
  {
    [(AKAuthorizationViewController *)self _presentFirstTimeViewController];
  }

  else
  {
    [(AKAuthorizationViewController *)self _presentInputPaneViewControllerReplacing:0];
  }
}

- (BOOL)_isFirstTimeAppleIDAuthorization
{
  v11 = [(AKAuthorizationViewController *)self presentationContext];
  v10 = [(AKAuthorizationPresentationContext *)v11 userInformation];
  v9 = [v10 isUnderage];
  v12 = [v9 BOOLValue];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  v13 = [MEMORY[0x277CF0130] sharedInstance];
  v24 = [v13 primaryiCloudAccountHasPendingDOB];
  v16 = [(AKAuthorizationViewController *)self presentationContext];
  v15 = [(AKAuthorizationPresentationContext *)v16 userInformation];
  v14 = [v15 hasUsedAuthorization];
  v17 = [v14 BOOLValue];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  *&v2 = MEMORY[0x277D82BD8](v16).n128_u64[0];
  if ((v12 & 1) != 0 || (v24) && (v17 & 1) == 0)
  {
    return 0;
  }

  v7 = [MEMORY[0x277CF0208] sharedConfiguration];
  v8 = [v7 shouldAlwaysShowWelcome];
  v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v8 == 1)
  {
    return 1;
  }

  v22 = 0;
  v20 = 0;
  v18 = 0;
  v6 = 0;
  if ((v17 & 1) == 0)
  {
    v23 = [(AKAuthorizationViewController *)self presentationContext];
    v22 = 1;
    v21 = [(AKAuthorizationPresentationContext *)v23 credentialRequestContext];
    v20 = 1;
    v6 = 0;
    if (![v21 _isFirstPartyLogin])
    {
      v19 = [(AKAuthorizationViewController *)self presentationContext];
      v18 = 1;
      v6 = [(AKAuthorizationPresentationContext *)v19 hasShownFirstTimeAlready]== 0;
    }
  }

  if (v18)
  {
    v3 = MEMORY[0x277D82BD8](v19).n128_u64[0];
  }

  if (v20)
  {
    v3 = MEMORY[0x277D82BD8](v21).n128_u64[0];
  }

  if (v22)
  {
    v3 = MEMORY[0x277D82BD8](v23).n128_u64[0];
  }

  if (v6)
  {
    v5 = [(AKAuthorizationViewController *)self presentationContext];
    [(AKAuthorizationPresentationContext *)v5 setHasShownFirstTimeAlready:1];
    MEMORY[0x277D82BD8](v5);
  }

  return v6;
}

- (BOOL)_isManagedAppleID
{
  v4 = [(AKAuthorizationViewController *)self presentationContext];
  v3 = [(AKAuthorizationPresentationContext *)v4 userInformation];
  v5 = [v3 isManagedAppleID];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  return v5;
}

- (void)_presentInputPaneViewControllerReplacing:(BOOL)a3
{
  v24 = self;
  v23 = a2;
  v22 = a3;
  v18 = [(AKAuthorizationViewController *)self navigationController];
  *&v3 = MEMORY[0x277D82BD8](v18).n128_u64[0];
  if (v18)
  {
    v21 = [(AKAuthorizationViewController *)v24 _inputPaneViewController];
    [v21 setPaneDelegate:v24];
    v16 = [(AKAuthorizationViewController *)v24 navigationController];
    v15 = [(AKAuthorizationNavigationController *)v16 viewControllers];
    v17 = [v15 count] != v22;
    MEMORY[0x277D82BD8](v15);
    v4 = MEMORY[0x277D82BD8](v16).n128_u64[0];
    v20 = v17;
    if (v17)
    {
      v14 = [v21 navigationItem];
      v13 = [(AKAuthorizationViewController *)v24 _backBarButtonItem];
      [v14 setLeftBarButtonItem:?];
      MEMORY[0x277D82BD8](v13);
      v4 = MEMORY[0x277D82BD8](v14).n128_u64[0];
    }

    if (v22)
    {
      v9 = [(AKAuthorizationViewController *)v24 navigationController];
      v8 = [(AKAuthorizationNavigationController *)v9 viewControllers];
      v19 = [v8 mutableCopy];
      MEMORY[0x277D82BD8](v8);
      *&v5 = MEMORY[0x277D82BD8](v9).n128_u64[0];
      v10 = v19;
      v6 = [v19 count];
      [v10 replaceObjectAtIndex:v6 - 1 withObject:v21];
      v12 = [(AKAuthorizationViewController *)v24 navigationController];
      v11 = [v19 copy];
      [AKAuthorizationNavigationController setViewControllers:v12 animated:"setViewControllers:animated:"];
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v12);
      objc_storeStrong(&v19, 0);
    }

    else
    {
      v7 = [(AKAuthorizationViewController *)v24 navigationController];
      [(AKAuthorizationNavigationController *)v7 pushViewController:v21 animated:1];
      MEMORY[0x277D82BD8](v7);
    }

    objc_storeStrong(&v21, 0);
  }
}

- (void)_cancelButtonSelected:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7003];
  [(AKAuthorizationViewController *)v5 _delegate_authorizationViewControllerDidCompleteWithAuthorization:0 error:v3];
  objc_storeStrong(&v3, 0);
  objc_storeStrong(location, 0);
}

- (void)_backButtonSelected:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(AKAuthorizationViewController *)v6 navigationController];
  v3 = [(AKAuthorizationNavigationController *)v4 popViewControllerAnimated:1];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (void)_delegate_authorizationViewControllerDidCompleteWithAuthorization:(id)a3 error:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v7 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  v8 = v7;
  dispatch_assert_queue_V2(v8);
  *&v5 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  v9 = [(AKAuthorizationViewController *)v12 delegate];
  if (objc_opt_respondsToSelector())
  {
    [v9 authorizationViewController:v12 didCompleteWithAuthorization:location[0] error:v10];
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)authorizationPaneViewController:(id)a3 dismissWithAuthorization:(id)a4 error:(id)a5
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v7 = 0;
  objc_storeStrong(&v7, a5);
  [(AKAuthorizationViewController *)v10 _delegate_authorizationViewControllerDidCompleteWithAuthorization:v8 error:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)authorizationPaneViewController:(id)a3 didRequestAuthorizationWithUserProvidedInformation:(id)a4 completion:(id)a5
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = 0;
  objc_storeStrong(&v8, a5);
  v7 = [(AKAuthorizationViewController *)v11 delegate];
  [(AKAuthorizationViewControllerDelegate *)v7 authorizationViewController:v11 didRequestAuthorizationWithUserProvidedInformation:v9 completion:v8];
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)authorizationPaneViewController:(id)a3 didRequestIconWithCompletion:(id)a4
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v17 = [(AKAuthorizationViewController *)v20 delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = v17;
    v6 = v20;
    v9 = [(AKAuthorizationViewController *)v20 presentationContext];
    v8 = [(AKAuthorizationPresentationContext *)v9 credentialRequestContext];
    v11 = MEMORY[0x277D85DD0];
    v12 = -1073741824;
    v13 = 0;
    v14 = __94__AKAuthorizationViewController_authorizationPaneViewController_didRequestIconWithCompletion___block_invoke;
    v15 = &unk_2784A6528;
    v16 = MEMORY[0x277D82BE0](v18);
    [v7 authorizationViewController:v6 didRequestIconForRequestContext:v8 completion:&v11];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v16, 0);
  }

  else
  {
    v4 = v18;
    v5 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7027];
    v4[2](v4, 0);
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

void __94__AKAuthorizationViewController_authorizationPaneViewController_didRequestIconWithCompletion___block_invoke(void *a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13 = 0;
  objc_storeStrong(&v13, a3);
  v12[1] = a1;
  if (location[0])
  {
    v12[0] = _AKLogSiwa();
    v11 = 2;
    if (os_log_type_enabled(v12[0], OS_LOG_TYPE_DEBUG))
    {
      log = v12[0];
      type = v11;
      __os_log_helper_16_0_0(v10);
      _os_log_debug_impl(&dword_222379000, log, type, "Successfully fetched icon.", v10, 2u);
    }

    objc_storeStrong(v12, 0);
    v3 = (a1[4] + 16);
    v4 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:location[0] error:0];
    (*v3)();
    MEMORY[0x277D82BD8](v4);
  }

  else
  {
    v9 = _AKLogSiwa();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v15, v13);
      _os_log_error_impl(&dword_222379000, v9, OS_LOG_TYPE_ERROR, "Failed to fetch icon - %@", v15, 0xCu);
    }

    objc_storeStrong(&v9, 0);
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)authorizationPaneViewController:(id)a3 pushEditScope:(id)a4 presentationContext:(id)a5 options:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  v28 = 0;
  objc_storeStrong(&v28, a5);
  v27 = 0;
  objc_storeStrong(&v27, a6);
  v17 = [(AKAuthorizationViewController *)v31 navigationController];
  v26 = [(AKAuthorizationNavigationController *)v17 topViewController];
  MEMORY[0x277D82BD8](v17);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = MEMORY[0x277D82BE0](v26);
    if ([v29 isEqualToString:*MEMORY[0x277CEFFE8]])
    {
      v11 = [v27 objectForKey:@"shouldClear"];
      v20 = [v11 BOOLValue];
      [v21 setEditingName:1 shouldClear:v20 & 1 animated:{1, MEMORY[0x277D82BD8](v11).n128_f64[0]}];
    }

    else if ([v29 isEqualToString:*MEMORY[0x277CEFFE0]])
    {
      v19 = objc_alloc_init(AKAuthorizationEmailEditPaneViewController);
      v7 = v19;
      v9 = [(AKAuthorizationViewController *)v31 presentationContext];
      v8 = [(AKAuthorizationPresentationContext *)v9 localizedAppName];
      [(AKAuthorizationEmailEditPaneViewController *)v7 setApplicationName:?];
      MEMORY[0x277D82BD8](v8);
      *&v6 = MEMORY[0x277D82BD8](v9).n128_u64[0];
      [(AKAuthorizationPaneViewController *)v19 setEditableDataSources:location[0], v6];
      [(AKAuthorizationPaneViewController *)v19 sizeToFitPaneContent];
      v10 = [(AKAuthorizationViewController *)v31 navigationController];
      [(AKAuthorizationNavigationController *)v10 pushViewController:v19 animated:1];
      MEMORY[0x277D82BD8](v10);
      objc_storeStrong(&v19, 0);
    }

    else
    {
      oslog = _AKLogSiwa();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_64(v32, v29);
        _os_log_debug_impl(&dword_222379000, oslog, OS_LOG_TYPE_DEBUG, "Unsupported scope %@.", v32, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
    }

    objc_storeStrong(&v21, 0);
    v22 = 0;
  }

  else
  {
    v25 = _AKLogSiwa();
    v24 = 16;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      log = v25;
      type = v24;
      __os_log_helper_16_0_0(v23);
      _os_log_error_impl(&dword_222379000, log, type, "Expected AKAuthorizationInputPaneViewController as top controller.", v23, 2u);
    }

    objc_storeStrong(&v25, 0);
    v22 = 1;
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)performAppleIDAuthorizationForPaneViewController:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(AKAuthorizationViewController *)v8 navigationController];
  v4 = [(AKAuthorizationNavigationController *)v5 topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  MEMORY[0x277D82BD8](v4);
  *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  if (isKindOfClass)
  {
    [(AKAuthorizationViewController *)v8 _presentInputPaneViewControllerReplacing:1, v3];
  }

  else
  {
    [(AKAuthorizationViewController *)v8 presentInputPaneViewController];
  }

  objc_storeStrong(location, 0);
}

- (void)_performPasswordAuthenticationForFederatedManagedAccountForPaneViewController:(id)a3
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = objc_alloc_init(AKAppleIDAuthenticationInAppContext);
  v7 = [(AKAuthorizationViewController *)v22 presentationContext];
  v6 = [(AKAuthorizationPresentationContext *)v7 userInformation];
  v5 = [v6 accountName];
  [(AKAppleIDAuthenticationInAppContext *)v20 setUsername:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  [(AKAppleIDAuthenticationInAppContext *)v20 setIsUsernameEditable:0, v3];
  v11 = [(AKAuthorizationViewController *)v22 presentationContext];
  v10 = [(AKAuthorizationPresentationContext *)v11 credentialRequestContext];
  v9 = [v10 authorizationRequest];
  v8 = [v9 altDSID];
  [(AKAppleIDAuthenticationInAppContext *)v20 setAltDSID:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  *&v4 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  [(AKAppleIDAuthenticationInAppContext *)v20 setAuthenticationMode:2, v4];
  [(AKAppleIDAuthenticationInAppContext *)v20 setAuthenticationType:3];
  [(AKAppleIDAuthenticationInAppContext *)v20 setPresentingViewController:location[0]];
  v19 = objc_alloc_init(MEMORY[0x277CF0178]);
  v13 = v19;
  v12 = v20;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __111__AKAuthorizationViewController__performPasswordAuthenticationForFederatedManagedAccountForPaneViewController___block_invoke;
  v17 = &unk_2784A6550;
  v18 = MEMORY[0x277D82BE0](location[0]);
  [v13 authenticateWithContext:v12 completion:?];
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

void __111__AKAuthorizationViewController__performPasswordAuthenticationForFederatedManagedAccountForPaneViewController___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v16 = 0;
  objc_storeStrong(&v16, a3);
  v15[1] = a1;
  v5 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v5;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __111__AKAuthorizationViewController__performPasswordAuthenticationForFederatedManagedAccountForPaneViewController___block_invoke_2;
  v12 = &unk_2784A6360;
  v13 = MEMORY[0x277D82BE0](a1[4]);
  v14 = MEMORY[0x277D82BE0](location[0]);
  v15[0] = MEMORY[0x277D82BE0](v16);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

- (void)performPasswordAuthenticationForPaneViewController:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  v8 = 0;
  v6 = 0;
  if ([(AKAuthorizationViewController *)v14 _isManagedAppleID])
  {
    v11 = [(AKAuthorizationViewController *)v14 presentationContext];
    v10 = 1;
    v9 = [(AKAuthorizationPresentationContext *)v11 userInformation];
    v8 = 1;
    v6 = [v9 authMode] == 2;
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](v9);
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](v11);
  }

  v12 = v6;
  if (v6)
  {
    [(AKAuthorizationViewController *)v14 _performPasswordAuthenticationForFederatedManagedAccountForPaneViewController:location[0]];
  }

  else
  {
    v7 = objc_alloc_init(AKAuthorizationPasswordAuthenticationViewController);
    v4 = [(AKAuthorizationViewController *)v14 presentationContext];
    [(AKAuthorizationPasswordAuthenticationViewController *)v7 setPresentationContext:?];
    *&v3 = MEMORY[0x277D82BD8](v4).n128_u64[0];
    [(AKAuthorizationPasswordAuthenticationViewController *)v7 setDelegate:location[0], v3];
    [(AKAuthorizationPaneViewController *)v7 sizeToFitPaneContent];
    v5 = [(AKAuthorizationViewController *)v14 navigationController];
    [(AKAuthorizationNavigationController *)v5 pushViewController:v7 animated:1];
    MEMORY[0x277D82BD8](v5);
    objc_storeStrong(&v7, 0);
  }

  objc_storeStrong(location, 0);
}

- (AKAuthorizationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end