@interface ASCredentialRequestConfirmButtonSubPane
+ (id)_createMainStackView;
- (ASCredentialRequestSubPaneConfirmButtonDelegate)delegate;
- (BOOL)_isDelegateReadyForAuthorization;
- (BOOL)_shouldAllowFallbackToPasscodeAuthentication;
- (BOOL)authorizationCapabilityEnabled;
- (BOOL)isBiometricAuthenticationAvailable;
- (BOOL)shouldOverrideLocalAuthenticationForTesting;
- (NSString)buttonText;
- (id)_setUpAlertImageWithConstraints;
- (id)_verticalSpacerWithConstant:(double)a3;
- (void)_addArrangedSpaceToMainStackView:(double)a3;
- (void)_authorizationButtonBioSelected:(id)a3;
- (void)_authorizationButtonCompanionSelected:(id)a3;
- (void)_authorizationWithPasscodeOrPasswordButtonSelected:(id)a3;
- (void)_authorizeAccountViaDelegationWithPasswordButtonSelected:(id)a3;
- (void)_continueButtonTapped;
- (void)_enableLAUIAuthenticationMechanism;
- (void)_enterProcessingStateWithCompletionHandler:(id)a3;
- (void)_initializeAuthorizationButtonAddingButtonPadding:(BOOL)a3;
- (void)_performCompanionValidation:(id)a3;
- (void)_setupBiometricButtonWithConstraints:(id)a3;
- (void)_setupLabelWithTitle:(id)a3 animated:(BOOL)a4;
- (void)_switchToPasscodeOrPassword;
- (void)_updateLabelAnimatedWithTitle:(id)a3;
- (void)_waitForTimeInterval:(double)a3 withGroup:(id)a4;
- (void)_windowDidBecomeKey:(id)a3;
- (void)addToStackView:(id)a3 withCustomSpacingAfter:(double)a4 context:(id)a5;
- (void)authenticationResult:(id)a3 error:(id)a4 context:(id)a5;
- (void)biometricAuthenticationFailureWithAlertString:(id)a3;
- (void)dealloc;
- (void)disableBiometricView;
- (void)finishProcessingWithCompletionHandler:(id)a3;
- (void)invalidateProcessingState;
- (void)performPasscodeOrPasswordValidation:(id)a3;
- (void)processBiometricMatchWithCompletionHandler:(id)a3;
- (void)setButtonText:(id)a3;
- (void)setUpButtonInPaneContext:(id)a3 buttonTitle:(id)a4;
- (void)showActivityIndicator;
- (void)showAlertContinuingWithPassword:(BOOL)a3;
- (void)showAuthenticationMechanismForExternalPasswordCredential;
- (void)showContinueButton;
- (void)showContinueButtonWithTitle:(id)a3;
- (void)showContinueWithPasswordButtonWithTitle:(id)a3;
@end

@implementation ASCredentialRequestConfirmButtonSubPane

- (NSString)buttonText
{
  v2 = [(ASCredentialRequestConfirmButtonSubPane *)self authorizationButton];
  v3 = [v2 buttonText];

  return v3;
}

- (void)setButtonText:(id)a3
{
  v4 = a3;
  v5 = [(ASCredentialRequestConfirmButtonSubPane *)self authorizationButton];
  [v5 setButtonText:v4];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ASCredentialRequestConfirmButtonSubPane;
  [(ASCredentialRequestConfirmButtonSubPane *)&v4 dealloc];
}

+ (id)_createMainStackView
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setAccessibilityIdentifier:@"ASAuthorizationControllerContinueButton"];
  [v3 setSpacing:0.0];
  [v3 setAlignment:{objc_msgSend(a1, "_mainStackViewAlignment")}];
  [v3 setAxis:1];
  [v3 setDistribution:0];
  v4 = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:v4];

  return v3;
}

- (void)_initializeAuthorizationButtonAddingButtonPadding:(BOOL)a3
{
  v3 = a3;
  v33[5] = *MEMORY[0x1E69E9840];
  v5 = objc_alloc(MEMORY[0x1E69DD250]);
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 8);
  v8 = *(MEMORY[0x1E695F058] + 16);
  v9 = *(MEMORY[0x1E695F058] + 24);
  v10 = [v5 initWithFrame:{*MEMORY[0x1E695F058], v7, v8, v9}];
  authorizationButtonContainerView = self->_authorizationButtonContainerView;
  self->_authorizationButtonContainerView = v10;

  [(UIView *)self->_authorizationButtonContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [[ASCredentialRequestButtonContinue alloc] initWithFrame:v6, v7, v8, v9];
  authorizationButton = self->_authorizationButton;
  self->_authorizationButton = &v12->super;

  [(ASCredentialRequestButton *)self->_authorizationButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_authorizationButtonContainerView addSubview:self->_authorizationButton];
  [(UIStackView *)self->_mainStackView addArrangedSubview:self->_authorizationButtonContainerView];
  v14 = 0.0;
  if (v3)
  {
    +[ASViewServiceInterfaceUtilities continueButtonTitleMargin];
    v14 = v15 + v15;
  }

  v32 = [(ASCredentialRequestButton *)self->_authorizationButton centerXAnchor];
  v31 = [(UIView *)self->_authorizationButtonContainerView centerXAnchor];
  v30 = [v32 constraintEqualToAnchor:v31];
  v33[0] = v30;
  v29 = [(ASCredentialRequestButton *)self->_authorizationButton centerYAnchor];
  v28 = [(UIView *)self->_authorizationButtonContainerView centerYAnchor];
  v16 = [v29 constraintEqualToAnchor:v28];
  v33[1] = v16;
  v17 = [(UIView *)self->_authorizationButtonContainerView widthAnchor];
  v18 = [(ASCredentialRequestButton *)self->_authorizationButton widthAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:v14];
  v33[2] = v19;
  v20 = [(UIView *)self->_authorizationButtonContainerView heightAnchor];
  v21 = [(ASCredentialRequestButton *)self->_authorizationButton heightAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
  v33[3] = v22;
  v23 = [(ASCredentialRequestButton *)self->_authorizationButton heightAnchor];
  +[ASViewServiceInterfaceUtilities continueButtonHeight];
  v24 = [v23 constraintEqualToConstant:?];
  v33[4] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:5];
  [v27 activateConstraints:v25];

  v26 = *MEMORY[0x1E69E9840];
}

- (void)_windowDidBecomeKey:(id)a3
{
  if ([(LAUIAuthenticationView *)self->_biometricsView isMechanismEnabled:4])
  {

    [(ASCredentialRequestConfirmButtonSubPane *)self _enableLAUIAuthenticationMechanism];
  }
}

- (void)_enableLAUIAuthenticationMechanism
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__ASCredentialRequestConfirmButtonSubPane__enableLAUIAuthenticationMechanism__block_invoke;
  block[3] = &unk_1E7AF7608;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __77__ASCredentialRequestConfirmButtonSubPane__enableLAUIAuthenticationMechanism__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[8];
  v10 = 0;
  v4 = [v3 enableMechanism:objc_msgSend(v2 error:{"_authenticationMechanism"), &v10}];
  v5 = v10;
  v6 = v5;
  if (v5 || (v4 & 1) == 0)
  {
    v7 = *(*(a1 + 32) + 88);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __77__ASCredentialRequestConfirmButtonSubPane__enableLAUIAuthenticationMechanism__block_invoke_2;
    v8[3] = &unk_1E7AF7608;
    v9 = v5;
    os_activity_apply(v7, v8);
  }
}

void __77__ASCredentialRequestConfirmButtonSubPane__enableLAUIAuthenticationMechanism__block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __77__ASCredentialRequestConfirmButtonSubPane__enableLAUIAuthenticationMechanism__block_invoke_2_cold_1(a1, v2);
  }
}

- (BOOL)authorizationCapabilityEnabled
{
  v2 = [(ASCredentialRequestConfirmButtonSubPane *)self authorizationButton];
  v3 = [v2 isEnabled];

  return v3;
}

- (void)showAlertContinuingWithPassword:(BOOL)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__ASCredentialRequestConfirmButtonSubPane_showAlertContinuingWithPassword___block_invoke;
  block[3] = &unk_1E7AF7608;
  block[4] = self;
  v5 = MEMORY[0x1E69E96A0];
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v6 = dispatch_time(0, 1700000000);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__ASCredentialRequestConfirmButtonSubPane_showAlertContinuingWithPassword___block_invoke_2;
  v7[3] = &unk_1E7AF8BB8;
  v8 = a3;
  v7[4] = self;
  dispatch_after(v6, v5, v7);
}

void __75__ASCredentialRequestConfirmButtonSubPane_showAlertContinuingWithPassword___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = _WBSLocalizedString();
  [v1 _switchToBiometricsView:0 withAuthenticationMechanismEnabled:0 showAlert:1 alertString:v2];
}

uint64_t __75__ASCredentialRequestConfirmButtonSubPane_showAlertContinuingWithPassword___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = [*(a1 + 32) _passcodeOrPasswordButtonTitle];
    [*(*(a1 + 32) + 128) setButtonText:v2];

    [*(*(a1 + 32) + 128) addTarget:*(a1 + 32) action:sel__authorizeAccountViaDelegationWithPasswordButtonSelected_];
  }

  v3 = *(a1 + 32);

  return [v3 _switchToBiometricsView:0 withAuthenticationMechanismEnabled:1 showAlert:0 alertString:0];
}

- (void)setUpButtonInPaneContext:(id)a3 buttonTitle:(id)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (self->_canPerformBiometricAuthentication)
  {
    v8 = &selRef__authorizationButtonBioSelected_;
  }

  else if (self->_canPerformCompanionAuthentication)
  {
    v8 = &selRef__authorizationButtonCompanionSelected_;
  }

  else
  {
    os_activity_apply(self->_authorizationActivity, &__block_literal_global_23);
    v8 = &selRef__authorizationWithPasscodeOrPasswordButtonSelected_;
  }

  v9 = *v8;
  if (!v7)
  {
    v7 = _WBSLocalizedString();
  }

  v10 = MEMORY[0x1E696ACD8];
  v11 = [(UIStackView *)self->_mainStackView widthAnchor];
  v12 = [v6 stackView];
  v13 = [v12 widthAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  v17[0] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  [v10 activateConstraints:v15];

  [(ASCredentialRequestButton *)self->_authorizationButton setButtonText:v7];
  [(ASCredentialRequestButton *)self->_authorizationButton addTarget:self action:v9];

  v16 = *MEMORY[0x1E69E9840];
}

void __80__ASCredentialRequestConfirmButtonSubPane_setUpButtonInPaneContext_buttonTitle___block_invoke()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B1C8D000, v0, OS_LOG_TYPE_INFO, "Biometric authentication not available. Falling back to passcode.", v1, 2u);
  }
}

- (void)showContinueButton
{
  v3 = _WBSLocalizedString();
  [(ASCredentialRequestConfirmButtonSubPane *)self showContinueButtonWithTitle:v3];
}

- (void)showContinueButtonWithTitle:(id)a3
{
  [(ASCredentialRequestButton *)self->_authorizationButton setButtonText:a3];
  [(ASCredentialRequestButton *)self->_authorizationButton addTarget:self action:sel__continueButtonTapped];

  [(ASCredentialRequestConfirmButtonSubPane *)self _switchToBiometricsView:0 withAuthenticationMechanismEnabled:1 showAlert:0 alertString:0];
}

- (void)showAuthenticationMechanismForExternalPasswordCredential
{
  if (self->_canPerformBiometricAuthentication)
  {

    [(ASCredentialRequestConfirmButtonSubPane *)self _switchToBiometricsView:3 withAuthenticationMechanismEnabled:1 showAlert:0 alertString:0];
  }

  else if ([(ASCredentialRequestConfirmButtonSubPane *)self _shouldAllowFallbackToPasscodeAuthentication])
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __99__ASCredentialRequestConfirmButtonSubPane_showAuthenticationMechanismForExternalPasswordCredential__block_invoke;
    v4[3] = &unk_1E7AF8BE0;
    v4[4] = self;
    [(ASCredentialRequestConfirmButtonSubPane *)self performPasscodeOrPasswordValidation:v4];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained confirmButtonSubPaneDidFailBiometry:self allowingPasscodeFallback:0];
  }
}

void __99__ASCredentialRequestConfirmButtonSubPane_showAuthenticationMechanismForExternalPasswordCredential__block_invoke(uint64_t a1, int a2, void *a3)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = a3;
    WeakRetained = objc_loadWeakRetained((v4 + 136));
    [WeakRetained performAuthorization:*(a1 + 32) withAuthenticatedLAContext:v5];
  }
}

- (void)_authorizationButtonBioSelected:(id)a3
{
  if ([(ASCredentialRequestConfirmButtonSubPane *)self _isDelegateReadyForAuthorization])
  {

    [(ASCredentialRequestConfirmButtonSubPane *)self _switchToBiometricsView:1 withAuthenticationMechanismEnabled:1 showAlert:0 alertString:0];
  }
}

- (void)_authorizationButtonCompanionSelected:(id)a3
{
  if ([(ASCredentialRequestConfirmButtonSubPane *)self _isDelegateReadyForAuthorization])
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __81__ASCredentialRequestConfirmButtonSubPane__authorizationButtonCompanionSelected___block_invoke;
    v4[3] = &unk_1E7AF8BE0;
    v4[4] = self;
    [(ASCredentialRequestConfirmButtonSubPane *)self _performCompanionValidation:v4];
  }
}

void __81__ASCredentialRequestConfirmButtonSubPane__authorizationButtonCompanionSelected___block_invoke(uint64_t a1, int a2, void *a3)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = a3;
    WeakRetained = objc_loadWeakRetained((v4 + 136));
    [WeakRetained performAuthorization:*(a1 + 32) withAuthenticatedLAContext:v5];
  }
}

- (void)_authorizationWithPasscodeOrPasswordButtonSelected:(id)a3
{
  if ([(ASCredentialRequestConfirmButtonSubPane *)self _isDelegateReadyForAuthorization])
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __94__ASCredentialRequestConfirmButtonSubPane__authorizationWithPasscodeOrPasswordButtonSelected___block_invoke;
    v4[3] = &unk_1E7AF8BE0;
    v4[4] = self;
    [(ASCredentialRequestConfirmButtonSubPane *)self performPasscodeOrPasswordValidation:v4];
  }
}

void __94__ASCredentialRequestConfirmButtonSubPane__authorizationWithPasscodeOrPasswordButtonSelected___block_invoke(uint64_t a1, int a2, void *a3)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = a3;
    WeakRetained = objc_loadWeakRetained((v4 + 136));
    [WeakRetained performAuthorization:*(a1 + 32) withAuthenticatedLAContext:v5];
  }
}

- (void)_authorizeAccountViaDelegationWithPasswordButtonSelected:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained performPasswordAuthentication:self];
}

- (void)_continueButtonTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained userTappedContinueButton];
}

- (void)_performCompanionValidation:(id)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E696EE50]);
  v6 = [(ASCredentialRequestConfirmButtonSubPane *)self _passcodeOrPasswordButtonTitle];
  v7 = MEMORY[0x1E695DF90];
  v17[0] = &unk_1F28F0578;
  v17[1] = &unk_1F28F0590;
  v18[0] = v6;
  v18[1] = &stru_1F28DE020;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v9 = [v7 dictionaryWithDictionary:v8];

  auditTokenData = self->_auditTokenData;
  if (auditTokenData)
  {
    [v9 setObject:auditTokenData forKey:&unk_1F28F05A8];
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__ASCredentialRequestConfirmButtonSubPane__performCompanionValidation___block_invoke;
  v14[3] = &unk_1E7AF8C08;
  v15 = v5;
  v16 = v4;
  v14[4] = self;
  v11 = v5;
  v12 = v4;
  [v11 evaluatePolicy:3 options:v9 reply:v14];

  v13 = *MEMORY[0x1E69E9840];
}

void __71__ASCredentialRequestConfirmButtonSubPane__performCompanionValidation___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = *(a1[4] + 88);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__ASCredentialRequestConfirmButtonSubPane__performCompanionValidation___block_invoke_2;
    block[3] = &unk_1E7AF7608;
    v9 = v4;
    os_activity_apply(v6, block);
  }

  v7 = a1[5];
  (*(a1[6] + 16))();
}

void __71__ASCredentialRequestConfirmButtonSubPane__performCompanionValidation___block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __71__ASCredentialRequestConfirmButtonSubPane__performCompanionValidation___block_invoke_2_cold_1(a1, v2);
  }
}

- (void)performPasscodeOrPasswordValidation:(id)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E696EE50]);
  v6 = [(ASCredentialRequestConfirmButtonSubPane *)self _passcodeOrPasswordButtonTitle];
  v14[0] = &unk_1F28F0578;
  v14[1] = &unk_1F28F0590;
  v15[0] = v6;
  v15[1] = &stru_1F28DE020;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__ASCredentialRequestConfirmButtonSubPane_performPasscodeOrPasswordValidation___block_invoke;
  v11[3] = &unk_1E7AF8C08;
  v12 = v5;
  v13 = v4;
  v11[4] = self;
  v8 = v5;
  v9 = v4;
  [v8 evaluatePolicy:1007 options:v7 reply:v11];

  v10 = *MEMORY[0x1E69E9840];
}

void __79__ASCredentialRequestConfirmButtonSubPane_performPasscodeOrPasswordValidation___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = *(a1[4] + 88);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__ASCredentialRequestConfirmButtonSubPane_performPasscodeOrPasswordValidation___block_invoke_2;
    block[3] = &unk_1E7AF7608;
    v9 = v4;
    os_activity_apply(v6, block);
  }

  v7 = a1[5];
  (*(a1[6] + 16))();
}

void __79__ASCredentialRequestConfirmButtonSubPane_performPasscodeOrPasswordValidation___block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __79__ASCredentialRequestConfirmButtonSubPane_performPasscodeOrPasswordValidation___block_invoke_2_cold_1(a1, v2);
  }
}

- (BOOL)_isDelegateReadyForAuthorization
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained validateReadyForAuthorization:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

void __124__ASCredentialRequestConfirmButtonSubPane__switchToBiometricsView_withAuthenticationMechanismEnabled_showAlert_alertString___block_invoke()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __124__ASCredentialRequestConfirmButtonSubPane__switchToBiometricsView_withAuthenticationMechanismEnabled_showAlert_alertString___block_invoke_cold_1(v0);
  }
}

- (void)disableBiometricView
{
  biometricsView = self->_biometricsView;
  if (biometricsView)
  {
    [(LAUIAuthenticationView *)biometricsView setDelegate:0];
    v4 = self->_biometricsView;
    v13 = 0;
    v5 = [(LAUIAuthenticationView *)v4 disableMechanism:4 error:&v13];
    v6 = v13;
    v7 = v6;
    if (v6 || (v5 & 1) == 0)
    {
      authorizationActivity = self->_authorizationActivity;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __63__ASCredentialRequestConfirmButtonSubPane_disableBiometricView__block_invoke;
      v11[3] = &unk_1E7AF7608;
      v12 = v6;
      os_activity_apply(authorizationActivity, v11);
    }

    biometricsContainerView = self->_biometricsContainerView;
    self->_biometricsContainerView = 0;

    v10 = self->_biometricsView;
    self->_biometricsView = 0;
  }
}

void __63__ASCredentialRequestConfirmButtonSubPane_disableBiometricView__block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __63__ASCredentialRequestConfirmButtonSubPane_disableBiometricView__block_invoke_cold_1(a1, v2);
  }
}

- (void)_addArrangedSpaceToMainStackView:(double)a3
{
  v4 = [(ASCredentialRequestConfirmButtonSubPane *)self _verticalSpacerWithConstant:a3];
  [(UIStackView *)self->_mainStackView addArrangedSubview:v4];
}

- (id)_verticalSpacerWithConstant:(double)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
  v5 = [v4 heightAnchor];
  v6 = [v5 constraintEqualToConstant:a3];
  [v4 addConstraint:v6];

  return v4;
}

- (id)_setUpAlertImageWithConstraints
{
  v18[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  v4 = [MEMORY[0x1E69DC888] redColor];
  [v3 setTintColor:v4];

  v5 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:3 weight:50.0];
  [v3 setPreferredSymbolConfiguration:v5];

  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.circle"];
  [v3 setImage:v6];

  [v3 setContentMode:1];
  [v3 setFrame:{0.0, 0.0, 50.0, 50.0}];
  [(UIStackView *)self->_mainStackView addArrangedSubview:v3];
  v7 = [v3 heightAnchor];
  v8 = [v7 constraintEqualToConstant:50.0];
  v9 = [v3 widthAnchor];
  v10 = [v9 constraintEqualToConstant:50.0];
  v18[1] = v10;
  v11 = [v3 centerXAnchor];
  v12 = [(ASCredentialRequestSubPane *)self view];
  v13 = [v12 centerXAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  v18[2] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)_setupLabelWithTitle:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v13 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(UILabel *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [MEMORY[0x1E69DCA40] defaultMetrics];
  v8 = [MEMORY[0x1E69DB878] systemFontOfSize:15.0 weight:*MEMORY[0x1E69DB978]];
  v9 = [v7 scaledFontForFont:v8];
  [(UILabel *)v6 setFont:v9];

  [(UILabel *)v6 setTextAlignment:1];
  [(UILabel *)v6 setNumberOfLines:1];
  [(UILabel *)v6 setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)v6 setAdjustsFontSizeToFitWidth:1];
  if (v4)
  {
    v10 = &stru_1F28DE020;
  }

  else
  {
    v10 = v13;
  }

  [(UILabel *)v6 setText:v10];
  LODWORD(v11) = 1148846080;
  [(UILabel *)v6 setContentCompressionResistancePriority:1 forAxis:v11];
  [(UILabel *)v6 setMaximumContentSizeCategory:*MEMORY[0x1E69DDC38]];
  [(UIStackView *)self->_biometricsContainerView addArrangedSubview:v6];
  biometricLabel = self->_biometricLabel;
  self->_biometricLabel = v6;

  if (v4)
  {
    [(ASCredentialRequestConfirmButtonSubPane *)self _updateLabelAnimatedWithTitle:v13];
  }
}

- (void)_updateLabelAnimatedWithTitle:(id)a3
{
  v4 = MEMORY[0x1E6979538];
  v5 = a3;
  v9 = [v4 animation];
  v6 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED8]];
  [v9 setTimingFunction:v6];

  v7 = *MEMORY[0x1E697A030];
  [v9 setType:*MEMORY[0x1E697A030]];
  [v9 setDuration:0.15];
  v8 = [(UILabel *)self->_biometricLabel layer];
  [v8 addAnimation:v9 forKey:v7];

  [(UILabel *)self->_biometricLabel setText:v5];
}

- (void)_setupBiometricButtonWithConstraints:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69AD2E0];
  v5 = a3;
  v6 = [[v4 alloc] initWithFrame:4 mechanisms:{0.0, 0.0, 50.0, 50.0}];
  biometricsView = self->_biometricsView;
  self->_biometricsView = v6;

  [(LAUIAuthenticationView *)self->_biometricsView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(LAUIAuthenticationView *)self->_biometricsView setDelegate:self];
  [(UIStackView *)self->_biometricsContainerView addArrangedSubview:self->_biometricsView];
  v8 = [(LAUIAuthenticationView *)self->_biometricsView widthAnchor];
  v9 = [v8 constraintEqualToConstant:50.0];
  v14[0] = v9;
  v10 = [(LAUIAuthenticationView *)self->_biometricsView heightAnchor];
  v11 = [v10 constraintEqualToConstant:50.0];
  v14[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  [v5 addObjectsFromArray:v12];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_switchToPasscodeOrPassword
{
  v3 = [(ASCredentialRequestConfirmButtonSubPane *)self _passcodeOrPasswordButtonTitle];
  [(ASCredentialRequestButton *)self->_authorizationButton setButtonText:v3];

  [(ASCredentialRequestButton *)self->_authorizationButton addTarget:self action:sel__authorizationWithPasscodeOrPasswordButtonSelected_];

  [(ASCredentialRequestConfirmButtonSubPane *)self _switchToBiometricsView:0 withAuthenticationMechanismEnabled:1 showAlert:0 alertString:0];
}

- (void)showContinueWithPasswordButtonWithTitle:(id)a3
{
  [(ASCredentialRequestButton *)self->_authorizationButton setButtonText:a3];
  [(ASCredentialRequestButton *)self->_authorizationButton addTarget:self action:sel__authorizeAccountViaDelegationWithPasswordButtonSelected_];

  [(ASCredentialRequestConfirmButtonSubPane *)self _switchToBiometricsView:0 withAuthenticationMechanismEnabled:1 showAlert:0 alertString:0];
}

- (void)_enterProcessingStateWithCompletionHandler:(id)a3
{
  aBlock = a3;
  if (*&self->_processingStateCompletionHandler == 0)
  {
    v4 = dispatch_group_create();
    processingStateGroup = self->_processingStateGroup;
    self->_processingStateGroup = v4;

    v6 = _Block_copy(aBlock);
    processingStateCompletionHandler = self->_processingStateCompletionHandler;
    self->_processingStateCompletionHandler = v6;

    [(ASCredentialRequestConfirmButtonSubPane *)self _setGlyphViewGestureRecognizerEnabled:0];
  }

  else
  {
    os_activity_apply(self->_authorizationActivity, &__block_literal_global_81);
    aBlock[2]();
  }
}

void __86__ASCredentialRequestConfirmButtonSubPane__enterProcessingStateWithCompletionHandler___block_invoke()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B1C8D000, v0, OS_LOG_TYPE_INFO, "ASCredentialRequestConfirmButtonSubPane already in processing state, ignoring attempt.", v1, 2u);
  }
}

- (void)_waitForTimeInterval:(double)a3 withGroup:(id)a4
{
  v5 = a4;
  v6 = dispatch_time(0, (a3 * 1000000000.0));
  dispatch_group_enter(v5);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__ASCredentialRequestConfirmButtonSubPane__waitForTimeInterval_withGroup___block_invoke;
  block[3] = &unk_1E7AF7608;
  v9 = v5;
  v7 = v5;
  dispatch_after(v6, MEMORY[0x1E69E96A0], block);
}

- (void)biometricAuthenticationFailureWithAlertString:(id)a3
{
  [(ASCredentialRequestConfirmButtonSubPane *)self _switchToBiometricsView:0 withAuthenticationMechanismEnabled:0 showAlert:1 alertString:a3];
  v4 = dispatch_time(0, 1700000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__ASCredentialRequestConfirmButtonSubPane_biometricAuthenticationFailureWithAlertString___block_invoke;
  block[3] = &unk_1E7AF7608;
  block[4] = self;
  dispatch_after(v4, MEMORY[0x1E69E96A0], block);
}

- (void)finishProcessingWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __81__ASCredentialRequestConfirmButtonSubPane_finishProcessingWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E7AF7E28;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __81__ASCredentialRequestConfirmButtonSubPane_finishProcessingWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 112);
  v3 = _Block_copy(*(*(a1 + 32) + 104));
  if (!(v2 | v3))
  {
    goto LABEL_6;
  }

  v4 = *(a1 + 32);
  v5 = _WBSLocalizedString();
  [v4 _updateLabelAnimatedWithTitle:v5];

  [*(a1 + 32) _waitForTimeInterval:v2 withGroup:1.0];
  if (v3)
  {
    (*(v3 + 16))(v3);
  }

  if (v2)
  {
    objc_initWeak(&location, *(a1 + 32));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __81__ASCredentialRequestConfirmButtonSubPane_finishProcessingWithCompletionHandler___block_invoke_2;
    block[3] = &unk_1E7AF8C30;
    objc_copyWeak(&v8, &location);
    v7 = *(a1 + 40);
    dispatch_group_notify(v2, MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  else
  {
LABEL_6:
    (*(*(a1 + 40) + 16))();
  }
}

void __81__ASCredentialRequestConfirmButtonSubPane_finishProcessingWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidateProcessingState];
  (*(*(a1 + 32) + 16))();
}

- (void)invalidateProcessingState
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __68__ASCredentialRequestConfirmButtonSubPane_invalidateProcessingState__block_invoke;
  v2[3] = &unk_1E7AF75E0;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __68__ASCredentialRequestConfirmButtonSubPane_invalidateProcessingState__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[14];
    WeakRetained[14] = 0;
    v4 = WeakRetained;

    v3 = v4[13];
    v4[13] = 0;

    [v4 _setGlyphViewGestureRecognizerEnabled:1];
    WeakRetained = v4;
  }
}

- (BOOL)_shouldAllowFallbackToPasscodeAuthentication
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E696EE50]);
  v7[0] = &unk_1F28F05C0;
  v7[1] = &unk_1F28F05D8;
  v8[0] = MEMORY[0x1E695E118];
  v8[1] = MEMORY[0x1E695E118];
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v4 = [v2 evaluatePolicy:1025 options:v3 error:0];

  v5 = *MEMORY[0x1E69E9840];
  return v4 != 0;
}

- (void)showActivityIndicator
{
  v19[4] = *MEMORY[0x1E69E9840];
  [(ASCredentialRequestButton *)self->_authorizationButton setHidden:1];
  v3 = objc_alloc_init(MEMORY[0x1E69DC638]);
  [v3 setHidden:0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_authorizationButtonContainerView addSubview:v3];
  v16 = MEMORY[0x1E696ACD8];
  v18 = [v3 centerXAnchor];
  v17 = [(UIView *)self->_authorizationButtonContainerView centerXAnchor];
  v4 = [v18 constraintEqualToAnchor:v17];
  v19[0] = v4;
  v5 = [v3 centerYAnchor];
  v6 = [(UIView *)self->_authorizationButtonContainerView centerYAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  v19[1] = v7;
  v8 = [v3 heightAnchor];
  +[ASViewServiceInterfaceUtilities continueButtonHeight];
  v10 = [v8 constraintEqualToConstant:v9 * 0.5];
  v19[2] = v10;
  v11 = [v3 widthAnchor];
  +[ASViewServiceInterfaceUtilities continueButtonHeight];
  v13 = [v11 constraintEqualToConstant:v12 * 0.5];
  v19[3] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];
  [v16 activateConstraints:v14];

  [v3 startAnimating];
  v15 = *MEMORY[0x1E69E9840];
}

- (void)authenticationResult:(id)a3 error:(id)a4 context:(id)a5
{
  v27[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v9)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __78__ASCredentialRequestConfirmButtonSubPane_authenticationResult_error_context___block_invoke;
    v24[3] = &unk_1E7AF76A8;
    v24[4] = self;
    v25 = v10;
    dispatch_async(MEMORY[0x1E69E96A0], v24);
    v19 = v25;
    goto LABEL_9;
  }

  v26 = *MEMORY[0x1E696EE30];
  v27[0] = &unk_1F28F0518;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v13 = [v9 safari_matchesErrorDomainsAndCodes:v12];

  v14 = [(ASCredentialRequestConfirmButtonSubPane *)self _shouldAllowFallbackToPasscodeAuthentication];
  authorizationActivity = self->_authorizationActivity;
  if (v13)
  {
    v16 = !v14;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    v17 = v14;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__ASCredentialRequestConfirmButtonSubPane_authenticationResult_error_context___block_invoke_2;
    block[3] = &unk_1E7AF7608;
    v22 = v9;
    os_activity_apply(authorizationActivity, block);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained confirmButtonSubPaneDidFailBiometry:self allowingPasscodeFallback:v17];

    v19 = v22;
LABEL_9:

    goto LABEL_10;
  }

  os_activity_apply(self->_authorizationActivity, &__block_literal_global_96);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __78__ASCredentialRequestConfirmButtonSubPane_authenticationResult_error_context___block_invoke_97;
  v23[3] = &unk_1E7AF7608;
  v23[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], v23);
LABEL_10:

  v20 = *MEMORY[0x1E69E9840];
}

void __78__ASCredentialRequestConfirmButtonSubPane_authenticationResult_error_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 136));
  [WeakRetained confirmButtonSubPaneDidEnterProcessingState:*(a1 + 32) withAuthenticatedContext:*(a1 + 40)];
}

void __78__ASCredentialRequestConfirmButtonSubPane_authenticationResult_error_context___block_invoke_94()
{
  v0 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B1C8D000, v0, OS_LOG_TYPE_INFO, "Biometric auth failed or locked out. Switching to passcode authentication.", v1, 2u);
  }
}

void __78__ASCredentialRequestConfirmButtonSubPane_authenticationResult_error_context___block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAuthorization();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __78__ASCredentialRequestConfirmButtonSubPane_authenticationResult_error_context___block_invoke_2_cold_1(a1, v2);
  }
}

- (void)processBiometricMatchWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __86__ASCredentialRequestConfirmButtonSubPane_processBiometricMatchWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E7AF7E28;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __86__ASCredentialRequestConfirmButtonSubPane_processBiometricMatchWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = _WBSLocalizedString();
  [v2 _updateLabelAnimatedWithTitle:v3];

  [*(a1 + 32) _enterProcessingStateWithCompletionHandler:*(a1 + 40)];
  result = [MEMORY[0x1E698E020] biometryType];
  if (result == 1)
  {
    v5 = *(a1 + 32);
    v6 = v5[14];

    return [v5 _waitForTimeInterval:v6 withGroup:2.2];
  }

  return result;
}

- (void)addToStackView:(id)a3 withCustomSpacingAfter:(double)a4 context:(id)a5
{
  v8 = a5;
  v10.receiver = self;
  v10.super_class = ASCredentialRequestConfirmButtonSubPane;
  [(ASCredentialRequestSubPane *)&v10 addToStackView:a3 withCustomSpacingAfter:v8 context:a4];
  paneContext = self->_paneContext;
  self->_paneContext = v8;
}

- (ASCredentialRequestSubPaneConfirmButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)shouldOverrideLocalAuthenticationForTesting
{
  v2 = self;
  v3 = sub_1B1D24E50();

  return v3 & 1;
}

- (BOOL)isBiometricAuthenticationAvailable
{
  v2 = self;
  v3 = [(ASCredentialRequestConfirmButtonSubPane *)v2 testOptions];
  if (v3 && (v4 = v3, v5 = sub_1B1D7B7DC(), v7 = v6, v4, (v7 & 1) == 0))
  {

    return v5 != 0;
  }

  else
  {
    v8 = [objc_opt_self() isBiometricAuthenticationAvailable];

    return v8;
  }
}

void __77__ASCredentialRequestConfirmButtonSubPane__enableLAUIAuthenticationMechanism__block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0(a1, a2);
  v4 = [OUTLINED_FUNCTION_1_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B1C8D000, v5, v6, "Error enabling biometrics in credential picker: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __71__ASCredentialRequestConfirmButtonSubPane__performCompanionValidation___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0(a1, a2);
  v4 = [OUTLINED_FUNCTION_1_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B1C8D000, v5, v6, "Companion authentication in ASAuthorizationController credential picker failed with error: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __79__ASCredentialRequestConfirmButtonSubPane_performPasscodeOrPasswordValidation___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0(a1, a2);
  v4 = [OUTLINED_FUNCTION_1_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B1C8D000, v5, v6, "Passcode authentication in ASAuthorizationController credential picker failed with error: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __63__ASCredentialRequestConfirmButtonSubPane_disableBiometricView__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0(a1, a2);
  v4 = [OUTLINED_FUNCTION_1_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B1C8D000, v5, v6, "Error disabling biometrics UI: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

void __78__ASCredentialRequestConfirmButtonSubPane_authenticationResult_error_context___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0(a1, a2);
  v4 = [OUTLINED_FUNCTION_1_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_1B1C8D000, v5, v6, "Biometric auth failed with error: %{public}@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

@end