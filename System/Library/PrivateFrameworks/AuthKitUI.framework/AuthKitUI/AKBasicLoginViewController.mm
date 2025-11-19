@interface AKBasicLoginViewController
- (AKAppleIDAuthenticationInAppContext)context;
- (AKBasicLoginControllerDelegate)delegate;
- (AKBasicLoginViewController)initWithContext:(id)a3;
- (BOOL)_shouldShowPassword;
- (BOOL)isPresentedModally;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldReturn:(id)a3;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)_cancelBarButtonItem;
- (id)_cancelTrayButton;
- (id)_formatUsernameAsPhoneNumberIfNeeded:(id)a3;
- (id)_loginOptions;
- (id)_passwordCell;
- (id)_signInBarButtonItem;
- (id)_signInTrayButton;
- (id)_tableView;
- (id)_title;
- (id)_usernameCell;
- (id)passwordCellTextField;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)usernameCellTextField;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_cancelPressed:(id)a3;
- (void)_initializeView;
- (void)_keyboardDidHide:(id)a3;
- (void)_keyboardDidShow:(id)a3;
- (void)_setContentInset:(double)a3;
- (void)_setPasswordHiddenIfNeeded;
- (void)_setupActionButtons;
- (void)_signInPressed:(id)a3;
- (void)cancelButtonTapped:(id)a3;
- (void)clearPasswordField;
- (void)context:(id)a3 needsPasswordWithCompletion:(id)a4;
- (void)dealloc;
- (void)initializePasswordCellTextField:(id)a3;
- (void)initializeUsernameCellTextField:(id)a3;
- (void)loadView;
- (void)startAnimating;
- (void)stopAnimating;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation AKBasicLoginViewController

- (AKBasicLoginViewController)initWithContext:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = v10;
  v7 = [location[0] title];
  v6 = [location[0] reason];
  v10 = 0;
  v8.receiver = v5;
  v8.super_class = AKBasicLoginViewController;
  v10 = [AKBasicLoginViewController initWithTitle:sel_initWithTitle_detailText_icon_ detailText:v7 icon:?];
  objc_storeStrong(&v10, v10);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  if (v10)
  {
    objc_storeWeak(&v10->_context, location[0]);
    if ([location[0] shouldAllowAppleIDCreation])
    {
      [location[0] setIsUsernameEditable:1];
    }
  }

  v4 = MEMORY[0x277D82BE0](v10);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v10, 0);
  return v4;
}

- (void)dealloc
{
  v4 = self;
  v3[1] = a2;
  v3[0] = [MEMORY[0x277CCAB98] defaultCenter];
  [v3[0] removeObserver:v4 name:*MEMORY[0x277D76C60] object:?];
  [v3[0] removeObserver:v4 name:*MEMORY[0x277D76BA0] object:0];
  objc_storeStrong(v3, 0);
  v2.receiver = v4;
  v2.super_class = AKBasicLoginViewController;
  [(AKBasicLoginViewController *)&v2 dealloc];
}

- (void)loadView
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = AKBasicLoginViewController;
  [(OBBaseWelcomeController *)&v2 loadView];
  [(AKBasicLoginViewController *)v4 _setupActionButtons];
  [(AKBasicLoginViewController *)v4 _initializeView];
}

- (void)viewDidLoad
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = AKBasicLoginViewController;
  [(OBBaseWelcomeController *)&v3 viewDidLoad];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 addObserver:v5 selector:sel__keyboardDidShow_ name:*MEMORY[0x277D76C60] object:?];
  [v2 addObserver:v5 selector:sel__keyboardDidHide_ name:*MEMORY[0x277D76BA0] object:0];
  objc_storeStrong(&v2, 0);
}

- (void)viewWillAppear:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = AKBasicLoginViewController;
  [(AKBasicLoginViewController *)&v3 viewWillAppear:a3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  v10.receiver = self;
  v10.super_class = AKBasicLoginViewController;
  [(OBBaseWelcomeController *)&v10 viewDidAppear:a3];
  v7 = [(AKBasicLoginViewController *)v13 delegate];
  [(AKBasicLoginControllerDelegate *)v7 basicLoginControllerDidPresent:v13];
  *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  [(UITableView *)v13->_tableView reloadData];
  v8 = [(AKBasicLoginViewController *)v13 context];
  v9 = [(AKAppleIDAuthenticationInAppContext *)v8 isUsernameEditable];
  *&v4 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  if (v9)
  {
    v6 = [(AKBasicLoginTableViewCell *)v13->_usernameCell cellTextField];
    [(UITextField *)v6 becomeFirstResponder];
    MEMORY[0x277D82BD8](v6);
  }

  else
  {
    v5 = [(AKBasicLoginTableViewCell *)v13->_passwordCell cellTextField];
    [(UITextField *)v5 becomeFirstResponder];
    MEMORY[0x277D82BD8](v5);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4.receiver = self;
  v4.super_class = AKBasicLoginViewController;
  [(OBBaseWelcomeController *)&v4 viewWillDisappear:a3];
  v3 = [(AKBasicLoginViewController *)v7 delegate];
  [(AKBasicLoginControllerDelegate *)v3 basicLoginControllerWillDismiss:v7];
  MEMORY[0x277D82BD8](v3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  v10.receiver = self;
  v10.super_class = AKBasicLoginViewController;
  [(OBBaseWelcomeController *)&v10 viewDidDisappear:a3];
  v7 = [(AKBasicLoginViewController *)v13 delegate];
  [(AKBasicLoginControllerDelegate *)v7 basicLoginControllerDidDismiss:v13];
  *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  v8 = [(AKBasicLoginViewController *)v13 loginActions];
  v9 = [(AKBasicLoginActions *)v8 ak_cancelAction];
  MEMORY[0x277D82BD8](v9);
  *&v4 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  if (v9)
  {
    v6 = [(AKBasicLoginViewController *)v13 loginActions];
    v5 = [(AKBasicLoginActions *)v6 ak_cancelAction];
    v5[2]();
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
  }
}

- (void)viewDidLayoutSubviews
{
  v24 = self;
  v23 = a2;
  v9 = [(AKBasicLoginViewController *)self view];
  [v9 layoutIfNeeded];
  v12 = [(AKBasicLoginViewController *)v24 tableView];
  [(UITableView *)v12 contentSize];
  v21 = v2;
  v22 = v3;
  v10 = v3;
  v11 = [(AKBasicLoginViewController *)v24 heightAnchor];
  [(NSLayoutConstraint *)v11 setConstant:v10];
  MEMORY[0x277D82BD8](v11);
  v14 = [(AKBasicLoginViewController *)v24 contentView];
  [v14 frame];
  v17 = v4;
  v18 = v5;
  *&v19 = v6;
  *(&v19 + 1) = v7;
  v20 = v19;
  v13 = [(AKBasicLoginViewController *)v24 contentScrollView];
  v16 = v19;
  [v13 setContentSize:v19];
  MEMORY[0x277D82BD8](v13);
  *&v8 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  v15.receiver = v24;
  v15.super_class = AKBasicLoginViewController;
  [(OBBaseWelcomeController *)&v15 viewDidLayoutSubviews];
}

- (BOOL)isPresentedModally
{
  v8 = [(AKBasicLoginViewController *)self navigationController];
  v2 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  if (v8)
  {
    v6 = [(AKBasicLoginViewController *)self navigationController];
    v5 = [v6 viewControllers];
    v7 = [v5 firstObject];
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v5);
    v2 = MEMORY[0x277D82BD8](v6).n128_u64[0];
    if (v7 != self)
    {
      return 0;
    }
  }

  v4 = [(AKBasicLoginViewController *)self presentingViewController];
  MEMORY[0x277D82BD8](v4);
  return v4 != 0;
}

- (void)startAnimating
{
  v2 = [(AKBasicLoginViewController *)self primaryButton];
  [(OBTrayButton *)v2 showsBusyIndicator];
  MEMORY[0x277D82BD8](v2);
}

- (void)stopAnimating
{
  v2 = [(AKBasicLoginViewController *)self primaryButton];
  [(OBTrayButton *)v2 hidesBusyIndicator];
  MEMORY[0x277D82BD8](v2);
}

- (void)clearPasswordField
{
  v2 = [(AKBasicLoginViewController *)self passwordCellTextField];
  [v2 setText:0];
  MEMORY[0x277D82BD8](v2);
}

- (void)_cancelPressed:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = _AKLogSystem();
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    log = v12;
    type = v11;
    __os_log_helper_16_0_0(v10);
    _os_log_impl(&dword_222379000, log, type, "Cancel Pressed", v10, 2u);
  }

  objc_storeStrong(&v12, 0);
  v6 = [(AKBasicLoginViewController *)v14 loginActions];
  v7 = [(AKBasicLoginActions *)v6 ak_cancelAction];
  MEMORY[0x277D82BD8](v7);
  *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  if (v7)
  {
    v5 = [(AKBasicLoginViewController *)v14 loginActions];
    v4 = [(AKBasicLoginActions *)v5 ak_cancelAction];
    v4[2]();
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(location, 0);
}

- (void)_signInPressed:(id)a3
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = [(AKBasicLoginViewController *)v22 usernameCellTextField];
  v20 = [v16 text];
  *&v3 = MEMORY[0x277D82BD8](v16).n128_u64[0];
  v17 = [(AKBasicLoginViewController *)v22 passwordCellTextField];
  v19 = [v17 text];
  *&v4 = MEMORY[0x277D82BD8](v17).n128_u64[0];
  v18 = [(AKBasicLoginViewController *)v22 passwordHandler];
  *&v5 = MEMORY[0x277D82BD8](v18).n128_u64[0];
  if (v18)
  {
    v15 = [(AKBasicLoginViewController *)v22 passwordHandler];
    v15[2](v15, v19);
    *&v6 = MEMORY[0x277D82BD8](v15).n128_u64[0];
    [(AKBasicLoginViewController *)v22 setPasswordHandler:0, v6];
  }

  else
  {
    v13 = [(AKBasicLoginViewController *)v22 loginActions];
    v14 = [(AKBasicLoginActions *)v13 authenticateAction];
    MEMORY[0x277D82BD8](v14);
    *&v7 = MEMORY[0x277D82BD8](v13).n128_u64[0];
    if (v14)
    {
      v8 = [(AKBasicLoginViewController *)v22 _formatUsernameAsPhoneNumberIfNeeded:v20, v7];
      v9 = v20;
      v20 = v8;
      *&v10 = MEMORY[0x277D82BD8](v9).n128_u64[0];
      v12 = [(AKBasicLoginViewController *)v22 loginActions];
      v11 = [(AKBasicLoginActions *)v12 authenticateAction];
      v11[2](v11, v20, v19);
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v12);
    }
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

- (id)_title
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(AKBasicLoginViewController *)self context];
  v8 = [location[0] title];
  *&v2 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  if (v8)
  {
    v18 = [location[0] title];
  }

  else if ([location[0] isUsernameEditable] || objc_msgSend(location[0], "shouldAllowAppleIDCreation"))
  {
    v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKitUI"];
    v18 = [v6 localizedStringForKey:@"APPLE_ID_SIGN_IN_HEADER_REBRAND" value:&stru_28358EF68 table:@"Localizable"];
    MEMORY[0x277D82BD8](v6);
  }

  else
  {
    v7 = [MEMORY[0x277CF0218] currentDevice];
    v15 = 0;
    v13 = 0;
    v11 = 0;
    v9 = 0;
    if ([v7 isMultiUserMode])
    {
      v16 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKitUI"];
      v15 = 1;
      v14 = [v16 localizedStringForKey:@"APPLE_ID_PASSCODE_HEADER_IPAD" value:&stru_28358EF68 table:@"Localizable"];
      v13 = 1;
      v3 = MEMORY[0x277D82BE0](v14);
    }

    else
    {
      v12 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKitUI"];
      v11 = 1;
      v10 = [v12 localizedStringForKey:@"APPLE_ID_PASSWORD_HEADER_REBRAND" value:&stru_28358EF68 table:@"Localizable"];
      v9 = 1;
      v3 = MEMORY[0x277D82BE0](v10);
    }

    v18 = v3;
    if (v9)
    {
      MEMORY[0x277D82BD8](v10);
    }

    if (v11)
    {
      MEMORY[0x277D82BD8](v12);
    }

    if (v13)
    {
      MEMORY[0x277D82BD8](v14);
    }

    if (v15)
    {
      MEMORY[0x277D82BD8](v16);
    }

    MEMORY[0x277D82BD8](v7);
  }

  objc_storeStrong(location, 0);
  v4 = v18;

  return v4;
}

- (BOOL)_shouldShowPassword
{
  v3 = [(AKBasicLoginViewController *)self context];
  v4 = 1;
  if (([(AKAppleIDAuthenticationInAppContext *)v3 _requiresPasswordInput]& 1) == 0)
  {
    v4 = [(AKBasicLoginViewController *)self isPasswordFieldVisible];
  }

  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (id)_loginOptions
{
  v58[4] = *MEMORY[0x277D85DE8];
  v57 = self;
  location[1] = a2;
  if (!self->_loginOptions)
  {
    v40 = objc_alloc_init(MEMORY[0x277D75D18]);
    loginOptions = v57->_loginOptions;
    v57->_loginOptions = v40;
    MEMORY[0x277D82BD8](loginOptions);
    v39 = [AKBasicLoginOptionsViewController alloc];
    v37 = [(AKBasicLoginViewController *)v57 context];
    v38 = [(AKBasicLoginOptionsViewController *)v39 initWithContext:?];
    [(AKBasicLoginViewController *)v57 setLoginOptionsViewController:v38];
    MEMORY[0x277D82BD8](v38);
    v36 = [(AKBasicLoginViewController *)v57 loginOptionsViewController];
    v35 = [(AKBasicLoginOptionsViewController *)v36 view];
    [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
    MEMORY[0x277D82BD8](v35);
    v34 = [(AKBasicLoginViewController *)v57 loginOptionsViewController];
    [(AKBasicLoginViewController *)v57 addChildViewController:?];
    MEMORY[0x277D82BD8](v34);
    objc_initWeak(location, v57);
    v50 = MEMORY[0x277D85DD0];
    v51 = -1073741824;
    v52 = 0;
    v53 = __43__AKBasicLoginViewController__loginOptions__block_invoke;
    v54 = &unk_2784A6770;
    objc_copyWeak(&v55, location);
    v33 = [(AKBasicLoginViewController *)v57 loginOptionsViewController];
    [(AKBasicLoginOptionsViewController *)v33 setCreateIDAction:&v50];
    v49 = 0;
    MEMORY[0x277D82BD8](v33);
    v43 = MEMORY[0x277D85DD0];
    v44 = -1073741824;
    v45 = 0;
    v46 = __43__AKBasicLoginViewController__loginOptions__block_invoke_62;
    v47 = &unk_2784A6770;
    objc_copyWeak(&v48, location);
    v32 = [(AKBasicLoginViewController *)v57 loginOptionsViewController];
    [(AKBasicLoginOptionsViewController *)v32 setForgotAction:&v43];
    v42 = 0;
    *&v3 = MEMORY[0x277D82BD8](v32).n128_u64[0];
    [(UIView *)v57->_loginOptions setTranslatesAutoresizingMaskIntoConstraints:0, v3];
    v31 = v57->_loginOptions;
    v30 = [(AKBasicLoginViewController *)v57 loginOptionsViewController];
    v29 = [(AKBasicLoginOptionsViewController *)v30 view];
    [(UIView *)v31 addSubview:?];
    MEMORY[0x277D82BD8](v29);
    *&v4 = MEMORY[0x277D82BD8](v30).n128_u64[0];
    v28 = [(AKBasicLoginViewController *)v57 loginOptionsViewController];
    [(AKBasicLoginOptionsViewController *)v28 didMoveToParentViewController:v57];
    *&v5 = MEMORY[0x277D82BD8](v28).n128_u64[0];
    v27 = [(AKBasicLoginViewController *)v57 loginOptionsViewController];
    v26 = [(AKBasicLoginOptionsViewController *)v27 view];
    v25 = [v26 topAnchor];
    v24 = [(UIView *)v57->_loginOptions topAnchor];
    v23 = [v25 constraintEqualToAnchor:?];
    v58[0] = v23;
    v22 = [(AKBasicLoginViewController *)v57 loginOptionsViewController];
    v21 = [(AKBasicLoginOptionsViewController *)v22 view];
    v20 = [v21 bottomAnchor];
    v19 = [(UIView *)v57->_loginOptions bottomAnchor];
    v18 = [v20 constraintEqualToAnchor:?];
    v58[1] = v18;
    v17 = [(AKBasicLoginViewController *)v57 loginOptionsViewController];
    v16 = [(AKBasicLoginOptionsViewController *)v17 view];
    v15 = [v16 leadingAnchor];
    v14 = [(UIView *)v57->_loginOptions leadingAnchor];
    v13 = [v15 constraintEqualToAnchor:20.0 constant:?];
    v58[2] = v13;
    v12 = [(AKBasicLoginViewController *)v57 loginOptionsViewController];
    v11 = [(AKBasicLoginOptionsViewController *)v12 view];
    v10 = [v11 trailingAnchor];
    v9 = [(UIView *)v57->_loginOptions trailingAnchor];
    v8 = [v10 constraintEqualToAnchor:-20.0 constant:?];
    v58[3] = v8;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:4];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](v24);
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    [MEMORY[0x277CCAAD0] activateConstraints:{v41, MEMORY[0x277D82BD8](v27).n128_f64[0]}];
    objc_storeStrong(&v41, 0);
    objc_destroyWeak(&v48);
    objc_destroyWeak(&v55);
    objc_destroyWeak(location);
  }

  *MEMORY[0x277D85DE8];
  v6 = v57->_loginOptions;

  return v6;
}

void __43__AKBasicLoginViewController__loginOptions__block_invoke(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v11;
    __os_log_helper_16_0_0(v10);
    _os_log_impl(&dword_222379000, log, type, "Create Pressed", v10, 2u);
  }

  objc_storeStrong(location, 0);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  if (WeakRetained)
  {
    v4 = [WeakRetained loginActions];
    v5 = [v4 createIDAction];
    MEMORY[0x277D82BD8](v5);
    *&v1 = MEMORY[0x277D82BD8](v4).n128_u64[0];
    if (v5)
    {
      v3 = [WeakRetained loginActions];
      v2 = [v3 createIDAction];
      v2[2]();
      MEMORY[0x277D82BD8](v2);
      MEMORY[0x277D82BD8](v3);
    }
  }

  objc_storeStrong(&WeakRetained, 0);
}

void __43__AKBasicLoginViewController__loginOptions__block_invoke_62(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    v9 = v14;
    __os_log_helper_16_0_0(v13);
    _os_log_impl(&dword_222379000, log, v9, "Forgot Pressed", v13, 2u);
  }

  objc_storeStrong(location, 0);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  if (WeakRetained)
  {
    v6 = [WeakRetained loginActions];
    v7 = [v6 forgotPasswordAction];
    MEMORY[0x277D82BD8](v7);
    *&v1 = MEMORY[0x277D82BD8](v6).n128_u64[0];
    if (v7)
    {
      v3 = [WeakRetained usernameCellTextField];
      v11 = [v3 text];
      *&v2 = MEMORY[0x277D82BD8](v3).n128_u64[0];
      v5 = [WeakRetained loginActions];
      v4 = [v5 forgotPasswordAction];
      v4[2](v4, v11);
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v5);
      objc_storeStrong(&v11, 0);
    }
  }

  objc_storeStrong(&WeakRetained, 0);
}

- (void)_setupActionButtons
{
  v2 = [(OBBaseWelcomeController *)self navigationItem];
  [v2 setHidesBackButton:1];
  v4 = [(AKBasicLoginViewController *)self buttonTray];
  v3 = [(AKBasicLoginViewController *)self _signInTrayButton];
  [v4 addButton:?];
  MEMORY[0x277D82BD8](v3);
  v6 = [(AKBasicLoginViewController *)self buttonTray];
  v5 = [(AKBasicLoginViewController *)self _cancelTrayButton];
  [v6 addButton:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
}

- (id)_cancelTrayButton
{
  if (!self->_secondaryButton)
  {
    v2 = [MEMORY[0x277D37650] linkButton];
    secondaryButton = self->_secondaryButton;
    self->_secondaryButton = v2;
    *&v4 = MEMORY[0x277D82BD8](secondaryButton).n128_u64[0];
    v7 = self->_secondaryButton;
    v9 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:{@"com.apple.AuthKitUI", v4}];
    v8 = [v9 localizedStringForKey:@"CANCEL" value:&stru_28358EF68 table:@"Localizable"];
    [OBTrayButton setTitle:v7 forState:"setTitle:forState:"];
    MEMORY[0x277D82BD8](v8);
    [(OBTrayButton *)self->_secondaryButton addTarget:self action:sel_cancelButtonTapped_ forControlEvents:64, MEMORY[0x277D82BD8](v9).n128_f64[0]];
  }

  v5 = self->_secondaryButton;

  return v5;
}

- (id)_signInTrayButton
{
  if (!self->_primaryButton)
  {
    v2 = [MEMORY[0x277D37618] boldButton];
    primaryButton = self->_primaryButton;
    self->_primaryButton = v2;
    [(OBTrayButton *)self->_primaryButton addTarget:self action:sel__signInPressed_ forControlEvents:64, MEMORY[0x277D82BD8](primaryButton).n128_f64[0]];
    v7 = self->_primaryButton;
    WeakRetained = objc_loadWeakRetained(&self->_context);
    v9 = [WeakRetained defaultButtonString];
    v12 = 0;
    v10 = 0;
    if (v9)
    {
      v6 = v9;
    }

    else
    {
      v13 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKitUI"];
      v12 = 1;
      v11 = [v13 localizedStringForKey:@"SIGN_IN" value:&stru_28358EF68 table:@"Localizable"];
      v10 = 1;
      v6 = v11;
    }

    [(OBTrayButton *)v7 setTitle:v6 forState:0];
    if (v10)
    {
      MEMORY[0x277D82BD8](v11);
    }

    if (v12)
    {
      MEMORY[0x277D82BD8](v13);
    }

    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](WeakRetained);
  }

  v4 = self->_primaryButton;

  return v4;
}

- (void)cancelButtonTapped:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(AKBasicLoginViewController *)v4 dismissViewControllerAnimated:1 completion:0];
  objc_storeStrong(location, 0);
}

- (id)_cancelBarButtonItem
{
  v2 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel__cancelPressed_];

  return v2;
}

- (id)_signInBarButtonItem
{
  v4 = objc_alloc(MEMORY[0x277D751E0]);
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v6 = [WeakRetained defaultButtonString];
  v9 = 0;
  v7 = 0;
  if (v6)
  {
    v3 = v6;
  }

  else
  {
    v10 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKitUI"];
    v9 = 1;
    v8 = [v10 localizedStringForKey:@"SIGN_IN" value:&stru_28358EF68 table:@"Localizable"];
    v7 = 1;
    v3 = v8;
  }

  v12 = [v4 initWithTitle:v3 style:0 target:self action:sel__signInPressed_];
  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  if (v9)
  {
    MEMORY[0x277D82BD8](v10);
  }

  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](WeakRetained);

  return v12;
}

- (id)_formatUsernameAsPhoneNumberIfNeeded:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] containsString:@"@"])
  {
    v11 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v8 = objc_opt_new();
    v7 = [v8 displayFormatFor:location[0]];
    v6 = [v8 normalizedFormatFor:v7];
    if (![v7 isEqualToString:location[0]])
    {
      v5 = [(AKBasicLoginViewController *)v10 usernameCellTextField];
      [v5 setText:v7];
      MEMORY[0x277D82BD8](v5);
    }

    v11 = MEMORY[0x277D82BE0](v6);
    objc_storeStrong(&v6, 0);
    objc_storeStrong(&v7, 0);
    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(location, 0);
  v3 = v11;

  return v3;
}

- (void)context:(id)a3 needsPasswordWithCompletion:(id)a4
{
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a4);
  if ([(AKBasicLoginViewController *)v22 isPasswordFieldVisible])
  {
    [(AKBasicLoginViewController *)v22 setPasswordHandler:v20];
    v19 = 1;
  }

  else
  {
    [(AKBasicLoginViewController *)v22 setPasswordHandler:v20];
    v12 = MEMORY[0x277D85DD0];
    v13 = -1073741824;
    v14 = 0;
    v15 = __66__AKBasicLoginViewController_context_needsPasswordWithCompletion___block_invoke;
    v16 = &unk_2784A62B8;
    v17 = MEMORY[0x277D82BE0](v22);
    v18 = MEMORY[0x223DB6C90](&v12);
    [(AKBasicLoginViewController *)v22 setIsPasswordFieldVisible:1];
    v4 = [(AKBasicLoginViewController *)v22 tableView];
    v6 = MEMORY[0x277D85DD0];
    v7 = -1073741824;
    v8 = 0;
    v9 = __66__AKBasicLoginViewController_context_needsPasswordWithCompletion___block_invoke_2;
    v10 = &unk_2784A5C90;
    v11 = MEMORY[0x277D82BE0](v22);
    [(UITableView *)v4 performBatchUpdates:&v6 completion:v18];
    MEMORY[0x277D82BD8](v4);
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v17, 0);
    v19 = 0;
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

uint64_t __66__AKBasicLoginViewController_context_needsPasswordWithCompletion___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) passwordCell];
  v2 = [v3 cellTextField];
  [v2 becomeFirstResponder];
  MEMORY[0x277D82BD8](v2);
  return [*(a1 + 32) stopAnimating];
}

void __66__AKBasicLoginViewController_context_needsPasswordWithCompletion___block_invoke_2(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) tableView];
  v2 = [MEMORY[0x277CCAA70] indexPathForRow:? inSection:?];
  v4[0] = v2;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  [v3 insertRowsAtIndexPaths:? withRowAnimation:?];
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
  *MEMORY[0x277D85DE8];
}

- (void)_setPasswordHiddenIfNeeded
{
  v25 = self;
  v24[1] = a2;
  if ([(AKBasicLoginViewController *)self isPasswordFieldVisible])
  {
    [(AKBasicLoginViewController *)v25 setIsPasswordFieldVisible:0];
    v5 = [(AKBasicLoginViewController *)v25 passwordCellTextField];
    [v5 setText:?];
    [(AKBasicLoginViewController *)v25 setPasswordHandler:0, MEMORY[0x277D82BD8](v5).n128_f64[0]];
    v24[0] = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:0];
    v7 = [v24[0] section];
    v6 = [(AKBasicLoginViewController *)v25 tableView];
    v22 = 0;
    v8 = 0;
    if (v7 < [(UITableView *)v6 numberOfSections])
    {
      v4 = [v24[0] row];
      v23 = [(AKBasicLoginViewController *)v25 tableView];
      v22 = 1;
      v8 = v4 < -[UITableView numberOfRowsInSection:](v23, "numberOfRowsInSection:", [v24[0] section]);
    }

    if (v22)
    {
      MEMORY[0x277D82BD8](v23);
    }

    *&v2 = MEMORY[0x277D82BD8](v6).n128_u64[0];
    if (v8)
    {
      v3 = [(AKBasicLoginViewController *)v25 tableView];
      v15 = MEMORY[0x277D85DD0];
      v16 = -1073741824;
      v17 = 0;
      v18 = __56__AKBasicLoginViewController__setPasswordHiddenIfNeeded__block_invoke;
      v19 = &unk_2784A6420;
      v20 = MEMORY[0x277D82BE0](v25);
      v21 = MEMORY[0x277D82BE0](v24[0]);
      v9 = MEMORY[0x277D85DD0];
      v10 = -1073741824;
      v11 = 0;
      v12 = __56__AKBasicLoginViewController__setPasswordHiddenIfNeeded__block_invoke_2;
      v13 = &unk_2784A62B8;
      v14 = MEMORY[0x277D82BE0](v25);
      [(UITableView *)v3 performBatchUpdates:&v15 completion:&v9];
      MEMORY[0x277D82BD8](v3);
      objc_storeStrong(&v14, 0);
      objc_storeStrong(&v21, 0);
      objc_storeStrong(&v20, 0);
    }

    objc_storeStrong(v24, 0);
  }
}

void __56__AKBasicLoginViewController__setPasswordHiddenIfNeeded__block_invoke(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) tableView];
  v4[0] = *(a1 + 40);
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  [v3 deleteRowsAtIndexPaths:? withRowAnimation:?];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
  *MEMORY[0x277D85DE8];
}

double __56__AKBasicLoginViewController__setPasswordHiddenIfNeeded__block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) usernameCell];
  v2 = [v3 cellTextField];
  [v2 becomeFirstResponder];
  MEMORY[0x277D82BD8](v2);
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

- (void)initializePasswordCellTextField:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = location[0];
  v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKitUI"];
  v5 = [v6 localizedStringForKey:@"PASSWORD_PLACEHOLDER" value:&stru_28358EF68 table:@"Localizable"];
  [v4 setPlaceholder:?];
  MEMORY[0x277D82BD8](v5);
  *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  [location[0] setTextContentType:{*MEMORY[0x277D77018], v3}];
  [location[0] setSecureTextEntry:1];
  [location[0] setReturnKeyType:9];
  [location[0] setDelegate:v8];
  objc_storeStrong(location, 0);
}

- (void)initializeUsernameCellTextField:(id)a3
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = location[0];
  v14 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKitUI"];
  v13 = [v14 localizedStringForKey:@"EMAIL_OR_PHONE_PLACEHOLDER" value:&stru_28358EF68 table:@"Localizable"];
  [v12 setPlaceholder:?];
  MEMORY[0x277D82BD8](v13);
  *&v3 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  [location[0] setTextContentType:{*MEMORY[0x277D77018], v3}];
  WeakRetained = objc_loadWeakRetained(&v20->_context);
  v15 = [WeakRetained username];
  v17 = [v15 length] != 0;
  v16 = [WeakRetained isUsernameEditable];
  if (v17)
  {
    v10 = location[0];
    v11 = [WeakRetained username];
    [v10 setText:?];
    *&v4 = MEMORY[0x277D82BD8](v11).n128_u64[0];
    [(AKBasicLoginViewController *)v20 setIsPasswordFieldVisible:1, v4];
  }

  if (v16)
  {
    [location[0] setAutocapitalizationType:0];
    [location[0] setKeyboardType:7];
    [location[0] setReturnKeyType:11];
    [location[0] setDelegate:v20];
  }

  if (v17 && (v16 & 1) == 1)
  {
    v9 = [(AKBasicLoginViewController *)v20 primaryButton];
    [(OBTrayButton *)v9 setEnabled:1];
    MEMORY[0x277D82BD8](v9);
  }

  else if (v17 && (v16 & 1) == 0)
  {
    v6 = location[0];
    v7 = [WeakRetained username];
    [v6 setText:?];
    *&v5 = MEMORY[0x277D82BD8](v7).n128_u64[0];
    [location[0] setEnabled:{0, v5}];
    v8 = +[AKBasicLoginAppearance disabledTableCellBackgroundColor];
    [(AKBasicLoginTableViewCell *)v20->_usernameCell setBackgroundColor:?];
    MEMORY[0x277D82BD8](v8);
  }

  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(location, 0);
}

- (void)_initializeView
{
  v76[11] = *MEMORY[0x277D85DE8];
  v75 = self;
  v74[1] = a2;
  v65 = [(AKBasicLoginViewController *)self headerView];
  v64 = [(AKBasicLoginViewController *)v75 _title];
  [v65 setTitle:?];
  MEMORY[0x277D82BD8](v64);
  v66 = [(AKBasicLoginViewController *)v75 contentScrollView];
  [v66 _setHiddenPocketEdges:4];
  v69 = [(AKBasicLoginViewController *)v75 headerView];
  v68 = [(AKBasicLoginViewController *)v75 context];
  v67 = [(AKAppleIDAuthenticationInAppContext *)v68 _interpolatedReasonWithBlame];
  [v69 setDetailText:?];
  MEMORY[0x277D82BD8](v67);
  MEMORY[0x277D82BD8](v68);
  v70 = [(AKBasicLoginViewController *)v75 context];
  v71 = [(AKAppleIDAuthenticationInAppContext *)v70 displayImageData];
  MEMORY[0x277D82BD8](v71);
  *&v2 = MEMORY[0x277D82BD8](v70).n128_u64[0];
  if (v71)
  {
    v57 = MEMORY[0x277D755B8];
    v59 = [(AKBasicLoginViewController *)v75 context];
    v58 = [(AKAppleIDAuthenticationInAppContext *)v59 displayImageData];
    v74[0] = [v57 imageWithData:?];
    MEMORY[0x277D82BD8](v58);
    *&v3 = MEMORY[0x277D82BD8](v59).n128_u64[0];
    v63 = [(AKBasicLoginViewController *)v75 headerView];
    v60 = v74[0];
    v62 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v61 = [v62 localizedStringForKey:@"HEADER_ICON_ACCESSIBILITY_LABEL" value:&stru_28358EF68 table:@"Localizable"];
    [v63 setIcon:v60 accessibilityLabel:?];
    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](v62);
    MEMORY[0x277D82BD8](v63);
    objc_storeStrong(v74, 0);
  }

  v73 = [(AKBasicLoginViewController *)v75 _tableView];
  v6 = [(AKBasicLoginViewController *)v75 contentView];
  [v6 addSubview:v73];
  *&v4 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  v72 = [(AKBasicLoginViewController *)v75 _loginOptions];
  v7 = [(AKBasicLoginViewController *)v75 contentView];
  [v7 addSubview:v72];
  *&v5 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  v8 = MEMORY[0x277CCAAD0];
  v56 = [(AKBasicLoginViewController *)v75 headerView];
  v55 = [v56 leadingAnchor];
  v54 = [(AKBasicLoginViewController *)v75 view];
  v53 = [v54 leadingAnchor];
  v52 = [v55 constraintEqualToAnchor:20.0 constant:?];
  v76[0] = v52;
  v51 = [(AKBasicLoginViewController *)v75 headerView];
  v50 = [v51 trailingAnchor];
  v49 = [(AKBasicLoginViewController *)v75 view];
  v48 = [v49 trailingAnchor];
  v47 = [v50 constraintEqualToAnchor:-20.0 constant:?];
  v76[1] = v47;
  v46 = [(AKBasicLoginViewController *)v75 contentView];
  v45 = [v46 leadingAnchor];
  v44 = [(AKBasicLoginViewController *)v75 view];
  v43 = [v44 leadingAnchor];
  v42 = [v45 constraintEqualToAnchor:?];
  v76[2] = v42;
  v41 = [(AKBasicLoginViewController *)v75 contentView];
  v40 = [v41 trailingAnchor];
  v39 = [(AKBasicLoginViewController *)v75 view];
  v38 = [v39 trailingAnchor];
  v37 = [v40 constraintEqualToAnchor:?];
  v76[3] = v37;
  v36 = [(AKBasicLoginViewController *)v75 contentView];
  v35 = [v36 topAnchor];
  v34 = [v73 topAnchor];
  v33 = [v35 constraintEqualToAnchor:?];
  v76[4] = v33;
  v32 = [(AKBasicLoginViewController *)v75 contentView];
  v31 = [v32 leadingAnchor];
  v30 = [v73 leadingAnchor];
  v29 = [v31 constraintEqualToAnchor:?];
  v76[5] = v29;
  v28 = [(AKBasicLoginViewController *)v75 contentView];
  v27 = [v28 trailingAnchor];
  v26 = [v73 trailingAnchor];
  v25 = [v27 constraintEqualToAnchor:?];
  v76[6] = v25;
  v24 = [(AKBasicLoginViewController *)v75 contentView];
  v23 = [v24 leadingAnchor];
  v22 = [v72 leadingAnchor];
  v21 = [v23 constraintEqualToAnchor:?];
  v76[7] = v21;
  v20 = [(AKBasicLoginViewController *)v75 contentView];
  v19 = [v20 trailingAnchor];
  v18 = [v72 trailingAnchor];
  v17 = [v19 constraintEqualToAnchor:?];
  v76[8] = v17;
  v16 = [(AKBasicLoginViewController *)v75 contentView];
  v15 = [v16 bottomAnchor];
  v14 = [v72 bottomAnchor];
  v13 = [v15 constraintEqualToAnchor:?];
  v76[9] = v13;
  v12 = [v72 topAnchor];
  v11 = [v73 bottomAnchor];
  v10 = [v12 constraintEqualToAnchor:?];
  v76[10] = v10;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:11];
  [v8 activateConstraints:?];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v31);
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v34);
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](v39);
  MEMORY[0x277D82BD8](v40);
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BD8](v42);
  MEMORY[0x277D82BD8](v43);
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](v45);
  MEMORY[0x277D82BD8](v46);
  MEMORY[0x277D82BD8](v47);
  MEMORY[0x277D82BD8](v48);
  MEMORY[0x277D82BD8](v49);
  MEMORY[0x277D82BD8](v50);
  MEMORY[0x277D82BD8](v51);
  MEMORY[0x277D82BD8](v52);
  MEMORY[0x277D82BD8](v53);
  MEMORY[0x277D82BD8](v54);
  MEMORY[0x277D82BD8](v55);
  MEMORY[0x277D82BD8](v56);
  objc_storeStrong(&v72, 0);
  objc_storeStrong(&v73, 0);
  *MEMORY[0x277D85DE8];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(AKBasicLoginViewController *)v8 _shouldShowPassword])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v6 = v4;
  objc_storeStrong(location, 0);
  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  if ([v7 row])
  {
    if ([v7 row] == 1)
    {
      v10 = [(AKBasicLoginViewController *)v9 _passwordCell];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = [(AKBasicLoginViewController *)v9 _usernameCell];
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  v4 = v10;

  return v4;
}

- (id)passwordCellTextField
{
  v3 = [(AKBasicLoginViewController *)self passwordCell];
  v4 = [(AKBasicLoginTableViewCell *)v3 cellTextField];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (id)usernameCellTextField
{
  v3 = [(AKBasicLoginViewController *)self usernameCell];
  v4 = [(AKBasicLoginTableViewCell *)v3 cellTextField];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(AKBasicLoginViewController *)v5 _signInPressed:location[0]];
  objc_storeStrong(location, 0);
  return 1;
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  v23 = a4;
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_storeStrong(&v20, a5);
  v12 = location[0];
  v14 = [(AKBasicLoginViewController *)v22 usernameCell];
  v13 = [(AKBasicLoginTableViewCell *)v14 cellTextField];
  v15 = [v12 isEqual:?];
  MEMORY[0x277D82BD8](v13);
  *&v5 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  if (v15)
  {
    v19 = [(AKBasicLoginViewController *)v22 context];
    v10 = [v19 username];
    *&v6 = MEMORY[0x277D82BD8](v10).n128_u64[0];
    if (v10)
    {
      v18 = _AKLogSystem();
      v17 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        log = v18;
        type = v17;
        __os_log_helper_16_0_0(v16);
        _os_log_impl(&dword_222379000, log, type, "Username is changing", v16, 2u);
      }

      objc_storeStrong(&v18, 0);
      [v19 setUsername:0];
    }

    [(AKBasicLoginViewController *)v22 _setPasswordHiddenIfNeeded];
    objc_storeStrong(&v19, 0);
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
  return 1;
}

- (id)_usernameCell
{
  if (!self->_usernameCell)
  {
    v2 = [[AKBasicLoginTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    usernameCell = self->_usernameCell;
    self->_usernameCell = v2;
    v6 = [(AKBasicLoginTableViewCell *)self->_usernameCell cellTextField];
    [(AKBasicLoginViewController *)self initializeUsernameCellTextField:?];
    MEMORY[0x277D82BD8](v6);
  }

  v4 = self->_usernameCell;

  return v4;
}

- (id)_passwordCell
{
  if (!self->_passwordCell)
  {
    v2 = [[AKBasicLoginTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    passwordCell = self->_passwordCell;
    self->_passwordCell = v2;
    v6 = [(AKBasicLoginTableViewCell *)self->_passwordCell cellTextField];
    [(AKBasicLoginViewController *)self initializePasswordCellTextField:?];
    [(AKBasicLoginViewController *)self setIsPasswordFieldVisible:1, MEMORY[0x277D82BD8](v6).n128_f64[0]];
  }

  v4 = self->_passwordCell;

  return v4;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v11 = [(AKBasicLoginViewController *)v15 traitCollection];
  v10 = [v11 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v10);
  MEMORY[0x277D82BD8](v10);
  *&v4 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  if (IsAccessibilityCategory)
  {
    v16 = *MEMORY[0x277D76F30];
  }

  else
  {
    v8 = [MEMORY[0x277CF0228] sharedManager];
    v5 = [v8 isAuthKitSolariumFeatureEnabled];
    v6 = 52.0;
    if ((v5 & 1) == 0)
    {
      v6 = 44.0;
    }

    v16 = v6;
    MEMORY[0x277D82BD8](v8);
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  return v16;
}

- (id)_tableView
{
  if (!self->_tableView)
  {
    v8 = objc_alloc(MEMORY[0x277D75B40]);
    v2 = +[AKBasicLoginAppearance tableViewStyle];
    v12 = MEMORY[0x277CBF3A0];
    v3 = [v8 initWithFrame:v2 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    tableView = self->_tableView;
    self->_tableView = v3;
    v9 = [MEMORY[0x277D75348] clearColor];
    [(UITableView *)self->_tableView setBackgroundColor:?];
    [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0, MEMORY[0x277D82BD8](v9).n128_f64[0]];
    [(UITableView *)self->_tableView setDelegate:self];
    [(UITableView *)self->_tableView setDataSource:self];
    [(UITableView *)self->_tableView setRowHeight:*MEMORY[0x277D76F30]];
    [(UITableView *)self->_tableView setEstimatedRowHeight:0.0];
    [(UITableView *)self->_tableView setScrollEnabled:0];
    [(UITableView *)self->_tableView setAllowsSelection:0];
    [(UITableView *)self->_tableView setSeparatorStyle:1];
    v10 = self->_tableView;
    v11 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{*v12, v12[1], v12[2], 10.0}];
    [(UITableView *)v10 setTableHeaderView:?];
    MEMORY[0x277D82BD8](v11);
    v13 = self->_tableView;
    v14 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{*v12, v12[1], v12[2], 2.0}];
    [(UITableView *)v13 setTableFooterView:?];
    [(UITableView *)self->_tableView reloadData];
    v17 = [(UITableView *)self->_tableView heightAnchor];
    v16 = [(AKBasicLoginViewController *)self tableView];
    [(UITableView *)v16 contentSize];
    v15 = [v17 constraintEqualToConstant:v5];
    [(AKBasicLoginViewController *)self setHeightAnchor:?];
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    v18 = [(AKBasicLoginViewController *)self heightAnchor];
    [(NSLayoutConstraint *)v18 setActive:1];
    MEMORY[0x277D82BD8](v18);
  }

  v6 = self->_tableView;

  return v6;
}

- (void)_keyboardDidShow:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [location[0] userInfo];
  v4 = [v6 objectForKey:*MEMORY[0x277D76BB8]];
  [v4 CGRectValue];
  v5 = v3;
  MEMORY[0x277D82BD8](v4);
  [(AKBasicLoginViewController *)v8 _setContentInset:v5];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)_keyboardDidHide:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(AKBasicLoginViewController *)v4 _setContentInset:0.0];
  objc_storeStrong(location, 0);
}

- (void)_setContentInset:(double)a3
{
  v17 = [(AKBasicLoginViewController *)self contentScrollView];
  [v17 contentInset];
  v22 = v3;
  v23 = v4;
  v24 = v5;
  MEMORY[0x277D82BD8](v17);
  v18 = [(AKBasicLoginViewController *)self contentScrollView];
  [v18 setContentInset:{v22, v23, a3, v24}];
  MEMORY[0x277D82BD8](v18);
  v19 = [(AKBasicLoginViewController *)self contentScrollView];
  [v19 setScrollIndicatorInsets:{v22, v23, a3, v24}];
  MEMORY[0x277D82BD8](v19);
  if (a3 > 0.0)
  {
    v12 = [(AKBasicLoginViewController *)self contentScrollView];
    [v12 contentOffset];
    v20 = v6;
    v21 = v7;
    v15 = [(AKBasicLoginViewController *)self contentScrollView];
    [v15 contentSize];
    v14 = v8;
    v13 = [(AKBasicLoginViewController *)self contentScrollView];
    [v13 bounds];
    v16 = v14 - (v9 - a3);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v15);
    if (0 >= v16)
    {
      v11 = 0;
    }

    else
    {
      v11 = v16;
    }

    if (v21 < v11)
    {
      v10 = [(AKBasicLoginViewController *)self contentScrollView];
      [v10 setContentOffset:1 animated:{v20, v11}];
      MEMORY[0x277D82BD8](v10);
    }
  }
}

- (AKBasicLoginControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (AKAppleIDAuthenticationInAppContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

@end