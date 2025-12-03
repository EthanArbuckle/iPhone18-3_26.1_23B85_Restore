@interface AKModalSignInViewController
- (AKModalSignInViewController)init;
- (BOOL)_isUsingPasscodeAuth;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)resignFirstResponder;
- (BOOL)textFieldShouldReturn:(id)return;
- (id)_bodyText;
- (id)_buttonTitle;
- (void)_beginObservingTextFieldDidChangeNotifications;
- (void)_createViews;
- (void)_endObservingTextFieldDidChangeNotifications;
- (void)_passwordRecoveryButtonWasTapped:(id)tapped;
- (void)_setupConstraints;
- (void)_setupPasswordField;
- (void)_setupTextFields;
- (void)_setupUsernameField;
- (void)_setupViews;
- (void)_signInButtonTapped:(id)tapped;
- (void)_textFieldDidChange:(id)change;
- (void)_updateSignInButtonEnabled:(BOOL)enabled;
- (void)_updateViewConstraints;
- (void)context:(id)context needsPasswordWithCompletion:(id)completion;
- (void)dealloc;
- (void)displayAlertForContext:(id)context error:(id)error completion:(id)completion;
- (void)setupTextEntryField:(id)field;
- (void)startAnimating;
- (void)stopAnimating;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation AKModalSignInViewController

- (AKModalSignInViewController)init
{
  selfCopy = self;
  v9 = a2;
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  isAuthKitSolariumFeatureEnabled = [mEMORY[0x277CF0228] isAuthKitSolariumFeatureEnabled];
  selfCopy[1033] = isAuthKitSolariumFeatureEnabled;
  *&v3 = MEMORY[0x277D82BD8](mEMORY[0x277CF0228]).n128_u64[0];
  v4 = selfCopy;
  selfCopy = 0;
  v8.receiver = v4;
  v8.super_class = AKModalSignInViewController;
  selfCopy = [(AKBaseSignInViewController *)&v8 _initWithAuthController:v3];
  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (void)viewDidLoad
{
  selfCopy = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = AKModalSignInViewController;
  [(AKModalSignInViewController *)&v4 viewDidLoad];
  [(AKModalSignInViewController *)selfCopy _setupViews];
  [(AKModalSignInViewController *)selfCopy _setupConstraints];
  v2 = selfCopy;
  context = [(AKBaseSignInViewController *)selfCopy context];
  [(AKAppleIDAuthenticationInAppContext *)context setAlertDelegate:v2];
  MEMORY[0x277D82BD8](context);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  v6 = a2;
  appearCopy = appear;
  v4.receiver = self;
  v4.super_class = AKModalSignInViewController;
  [(AKBaseSignInViewController *)&v4 viewDidAppear:appear];
  if (![(AKModalSignInViewController *)selfCopy _shouldHidePasswordField])
  {
    passwordField = [(AKModalSignInViewController *)selfCopy passwordField];
    [(UITextField *)passwordField becomeFirstResponder];
    MEMORY[0x277D82BD8](passwordField);
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v5 = a2;
  appearCopy = appear;
  v3.receiver = self;
  v3.super_class = AKModalSignInViewController;
  [(AKModalSignInViewController *)&v3 viewWillAppear:appear];
  [(AKModalSignInViewController *)selfCopy _beginObservingTextFieldDidChangeNotifications];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  v6 = a2;
  disappearCopy = disappear;
  v4.receiver = self;
  v4.super_class = AKModalSignInViewController;
  [(AKModalSignInViewController *)&v4 viewWillDisappear:disappear];
  if (![(AKModalSignInViewController *)selfCopy _shouldHidePasswordField])
  {
    passwordField = [(AKModalSignInViewController *)selfCopy passwordField];
    [(UITextField *)passwordField resignFirstResponder];
    MEMORY[0x277D82BD8](passwordField);
  }

  [(AKModalSignInViewController *)selfCopy _endObservingTextFieldDidChangeNotifications];
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  [(AKModalSignInViewController *)self _endObservingTextFieldDidChangeNotifications];
  v2.receiver = selfCopy;
  v2.super_class = AKModalSignInViewController;
  [(AKBaseSignInViewController *)&v2 dealloc];
}

- (void)_setupViews
{
  [(AKModalSignInViewController *)self _createViews];
  containerView = [(AKModalSignInViewController *)self containerView];
  titleLabel = [(AKModalSignInViewController *)self titleLabel];
  [(UIView *)containerView addSubview:?];
  MEMORY[0x277D82BD8](titleLabel);
  containerView2 = [(AKModalSignInViewController *)self containerView];
  bodyLabel = [(AKModalSignInViewController *)self bodyLabel];
  [(UIView *)containerView2 addSubview:?];
  MEMORY[0x277D82BD8](bodyLabel);
  containerView3 = [(AKModalSignInViewController *)self containerView];
  usernameField = [(AKModalSignInViewController *)self usernameField];
  [(UIView *)containerView3 addSubview:?];
  MEMORY[0x277D82BD8](usernameField);
  containerView4 = [(AKModalSignInViewController *)self containerView];
  passwordField = [(AKModalSignInViewController *)self passwordField];
  [(UIView *)containerView4 addSubview:?];
  MEMORY[0x277D82BD8](passwordField);
  containerView5 = [(AKModalSignInViewController *)self containerView];
  separatorView = [(AKModalSignInViewController *)self separatorView];
  [(UIView *)containerView5 addSubview:?];
  MEMORY[0x277D82BD8](separatorView);
  containerView6 = [(AKModalSignInViewController *)self containerView];
  signInButton = [(AKModalSignInViewController *)self signInButton];
  [(UIView *)containerView6 addSubview:?];
  MEMORY[0x277D82BD8](signInButton);
  containerView7 = [(AKModalSignInViewController *)self containerView];
  iForgotButton = [(AKModalSignInViewController *)self iForgotButton];
  [(UIView *)containerView7 addSubview:?];
  MEMORY[0x277D82BD8](iForgotButton);
  view = [(AKModalSignInViewController *)self view];
  containerView8 = [(AKModalSignInViewController *)self containerView];
  [view addSubview:?];
  MEMORY[0x277D82BD8](containerView8);
  MEMORY[0x277D82BD8](view);
}

- (void)_createViews
{
  selfCopy = self;
  location[1] = a2;
  if (self->_backgroundColor)
  {
    backgroundColor = selfCopy->_backgroundColor;
    view = [(AKModalSignInViewController *)selfCopy view];
    [view setBackgroundColor:backgroundColor];
    MEMORY[0x277D82BD8](view);
  }

  else
  {
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    view2 = [(AKModalSignInViewController *)selfCopy view];
    [view2 setBackgroundColor:systemBackgroundColor];
    MEMORY[0x277D82BD8](view2);
    MEMORY[0x277D82BD8](systemBackgroundColor);
  }

  v2 = objc_alloc(MEMORY[0x277D756B8]);
  v40 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(AKModalSignInViewController *)selfCopy setTitleLabel:?];
  titleLabel = [(AKModalSignInViewController *)selfCopy titleLabel];
  [(UILabel *)titleLabel setNumberOfLines:?];
  titleLabel2 = [(AKModalSignInViewController *)selfCopy titleLabel];
  [(UILabel *)titleLabel2 setTextAlignment:1];
  context = [(AKBaseSignInViewController *)selfCopy context];
  [(AKAppleIDAuthenticationInAppContext *)context serviceType];
  v44 = AKSignInStringFromServiceType();
  titleLabel3 = [(AKModalSignInViewController *)selfCopy titleLabel];
  [(UILabel *)titleLabel3 setText:v44];
  MEMORY[0x277D82BD8](titleLabel3);
  MEMORY[0x277D82BD8](v44);
  location[0] = [MEMORY[0x277D74310] defaultFontDescriptorWithTextStyle:*MEMORY[0x277D76918] addingSymbolicTraits:32770 options:{0, MEMORY[0x277D82BD8](context).n128_f64[0]}];
  v47 = [MEMORY[0x277D74300] fontWithDescriptor:location[0] size:0.0];
  titleLabel4 = [(AKModalSignInViewController *)selfCopy titleLabel];
  [(UILabel *)titleLabel4 setFont:v47];
  MEMORY[0x277D82BD8](titleLabel4);
  *&v3 = MEMORY[0x277D82BD8](v47).n128_u64[0];
  v39 = selfCopy->_isSolariumEnabled || selfCopy->_hideTitle;
  titleLabel5 = [(AKModalSignInViewController *)selfCopy titleLabel];
  [(UILabel *)titleLabel5 setHidden:v39 != 0];
  MEMORY[0x277D82BD8](titleLabel5);
  v4 = objc_alloc(MEMORY[0x277D756B8]);
  v37 = MEMORY[0x277CBF3A0];
  v8 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(AKModalSignInViewController *)selfCopy setBodyLabel:?];
  bodyLabel = [(AKModalSignInViewController *)selfCopy bodyLabel];
  [(UILabel *)bodyLabel setNumberOfLines:?];
  *&v5 = MEMORY[0x277D82BD8](bodyLabel).n128_u64[0];
  v6 = 4;
  if (!selfCopy->_isSolariumEnabled)
  {
    v6 = 1;
  }

  v10 = v6;
  bodyLabel2 = [(AKModalSignInViewController *)selfCopy bodyLabel];
  [(UILabel *)bodyLabel2 setTextAlignment:v10];
  v13 = [MEMORY[0x277D74300] defaultFontForTextStyle:{*MEMORY[0x277D769C0], MEMORY[0x277D82BD8](bodyLabel2).n128_f64[0]}];
  bodyLabel3 = [(AKModalSignInViewController *)selfCopy bodyLabel];
  [(UILabel *)bodyLabel3 setFont:v13];
  MEMORY[0x277D82BD8](bodyLabel3);
  bodyLabel4 = [(AKModalSignInViewController *)selfCopy bodyLabel];
  [(UILabel *)bodyLabel4 setAdjustsFontForContentSizeCategory:1];
  _bodyText = [(AKModalSignInViewController *)selfCopy _bodyText];
  bodyLabel5 = [(AKModalSignInViewController *)selfCopy bodyLabel];
  [(UILabel *)bodyLabel5 setText:_bodyText];
  MEMORY[0x277D82BD8](bodyLabel5);
  [(AKModalSignInViewController *)selfCopy _setupTextFields];
  v17 = +[AKRoundedButton roundedButton];
  [(AKModalSignInViewController *)selfCopy setSignInButton:?];
  signInButton = [(AKModalSignInViewController *)selfCopy signInButton];
  [(AKRoundedButton *)signInButton addTarget:selfCopy action:sel__signInButtonTapped_ forControlEvents:?];
  signInButton2 = [(AKModalSignInViewController *)selfCopy signInButton];
  _buttonTitle = [(AKModalSignInViewController *)selfCopy _buttonTitle];
  [AKRoundedButton setTitle:signInButton2 forState:"setTitle:forState:"];
  MEMORY[0x277D82BD8](_buttonTitle);
  signInButton3 = [(AKModalSignInViewController *)selfCopy signInButton];
  [(AKRoundedButton *)signInButton3 setEnabled:0];
  signInButton4 = [(AKModalSignInViewController *)selfCopy signInButton];
  v22 = MEMORY[0x277D755B8];
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  v23 = [v22 ak_imageWithColor:?];
  [AKRoundedButton setBackgroundImage:signInButton4 forState:"setBackgroundImage:forState:"];
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](systemBlueColor);
  signInButton5 = [(AKModalSignInViewController *)selfCopy signInButton];
  v26 = MEMORY[0x277D755B8];
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  v27 = [v26 ak_imageWithColor:?];
  [AKRoundedButton setBackgroundImage:signInButton5 forState:"setBackgroundImage:forState:"];
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](systemGrayColor);
  v30 = [MEMORY[0x277D75220] buttonWithType:{1, MEMORY[0x277D82BD8](signInButton5).n128_f64[0]}];
  [(AKModalSignInViewController *)selfCopy setIForgotButton:?];
  iForgotButton = [(AKModalSignInViewController *)selfCopy iForgotButton];
  [(UIButton *)iForgotButton addTarget:selfCopy action:sel__passwordRecoveryButtonWasTapped_ forControlEvents:64];
  iForgotButton2 = [(AKModalSignInViewController *)selfCopy iForgotButton];
  v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v32 = [v33 localizedStringForKey:@"FORGOT_PASSWORD" value:&stru_28358EF68 table:@"Localizable"];
  [UIButton setTitle:iForgotButton2 forState:"setTitle:forState:"];
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v33);
  _shouldHidePasswordField = [(AKModalSignInViewController *)selfCopy _shouldHidePasswordField];
  iForgotButton3 = [(AKModalSignInViewController *)selfCopy iForgotButton];
  [(UIButton *)iForgotButton3 setHidden:_shouldHidePasswordField];
  MEMORY[0x277D82BD8](iForgotButton3);
  v38 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{*v37, v37[1], v37[2], v37[3]}];
  [(AKModalSignInViewController *)selfCopy setContainerView:?];
  MEMORY[0x277D82BD8](v38);
  objc_storeStrong(location, 0);
}

- (void)_beginObservingTextFieldDidChangeNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__textFieldDidChange_ name:*MEMORY[0x277D770B0] object:0];
  MEMORY[0x277D82BD8](defaultCenter);
}

- (void)_endObservingTextFieldDidChangeNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D770B0] object:0];
  MEMORY[0x277D82BD8](defaultCenter);
}

- (void)_textFieldDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  object = [location[0] object];
  passwordField = [(AKModalSignInViewController *)selfCopy passwordField];
  *&v3 = MEMORY[0x277D82BD8](passwordField).n128_u64[0];
  if (object == passwordField)
  {
    passwordField2 = [(AKModalSignInViewController *)selfCopy passwordField];
    text = [(UITextField *)passwordField2 text];
    v7 = [(NSString *)text length];
    MEMORY[0x277D82BD8](text);
    *&v4 = MEMORY[0x277D82BD8](passwordField2).n128_u64[0];
    if (v7)
    {
      [(AKModalSignInViewController *)selfCopy _updateSignInButtonEnabled:1, v4];
    }

    else
    {
      [(AKModalSignInViewController *)selfCopy _updateSignInButtonEnabled:0, v4];
    }
  }

  objc_storeStrong(&object, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateSignInButtonEnabled:(BOOL)enabled
{
  signInButton = [(AKModalSignInViewController *)self signInButton];
  isEnabled = [(AKRoundedButton *)signInButton isEnabled];
  *&v3 = MEMORY[0x277D82BD8](signInButton).n128_u64[0];
  if (isEnabled != enabled)
  {
    signInButton2 = [(AKModalSignInViewController *)self signInButton];
    [(AKRoundedButton *)signInButton2 setEnabled:enabled];
    MEMORY[0x277D82BD8](signInButton2);
  }
}

- (id)_bodyText
{
  selfCopy = self;
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
    context = [(AKBaseSignInViewController *)selfCopy context];
    v34 = 1;
    _interpolatedReason = [(AKAppleIDAuthenticationInAppContext *)context _interpolatedReason];
    v32 = 1;
    v2 = MEMORY[0x277D82BE0](_interpolatedReason);
  }

  v36[0] = v2;
  if (v32)
  {
    MEMORY[0x277D82BD8](_interpolatedReason);
  }

  if (v34)
  {
    MEMORY[0x277D82BD8](context);
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
    currentDevice = [MEMORY[0x277CF0218] currentDevice];
    isMultiUserMode = [currentDevice isMultiUserMode];
    *&v3 = MEMORY[0x277D82BD8](currentDevice).n128_u64[0];
    if (isMultiUserMode)
    {
      context2 = [(AKBaseSignInViewController *)selfCopy context];
      [(AKAppleIDAuthenticationInAppContext *)context2 serviceType];
      v4 = AKSharedDevicePasscodePromptAlertMessageWithServiceType();
      v5 = v36[0];
      v36[0] = v4;
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](context2);
    }

    else if ([(AKModalSignInViewController *)selfCopy _isUsingPasscodeAuth])
    {
      v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v6 = [v22 localizedStringForKey:@"PASSCODE_AUTHENTICATION_REASON" value:&stru_28358EF68 table:@"Localizable"];
      v7 = v36[0];
      v36[0] = v6;
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v22);
    }

    else if (selfCopy->_isSolariumEnabled)
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
      context3 = [(AKBaseSignInViewController *)selfCopy context];
      username = [(AKAppleIDAuthenticationInAppContext *)context3 username];
      v16 = [v14 formattedUsernameFromUsername:?];
      v10 = [v15 stringWithFormat:v19, v16];
      v11 = v36[0];
      v36[0] = v10;
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](username);
      MEMORY[0x277D82BD8](context3);
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
  quaternarySystemFillColor = [MEMORY[0x277D75348] quaternarySystemFillColor];
  separatorView = [(AKModalSignInViewController *)self separatorView];
  [(UIView *)separatorView setBackgroundColor:quaternarySystemFillColor];
  MEMORY[0x277D82BD8](separatorView);
  _shouldHideUsernameField = [(AKModalSignInViewController *)self _shouldHideUsernameField];
  separatorView2 = [(AKModalSignInViewController *)self separatorView];
  [(UIView *)separatorView2 setHidden:_shouldHideUsernameField];
  MEMORY[0x277D82BD8](separatorView2);
}

- (void)_setupUsernameField
{
  selfCopy = self;
  v8[1] = a2;
  v2 = [_AKInsetTextField alloc];
  v8[0] = [(_AKInsetTextField *)v2 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(AKModalSignInViewController *)selfCopy setupTextEntryField:v8[0]];
  if (selfCopy->_isSolariumEnabled)
  {
    layer = [v8[0] layer];
    [layer setMaskedCorners:3];
    MEMORY[0x277D82BD8](layer);
  }

  context = [(AKBaseSignInViewController *)selfCopy context];
  username = [(AKAppleIDAuthenticationInAppContext *)context username];
  [v8[0] setPlaceholder:?];
  MEMORY[0x277D82BD8](username);
  *&v3 = MEMORY[0x277D82BD8](context).n128_u64[0];
  [v8[0] setEnabled:{0, v3}];
  _shouldHideUsernameField = [(AKModalSignInViewController *)selfCopy _shouldHideUsernameField];
  [v8[0] setHidden:_shouldHideUsernameField];
  objc_storeStrong(&selfCopy->_usernameField, v8[0]);
  objc_storeStrong(v8, 0);
}

- (void)_setupPasswordField
{
  selfCopy = self;
  v8[1] = a2;
  v2 = [_AKInsetTextField alloc];
  v8[0] = [(_AKInsetTextField *)v2 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(AKModalSignInViewController *)selfCopy setupTextEntryField:v8[0]];
  if (selfCopy->_isSolariumEnabled)
  {
    layer = [v8[0] layer];
    [layer setMaskedCorners:12];
    MEMORY[0x277D82BD8](layer);
  }

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v6 localizedStringForKey:@"CAPITALIZED_PASSWORD" value:&stru_28358EF68 table:@"Localizable"];
  [v8[0] setPlaceholder:?];
  MEMORY[0x277D82BD8](v5);
  *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  [v8[0] setSecureTextEntry:{1, v3}];
  [v8[0] setReturnKeyType:0];
  [v8[0] setTextContentType:*MEMORY[0x277D77030]];
  _shouldHidePasswordField = [(AKModalSignInViewController *)selfCopy _shouldHidePasswordField];
  [v8[0] setHidden:_shouldHidePasswordField];
  objc_storeStrong(&selfCopy->_passwordField, v8[0]);
  objc_storeStrong(v8, 0);
}

- (void)setupTextEntryField:(id)field
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, field);
  v10 = [MEMORY[0x277D75348] colorWithRed:0.0156862754 green:0.0156862754 blue:0.0588235296 alpha:0.150000006];
  v8 = 0;
  if (selfCopy->_isSolariumEnabled)
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

  if (selfCopy->_isSolariumEnabled)
  {
    layer = [location[0] layer];
    [layer setCornerRadius:26.0];
    v3 = MEMORY[0x277D82BD8](layer).n128_u64[0];
  }

  else
  {
    layer2 = [location[0] layer];
    [layer2 setCornerRadius:12.0];
    v3 = MEMORY[0x277D82BD8](layer2).n128_u64[0];
  }

  [location[0] setDelegate:{selfCopy, *&v3}];
  v4 = [MEMORY[0x277D74300] defaultFontForTextStyle:*MEMORY[0x277D769C0]];
  [location[0] setFont:?];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)_setupConstraints
{
  v289[13] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v282[1] = a2;
  titleLabel = [(AKModalSignInViewController *)self titleLabel];
  [(UILabel *)titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  bodyLabel = [(AKModalSignInViewController *)selfCopy bodyLabel];
  [(UILabel *)bodyLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  usernameField = [(AKModalSignInViewController *)selfCopy usernameField];
  [(UITextField *)usernameField setTranslatesAutoresizingMaskIntoConstraints:0];
  separatorView = [(AKModalSignInViewController *)selfCopy separatorView];
  [(UIView *)separatorView setTranslatesAutoresizingMaskIntoConstraints:0];
  passwordField = [(AKModalSignInViewController *)selfCopy passwordField];
  [(UITextField *)passwordField setTranslatesAutoresizingMaskIntoConstraints:0];
  signInButton = [(AKModalSignInViewController *)selfCopy signInButton];
  [(AKRoundedButton *)signInButton setTranslatesAutoresizingMaskIntoConstraints:0];
  iForgotButton = [(AKModalSignInViewController *)selfCopy iForgotButton];
  [(UIButton *)iForgotButton setTranslatesAutoresizingMaskIntoConstraints:0];
  containerView = [(AKModalSignInViewController *)selfCopy containerView];
  [(UIView *)containerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v282[0] = [MEMORY[0x277CBEB18] array];
  location = 0;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];
  *&v2 = MEMORY[0x277D82BD8](currentDevice).n128_u64[0];
  v284 = userInterfaceIdiom;
  v280 = 1;
  if (userInterfaceIdiom != 1)
  {
    v280 = v284 == 5;
  }

  if (v280)
  {
    v267 = MEMORY[0x277CCAAD0];
    containerView2 = [(AKModalSignInViewController *)selfCopy containerView];
    view = [(AKModalSignInViewController *)selfCopy view];
    v3 = [v267 constraintWithItem:containerView2 attribute:10 relatedBy:0 toItem:1.0 attribute:0.0 multiplier:? constant:?];
    v4 = location;
    location = v3;
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](view);
    v5 = MEMORY[0x277D82BD8](containerView2).n128_u64[0];
  }

  else
  {
    containerView3 = [(AKModalSignInViewController *)selfCopy containerView];
    topAnchor = [(UIView *)containerView3 topAnchor];
    view2 = [(AKModalSignInViewController *)selfCopy view];
    topAnchor2 = [view2 topAnchor];
    v6 = [(NSLayoutYAxisAnchor *)topAnchor constraintGreaterThanOrEqualToAnchor:0.0 constant:?];
    v7 = location;
    location = v6;
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](view2);
    MEMORY[0x277D82BD8](topAnchor);
    v5 = MEMORY[0x277D82BD8](containerView3).n128_u64[0];
  }

  [v282[0] addObject:{location, *&v5}];
  if (selfCopy->_isSolariumEnabled)
  {
    containerView4 = [(AKModalSignInViewController *)selfCopy containerView];
    leadingAnchor = [(UIView *)containerView4 leadingAnchor];
    view3 = [(AKModalSignInViewController *)selfCopy view];
    leadingAnchor2 = [view3 leadingAnchor];
    v258 = [NSLayoutXAxisAnchor constraintEqualToAnchor:leadingAnchor constant:"constraintEqualToAnchor:constant:"];
    v289[0] = v258;
    containerView5 = [(AKModalSignInViewController *)selfCopy containerView];
    trailingAnchor = [(UIView *)containerView5 trailingAnchor];
    view4 = [(AKModalSignInViewController *)selfCopy view];
    trailingAnchor2 = [view4 trailingAnchor];
    v253 = [(NSLayoutXAxisAnchor *)trailingAnchor constraintEqualToAnchor:-16.0 constant:?];
    v289[1] = v253;
    titleLabel2 = [(AKModalSignInViewController *)selfCopy titleLabel];
    firstBaselineAnchor = [(UILabel *)titleLabel2 firstBaselineAnchor];
    containerView6 = [(AKModalSignInViewController *)selfCopy containerView];
    topAnchor3 = [(UIView *)containerView6 topAnchor];
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];
    v9 = 0.0;
    if (userInterfaceIdiom2 != 1)
    {
      v9 = 39.0;
    }

    v247 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor3 constant:v9];
    v289[2] = v247;
    titleLabel3 = [(AKModalSignInViewController *)selfCopy titleLabel];
    leadingAnchor3 = [(UILabel *)titleLabel3 leadingAnchor];
    containerView7 = [(AKModalSignInViewController *)selfCopy containerView];
    leadingAnchor4 = [(UIView *)containerView7 leadingAnchor];
    v242 = [leadingAnchor3 constraintEqualToAnchor:16.0 constant:?];
    v289[3] = v242;
    titleLabel4 = [(AKModalSignInViewController *)selfCopy titleLabel];
    trailingAnchor3 = [(UILabel *)titleLabel4 trailingAnchor];
    containerView8 = [(AKModalSignInViewController *)selfCopy containerView];
    trailingAnchor4 = [(UIView *)containerView8 trailingAnchor];
    v237 = [trailingAnchor3 constraintEqualToAnchor:?];
    v289[4] = v237;
    titleLabel5 = [(AKModalSignInViewController *)selfCopy titleLabel];
    heightAnchor = [(UILabel *)titleLabel5 heightAnchor];
    v234 = [heightAnchor constraintGreaterThanOrEqualToConstant:17.0];
    v289[5] = v234;
    bodyLabel2 = [(AKModalSignInViewController *)selfCopy bodyLabel];
    firstBaselineAnchor2 = [(UILabel *)bodyLabel2 firstBaselineAnchor];
    titleLabel6 = [(AKModalSignInViewController *)selfCopy titleLabel];
    lastBaselineAnchor = [(UILabel *)titleLabel6 lastBaselineAnchor];
    v229 = [firstBaselineAnchor2 constraintEqualToAnchor:24.0 constant:?];
    v289[6] = v229;
    bodyLabel3 = [(AKModalSignInViewController *)selfCopy bodyLabel];
    leadingAnchor5 = [(UILabel *)bodyLabel3 leadingAnchor];
    containerView9 = [(AKModalSignInViewController *)selfCopy containerView];
    leadingAnchor6 = [(UIView *)containerView9 leadingAnchor];
    v224 = [leadingAnchor5 constraintEqualToAnchor:6.0 constant:?];
    v289[7] = v224;
    bodyLabel4 = [(AKModalSignInViewController *)selfCopy bodyLabel];
    trailingAnchor5 = [(UILabel *)bodyLabel4 trailingAnchor];
    containerView10 = [(AKModalSignInViewController *)selfCopy containerView];
    trailingAnchor6 = [(UIView *)containerView10 trailingAnchor];
    v219 = [trailingAnchor5 constraintEqualToAnchor:-6.0 constant:?];
    v289[8] = v219;
    bodyLabel5 = [(AKModalSignInViewController *)selfCopy bodyLabel];
    heightAnchor2 = [(UILabel *)bodyLabel5 heightAnchor];
    v216 = [heightAnchor2 constraintGreaterThanOrEqualToConstant:56.0];
    v289[9] = v216;
    signInButton2 = [(AKModalSignInViewController *)selfCopy signInButton];
    centerXAnchor = [(AKRoundedButton *)signInButton2 centerXAnchor];
    containerView11 = [(AKModalSignInViewController *)selfCopy containerView];
    centerXAnchor2 = [(UIView *)containerView11 centerXAnchor];
    v211 = [centerXAnchor constraintEqualToAnchor:?];
    v289[10] = v211;
    signInButton3 = [(AKModalSignInViewController *)selfCopy signInButton];
    heightAnchor3 = [(AKRoundedButton *)signInButton3 heightAnchor];
    v208 = [heightAnchor3 constraintGreaterThanOrEqualToConstant:44.0];
    v289[11] = v208;
    containerView12 = [(AKModalSignInViewController *)selfCopy containerView];
    heightAnchor4 = [(UIView *)containerView12 heightAnchor];
    v205 = [(NSLayoutDimension *)heightAnchor4 constraintGreaterThanOrEqualToConstant:220.0];
    v289[12] = v205;
    v204 = [MEMORY[0x277CBEA60] arrayWithObjects:v289 count:13];
    [v282[0] addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v204);
    MEMORY[0x277D82BD8](v205);
    MEMORY[0x277D82BD8](heightAnchor4);
    MEMORY[0x277D82BD8](containerView12);
    MEMORY[0x277D82BD8](v208);
    MEMORY[0x277D82BD8](heightAnchor3);
    MEMORY[0x277D82BD8](signInButton3);
    MEMORY[0x277D82BD8](v211);
    MEMORY[0x277D82BD8](centerXAnchor2);
    MEMORY[0x277D82BD8](containerView11);
    MEMORY[0x277D82BD8](centerXAnchor);
    MEMORY[0x277D82BD8](signInButton2);
    MEMORY[0x277D82BD8](v216);
    MEMORY[0x277D82BD8](heightAnchor2);
    MEMORY[0x277D82BD8](bodyLabel5);
    MEMORY[0x277D82BD8](v219);
    MEMORY[0x277D82BD8](trailingAnchor6);
    MEMORY[0x277D82BD8](containerView10);
    MEMORY[0x277D82BD8](trailingAnchor5);
    MEMORY[0x277D82BD8](bodyLabel4);
    MEMORY[0x277D82BD8](v224);
    MEMORY[0x277D82BD8](leadingAnchor6);
    MEMORY[0x277D82BD8](containerView9);
    MEMORY[0x277D82BD8](leadingAnchor5);
    MEMORY[0x277D82BD8](bodyLabel3);
    MEMORY[0x277D82BD8](v229);
    MEMORY[0x277D82BD8](lastBaselineAnchor);
    MEMORY[0x277D82BD8](titleLabel6);
    MEMORY[0x277D82BD8](firstBaselineAnchor2);
    MEMORY[0x277D82BD8](bodyLabel2);
    MEMORY[0x277D82BD8](v234);
    MEMORY[0x277D82BD8](heightAnchor);
    MEMORY[0x277D82BD8](titleLabel5);
    MEMORY[0x277D82BD8](v237);
    MEMORY[0x277D82BD8](trailingAnchor4);
    MEMORY[0x277D82BD8](containerView8);
    MEMORY[0x277D82BD8](trailingAnchor3);
    MEMORY[0x277D82BD8](titleLabel4);
    MEMORY[0x277D82BD8](v242);
    MEMORY[0x277D82BD8](leadingAnchor4);
    MEMORY[0x277D82BD8](containerView7);
    MEMORY[0x277D82BD8](leadingAnchor3);
    MEMORY[0x277D82BD8](titleLabel3);
    MEMORY[0x277D82BD8](v247);
    MEMORY[0x277D82BD8](currentDevice2);
    MEMORY[0x277D82BD8](topAnchor3);
    MEMORY[0x277D82BD8](containerView6);
    MEMORY[0x277D82BD8](firstBaselineAnchor);
    MEMORY[0x277D82BD8](titleLabel2);
    MEMORY[0x277D82BD8](v253);
    MEMORY[0x277D82BD8](trailingAnchor2);
    MEMORY[0x277D82BD8](view4);
    MEMORY[0x277D82BD8](trailingAnchor);
    MEMORY[0x277D82BD8](containerView5);
    MEMORY[0x277D82BD8](v258);
    MEMORY[0x277D82BD8](leadingAnchor2);
    MEMORY[0x277D82BD8](view3);
    MEMORY[0x277D82BD8](leadingAnchor);
    v10 = MEMORY[0x277D82BD8](containerView4).n128_u64[0];
  }

  else
  {
    containerView13 = [(AKModalSignInViewController *)selfCopy containerView];
    leadingAnchor7 = [(UIView *)containerView13 leadingAnchor];
    view5 = [(AKModalSignInViewController *)selfCopy view];
    leadingAnchor8 = [view5 leadingAnchor];
    currentDevice3 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom3 = [currentDevice3 userInterfaceIdiom];
    v12 = 128.0;
    if (userInterfaceIdiom3 != 1)
    {
      v12 = 32.0;
    }

    v198 = [(NSLayoutXAxisAnchor *)leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:v12];
    v288[0] = v198;
    containerView14 = [(AKModalSignInViewController *)selfCopy containerView];
    trailingAnchor7 = [(UIView *)containerView14 trailingAnchor];
    view6 = [(AKModalSignInViewController *)selfCopy view];
    trailingAnchor8 = [view6 trailingAnchor];
    currentDevice4 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom4 = [currentDevice4 userInterfaceIdiom];
    v14 = 128.0;
    if (userInterfaceIdiom4 != 1)
    {
      v14 = 32.0;
    }

    v192 = [(NSLayoutXAxisAnchor *)trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:-v14];
    v288[1] = v192;
    titleLabel7 = [(AKModalSignInViewController *)selfCopy titleLabel];
    firstBaselineAnchor3 = [(UILabel *)titleLabel7 firstBaselineAnchor];
    containerView15 = [(AKModalSignInViewController *)selfCopy containerView];
    topAnchor4 = [(UIView *)containerView15 topAnchor];
    v187 = [firstBaselineAnchor3 constraintEqualToAnchor:39.0 constant:?];
    v288[2] = v187;
    titleLabel8 = [(AKModalSignInViewController *)selfCopy titleLabel];
    leadingAnchor9 = [(UILabel *)titleLabel8 leadingAnchor];
    containerView16 = [(AKModalSignInViewController *)selfCopy containerView];
    leadingAnchor10 = [(UIView *)containerView16 leadingAnchor];
    v182 = [leadingAnchor9 constraintEqualToAnchor:?];
    v288[3] = v182;
    titleLabel9 = [(AKModalSignInViewController *)selfCopy titleLabel];
    trailingAnchor9 = [(UILabel *)titleLabel9 trailingAnchor];
    containerView17 = [(AKModalSignInViewController *)selfCopy containerView];
    trailingAnchor10 = [(UIView *)containerView17 trailingAnchor];
    v177 = [trailingAnchor9 constraintEqualToAnchor:?];
    v288[4] = v177;
    titleLabel10 = [(AKModalSignInViewController *)selfCopy titleLabel];
    heightAnchor5 = [(UILabel *)titleLabel10 heightAnchor];
    v174 = [heightAnchor5 constraintGreaterThanOrEqualToConstant:17.0];
    v288[5] = v174;
    bodyLabel6 = [(AKModalSignInViewController *)selfCopy bodyLabel];
    firstBaselineAnchor4 = [(UILabel *)bodyLabel6 firstBaselineAnchor];
    titleLabel11 = [(AKModalSignInViewController *)selfCopy titleLabel];
    lastBaselineAnchor2 = [(UILabel *)titleLabel11 lastBaselineAnchor];
    v169 = [firstBaselineAnchor4 constraintEqualToAnchor:24.0 constant:?];
    v288[6] = v169;
    bodyLabel7 = [(AKModalSignInViewController *)selfCopy bodyLabel];
    leadingAnchor11 = [(UILabel *)bodyLabel7 leadingAnchor];
    containerView18 = [(AKModalSignInViewController *)selfCopy containerView];
    leadingAnchor12 = [(UIView *)containerView18 leadingAnchor];
    v164 = [leadingAnchor11 constraintEqualToAnchor:?];
    v288[7] = v164;
    bodyLabel8 = [(AKModalSignInViewController *)selfCopy bodyLabel];
    trailingAnchor11 = [(UILabel *)bodyLabel8 trailingAnchor];
    containerView19 = [(AKModalSignInViewController *)selfCopy containerView];
    trailingAnchor12 = [(UIView *)containerView19 trailingAnchor];
    v159 = [trailingAnchor11 constraintEqualToAnchor:?];
    v288[8] = v159;
    bodyLabel9 = [(AKModalSignInViewController *)selfCopy bodyLabel];
    heightAnchor6 = [(UILabel *)bodyLabel9 heightAnchor];
    v156 = [heightAnchor6 constraintGreaterThanOrEqualToConstant:56.0];
    v288[9] = v156;
    signInButton4 = [(AKModalSignInViewController *)selfCopy signInButton];
    centerXAnchor3 = [(AKRoundedButton *)signInButton4 centerXAnchor];
    containerView20 = [(AKModalSignInViewController *)selfCopy containerView];
    centerXAnchor4 = [(UIView *)containerView20 centerXAnchor];
    v151 = [centerXAnchor3 constraintEqualToAnchor:?];
    v288[10] = v151;
    signInButton5 = [(AKModalSignInViewController *)selfCopy signInButton];
    heightAnchor7 = [(AKRoundedButton *)signInButton5 heightAnchor];
    v148 = [heightAnchor7 constraintGreaterThanOrEqualToConstant:44.0];
    v288[11] = v148;
    containerView21 = [(AKModalSignInViewController *)selfCopy containerView];
    heightAnchor8 = [(UIView *)containerView21 heightAnchor];
    v145 = [(NSLayoutDimension *)heightAnchor8 constraintGreaterThanOrEqualToConstant:220.0];
    v288[12] = v145;
    v144 = [MEMORY[0x277CBEA60] arrayWithObjects:v288 count:13];
    [v282[0] addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v144);
    MEMORY[0x277D82BD8](v145);
    MEMORY[0x277D82BD8](heightAnchor8);
    MEMORY[0x277D82BD8](containerView21);
    MEMORY[0x277D82BD8](v148);
    MEMORY[0x277D82BD8](heightAnchor7);
    MEMORY[0x277D82BD8](signInButton5);
    MEMORY[0x277D82BD8](v151);
    MEMORY[0x277D82BD8](centerXAnchor4);
    MEMORY[0x277D82BD8](containerView20);
    MEMORY[0x277D82BD8](centerXAnchor3);
    MEMORY[0x277D82BD8](signInButton4);
    MEMORY[0x277D82BD8](v156);
    MEMORY[0x277D82BD8](heightAnchor6);
    MEMORY[0x277D82BD8](bodyLabel9);
    MEMORY[0x277D82BD8](v159);
    MEMORY[0x277D82BD8](trailingAnchor12);
    MEMORY[0x277D82BD8](containerView19);
    MEMORY[0x277D82BD8](trailingAnchor11);
    MEMORY[0x277D82BD8](bodyLabel8);
    MEMORY[0x277D82BD8](v164);
    MEMORY[0x277D82BD8](leadingAnchor12);
    MEMORY[0x277D82BD8](containerView18);
    MEMORY[0x277D82BD8](leadingAnchor11);
    MEMORY[0x277D82BD8](bodyLabel7);
    MEMORY[0x277D82BD8](v169);
    MEMORY[0x277D82BD8](lastBaselineAnchor2);
    MEMORY[0x277D82BD8](titleLabel11);
    MEMORY[0x277D82BD8](firstBaselineAnchor4);
    MEMORY[0x277D82BD8](bodyLabel6);
    MEMORY[0x277D82BD8](v174);
    MEMORY[0x277D82BD8](heightAnchor5);
    MEMORY[0x277D82BD8](titleLabel10);
    MEMORY[0x277D82BD8](v177);
    MEMORY[0x277D82BD8](trailingAnchor10);
    MEMORY[0x277D82BD8](containerView17);
    MEMORY[0x277D82BD8](trailingAnchor9);
    MEMORY[0x277D82BD8](titleLabel9);
    MEMORY[0x277D82BD8](v182);
    MEMORY[0x277D82BD8](leadingAnchor10);
    MEMORY[0x277D82BD8](containerView16);
    MEMORY[0x277D82BD8](leadingAnchor9);
    MEMORY[0x277D82BD8](titleLabel8);
    MEMORY[0x277D82BD8](v187);
    MEMORY[0x277D82BD8](topAnchor4);
    MEMORY[0x277D82BD8](containerView15);
    MEMORY[0x277D82BD8](firstBaselineAnchor3);
    MEMORY[0x277D82BD8](titleLabel7);
    MEMORY[0x277D82BD8](v192);
    MEMORY[0x277D82BD8](currentDevice4);
    MEMORY[0x277D82BD8](trailingAnchor8);
    MEMORY[0x277D82BD8](view6);
    MEMORY[0x277D82BD8](trailingAnchor7);
    MEMORY[0x277D82BD8](containerView14);
    MEMORY[0x277D82BD8](v198);
    MEMORY[0x277D82BD8](currentDevice3);
    MEMORY[0x277D82BD8](leadingAnchor8);
    MEMORY[0x277D82BD8](view5);
    MEMORY[0x277D82BD8](leadingAnchor7);
    v10 = MEMORY[0x277D82BD8](containerView13).n128_u64[0];
  }

  if ([(AKModalSignInViewController *)selfCopy _shouldHidePasswordField])
  {
    signInButton6 = [(AKModalSignInViewController *)selfCopy signInButton];
    topAnchor5 = [(AKRoundedButton *)signInButton6 topAnchor];
    bodyLabel10 = [(AKModalSignInViewController *)selfCopy bodyLabel];
    lastBaselineAnchor3 = [(UILabel *)bodyLabel10 lastBaselineAnchor];
    v139 = [topAnchor5 constraintEqualToAnchor:20.0 constant:?];
    v287[0] = v139;
    containerView22 = [(AKModalSignInViewController *)selfCopy containerView];
    bottomAnchor = [(UIView *)containerView22 bottomAnchor];
    view7 = [(AKModalSignInViewController *)selfCopy view];
    bottomAnchor2 = [view7 bottomAnchor];
    v134 = [(NSLayoutYAxisAnchor *)bottomAnchor constraintEqualToAnchor:-20.0 constant:?];
    v287[1] = v134;
    v133 = [MEMORY[0x277CBEA60] arrayWithObjects:v287 count:2];
    [v282[0] addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v133);
    MEMORY[0x277D82BD8](v134);
    MEMORY[0x277D82BD8](bottomAnchor2);
    MEMORY[0x277D82BD8](view7);
    MEMORY[0x277D82BD8](bottomAnchor);
    MEMORY[0x277D82BD8](containerView22);
    MEMORY[0x277D82BD8](v139);
    MEMORY[0x277D82BD8](lastBaselineAnchor3);
    MEMORY[0x277D82BD8](bodyLabel10);
    MEMORY[0x277D82BD8](topAnchor5);
    v15 = MEMORY[0x277D82BD8](signInButton6).n128_u64[0];
  }

  else if (selfCopy->_isSolariumEnabled)
  {
    usernameField2 = [(AKModalSignInViewController *)selfCopy usernameField];
    topAnchor6 = [(UITextField *)usernameField2 topAnchor];
    bodyLabel11 = [(AKModalSignInViewController *)selfCopy bodyLabel];
    lastBaselineAnchor4 = [(UILabel *)bodyLabel11 lastBaselineAnchor];
    v128 = [topAnchor6 constraintEqualToAnchor:? constant:?];
    v286[0] = v128;
    usernameField3 = [(AKModalSignInViewController *)selfCopy usernameField];
    leadingAnchor13 = [(UITextField *)usernameField3 leadingAnchor];
    containerView23 = [(AKModalSignInViewController *)selfCopy containerView];
    leadingAnchor14 = [(UIView *)containerView23 leadingAnchor];
    v123 = [leadingAnchor13 constraintEqualToAnchor:?];
    v286[1] = v123;
    usernameField4 = [(AKModalSignInViewController *)selfCopy usernameField];
    trailingAnchor13 = [(UITextField *)usernameField4 trailingAnchor];
    containerView24 = [(AKModalSignInViewController *)selfCopy containerView];
    trailingAnchor14 = [(UIView *)containerView24 trailingAnchor];
    v118 = [trailingAnchor13 constraintEqualToAnchor:?];
    v286[2] = v118;
    usernameField5 = [(AKModalSignInViewController *)selfCopy usernameField];
    heightAnchor9 = [(UITextField *)usernameField5 heightAnchor];
    v115 = [heightAnchor9 constraintEqualToConstant:?];
    v286[3] = v115;
    separatorView2 = [(AKModalSignInViewController *)selfCopy separatorView];
    leadingAnchor15 = [(UIView *)separatorView2 leadingAnchor];
    usernameField6 = [(AKModalSignInViewController *)selfCopy usernameField];
    leadingAnchor16 = [(UITextField *)usernameField6 leadingAnchor];
    v110 = [(NSLayoutXAxisAnchor *)leadingAnchor15 constraintEqualToAnchor:13.0 constant:?];
    v286[4] = v110;
    separatorView3 = [(AKModalSignInViewController *)selfCopy separatorView];
    trailingAnchor15 = [(UIView *)separatorView3 trailingAnchor];
    usernameField7 = [(AKModalSignInViewController *)selfCopy usernameField];
    trailingAnchor16 = [(UITextField *)usernameField7 trailingAnchor];
    v105 = [(NSLayoutXAxisAnchor *)trailingAnchor15 constraintEqualToAnchor:-13.0 constant:?];
    v286[5] = v105;
    separatorView4 = [(AKModalSignInViewController *)selfCopy separatorView];
    heightAnchor10 = [(UIView *)separatorView4 heightAnchor];
    v102 = [(NSLayoutDimension *)heightAnchor10 constraintEqualToConstant:1.0];
    v286[6] = v102;
    separatorView5 = [(AKModalSignInViewController *)selfCopy separatorView];
    topAnchor7 = [(UIView *)separatorView5 topAnchor];
    usernameField8 = [(AKModalSignInViewController *)selfCopy usernameField];
    bottomAnchor3 = [(UITextField *)usernameField8 bottomAnchor];
    v97 = [(NSLayoutYAxisAnchor *)topAnchor7 constraintEqualToAnchor:?];
    v286[7] = v97;
    passwordField2 = [(AKModalSignInViewController *)selfCopy passwordField];
    topAnchor8 = [(UITextField *)passwordField2 topAnchor];
    usernameField9 = [(AKModalSignInViewController *)selfCopy usernameField];
    bottomAnchor4 = [(UITextField *)usernameField9 bottomAnchor];
    v92 = [topAnchor8 constraintEqualToAnchor:?];
    v286[8] = v92;
    passwordField3 = [(AKModalSignInViewController *)selfCopy passwordField];
    leadingAnchor17 = [(UITextField *)passwordField3 leadingAnchor];
    containerView25 = [(AKModalSignInViewController *)selfCopy containerView];
    leadingAnchor18 = [(UIView *)containerView25 leadingAnchor];
    v87 = [leadingAnchor17 constraintEqualToAnchor:?];
    v286[9] = v87;
    passwordField4 = [(AKModalSignInViewController *)selfCopy passwordField];
    trailingAnchor17 = [(UITextField *)passwordField4 trailingAnchor];
    containerView26 = [(AKModalSignInViewController *)selfCopy containerView];
    trailingAnchor18 = [(UIView *)containerView26 trailingAnchor];
    v82 = [trailingAnchor17 constraintEqualToAnchor:?];
    v286[10] = v82;
    passwordField5 = [(AKModalSignInViewController *)selfCopy passwordField];
    heightAnchor11 = [(UITextField *)passwordField5 heightAnchor];
    v79 = [heightAnchor11 constraintEqualToConstant:52.0];
    v286[11] = v79;
    signInButton7 = [(AKModalSignInViewController *)selfCopy signInButton];
    topAnchor9 = [(AKRoundedButton *)signInButton7 topAnchor];
    passwordField6 = [(AKModalSignInViewController *)selfCopy passwordField];
    bottomAnchor5 = [(UITextField *)passwordField6 bottomAnchor];
    v74 = [topAnchor9 constraintEqualToAnchor:20.0 constant:?];
    v286[12] = v74;
    iForgotButton2 = [(AKModalSignInViewController *)selfCopy iForgotButton];
    topAnchor10 = [(UIButton *)iForgotButton2 topAnchor];
    signInButton8 = [(AKModalSignInViewController *)selfCopy signInButton];
    bottomAnchor6 = [(AKRoundedButton *)signInButton8 bottomAnchor];
    v69 = [topAnchor10 constraintEqualToAnchor:15.0 constant:?];
    v286[13] = v69;
    iForgotButton3 = [(AKModalSignInViewController *)selfCopy iForgotButton];
    heightAnchor12 = [(UIButton *)iForgotButton3 heightAnchor];
    v66 = [heightAnchor12 constraintGreaterThanOrEqualToConstant:34.0];
    v286[14] = v66;
    iForgotButton4 = [(AKModalSignInViewController *)selfCopy iForgotButton];
    centerXAnchor5 = [(UIButton *)iForgotButton4 centerXAnchor];
    containerView27 = [(AKModalSignInViewController *)selfCopy containerView];
    centerXAnchor6 = [(UIView *)containerView27 centerXAnchor];
    v61 = [centerXAnchor5 constraintEqualToAnchor:?];
    v286[15] = v61;
    iForgotButton5 = [(AKModalSignInViewController *)selfCopy iForgotButton];
    bottomAnchor7 = [(UIButton *)iForgotButton5 bottomAnchor];
    containerView28 = [(AKModalSignInViewController *)selfCopy containerView];
    bottomAnchor8 = [(UIView *)containerView28 bottomAnchor];
    v56 = [bottomAnchor7 constraintEqualToAnchor:-20.0 constant:?];
    v286[16] = v56;
    v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v286 count:17];
    [v282[0] addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](v56);
    MEMORY[0x277D82BD8](bottomAnchor8);
    MEMORY[0x277D82BD8](containerView28);
    MEMORY[0x277D82BD8](bottomAnchor7);
    MEMORY[0x277D82BD8](iForgotButton5);
    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](centerXAnchor6);
    MEMORY[0x277D82BD8](containerView27);
    MEMORY[0x277D82BD8](centerXAnchor5);
    MEMORY[0x277D82BD8](iForgotButton4);
    MEMORY[0x277D82BD8](v66);
    MEMORY[0x277D82BD8](heightAnchor12);
    MEMORY[0x277D82BD8](iForgotButton3);
    MEMORY[0x277D82BD8](v69);
    MEMORY[0x277D82BD8](bottomAnchor6);
    MEMORY[0x277D82BD8](signInButton8);
    MEMORY[0x277D82BD8](topAnchor10);
    MEMORY[0x277D82BD8](iForgotButton2);
    MEMORY[0x277D82BD8](v74);
    MEMORY[0x277D82BD8](bottomAnchor5);
    MEMORY[0x277D82BD8](passwordField6);
    MEMORY[0x277D82BD8](topAnchor9);
    MEMORY[0x277D82BD8](signInButton7);
    MEMORY[0x277D82BD8](v79);
    MEMORY[0x277D82BD8](heightAnchor11);
    MEMORY[0x277D82BD8](passwordField5);
    MEMORY[0x277D82BD8](v82);
    MEMORY[0x277D82BD8](trailingAnchor18);
    MEMORY[0x277D82BD8](containerView26);
    MEMORY[0x277D82BD8](trailingAnchor17);
    MEMORY[0x277D82BD8](passwordField4);
    MEMORY[0x277D82BD8](v87);
    MEMORY[0x277D82BD8](leadingAnchor18);
    MEMORY[0x277D82BD8](containerView25);
    MEMORY[0x277D82BD8](leadingAnchor17);
    MEMORY[0x277D82BD8](passwordField3);
    MEMORY[0x277D82BD8](v92);
    MEMORY[0x277D82BD8](bottomAnchor4);
    MEMORY[0x277D82BD8](usernameField9);
    MEMORY[0x277D82BD8](topAnchor8);
    MEMORY[0x277D82BD8](passwordField2);
    MEMORY[0x277D82BD8](v97);
    MEMORY[0x277D82BD8](bottomAnchor3);
    MEMORY[0x277D82BD8](usernameField8);
    MEMORY[0x277D82BD8](topAnchor7);
    MEMORY[0x277D82BD8](separatorView5);
    MEMORY[0x277D82BD8](v102);
    MEMORY[0x277D82BD8](heightAnchor10);
    MEMORY[0x277D82BD8](separatorView4);
    MEMORY[0x277D82BD8](v105);
    MEMORY[0x277D82BD8](trailingAnchor16);
    MEMORY[0x277D82BD8](usernameField7);
    MEMORY[0x277D82BD8](trailingAnchor15);
    MEMORY[0x277D82BD8](separatorView3);
    MEMORY[0x277D82BD8](v110);
    MEMORY[0x277D82BD8](leadingAnchor16);
    MEMORY[0x277D82BD8](usernameField6);
    MEMORY[0x277D82BD8](leadingAnchor15);
    MEMORY[0x277D82BD8](separatorView2);
    MEMORY[0x277D82BD8](v115);
    MEMORY[0x277D82BD8](heightAnchor9);
    MEMORY[0x277D82BD8](usernameField5);
    MEMORY[0x277D82BD8](v118);
    MEMORY[0x277D82BD8](trailingAnchor14);
    MEMORY[0x277D82BD8](containerView24);
    MEMORY[0x277D82BD8](trailingAnchor13);
    MEMORY[0x277D82BD8](usernameField4);
    MEMORY[0x277D82BD8](v123);
    MEMORY[0x277D82BD8](leadingAnchor14);
    MEMORY[0x277D82BD8](containerView23);
    MEMORY[0x277D82BD8](leadingAnchor13);
    MEMORY[0x277D82BD8](usernameField3);
    MEMORY[0x277D82BD8](v128);
    MEMORY[0x277D82BD8](lastBaselineAnchor4);
    MEMORY[0x277D82BD8](bodyLabel11);
    MEMORY[0x277D82BD8](topAnchor6);
    v15 = MEMORY[0x277D82BD8](usernameField2).n128_u64[0];
  }

  else
  {
    passwordField7 = [(AKModalSignInViewController *)selfCopy passwordField];
    topAnchor11 = [(UITextField *)passwordField7 topAnchor];
    bodyLabel12 = [(AKModalSignInViewController *)selfCopy bodyLabel];
    lastBaselineAnchor5 = [(UILabel *)bodyLabel12 lastBaselineAnchor];
    v50 = [topAnchor11 constraintEqualToAnchor:? constant:?];
    v285[0] = v50;
    passwordField8 = [(AKModalSignInViewController *)selfCopy passwordField];
    leadingAnchor19 = [(UITextField *)passwordField8 leadingAnchor];
    containerView29 = [(AKModalSignInViewController *)selfCopy containerView];
    leadingAnchor20 = [(UIView *)containerView29 leadingAnchor];
    v45 = [leadingAnchor19 constraintEqualToAnchor:20.0 constant:?];
    v285[1] = v45;
    passwordField9 = [(AKModalSignInViewController *)selfCopy passwordField];
    trailingAnchor19 = [(UITextField *)passwordField9 trailingAnchor];
    containerView30 = [(AKModalSignInViewController *)selfCopy containerView];
    trailingAnchor20 = [(UIView *)containerView30 trailingAnchor];
    v40 = [trailingAnchor19 constraintEqualToAnchor:-20.0 constant:?];
    v285[2] = v40;
    passwordField10 = [(AKModalSignInViewController *)selfCopy passwordField];
    heightAnchor13 = [(UITextField *)passwordField10 heightAnchor];
    v37 = [heightAnchor13 constraintEqualToConstant:44.0];
    v285[3] = v37;
    signInButton9 = [(AKModalSignInViewController *)selfCopy signInButton];
    topAnchor12 = [(AKRoundedButton *)signInButton9 topAnchor];
    passwordField11 = [(AKModalSignInViewController *)selfCopy passwordField];
    bottomAnchor9 = [(UITextField *)passwordField11 bottomAnchor];
    v32 = [topAnchor12 constraintEqualToAnchor:20.0 constant:?];
    v285[4] = v32;
    iForgotButton6 = [(AKModalSignInViewController *)selfCopy iForgotButton];
    topAnchor13 = [(UIButton *)iForgotButton6 topAnchor];
    signInButton10 = [(AKModalSignInViewController *)selfCopy signInButton];
    bottomAnchor10 = [(AKRoundedButton *)signInButton10 bottomAnchor];
    v27 = [topAnchor13 constraintEqualToAnchor:16.0 constant:?];
    v285[5] = v27;
    iForgotButton7 = [(AKModalSignInViewController *)selfCopy iForgotButton];
    centerXAnchor7 = [(UIButton *)iForgotButton7 centerXAnchor];
    containerView31 = [(AKModalSignInViewController *)selfCopy containerView];
    centerXAnchor8 = [(UIView *)containerView31 centerXAnchor];
    v22 = [centerXAnchor7 constraintEqualToAnchor:?];
    v285[6] = v22;
    iForgotButton8 = [(AKModalSignInViewController *)selfCopy iForgotButton];
    bottomAnchor11 = [(UIButton *)iForgotButton8 bottomAnchor];
    containerView32 = [(AKModalSignInViewController *)selfCopy containerView];
    bottomAnchor12 = [(UIView *)containerView32 bottomAnchor];
    v17 = [bottomAnchor11 constraintEqualToAnchor:-17.0 constant:?];
    v285[7] = v17;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v285 count:8];
    [v282[0] addObjectsFromArray:?];
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](bottomAnchor12);
    MEMORY[0x277D82BD8](containerView32);
    MEMORY[0x277D82BD8](bottomAnchor11);
    MEMORY[0x277D82BD8](iForgotButton8);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](centerXAnchor8);
    MEMORY[0x277D82BD8](containerView31);
    MEMORY[0x277D82BD8](centerXAnchor7);
    MEMORY[0x277D82BD8](iForgotButton7);
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](bottomAnchor10);
    MEMORY[0x277D82BD8](signInButton10);
    MEMORY[0x277D82BD8](topAnchor13);
    MEMORY[0x277D82BD8](iForgotButton6);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](bottomAnchor9);
    MEMORY[0x277D82BD8](passwordField11);
    MEMORY[0x277D82BD8](topAnchor12);
    MEMORY[0x277D82BD8](signInButton9);
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](heightAnchor13);
    MEMORY[0x277D82BD8](passwordField10);
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](trailingAnchor20);
    MEMORY[0x277D82BD8](containerView30);
    MEMORY[0x277D82BD8](trailingAnchor19);
    MEMORY[0x277D82BD8](passwordField9);
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](leadingAnchor20);
    MEMORY[0x277D82BD8](containerView29);
    MEMORY[0x277D82BD8](leadingAnchor19);
    MEMORY[0x277D82BD8](passwordField8);
    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](lastBaselineAnchor5);
    MEMORY[0x277D82BD8](bodyLabel12);
    MEMORY[0x277D82BD8](topAnchor11);
    v15 = MEMORY[0x277D82BD8](passwordField7).n128_u64[0];
  }

  [MEMORY[0x277CCAAD0] activateConstraints:{v282[0], *&v15}];
  objc_storeStrong(&location, 0);
  objc_storeStrong(v282, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_updateViewConstraints
{
  selfCopy = self;
  v19 = a2;
  v18.receiver = self;
  v18.super_class = AKModalSignInViewController;
  [(AKModalSignInViewController *)&v18 updateViewConstraints];
  if (selfCopy->_isSolariumEnabled)
  {
    view = [(AKModalSignInViewController *)selfCopy view];
    [view bounds];
    v13 = v2;
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];
    v4 = 256.0;
    if (userInterfaceIdiom != 1)
    {
      v4 = 16.0;
    }

    v14 = v13 - v4;
    bodyLabel = [(AKModalSignInViewController *)selfCopy bodyLabel];
    [(UILabel *)bodyLabel setPreferredMaxLayoutWidth:v14];
    MEMORY[0x277D82BD8](bodyLabel);
    MEMORY[0x277D82BD8](currentDevice);
    MEMORY[0x277D82BD8](view);
  }

  else
  {
    view2 = [(AKModalSignInViewController *)selfCopy view];
    [view2 bounds];
    v8 = v5;
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];
    v7 = 256.0;
    if (userInterfaceIdiom2 != 1)
    {
      v7 = 24.0;
    }

    v9 = v8 - v7;
    bodyLabel2 = [(AKModalSignInViewController *)selfCopy bodyLabel];
    [(UILabel *)bodyLabel2 setPreferredMaxLayoutWidth:v9];
    MEMORY[0x277D82BD8](bodyLabel2);
    MEMORY[0x277D82BD8](currentDevice2);
    MEMORY[0x277D82BD8](view2);
  }
}

- (BOOL)_isUsingPasscodeAuth
{
  mEMORY[0x277CF0228] = [MEMORY[0x277CF0228] sharedManager];
  v5 = 0;
  isContextEligibleForPasscodeAuth = 0;
  if ([mEMORY[0x277CF0228] isChildPasscodeEnabled])
  {
    context = [(AKBaseSignInViewController *)self context];
    v5 = 1;
    isContextEligibleForPasscodeAuth = [(AKAppleIDAuthenticationInAppContext *)context isContextEligibleForPasscodeAuth];
  }

  if (v5)
  {
    MEMORY[0x277D82BD8](context);
  }

  MEMORY[0x277D82BD8](mEMORY[0x277CF0228]);
  return isContextEligibleForPasscodeAuth & 1;
}

- (void)_passwordRecoveryButtonWasTapped:(id)tapped
{
  v14 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  v10 = _AKLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    context = [(AKBaseSignInViewController *)selfCopy context];
    username = [(AKAppleIDAuthenticationInAppContext *)context username];
    __os_log_helper_16_2_1_8_64(v13, username);
    _os_log_impl(&dword_222379000, v10, OS_LOG_TYPE_DEFAULT, "Will take user to password-reset flow for %@...", v13, 0xCu);
    MEMORY[0x277D82BD8](username);
    MEMORY[0x277D82BD8](context);
  }

  objc_storeStrong(&v10, 0);
  v3 = selfCopy;
  context2 = [(AKBaseSignInViewController *)selfCopy context];
  username2 = [(AKAppleIDAuthenticationInAppContext *)context2 username];
  passwordField = [(AKModalSignInViewController *)selfCopy passwordField];
  text = [(UITextField *)passwordField text];
  [(AKBaseSignInViewController *)v3 _beginAuthenticationIfPossibleWithOption:2 withUsername:username2 password:?];
  MEMORY[0x277D82BD8](text);
  MEMORY[0x277D82BD8](passwordField);
  MEMORY[0x277D82BD8](username2);
  MEMORY[0x277D82BD8](context2);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_signInButtonTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  if ([(AKModalSignInViewController *)selfCopy _isUsingPasscodeAuth])
  {
    v12 = selfCopy;
    context = [(AKBaseSignInViewController *)selfCopy context];
    username = [(AKAppleIDAuthenticationInAppContext *)context username];
    [AKBaseSignInViewController _beginAuthenticationIfPossibleWithOption:v12 withUsername:"_beginAuthenticationIfPossibleWithOption:withUsername:password:" password:1];
    MEMORY[0x277D82BD8](username);
    MEMORY[0x277D82BD8](context);
  }

  else
  {
    passwordField = [(AKModalSignInViewController *)selfCopy passwordField];
    text = [(UITextField *)passwordField text];
    v11 = [(NSString *)text length];
    MEMORY[0x277D82BD8](text);
    *&v3 = MEMORY[0x277D82BD8](passwordField).n128_u64[0];
    if (v11)
    {
      v4 = selfCopy;
      context2 = [(AKBaseSignInViewController *)selfCopy context];
      username2 = [(AKAppleIDAuthenticationInAppContext *)context2 username];
      passwordField2 = [(AKModalSignInViewController *)selfCopy passwordField];
      text2 = [(UITextField *)passwordField2 text];
      [(AKBaseSignInViewController *)v4 _beginAuthenticationIfPossibleWithOption:1 withUsername:username2 password:?];
      MEMORY[0x277D82BD8](text2);
      MEMORY[0x277D82BD8](passwordField2);
      MEMORY[0x277D82BD8](username2);
      MEMORY[0x277D82BD8](context2);
    }
  }

  objc_storeStrong(location, 0);
}

- (void)startAnimating
{
  selfCopy = self;
  v10 = a2;
  v9.receiver = self;
  v9.super_class = AKModalSignInViewController;
  [(AKBaseSignInViewController *)&v9 startAnimating];
  signInButton = [(AKModalSignInViewController *)selfCopy signInButton];
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  [(AKRoundedButton *)signInButton setBackgroundColor:?];
  MEMORY[0x277D82BD8](systemGrayColor);
  *&v2 = MEMORY[0x277D82BD8](signInButton).n128_u64[0];
  signInButton2 = [(AKModalSignInViewController *)selfCopy signInButton];
  [(AKRoundedButton *)signInButton2 setEnabled:0];
  *&v3 = MEMORY[0x277D82BD8](signInButton2).n128_u64[0];
  passwordField = [(AKModalSignInViewController *)selfCopy passwordField];
  ak_addActivityIndicator = [(UITextField *)passwordField ak_addActivityIndicator];
  MEMORY[0x277D82BD8](passwordField);
}

- (void)stopAnimating
{
  selfCopy = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = AKModalSignInViewController;
  [(AKBaseSignInViewController *)&v6 stopAnimating];
  signInButton = [(AKModalSignInViewController *)selfCopy signInButton];
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  [(AKRoundedButton *)signInButton setBackgroundColor:?];
  MEMORY[0x277D82BD8](systemBlueColor);
  *&v2 = MEMORY[0x277D82BD8](signInButton).n128_u64[0];
  passwordField = [(AKModalSignInViewController *)selfCopy passwordField];
  [(UITextField *)passwordField ak_clearActivityIndicatorIfExist];
  MEMORY[0x277D82BD8](passwordField);
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  sizeCopy = size;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coordinator);
  v11.receiver = selfCopy;
  v11.super_class = AKModalSignInViewController;
  [(AKModalSignInViewController *)&v11 viewWillTransitionToSize:location[0] withTransitionCoordinator:sizeCopy.width, sizeCopy.height];
  v4 = location[0];
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __82__AKModalSignInViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v9 = &unk_2784A62E0;
  v10 = MEMORY[0x277D82BE0](selfCopy);
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
  passwordField = [(AKModalSignInViewController *)self passwordField];
  becomeFirstResponder = [(UITextField *)passwordField becomeFirstResponder];
  MEMORY[0x277D82BD8](passwordField);
  return becomeFirstResponder;
}

- (BOOL)resignFirstResponder
{
  passwordField = [(AKModalSignInViewController *)self passwordField];
  resignFirstResponder = [(UITextField *)passwordField resignFirstResponder];
  MEMORY[0x277D82BD8](passwordField);
  return resignFirstResponder;
}

- (BOOL)canBecomeFirstResponder
{
  passwordField = [(AKModalSignInViewController *)self passwordField];
  canBecomeFirstResponder = [(UITextField *)passwordField canBecomeFirstResponder];
  MEMORY[0x277D82BD8](passwordField);
  return canBecomeFirstResponder;
}

- (BOOL)textFieldShouldReturn:(id)return
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, return);
  v10 = location[0];
  passwordField = [(AKModalSignInViewController *)selfCopy passwordField];
  v13 = 0;
  v12 = 0;
  if (v10 == passwordField)
  {
    text = [location[0] text];
    v13 = 1;
    v12 = [text length] != 0;
  }

  if (v13)
  {
    MEMORY[0x277D82BD8](text);
  }

  *&v3 = MEMORY[0x277D82BD8](passwordField).n128_u64[0];
  if (v12)
  {
    v5 = selfCopy;
    context = [(AKBaseSignInViewController *)selfCopy context];
    username = [(AKAppleIDAuthenticationInAppContext *)context username];
    passwordField2 = [(AKModalSignInViewController *)selfCopy passwordField];
    text2 = [(UITextField *)passwordField2 text];
    [(AKBaseSignInViewController *)v5 _beginAuthenticationIfPossibleWithOption:1 withUsername:username password:?];
    MEMORY[0x277D82BD8](text2);
    MEMORY[0x277D82BD8](passwordField2);
    MEMORY[0x277D82BD8](username);
    MEMORY[0x277D82BD8](context);
  }

  objc_storeStrong(location, 0);
  return 1;
}

- (void)displayAlertForContext:(id)context error:(id)error completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v22 = 0;
  objc_storeStrong(&v22, error);
  v21 = 0;
  objc_storeStrong(&v21, completion);
  v13 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  v14 = v13;
  dispatch_assert_queue_V2(v14);
  *&v6 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  passwordField = [(AKModalSignInViewController *)selfCopy passwordField];
  layer = [(UITextField *)passwordField layer];
  ak_jiggleAnimation = [MEMORY[0x277CD9DF8] ak_jiggleAnimation];
  [layer addAnimation:? forKey:?];
  *&v7 = MEMORY[0x277D82BD8](ak_jiggleAnimation).n128_u64[0];
  v18 = 0;
  v17 = 0;
  if ([v22 code] == -7006)
  {
    domain = [v22 domain];
    v18 = 1;
    v17 = [domain isEqualToString:*MEMORY[0x277CEFF48]];
  }

  if (v18)
  {
    MEMORY[0x277D82BD8](domain);
  }

  if (v17)
  {
    passwordField2 = [(AKModalSignInViewController *)selfCopy passwordField];
    [(UITextField *)passwordField2 setText:0];
    *&v8 = MEMORY[0x277D82BD8](passwordField2).n128_u64[0];
    signInButton = [(AKModalSignInViewController *)selfCopy signInButton];
    [(AKRoundedButton *)signInButton setEnabled:0];
    MEMORY[0x277D82BD8](signInButton);
  }

  if (v21)
  {
    (*(v21 + 2))(v21, 0, 0, 0, v22);
  }

  objc_storeStrong(&layer, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)context:(id)context needsPasswordWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v8 = 0;
  objc_storeStrong(&v8, completion);
  v5 = v8;
  passwordField = [(AKModalSignInViewController *)selfCopy passwordField];
  text = [(UITextField *)passwordField text];
  v5[2]();
  MEMORY[0x277D82BD8](text);
  MEMORY[0x277D82BD8](passwordField);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

@end