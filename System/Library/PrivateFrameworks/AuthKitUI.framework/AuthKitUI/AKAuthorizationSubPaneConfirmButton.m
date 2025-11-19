@interface AKAuthorizationSubPaneConfirmButton
+ (id)_createMainStackView;
- (AKAuthorizationSubPaneConfirmButton)initWithPresentationContext:(id)a3;
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
- (id)_spaceWithConstant:(double)a3;
- (void)_addArrangedSpaceToMainStackView:(double)a3;
- (void)_authorizationButtonBioSelected:(id)a3;
- (void)_authorizationButtonExternalAuthenticationSelected:(id)a3;
- (void)_authorizationButtonSkipBioSelected:(id)a3;
- (void)_authorizationButtonWithAccountPasswordSelected:(id)a3;
- (void)_authorizationWithPasscodeButtonSelected:(id)a3;
- (void)_checkIfPasscodeFallbackAllowedWithCompletion:(id)a3;
- (void)_createAccountSelected;
- (void)_disableBioView;
- (void)_enableLAUIAuthMechanism;
- (void)_enterProcessingStateWithCompletionHandler:(id)a3;
- (void)_handleBiometricAuthFailureWithError:(id)a3 forContext:(id)a4;
- (void)_initializeAuthorizationButton;
- (void)_performPasscodeValidations:(id)a3;
- (void)_setGlyphViewGestureRecognizerEnabled:(BOOL)a3;
- (void)_setupAlertImageWithConstraints:(id)a3;
- (void)_setupBioButtonWithConstraints:(id)a3;
- (void)_setupLabelWithTitle:(id)a3 withConstraints:(id)a4 animated:(BOOL)a5;
- (void)_switchToBioView:(BOOL)a3 withEnabled:(BOOL)a4 showAlert:(BOOL)a5 alertString:(id)a6;
- (void)_switchToPasscode;
- (void)_updateLabelWithTitle:(id)a3;
- (void)_waitForTimeInterval:(double)a3 withGroup:(id)a4;
- (void)_windowDidBecomeKey:(id)a3;
- (void)addToConstraints:(id)a3 context:(id)a4;
- (void)addToStackView:(id)a3 context:(id)a4;
- (void)authenticationResult:(id)a3 error:(id)a4 context:(id)a5;
- (void)bioAuthFailWithAlertString:(id)a3;
- (void)dealloc;
- (void)enableAuthorizationCapability:(BOOL)a3;
- (void)finishProcessingWithCompletionHandler:(id)a3;
- (void)invalidateProcessingState;
- (void)processAuthenticationSuccessWithCompletionHandler:(id)a3;
- (void)resetToDefault;
- (void)setButtonText:(id)a3;
- (void)setUpButtonToPaneContext:(id)a3;
- (void)showAlertAndContinueWithPassword:(BOOL)a3;
- (void)switchToAccountCreation;
@end

@implementation AKAuthorizationSubPaneConfirmButton

- (AKAuthorizationSubPaneConfirmButton)initWithPresentationContext:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = [objc_opt_class() _createMainStackView];
  v3 = v16;
  v16 = 0;
  v13.receiver = v3;
  v13.super_class = AKAuthorizationSubPaneConfirmButton;
  v16 = [(AKAuthorizationSubPane *)&v13 initWithView:v14];
  objc_storeStrong(&v16, v16);
  if (v16)
  {
    objc_storeStrong(&v16->_mainStackView, v14);
    objc_storeStrong(&v16->_presentationContext, location[0]);
    v9 = [MEMORY[0x277CF0218] currentDevice];
    v4 = [v9 isBiometricAuthCapable];
    [(AKAuthorizationSubPaneConfirmButton *)v16 setCanPerformBiometricValidation:v4];
    *&v5 = MEMORY[0x277D82BD8](v9).n128_u64[0];
    v11 = 0;
    v10 = 0;
    if ([(AKAuthorizationSubPaneConfirmButton *)v16 canPerformBiometricValidation])
    {
      v12 = [MEMORY[0x277CF0218] currentDevice];
      v11 = 1;
      v10 = [v12 isFaceIDCapable] == 0;
    }

    [(AKAuthorizationSubPaneConfirmButton *)v16 setHasTouchIDOnly:v10];
    if (v11)
    {
      MEMORY[0x277D82BD8](v12);
    }

    [(AKAuthorizationSubPaneConfirmButton *)v16 _initializeAuthorizationButton];
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v16 selector:sel__windowDidBecomeKey_ name:*MEMORY[0x277D77280] object:0];
    MEMORY[0x277D82BD8](v8);
  }

  v7 = MEMORY[0x277D82BE0](v16);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v16, 0);
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
  v41 = [(AKAuthorizationSubPaneConfirmButton *)self _shouldUseSIWAButton];
  if (v41)
  {
    v40 = 0;
    v38 = [(AKAuthorizationSubPaneConfirmButton *)self presentationContext];
    v37 = [(AKAuthorizationPresentationContext *)v38 credentialRequestContext];
    v36 = [v37 authorizationRequest];
    v39 = [v36 existingStatus] != 1;
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v37);
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
  v35 = [(AKAuthorizationButton *)self->_authorizationButton centerXAnchor];
  v34 = [(UIView *)self->_authorizationButtonContainer centerXAnchor];
  v33 = [v35 constraintEqualToAnchor:?];
  v45[0] = v33;
  v32 = [(AKAuthorizationButton *)self->_authorizationButton centerYAnchor];
  v31 = [(UIView *)self->_authorizationButtonContainer centerYAnchor];
  v30 = [v32 constraintEqualToAnchor:?];
  v45[1] = v30;
  v29 = [(UIView *)self->_authorizationButtonContainer widthAnchor];
  v28 = [(AKAuthorizationButton *)self->_authorizationButton widthAnchor];
  v27 = [(NSLayoutDimension *)v29 constraintEqualToAnchor:?];
  v45[2] = v27;
  v26 = [(UIView *)self->_authorizationButtonContainer heightAnchor];
  v25 = [(AKAuthorizationButton *)self->_authorizationButton heightAnchor];
  v24 = [(NSLayoutDimension *)v26 constraintEqualToAnchor:?];
  v45[3] = v24;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:4];
  [v22 activateConstraints:?];
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
  *&v11 = MEMORY[0x277D82BD8](v35).n128_u64[0];
  if (v41)
  {
    v16 = MEMORY[0x277CCAAD0];
    v21 = [(AKAuthorizationButton *)self->_authorizationButton heightAnchor];
    v20 = [v21 constraintEqualToConstant:40.0];
    v44[0] = v20;
    v19 = [(AKAuthorizationButton *)self->_authorizationButton widthAnchor];
    v18 = [v19 constraintEqualToConstant:180.0];
    v44[1] = v18;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
    [v16 activateConstraints:?];
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
  }

  else
  {
    v12 = MEMORY[0x277CCAAD0];
    v15 = [(AKAuthorizationButton *)self->_authorizationButton heightAnchor];
    +[AKAuthorizationPaneMetrics continueButtonHeight];
    v14 = [v15 constraintEqualToConstant:?];
    v43 = v14;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
    [v12 activateConstraints:?];
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);
    MEMORY[0x277D82BD8](v15);
  }

  *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v6 = self;
  v5 = a2;
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:v6];
  *&v2 = MEMORY[0x277D82BD8](v3).n128_u64[0];
  v4.receiver = v6;
  v4.super_class = AKAuthorizationSubPaneConfirmButton;
  [(AKAuthorizationSubPaneConfirmButton *)&v4 dealloc];
}

- (NSString)buttonText
{
  v3 = [(AKAuthorizationSubPaneConfirmButton *)self authorizationButton];
  v4 = [(AKAuthorizationButton *)v3 buttonText];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (void)setButtonText:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = location[0];
  v4 = [(AKAuthorizationSubPaneConfirmButton *)v6 authorizationButton];
  [(AKAuthorizationButton *)v4 setButtonText:v3];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (BOOL)_shouldUseSIWAButton
{
  v4 = [(AKAuthorizationSubPaneConfirmButton *)self presentationContext];
  v5 = [(AKAuthorizationPresentationContext *)v4 credentialRequestContext];
  v6 = [v5 authorizationRequest];
  if (([v6 isEligibleForUpgradeFromPassword] & 1) == 0 || (v3 = 1, -[AKAuthorizationSubPaneConfirmButton hasTouchIDOnly](self, "hasTouchIDOnly")))
  {
    v3 = [(AKAuthorizationSubPaneConfirmButton *)self _isSubscriptionFlow];
  }

  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v4);
  return v3;
}

- (BOOL)_isSubscriptionFlow
{
  v4 = [(AKAuthorizationSubPaneConfirmButton *)self presentationContext];
  v3 = [(AKAuthorizationPresentationContext *)v4 credentialRequestContext];
  v5 = [v3 _clientShouldAuthenticateExternally];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  return v5;
}

- (void)addToStackView:(id)a3 context:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5.receiver = v8;
  v5.super_class = AKAuthorizationSubPaneConfirmButton;
  [(AKAuthorizationSubPane *)&v5 addToStackView:location[0] context:v6];
  [(AKAuthorizationSubPaneConfirmButton *)v8 setContext:v6];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)addToConstraints:(id)a3 context:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5.receiver = v8;
  v5.super_class = AKAuthorizationSubPaneConfirmButton;
  [(AKAuthorizationSubPane *)&v5 addToConstraints:location[0] context:v6];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)setUpButtonToPaneContext:(id)a3
{
  v61[1] = *MEMORY[0x277D85DE8];
  v60 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v58 = 0;
  v36 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v57 = [v36 localizedStringForKey:@"AUTHORIZE_BUTTON_TITLE" value:&stru_28358EF68 table:@"Localizable"];
  *&v3 = MEMORY[0x277D82BD8](v36).n128_u64[0];
  v56 = 0;
  v55 = [(AKAuthorizationSubPaneConfirmButton *)v60 presentationContext];
  v54 = 1;
  v53 = [(AKAuthorizationPresentationContext *)v55 credentialRequestContext];
  v52 = 1;
  v35 = [v53 _shouldSkipBiometrics];
  MEMORY[0x277D82BD8](v53);
  MEMORY[0x277D82BD8](v55);
  if (v35)
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
    v31 = [(AKAuthorizationSubPaneConfirmButton *)v60 presentationContext];
    v30 = [(AKAuthorizationPresentationContext *)v31 credentialRequestContext];
    v32 = [v30 _clientShouldAuthenticateExternally];
    MEMORY[0x277D82BD8](v30);
    *&v4 = MEMORY[0x277D82BD8](v31).n128_u64[0];
    if (v32)
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
      v26 = [(AKAuthorizationSubPaneConfirmButton *)v60 presentationContext];
      v25 = [(AKAuthorizationPresentationContext *)v26 credentialRequestContext];
      v27 = [v25 _requirePassword];
      MEMORY[0x277D82BD8](v25);
      *&v5 = MEMORY[0x277D82BD8](v26).n128_u64[0];
      if (v27)
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
        v6 = [(AKAuthorizationSubPaneConfirmButton *)v60 _passwordButtonTitle];
        v7 = v57;
        v57 = v6;
        MEMORY[0x277D82BD8](v7);
        v58 = sel__authorizationButtonWithAccountPasswordSelected_;
      }

      else if ([(AKAuthorizationSubPaneConfirmButton *)v60 canPerformBiometricValidation])
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
        v8 = [(AKAuthorizationSubPaneConfirmButton *)v60 _bioButtonTitle];
        v9 = v57;
        v57 = v8;
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
        v10 = [(AKAuthorizationSubPaneConfirmButton *)v60 _passcodeButtonTitle];
        v11 = v57;
        v57 = v10;
        MEMORY[0x277D82BD8](v11);
        v58 = sel__authorizationWithPasscodeButtonSelected_;
      }
    }
  }

  [(AKAuthorizationButton *)v60->_authorizationButton setButtonText:v57];
  v18 = [location[0] mutableConstraints];
  v17 = [(UIStackView *)v60->_mainStackView widthAnchor];
  v16 = [location[0] stackView];
  v15 = [v16 widthAnchor];
  v14 = [v17 constraintEqualToAnchor:?];
  v61[0] = v14;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:1];
  [v18 addObjectsFromArray:?];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  *&v12 = MEMORY[0x277D82BD8](v18).n128_u64[0];
  [(AKAuthorizationButton *)v60->_authorizationButton addTarget:v60 action:v58, v12];
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

- (void)_authorizationButtonExternalAuthenticationSelected:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(AKAuthorizationSubPaneConfirmButton *)v5 delegate];
  if ([(AKAuthorizationSubPaneConfirmButton *)v5 _delegate_validateReadyForAuthorization]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v3 subPaneConfirmButtonPerformExternalAuthentication:v5];
  }

  objc_storeStrong(&v3, 0);
  objc_storeStrong(location, 0);
}

- (void)_authorizationButtonSkipBioSelected:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(AKAuthorizationSubPaneConfirmButton *)v5 delegate];
  if ([(AKAuthorizationSubPaneConfirmButton *)v5 _delegate_validateReadyForAuthorization])
  {
    [v3 performAuthorization];
  }

  objc_storeStrong(&v3, 0);
  objc_storeStrong(location, 0);
}

- (void)_authorizationButtonWithAccountPasswordSelected:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(AKAuthorizationSubPaneConfirmButton *)v5 delegate];
  if ([(AKAuthorizationSubPaneConfirmButton *)v5 _delegate_validateReadyForAuthorization])
  {
    [v3 performPasswordAuthentication];
  }

  objc_storeStrong(&v3, 0);
  objc_storeStrong(location, 0);
}

- (void)_authorizationButtonBioSelected:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(AKAuthorizationSubPaneConfirmButton *)v4 _delegate_validateReadyForAuthorization])
  {
    [(AKAuthorizationSubPaneConfirmButton *)v4 _switchToBioView:1 withEnabled:1 showAlert:0 alertString:0];
  }

  objc_storeStrong(location, 0);
}

- (void)_authorizationWithPasscodeButtonSelected:(id)a3
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(AKAuthorizationSubPaneConfirmButton *)v23 isPasscodeAuthorizationInProcess])
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
    if ([(AKAuthorizationSubPaneConfirmButton *)v23 _delegate_validateReadyForAuthorization])
    {
      [(AKAuthorizationSubPaneConfirmButton *)v23 setIsPasscodeAuthorizationInProcess:1];
      objc_initWeak(&v14, v23);
      v3 = v23;
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
  v18 = self;
  v17[1] = a2;
  v9 = [(AKAuthorizationSubPaneConfirmButton *)self bioView];
  *&v2 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  if (v9)
  {
    v6 = [(AKAuthorizationSubPaneConfirmButton *)v18 bioView];
    [(LAUIAuthenticationView *)v6 setDelegate:0];
    v17[0] = 0;
    v7 = [(AKAuthorizationSubPaneConfirmButton *)v18 bioView];
    v3 = [(AKAuthorizationSubPaneConfirmButton *)v18 _authenticationMechanism];
    v15 = v17[0];
    v8 = [(LAUIAuthenticationView *)v7 disableMechanism:v3 error:&v15];
    objc_storeStrong(v17, v15);
    MEMORY[0x277D82BD8](v7);
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

    [(AKAuthorizationSubPaneConfirmButton *)v18 setBioView:?];
    objc_storeStrong(v17, 0);
  }

  *MEMORY[0x277D85DE8];
}

- (void)bioAuthFailWithAlertString:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(AKAuthorizationSubPaneConfirmButton *)v4 _switchToBioView:0 withEnabled:0 showAlert:1 alertString:location[0]];
  objc_storeStrong(location, 0);
}

- (void)enableAuthorizationCapability:(BOOL)a3
{
  v6 = 0;
  v4 = 0;
  v3 = 0;
  if ([(AKAuthorizationSubPaneConfirmButton *)self hasTouchIDOnly])
  {
    v7 = [(AKAuthorizationSubPaneConfirmButton *)self presentationContext];
    v6 = 1;
    v5 = [(AKAuthorizationPresentationContext *)v7 credentialRequestContext];
    v4 = 1;
    v3 = 0;
    if (![v5 _requirePassword])
    {
      v3 = ![(AKAuthorizationSubPaneConfirmButton *)self _isSubscriptionFlow];
    }
  }

  if (v4)
  {
    MEMORY[0x277D82BD8](v5);
  }

  if (v6)
  {
    MEMORY[0x277D82BD8](v7);
  }

  if (v3)
  {
    [(AKAuthorizationSubPaneConfirmButton *)self _switchToBioView:1 withEnabled:1 showAlert:0 alertString:0];
  }

  else
  {
    [(AKAuthorizationSubPaneConfirmButton *)self _switchToBioView:0 withEnabled:a3 showAlert:0 alertString:0];
  }
}

- (void)showAlertAndContinueWithPassword:(BOOL)a3
{
  v20 = self;
  v19 = a2;
  v18 = a3;
  [(AKAuthorizationSubPaneConfirmButton *)self _switchToBioView:0 withEnabled:1 showAlert:1 alertString:0];
  if (v18)
  {
    v8 = [(AKAuthorizationSubPaneConfirmButton *)v20 presentationContext];
    v7 = [(AKAuthorizationPresentationContext *)v8 credentialRequestContext];
    [v7 set_requirePassword:1];
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    authorizationButton = v20->_authorizationButton;
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v11 localizedStringForKey:@"AUTHORIZE_BUTTON_TITLE_PASSWORD_MODERN" value:&stru_28358EF68 table:@"Localizable"];
    [(AKAuthorizationButton *)authorizationButton setButtonText:?];
    MEMORY[0x277D82BD8](v10);
    [(AKAuthorizationButton *)v20->_authorizationButton addTarget:v20 action:sel__authorizationButtonWithAccountPasswordSelected_, MEMORY[0x277D82BD8](v11).n128_f64[0]];
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
  v17 = MEMORY[0x277D82BE0](v20);
  dispatch_after(when, queue, &v12);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v17, 0);
}

- (void)_windowDidBecomeKey:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = [(AKAuthorizationSubPaneConfirmButton *)v12 bioView];
  v6 = [(LAUIAuthenticationView *)v5 isMechanismEnabled:[(AKAuthorizationSubPaneConfirmButton *)v12 _authenticationMechanism]];
  MEMORY[0x277D82BD8](v5);
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
    [(AKAuthorizationSubPaneConfirmButton *)v12 _enableLAUIAuthMechanism];
  }

  objc_storeStrong(location, 0);
}

- (void)_switchToBioView:(BOOL)a3 withEnabled:(BOOL)a4 showAlert:(BOOL)a5 alertString:(id)a6
{
  v62 = *MEMORY[0x277D85DE8];
  v60 = self;
  v59 = a2;
  v58 = a3;
  v57 = a4;
  v56 = a5;
  location = 0;
  objc_storeStrong(&location, a6);
  v53 = 0;
  v38 = 0;
  if (v58)
  {
    v38 = 0;
    if (v57)
    {
      v54 = [(AKAuthorizationSubPaneConfirmButton *)v60 bioView];
      v53 = 1;
      v38 = v54 != 0;
    }
  }

  if (v53)
  {
    MEMORY[0x277D82BD8](v54);
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
    [(AKAuthorizationSubPaneConfirmButton *)v60 _enableLAUIAuthMechanism];
    v49 = 1;
  }

  else
  {
    memset(__b, 0, sizeof(__b));
    v33 = [(AKAuthorizationSubPaneConfirmButton *)v60 mainStackView];
    v32 = [(UIStackView *)v33 subviews];
    obj = [v32 copy];
    MEMORY[0x277D82BD8](v32);
    v35 = [obj countByEnumeratingWithState:__b objects:v61 count:{16, MEMORY[0x277D82BD8](v33).n128_f64[0]}];
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
    if (v56)
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
      [(AKAuthorizationSubPaneConfirmButton *)v60 _disableBioView];
      [(AKAuthorizationSubPaneConfirmButton *)v60 _addArrangedSpaceToMainStackView:12.0];
      v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [(AKAuthorizationSubPaneConfirmButton *)v60 _setupAlertImageWithConstraints:v43];
      if (location)
      {
        [(AKAuthorizationSubPaneConfirmButton *)v60 _setupLabelWithTitle:location withConstraints:v43 animated:1];
      }

      else
      {
        v23 = v60;
        v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v24 = [v25 localizedStringForKey:@"AUTH_ALERT_SIGN_UP_NOT_COMPLETED" value:&stru_28358EF68 table:@"Localizable"];
        [AKAuthorizationSubPaneConfirmButton _setupLabelWithTitle:v23 withConstraints:"_setupLabelWithTitle:withConstraints:animated:" animated:?];
        MEMORY[0x277D82BD8](v24);
        MEMORY[0x277D82BD8](v25);
      }

      [MEMORY[0x277CCAAD0] activateConstraints:v43];
      objc_storeStrong(&v43, 0);
    }

    else if (v58)
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
      [(AKAuthorizationSubPaneConfirmButton *)v60 _setupBioButtonWithConstraints:v39];
      if ([(AKAuthorizationSubPaneConfirmButton *)v60 hasTouchIDOnly])
      {
        v18 = v60;
        v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v19 = [v20 localizedStringForKey:@"BIO_BUTTON_CONTINUE_TITLE" value:&stru_28358EF68 table:@"Localizable"];
        [AKAuthorizationSubPaneConfirmButton _setupLabelWithTitle:v18 withConstraints:"_setupLabelWithTitle:withConstraints:animated:" animated:?];
        MEMORY[0x277D82BD8](v19);
        v7 = MEMORY[0x277D82BD8](v20).n128_u64[0];
      }

      else
      {
        v16 = [MEMORY[0x277CF0218] currentDevice];
        v17 = [v16 isFaceIDCapable];
        v7 = MEMORY[0x277D82BD8](v16).n128_u64[0];
        if (v17)
        {
          v13 = v60;
          v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v14 = [v15 localizedStringForKey:@"BIO_BUTTON_PEARL_TITLE" value:&stru_28358EF68 table:@"Localizable"];
          [AKAuthorizationSubPaneConfirmButton _setupLabelWithTitle:v13 withConstraints:"_setupLabelWithTitle:withConstraints:animated:" animated:?];
          MEMORY[0x277D82BD8](v14);
          v7 = MEMORY[0x277D82BD8](v15).n128_u64[0];
        }
      }

      [MEMORY[0x277CCAAD0] activateConstraints:{v39, *&v7}];
      [(AKAuthorizationSubPaneConfirmButton *)v60 _enableLAUIAuthMechanism];
      objc_storeStrong(&v39, 0);
    }

    else
    {
      [(AKAuthorizationSubPaneConfirmButton *)v60 _disableBioView];
      v10 = [(AKAuthorizationSubPaneConfirmButton *)v60 mainStackView];
      v9 = [(AKAuthorizationSubPaneConfirmButton *)v60 authorizationButtonContainer];
      [(UIStackView *)v10 addArrangedSubview:?];
      MEMORY[0x277D82BD8](v9);
      *&v8 = MEMORY[0x277D82BD8](v10).n128_u64[0];
      v11 = v57;
      v12 = [(AKAuthorizationSubPaneConfirmButton *)v60 authorizationButton];
      [(AKAuthorizationButton *)v12 setEnabled:v11];
      MEMORY[0x277D82BD8](v12);
    }

    v49 = 0;
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_enableLAUIAuthMechanism
{
  v11 = self;
  v10[1] = a2;
  v3 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  queue = v3;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __63__AKAuthorizationSubPaneConfirmButton__enableLAUIAuthMechanism__block_invoke;
  v9 = &unk_2784A5C90;
  v10[0] = MEMORY[0x277D82BE0](v11);
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

- (id)_spaceWithConstant:(double)a3
{
  v11 = self;
  v10 = a2;
  v9 = a3;
  v8 = objc_alloc_init(MEMORY[0x277D75D18]);
  v4 = v8;
  v6 = [v8 heightAnchor];
  v5 = [v6 constraintEqualToConstant:v9];
  [v4 addConstraint:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  v7 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(&v8, 0);

  return v7;
}

- (void)_addArrangedSpaceToMainStackView:(double)a3
{
  v5 = self;
  v4[2] = a2;
  v4[1] = *&a3;
  v4[0] = [(AKAuthorizationSubPaneConfirmButton *)self _spaceWithConstant:a3];
  v3 = [(AKAuthorizationSubPaneConfirmButton *)v5 mainStackView];
  [(UIStackView *)v3 addArrangedSubview:v4[0]];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(v4, 0);
}

- (void)_setupLabelWithTitle:(id)a3 withConstraints:(id)a4 animated:(BOOL)a5
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = a5;
  v17 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v17 setTranslatesAutoresizingMaskIntoConstraints:{0, MEMORY[0x277D82BD8](0).n128_f64[0]}];
  v16 = [MEMORY[0x277D75520] defaultMetrics];
  v15 = [MEMORY[0x277D74300] systemFontOfSize:15.0 weight:*MEMORY[0x277D74418]];
  v14 = [v16 scaledFontForFont:?];
  [v17 setFont:?];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  [v17 setTextAlignment:MEMORY[0x277D82BD8](v16).n128_f64[0]];
  [v17 setNumberOfLines:1];
  [v17 setAdjustsFontSizeToFitWidth:0];
  [v17 setAdjustsFontForContentSizeCategory:1];
  if (a5)
  {
    v11 = &stru_28358EF68;
  }

  else
  {
    v11 = location[0];
  }

  [v17 setText:v11];
  v9 = [(AKAuthorizationSubPaneConfirmButton *)v21 mainStackView];
  [(UIStackView *)v9 addArrangedSubview:v17];
  *&v5 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  v10 = [(AKAuthorizationSubPaneConfirmButton *)v21 bioView];
  v6 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  if (v10)
  {
    v8 = [(AKAuthorizationSubPaneConfirmButton *)v21 mainStackView];
    v7 = [(AKAuthorizationSubPaneConfirmButton *)v21 bioView];
    [(UIStackView *)v8 setCustomSpacing:12.0 afterView:?];
    MEMORY[0x277D82BD8](v7);
    v6 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  }

  [(AKAuthorizationSubPaneConfirmButton *)v21 setBioLabel:v17, *&v6];
  if (v18)
  {
    [(AKAuthorizationSubPaneConfirmButton *)v21 _updateLabelWithTitle:location[0]];
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

- (void)_setupBioButtonWithConstraints:(id)a3
{
  v32[2] = *MEMORY[0x277D85DE8];
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  CGRectMake_6();
  v26 = v3;
  v27 = v4;
  v28 = v5;
  v29 = v6;
  v11 = objc_alloc(MEMORY[0x277D24200]);
  v12 = [v11 initWithFrame:-[AKAuthorizationSubPaneConfirmButton _authenticationMechanism](v31 mechanisms:{"_authenticationMechanism"), v26, v27, v28, v29}];
  [(AKAuthorizationSubPaneConfirmButton *)v31 setBioView:?];
  *&v7 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  v13 = [(AKAuthorizationSubPaneConfirmButton *)v31 bioView];
  [(LAUIAuthenticationView *)v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v8 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  v14 = v31;
  v15 = [(AKAuthorizationSubPaneConfirmButton *)v31 bioView];
  [(LAUIAuthenticationView *)v15 setDelegate:v14];
  *&v9 = MEMORY[0x277D82BD8](v15).n128_u64[0];
  v17 = [(AKAuthorizationSubPaneConfirmButton *)v31 mainStackView];
  v16 = [(AKAuthorizationSubPaneConfirmButton *)v31 bioView];
  [(UIStackView *)v17 addArrangedSubview:?];
  MEMORY[0x277D82BD8](v16);
  *&v10 = MEMORY[0x277D82BD8](v17).n128_u64[0];
  v18 = location[0];
  v25 = [(AKAuthorizationSubPaneConfirmButton *)v31 bioView];
  v24 = [(LAUIAuthenticationView *)v25 widthAnchor];
  v23 = [v24 constraintEqualToConstant:50.0];
  v32[0] = v23;
  v22 = [(AKAuthorizationSubPaneConfirmButton *)v31 bioView];
  v21 = [(LAUIAuthenticationView *)v22 heightAnchor];
  v20 = [v21 constraintEqualToConstant:50.0];
  v32[1] = v20;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
  [v18 addObjectsFromArray:?];
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_setupAlertImageWithConstraints:(id)a3
{
  v30[3] = *MEMORY[0x277D85DE8];
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v27 = 0;
  v3 = objc_alloc_init(MEMORY[0x277D755E8]);
  v4 = v27;
  v27 = v3;
  *&v5 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  v12 = v27;
  v13 = [MEMORY[0x277D75348] systemRedColor];
  [v12 setTintColor:?];
  MEMORY[0x277D82BD8](v13);
  v14 = [MEMORY[0x277D755D0] configurationWithPointSize:? weight:?];
  [v27 setPreferredSymbolConfiguration:?];
  v15 = [MEMORY[0x277D755B8] systemImageNamed:{@"exclamationmark.circle", MEMORY[0x277D82BD8](v14).n128_f64[0]}];
  [v27 setImage:?];
  *&v6 = MEMORY[0x277D82BD8](v15).n128_u64[0];
  [v27 setContentMode:{1, v6}];
  CGRectMake_6();
  [v27 setFrame:{v7, v8, v9, v10}];
  v16 = [(AKAuthorizationSubPaneConfirmButton *)v29 mainStackView];
  [(UIStackView *)v16 addArrangedSubview:v27];
  *&v11 = MEMORY[0x277D82BD8](v16).n128_u64[0];
  v17 = location[0];
  v26 = [v27 heightAnchor];
  v25 = [v26 constraintEqualToConstant:50.0];
  v30[0] = v25;
  v24 = [v27 widthAnchor];
  v23 = [v24 constraintEqualToConstant:50.0];
  v30[1] = v23;
  v22 = [v27 centerXAnchor];
  v21 = [(AKAuthorizationSubPane *)v29 view];
  v20 = [(UIView *)v21 centerXAnchor];
  v19 = [v22 constraintEqualToAnchor:?];
  v30[2] = v19;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:3];
  [v17 addObjectsFromArray:?];
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_updateLabelWithTitle:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = [MEMORY[0x277CDA000] animation];
  v5 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
  [v11 setTimingFunction:?];
  *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  v6 = MEMORY[0x277CDA928];
  [v11 setType:{*MEMORY[0x277CDA928], v3}];
  [v11 setDuration:0.15];
  v8 = [(AKAuthorizationSubPaneConfirmButton *)v13 bioLabel];
  v7 = [(UILabel *)v8 layer];
  [v7 addAnimation:v11 forKey:*v6];
  MEMORY[0x277D82BD8](v7);
  *&v4 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  v9 = location[0];
  v10 = [(AKAuthorizationSubPaneConfirmButton *)v13 bioLabel];
  [(UILabel *)v10 setText:v9];
  MEMORY[0x277D82BD8](v10);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

+ (id)_createMainStackView
{
  v7[2] = a1;
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
  v5 = [MEMORY[0x277D75348] clearColor];
  [v7[0] setBackgroundColor:?];
  MEMORY[0x277D82BD8](v5);
  v6 = MEMORY[0x277D82BE0](v7[0]);
  objc_storeStrong(v7, 0);

  return v6;
}

- (BOOL)_hasTouchIDOnly
{
  v3 = [MEMORY[0x277CF0218] currentDevice];
  v4 = [v3 usesTouchID];
  MEMORY[0x277D82BD8](v3);
  return v4;
}

- (BOOL)_isUpgradeFromPassword
{
  v4 = [(AKAuthorizationSubPaneConfirmButton *)self presentationContext];
  v3 = [(AKAuthorizationPresentationContext *)v4 credentialRequestContext];
  v5 = [v3 _isEligibleForUpgradeFromPassword];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  return v5;
}

- (void)authenticationResult:(id)a3 error:(id)a4 context:(id)a5
{
  v13 = *MEMORY[0x277D85DE8];
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = 0;
  objc_storeStrong(&v8, a5);
  oslog = _AKLogSiwa();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v12, v8, location[0]);
    _os_log_impl(&dword_222379000, oslog, OS_LOG_TYPE_DEFAULT, "biometric authentication context: %@ result: %@", v12, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  if (v9)
  {
    [(AKAuthorizationSubPaneConfirmButton *)v11 _handleBiometricAuthFailureWithError:v9 forContext:v8];
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)processAuthenticationSuccessWithCompletionHandler:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __89__AKAuthorizationSubPaneConfirmButton_processAuthenticationSuccessWithCompletionHandler___block_invoke;
  v10 = &unk_2784A63C8;
  v11 = MEMORY[0x277D82BE0](v14);
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

- (void)_checkIfPasscodeFallbackAllowedWithCompletion:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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

- (void)_handleBiometricAuthFailureWithError:(id)a3 forContext:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v25 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v23 = 0;
  objc_storeStrong(&v23, a4);
  v12 = [location[0] domain];
  v13 = 0;
  if ([v12 isEqualToString:*MEMORY[0x277CD4770]])
  {
    v10 = 1;
    if ([location[0] code] != -8)
    {
      v10 = [location[0] code] == -1;
    }

    v13 = v10;
  }

  MEMORY[0x277D82BD8](v12);
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
    v8 = [(AKAuthorizationSubPaneConfirmButton *)v25 presentationContext];
    v7 = [(AKAuthorizationPresentationContext *)v8 credentialRequestContext];
    v9 = [v7 _isFirstPartyLogin];
    MEMORY[0x277D82BD8](v7);
    *&v4 = MEMORY[0x277D82BD8](v8).n128_u64[0];
    if (v9)
    {
      v6 = v25;
      v15 = MEMORY[0x277D85DD0];
      v16 = -1073741824;
      v17 = 0;
      v18 = __87__AKAuthorizationSubPaneConfirmButton__handleBiometricAuthFailureWithError_forContext___block_invoke;
      v19 = &unk_2784A62B8;
      v20 = MEMORY[0x277D82BE0](v25);
      [(AKAuthorizationSubPaneConfirmButton *)v6 _checkIfPasscodeFallbackAllowedWithCompletion:&v15];
      objc_storeStrong(&v20, 0);
    }

    else
    {
      [(AKAuthorizationSubPaneConfirmButton *)v25 _switchToPasscode];
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
    v5 = [(AKAuthorizationSubPaneConfirmButton *)v25 delegate];
    [(AKAuthorizationSubPaneConfirmButtonDelegate *)v5 subpaneConfirmButtonDidFailBiometry:v25];
    MEMORY[0x277D82BD8](v5);
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

- (void)_enterProcessingStateWithCompletionHandler:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (*&v15->_processingStateCompletionHandler == 0)
  {
    v3 = dispatch_group_create();
    processingStateGroup = v15->_processingStateGroup;
    v15->_processingStateGroup = v3;
    v5 = MEMORY[0x277D82BD8](processingStateGroup);
    v6 = MEMORY[0x223DB6C90](location[0], v5);
    processingStateCompletionHandler = v15->_processingStateCompletionHandler;
    v15->_processingStateCompletionHandler = v6;
    *&v8 = MEMORY[0x277D82BD8](processingStateCompletionHandler).n128_u64[0];
    [(AKAuthorizationSubPaneConfirmButton *)v15 _setGlyphViewGestureRecognizerEnabled:0, v8];
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

- (void)finishProcessingWithCompletionHandler:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __77__AKAuthorizationSubPaneConfirmButton_finishProcessingWithCompletionHandler___block_invoke;
  v10 = &unk_2784A63C8;
  v11 = MEMORY[0x277D82BE0](v14);
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
  v11 = self;
  v10[1] = a2;
  v3 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  queue = v3;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __64__AKAuthorizationSubPaneConfirmButton_invalidateProcessingState__block_invoke;
  v9 = &unk_2784A5C90;
  v10[0] = MEMORY[0x277D82BE0](v11);
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

- (void)_waitForTimeInterval:(double)a3 withGroup:(id)a4
{
  v18 = self;
  v17 = a2;
  v16 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v14 = dispatch_time(0, (v16 * 1000000000.0));
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

- (void)_setGlyphViewGestureRecognizerEnabled:(BOOL)a3
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  v7 = [(AKAuthorizationSubPaneConfirmButton *)self bioView];
  v6 = [(LAUIAuthenticationView *)v7 subviews];
  v9 = [v6 firstObject];
  MEMORY[0x277D82BD8](v6);
  *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v9)
  {
    v5 = [v9 gestureRecognizers];
    v8 = [v5 firstObject];
    *&v4 = MEMORY[0x277D82BD8](v5).n128_u64[0];
    [v8 setEnabled:{v10, v4}];
    objc_storeStrong(&v8, 0);
  }

  objc_storeStrong(&v9, 0);
}

- (void)_switchToPasscode
{
  v11 = self;
  v10[1] = a2;
  v3 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  queue = v3;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __56__AKAuthorizationSubPaneConfirmButton__switchToPasscode__block_invoke;
  v9 = &unk_2784A5C90;
  v10[0] = MEMORY[0x277D82BE0](v11);
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

- (void)_performPasscodeValidations:(id)a3
{
  v19[3] = *MEMORY[0x277D85DE8];
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = objc_opt_new();
  v18[0] = &unk_2835AAF00;
  v19[0] = &stru_28358EF68;
  v18[1] = &unk_2835AAF18;
  v5 = [(AKAuthorizationPresentationContext *)v17->_presentationContext localizedAppName];
  v19[1] = v5;
  v18[2] = &unk_2835AAF30;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v4 localizedStringForKey:@"AUTHORIZE_PASSCODE_VALIDATION_TITLE" value:&stru_28358EF68 table:@"Localizable"];
  v19[2] = v3;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
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
  v3 = self;
  location[1] = a2;
  location[0] = [(AKAuthorizationSubPaneConfirmButton *)self delegate];
  if ([(AKAuthorizationSubPaneConfirmButton *)v3 _delegate_validateReadyForAuthorization]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    [location[0] subPaneConfirmButtonPerformAccountCreation:v3];
  }

  objc_storeStrong(location, 0);
}

- (void)resetToDefault
{
  v3 = [(AKAuthorizationSubPaneConfirmButton *)self context];
  [(AKAuthorizationSubPaneConfirmButton *)self setUpButtonToPaneContext:?];
  MEMORY[0x277D82BD8](v3);
}

- (AKAuthorizationSubPaneConfirmButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end