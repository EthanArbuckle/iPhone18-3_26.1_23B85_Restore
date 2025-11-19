@interface AKModalSignInViewController
- (AKModalSignInViewController)init;
- (BOOL)_isUsingPasscodeAuth;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)resignFirstResponder;
- (BOOL)textFieldShouldReturn:(id)a3;
- (id)_bodyText;
- (id)_buttonTitle;
- (void)_beginObservingTextFieldDidChangeNotifications;
- (void)_createViews;
- (void)_endObservingTextFieldDidChangeNotifications;
- (void)_passwordRecoveryButtonWasTapped:(id)a3;
- (void)_setupConstraints;
- (void)_setupPasswordField;
- (void)_setupTextFields;
- (void)_setupUsernameField;
- (void)_setupViews;
- (void)_signInButtonTapped:(id)a3;
- (void)_textFieldDidChange:(id)a3;
- (void)_updateSignInButtonEnabled:(BOOL)a3;
- (void)_updateViewConstraints;
- (void)context:(id)a3 needsPasswordWithCompletion:(id)a4;
- (void)dealloc;
- (void)displayAlertForContext:(id)a3 error:(id)a4 completion:(id)a5;
- (void)setupTextEntryField:(id)a3;
- (void)startAnimating;
- (void)stopAnimating;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation AKModalSignInViewController

- (AKModalSignInViewController)init
{
  v10 = self;
  v9 = a2;
  v6 = [MEMORY[0x277CF0228] sharedManager];
  v2 = [v6 isAuthKitSolariumFeatureEnabled];
  v10[1033] = v2;
  *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  v4 = v10;
  v10 = 0;
  v8.receiver = v4;
  v8.super_class = AKModalSignInViewController;
  v10 = [(AKBaseSignInViewController *)&v8 _initWithAuthController:v3];
  v7 = MEMORY[0x277D82BE0](v10);
  objc_storeStrong(&v10, 0);
  return v7;
}

- (void)viewDidLoad
{
  v6 = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = AKModalSignInViewController;
  [(AKModalSignInViewController *)&v4 viewDidLoad];
  [(AKModalSignInViewController *)v6 _setupViews];
  [(AKModalSignInViewController *)v6 _setupConstraints];
  v2 = v6;
  v3 = [(AKBaseSignInViewController *)v6 context];
  [(AKAppleIDAuthenticationInAppContext *)v3 setAlertDelegate:v2];
  MEMORY[0x277D82BD8](v3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4.receiver = self;
  v4.super_class = AKModalSignInViewController;
  [(AKBaseSignInViewController *)&v4 viewDidAppear:a3];
  if (![(AKModalSignInViewController *)v7 _shouldHidePasswordField])
  {
    v3 = [(AKModalSignInViewController *)v7 passwordField];
    [(UITextField *)v3 becomeFirstResponder];
    MEMORY[0x277D82BD8](v3);
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = AKModalSignInViewController;
  [(AKModalSignInViewController *)&v3 viewWillAppear:a3];
  [(AKModalSignInViewController *)v6 _beginObservingTextFieldDidChangeNotifications];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4.receiver = self;
  v4.super_class = AKModalSignInViewController;
  [(AKModalSignInViewController *)&v4 viewWillDisappear:a3];
  if (![(AKModalSignInViewController *)v7 _shouldHidePasswordField])
  {
    v3 = [(AKModalSignInViewController *)v7 passwordField];
    [(UITextField *)v3 resignFirstResponder];
    MEMORY[0x277D82BD8](v3);
  }

  [(AKModalSignInViewController *)v7 _endObservingTextFieldDidChangeNotifications];
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  [(AKModalSignInViewController *)self _endObservingTextFieldDidChangeNotifications];
  v2.receiver = v4;
  v2.super_class = AKModalSignInViewController;
  [(AKBaseSignInViewController *)&v2 dealloc];
}

- (void)_setupViews
{
  [(AKModalSignInViewController *)self _createViews];
  v3 = [(AKModalSignInViewController *)self containerView];
  v2 = [(AKModalSignInViewController *)self titleLabel];
  [(UIView *)v3 addSubview:?];
  MEMORY[0x277D82BD8](v2);
  v5 = [(AKModalSignInViewController *)self containerView];
  v4 = [(AKModalSignInViewController *)self bodyLabel];
  [(UIView *)v5 addSubview:?];
  MEMORY[0x277D82BD8](v4);
  v7 = [(AKModalSignInViewController *)self containerView];
  v6 = [(AKModalSignInViewController *)self usernameField];
  [(UIView *)v7 addSubview:?];
  MEMORY[0x277D82BD8](v6);
  v9 = [(AKModalSignInViewController *)self containerView];
  v8 = [(AKModalSignInViewController *)self passwordField];
  [(UIView *)v9 addSubview:?];
  MEMORY[0x277D82BD8](v8);
  v11 = [(AKModalSignInViewController *)self containerView];
  v10 = [(AKModalSignInViewController *)self separatorView];
  [(UIView *)v11 addSubview:?];
  MEMORY[0x277D82BD8](v10);
  v13 = [(AKModalSignInViewController *)self containerView];
  v12 = [(AKModalSignInViewController *)self signInButton];
  [(UIView *)v13 addSubview:?];
  MEMORY[0x277D82BD8](v12);
  v15 = [(AKModalSignInViewController *)self containerView];
  v14 = [(AKModalSignInViewController *)self iForgotButton];
  [(UIView *)v15 addSubview:?];
  MEMORY[0x277D82BD8](v14);
  v17 = [(AKModalSignInViewController *)self view];
  v16 = [(AKModalSignInViewController *)self containerView];
  [v17 addSubview:?];
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
}

- (void)_createViews
{
  v53 = self;
  location[1] = a2;
  if (self->_backgroundColor)
  {
    backgroundColor = v53->_backgroundColor;
    v51 = [(AKModalSignInViewController *)v53 view];
    [v51 setBackgroundColor:backgroundColor];
    MEMORY[0x277D82BD8](v51);
  }

  else
  {
    v49 = [MEMORY[0x277D75348] systemBackgroundColor];
    v48 = [(AKModalSignInViewController *)v53 view];
    [v48 setBackgroundColor:v49];
    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v49);
  }

  v2 = objc_alloc(MEMORY[0x277D756B8]);
  v40 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(AKModalSignInViewController *)v53 setTitleLabel:?];
  v41 = [(AKModalSignInViewController *)v53 titleLabel];
  [(UILabel *)v41 setNumberOfLines:?];
  v42 = [(AKModalSignInViewController *)v53 titleLabel];
  [(UILabel *)v42 setTextAlignment:1];
  v45 = [(AKBaseSignInViewController *)v53 context];
  [(AKAppleIDAuthenticationInAppContext *)v45 serviceType];
  v44 = AKSignInStringFromServiceType();
  v43 = [(AKModalSignInViewController *)v53 titleLabel];
  [(UILabel *)v43 setText:v44];
  MEMORY[0x277D82BD8](v43);
  MEMORY[0x277D82BD8](v44);
  location[0] = [MEMORY[0x277D74310] defaultFontDescriptorWithTextStyle:*MEMORY[0x277D76918] addingSymbolicTraits:32770 options:{0, MEMORY[0x277D82BD8](v45).n128_f64[0]}];
  v47 = [MEMORY[0x277D74300] fontWithDescriptor:location[0] size:0.0];
  v46 = [(AKModalSignInViewController *)v53 titleLabel];
  [(UILabel *)v46 setFont:v47];
  MEMORY[0x277D82BD8](v46);
  *&v3 = MEMORY[0x277D82BD8](v47).n128_u64[0];
  v39 = v53->_isSolariumEnabled || v53->_hideTitle;
  v7 = [(AKModalSignInViewController *)v53 titleLabel];
  [(UILabel *)v7 setHidden:v39 != 0];
  MEMORY[0x277D82BD8](v7);
  v4 = objc_alloc(MEMORY[0x277D756B8]);
  v37 = MEMORY[0x277CBF3A0];
  v8 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(AKModalSignInViewController *)v53 setBodyLabel:?];
  v9 = [(AKModalSignInViewController *)v53 bodyLabel];
  [(UILabel *)v9 setNumberOfLines:?];
  *&v5 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  v6 = 4;
  if (!v53->_isSolariumEnabled)
  {
    v6 = 1;
  }

  v10 = v6;
  v11 = [(AKModalSignInViewController *)v53 bodyLabel];
  [(UILabel *)v11 setTextAlignment:v10];
  v13 = [MEMORY[0x277D74300] defaultFontForTextStyle:{*MEMORY[0x277D769C0], MEMORY[0x277D82BD8](v11).n128_f64[0]}];
  v12 = [(AKModalSignInViewController *)v53 bodyLabel];
  [(UILabel *)v12 setFont:v13];
  MEMORY[0x277D82BD8](v12);
  v14 = [(AKModalSignInViewController *)v53 bodyLabel];
  [(UILabel *)v14 setAdjustsFontForContentSizeCategory:1];
  v16 = [(AKModalSignInViewController *)v53 _bodyText];
  v15 = [(AKModalSignInViewController *)v53 bodyLabel];
  [(UILabel *)v15 setText:v16];
  MEMORY[0x277D82BD8](v15);
  [(AKModalSignInViewController *)v53 _setupTextFields];
  v17 = +[AKRoundedButton roundedButton];
  [(AKModalSignInViewController *)v53 setSignInButton:?];
  v18 = [(AKModalSignInViewController *)v53 signInButton];
  [(AKRoundedButton *)v18 addTarget:v53 action:sel__signInButtonTapped_ forControlEvents:?];
  v20 = [(AKModalSignInViewController *)v53 signInButton];
  v19 = [(AKModalSignInViewController *)v53 _buttonTitle];
  [AKRoundedButton setTitle:v20 forState:"setTitle:forState:"];
  MEMORY[0x277D82BD8](v19);
  v21 = [(AKModalSignInViewController *)v53 signInButton];
  [(AKRoundedButton *)v21 setEnabled:0];
  v25 = [(AKModalSignInViewController *)v53 signInButton];
  v22 = MEMORY[0x277D755B8];
  v24 = [MEMORY[0x277D75348] systemBlueColor];
  v23 = [v22 ak_imageWithColor:?];
  [AKRoundedButton setBackgroundImage:v25 forState:"setBackgroundImage:forState:"];
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  v29 = [(AKModalSignInViewController *)v53 signInButton];
  v26 = MEMORY[0x277D755B8];
  v28 = [MEMORY[0x277D75348] systemGrayColor];
  v27 = [v26 ak_imageWithColor:?];
  [AKRoundedButton setBackgroundImage:v29 forState:"setBackgroundImage:forState:"];
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);
  v30 = [MEMORY[0x277D75220] buttonWithType:{1, MEMORY[0x277D82BD8](v29).n128_f64[0]}];
  [(AKModalSignInViewController *)v53 setIForgotButton:?];
  v31 = [(AKModalSignInViewController *)v53 iForgotButton];
  [(UIButton *)v31 addTarget:v53 action:sel__passwordRecoveryButtonWasTapped_ forControlEvents:64];
  v34 = [(AKModalSignInViewController *)v53 iForgotButton];
  v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v32 = [v33 localizedStringForKey:@"FORGOT_PASSWORD" value:&stru_28358EF68 table:@"Localizable"];
  [UIButton setTitle:v34 forState:"setTitle:forState:"];
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v33);
  v35 = [(AKModalSignInViewController *)v53 _shouldHidePasswordField];
  v36 = [(AKModalSignInViewController *)v53 iForgotButton];
  [(UIButton *)v36 setHidden:v35];
  MEMORY[0x277D82BD8](v36);
  v38 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{*v37, v37[1], v37[2], v37[3]}];
  [(AKModalSignInViewController *)v53 setContainerView:?];
  MEMORY[0x277D82BD8](v38);
  objc_storeStrong(location, 0);
}

- (void)_beginObservingTextFieldDidChangeNotifications
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 addObserver:self selector:sel__textFieldDidChange_ name:*MEMORY[0x277D770B0] object:0];
  MEMORY[0x277D82BD8](v2);
}

- (void)_endObservingTextFieldDidChangeNotifications
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 removeObserver:self name:*MEMORY[0x277D770B0] object:0];
  MEMORY[0x277D82BD8](v2);
}

- (void)_textFieldDidChange:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = [location[0] object];
  v8 = [(AKModalSignInViewController *)v11 passwordField];
  *&v3 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  if (v9 == v8)
  {
    v6 = [(AKModalSignInViewController *)v11 passwordField];
    v5 = [(UITextField *)v6 text];
    v7 = [(NSString *)v5 length];
    MEMORY[0x277D82BD8](v5);
    *&v4 = MEMORY[0x277D82BD8](v6).n128_u64[0];
    if (v7)
    {
      [(AKModalSignInViewController *)v11 _updateSignInButtonEnabled:1, v4];
    }

    else
    {
      [(AKModalSignInViewController *)v11 _updateSignInButtonEnabled:0, v4];
    }
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateSignInButtonEnabled:(BOOL)a3
{
  v5 = [(AKModalSignInViewController *)self signInButton];
  v6 = [(AKRoundedButton *)v5 isEnabled];
  *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  if (v6 != a3)
  {
    v4 = [(AKModalSignInViewController *)self signInButton];
    [(AKRoundedButton *)v4 setEnabled:a3];
    MEMORY[0x277D82BD8](v4);
  }
}

- (id)_bodyText
{
  v37 = self;
  v36[1] = a2;
  customBodyText = self->_customBodyText;
  v34 = 0;
  v32 = 0;
  if (customBodyText)
  {
    v2 = MEMORY[0x277D82BE0](customBodyText);
  }

  else
  {
    v35 = [(AKBaseSignInViewController *)v37 context];
    v34 = 1;
    v33 = [(AKAppleIDAuthenticationInAppContext *)v35 _interpolatedReason];
    v32 = 1;
    v2 = MEMORY[0x277D82BE0](v33);
  }

  v36[0] = v2;
  if (v32)
  {
    MEMORY[0x277D82BD8](v33);
  }

  if (v34)
  {
    MEMORY[0x277D82BD8](v35);
  }

  if (![v36[0] length])
  {
    location = _AKLogSystem();
    v30 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      log = location;
      v27 = v30;
      __os_log_helper_16_0_0(v29);
      _os_log_impl(&dword_222379000, log, v27, "Context interpolated reason was not providing, falling back to default strings...", v29, 2u);
    }

    objc_storeStrong(&location, 0);
    v24 = [MEMORY[0x277CF0218] currentDevice];
    v25 = [v24 isMultiUserMode];
    *&v3 = MEMORY[0x277D82BD8](v24).n128_u64[0];
    if (v25)
    {
      v23 = [(AKBaseSignInViewController *)v37 context];
      [(AKAppleIDAuthenticationInAppContext *)v23 serviceType];
      v4 = AKSharedDevicePasscodePromptAlertMessageWithServiceType();
      v5 = v36[0];
      v36[0] = v4;
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v23);
    }

    else if ([(AKModalSignInViewController *)v37 _isUsingPasscodeAuth])
    {
      v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v6 = [v22 localizedStringForKey:@"PASSCODE_AUTHENTICATION_REASON" value:&stru_28358EF68 table:@"Localizable"];
      v7 = v36[0];
      v36[0] = v6;
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v22);
    }

    else if (v37->_isSolariumEnabled)
    {
      v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v8 = [v21 localizedStringForKey:@"DEFAULT_PLACEHOLDER_AUTHENTICATION_REASON_NO_ACCOUNT" value:&stru_28358EF68 table:@"Localizable"];
      v9 = v36[0];
      v36[0] = v8;
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v21);
    }

    else
    {
      v15 = MEMORY[0x277CCACA8];
      v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v19 = [v20 localizedStringForKey:@"DEFAULT_PLACEHOLDER_AUTHENTICATION_REASON" value:&stru_28358EF68 table:@"Localizable"];
      v14 = MEMORY[0x277CF0300];
      v18 = [(AKBaseSignInViewController *)v37 context];
      v17 = [(AKAppleIDAuthenticationInAppContext *)v18 username];
      v16 = [v14 formattedUsernameFromUsername:?];
      v10 = [v15 stringWithFormat:v19, v16];
      v11 = v36[0];
      v36[0] = v10;
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](v17);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v19);
      MEMORY[0x277D82BD8](v20);
    }
  }

  v13 = MEMORY[0x277D82BE0](v36[0]);
  objc_storeStrong(v36, 0);

  return v13;
}

- (id)_buttonTitle
{
  if ([(AKModalSignInViewController *)self _isUsingPasscodeAuth])
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v5 localizedStringForKey:@"CONTINUE_WITH_PASSCODE" value:&stru_28358EF68 table:@"Localizable"];
    MEMORY[0x277D82BD8](v5);
  }

  else
  {
    v12 = 0;
    v10 = 0;
    v8 = 0;
    v6 = 0;
    if (self->_customButtonTitle)
    {
      v2 = MEMORY[0x277D82BE0](self->_customButtonTitle);
    }

    else
    {
      if (self->_isSolariumEnabled)
      {
        v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v12 = 1;
        v11 = [v13 localizedStringForKey:@"AUTHORIZE_BUTTON_TITLE_CONFIRM" value:&stru_28358EF68 table:@"Localizable"];
        v10 = 1;
        v4 = v11;
      }

      else
      {
        v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v8 = 1;
        v7 = [v9 localizedStringForKey:@"SIGN_IN" value:&stru_28358EF68 table:@"Localizable"];
        v6 = 1;
        v4 = v7;
      }

      v2 = MEMORY[0x277D82BE0](v4);
    }

    v15 = v2;
    if (v6)
    {
      MEMORY[0x277D82BD8](v7);
    }

    if (v8)
    {
      MEMORY[0x277D82BD8](v9);
    }

    if (v10)
    {
      MEMORY[0x277D82BD8](v11);
    }

    if (v12)
    {
      MEMORY[0x277D82BD8](v13);
    }
  }

  return v15;
}

- (void)_setupTextFields
{
  [(AKModalSignInViewController *)self _setupUsernameField];
  [(AKModalSignInViewController *)self _setupPasswordField];
  v2 = objc_alloc_init(MEMORY[0x277D75D18]);
  [(AKModalSignInViewController *)self setSeparatorView:?];
  v4 = [MEMORY[0x277D75348] quaternarySystemFillColor];
  v3 = [(AKModalSignInViewController *)self separatorView];
  [(UIView *)v3 setBackgroundColor:v4];
  MEMORY[0x277D82BD8](v3);
  v5 = [(AKModalSignInViewController *)self _shouldHideUsernameField];
  v6 = [(AKModalSignInViewController *)self separatorView];
  [(UIView *)v6 setHidden:v5];
  MEMORY[0x277D82BD8](v6);
}

- (void)_setupUsernameField
{
  v9 = self;
  v8[1] = a2;
  v2 = [_AKInsetTextField alloc];
  v8[0] = [(_AKInsetTextField *)v2 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(AKModalSignInViewController *)v9 setupTextEntryField:v8[0]];
  if (v9->_isSolariumEnabled)
  {
    v7 = [v8[0] layer];
    [v7 setMaskedCorners:3];
    MEMORY[0x277D82BD8](v7);
  }

  v6 = [(AKBaseSignInViewController *)v9 context];
  v5 = [(AKAppleIDAuthenticationInAppContext *)v6 username];
  [v8[0] setPlaceholder:?];
  MEMORY[0x277D82BD8](v5);
  *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  [v8[0] setEnabled:{0, v3}];
  v4 = [(AKModalSignInViewController *)v9 _shouldHideUsernameField];
  [v8[0] setHidden:v4];
  objc_storeStrong(&v9->_usernameField, v8[0]);
  objc_storeStrong(v8, 0);
}

- (void)_setupPasswordField
{
  v9 = self;
  v8[1] = a2;
  v2 = [_AKInsetTextField alloc];
  v8[0] = [(_AKInsetTextField *)v2 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(AKModalSignInViewController *)v9 setupTextEntryField:v8[0]];
  if (v9->_isSolariumEnabled)
  {
    v7 = [v8[0] layer];
    [v7 setMaskedCorners:12];
    MEMORY[0x277D82BD8](v7);
  }

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v6 localizedStringForKey:@"CAPITALIZED_PASSWORD" value:&stru_28358EF68 table:@"Localizable"];
  [v8[0] setPlaceholder:?];
  MEMORY[0x277D82BD8](v5);
  *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  [v8[0] setSecureTextEntry:{1, v3}];
  [v8[0] setReturnKeyType:0];
  [v8[0] setTextContentType:*MEMORY[0x277D77030]];
  v4 = [(AKModalSignInViewController *)v9 _shouldHidePasswordField];
  [v8[0] setHidden:v4];
  objc_storeStrong(&v9->_passwordField, v8[0]);
  objc_storeStrong(v8, 0);
}

- (void)setupTextEntryField:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = [MEMORY[0x277D75348] colorWithRed:0.0156862754 green:0.0156862754 blue:0.0588235296 alpha:0.150000006];
  v8 = 0;
  if (v12->_isSolariumEnabled)
  {
    v9 = +[AKBasicLoginAppearance tableCellBackgroundColor];
    v8 = 1;
    v7 = v9;
  }

  else
  {
    v7 = v10;
  }

  [location[0] setBackgroundColor:v7];
  if (v8)
  {
    MEMORY[0x277D82BD8](v9);
  }

  if (v12->_isSolariumEnabled)
  {
    v6 = [location[0] layer];
    [v6 setCornerRadius:26.0];
    v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  }

  else
  {
    v5 = [location[0] layer];
    [v5 setCornerRadius:12.0];
    v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  }

  [location[0] setDelegate:{v12, *&v3}];
  v4 = [MEMORY[0x277D74300] defaultFontForTextStyle:*MEMORY[0x277D769C0]];
  [location[0] setFont:?];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)_setupConstraints
{
  v289[13] = *MEMORY[0x277D85DE8];
  v283 = self;
  v282[1] = a2;
  v270 = [(AKModalSignInViewController *)self titleLabel];
  [(UILabel *)v270 setTranslatesAutoresizingMaskIntoConstraints:0];
  v271 = [(AKModalSignInViewController *)v283 bodyLabel];
  [(UILabel *)v271 setTranslatesAutoresizingMaskIntoConstraints:0];
  v272 = [(AKModalSignInViewController *)v283 usernameField];
  [(UITextField *)v272 setTranslatesAutoresizingMaskIntoConstraints:0];
  v273 = [(AKModalSignInViewController *)v283 separatorView];
  [(UIView *)v273 setTranslatesAutoresizingMaskIntoConstraints:0];
  v274 = [(AKModalSignInViewController *)v283 passwordField];
  [(UITextField *)v274 setTranslatesAutoresizingMaskIntoConstraints:0];
  v275 = [(AKModalSignInViewController *)v283 signInButton];
  [(AKRoundedButton *)v275 setTranslatesAutoresizingMaskIntoConstraints:0];
  v276 = [(AKModalSignInViewController *)v283 iForgotButton];
  [(UIButton *)v276 setTranslatesAutoresizingMaskIntoConstraints:0];
  v277 = [(AKModalSignInViewController *)v283 containerView];
  [(UIView *)v277 setTranslatesAutoresizingMaskIntoConstraints:0];
  v282[0] = [MEMORY[0x277CBEB18] array];
  location = 0;
  v278 = [MEMORY[0x277D75418] currentDevice];
  v279 = [v278 userInterfaceIdiom];
  *&v2 = MEMORY[0x277D82BD8](v278).n128_u64[0];
  v284 = v279;
  v280 = 1;
  if (v279 != 1)
  {
    v280 = v284 == 5;
  }

  if (v280)
  {
    v267 = MEMORY[0x277CCAAD0];
    v269 = [(AKModalSignInViewController *)v283 containerView];
    v268 = [(AKModalSignInViewController *)v283 view];
    v3 = [v267 constraintWithItem:v269 attribute:10 relatedBy:0 toItem:1.0 attribute:0.0 multiplier:? constant:?];
    v4 = location;
    location = v3;
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v268);
    v5 = MEMORY[0x277D82BD8](v269).n128_u64[0];
  }

  else
  {
    v266 = [(AKModalSignInViewController *)v283 containerView];
    v265 = [(UIView *)v266 topAnchor];
    v264 = [(AKModalSignInViewController *)v283 view];
    v263 = [v264 topAnchor];
    v6 = [(NSLayoutYAxisAnchor *)v265 constraintGreaterThanOrEqualToAnchor:0.0 constant:?];
    v7 = location;
    location = v6;
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v263);
    MEMORY[0x277D82BD8](v264);
    MEMORY[0x277D82BD8](v265);
    v5 = MEMORY[0x277D82BD8](v266).n128_u64[0];
  }

  [v282[0] addObject:{location, *&v5}];
  if (v283->_isSolariumEnabled)
  {
    v262 = [(AKModalSignInViewController *)v283 containerView];
    v261 = [(UIView *)v262 leadingAnchor];
    v260 = [(AKModalSignInViewController *)v283 view];
    v259 = [v260 leadingAnchor];
    v258 = [NSLayoutXAxisAnchor constraintEqualToAnchor:v261 constant:"constraintEqualToAnchor:constant:"];
    v289[0] = v258;
    v257 = [(AKModalSignInViewController *)v283 containerView];
    v256 = [(UIView *)v257 trailingAnchor];
    v255 = [(AKModalSignInViewController *)v283 view];
    v254 = [v255 trailingAnchor];
    v253 = [(NSLayoutXAxisAnchor *)v256 constraintEqualToAnchor:-16.0 constant:?];
    v289[1] = v253;
    v252 = [(AKModalSignInViewController *)v283 titleLabel];
    v251 = [(UILabel *)v252 firstBaselineAnchor];
    v250 = [(AKModalSignInViewController *)v283 containerView];
    v249 = [(UIView *)v250 topAnchor];
    v248 = [MEMORY[0x277D75418] currentDevice];
    v8 = [v248 userInterfaceIdiom];
    v9 = 0.0;
    if (v8 != 1)
    {
      v9 = 39.0;
    }

    v247 = [v251 constraintEqualToAnchor:v249 constant:v9];
    v289[2] = v247;
    v246 = [(AKModalSignInViewController *)v283 titleLabel];
    v245 = [(UILabel *)v246 leadingAnchor];
    v244 = [(AKModalSignInViewController *)v283 containerView];
    v243 = [(UIView *)v244 leadingAnchor];
    v242 = [v245 constraintEqualToAnchor:16.0 constant:?];
    v289[3] = v242;
    v241 = [(AKModalSignInViewController *)v283 titleLabel];
    v240 = [(UILabel *)v241 trailingAnchor];
    v239 = [(AKModalSignInViewController *)v283 containerView];
    v238 = [(UIView *)v239 trailingAnchor];
    v237 = [v240 constraintEqualToAnchor:?];
    v289[4] = v237;
    v236 = [(AKModalSignInViewController *)v283 titleLabel];
    v235 = [(UILabel *)v236 heightAnchor];
    v234 = [v235 constraintGreaterThanOrEqualToConstant:17.0];
    v289[5] = v234;
    v233 = [(AKModalSignInViewController *)v283 bodyLabel];
    v232 = [(UILabel *)v233 firstBaselineAnchor];
    v231 = [(AKModalSignInViewController *)v283 titleLabel];
    v230 = [(UILabel *)v231 lastBaselineAnchor];
    v229 = [v232 constraintEqualToAnchor:24.0 constant:?];
    v289[6] = v229;
    v228 = [(AKModalSignInViewController *)v283 bodyLabel];
    v227 = [(UILabel *)v228 leadingAnchor];
    v226 = [(AKModalSignInViewController *)v283 containerView];
    v225 = [(UIView *)v226 leadingAnchor];
    v224 = [v227 constraintEqualToAnchor:6.0 constant:?];
    v289[7] = v224;
    v223 = [(AKModalSignInViewController *)v283 bodyLabel];
    v222 = [(UILabel *)v223 trailingAnchor];
    v221 = [(AKModalSignInViewController *)v283 containerView];
    v220 = [(UIView *)v221 trailingAnchor];
    v219 = [v222 constraintEqualToAnchor:-6.0 constant:?];
    v289[8] = v219;
    v218 = [(AKModalSignInViewController *)v283 bodyLabel];
    v217 = [(UILabel *)v218 heightAnchor];
    v216 = [v217 constraintGreaterThanOrEqualToConstant:56.0];
    v289[9] = v216;
    v215 = [(AKModalSignInViewController *)v283 signInButton];
    v214 = [(AKRoundedButton *)v215 centerXAnchor];
    v213 = [(AKModalSignInViewController *)v283 containerView];
    v212 = [(UIView *)v213 centerXAnchor];
    v211 = [v214 constraintEqualToAnchor:?];
    v289[10] = v211;
    v210 = [(AKModalSignInViewController *)v283 signInButton];
    v209 = [(AKRoundedButton *)v210 heightAnchor];
    v208 = [v209 constraintGreaterThanOrEqualToConstant:44.0];
    v289[11] = v208;
    v207 = [(AKModalSignInViewController *)v283 containerView];
    v206 = [(UIView *)v207 heightAnchor];
    v205 = [(NSLayoutDimension *)v206 constraintGreaterThanOrEqualToConstant:220.0];
    v289[12] = v205;
    v204 = [MEMORY[0x277CBEA60] arrayWithObjects:v289 count:13];
    [v282[0] addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v204);
    MEMORY[0x277D82BD8](v205);
    MEMORY[0x277D82BD8](v206);
    MEMORY[0x277D82BD8](v207);
    MEMORY[0x277D82BD8](v208);
    MEMORY[0x277D82BD8](v209);
    MEMORY[0x277D82BD8](v210);
    MEMORY[0x277D82BD8](v211);
    MEMORY[0x277D82BD8](v212);
    MEMORY[0x277D82BD8](v213);
    MEMORY[0x277D82BD8](v214);
    MEMORY[0x277D82BD8](v215);
    MEMORY[0x277D82BD8](v216);
    MEMORY[0x277D82BD8](v217);
    MEMORY[0x277D82BD8](v218);
    MEMORY[0x277D82BD8](v219);
    MEMORY[0x277D82BD8](v220);
    MEMORY[0x277D82BD8](v221);
    MEMORY[0x277D82BD8](v222);
    MEMORY[0x277D82BD8](v223);
    MEMORY[0x277D82BD8](v224);
    MEMORY[0x277D82BD8](v225);
    MEMORY[0x277D82BD8](v226);
    MEMORY[0x277D82BD8](v227);
    MEMORY[0x277D82BD8](v228);
    MEMORY[0x277D82BD8](v229);
    MEMORY[0x277D82BD8](v230);
    MEMORY[0x277D82BD8](v231);
    MEMORY[0x277D82BD8](v232);
    MEMORY[0x277D82BD8](v233);
    MEMORY[0x277D82BD8](v234);
    MEMORY[0x277D82BD8](v235);
    MEMORY[0x277D82BD8](v236);
    MEMORY[0x277D82BD8](v237);
    MEMORY[0x277D82BD8](v238);
    MEMORY[0x277D82BD8](v239);
    MEMORY[0x277D82BD8](v240);
    MEMORY[0x277D82BD8](v241);
    MEMORY[0x277D82BD8](v242);
    MEMORY[0x277D82BD8](v243);
    MEMORY[0x277D82BD8](v244);
    MEMORY[0x277D82BD8](v245);
    MEMORY[0x277D82BD8](v246);
    MEMORY[0x277D82BD8](v247);
    MEMORY[0x277D82BD8](v248);
    MEMORY[0x277D82BD8](v249);
    MEMORY[0x277D82BD8](v250);
    MEMORY[0x277D82BD8](v251);
    MEMORY[0x277D82BD8](v252);
    MEMORY[0x277D82BD8](v253);
    MEMORY[0x277D82BD8](v254);
    MEMORY[0x277D82BD8](v255);
    MEMORY[0x277D82BD8](v256);
    MEMORY[0x277D82BD8](v257);
    MEMORY[0x277D82BD8](v258);
    MEMORY[0x277D82BD8](v259);
    MEMORY[0x277D82BD8](v260);
    MEMORY[0x277D82BD8](v261);
    v10 = MEMORY[0x277D82BD8](v262).n128_u64[0];
  }

  else
  {
    v203 = [(AKModalSignInViewController *)v283 containerView];
    v202 = [(UIView *)v203 leadingAnchor];
    v201 = [(AKModalSignInViewController *)v283 view];
    v200 = [v201 leadingAnchor];
    v199 = [MEMORY[0x277D75418] currentDevice];
    v11 = [v199 userInterfaceIdiom];
    v12 = 128.0;
    if (v11 != 1)
    {
      v12 = 32.0;
    }

    v198 = [(NSLayoutXAxisAnchor *)v202 constraintEqualToAnchor:v200 constant:v12];
    v288[0] = v198;
    v197 = [(AKModalSignInViewController *)v283 containerView];
    v196 = [(UIView *)v197 trailingAnchor];
    v195 = [(AKModalSignInViewController *)v283 view];
    v194 = [v195 trailingAnchor];
    v193 = [MEMORY[0x277D75418] currentDevice];
    v13 = [v193 userInterfaceIdiom];
    v14 = 128.0;
    if (v13 != 1)
    {
      v14 = 32.0;
    }

    v192 = [(NSLayoutXAxisAnchor *)v196 constraintEqualToAnchor:v194 constant:-v14];
    v288[1] = v192;
    v191 = [(AKModalSignInViewController *)v283 titleLabel];
    v190 = [(UILabel *)v191 firstBaselineAnchor];
    v189 = [(AKModalSignInViewController *)v283 containerView];
    v188 = [(UIView *)v189 topAnchor];
    v187 = [v190 constraintEqualToAnchor:39.0 constant:?];
    v288[2] = v187;
    v186 = [(AKModalSignInViewController *)v283 titleLabel];
    v185 = [(UILabel *)v186 leadingAnchor];
    v184 = [(AKModalSignInViewController *)v283 containerView];
    v183 = [(UIView *)v184 leadingAnchor];
    v182 = [v185 constraintEqualToAnchor:?];
    v288[3] = v182;
    v181 = [(AKModalSignInViewController *)v283 titleLabel];
    v180 = [(UILabel *)v181 trailingAnchor];
    v179 = [(AKModalSignInViewController *)v283 containerView];
    v178 = [(UIView *)v179 trailingAnchor];
    v177 = [v180 constraintEqualToAnchor:?];
    v288[4] = v177;
    v176 = [(AKModalSignInViewController *)v283 titleLabel];
    v175 = [(UILabel *)v176 heightAnchor];
    v174 = [v175 constraintGreaterThanOrEqualToConstant:17.0];
    v288[5] = v174;
    v173 = [(AKModalSignInViewController *)v283 bodyLabel];
    v172 = [(UILabel *)v173 firstBaselineAnchor];
    v171 = [(AKModalSignInViewController *)v283 titleLabel];
    v170 = [(UILabel *)v171 lastBaselineAnchor];
    v169 = [v172 constraintEqualToAnchor:24.0 constant:?];
    v288[6] = v169;
    v168 = [(AKModalSignInViewController *)v283 bodyLabel];
    v167 = [(UILabel *)v168 leadingAnchor];
    v166 = [(AKModalSignInViewController *)v283 containerView];
    v165 = [(UIView *)v166 leadingAnchor];
    v164 = [v167 constraintEqualToAnchor:?];
    v288[7] = v164;
    v163 = [(AKModalSignInViewController *)v283 bodyLabel];
    v162 = [(UILabel *)v163 trailingAnchor];
    v161 = [(AKModalSignInViewController *)v283 containerView];
    v160 = [(UIView *)v161 trailingAnchor];
    v159 = [v162 constraintEqualToAnchor:?];
    v288[8] = v159;
    v158 = [(AKModalSignInViewController *)v283 bodyLabel];
    v157 = [(UILabel *)v158 heightAnchor];
    v156 = [v157 constraintGreaterThanOrEqualToConstant:56.0];
    v288[9] = v156;
    v155 = [(AKModalSignInViewController *)v283 signInButton];
    v154 = [(AKRoundedButton *)v155 centerXAnchor];
    v153 = [(AKModalSignInViewController *)v283 containerView];
    v152 = [(UIView *)v153 centerXAnchor];
    v151 = [v154 constraintEqualToAnchor:?];
    v288[10] = v151;
    v150 = [(AKModalSignInViewController *)v283 signInButton];
    v149 = [(AKRoundedButton *)v150 heightAnchor];
    v148 = [v149 constraintGreaterThanOrEqualToConstant:44.0];
    v288[11] = v148;
    v147 = [(AKModalSignInViewController *)v283 containerView];
    v146 = [(UIView *)v147 heightAnchor];
    v145 = [(NSLayoutDimension *)v146 constraintGreaterThanOrEqualToConstant:220.0];
    v288[12] = v145;
    v144 = [MEMORY[0x277CBEA60] arrayWithObjects:v288 count:13];
    [v282[0] addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v144);
    MEMORY[0x277D82BD8](v145);
    MEMORY[0x277D82BD8](v146);
    MEMORY[0x277D82BD8](v147);
    MEMORY[0x277D82BD8](v148);
    MEMORY[0x277D82BD8](v149);
    MEMORY[0x277D82BD8](v150);
    MEMORY[0x277D82BD8](v151);
    MEMORY[0x277D82BD8](v152);
    MEMORY[0x277D82BD8](v153);
    MEMORY[0x277D82BD8](v154);
    MEMORY[0x277D82BD8](v155);
    MEMORY[0x277D82BD8](v156);
    MEMORY[0x277D82BD8](v157);
    MEMORY[0x277D82BD8](v158);
    MEMORY[0x277D82BD8](v159);
    MEMORY[0x277D82BD8](v160);
    MEMORY[0x277D82BD8](v161);
    MEMORY[0x277D82BD8](v162);
    MEMORY[0x277D82BD8](v163);
    MEMORY[0x277D82BD8](v164);
    MEMORY[0x277D82BD8](v165);
    MEMORY[0x277D82BD8](v166);
    MEMORY[0x277D82BD8](v167);
    MEMORY[0x277D82BD8](v168);
    MEMORY[0x277D82BD8](v169);
    MEMORY[0x277D82BD8](v170);
    MEMORY[0x277D82BD8](v171);
    MEMORY[0x277D82BD8](v172);
    MEMORY[0x277D82BD8](v173);
    MEMORY[0x277D82BD8](v174);
    MEMORY[0x277D82BD8](v175);
    MEMORY[0x277D82BD8](v176);
    MEMORY[0x277D82BD8](v177);
    MEMORY[0x277D82BD8](v178);
    MEMORY[0x277D82BD8](v179);
    MEMORY[0x277D82BD8](v180);
    MEMORY[0x277D82BD8](v181);
    MEMORY[0x277D82BD8](v182);
    MEMORY[0x277D82BD8](v183);
    MEMORY[0x277D82BD8](v184);
    MEMORY[0x277D82BD8](v185);
    MEMORY[0x277D82BD8](v186);
    MEMORY[0x277D82BD8](v187);
    MEMORY[0x277D82BD8](v188);
    MEMORY[0x277D82BD8](v189);
    MEMORY[0x277D82BD8](v190);
    MEMORY[0x277D82BD8](v191);
    MEMORY[0x277D82BD8](v192);
    MEMORY[0x277D82BD8](v193);
    MEMORY[0x277D82BD8](v194);
    MEMORY[0x277D82BD8](v195);
    MEMORY[0x277D82BD8](v196);
    MEMORY[0x277D82BD8](v197);
    MEMORY[0x277D82BD8](v198);
    MEMORY[0x277D82BD8](v199);
    MEMORY[0x277D82BD8](v200);
    MEMORY[0x277D82BD8](v201);
    MEMORY[0x277D82BD8](v202);
    v10 = MEMORY[0x277D82BD8](v203).n128_u64[0];
  }

  if ([(AKModalSignInViewController *)v283 _shouldHidePasswordField])
  {
    v143 = [(AKModalSignInViewController *)v283 signInButton];
    v142 = [(AKRoundedButton *)v143 topAnchor];
    v141 = [(AKModalSignInViewController *)v283 bodyLabel];
    v140 = [(UILabel *)v141 lastBaselineAnchor];
    v139 = [v142 constraintEqualToAnchor:20.0 constant:?];
    v287[0] = v139;
    v138 = [(AKModalSignInViewController *)v283 containerView];
    v137 = [(UIView *)v138 bottomAnchor];
    v136 = [(AKModalSignInViewController *)v283 view];
    v135 = [v136 bottomAnchor];
    v134 = [(NSLayoutYAxisAnchor *)v137 constraintEqualToAnchor:-20.0 constant:?];
    v287[1] = v134;
    v133 = [MEMORY[0x277CBEA60] arrayWithObjects:v287 count:2];
    [v282[0] addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v133);
    MEMORY[0x277D82BD8](v134);
    MEMORY[0x277D82BD8](v135);
    MEMORY[0x277D82BD8](v136);
    MEMORY[0x277D82BD8](v137);
    MEMORY[0x277D82BD8](v138);
    MEMORY[0x277D82BD8](v139);
    MEMORY[0x277D82BD8](v140);
    MEMORY[0x277D82BD8](v141);
    MEMORY[0x277D82BD8](v142);
    v15 = MEMORY[0x277D82BD8](v143).n128_u64[0];
  }

  else if (v283->_isSolariumEnabled)
  {
    v132 = [(AKModalSignInViewController *)v283 usernameField];
    v131 = [(UITextField *)v132 topAnchor];
    v130 = [(AKModalSignInViewController *)v283 bodyLabel];
    v129 = [(UILabel *)v130 lastBaselineAnchor];
    v128 = [v131 constraintEqualToAnchor:? constant:?];
    v286[0] = v128;
    v127 = [(AKModalSignInViewController *)v283 usernameField];
    v126 = [(UITextField *)v127 leadingAnchor];
    v125 = [(AKModalSignInViewController *)v283 containerView];
    v124 = [(UIView *)v125 leadingAnchor];
    v123 = [v126 constraintEqualToAnchor:?];
    v286[1] = v123;
    v122 = [(AKModalSignInViewController *)v283 usernameField];
    v121 = [(UITextField *)v122 trailingAnchor];
    v120 = [(AKModalSignInViewController *)v283 containerView];
    v119 = [(UIView *)v120 trailingAnchor];
    v118 = [v121 constraintEqualToAnchor:?];
    v286[2] = v118;
    v117 = [(AKModalSignInViewController *)v283 usernameField];
    v116 = [(UITextField *)v117 heightAnchor];
    v115 = [v116 constraintEqualToConstant:?];
    v286[3] = v115;
    v114 = [(AKModalSignInViewController *)v283 separatorView];
    v113 = [(UIView *)v114 leadingAnchor];
    v112 = [(AKModalSignInViewController *)v283 usernameField];
    v111 = [(UITextField *)v112 leadingAnchor];
    v110 = [(NSLayoutXAxisAnchor *)v113 constraintEqualToAnchor:13.0 constant:?];
    v286[4] = v110;
    v109 = [(AKModalSignInViewController *)v283 separatorView];
    v108 = [(UIView *)v109 trailingAnchor];
    v107 = [(AKModalSignInViewController *)v283 usernameField];
    v106 = [(UITextField *)v107 trailingAnchor];
    v105 = [(NSLayoutXAxisAnchor *)v108 constraintEqualToAnchor:-13.0 constant:?];
    v286[5] = v105;
    v104 = [(AKModalSignInViewController *)v283 separatorView];
    v103 = [(UIView *)v104 heightAnchor];
    v102 = [(NSLayoutDimension *)v103 constraintEqualToConstant:1.0];
    v286[6] = v102;
    v101 = [(AKModalSignInViewController *)v283 separatorView];
    v100 = [(UIView *)v101 topAnchor];
    v99 = [(AKModalSignInViewController *)v283 usernameField];
    v98 = [(UITextField *)v99 bottomAnchor];
    v97 = [(NSLayoutYAxisAnchor *)v100 constraintEqualToAnchor:?];
    v286[7] = v97;
    v96 = [(AKModalSignInViewController *)v283 passwordField];
    v95 = [(UITextField *)v96 topAnchor];
    v94 = [(AKModalSignInViewController *)v283 usernameField];
    v93 = [(UITextField *)v94 bottomAnchor];
    v92 = [v95 constraintEqualToAnchor:?];
    v286[8] = v92;
    v91 = [(AKModalSignInViewController *)v283 passwordField];
    v90 = [(UITextField *)v91 leadingAnchor];
    v89 = [(AKModalSignInViewController *)v283 containerView];
    v88 = [(UIView *)v89 leadingAnchor];
    v87 = [v90 constraintEqualToAnchor:?];
    v286[9] = v87;
    v86 = [(AKModalSignInViewController *)v283 passwordField];
    v85 = [(UITextField *)v86 trailingAnchor];
    v84 = [(AKModalSignInViewController *)v283 containerView];
    v83 = [(UIView *)v84 trailingAnchor];
    v82 = [v85 constraintEqualToAnchor:?];
    v286[10] = v82;
    v81 = [(AKModalSignInViewController *)v283 passwordField];
    v80 = [(UITextField *)v81 heightAnchor];
    v79 = [v80 constraintEqualToConstant:52.0];
    v286[11] = v79;
    v78 = [(AKModalSignInViewController *)v283 signInButton];
    v77 = [(AKRoundedButton *)v78 topAnchor];
    v76 = [(AKModalSignInViewController *)v283 passwordField];
    v75 = [(UITextField *)v76 bottomAnchor];
    v74 = [v77 constraintEqualToAnchor:20.0 constant:?];
    v286[12] = v74;
    v73 = [(AKModalSignInViewController *)v283 iForgotButton];
    v72 = [(UIButton *)v73 topAnchor];
    v71 = [(AKModalSignInViewController *)v283 signInButton];
    v70 = [(AKRoundedButton *)v71 bottomAnchor];
    v69 = [v72 constraintEqualToAnchor:15.0 constant:?];
    v286[13] = v69;
    v68 = [(AKModalSignInViewController *)v283 iForgotButton];
    v67 = [(UIButton *)v68 heightAnchor];
    v66 = [v67 constraintGreaterThanOrEqualToConstant:34.0];
    v286[14] = v66;
    v65 = [(AKModalSignInViewController *)v283 iForgotButton];
    v64 = [(UIButton *)v65 centerXAnchor];
    v63 = [(AKModalSignInViewController *)v283 containerView];
    v62 = [(UIView *)v63 centerXAnchor];
    v61 = [v64 constraintEqualToAnchor:?];
    v286[15] = v61;
    v60 = [(AKModalSignInViewController *)v283 iForgotButton];
    v59 = [(UIButton *)v60 bottomAnchor];
    v58 = [(AKModalSignInViewController *)v283 containerView];
    v57 = [(UIView *)v58 bottomAnchor];
    v56 = [v59 constraintEqualToAnchor:-20.0 constant:?];
    v286[16] = v56;
    v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v286 count:17];
    [v282[0] addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](v56);
    MEMORY[0x277D82BD8](v57);
    MEMORY[0x277D82BD8](v58);
    MEMORY[0x277D82BD8](v59);
    MEMORY[0x277D82BD8](v60);
    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](v62);
    MEMORY[0x277D82BD8](v63);
    MEMORY[0x277D82BD8](v64);
    MEMORY[0x277D82BD8](v65);
    MEMORY[0x277D82BD8](v66);
    MEMORY[0x277D82BD8](v67);
    MEMORY[0x277D82BD8](v68);
    MEMORY[0x277D82BD8](v69);
    MEMORY[0x277D82BD8](v70);
    MEMORY[0x277D82BD8](v71);
    MEMORY[0x277D82BD8](v72);
    MEMORY[0x277D82BD8](v73);
    MEMORY[0x277D82BD8](v74);
    MEMORY[0x277D82BD8](v75);
    MEMORY[0x277D82BD8](v76);
    MEMORY[0x277D82BD8](v77);
    MEMORY[0x277D82BD8](v78);
    MEMORY[0x277D82BD8](v79);
    MEMORY[0x277D82BD8](v80);
    MEMORY[0x277D82BD8](v81);
    MEMORY[0x277D82BD8](v82);
    MEMORY[0x277D82BD8](v83);
    MEMORY[0x277D82BD8](v84);
    MEMORY[0x277D82BD8](v85);
    MEMORY[0x277D82BD8](v86);
    MEMORY[0x277D82BD8](v87);
    MEMORY[0x277D82BD8](v88);
    MEMORY[0x277D82BD8](v89);
    MEMORY[0x277D82BD8](v90);
    MEMORY[0x277D82BD8](v91);
    MEMORY[0x277D82BD8](v92);
    MEMORY[0x277D82BD8](v93);
    MEMORY[0x277D82BD8](v94);
    MEMORY[0x277D82BD8](v95);
    MEMORY[0x277D82BD8](v96);
    MEMORY[0x277D82BD8](v97);
    MEMORY[0x277D82BD8](v98);
    MEMORY[0x277D82BD8](v99);
    MEMORY[0x277D82BD8](v100);
    MEMORY[0x277D82BD8](v101);
    MEMORY[0x277D82BD8](v102);
    MEMORY[0x277D82BD8](v103);
    MEMORY[0x277D82BD8](v104);
    MEMORY[0x277D82BD8](v105);
    MEMORY[0x277D82BD8](v106);
    MEMORY[0x277D82BD8](v107);
    MEMORY[0x277D82BD8](v108);
    MEMORY[0x277D82BD8](v109);
    MEMORY[0x277D82BD8](v110);
    MEMORY[0x277D82BD8](v111);
    MEMORY[0x277D82BD8](v112);
    MEMORY[0x277D82BD8](v113);
    MEMORY[0x277D82BD8](v114);
    MEMORY[0x277D82BD8](v115);
    MEMORY[0x277D82BD8](v116);
    MEMORY[0x277D82BD8](v117);
    MEMORY[0x277D82BD8](v118);
    MEMORY[0x277D82BD8](v119);
    MEMORY[0x277D82BD8](v120);
    MEMORY[0x277D82BD8](v121);
    MEMORY[0x277D82BD8](v122);
    MEMORY[0x277D82BD8](v123);
    MEMORY[0x277D82BD8](v124);
    MEMORY[0x277D82BD8](v125);
    MEMORY[0x277D82BD8](v126);
    MEMORY[0x277D82BD8](v127);
    MEMORY[0x277D82BD8](v128);
    MEMORY[0x277D82BD8](v129);
    MEMORY[0x277D82BD8](v130);
    MEMORY[0x277D82BD8](v131);
    v15 = MEMORY[0x277D82BD8](v132).n128_u64[0];
  }

  else
  {
    v54 = [(AKModalSignInViewController *)v283 passwordField];
    v53 = [(UITextField *)v54 topAnchor];
    v52 = [(AKModalSignInViewController *)v283 bodyLabel];
    v51 = [(UILabel *)v52 lastBaselineAnchor];
    v50 = [v53 constraintEqualToAnchor:? constant:?];
    v285[0] = v50;
    v49 = [(AKModalSignInViewController *)v283 passwordField];
    v48 = [(UITextField *)v49 leadingAnchor];
    v47 = [(AKModalSignInViewController *)v283 containerView];
    v46 = [(UIView *)v47 leadingAnchor];
    v45 = [v48 constraintEqualToAnchor:20.0 constant:?];
    v285[1] = v45;
    v44 = [(AKModalSignInViewController *)v283 passwordField];
    v43 = [(UITextField *)v44 trailingAnchor];
    v42 = [(AKModalSignInViewController *)v283 containerView];
    v41 = [(UIView *)v42 trailingAnchor];
    v40 = [v43 constraintEqualToAnchor:-20.0 constant:?];
    v285[2] = v40;
    v39 = [(AKModalSignInViewController *)v283 passwordField];
    v38 = [(UITextField *)v39 heightAnchor];
    v37 = [v38 constraintEqualToConstant:44.0];
    v285[3] = v37;
    v36 = [(AKModalSignInViewController *)v283 signInButton];
    v35 = [(AKRoundedButton *)v36 topAnchor];
    v34 = [(AKModalSignInViewController *)v283 passwordField];
    v33 = [(UITextField *)v34 bottomAnchor];
    v32 = [v35 constraintEqualToAnchor:20.0 constant:?];
    v285[4] = v32;
    v31 = [(AKModalSignInViewController *)v283 iForgotButton];
    v30 = [(UIButton *)v31 topAnchor];
    v29 = [(AKModalSignInViewController *)v283 signInButton];
    v28 = [(AKRoundedButton *)v29 bottomAnchor];
    v27 = [v30 constraintEqualToAnchor:16.0 constant:?];
    v285[5] = v27;
    v26 = [(AKModalSignInViewController *)v283 iForgotButton];
    v25 = [(UIButton *)v26 centerXAnchor];
    v24 = [(AKModalSignInViewController *)v283 containerView];
    v23 = [(UIView *)v24 centerXAnchor];
    v22 = [v25 constraintEqualToAnchor:?];
    v285[6] = v22;
    v21 = [(AKModalSignInViewController *)v283 iForgotButton];
    v20 = [(UIButton *)v21 bottomAnchor];
    v19 = [(AKModalSignInViewController *)v283 containerView];
    v18 = [(UIView *)v19 bottomAnchor];
    v17 = [v20 constraintEqualToAnchor:-17.0 constant:?];
    v285[7] = v17;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v285 count:8];
    [v282[0] addObjectsFromArray:?];
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
    v15 = MEMORY[0x277D82BD8](v54).n128_u64[0];
  }

  [MEMORY[0x277CCAAD0] activateConstraints:{v282[0], *&v15}];
  objc_storeStrong(&location, 0);
  objc_storeStrong(v282, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_updateViewConstraints
{
  v20 = self;
  v19 = a2;
  v18.receiver = self;
  v18.super_class = AKModalSignInViewController;
  [(AKModalSignInViewController *)&v18 updateViewConstraints];
  if (v20->_isSolariumEnabled)
  {
    v17 = [(AKModalSignInViewController *)v20 view];
    [v17 bounds];
    v13 = v2;
    v16 = [MEMORY[0x277D75418] currentDevice];
    v3 = [v16 userInterfaceIdiom];
    v4 = 256.0;
    if (v3 != 1)
    {
      v4 = 16.0;
    }

    v14 = v13 - v4;
    v15 = [(AKModalSignInViewController *)v20 bodyLabel];
    [(UILabel *)v15 setPreferredMaxLayoutWidth:v14];
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
  }

  else
  {
    v12 = [(AKModalSignInViewController *)v20 view];
    [v12 bounds];
    v8 = v5;
    v11 = [MEMORY[0x277D75418] currentDevice];
    v6 = [v11 userInterfaceIdiom];
    v7 = 256.0;
    if (v6 != 1)
    {
      v7 = 24.0;
    }

    v9 = v8 - v7;
    v10 = [(AKModalSignInViewController *)v20 bodyLabel];
    [(UILabel *)v10 setPreferredMaxLayoutWidth:v9];
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
  }
}

- (BOOL)_isUsingPasscodeAuth
{
  v3 = [MEMORY[0x277CF0228] sharedManager];
  v5 = 0;
  v4 = 0;
  if ([v3 isChildPasscodeEnabled])
  {
    v6 = [(AKBaseSignInViewController *)self context];
    v5 = 1;
    v4 = [(AKAppleIDAuthenticationInAppContext *)v6 isContextEligibleForPasscodeAuth];
  }

  if (v5)
  {
    MEMORY[0x277D82BD8](v6);
  }

  MEMORY[0x277D82BD8](v3);
  return v4 & 1;
}

- (void)_passwordRecoveryButtonWasTapped:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = _AKLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(AKBaseSignInViewController *)v12 context];
    v8 = [(AKAppleIDAuthenticationInAppContext *)v9 username];
    __os_log_helper_16_2_1_8_64(v13, v8);
    _os_log_impl(&dword_222379000, v10, OS_LOG_TYPE_DEFAULT, "Will take user to password-reset flow for %@...", v13, 0xCu);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
  }

  objc_storeStrong(&v10, 0);
  v3 = v12;
  v7 = [(AKBaseSignInViewController *)v12 context];
  v6 = [(AKAppleIDAuthenticationInAppContext *)v7 username];
  v5 = [(AKModalSignInViewController *)v12 passwordField];
  v4 = [(UITextField *)v5 text];
  [(AKBaseSignInViewController *)v3 _beginAuthenticationIfPossibleWithOption:2 withUsername:v6 password:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_signInButtonTapped:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(AKModalSignInViewController *)v16 _isUsingPasscodeAuth])
  {
    v12 = v16;
    v14 = [(AKBaseSignInViewController *)v16 context];
    v13 = [(AKAppleIDAuthenticationInAppContext *)v14 username];
    [AKBaseSignInViewController _beginAuthenticationIfPossibleWithOption:v12 withUsername:"_beginAuthenticationIfPossibleWithOption:withUsername:password:" password:1];
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
  }

  else
  {
    v10 = [(AKModalSignInViewController *)v16 passwordField];
    v9 = [(UITextField *)v10 text];
    v11 = [(NSString *)v9 length];
    MEMORY[0x277D82BD8](v9);
    *&v3 = MEMORY[0x277D82BD8](v10).n128_u64[0];
    if (v11)
    {
      v4 = v16;
      v8 = [(AKBaseSignInViewController *)v16 context];
      v7 = [(AKAppleIDAuthenticationInAppContext *)v8 username];
      v6 = [(AKModalSignInViewController *)v16 passwordField];
      v5 = [(UITextField *)v6 text];
      [(AKBaseSignInViewController *)v4 _beginAuthenticationIfPossibleWithOption:1 withUsername:v7 password:?];
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v8);
    }
  }

  objc_storeStrong(location, 0);
}

- (void)startAnimating
{
  v11 = self;
  v10 = a2;
  v9.receiver = self;
  v9.super_class = AKModalSignInViewController;
  [(AKBaseSignInViewController *)&v9 startAnimating];
  v6 = [(AKModalSignInViewController *)v11 signInButton];
  v5 = [MEMORY[0x277D75348] systemGrayColor];
  [(AKRoundedButton *)v6 setBackgroundColor:?];
  MEMORY[0x277D82BD8](v5);
  *&v2 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  v7 = [(AKModalSignInViewController *)v11 signInButton];
  [(AKRoundedButton *)v7 setEnabled:0];
  *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  v8 = [(AKModalSignInViewController *)v11 passwordField];
  v4 = [(UITextField *)v8 ak_addActivityIndicator];
  MEMORY[0x277D82BD8](v8);
}

- (void)stopAnimating
{
  v8 = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = AKModalSignInViewController;
  [(AKBaseSignInViewController *)&v6 stopAnimating];
  v4 = [(AKModalSignInViewController *)v8 signInButton];
  v3 = [MEMORY[0x277D75348] systemBlueColor];
  [(AKRoundedButton *)v4 setBackgroundColor:?];
  MEMORY[0x277D82BD8](v3);
  *&v2 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  v5 = [(AKModalSignInViewController *)v8 passwordField];
  [(UITextField *)v5 ak_clearActivityIndicatorIfExist];
  MEMORY[0x277D82BD8](v5);
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v14 = a3;
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  v11.receiver = v13;
  v11.super_class = AKModalSignInViewController;
  [(AKModalSignInViewController *)&v11 viewWillTransitionToSize:location[0] withTransitionCoordinator:v14.width, v14.height];
  v4 = location[0];
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __82__AKModalSignInViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9 = &unk_2784A62E0;
  v10 = MEMORY[0x277D82BE0](v13);
  [v4 animateAlongsideTransition:? completion:?];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

void __82__AKModalSignInViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [a1[4] view];
  [v3 setNeedsUpdateConstraints];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (BOOL)becomeFirstResponder
{
  v3 = [(AKModalSignInViewController *)self passwordField];
  v4 = [(UITextField *)v3 becomeFirstResponder];
  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (BOOL)resignFirstResponder
{
  v3 = [(AKModalSignInViewController *)self passwordField];
  v4 = [(UITextField *)v3 resignFirstResponder];
  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (BOOL)canBecomeFirstResponder
{
  v3 = [(AKModalSignInViewController *)self passwordField];
  v4 = [(UITextField *)v3 canBecomeFirstResponder];
  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = location[0];
  v11 = [(AKModalSignInViewController *)v16 passwordField];
  v13 = 0;
  v12 = 0;
  if (v10 == v11)
  {
    v14 = [location[0] text];
    v13 = 1;
    v12 = [v14 length] != 0;
  }

  if (v13)
  {
    MEMORY[0x277D82BD8](v14);
  }

  *&v3 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  if (v12)
  {
    v5 = v16;
    v9 = [(AKBaseSignInViewController *)v16 context];
    v8 = [(AKAppleIDAuthenticationInAppContext *)v9 username];
    v7 = [(AKModalSignInViewController *)v16 passwordField];
    v6 = [(UITextField *)v7 text];
    [(AKBaseSignInViewController *)v5 _beginAuthenticationIfPossibleWithOption:1 withUsername:v8 password:?];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
  }

  objc_storeStrong(location, 0);
  return 1;
}

- (void)displayAlertForContext:(id)a3 error:(id)a4 completion:(id)a5
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  v21 = 0;
  objc_storeStrong(&v21, a5);
  v13 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  v14 = v13;
  dispatch_assert_queue_V2(v14);
  *&v6 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  v15 = [(AKModalSignInViewController *)v24 passwordField];
  v20 = [(UITextField *)v15 layer];
  v16 = [MEMORY[0x277CD9DF8] ak_jiggleAnimation];
  [v20 addAnimation:? forKey:?];
  *&v7 = MEMORY[0x277D82BD8](v16).n128_u64[0];
  v18 = 0;
  v17 = 0;
  if ([v22 code] == -7006)
  {
    v19 = [v22 domain];
    v18 = 1;
    v17 = [v19 isEqualToString:*MEMORY[0x277CEFF48]];
  }

  if (v18)
  {
    MEMORY[0x277D82BD8](v19);
  }

  if (v17)
  {
    v9 = [(AKModalSignInViewController *)v24 passwordField];
    [(UITextField *)v9 setText:0];
    *&v8 = MEMORY[0x277D82BD8](v9).n128_u64[0];
    v10 = [(AKModalSignInViewController *)v24 signInButton];
    [(AKRoundedButton *)v10 setEnabled:0];
    MEMORY[0x277D82BD8](v10);
  }

  if (v21)
  {
    (*(v21 + 2))(v21, 0, 0, 0, v22);
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)context:(id)a3 needsPasswordWithCompletion:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v5 = v8;
  v7 = [(AKModalSignInViewController *)v10 passwordField];
  v6 = [(UITextField *)v7 text];
  v5[2]();
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

@end