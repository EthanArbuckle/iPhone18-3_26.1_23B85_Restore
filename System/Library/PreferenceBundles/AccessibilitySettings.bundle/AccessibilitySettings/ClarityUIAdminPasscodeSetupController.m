@interface ClarityUIAdminPasscodeSetupController
- (ClarityUIAdminPasscodeSetupController)initWithCompletion:(id)a3;
- (id)_axPasscodeInputView;
- (void)_axShowDoneControllerWithPasscode:(id)a3;
- (void)_axShowWarmingView:(id)a3;
- (void)_axTransitionToPasscodeInput:(id)a3 withAnimation:(int)a4;
- (void)keyboardWillHide:(id)a3;
- (void)keyboardWillShow:(id)a3;
- (void)passcodeInput:(id)a3 enteredPasscode:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ClarityUIAdminPasscodeSetupController

- (ClarityUIAdminPasscodeSetupController)initWithCompletion:(id)a3
{
  v4 = a3;
  v5 = settingsLocString(@"ADMIN_PASSCODE_TITLE", @"ClarityUISettings");
  v29.receiver = self;
  v29.super_class = ClarityUIAdminPasscodeSetupController;
  v6 = [(ClarityUIAdminPasscodeSetupController *)&v29 initWithTitle:v5 detailText:0 symbolName:@"lock.fill"];

  if (v6)
  {
    v7 = objc_retainBlock(v4);
    completionHandler = v6->_completionHandler;
    v6->_completionHandler = v7;

    v9 = [(ClarityUIAdminPasscodeSetupController *)v6 contentView];
    v6->_passcodeState = 0;
    v10 = [(ClarityUIAdminPasscodeSetupController *)v6 _axPasscodeInputView];
    passcodeInputView = v6->_passcodeInputView;
    v6->_passcodeInputView = v10;

    [(BFFPasscodeInputView *)v6->_passcodeInputView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(BFFPasscodeInputView *)v6->_passcodeInputView setDelegate:v6];
    v12 = [(ClarityUIAdminPasscodeSetupController *)v6 contentView];
    [v12 addSubview:v6->_passcodeInputView];

    v13 = [(BFFPasscodeInputView *)v6->_passcodeInputView bottomAnchor];
    v14 = [v9 bottomAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];

    [(ClarityUIAdminPasscodeSetupController *)v6 setPasscodeBottomConstraint:v15];
    v27 = [(BFFPasscodeInputView *)v6->_passcodeInputView trailingAnchor];
    v26 = [v9 trailingAnchor];
    v25 = [v27 constraintEqualToAnchor:v26];
    v30[0] = v25;
    v24 = [(BFFPasscodeInputView *)v6->_passcodeInputView leadingAnchor];
    v28 = v9;
    v16 = [v9 leadingAnchor];
    v17 = [v24 constraintEqualToAnchor:v16];
    v30[1] = v17;
    v18 = [(BFFPasscodeInputView *)v6->_passcodeInputView topAnchor];
    v19 = [v9 topAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
    v30[2] = v20;
    v30[3] = v15;
    v21 = [NSArray arrayWithObjects:v30 count:4];
    [NSLayoutConstraint activateConstraints:v21];

    v22 = [[UITapGestureRecognizer alloc] initWithTarget:v6 action:"_passcodeViewTapped:"];
    [(BFFPasscodeInputView *)v6->_passcodeInputView setUserInteractionEnabled:1];
    [(BFFPasscodeInputView *)v6->_passcodeInputView addGestureRecognizer:v22];
  }

  return v6;
}

- (void)viewWillAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = ClarityUIAdminPasscodeSetupController;
  [(ClarityUIAdminPasscodeSetupController *)&v8 viewWillAppear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"keyboardWillShow:" name:UIKeyboardWillShowNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"keyboardWillHide:" name:UIKeyboardWillHideNotification object:0];

  [(ClarityUIAdminPasscodeSetupController *)self setPasscodeState:0];
  [(ClarityUIAdminPasscodeSetupController *)self setInitialPasscode:&stru_25D420];
  v6 = settingsLocString(@"ADMIN_PASSCODE_DESCRIPTION_INITIAL_ENTRY", @"ClarityUISettings");
  v7 = [(BFFPasscodeInputView *)self->_passcodeInputView instructions];
  [v7 setText:v6];

  [(BFFPasscodeInputView *)self->_passcodeInputView sizeToFit];
  [(BFFPasscodeInputView *)self->_passcodeInputView setPasscode:&stru_25D420];
  [(BFFPasscodeInputView *)self->_passcodeInputView invalidateIntrinsicContentSize];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = ClarityUIAdminPasscodeSetupController;
  [(ClarityUIAdminPasscodeSetupController *)&v4 viewDidAppear:a3];
  [(BFFPasscodeInputView *)self->_passcodeInputView becomeFirstResponder];
}

- (void)passcodeInput:(id)a3 enteredPasscode:(id)a4
{
  v6 = a4;
  v12 = v6;
  if (self->_passcodeState == 1)
  {
    if ([(NSString *)self->_initialPasscode isEqualToString:v6])
    {
      [(ClarityUIAdminPasscodeSetupController *)self _axShowWarmingView:v12];
      goto LABEL_7;
    }

    self->_passcodeState = 2;
    initialPasscode = self->_initialPasscode;
    self->_initialPasscode = 0;

    [(BFFPasscodeInputView *)self->_passcodeInputView setPasscode:&stru_25D420];
    v7 = [(ClarityUIAdminPasscodeSetupController *)self _axPasscodeInputView];
    v8 = self;
    v9 = v7;
    v10 = 1;
  }

  else
  {
    self->_passcodeState = 1;
    objc_storeStrong(&self->_initialPasscode, a4);
    [(BFFPasscodeInputView *)self->_passcodeInputView setPasscode:&stru_25D420];
    v7 = [(ClarityUIAdminPasscodeSetupController *)self _axPasscodeInputView];
    v8 = self;
    v9 = v7;
    v10 = 2;
  }

  [(ClarityUIAdminPasscodeSetupController *)v8 _axTransitionToPasscodeInput:v9 withAnimation:v10];

LABEL_7:
}

- (id)_axPasscodeInputView
{
  v3 = [BFFSimplePasscodeInputView alloc];
  v4 = [v3 initWithFrame:AXBackBoardServerClarityUIAdminPasscodeLength numberOfEntryFields:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v5 = [(ClarityUIAdminPasscodeSetupController *)self passcodeState];
  if (v5 <= 2)
  {
    v6 = settingsLocString(off_2578B0[v5], @"ClarityUISettings");
    v7 = [v4 instructions];
    [v7 setText:v6];
  }

  return v4;
}

- (void)_axTransitionToPasscodeInput:(id)a3 withAnimation:(int)a4
{
  v7 = a3;
  v8 = [(ClarityUIAdminPasscodeSetupController *)self view];
  v9 = [v8 _shouldReverseLayoutDirection];

  v10 = [(ClarityUIAdminPasscodeSetupController *)self contentView];
  if (((a4 == 2) & v9) != 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = a4;
  }

  if (((a4 == 1) & v9) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v11;
  }

  v13 = self->_passcodeInputView;
  [(BFFPasscodeInputView *)v13 setEnabled:0];
  [(BFFPasscodeInputView *)v13 setDelegate:0];
  objc_storeStrong(&self->_passcodeInputView, a3);
  [v7 becomeFirstResponder];
  [v10 frame];
  v15 = v14;
  [(BFFPasscodeInputView *)v13 center];
  v17 = v16;
  v19 = v18;
  v20 = v16 + v15;
  v21 = v16 - v15;
  [v7 frame];
  v23 = v22;
  v25 = v24;
  [(BFFPasscodeInputView *)v13 frame];
  [v7 setFrame:{v23, v25}];
  if (v12 == 2)
  {
    v26 = v20;
  }

  else
  {
    v26 = v21;
  }

  [v7 setCenter:{v26, v19}];
  [v10 addSubview:v7];
  [UITransitionView defaultDurationForTransition:v12];
  v28 = v27;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = __84__ClarityUIAdminPasscodeSetupController__axTransitionToPasscodeInput_withAnimation___block_invoke;
  v35[3] = &unk_2577F0;
  v36 = v13;
  v44 = v12;
  v38 = v21;
  v39 = v19;
  v40 = v20;
  v41 = v19;
  v37 = v7;
  v42 = v17;
  v43 = v19;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = __84__ClarityUIAdminPasscodeSetupController__axTransitionToPasscodeInput_withAnimation___block_invoke_2;
  v31[3] = &unk_257818;
  v32 = v36;
  v33 = v37;
  v34 = self;
  v29 = v37;
  v30 = v36;
  [UIView animateWithDuration:v35 animations:v31 completion:v28];
}

id __84__ClarityUIAdminPasscodeSetupController__axTransitionToPasscodeInput_withAnimation___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 72;
  if (*(a1 + 96) == 2)
  {
    v3 = 56;
  }

  v4 = 64;
  if (*(a1 + 96) == 2)
  {
    v4 = 48;
  }

  [v2 setCenter:{*(a1 + v4), *(a1 + v3)}];
  v5 = *(a1 + 40);
  v6 = *(a1 + 80);
  v7 = *(a1 + 88);

  return [v5 setCenter:{v6, v7}];
}

void __84__ClarityUIAdminPasscodeSetupController__axTransitionToPasscodeInput_withAnimation___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  [*(a1 + 40) setDelegate:*(a1 + 48)];
  v2 = UIAccessibilityLayoutChangedNotification;
  v3 = *(a1 + 40);

  UIAccessibilityPostNotification(v2, v3);
}

- (void)_axShowWarmingView:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [ClarityUIPasswordRecoveryWarmingController alloc];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = __60__ClarityUIAdminPasscodeSetupController__axShowWarmingView___block_invoke;
  v12 = &unk_257840;
  objc_copyWeak(&v15, &location);
  v6 = v4;
  v13 = v6;
  v14 = self;
  v7 = [(ClarityUIPasswordRecoveryWarmingController *)v5 initWithCompletion:&v9];
  v8 = [(ClarityUIAdminPasscodeSetupController *)self navigationController:v9];
  [v8 pushViewController:v7 animated:1];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __60__ClarityUIAdminPasscodeSetupController__axShowWarmingView___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _axShowDoneControllerWithPasscode:*(a1 + 32)];
  }

  else
  {
    WeakRetained = +[CLFSettings sharedInstance];
    v3 = *(a1 + 32);
    v4 = +[AXBackBoardServer server];
    [v4 setClarityUIAdminPasscode:v3];

    [WeakRetained setAdminPasscodeRecoveryAppleID:0];
    (*(*(*(a1 + 40) + 8) + 16))();
  }
}

- (void)_axShowDoneControllerWithPasscode:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setIsEphemeral:1];
  [v5 setAuthenticationType:2];
  [v5 setShouldPromptForPasswordOnly:1];
  [v5 setPresentingViewController:self];
  v6 = settingsLocString(@"ADMIN_PASSCODE_RECOVERY_TITLE", @"ClarityUISettings");
  [v5 setTitle:v6];

  v7 = settingsLocString(@"ADMIN_PASSCODE_RECOVERY_EXPLANATION", @"ClarityUISettings");
  [v5 setReason:v7];

  v8 = settingsLocString(@"ADMIN_PASSCODE_OK_BUTTON", @"ClarityUISettings");
  [v5 setDefaultButtonString:v8];

  v9 = settingsLocString(@"ADMIN_PASSCODE_CANCEL_BUTTON", @"ClarityUISettings");
  [v5 setCancelButtonString:v9];

  v10 = objc_opt_new();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __75__ClarityUIAdminPasscodeSetupController__axShowDoneControllerWithPasscode___block_invoke;
  v12[3] = &unk_257890;
  v13 = v4;
  v14 = self;
  v11 = v4;
  [v10 authenticateWithContext:v5 completion:v12];
}

void __75__ClarityUIAdminPasscodeSetupController__axShowDoneControllerWithPasscode___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[NSOperationQueue mainQueue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __75__ClarityUIAdminPasscodeSetupController__axShowDoneControllerWithPasscode___block_invoke_2;
  v12[3] = &unk_256470;
  v13 = v5;
  v14 = v6;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v15 = v8;
  v16 = v9;
  v10 = v6;
  v11 = v5;
  [v7 addOperationWithBlock:v12];
}

void __75__ClarityUIAdminPasscodeSetupController__axShowDoneControllerWithPasscode___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) objectForKeyedSubscript:AKAuthenticationAlternateDSIDKey];
  v4 = +[CLFSettings sharedInstance];
  v5 = (a1 + 40);
  if (*(a1 + 40))
  {
    v6 = 1;
  }

  else
  {
    v6 = v3 == 0;
  }

  if (v6)
  {
    v7 = settingsLocString(@"ADMIN_PASSCODE_RECOVERY_SKIP_ALERT", @"ClarityUISettings");
    v8 = settingsLocString(@"ADMIN_PASSCODE_RECOVERY_PROVIDE_BUTTON", @"ClarityUISettings");
    v9 = [*v5 domain];
    if ([v9 isEqualToString:AKAppleIDAuthenticationErrorDomain])
    {
      v10 = [*v5 code];

      if (v10 == -7003)
      {
        v11 = settingsLocString(@"ADMIN_PASSCODE_RECOVERY_CONFIRMATION", @"ClarityUISettings");
LABEL_19:
        v18 = [UIAlertController alertControllerWithTitle:v11 message:v7 preferredStyle:1];
        v19 = settingsLocString(@"ADMIN_PASSCODE_RECOVERY_SKIP_BUTTON", @"ClarityUISettings");
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = __75__ClarityUIAdminPasscodeSetupController__axShowDoneControllerWithPasscode___block_invoke_386;
        v28[3] = &unk_257868;
        v29 = *(a1 + 48);
        v20 = v4;
        v21 = *(a1 + 56);
        v30 = v20;
        v31 = v21;
        v22 = [UIAlertAction actionWithTitle:v19 style:0 handler:v28];
        [v18 addAction:v22];

        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = __75__ClarityUIAdminPasscodeSetupController__axShowDoneControllerWithPasscode___block_invoke_2_388;
        v26[3] = &unk_256AA0;
        v25 = *(a1 + 48);
        v23 = v25.i64[0];
        v27 = vextq_s8(v25, v25, 8uLL);
        v24 = [UIAlertAction actionWithTitle:v8 style:1 handler:v26];
        [v18 addAction:v24];

        [*(a1 + 56) presentViewController:v18 animated:1 completion:0];
        goto LABEL_20;
      }
    }

    else
    {
    }

    if (*v5)
    {
      v14 = CLFLogSettings();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __75__ClarityUIAdminPasscodeSetupController__axShowDoneControllerWithPasscode___block_invoke_2_cold_1((a1 + 40), v14);
      }
    }

    else
    {
      if (v3)
      {
        goto LABEL_15;
      }

      v14 = CLFLogSettings();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        __75__ClarityUIAdminPasscodeSetupController__axShowDoneControllerWithPasscode___block_invoke_2_cold_2(v2, v14);
      }
    }

LABEL_15:
    v11 = settingsLocString(@"ADMIN_PASSCODE_RECOVERY_CONNECTIVITY_ERROR_TITLE", @"ClarityUISettings");
    if (MGGetBoolAnswer())
    {
      v15 = @"ADMIN_PASSCODE_RECOVERY_CONNECTIVITY_ERROR_DESCRIPTION_WLAN";
    }

    else
    {
      v15 = @"ADMIN_PASSCODE_RECOVERY_CONNECTIVITY_ERROR_DESCRIPTION_WIFI";
    }

    v16 = settingsLocString(v15, @"ClarityUISettings");

    v17 = settingsLocString(@"ADMIN_PASSCODE_RECOVERY_CONNECTIVITY_TRY_AGAIN", @"ClarityUISettings");

    v8 = v17;
    v7 = v16;
    goto LABEL_19;
  }

  v12 = *(a1 + 48);
  v13 = +[AXBackBoardServer server];
  [v13 setClarityUIAdminPasscode:v12];

  [v4 setAdminPasscodeRecoveryAppleID:v3];
  (*(*(*(a1 + 56) + 8) + 16))();
LABEL_20:
}

uint64_t __75__ClarityUIAdminPasscodeSetupController__axShowDoneControllerWithPasscode___block_invoke_386(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[AXBackBoardServer server];
  [v3 setClarityUIAdminPasscode:v2];

  [*(a1 + 40) setAdminPasscodeRecoveryAppleID:0];
  v4 = *(*(*(a1 + 48) + 8) + 16);

  return v4();
}

- (void)keyboardWillShow:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:UIKeyboardFrameEndUserInfoKey];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(ClarityUIAdminPasscodeSetupController *)self view];
  [v14 convertRect:0 fromView:{v7, v9, v11, v13}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = [(ClarityUIAdminPasscodeSetupController *)self view];
  [v23 bounds];
  MaxY = CGRectGetMaxY(v29);
  v30.origin.x = v16;
  v30.origin.y = v18;
  v30.size.width = v20;
  v30.size.height = v22;
  v25 = MaxY - CGRectGetMinY(v30);

  if (v25 <= 0.0)
  {
    v26 = -0.0;
  }

  else
  {
    v26 = -v25;
  }

  v27 = [(ClarityUIAdminPasscodeSetupController *)self passcodeBottomConstraint];
  [v27 setConstant:v26];
}

- (void)keyboardWillHide:(id)a3
{
  v3 = [(ClarityUIAdminPasscodeSetupController *)self passcodeBottomConstraint];
  [v3 setConstant:0.0];
}

void __75__ClarityUIAdminPasscodeSetupController__axShowDoneControllerWithPasscode___block_invoke_2_cold_1(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Failed to authenticate recovery Apple ID: %{public}@", &v3, 0xCu);
}

void __75__ClarityUIAdminPasscodeSetupController__axShowDoneControllerWithPasscode___block_invoke_2_cold_2(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138477827;
  v4 = v2;
  _os_log_fault_impl(&dword_0, a2, OS_LOG_TYPE_FAULT, "Authenticated user without an altDSID: %{private}@", &v3, 0xCu);
}

@end