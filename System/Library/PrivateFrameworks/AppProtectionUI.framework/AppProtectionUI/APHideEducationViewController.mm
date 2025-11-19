@interface APHideEducationViewController
- (APEducationViewControllerDelegate)delegate;
- (id)initForApplication:(id)a3;
- (void)phase1ViewCancelButtonPressed:(id)a3;
- (void)phase1ViewContinueButtonPressed:(id)a3;
@end

@implementation APHideEducationViewController

- (id)initForApplication:(id)a3
{
  v5 = a3;
  v65.receiver = self;
  v65.super_class = APHideEducationViewController;
  v6 = [(APHideEducationViewController *)&v65 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_app, a3);
    v8 = [[APWrappingView alloc] initWithFrame:0.0, 0.0, 50.0, 50.0];
    v64 = v5;
    containerView = v7->_containerView;
    v7->_containerView = v8;

    v10 = v7->_containerView;
    v11 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(APWrappingView *)v10 setBackgroundColor:v11];

    [(APHideEducationViewController *)v7 setView:v7->_containerView];
    app = v7->_app;
    v13 = v7;
    v14 = [(APApplication *)app findApplicationRecordWithError:0];
    v15 = [v14 localizedName];

    v16 = MEMORY[0x1E696AEC0];
    v17 = v15;
    v18 = APGetPreferredAuthenticationMechanismLocKey();
    v19 = [v16 stringWithFormat:@"HIDE_PROMPT_%@_FMT", v18];
    v20 = APUILocStr(v19);

    v63 = v17;
    v62 = [MEMORY[0x1E696AEC0] stringWithFormat:v20, v17];

    v21 = MEMORY[0x1E696AEC0];
    v22 = APGetPreferredAuthenticationMechanismLocKey();
    v23 = [v21 stringWithFormat:@"HIDE_PROMPT_DETAIL_%@", v22];
    v61 = APUILocStr(v23);

    v24 = objc_alloc(MEMORY[0x1E69B7D70]);
    v25 = APEducationIconForEnableableFeature(2);
    v26 = [v24 initWithTitle:v62 detailText:v61 icon:v25];

    v27 = APUIFrameworkBundle();
    v28 = [v27 localizedStringForKey:@"HIDDEN_ON_HOME_SCREEN" value:&stru_1F2485CF8 table:@"Localizable"];
    v29 = APUIFrameworkBundle();
    v30 = [v29 localizedStringForKey:@"HIDDEN_ON_HOME_SCREEN_DETAIL" value:&stru_1F2485CF8 table:@"Localizable"];
    [v26 addBulletedListItemWithTitle:v28 description:v30 symbolName:@"app.dashed"];

    v31 = +[APFeatureSemioticsManager sharedManager];
    v32 = [v31 systemImageNameForCurrentBestAuthenticationMechanism];

    v33 = MEMORY[0x1E696AEC0];
    v34 = APGetPreferredAuthenticationMechanismLocKey();
    v35 = [v33 stringWithFormat:@"AUTH_REQUIRED_ITEM_HEADER_%@", v34];
    v36 = APUILocStr(v35);

    v37 = MEMORY[0x1E696AEC0];
    v38 = APGetPreferredAuthenticationMechanismLocKey();
    v39 = [v37 stringWithFormat:@"AUTH_REQUIRED_ITEM_BODY_%@", v38];
    v40 = APUILocStr(v39);

    [v26 addBulletedListItemWithTitle:v36 description:v40 symbolName:v32];
    v41 = APUIFrameworkBundle();
    v42 = [v41 localizedStringForKey:@"NOTIFICATIONS_TURNED_OFF" value:&stru_1F2485CF8 table:@"Localizable"];
    v43 = APUIFrameworkBundle();
    v44 = [v43 localizedStringForKey:@"NOTIFICATIONS_TURNED_OFF_DETAIL" value:&stru_1F2485CF8 table:@"Localizable"];
    [v26 addBulletedListItemWithTitle:v42 description:v44 symbolName:@"bell.badge.slash"];

    v45 = [MEMORY[0x1E69B7D00] boldButton];
    v46 = +[APFeatureSemioticsManager sharedManager];
    v47 = [v46 titleForEnablementAction:1 ofFeature:2];

    [v45 setTitle:v47 forState:0];
    v48 = [v26 buttonTray];
    [v48 addButton:v45];

    [v45 addTarget:v13 action:sel_phase1ViewContinueButtonPressed_ forControlEvents:0x2000];
    v49 = [MEMORY[0x1E69B7D38] linkButton];
    v50 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v51 = [v50 localizedStringForKey:@"CANCEL" value:&stru_1F2485CF8 table:@"Localizable"];
    [v49 setTitle:v51 forState:0];

    v52 = [v26 buttonTray];
    [v52 addButton:v49];

    [v49 addTarget:v13 action:sel_phase1ViewCancelButtonPressed_ forControlEvents:0x2000];
    v53 = v13[126];
    v13[126] = v26;

    [v13 addChildViewController:v13[126]];
    v54 = [v13[126] view];
    v55 = [v13 view];
    [v55 bounds];
    [v54 setFrame:?];

    v56 = [v13 view];
    v57 = [v13[126] view];
    [v56 addSubview:v57];

    v5 = v64;
    [v13[126] didMoveToParentViewController:v13];
    v58 = [MEMORY[0x1E69DC938] currentDevice];
    v59 = [v58 userInterfaceIdiom];

    if (!v59)
    {
      [v13 setModalPresentationStyle:5];
    }
  }

  return v7;
}

- (void)phase1ViewCancelButtonPressed:(id)a3
{
  v4 = APUIDefaultFrameworkLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1AEA18000, v4, OS_LOG_TYPE_DEFAULT, "Cancel pressed for hide edu VC", v6, 2u);
  }

  v5 = [(APHideEducationViewController *)self delegate];
  [v5 educationViewControllerRequestsDismissal:self withResult:0];
}

- (void)phase1ViewContinueButtonPressed:(id)a3
{
  v4 = a3;
  v5 = APUIDefaultFrameworkLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1AEA18000, v5, OS_LOG_TYPE_DEFAULT, "Continue pressed for hide edu VC", buf, 2u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [v7 setEnabled:0];
  v8 = [(APHideEducationViewController *)self delegate];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__APHideEducationViewController_phase1ViewContinueButtonPressed___block_invoke;
  v10[3] = &unk_1E7A41F50;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  [v8 educationViewController:self requestAuthenticationWithCompletion:v10];
}

void __65__APHideEducationViewController_phase1ViewContinueButtonPressed___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) delegate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 992);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __65__APHideEducationViewController_phase1ViewContinueButtonPressed___block_invoke_2;
    v7[3] = &unk_1E7A41F50;
    v7[4] = v4;
    v8 = *(a1 + 40);
    [v3 educationViewController:v4 requestHideOfApplication:v5 completion:v7];
  }

  else
  {
    v6 = *(a1 + 40);

    [v6 setEnabled:1];
  }
}

uint64_t __65__APHideEducationViewController_phase1ViewContinueButtonPressed___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) delegate];
    [v3 educationViewControllerRequestsDismissal:*(a1 + 32) withResult:2];
  }

  v4 = *(a1 + 40);

  return [v4 setEnabled:1];
}

- (APEducationViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end