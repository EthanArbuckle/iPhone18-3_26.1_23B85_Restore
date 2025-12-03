@interface PasswordViewController
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldReturn:(id)return;
- (void)_cancel;
- (void)_configureAndShowAlertController;
- (void)_passwordConfirm;
- (void)_passwordEntered;
- (void)_passwordNext;
- (void)_setCredential:(id)credential;
- (void)didReceiveAuthenticationData;
- (void)loadView;
@end

@implementation PasswordViewController

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = PasswordViewController;
  [(PasswordViewController *)&v5 loadView];
  view = [(PasswordViewController *)self view];
  v4 = [UIColor colorWithWhite:0.0 alpha:0.3];
  [view setBackgroundColor:v4];
}

- (void)didReceiveAuthenticationData
{
  v7.receiver = self;
  v7.super_class = PasswordViewController;
  [(TransitionViewController *)&v7 didReceiveAuthenticationData];
  internalInfo = [(TransitionViewController *)self internalInfo];
  v4 = [internalInfo objectForKey:@"PasswordMode"];
  self->_mode = [v4 unsignedIntValue];

  self->_state = self->_mode == 0;
  authenticationSubtitle = [(TransitionViewController *)self authenticationSubtitle];
  subtitle = self->_subtitle;
  self->_subtitle = authenticationSubtitle;
}

- (void)_configureAndShowAlertController
{
  v5 = [UIAlertController alertControllerWithTitle:0 message:0 preferredStyle:1];
  alertController = self->_alertController;
  self->_alertController = v5;

  objc_initWeak(location, self);
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"PASSWORD_PLACEHOLDER" value:&stru_1000992A0 table:@"MobileUI"];

  v9 = self->_alertController;
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_10000B0D0;
  v51[3] = &unk_1000965C0;
  objc_copyWeak(&v53, location);
  v41 = v8;
  v52 = v41;
  [(UIAlertController *)v9 addTextFieldWithConfigurationHandler:v51];
  v10 = objc_opt_new();
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"PASSWORD_ALERT_CANCEL" value:&stru_1000992A0 table:@"MobileUI"];
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_10000B188;
  v49[3] = &unk_1000965E8;
  objc_copyWeak(&v50, location);
  v13 = [UIAlertAction actionWithTitle:v12 style:1 handler:v49];
  [v10 addObject:v13];

  state = self->_state;
  if (!state)
  {
    callerBundleId = [(TransitionViewController *)self callerBundleId];
    if (callerBundleId && ([(TransitionViewController *)self callerName], (v26 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v40 = [NSBundle bundleForClass:objc_opt_class()];
      v39 = [v40 localizedStringForKey:@"APP_ASKING_CURRENT_PASSWORD" value:&stru_1000992A0 table:@"MobileUI"];
      callerName = [(TransitionViewController *)self callerName];
      v27 = [NSString stringWithFormat:v39, callerName];
      v28 = 0;
      v29 = 1;
    }

    else
    {
      v3 = [NSBundle bundleForClass:objc_opt_class()];
      v27 = [v3 localizedStringForKey:@"ENTER_CURRENT_PASSWORD" value:&stru_1000992A0 table:@"MobileUI"];
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
      if (!callerBundleId)
      {
LABEL_28:

        v30 = [NSBundle bundleForClass:objc_opt_class()];
        v31 = [v30 localizedStringForKey:@"PASSWORD_ALERT_DONE" value:&stru_1000992A0 table:@"MobileUI"];
        v32 = v47;
        v47[0] = _NSConcreteStackBlock;
        v47[1] = 3221225472;
        v47[2] = sub_10000B1C8;
        v47[3] = &unk_1000965E8;
        objc_copyWeak(&v48, location);
        v33 = [UIAlertAction actionWithTitle:v31 style:0 handler:v47];
        goto LABEL_38;
      }

LABEL_27:

      goto LABEL_28;
    }

    if (!callerBundleId)
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

    callerBundleId2 = [(TransitionViewController *)self callerBundleId];
    if (callerBundleId2 && ([(TransitionViewController *)self callerName], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v40 = [NSBundle bundleForClass:objc_opt_class()];
      v39 = [v40 localizedStringForKey:@"APP_ASKING_CONFIRM_PASSWORD" value:&stru_1000992A0 table:@"MobileUI"];
      callerName = [(TransitionViewController *)self callerName];
      v17 = [NSString stringWithFormat:v39, callerName];
      v18 = 0;
      v19 = 1;
    }

    else
    {
      v3 = [NSBundle bundleForClass:objc_opt_class()];
      v17 = [v3 localizedStringForKey:@"CONFIRM_NEW_PASSWORD" value:&stru_1000992A0 table:@"MobileUI"];
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
      if (!callerBundleId2)
      {
LABEL_37:

        authenticationSubtitle = [(TransitionViewController *)self authenticationSubtitle];
        subtitle = self->_subtitle;
        self->_subtitle = authenticationSubtitle;

        v30 = [NSBundle bundleForClass:objc_opt_class()];
        v31 = [v30 localizedStringForKey:@"PASSWORD_ALERT_DONE" value:&stru_1000992A0 table:@"MobileUI"];
        v32 = v43;
        v43[0] = _NSConcreteStackBlock;
        v43[1] = 3221225472;
        v43[2] = sub_10000B248;
        v43[3] = &unk_1000965E8;
        objc_copyWeak(&v44, location);
        v33 = [UIAlertAction actionWithTitle:v31 style:0 handler:v43];
        goto LABEL_38;
      }

LABEL_36:

      goto LABEL_37;
    }

    if (!callerBundleId2)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  callerBundleId3 = [(TransitionViewController *)self callerBundleId];
  if (callerBundleId3 && ([(TransitionViewController *)self callerName], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v40 = [NSBundle bundleForClass:objc_opt_class()];
    v39 = [v40 localizedStringForKey:@"APP_ASKING_NEW_PASSWORD" value:&stru_1000992A0 table:@"MobileUI"];
    callerName = [(TransitionViewController *)self callerName];
    v22 = [NSString stringWithFormat:v39, callerName];
    v23 = 0;
    v24 = 1;
  }

  else
  {
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v22 = [v3 localizedStringForKey:@"ENTER_NEW_PASSWORD" value:&stru_1000992A0 table:@"MobileUI"];
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

    if (!callerBundleId3)
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
  if (callerBundleId3)
  {
LABEL_18:
  }

LABEL_19:

  v30 = [NSBundle bundleForClass:objc_opt_class()];
  v31 = [v30 localizedStringForKey:@"PASSWORD_ALERT_NEXT" value:&stru_1000992A0 table:@"MobileUI"];
  v32 = v45;
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_10000B208;
  v45[3] = &unk_1000965E8;
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
  authenticationTitle = [(TransitionViewController *)self authenticationTitle];
  [(UIAlertController *)v37 setTitle:authenticationTitle];

  [(UIAlertController *)self->_alertController setMessage:self->_subtitle];
  [(UIAlertController *)self->_alertController _setActions:v10];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B288;
  block[3] = &unk_100096148;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v50);

  objc_destroyWeak(&v53);
  objc_destroyWeak(location);
}

- (void)_passwordEntered
{
  text = [(UITextField *)self->_passwordField text];
  v4 = [LACSecureData secureDataWithString:text];

  [(PasswordViewController *)self _setCredential:v4];
  [v4 reset];
}

- (void)_passwordNext
{
  text = [(UITextField *)self->_passwordField text];
  v4 = [text length];

  if (v4)
  {
    text2 = [(UITextField *)self->_passwordField text];
    v6 = [LACSecureData secureDataWithString:text2];
    newPassword = self->_newPassword;
    self->_newPassword = v6;

    self->_state = 2;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B434;
  block[3] = &unk_100096148;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_passwordConfirm
{
  text = [(UITextField *)self->_passwordField text];
  v4 = [LACSecureData secureDataWithString:text];

  if ([(LACSecureData *)self->_newPassword isEqual:v4])
  {
    [(PasswordViewController *)self _setCredential:v4];
  }

  else
  {
    self->_state = 1;
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"CONFIRM_NEW_PASSWORD_MISMATCH" value:&stru_1000992A0 table:@"MobileUI"];
    subtitle = self->_subtitle;
    self->_subtitle = v6;

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000B5A4;
    block[3] = &unk_100096148;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  [v4 reset];
  [(LACSecureData *)self->_newPassword reset];
}

- (void)_setCredential:(id)credential
{
  credentialCopy = credential;
  v5 = [LACACMHelper alloc];
  cachedExternalizedContext = [(TransitionViewController *)self cachedExternalizedContext];
  externalizedContext = [cachedExternalizedContext externalizedContext];
  v8 = [v5 initWithExternalizedContext:externalizedContext];

  options = [(TransitionViewController *)self options];
  v10 = [options objectForKey:&off_10009AA58];
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
  v14 = [v8 replacePassphraseCredentialWithPurpose:0 passphrase:credentialCopy scope:v13 error:&v18];

  v15 = v18;
  if (v14)
  {
    v21 = @"Result";
    v19 = &off_10009AA70;
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

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  stringCopy = string;
  text = [fieldCopy text];
  v12 = [text length];

  if (location + length <= v12)
  {
    v13 = &v12[[stringCopy length]];
    if (&v13[-length] <= 0x80)
    {
      v14 = [stringCopy length];
      if (v14 && location == v12 && !length)
      {
        [fieldCopy insertText:stringCopy];
      }

      else if (!v14 && location == v12 - 1 && length == 1)
      {
        [fieldCopy deleteBackward];
      }

      [(UIAlertAction *)self->_currentConfirmAction setEnabled:v13 != length];
    }
  }

  return 0;
}

- (BOOL)textFieldShouldReturn:(id)return
{
  text = [return text];
  v4 = [text length] != 0;

  return v4;
}

@end