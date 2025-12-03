@interface ClarityUIParentalControlsSetupController
- (ClarityUIParentalControlsSetupController)initWithCompletion:(id)completion;
- (void)_enablePasscodeFieldWithAttemptCount:(id)count;
- (void)_setupPasscodeErrorView;
- (void)_updatePasscodeErrorLabelWithTimeoutDate:(id)date attemptCount:(id)count;
- (void)passcodeInput:(id)input enteredPasscode:(id)passcode;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation ClarityUIParentalControlsSetupController

- (ClarityUIParentalControlsSetupController)initWithCompletion:(id)completion
{
  completionCopy = completion;
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

    contentView = [(ClarityUIParentalControlsSetupController *)v7 contentView];
    v11 = objc_retainBlock(completionCopy);
    completionHandler = v7->_completionHandler;
    v7->_completionHandler = v11;

    v13 = [BFFSimplePasscodeInputView alloc];
    v14 = [v13 initWithFrame:AXBackBoardServerClarityUIAdminPasscodeLength numberOfEntryFields:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    passcodeInputView = v7->_passcodeInputView;
    v7->_passcodeInputView = v14;

    [(BFFPasscodeInputView *)v7->_passcodeInputView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(BFFPasscodeInputView *)v7->_passcodeInputView setDelegate:v7];
    [(ClarityUIParentalControlsSetupController *)v7 _setupPasscodeErrorView];
    [contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:v7->_passcodeInputView];
    v30 = completionCopy;
    [contentView addSubview:v7->_passcodeErrorView];
    centerXAnchor = [(BFFPasscodeInputView *)v7->_passcodeInputView centerXAnchor];
    centerXAnchor2 = [contentView centerXAnchor];
    v27 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v32[0] = v27;
    topAnchor = [(BFFPasscodeInputView *)v7->_passcodeInputView topAnchor];
    topAnchor2 = [contentView topAnchor];
    v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v32[1] = v16;
    centerXAnchor3 = [(UIView *)v7->_passcodeErrorView centerXAnchor];
    centerXAnchor4 = [contentView centerXAnchor];
    v19 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v32[2] = v19;
    topAnchor3 = [(UIView *)v7->_passcodeErrorView topAnchor];
    bottomAnchor = [(BFFPasscodeInputView *)v7->_passcodeInputView bottomAnchor];
    v22 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:32.0];
    v32[3] = v22;
    v23 = [NSArray arrayWithObjects:v32 count:4];
    [NSLayoutConstraint activateConstraints:v23];

    completionCopy = v30;
  }

  return v7;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = ClarityUIParentalControlsSetupController;
  [(ClarityUIParentalControlsSetupController *)&v4 viewDidAppear:appear];
  [(BFFPasscodeInputView *)self->_passcodeInputView setPasscode:&stru_25D420];
  if ([(UIView *)self->_passcodeErrorView isHidden])
  {
    [(BFFPasscodeInputView *)self->_passcodeInputView becomeFirstResponder];
  }
}

- (void)passcodeInput:(id)input enteredPasscode:(id)passcode
{
  passcodeCopy = passcode;
  managementState = self->_managementState;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __74__ClarityUIParentalControlsSetupController_passcodeInput_enteredPasscode___block_invoke;
  v8[3] = &unk_256908;
  v9 = passcodeCopy;
  selfCopy = self;
  v7 = passcodeCopy;
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

  layer = [(UIView *)self->_passcodeErrorView layer];
  [layer setMasksToBounds:1];

  layer2 = [(UIView *)self->_passcodeErrorView layer];
  [layer2 setCornerRadius:12.0];

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
  trailingAnchor = [(UILabel *)self->_passcodeErrorLabel trailingAnchor];
  trailingAnchor2 = [(UIView *)self->_passcodeErrorView trailingAnchor];
  v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-20.0];
  v27[0] = v23;
  leadingAnchor = [(UILabel *)self->_passcodeErrorLabel leadingAnchor];
  leadingAnchor2 = [(UIView *)self->_passcodeErrorView leadingAnchor];
  v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
  v27[1] = v15;
  topAnchor = [(UILabel *)self->_passcodeErrorLabel topAnchor];
  topAnchor2 = [(UIView *)self->_passcodeErrorView topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:2.0];
  v27[2] = v18;
  bottomAnchor = [(UILabel *)self->_passcodeErrorLabel bottomAnchor];
  bottomAnchor2 = [(UIView *)self->_passcodeErrorView bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-2.0];
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

- (void)_updatePasscodeErrorLabelWithTimeoutDate:(id)date attemptCount:(id)count
{
  dateCopy = date;
  countCopy = count;
  if (dateCopy && ([dateCopy timeIntervalSinceNow], v8 = v7, (v9 = vcvtpd_u64_f64(v7 / 60.0)) != 0))
  {
    [(BFFPasscodeInputView *)self->_passcodeInputView setUserInteractionEnabled:0];
    [(UIView *)self->_passcodeErrorView setHidden:0];
    v10 = settingsLocString(@"PasscodeEntryTimeout", @"ClarityUISettings");
    v11 = [NSString localizedStringWithFormat:v10, v9];
    [(UILabel *)self->_passcodeErrorLabel setText:v11];

    [(ClarityUIParentalControlsSetupController *)self performSelector:"_enablePasscodeFieldWithAttemptCount:" withObject:countCopy afterDelay:v8];
  }

  else
  {
    [(ClarityUIParentalControlsSetupController *)self _enablePasscodeFieldWithAttemptCount:countCopy];
  }
}

- (void)_enablePasscodeFieldWithAttemptCount:(id)count
{
  longLongValue = [count longLongValue];
  passcodeErrorView = self->_passcodeErrorView;
  if (longLongValue < 1)
  {
    [(UIView *)passcodeErrorView setHidden:1];
  }

  else
  {
    [(UIView *)passcodeErrorView setHidden:0];
    v6 = settingsLocString(@"FailedPasscodeAttempts", @"ClarityUISettings");
    v7 = [NSString localizedStringWithFormat:v6, longLongValue];
    [(UILabel *)self->_passcodeErrorLabel setText:v7];
  }

  [(BFFPasscodeInputView *)self->_passcodeInputView setUserInteractionEnabled:1];
  passcodeInputView = self->_passcodeInputView;

  [(BFFPasscodeInputView *)passcodeInputView becomeFirstResponder];
}

@end