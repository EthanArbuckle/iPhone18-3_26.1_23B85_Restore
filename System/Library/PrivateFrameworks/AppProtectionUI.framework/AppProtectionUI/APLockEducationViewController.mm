@interface APLockEducationViewController
- (APEducationViewControllerDelegate)delegate;
- (id)initForApplication:(id)application;
- (void)continueFlowAfterPhase1;
- (void)createTCCAccessDisclosureController;
- (void)phase1ViewCancelButtonPressed:(id)pressed;
- (void)phase1ViewContinueButtonPressed:(id)pressed;
- (void)phase3ViewCancelButtonPressed:(id)pressed;
- (void)phase3ViewContinueButtonPressed:(id)pressed;
@end

@implementation APLockEducationViewController

- (id)initForApplication:(id)application
{
  v67[1] = *MEMORY[0x1E69E9840];
  applicationCopy = application;
  v66.receiver = self;
  v66.super_class = APLockEducationViewController;
  v6 = [(APLockEducationViewController *)&v66 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    v65 = applicationCopy;
    objc_storeStrong(&v6->_app, application);
    v8 = [[APWrappingView alloc] initWithFrame:0.0, 0.0, 50.0, 50.0];
    containerView = v7->_containerView;
    v7->_containerView = v8;

    v10 = v7->_containerView;
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(APWrappingView *)v10 setBackgroundColor:systemBackgroundColor];

    [(APLockEducationViewController *)v7 setView:v7->_containerView];
    v12 = objc_alloc_init(MEMORY[0x1E69B7D40]);
    navController = v7->_navController;
    v7->_navController = v12;

    [(APLockEducationViewController *)v7 addChildViewController:v7->_navController];
    view = [(OBNavigationController *)v7->_navController view];
    view2 = [(APLockEducationViewController *)v7 view];
    [view2 bounds];
    [view setFrame:?];

    view3 = [(APLockEducationViewController *)v7 view];
    view4 = [(OBNavigationController *)v7->_navController view];
    [view3 addSubview:view4];

    [(OBNavigationController *)v7->_navController didMoveToParentViewController:v7];
    app = v7->_app;
    v19 = v7;
    v20 = [(APApplication *)app findApplicationRecordWithError:0];
    localizedName = [v20 localizedName];
    v64 = v20;
    bundleIdentifier = [v20 bundleIdentifier];
    v23 = [bundleIdentifier isEqualToString:@"com.apple.Passbook"];

    if (v23)
    {
      v24 = APUILocStr(@"WALLET_AND_APPLE_PAY");

      localizedName = v24;
    }

    v25 = objc_alloc(MEMORY[0x1E69B7D70]);
    v26 = MEMORY[0x1E696AEC0];
    v27 = localizedName;
    v28 = APGetPreferredAuthenticationMechanismLocKey();
    v29 = [v26 stringWithFormat:@"REQUIRE_AUTH_PROMPT_%@_FMT", v28];
    v30 = APUILocStr(v29);
    v31 = [v26 stringWithFormat:v30, v27];

    v32 = APEducationIconForEnableableFeature(1);
    v33 = [v25 initWithTitle:v31 detailText:0 icon:v32];

    v34 = +[APFeatureSemioticsManager sharedManager];
    systemImageNameForCurrentBestAuthenticationMechanism = [v34 systemImageNameForCurrentBestAuthenticationMechanism];

    v35 = MEMORY[0x1E696AEC0];
    v36 = APGetPreferredAuthenticationMechanismLocKey();
    v37 = [v35 stringWithFormat:@"AUTH_REQUIRED_ITEM_HEADER_%@", v36];
    v38 = APUILocStr(v37);

    v39 = MEMORY[0x1E696AEC0];
    v40 = APGetPreferredAuthenticationMechanismLocKey();
    v41 = [v39 stringWithFormat:@"AUTH_REQUIRED_ITEM_BODY_%@", v40];
    v42 = APUILocStr(v41);

    [(OBWelcomeController *)v33 addBulletedListItemWithTitle:v38 description:v42 symbolName:systemImageNameForCurrentBestAuthenticationMechanism];
    v43 = APUIFrameworkBundle();
    v44 = [v43 localizedStringForKey:@"NOTIFICATION_CONTENT_HIDDEN" value:&stru_1F2485CF8 table:@"Localizable"];
    v45 = APUIFrameworkBundle();
    v46 = [v45 localizedStringForKey:@"NOTIFICATION_CONTENT_HIDDEN_DETAIL" value:&stru_1F2485CF8 table:@"Localizable"];
    [(OBWelcomeController *)v33 addBulletedListItemWithTitle:v44 description:v46 symbolName:@"bell.badge.slash"];

    boldButton = [MEMORY[0x1E69B7D00] boldButton];
    v48 = MEMORY[0x1E696AEC0];
    v49 = APGetPreferredAuthenticationMechanismLocKey();
    v50 = [v48 stringWithFormat:@"REQUIRE_AUTH_%@", v49];
    v51 = APUILocStr(v50);

    [boldButton setTitle:v51 forState:0];
    buttonTray = [(OBWelcomeController *)v33 buttonTray];
    [buttonTray addButton:boldButton];

    [boldButton addTarget:v19 action:sel_phase1ViewContinueButtonPressed_ forControlEvents:0x2000];
    linkButton = [MEMORY[0x1E69B7D38] linkButton];
    v54 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v55 = [v54 localizedStringForKey:@"CANCEL" value:&stru_1F2485CF8 table:@"Localizable"];
    [linkButton setTitle:v55 forState:0];

    buttonTray2 = [(OBWelcomeController *)v33 buttonTray];
    [buttonTray2 addButton:linkButton];

    [linkButton addTarget:v19 action:sel_phase1ViewCancelButtonPressed_ forControlEvents:0x2000];
    welcomeController = v19->_welcomeController;
    v19->_welcomeController = v33;

    v67[0] = v19->_welcomeController;
    v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:1];
    [(OBNavigationController *)v7->_navController setViewControllers:v58];

    [(APLockEducationViewController *)v19 createTCCAccessDisclosureController];
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    applicationCopy = v65;
    if (!userInterfaceIdiom)
    {
      [(APLockEducationViewController *)v19 setModalPresentationStyle:5];
    }
  }

  v61 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)phase1ViewCancelButtonPressed:(id)pressed
{
  v4 = APUIDefaultFrameworkLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1AEA18000, v4, OS_LOG_TYPE_DEFAULT, "Cancel pressed for lock edu VC", v6, 2u);
  }

  delegate = [(APLockEducationViewController *)self delegate];
  [delegate educationViewControllerRequestsDismissal:self withResult:0];
}

- (void)phase1ViewContinueButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  v5 = APUIDefaultFrameworkLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AEA18000, v5, OS_LOG_TYPE_DEFAULT, "Continue pressed for lock edu VC", buf, 2u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = pressedCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [v7 setEnabled:0];
  delegate = [(APLockEducationViewController *)self delegate];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__APLockEducationViewController_phase1ViewContinueButtonPressed___block_invoke;
  v10[3] = &unk_1E7A41F50;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  [delegate educationViewController:self requestAuthenticationWithCompletion:v10];
}

void __65__APLockEducationViewController_phase1ViewContinueButtonPressed___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 992);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __65__APLockEducationViewController_phase1ViewContinueButtonPressed___block_invoke_2;
    v7[3] = &unk_1E7A41F50;
    v7[4] = v4;
    v8 = *(a1 + 40);
    [v3 educationViewController:v4 requestLockOfApplication:v5 completion:v7];
  }

  else
  {
    v6 = *(a1 + 40);

    [v6 setEnabled:1];
  }
}

uint64_t __65__APLockEducationViewController_phase1ViewContinueButtonPressed___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) continueFlowAfterPhase1];
  }

  v3 = *(a1 + 40);

  return [v3 setEnabled:1];
}

- (void)continueFlowAfterPhase1
{
  if (self->_TCCDisclosureController)
  {
    navController = self->_navController;

    [OBNavigationController pushViewController:"pushViewController:animated:" animated:?];
  }

  else
  {
    v4 = APUIDefaultFrameworkLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1AEA18000, v4, OS_LOG_TYPE_DEFAULT, "No TCC services, dismiss now.", v6, 2u);
    }

    delegate = [(APLockEducationViewController *)self delegate];
    [delegate educationViewControllerRequestsDismissal:self withResult:1];
  }
}

- (void)phase3ViewContinueButtonPressed:(id)pressed
{
  v4 = APUIDefaultFrameworkLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1AEA18000, v4, OS_LOG_TYPE_DEFAULT, "phase 3 continue button pressed -> dismiss", v6, 2u);
  }

  delegate = [(APLockEducationViewController *)self delegate];
  [delegate educationViewControllerRequestsDismissal:self withResult:1];
}

- (void)phase3ViewCancelButtonPressed:(id)pressed
{
  v4 = APUIDefaultFrameworkLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1AEA18000, v4, OS_LOG_TYPE_DEFAULT, "phase 3 cancel button pressed -> dismiss", v6, 2u);
  }

  delegate = [(APLockEducationViewController *)self delegate];
  [delegate educationViewControllerRequestsDismissal:self withResult:1];
}

- (void)createTCCAccessDisclosureController
{
  mEMORY[0x1E698B0F8] = [MEMORY[0x1E698B0F8] sharedManager];
  app = self->_app;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__APLockEducationViewController_createTCCAccessDisclosureController__block_invoke;
  v5[3] = &unk_1E7A41F78;
  v5[4] = self;
  [mEMORY[0x1E698B0F8] fetchUsersForRecord:app completion:v5];
}

void __68__APLockEducationViewController_createTCCAccessDisclosureController__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 count])
  {
    v3 = [[APTCCDisclosureController alloc] initWithApplication:*(*(a1 + 32) + 992) users:v6 includeDoneButton:1 scrollViewAssistant:0];
    [(APTCCDisclosureController *)v3 addDoneButtonTarget:*(a1 + 32) action:sel_phase3ViewContinueButtonPressed_];
    v4 = *(a1 + 32);
    v5 = *(v4 + 1024);
    *(v4 + 1024) = v3;
  }
}

- (APEducationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end