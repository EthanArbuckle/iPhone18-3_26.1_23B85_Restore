@interface PinViewController
- (id)_createBlurView;
- (int64_t)_backdropStyle;
- (void)_updateCurrentAppearanceIfNeeded;
- (void)didReceiveAuthenticationData;
- (void)loadView;
- (void)pinEntered:(id)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation PinViewController

- (void)loadView
{
  v3 = [PinView alloc];
  pinLength = self->_pinLength;
  v5 = [(PinViewController *)self pinMinLength];
  v6 = [(PinViewController *)self pinMaxLength];
  v7 = [(PinViewController *)self pinCharset];
  v8 = [(PinView *)v3 initWithPinLength:pinLength minLength:v5 maxLength:v6 charset:v7];
  pinView = self->_pinView;
  self->_pinView = v8;

  v10 = self->_pinView;
  v11 = [(TransitionViewController *)self authenticationTitle];
  [(PinView *)v10 setTitle:v11];

  [(PinView *)self->_pinView setDelegate:self];
  [(PinView *)self->_pinView setViewController:self];
  if (![(TransitionViewController *)self isRemoteViewController])
  {
    v12 = [(PinViewController *)self _createBlurView];
    blurView = self->_blurView;
    self->_blurView = v12;

    [(PinView *)self->_pinView addSubview:self->_blurView];
    [(PinView *)self->_pinView sendSubviewToBack:self->_blurView];
    v14 = [UIButton buttonWithType:1];
    [v14 addTarget:self action:"uiCancel" forControlEvents:1];
    v15 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"CANCEL" value:&stru_1000ADB50 table:@"MobileUI"];
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
  v2 = [(PinViewController *)self traitCollection];
  v3 = [v2 userInterfaceStyle];

  if (v3 == 1000 || v3 == 2)
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
  v3 = [(PinViewController *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (self->_currentInterfaceStyle != v4)
  {
    self->_currentInterfaceStyle = v4;
    if (![(TransitionViewController *)self isRemoteViewController])
    {
      [(_UIBackdropView *)self->_blurView removeFromSuperview];
      v5 = [(PinViewController *)self _createBlurView];
      blurView = self->_blurView;
      self->_blurView = v5;

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
  v3 = [(TransitionViewController *)self authenticationTitle];
  v4 = [v3 length];

  if (!v4)
  {
    v5 = [(TransitionViewController *)self options];
    v6 = [v5 objectForKey:&off_1000AF488];

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

      v11 = [v8 localizedStringForKey:v10 value:&stru_1000ADB50 table:@"MobileUI"];
      [(TransitionViewController *)self setAuthenticationTitle:v11];
    }
  }

  v12 = [(TransitionViewController *)self internalInfo];
  v13 = [v12 objectForKeyedSubscript:@"PassphrasePurpose"];
  self->_purpose = [v13 unsignedIntValue];

  v14 = [(TransitionViewController *)self options];
  v15 = [v14 objectForKeyedSubscript:&off_1000AF4A0];
  pinLength = self->_pinLength;
  self->_pinLength = v15;

  v17 = [(TransitionViewController *)self options];
  v18 = [v17 objectForKeyedSubscript:&off_1000AF4B8];
  pinMinLength = self->_pinMinLength;
  self->_pinMinLength = v18;

  v20 = [(TransitionViewController *)self options];
  v21 = [v20 objectForKeyedSubscript:&off_1000AF4D0];
  pinMaxLength = self->_pinMaxLength;
  self->_pinMaxLength = v21;

  v23 = [(TransitionViewController *)self options];
  v24 = [v23 objectForKeyedSubscript:&off_1000AF4E8];
  pinCharset = self->_pinCharset;
  self->_pinCharset = v24;

  v26 = [(TransitionViewController *)self internalInfo];
  v27 = [v26 objectForKeyedSubscript:@"CTKPIN"];
  self->_ctkPin = [v27 BOOLValue];
}

- (void)pinEntered:(id)a3
{
  v4 = a3;
  if (LA_LOG_PinViewController_once != -1)
  {
    [PinViewController pinEntered:];
  }

  v5 = LA_LOG_PinViewController_log;
  if (os_log_type_enabled(LA_LOG_PinViewController_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v31 = "[PinViewController pinEntered:]";
    v32 = 2112;
    v33 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  if ([(PinViewController *)self ctkPin])
  {
    v6 = [v4 data];
    v7 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [v6 bytes]);

    v28[0] = @"Result";
    v26 = &off_1000AF500;
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
    v11 = [(TransitionViewController *)self cachedExternalizedContext];
    v12 = [v11 externalizedContext];
    v8 = [v10 initWithExternalizedContext:v12];

    v13 = [(TransitionViewController *)self options];
    v14 = [v13 objectForKey:&off_1000AF518];
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
    v19 = [v8 replacePassphraseCredentialWithPurpose:purpose passphrase:v4 scope:v17 error:&v21];
    v7 = v21;
    if (!v19)
    {
      [(TransitionViewController *)self uiFailureWithError:v7];
      goto LABEL_14;
    }

    v24 = @"Result";
    v22 = &off_1000AF500;
    v23 = &__kCFBooleanTrue;
    v9 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v25 = v9;
    v20 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    [(TransitionViewController *)self uiSuccessWithResult:v20];
  }

LABEL_14:
  [v4 reset];
}

@end