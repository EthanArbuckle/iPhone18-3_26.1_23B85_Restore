@interface AKBasicLoginViewController
- (AKAppleIDAuthenticationInAppContext)context;
- (AKBasicLoginControllerDelegate)delegate;
- (AKBasicLoginViewController)initWithContext:(id)context;
- (BOOL)_shouldShowPassword;
- (BOOL)isPresentedModally;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldReturn:(id)return;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)_cancelBarButtonItem;
- (id)_cancelTrayButton;
- (id)_formatUsernameAsPhoneNumberIfNeeded:(id)needed;
- (id)_loginOptions;
- (id)_passwordCell;
- (id)_signInBarButtonItem;
- (id)_signInTrayButton;
- (id)_tableView;
- (id)_title;
- (id)_usernameCell;
- (id)passwordCellTextField;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)usernameCellTextField;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_cancelPressed:(id)pressed;
- (void)_initializeView;
- (void)_keyboardDidHide:(id)hide;
- (void)_keyboardDidShow:(id)show;
- (void)_setContentInset:(double)inset;
- (void)_setPasswordHiddenIfNeeded;
- (void)_setupActionButtons;
- (void)_signInPressed:(id)pressed;
- (void)cancelButtonTapped:(id)tapped;
- (void)clearPasswordField;
- (void)context:(id)context needsPasswordWithCompletion:(id)completion;
- (void)dealloc;
- (void)initializePasswordCellTextField:(id)field;
- (void)initializeUsernameCellTextField:(id)field;
- (void)loadView;
- (void)startAnimating;
- (void)stopAnimating;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation AKBasicLoginViewController

- (AKBasicLoginViewController)initWithContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v5 = selfCopy;
  title = [location[0] title];
  reason = [location[0] reason];
  selfCopy = 0;
  v8.receiver = v5;
  v8.super_class = AKBasicLoginViewController;
  selfCopy = [AKBasicLoginViewController initWithTitle:sel_initWithTitle_detailText_icon_ detailText:title icon:?];
  objc_storeStrong(&selfCopy, selfCopy);
  MEMORY[0x277D82BD8](reason);
  MEMORY[0x277D82BD8](title);
  if (selfCopy)
  {
    objc_storeWeak(&selfCopy->_context, location[0]);
    if ([location[0] shouldAllowAppleIDCreation])
    {
      [location[0] setIsUsernameEditable:1];
    }
  }

  v4 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v4;
}

- (void)dealloc
{
  selfCopy = self;
  v3[1] = a2;
  v3[0] = [MEMORY[0x277CCAB98] defaultCenter];
  [v3[0] removeObserver:selfCopy name:*MEMORY[0x277D76C60] object:?];
  [v3[0] removeObserver:selfCopy name:*MEMORY[0x277D76BA0] object:0];
  objc_storeStrong(v3, 0);
  v2.receiver = selfCopy;
  v2.super_class = AKBasicLoginViewController;
  [(AKBasicLoginViewController *)&v2 dealloc];
}

- (void)loadView
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = AKBasicLoginViewController;
  [(OBBaseWelcomeController *)&v2 loadView];
  [(AKBasicLoginViewController *)selfCopy _setupActionButtons];
  [(AKBasicLoginViewController *)selfCopy _initializeView];
}

- (void)viewDidLoad
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = AKBasicLoginViewController;
  [(OBBaseWelcomeController *)&v3 viewDidLoad];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:selfCopy selector:sel__keyboardDidShow_ name:*MEMORY[0x277D76C60] object:?];
  [defaultCenter addObserver:selfCopy selector:sel__keyboardDidHide_ name:*MEMORY[0x277D76BA0] object:0];
  objc_storeStrong(&defaultCenter, 0);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v5 = a2;
  appearCopy = appear;
  v3.receiver = self;
  v3.super_class = AKBasicLoginViewController;
  [(AKBasicLoginViewController *)&v3 viewWillAppear:appear];
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v12 = a2;
  appearCopy = appear;
  v10.receiver = self;
  v10.super_class = AKBasicLoginViewController;
  [(OBBaseWelcomeController *)&v10 viewDidAppear:appear];
  delegate = [(AKBasicLoginViewController *)selfCopy delegate];
  [(AKBasicLoginControllerDelegate *)delegate basicLoginControllerDidPresent:selfCopy];
  *&v3 = MEMORY[0x277D82BD8](delegate).n128_u64[0];
  [(UITableView *)selfCopy->_tableView reloadData];
  context = [(AKBasicLoginViewController *)selfCopy context];
  isUsernameEditable = [(AKAppleIDAuthenticationInAppContext *)context isUsernameEditable];
  *&v4 = MEMORY[0x277D82BD8](context).n128_u64[0];
  if (isUsernameEditable)
  {
    cellTextField = [(AKBasicLoginTableViewCell *)selfCopy->_usernameCell cellTextField];
    [(UITextField *)cellTextField becomeFirstResponder];
    MEMORY[0x277D82BD8](cellTextField);
  }

  else
  {
    cellTextField2 = [(AKBasicLoginTableViewCell *)selfCopy->_passwordCell cellTextField];
    [(UITextField *)cellTextField2 becomeFirstResponder];
    MEMORY[0x277D82BD8](cellTextField2);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v6 = a2;
  disappearCopy = disappear;
  v4.receiver = self;
  v4.super_class = AKBasicLoginViewController;
  [(OBBaseWelcomeController *)&v4 viewWillDisappear:disappear];
  delegate = [(AKBasicLoginViewController *)selfCopy delegate];
  [(AKBasicLoginControllerDelegate *)delegate basicLoginControllerWillDismiss:selfCopy];
  MEMORY[0x277D82BD8](delegate);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  v12 = a2;
  disappearCopy = disappear;
  v10.receiver = self;
  v10.super_class = AKBasicLoginViewController;
  [(OBBaseWelcomeController *)&v10 viewDidDisappear:disappear];
  delegate = [(AKBasicLoginViewController *)selfCopy delegate];
  [(AKBasicLoginControllerDelegate *)delegate basicLoginControllerDidDismiss:selfCopy];
  *&v3 = MEMORY[0x277D82BD8](delegate).n128_u64[0];
  loginActions = [(AKBasicLoginViewController *)selfCopy loginActions];
  ak_cancelAction = [(AKBasicLoginActions *)loginActions ak_cancelAction];
  MEMORY[0x277D82BD8](ak_cancelAction);
  *&v4 = MEMORY[0x277D82BD8](loginActions).n128_u64[0];
  if (ak_cancelAction)
  {
    loginActions2 = [(AKBasicLoginViewController *)selfCopy loginActions];
    ak_cancelAction2 = [(AKBasicLoginActions *)loginActions2 ak_cancelAction];
    ak_cancelAction2[2]();
    MEMORY[0x277D82BD8](ak_cancelAction2);
    MEMORY[0x277D82BD8](loginActions2);
  }
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  v23 = a2;
  view = [(AKBasicLoginViewController *)self view];
  [view layoutIfNeeded];
  tableView = [(AKBasicLoginViewController *)selfCopy tableView];
  [(UITableView *)tableView contentSize];
  v21 = v2;
  v22 = v3;
  v10 = v3;
  heightAnchor = [(AKBasicLoginViewController *)selfCopy heightAnchor];
  [(NSLayoutConstraint *)heightAnchor setConstant:v10];
  MEMORY[0x277D82BD8](heightAnchor);
  contentView = [(AKBasicLoginViewController *)selfCopy contentView];
  [contentView frame];
  v17 = v4;
  v18 = v5;
  *&v19 = v6;
  *(&v19 + 1) = v7;
  v20 = v19;
  contentScrollView = [(AKBasicLoginViewController *)selfCopy contentScrollView];
  v16 = v19;
  [contentScrollView setContentSize:v19];
  MEMORY[0x277D82BD8](contentScrollView);
  *&v8 = MEMORY[0x277D82BD8](contentView).n128_u64[0];
  v15.receiver = selfCopy;
  v15.super_class = AKBasicLoginViewController;
  [(OBBaseWelcomeController *)&v15 viewDidLayoutSubviews];
}

- (BOOL)isPresentedModally
{
  navigationController = [(AKBasicLoginViewController *)self navigationController];
  v2 = MEMORY[0x277D82BD8](navigationController).n128_u64[0];
  if (navigationController)
  {
    navigationController2 = [(AKBasicLoginViewController *)self navigationController];
    viewControllers = [navigationController2 viewControllers];
    firstObject = [viewControllers firstObject];
    MEMORY[0x277D82BD8](firstObject);
    MEMORY[0x277D82BD8](viewControllers);
    v2 = MEMORY[0x277D82BD8](navigationController2).n128_u64[0];
    if (firstObject != self)
    {
      return 0;
    }
  }

  presentingViewController = [(AKBasicLoginViewController *)self presentingViewController];
  MEMORY[0x277D82BD8](presentingViewController);
  return presentingViewController != 0;
}

- (void)startAnimating
{
  primaryButton = [(AKBasicLoginViewController *)self primaryButton];
  [(OBTrayButton *)primaryButton showsBusyIndicator];
  MEMORY[0x277D82BD8](primaryButton);
}

- (void)stopAnimating
{
  primaryButton = [(AKBasicLoginViewController *)self primaryButton];
  [(OBTrayButton *)primaryButton hidesBusyIndicator];
  MEMORY[0x277D82BD8](primaryButton);
}

- (void)clearPasswordField
{
  passwordCellTextField = [(AKBasicLoginViewController *)self passwordCellTextField];
  [passwordCellTextField setText:0];
  MEMORY[0x277D82BD8](passwordCellTextField);
}

- (void)_cancelPressed:(id)pressed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, pressed);
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
  loginActions = [(AKBasicLoginViewController *)selfCopy loginActions];
  ak_cancelAction = [(AKBasicLoginActions *)loginActions ak_cancelAction];
  MEMORY[0x277D82BD8](ak_cancelAction);
  *&v3 = MEMORY[0x277D82BD8](loginActions).n128_u64[0];
  if (ak_cancelAction)
  {
    loginActions2 = [(AKBasicLoginViewController *)selfCopy loginActions];
    ak_cancelAction2 = [(AKBasicLoginActions *)loginActions2 ak_cancelAction];
    ak_cancelAction2[2]();
    MEMORY[0x277D82BD8](ak_cancelAction2);
    MEMORY[0x277D82BD8](loginActions2);
  }

  objc_storeStrong(location, 0);
}

- (void)_signInPressed:(id)pressed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, pressed);
  usernameCellTextField = [(AKBasicLoginViewController *)selfCopy usernameCellTextField];
  text = [usernameCellTextField text];
  *&v3 = MEMORY[0x277D82BD8](usernameCellTextField).n128_u64[0];
  passwordCellTextField = [(AKBasicLoginViewController *)selfCopy passwordCellTextField];
  text2 = [passwordCellTextField text];
  *&v4 = MEMORY[0x277D82BD8](passwordCellTextField).n128_u64[0];
  passwordHandler = [(AKBasicLoginViewController *)selfCopy passwordHandler];
  *&v5 = MEMORY[0x277D82BD8](passwordHandler).n128_u64[0];
  if (passwordHandler)
  {
    passwordHandler2 = [(AKBasicLoginViewController *)selfCopy passwordHandler];
    passwordHandler2[2](passwordHandler2, text2);
    *&v6 = MEMORY[0x277D82BD8](passwordHandler2).n128_u64[0];
    [(AKBasicLoginViewController *)selfCopy setPasswordHandler:0, v6];
  }

  else
  {
    loginActions = [(AKBasicLoginViewController *)selfCopy loginActions];
    authenticateAction = [(AKBasicLoginActions *)loginActions authenticateAction];
    MEMORY[0x277D82BD8](authenticateAction);
    *&v7 = MEMORY[0x277D82BD8](loginActions).n128_u64[0];
    if (authenticateAction)
    {
      v8 = [(AKBasicLoginViewController *)selfCopy _formatUsernameAsPhoneNumberIfNeeded:text, v7];
      v9 = text;
      text = v8;
      *&v10 = MEMORY[0x277D82BD8](v9).n128_u64[0];
      loginActions2 = [(AKBasicLoginViewController *)selfCopy loginActions];
      authenticateAction2 = [(AKBasicLoginActions *)loginActions2 authenticateAction];
      authenticateAction2[2](authenticateAction2, text, text2);
      MEMORY[0x277D82BD8](authenticateAction2);
      MEMORY[0x277D82BD8](loginActions2);
    }
  }

  objc_storeStrong(&text2, 0);
  objc_storeStrong(&text, 0);
  objc_storeStrong(location, 0);
}

- (id)_title
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(AKBasicLoginViewController *)self context];
  title = [location[0] title];
  *&v2 = MEMORY[0x277D82BD8](title).n128_u64[0];
  if (title)
  {
    title2 = [location[0] title];
  }

  else if ([location[0] isUsernameEditable] || objc_msgSend(location[0], "shouldAllowAppleIDCreation"))
  {
    v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKitUI"];
    title2 = [v6 localizedStringForKey:@"APPLE_ID_SIGN_IN_HEADER_REBRAND" value:&stru_28358EF68 table:@"Localizable"];
    MEMORY[0x277D82BD8](v6);
  }

  else
  {
    currentDevice = [MEMORY[0x277CF0218] currentDevice];
    v15 = 0;
    v13 = 0;
    v11 = 0;
    v9 = 0;
    if ([currentDevice isMultiUserMode])
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

    title2 = v3;
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

    MEMORY[0x277D82BD8](currentDevice);
  }

  objc_storeStrong(location, 0);
  v4 = title2;

  return v4;
}

- (BOOL)_shouldShowPassword
{
  context = [(AKBasicLoginViewController *)self context];
  isPasswordFieldVisible = 1;
  if (([(AKAppleIDAuthenticationInAppContext *)context _requiresPasswordInput]& 1) == 0)
  {
    isPasswordFieldVisible = [(AKBasicLoginViewController *)self isPasswordFieldVisible];
  }

  MEMORY[0x277D82BD8](context);
  return isPasswordFieldVisible;
}

- (id)_loginOptions
{
  v58[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  if (!self->_loginOptions)
  {
    v40 = objc_alloc_init(MEMORY[0x277D75D18]);
    loginOptions = selfCopy->_loginOptions;
    selfCopy->_loginOptions = v40;
    MEMORY[0x277D82BD8](loginOptions);
    v39 = [AKBasicLoginOptionsViewController alloc];
    context = [(AKBasicLoginViewController *)selfCopy context];
    v38 = [(AKBasicLoginOptionsViewController *)v39 initWithContext:?];
    [(AKBasicLoginViewController *)selfCopy setLoginOptionsViewController:v38];
    MEMORY[0x277D82BD8](v38);
    loginOptionsViewController = [(AKBasicLoginViewController *)selfCopy loginOptionsViewController];
    view = [(AKBasicLoginOptionsViewController *)loginOptionsViewController view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    MEMORY[0x277D82BD8](view);
    loginOptionsViewController2 = [(AKBasicLoginViewController *)selfCopy loginOptionsViewController];
    [(AKBasicLoginViewController *)selfCopy addChildViewController:?];
    MEMORY[0x277D82BD8](loginOptionsViewController2);
    objc_initWeak(location, selfCopy);
    v50 = MEMORY[0x277D85DD0];
    v51 = -1073741824;
    v52 = 0;
    v53 = __43__AKBasicLoginViewController__loginOptions__block_invoke;
    v54 = &unk_2784A6770;
    objc_copyWeak(&v55, location);
    loginOptionsViewController3 = [(AKBasicLoginViewController *)selfCopy loginOptionsViewController];
    [(AKBasicLoginOptionsViewController *)loginOptionsViewController3 setCreateIDAction:&v50];
    v49 = 0;
    MEMORY[0x277D82BD8](loginOptionsViewController3);
    v43 = MEMORY[0x277D85DD0];
    v44 = -1073741824;
    v45 = 0;
    v46 = __43__AKBasicLoginViewController__loginOptions__block_invoke_62;
    v47 = &unk_2784A6770;
    objc_copyWeak(&v48, location);
    loginOptionsViewController4 = [(AKBasicLoginViewController *)selfCopy loginOptionsViewController];
    [(AKBasicLoginOptionsViewController *)loginOptionsViewController4 setForgotAction:&v43];
    v42 = 0;
    *&v3 = MEMORY[0x277D82BD8](loginOptionsViewController4).n128_u64[0];
    [(UIView *)selfCopy->_loginOptions setTranslatesAutoresizingMaskIntoConstraints:0, v3];
    v31 = selfCopy->_loginOptions;
    loginOptionsViewController5 = [(AKBasicLoginViewController *)selfCopy loginOptionsViewController];
    view2 = [(AKBasicLoginOptionsViewController *)loginOptionsViewController5 view];
    [(UIView *)v31 addSubview:?];
    MEMORY[0x277D82BD8](view2);
    *&v4 = MEMORY[0x277D82BD8](loginOptionsViewController5).n128_u64[0];
    loginOptionsViewController6 = [(AKBasicLoginViewController *)selfCopy loginOptionsViewController];
    [(AKBasicLoginOptionsViewController *)loginOptionsViewController6 didMoveToParentViewController:selfCopy];
    *&v5 = MEMORY[0x277D82BD8](loginOptionsViewController6).n128_u64[0];
    loginOptionsViewController7 = [(AKBasicLoginViewController *)selfCopy loginOptionsViewController];
    view3 = [(AKBasicLoginOptionsViewController *)loginOptionsViewController7 view];
    topAnchor = [view3 topAnchor];
    topAnchor2 = [(UIView *)selfCopy->_loginOptions topAnchor];
    v23 = [topAnchor constraintEqualToAnchor:?];
    v58[0] = v23;
    loginOptionsViewController8 = [(AKBasicLoginViewController *)selfCopy loginOptionsViewController];
    view4 = [(AKBasicLoginOptionsViewController *)loginOptionsViewController8 view];
    bottomAnchor = [view4 bottomAnchor];
    bottomAnchor2 = [(UIView *)selfCopy->_loginOptions bottomAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:?];
    v58[1] = v18;
    loginOptionsViewController9 = [(AKBasicLoginViewController *)selfCopy loginOptionsViewController];
    view5 = [(AKBasicLoginOptionsViewController *)loginOptionsViewController9 view];
    leadingAnchor = [view5 leadingAnchor];
    leadingAnchor2 = [(UIView *)selfCopy->_loginOptions leadingAnchor];
    v13 = [leadingAnchor constraintEqualToAnchor:20.0 constant:?];
    v58[2] = v13;
    loginOptionsViewController10 = [(AKBasicLoginViewController *)selfCopy loginOptionsViewController];
    view6 = [(AKBasicLoginOptionsViewController *)loginOptionsViewController10 view];
    trailingAnchor = [view6 trailingAnchor];
    trailingAnchor2 = [(UIView *)selfCopy->_loginOptions trailingAnchor];
    v8 = [trailingAnchor constraintEqualToAnchor:-20.0 constant:?];
    v58[3] = v8;
    v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:4];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](trailingAnchor2);
    MEMORY[0x277D82BD8](trailingAnchor);
    MEMORY[0x277D82BD8](view6);
    MEMORY[0x277D82BD8](loginOptionsViewController10);
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](leadingAnchor2);
    MEMORY[0x277D82BD8](leadingAnchor);
    MEMORY[0x277D82BD8](view5);
    MEMORY[0x277D82BD8](loginOptionsViewController9);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](bottomAnchor2);
    MEMORY[0x277D82BD8](bottomAnchor);
    MEMORY[0x277D82BD8](view4);
    MEMORY[0x277D82BD8](loginOptionsViewController8);
    MEMORY[0x277D82BD8](v23);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](topAnchor);
    MEMORY[0x277D82BD8](view3);
    [MEMORY[0x277CCAAD0] activateConstraints:{v41, MEMORY[0x277D82BD8](loginOptionsViewController7).n128_f64[0]}];
    objc_storeStrong(&v41, 0);
    objc_destroyWeak(&v48);
    objc_destroyWeak(&v55);
    objc_destroyWeak(location);
  }

  *MEMORY[0x277D85DE8];
  v6 = selfCopy->_loginOptions;

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
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setHidesBackButton:1];
  buttonTray = [(AKBasicLoginViewController *)self buttonTray];
  _signInTrayButton = [(AKBasicLoginViewController *)self _signInTrayButton];
  [buttonTray addButton:?];
  MEMORY[0x277D82BD8](_signInTrayButton);
  buttonTray2 = [(AKBasicLoginViewController *)self buttonTray];
  _cancelTrayButton = [(AKBasicLoginViewController *)self _cancelTrayButton];
  [buttonTray2 addButton:?];
  MEMORY[0x277D82BD8](_cancelTrayButton);
  MEMORY[0x277D82BD8](buttonTray2);
}

- (id)_cancelTrayButton
{
  if (!self->_secondaryButton)
  {
    linkButton = [MEMORY[0x277D37650] linkButton];
    secondaryButton = self->_secondaryButton;
    self->_secondaryButton = linkButton;
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
    boldButton = [MEMORY[0x277D37618] boldButton];
    primaryButton = self->_primaryButton;
    self->_primaryButton = boldButton;
    [(OBTrayButton *)self->_primaryButton addTarget:self action:sel__signInPressed_ forControlEvents:64, MEMORY[0x277D82BD8](primaryButton).n128_f64[0]];
    v7 = self->_primaryButton;
    WeakRetained = objc_loadWeakRetained(&self->_context);
    defaultButtonString = [WeakRetained defaultButtonString];
    v12 = 0;
    v10 = 0;
    if (defaultButtonString)
    {
      v6 = defaultButtonString;
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

    MEMORY[0x277D82BD8](defaultButtonString);
    MEMORY[0x277D82BD8](WeakRetained);
  }

  v4 = self->_primaryButton;

  return v4;
}

- (void)cancelButtonTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  [(AKBasicLoginViewController *)selfCopy dismissViewControllerAnimated:1 completion:0];
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
  defaultButtonString = [WeakRetained defaultButtonString];
  v9 = 0;
  v7 = 0;
  if (defaultButtonString)
  {
    v3 = defaultButtonString;
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

  MEMORY[0x277D82BD8](defaultButtonString);
  MEMORY[0x277D82BD8](WeakRetained);

  return v12;
}

- (id)_formatUsernameAsPhoneNumberIfNeeded:(id)needed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, needed);
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
      usernameCellTextField = [(AKBasicLoginViewController *)selfCopy usernameCellTextField];
      [usernameCellTextField setText:v7];
      MEMORY[0x277D82BD8](usernameCellTextField);
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

- (void)context:(id)context needsPasswordWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v20 = 0;
  objc_storeStrong(&v20, completion);
  if ([(AKBasicLoginViewController *)selfCopy isPasswordFieldVisible])
  {
    [(AKBasicLoginViewController *)selfCopy setPasswordHandler:v20];
    v19 = 1;
  }

  else
  {
    [(AKBasicLoginViewController *)selfCopy setPasswordHandler:v20];
    v12 = MEMORY[0x277D85DD0];
    v13 = -1073741824;
    v14 = 0;
    v15 = __66__AKBasicLoginViewController_context_needsPasswordWithCompletion___block_invoke;
    v16 = &unk_2784A62B8;
    v17 = MEMORY[0x277D82BE0](selfCopy);
    v18 = MEMORY[0x223DB6C90](&v12);
    [(AKBasicLoginViewController *)selfCopy setIsPasswordFieldVisible:1];
    tableView = [(AKBasicLoginViewController *)selfCopy tableView];
    v6 = MEMORY[0x277D85DD0];
    v7 = -1073741824;
    v8 = 0;
    v9 = __66__AKBasicLoginViewController_context_needsPasswordWithCompletion___block_invoke_2;
    v10 = &unk_2784A5C90;
    v11 = MEMORY[0x277D82BE0](selfCopy);
    [(UITableView *)tableView performBatchUpdates:&v6 completion:v18];
    MEMORY[0x277D82BD8](tableView);
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
  selfCopy = self;
  v24[1] = a2;
  if ([(AKBasicLoginViewController *)self isPasswordFieldVisible])
  {
    [(AKBasicLoginViewController *)selfCopy setIsPasswordFieldVisible:0];
    passwordCellTextField = [(AKBasicLoginViewController *)selfCopy passwordCellTextField];
    [passwordCellTextField setText:?];
    [(AKBasicLoginViewController *)selfCopy setPasswordHandler:0, MEMORY[0x277D82BD8](passwordCellTextField).n128_f64[0]];
    v24[0] = [MEMORY[0x277CCAA70] indexPathForRow:1 inSection:0];
    section = [v24[0] section];
    tableView = [(AKBasicLoginViewController *)selfCopy tableView];
    v22 = 0;
    v8 = 0;
    if (section < [(UITableView *)tableView numberOfSections])
    {
      v4 = [v24[0] row];
      tableView2 = [(AKBasicLoginViewController *)selfCopy tableView];
      v22 = 1;
      v8 = v4 < -[UITableView numberOfRowsInSection:](tableView2, "numberOfRowsInSection:", [v24[0] section]);
    }

    if (v22)
    {
      MEMORY[0x277D82BD8](tableView2);
    }

    *&v2 = MEMORY[0x277D82BD8](tableView).n128_u64[0];
    if (v8)
    {
      tableView3 = [(AKBasicLoginViewController *)selfCopy tableView];
      v15 = MEMORY[0x277D85DD0];
      v16 = -1073741824;
      v17 = 0;
      v18 = __56__AKBasicLoginViewController__setPasswordHiddenIfNeeded__block_invoke;
      v19 = &unk_2784A6420;
      v20 = MEMORY[0x277D82BE0](selfCopy);
      v21 = MEMORY[0x277D82BE0](v24[0]);
      v9 = MEMORY[0x277D85DD0];
      v10 = -1073741824;
      v11 = 0;
      v12 = __56__AKBasicLoginViewController__setPasswordHiddenIfNeeded__block_invoke_2;
      v13 = &unk_2784A62B8;
      v14 = MEMORY[0x277D82BE0](selfCopy);
      [(UITableView *)tableView3 performBatchUpdates:&v15 completion:&v9];
      MEMORY[0x277D82BD8](tableView3);
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

- (void)initializePasswordCellTextField:(id)field
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, field);
  v4 = location[0];
  v6 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKitUI"];
  v5 = [v6 localizedStringForKey:@"PASSWORD_PLACEHOLDER" value:&stru_28358EF68 table:@"Localizable"];
  [v4 setPlaceholder:?];
  MEMORY[0x277D82BD8](v5);
  *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  [location[0] setTextContentType:{*MEMORY[0x277D77018], v3}];
  [location[0] setSecureTextEntry:1];
  [location[0] setReturnKeyType:9];
  [location[0] setDelegate:selfCopy];
  objc_storeStrong(location, 0);
}

- (void)initializeUsernameCellTextField:(id)field
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, field);
  v12 = location[0];
  v14 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKitUI"];
  v13 = [v14 localizedStringForKey:@"EMAIL_OR_PHONE_PLACEHOLDER" value:&stru_28358EF68 table:@"Localizable"];
  [v12 setPlaceholder:?];
  MEMORY[0x277D82BD8](v13);
  *&v3 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  [location[0] setTextContentType:{*MEMORY[0x277D77018], v3}];
  WeakRetained = objc_loadWeakRetained(&selfCopy->_context);
  username = [WeakRetained username];
  v17 = [username length] != 0;
  isUsernameEditable = [WeakRetained isUsernameEditable];
  if (v17)
  {
    v10 = location[0];
    username2 = [WeakRetained username];
    [v10 setText:?];
    *&v4 = MEMORY[0x277D82BD8](username2).n128_u64[0];
    [(AKBasicLoginViewController *)selfCopy setIsPasswordFieldVisible:1, v4];
  }

  if (isUsernameEditable)
  {
    [location[0] setAutocapitalizationType:0];
    [location[0] setKeyboardType:7];
    [location[0] setReturnKeyType:11];
    [location[0] setDelegate:selfCopy];
  }

  if (v17 && (isUsernameEditable & 1) == 1)
  {
    primaryButton = [(AKBasicLoginViewController *)selfCopy primaryButton];
    [(OBTrayButton *)primaryButton setEnabled:1];
    MEMORY[0x277D82BD8](primaryButton);
  }

  else if (v17 && (isUsernameEditable & 1) == 0)
  {
    v6 = location[0];
    username3 = [WeakRetained username];
    [v6 setText:?];
    *&v5 = MEMORY[0x277D82BD8](username3).n128_u64[0];
    [location[0] setEnabled:{0, v5}];
    v8 = +[AKBasicLoginAppearance disabledTableCellBackgroundColor];
    [(AKBasicLoginTableViewCell *)selfCopy->_usernameCell setBackgroundColor:?];
    MEMORY[0x277D82BD8](v8);
  }

  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(location, 0);
}

- (void)_initializeView
{
  v76[11] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v74[1] = a2;
  headerView = [(AKBasicLoginViewController *)self headerView];
  _title = [(AKBasicLoginViewController *)selfCopy _title];
  [headerView setTitle:?];
  MEMORY[0x277D82BD8](_title);
  contentScrollView = [(AKBasicLoginViewController *)selfCopy contentScrollView];
  [contentScrollView _setHiddenPocketEdges:4];
  headerView2 = [(AKBasicLoginViewController *)selfCopy headerView];
  context = [(AKBasicLoginViewController *)selfCopy context];
  _interpolatedReasonWithBlame = [(AKAppleIDAuthenticationInAppContext *)context _interpolatedReasonWithBlame];
  [headerView2 setDetailText:?];
  MEMORY[0x277D82BD8](_interpolatedReasonWithBlame);
  MEMORY[0x277D82BD8](context);
  context2 = [(AKBasicLoginViewController *)selfCopy context];
  displayImageData = [(AKAppleIDAuthenticationInAppContext *)context2 displayImageData];
  MEMORY[0x277D82BD8](displayImageData);
  *&v2 = MEMORY[0x277D82BD8](context2).n128_u64[0];
  if (displayImageData)
  {
    v57 = MEMORY[0x277D755B8];
    context3 = [(AKBasicLoginViewController *)selfCopy context];
    displayImageData2 = [(AKAppleIDAuthenticationInAppContext *)context3 displayImageData];
    v74[0] = [v57 imageWithData:?];
    MEMORY[0x277D82BD8](displayImageData2);
    *&v3 = MEMORY[0x277D82BD8](context3).n128_u64[0];
    headerView3 = [(AKBasicLoginViewController *)selfCopy headerView];
    v60 = v74[0];
    v62 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v61 = [v62 localizedStringForKey:@"HEADER_ICON_ACCESSIBILITY_LABEL" value:&stru_28358EF68 table:@"Localizable"];
    [headerView3 setIcon:v60 accessibilityLabel:?];
    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](v62);
    MEMORY[0x277D82BD8](headerView3);
    objc_storeStrong(v74, 0);
  }

  _tableView = [(AKBasicLoginViewController *)selfCopy _tableView];
  contentView = [(AKBasicLoginViewController *)selfCopy contentView];
  [contentView addSubview:_tableView];
  *&v4 = MEMORY[0x277D82BD8](contentView).n128_u64[0];
  _loginOptions = [(AKBasicLoginViewController *)selfCopy _loginOptions];
  contentView2 = [(AKBasicLoginViewController *)selfCopy contentView];
  [contentView2 addSubview:_loginOptions];
  *&v5 = MEMORY[0x277D82BD8](contentView2).n128_u64[0];
  v8 = MEMORY[0x277CCAAD0];
  headerView4 = [(AKBasicLoginViewController *)selfCopy headerView];
  leadingAnchor = [headerView4 leadingAnchor];
  view = [(AKBasicLoginViewController *)selfCopy view];
  leadingAnchor2 = [view leadingAnchor];
  v52 = [leadingAnchor constraintEqualToAnchor:20.0 constant:?];
  v76[0] = v52;
  headerView5 = [(AKBasicLoginViewController *)selfCopy headerView];
  trailingAnchor = [headerView5 trailingAnchor];
  view2 = [(AKBasicLoginViewController *)selfCopy view];
  trailingAnchor2 = [view2 trailingAnchor];
  v47 = [trailingAnchor constraintEqualToAnchor:-20.0 constant:?];
  v76[1] = v47;
  contentView3 = [(AKBasicLoginViewController *)selfCopy contentView];
  leadingAnchor3 = [contentView3 leadingAnchor];
  view3 = [(AKBasicLoginViewController *)selfCopy view];
  leadingAnchor4 = [view3 leadingAnchor];
  v42 = [leadingAnchor3 constraintEqualToAnchor:?];
  v76[2] = v42;
  contentView4 = [(AKBasicLoginViewController *)selfCopy contentView];
  trailingAnchor3 = [contentView4 trailingAnchor];
  view4 = [(AKBasicLoginViewController *)selfCopy view];
  trailingAnchor4 = [view4 trailingAnchor];
  v37 = [trailingAnchor3 constraintEqualToAnchor:?];
  v76[3] = v37;
  contentView5 = [(AKBasicLoginViewController *)selfCopy contentView];
  topAnchor = [contentView5 topAnchor];
  topAnchor2 = [_tableView topAnchor];
  v33 = [topAnchor constraintEqualToAnchor:?];
  v76[4] = v33;
  contentView6 = [(AKBasicLoginViewController *)selfCopy contentView];
  leadingAnchor5 = [contentView6 leadingAnchor];
  leadingAnchor6 = [_tableView leadingAnchor];
  v29 = [leadingAnchor5 constraintEqualToAnchor:?];
  v76[5] = v29;
  contentView7 = [(AKBasicLoginViewController *)selfCopy contentView];
  trailingAnchor5 = [contentView7 trailingAnchor];
  trailingAnchor6 = [_tableView trailingAnchor];
  v25 = [trailingAnchor5 constraintEqualToAnchor:?];
  v76[6] = v25;
  contentView8 = [(AKBasicLoginViewController *)selfCopy contentView];
  leadingAnchor7 = [contentView8 leadingAnchor];
  leadingAnchor8 = [_loginOptions leadingAnchor];
  v21 = [leadingAnchor7 constraintEqualToAnchor:?];
  v76[7] = v21;
  contentView9 = [(AKBasicLoginViewController *)selfCopy contentView];
  trailingAnchor7 = [contentView9 trailingAnchor];
  trailingAnchor8 = [_loginOptions trailingAnchor];
  v17 = [trailingAnchor7 constraintEqualToAnchor:?];
  v76[8] = v17;
  contentView10 = [(AKBasicLoginViewController *)selfCopy contentView];
  bottomAnchor = [contentView10 bottomAnchor];
  bottomAnchor2 = [_loginOptions bottomAnchor];
  v13 = [bottomAnchor constraintEqualToAnchor:?];
  v76[9] = v13;
  topAnchor3 = [_loginOptions topAnchor];
  bottomAnchor3 = [_tableView bottomAnchor];
  v10 = [topAnchor3 constraintEqualToAnchor:?];
  v76[10] = v10;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:11];
  [v8 activateConstraints:?];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](bottomAnchor3);
  MEMORY[0x277D82BD8](topAnchor3);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](contentView10);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](trailingAnchor8);
  MEMORY[0x277D82BD8](trailingAnchor7);
  MEMORY[0x277D82BD8](contentView9);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](leadingAnchor8);
  MEMORY[0x277D82BD8](leadingAnchor7);
  MEMORY[0x277D82BD8](contentView8);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](trailingAnchor6);
  MEMORY[0x277D82BD8](trailingAnchor5);
  MEMORY[0x277D82BD8](contentView7);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](leadingAnchor6);
  MEMORY[0x277D82BD8](leadingAnchor5);
  MEMORY[0x277D82BD8](contentView6);
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](topAnchor);
  MEMORY[0x277D82BD8](contentView5);
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](trailingAnchor4);
  MEMORY[0x277D82BD8](view4);
  MEMORY[0x277D82BD8](trailingAnchor3);
  MEMORY[0x277D82BD8](contentView4);
  MEMORY[0x277D82BD8](v42);
  MEMORY[0x277D82BD8](leadingAnchor4);
  MEMORY[0x277D82BD8](view3);
  MEMORY[0x277D82BD8](leadingAnchor3);
  MEMORY[0x277D82BD8](contentView3);
  MEMORY[0x277D82BD8](v47);
  MEMORY[0x277D82BD8](trailingAnchor2);
  MEMORY[0x277D82BD8](view2);
  MEMORY[0x277D82BD8](trailingAnchor);
  MEMORY[0x277D82BD8](headerView5);
  MEMORY[0x277D82BD8](v52);
  MEMORY[0x277D82BD8](leadingAnchor2);
  MEMORY[0x277D82BD8](view);
  MEMORY[0x277D82BD8](leadingAnchor);
  MEMORY[0x277D82BD8](headerView4);
  objc_storeStrong(&_loginOptions, 0);
  objc_storeStrong(&_tableView, 0);
  *MEMORY[0x277D85DE8];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  if ([(AKBasicLoginViewController *)selfCopy _shouldShowPassword])
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v7 = 0;
  objc_storeStrong(&v7, path);
  if ([v7 row])
  {
    if ([v7 row] == 1)
    {
      _passwordCell = [(AKBasicLoginViewController *)selfCopy _passwordCell];
    }

    else
    {
      _passwordCell = 0;
    }
  }

  else
  {
    _passwordCell = [(AKBasicLoginViewController *)selfCopy _usernameCell];
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
  v4 = _passwordCell;

  return v4;
}

- (id)passwordCellTextField
{
  passwordCell = [(AKBasicLoginViewController *)self passwordCell];
  cellTextField = [(AKBasicLoginTableViewCell *)passwordCell cellTextField];
  MEMORY[0x277D82BD8](passwordCell);

  return cellTextField;
}

- (id)usernameCellTextField
{
  usernameCell = [(AKBasicLoginViewController *)self usernameCell];
  cellTextField = [(AKBasicLoginTableViewCell *)usernameCell cellTextField];
  MEMORY[0x277D82BD8](usernameCell);

  return cellTextField;
}

- (BOOL)textFieldShouldReturn:(id)return
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, return);
  [(AKBasicLoginViewController *)selfCopy _signInPressed:location[0]];
  objc_storeStrong(location, 0);
  return 1;
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  rangeCopy = range;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, field);
  v20 = 0;
  objc_storeStrong(&v20, string);
  v12 = location[0];
  usernameCell = [(AKBasicLoginViewController *)selfCopy usernameCell];
  cellTextField = [(AKBasicLoginTableViewCell *)usernameCell cellTextField];
  v15 = [v12 isEqual:?];
  MEMORY[0x277D82BD8](cellTextField);
  *&v5 = MEMORY[0x277D82BD8](usernameCell).n128_u64[0];
  if (v15)
  {
    context = [(AKBasicLoginViewController *)selfCopy context];
    username = [context username];
    *&v6 = MEMORY[0x277D82BD8](username).n128_u64[0];
    if (username)
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
      [context setUsername:0];
    }

    [(AKBasicLoginViewController *)selfCopy _setPasswordHiddenIfNeeded];
    objc_storeStrong(&context, 0);
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
    cellTextField = [(AKBasicLoginTableViewCell *)self->_usernameCell cellTextField];
    [(AKBasicLoginViewController *)self initializeUsernameCellTextField:?];
    MEMORY[0x277D82BD8](cellTextField);
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
    cellTextField = [(AKBasicLoginTableViewCell *)self->_passwordCell cellTextField];
    [(AKBasicLoginViewController *)self initializePasswordCellTextField:?];
    [(AKBasicLoginViewController *)self setIsPasswordFieldVisible:1, MEMORY[0x277D82BD8](cellTextField).n128_f64[0]];
  }

  v4 = self->_passwordCell;

  return v4;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v13 = 0;
  objc_storeStrong(&v13, path);
  traitCollection = [(AKBasicLoginViewController *)selfCopy traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
  MEMORY[0x277D82BD8](preferredContentSizeCategory);
  *&v4 = MEMORY[0x277D82BD8](traitCollection).n128_u64[0];
  if (IsAccessibilityCategory)
  {
    v16 = *MEMORY[0x277D76F30];
  }

  else
  {
    mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
    isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
    v6 = 52.0;
    if ((isAuthKitSolariumFeatureEnabled & 1) == 0)
    {
      v6 = 44.0;
    }

    v16 = v6;
    MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
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
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UITableView *)self->_tableView setBackgroundColor:?];
    [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0, MEMORY[0x277D82BD8](clearColor).n128_f64[0]];
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
    heightAnchor = [(UITableView *)self->_tableView heightAnchor];
    tableView = [(AKBasicLoginViewController *)self tableView];
    [(UITableView *)tableView contentSize];
    v15 = [heightAnchor constraintEqualToConstant:v5];
    [(AKBasicLoginViewController *)self setHeightAnchor:?];
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](tableView);
    heightAnchor2 = [(AKBasicLoginViewController *)self heightAnchor];
    [(NSLayoutConstraint *)heightAnchor2 setActive:1];
    MEMORY[0x277D82BD8](heightAnchor2);
  }

  v6 = self->_tableView;

  return v6;
}

- (void)_keyboardDidShow:(id)show
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, show);
  userInfo = [location[0] userInfo];
  v4 = [userInfo objectForKey:*MEMORY[0x277D76BB8]];
  [v4 CGRectValue];
  v5 = v3;
  MEMORY[0x277D82BD8](v4);
  [(AKBasicLoginViewController *)selfCopy _setContentInset:v5];
  objc_storeStrong(&userInfo, 0);
  objc_storeStrong(location, 0);
}

- (void)_keyboardDidHide:(id)hide
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, hide);
  [(AKBasicLoginViewController *)selfCopy _setContentInset:0.0];
  objc_storeStrong(location, 0);
}

- (void)_setContentInset:(double)inset
{
  contentScrollView = [(AKBasicLoginViewController *)self contentScrollView];
  [contentScrollView contentInset];
  v22 = v3;
  v23 = v4;
  v24 = v5;
  MEMORY[0x277D82BD8](contentScrollView);
  contentScrollView2 = [(AKBasicLoginViewController *)self contentScrollView];
  [contentScrollView2 setContentInset:{v22, v23, inset, v24}];
  MEMORY[0x277D82BD8](contentScrollView2);
  contentScrollView3 = [(AKBasicLoginViewController *)self contentScrollView];
  [contentScrollView3 setScrollIndicatorInsets:{v22, v23, inset, v24}];
  MEMORY[0x277D82BD8](contentScrollView3);
  if (inset > 0.0)
  {
    contentScrollView4 = [(AKBasicLoginViewController *)self contentScrollView];
    [contentScrollView4 contentOffset];
    v20 = v6;
    v21 = v7;
    contentScrollView5 = [(AKBasicLoginViewController *)self contentScrollView];
    [contentScrollView5 contentSize];
    v14 = v8;
    contentScrollView6 = [(AKBasicLoginViewController *)self contentScrollView];
    [contentScrollView6 bounds];
    v16 = v14 - (v9 - inset);
    MEMORY[0x277D82BD8](contentScrollView6);
    MEMORY[0x277D82BD8](contentScrollView5);
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
      contentScrollView7 = [(AKBasicLoginViewController *)self contentScrollView];
      [contentScrollView7 setContentOffset:1 animated:{v20, v11}];
      MEMORY[0x277D82BD8](contentScrollView7);
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