@interface PasscodeViewController
- (BOOL)_hasBlurredBackground;
- (BOOL)_hasTranslucentBackground;
- (BOOL)_useWhitePasscodeScreen;
- (id)_style;
- (int64_t)_backgroundStyle;
- (int64_t)preferredStatusBarStyle;
- (void)_clearTimer;
- (void)_layoutGlyph;
- (void)_processPasscodeEntryResult:(int64_t)result;
- (void)_scheduleTimerIfNecessaryAndUpdateSubtitle;
- (void)_setupGlyph;
- (void)_setupView;
- (void)_showBackoffScreenWithMinsUntilUnblocked:(int)unblocked;
- (void)_showPasscodeScreen;
- (void)_switchToBackoffScreen:(id)screen animated:(BOOL)animated;
- (void)_updateStyle;
- (void)didReceiveAuthenticationData;
- (void)loadView;
- (void)mechanismEvent:(int64_t)event value:(id)value reply:(id)reply;
- (void)passcodeViewPasscodeDidChange:(id)change;
- (void)passcodeViewPasscodeEntered:(id)entered;
- (void)viewDidLayoutSubviews;
@end

@implementation PasscodeViewController

- (void)didReceiveAuthenticationData
{
  v37.receiver = self;
  v37.super_class = PasscodeViewController;
  [(TransitionViewController *)&v37 didReceiveAuthenticationData];
  options = [(TransitionViewController *)self options];
  v4 = [options objectForKeyedSubscript:&off_1000AF320];

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

  authenticationTitle = [(TransitionViewController *)self authenticationTitle];
  v29 = [authenticationTitle length];

  if (!v29)
  {
    callerBundleId = [(TransitionViewController *)self callerBundleId];
    if (callerBundleId || [(TransitionViewController *)self callerNameOverride])
    {
      callerName = [(TransitionViewController *)self callerName];

      if (callerName)
      {
        v9 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"APP_ASKING_PASSCODE"];
        v32 = [NSBundle bundleForClass:objc_opt_class()];
        v33 = [v32 localizedStringForKey:v9 value:&stru_1000ADB50 table:@"MobileUI"];
        callerName2 = [(TransitionViewController *)self callerName];
        v35 = [NSString stringWithFormat:v33, callerName2];
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
  internalInfo = [(TransitionViewController *)self internalInfo];
  v13 = [internalInfo objectForKeyedSubscript:@"FallbackReason"];

  if (![LACError error:v13 hasCode:LACErrorCodeSystemCancel])
  {
    v18 = 0;
    goto LABEL_19;
  }

  userInfo = [v13 userInfo];
  v15 = [userInfo objectForKeyedSubscript:LAErrorSubcodeKey];

  if (v15)
  {
    integerValue = [v15 integerValue];
    if (integerValue == 13)
    {
      v17 = @"PEARL_HW_ISSUE_HIGH_TEMPERATURE";
      goto LABEL_17;
    }

    if (integerValue == 14)
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
  options2 = [(TransitionViewController *)self options];
  v21 = [options2 objectForKeyedSubscript:&off_1000AF350];

  if (v18)
  {
    options3 = [LACStringHelper truncateString:v18 maxLength:512];
    [(TransitionViewController *)self setAuthenticationSubtitle:options3];
LABEL_23:

    goto LABEL_24;
  }

  if (v21)
  {
    options3 = [(TransitionViewController *)self options];
    v23 = [options3 objectForKeyedSubscript:&off_1000AF350];
    v24 = [LACStringHelper truncateString:v23 maxLength:512];
    [(TransitionViewController *)self setAuthenticationSubtitle:v24];

    goto LABEL_23;
  }

LABEL_24:
  options4 = [(TransitionViewController *)self options];
  v26 = [options4 objectForKey:&off_1000AF368];
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
  view = [(PasscodeViewController *)self view];
  view2 = [(PasscodeView *)self->_passcodeView view];
  [view addSubview:view2];

  view3 = [(PasscodeView *)self->_passcodeView view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  view4 = [(PasscodeView *)self->_passcodeView view];
  topAnchor = [view4 topAnchor];
  view5 = [(PasscodeViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v18 setActive:1];

  view6 = [(PasscodeView *)self->_passcodeView view];
  bottomAnchor = [view6 bottomAnchor];
  view7 = [(PasscodeViewController *)self view];
  bottomAnchor2 = [view7 bottomAnchor];
  v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v23 setActive:1];

  view8 = [(PasscodeView *)self->_passcodeView view];
  leadingAnchor = [view8 leadingAnchor];
  view9 = [(PasscodeViewController *)self view];
  leadingAnchor2 = [view9 leadingAnchor];
  v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v28 setActive:1];

  view10 = [(PasscodeView *)self->_passcodeView view];
  trailingAnchor = [view10 trailingAnchor];
  view11 = [(PasscodeViewController *)self view];
  trailingAnchor2 = [view11 trailingAnchor];
  v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v33 setActive:1];

  [(PasscodeViewController *)self addChildViewController:self->_passcodeView];
  [(PasscodeView *)self->_passcodeView didMoveToParentViewController:self];
}

- (void)_setupGlyph
{
  internalInfo = [(TransitionViewController *)self internalInfo];
  v4 = [internalInfo objectForKeyedSubscript:@"FaceIdAtPasscode"];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    v6 = +[LACSecureFaceIDUIUtilities sharedInstance];
    isActive = [v6 isActive];

    if (isActive)
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
      options = [(TransitionViewController *)self options];
      v17 = [NSNumber numberWithInteger:LACPolicyOptionSecureUIRecording];
      v18 = [options objectForKeyedSubscript:v17];
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
    view = [(PasscodeViewController *)self view];
    [view bounds];
    v4 = +[UIScreen mainScreen];
    [v4 scale];
    v6 = v5;
    UIRectCenteredXInRectScale();
    [(LAUIPearlGlyphView *)self->_glyphView setFrame:v6];
  }
}

- (void)passcodeViewPasscodeDidChange:(id)change
{
  if (!self->_startedTypingPasscode)
  {
    self->_startedTypingPasscode = 1;
    [(PasscodeViewController *)self _showGlyph:0 animated:1];

    [(TransitionViewController *)self uiEvent:7 options:0];
  }
}

- (void)passcodeViewPasscodeEntered:(id)entered
{
  if (!self->_passcodeEntered)
  {
    self->_passcodeEntered = 1;
    passcode = [(PasscodeView *)self->_passcodeView passcode];
    v5 = [LACSecureData secureDataWithString:passcode];

    v6 = +[LAUtils isSharedIPad];
    v7 = v6;
    if (v6)
    {
      passcode2 = [(PasscodeView *)self->_passcodeView passcode];
      v9 = [passcode2 dataUsingEncoding:4];

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

    backoffCounter = [(TransitionViewController *)self backoffCounter];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = __54__PasscodeViewController_passcodeViewPasscodeEntered___block_invoke;
    v14[3] = &unk_1000AAA20;
    v17 = v7;
    v16 = v10;
    v14[4] = self;
    v15 = v5;
    v13 = v5;
    [backoffCounter currentBackoffErrorWithReply:v14];
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

- (void)_processPasscodeEntryResult:(int64_t)result
{
  if (!result)
  {
    mechanism = [(TransitionViewController *)self mechanism];
    v27 = @"uptime";
    v8 = +[NSProcessInfo processInfo];
    [v8 systemUptime];
    v9 = [NSNumber numberWithDouble:?];
    v28 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    [mechanism uiEvent:8 options:v10];

    objc_initWeak(&location, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __54__PasscodeViewController__processPasscodeEntryResult___block_invoke;
    block[3] = &unk_1000AA370;
    objc_copyWeak(&v21, &location);
    dispatch_async(&_dispatch_main_q, block);
    backoffCounter = [(TransitionViewController *)self backoffCounter];
    [backoffCounter actionSuccess];

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
  mechanism2 = [(TransitionViewController *)self mechanism];
  [mechanism2 uiEvent:9 options:0];

  if (result == 1)
  {
    if (!self->_failureLimit || (v14 = self->_failures + 1, self->_failures = v14, v14 <= [(NSNumber *)self->_failureLimit unsignedIntegerValue]))
    {
      backoffCounter2 = [(TransitionViewController *)self backoffCounter];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = __54__PasscodeViewController__processPasscodeEntryResult___block_invoke_83;
      v19[3] = &unk_1000AA748;
      v19[4] = self;
      [backoffCounter2 actionFailureWithReply:v19];

      return;
    }

    v15 = [LACError errorWithCode:LACErrorCodeAuthenticationFailed debugDescription:@"Application retry limit exceeded."];
  }

  else
  {
    if (result == 2)
    {
      backoffCounter3 = [(TransitionViewController *)self backoffCounter];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = __54__PasscodeViewController__processPasscodeEntryResult___block_invoke_6;
      v18[3] = &unk_1000AA748;
      v18[4] = self;
      [backoffCounter3 actionBackoffWithReply:v18];

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
  traitCollection = [(PasscodeViewController *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (self->_currentInterfaceStyle != userInterfaceStyle)
  {
    self->_currentInterfaceStyle = userInterfaceStyle;
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

  state = [(PasscodeView *)self->_passcodeView state];
  _style = [(PasscodeViewController *)self _style];
  v6 = [state withStyle:_style];
  [(PasscodeView *)self->_passcodeView setState:v6];
}

- (id)_style
{
  _useWhitePasscodeScreen = [(PasscodeViewController *)self _useWhitePasscodeScreen];
  _backgroundStyle = [(PasscodeViewController *)self _backgroundStyle];
  if (_useWhitePasscodeScreen)
  {
    [PasscodeViewStyle lightStyleWithBackgroundStyle:_backgroundStyle];
  }

  else
  {
    [PasscodeViewStyle darkStyleWithBackgroundStyle:_backgroundStyle];
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
  options = [(TransitionViewController *)self options];
  v4 = [options objectForKeyedSubscript:&off_1000AF3B0];

  options2 = [(TransitionViewController *)self options];
  v6 = [options2 objectForKeyedSubscript:&off_1000AF3C8];

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
  options = [(TransitionViewController *)self options];
  v4 = [options objectForKeyedSubscript:&off_1000AF3B0];

  options2 = [(TransitionViewController *)self options];
  v6 = [options2 objectForKeyedSubscript:&off_1000AF3C8];

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
  traitCollection = [(PasscodeViewController *)self traitCollection];
  v4 = [traitCollection userInterfaceStyle] == 2;

  v5 = +[LAPasscodeHelper sharedInstance];
  policy = [(TransitionViewController *)self policy];
  options = [(TransitionViewController *)self options];
  v8 = [v5 passcodeScreenStyleWithPolicy:policy options:options darkInterface:v4];

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

- (void)_showBackoffScreenWithMinsUntilUnblocked:(int)unblocked
{
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"DEVICE_BLOCKED" value:&stru_1000ADB50 table:@"MobileUI"];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __67__PasscodeViewController__showBackoffScreenWithMinsUntilUnblocked___block_invoke;
  v11[3] = &unk_1000AAA90;
  v11[4] = self;
  unblockedCopy = unblocked;
  v7 = __67__PasscodeViewController__showBackoffScreenWithMinsUntilUnblocked___block_invoke(v11);
  v8 = [PasscodeViewState backOffStateWithTitle:v6 subtitle:v7];
  _style = [(PasscodeViewController *)self _style];
  v10 = [v8 withStyle:_style];
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

- (void)_switchToBackoffScreen:(id)screen animated:(BOOL)animated
{
  userInfo = [screen userInfo];
  v6 = [userInfo objectForKey:LAPasswordRetryTime];
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
      selfCopy = self;
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

- (void)mechanismEvent:(int64_t)event value:(id)value reply:(id)reply
{
  valueCopy = value;
  replyCopy = reply;
  v10 = LACLogPasscodeUI();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromMechanismEventAndValue();
    *buf = 138543874;
    selfCopy = self;
    v24 = 1024;
    eventCopy = event;
    v26 = 2112;
    v27 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ has received mechanism event %d (%@)", buf, 0x1Cu);
  }

  if (event > 2)
  {
    if (event == 3)
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

    if (event != 4 && event != 13)
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

  if (event == 1)
  {
    goto LABEL_11;
  }

  if (event == 2)
  {
    +[LAUIPearlGlyphView invokeSuccessFeedback];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __53__PasscodeViewController_mechanismEvent_value_reply___block_invoke;
    block[3] = &unk_1000AA568;
    block[4] = self;
    v21 = replyCopy;
    dispatch_async(&_dispatch_main_q, block);

    goto LABEL_18;
  }

LABEL_16:
  if (replyCopy)
  {
    replyCopy[2](replyCopy);
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