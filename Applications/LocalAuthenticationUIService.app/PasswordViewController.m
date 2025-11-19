@interface PasswordViewController
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (BOOL)textFieldShouldReturn:(id)a3;
- (void)_cancel;
- (void)_configureAndShowAlertController;
- (void)_passwordConfirm;
- (void)_passwordEntered;
- (void)_passwordNext;
- (void)_setCredential:(id)a3;
- (void)didReceiveAuthenticationData;
- (void)loadView;
@end

@implementation PasswordViewController

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = PasswordViewController;
  [(PasswordViewController *)&v5 loadView];
  v3 = [(PasswordViewController *)self view];
  v4 = [UIColor colorWithWhite:0.0 alpha:0.3];
  [v3 setBackgroundColor:v4];
}

- (void)didReceiveAuthenticationData
{
  v7.receiver = self;
  v7.super_class = PasswordViewController;
  [(TransitionViewController *)&v7 didReceiveAuthenticationData];
  v3 = [(TransitionViewController *)self internalInfo];
  v4 = [v3 objectForKey:@"PasswordMode"];
  self->_mode = [v4 unsignedIntValue];

  self->_state = self->_mode == 0;
  v5 = [(TransitionViewController *)self authenticationSubtitle];
  subtitle = self->_subtitle;
  self->_subtitle = v5;
}

- (void)_configureAndShowAlertController
{
  v5 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:1];
  alertController = self->_alertController;
  self->_alertController = v5;

  objc_initWeak(location, self);
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"PASSWORD_PLACEHOLDER" value:&stru_1000ADB50 table:@"MobileUI"];

  v9 = self->_alertController;
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = __58__PasswordViewController__configureAndShowAlertController__block_invoke;
  v51[3] = &unk_1000AAAB8;
  objc_copyWeak(&v53, location);
  v41 = v8;
  v52 = v41;
  [(UIAlertController *)v9 addTextFieldWithConfigurationHandler:v51];
  v10 = objc_opt_new();
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"PASSWORD_ALERT_CANCEL" value:&stru_1000ADB50 table:@"MobileUI"];
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = __58__PasswordViewController__configureAndShowAlertController__block_invoke_2;
  v49[3] = &unk_1000AAAE0;
  objc_copyWeak(&v50, location);
  v13 = [UIAlertAction actionWithTitle:v12 style:1 handler:v49];
  [v10 addObject:v13];

  state = self->_state;
  if (!state)
  {
    v25 = [(TransitionViewController *)self callerBundleId];
    if (v25 && ([(TransitionViewController *)self callerName], (v26 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v40 = [NSBundle bundleForClass:objc_opt_class()];
      v39 = [v40 localizedStringForKey:@"APP_ASKING_CURRENT_PASSWORD" value:&stru_1000ADB50 table:@"MobileUI"];
      v2 = [(TransitionViewController *)self callerName];
      v27 = [NSString stringWithFormat:v39, v2];
      v28 = 0;
      v29 = 1;
    }

    else
    {
      v3 = [NSBundle bundleForClass:objc_opt_class()];
      v27 = [v3 localizedStringForKey:@"ENTER_CURRENT_PASSWORD" value:&stru_1000ADB50 table:@"MobileUI"];
      v26 = 0;
      v29 = 0;
      v28 = 1;
    }

    [(TransitionViewController *)self setAuthenticationTitle:v27];
    if (v28)
    {

      if (!v29)
      {
        goto LABEL_26;
      }
    }

    else if (!v29)
    {
LABEL_26:
      if (!v25)
      {
LABEL_28:

        v30 = [NSBundle bundleForClass:objc_opt_class()];
        v31 = [v30 localizedStringForKey:@"PASSWORD_ALERT_DONE" value:&stru_1000ADB50 table:@"MobileUI"];
        v32 = v47;
        v47[0] = _NSConcreteStackBlock;
        v47[1] = 3221225472;
        v47[2] = __58__PasswordViewController__configureAndShowAlertController__block_invoke_3;
        v47[3] = &unk_1000AAAE0;
        objc_copyWeak(&v48, location);
        v33 = [UIAlertAction actionWithTitle:v31 style:0 handler:v47];
        goto LABEL_38;
      }

LABEL_27:

      goto LABEL_28;
    }

    if (!v25)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (state != 1)
  {
    if (state != 2)
    {
      goto LABEL_39;
    }

    v15 = [(TransitionViewController *)self callerBundleId];
    if (v15 && ([(TransitionViewController *)self callerName], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v40 = [NSBundle bundleForClass:objc_opt_class()];
      v39 = [v40 localizedStringForKey:@"APP_ASKING_CONFIRM_PASSWORD" value:&stru_1000ADB50 table:@"MobileUI"];
      v2 = [(TransitionViewController *)self callerName];
      v17 = [NSString stringWithFormat:v39, v2];
      v18 = 0;
      v19 = 1;
    }

    else
    {
      v3 = [NSBundle bundleForClass:objc_opt_class()];
      v17 = [v3 localizedStringForKey:@"CONFIRM_NEW_PASSWORD" value:&stru_1000ADB50 table:@"MobileUI"];
      v16 = 0;
      v19 = 0;
      v18 = 1;
    }

    [(TransitionViewController *)self setAuthenticationTitle:v17];
    if (v18)
    {

      if (!v19)
      {
        goto LABEL_35;
      }
    }

    else if (!v19)
    {
LABEL_35:
      if (!v15)
      {
LABEL_37:

        v34 = [(TransitionViewController *)self authenticationSubtitle];
        subtitle = self->_subtitle;
        self->_subtitle = v34;

        v30 = [NSBundle bundleForClass:objc_opt_class()];
        v31 = [v30 localizedStringForKey:@"PASSWORD_ALERT_DONE" value:&stru_1000ADB50 table:@"MobileUI"];
        v32 = v43;
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = __58__PasswordViewController__configureAndShowAlertController__block_invoke_5;
        v43[3] = &unk_1000AAAE0;
        objc_copyWeak(&v44, location);
        v33 = [UIAlertAction actionWithTitle:v31 style:0 handler:v43];
        goto LABEL_38;
      }

LABEL_36:

      goto LABEL_37;
    }

    if (!v15)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v20 = [(TransitionViewController *)self callerBundleId];
  if (v20 && ([(TransitionViewController *)self callerName], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v40 = [NSBundle bundleForClass:objc_opt_class()];
    v39 = [v40 localizedStringForKey:@"APP_ASKING_NEW_PASSWORD" value:&stru_1000ADB50 table:@"MobileUI"];
    v2 = [(TransitionViewController *)self callerName];
    v22 = [NSString stringWithFormat:v39, v2];
    v23 = 0;
    v24 = 1;
  }

  else
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v22 = [v3 localizedStringForKey:@"ENTER_NEW_PASSWORD" value:&stru_1000ADB50 table:@"MobileUI"];
    v21 = 0;
    v24 = 0;
    v23 = 1;
  }

  [(TransitionViewController *)self setAuthenticationTitle:v22];
  if (v23)
  {

    if (!v24)
    {
      goto LABEL_17;
    }

LABEL_21:

    if (!v20)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v24)
  {
    goto LABEL_21;
  }

LABEL_17:
  if (v20)
  {
LABEL_18:
  }

LABEL_19:

  v30 = [NSBundle bundleForClass:objc_opt_class()];
  v31 = [v30 localizedStringForKey:@"PASSWORD_ALERT_NEXT" value:&stru_1000ADB50 table:@"MobileUI"];
  v32 = v45;
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = __58__PasswordViewController__configureAndShowAlertController__block_invoke_4;
  v45[3] = &unk_1000AAAE0;
  objc_copyWeak(&v46, location);
  v33 = [UIAlertAction actionWithTitle:v31 style:0 handler:v45];
LABEL_38:
  currentConfirmAction = self->_currentConfirmAction;
  self->_currentConfirmAction = v33;

  objc_destroyWeak(v32 + 4);
LABEL_39:
  [(UIAlertAction *)self->_currentConfirmAction setEnabled:0];
  [v10 addObject:self->_currentConfirmAction];
  v37 = self->_alertController;
  v38 = [(TransitionViewController *)self authenticationTitle];
  [(UIAlertController *)v37 setTitle:v38];

  [(UIAlertController *)self->_alertController setMessage:self->_subtitle];
  [(UIAlertController *)self->_alertController _setActions:v10];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __58__PasswordViewController__configureAndShowAlertController__block_invoke_6;
  block[3] = &unk_1000AA3C0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v50);

  objc_destroyWeak(&v53);
  objc_destroyWeak(location);
}

void __58__PasswordViewController__configureAndShowAlertController__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 28, a2);
    [v7 setSecureTextEntry:1];
    [v7 setPlaceholder:*(a1 + 32)];
    [v7 setKeyboardAppearance:1];
    v6 = objc_loadWeakRetained((a1 + 40));
    [v7 setDelegate:v6];
  }
}

void __58__PasswordViewController__configureAndShowAlertController__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cancel];
}

void __58__PasswordViewController__configureAndShowAlertController__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _passwordEntered];
}

void __58__PasswordViewController__configureAndShowAlertController__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _passwordNext];
}

void __58__PasswordViewController__configureAndShowAlertController__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _passwordConfirm];
}

- (void)_passwordEntered
{
  v3 = [(UITextField *)self->_passwordField text];
  v4 = [LACSecureData secureDataWithString:v3];

  [(PasswordViewController *)self _setCredential:v4];
  [v4 reset];
}

- (void)_passwordNext
{
  v3 = [(UITextField *)self->_passwordField text];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(UITextField *)self->_passwordField text];
    v6 = [LACSecureData secureDataWithString:v5];
    newPassword = self->_newPassword;
    self->_newPassword = v6;

    self->_state = 2;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __39__PasswordViewController__passwordNext__block_invoke;
  block[3] = &unk_1000AA3C0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_passwordConfirm
{
  v3 = [(UITextField *)self->_passwordField text];
  v4 = [LACSecureData secureDataWithString:v3];

  if ([(LACSecureData *)self->_newPassword isEqual:v4])
  {
    [(PasswordViewController *)self _setCredential:v4];
  }

  else
  {
    self->_state = 1;
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"CONFIRM_NEW_PASSWORD_MISMATCH" value:&stru_1000ADB50 table:@"MobileUI"];
    subtitle = self->_subtitle;
    self->_subtitle = v6;

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __42__PasswordViewController__passwordConfirm__block_invoke;
    block[3] = &unk_1000AA3C0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  [v4 reset];
  [(LACSecureData *)self->_newPassword reset];
}

- (void)_setCredential:(id)a3
{
  v4 = a3;
  v5 = [LACACMHelper alloc];
  v6 = [(TransitionViewController *)self cachedExternalizedContext];
  v7 = [v6 externalizedContext];
  v8 = [v5 initWithExternalizedContext:v7];

  v9 = [(TransitionViewController *)self options];
  v10 = [v9 objectForKey:&off_1000AF3F8];
  [v10 doubleValue];
  v12 = v11;

  if (v12 == 0.0)
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  v18 = 0;
  v14 = [v8 replacePassphraseCredentialWithPurpose:0 passphrase:v4 scope:v13 error:&v18];

  v15 = v18;
  if (v14)
  {
    v21 = @"Result";
    v19 = &off_1000AF410;
    v20 = &__kCFBooleanTrue;
    v16 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v22 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    [(TransitionViewController *)self uiSuccessWithResult:v17];
  }

  else
  {
    [(TransitionViewController *)self uiFailureWithError:v15];
  }
}

- (void)_cancel
{
  [(LACSecureData *)self->_newPassword reset];

  [(TransitionViewController *)self uiCancel];
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = a3;
  v10 = a5;
  v11 = [v9 text];
  v12 = [v11 length];

  if (location + length <= v12)
  {
    v13 = &v12[[v10 length]];
    if (&v13[-length] <= 0x80)
    {
      v14 = [v10 length];
      if (v14 && location == v12 && !length)
      {
        [v9 insertText:v10];
      }

      else if (!v14 && location == v12 - 1 && length == 1)
      {
        [v9 deleteBackward];
      }

      [(UIAlertAction *)self->_currentConfirmAction setEnabled:v13 != length];
    }
  }

  return 0;
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v3 = [a3 text];
  v4 = [v3 length] != 0;

  return v4;
}

@end