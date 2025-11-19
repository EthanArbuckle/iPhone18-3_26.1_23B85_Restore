@interface FaceIdToastViewController
- (BOOL)_hasSecureUICompletionWatchdogExpired;
- (BOOL)prefersFixedPortraitOrientation;
- (CGSize)_lightweightJindoContainerSize;
- (CGSize)_lightweightJindoContentSizeForExpansion:(int64_t)a3;
- (CGSize)_toastViewSizeForLightWeightUI:(BOOL)a3 iPad:(BOOL)a4;
- (CGVector)_lightweightJindoContentShiftOnLeading:(BOOL)a3;
- (FaceIdToastViewController)initWithGlyph:(id)a3 presentingController:(id)a4 title:(id)a5 lightweightUIMode:(int64_t)a6 secureUIRecording:(BOOL)a7;
- (NSString)description;
- (TransitionViewController)presentingTransitionViewController;
- (double)_remainingMinDisplayTime;
- (id)_backdropRenderingHintColor;
- (id)_centeringAnchorWithObstructedLayoutGuide:(id)a3;
- (id)_createTrailingView;
- (id)_descriptionOfGlyphState:(int64_t)a3;
- (id)_glyphAnchorWithObstructedLayoutGuide:(id)a3;
- (id)_toastViewContraints;
- (id)_updateConstraint:(id)a3 ofView:(id)a4 anchor1:(id)a5 anchor2:(id)a6 constant:(double)a7;
- (id)keyColor;
- (int64_t)_interfaceOrientationFromObstructedArea:(CGRect)a3;
- (int64_t)_leadingViewStateFromGlyphState:(int64_t)a3;
- (int64_t)_lightweightJindoExpansion;
- (int64_t)_lightweightJindoExpansionForState:(int64_t)a3;
- (int64_t)_trailingViewStateForGlyphState:(int64_t)a3;
- (void)_adjustToastSizeForAccessibilityIfNeeded;
- (void)_anchorToastViewToView:(id)a3;
- (void)_cancelSecureUICompletionWatchdog;
- (void)_didAppear;
- (void)_dispatchDismissCompletionAfterSecureUIFinished;
- (void)_dispatchTapBlock:(id)a3;
- (void)_fadeIn:(BOOL)a3;
- (void)_fadeIn:(BOOL)a3 duration:(double)a4;
- (void)_fadeIn:(BOOL)a3 duration:(double)a4 delay:(double)a5;
- (void)_reconfigureElement;
- (void)_setBackdropEnabled:(BOOL)a3;
- (void)_setBackdropEnabled:(BOOL)a3 animated:(BOOL)a4;
- (void)_setTransformScale:(BOOL)a3;
- (void)_setupGlyphLabel;
- (void)_setupGlyphWrapper:(BOOL)a3;
- (void)_setupLightweightLeadingView;
- (void)_setupLightweightTrailingView;
- (void)_setupLightweightViews:(BOOL)a3;
- (void)_setupSecureUICompletionWatchdog;
- (void)_setupSecureUIController;
- (void)_setupSubviews;
- (void)_setupToastBackdropAndVibrancyView;
- (void)_setupToastView;
- (void)_shrinkAndRevokeWithCompletion:(id)a3;
- (void)_toastAnimationFadeIn:(BOOL)a3 finished:(BOOL)a4;
- (void)_updateGlyphConstraints;
- (void)_updateLightweightConstraints;
- (void)_updateLightweightConstraintsWithCoordinatedAnimations;
- (void)_updateLightweightContentSize;
- (void)dismissWithDelay:(double)a3 completion:(id)a4;
- (void)dispatchBlockAfterDidAppear:(id)a3;
- (void)presentableDidAppearAsBanner:(id)a3;
- (void)presentableDidDisappearAsBanner:(id)a3 withReason:(id)a4;
- (void)presentableWillAppearAsBanner:(id)a3;
- (void)presentableWillDisappearAsBanner:(id)a3 withReason:(id)a4;
- (void)recordingFinishedSuccessfully;
- (void)recordingFinishedWithError:(id)a3;
- (void)recordingResettingToDescriptionOfFlipbook:(id)a3;
- (void)recordingUpdatedGlyphState:(int64_t)a3;
- (void)setActiveComponentStates:(id)a3;
- (void)setActiveLayoutMode:(int64_t)a3;
- (void)shake;
- (void)traitCollectionDidChange:(id)a3;
- (void)transitionToFinalStateCompleted;
- (void)updateGlyphConstraintsIfOrientationChanged;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)a3;
@end

@implementation FaceIdToastViewController

- (FaceIdToastViewController)initWithGlyph:(id)a3 presentingController:(id)a4 title:(id)a5 lightweightUIMode:(int64_t)a6 secureUIRecording:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = +[UIDevice currentDevice];
  self->_iPad = [v15 userInterfaceIdiom] == 1;

  v23.receiver = self;
  v23.super_class = FaceIdToastViewController;
  v16 = [(FaceIdToastViewController *)&v23 initWithNibName:0 bundle:0];
  if (v16)
  {
    v16->_instanceId = +[FaceIdToastViewController newInstanceId];
    v16->_lightweightUIMode = a6;
    if (v7)
    {
      v17 = [(FaceIdToastViewController *)v16 lightweightUI];
      v18 = &kLAUISecureFaceIDFlipbookProtectedAppsSpinner;
      if (!v17)
      {
        v18 = &kLAUISecureFaceIDFlipbookDynamicIsland;
      }

      objc_storeStrong(&v16->_recordedFlipbookName, *v18);
    }

    [(PresentationViewController *)v16 setGlyphView:v12];
    objc_storeStrong(&v16->_titleText, a5);
    objc_storeWeak(&v16->_presentingTransitionViewController, v13);
    [(FaceIdToastViewController *)v16 setModalPresentationStyle:6];
    v19 = [(FaceIdToastViewController *)v16 presentationController];
    [v19 _setContainerIgnoresDirectTouchEvents:1];

    [(FaceIdToastViewController *)v16 _toastViewSizeForLightWeightUI:[(FaceIdToastViewController *)v16 lightweightUI] iPad:v16->_iPad];
    v16->_toastViewSize.width = v20;
    v16->_toastViewSize.height = v21;
  }

  return v16;
}

- (CGSize)_toastViewSizeForLightWeightUI:(BOOL)a3 iPad:(BOOL)a4
{
  v4 = 155.0;
  if (a4)
  {
    v4 = 175.0;
  }

  if (a3)
  {
    v4 = 56.0;
  }

  v5 = v4;
  result.height = v5;
  result.width = v4;
  return result;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"%@[%u]", v4, [(FaceIdToastViewController *)self instanceId]];

  return v5;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = FaceIdToastViewController;
  [(PresentationViewController *)&v6 viewDidLoad];
  v3 = [(FaceIdToastViewController *)self view];
  [v3 setUserInteractionEnabled:1];

  v4 = +[UIColor clearColor];
  v5 = [(FaceIdToastViewController *)self view];
  [v5 setBackgroundColor:v4];

  [(FaceIdToastViewController *)self _setupSecureUIController];
  [(FaceIdToastViewController *)self _setupSubviews];
}

void __43__FaceIdToastViewController_viewDidAppear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toastAnimationFadeIn:1 finished:0];
}

void __43__FaceIdToastViewController_viewDidAppear___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toastAnimationFadeIn:1 finished:1];
}

- (void)_didAppear
{
  self->_appeared = 1;
  didAppearBlock = self->_didAppearBlock;
  if (didAppearBlock)
  {
    didAppearBlock[2](didAppearBlock, a2);
    v4 = self->_didAppearBlock;
    self->_didAppearBlock = 0;
  }
}

- (void)_toastAnimationFadeIn:(BOOL)a3 finished:(BOOL)a4
{
  v4 = a3;
  if (a4)
  {
    v6 = LACLogFaceIDUI();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"fade-out";
      if (v4)
      {
        v7 = @"fade-in";
      }

      v13 = 138543618;
      v14 = self;
      v15 = 2114;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ has finished %{public}@ animation", &v13, 0x16u);
    }

    if (v4)
    {
      v8 = [(PresentationViewController *)self glyphView];
      v9 = [v8 state];

      if (!v9)
      {
        v10 = [(PresentationViewController *)self glyphView];
        [v10 setState:1 animated:1];
      }
    }
  }

  else
  {
    if (a3)
    {
      [(FaceIdToastViewController *)self _setTransformScale:0];
      [(UIView *)self->_toastView setAlpha:1.0];
      glyphWrapper = self->_glyphWrapper;
      v12 = 1.0;
    }

    else
    {
      [(FaceIdToastViewController *)self _setTransformScale:1];
      glyphWrapper = self->_toastView;
      v12 = 0.0;
    }

    [glyphWrapper setAlpha:v12];
  }
}

void __47__FaceIdToastViewController_viewWillDisappear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toastAnimationFadeIn:0 finished:0];
}

void __47__FaceIdToastViewController_viewWillDisappear___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _toastAnimationFadeIn:0 finished:1];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = FaceIdToastViewController;
  [(FaceIdToastViewController *)&v4 traitCollectionDidChange:a3];
  [(FaceIdToastViewController *)self _adjustToastSizeForAccessibilityIfNeeded];
}

- (void)dispatchBlockAfterDidAppear:(id)a3
{
  if (self->_appeared)
  {
    v4 = *(a3 + 2);

    v4(a3);
  }

  else
  {
    v6 = objc_retainBlock(a3);
    didAppearBlock = self->_didAppearBlock;
    self->_didAppearBlock = v6;

    _objc_release_x1();
  }
}

- (void)dismissWithDelay:(double)a3 completion:(id)a4
{
  v6 = a4;
  [(FaceIdToastViewController *)self _remainingMinDisplayTime];
  if (v7 > a3)
  {
    v8 = v7;
    v9 = LACLogFaceIDUI();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v24 = self;
      v25 = 2048;
      v26 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ remaining secure UI delay is %.3f", buf, 0x16u);
    }

    a3 = v8;
  }

  objc_initWeak(buf, self);
  if ([(PresentationViewController *)self isDynamicIslandAvailable])
  {
    v10 = dispatch_time(0, (a3 * 1000000000.0));
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __57__FaceIdToastViewController_dismissWithDelay_completion___block_invoke;
    block[3] = &unk_1000AA658;
    v11 = &v22;
    objc_copyWeak(&v22, buf);
    v21 = v6;
    dispatch_after(v10, &_dispatch_main_q, block);

LABEL_10:
    objc_destroyWeak(v11);
    goto LABEL_13;
  }

  if ([(FaceIdToastViewController *)self isViewLoaded])
  {
    v12 = [(FaceIdToastViewController *)self view];
    v13 = [v12 window];
    v14 = v13 == 0;

    if (!v14)
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = __57__FaceIdToastViewController_dismissWithDelay_completion___block_invoke_2;
      v18[3] = &unk_1000AA370;
      v11 = &v19;
      objc_copyWeak(&v19, buf);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = __57__FaceIdToastViewController_dismissWithDelay_completion___block_invoke_3;
      v15[3] = &unk_1000AAF20;
      objc_copyWeak(&v17, buf);
      v16 = v6;
      [UIView animateWithDuration:2 delay:v18 options:v15 animations:0.2 completion:a3];

      objc_destroyWeak(&v17);
      goto LABEL_10;
    }
  }

  if (v6)
  {
    v6[2](v6);
  }

LABEL_13:
  objc_destroyWeak(buf);
}

void __57__FaceIdToastViewController_dismissWithDelay_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _shrinkAndRevokeWithCompletion:*(a1 + 32)];
}

void __57__FaceIdToastViewController_dismissWithDelay_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained[10] superview];
    [v2 setAlpha:0.0];

    v3 = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
    [v4[10] setBackgroundColor:v3];

    [v4 _setTransformScale:1];
    WeakRetained = v4;
  }
}

void __57__FaceIdToastViewController_dismissWithDelay_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _setTransformScale:0];
    [v3 dismissViewControllerAnimated:0 completion:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (double)_remainingMinDisplayTime
{
  v3 = [(LAUIPearlGlyphViewAutoLayoutWrapper *)self->_glyphWrapper glyphView];

  if (v3)
  {
    v4 = [(LAUIPearlGlyphViewAutoLayoutWrapper *)self->_glyphWrapper glyphView];
    v5 = [v4 remainingMinDisplayTimeInterval];
    [v5 doubleValue];
    v7 = v6;
  }

  else
  {
    lightweightTrailingView = self->_lightweightTrailingView;
    if (!lightweightTrailingView)
    {
      return 0.0;
    }

    v4 = [(FaceIdLightweightTrailingView *)lightweightTrailingView remainingSecurityDelay];
    [v4 doubleValue];
    v7 = v9;
  }

  return v7;
}

- (void)setActiveComponentStates:(id)a3
{
  v4 = a3;
  v5 = LACLogFaceIDUI();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ setActiveComponentStates: %{public}@", buf, 0x16u);
  }

  v9.receiver = self;
  v9.super_class = FaceIdToastViewController;
  [(PresentationViewController *)&v9 setActiveComponentStates:v4];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v13 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __54__FaceIdToastViewController_setActiveComponentStates___block_invoke;
  v8[3] = &unk_1000AAF48;
  v8[4] = self;
  v8[5] = buf;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];
  if (*(*&buf[8] + 24) == 1)
  {
    v6 = LACLogFaceIDUI();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 138543362;
      v11 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ requesting element update", v10, 0xCu);
    }

    v7 = [(FaceIdToastViewController *)self systemApertureElementContext];
    [v7 setElementNeedsUpdate];
  }

  _Block_object_dispose(buf, 8);
}

void __54__FaceIdToastViewController_setActiveComponentStates___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 secureUIController];
  v9 = [v8 confirmTransitionToFlipbookName:v7 stateName:v6];

  if ((v9 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (void)_setTransformScale:(BOOL)a3
{
  v3 = a3;
  if (![(FaceIdToastViewController *)self lightweightUI])
  {
    v5 = 0.88;
    if (!v3)
    {
      v5 = 1.0;
    }

    CGAffineTransformMakeScale(&v8, v5, v5);
    v6 = [(FaceIdToastViewController *)self view];
    v7 = v8;
    [v6 setTransform:&v7];
  }
}

- (void)_shrinkAndRevokeWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[LACSecureFaceIDUIUtilities sharedInstance];
  v6 = [v5 isActive];

  if (v6)
  {
    v7 = [(PresentationViewController *)self secureUIController];
    if (v7)
    {
      v8 = v7;
      v9 = [(PresentationViewController *)self secureUIController];
      v10 = [v9 glyphInEmptyState];

      if ((v10 & 1) == 0)
      {
        v11 = [(PresentationViewController *)self secureUIController];
        [v11 transitionToState:7];

        v12 = [(FaceIdToastViewController *)self systemApertureElementContext];
        [v12 setElementNeedsUpdate];
      }
    }

    v13 = [(PresentationViewController *)self secureUIController];
    if ([v13 hasPendingTransitions])
    {
      v14 = [(FaceIdToastViewController *)self _hasSecureUICompletionWatchdogExpired];

      if ((v14 & 1) == 0)
      {
        secureUIFinishedBlocks = self->_secureUIFinishedBlocks;
        if (secureUIFinishedBlocks)
        {
          v16 = objc_retainBlock(v4);
          [(NSMutableArray *)secureUIFinishedBlocks addObject:v16];

          v17 = LACLogFaceIDUI();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(location[0]) = 138543362;
            *(location + 4) = self;
            v18 = "%{public}@ dismissal already deferred";
LABEL_17:
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v18, location, 0xCu);
          }
        }

        else
        {
          [(FaceIdToastViewController *)self _setupSecureUICompletionWatchdog];
          v20 = [NSMutableArray alloc];
          v21 = objc_retainBlock(v4);
          v22 = [v20 initWithObjects:{v21, 0}];
          v23 = self->_secureUIFinishedBlocks;
          self->_secureUIFinishedBlocks = v22;

          v17 = LACLogFaceIDUI();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(location[0]) = 138543362;
            *(location + 4) = self;
            v18 = "%{public}@ will defer dismissal due to pending secure UI transitions";
            goto LABEL_17;
          }
        }

        goto LABEL_19;
      }
    }

    else
    {
    }

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = __60__FaceIdToastViewController__shrinkAndRevokeWithCompletion___block_invoke;
    v28[3] = &unk_1000AA3C0;
    v28[4] = self;
    [UIView animateWithDuration:v28 animations:0.1];
  }

  if ([(FaceIdToastViewController *)self lightweightUI])
  {
    self->_collapsingFromExpansion = [(FaceIdToastViewController *)self _lightweightJindoExpansion];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = __60__FaceIdToastViewController__shrinkAndRevokeWithCompletion___block_invoke_2;
    v27[3] = &unk_1000AA3C0;
    v27[4] = self;
    [UIView animateWithDuration:v27 animations:0.1];
    [(FaceIdToastViewController *)self _updateLightweightConstraintsWithCoordinatedAnimations];
    objc_initWeak(location, self);
    v19 = dispatch_time(0, 200000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __60__FaceIdToastViewController__shrinkAndRevokeWithCompletion___block_invoke_3;
    block[3] = &unk_1000AA658;
    objc_copyWeak(&v26, location);
    v25 = v4;
    dispatch_after(v19, &_dispatch_main_q, block);

    objc_destroyWeak(&v26);
    objc_destroyWeak(location);
  }

  else
  {
    [(PresentationViewController *)self revokePresentableWithCompletionHandler:v4];
  }

LABEL_19:
}

id __60__FaceIdToastViewController__shrinkAndRevokeWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 304) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 312);

  return [v2 setAlpha:0.0];
}

void __60__FaceIdToastViewController__shrinkAndRevokeWithCompletion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained revokePresentableWithCompletionHandler:*(a1 + 32)];
}

- (void)_setupSubviews
{
  if ([(PresentationViewController *)self isSecureElement])
  {
    v3 = [(PresentationViewController *)self secureUIController];
    v4 = [v3 isRecording];

    if ((v4 & 1) == 0)
    {
      if ([(FaceIdToastViewController *)self lightweightUI])
      {
        [(FaceIdToastViewController *)self _setupLightweightViews:1];
        v5 = LACLogFaceIDUI();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 0;
          v6 = "Only leading view added - Secure UI";
          v7 = &v9;
LABEL_19:
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
        }
      }

      else
      {
        v5 = LACLogFaceIDUI();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 0;
          v6 = "No subviews added to Jindo - Secure UI";
          v7 = &v8;
          goto LABEL_19;
        }
      }

      return;
    }
  }

  if ([(PresentationViewController *)self isDynamicIslandAvailable])
  {
    if ([(FaceIdToastViewController *)self lightweightUI])
    {

      [(FaceIdToastViewController *)self _setupLightweightViews:0];
    }

    else
    {

      [(FaceIdToastViewController *)self _setupGlyphWrapper:1];
    }
  }

  else
  {
    [(FaceIdToastViewController *)self _setupToastView];
    [(FaceIdToastViewController *)self _setupGlyphWrapper:0];

    [(FaceIdToastViewController *)self _setupGlyphLabel];
  }
}

- (void)_setupSecureUIController
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unexpected type of secure UI controller: %@", &v2, 0xCu);
}

- (void)_setupToastView
{
  v3 = objc_alloc_init(UIView);
  toastView = self->_toastView;
  self->_toastView = v3;

  [(UIView *)self->_toastView setOpaque:0];
  [(UIView *)self->_toastView setClipsToBounds:1];
  v5 = [(UIView *)self->_toastView layer];
  [v5 setCornerRadius:9.0];

  v6 = [(UIView *)self->_toastView layer];
  [v6 setCornerCurve:kCACornerCurveContinuous];

  v7 = [(FaceIdToastViewController *)self view];
  [v7 addSubview:self->_toastView];

  [(UIView *)self->_toastView setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [(FaceIdToastViewController *)self _toastViewContraints];
  [NSLayoutConstraint activateConstraints:v8];

  v9 = 1.0;
  if (!self->_iPad)
  {
    [(FaceIdToastViewController *)self _setTransformScale:1, 1.0];
    v9 = 0.0;
  }

  [(UIView *)self->_toastView setAlpha:v9];

  [(FaceIdToastViewController *)self _setupToastBackdropAndVibrancyView];
}

- (id)_toastViewContraints
{
  v4 = [(UIView *)self->_toastView widthAnchor];
  v5 = [v4 constraintEqualToConstant:self->_toastViewSize.width];
  toastViewWidthAnchor = self->_toastViewWidthAnchor;
  self->_toastViewWidthAnchor = v5;

  v7 = [(UIView *)self->_toastView heightAnchor];
  v8 = [v7 constraintEqualToConstant:self->_toastViewSize.height];
  toastViewHeightAnchor = self->_toastViewHeightAnchor;
  self->_toastViewHeightAnchor = v8;

  LODWORD(v10) = 1132068864;
  [(NSLayoutConstraint *)self->_toastViewHeightAnchor setPriority:v10];
  v11 = self->_toastViewHeightAnchor;
  v26[0] = self->_toastViewWidthAnchor;
  v26[1] = v11;
  v12 = [(UIView *)self->_toastView centerXAnchor];
  v13 = [(FaceIdToastViewController *)self view];
  v14 = [v13 centerXAnchor];
  v25 = v12;
  v15 = [v12 constraintEqualToAnchor:v14];
  v26[2] = v15;
  v16 = [(FaceIdToastViewController *)self lightweightUI];
  toastView = self->_toastView;
  if (v16)
  {
    v18 = [(UIView *)toastView topAnchor];
    v19 = [(FaceIdToastViewController *)self view];
    v20 = [v19 safeAreaLayoutGuide];
    v2 = [v20 topAnchor];
    v21 = -5.0;
    if (self->_iPad)
    {
      v21 = 5.0;
    }

    v22 = [v18 constraintEqualToAnchor:v2 constant:v21];
  }

  else
  {
    v18 = [(UIView *)toastView centerYAnchor];
    v19 = [(FaceIdToastViewController *)self view];
    v20 = [v19 centerYAnchor];
    v22 = [v18 constraintEqualToAnchor:v20];
  }

  v26[3] = v22;
  v23 = [NSArray arrayWithObjects:v26 count:4];
  if (v16)
  {

    v22 = v2;
  }

  return v23;
}

- (void)_setupToastBackdropAndVibrancyView
{
  v3 = [UIBlurEffect effectWithStyle:1200];
  blurEffect = self->_blurEffect;
  self->_blurEffect = v3;

  v5 = [[UIVisualEffectView alloc] initWithEffect:self->_blurEffect];
  backdropView = self->_backdropView;
  self->_backdropView = v5;

  [(UIView *)self->_toastView addSubview:self->_backdropView];
  [(FaceIdToastViewController *)self _anchorToastViewToView:self->_backdropView];
  v7 = [UIVibrancyEffect _effectForBlurEffect:self->_blurEffect vibrancyStyle:101];
  vibrancyEffect = self->_vibrancyEffect;
  self->_vibrancyEffect = v7;

  v9 = [[UIVisualEffectView alloc] initWithEffect:self->_vibrancyEffect];
  overlayEffectView = self->_overlayEffectView;
  self->_overlayEffectView = v9;

  v11 = [(UIVisualEffectView *)self->_backdropView contentView];
  [v11 addSubview:self->_overlayEffectView];

  [(FaceIdToastViewController *)self _anchorToastViewToView:self->_overlayEffectView];
  v12 = [(FaceIdToastViewController *)self lightweightUIMode];
  if (v12 == LACLightweightUIModeNone)
  {
    v13 = 1;
  }

  else
  {
    v14 = [(FaceIdToastViewController *)self lightweightUIMode];
    v13 = v14 == LACLightweightUIModeOverContent;
  }

  [(FaceIdToastViewController *)self _setBackdropEnabled:v13 animated:0];
  v15 = [(UIVisualEffectView *)self->_overlayEffectView contentView];
  glyphWrapperParent = self->_glyphWrapperParent;
  self->_glyphWrapperParent = v15;

  _objc_release_x1();
}

- (id)_backdropRenderingHintColor
{
  if ([(FaceIdToastViewController *)self lightweightUI])
  {
    v2 = 1.0;
    v3 = 1.0;
    v4 = 1.0;
  }

  else
  {
    v2 = 0.168627451;
    v3 = 0.231372549;
    v4 = 0.321568627;
  }

  v5 = [UIColor colorWithRed:v2 green:v3 blue:v4 alpha:0.12];

  return v5;
}

- (void)_anchorToastViewToView:(id)a3
{
  v4 = a3;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = [v4 topAnchor];
  v16 = [(UIView *)self->_toastView topAnchor];
  v15 = [v17 constraintEqualToAnchor:v16];
  v18[0] = v15;
  v5 = [v4 bottomAnchor];
  v6 = [(UIView *)self->_toastView bottomAnchor];
  v7 = [v5 constraintEqualToAnchor:v6];
  v18[1] = v7;
  v8 = [v4 leadingAnchor];
  v9 = [(UIView *)self->_toastView leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  v18[2] = v10;
  v11 = [v4 trailingAnchor];

  v12 = [(UIView *)self->_toastView trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v18[3] = v13;
  v14 = [NSArray arrayWithObjects:v18 count:4];
  [NSLayoutConstraint activateConstraints:v14];
}

- (void)_setupGlyphWrapper:(BOOL)a3
{
  v3 = a3;
  v5 = [LAUIPearlGlyphViewAutoLayoutWrapper alloc];
  v6 = [(PresentationViewController *)self glyphView];
  v7 = [v5 initWithGlyphView:v6];
  glyphWrapper = self->_glyphWrapper;
  self->_glyphWrapper = v7;

  glyphWrapperParent = self->_glyphWrapperParent;
  if (glyphWrapperParent)
  {
    v10 = glyphWrapperParent;
  }

  else
  {
    v10 = [(FaceIdToastViewController *)self view];
  }

  v11 = v10;
  [(UIView *)v10 addSubview:self->_glyphWrapper];
  v12 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_dispatchTapBlock:"];
  [(UIView *)v11 addGestureRecognizer:v12];

  [(LAUIPearlGlyphViewAutoLayoutWrapper *)self->_glyphWrapper setTranslatesAutoresizingMaskIntoConstraints:0];
  if (v3)
  {
    v13 = [(LAUIPearlGlyphViewAutoLayoutWrapper *)self->_glyphWrapper widthAnchor];
    if ([(FaceIdToastViewController *)self lightweightUI])
    {
      v14 = 20.0;
    }

    else
    {
      v14 = 69.0;
    }

    v15 = [v13 constraintEqualToConstant:v14];
    v39[0] = v15;
    v16 = [(LAUIPearlGlyphViewAutoLayoutWrapper *)self->_glyphWrapper heightAnchor];
    if ([(FaceIdToastViewController *)self lightweightUI])
    {
      v17 = 20.0;
    }

    else
    {
      v17 = 69.0;
    }

    v18 = [v16 constraintEqualToConstant:v17];
    v39[1] = v18;
    v19 = [NSArray arrayWithObjects:v39 count:2];
    [NSLayoutConstraint activateConstraints:v19];

    glyphConstraints = self->_glyphConstraints;
    self->_glyphConstraints = &__NSArray0__struct;
  }

  else
  {
    v21 = [(FaceIdToastViewController *)self lightweightUI];
    v22 = self->_glyphWrapper;
    v37 = v21;
    if (v21)
    {
      glyphConstraints = [(LAUIPearlGlyphViewAutoLayoutWrapper *)v22 centerYAnchor];
      v35 = [(UIView *)v11 centerYAnchor];
      [glyphConstraints constraintEqualToAnchor:?];
    }

    else
    {
      glyphConstraints = [(LAUIPearlGlyphViewAutoLayoutWrapper *)v22 topAnchor];
      v34 = [(UIView *)v11 topAnchor];
      [glyphConstraints constraintEqualToAnchor:28.0 constant:?];
    }
    v36 = ;
    v38[0] = v36;
    v23 = [(LAUIPearlGlyphViewAutoLayoutWrapper *)self->_glyphWrapper centerXAnchor];
    v24 = [(UIView *)v11 centerXAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    v38[1] = v25;
    v26 = [(LAUIPearlGlyphViewAutoLayoutWrapper *)self->_glyphWrapper widthAnchor];
    if ([(FaceIdToastViewController *)self lightweightUI])
    {
      v27 = 36.0;
    }

    else
    {
      v27 = 70.0;
    }

    v28 = [v26 constraintEqualToConstant:v27];
    v38[2] = v28;
    v29 = [(LAUIPearlGlyphViewAutoLayoutWrapper *)self->_glyphWrapper heightAnchor];
    if ([(FaceIdToastViewController *)self lightweightUI])
    {
      v30 = 36.0;
    }

    else
    {
      v30 = 70.0;
    }

    v31 = [v29 constraintEqualToConstant:v30];
    v38[3] = v31;
    v32 = [NSArray arrayWithObjects:v38 count:4];
    [NSLayoutConstraint activateConstraints:v32];

    if (v37)
    {
      v33 = v35;
    }

    else
    {
      v33 = v34;
    }
  }
}

- (void)_setupGlyphLabel
{
  if (self->_titleText && ![(FaceIdToastViewController *)self lightweightUI])
  {
    v3 = objc_alloc_init(UILabel);
    glyphLabel = self->_glyphLabel;
    self->_glyphLabel = v3;

    [(UILabel *)self->_glyphLabel setText:self->_titleText];
    [(UILabel *)self->_glyphLabel setNumberOfLines:0];
    v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
    [(UILabel *)self->_glyphLabel setFont:v5];

    [(UILabel *)self->_glyphLabel setTextAlignment:1];
    v6 = +[UIColor labelColor];
    [(UILabel *)self->_glyphLabel setTextColor:v6];

    v7 = [(UIVisualEffectView *)self->_overlayEffectView contentView];
    [v7 addSubview:self->_glyphLabel];

    [(UILabel *)self->_glyphLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [(UILabel *)self->_glyphLabel topAnchor];
    v9 = [(LAUIPearlGlyphViewAutoLayoutWrapper *)self->_glyphWrapper bottomAnchor];
    v10 = [v8 constraintEqualToAnchor:v9 constant:20.0];
    [v10 setActive:1];

    v11 = [(UILabel *)self->_glyphLabel leadingAnchor];
    v12 = [(UIVisualEffectView *)self->_overlayEffectView contentView];
    v13 = [v12 leadingAnchor];
    v14 = [v11 constraintEqualToAnchor:v13 constant:20.0];
    [v14 setActive:1];

    v15 = [(UILabel *)self->_glyphLabel trailingAnchor];
    v16 = [(UIVisualEffectView *)self->_overlayEffectView contentView];
    v17 = [v16 trailingAnchor];
    v18 = [v15 constraintEqualToAnchor:v17 constant:-20.0];
    [v18 setActive:1];

    v22 = [(UILabel *)self->_glyphLabel bottomAnchor];
    v19 = [(UIVisualEffectView *)self->_overlayEffectView contentView];
    v20 = [v19 bottomAnchor];
    v21 = [v22 constraintLessThanOrEqualToAnchor:v20 constant:-20.0];
    [v21 setActive:1];
  }
}

- (void)_setupLightweightViews:(BOOL)a3
{
  v5 = [(FaceIdToastViewController *)self view];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  [(FaceIdToastViewController *)self _setupLightweightLeadingView];
  if (!a3)
  {

    [(FaceIdToastViewController *)self _setupLightweightTrailingView];
  }
}

- (void)_setupLightweightLeadingView
{
  v3 = objc_opt_new();
  lightweightLeadingView = self->_lightweightLeadingView;
  self->_lightweightLeadingView = v3;

  v5 = [(FaceIdToastViewController *)self view];
  [v5 addSubview:self->_lightweightLeadingView];

  v6 = self->_lightweightLeadingView;

  [(LACUIFaceIDLightweightLeadingView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)_setupLightweightTrailingView
{
  v3 = [(FaceIdToastViewController *)self _createTrailingView];
  lightweightTrailingView = self->_lightweightTrailingView;
  self->_lightweightTrailingView = v3;

  v5 = [(FaceIdToastViewController *)self view];
  [v5 addSubview:self->_lightweightTrailingView];

  v6 = self->_lightweightTrailingView;

  [(FaceIdLightweightTrailingView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (id)_createTrailingView
{
  v3 = [(PresentationViewController *)self secureUIController];
  v4 = [v3 isRecording];

  if (v4)
  {
    v5 = [(PresentationViewController *)self secureUIController];
    v6 = [v5 currentConfiguration];
    v7 = [v6 viewToCapture];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[FaceIdLightweightTrailingView alloc] initWithDescriptionCaptureView:v7];

      goto LABEL_6;
    }
  }

  v8 = objc_opt_new();
LABEL_6:

  return v8;
}

- (CGSize)_lightweightJindoContainerSize
{
  v2 = [(FaceIdToastViewController *)self _lightweightJindoExpansion]- 1;
  if (v2 > 2)
  {
    v4 = 36.0;
    v3 = 160.0;
  }

  else
  {
    v3 = dbl_100086618[v2];
    v4 = dbl_100086630[v2];
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_lightweightJindoContentSizeForExpansion:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = ![(FaceIdToastViewController *)self _isEarlyExpansion];
    v4 = 0x4044000000000000;
  }

  else
  {
    v3 = a3 == 2;
    v4 = 0x4040000000000000;
  }

  v5 = *&v4;
  if (!v3)
  {
    v5 = 16.0;
  }

  v6 = v5;
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGVector)_lightweightJindoContentShiftOnLeading:(BOOL)a3
{
  v3 = a3;
  if (-[PresentationViewController isSecureElement](self, "isSecureElement") && (-[PresentationViewController secureUIController](self, "secureUIController"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isRecording], v5, v6))
  {
    v7 = 7.0;
    if (v3)
    {
      v7 = 8.0;
    }

    v8 = 0.0;
  }

  else
  {
    v9 = [(FaceIdToastViewController *)self _lightweightJindoExpansion];
    if (v9 == 1)
    {
      v13 = [(FaceIdToastViewController *)self _isEarlyExpansion];
      v7 = 7.0;
      v14 = 8.0;
      if (v3)
      {
        v7 = 8.0;
      }

      else
      {
        v14 = 20.0;
      }

      if (v13)
      {
        v7 = v14;
        v8 = -5.0;
      }

      else
      {
        v8 = 0.0;
      }
    }

    else if (v9 == 3)
    {
      v10 = [(FaceIdToastViewController *)self _isCollapsingFromFullExpansion];
      v7 = -7.0;
      if (v3)
      {
        v7 = 5.0;
      }

      v8 = 0.0;
      v11 = 9.0;
      if (!v3)
      {
        v11 = 0.0;
      }

      v12 = -10.0;
      if (v3)
      {
        v12 = 0.0;
        v8 = 18.0;
      }

      if (v10)
      {
        v7 = v12;
      }

      else
      {
        v8 = v11;
      }
    }

    else
    {
      v8 = 0.0;
      v7 = 2.0;
      if (v3)
      {
        v7 = 5.0;
      }

      if (v9 != 2)
      {
        v7 = 0.0;
      }
    }
  }

  result.dy = v8;
  result.dx = v7;
  return result;
}

- (void)_updateLightweightConstraintsWithCoordinatedAnimations
{
  if ([(FaceIdToastViewController *)self lightweightUI]&& self->_lightweightViewWidthAnchor && self->_lightweightViewHeightAnchor)
  {
    v3 = [(FaceIdToastViewController *)self systemApertureElementContext];

    if (v3)
    {
      objc_initWeak(&location, self);
      v4 = [(FaceIdToastViewController *)self systemApertureElementContext];
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = __83__FaceIdToastViewController__updateLightweightConstraintsWithCoordinatedAnimations__block_invoke;
      v5[3] = &unk_1000AA370;
      objc_copyWeak(&v6, &location);
      [v4 setElementNeedsUpdateWithCoordinatedAnimations:v5];

      objc_destroyWeak(&v6);
      objc_destroyWeak(&location);
    }

    else
    {

      [(FaceIdToastViewController *)self _updateLightweightConstraints];
    }
  }
}

void __83__FaceIdToastViewController__updateLightweightConstraintsWithCoordinatedAnimations__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateLightweightConstraints];
}

- (void)_updateLightweightConstraints
{
  [(FaceIdToastViewController *)self _lightweightJindoContainerSize];
  v4 = v3;
  v6 = v5;
  lightweightViewWidthAnchor = self->_lightweightViewWidthAnchor;
  v8 = [(FaceIdToastViewController *)self view];
  v9 = [(FaceIdToastViewController *)self view];
  v10 = [v9 widthAnchor];
  v11 = [(FaceIdToastViewController *)self _updateConstraint:lightweightViewWidthAnchor ofView:v8 anchor1:v10 anchor2:0 constant:v4];
  v12 = self->_lightweightViewWidthAnchor;
  self->_lightweightViewWidthAnchor = v11;

  lightweightViewHeightAnchor = self->_lightweightViewHeightAnchor;
  v14 = [(FaceIdToastViewController *)self view];
  v15 = [(FaceIdToastViewController *)self view];
  v16 = [v15 heightAnchor];
  v17 = [(FaceIdToastViewController *)self _updateConstraint:lightweightViewHeightAnchor ofView:v14 anchor1:v16 anchor2:0 constant:v6];
  v18 = self->_lightweightViewHeightAnchor;
  self->_lightweightViewHeightAnchor = v17;

  [(FaceIdToastViewController *)self _updateLightweightContentSize];
  [(FaceIdToastViewController *)self _lightweightJindoContentShiftOnLeading:1];
  v20 = v19;
  v22 = v21;
  lightweightLeadingLeadingAnchor = self->_lightweightLeadingLeadingAnchor;
  v24 = [(FaceIdToastViewController *)self view];
  v25 = [(LACUIFaceIDLightweightLeadingView *)self->_lightweightLeadingView leadingAnchor];
  v26 = [(FaceIdToastViewController *)self view];
  v27 = [v26 leadingAnchor];
  v28 = [(FaceIdToastViewController *)self _updateConstraint:lightweightLeadingLeadingAnchor ofView:v24 anchor1:v25 anchor2:v27 constant:v20];
  v29 = self->_lightweightLeadingLeadingAnchor;
  self->_lightweightLeadingLeadingAnchor = v28;

  lightweightLeadingCenterYAnchor = self->_lightweightLeadingCenterYAnchor;
  v31 = [(FaceIdToastViewController *)self view];
  v32 = [(LACUIFaceIDLightweightLeadingView *)self->_lightweightLeadingView centerYAnchor];
  v33 = [(FaceIdToastViewController *)self view];
  v34 = [v33 centerYAnchor];
  v35 = [(FaceIdToastViewController *)self _updateConstraint:lightweightLeadingCenterYAnchor ofView:v31 anchor1:v32 anchor2:v34 constant:v22];
  v36 = self->_lightweightLeadingCenterYAnchor;
  self->_lightweightLeadingCenterYAnchor = v35;

  [(FaceIdToastViewController *)self _lightweightJindoContentShiftOnLeading:0];
  v38 = v37;
  v40 = v39;
  lightweightTrailingTrailingAnchor = self->_lightweightTrailingTrailingAnchor;
  v42 = [(FaceIdToastViewController *)self view];
  v43 = [(FaceIdLightweightTrailingView *)self->_lightweightTrailingView trailingAnchor];
  v44 = [(FaceIdToastViewController *)self view];
  v45 = [v44 trailingAnchor];
  v46 = [(FaceIdToastViewController *)self _updateConstraint:lightweightTrailingTrailingAnchor ofView:v42 anchor1:v43 anchor2:v45 constant:-v38];
  v47 = self->_lightweightTrailingTrailingAnchor;
  self->_lightweightTrailingTrailingAnchor = v46;

  lightweightTrailingCenterYAnchor = self->_lightweightTrailingCenterYAnchor;
  v54 = [(FaceIdToastViewController *)self view];
  v49 = [(FaceIdLightweightTrailingView *)self->_lightweightTrailingView centerYAnchor];
  v50 = [(FaceIdToastViewController *)self view];
  v51 = [v50 centerYAnchor];
  v52 = [(FaceIdToastViewController *)self _updateConstraint:lightweightTrailingCenterYAnchor ofView:v54 anchor1:v49 anchor2:v51 constant:v40];
  v53 = self->_lightweightTrailingCenterYAnchor;
  self->_lightweightTrailingCenterYAnchor = v52;
}

- (void)_updateLightweightContentSize
{
  [(FaceIdToastViewController *)self _lightweightJindoContentSizeForExpansion:[(FaceIdToastViewController *)self _lightweightJindoExpansion]];
  v4 = v3;
  v6 = v5;
  lightweightLeadingWidthAnchor = self->_lightweightLeadingWidthAnchor;
  lightweightLeadingView = self->_lightweightLeadingView;
  v9 = [(LACUIFaceIDLightweightLeadingView *)lightweightLeadingView widthAnchor];
  v10 = [(FaceIdToastViewController *)self _updateConstraint:lightweightLeadingWidthAnchor ofView:lightweightLeadingView anchor1:v9 anchor2:0 constant:v4];
  v11 = self->_lightweightLeadingWidthAnchor;
  self->_lightweightLeadingWidthAnchor = v10;

  lightweightLeadingHeightAnchor = self->_lightweightLeadingHeightAnchor;
  v13 = self->_lightweightLeadingView;
  v14 = [(LACUIFaceIDLightweightLeadingView *)v13 heightAnchor];
  v15 = [(FaceIdToastViewController *)self _updateConstraint:lightweightLeadingHeightAnchor ofView:v13 anchor1:v14 anchor2:0 constant:v6];
  v16 = self->_lightweightLeadingHeightAnchor;
  self->_lightweightLeadingHeightAnchor = v15;

  lightweightTrailingWidthAnchor = self->_lightweightTrailingWidthAnchor;
  lightweightTrailingView = self->_lightweightTrailingView;
  v19 = [(FaceIdLightweightTrailingView *)lightweightTrailingView widthAnchor];
  v20 = [(FaceIdToastViewController *)self _updateConstraint:lightweightTrailingWidthAnchor ofView:lightweightTrailingView anchor1:v19 anchor2:0 constant:v4];
  v21 = self->_lightweightTrailingWidthAnchor;
  self->_lightweightTrailingWidthAnchor = v20;

  lightweightTrailingHeightAnchor = self->_lightweightTrailingHeightAnchor;
  v23 = self->_lightweightTrailingView;
  v26 = [(FaceIdLightweightTrailingView *)v23 heightAnchor];
  v24 = [(FaceIdToastViewController *)self _updateConstraint:lightweightTrailingHeightAnchor ofView:v23 anchor1:v26 anchor2:0 constant:v6];
  v25 = self->_lightweightTrailingHeightAnchor;
  self->_lightweightTrailingHeightAnchor = v24;
}

- (id)_updateConstraint:(id)a3 ofView:(id)a4 anchor1:(id)a5 anchor2:(id)a6 constant:(double)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = v14;
  if (v11)
  {
    [v11 setConstant:a7];
    v16 = v11;
  }

  else
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = __79__FaceIdToastViewController__updateConstraint_ofView_anchor1_anchor2_constant___block_invoke;
    v18[3] = &unk_1000AAF70;
    v19 = v14;
    v20 = v13;
    v21 = a7;
    v16 = __79__FaceIdToastViewController__updateConstraint_ofView_anchor1_anchor2_constant___block_invoke(v18);
    if (v16)
    {
      [v12 addConstraint:v16];
    }
  }

  return v16;
}

id __79__FaceIdToastViewController__updateConstraint_ofView_anchor1_anchor2_constant___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v3 = [*(a1 + 40) constraintEqualToAnchor:*(a1 + 48) constant:?];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [*(a1 + 40) constraintEqualToConstant:*(a1 + 48)];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (int64_t)_lightweightJindoExpansion
{
  if ([(PresentationViewController *)self isSecureElement])
  {
    v3 = [(PresentationViewController *)self secureUIController];
    v4 = [v3 isRecording];

    if (v4)
    {
      return 1;
    }
  }

  if (!self->_timeAppeared)
  {
    return 0;
  }

  if (self->_collapsingFromExpansion)
  {
    return 3;
  }

  glyphState = self->_glyphState;

  return [(FaceIdToastViewController *)self _lightweightJindoExpansionForState:glyphState];
}

- (void)_updateGlyphConstraints
{
  v3 = [(LAUIPearlGlyphViewAutoLayoutWrapper *)self->_glyphWrapper superview];

  if (v3)
  {
    [NSLayoutConstraint deactivateConstraints:self->_glyphConstraints];
    v4 = [(FaceIdToastViewController *)self view];
    v5 = [v4 SBUISA_systemApertureObstructedAreaLayoutGuide];

    v6 = [(FaceIdToastViewController *)self _glyphAnchorWithObstructedLayoutGuide:v5];
    v10[0] = v6;
    v7 = [(FaceIdToastViewController *)self _centeringAnchorWithObstructedLayoutGuide:v5];
    v10[1] = v7;
    v8 = [NSArray arrayWithObjects:v10 count:2];
    glyphConstraints = self->_glyphConstraints;
    self->_glyphConstraints = v8;

    [NSLayoutConstraint activateConstraints:self->_glyphConstraints];
  }
}

- (void)updateGlyphConstraintsIfOrientationChanged
{
  interfaceOrientation = self->_interfaceOrientation;
  v4 = [(FaceIdToastViewController *)self view];
  v5 = [v4 SBUISA_systemApertureObstructedAreaLayoutGuide];
  [v5 layoutFrame];
  self->_interfaceOrientation = [(FaceIdToastViewController *)self _interfaceOrientationFromObstructedArea:?];

  if (interfaceOrientation != self->_interfaceOrientation)
  {
    [(FaceIdToastViewController *)self _updateGlyphConstraints];
    if (interfaceOrientation)
    {
      v6 = [(PresentationViewController *)self glyphView];
      v7 = [v6 remainingMinDisplayTimeInterval];
      [v7 doubleValue];
      v9 = v8;

      if (v9 > 0.0)
      {
        v10 = [(FaceIdToastViewController *)self presentingTransitionViewController];
        [v10 uiEvent:13 options:0];
      }
    }
  }
}

- (int64_t)_interfaceOrientationFromObstructedArea:(CGRect)a3
{
  if (a3.size.width <= a3.size.height)
  {
    MaxX = CGRectGetMaxX(a3);
    v5 = [(FaceIdToastViewController *)self view];
    [v5 bounds];
    if (MaxX >= CGRectGetMidX(v10))
    {
      v6 = 3;
    }

    else
    {
      v6 = 4;
    }
  }

  else
  {
    MaxY = CGRectGetMaxY(a3);
    v5 = [(FaceIdToastViewController *)self view];
    [v5 bounds];
    if (MaxY < CGRectGetMidY(v9))
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  return v6;
}

- (id)_glyphAnchorWithObstructedLayoutGuide:(id)a3
{
  v5 = a3;
  interfaceOrientation = self->_interfaceOrientation;
  if (interfaceOrientation > 1)
  {
    switch(interfaceOrientation)
    {
      case 2:
        v7 = [(LAUIPearlGlyphViewAutoLayoutWrapper *)self->_glyphWrapper bottomAnchor];
        v8 = [v5 topAnchor];
        break;
      case 3:
        v7 = [(LAUIPearlGlyphViewAutoLayoutWrapper *)self->_glyphWrapper trailingAnchor];
        v8 = [v5 leadingAnchor];
        break;
      case 4:
        v7 = [(LAUIPearlGlyphViewAutoLayoutWrapper *)self->_glyphWrapper leadingAnchor];
        v8 = [v5 trailingAnchor];
        break;
      default:
        goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (!interfaceOrientation)
  {
    v9 = LACLogFaceIDUI();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [FaceIdToastViewController _glyphAnchorWithObstructedLayoutGuide:v9];
    }

    goto LABEL_14;
  }

  if (interfaceOrientation == 1)
  {
LABEL_14:
    v7 = [(LAUIPearlGlyphViewAutoLayoutWrapper *)self->_glyphWrapper topAnchor];
    v8 = [v5 bottomAnchor];
LABEL_15:
    v10 = v8;
    v3 = [v7 constraintEqualToAnchor:v8];
  }

LABEL_16:

  return v3;
}

- (id)_centeringAnchorWithObstructedLayoutGuide:(id)a3
{
  v3 = self->_interfaceOrientation - 3;
  glyphWrapper = self->_glyphWrapper;
  v5 = a3;
  if (v3 >= 2)
  {
    v6 = [(LAUIPearlGlyphViewAutoLayoutWrapper *)glyphWrapper centerXAnchor];
    [v5 centerXAnchor];
  }

  else
  {
    v6 = [(LAUIPearlGlyphViewAutoLayoutWrapper *)glyphWrapper centerYAnchor];
    [v5 centerYAnchor];
  }
  v7 = ;

  v8 = [v6 constraintEqualToAnchor:v7];

  return v8;
}

- (void)_dispatchTapBlock:(id)a3
{
  v3 = [(FaceIdToastViewController *)self presentingTransitionViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 uiCancelByGestureIfPossible];
  }
}

- (void)_adjustToastSizeForAccessibilityIfNeeded
{
  v3 = __69__FaceIdToastViewController__adjustToastSizeForAccessibilityIfNeeded__block_invoke();
  [(NSLayoutConstraint *)self->_toastViewWidthAnchor setConstant:v3 * self->_toastViewSize.width];
  v4 = v3 * self->_toastViewSize.height;
  toastViewHeightAnchor = self->_toastViewHeightAnchor;

  [(NSLayoutConstraint *)toastViewHeightAnchor setConstant:v4];
}

double __69__FaceIdToastViewController__adjustToastSizeForAccessibilityIfNeeded__block_invoke()
{
  v0 = +[UITraitCollection currentTraitCollection];
  v1 = [v0 preferredContentSizeCategory];

  v2 = 1.0;
  if (UIContentSizeCategoryIsAccessibilityCategory(v1) && ([v1 isEqualToString:UIContentSizeCategoryAccessibilityMedium] & 1) == 0)
  {
    if ([v1 isEqualToString:UIContentSizeCategoryAccessibilityLarge])
    {
      v2 = 1.0;
    }

    else
    {
      v2 = 1.5;
    }
  }

  return v2;
}

- (void)recordingFinishedSuccessfully
{
  v2 = [(FaceIdToastViewController *)self presentingTransitionViewController];
  [v2 uiEvent:14 options:0];
}

- (void)recordingFinishedWithError:(id)a3
{
  v4 = a3;
  v5 = [(FaceIdToastViewController *)self presentingTransitionViewController];
  [v5 uiFailureWithError:v4];
}

- (void)recordingResettingToDescriptionOfFlipbook:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_recordedFlipbookName isEqualToString:v5])
  {
    objc_storeStrong(&self->_recordedFlipbookName, a3);
    v6 = LACLogFaceIDUI();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412546;
      v8 = self;
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ recordingResettingToDescriptionOfFlipbook: %@", &v7, 0x16u);
    }

    [(FaceIdToastViewController *)self _reconfigureElement];
  }
}

- (void)_reconfigureElement
{
  [(LAUIPearlGlyphViewAutoLayoutWrapper *)self->_glyphWrapper removeFromSuperview];
  [(LACUIFaceIDLightweightLeadingView *)self->_lightweightLeadingView removeFromSuperview];
  [(FaceIdLightweightTrailingView *)self->_lightweightTrailingView removeFromSuperview];
  if ([(NSString *)self->_recordedFlipbookName isEqualToString:kLAUISecureFaceIDFlipbookDynamicIsland])
  {
    v3 = LACLogFaceIDUI();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ reconfiguring to standard Face ID glyph in dynamic island", &v12, 0xCu);
    }

    v4 = &LACLightweightUIModeNone;
  }

  else
  {
    if (![(NSString *)self->_recordedFlipbookName isEqualToString:kLAUISecureFaceIDFlipbookProtectedAppsSpinner])
    {
      goto LABEL_10;
    }

    v3 = LACLogFaceIDUI();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ reconfiguring lightweight auth in dynamic island", &v12, 0xCu);
    }

    v4 = &LACLightweightUIModeOverShield;
  }

  self->_lightweightUIMode = *v4;
LABEL_10:
  v5 = [(PresentationViewController *)self secureUIController];
  v6 = [[SecureUIControllerDynamicIslandConfiguration alloc] initWithLightweightMode:[(FaceIdToastViewController *)self lightweightUIMode]];
  [v5 updateCurrentConfiguration:v6];

  [(FaceIdToastViewController *)self _toastViewSizeForLightWeightUI:[(FaceIdToastViewController *)self lightweightUI] iPad:self->_iPad];
  self->_toastViewSize.width = v7;
  self->_toastViewSize.height = v8;
  v9 = +[NSDate now];
  timeAppeared = self->_timeAppeared;
  self->_timeAppeared = v9;

  [(FaceIdToastViewController *)self _setupSubviews];
  [(FaceIdToastViewController *)self _updateLightweightConstraints];
  v11 = LACLogFaceIDUI();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = self;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%@ reconfiguration complete", &v12, 0xCu);
  }
}

- (void)recordingUpdatedGlyphState:(int64_t)a3
{
  v5 = LACLogFaceIDUI();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = self;
    v8 = 1024;
    v9 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ recording updated glyph state: %d", &v6, 0x12u);
  }

  self->_glyphState = a3;
  if ([(FaceIdToastViewController *)self lightweightUI])
  {
    [(FaceIdToastViewController *)self _updateLightweightConstraints];
  }
}

- (void)transitionToFinalStateCompleted
{
  v3 = LACLogFaceIDUI();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ dismissing after secure UI has settled", &v4, 0xCu);
  }

  [(FaceIdToastViewController *)self _cancelSecureUICompletionWatchdog];
  [(FaceIdToastViewController *)self _dispatchDismissCompletionAfterSecureUIFinished];
}

- (void)_dispatchDismissCompletionAfterSecureUIFinished
{
  if (self->_secureUIFinishedBlocks)
  {
    objc_initWeak(&location, self);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = __76__FaceIdToastViewController__dispatchDismissCompletionAfterSecureUIFinished__block_invoke;
    v3[3] = &unk_1000AA370;
    objc_copyWeak(&v4, &location);
    [(FaceIdToastViewController *)self _shrinkAndRevokeWithCompletion:v3];
    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }
}

void __76__FaceIdToastViewController__dispatchDismissCompletionAfterSecureUIFinished__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    if ([WeakRetained[45] count])
    {
      v2 = 0;
      do
      {
        v3 = [v5[45] objectAtIndexedSubscript:v2];
        v3[2]();

        ++v2;
      }

      while (v2 < [v5[45] count]);
    }

    v4 = v5[45];
    v5[45] = 0;

    WeakRetained = v5;
  }
}

- (void)_setupSecureUICompletionWatchdog
{
  v3 = LACLogFaceIDUI();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ setting up watchdog for secure UI transitions", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v4 = objc_opt_new();
  secureUIFinishedWatchdog = self->_secureUIFinishedWatchdog;
  self->_secureUIFinishedWatchdog = v4;

  v6 = self->_secureUIFinishedWatchdog;
  v7 = &_dispatch_main_q;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __61__FaceIdToastViewController__setupSecureUICompletionWatchdog__block_invoke;
  v8[3] = &unk_1000AA370;
  objc_copyWeak(&v9, buf);
  [(LACTimer *)v6 dispatchAfter:&_dispatch_main_q inQueue:v8 block:4.0];

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

void __61__FaceIdToastViewController__setupSecureUICompletionWatchdog__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = LACLogFaceIDUI();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __61__FaceIdToastViewController__setupSecureUICompletionWatchdog__block_invoke_cold_1(WeakRetained, v2);
    }

    [WeakRetained _dispatchDismissCompletionAfterSecureUIFinished];
  }
}

- (BOOL)_hasSecureUICompletionWatchdogExpired
{
  secureUIFinishedWatchdog = self->_secureUIFinishedWatchdog;
  if (secureUIFinishedWatchdog)
  {
    v4 = [(LACTimer *)secureUIFinishedWatchdog isRunning]^ 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = LACLogFaceIDUI();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543618;
    v8 = self;
    v9 = 1024;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ has watchdog for secure UI transitions expired: %d", &v7, 0x12u);
  }

  return v4;
}

- (void)_cancelSecureUICompletionWatchdog
{
  if (self->_secureUIFinishedWatchdog)
  {
    v3 = LACLogFaceIDUI();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138543362;
      v5 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ canceling watchdog for secure UI transitions", &v4, 0xCu);
    }

    [(LACTimer *)self->_secureUIFinishedWatchdog cancel];
  }
}

- (void)setActiveLayoutMode:(int64_t)a3
{
  if (self->_activeLayoutMode != a3)
  {
    self->_activeLayoutMode = a3;
    v4 = [(FaceIdToastViewController *)self systemApertureElementContext];
    v5 = [v4 requestAlertingAssertion];
    [v5 setAutomaticallyInvalidatable:0];

    if ([(FaceIdToastViewController *)self lightweightUI])
    {

      [(FaceIdToastViewController *)self _updateLightweightConstraints];
    }
  }
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __77__FaceIdToastViewController_viewWillLayoutSubviewsWithTransitionCoordinator___block_invoke;
  v3[3] = &unk_1000AAF98;
  v3[4] = self;
  [a3 animateAlongsideTransition:v3 completion:&__block_literal_global_143];
}

id __77__FaceIdToastViewController_viewWillLayoutSubviewsWithTransitionCoordinator___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isActive];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 updateGlyphConstraintsIfOrientationChanged];
  }

  return result;
}

- (BOOL)prefersFixedPortraitOrientation
{
  v3 = +[LACSecureFaceIDUIUtilities sharedInstance];
  v4 = [v3 isActive];

  if (v4)
  {
    return 1;
  }

  return [(FaceIdToastViewController *)self lightweightUI];
}

- (id)keyColor
{
  if ([(FaceIdToastViewController *)self _isSuccessfulState:self->_glyphState])
  {
    v2 = [UIColor colorWithRed:0.192 green:0.82 blue:0.345 alpha:1.0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (int64_t)_lightweightJindoExpansionForState:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    return 2;
  }

  else
  {
    return qword_100086648[a3 - 1];
  }
}

- (id)_descriptionOfGlyphState:(int64_t)a3
{
  if (a3 > 8)
  {
    return @"UNKNOWN";
  }

  else
  {
    return *(&off_1000AB020 + a3);
  }
}

- (int64_t)_leadingViewStateFromGlyphState:(int64_t)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return qword_100086670[a3];
  }
}

- (int64_t)_trailingViewStateForGlyphState:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_100086698[a3 - 1];
  }
}

- (void)presentableWillAppearAsBanner:(id)a3
{
  v8.receiver = self;
  v8.super_class = FaceIdToastViewController;
  [(PresentationViewController *)&v8 presentableWillAppearAsBanner:a3];
  v4 = +[LACSecureFaceIDUIUtilities sharedInstance];
  v5 = [v4 isActive];

  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&_activeToastController);
    if ([WeakRetained isBeingPresented] && WeakRetained[45])
    {
      v7 = LACLogFaceIDUI();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v10 = WeakRetained;
        v11 = 2114;
        v12 = self;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ dismissing immediately because %{public}@ is about to appear", buf, 0x16u);
      }

      [WeakRetained _cancelSecureUICompletionWatchdog];
      [WeakRetained _dispatchDismissCompletionAfterSecureUIFinished];
    }

    objc_storeWeak(&_activeToastController, self);
  }
}

- (void)presentableDidAppearAsBanner:(id)a3
{
  v4 = a3;
  v5 = LACLogFaceIDUI();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Face ID glyph appeared in %{public}@", buf, 0xCu);
  }

  v18.receiver = self;
  v18.super_class = FaceIdToastViewController;
  [(PresentationViewController *)&v18 presentableDidAppearAsBanner:v4];
  if (self->_shakeOnAppeared)
  {
    self->_shakeOnAppeared = 0;
    v17.receiver = self;
    v17.super_class = FaceIdToastViewController;
    [(PresentationViewController *)&v17 shake];
  }

  [(FaceIdToastViewController *)self _didAppear];
  v6 = [(PresentationViewController *)self glyphView];
  v7 = [v6 state];

  if (!v7)
  {
    v8 = [(PresentationViewController *)self glyphView];
    [v8 setState:1 animated:1];
  }

  if ([(FaceIdToastViewController *)self lightweightUI])
  {
    v9 = +[NSDate now];
    timeAppeared = self->_timeAppeared;
    self->_timeAppeared = v9;

    [(FaceIdToastViewController *)self _updateLightweightConstraintsWithCoordinatedAnimations];
    v11 = dispatch_time(0, 200000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __58__FaceIdToastViewController_presentableDidAppearAsBanner___block_invoke;
    block[3] = &unk_1000AA3C0;
    block[4] = self;
    dispatch_after(v11, &_dispatch_main_q, block);
  }

  v12 = +[LACSecureFaceIDUIUtilities sharedInstance];
  v13 = [v12 isActive];

  if (v13)
  {
    [(FaceIdToastViewController *)self _fadeIn:0];
    v14 = [(FaceIdToastViewController *)self lightweightUI];
    v15 = 0.25;
    if (!v14)
    {
      v15 = 0.16;
    }

    [(FaceIdToastViewController *)self _fadeIn:1 duration:0.1 delay:v15];
  }
}

- (void)_fadeIn:(BOOL)a3 duration:(double)a4 delay:(double)a5
{
  if (a4 <= 0.0)
  {

    [FaceIdToastViewController _fadeIn:"_fadeIn:duration:" duration:?];
  }

  else
  {
    objc_initWeak(&location, self);
    v8 = dispatch_time(0, (a5 * 1000000000.0));
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __52__FaceIdToastViewController__fadeIn_duration_delay___block_invoke;
    v9[3] = &unk_1000AB000;
    objc_copyWeak(v10, &location);
    v11 = a3;
    v10[1] = *&a4;
    dispatch_after(v8, &_dispatch_main_q, v9);
    objc_destroyWeak(v10);
    objc_destroyWeak(&location);
  }
}

void __52__FaceIdToastViewController__fadeIn_duration_delay___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fadeIn:*(a1 + 48) duration:*(a1 + 40)];
}

- (void)_fadeIn:(BOOL)a3 duration:(double)a4
{
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __46__FaceIdToastViewController__fadeIn_duration___block_invoke;
  v6[3] = &unk_1000AAD00;
  objc_copyWeak(&v7, &location);
  v8 = a3;
  [UIView animateWithDuration:v6 animations:a4];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __46__FaceIdToastViewController__fadeIn_duration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fadeIn:*(a1 + 40)];
}

- (void)_fadeIn:(BOOL)a3
{
  v3 = a3;
  v5 = [(FaceIdToastViewController *)self lightweightUI];
  v6 = &OBJC_IVAR___FaceIdToastViewController__glyphWrapper;
  if (v5)
  {
    v6 = &OBJC_IVAR___FaceIdToastViewController__lightweightTrailingView;
  }

  v7 = *(&self->super.super.super.super.isa + *v6);

  [v7 setAlpha:v3];
}

- (void)presentableWillDisappearAsBanner:(id)a3 withReason:(id)a4
{
  v7.receiver = self;
  v7.super_class = FaceIdToastViewController;
  v6 = a4;
  [(PresentationViewController *)&v7 presentableWillDisappearAsBanner:a3 withReason:v6];
  LODWORD(a3) = [v6 isEqualToString:{@"removed via pan gesture", v7.receiver, v7.super_class}];

  if (a3)
  {
    [(FaceIdToastViewController *)self _dispatchTapBlock:0];
  }
}

- (void)presentableDidDisappearAsBanner:(id)a3 withReason:(id)a4
{
  v6 = a3;
  v9.receiver = self;
  v9.super_class = FaceIdToastViewController;
  [(PresentationViewController *)&v9 presentableDidDisappearAsBanner:v6 withReason:a4];
  v7 = LACLogFaceIDUI();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Face ID glyph disappeared in %{public}@", buf, 0xCu);
  }

  timeAppeared = self->_timeAppeared;
  self->_timeAppeared = 0;
}

- (void)shake
{
  if ([(PresentationViewController *)self isActive])
  {
    v3.receiver = self;
    v3.super_class = FaceIdToastViewController;
    [(PresentationViewController *)&v3 shake];
  }

  else
  {
    self->_shakeOnAppeared = 1;
  }
}

- (void)_setBackdropEnabled:(BOOL)a3 animated:(BOOL)a4
{
  if (a4)
  {
    objc_initWeak(&location, self);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = __58__FaceIdToastViewController__setBackdropEnabled_animated___block_invoke;
    v5[3] = &unk_1000AAD00;
    objc_copyWeak(&v6, &location);
    v7 = a3;
    [UIView animateWithDuration:v5 animations:0.3];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  else
  {

    [(FaceIdToastViewController *)self _setBackdropEnabled:?];
  }
}

void __58__FaceIdToastViewController__setBackdropEnabled_animated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setBackdropEnabled:*(a1 + 40)];
}

- (void)_setBackdropEnabled:(BOOL)a3
{
  p_backdropView = &self->_backdropView;
  if (a3)
  {
    [(UIVisualEffectView *)self->_backdropView setEffect:self->_blurEffect];
    [(UIVisualEffectView *)self->_overlayEffectView setEffect:self->_vibrancyEffect];
    [(FaceIdToastViewController *)self _backdropRenderingHintColor];
  }

  else
  {
    [(UIVisualEffectView *)self->_backdropView setEffect:0];
    [(UIVisualEffectView *)self->_overlayEffectView setEffect:0];
    +[UIColor clearColor];
  }
  v6 = ;
  v5 = [(UIVisualEffectView *)*p_backdropView contentView];
  [v5 setBackgroundColor:v6];
}

- (TransitionViewController)presentingTransitionViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingTransitionViewController);

  return WeakRetained;
}

void __61__FaceIdToastViewController__setupSecureUICompletionWatchdog__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%{public}@ watchdog for secure UI transitions triggered, dismissing now", &v2, 0xCu);
}

@end