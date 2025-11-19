@interface AKBasicLoginOptionsViewController
- (AKAppleIDAuthenticationInAppContext)context;
- (AKBasicLoginOptionsViewController)initWithContext:(id)a3;
- (BOOL)_shouldHideCreateButton;
- (id)_createLinkButtonWithSelector:(SEL)a3;
- (void)_configureButtonForFontAdjustment:(id)a3;
- (void)_refreshCreateAppleIDButton;
- (void)_setupPrivacyLinkControllerWithContext:(id)a3;
- (void)_setupStackView;
- (void)createPressed:(id)a3;
- (void)forgotPressed:(id)a3;
- (void)viewDidLoad;
@end

@implementation AKBasicLoginOptionsViewController

- (AKBasicLoginOptionsViewController)initWithContext:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v16;
  v16 = 0;
  v14.receiver = v3;
  v14.super_class = AKBasicLoginOptionsViewController;
  v16 = [(AKBasicLoginOptionsViewController *)&v14 init];
  objc_storeStrong(&v16, v16);
  if (v16)
  {
    objc_storeWeak(&v16->_context, location[0]);
    objc_initWeak(&v13, v16);
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

  v5 = MEMORY[0x277D82BE0](v16);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v16, 0);
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
  v30 = self;
  v29 = a2;
  v28.receiver = self;
  v28.super_class = AKBasicLoginOptionsViewController;
  [(AKBasicLoginOptionsViewController *)&v28 viewDidLoad];
  v27 = [(AKBasicLoginOptionsViewController *)v30 context];
  [(AKBasicLoginOptionsViewController *)v30 _refreshCreateAppleIDButton];
  v12 = [(AKBasicLoginOptionsViewController *)v30 _createLinkButtonWithSelector:sel_forgotPressed_];
  [(AKBasicLoginOptionsViewController *)v30 setForgotButton:?];
  *&v2 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  v13 = [(AKBasicLoginOptionsViewController *)v30 _createLinkButtonWithSelector:sel_createPressed_, v2];
  [(AKBasicLoginOptionsViewController *)v30 setCreateButton:?];
  *&v3 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  [(AKBasicLoginOptionsViewController *)v30 _setupStackView];
  v14 = v30;
  v15 = [(AKBasicLoginOptionsViewController *)v30 forgotButton];
  [(AKBasicLoginOptionsViewController *)v14 _configureButtonForFontAdjustment:?];
  *&v4 = MEMORY[0x277D82BD8](v15).n128_u64[0];
  v16 = v30;
  v17 = [(AKBasicLoginOptionsViewController *)v30 createButton];
  [(AKBasicLoginOptionsViewController *)v16 _configureButtonForFontAdjustment:?];
  *&v5 = MEMORY[0x277D82BD8](v17).n128_u64[0];
  v18 = [(AKBasicLoginOptionsViewController *)v30 forgotButton];
  v25 = 0;
  v23 = 0;
  v21 = 0;
  v19 = 0;
  if ([(AKAppleIDAuthenticationInAppContext *)v27 isUsernameEditable])
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

  [(UIButton *)v18 setTitle:v11 forState:0];
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

  *&v6 = MEMORY[0x277D82BD8](v18).n128_u64[0];
  v10 = [(AKBasicLoginOptionsViewController *)v30 createButton];
  v9 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKitUI"];
  v8 = [v9 localizedStringForKey:@"CREATE_APPLE_ID_BUTTON_TITLE_REBRAND" value:&stru_28358EF68 table:@"Localizable"];
  [UIButton setTitle:v10 forState:"setTitle:forState:"];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  *&v7 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  [(AKBasicLoginOptionsViewController *)v30 _setupPrivacyLinkControllerWithContext:v27, v7];
  [(AKBasicLoginOptionsViewController *)v30 setView:v30->_stackView];
  objc_storeStrong(&v27, 0);
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
  v8 = [(AKBasicLoginOptionsViewController *)self forgotButton];
  [(UIStackView *)v7 addArrangedSubview:?];
  *&v5 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  v9 = self->_stackView;
  v10 = [(AKBasicLoginOptionsViewController *)self createButton];
  [(UIStackView *)v9 addArrangedSubview:?];
  v11 = [MEMORY[0x277CF0228] sharedManager];
  v12 = [v11 isAuthKitSolariumFeatureEnabled];
  *&v6 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  if (v12)
  {
    [(UIStackView *)self->_stackView setAlignment:1, v6];
  }
}

- (void)_setupPrivacyLinkControllerWithContext:(id)a3
{
  v44[2] = *MEMORY[0x277D85DE8];
  v43 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v35 = [location[0] privacyBundleIdentifier];
  MEMORY[0x277D82BD8](v35);
  if (v35)
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
    v28 = [location[0] privacyBundleIdentifier];
    v27 = [v26 linkWithBundleIdentifier:?];
    [(AKBasicLoginOptionsViewController *)v43 setPrivacyController:?];
    MEMORY[0x277D82BD8](v27);
    *&v3 = MEMORY[0x277D82BD8](v28).n128_u64[0];
    v29 = v43;
    v30 = [(AKBasicLoginOptionsViewController *)v43 privacyController];
    [(AKBasicLoginOptionsViewController *)v29 addChildViewController:?];
    *&v4 = MEMORY[0x277D82BD8](v30).n128_u64[0];
    v31 = [(UIStackView *)v43->_stackView arrangedSubviews];
    v32 = [(NSArray *)v31 count];
    *&v5 = MEMORY[0x277D82BD8](v31).n128_u64[0];
    if (v32)
    {
      v22 = [(UIStackView *)v43->_stackView arrangedSubviews];
      v21 = [(UIStackView *)v43->_stackView arrangedSubviews];
      v38 = [(NSArray *)v22 objectAtIndexedSubscript:[(NSArray *)v21 count]- 1];
      MEMORY[0x277D82BD8](v21);
      *&v6 = MEMORY[0x277D82BD8](v22).n128_u64[0];
      stackView = v43->_stackView;
      v25 = [(AKBasicLoginOptionsViewController *)v43 privacyController];
      v24 = [(OBPrivacyLinkController *)v25 view];
      [(UIStackView *)stackView addArrangedSubview:?];
      MEMORY[0x277D82BD8](v24);
      MEMORY[0x277D82BD8](v25);
      if (v38)
      {
        [(UIStackView *)v43->_stackView setCustomSpacing:v38 afterView:20.0];
      }

      objc_storeStrong(&v38, 0);
    }

    v10 = [(AKBasicLoginOptionsViewController *)v43 privacyController];
    [(OBPrivacyLinkController *)v10 didMoveToParentViewController:v43];
    *&v7 = MEMORY[0x277D82BD8](v10).n128_u64[0];
    v14 = [(AKBasicLoginOptionsViewController *)v43 privacyController];
    v13 = [(OBPrivacyLinkController *)v14 view];
    v12 = [v13 leadingAnchor];
    v11 = [(UIStackView *)v43->_stackView leadingAnchor];
    v37 = [v12 constraintEqualToAnchor:?];
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v13);
    *&v8 = MEMORY[0x277D82BD8](v14).n128_u64[0];
    v18 = [(AKBasicLoginOptionsViewController *)v43 privacyController];
    v17 = [(OBPrivacyLinkController *)v18 view];
    v16 = [v17 trailingAnchor];
    v15 = [(UIStackView *)v43->_stackView trailingAnchor];
    v36 = [v16 constraintEqualToAnchor:?];
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    *&v9 = MEMORY[0x277D82BD8](v18).n128_u64[0];
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

- (void)forgotPressed:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(AKBasicLoginOptionsViewController *)v7 forgotAction];
  *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  if (v5)
  {
    v4 = [(AKBasicLoginOptionsViewController *)v7 forgotAction];
    v4[2]();
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(location, 0);
}

- (void)createPressed:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(AKBasicLoginOptionsViewController *)v7 createIDAction];
  *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  if (v5)
  {
    v4 = [(AKBasicLoginOptionsViewController *)v7 createIDAction];
    v4[2]();
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(location, 0);
}

- (void)_configureButtonForFontAdjustment:(id)a3
{
  v48[4] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v46 = [location[0] titleLabel];
  [v46 setTranslatesAutoresizingMaskIntoConstraints:0];
  v45 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] addingSymbolicTraits:0x8000 options:?];
  v27 = [MEMORY[0x277D74300] fontWithDescriptor:v45 size:0.0];
  [v46 setFont:?];
  [v46 setNumberOfLines:{0, MEMORY[0x277D82BD8](v27).n128_f64[0]}];
  [v46 setAdjustsFontForContentSizeCategory:1];
  [v46 setLineBreakMode:0];
  [v46 setTextAlignment:1];
  v28 = MEMORY[0x277CCAAD0];
  v41 = [v46 leadingAnchor];
  v40 = [location[0] leadingAnchor];
  [location[0] contentEdgeInsets];
  v44[13] = v3;
  v44[14] = v4;
  v44[15] = v5;
  v44[16] = v6;
  v39 = [v41 constraintGreaterThanOrEqualToAnchor:v40 constant:*&v4];
  v48[0] = v39;
  v38 = [v46 trailingAnchor];
  v37 = [location[0] trailingAnchor];
  [location[0] contentEdgeInsets];
  v44[9] = v7;
  v44[10] = v8;
  v44[11] = v9;
  v44[12] = v10;
  v36 = [v38 constraintGreaterThanOrEqualToAnchor:v37 constant:*&v10];
  v48[1] = v36;
  v35 = [v46 topAnchor];
  v34 = [location[0] topAnchor];
  [location[0] contentEdgeInsets];
  v44[5] = v11;
  v44[6] = v12;
  v44[7] = v13;
  v44[8] = v14;
  v33 = [v35 constraintGreaterThanOrEqualToAnchor:v34 constant:*&v11];
  v48[2] = v33;
  v32 = [v46 bottomAnchor];
  v31 = [location[0] bottomAnchor];
  [location[0] contentEdgeInsets];
  v44[1] = v15;
  v44[2] = v16;
  v44[3] = v17;
  v44[4] = v18;
  v30 = [v32 constraintGreaterThanOrEqualToAnchor:v31 constant:*&v17];
  v48[3] = v30;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:4];
  [v28 activateConstraints:?];
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
  v42 = [MEMORY[0x277CF0228] sharedManager];
  v43 = [v42 isAuthKitSolariumFeatureEnabled];
  *&v19 = MEMORY[0x277D82BD8](v42).n128_u64[0];
  if (v43)
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
  objc_storeStrong(&v46, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_refreshCreateAppleIDButton
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = self;
  v14 = a2;
  v13 = [(AKBasicLoginOptionsViewController *)self _shouldHideCreateButton];
  location = _AKLogSystem();
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
  {
    if (v13)
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
  v6 = [(AKBasicLoginOptionsViewController *)v15 createButton];
  [(UIButton *)v6 setHidden:v13];
  v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  v10 = 0;
  v8 = 0;
  v7 = 0;
  if (v13)
  {
    v11 = [(AKBasicLoginOptionsViewController *)v15 privacyController];
    v10 = 1;
    v7 = 0;
    if (v11)
    {
      v9 = [(AKBasicLoginOptionsViewController *)v15 forgotButton];
      v8 = 1;
      v7 = v9 != 0;
    }
  }

  if (v8)
  {
    v3 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  }

  if (v10)
  {
    v3 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  }

  if (v7)
  {
    stackView = v15->_stackView;
    v5 = [(AKBasicLoginOptionsViewController *)v15 forgotButton];
    [(UIStackView *)stackView setCustomSpacing:20.0 afterView:?];
    MEMORY[0x277D82BD8](v5);
  }

  *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldHideCreateButton
{
  v3 = [(AKBasicLoginOptionsViewController *)self context];
  v4 = 1;
  if ([(AKAppleIDAuthenticationInAppContext *)v3 shouldAllowAppleIDCreation])
  {
    v4 = ![(AKBasicLoginOptionsViewController *)self isCreateAppleIDAllowed];
  }

  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (id)_createLinkButtonWithSelector:(SEL)a3
{
  v8 = self;
  v7 = a2;
  v6 = a3;
  v5 = [MEMORY[0x277D75220] buttonWithType:1];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 addTarget:v8 action:v6 forControlEvents:64];
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