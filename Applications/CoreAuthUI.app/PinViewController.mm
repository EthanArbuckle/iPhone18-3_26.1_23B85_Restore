@interface PinViewController
- (id)_createBlurView;
- (int64_t)_backdropStyle;
- (void)_updateCurrentAppearanceIfNeeded;
- (void)didReceiveAuthenticationData;
- (void)loadView;
- (void)pinEntered:(id)entered;
- (void)viewDidLayoutSubviews;
@end

@implementation PinViewController

- (void)loadView
{
  v3 = [PinView alloc];
  pinLength = self->_pinLength;
  pinMinLength = [(PinViewController *)self pinMinLength];
  pinMaxLength = [(PinViewController *)self pinMaxLength];
  pinCharset = [(PinViewController *)self pinCharset];
  v8 = [(PinView *)v3 initWithPinLength:pinLength minLength:pinMinLength maxLength:pinMaxLength charset:pinCharset];
  pinView = self->_pinView;
  self->_pinView = v8;

  v10 = self->_pinView;
  authenticationTitle = [(TransitionViewController *)self authenticationTitle];
  [(PinView *)v10 setTitle:authenticationTitle];

  [(PinView *)self->_pinView setDelegate:self];
  [(PinView *)self->_pinView setViewController:self];
  if (![(TransitionViewController *)self isRemoteViewController])
  {
    _createBlurView = [(PinViewController *)self _createBlurView];
    blurView = self->_blurView;
    self->_blurView = _createBlurView;

    [(PinView *)self->_pinView addSubview:self->_blurView];
    [(PinView *)self->_pinView sendSubviewToBack:self->_blurView];
    v14 = [UIButton buttonWithType:1];
    [v14 addTarget:self action:"uiCancel" forControlEvents:1];
    v15 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"CANCEL" value:&stru_1000992A0 table:@"MobileUI"];
    [v14 setTitle:v16 forState:0];

    v17 = +[UIColor labelColor];
    [v14 setTitleColor:v17 forState:0];

    [v14 sizeToFit];
    [(PinView *)self->_pinView setCancelButton:v14];
  }

  v18 = self->_pinView;

  [(PinViewController *)self setView:v18];
}

- (id)_createBlurView
{
  v2 = [_UIBackdropViewSettings settingsForPrivateStyle:[(PinViewController *)self _backdropStyle] graphicsQuality:100];
  [v2 setBackdropVisible:1];
  v3 = [[_UIBackdropView alloc] initWithSettings:v2];
  [v3 setAutoresizingMask:18];
  [v3 setConfiguration:1];
  [v3 setAlpha:1.0];

  return v3;
}

- (int64_t)_backdropStyle
{
  traitCollection = [(PinViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 1000 || userInterfaceStyle == 2)
  {
    return 2032;
  }

  else
  {
    return 2010;
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = PinViewController;
  [(PinViewController *)&v3 viewDidLayoutSubviews];
  [(PinViewController *)self _updateCurrentAppearanceIfNeeded];
}

- (void)_updateCurrentAppearanceIfNeeded
{
  traitCollection = [(PinViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (self->_currentInterfaceStyle != userInterfaceStyle)
  {
    self->_currentInterfaceStyle = userInterfaceStyle;
    if (![(TransitionViewController *)self isRemoteViewController])
    {
      [(_UIBackdropView *)self->_blurView removeFromSuperview];
      _createBlurView = [(PinViewController *)self _createBlurView];
      blurView = self->_blurView;
      self->_blurView = _createBlurView;

      [(PinView *)self->_pinView addSubview:self->_blurView];
      pinView = self->_pinView;
      v8 = self->_blurView;

      [(PinView *)pinView sendSubviewToBack:v8];
    }
  }
}

- (void)didReceiveAuthenticationData
{
  v28.receiver = self;
  v28.super_class = PinViewController;
  [(TransitionViewController *)&v28 didReceiveAuthenticationData];
  authenticationTitle = [(TransitionViewController *)self authenticationTitle];
  v4 = [authenticationTitle length];

  if (!v4)
  {
    options = [(TransitionViewController *)self options];
    v6 = [options objectForKey:&off_10009ABF0];

    if (v6)
    {
      [(TransitionViewController *)self setAuthenticationTitle:v6];
    }

    else
    {
      v7 = [LACPolicyUtilities isApplePayPolicy:[(TransitionViewController *)self policy]];
      v8 = [NSBundle bundleForClass:objc_opt_class()];
      v9 = v8;
      if (v7)
      {
        v10 = @"PAY_PIN";
      }

      else
      {
        v10 = @"ENTER_PIN";
      }

      v11 = [v8 localizedStringForKey:v10 value:&stru_1000992A0 table:@"MobileUI"];
      [(TransitionViewController *)self setAuthenticationTitle:v11];
    }
  }

  internalInfo = [(TransitionViewController *)self internalInfo];
  v13 = [internalInfo objectForKeyedSubscript:@"PassphrasePurpose"];
  self->_purpose = [v13 unsignedIntValue];

  options2 = [(TransitionViewController *)self options];
  v15 = [options2 objectForKeyedSubscript:&off_10009AC08];
  pinLength = self->_pinLength;
  self->_pinLength = v15;

  options3 = [(TransitionViewController *)self options];
  v18 = [options3 objectForKeyedSubscript:&off_10009AC20];
  pinMinLength = self->_pinMinLength;
  self->_pinMinLength = v18;

  options4 = [(TransitionViewController *)self options];
  v21 = [options4 objectForKeyedSubscript:&off_10009AC38];
  pinMaxLength = self->_pinMaxLength;
  self->_pinMaxLength = v21;

  options5 = [(TransitionViewController *)self options];
  v24 = [options5 objectForKeyedSubscript:&off_10009AC50];
  pinCharset = self->_pinCharset;
  self->_pinCharset = v24;

  internalInfo2 = [(TransitionViewController *)self internalInfo];
  v27 = [internalInfo2 objectForKeyedSubscript:@"CTKPIN"];
  self->_ctkPin = [v27 BOOLValue];
}

- (void)pinEntered:(id)entered
{
  enteredCopy = entered;
  if (qword_1000B0358 != -1)
  {
    sub_10006A9F8();
  }

  v5 = qword_1000B0360;
  if (os_log_type_enabled(qword_1000B0360, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v31 = "[PinViewController pinEntered:]";
    v32 = 2112;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  if ([(PinViewController *)self ctkPin])
  {
    data = [enteredCopy data];
    v7 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [data bytes]);

    v28[0] = @"Result";
    v26 = &off_10009AC68;
    v27 = &__kCFBooleanTrue;
    v8 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v28[1] = @"PIN";
    v29[0] = v8;
    v29[1] = v7;
    v9 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
    [(TransitionViewController *)self uiSuccessWithResult:v9];
  }

  else
  {
    v10 = [LACACMHelper alloc];
    cachedExternalizedContext = [(TransitionViewController *)self cachedExternalizedContext];
    externalizedContext = [cachedExternalizedContext externalizedContext];
    v8 = [v10 initWithExternalizedContext:externalizedContext];

    options = [(TransitionViewController *)self options];
    v14 = [options objectForKey:&off_10009AC80];
    [v14 doubleValue];
    v16 = v15;

    if (v16 == 0.0)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    purpose = self->_purpose;
    v21 = 0;
    v19 = [v8 replacePassphraseCredentialWithPurpose:purpose passphrase:enteredCopy scope:v17 error:&v21];
    v7 = v21;
    if (!v19)
    {
      [(TransitionViewController *)self uiFailureWithError:v7];
      goto LABEL_14;
    }

    v24 = @"Result";
    v22 = &off_10009AC68;
    v23 = &__kCFBooleanTrue;
    v9 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v25 = v9;
    v20 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    [(TransitionViewController *)self uiSuccessWithResult:v20];
  }

LABEL_14:
  [enteredCopy reset];
}

@end