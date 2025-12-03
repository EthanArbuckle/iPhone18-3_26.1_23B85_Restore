@interface FaceIdViewController
- (BOOL)_requiresRemoteUI;
- (BOOL)_shouldShowUIForBiometryRequired;
- (BOOL)processHomeButtonPressed;
- (id)_coachingTextForFeedback:(int64_t)feedback;
- (id)_createGlyphViewForRetryUI:(BOOL)i;
- (void)_animateAlongsideTransitionFinishedWithContext:(id)context;
- (void)_animateAlongsideTransitionStartedWithContext:(id)context;
- (void)_destroyViewControllers;
- (void)_dismissCoachingViews;
- (void)_dismissToastWithDelay:(double)delay completion:(id)completion;
- (void)_handleBioLockout:(id)lockout;
- (void)_handleMatch;
- (void)_handleNoMatchOrSensorInactive:(id)inactive;
- (void)_handleSensorActiveWithCompletion:(id)completion;
- (void)_handleToastPresentedWithCompletion:(id)completion;
- (void)_hideGlyphWithSpecialUi:(BOOL)ui;
- (void)_presentToastWithCompletion:(id)completion;
- (void)_processCoachingFeedback:(int64_t)feedback;
- (void)_setActionButtons;
- (void)_setupToastWithGlyph:(id)glyph;
- (void)_shake:(BOOL)_shake;
- (void)_showFailAlert;
- (void)_updatePearlViews;
- (void)dealloc;
- (void)dismissChildWithCompletionHandler:(id)handler;
- (void)loadView;
- (void)mechanismEvent:(int64_t)event value:(id)value reply:(id)reply;
- (void)setSuspended:(BOOL)suspended;
- (void)uiCancelByGestureIfPossible;
- (void)uiEvent:(int64_t)event options:(id)options;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation FaceIdViewController

- (void)loadView
{
  v2 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to unarchive tint color: %{public}@", &v2, 0xCu);
}

- (void)dealloc
{
  [(FaceIdViewController *)self _dismissToastWithDelay:&__block_literal_global_5 completion:0.0];
  v3.receiver = self;
  v3.super_class = FaceIdViewController;
  [(TransitionViewController *)&v3 dealloc];
}

- (id)_createGlyphViewForRetryUI:(BOOL)i
{
  iCopy = i;
  v5 = LADynamicIslandAvailable();
  options = [(TransitionViewController *)self options];
  v7 = LACLightweightUIModeFromOptions();

  if (v5 && v7)
  {
    goto LABEL_3;
  }

  if (v5)
  {
    v9 = +[LACSecureFaceIDUIUtilities sharedInstance];
    isActive = [v9 isActive];

    if (isActive)
    {
LABEL_3:
      v8 = 0;
      goto LABEL_22;
    }

    v11 = +[LAUIPearlGlyphStaticConfiguration createSystemApertureConfiguration];
    v12 = 4;
  }

  else
  {
    v11 = +[LAUIPearlGlyphStaticConfiguration createDefaultConfiguration];
    v12 = 1;
  }

  if (v7)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  if (!v7)
  {
    iCopy = 1;
  }

  [v11 setInitialStyle:v13];
  [v11 setSecureVariantEnabled:1];
  [v11 setSecureVariantType:!iCopy];
  v14 = [[LAUIPearlGlyphView alloc] initWithConfiguration:v11];
  v15 = LACLogFaceIDUI();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v23 = 138412290;
    v24 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "glyph created: %@", &v23, 0xCu);
  }

  if ((LADynamicIslandAvailable() & 1) == 0 && v7)
  {
    v16 = +[UIColor systemBlueColor];
    [v14 setIdleColor:v16 animated:0];
  }

  if (LADynamicIslandAvailable())
  {
    options2 = [(TransitionViewController *)self options];
    v18 = [options2 objectForKeyedSubscript:&off_1000AF560];
    v19 = [v18 objectForKeyedSubscript:&off_1000AF578];
    v20 = [v19 objectForKeyedSubscript:&off_1000AF590];
    integerValue = [v20 integerValue];

    if (integerValue == 2)
    {
      [v14 setFaceVisibility:7 animated:0];
    }
  }

  v8 = v14;

LABEL_22:

  return v8;
}

- (void)_setupToastWithGlyph:(id)glyph
{
  glyphCopy = glyph;
  v5 = [FaceIdToastViewController alloc];
  v14 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v14 localizedStringForKey:@"PEARL" value:&stru_1000ADB50 table:@"MobileUI"];
  options = [(TransitionViewController *)self options];
  v8 = LACLightweightUIModeFromOptions();
  options2 = [(TransitionViewController *)self options];
  v10 = [NSNumber numberWithInteger:LACPolicyOptionSecureUIRecording];
  v11 = [options2 objectForKeyedSubscript:v10];
  v12 = -[FaceIdToastViewController initWithGlyph:presentingController:title:lightweightUIMode:secureUIRecording:](v5, "initWithGlyph:presentingController:title:lightweightUIMode:secureUIRecording:", glyphCopy, self, v6, v8, [v11 BOOLValue]);

  toastController = self->_toastController;
  self->_toastController = v12;
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = FaceIdViewController;
  [(FaceIdViewController *)&v3 viewWillLayoutSubviews];
  [(FaceIdViewController *)self _updatePearlViews];
}

- (void)_presentToastWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!self->_toastController)
  {
    goto LABEL_10;
  }

  if (([(FaceIdViewController *)self isBeingDismissed]& 1) != 0 || self->_dismissed)
  {
    v5 = LACLogFaceIDUI();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_dismissed)
      {
        v6 = @"dismissed";
      }

      else
      {
        v6 = @"being dismissed";
      }

      *buf = 138543618;
      selfCopy = self;
      v18 = 2114;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Will not present Face ID glyph because %{public}@ is %{public}@", buf, 0x16u);
    }

    goto LABEL_10;
  }

  v7 = +[TransitionViewController rootController];
  disappeared = [v7 disappeared];

  if (disappeared)
  {
    v9 = LACLogFaceIDUI();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "Will not present Face ID glyph because root controller has disappeared.";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
      goto LABEL_19;
    }

    goto LABEL_19;
  }

  v11 = +[TransitionViewController rootController];
  dismissing = [v11 dismissing];

  if (dismissing)
  {
    v9 = LACLogFaceIDUI();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "Will not present Face ID glyph because UI is dismissing.";
      goto LABEL_18;
    }

LABEL_19:

LABEL_10:
    completionCopy[2](completionCopy);
    goto LABEL_11;
  }

  if (self->_toastWasUsedForJindoPresentation)
  {
    [(FaceIdToastViewController *)self->_toastController dismissWithDelay:&__block_literal_global_59 completion:0.0];
    [(FaceIdViewController *)self _setupToastWithGlyph:self->_glyphView];
  }

  if (LADynamicIslandAvailable())
  {
    self->_toastWasUsedForJindoPresentation = 1;
  }

  toastController = self->_toastController;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __52__FaceIdViewController__presentToastWithCompletion___block_invoke_2;
  v14[3] = &unk_1000AA568;
  v14[4] = self;
  v15 = completionCopy;
  [(PresentationViewController *)toastController presentOnParentViewController:self animated:0 completionHandler:v14];

LABEL_11:
}

- (void)_handleToastPresentedWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (self->_toastController)
  {
    objc_initWeak(&location, self);
    toastController = self->_toastController;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __60__FaceIdViewController__handleToastPresentedWithCompletion___block_invoke;
    v9[3] = &unk_1000AA658;
    objc_copyWeak(&v11, &location);
    v10 = v5;
    [(FaceIdToastViewController *)toastController dispatchBlockAfterDidAppear:v9];
    physicalButtonView = self->_physicalButtonView;
    if (physicalButtonView && ([(LAUIPhysicalButtonView *)physicalButtonView isHidden]& 1) == 0)
    {
      instruction = [(LAUIPhysicalButtonView *)self->_physicalButtonView instruction];
      UIAccessibilityPostNotification(UIAccessibilityAnnouncementNotification, instruction);
    }

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy);
  }
}

void __60__FaceIdViewController__handleToastPresentedWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained options];
    v5 = [NSNumber numberWithInteger:LACPolicyOptionSecureUIRecording];
    v6 = [v4 objectForKeyedSubscript:v5];
    v7 = [v6 BOOLValue];

    if (v7)
    {
      v8 = LACLogFaceIDUI();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Will drop ViewDidAppear event due to secure UI recording", v9, 2u);
      }
    }

    else
    {
      [v3 uiEvent:0 options:0];
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)uiCancelByGestureIfPossible
{
  v3 = LACLogFaceIDUI();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    pearlUIState = self->_pearlUIState;
    v5 = 138543618;
    selfCopy = self;
    v7 = 1024;
    v8 = pearlUIState;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ requested cancel while in state:%d", &v5, 0x12u);
  }

  if (LADynamicIslandAvailable())
  {
    goto LABEL_7;
  }

  if (self->_coachingFeedback == 1 && (self->_pearlUIState | 4) == 4)
  {
    [(ScreenDimmingView *)self->_dimmingView setDimEnabled:0];
LABEL_7:
    if (![(FaceIdViewController *)self processHomeButtonPressed])
    {
      [(TransitionViewController *)self uiCancel];
    }
  }
}

- (void)_showFailAlert
{
  objc_initWeak(&location, self);
  v3 = LADynamicIslandAvailable();
  alertController = [(FaceIdViewController *)self alertController];

  if (!alertController)
  {
    if (v3)
    {
      v7 = objc_loadWeakRetained(&location);
      [v7 _presentAlertAnimated:1 specialUi:1];

      goto LABEL_11;
    }

    toastController = [(FaceIdViewController *)self toastController];
    if ([toastController isViewLoaded])
    {
      toastController2 = [(FaceIdViewController *)self toastController];
      view = [toastController2 view];
      window = [view window];

      if (window)
      {
        toastController3 = [(FaceIdViewController *)self toastController];
        v6 = v12;
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = __38__FaceIdViewController__showFailAlert__block_invoke_2;
        v12[3] = &unk_1000AAD00;
        objc_copyWeak(&v13, &location);
        v14 = 0;
        [toastController3 dismissWithDelay:v12 completion:0.0];
        goto LABEL_3;
      }
    }

    else
    {
    }

    [(FaceIdViewController *)self _presentAlertAnimated:0 specialUi:0];
    goto LABEL_11;
  }

  [(FaceIdViewController *)self setDismissingTemporarily:1];
  toastController3 = [(FaceIdViewController *)self alertController];
  v6 = v15;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __38__FaceIdViewController__showFailAlert__block_invoke;
  v15[3] = &unk_1000AAD00;
  objc_copyWeak(&v16, &location);
  v17 = v3;
  [toastController3 dismissViewControllerAnimated:0 completion:v15];
LABEL_3:

  objc_destroyWeak(v6 + 4);
LABEL_11:
  objc_destroyWeak(&location);
}

void __38__FaceIdViewController__showFailAlert__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained setDismissingTemporarily:0];
    v3 = [v4 alertController];
    [v3 _setHeaderContentViewController:0];

    [v4 _presentAlertAnimated:0 specialUi:*(a1 + 40)];
    WeakRetained = v4;
  }
}

void __38__FaceIdViewController__showFailAlert__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _presentAlertAnimated:1 specialUi:*(a1 + 40)];
}

id __56__FaceIdViewController__presentAlertAnimated_specialUi___block_invoke(uint64_t a1)
{
  v2 = LACLogFaceIDUI();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Will dismiss %{public}@", &v5, 0xCu);
  }

  return [*(a1 + 32) dismissWithDelay:&__block_literal_global_66 completion:0.0];
}

uint64_t __56__FaceIdViewController__presentAlertAnimated_specialUi___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if (([WeakRetained dismissingTemporarily] & 1) == 0)
    {
      v2 = [v4 toastController];
      [v2 dismissWithDelay:&__block_literal_global_69 completion:0.0];
    }
  }

  return _objc_release_x1();
}

void __56__FaceIdViewController__presentAlertAnimated_specialUi___block_invoke_88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[38];
    if (v4)
    {
      v5 = [WeakRetained presentedViewController];

      if (v4 != v5)
      {
        v6 = v3[38];
        v7 = *(a1 + 40);
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3221225472;
        v8[2] = __56__FaceIdViewController__presentAlertAnimated_specialUi___block_invoke_2_89;
        v8[3] = &unk_1000AAD00;
        v10 = *(a1 + 41);
        objc_copyWeak(&v9, (a1 + 32));
        [v3 presentViewController:v6 animated:v7 completion:v8];
        objc_destroyWeak(&v9);
      }
    }
  }
}

void __56__FaceIdViewController__presentAlertAnimated_specialUi___block_invoke_2_89(uint64_t a1)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _shake:*(a1 + 40)];
  }
}

- (void)_hideGlyphWithSpecialUi:(BOOL)ui
{
  if (ui)
  {
    toastController = [(FaceIdViewController *)self toastController];
    [toastController dismissWithDelay:&__block_literal_global_91 completion:0.0];
  }

  else
  {
    toastController = [(FaceIdViewController *)self alertController];
    [toastController setGlyph:0];
  }
}

- (void)setSuspended:(BOOL)suspended
{
  suspendedCopy = suspended;
  toastController = [(FaceIdViewController *)self toastController];
  lightweightUI = [toastController lightweightUI];

  v7 = lightweightUI | suspendedCopy;
  v8 = LACLogFaceIDUI();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = "resumed";
    if (v7)
    {
      v9 = "suspended";
    }

    v11 = 138543618;
    selfCopy = self;
    v13 = 2080;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ has been %s", &v11, 0x16u);
  }

  dimmingView = [(FaceIdViewController *)self dimmingView];
  [dimmingView setHidden:v7];

  self->_suspended = v7;
}

- (void)_setActionButtons
{
  objc_initWeak(&location, self);
  pearlUIState = self->_pearlUIState;
  options = [(TransitionViewController *)self options];
  v5 = [options objectForKeyedSubscript:&off_1000AF5C0];
  v96 = 0;
  v97 = &v96;
  v98 = 0x2020000000;
  v61 = v5;
  if (v5)
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  v99 = bOOLValue;
  v92 = 0;
  v93 = &v92;
  v94 = 0x2020000000;
  v95 = 0;
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  v64 = [v7 localizedStringForKey:@"CANCEL" value:&stru_1000ADB50 table:@"MobileUI"];

  v88 = 0;
  v89 = &v88;
  v90 = 0x2020000000;
  v91 = 0;
  v65 = [options objectForKeyedSubscript:&off_1000AF5D8];
  bOOLValue2 = [v65 BOOLValue];
  self->_fallbackVisible = bOOLValue2;
  if ((pearlUIState - 5) < 3)
  {
    if (bOOLValue2)
    {
      bOOLValue2 = 1;
      goto LABEL_11;
    }

LABEL_9:
    if (*(v89 + 24) != 1)
    {
LABEL_13:
      *(v97 + 24) = 1;
      goto LABEL_14;
    }

    bOOLValue2 = 0;
    goto LABEL_11;
  }

  if (pearlUIState != 8)
  {
    goto LABEL_12;
  }

  bOOLValue2 = 1;
  *(v89 + 24) = 1;
  if (!self->_fallbackVisible)
  {
    goto LABEL_9;
  }

LABEL_11:
  if (!self->_showFallback)
  {
    self->_showFallback = 1;
    if (self->_fallbackVisible)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_12:
  if ((bOOLValue2 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_14:
  if ([v65 intValue] == 2 || (v97[3] & 1) == 0)
  {
    self->_showFallback = 1;
  }

  v9 = LACLogFaceIDUI();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    alertController = [(FaceIdViewController *)self alertController];
    fallbackVisible = self->_fallbackVisible;
    v12 = *(v97 + 24);
    showFallback = self->_showFallback;
    *buf = 138544386;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = alertController;
    *&buf[22] = 1024;
    v102 = v12;
    v103 = 1024;
    v104 = fallbackVisible;
    v105 = 1024;
    v106 = showFallback;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ will present %{public}@ with buttons - cancel:%d, fallback:%d, show fallback immediately:%d", buf, 0x28u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v102) = self->_showFallback;
  v84 = 0;
  v85 = &v84;
  v86 = 0x2020000000;
  v87 = 0;
  v80 = 0;
  v81 = &v80;
  v82 = 0x2020000000;
  v83 = 0;
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = __41__FaceIdViewController__setActionButtons__block_invoke;
  v72[3] = &unk_1000AADB0;
  v72[4] = self;
  v74 = &v88;
  v63 = options;
  v73 = v63;
  v75 = &v80;
  v76 = &v84;
  v79[1] = pearlUIState;
  objc_copyWeak(v79, &location);
  v77 = &v96;
  v78 = buf;
  v14 = objc_retainBlock(v72);
  v15 = 0;
  v16 = 0;
  if (pearlUIState > 5)
  {
    switch(pearlUIState)
    {
      case 6:
        if (self->_fallbackVisible && !self->_showFallback)
        {
          self->_showFallback = 1;
        }

        break;
      case 7:
        v30 = [NSBundle bundleForClass:objc_opt_class()];
        v31 = [v30 localizedStringForKey:@"FACE_ID_REQUIRED" value:&stru_1000ADB50 table:@"MobileUI"];
        [(TransitionViewController *)self setAuthenticationTitle:v31];

        v32 = [NSBundle bundleForClass:objc_opt_class()];
        v33 = [v32 localizedStringForKey:@"DTO_IS_ACTIVE_FACE_ID" value:&stru_1000ADB50 table:@"MobileUI-Ratchet"];
        [(TransitionViewController *)self setAuthenticationSubtitle:v33];

        alertController = self->_alertController;
        authenticationTitle = [(TransitionViewController *)self authenticationTitle];
        [(FaceIdAlertViewController *)alertController setTitle:authenticationTitle];

        v36 = self->_alertController;
        authenticationSubtitle = [(TransitionViewController *)self authenticationSubtitle];
        [(FaceIdAlertViewController *)v36 setMessage:authenticationSubtitle];

        v38 = [NSBundle bundleForClass:objc_opt_class()];
        v39 = [v38 localizedStringForKey:@"OK" value:&stru_1000ADB50 table:@"MobileUI"];

        *(v93 + 24) = 1;
        v40 = self->_alertController;
        v41 = [NSBundle bundleForClass:objc_opt_class()];
        v42 = [v41 localizedStringForKey:@"LEARN_MORE" value:&stru_1000ADB50 table:@"MobileUI"];
        v68[0] = _NSConcreteStackBlock;
        v68[1] = 3221225472;
        v68[2] = __41__FaceIdViewController__setActionButtons__block_invoke_3;
        v68[3] = &unk_1000AA370;
        v20 = &v69;
        objc_copyWeak(&v69, &location);
        v43 = [LACUIBiometryAlertAction actionWithType:2 title:v42 handler:v68];
        [(FaceIdAlertViewController *)v40 addCustomAction:v43];

        v15 = 0;
        v16 = 3;
        v64 = v39;
        goto LABEL_35;
      case 8:
        v22 = [NSBundle bundleForClass:objc_opt_class()];
        v23 = [v22 localizedStringForKey:@"PASSCODE_TO_RETRY_FACE_ID" value:&stru_1000ADB50 table:@"MobileUI"];
        [(TransitionViewController *)self setAuthenticationTitle:v23];

        v24 = [NSBundle bundleForClass:objc_opt_class()];
        v25 = [v24 localizedStringForKey:@"DTO_IS_ACTIVE_FACE_ID" value:&stru_1000ADB50 table:@"MobileUI-Ratchet"];
        [(TransitionViewController *)self setAuthenticationSubtitle:v25];

        v26 = self->_alertController;
        authenticationTitle2 = [(TransitionViewController *)self authenticationTitle];
        [(FaceIdAlertViewController *)v26 setTitle:authenticationTitle2];

        v28 = self->_alertController;
        authenticationSubtitle2 = [(TransitionViewController *)self authenticationSubtitle];
        [(FaceIdAlertViewController *)v28 setMessage:authenticationSubtitle2];

        break;
      default:
        goto LABEL_36;
    }

LABEL_33:
    (v14[2])(v14);
    v16 = 0;
    v15 = 0;
    goto LABEL_36;
  }

  if ((pearlUIState - 2) < 2)
  {
    v17 = self->_alertController;
    v18 = [NSBundle bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"PEARL_TRY_AGAIN" value:&stru_1000ADB50 table:@"MobileUI"];
    v70[0] = _NSConcreteStackBlock;
    v70[1] = 3221225472;
    v70[2] = __41__FaceIdViewController__setActionButtons__block_invoke_2;
    v70[3] = &unk_1000AA370;
    v20 = &v71;
    objc_copyWeak(&v71, &location);
    v21 = [LACUIBiometryAlertAction actionWithType:4 title:v19 shouldDismissAlert:0 handler:v70];
    [(FaceIdAlertViewController *)v17 addCustomAction:v21];

    (v14[2])(v14);
    v16 = 0;
    v15 = 1;
LABEL_35:
    objc_destroyWeak(v20);
    goto LABEL_36;
  }

  if (pearlUIState == 5)
  {
    goto LABEL_33;
  }

LABEL_36:
  if ((v97[3] & 1) == 0)
  {
    goto LABEL_45;
  }

  v44 = [v63 objectForKeyedSubscript:&off_1000AF608];
  v45 = [LACStringHelper truncateString:v44 maxLength:32];

  if (v45)
  {
    v46 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
    v47 = [v45 stringByTrimmingCharactersInSet:v46];

    if (v47 && [v47 length])
    {
      goto LABEL_44;
    }
  }

  else
  {
    v47 = 0;
  }

  v48 = v64;

  v47 = v48;
LABEL_44:
  v49 = self->_alertController;
  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = __41__FaceIdViewController__setActionButtons__block_invoke_140;
  v66[3] = &unk_1000AADD8;
  objc_copyWeak(&v67, &location);
  v66[4] = &v92;
  v50 = [LACUIBiometryAlertAction actionWithType:v16 title:v47 shouldDismissAlert:0 handler:v66];
  [(FaceIdAlertViewController *)v49 addCustomAction:v50];

  objc_destroyWeak(&v67);
LABEL_45:
  actions = [(FaceIdAlertViewController *)self->_alertController actions];
  v52 = [actions objectAtIndexedSubscript:0];
  [(FaceIdAlertViewController *)self->_alertController setPreferredAction:v52];

  if (pearlUIState != 6 && !self->_hwIssueEvent && (pearlUIState - 7) >= 2)
  {
    if (pearlUIState == 3)
    {
      options2 = [NSBundle bundleForClass:objc_opt_class()];
      v54 = [options2 localizedStringForKey:@"FACE_ID_UNBOUND_MESSAGE" value:&stru_1000ADB50 table:@"MobileUI"];
      [(TransitionViewController *)self setAuthenticationSubtitle:v54];
    }

    else if (*(*&buf[8] + 24) == 1)
    {
      if (*(v81 + 24) == 1)
      {
        options2 = [(TransitionViewController *)self options];
        v54 = [options2 objectForKeyedSubscript:&off_1000AF590];
        v57 = [LACStringHelper truncateString:v54 maxLength:512];
        [(TransitionViewController *)self setAuthenticationSubtitle:v57];
      }

      else
      {
        v58 = *(v85 + 24);
        if (v15)
        {
          if (*(v85 + 24))
          {
            options2 = [NSBundle bundleForClass:objc_opt_class()];
            v54 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"TRY_AGAIN_OR_ENTER_PASSCODE"];
            v59 = [options2 localizedStringForKey:v54 value:&stru_1000ADB50 table:@"MobileUI"];
          }

          else
          {
            options2 = [NSBundle bundleForClass:objc_opt_class()];
            v59 = [options2 localizedStringForKey:@"TRY_AGAIN_OR_ENTER_PASSWORD" value:&stru_1000ADB50 table:@"MobileUI"];
            v54 = v59;
          }

          [(TransitionViewController *)self setAuthenticationSubtitle:v59];
          if (!v58)
          {
            goto LABEL_50;
          }
        }

        else
        {
          if (*(v85 + 24))
          {
            options2 = [NSBundle bundleForClass:objc_opt_class()];
            v54 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"ENTER_PASSCODE"];
            v59 = [options2 localizedStringForKey:v54 value:&stru_1000ADB50 table:@"MobileUI"];
          }

          else
          {
            options2 = [NSBundle bundleForClass:objc_opt_class()];
            v59 = [options2 localizedStringForKey:@"ENTER_YOUR_PASSWORD" value:&stru_1000ADB50 table:@"MobileUI"];
            v54 = v59;
          }

          [(TransitionViewController *)self setAuthenticationSubtitle:v59];
          if (!v58)
          {
            goto LABEL_50;
          }
        }
      }
    }

    else
    {
      if (!v15)
      {
        [(TransitionViewController *)self setAuthenticationSubtitle:0];
        goto LABEL_51;
      }

      if ([(FaceIdViewController *)self _shouldShowUIForBiometryRequired])
      {
        options2 = [NSBundle bundleForClass:objc_opt_class()];
        [options2 localizedStringForKey:@"FACE_ID_REQUIRED_MESSAGE" value:&stru_1000ADB50 table:@"MobileUI"];
      }

      else
      {
        options2 = [NSBundle bundleForClass:objc_opt_class()];
        [options2 localizedStringForKey:@"TRY_AGAIN" value:&stru_1000ADB50 table:@"MobileUI"];
      }
      v60 = ;
      [(TransitionViewController *)self setAuthenticationSubtitle:v60];
      v54 = v60;
    }

LABEL_50:

LABEL_51:
    v55 = self->_alertController;
    authenticationSubtitle3 = [(TransitionViewController *)self authenticationSubtitle];
    [(FaceIdAlertViewController *)v55 setMessage:authenticationSubtitle3];
  }

  objc_destroyWeak(v79);
  _Block_object_dispose(&v80, 8);
  _Block_object_dispose(&v84, 8);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v88, 8);
  _Block_object_dispose(&v92, 8);
  _Block_object_dispose(&v96, 8);

  objc_destroyWeak(&location);
}

void __41__FaceIdViewController__setActionButtons__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (((*(v2 + 201) & 1) != 0 || *(*(*(a1 + 48) + 8) + 24) == 1) && *(v2 + 202) == 1)
  {
    v3 = [*(a1 + 40) objectForKeyedSubscript:&off_1000AF5F0];
    v4 = [LACStringHelper truncateString:v3 maxLength:32];

    if (v4 && (+[NSCharacterSet whitespaceAndNewlineCharacterSet](NSCharacterSet, "whitespaceAndNewlineCharacterSet"), v5 = objc_claimAutoreleasedReturnValue(), [v4 stringByTrimmingCharactersInSet:v5], v6 = objc_claimAutoreleasedReturnValue(), v4, v5, *(*(*(a1 + 56) + 8) + 24) = 1, v6))
    {
      if ([v6 isEqualToString:@"Enter Passcode"])
      {
        v7 = *(a1 + 32);
        v8 = [NSBundle bundleForClass:objc_opt_class()];
        v9 = [v8 localizedStringForKey:@"ENTER_PASSCODE_ONLY" value:&stru_1000ADB50 table:@"MobileUI"];

        *(*(*(a1 + 64) + 8) + 24) = 1;
        *(*(*(a1 + 56) + 8) + 24) = 0;
        v6 = v9;
      }
    }

    else
    {
      v10 = *(a1 + 32);
      v11 = [NSBundle bundleForClass:objc_opt_class()];
      v6 = [v11 localizedStringForKey:@"ENTER_PASSWORD" value:&stru_1000ADB50 table:@"MobileUI"];
    }

    if ([v6 length])
    {
      v12 = *(*(a1 + 32) + 304);
      v14 = _NSConcreteStackBlock;
      v15 = 3221225472;
      v16 = __41__FaceIdViewController__setActionButtons__block_invoke_115;
      v17 = &unk_1000AAD88;
      v18[1] = *(a1 + 96);
      objc_copyWeak(v18, (a1 + 88));
      v13 = [LACUIBiometryAlertAction actionWithType:1 title:v6 shouldDismissAlert:0 handler:&v14];
      [v12 addCustomAction:{v13, v14, v15, v16, v17}];

      objc_destroyWeak(v18);
    }

    else
    {
      *(*(*(a1 + 72) + 8) + 24) = 1;
      *(*(*(a1 + 80) + 8) + 24) = 0;
    }
  }
}

void __41__FaceIdViewController__setActionButtons__block_invoke_115(uint64_t a1)
{
  v1 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (v1 == 8)
  {
    [WeakRetained _uiCancelWithUnderlyingError];
  }

  else
  {
    [WeakRetained _enterPassword];
  }
}

void __41__FaceIdViewController__setActionButtons__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained pearlUIState];

  if (v3 != 4)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    [v4 setPearlUIState:4];

    v5 = objc_loadWeakRetained((a1 + 32));
    [v5 uiEvent:6 options:0];
  }
}

void __41__FaceIdViewController__setActionButtons__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained uiCancelWithError:WeakRetained[26]];
    v2 = +[LACUIDTOUtilities dtoLearnMoreLinkURL];
    [v3 uiOpenURL:v2];

    WeakRetained = v3;
  }
}

void __41__FaceIdViewController__setActionButtons__block_invoke_140(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if (*(WeakRetained + 27) && *(WeakRetained + 201) == 1)
    {
      v3 = [LAErrorHelper errorWithCode:-3 message:@"Fallback authentication mechanism selected."];
      [v4 uiFailureWithError:v3];
    }

    else if (*(*(*(a1 + 32) + 8) + 24) == 1)
    {
      [WeakRetained _uiCancelWithUnderlyingError];
    }

    else
    {
      [WeakRetained uiCancel];
    }

    WeakRetained = v4;
  }
}

- (BOOL)_shouldShowUIForBiometryRequired
{
  options = [(TransitionViewController *)self options];
  v3 = [NSNumber numberWithInteger:LACPolicyOptionShowUIForBiometryRequired];
  v4 = [options objectForKeyedSubscript:v3];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

- (void)_shake:(BOOL)_shake
{
  if (_shake)
  {
    [(FaceIdViewController *)self toastController];
  }

  else
  {
    [(FaceIdViewController *)self alertController];
  }
  v3 = ;
  [v3 shake];

  LODWORD(v3) = UIAccessibilityAnnouncementNotification;
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v5 localizedStringForKey:@"TRY_AGAIN" value:&stru_1000ADB50 table:@"MobileUI"];
  UIAccessibilityPostNotification(v3, v4);
}

- (void)mechanismEvent:(int64_t)event value:(id)value reply:(id)reply
{
  valueCopy = value;
  replyCopy = reply;
  v10 = LACLogFaceIDUI();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromMechanismEventAndValue();
    v14 = 138543874;
    selfCopy = self;
    v16 = 1024;
    eventCopy = event;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ has received mechanism event %d (%@)", &v14, 0x1Cu);
  }

  underlyingError = self->_underlyingError;
  self->_underlyingError = 0;

  if (event <= 7)
  {
    if (event > 4)
    {
      if (event == 5)
      {
        [(FaceIdViewController *)self _handleSensorActiveWithCompletion:&__block_literal_global_167];
        goto LABEL_35;
      }

      if (event != 6)
      {
        v13 = [valueCopy copy];
        [(FaceIdViewController *)self _handleBioLockout:v13];
        goto LABEL_25;
      }
    }

    else if (event != 1)
    {
      if (event == 2)
      {
        [(FaceIdViewController *)self _handleMatch];
        if (!replyCopy)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      if (event == 3)
      {
        self->_animationStart = CFAbsoluteTimeGetCurrent();
        [(FaceIdViewController *)self _setGlyphState:2 animated:1];
        if (self->_pearlUIState == 5)
        {
          self->_pearlUIState = 4;
          if (!replyCopy)
          {
            goto LABEL_37;
          }

          goto LABEL_36;
        }
      }

      goto LABEL_35;
    }

    v13 = [valueCopy copy];
    [(FaceIdViewController *)self _handleNoMatchOrSensorInactive:v13];
LABEL_25:

    if (!replyCopy)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (event > 11)
  {
    if (event <= 13)
    {
      [(LAUIPhysicalButtonView *)self->_physicalButtonView setHidden:event == 12];
      if (!replyCopy)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    if (event == 14)
    {
      -[FaceIdViewController _processCoachingFeedback:](self, "_processCoachingFeedback:", [valueCopy intValue]);
      if (!replyCopy)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    if (event == 20)
    {
      [(FaceIdViewController *)self _handleSensorActiveWithCompletion:replyCopy];
      goto LABEL_37;
    }
  }

  else if ((event - 8) >= 3)
  {
    if (event == 11)
    {
      self->_silentFallback = 1;
      if (!replyCopy)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }
  }

  else
  {
    self->_hwIssueEvent = event;
    if ([(TransitionViewController *)self appeared])
    {
      [(FaceIdViewController *)self _showFailAlert];
      if (!replyCopy)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }
  }

LABEL_35:
  if (replyCopy)
  {
LABEL_36:
    replyCopy[2](replyCopy);
  }

LABEL_37:
}

- (void)_handleMatch
{
  self->_pearlUIState = 1;
  [(FaceIdViewController *)self _dismissCoachingViews];
  [(ScreenDimmingView *)self->_dimmingView setDimEnabled:0];
  toastController = [(FaceIdViewController *)self toastController];
  if ([toastController lightweightUI])
  {

    v4 = 0.0;
  }

  else
  {
    v4 = self->_animationStart - CFAbsoluteTimeGetCurrent() + 0.4;

    if (v4 > 0.0)
    {
      v5 = LACLogFaceIDUI();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy = self;
        v11 = 2048;
        v12 = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ will extend animation time by %.02f sec", buf, 0x16u);
      }
    }
  }

  objc_initWeak(buf, self);
  v6 = dispatch_time(0, (v4 * 1000000000.0));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __36__FaceIdViewController__handleMatch__block_invoke;
  block[3] = &unk_1000AA370;
  objc_copyWeak(&v8, buf);
  dispatch_after(v6, &_dispatch_main_q, block);
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

void __36__FaceIdViewController__handleMatch__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setGlyphState:3 animated:1];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 setSuspended:1];
}

- (void)_handleSensorActiveWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __58__FaceIdViewController__handleSensorActiveWithCompletion___block_invoke;
  v14[3] = &unk_1000AA658;
  objc_copyWeak(&v16, &location);
  v5 = completionCopy;
  v15 = v5;
  v6 = objc_retainBlock(v14);
  self->_animationStart = 0.0;
  if (self->_alertController)
  {
    self->_pearlUIState = 4;
    alertController = self->_alertController;
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"PEARL" value:&stru_1000ADB50 table:@"MobileUI"];
    [(FaceIdAlertViewController *)alertController setTitle:v9];

LABEL_9:
    (v6[2])(v6);
    goto LABEL_10;
  }

  if (![(FaceIdViewController *)self isSuspended])
  {
    goto LABEL_9;
  }

  pearlUIState = self->_pearlUIState;
  v11 = pearlUIState > 5;
  v12 = (1 << pearlUIState) & 0x2C;
  if (v11 || v12 == 0)
  {
    goto LABEL_9;
  }

  self->_pearlUIState = 4;
  [(FaceIdViewController *)self _presentToastWithCompletion:v6];
LABEL_10:

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

uint64_t __58__FaceIdViewController__handleSensorActiveWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _setGlyphState:1 animated:1];

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)_handleNoMatchOrSensorInactive:(id)inactive
{
  inactiveCopy = inactive;
  if ((self->_pearlUIState | 4) == 4)
  {
    v16 = inactiveCopy;
    v5 = [inactiveCopy objectForKeyedSubscript:&off_1000AF620];
    bOOLValue = [v5 BOOLValue];

    v7 = [v16 objectForKeyedSubscript:&off_1000AF5F0];
    bOOLValue2 = [v7 BOOLValue];

    _shouldShowUIForBiometryRequired = [(FaceIdViewController *)self _shouldShowUIForBiometryRequired];
    v10 = [v16 objectForKeyedSubscript:&off_1000AF638];
    bOOLValue3 = [v10 BOOLValue];

    if (bOOLValue3)
    {
      v12 = 3;
    }

    else
    {
      if (bOOLValue)
      {
        v13 = 7;
        if (bOOLValue2 & 1 | ((_shouldShowUIForBiometryRequired & 1) == 0))
        {
          v13 = 5;
        }

        self->_pearlUIState = v13;
        if (!(bOOLValue2 & 1 | ((_shouldShowUIForBiometryRequired & 1) == 0)))
        {
          v14 = [v16 objectForKeyedSubscript:&off_1000AF590];
          underlyingError = self->_underlyingError;
          self->_underlyingError = v14;
        }

        goto LABEL_11;
      }

      v12 = 2;
    }

    self->_pearlUIState = v12;
LABEL_11:
    [(FaceIdViewController *)self _showFailAlert];
    inactiveCopy = v16;
  }
}

- (void)_handleBioLockout:(id)lockout
{
  lockoutCopy = lockout;
  if ((self->_pearlUIState - 6) >= 3)
  {
    v4 = [lockoutCopy objectForKeyedSubscript:&off_1000AF5F0];
    bOOLValue = [v4 BOOLValue];

    _shouldShowUIForBiometryRequired = [(FaceIdViewController *)self _shouldShowUIForBiometryRequired];
    v7 = 7;
    if (bOOLValue)
    {
      v7 = 8;
    }

    if (!_shouldShowUIForBiometryRequired)
    {
      v7 = 6;
    }

    self->_pearlUIState = v7;
    if ((v7 - 7) <= 1)
    {
      v8 = [lockoutCopy objectForKeyedSubscript:&off_1000AF590];
      underlyingError = self->_underlyingError;
      self->_underlyingError = v8;
    }
  }

  [(FaceIdViewController *)self _showFailAlert];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v8 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v8 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    objc_initWeak(&location, self);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __75__FaceIdViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v15[3] = &unk_1000AAE20;
    objc_copyWeak(&v16, &location);
    v10 = objc_retainBlock(v15);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __75__FaceIdViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
    v13[3] = &unk_1000AAE20;
    objc_copyWeak(&v14, &location);
    v11 = objc_retainBlock(v13);
    [coordinatorCopy animateAlongsideTransition:v10 completion:v11];
    v12.receiver = self;
    v12.super_class = FaceIdViewController;
    [(FaceIdViewController *)&v12 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    v18.receiver = self;
    v18.super_class = FaceIdViewController;
    [(FaceIdViewController *)&v18 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  }
}

void __75__FaceIdViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _animateAlongsideTransitionStartedWithContext:v3];
}

void __75__FaceIdViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _animateAlongsideTransitionFinishedWithContext:v3];
}

- (void)_animateAlongsideTransitionStartedWithContext:(id)context
{
  [(LAUIPhysicalButtonView *)self->_physicalButtonView setAnimating:0];
  [(LAUIHorizontalArrowView *)self->_horizontalArrowView setAnimating:0];

  [(FaceIdViewController *)self _updateSecureFaceIDViewForRotationStarting:1];
}

- (void)_animateAlongsideTransitionFinishedWithContext:(id)context
{
  [(FaceIdViewController *)self _updatePearlViews];
  [(LAUIPhysicalButtonView *)self->_physicalButtonView setAnimating:1];

  [(FaceIdViewController *)self _updateSecureFaceIDViewForRotationStarting:0];
}

- (void)_dismissCoachingViews
{
  if ([(LAUIHorizontalArrowView *)self->_horizontalArrowView isAnimating])
  {
    v3 = LACLogFaceIDUI();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "dismissing coaching views", v4, 2u);
    }

    [(LAUIHorizontalArrowView *)self->_horizontalArrowView setAnimating:0];
  }
}

- (void)_processCoachingFeedback:(int64_t)feedback
{
  v5 = LACLogFaceIDUI();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 67109120;
    LODWORD(feedbackCopy) = feedback;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_processCoachingFeedback %d", &v19, 8u);
  }

  if (self->_dismissed)
  {
    feedback = 1;
  }

  if (feedback == 10)
  {
    if ([(FaceIdViewController *)self interfaceOrientation]!= 2)
    {
      v6 = LACLogFaceIDUI();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v19) = 0;
        v7 = "ignoring pose marginal coaching feedback because device is not upside down";
        v8 = v6;
        v9 = OS_LOG_TYPE_DEFAULT;
        v10 = 2;
        goto LABEL_14;
      }

LABEL_15:

      return;
    }

    if (self->_coachingFeedback != 10)
    {
      self->_coachingFeedback = 10;
      goto LABEL_20;
    }

LABEL_10:
    v6 = LACLogFaceIDUI();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v19 = 134217984;
      feedbackCopy = feedback;
      v7 = "ignoring the same coaching feedback: %ld";
      v8 = v6;
      v9 = OS_LOG_TYPE_INFO;
      v10 = 12;
LABEL_14:
      _os_log_impl(&_mh_execute_header, v8, v9, v7, &v19, v10);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  if (feedback == self->_coachingFeedback)
  {
    goto LABEL_10;
  }

  self->_coachingFeedback = feedback;
  if (feedback == 11)
  {
    options = [(TransitionViewController *)self options];
    v12 = [options objectForKeyedSubscript:&off_1000AF5D8];
    if ([v12 BOOLValue] && (+[LACPolicyUtilities isBiometricOnlyPolicy:](LACPolicyUtilities, "isBiometricOnlyPolicy:", -[TransitionViewController policy](self, "policy")) & 1) == 0)
    {
      _requiresRemoteUI = [(FaceIdViewController *)self _requiresRemoteUI];

      if ((_requiresRemoteUI & 1) == 0)
      {
        [(TransitionViewController *)self uiFallback];
        return;
      }
    }

    else
    {
    }
  }

LABEL_20:
  alertController = self->_alertController;
  if (alertController)
  {
    view = [(FaceIdAlertViewController *)alertController view];
    superview = [view superview];
  }

  else
  {
    superview = [(FaceIdViewController *)self view];
  }

  superview2 = [(LAUIHorizontalArrowView *)self->_horizontalArrowView superview];

  if (superview2 != superview)
  {
    [(LAUIHorizontalArrowView *)self->_horizontalArrowView removeFromSuperview];
    [superview addSubview:self->_horizontalArrowView];
    [superview bringSubviewToFront:self->_horizontalArrowView];
  }

  v17 = [(FaceIdViewController *)self _coachingTextForFeedback:feedback];
  if (self->_pearlUIState)
  {
    [(FaceIdAlertViewController *)self->_alertController setTitle:v17];
  }

  else
  {
    [(FaceIdToastViewController *)self->_toastController setTitleText:v17];
    [(FaceIdToastViewController *)self->_toastController viewDidLayoutSubviews];
  }

  [(FaceIdViewController *)self _updatePearlViews];
}

- (BOOL)_requiresRemoteUI
{
  options = [(TransitionViewController *)self options];
  v3 = [options objectForKeyedSubscript:&off_1000AF560];
  v4 = [v3 objectForKeyedSubscript:&off_1000AF590];

  v5 = [v4 objectForKeyedSubscript:&off_1000AF620];
  if ([v5 BOOLValue])
  {
    bOOLValue = 1;
  }

  else
  {
    v7 = [v4 objectForKeyedSubscript:&off_1000AF638];
    bOOLValue = [v7 BOOLValue];
  }

  return bOOLValue;
}

- (id)_coachingTextForFeedback:(int64_t)feedback
{
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = v4;
  v6 = @"PEARL";
  if (feedback == 10)
  {
    v6 = @"PEARL_COACHING_LOOK_DOWN";
  }

  if (feedback == 8)
  {
    v7 = @"PEARL_COACHING_CAMERA_COVERED";
  }

  else
  {
    v7 = v6;
  }

  v8 = [v4 localizedStringForKey:v7 value:&stru_1000ADB50 table:@"MobileUI"];

  return v8;
}

- (void)_destroyViewControllers
{
  glyphView = self->_glyphView;
  if (glyphView)
  {
    [(LAUIPearlGlyphView *)glyphView setPaused:1];
    [(LAUIPearlGlyphView *)self->_glyphView purgeBuffers];
    [(LAUIPearlGlyphView *)self->_glyphView removeFromSuperview];
    v4 = LACLogFaceIDUI();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = self->_glyphView;
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "glyph destroyed: %@", &v10, 0xCu);
    }

    v6 = self->_glyphView;
    self->_glyphView = 0;
  }

  horizontalArrowView = self->_horizontalArrowView;
  self->_horizontalArrowView = 0;

  toastController = self->_toastController;
  self->_toastController = 0;

  alertController = self->_alertController;
  self->_alertController = 0;
}

uint64_t __65__FaceIdViewController_dismissViewControllerAnimated_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _destroyViewControllers];

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)dismissChildWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __58__FaceIdViewController_dismissChildWithCompletionHandler___block_invoke;
  v12[3] = &unk_1000AA658;
  objc_copyWeak(&v14, &location);
  v5 = handlerCopy;
  v13 = v5;
  v6 = objc_retainBlock(v12);
  if (!self->_dismissed && (self->_toastController || self->_alertController))
  {
    if (self->_pearlUIState == 1)
    {
      v7 = 1.0;
    }

    else
    {
      v7 = 0.0;
    }

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __58__FaceIdViewController_dismissChildWithCompletionHandler___block_invoke_2;
    v8[3] = &unk_1000AAE48;
    objc_copyWeak(&v10, &location);
    v8[4] = self;
    v9 = v6;
    [(FaceIdViewController *)self _dismissAlertWithDelay:0 temporarily:v8 completion:v7];

    objc_destroyWeak(&v10);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = FaceIdViewController;
    [(TransitionViewController *)&v11 dismissChildWithCompletionHandler:v6];
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

uint64_t __58__FaceIdViewController_dismissChildWithCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _destroyViewControllers];

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __58__FaceIdViewController_dismissChildWithCompletionHandler___block_invoke_2(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __58__FaceIdViewController_dismissChildWithCompletionHandler___block_invoke_3;
  v6[3] = &unk_1000AAB98;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [WeakRetained _dismissToastWithDelay:v6 completion:a2];
}

id __58__FaceIdViewController_dismissChildWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = FaceIdViewController;
  return objc_msgSendSuper2(&v3, "dismissChildWithCompletionHandler:", v1);
}

- (void)_dismissToastWithDelay:(double)delay completion:(id)completion
{
  completionCopy = completion;
  toastController = self->_toastController;
  if (toastController)
  {
    [(FaceIdToastViewController *)toastController dismissWithDelay:completionCopy completion:delay];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  _objc_release_x1();
}

void __70__FaceIdViewController__dismissAlertWithDelay_temporarily_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(0.0);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setDismissingTemporarily:0];
}

- (void)_updatePearlViews
{
  [(LAUIPhysicalButtonView *)self->_physicalButtonView updateFrame];
  horizontalArrowView = self->_horizontalArrowView;
  if (!horizontalArrowView)
  {
    return;
  }

  superview = [(LAUIHorizontalArrowView *)horizontalArrowView superview];
  [superview bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = +[LACMobileGestalt faceIDCameraOrientation];
  interfaceOrientation = [(FaceIdViewController *)self interfaceOrientation];
  if (interfaceOrientation <= 2)
  {
    if (interfaceOrientation != 1)
    {
      if (interfaceOrientation != 2)
      {
        return;
      }

      v15 = self->_horizontalArrowView;
      if (v13 == 2)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v15 = self->_horizontalArrowView;
    if (v13 != 2)
    {
      goto LABEL_15;
    }

LABEL_13:
    v21.origin.x = v6;
    v21.origin.y = v8;
    v21.size.width = v10;
    v21.size.height = v12;
    [(LAUIHorizontalArrowView *)v15 setCenter:v10 + -80.0, CGRectGetMidY(v21)];
    v16 = self->_horizontalArrowView;
    v17 = 1;
LABEL_17:
    [(LAUIHorizontalArrowView *)v16 setDirection:v17];
    v19 = self->_coachingFeedback == 8;
    v18 = self->_horizontalArrowView;
    goto LABEL_18;
  }

  if (interfaceOrientation != 3)
  {
    if (interfaceOrientation != 4)
    {
      return;
    }

    v15 = self->_horizontalArrowView;
    if (v13 == 2)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v15 = self->_horizontalArrowView;
  if (v13 != 2)
  {
LABEL_16:
    v22.origin.x = v6;
    v22.origin.y = v8;
    v22.size.width = v10;
    v22.size.height = v12;
    [(LAUIHorizontalArrowView *)v15 setCenter:80.0, CGRectGetMidY(v22)];
    v16 = self->_horizontalArrowView;
    v17 = 0;
    goto LABEL_17;
  }

LABEL_15:
  v18 = v15;
  v19 = 0;
LABEL_18:

  [(LAUIHorizontalArrowView *)v18 setAnimating:v19];
}

- (BOOL)processHomeButtonPressed
{
  v3 = LADynamicIslandActive();
  if (v3)
  {
    if ([(TransitionViewController *)self policy]== 1004)
    {
      v4 = LACLogFaceIDUI();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 138543362;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ recognized home gesture in Jindo for Stockholm", &v7, 0xCu);
      }

      [(FaceIdViewController *)self uiEvent:10 options:0];
      toastController = [(FaceIdViewController *)self toastController];
      [toastController dismissWithDelay:&__block_literal_global_191 completion:0.0];

      LOBYTE(v3) = 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (void)uiEvent:(int64_t)event options:(id)options
{
  v6.receiver = self;
  v6.super_class = FaceIdViewController;
  [(TransitionViewController *)&v6 uiEvent:event options:options];
  if (LADynamicIslandAvailable())
  {
    if ((event | 4) == 6)
    {
      [(FaceIdViewController *)self _dismissAlertWithDelay:event == 6 temporarily:0 completion:0.0];
    }
  }
}

- (void)_updateSecureFaceIDViewForRotationStarting:(os_log_t)log .cold.1(os_log_t log, double a2)
{
  v2 = 134217984;
  v3 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Won't hide secure glyph because %.3f sec minimum display time remains", &v2, 0xCu);
}

@end