@interface PasscodeViewController
- (BOOL)_hasBlurredBackground;
- (BOOL)_hasTranslucentBackground;
- (BOOL)_useWhitePasscodeScreen;
- (id)_style;
- (int64_t)_backgroundStyle;
- (int64_t)preferredStatusBarStyle;
- (void)_clearTimer;
- (void)_layoutGlyph;
- (void)_processPasscodeEntryResult:(int64_t)a3;
- (void)_scheduleTimerIfNecessaryAndUpdateSubtitle;
- (void)_setupGlyph;
- (void)_setupView;
- (void)_showBackoffScreenWithMinsUntilUnblocked:(int)a3;
- (void)_showPasscodeScreen;
- (void)_switchToBackoffScreen:(id)a3 animated:(BOOL)a4;
- (void)_updateStyle;
- (void)didReceiveAuthenticationData;
- (void)loadView;
- (void)mechanismEvent:(int64_t)a3 value:(id)a4 reply:(id)a5;
- (void)passcodeViewPasscodeDidChange:(id)a3;
- (void)passcodeViewPasscodeEntered:(id)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation PasscodeViewController

- (void)didReceiveAuthenticationData
{
  v37.receiver = self;
  v37.super_class = PasscodeViewController;
  [(TransitionViewController *)&v37 didReceiveAuthenticationData];
  v3 = [(TransitionViewController *)self options];
  v4 = [v3 objectForKeyedSubscript:&off_1000AF320];

  if (v4)
  {
    [(TransitionViewController *)self setAuthenticationTitle:v4];
    goto LABEL_9;
  }

  if ((+[LACPolicyUtilities isApplePayPolicy:](LACPolicyUtilities, "isApplePayPolicy:", -[TransitionViewController policy](self, "policy")) & 1) != 0 || (-[TransitionViewController options](self, "options"), v5 = objc_claimAutoreleasedReturnValue(), [v5 objectForKeyedSubscript:&off_1000AF338], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "BOOLValue"), v6, v5, v7))
  {
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = v8;
    v10 = @"PAY";
LABEL_6:
    v11 = [v8 localizedStringForKey:v10 value:&stru_1000ADB50 table:@"MobileUI"];
    [(TransitionViewController *)self setAuthenticationTitle:v11];
    goto LABEL_7;
  }

  if ([(TransitionViewController *)self policy]== 1010)
  {
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = v8;
    v10 = @"ENTER_PASSCODE_UPDATE";
    goto LABEL_6;
  }

  v28 = [(TransitionViewController *)self authenticationTitle];
  v29 = [v28 length];

  if (!v29)
  {
    v30 = [(TransitionViewController *)self callerBundleId];
    if (v30 || [(TransitionViewController *)self callerNameOverride])
    {
      v31 = [(TransitionViewController *)self callerName];

      if (v31)
      {
        v9 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"APP_ASKING_PASSCODE"];
        v32 = [NSBundle bundleForClass:objc_opt_class()];
        v33 = [v32 localizedStringForKey:v9 value:&stru_1000ADB50 table:@"MobileUI"];
        v34 = [(TransitionViewController *)self callerName];
        v35 = [NSString stringWithFormat:v33, v34];
        [(TransitionViewController *)self setAuthenticationTitle:v35];

        goto LABEL_8;
      }
    }

    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"ENTER_PASSCODE"];
    v36 = [v9 localizedStringForKey:v11 value:&stru_1000ADB50 table:@"MobileUI"];
    [(TransitionViewController *)self setAuthenticationTitle:v36];

LABEL_7:
LABEL_8:
  }

LABEL_9:
  v12 = [(TransitionViewController *)self internalInfo];
  v13 = [v12 objectForKeyedSubscript:@"FallbackReason"];

  if (![LACError error:v13 hasCode:LACErrorCodeSystemCancel])
  {
    v18 = 0;
    goto LABEL_19;
  }

  v14 = [v13 userInfo];
  v15 = [v14 objectForKeyedSubscript:LAErrorSubcodeKey];

  if (v15)
  {
    v16 = [v15 integerValue];
    if (v16 == 13)
    {
      v17 = @"PEARL_HW_ISSUE_HIGH_TEMPERATURE";
      goto LABEL_17;
    }

    if (v16 == 14)
    {
      v17 = @"PEARL_HW_ISSUE_LOW_TEMPERATURE";
LABEL_17:
      v19 = [NSBundle bundleForClass:objc_opt_class()];
      v18 = [v19 localizedStringForKey:v17 value:&stru_1000ADB50 table:@"MobileUI"];

      goto LABEL_18;
    }
  }

  v18 = 0;
LABEL_18:

LABEL_19:
  v20 = [(TransitionViewController *)self options];
  v21 = [v20 objectForKeyedSubscript:&off_1000AF350];

  if (v18)
  {
    v22 = [LACStringHelper truncateString:v18 maxLength:512];
    [(TransitionViewController *)self setAuthenticationSubtitle:v22];
LABEL_23:

    goto LABEL_24;
  }

  if (v21)
  {
    v22 = [(TransitionViewController *)self options];
    v23 = [v22 objectForKeyedSubscript:&off_1000AF350];
    v24 = [LACStringHelper truncateString:v23 maxLength:512];
    [(TransitionViewController *)self setAuthenticationSubtitle:v24];

    goto LABEL_23;
  }

LABEL_24:
  v25 = [(TransitionViewController *)self options];
  v26 = [v25 objectForKey:&off_1000AF368];
  failureLimit = self->_failureLimit;
  self->_failureLimit = v26;

  self->_failures = 0;
  self->_currentInterfaceStyle = 0x7FFFFFFFFFFFFFFFLL;
}

- (void)_setupView
{
  v3 = LACLogPasscodeUI();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = +[Passcode currentPasscode];
    [v4 type];
    v5 = NSStringFromLACPasscodeType();
    *buf = 138412290;
    v37 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "lockStyle: %@", buf, 0xCu);
  }

  v6 = [NSNumber numberWithInt:[(TransitionViewController *)self isRemoteViewController]^ 1];
  v35 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];

  v8 = +[Passcode currentPasscode];
  v9 = [PasscodeContentViewControllerFactory passcodeContentViewControllerForPasscode:v8 options:v7];
  passcodeView = self->_passcodeView;
  self->_passcodeView = v9;

  [(PasscodeView *)self->_passcodeView setDelegate:self];
  v11 = [(PasscodeViewController *)self view];
  v12 = [(PasscodeView *)self->_passcodeView view];
  [v11 addSubview:v12];

  v13 = [(PasscodeView *)self->_passcodeView view];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

  v14 = [(PasscodeView *)self->_passcodeView view];
  v15 = [v14 topAnchor];
  v16 = [(PasscodeViewController *)self view];
  v17 = [v16 topAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];
  [v18 setActive:1];

  v19 = [(PasscodeView *)self->_passcodeView view];
  v20 = [v19 bottomAnchor];
  v21 = [(PasscodeViewController *)self view];
  v22 = [v21 bottomAnchor];
  v23 = [v20 constraintEqualToAnchor:v22];
  [v23 setActive:1];

  v24 = [(PasscodeView *)self->_passcodeView view];
  v25 = [v24 leadingAnchor];
  v26 = [(PasscodeViewController *)self view];
  v27 = [v26 leadingAnchor];
  v28 = [v25 constraintEqualToAnchor:v27];
  [v28 setActive:1];

  v29 = [(PasscodeView *)self->_passcodeView view];
  v30 = [v29 trailingAnchor];
  v31 = [(PasscodeViewController *)self view];
  v32 = [v31 trailingAnchor];
  v33 = [v30 constraintEqualToAnchor:v32];
  [v33 setActive:1];

  [(PasscodeViewController *)self addChildViewController:self->_passcodeView];
  [(PasscodeView *)self->_passcodeView didMoveToParentViewController:self];
}

- (void)_setupGlyph
{
  v3 = [(TransitionViewController *)self internalInfo];
  v4 = [v3 objectForKeyedSubscript:@"FaceIdAtPasscode"];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = +[LACSecureFaceIDUIUtilities sharedInstance];
    v7 = [v6 isActive];

    if (v7)
    {
      if ((LADynamicIslandAvailable() & 1) == 0)
      {
        v23 = LACLogPasscodeUI();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v30) = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "no glyph on passcode screen without dynamic island", &v30, 2u);
        }

        goto LABEL_12;
      }

      v8 = +[LAUIPearlGlyphStaticConfiguration createSystemApertureConfiguration];
      [v8 setInitialStyle:4];
      [v8 setSecureVariantEnabled:1];
      v9 = [[LAUIPearlGlyphView alloc] initWithConfiguration:v8];
      glyphView = self->_glyphView;
      self->_glyphView = v9;

      v11 = [FaceIdToastViewController alloc];
      v12 = self->_glyphView;
      v13 = [NSBundle bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:@"PEARL" value:&stru_1000ADB50 table:@"MobileUI"];
      v15 = LACLightweightUIModeNone;
      v16 = [(TransitionViewController *)self options];
      v17 = [NSNumber numberWithInteger:LACPolicyOptionSecureUIRecording];
      v18 = [v16 objectForKeyedSubscript:v17];
      v19 = -[FaceIdToastViewController initWithGlyph:presentingController:title:lightweightUIMode:secureUIRecording:](v11, "initWithGlyph:presentingController:title:lightweightUIMode:secureUIRecording:", v12, self, v14, v15, [v18 BOOLValue]);
      toastController = self->_toastController;
      self->_toastController = v19;

      v21 = LACLogPasscodeUI();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = self->_toastController;
        v30 = 138412290;
        v31 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "glyph created on passcode screen: %@", &v30, 0xCu);
      }
    }

    v23 = +[LAUIPearlGlyphStaticConfiguration createDefaultConfiguration];
    [v23 setInitialStyle:3];
    v24 = [[LAUIPearlGlyphView alloc] initWithConfiguration:v23];
    v25 = self->_glyphView;
    self->_glyphView = v24;

    v26 = LADynamicIslandAvailable();
    v27 = 56.0;
    if (!v26)
    {
      v27 = 48.0;
    }

    [(LAUIPearlGlyphView *)self->_glyphView setFrame:0.0, v27, 32.0, 32.0];
    [(PasscodeViewController *)self _setGlyphState:1 animated:0];
    v28 = LACLogPasscodeUI();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = self->_glyphView;
      v30 = 138412290;
      v31 = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "glyph created on passcode screen: %@", &v30, 0xCu);
    }

LABEL_12:
  }
}

- (void)_layoutGlyph
{
  if (!self->_toastController)
  {
    [(LAUIPearlGlyphView *)self->_glyphView frame];
    v7 = [(PasscodeViewController *)self view];
    [v7 bounds];
    v4 = +[UIScreen mainScreen];
    [v4 scale];
    v6 = v5;
    UIRectCenteredXInRectScale();
    [(LAUIPearlGlyphView *)self->_glyphView setFrame:v6];
  }
}

- (void)passcodeViewPasscodeDidChange:(id)a3
{
  if (!self->_startedTypingPasscode)
  {
    self->_startedTypingPasscode = 1;
    [(PasscodeViewController *)self _showGlyph:0 animated:1];

    [(TransitionViewController *)self uiEvent:7 options:0];
  }
}

- (void)passcodeViewPasscodeEntered:(id)a3
{
  if (!self->_passcodeEntered)
  {
    self->_passcodeEntered = 1;
    v4 = [(PasscodeView *)self->_passcodeView passcode];
    v5 = [LACSecureData secureDataWithString:v4];

    v6 = +[LAUtils isSharedIPad];
    v7 = v6;
    if (v6)
    {
      v8 = [(PasscodeView *)self->_passcodeView passcode];
      v9 = [v8 dataUsingEncoding:4];

      v10 = MKBUnlockDevice();
      v11 = LACLogPasscodeUI();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v19 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "MKBUnlockDevice: %d", buf, 8u);
      }
    }

    else
    {
      v10 = 0;
    }

    v12 = [(TransitionViewController *)self backoffCounter];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = __54__PasscodeViewController_passcodeViewPasscodeEntered___block_invoke;
    v14[3] = &unk_1000AAA20;
    v17 = v7;
    v16 = v10;
    v14[4] = self;
    v15 = v5;
    v13 = v5;
    [v12 currentBackoffErrorWithReply:v14];
  }
}

void __54__PasscodeViewController_passcodeViewPasscodeEntered___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    [*(a1 + 32) _switchToBackoffScreen:a2];
    *(*(a1 + 32) + 242) = 0;
  }

  else
  {
    v3 = +[LACConcurrencyUtilities globalUserInitiatedConcurrentQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __54__PasscodeViewController_passcodeViewPasscodeEntered___block_invoke_2;
    block[3] = &unk_1000AA9F8;
    v8 = *(a1 + 52);
    v7 = *(a1 + 48);
    v4 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v6 = v4;
    dispatch_async(v3, block);
  }
}

id __54__PasscodeViewController_passcodeViewPasscodeEntered___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 52) != 1)
  {
LABEL_9:
    v5 = +[LACPasscodeHelper sharedInstance];
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = __54__PasscodeViewController_passcodeViewPasscodeEntered___block_invoke_3;
    v12 = &unk_1000AA9D0;
    v6 = *(a1 + 40);
    v13 = *(a1 + 32);
    v14 = v6;
    v7 = __54__PasscodeViewController_passcodeViewPasscodeEntered___block_invoke_3(&v9);
    v4 = [v5 verifyPasscode:{v7, v9, v10}];

    goto LABEL_10;
  }

  v2 = *(a1 + 48);
  if (v2 != -14 && v2 != -3)
  {
    if (v2)
    {
      v4 = 3;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v4 = 1;
LABEL_10:
  [*(a1 + 40) reset];
  return [*(a1 + 32) _processPasscodeEntryResult:v4];
}

id __54__PasscodeViewController_passcodeViewPasscodeEntered___block_invoke_3(uint64_t a1)
{
  v2 = [LACInternalInfoParser alloc];
  v3 = [*(a1 + 32) internalInfo];
  v4 = [v2 initWithInternalInfo:v3];

  v5 = [LACMutablePasscodeVerificationRequest alloc];
  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) cachedExternalizedContext];
  v8 = [v7 externalizedContext];
  v9 = [v4 callerAuditToken];
  v10 = [v5 initWithPasscode:v6 acmContext:v8 auditToken:v9];

  v11 = [v4 userId];
  [v10 setUserId:v11];

  [v10 setPolicy:{objc_msgSend(*(a1 + 32), "policy")}];
  v12 = [*(a1 + 32) options];
  [v10 setOptions:v12];

  return v10;
}

- (void)_processPasscodeEntryResult:(int64_t)a3
{
  if (!a3)
  {
    v7 = [(TransitionViewController *)self mechanism];
    v27 = @"uptime";
    v8 = +[NSProcessInfo processInfo];
    [v8 systemUptime];
    v9 = [NSNumber numberWithDouble:?];
    v28 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    [v7 uiEvent:8 options:v10];

    objc_initWeak(&location, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __54__PasscodeViewController__processPasscodeEntryResult___block_invoke;
    block[3] = &unk_1000AA370;
    objc_copyWeak(&v21, &location);
    dispatch_async(&_dispatch_main_q, block);
    v11 = [(TransitionViewController *)self backoffCounter];
    [v11 actionSuccess];

    v25 = @"Result";
    v23 = &off_1000AF398;
    v24 = &__kCFBooleanTrue;
    v12 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v26 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    [(TransitionViewController *)self uiSuccessWithResult:v13];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
    return;
  }

  self->_passcodeEntered = 0;
  v5 = [(TransitionViewController *)self mechanism];
  [v5 uiEvent:9 options:0];

  if (a3 == 1)
  {
    if (!self->_failureLimit || (v14 = self->_failures + 1, self->_failures = v14, v14 <= [(NSNumber *)self->_failureLimit unsignedIntegerValue]))
    {
      v16 = [(TransitionViewController *)self backoffCounter];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = __54__PasscodeViewController__processPasscodeEntryResult___block_invoke_83;
      v19[3] = &unk_1000AA748;
      v19[4] = self;
      [v16 actionFailureWithReply:v19];

      return;
    }

    v15 = [LACError errorWithCode:LACErrorCodeAuthenticationFailed debugDescription:@"Application retry limit exceeded."];
  }

  else
  {
    if (a3 == 2)
    {
      v6 = [(TransitionViewController *)self backoffCounter];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = __54__PasscodeViewController__processPasscodeEntryResult___block_invoke_6;
      v18[3] = &unk_1000AA748;
      v18[4] = self;
      [v6 actionBackoffWithReply:v18];

      return;
    }

    v15 = [LACError errorWithCode:LACErrorCodeInternal debugDescription:@"Unexpected error while attempting to verify the entered password."];
  }

  [(TransitionViewController *)self uiFailureWithError:v15, v15];
}

void __54__PasscodeViewController__processPasscodeEntryResult___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showGlyph:0 animated:1];
}

void __54__PasscodeViewController__processPasscodeEntryResult___block_invoke_83(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __54__PasscodeViewController__processPasscodeEntryResult___block_invoke_2;
  v6[3] = &unk_1000AA808;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void __54__PasscodeViewController__processPasscodeEntryResult___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v2 + 200);
  if (v1)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = __54__PasscodeViewController__processPasscodeEntryResult___block_invoke_3;
    v5[3] = &unk_1000AA808;
    v5[4] = v2;
    v6 = v1;
    [v3 animateToFailureStateWithCompletion:v5];
  }

  else
  {
    v4 = *(v2 + 200);

    [v4 animateToFailureStateWithCompletion:&__block_literal_global_85];
  }
}

void __54__PasscodeViewController__processPasscodeEntryResult___block_invoke_3(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __54__PasscodeViewController__processPasscodeEntryResult___block_invoke_4;
  v2[3] = &unk_1000AA808;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(&_dispatch_main_q, v2);
}

void __54__PasscodeViewController__processPasscodeEntryResult___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __54__PasscodeViewController__processPasscodeEntryResult___block_invoke_7;
  v5[3] = &unk_1000AA808;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);
}

void __54__PasscodeViewController__processPasscodeEntryResult___block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 200);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __54__PasscodeViewController__processPasscodeEntryResult___block_invoke_8;
  v4[3] = &unk_1000AA808;
  v4[4] = v2;
  v5 = v1;
  [v3 animateToFailureStateWithCompletion:v4];
}

void __54__PasscodeViewController__processPasscodeEntryResult___block_invoke_8(uint64_t a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __54__PasscodeViewController__processPasscodeEntryResult___block_invoke_9;
  v2[3] = &unk_1000AA808;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(&_dispatch_main_q, v2);
}

- (void)loadView
{
  v3 = objc_opt_new();
  [(PasscodeViewController *)self setView:v3];

  [(PasscodeViewController *)self _setupView];
  [(PasscodeViewController *)self _setupGlyph];
  if (+[LAUtils isSharedIPad])
  {
    v4 = objc_opt_new();
    [(TransitionViewController *)self setBackoffCounter:v4];
  }
}

void __41__PasscodeViewController_viewWillAppear___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = __41__PasscodeViewController_viewWillAppear___block_invoke_2;
    v5[3] = &unk_1000AA940;
    objc_copyWeak(&v7, (a1 + 32));
    v6 = v3;
    dispatch_async(&_dispatch_main_q, v5);

    objc_destroyWeak(&v7);
  }
}

void __41__PasscodeViewController_viewWillAppear___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if (*(a1 + 32))
    {
      [WeakRetained _switchToBackoffScreen:?];
    }

    else
    {
      [WeakRetained _showPasscodeScreen];
    }

    WeakRetained = v3;
  }
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PasscodeViewController;
  [(PasscodeViewController *)&v5 viewDidLayoutSubviews];
  v3 = [(PasscodeViewController *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (self->_currentInterfaceStyle != v4)
  {
    self->_currentInterfaceStyle = v4;
    [(PasscodeViewController *)self setNeedsStatusBarAppearanceUpdate];
    [(PasscodeViewController *)self _updateStyle];
  }

  [(PasscodeViewController *)self _layoutGlyph];
}

- (void)_updateStyle
{
  if (!self->_toastController)
  {
    glyphView = self->_glyphView;
    if ([(PasscodeViewController *)self _useWhitePasscodeScreen])
    {
      v4 = +[UIColor blackColor];
      [(LAUIPearlGlyphView *)glyphView setFinishedColor:v4 animated:1];
    }

    else
    {
      [(LAUIPearlGlyphView *)glyphView setFinishedColor:0 animated:1];
    }
  }

  v7 = [(PasscodeView *)self->_passcodeView state];
  v5 = [(PasscodeViewController *)self _style];
  v6 = [v7 withStyle:v5];
  [(PasscodeView *)self->_passcodeView setState:v6];
}

- (id)_style
{
  v3 = [(PasscodeViewController *)self _useWhitePasscodeScreen];
  v4 = [(PasscodeViewController *)self _backgroundStyle];
  if (v3)
  {
    [PasscodeViewStyle lightStyleWithBackgroundStyle:v4];
  }

  else
  {
    [PasscodeViewStyle darkStyleWithBackgroundStyle:v4];
  }
  v5 = ;

  return v5;
}

- (int64_t)_backgroundStyle
{
  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    return 3;
  }

  if ([(PasscodeViewController *)self _hasBlurredBackground])
  {
    return 1;
  }

  if ([(PasscodeViewController *)self _hasTranslucentBackground])
  {
    return 2;
  }

  return 0;
}

- (BOOL)_hasBlurredBackground
{
  v3 = [(TransitionViewController *)self options];
  v4 = [v3 objectForKeyedSubscript:&off_1000AF3B0];

  v5 = [(TransitionViewController *)self options];
  v6 = [v5 objectForKeyedSubscript:&off_1000AF3C8];

  if (v4 | v6)
  {
    if (!v4 || ([v4 BOOLValue] & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (![(PasscodeViewController *)self _useWhitePasscodeScreen]|| ![LACPolicyUtilities isApplePayPolicy:[(TransitionViewController *)self policy] inApp:1])
  {
LABEL_8:
    LOBYTE(v7) = 0;
    goto LABEL_9;
  }

  v7 = !UIAccessibilityIsReduceTransparencyEnabled();
LABEL_9:

  return v7;
}

- (BOOL)_hasTranslucentBackground
{
  v3 = [(TransitionViewController *)self options];
  v4 = [v3 objectForKeyedSubscript:&off_1000AF3B0];

  v5 = [(TransitionViewController *)self options];
  v6 = [v5 objectForKeyedSubscript:&off_1000AF3C8];

  if (v4 | v6 || [(PasscodeViewController *)self _useWhitePasscodeScreen]|| [(TransitionViewController *)self policy]!= 1004)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = !UIAccessibilityIsReduceTransparencyEnabled();
  }

  return v7;
}

- (BOOL)_useWhitePasscodeScreen
{
  v3 = [(PasscodeViewController *)self traitCollection];
  v4 = [v3 userInterfaceStyle] == 2;

  v5 = +[LAPasscodeHelper sharedInstance];
  v6 = [(TransitionViewController *)self policy];
  v7 = [(TransitionViewController *)self options];
  v8 = [v5 passcodeScreenStyleWithPolicy:v6 options:v7 darkInterface:v4];

  return v8 == 0;
}

- (void)_showPasscodeScreen
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __45__PasscodeViewController__showPasscodeScreen__block_invoke;
  v4[3] = &unk_1000AAA68;
  v4[4] = self;
  v3 = __45__PasscodeViewController__showPasscodeScreen__block_invoke(v4);
  [(PasscodeView *)self->_passcodeView setState:v3];
}

id __45__PasscodeViewController__showPasscodeScreen__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) authenticationTitle];
  v3 = [*(a1 + 32) authenticationSubtitle];
  v4 = *(a1 + 32);
  if (*(v4 + 256))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v4 + 248);
  }

  v6 = [PasscodeViewState activeStateWithTitle:v2 subtitle:v3 accessoryView:v5];
  v7 = [*(a1 + 32) _style];
  v8 = [v6 withStyle:v7];

  return v8;
}

- (void)_showBackoffScreenWithMinsUntilUnblocked:(int)a3
{
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"DEVICE_BLOCKED" value:&stru_1000ADB50 table:@"MobileUI"];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __67__PasscodeViewController__showBackoffScreenWithMinsUntilUnblocked___block_invoke;
  v11[3] = &unk_1000AAA90;
  v11[4] = self;
  v12 = a3;
  v7 = __67__PasscodeViewController__showBackoffScreenWithMinsUntilUnblocked___block_invoke(v11);
  v8 = [PasscodeViewState backOffStateWithTitle:v6 subtitle:v7];
  v9 = [(PasscodeViewController *)self _style];
  v10 = [v8 withStyle:v9];
  [(PasscodeView *)self->_passcodeView setState:v10];
}

id __67__PasscodeViewController__showBackoffScreenWithMinsUntilUnblocked___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"MINUTES_TO_UNBLOCK" value:&stru_1000ADB50 table:@"MobileUI"];
  v5 = [NSString localizedStringWithFormat:v4, *(a1 + 40)];

  return v5;
}

- (int64_t)preferredStatusBarStyle
{
  if ([(PasscodeViewController *)self _useWhitePasscodeScreen])
  {
    v2 = 3;
  }

  else
  {
    v2 = 1;
  }

  v3 = LACLogPasscodeUI();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "statusBarStyle = %ld", &v5, 0xCu);
  }

  return v2;
}

- (void)_switchToBackoffScreen:(id)a3 animated:(BOOL)a4
{
  v5 = [a3 userInfo];
  v6 = [v5 objectForKey:LAPasswordRetryTime];
  blockedUntilDate = self->_blockedUntilDate;
  self->_blockedUntilDate = v6;

  [(NSDate *)self->_blockedUntilDate timeIntervalSinceNow];
  self->_isBlocked = v8 > 0.0;
  if (v8 > 0.0)
  {
    [(PasscodeView *)self->_passcodeView resignFirstResponder];

    [(PasscodeViewController *)self _scheduleTimerIfNecessaryAndUpdateSubtitle];
  }
}

- (void)_clearTimer
{
  [(NSTimer *)self->_updateTimer invalidate];
  updateTimer = self->_updateTimer;
  self->_updateTimer = 0;
}

- (void)_scheduleTimerIfNecessaryAndUpdateSubtitle
{
  HIDWORD(v3) = 0;
  blockedUntilDate = self->_blockedUntilDate;
  if (blockedUntilDate)
  {
    [(NSDate *)blockedUntilDate timeIntervalSinceNow];
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  v7 = v6 > 0.0;
  self->_isBlocked = v7;
  if (self->_blockedUntilDate)
  {
    v3 = LACLogPasscodeUI();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      isBlocked = self->_isBlocked;
      isLockoutActive = self->_isLockoutActive;
      v15 = 138544130;
      v16 = self;
      v17 = 1024;
      v18 = isBlocked;
      v19 = 1024;
      v20 = isLockoutActive;
      v21 = 2048;
      v22 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ is blocked:%d lockoutActive:%d unblockTimeout:%f", &v15, 0x22u);
    }

    v7 = self->_isBlocked;
  }

  if (v7)
  {
    if (!v7)
    {
      [PasscodeViewController _scheduleTimerIfNecessaryAndUpdateSubtitle];
    }

    self->_isLockoutActive = 1;
    v10 = v6 / 60.0;
    v11 = v10;
    LODWORD(v3) = vcvtps_s32_f32(v11);
    [(PasscodeViewController *)self _showBackoffScreenWithMinsUntilUnblocked:v3];
    [(PasscodeViewController *)self _clearTimer];
    v12 = (v10 - (v3 - 1)) * 60.0;
    if (v12 > 0.0)
    {
      v13 = [NSTimer scheduledTimerWithTimeInterval:self target:"_scheduleTimerIfNecessaryAndUpdateSubtitle" selector:0 userInfo:1 repeats:v12];
      updateTimer = self->_updateTimer;
      self->_updateTimer = v13;
    }
  }

  else if (self->_isLockoutActive)
  {
    self->_isLockoutActive = 0;
    [(PasscodeViewController *)self _showPasscodeScreen];
    [(PasscodeViewController *)self _clearTimer];
  }
}

- (void)mechanismEvent:(int64_t)a3 value:(id)a4 reply:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = LACLogPasscodeUI();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromMechanismEventAndValue();
    *buf = 138543874;
    v23 = self;
    v24 = 1024;
    v25 = a3;
    v26 = 2112;
    v27 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ has received mechanism event %d (%@)", buf, 0x1Cu);
  }

  if (a3 > 2)
  {
    if (a3 == 3)
    {
      objc_initWeak(buf, self);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = __53__PasscodeViewController_mechanismEvent_value_reply___block_invoke_6;
      v14[3] = &unk_1000AA370;
      objc_copyWeak(&v15, buf);
      dispatch_async(&_dispatch_main_q, v14);
      v13 = &v15;
LABEL_15:
      objc_destroyWeak(v13);
      objc_destroyWeak(buf);
      goto LABEL_16;
    }

    if (a3 != 4 && a3 != 13)
    {
      goto LABEL_16;
    }

LABEL_11:
    objc_initWeak(buf, self);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = __53__PasscodeViewController_mechanismEvent_value_reply___block_invoke_4;
    v18[3] = &unk_1000AA370;
    objc_copyWeak(&v19, buf);
    dispatch_async(&_dispatch_main_q, v18);
    if (self->_toastController)
    {
      v12 = dispatch_time(0, 1000000000);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = __53__PasscodeViewController_mechanismEvent_value_reply___block_invoke_5;
      v16[3] = &unk_1000AA370;
      objc_copyWeak(&v17, buf);
      dispatch_after(v12, &_dispatch_main_q, v16);

      objc_destroyWeak(&v17);
    }

    v13 = &v19;
    goto LABEL_15;
  }

  if (a3 == 1)
  {
    goto LABEL_11;
  }

  if (a3 == 2)
  {
    +[LAUIPearlGlyphView invokeSuccessFeedback];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __53__PasscodeViewController_mechanismEvent_value_reply___block_invoke;
    block[3] = &unk_1000AA568;
    block[4] = self;
    v21 = v9;
    dispatch_async(&_dispatch_main_q, block);

    goto LABEL_18;
  }

LABEL_16:
  if (v9)
  {
    v9[2](v9);
  }

LABEL_18:
}

void __53__PasscodeViewController_mechanismEvent_value_reply___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 200);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __53__PasscodeViewController_mechanismEvent_value_reply___block_invoke_2;
  v2[3] = &unk_1000AA500;
  v3 = *(a1 + 40);
  [v1 animateToSucessStateWithCompletion:v2];
}

void __53__PasscodeViewController_mechanismEvent_value_reply___block_invoke_2(uint64_t a1)
{
  v2 = dispatch_time(0, 1000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __53__PasscodeViewController_mechanismEvent_value_reply___block_invoke_3;
  block[3] = &unk_1000AA500;
  v4 = *(a1 + 32);
  dispatch_after(v2, &_dispatch_main_q, block);
}

uint64_t __53__PasscodeViewController_mechanismEvent_value_reply___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __53__PasscodeViewController_mechanismEvent_value_reply___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setGlyphState:4 animated:1];
}

void __53__PasscodeViewController_mechanismEvent_value_reply___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showGlyph:0 animated:1];
}

void __53__PasscodeViewController_mechanismEvent_value_reply___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setGlyphState:2 animated:1];
}

@end