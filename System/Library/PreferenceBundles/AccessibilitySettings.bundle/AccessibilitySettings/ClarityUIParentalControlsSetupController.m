@interface ClarityUIParentalControlsSetupController
- (ClarityUIParentalControlsSetupController)initWithCompletion:(id)a3;
- (void)_enablePasscodeFieldWithAttemptCount:(id)a3;
- (void)_setupPasscodeErrorView;
- (void)_updatePasscodeErrorLabelWithTimeoutDate:(id)a3 attemptCount:(id)a4;
- (void)passcodeInput:(id)a3 enteredPasscode:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation ClarityUIParentalControlsSetupController

- (ClarityUIParentalControlsSetupController)initWithCompletion:(id)a3
{
  v4 = a3;
  v5 = settingsLocString(@"PARENTAL_CONTROLS_PASSCODE_TITLE", @"ClarityUISettings");
  v6 = settingsLocString(@"PARENTAL_CONTROLS_PASSCODE_DESCRIPTION", @"ClarityUISettings");
  v31.receiver = self;
  v31.super_class = ClarityUIParentalControlsSetupController;
  v7 = [(ClarityUIParentalControlsSetupController *)&v31 initWithTitle:v5 detailText:v6 symbolName:@"hourglass" contentLayout:2];

  if (v7)
  {
    v8 = objc_opt_new();
    managementState = v7->_managementState;
    v7->_managementState = v8;

    v10 = [(ClarityUIParentalControlsSetupController *)v7 contentView];
    v11 = objc_retainBlock(v4);
    completionHandler = v7->_completionHandler;
    v7->_completionHandler = v11;

    v13 = [BFFSimplePasscodeInputView alloc];
    v14 = [v13 initWithFrame:AXBackBoardServerClarityUIAdminPasscodeLength numberOfEntryFields:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    passcodeInputView = v7->_passcodeInputView;
    v7->_passcodeInputView = v14;

    [(BFFPasscodeInputView *)v7->_passcodeInputView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(BFFPasscodeInputView *)v7->_passcodeInputView setDelegate:v7];
    [(ClarityUIParentalControlsSetupController *)v7 _setupPasscodeErrorView];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 addSubview:v7->_passcodeInputView];
    v30 = v4;
    [v10 addSubview:v7->_passcodeErrorView];
    v29 = [(BFFPasscodeInputView *)v7->_passcodeInputView centerXAnchor];
    v28 = [v10 centerXAnchor];
    v27 = [v29 constraintEqualToAnchor:v28];
    v32[0] = v27;
    v26 = [(BFFPasscodeInputView *)v7->_passcodeInputView topAnchor];
    v25 = [v10 topAnchor];
    v16 = [v26 constraintEqualToAnchor:v25];
    v32[1] = v16;
    v17 = [(UIView *)v7->_passcodeErrorView centerXAnchor];
    v18 = [v10 centerXAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    v32[2] = v19;
    v20 = [(UIView *)v7->_passcodeErrorView topAnchor];
    v21 = [(BFFPasscodeInputView *)v7->_passcodeInputView bottomAnchor];
    v22 = [v20 constraintEqualToAnchor:v21 constant:32.0];
    v32[3] = v22;
    v23 = [NSArray arrayWithObjects:v32 count:4];
    [NSLayoutConstraint activateConstraints:v23];

    v4 = v30;
  }

  return v7;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = ClarityUIParentalControlsSetupController;
  [(ClarityUIParentalControlsSetupController *)&v4 viewDidAppear:a3];
  [(BFFPasscodeInputView *)self->_passcodeInputView setPasscode:&stru_25D420];
  if ([(UIView *)self->_passcodeErrorView isHidden])
  {
    [(BFFPasscodeInputView *)self->_passcodeInputView becomeFirstResponder];
  }
}

- (void)passcodeInput:(id)a3 enteredPasscode:(id)a4
{
  v5 = a4;
  managementState = self->_managementState;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __74__ClarityUIParentalControlsSetupController_passcodeInput_enteredPasscode___block_invoke;
  v8[3] = &unk_256908;
  v9 = v5;
  v10 = self;
  v7 = v5;
  [(STManagementState *)managementState authenticateRestrictionsPasscode:v7 completionHandler:v8];
}

void __74__ClarityUIParentalControlsSetupController_passcodeInput_enteredPasscode___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  v3 = v4;
  AXPerformBlockOnMainThread();
}

void __74__ClarityUIParentalControlsSetupController_passcodeInput_enteredPasscode___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 userInfo];
    v8 = [v3 objectForKeyedSubscript:STErrorKeyPINTimeoutDate];

    v4 = [*(a1 + 32) userInfo];
    v5 = [v4 objectForKeyedSubscript:STErrorKeyNumberOfPINAuthenticationAttempts];

    [*(a1 + 48) _updatePasscodeErrorLabelWithTimeoutDate:v8 attemptCount:v5];
    [*(*(a1 + 48) + 16) setPasscode:&stru_25D420];
    [*(*(a1 + 48) + 16) shakePasscode];
  }

  else
  {
    v6 = +[AXBackBoardServer server];
    [v6 setClarityUIAdminPasscode:*(a1 + 40)];

    [*(a1 + 48) _showDoneController];
    v7 = *(a1 + 48);

    [v7 _updatePasscodeErrorLabelWithTimeoutDate:0 attemptCount:0];
  }
}

- (void)_setupPasscodeErrorView
{
  v3 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  passcodeErrorView = self->_passcodeErrorView;
  self->_passcodeErrorView = v3;

  [(UIView *)self->_passcodeErrorView setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = +[UIColor redColor];
  [(UIView *)self->_passcodeErrorView setBackgroundColor:v5];

  v6 = [(UIView *)self->_passcodeErrorView layer];
  [v6 setMasksToBounds:1];

  v7 = [(UIView *)self->_passcodeErrorView layer];
  [v7 setCornerRadius:12.0];

  managementState = self->_managementState;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = __67__ClarityUIParentalControlsSetupController__setupPasscodeErrorView__block_invoke;
  v26[3] = &unk_256930;
  v26[4] = self;
  [(STManagementState *)managementState restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler:v26];
  v9 = objc_alloc_init(UILabel);
  passcodeErrorLabel = self->_passcodeErrorLabel;
  self->_passcodeErrorLabel = v9;

  [(UILabel *)self->_passcodeErrorLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)self->_passcodeErrorLabel setFont:v11];

  [(UILabel *)self->_passcodeErrorLabel setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)self->_passcodeErrorLabel setNumberOfLines:0];
  [(UILabel *)self->_passcodeErrorLabel setTextAlignment:1];
  v12 = +[UIColor whiteColor];
  [(UILabel *)self->_passcodeErrorLabel setTextColor:v12];

  [(UIView *)self->_passcodeErrorView addSubview:self->_passcodeErrorLabel];
  v25 = [(UILabel *)self->_passcodeErrorLabel trailingAnchor];
  v24 = [(UIView *)self->_passcodeErrorView trailingAnchor];
  v23 = [v25 constraintEqualToAnchor:v24 constant:-20.0];
  v27[0] = v23;
  v13 = [(UILabel *)self->_passcodeErrorLabel leadingAnchor];
  v14 = [(UIView *)self->_passcodeErrorView leadingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:20.0];
  v27[1] = v15;
  v16 = [(UILabel *)self->_passcodeErrorLabel topAnchor];
  v17 = [(UIView *)self->_passcodeErrorView topAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:2.0];
  v27[2] = v18;
  v19 = [(UILabel *)self->_passcodeErrorLabel bottomAnchor];
  v20 = [(UIView *)self->_passcodeErrorView bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:-2.0];
  v27[3] = v21;
  v22 = [NSArray arrayWithObjects:v27 count:4];
  [NSLayoutConstraint activateConstraints:v22];
}

void __67__ClarityUIParentalControlsSetupController__setupPasscodeErrorView__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = CLFLogSettings();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "failed to get passcode entry attempt count: %@", &v12, 0xCu);
    }
  }

  else
  {
    v11 = *(a1 + 32);
    if (v7 | v8)
    {
      [v11 _updatePasscodeErrorLabelWithTimeoutDate:v8 attemptCount:v7];
    }

    else
    {
      [v11[3] setHidden:1];
    }
  }
}

- (void)_updatePasscodeErrorLabelWithTimeoutDate:(id)a3 attemptCount:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (v12 && ([v12 timeIntervalSinceNow], v8 = v7, (v9 = vcvtpd_u64_f64(v7 / 60.0)) != 0))
  {
    [(BFFPasscodeInputView *)self->_passcodeInputView setUserInteractionEnabled:0];
    [(UIView *)self->_passcodeErrorView setHidden:0];
    v10 = settingsLocString(@"PasscodeEntryTimeout", @"ClarityUISettings");
    v11 = [NSString localizedStringWithFormat:v10, v9];
    [(UILabel *)self->_passcodeErrorLabel setText:v11];

    [(ClarityUIParentalControlsSetupController *)self performSelector:"_enablePasscodeFieldWithAttemptCount:" withObject:v6 afterDelay:v8];
  }

  else
  {
    [(ClarityUIParentalControlsSetupController *)self _enablePasscodeFieldWithAttemptCount:v6];
  }
}

- (void)_enablePasscodeFieldWithAttemptCount:(id)a3
{
  v4 = [a3 longLongValue];
  passcodeErrorView = self->_passcodeErrorView;
  if (v4 < 1)
  {
    [(UIView *)passcodeErrorView setHidden:1];
  }

  else
  {
    [(UIView *)passcodeErrorView setHidden:0];
    v6 = settingsLocString(@"FailedPasscodeAttempts", @"ClarityUISettings");
    v7 = [NSString localizedStringWithFormat:v6, v4];
    [(UILabel *)self->_passcodeErrorLabel setText:v7];
  }

  [(BFFPasscodeInputView *)self->_passcodeInputView setUserInteractionEnabled:1];
  passcodeInputView = self->_passcodeInputView;

  [(BFFPasscodeInputView *)passcodeInputView becomeFirstResponder];
}

@end