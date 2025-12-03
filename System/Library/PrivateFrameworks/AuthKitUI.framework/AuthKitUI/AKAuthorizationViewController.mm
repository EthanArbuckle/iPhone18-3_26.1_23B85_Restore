@interface AKAuthorizationViewController
- (AKAuthorizationViewController)init;
- (AKAuthorizationViewController)initWithAuthorizationContext:(id)context;
- (AKAuthorizationViewController)initWithCoder:(id)coder;
- (AKAuthorizationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (AKAuthorizationViewControllerDelegate)delegate;
- (BOOL)_isFirstTimeAppleIDAuthorization;
- (BOOL)_isManagedAppleID;
- (id)_backBarButtonItem;
- (id)_cancelBarButtonItem;
- (id)_inputPaneViewController;
- (id)_logoBarButtonItem:(id)item;
- (id)_paneTitleString;
- (id)_parentalApprovalRequestViewController;
- (id)firstTimeViewController;
- (void)_backButtonSelected:(id)selected;
- (void)_cancelButtonSelected:(id)selected;
- (void)_delegate_authorizationViewControllerDidCompleteWithAuthorization:(id)authorization error:(id)error;
- (void)_performPasswordAuthenticationForFederatedManagedAccountForPaneViewController:(id)controller;
- (void)_presentAuthorizationViewController;
- (void)_presentContainerViewControllerWith:(id)with;
- (void)_presentFirstTimeViewController;
- (void)_presentInputPaneViewControllerReplacing:(BOOL)replacing;
- (void)authorizationContainerViewControllerDidDismiss:(id)dismiss;
- (void)authorizationPaneViewController:(id)controller didRequestAuthorizationWithUserProvidedInformation:(id)information completion:(id)completion;
- (void)authorizationPaneViewController:(id)controller didRequestIconWithCompletion:(id)completion;
- (void)authorizationPaneViewController:(id)controller dismissWithAuthorization:(id)authorization error:(id)error;
- (void)authorizationPaneViewController:(id)controller pushEditScope:(id)scope presentationContext:(id)context options:(id)options;
- (void)performAppleIDAuthorizationForPaneViewController:(id)controller;
- (void)performPasswordAuthenticationForPaneViewController:(id)controller;
- (void)presentAuthenticationChoiceUIWithCompletion:(id)completion;
- (void)presentConfirmPaneViewController;
- (void)presentInputPaneViewController;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AKAuthorizationViewController

- (AKAuthorizationViewController)init
{
  selfCopy = self;
  [(AKAuthorizationViewController *)self doesNotRecognizeSelector:a2];
  objc_storeStrong(&selfCopy, 0);
  return 0;
}

- (AKAuthorizationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  selfCopy = self;
  v8 = a2;
  location = 0;
  objc_storeStrong(&location, name);
  v6 = 0;
  objc_storeStrong(&v6, bundle);
  [(AKAuthorizationViewController *)selfCopy doesNotRecognizeSelector:v8];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return 0;
}

- (AKAuthorizationViewController)initWithAuthorizationContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v3 = selfCopy;
  selfCopy = 0;
  v14.receiver = v3;
  v14.super_class = AKAuthorizationViewController;
  selfCopy = [(AKAuthorizationViewController *)&v14 initWithNibName:0 bundle:?];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_presentationContext, location[0]);
    credentialRequestContext = [location[0] credentialRequestContext];
    authorizationRequest = [credentialRequestContext authorizationRequest];
    requestedScopes = [authorizationRequest requestedScopes];
    MEMORY[0x277D82BD8](authorizationRequest);
    MEMORY[0x277D82BD8](credentialRequestContext);
    v11 = [AKAuthorizationScopeChoices alloc];
    v10 = requestedScopes;
    userInformation = [location[0] userInformation];
    v4 = [(AKAuthorizationScopeChoices *)v11 initWithScopes:v10 userInformation:?];
    scopeChoices = selfCopy->_scopeChoices;
    selfCopy->_scopeChoices = v4;
    MEMORY[0x277D82BD8](scopeChoices);
    MEMORY[0x277D82BD8](userInformation);
    objc_storeStrong(&requestedScopes, 0);
  }

  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (AKAuthorizationViewController)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = AKAuthorizationViewController;
  selfCopy = [(AKAuthorizationViewController *)&v6 initWithCoder:location[0]];
  objc_storeStrong(&selfCopy, selfCopy);
  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)viewDidLoad
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = AKAuthorizationViewController;
  [(AKAuthorizationViewController *)&v2 viewDidLoad];
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v5 = a2;
  appearCopy = appear;
  v3.receiver = self;
  v3.super_class = AKAuthorizationViewController;
  [(AKAuthorizationViewController *)&v3 viewWillAppear:appear];
  if (!selfCopy->_navigationController)
  {
    [(AKAuthorizationViewController *)selfCopy _presentAuthorizationViewController];
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
  selfCopy = self;
  v9[1] = a2;
  v9[0] = [(AKAuthorizationViewController *)self firstTimeViewController];
  navigationController = [(AKAuthorizationViewController *)selfCopy navigationController];
  viewControllers = [(AKAuthorizationNavigationController *)navigationController viewControllers];
  v8 = [viewControllers count] != 0;
  MEMORY[0x277D82BD8](viewControllers);
  v2 = MEMORY[0x277D82BD8](navigationController).n128_u64[0];
  if (v8)
  {
    navigationItem = [v9[0] navigationItem];
    _backBarButtonItem = [(AKAuthorizationViewController *)selfCopy _backBarButtonItem];
    [navigationItem setLeftBarButtonItem:?];
    MEMORY[0x277D82BD8](_backBarButtonItem);
    v2 = MEMORY[0x277D82BD8](navigationItem).n128_u64[0];
  }

  navigationController2 = [(AKAuthorizationViewController *)selfCopy navigationController];
  [(AKAuthorizationNavigationController *)navigationController2 pushViewController:v9[0] animated:1];
  MEMORY[0x277D82BD8](navigationController2);
  objc_storeStrong(v9, 0);
}

- (void)_presentAuthorizationViewController
{
  selfCopy = self;
  location[1] = a2;
  presentationContext = [(AKAuthorizationViewController *)self presentationContext];
  credentialRequestContext = [(AKAuthorizationPresentationContext *)presentationContext credentialRequestContext];
  passwordRequest = [credentialRequestContext passwordRequest];
  MEMORY[0x277D82BD8](passwordRequest);
  MEMORY[0x277D82BD8](credentialRequestContext);
  *&v2 = MEMORY[0x277D82BD8](presentationContext).n128_u64[0];
  if (passwordRequest)
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
    _inputPaneViewController = [(AKAuthorizationViewController *)selfCopy _inputPaneViewController];
    [(AKAuthorizationViewController *)selfCopy _presentContainerViewControllerWith:_inputPaneViewController];
    objc_storeStrong(&_inputPaneViewController, 0);
  }

  else if ([(AKAuthorizationViewController *)selfCopy _isFirstTimeAppleIDAuthorization])
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
    firstTimeViewController = [(AKAuthorizationViewController *)selfCopy firstTimeViewController];
    [(AKAuthorizationViewController *)selfCopy _presentContainerViewControllerWith:firstTimeViewController];
    objc_storeStrong(&firstTimeViewController, 0);
  }

  else
  {
    presentationContext2 = [(AKAuthorizationViewController *)selfCopy presentationContext];
    credentialRequestContext2 = [(AKAuthorizationPresentationContext *)presentationContext2 credentialRequestContext];
    authorizationRequest = [credentialRequestContext2 authorizationRequest];
    MEMORY[0x277D82BD8](authorizationRequest);
    MEMORY[0x277D82BD8](credentialRequestContext2);
    MEMORY[0x277D82BD8](presentationContext2);
    if (authorizationRequest)
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
      _inputPaneViewController2 = [(AKAuthorizationViewController *)selfCopy _inputPaneViewController];
      v4 = v28;
      v28 = _inputPaneViewController2;
      *&v5 = MEMORY[0x277D82BD8](v4).n128_u64[0];
      [(AKAuthorizationViewController *)selfCopy _presentContainerViewControllerWith:v28, v5];
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
      v6 = selfCopy;
      v7 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7001];
      [(AKAuthorizationViewController *)v6 _delegate_authorizationViewControllerDidCompleteWithAuthorization:0 error:?];
      MEMORY[0x277D82BD8](v7);
    }
  }
}

- (void)presentAuthenticationChoiceUIWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
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
  [(AKAuthorizationViewController *)selfCopy presentViewController:v38 animated:1 completion:0, v6];
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

- (void)_presentContainerViewControllerWith:(id)with
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, with);
  v3 = [AKAuthorizationNavigationController alloc];
  v4 = [(AKAuthorizationNavigationController *)v3 initWithRootViewController:location[0]];
  navigationController = selfCopy->_navigationController;
  selfCopy->_navigationController = v4;
  MEMORY[0x277D82BD8](navigationController);
  v9 = [AKAuthorizationContainerViewController alloc];
  navigationController = [(AKAuthorizationViewController *)selfCopy navigationController];
  presentationContext = selfCopy->_presentationContext;
  v12 = [AKAuthorizationContainerViewController initWithRootViewController:v9 authorizationContext:"initWithRootViewController:authorizationContext:"];
  *&v7 = MEMORY[0x277D82BD8](navigationController).n128_u64[0];
  [(AKAuthorizationContainerViewController *)v12 setDelegate:selfCopy, v7];
  [(AKAuthorizationContainerViewController *)v12 setPaneDelegate:selfCopy];
  [location[0] sizeToFitPaneContent];
  navigationController2 = [(AKAuthorizationViewController *)selfCopy navigationController];
  [(AKAuthorizationNavigationController *)navigationController2 setDelegate:v12];
  *&v8 = MEMORY[0x277D82BD8](navigationController2).n128_u64[0];
  [(AKAuthorizationViewController *)selfCopy presentViewController:v12 animated:1 completion:0, v8];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (id)_parentalApprovalRequestViewController
{
  selfCopy = self;
  v14[1] = a2;
  v5 = [AKParentalApprovalRequestViewController alloc];
  presentationContext = [(AKAuthorizationViewController *)selfCopy presentationContext];
  v14[0] = [(AKParentalApprovalRequestViewController *)v5 initWithPresentationContext:?];
  *&v2 = MEMORY[0x277D82BD8](presentationContext).n128_u64[0];
  [v14[0] setAuthorizationViewController:{selfCopy, v2}];
  navigationItem = [v14[0] navigationItem];
  v7 = selfCopy;
  _paneTitleString = [(AKAuthorizationViewController *)selfCopy _paneTitleString];
  v8 = [(AKAuthorizationViewController *)v7 _logoBarButtonItem:?];
  [navigationItem setLeftBarButtonItem:?];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](_paneTitleString);
  *&v3 = MEMORY[0x277D82BD8](navigationItem).n128_u64[0];
  navigationItem2 = [v14[0] navigationItem];
  _cancelBarButtonItem = [(AKAuthorizationViewController *)selfCopy _cancelBarButtonItem];
  [navigationItem2 setRightBarButtonItem:?];
  MEMORY[0x277D82BD8](_cancelBarButtonItem);
  MEMORY[0x277D82BD8](navigationItem2);
  v13 = MEMORY[0x277D82BE0](v14[0]);
  objc_storeStrong(v14, 0);

  return v13;
}

- (id)firstTimeViewController
{
  selfCopy = self;
  v6[1] = a2;
  v6[0] = objc_alloc_init(AKAuthorizationFirstTimePaneViewController);
  [v6[0] setAuthorizationViewController:selfCopy];
  navigationItem = [v6[0] navigationItem];
  _cancelBarButtonItem = [(AKAuthorizationViewController *)selfCopy _cancelBarButtonItem];
  [navigationItem setRightBarButtonItem:?];
  MEMORY[0x277D82BD8](_cancelBarButtonItem);
  MEMORY[0x277D82BD8](navigationItem);
  v5 = MEMORY[0x277D82BE0](v6[0]);
  objc_storeStrong(v6, 0);

  return v5;
}

- (id)_inputPaneViewController
{
  selfCopy = self;
  v16[1] = a2;
  v6 = [AKAuthorizationInputPaneViewController alloc];
  presentationContext = [(AKAuthorizationViewController *)selfCopy presentationContext];
  scopeChoices = [(AKAuthorizationViewController *)selfCopy scopeChoices];
  v16[0] = [(AKAuthorizationInputPaneViewController *)v6 initWithPresentationContext:presentationContext scopeChoices:?];
  MEMORY[0x277D82BD8](scopeChoices);
  *&v2 = MEMORY[0x277D82BD8](presentationContext).n128_u64[0];
  [v16[0] setAuthorizationViewController:{selfCopy, v2}];
  v9 = selfCopy;
  _paneTitleString = [(AKAuthorizationViewController *)selfCopy _paneTitleString];
  v15 = [(AKAuthorizationViewController *)v9 _logoBarButtonItem:?];
  *&v3 = MEMORY[0x277D82BD8](_paneTitleString).n128_u64[0];
  [v15 _setPrefersNoPlatter:{1, v3}];
  navigationItem = [v16[0] navigationItem];
  [navigationItem setLeftBarButtonItem:v15];
  *&v4 = MEMORY[0x277D82BD8](navigationItem).n128_u64[0];
  navigationItem2 = [v16[0] navigationItem];
  _cancelBarButtonItem = [(AKAuthorizationViewController *)selfCopy _cancelBarButtonItem];
  [navigationItem2 setRightBarButtonItem:?];
  MEMORY[0x277D82BD8](_cancelBarButtonItem);
  MEMORY[0x277D82BD8](navigationItem2);
  v14 = MEMORY[0x277D82BE0](v16[0]);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(v16, 0);

  return v14;
}

- (id)_logoBarButtonItem:(id)item
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v3 = objc_alloc(MEMORY[0x277D756B8]);
  v13 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
  *&v4 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  if (isAuthKitSolariumFeatureEnabled)
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
  selfCopy = self;
  v30[1] = a2;
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
  *&v2 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  if (isAuthKitSolariumFeatureEnabled)
  {
    v32 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:24 target:selfCopy action:sel__cancelButtonSelected_];
  }

  else
  {
    mEMORY[0x277CF0228]2 = [MEMORY[0x277CF0228] sharedManager];
    isLisbonAvailable = [mEMORY[0x277CF0228]2 isLisbonAvailable];
    MEMORY[0x277D82BD8](mEMORY[0x277CF0228]2);
    if (isLisbonAvailable)
    {
      v9 = MEMORY[0x277D750C8];
      v24 = MEMORY[0x277D85DD0];
      v25 = -1073741824;
      v26 = 0;
      v27 = __53__AKAuthorizationViewController__cancelBarButtonItem__block_invoke;
      v28 = &unk_2784A6500;
      v29 = MEMORY[0x277D82BE0](selfCopy);
      v30[0] = [v9 actionWithHandler:&v24];
      v23 = [MEMORY[0x277D75220] buttonWithType:? primaryAction:?];
      v10 = v23;
      v13 = [MEMORY[0x277D755B8] kitImageNamed:@"UICloseButtonBackgroundCompact"];
      tertiarySystemFillColor = [MEMORY[0x277D75348] tertiarySystemFillColor];
      v11 = [v13 imageWithTintColor:?];
      [v10 setBackgroundImage:? forState:?];
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](tertiarySystemFillColor);
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
  presentationContext = [(AKAuthorizationViewController *)self presentationContext];
  credentialRequestContext = [(AKAuthorizationPresentationContext *)presentationContext credentialRequestContext];
  _isFirstPartyLogin = [credentialRequestContext _isFirstPartyLogin];
  MEMORY[0x277D82BD8](credentialRequestContext);
  MEMORY[0x277D82BD8](presentationContext);
  if (_isFirstPartyLogin)
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

- (void)authorizationContainerViewControllerDidDismiss:(id)dismiss
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, dismiss);
  v3 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7003];
  [(AKAuthorizationViewController *)selfCopy _delegate_authorizationViewControllerDidCompleteWithAuthorization:0 error:v3];
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
  presentationContext = [(AKAuthorizationViewController *)self presentationContext];
  userInformation = [(AKAuthorizationPresentationContext *)presentationContext userInformation];
  isUnderage = [userInformation isUnderage];
  bOOLValue = [isUnderage BOOLValue];
  MEMORY[0x277D82BD8](isUnderage);
  MEMORY[0x277D82BD8](userInformation);
  mEMORY[0x277CF0130] = [MEMORY[0x277CF0130] sharedInstance];
  primaryiCloudAccountHasPendingDOB = [mEMORY[0x277CF0130] primaryiCloudAccountHasPendingDOB];
  presentationContext2 = [(AKAuthorizationViewController *)self presentationContext];
  userInformation2 = [(AKAuthorizationPresentationContext *)presentationContext2 userInformation];
  hasUsedAuthorization = [userInformation2 hasUsedAuthorization];
  bOOLValue2 = [hasUsedAuthorization BOOLValue];
  MEMORY[0x277D82BD8](hasUsedAuthorization);
  MEMORY[0x277D82BD8](userInformation2);
  *&v2 = MEMORY[0x277D82BD8](presentationContext2).n128_u64[0];
  if ((bOOLValue & 1) != 0 || (primaryiCloudAccountHasPendingDOB) && (bOOLValue2 & 1) == 0)
  {
    return 0;
  }

  mEMORY[0x277CF0208] = [MEMORY[0x277CF0208] sharedConfiguration];
  shouldAlwaysShowWelcome = [mEMORY[0x277CF0208] shouldAlwaysShowWelcome];
  v3 = MEMORY[0x277D82BD8](mEMORY[0x277CF0208]).n128_u64[0];
  if (shouldAlwaysShowWelcome == 1)
  {
    return 1;
  }

  v22 = 0;
  v20 = 0;
  v18 = 0;
  v6 = 0;
  if ((bOOLValue2 & 1) == 0)
  {
    presentationContext3 = [(AKAuthorizationViewController *)self presentationContext];
    v22 = 1;
    credentialRequestContext = [(AKAuthorizationPresentationContext *)presentationContext3 credentialRequestContext];
    v20 = 1;
    v6 = 0;
    if (![credentialRequestContext _isFirstPartyLogin])
    {
      presentationContext4 = [(AKAuthorizationViewController *)self presentationContext];
      v18 = 1;
      v6 = [(AKAuthorizationPresentationContext *)presentationContext4 hasShownFirstTimeAlready]== 0;
    }
  }

  if (v18)
  {
    v3 = MEMORY[0x277D82BD8](presentationContext4).n128_u64[0];
  }

  if (v20)
  {
    v3 = MEMORY[0x277D82BD8](credentialRequestContext).n128_u64[0];
  }

  if (v22)
  {
    v3 = MEMORY[0x277D82BD8](presentationContext3).n128_u64[0];
  }

  if (v6)
  {
    presentationContext5 = [(AKAuthorizationViewController *)self presentationContext];
    [(AKAuthorizationPresentationContext *)presentationContext5 setHasShownFirstTimeAlready:1];
    MEMORY[0x277D82BD8](presentationContext5);
  }

  return v6;
}

- (BOOL)_isManagedAppleID
{
  presentationContext = [(AKAuthorizationViewController *)self presentationContext];
  userInformation = [(AKAuthorizationPresentationContext *)presentationContext userInformation];
  isManagedAppleID = [userInformation isManagedAppleID];
  MEMORY[0x277D82BD8](userInformation);
  MEMORY[0x277D82BD8](presentationContext);
  return isManagedAppleID;
}

- (void)_presentInputPaneViewControllerReplacing:(BOOL)replacing
{
  selfCopy = self;
  v23 = a2;
  replacingCopy = replacing;
  navigationController = [(AKAuthorizationViewController *)self navigationController];
  *&v3 = MEMORY[0x277D82BD8](navigationController).n128_u64[0];
  if (navigationController)
  {
    _inputPaneViewController = [(AKAuthorizationViewController *)selfCopy _inputPaneViewController];
    [_inputPaneViewController setPaneDelegate:selfCopy];
    navigationController2 = [(AKAuthorizationViewController *)selfCopy navigationController];
    viewControllers = [(AKAuthorizationNavigationController *)navigationController2 viewControllers];
    v17 = [viewControllers count] != replacingCopy;
    MEMORY[0x277D82BD8](viewControllers);
    v4 = MEMORY[0x277D82BD8](navigationController2).n128_u64[0];
    v20 = v17;
    if (v17)
    {
      navigationItem = [_inputPaneViewController navigationItem];
      _backBarButtonItem = [(AKAuthorizationViewController *)selfCopy _backBarButtonItem];
      [navigationItem setLeftBarButtonItem:?];
      MEMORY[0x277D82BD8](_backBarButtonItem);
      v4 = MEMORY[0x277D82BD8](navigationItem).n128_u64[0];
    }

    if (replacingCopy)
    {
      navigationController3 = [(AKAuthorizationViewController *)selfCopy navigationController];
      viewControllers2 = [(AKAuthorizationNavigationController *)navigationController3 viewControllers];
      v19 = [viewControllers2 mutableCopy];
      MEMORY[0x277D82BD8](viewControllers2);
      *&v5 = MEMORY[0x277D82BD8](navigationController3).n128_u64[0];
      v10 = v19;
      v6 = [v19 count];
      [v10 replaceObjectAtIndex:v6 - 1 withObject:_inputPaneViewController];
      navigationController4 = [(AKAuthorizationViewController *)selfCopy navigationController];
      v11 = [v19 copy];
      [AKAuthorizationNavigationController setViewControllers:navigationController4 animated:"setViewControllers:animated:"];
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](navigationController4);
      objc_storeStrong(&v19, 0);
    }

    else
    {
      navigationController5 = [(AKAuthorizationViewController *)selfCopy navigationController];
      [(AKAuthorizationNavigationController *)navigationController5 pushViewController:_inputPaneViewController animated:1];
      MEMORY[0x277D82BD8](navigationController5);
    }

    objc_storeStrong(&_inputPaneViewController, 0);
  }
}

- (void)_cancelButtonSelected:(id)selected
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, selected);
  v3 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7003];
  [(AKAuthorizationViewController *)selfCopy _delegate_authorizationViewControllerDidCompleteWithAuthorization:0 error:v3];
  objc_storeStrong(&v3, 0);
  objc_storeStrong(location, 0);
}

- (void)_backButtonSelected:(id)selected
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, selected);
  navigationController = [(AKAuthorizationViewController *)selfCopy navigationController];
  v3 = [(AKAuthorizationNavigationController *)navigationController popViewControllerAnimated:1];
  MEMORY[0x277D82BD8](navigationController);
  objc_storeStrong(location, 0);
}

- (void)_delegate_authorizationViewControllerDidCompleteWithAuthorization:(id)authorization error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, authorization);
  v10 = 0;
  objc_storeStrong(&v10, error);
  v7 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  v8 = v7;
  dispatch_assert_queue_V2(v8);
  *&v5 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  delegate = [(AKAuthorizationViewController *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate authorizationViewController:selfCopy didCompleteWithAuthorization:location[0] error:v10];
  }

  objc_storeStrong(&delegate, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)authorizationPaneViewController:(id)controller dismissWithAuthorization:(id)authorization error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v8 = 0;
  objc_storeStrong(&v8, authorization);
  v7 = 0;
  objc_storeStrong(&v7, error);
  [(AKAuthorizationViewController *)selfCopy _delegate_authorizationViewControllerDidCompleteWithAuthorization:v8 error:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)authorizationPaneViewController:(id)controller didRequestAuthorizationWithUserProvidedInformation:(id)information completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v9 = 0;
  objc_storeStrong(&v9, information);
  v8 = 0;
  objc_storeStrong(&v8, completion);
  delegate = [(AKAuthorizationViewController *)selfCopy delegate];
  [(AKAuthorizationViewControllerDelegate *)delegate authorizationViewController:selfCopy didRequestAuthorizationWithUserProvidedInformation:v9 completion:v8];
  MEMORY[0x277D82BD8](delegate);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)authorizationPaneViewController:(id)controller didRequestIconWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v18 = 0;
  objc_storeStrong(&v18, completion);
  delegate = [(AKAuthorizationViewController *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = delegate;
    v6 = selfCopy;
    presentationContext = [(AKAuthorizationViewController *)selfCopy presentationContext];
    credentialRequestContext = [(AKAuthorizationPresentationContext *)presentationContext credentialRequestContext];
    v11 = MEMORY[0x277D85DD0];
    v12 = -1073741824;
    v13 = 0;
    v14 = __94__AKAuthorizationViewController_authorizationPaneViewController_didRequestIconWithCompletion___block_invoke;
    v15 = &unk_2784A6528;
    v16 = MEMORY[0x277D82BE0](v18);
    [v7 authorizationViewController:v6 didRequestIconForRequestContext:credentialRequestContext completion:&v11];
    MEMORY[0x277D82BD8](credentialRequestContext);
    MEMORY[0x277D82BD8](presentationContext);
    objc_storeStrong(&v16, 0);
  }

  else
  {
    v4 = v18;
    v5 = [MEMORY[0x277CCA9B8] ak_errorWithCode:-7027];
    v4[2](v4, 0);
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(&delegate, 0);
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

- (void)authorizationPaneViewController:(id)controller pushEditScope:(id)scope presentationContext:(id)context options:(id)options
{
  v33 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v29 = 0;
  objc_storeStrong(&v29, scope);
  v28 = 0;
  objc_storeStrong(&v28, context);
  v27 = 0;
  objc_storeStrong(&v27, options);
  navigationController = [(AKAuthorizationViewController *)selfCopy navigationController];
  topViewController = [(AKAuthorizationNavigationController *)navigationController topViewController];
  MEMORY[0x277D82BD8](navigationController);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = MEMORY[0x277D82BE0](topViewController);
    if ([v29 isEqualToString:*MEMORY[0x277CEFFE8]])
    {
      v11 = [v27 objectForKey:@"shouldClear"];
      bOOLValue = [v11 BOOLValue];
      [v21 setEditingName:1 shouldClear:bOOLValue & 1 animated:{1, MEMORY[0x277D82BD8](v11).n128_f64[0]}];
    }

    else if ([v29 isEqualToString:*MEMORY[0x277CEFFE0]])
    {
      v19 = objc_alloc_init(AKAuthorizationEmailEditPaneViewController);
      v7 = v19;
      presentationContext = [(AKAuthorizationViewController *)selfCopy presentationContext];
      localizedAppName = [(AKAuthorizationPresentationContext *)presentationContext localizedAppName];
      [(AKAuthorizationEmailEditPaneViewController *)v7 setApplicationName:?];
      MEMORY[0x277D82BD8](localizedAppName);
      *&v6 = MEMORY[0x277D82BD8](presentationContext).n128_u64[0];
      [(AKAuthorizationPaneViewController *)v19 setEditableDataSources:location[0], v6];
      [(AKAuthorizationPaneViewController *)v19 sizeToFitPaneContent];
      navigationController2 = [(AKAuthorizationViewController *)selfCopy navigationController];
      [(AKAuthorizationNavigationController *)navigationController2 pushViewController:v19 animated:1];
      MEMORY[0x277D82BD8](navigationController2);
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

  objc_storeStrong(&topViewController, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)performAppleIDAuthorizationForPaneViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  navigationController = [(AKAuthorizationViewController *)selfCopy navigationController];
  topViewController = [(AKAuthorizationNavigationController *)navigationController topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  MEMORY[0x277D82BD8](topViewController);
  *&v3 = MEMORY[0x277D82BD8](navigationController).n128_u64[0];
  if (isKindOfClass)
  {
    [(AKAuthorizationViewController *)selfCopy _presentInputPaneViewControllerReplacing:1, v3];
  }

  else
  {
    [(AKAuthorizationViewController *)selfCopy presentInputPaneViewController];
  }

  objc_storeStrong(location, 0);
}

- (void)_performPasswordAuthenticationForFederatedManagedAccountForPaneViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v20 = objc_alloc_init(AKAppleIDAuthenticationInAppContext);
  presentationContext = [(AKAuthorizationViewController *)selfCopy presentationContext];
  userInformation = [(AKAuthorizationPresentationContext *)presentationContext userInformation];
  accountName = [userInformation accountName];
  [(AKAppleIDAuthenticationInAppContext *)v20 setUsername:?];
  MEMORY[0x277D82BD8](accountName);
  MEMORY[0x277D82BD8](userInformation);
  *&v3 = MEMORY[0x277D82BD8](presentationContext).n128_u64[0];
  [(AKAppleIDAuthenticationInAppContext *)v20 setIsUsernameEditable:0, v3];
  presentationContext2 = [(AKAuthorizationViewController *)selfCopy presentationContext];
  credentialRequestContext = [(AKAuthorizationPresentationContext *)presentationContext2 credentialRequestContext];
  authorizationRequest = [credentialRequestContext authorizationRequest];
  altDSID = [authorizationRequest altDSID];
  [(AKAppleIDAuthenticationInAppContext *)v20 setAltDSID:?];
  MEMORY[0x277D82BD8](altDSID);
  MEMORY[0x277D82BD8](authorizationRequest);
  MEMORY[0x277D82BD8](credentialRequestContext);
  *&v4 = MEMORY[0x277D82BD8](presentationContext2).n128_u64[0];
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

- (void)performPasswordAuthenticationForPaneViewController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v10 = 0;
  v8 = 0;
  v6 = 0;
  if ([(AKAuthorizationViewController *)selfCopy _isManagedAppleID])
  {
    presentationContext = [(AKAuthorizationViewController *)selfCopy presentationContext];
    v10 = 1;
    userInformation = [(AKAuthorizationPresentationContext *)presentationContext userInformation];
    v8 = 1;
    v6 = [userInformation authMode] == 2;
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](userInformation);
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](presentationContext);
  }

  v12 = v6;
  if (v6)
  {
    [(AKAuthorizationViewController *)selfCopy _performPasswordAuthenticationForFederatedManagedAccountForPaneViewController:location[0]];
  }

  else
  {
    v7 = objc_alloc_init(AKAuthorizationPasswordAuthenticationViewController);
    presentationContext2 = [(AKAuthorizationViewController *)selfCopy presentationContext];
    [(AKAuthorizationPasswordAuthenticationViewController *)v7 setPresentationContext:?];
    *&v3 = MEMORY[0x277D82BD8](presentationContext2).n128_u64[0];
    [(AKAuthorizationPasswordAuthenticationViewController *)v7 setDelegate:location[0], v3];
    [(AKAuthorizationPaneViewController *)v7 sizeToFitPaneContent];
    navigationController = [(AKAuthorizationViewController *)selfCopy navigationController];
    [(AKAuthorizationNavigationController *)navigationController pushViewController:v7 animated:1];
    MEMORY[0x277D82BD8](navigationController);
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