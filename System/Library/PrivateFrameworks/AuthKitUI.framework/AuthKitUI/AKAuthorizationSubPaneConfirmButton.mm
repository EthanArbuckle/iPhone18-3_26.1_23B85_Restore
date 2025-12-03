@interface AKAuthorizationSubPaneConfirmButton
+ (id)_createMainStackView;
- (AKAuthorizationSubPaneConfirmButton)initWithPresentationContext:(id)context;
- (AKAuthorizationSubPaneConfirmButtonDelegate)delegate;
- (BOOL)_delegate_validateReadyForAuthorization;
- (BOOL)_hasTouchIDOnly;
- (BOOL)_isSubscriptionFlow;
- (BOOL)_isUpgradeFromPassword;
- (BOOL)_shouldUseSIWAButton;
- (NSString)buttonText;
- (id)_bioButtonTitle;
- (id)_passcodeButtonTitle;
- (id)_passwordButtonTitle;
- (id)_spaceWithConstant:(double)constant;
- (void)_addArrangedSpaceToMainStackView:(double)view;
- (void)_authorizationButtonBioSelected:(id)selected;
- (void)_authorizationButtonExternalAuthenticationSelected:(id)selected;
- (void)_authorizationButtonSkipBioSelected:(id)selected;
- (void)_authorizationButtonWithAccountPasswordSelected:(id)selected;
- (void)_authorizationWithPasscodeButtonSelected:(id)selected;
- (void)_checkIfPasscodeFallbackAllowedWithCompletion:(id)completion;
- (void)_createAccountSelected;
- (void)_disableBioView;
- (void)_enableLAUIAuthMechanism;
- (void)_enterProcessingStateWithCompletionHandler:(id)handler;
- (void)_handleBiometricAuthFailureWithError:(id)error forContext:(id)context;
- (void)_initializeAuthorizationButton;
- (void)_performPasscodeValidations:(id)validations;
- (void)_setGlyphViewGestureRecognizerEnabled:(BOOL)enabled;
- (void)_setupAlertImageWithConstraints:(id)constraints;
- (void)_setupBioButtonWithConstraints:(id)constraints;
- (void)_setupLabelWithTitle:(id)title withConstraints:(id)constraints animated:(BOOL)animated;
- (void)_switchToBioView:(BOOL)view withEnabled:(BOOL)enabled showAlert:(BOOL)alert alertString:(id)string;
- (void)_switchToPasscode;
- (void)_updateLabelWithTitle:(id)title;
- (void)_waitForTimeInterval:(double)interval withGroup:(id)group;
- (void)_windowDidBecomeKey:(id)key;
- (void)addToConstraints:(id)constraints context:(id)context;
- (void)addToStackView:(id)view context:(id)context;
- (void)authenticationResult:(id)result error:(id)error context:(id)context;
- (void)bioAuthFailWithAlertString:(id)string;
- (void)dealloc;
- (void)enableAuthorizationCapability:(BOOL)capability;
- (void)finishProcessingWithCompletionHandler:(id)handler;
- (void)invalidateProcessingState;
- (void)processAuthenticationSuccessWithCompletionHandler:(id)handler;
- (void)resetToDefault;
- (void)setButtonText:(id)text;
- (void)setUpButtonToPaneContext:(id)context;
- (void)showAlertAndContinueWithPassword:(BOOL)password;
- (void)switchToAccountCreation;
@end

@implementation AKAuthorizationSubPaneConfirmButton

- (AKAuthorizationSubPaneConfirmButton)initWithPresentationContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  _createMainStackView = [objc_opt_class() _createMainStackView];
  v3 = selfCopy;
  selfCopy = 0;
  v13.receiver = v3;
  v13.super_class = AKAuthorizationSubPaneConfirmButton;
  selfCopy = [(AKAuthorizationSubPane *)&v13 initWithView:_createMainStackView];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_mainStackView, _createMainStackView);
    objc_storeStrong(&selfCopy->_presentationContext, location[0]);
    currentDevice = [MEMORY[0x277CF0218] currentDevice];
    isBiometricAuthCapable = [currentDevice isBiometricAuthCapable];
    [(AKAuthorizationSubPaneConfirmButton *)selfCopy setCanPerformBiometricValidation:isBiometricAuthCapable];
    *&v5 = MEMORY[0x277D82BD8](currentDevice).n128_u64[0];
    v11 = 0;
    v10 = 0;
    if ([(AKAuthorizationSubPaneConfirmButton *)selfCopy canPerformBiometricValidation])
    {
      currentDevice2 = [MEMORY[0x277CF0218] currentDevice];
      v11 = 1;
      v10 = [currentDevice2 isFaceIDCapable] == 0;
    }

    [(AKAuthorizationSubPaneConfirmButton *)selfCopy setHasTouchIDOnly:v10];
    if (v11)
    {
      MEMORY[0x277D82BD8](currentDevice2);
    }

    [(AKAuthorizationSubPaneConfirmButton *)selfCopy _initializeAuthorizationButton];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:selfCopy selector:sel__windowDidBecomeKey_ name:*MEMORY[0x277D77280] object:0];
    MEMORY[0x277D82BD8](defaultCenter);
  }

  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&_createMainStackView, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (void)_initializeAuthorizationButton
{
  v45[4] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D75D18]);
  v3 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  authorizationButtonContainer = self->_authorizationButtonContainer;
  self->_authorizationButtonContainer = v3;
  [(UIView *)self->_authorizationButtonContainer setTranslatesAutoresizingMaskIntoConstraints:0, MEMORY[0x277D82BD8](authorizationButtonContainer).n128_f64[0]];
  _shouldUseSIWAButton = [(AKAuthorizationSubPaneConfirmButton *)self _shouldUseSIWAButton];
  if (_shouldUseSIWAButton)
  {
    v40 = 0;
    presentationContext = [(AKAuthorizationSubPaneConfirmButton *)self presentationContext];
    credentialRequestContext = [(AKAuthorizationPresentationContext *)presentationContext credentialRequestContext];
    authorizationRequest = [credentialRequestContext authorizationRequest];
    v39 = [authorizationRequest existingStatus] != 1;
    MEMORY[0x277D82BD8](authorizationRequest);
    MEMORY[0x277D82BD8](credentialRequestContext);
    if ([(AKAuthorizationSubPaneConfirmButton *)self _isSubscriptionFlow])
    {
      v40 = v39;
    }

    v5 = [AKAuthorizationAppleIDButton buttonWithType:v40 style:3];
    authorizationButton = self->_authorizationButton;
    self->_authorizationButton = &v5->super;
    v7 = MEMORY[0x277D82BD8](authorizationButton).n128_u64[0];
  }

  else
  {
    v8 = [AKAuthorizationContinueButton alloc];
    v9 = [(AKAuthorizationContinueButton *)v8 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    v10 = self->_authorizationButton;
    self->_authorizationButton = v9;
    v7 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  }

  [(AKAuthorizationButton *)self->_authorizationButton setAccessibilityIdentifier:0x2835927C8, *&v7];
  [(AKAuthorizationButton *)self->_authorizationButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_authorizationButtonContainer addSubview:self->_authorizationButton];
  [(UIStackView *)self->_mainStackView addArrangedSubview:self->_authorizationButtonContainer];
  v22 = MEMORY[0x277CCAAD0];
  centerXAnchor = [(AKAuthorizationButton *)self->_authorizationButton centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_authorizationButtonContainer centerXAnchor];
  v33 = [centerXAnchor constraintEqualToAnchor:?];
  v45[0] = v33;
  centerYAnchor = [(AKAuthorizationButton *)self->_authorizationButton centerYAnchor];
  centerYAnchor2 = [(UIView *)self->_authorizationButtonContainer centerYAnchor];
  v30 = [centerYAnchor constraintEqualToAnchor:?];
  v45[1] = v30;
  widthAnchor = [(UIView *)self->_authorizationButtonContainer widthAnchor];
  widthAnchor2 = [(AKAuthorizationButton *)self->_authorizationButton widthAnchor];
  v27 = [(NSLayoutDimension *)widthAnchor constraintEqualToAnchor:?];
  v45[2] = v27;
  heightAnchor = [(UIView *)self->_authorizationButtonContainer heightAnchor];
  heightAnchor2 = [(AKAuthorizationButton *)self->_authorizationButton heightAnchor];
  v24 = [(NSLayoutDimension *)heightAnchor constraintEqualToAnchor:?];
  v45[3] = v24;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:4];
  [v22 activateConstraints:?];
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](heightAnchor2);
  MEMORY[0x277D82BD8](heightAnchor);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](widthAnchor2);
  MEMORY[0x277D82BD8](widthAnchor);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](centerYAnchor2);
  MEMORY[0x277D82BD8](centerYAnchor);
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](centerXAnchor2);
  *&v11 = MEMORY[0x277D82BD8](centerXAnchor).n128_u64[0];
  if (_shouldUseSIWAButton)
  {
    v16 = MEMORY[0x277CCAAD0];
    heightAnchor3 = [(AKAuthorizationButton *)self->_authorizationButton heightAnchor];
    v20 = [heightAnchor3 constraintEqualToConstant:40.0];
    v44[0] = v20;
    widthAnchor3 = [(AKAuthorizationButton *)self->_authorizationButton widthAnchor];
    v18 = [widthAnchor3 constraintEqualToConstant:180.0];
    v44[1] = v18;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
    [v16 activateConstraints:?];
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](widthAnchor3);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](heightAnchor3);
  }

  else
  {
    v12 = MEMORY[0x277CCAAD0];
    heightAnchor4 = [(AKAuthorizationButton *)self->_authorizationButton heightAnchor];
    +[AKAuthorizationPaneMetrics continueButtonHeight];
    v14 = [heightAnchor4 constraintEqualToConstant:?];
    v43 = v14;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
    [v12 activateConstraints:?];
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](heightAnchor4);
  }

  *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  selfCopy = self;
  v5 = a2;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:selfCopy];
  *&v2 = MEMORY[0x277D82BD8](defaultCenter).n128_u64[0];
  v4.receiver = selfCopy;
  v4.super_class = AKAuthorizationSubPaneConfirmButton;
  [(AKAuthorizationSubPaneConfirmButton *)&v4 dealloc];
}

- (NSString)buttonText
{
  authorizationButton = [(AKAuthorizationSubPaneConfirmButton *)self authorizationButton];
  buttonText = [(AKAuthorizationButton *)authorizationButton buttonText];
  MEMORY[0x277D82BD8](authorizationButton);

  return buttonText;
}

- (void)setButtonText:(id)text
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, text);
  v3 = location[0];
  authorizationButton = [(AKAuthorizationSubPaneConfirmButton *)selfCopy authorizationButton];
  [(AKAuthorizationButton *)authorizationButton setButtonText:v3];
  MEMORY[0x277D82BD8](authorizationButton);
  objc_storeStrong(location, 0);
}

- (BOOL)_shouldUseSIWAButton
{
  presentationContext = [(AKAuthorizationSubPaneConfirmButton *)self presentationContext];
  credentialRequestContext = [(AKAuthorizationPresentationContext *)presentationContext credentialRequestContext];
  authorizationRequest = [credentialRequestContext authorizationRequest];
  if (([authorizationRequest isEligibleForUpgradeFromPassword] & 1) == 0 || (_isSubscriptionFlow = 1, -[AKAuthorizationSubPaneConfirmButton hasTouchIDOnly](self, "hasTouchIDOnly")))
  {
    _isSubscriptionFlow = [(AKAuthorizationSubPaneConfirmButton *)self _isSubscriptionFlow];
  }

  MEMORY[0x277D82BD8](authorizationRequest);
  MEMORY[0x277D82BD8](credentialRequestContext);
  MEMORY[0x277D82BD8](presentationContext);
  return _isSubscriptionFlow;
}

- (BOOL)_isSubscriptionFlow
{
  presentationContext = [(AKAuthorizationSubPaneConfirmButton *)self presentationContext];
  credentialRequestContext = [(AKAuthorizationPresentationContext *)presentationContext credentialRequestContext];
  _clientShouldAuthenticateExternally = [credentialRequestContext _clientShouldAuthenticateExternally];
  MEMORY[0x277D82BD8](credentialRequestContext);
  MEMORY[0x277D82BD8](presentationContext);
  return _clientShouldAuthenticateExternally;
}

- (void)addToStackView:(id)view context:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v6 = 0;
  objc_storeStrong(&v6, context);
  v5.receiver = selfCopy;
  v5.super_class = AKAuthorizationSubPaneConfirmButton;
  [(AKAuthorizationSubPane *)&v5 addToStackView:location[0] context:v6];
  [(AKAuthorizationSubPaneConfirmButton *)selfCopy setContext:v6];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)addToConstraints:(id)constraints context:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, constraints);
  v6 = 0;
  objc_storeStrong(&v6, context);
  v5.receiver = selfCopy;
  v5.super_class = AKAuthorizationSubPaneConfirmButton;
  [(AKAuthorizationSubPane *)&v5 addToConstraints:location[0] context:v6];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)setUpButtonToPaneContext:(id)context
{
  v61[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v58 = 0;
  v36 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v57 = [v36 localizedStringForKey:@"AUTHORIZE_BUTTON_TITLE" value:&stru_28358EF68 table:@"Localizable"];
  *&v3 = MEMORY[0x277D82BD8](v36).n128_u64[0];
  v56 = 0;
  presentationContext = [(AKAuthorizationSubPaneConfirmButton *)selfCopy presentationContext];
  v54 = 1;
  credentialRequestContext = [(AKAuthorizationPresentationContext *)presentationContext credentialRequestContext];
  v52 = 1;
  _shouldSkipBiometrics = [credentialRequestContext _shouldSkipBiometrics];
  MEMORY[0x277D82BD8](credentialRequestContext);
  MEMORY[0x277D82BD8](presentationContext);
  if (_shouldSkipBiometrics)
  {
    v51 = _AKLogSiwa();
    v50 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      log = v51;
      type = v50;
      __os_log_helper_16_0_0(v49);
      _os_log_impl(&dword_222379000, log, type, "AKAuthorizationSubPaneConfirmButton - Skipping biometrics", v49, 2u);
    }

    objc_storeStrong(&v51, 0);
    v58 = sel__authorizationButtonSkipBioSelected_;
  }

  else
  {
    presentationContext2 = [(AKAuthorizationSubPaneConfirmButton *)selfCopy presentationContext];
    credentialRequestContext2 = [(AKAuthorizationPresentationContext *)presentationContext2 credentialRequestContext];
    _clientShouldAuthenticateExternally = [credentialRequestContext2 _clientShouldAuthenticateExternally];
    MEMORY[0x277D82BD8](credentialRequestContext2);
    *&v4 = MEMORY[0x277D82BD8](presentationContext2).n128_u64[0];
    if (_clientShouldAuthenticateExternally)
    {
      v48 = _AKLogSiwa();
      v47 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v28 = v48;
        v29 = v47;
        __os_log_helper_16_0_0(v46);
        _os_log_impl(&dword_222379000, v28, v29, "AKAuthorizationSubPaneConfirmButton - Skipping biometrics and Authentication", v46, 2u);
      }

      objc_storeStrong(&v48, 0);
      v58 = sel__authorizationButtonExternalAuthenticationSelected_;
    }

    else
    {
      presentationContext3 = [(AKAuthorizationSubPaneConfirmButton *)selfCopy presentationContext];
      credentialRequestContext3 = [(AKAuthorizationPresentationContext *)presentationContext3 credentialRequestContext];
      _requirePassword = [credentialRequestContext3 _requirePassword];
      MEMORY[0x277D82BD8](credentialRequestContext3);
      *&v5 = MEMORY[0x277D82BD8](presentationContext3).n128_u64[0];
      if (_requirePassword)
      {
        v45 = _AKLogSiwa();
        v44 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v23 = v45;
          v24 = v44;
          __os_log_helper_16_0_0(v43);
          _os_log_impl(&dword_222379000, v23, v24, "AKAuthorizationSubPaneConfirmButton - Request requires password or device is not protected with passcode.", v43, 2u);
        }

        objc_storeStrong(&v45, 0);
        _passwordButtonTitle = [(AKAuthorizationSubPaneConfirmButton *)selfCopy _passwordButtonTitle];
        v7 = v57;
        v57 = _passwordButtonTitle;
        MEMORY[0x277D82BD8](v7);
        v58 = sel__authorizationButtonWithAccountPasswordSelected_;
      }

      else if ([(AKAuthorizationSubPaneConfirmButton *)selfCopy canPerformBiometricValidation])
      {
        v42 = _AKLogSiwa();
        v41 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v21 = v42;
          v22 = v41;
          __os_log_helper_16_0_0(v40);
          _os_log_impl(&dword_222379000, v21, v22, "AKAuthorizationSubPaneConfirmButton - Can perform biometric auth.", v40, 2u);
        }

        objc_storeStrong(&v42, 0);
        v58 = sel__authorizationButtonBioSelected_;
        _bioButtonTitle = [(AKAuthorizationSubPaneConfirmButton *)selfCopy _bioButtonTitle];
        v9 = v57;
        v57 = _bioButtonTitle;
        MEMORY[0x277D82BD8](v9);
      }

      else
      {
        v39 = _AKLogSiwa();
        v38 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v39;
          v20 = v38;
          __os_log_helper_16_0_0(v37);
          _os_log_impl(&dword_222379000, v19, v20, "AKAuthorizationSubPaneConfirmButton - Falling back to passcode.", v37, 2u);
        }

        objc_storeStrong(&v39, 0);
        _passcodeButtonTitle = [(AKAuthorizationSubPaneConfirmButton *)selfCopy _passcodeButtonTitle];
        v11 = v57;
        v57 = _passcodeButtonTitle;
        MEMORY[0x277D82BD8](v11);
        v58 = sel__authorizationWithPasscodeButtonSelected_;
      }
    }
  }

  [(AKAuthorizationButton *)selfCopy->_authorizationButton setButtonText:v57];
  mutableConstraints = [location[0] mutableConstraints];
  widthAnchor = [(UIStackView *)selfCopy->_mainStackView widthAnchor];
  stackView = [location[0] stackView];
  widthAnchor2 = [stackView widthAnchor];
  v14 = [widthAnchor constraintEqualToAnchor:?];
  v61[0] = v14;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:1];
  [mutableConstraints addObjectsFromArray:?];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](widthAnchor2);
  MEMORY[0x277D82BD8](stackView);
  MEMORY[0x277D82BD8](widthAnchor);
  *&v12 = MEMORY[0x277D82BD8](mutableConstraints).n128_u64[0];
  [(AKAuthorizationButton *)selfCopy->_authorizationButton addTarget:selfCopy action:v58, v12];
  objc_storeStrong(&v57, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (BOOL)_delegate_validateReadyForAuthorization
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(AKAuthorizationSubPaneConfirmButton *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [location[0] validateReadyForAuthorization] & 1;
  }

  else
  {
    v4 = 1;
  }

  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (void)_authorizationButtonExternalAuthenticationSelected:(id)selected
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, selected);
  delegate = [(AKAuthorizationSubPaneConfirmButton *)selfCopy delegate];
  if ([(AKAuthorizationSubPaneConfirmButton *)selfCopy _delegate_validateReadyForAuthorization]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate subPaneConfirmButtonPerformExternalAuthentication:selfCopy];
  }

  objc_storeStrong(&delegate, 0);
  objc_storeStrong(location, 0);
}

- (void)_authorizationButtonSkipBioSelected:(id)selected
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, selected);
  delegate = [(AKAuthorizationSubPaneConfirmButton *)selfCopy delegate];
  if ([(AKAuthorizationSubPaneConfirmButton *)selfCopy _delegate_validateReadyForAuthorization])
  {
    [delegate performAuthorization];
  }

  objc_storeStrong(&delegate, 0);
  objc_storeStrong(location, 0);
}

- (void)_authorizationButtonWithAccountPasswordSelected:(id)selected
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, selected);
  delegate = [(AKAuthorizationSubPaneConfirmButton *)selfCopy delegate];
  if ([(AKAuthorizationSubPaneConfirmButton *)selfCopy _delegate_validateReadyForAuthorization])
  {
    [delegate performPasswordAuthentication];
  }

  objc_storeStrong(&delegate, 0);
  objc_storeStrong(location, 0);
}

- (void)_authorizationButtonBioSelected:(id)selected
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, selected);
  if ([(AKAuthorizationSubPaneConfirmButton *)selfCopy _delegate_validateReadyForAuthorization])
  {
    [(AKAuthorizationSubPaneConfirmButton *)selfCopy _switchToBioView:1 withEnabled:1 showAlert:0 alertString:0];
  }

  objc_storeStrong(location, 0);
}

- (void)_authorizationWithPasscodeButtonSelected:(id)selected
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, selected);
  if ([(AKAuthorizationSubPaneConfirmButton *)selfCopy isPasscodeAuthorizationInProcess])
  {
    v21 = _AKLogSiwa();
    v20 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      log = v21;
      type = v20;
      __os_log_helper_16_0_0(v19);
      _os_log_impl(&dword_222379000, log, type, "Passcode/Password authorization is already in progress, so ignoring this request.", v19, 2u);
    }

    objc_storeStrong(&v21, 0);
    v18 = 1;
  }

  else
  {
    v17 = _AKLogSiwa();
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v17;
      v5 = v16;
      __os_log_helper_16_0_0(v15);
      _os_log_impl(&dword_222379000, v4, v5, "Starting Passcode/Password authorization", v15, 2u);
    }

    objc_storeStrong(&v17, 0);
    if ([(AKAuthorizationSubPaneConfirmButton *)selfCopy _delegate_validateReadyForAuthorization])
    {
      [(AKAuthorizationSubPaneConfirmButton *)selfCopy setIsPasscodeAuthorizationInProcess:1];
      objc_initWeak(&v14, selfCopy);
      v3 = selfCopy;
      v8 = MEMORY[0x277D85DD0];
      v9 = -1073741824;
      v10 = 0;
      v11 = __80__AKAuthorizationSubPaneConfirmButton__authorizationWithPasscodeButtonSelected___block_invoke;
      v12 = &unk_2784A7AA8;
      objc_copyWeak(&v13, &v14);
      [(AKAuthorizationSubPaneConfirmButton *)v3 _performPasscodeValidations:&v8];
      objc_destroyWeak(&v13);
      objc_destroyWeak(&v14);
    }

    v18 = 0;
  }

  objc_storeStrong(location, 0);
}

void __80__AKAuthorizationSubPaneConfirmButton__authorizationWithPasscodeButtonSelected___block_invoke(id *a1, char a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v6 = a2;
  location[1] = a1;
  location[0] = objc_loadWeakRetained(a1 + 4);
  if (location[0])
  {
    oslog = _AKLogSiwa();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      if (v6)
      {
        v2 = @"YES";
      }

      else
      {
        v2 = @"NO";
      }

      __os_log_helper_16_2_1_8_64(v8, v2);
      _os_log_impl(&dword_222379000, oslog, OS_LOG_TYPE_DEFAULT, "Passcode/Password completed with response: %@", v8, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    if (v6)
    {
      v3 = [location[0] delegate];
      [v3 performAuthorization];
      MEMORY[0x277D82BD8](v3);
    }

    [location[0] setIsPasscodeAuthorizationInProcess:0];
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_disableBioView
{
  v20 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v17[1] = a2;
  bioView = [(AKAuthorizationSubPaneConfirmButton *)self bioView];
  *&v2 = MEMORY[0x277D82BD8](bioView).n128_u64[0];
  if (bioView)
  {
    bioView2 = [(AKAuthorizationSubPaneConfirmButton *)selfCopy bioView];
    [(LAUIAuthenticationView *)bioView2 setDelegate:0];
    v17[0] = 0;
    bioView3 = [(AKAuthorizationSubPaneConfirmButton *)selfCopy bioView];
    _authenticationMechanism = [(AKAuthorizationSubPaneConfirmButton *)selfCopy _authenticationMechanism];
    v15 = v17[0];
    v8 = [(LAUIAuthenticationView *)bioView3 disableMechanism:_authenticationMechanism error:&v15];
    objc_storeStrong(v17, v15);
    MEMORY[0x277D82BD8](bioView3);
    v16 = v8;
    if (!v17[0] && (v16 & 1) != 0)
    {
      v12 = _AKLogSiwa();
      v11 = 2;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v4 = v12;
        v5 = v11;
        __os_log_helper_16_0_0(v10);
        _os_log_debug_impl(&dword_222379000, v4, v5, "biometrics UI disabled", v10, 2u);
      }

      objc_storeStrong(&v12, 0);
    }

    else
    {
      v14 = _AKLogSiwa();
      v13 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_1_8_64(v19, v17[0]);
        _os_log_error_impl(&dword_222379000, v14, v13, "error disabling biometrics UI: %@", v19, 0xCu);
      }

      objc_storeStrong(&v14, 0);
    }

    [(AKAuthorizationSubPaneConfirmButton *)selfCopy setBioView:?];
    objc_storeStrong(v17, 0);
  }

  *MEMORY[0x277D85DE8];
}

- (void)bioAuthFailWithAlertString:(id)string
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, string);
  [(AKAuthorizationSubPaneConfirmButton *)selfCopy _switchToBioView:0 withEnabled:0 showAlert:1 alertString:location[0]];
  objc_storeStrong(location, 0);
}

- (void)enableAuthorizationCapability:(BOOL)capability
{
  v6 = 0;
  v4 = 0;
  v3 = 0;
  if ([(AKAuthorizationSubPaneConfirmButton *)self hasTouchIDOnly])
  {
    presentationContext = [(AKAuthorizationSubPaneConfirmButton *)self presentationContext];
    v6 = 1;
    credentialRequestContext = [(AKAuthorizationPresentationContext *)presentationContext credentialRequestContext];
    v4 = 1;
    v3 = 0;
    if (![credentialRequestContext _requirePassword])
    {
      v3 = ![(AKAuthorizationSubPaneConfirmButton *)self _isSubscriptionFlow];
    }
  }

  if (v4)
  {
    MEMORY[0x277D82BD8](credentialRequestContext);
  }

  if (v6)
  {
    MEMORY[0x277D82BD8](presentationContext);
  }

  if (v3)
  {
    [(AKAuthorizationSubPaneConfirmButton *)self _switchToBioView:1 withEnabled:1 showAlert:0 alertString:0];
  }

  else
  {
    [(AKAuthorizationSubPaneConfirmButton *)self _switchToBioView:0 withEnabled:capability showAlert:0 alertString:0];
  }
}

- (void)showAlertAndContinueWithPassword:(BOOL)password
{
  selfCopy = self;
  v19 = a2;
  passwordCopy = password;
  [(AKAuthorizationSubPaneConfirmButton *)self _switchToBioView:0 withEnabled:1 showAlert:1 alertString:0];
  if (passwordCopy)
  {
    presentationContext = [(AKAuthorizationSubPaneConfirmButton *)selfCopy presentationContext];
    credentialRequestContext = [(AKAuthorizationPresentationContext *)presentationContext credentialRequestContext];
    [credentialRequestContext set_requirePassword:1];
    MEMORY[0x277D82BD8](credentialRequestContext);
    MEMORY[0x277D82BD8](presentationContext);
    authorizationButton = selfCopy->_authorizationButton;
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v11 localizedStringForKey:@"AUTHORIZE_BUTTON_TITLE_PASSWORD_MODERN" value:&stru_28358EF68 table:@"Localizable"];
    [(AKAuthorizationButton *)authorizationButton setButtonText:?];
    MEMORY[0x277D82BD8](v10);
    [(AKAuthorizationButton *)selfCopy->_authorizationButton addTarget:selfCopy action:sel__authorizationButtonWithAccountPasswordSelected_, MEMORY[0x277D82BD8](v11).n128_f64[0]];
  }

  when = dispatch_time(0, 1700000000);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v12 = MEMORY[0x277D85DD0];
  v13 = -1073741824;
  v14 = 0;
  v15 = __72__AKAuthorizationSubPaneConfirmButton_showAlertAndContinueWithPassword___block_invoke;
  v16 = &unk_2784A5C90;
  v17 = MEMORY[0x277D82BE0](selfCopy);
  dispatch_after(when, queue, &v12);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v17, 0);
}

- (void)_windowDidBecomeKey:(id)key
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  bioView = [(AKAuthorizationSubPaneConfirmButton *)selfCopy bioView];
  v6 = [(LAUIAuthenticationView *)bioView isMechanismEnabled:[(AKAuthorizationSubPaneConfirmButton *)selfCopy _authenticationMechanism]];
  MEMORY[0x277D82BD8](bioView);
  v10 = v6;
  if (v6)
  {
    v9 = _AKLogSiwa();
    v8 = 2;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      log = v9;
      type = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_debug_impl(&dword_222379000, log, type, "Window did become key and biometry is enabled, activating.", v7, 2u);
    }

    objc_storeStrong(&v9, 0);
    [(AKAuthorizationSubPaneConfirmButton *)selfCopy _enableLAUIAuthMechanism];
  }

  objc_storeStrong(location, 0);
}

- (void)_switchToBioView:(BOOL)view withEnabled:(BOOL)enabled showAlert:(BOOL)alert alertString:(id)string
{
  v62 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v59 = a2;
  viewCopy = view;
  enabledCopy = enabled;
  alertCopy = alert;
  location = 0;
  objc_storeStrong(&location, string);
  v53 = 0;
  v38 = 0;
  if (viewCopy)
  {
    v38 = 0;
    if (enabledCopy)
    {
      bioView = [(AKAuthorizationSubPaneConfirmButton *)selfCopy bioView];
      v53 = 1;
      v38 = bioView != 0;
    }
  }

  if (v53)
  {
    MEMORY[0x277D82BD8](bioView);
  }

  if (v38)
  {
    v52 = _AKLogSiwa();
    v51 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      log = v52;
      type = v51;
      __os_log_helper_16_0_0(v50);
      _os_log_impl(&dword_222379000, log, type, "Already switched to bio view.", v50, 2u);
    }

    objc_storeStrong(&v52, 0);
    [(AKAuthorizationSubPaneConfirmButton *)selfCopy _enableLAUIAuthMechanism];
    v49 = 1;
  }

  else
  {
    memset(__b, 0, sizeof(__b));
    mainStackView = [(AKAuthorizationSubPaneConfirmButton *)selfCopy mainStackView];
    subviews = [(UIStackView *)mainStackView subviews];
    obj = [subviews copy];
    MEMORY[0x277D82BD8](subviews);
    v35 = [obj countByEnumeratingWithState:__b objects:v61 count:{16, MEMORY[0x277D82BD8](mainStackView).n128_f64[0]}];
    if (v35)
    {
      v29 = *__b[2];
      v30 = 0;
      v31 = v35;
      while (1)
      {
        v28 = v30;
        if (*__b[2] != v29)
        {
          objc_enumerationMutation(obj);
        }

        v48 = *(__b[1] + 8 * v30);
        [v48 removeFromSuperview];
        ++v30;
        if (v28 + 1 >= v31)
        {
          v30 = 0;
          v31 = [obj countByEnumeratingWithState:__b objects:v61 count:16];
          if (!v31)
          {
            break;
          }
        }
      }
    }

    *&v6 = MEMORY[0x277D82BD8](obj).n128_u64[0];
    if (alertCopy)
    {
      oslog = _AKLogSiwa();
      v45 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v26 = oslog;
        v27 = v45;
        __os_log_helper_16_0_0(v44);
        _os_log_impl(&dword_222379000, v26, v27, "Showing Authorization UI Alert", v44, 2u);
      }

      objc_storeStrong(&oslog, 0);
      [(AKAuthorizationSubPaneConfirmButton *)selfCopy _disableBioView];
      [(AKAuthorizationSubPaneConfirmButton *)selfCopy _addArrangedSpaceToMainStackView:12.0];
      v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [(AKAuthorizationSubPaneConfirmButton *)selfCopy _setupAlertImageWithConstraints:v43];
      if (location)
      {
        [(AKAuthorizationSubPaneConfirmButton *)selfCopy _setupLabelWithTitle:location withConstraints:v43 animated:1];
      }

      else
      {
        v23 = selfCopy;
        v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v24 = [v25 localizedStringForKey:@"AUTH_ALERT_SIGN_UP_NOT_COMPLETED" value:&stru_28358EF68 table:@"Localizable"];
        [AKAuthorizationSubPaneConfirmButton _setupLabelWithTitle:v23 withConstraints:"_setupLabelWithTitle:withConstraints:animated:" animated:?];
        MEMORY[0x277D82BD8](v24);
        MEMORY[0x277D82BD8](v25);
      }

      [MEMORY[0x277CCAAD0] activateConstraints:v43];
      objc_storeStrong(&v43, 0);
    }

    else if (viewCopy)
    {
      v42 = _AKLogSiwa();
      v41 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v42;
        v22 = v41;
        __os_log_helper_16_0_0(v40);
        _os_log_impl(&dword_222379000, v21, v22, "Switch to enabled bio view.", v40, 2u);
      }

      objc_storeStrong(&v42, 0);
      v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [(AKAuthorizationSubPaneConfirmButton *)selfCopy _setupBioButtonWithConstraints:v39];
      if ([(AKAuthorizationSubPaneConfirmButton *)selfCopy hasTouchIDOnly])
      {
        v18 = selfCopy;
        v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v19 = [v20 localizedStringForKey:@"BIO_BUTTON_CONTINUE_TITLE" value:&stru_28358EF68 table:@"Localizable"];
        [AKAuthorizationSubPaneConfirmButton _setupLabelWithTitle:v18 withConstraints:"_setupLabelWithTitle:withConstraints:animated:" animated:?];
        MEMORY[0x277D82BD8](v19);
        v7 = MEMORY[0x277D82BD8](v20).n128_u64[0];
      }

      else
      {
        currentDevice = [MEMORY[0x277CF0218] currentDevice];
        isFaceIDCapable = [currentDevice isFaceIDCapable];
        v7 = MEMORY[0x277D82BD8](currentDevice).n128_u64[0];
        if (isFaceIDCapable)
        {
          v13 = selfCopy;
          v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v14 = [v15 localizedStringForKey:@"BIO_BUTTON_PEARL_TITLE" value:&stru_28358EF68 table:@"Localizable"];
          [AKAuthorizationSubPaneConfirmButton _setupLabelWithTitle:v13 withConstraints:"_setupLabelWithTitle:withConstraints:animated:" animated:?];
          MEMORY[0x277D82BD8](v14);
          v7 = MEMORY[0x277D82BD8](v15).n128_u64[0];
        }
      }

      [MEMORY[0x277CCAAD0] activateConstraints:{v39, *&v7}];
      [(AKAuthorizationSubPaneConfirmButton *)selfCopy _enableLAUIAuthMechanism];
      objc_storeStrong(&v39, 0);
    }

    else
    {
      [(AKAuthorizationSubPaneConfirmButton *)selfCopy _disableBioView];
      mainStackView2 = [(AKAuthorizationSubPaneConfirmButton *)selfCopy mainStackView];
      authorizationButtonContainer = [(AKAuthorizationSubPaneConfirmButton *)selfCopy authorizationButtonContainer];
      [(UIStackView *)mainStackView2 addArrangedSubview:?];
      MEMORY[0x277D82BD8](authorizationButtonContainer);
      *&v8 = MEMORY[0x277D82BD8](mainStackView2).n128_u64[0];
      v11 = enabledCopy;
      authorizationButton = [(AKAuthorizationSubPaneConfirmButton *)selfCopy authorizationButton];
      [(AKAuthorizationButton *)authorizationButton setEnabled:v11];
      MEMORY[0x277D82BD8](authorizationButton);
    }

    v49 = 0;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_enableLAUIAuthMechanism
{
  selfCopy = self;
  v10[1] = a2;
  v3 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  queue = v3;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __63__AKAuthorizationSubPaneConfirmButton__enableLAUIAuthMechanism__block_invoke;
  v9 = &unk_2784A5C90;
  v10[0] = MEMORY[0x277D82BE0](selfCopy);
  dispatch_async(queue, &v5);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v10, 0);
}

void __63__AKAuthorizationSubPaneConfirmButton__enableLAUIAuthMechanism__block_invoke(id *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v14[2] = a1;
  v14[1] = a1;
  v14[0] = 0;
  v5 = [a1[4] bioView];
  v1 = [a1[4] _authenticationMechanism];
  v12 = v14[0];
  v6 = [v5 enableMechanism:v1 error:&v12];
  objc_storeStrong(v14, v12);
  MEMORY[0x277D82BD8](v5);
  v13 = v6;
  if (!v14[0] && (v13 & 1) != 0)
  {
    v9 = _AKLogSiwa();
    v8 = 2;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v2 = v9;
      v3 = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_debug_impl(&dword_222379000, v2, v3, "biometrics enabled", v7, 2u);
    }

    objc_storeStrong(&v9, 0);
  }

  else
  {
    v11 = _AKLogSiwa();
    v10 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v15, v14[0]);
      _os_log_error_impl(&dword_222379000, v11, v10, "error enabling biometrics: %@", v15, 0xCu);
    }

    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(v14, 0);
  *MEMORY[0x277D85DE8];
}

- (id)_spaceWithConstant:(double)constant
{
  selfCopy = self;
  v10 = a2;
  constantCopy = constant;
  v8 = objc_alloc_init(MEMORY[0x277D75D18]);
  v4 = v8;
  heightAnchor = [v8 heightAnchor];
  v5 = [heightAnchor constraintEqualToConstant:constantCopy];
  [v4 addConstraint:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](heightAnchor);
  v7 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(&v8, 0);

  return v7;
}

- (void)_addArrangedSpaceToMainStackView:(double)view
{
  selfCopy = self;
  v4[2] = a2;
  v4[1] = *&view;
  v4[0] = [(AKAuthorizationSubPaneConfirmButton *)self _spaceWithConstant:view];
  mainStackView = [(AKAuthorizationSubPaneConfirmButton *)selfCopy mainStackView];
  [(UIStackView *)mainStackView addArrangedSubview:v4[0]];
  MEMORY[0x277D82BD8](mainStackView);
  objc_storeStrong(v4, 0);
}

- (void)_setupLabelWithTitle:(id)title withConstraints:(id)constraints animated:(BOOL)animated
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  v19 = 0;
  objc_storeStrong(&v19, constraints);
  animatedCopy = animated;
  v17 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v17 setTranslatesAutoresizingMaskIntoConstraints:{0, MEMORY[0x277D82BD8](0).n128_f64[0]}];
  defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
  v15 = [MEMORY[0x277D74300] systemFontOfSize:15.0 weight:*MEMORY[0x277D74418]];
  v14 = [defaultMetrics scaledFontForFont:?];
  [v17 setFont:?];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  [v17 setTextAlignment:MEMORY[0x277D82BD8](defaultMetrics).n128_f64[0]];
  [v17 setNumberOfLines:1];
  [v17 setAdjustsFontSizeToFitWidth:0];
  [v17 setAdjustsFontForContentSizeCategory:1];
  if (animated)
  {
    v11 = &stru_28358EF68;
  }

  else
  {
    v11 = location[0];
  }

  [v17 setText:v11];
  mainStackView = [(AKAuthorizationSubPaneConfirmButton *)selfCopy mainStackView];
  [(UIStackView *)mainStackView addArrangedSubview:v17];
  *&v5 = MEMORY[0x277D82BD8](mainStackView).n128_u64[0];
  bioView = [(AKAuthorizationSubPaneConfirmButton *)selfCopy bioView];
  v6 = MEMORY[0x277D82BD8](bioView).n128_u64[0];
  if (bioView)
  {
    mainStackView2 = [(AKAuthorizationSubPaneConfirmButton *)selfCopy mainStackView];
    bioView2 = [(AKAuthorizationSubPaneConfirmButton *)selfCopy bioView];
    [(UIStackView *)mainStackView2 setCustomSpacing:12.0 afterView:?];
    MEMORY[0x277D82BD8](bioView2);
    v6 = MEMORY[0x277D82BD8](mainStackView2).n128_u64[0];
  }

  [(AKAuthorizationSubPaneConfirmButton *)selfCopy setBioLabel:v17, *&v6];
  if (animatedCopy)
  {
    [(AKAuthorizationSubPaneConfirmButton *)selfCopy _updateLabelWithTitle:location[0]];
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

- (void)_setupBioButtonWithConstraints:(id)constraints
{
  v32[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, constraints);
  CGRectMake_6();
  v26 = v3;
  v27 = v4;
  v28 = v5;
  v29 = v6;
  v11 = objc_alloc(MEMORY[0x277D24200]);
  v12 = [v11 initWithFrame:-[AKAuthorizationSubPaneConfirmButton _authenticationMechanism](selfCopy mechanisms:{"_authenticationMechanism"), v26, v27, v28, v29}];
  [(AKAuthorizationSubPaneConfirmButton *)selfCopy setBioView:?];
  *&v7 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  bioView = [(AKAuthorizationSubPaneConfirmButton *)selfCopy bioView];
  [(LAUIAuthenticationView *)bioView setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v8 = MEMORY[0x277D82BD8](bioView).n128_u64[0];
  v14 = selfCopy;
  bioView2 = [(AKAuthorizationSubPaneConfirmButton *)selfCopy bioView];
  [(LAUIAuthenticationView *)bioView2 setDelegate:v14];
  *&v9 = MEMORY[0x277D82BD8](bioView2).n128_u64[0];
  mainStackView = [(AKAuthorizationSubPaneConfirmButton *)selfCopy mainStackView];
  bioView3 = [(AKAuthorizationSubPaneConfirmButton *)selfCopy bioView];
  [(UIStackView *)mainStackView addArrangedSubview:?];
  MEMORY[0x277D82BD8](bioView3);
  *&v10 = MEMORY[0x277D82BD8](mainStackView).n128_u64[0];
  v18 = location[0];
  bioView4 = [(AKAuthorizationSubPaneConfirmButton *)selfCopy bioView];
  widthAnchor = [(LAUIAuthenticationView *)bioView4 widthAnchor];
  v23 = [widthAnchor constraintEqualToConstant:50.0];
  v32[0] = v23;
  bioView5 = [(AKAuthorizationSubPaneConfirmButton *)selfCopy bioView];
  heightAnchor = [(LAUIAuthenticationView *)bioView5 heightAnchor];
  v20 = [heightAnchor constraintEqualToConstant:50.0];
  v32[1] = v20;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
  [v18 addObjectsFromArray:?];
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](heightAnchor);
  MEMORY[0x277D82BD8](bioView5);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](widthAnchor);
  MEMORY[0x277D82BD8](bioView4);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_setupAlertImageWithConstraints:(id)constraints
{
  v30[3] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, constraints);
  v27 = 0;
  v3 = objc_alloc_init(MEMORY[0x277D755E8]);
  v4 = v27;
  v27 = v3;
  *&v5 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  v12 = v27;
  systemRedColor = [MEMORY[0x277D75348] systemRedColor];
  [v12 setTintColor:?];
  MEMORY[0x277D82BD8](systemRedColor);
  v14 = [MEMORY[0x277D755D0] configurationWithPointSize:? weight:?];
  [v27 setPreferredSymbolConfiguration:?];
  v15 = [MEMORY[0x277D755B8] systemImageNamed:{@"exclamationmark.circle", MEMORY[0x277D82BD8](v14).n128_f64[0]}];
  [v27 setImage:?];
  *&v6 = MEMORY[0x277D82BD8](v15).n128_u64[0];
  [v27 setContentMode:{1, v6}];
  CGRectMake_6();
  [v27 setFrame:{v7, v8, v9, v10}];
  mainStackView = [(AKAuthorizationSubPaneConfirmButton *)selfCopy mainStackView];
  [(UIStackView *)mainStackView addArrangedSubview:v27];
  *&v11 = MEMORY[0x277D82BD8](mainStackView).n128_u64[0];
  v17 = location[0];
  heightAnchor = [v27 heightAnchor];
  v25 = [heightAnchor constraintEqualToConstant:50.0];
  v30[0] = v25;
  widthAnchor = [v27 widthAnchor];
  v23 = [widthAnchor constraintEqualToConstant:50.0];
  v30[1] = v23;
  centerXAnchor = [v27 centerXAnchor];
  view = [(AKAuthorizationSubPane *)selfCopy view];
  centerXAnchor2 = [(UIView *)view centerXAnchor];
  v19 = [centerXAnchor constraintEqualToAnchor:?];
  v30[2] = v19;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:3];
  [v17 addObjectsFromArray:?];
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](centerXAnchor2);
  MEMORY[0x277D82BD8](view);
  MEMORY[0x277D82BD8](centerXAnchor);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](widthAnchor);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](heightAnchor);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_updateLabelWithTitle:(id)title
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  animation = [MEMORY[0x277CDA000] animation];
  v5 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
  [animation setTimingFunction:?];
  *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  v6 = MEMORY[0x277CDA928];
  [animation setType:{*MEMORY[0x277CDA928], v3}];
  [animation setDuration:0.15];
  bioLabel = [(AKAuthorizationSubPaneConfirmButton *)selfCopy bioLabel];
  layer = [(UILabel *)bioLabel layer];
  [layer addAnimation:animation forKey:*v6];
  MEMORY[0x277D82BD8](layer);
  *&v4 = MEMORY[0x277D82BD8](bioLabel).n128_u64[0];
  v9 = location[0];
  bioLabel2 = [(AKAuthorizationSubPaneConfirmButton *)selfCopy bioLabel];
  [(UILabel *)bioLabel2 setText:v9];
  MEMORY[0x277D82BD8](bioLabel2);
  objc_storeStrong(&animation, 0);
  objc_storeStrong(location, 0);
}

+ (id)_createMainStackView
{
  v7[2] = self;
  v7[1] = a2;
  v7[0] = objc_alloc_init(MEMORY[0x277D75A68]);
  [v7[0] setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AuthKit"];
  v3 = [v4 localizedStringForKey:@"AUTHORIZE_BUTTON_TITLE" value:&stru_28358EF68 table:@"Localizable"];
  [v7[0] setAccessibilityIdentifier:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  [v7[0] setSpacing:0.0];
  [v7[0] setAlignment:3];
  [v7[0] setAxis:1];
  [v7[0] setDistribution:0];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v7[0] setBackgroundColor:?];
  MEMORY[0x277D82BD8](clearColor);
  v6 = MEMORY[0x277D82BE0](v7[0]);
  objc_storeStrong(v7, 0);

  return v6;
}

- (BOOL)_hasTouchIDOnly
{
  currentDevice = [MEMORY[0x277CF0218] currentDevice];
  usesTouchID = [currentDevice usesTouchID];
  MEMORY[0x277D82BD8](currentDevice);
  return usesTouchID;
}

- (BOOL)_isUpgradeFromPassword
{
  presentationContext = [(AKAuthorizationSubPaneConfirmButton *)self presentationContext];
  credentialRequestContext = [(AKAuthorizationPresentationContext *)presentationContext credentialRequestContext];
  _isEligibleForUpgradeFromPassword = [credentialRequestContext _isEligibleForUpgradeFromPassword];
  MEMORY[0x277D82BD8](credentialRequestContext);
  MEMORY[0x277D82BD8](presentationContext);
  return _isEligibleForUpgradeFromPassword;
}

- (void)authenticationResult:(id)result error:(id)error context:(id)context
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, result);
  v9 = 0;
  objc_storeStrong(&v9, error);
  v8 = 0;
  objc_storeStrong(&v8, context);
  oslog = _AKLogSiwa();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v12, v8, location[0]);
    _os_log_impl(&dword_222379000, oslog, OS_LOG_TYPE_DEFAULT, "biometric authentication context: %@ result: %@", v12, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  if (v9)
  {
    [(AKAuthorizationSubPaneConfirmButton *)selfCopy _handleBiometricAuthFailureWithError:v9 forContext:v8];
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)processAuthenticationSuccessWithCompletionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __89__AKAuthorizationSubPaneConfirmButton_processAuthenticationSuccessWithCompletionHandler___block_invoke;
  v10 = &unk_2784A63C8;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  v12 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

double __89__AKAuthorizationSubPaneConfirmButton_processAuthenticationSuccessWithCompletionHandler___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v5 localizedStringForKey:@"AUTH_PROCESSING_LOADING" value:&stru_28358EF68 table:@"Localizable"];
  [v3 _updateLabelWithTitle:?];
  MEMORY[0x277D82BD8](v4);
  [*(a1 + 32) _enterProcessingStateWithCompletionHandler:{*(a1 + 40), MEMORY[0x277D82BD8](v5).n128_f64[0]}];
  if ([*(a1 + 32) _hasTouchIDOnly])
  {
    [*(a1 + 32) _waitForTimeInterval:*(*(a1 + 32) + 40) withGroup:2.2];
  }

  v2 = [*(a1 + 32) delegate];
  [v2 subPaneConfirmButtonDidEnterProcessingState:*(a1 + 32)];
  *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  return result;
}

- (void)_checkIfPasscodeFallbackAllowedWithCompletion:(id)completion
{
  v15[2] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v12 = objc_opt_new();
  v14[0] = &unk_2835AAED0;
  v15[0] = MEMORY[0x277CBEC38];
  v14[1] = &unk_2835AAEE8;
  v15[1] = MEMORY[0x277CBEC38];
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v4 = v12;
  v3 = v11;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __85__AKAuthorizationSubPaneConfirmButton__checkIfPasscodeFallbackAllowedWithCompletion___block_invoke;
  v9 = &unk_2784A67C8;
  v10 = MEMORY[0x277D82BE0](location[0]);
  [v4 evaluatePolicy:1025 options:v3 reply:?];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __85__AKAuthorizationSubPaneConfirmButton__checkIfPasscodeFallbackAllowedWithCompletion___block_invoke(NSObject *a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  oslog[1] = a1;
  oslog[0] = _AKLogSiwa();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v8, v6);
    _os_log_impl(&dword_222379000, oslog[0], OS_LOG_TYPE_DEFAULT, "Location based device policy preflight passcode validation returned with error %@", v8, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  if (a1[4].isa)
  {
    (*(a1[4].isa + 2))(a1[4].isa, location[0] != 0);
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_handleBiometricAuthFailureWithError:(id)error forContext:(id)context
{
  v28 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  v23 = 0;
  objc_storeStrong(&v23, context);
  domain = [location[0] domain];
  v13 = 0;
  if ([domain isEqualToString:*MEMORY[0x277CD4770]])
  {
    v10 = 1;
    if ([location[0] code] != -8)
    {
      v10 = [location[0] code] == -1;
    }

    v13 = v10;
  }

  MEMORY[0x277D82BD8](domain);
  if (v13)
  {
    v22 = _AKLogSiwa();
    v21 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_64_8_64(v27, v23, location[0]);
      _os_log_impl(&dword_222379000, v22, v21, "biometric lockedout: %@ error: %@", v27, 0x16u);
    }

    objc_storeStrong(&v22, 0);
    presentationContext = [(AKAuthorizationSubPaneConfirmButton *)selfCopy presentationContext];
    credentialRequestContext = [(AKAuthorizationPresentationContext *)presentationContext credentialRequestContext];
    _isFirstPartyLogin = [credentialRequestContext _isFirstPartyLogin];
    MEMORY[0x277D82BD8](credentialRequestContext);
    *&v4 = MEMORY[0x277D82BD8](presentationContext).n128_u64[0];
    if (_isFirstPartyLogin)
    {
      v6 = selfCopy;
      v15 = MEMORY[0x277D85DD0];
      v16 = -1073741824;
      v17 = 0;
      v18 = __87__AKAuthorizationSubPaneConfirmButton__handleBiometricAuthFailureWithError_forContext___block_invoke;
      v19 = &unk_2784A62B8;
      v20 = MEMORY[0x277D82BE0](selfCopy);
      [(AKAuthorizationSubPaneConfirmButton *)v6 _checkIfPasscodeFallbackAllowedWithCompletion:&v15];
      objc_storeStrong(&v20, 0);
    }

    else
    {
      [(AKAuthorizationSubPaneConfirmButton *)selfCopy _switchToPasscode];
    }
  }

  else
  {
    oslog = _AKLogSiwa();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_64_8_64(v26, v23, location[0]);
      _os_log_impl(&dword_222379000, oslog, OS_LOG_TYPE_DEFAULT, "biometric authentication context: %@ error: %@", v26, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    delegate = [(AKAuthorizationSubPaneConfirmButton *)selfCopy delegate];
    [(AKAuthorizationSubPaneConfirmButtonDelegate *)delegate subpaneConfirmButtonDidFailBiometry:selfCopy];
    MEMORY[0x277D82BD8](delegate);
  }

  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

uint64_t __87__AKAuthorizationSubPaneConfirmButton__handleBiometricAuthFailureWithError_forContext___block_invoke(uint64_t result, char a2)
{
  if ((a2 & 1) == 1)
  {
    return [*(result + 32) _switchToPasscode];
  }

  return result;
}

- (void)_enterProcessingStateWithCompletionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  if (*&selfCopy->_processingStateCompletionHandler == 0)
  {
    v3 = dispatch_group_create();
    processingStateGroup = selfCopy->_processingStateGroup;
    selfCopy->_processingStateGroup = v3;
    v5 = MEMORY[0x277D82BD8](processingStateGroup);
    v6 = MEMORY[0x223DB6C90](location[0], v5);
    processingStateCompletionHandler = selfCopy->_processingStateCompletionHandler;
    selfCopy->_processingStateCompletionHandler = v6;
    *&v8 = MEMORY[0x277D82BD8](processingStateCompletionHandler).n128_u64[0];
    [(AKAuthorizationSubPaneConfirmButton *)selfCopy _setGlyphViewGestureRecognizerEnabled:0, v8];
  }

  else
  {
    v13 = _AKLogSiwa();
    v12 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      log = v13;
      type = v12;
      __os_log_helper_16_0_0(v11);
      _os_log_impl(&dword_222379000, log, type, "AKAuthorizationSubPaneConfirmButton already in processing state, ignoring attempt.", v11, 2u);
    }

    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)finishProcessingWithCompletionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __77__AKAuthorizationSubPaneConfirmButton_finishProcessingWithCompletionHandler___block_invoke;
  v10 = &unk_2784A63C8;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  v12 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void __77__AKAuthorizationSubPaneConfirmButton_finishProcessingWithCompletionHandler___block_invoke(uint64_t a1)
{
  v18[2] = a1;
  v18[1] = a1;
  v18[0] = MEMORY[0x277D82BE0](*(*(a1 + 32) + 40));
  v17 = MEMORY[0x223DB6C90](*(*(a1 + 32) + 32));
  if (v18[0] || v17)
  {
    v2 = *(a1 + 32);
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v3 = [v4 localizedStringForKey:@"AUTH_PROCESSING_COMPLETE" value:&stru_28358EF68 table:@"Localizable"];
    [v2 _updateLabelWithTitle:?];
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v4);
    [*(a1 + 32) _waitForTimeInterval:v18[0] withGroup:1.0];
    (*(v17 + 2))();
    objc_initWeak(&location, *(a1 + 32));
    group = v18[0];
    v5 = MEMORY[0x277D85CD0];
    v1 = MEMORY[0x277D85CD0];
    queue = v5;
    v9 = MEMORY[0x277D85DD0];
    v10 = -1073741824;
    v11 = 0;
    v12 = __77__AKAuthorizationSubPaneConfirmButton_finishProcessingWithCompletionHandler___block_invoke_2;
    v13 = &unk_2784A74E0;
    objc_copyWeak(&v15, &location);
    v14 = MEMORY[0x277D82BE0](*(a1 + 40));
    dispatch_group_notify(group, queue, &v9);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v14, 0);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(v18, 0);
}

uint64_t __77__AKAuthorizationSubPaneConfirmButton_finishProcessingWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidateProcessingState];
  v1 = MEMORY[0x277D82BD8](WeakRetained);
  return (*(*(a1 + 32) + 16))(v1);
}

- (void)invalidateProcessingState
{
  selfCopy = self;
  v10[1] = a2;
  v3 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  queue = v3;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __64__AKAuthorizationSubPaneConfirmButton_invalidateProcessingState__block_invoke;
  v9 = &unk_2784A5C90;
  v10[0] = MEMORY[0x277D82BE0](selfCopy);
  dispatch_async(queue, &v5);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v10, 0);
}

uint64_t __64__AKAuthorizationSubPaneConfirmButton_invalidateProcessingState__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 40), 0);
  v1 = (*(a1 + 32) + 32);
  v2 = *v1;
  *v1 = 0;
  return [*(a1 + 32) _setGlyphViewGestureRecognizerEnabled:{1, MEMORY[0x277D82BD8](v2).n128_f64[0]}];
}

- (void)_waitForTimeInterval:(double)interval withGroup:(id)group
{
  selfCopy = self;
  v17 = a2;
  intervalCopy = interval;
  location = 0;
  objc_storeStrong(&location, group);
  v14 = dispatch_time(0, (intervalCopy * 1000000000.0));
  dispatch_group_enter(location);
  when = v14;
  v5 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v5;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __70__AKAuthorizationSubPaneConfirmButton__waitForTimeInterval_withGroup___block_invoke;
  v12 = &unk_2784A5C90;
  v13 = MEMORY[0x277D82BE0](location);
  dispatch_after(when, queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&location, 0);
}

- (void)_setGlyphViewGestureRecognizerEnabled:(BOOL)enabled
{
  selfCopy = self;
  v11 = a2;
  enabledCopy = enabled;
  bioView = [(AKAuthorizationSubPaneConfirmButton *)self bioView];
  subviews = [(LAUIAuthenticationView *)bioView subviews];
  firstObject = [subviews firstObject];
  MEMORY[0x277D82BD8](subviews);
  *&v3 = MEMORY[0x277D82BD8](bioView).n128_u64[0];
  if (firstObject)
  {
    gestureRecognizers = [firstObject gestureRecognizers];
    firstObject2 = [gestureRecognizers firstObject];
    *&v4 = MEMORY[0x277D82BD8](gestureRecognizers).n128_u64[0];
    [firstObject2 setEnabled:{enabledCopy, v4}];
    objc_storeStrong(&firstObject2, 0);
  }

  objc_storeStrong(&firstObject, 0);
}

- (void)_switchToPasscode
{
  selfCopy = self;
  v10[1] = a2;
  v3 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  queue = v3;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __56__AKAuthorizationSubPaneConfirmButton__switchToPasscode__block_invoke;
  v9 = &unk_2784A5C90;
  v10[0] = MEMORY[0x277D82BE0](selfCopy);
  dispatch_async(queue, &v5);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v10, 0);
}

uint64_t __56__AKAuthorizationSubPaneConfirmButton__switchToPasscode__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  v3 = [*(a1 + 32) _passcodeButtonTitle];
  [v2 setButtonText:?];
  [*(*(a1 + 32) + 64) addTarget:*(a1 + 32) action:{sel__authorizationWithPasscodeButtonSelected_, MEMORY[0x277D82BD8](v3).n128_f64[0]}];
  return [*(a1 + 32) _switchToBioView:0 withEnabled:1 showAlert:0 alertString:0];
}

- (id)_passwordButtonTitle
{
  if (([(AKAuthorizationPresentationContext *)self->_presentationContext isSignInFlow]& 1) != 0)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"AUTHORIZE_BUTTON_TITLE_SIGN_IN_PASSWORD" value:&stru_28358EF68 table:@"Localizable"];
    MEMORY[0x277D82BD8](v4);
  }

  else
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v3 localizedStringForKey:@"AUTHORIZE_BUTTON_TITLE_CREATE_ACCOUNT_PASSWORD" value:&stru_28358EF68 table:@"Localizable"];
    MEMORY[0x277D82BD8](v3);
  }

  return v5;
}

- (id)_passcodeButtonTitle
{
  if (([(AKAuthorizationPresentationContext *)self->_presentationContext isSignInFlow]& 1) != 0)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"AUTHORIZE_BUTTON_TITLE_SIGN_IN_PASSCODE" value:&stru_28358EF68 table:@"Localizable"];
    MEMORY[0x277D82BD8](v4);
  }

  else
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v3 localizedStringForKey:@"AUTHORIZE_BUTTON_TITLE_CREATE_ACCOUNT_PASSCODE" value:&stru_28358EF68 table:@"Localizable"];
    MEMORY[0x277D82BD8](v3);
  }

  return v5;
}

- (id)_bioButtonTitle
{
  if (([(AKAuthorizationPresentationContext *)self->_presentationContext isSignInFlow]& 1) != 0)
  {
    if (self->_hasTouchIDOnly)
    {
      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v8 = [v6 localizedStringForKey:@"AUTHORIZE_BUTTON_TITLE_SIGN_IN_TOUCH_ID" value:&stru_28358EF68 table:@"Localizable"];
      MEMORY[0x277D82BD8](v6);
    }

    else
    {
      v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v8 = [v5 localizedStringForKey:@"AUTHORIZE_BUTTON_TITLE_SIGN_IN_DEFAULT" value:&stru_28358EF68 table:@"Localizable"];
      MEMORY[0x277D82BD8](v5);
    }
  }

  else if (self->_hasTouchIDOnly)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v4 localizedStringForKey:@"AUTHORIZE_BUTTON_TITLE_CREATE_ACCOUNT_TOUCH_ID" value:&stru_28358EF68 table:@"Localizable"];
    MEMORY[0x277D82BD8](v4);
  }

  else
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v3 localizedStringForKey:@"AUTHORIZE_BUTTON_TITLE_CREATE_ACCOUNT_DEFAULT" value:&stru_28358EF68 table:@"Localizable"];
    MEMORY[0x277D82BD8](v3);
  }

  return v8;
}

- (void)_performPasscodeValidations:(id)validations
{
  v19[3] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v15 = objc_opt_new();
  v18[0] = &unk_2835AAF00;
  v19[0] = &stru_28358EF68;
  v18[1] = &unk_2835AAF18;
  localizedAppName = [(AKAuthorizationPresentationContext *)selfCopy->_presentationContext localizedAppName];
  v19[1] = localizedAppName;
  v18[2] = &unk_2835AAF30;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v4 localizedStringForKey:@"AUTHORIZE_PASSCODE_VALIDATION_TITLE" value:&stru_28358EF68 table:@"Localizable"];
  v19[2] = v3;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](localizedAppName);
  v7 = v15;
  v6 = v14;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __67__AKAuthorizationSubPaneConfirmButton__performPasscodeValidations___block_invoke;
  v12 = &unk_2784A67C8;
  v13 = MEMORY[0x277D82BE0](location[0]);
  [v7 evaluatePolicy:1007 options:v6 reply:?];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __67__AKAuthorizationSubPaneConfirmButton__performPasscodeValidations___block_invoke(NSObject *a1, void *a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  oslog[1] = a1;
  oslog[0] = _AKLogSiwa();
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_1_8_64(v8, v6);
    _os_log_error_impl(&dword_222379000, oslog[0], OS_LOG_TYPE_ERROR, "Error during passcode validation %@", v8, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  (*(a1[4].isa + 2))(a1[4].isa, location[0] != 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)switchToAccountCreation
{
  authorizationButton = self->_authorizationButton;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v4 localizedStringForKey:@"AUTHORIZE_BUTTON_TITLE_LOGIN_OPTION_CREATE_NEW_ACCOUNT" value:&stru_28358EF68 table:@"Localizable"];
  [(AKAuthorizationButton *)authorizationButton setButtonText:?];
  MEMORY[0x277D82BD8](v3);
  [(AKAuthorizationButton *)self->_authorizationButton addTarget:self action:sel__createAccountSelected, MEMORY[0x277D82BD8](v4).n128_f64[0]];
  [(AKAuthorizationSubPaneConfirmButton *)self _switchToBioView:0 withEnabled:1 showAlert:0 alertString:0];
}

- (void)_createAccountSelected
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(AKAuthorizationSubPaneConfirmButton *)self delegate];
  if ([(AKAuthorizationSubPaneConfirmButton *)selfCopy _delegate_validateReadyForAuthorization]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    [location[0] subPaneConfirmButtonPerformAccountCreation:selfCopy];
  }

  objc_storeStrong(location, 0);
}

- (void)resetToDefault
{
  context = [(AKAuthorizationSubPaneConfirmButton *)self context];
  [(AKAuthorizationSubPaneConfirmButton *)self setUpButtonToPaneContext:?];
  MEMORY[0x277D82BD8](context);
}

- (AKAuthorizationSubPaneConfirmButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end