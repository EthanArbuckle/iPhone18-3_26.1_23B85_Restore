@interface AKBasicLoginOptionsViewController
- (AKAppleIDAuthenticationInAppContext)context;
- (AKBasicLoginOptionsViewController)initWithContext:(id)context;
- (BOOL)_shouldHideCreateButton;
- (id)_createLinkButtonWithSelector:(SEL)selector;
- (void)_configureButtonForFontAdjustment:(id)adjustment;
- (void)_refreshCreateAppleIDButton;
- (void)_setupPrivacyLinkControllerWithContext:(id)context;
- (void)_setupStackView;
- (void)createPressed:(id)pressed;
- (void)forgotPressed:(id)pressed;
- (void)viewDidLoad;
@end

@implementation AKBasicLoginOptionsViewController

- (AKBasicLoginOptionsViewController)initWithContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v3 = selfCopy;
  selfCopy = 0;
  v14.receiver = v3;
  v14.super_class = AKBasicLoginOptionsViewController;
  selfCopy = [(AKBasicLoginOptionsViewController *)&v14 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeWeak(&selfCopy->_context, location[0]);
    objc_initWeak(&v13, selfCopy);
    queue = dispatch_get_global_queue(33, 0);
    v7 = MEMORY[0x277D85DD0];
    v8 = -1073741824;
    v9 = 0;
    v10 = __53__AKBasicLoginOptionsViewController_initWithContext___block_invoke;
    v11 = &unk_2784A6770;
    objc_copyWeak(&v12, &v13);
    dispatch_async(queue, &v7);
    MEMORY[0x277D82BD8](queue);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v13);
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

void __53__AKBasicLoginOptionsViewController_initWithContext___block_invoke(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_opt_new();
  v2 = location[0];
  v3 = MEMORY[0x277D85DD0];
  v4 = -1073741824;
  v5 = 0;
  v6 = __53__AKBasicLoginOptionsViewController_initWithContext___block_invoke_2;
  v7 = &unk_2784A6748;
  objc_copyWeak(&v8, a1 + 4);
  [v2 isCreateAppleIDAllowedWithCompletion:&v3];
  objc_destroyWeak(&v8);
  objc_storeStrong(location, 0);
}

void __53__AKBasicLoginOptionsViewController_initWithContext___block_invoke_2(uint64_t a1, char a2, id obj)
{
  v17 = a1;
  v16 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v14 = a1;
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __53__AKBasicLoginOptionsViewController_initWithContext___block_invoke_3;
  v11 = &unk_2784A6720;
  objc_copyWeak(&v12, (a1 + 32));
  v13 = v16 & 1;
  dispatch_async(queue, &v7);
  MEMORY[0x277D82BD8](queue);
  objc_destroyWeak(&v12);
  objc_storeStrong(&location, 0);
}

void __53__AKBasicLoginOptionsViewController_initWithContext___block_invoke_3(uint64_t a1)
{
  v2[2] = a1;
  v2[1] = a1;
  v2[0] = objc_loadWeakRetained((a1 + 32));
  [v2[0] setIsCreateAppleIDAllowed:*(a1 + 40) & 1];
  [v2[0] _refreshCreateAppleIDButton];
  objc_storeStrong(v2, 0);
}

- (void)viewDidLoad
{
  selfCopy = self;
  v29 = a2;
  v28.receiver = self;
  v28.super_class = AKBasicLoginOptionsViewController;
  [(AKBasicLoginOptionsViewController *)&v28 viewDidLoad];
  context = [(AKBasicLoginOptionsViewController *)selfCopy context];
  [(AKBasicLoginOptionsViewController *)selfCopy _refreshCreateAppleIDButton];
  v12 = [(AKBasicLoginOptionsViewController *)selfCopy _createLinkButtonWithSelector:sel_forgotPressed_];
  [(AKBasicLoginOptionsViewController *)selfCopy setForgotButton:?];
  *&v2 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  v13 = [(AKBasicLoginOptionsViewController *)selfCopy _createLinkButtonWithSelector:sel_createPressed_, v2];
  [(AKBasicLoginOptionsViewController *)selfCopy setCreateButton:?];
  *&v3 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  [(AKBasicLoginOptionsViewController *)selfCopy _setupStackView];
  v14 = selfCopy;
  forgotButton = [(AKBasicLoginOptionsViewController *)selfCopy forgotButton];
  [(AKBasicLoginOptionsViewController *)v14 _configureButtonForFontAdjustment:?];
  *&v4 = MEMORY[0x277D82BD8](forgotButton).n128_u64[0];
  v16 = selfCopy;
  createButton = [(AKBasicLoginOptionsViewController *)selfCopy createButton];
  [(AKBasicLoginOptionsViewController *)v16 _configureButtonForFontAdjustment:?];
  *&v5 = MEMORY[0x277D82BD8](createButton).n128_u64[0];
  forgotButton2 = [(AKBasicLoginOptionsViewController *)selfCopy forgotButton];
  v25 = 0;
  v23 = 0;
  v21 = 0;
  v19 = 0;
  if ([(AKAppleIDAuthenticationInAppContext *)context isUsernameEditable])
  {
    v22 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKitUI"];
    v21 = 1;
    v20 = [v22 localizedStringForKey:@"IFORGOT_BUTTON_TITLE" value:&stru_28358EF68 table:@"Localizable"];
    v19 = 1;
    v11 = v20;
  }

  else
  {
    v26 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKitUI"];
    v25 = 1;
    v24 = [v26 localizedStringForKey:@"FORGOT_PASSWORD" value:&stru_28358EF68 table:@"Localizable"];
    v23 = 1;
    v11 = v24;
  }

  [(UIButton *)forgotButton2 setTitle:v11 forState:0];
  if (v19)
  {
    MEMORY[0x277D82BD8](v20);
  }

  if (v21)
  {
    MEMORY[0x277D82BD8](v22);
  }

  if (v23)
  {
    MEMORY[0x277D82BD8](v24);
  }

  if (v25)
  {
    MEMORY[0x277D82BD8](v26);
  }

  *&v6 = MEMORY[0x277D82BD8](forgotButton2).n128_u64[0];
  createButton2 = [(AKBasicLoginOptionsViewController *)selfCopy createButton];
  v9 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKitUI"];
  v8 = [v9 localizedStringForKey:@"CREATE_APPLE_ID_BUTTON_TITLE_REBRAND" value:&stru_28358EF68 table:@"Localizable"];
  [UIButton setTitle:createButton2 forState:"setTitle:forState:"];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  *&v7 = MEMORY[0x277D82BD8](createButton2).n128_u64[0];
  [(AKBasicLoginOptionsViewController *)selfCopy _setupPrivacyLinkControllerWithContext:context, v7];
  [(AKBasicLoginOptionsViewController *)selfCopy setView:selfCopy->_stackView];
  objc_storeStrong(&context, 0);
}

- (void)_setupStackView
{
  v2 = objc_alloc(MEMORY[0x277D75A68]);
  v3 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  stackView = self->_stackView;
  self->_stackView = v3;
  [(UIStackView *)self->_stackView setAlignment:3, MEMORY[0x277D82BD8](stackView).n128_f64[0]];
  [(UIStackView *)self->_stackView setAxis:1];
  [(UIStackView *)self->_stackView setDistribution:0];
  [(UIStackView *)self->_stackView setLayoutMarginsRelativeArrangement:1];
  [(UIStackView *)self->_stackView setSpacing:7.0];
  [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = self->_stackView;
  forgotButton = [(AKBasicLoginOptionsViewController *)self forgotButton];
  [(UIStackView *)v7 addArrangedSubview:?];
  *&v5 = MEMORY[0x277D82BD8](forgotButton).n128_u64[0];
  v9 = self->_stackView;
  createButton = [(AKBasicLoginOptionsViewController *)self createButton];
  [(UIStackView *)v9 addArrangedSubview:?];
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
  *&v6 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  if (isAuthKitSolariumFeatureEnabled)
  {
    [(UIStackView *)self->_stackView setAlignment:1, v6];
  }
}

- (void)_setupPrivacyLinkControllerWithContext:(id)context
{
  v44[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  privacyBundleIdentifier = [location[0] privacyBundleIdentifier];
  MEMORY[0x277D82BD8](privacyBundleIdentifier);
  if (privacyBundleIdentifier)
  {
    v41 = _AKLogSystem();
    v40 = 2;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v33 = v41;
      v34 = v40;
      __os_log_helper_16_0_0(v39);
      _os_log_debug_impl(&dword_222379000, v33, v34, "Showing On Boarding Privacy link...", v39, 2u);
    }

    objc_storeStrong(&v41, 0);
    v26 = MEMORY[0x277D37670];
    privacyBundleIdentifier2 = [location[0] privacyBundleIdentifier];
    v27 = [v26 linkWithBundleIdentifier:?];
    [(AKBasicLoginOptionsViewController *)selfCopy setPrivacyController:?];
    MEMORY[0x277D82BD8](v27);
    *&v3 = MEMORY[0x277D82BD8](privacyBundleIdentifier2).n128_u64[0];
    v29 = selfCopy;
    privacyController = [(AKBasicLoginOptionsViewController *)selfCopy privacyController];
    [(AKBasicLoginOptionsViewController *)v29 addChildViewController:?];
    *&v4 = MEMORY[0x277D82BD8](privacyController).n128_u64[0];
    arrangedSubviews = [(UIStackView *)selfCopy->_stackView arrangedSubviews];
    v32 = [(NSArray *)arrangedSubviews count];
    *&v5 = MEMORY[0x277D82BD8](arrangedSubviews).n128_u64[0];
    if (v32)
    {
      arrangedSubviews2 = [(UIStackView *)selfCopy->_stackView arrangedSubviews];
      arrangedSubviews3 = [(UIStackView *)selfCopy->_stackView arrangedSubviews];
      v38 = [(NSArray *)arrangedSubviews2 objectAtIndexedSubscript:[(NSArray *)arrangedSubviews3 count]- 1];
      MEMORY[0x277D82BD8](arrangedSubviews3);
      *&v6 = MEMORY[0x277D82BD8](arrangedSubviews2).n128_u64[0];
      stackView = selfCopy->_stackView;
      privacyController2 = [(AKBasicLoginOptionsViewController *)selfCopy privacyController];
      view = [(OBPrivacyLinkController *)privacyController2 view];
      [(UIStackView *)stackView addArrangedSubview:?];
      MEMORY[0x277D82BD8](view);
      MEMORY[0x277D82BD8](privacyController2);
      if (v38)
      {
        [(UIStackView *)selfCopy->_stackView setCustomSpacing:v38 afterView:20.0];
      }

      objc_storeStrong(&v38, 0);
    }

    privacyController3 = [(AKBasicLoginOptionsViewController *)selfCopy privacyController];
    [(OBPrivacyLinkController *)privacyController3 didMoveToParentViewController:selfCopy];
    *&v7 = MEMORY[0x277D82BD8](privacyController3).n128_u64[0];
    privacyController4 = [(AKBasicLoginOptionsViewController *)selfCopy privacyController];
    view2 = [(OBPrivacyLinkController *)privacyController4 view];
    leadingAnchor = [view2 leadingAnchor];
    leadingAnchor2 = [(UIStackView *)selfCopy->_stackView leadingAnchor];
    v37 = [leadingAnchor constraintEqualToAnchor:?];
    MEMORY[0x277D82BD8](leadingAnchor2);
    MEMORY[0x277D82BD8](leadingAnchor);
    MEMORY[0x277D82BD8](view2);
    *&v8 = MEMORY[0x277D82BD8](privacyController4).n128_u64[0];
    privacyController5 = [(AKBasicLoginOptionsViewController *)selfCopy privacyController];
    view3 = [(OBPrivacyLinkController *)privacyController5 view];
    trailingAnchor = [view3 trailingAnchor];
    trailingAnchor2 = [(UIStackView *)selfCopy->_stackView trailingAnchor];
    v36 = [trailingAnchor constraintEqualToAnchor:?];
    MEMORY[0x277D82BD8](trailingAnchor2);
    MEMORY[0x277D82BD8](trailingAnchor);
    MEMORY[0x277D82BD8](view3);
    *&v9 = MEMORY[0x277D82BD8](privacyController5).n128_u64[0];
    v19 = MEMORY[0x277CCAAD0];
    v44[0] = v37;
    v44[1] = v36;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:{2, v9}];
    [v19 activateConstraints:?];
    MEMORY[0x277D82BD8](v20);
    objc_storeStrong(&v36, 0);
    objc_storeStrong(&v37, 0);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)forgotPressed:(id)pressed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, pressed);
  forgotAction = [(AKBasicLoginOptionsViewController *)selfCopy forgotAction];
  *&v3 = MEMORY[0x277D82BD8](forgotAction).n128_u64[0];
  if (forgotAction)
  {
    forgotAction2 = [(AKBasicLoginOptionsViewController *)selfCopy forgotAction];
    forgotAction2[2]();
    MEMORY[0x277D82BD8](forgotAction2);
  }

  objc_storeStrong(location, 0);
}

- (void)createPressed:(id)pressed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, pressed);
  createIDAction = [(AKBasicLoginOptionsViewController *)selfCopy createIDAction];
  *&v3 = MEMORY[0x277D82BD8](createIDAction).n128_u64[0];
  if (createIDAction)
  {
    createIDAction2 = [(AKBasicLoginOptionsViewController *)selfCopy createIDAction];
    createIDAction2[2]();
    MEMORY[0x277D82BD8](createIDAction2);
  }

  objc_storeStrong(location, 0);
}

- (void)_configureButtonForFontAdjustment:(id)adjustment
{
  v48[4] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, adjustment);
  titleLabel = [location[0] titleLabel];
  [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v45 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] addingSymbolicTraits:0x8000 options:?];
  v27 = [MEMORY[0x277D74300] fontWithDescriptor:v45 size:0.0];
  [titleLabel setFont:?];
  [titleLabel setNumberOfLines:{0, MEMORY[0x277D82BD8](v27).n128_f64[0]}];
  [titleLabel setAdjustsFontForContentSizeCategory:1];
  [titleLabel setLineBreakMode:0];
  [titleLabel setTextAlignment:1];
  v28 = MEMORY[0x277CCAAD0];
  leadingAnchor = [titleLabel leadingAnchor];
  leadingAnchor2 = [location[0] leadingAnchor];
  [location[0] contentEdgeInsets];
  v44[13] = v3;
  v44[14] = v4;
  v44[15] = v5;
  v44[16] = v6;
  v39 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:*&v4];
  v48[0] = v39;
  trailingAnchor = [titleLabel trailingAnchor];
  trailingAnchor2 = [location[0] trailingAnchor];
  [location[0] contentEdgeInsets];
  v44[9] = v7;
  v44[10] = v8;
  v44[11] = v9;
  v44[12] = v10;
  v36 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2 constant:*&v10];
  v48[1] = v36;
  topAnchor = [titleLabel topAnchor];
  topAnchor2 = [location[0] topAnchor];
  [location[0] contentEdgeInsets];
  v44[5] = v11;
  v44[6] = v12;
  v44[7] = v13;
  v44[8] = v14;
  v33 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:*&v11];
  v48[2] = v33;
  bottomAnchor = [titleLabel bottomAnchor];
  bottomAnchor2 = [location[0] bottomAnchor];
  [location[0] contentEdgeInsets];
  v44[1] = v15;
  v44[2] = v16;
  v44[3] = v17;
  v44[4] = v18;
  v30 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2 constant:*&v17];
  v48[3] = v30;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:4];
  [v28 activateConstraints:?];
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](topAnchor);
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](trailingAnchor2);
  MEMORY[0x277D82BD8](trailingAnchor);
  MEMORY[0x277D82BD8](v39);
  MEMORY[0x277D82BD8](leadingAnchor2);
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
  *&v19 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  if (isAuthKitSolariumFeatureEnabled)
  {
    v44[0] = [MEMORY[0x277D75230] plainButtonConfiguration];
    v24 = MEMORY[0x277D755B8];
    v26 = [MEMORY[0x277D755D0] configurationWithScale:2];
    v25 = [v24 systemImageNamed:@"info.circle.fill" withConfiguration:?];
    [v44[0] setImage:?];
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    [v44[0] setImagePadding:8.0];
    NSDirectionalEdgeInsetsMake();
    [v44[0] setContentInsets:{v20, v21, v22, v23}];
    [v44[0] setTitleLineBreakMode:0];
    [location[0] setConfiguration:v44[0]];
    objc_storeStrong(v44, 0);
  }

  objc_storeStrong(&v45, 0);
  objc_storeStrong(&titleLabel, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_refreshCreateAppleIDButton
{
  v17 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v14 = a2;
  _shouldHideCreateButton = [(AKBasicLoginOptionsViewController *)self _shouldHideCreateButton];
  location = _AKLogSystem();
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
  {
    if (_shouldHideCreateButton)
    {
      v2 = @"YES";
    }

    else
    {
      v2 = @"NO";
    }

    __os_log_helper_16_2_1_8_64(v16, v2);
    _os_log_debug_impl(&dword_222379000, location, OS_LOG_TYPE_DEBUG, "Create button hidden - %@", v16, 0xCu);
  }

  objc_storeStrong(&location, 0);
  createButton = [(AKBasicLoginOptionsViewController *)selfCopy createButton];
  [(UIButton *)createButton setHidden:_shouldHideCreateButton];
  v3 = MEMORY[0x277D82BD8](createButton).n128_u64[0];
  v10 = 0;
  v8 = 0;
  v7 = 0;
  if (_shouldHideCreateButton)
  {
    privacyController = [(AKBasicLoginOptionsViewController *)selfCopy privacyController];
    v10 = 1;
    v7 = 0;
    if (privacyController)
    {
      forgotButton = [(AKBasicLoginOptionsViewController *)selfCopy forgotButton];
      v8 = 1;
      v7 = forgotButton != 0;
    }
  }

  if (v8)
  {
    v3 = MEMORY[0x277D82BD8](forgotButton).n128_u64[0];
  }

  if (v10)
  {
    v3 = MEMORY[0x277D82BD8](privacyController).n128_u64[0];
  }

  if (v7)
  {
    stackView = selfCopy->_stackView;
    forgotButton2 = [(AKBasicLoginOptionsViewController *)selfCopy forgotButton];
    [(UIStackView *)stackView setCustomSpacing:20.0 afterView:?];
    MEMORY[0x277D82BD8](forgotButton2);
  }

  *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldHideCreateButton
{
  context = [(AKBasicLoginOptionsViewController *)self context];
  v4 = 1;
  if ([(AKAppleIDAuthenticationInAppContext *)context shouldAllowAppleIDCreation])
  {
    v4 = ![(AKBasicLoginOptionsViewController *)self isCreateAppleIDAllowed];
  }

  MEMORY[0x277D82BD8](context);
  return v4;
}

- (id)_createLinkButtonWithSelector:(SEL)selector
{
  selfCopy = self;
  v7 = a2;
  selectorCopy = selector;
  v5 = [MEMORY[0x277D75220] buttonWithType:1];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 addTarget:selfCopy action:selectorCopy forControlEvents:64];
  v4 = MEMORY[0x277D82BE0](v5);
  objc_storeStrong(&v5, 0);

  return v4;
}

- (AKAppleIDAuthenticationInAppContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

@end