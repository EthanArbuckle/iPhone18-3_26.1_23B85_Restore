@interface AFUISiriCompactView
+ (id)sharedSiriUISettingsDefaults;
+ (void)_animateView:(id)a3 fromYPosition:(double)a4 toYPosition:(double)a5 fade:(int64_t)a6 completion:(id)a7;
- (AFUISiriCompactView)initWithFrame:(CGRect)a3 compactViewDelegate:(id)a4 edgeLightViewProvider:(id)a5 showsSensitiveUI:(BOOL)a6;
- (AFUISiriCompactView)initWithFrame:(CGRect)a3 eyesFreeMode:(int64_t)a4 edgeLightViewProvider:(id)a5 showsSensitiveUI:(BOOL)a6;
- (AFUISiriEdgelightViewProvider)edgeLightViewProvider;
- (BOOL)_shouldShowBugReportButton;
- (BOOL)passcodeView:(id)a3 attemptUnlockWithPassword:(id)a4;
- (BOOL)shouldRequestStatusBar;
- (CGRect)_lockViewFrame;
- (CGRect)_orbViewContainerFrame;
- (CGRect)_remoteContentViewFrame;
- (CGSize)_sizeForOrbView;
- (CGSize)_sizeForOrbViewContainer;
- (double)_originXForOrbContainer;
- (double)bugReportDimension;
- (double)siriXIndicatorDimension;
- (void)_animateLockViewIsAnimatingIn:(BOOL)a3 completion:(id)a4;
- (void)_constructAndAddBugReportButtonWithImage:(id)a3;
- (void)_constructAndAddSiriXIndicator;
- (void)_handleTouchEndedForNonAttendingConfiguration;
- (void)_loadReportBugButtonTemplateImageInBackgroundWithCompletion:(id)a3;
- (void)_orbButtonHeld:(id)a3;
- (void)_playHaptic;
- (void)_reportBugButtonLongPressed;
- (void)_reportBugButtonTapped;
- (void)_setUpEyesFreePresentation:(int64_t)a3;
- (void)_setupBugReportButtonIfNeeded;
- (void)_setupContentViews;
- (void)_setupOrb;
- (void)_setupVoiceActivationMaskView;
- (void)_tearDownBugReportButton;
- (void)animateOrbViewDismissalWithCompletion:(id)a3;
- (void)animateOrbViewToOffWithCompletion:(id)a3;
- (void)backgroundBlurViewController:(id)a3 didSetBlurVisibilityTo:(BOOL)a4;
- (void)dealloc;
- (void)dismissalBlur:(float)a3;
- (void)keyboardWillHide:(id)a3;
- (void)keyboardWillShow:(id)a3;
- (void)layoutSubviews;
- (void)passcodeView:(id)a3 animateShowPasscodeWithCompletionHandler:(id)a4;
- (void)passcodeView:(id)a3 hideLockViewWithResult:(int64_t)a4 unlockCompletionHandler:(id)a5;
- (void)reduceOrbOpacity:(BOOL)a3;
- (void)requestBlurVisible:(BOOL)a3 reason:(int64_t)a4 fence:(id)a5;
- (void)setAuxiliaryViewsHidden:(BOOL)a3 animated:(BOOL)a4;
- (void)setContentViewsAlpha:(double)a3;
- (void)setDockFrame:(CGRect)a3;
- (void)setInputPowerLevel:(float)a3;
- (void)setOutputPowerLevel:(float)a3;
- (void)setRemoteContentView:(id)a3;
- (void)setRequestHandlingStatus:(unint64_t)a3;
- (void)setSiriContentDelegate:(id)a3;
- (void)setSiriSessionState:(int64_t)a3;
- (void)setTamaleView:(id)a3;
- (void)setVoiceActivationMaskViewVisible:(BOOL)a3;
- (void)siriWillPresentOverVisualIntelliengece;
- (void)touchesBeganForInputView:(id)a3;
- (void)touchesEndedForInputView:(id)a3;
- (void)updateVolumeInputdB:(float)a3;
@end

@implementation AFUISiriCompactView

+ (id)sharedSiriUISettingsDefaults
{
  if (sharedSiriUISettingsDefaults_onceToken_0 != -1)
  {
    +[AFUISiriCompactView sharedSiriUISettingsDefaults];
  }

  v3 = sharedSiriUISettingsDefaults_defaults_0;

  return v3;
}

uint64_t __51__AFUISiriCompactView_sharedSiriUISettingsDefaults__block_invoke()
{
  sharedSiriUISettingsDefaults_defaults_0 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.siri.internal"];

  return MEMORY[0x2821F96F8]();
}

- (AFUISiriCompactView)initWithFrame:(CGRect)a3 compactViewDelegate:(id)a4 edgeLightViewProvider:(id)a5 showsSensitiveUI:(BOOL)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = a4;
  v14 = a5;
  v21.receiver = self;
  v21.super_class = AFUISiriCompactView;
  v15 = [(AFUISiriCompactView *)&v21 initWithFrame:x, y, width, height];
  if (v15)
  {
    v15->_saeEnabled = [MEMORY[0x277CEF4D0] saeAvailable] & a6;
    v15->_remoteContentViewHidden = 0;
    v15->_lockViewHidden = 1;
    v15->_inFluidDismissal = 0;
    v15->_ignoreSiriSessionUpdates = 0;
    v15->_mode = 7;
    objc_storeWeak(&v15->_compactViewDelegate, v13);
    v15->_shouldUpdatePowerLevel = 1;
    objc_storeWeak(&v15->_edgeLightViewProvider, v14);
    v16 = +[AFUISiriCompactView sharedSiriUISettingsDefaults];
    v17 = [v16 valueForKey:@"ForceOrbGraphic"];
    if ([v17 intValue])
    {
      v15->_saeEnabled = 0;
    }

    [(AFUISiriCompactView *)v15 _setupContentViews];
    [(AFUISiriCompactView *)v15 _setupBugReportButtonIfNeeded];
    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    [v18 addObserver:v15 selector:sel_keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];

    v19 = [MEMORY[0x277CCAB98] defaultCenter];
    [v19 addObserver:v15 selector:sel_keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];
  }

  return v15;
}

- (AFUISiriCompactView)initWithFrame:(CGRect)a3 eyesFreeMode:(int64_t)a4 edgeLightViewProvider:(id)a5 showsSensitiveUI:(BOOL)a6
{
  v7 = [(AFUISiriCompactView *)self initWithFrame:0 compactViewDelegate:a5 edgeLightViewProvider:a6 showsSensitiveUI:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v8 = v7;
  if (v7)
  {
    [(AFUISiriCompactView *)v7 _setUpEyesFreePresentation:a4];
  }

  return v8;
}

- (BOOL)shouldRequestStatusBar
{
  v3 = [(AFUISiriEyesFreeView *)self->_eyesFreeView eyesFreeMode];
  if (v3 != 1)
  {

    LOBYTE(v3) = [(AFUISiriCompactView *)self isBlurViewVisible];
  }

  return v3;
}

- (void)_orbButtonHeld:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [a3 state];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = v5;
    v8 = [v6 numberWithInteger:v4];
    v11 = 136315394;
    v12 = "[AFUISiriCompactView _orbButtonHeld:]";
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_241432000, v7, OS_LOG_TYPE_DEFAULT, "%s #OrbUIInteraction Mic Button Held State %@", &v11, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_siriContentDelegate);
  [WeakRetained siriContentDidReceiveOrbTappedAction:self];

  if (v4 == 1)
  {
    v10 = objc_loadWeakRetained(&self->_siriContentDelegate);
    [v10 siriContentDidReceiveOrbHoldDidBeginAction:self];
  }

  else
  {
    if ((v4 - 3) > 1)
    {
      return;
    }

    v10 = objc_loadWeakRetained(&self->_siriContentDelegate);
    [v10 siriContentDidReceiveOrbHoldDidEndAction:self];
  }
}

- (void)setDockFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_dockFrame = &self->_dockFrame;
  if (!CGRectEqualToRect(self->_dockFrame, a3))
  {
    p_dockFrame->origin.x = x;
    p_dockFrame->origin.y = y;
    p_dockFrame->size.width = width;
    p_dockFrame->size.height = height;
    orbViewContainer = self->_orbViewContainer;
    [(AFUISiriCompactView *)self _orbViewContainerFrame];
    [(UIView *)orbViewContainer setFrame:?];
    touchInputView = self->_touchInputView;
    [(UIView *)self->_orbViewContainer frame];

    [(AFUITouchInputView *)touchInputView setFrame:?];
  }
}

- (void)_setupContentViews
{
  v3 = objc_alloc_init(AFUISiriCompactDimmingView);
  dimmingBackdropView = self->_dimmingBackdropView;
  self->_dimmingBackdropView = v3;

  [(AFUISiriCompactView *)self addSubview:self->_dimmingBackdropView];
  v5 = objc_alloc(MEMORY[0x277D75D18]);
  [(AFUISiriCompactView *)self frame];
  v7 = v6;
  [(AFUISiriCompactView *)self frame];
  v8 = [v5 initWithFrame:{0.0, 0.0, v7}];
  foregroundContainerView = self->_foregroundContainerView;
  self->_foregroundContainerView = v8;

  [(AFUISiriCompactView *)self addSubview:self->_foregroundContainerView];
  if (!self->_saeEnabled)
  {
    [(AFUISiriCompactView *)self _setupOrb];
  }

  v10 = objc_alloc(MEMORY[0x277D75D18]);
  v11 = *MEMORY[0x277CBF3A0];
  v12 = *(MEMORY[0x277CBF3A0] + 8);
  v13 = *(MEMORY[0x277CBF3A0] + 16);
  v14 = *(MEMORY[0x277CBF3A0] + 24);
  v15 = [v10 initWithFrame:{*MEMORY[0x277CBF3A0], v12, v13, v14}];
  blurringAndLockContainer = self->_blurringAndLockContainer;
  self->_blurringAndLockContainer = v15;

  [(UIView *)self->_foregroundContainerView addSubview:self->_blurringAndLockContainer];
  v17 = [objc_alloc(MEMORY[0x277D61988]) initWithDelegate:self];
  fullScreenBlurViewController = self->_fullScreenBlurViewController;
  self->_fullScreenBlurViewController = v17;

  v19 = [(SiriUIBackgroundBlurViewController *)self->_fullScreenBlurViewController view];
  [(AFUISiriCompactView *)self insertSubview:v19 aboveSubview:self->_dimmingBackdropView];

  v20 = [[AFUIPasscodeContainerView alloc] initWithFrame:0 backdropView:self->_mode mode:objc_opt_class() passcodeViewFactoryClass:v11, v12, v13, v14];
  lockContainerView = self->_lockContainerView;
  self->_lockContainerView = v20;

  [(AFUIPasscodeContainerView *)self->_lockContainerView setDelegate:self];
  [(UIView *)self->_blurringAndLockContainer addSubview:self->_lockContainerView];
  v22 = self->_blurringAndLockContainer;

  [(UIView *)v22 setUserInteractionEnabled:0];
}

- (void)_setupOrb
{
  [(AFUISiriCompactView *)self _sizeForOrbViewContainer];
  v4 = v3;
  v6 = v5;
  [(AFUISiriCompactView *)self _sizeForOrbView];
  v8 = v7;
  v10 = v9;
  [(AFUISiriCompactView *)self _originXForOrbContainer];
  v12 = v11;
  [(AFUISiriCompactView *)self frame];
  v13 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v12, CGRectGetHeight(v39) - v6 + -44.0, v4, v6}];
  orbViewContainer = self->_orbViewContainer;
  self->_orbViewContainer = v13;

  [(UIView *)self->_foregroundContainerView addSubview:self->_orbViewContainer];
  v15 = (v4 - v8) * 0.5;
  v16 = (v6 - v10) * 0.5;
  v17 = objc_alloc(MEMORY[0x277D61A68]);
  v18 = [MEMORY[0x277D759A0] mainScreen];
  [v18 scale];
  v20 = v19 < 2.0;
  v21 = ceil(v15);
  v22 = ceil(v16);
  v23 = ceil(v8);
  v24 = ceil(v10);
  if (!v20)
  {
    v21 = v15;
    v22 = v16;
    v23 = v8;
    v24 = v10;
  }

  v25 = [v17 initWithFrame:{v21, v22, v23, v24}];
  orbView = self->_orbView;
  self->_orbView = v25;

  v27 = [(SUICOrbView *)self->_orbView layer];
  [v27 setAllowsHitTesting:0];

  [(UIView *)self->_orbViewContainer addSubview:self->_orbView];
  v28 = [AFUITouchInputView alloc];
  [(UIView *)self->_orbViewContainer frame];
  v29 = [(AFUITouchInputView *)v28 initWithFrame:?];
  touchInputView = self->_touchInputView;
  self->_touchInputView = v29;

  v31 = self->_touchInputView;
  v32 = [MEMORY[0x277D75348] clearColor];
  [(AFUITouchInputView *)v31 setBackgroundColor:v32];

  v33 = [(AFUITouchInputView *)self->_touchInputView layer];
  [v33 setHitTestsAsOpaque:1];

  [(AFUITouchInputView *)self->_touchInputView setDelegate:self];
  v34 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__orbButtonHeld_];
  longPressRecognizer = self->_longPressRecognizer;
  self->_longPressRecognizer = v34;

  [(UILongPressGestureRecognizer *)self->_longPressRecognizer setMinimumPressDuration:0.1];
  [(UILongPressGestureRecognizer *)self->_longPressRecognizer setDelegate:self];
  [(AFUITouchInputView *)self->_touchInputView addGestureRecognizer:self->_longPressRecognizer];
  foregroundContainerView = self->_foregroundContainerView;
  v37 = self->_touchInputView;

  [(UIView *)foregroundContainerView addSubview:v37];
}

- (double)_originXForOrbContainer
{
  IsPad = SiriUIDeviceIsPad();
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 scale];
  v6 = v5;
  [(AFUISiriCompactView *)self frame];
  Width = CGRectGetWidth(v13);
  [(AFUISiriCompactView *)self _sizeForOrbViewContainer];
  v9 = (Width - v8) * 0.5;
  v10 = ceil(v9);
  if (v6 >= 2.0)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (IsPad)
  {
    if (SiriLanguageIsRTL())
    {
      return 44.0;
    }

    else
    {
      return v11 + v11 + -44.0;
    }
  }

  return v11;
}

- (void)requestBlurVisible:(BOOL)a3 reason:(int64_t)a4 fence:(id)a5
{
  v8 = a5;
  objc_initWeak(&location, self);
  objc_copyWeak(v10, &location);
  v9 = v8;
  v10[1] = a4;
  v11 = a3;
  SiriUIInvokeOnMainQueue();

  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

void __55__AFUISiriCompactView_requestBlurVisible_reason_fence___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (*(a1 + 32))
    {
      v4 = [WeakRetained window];
      v5 = [v4 windowScene];
      [v5 _synchronizeDrawingWithFence:*(a1 + 32)];
    }

    v6 = *(a1 + 48);
    v7 = 0.5;
    if (v6 == 4)
    {
      v7 = 0.0;
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__AFUISiriCompactView_requestBlurVisible_reason_fence___block_invoke_2;
    v8[3] = &unk_278CD6A78;
    v9 = *(a1 + 56);
    v8[4] = v3;
    v8[5] = v6;
    [MEMORY[0x277D75D18] _animateUsingSpringWithDuration:0 delay:v8 options:0 mass:v7 stiffness:0.0 damping:3.0 initialVelocity:1000.0 animations:500.0 completion:0.0];
  }
}

- (void)reduceOrbOpacity:(BOOL)a3
{
  if (a3)
  {
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __40__AFUISiriCompactView_reduceOrbOpacity___block_invoke;
    v14 = &unk_278CD5618;
    v15 = self;
    v3 = 0.5;
    v4 = 0.0;
    v5 = &v11;
  }

  else
  {
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __40__AFUISiriCompactView_reduceOrbOpacity___block_invoke_2;
    v9 = &unk_278CD5618;
    v10 = self;
    v4 = 0.2;
    v3 = 0.5;
    v5 = &v6;
  }

  [MEMORY[0x277D75D18] animateWithDuration:4 delay:v5 options:0 animations:v3 completion:{v4, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15}];
}

- (void)_setupBugReportButtonIfNeeded
{
  if ([(AFUISiriCompactView *)self _shouldShowBugReportButton])
  {
    objc_initWeak(&location, self);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __52__AFUISiriCompactView__setupBugReportButtonIfNeeded__block_invoke;
    v3[3] = &unk_278CD6AC8;
    objc_copyWeak(&v4, &location);
    [(AFUISiriCompactView *)self _loadReportBugButtonTemplateImageInBackgroundWithCompletion:v3];
    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }
}

void __52__AFUISiriCompactView__setupBugReportButtonIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  v4 = v3;
  SiriUIInvokeOnMainQueue();

  objc_destroyWeak(&v5);
}

void __52__AFUISiriCompactView__setupBugReportButtonIfNeeded__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _constructAndAddBugReportButtonWithImage:*(a1 + 32)];
}

- (double)bugReportDimension
{
  result = 50.0;
  if (!self->_isEyesFree)
  {
    return 25.0;
  }

  return result;
}

- (double)siriXIndicatorDimension
{
  result = 56.0;
  if (!self->_isEyesFree)
  {
    return 28.0;
  }

  return result;
}

- (void)keyboardWillShow:(id)a3
{
  v11 = a3;
  self->_isKeyboardShowing = 1;
  if ([(AFUISiriCompactView *)self _shouldShowBugReportButton])
  {
    if (self->_reportBugButton)
    {
      v4 = [v11 userInfo];
      v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D76BB8]];
      [v5 CGRectValue];
      self->_keyboardFrame.origin.x = v6;
      self->_keyboardFrame.origin.y = v7;
      self->_keyboardFrame.size.width = v8;
      self->_keyboardFrame.size.height = v9;

      v10 = self->_keyboardFrame.size.height + 90.0;
      self->_bugButtonTopOffset = v10;
      if (self->_saeEnabled)
      {
        [(NSLayoutConstraint *)self->_bugButtonTopConstraint setConstant:-v10];
        [(SiriUIContentButton *)self->_reportBugButton setNeedsUpdateConstraints];
      }
    }
  }
}

- (void)keyboardWillHide:(id)a3
{
  self->_isKeyboardShowing = 0;
  if ([(AFUISiriCompactView *)self _shouldShowBugReportButton])
  {
    if (self->_reportBugButton)
    {
      v4 = *(MEMORY[0x277CBF3A0] + 16);
      self->_keyboardFrame.origin = *MEMORY[0x277CBF3A0];
      self->_keyboardFrame.size = v4;
      v5 = self->_keyboardFrame.size.height + 90.0;
      self->_bugButtonTopOffset = v5;
      if (self->_saeEnabled)
      {
        [(NSLayoutConstraint *)self->_bugButtonTopConstraint setConstant:-(v5 + 30.0)];
        reportBugButton = self->_reportBugButton;

        [(SiriUIContentButton *)reportBugButton setNeedsUpdateConstraints];
      }
    }
  }
}

- (void)_constructAndAddBugReportButtonWithImage:(id)a3
{
  v39[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(AFUISiriCompactView *)self _shouldShowBugReportButton])
  {
    if (self->_isEyesFree)
    {
      [MEMORY[0x277D619A0] eyesFreeButtonWithImageTemplate:v4 style:0];
    }

    else
    {
      [MEMORY[0x277D619A0] buttonWithImageTemplate:v4 style:0];
    }
    v5 = ;
    reportBugButton = self->_reportBugButton;
    self->_reportBugButton = v5;

    v7 = self->_reportBugButton;
    v8 = [MEMORY[0x277D75348] systemDarkGrayTintColor];
    v9 = [v8 colorWithAlphaComponent:0.9];
    [(SiriUIContentButton *)v7 setBackgroundColor:v9];

    v10 = [(SiriUIContentButton *)self->_reportBugButton layer];
    [(AFUISiriCompactView *)self bugReportDimension];
    [v10 setCornerRadius:v11 * 0.5];

    [(SiriUIContentButton *)self->_reportBugButton _setTouchInsets:-0.5, -0.5, -0.5, -0.5];
    [(SiriUIContentButton *)self->_reportBugButton addTarget:self action:sel__reportBugButtonTapped forControlEvents:64];
    v12 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__reportBugButtonLongPressed];
    [(SiriUIContentButton *)self->_reportBugButton addGestureRecognizer:v12];
    [(SiriUIContentButton *)self->_reportBugButton setHidden:0];
    v13 = self->_reportBugButton;
    v14 = [MEMORY[0x277D75348] whiteColor];
    [(SiriUIContentButton *)v13 setDefaultColorForTemplate:v14];

    [(AFUISiriCompactView *)self addSubview:self->_reportBugButton];
    [(SiriUIContentButton *)self->_reportBugButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [MEMORY[0x277D60138] reportConcernButtonEnabled];
    if (v15)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    v17 = 15.0;
    if (!v15)
    {
      v17 = -15.0;
    }

    v18 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_reportBugButton attribute:v16 relatedBy:0 toItem:self attribute:v16 multiplier:1.0 constant:v17];
    [v18 setActive:1];

    v19 = MEMORY[0x277CCAAD0];
    v20 = self->_reportBugButton;
    [(AFUISiriCompactView *)self bugReportDimension];
    v22 = [v19 constraintWithItem:v20 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v21];
    [v22 setActive:1];

    v23 = MEMORY[0x277CCAAD0];
    v24 = self->_reportBugButton;
    [(AFUISiriCompactView *)self bugReportDimension];
    v26 = [v23 constraintWithItem:v24 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v25];
    [v26 setActive:1];

    if (self->_saeEnabled)
    {
      [(AFUISiriCompactView *)self _sizeForOrbViewContainer];
      if (self->_isKeyboardShowing)
      {
        v27 = self->_keyboardFrame.size.height + 90.0;
      }

      self->_bugButtonTopOffset = v27;
      v28 = MEMORY[0x277CCAAD0];
      v29 = self->_reportBugButton;
      v30 = -v27;
      v31 = 1.0;
      v32 = 3;
      orbView = self;
      v34 = 4;
    }

    else
    {
      v28 = MEMORY[0x277CCAAD0];
      v29 = self->_reportBugButton;
      orbView = self->_orbView;
      v31 = 1.0;
      v30 = 0.0;
      v32 = 10;
      v34 = 10;
    }

    v35 = [v28 constraintWithItem:v29 attribute:v32 relatedBy:0 toItem:orbView attribute:v34 multiplier:v31 constant:v30];
    bugButtonTopConstraint = self->_bugButtonTopConstraint;
    self->_bugButtonTopConstraint = v35;

    v37 = MEMORY[0x277CCAAD0];
    v39[0] = self->_bugButtonTopConstraint;
    v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
    [v37 activateConstraints:v38];

    [(AFUISiriCompactView *)self _constructAndAddSiriXIndicator];
  }
}

- (void)_loadReportBugButtonTemplateImageInBackgroundWithCompletion:(id)a3
{
  v3 = a3;
  v4 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    [(AFUISiriCompactView *)v4 _loadReportBugButtonTemplateImageInBackgroundWithCompletion:v5, v6, v7, v8, v9, v10, v11];
  }

  v12 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__AFUISiriCompactView__loadReportBugButtonTemplateImageInBackgroundWithCompletion___block_invoke;
  block[3] = &unk_278CD5690;
  v15 = v3;
  v13 = v3;
  dispatch_async(v12, block);
}

void __83__AFUISiriCompactView__loadReportBugButtonTemplateImageInBackgroundWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/AppleInternal/Library/Assistant/UIPlugins/Debug.siriUIBundle"];
  if (v2)
  {
    v3 = MEMORY[0x277CEF098];
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
    {
      __83__AFUISiriCompactView__loadReportBugButtonTemplateImageInBackgroundWithCompletion___block_invoke_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }

    v12 = [MEMORY[0x277D755B8] imageNamed:@"radarBug" inBundle:v2];
    v13 = [v12 imageWithRenderingMode:2];

    if (*(a1 + 32))
    {
      v14 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
      {
        __83__AFUISiriCompactView__loadReportBugButtonTemplateImageInBackgroundWithCompletion___block_invoke_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
      }

      (*(*(a1 + 32) + 16))();
    }
  }

  else
  {
    v22 = *(a1 + 32);
    if (v22)
    {
      (*(v22 + 16))(v22, 0);
    }
  }
}

- (void)_reportBugButtonTapped
{
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    [(AFUISiriCompactView *)v3 _reportBugButtonTapped:v4];
  }

  WeakRetained = objc_loadWeakRetained(&self->_siriContentDelegate);
  [WeakRetained siriContentDidReceiveReportBugAction:self];
}

- (void)_reportBugButtonLongPressed
{
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEBUG))
  {
    [(AFUISiriCompactView *)v3 _reportBugButtonLongPressed:v4];
  }

  WeakRetained = objc_loadWeakRetained(&self->_siriContentDelegate);
  [WeakRetained siriContentDidReceiveReportBugLongPress:self];
}

- (BOOL)_shouldShowBugReportButton
{
  v2 = self;
  WeakRetained = objc_loadWeakRetained(&self->_compactViewDelegate);
  LOBYTE(v2) = [WeakRetained compactViewShouldShowDebugButton:v2];

  return v2;
}

- (void)_constructAndAddSiriXIndicator
{
  if (self->_reportBugButton && [(AFUISiriCompactView *)self _shouldShowBugReportButton])
  {
    v3 = objc_alloc_init(MEMORY[0x277D75D18]);
    siriXIndicator = self->_siriXIndicator;
    self->_siriXIndicator = v3;

    v5 = [(UIView *)self->_siriXIndicator layer];
    [(AFUISiriCompactView *)self siriXIndicatorDimension];
    [v5 setCornerRadius:v6 * 0.5];

    [(UIView *)self->_siriXIndicator setAlpha:0.6];
    [(AFUISiriCompactView *)self insertSubview:self->_siriXIndicator below:self->_reportBugButton];
    [(AFUISiriCompactView *)self setRequestHandlingStatus:0];
    [(UIView *)self->_siriXIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_siriXIndicator attribute:9 relatedBy:0 toItem:self->_reportBugButton attribute:9 multiplier:1.0 constant:0.0];
    [v7 setActive:1];

    v8 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_siriXIndicator attribute:10 relatedBy:0 toItem:self->_reportBugButton attribute:10 multiplier:1.0 constant:0.0];
    [v8 setActive:1];

    v9 = MEMORY[0x277CCAAD0];
    v10 = self->_siriXIndicator;
    [(AFUISiriCompactView *)self siriXIndicatorDimension];
    v12 = [v9 constraintWithItem:v10 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v11];
    [v12 setActive:1];

    v13 = MEMORY[0x277CCAAD0];
    v14 = self->_siriXIndicator;
    [(AFUISiriCompactView *)self siriXIndicatorDimension];
    v16 = [v13 constraintWithItem:v14 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v15];
    [v16 setActive:1];
  }
}

- (void)setRequestHandlingStatus:(unint64_t)a3
{
  siriXIndicator = self->_siriXIndicator;
  v4 = AFUISiriRequestHandlingStatusColor(a3);
  [(UIView *)siriXIndicator setBackgroundColor:v4];
}

- (void)animateOrbViewDismissalWithCompletion:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v7 = MEMORY[0x277CCABB0];
    ignoreSiriSessionUpdates = self->_ignoreSiriSessionUpdates;
    v9 = v6;
    v10 = [v7 numberWithBool:ignoreSiriSessionUpdates];
    v18 = 136315394;
    v19 = "[AFUISiriCompactView animateOrbViewDismissalWithCompletion:]";
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&dword_241432000, v9, OS_LOG_TYPE_DEFAULT, "%s #orbAnimation _ignoreSiriSessionUpdates: %@", &v18, 0x16u);
  }

  self->_ignoreSiriSessionUpdates = 1;
  v11 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = MEMORY[0x277CCABB0];
    v13 = self->_ignoreSiriSessionUpdates;
    v14 = v11;
    v15 = [v12 numberWithBool:v13];
    v18 = 136315394;
    v19 = "[AFUISiriCompactView animateOrbViewDismissalWithCompletion:]";
    v20 = 2112;
    v21 = v15;
    _os_log_impl(&dword_241432000, v14, OS_LOG_TYPE_DEFAULT, "%s #orbAnimation _ignoreSiriSessionUpdates: %@", &v18, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_edgeLightViewProvider);
  v17 = [WeakRetained edgeLightMaskMetalLayerForView:self];

  if (v17)
  {
    [v17 animateOffWithCompletion:v4];
  }

  else
  {
    [(SUICOrbView *)self->_orbView animateToOffWithCompletion:v4];
  }
}

- (CGSize)_sizeForOrbViewContainer
{
  v2 = 66.0;
  v3 = 66.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)_sizeForOrbView
{
  v2 = 198.0;
  v3 = 198.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)_remoteContentViewFrame
{
  [(AFUISiriCompactView *)self bounds];
  v6 = v3;
  v8 = v7;
  v9 = v5;
  v10 = 0.0;
  if (self->_remoteContentViewHidden)
  {
    v11 = v8;
    v10 = -CGRectGetHeight(*&v3);
  }

  v12 = v6;
  v13 = v10;
  v14 = v8;
  v15 = v9;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)_lockViewFrame
{
  [(AFUISiriCompactView *)self bounds];
  v6 = v3;
  v8 = v7;
  v9 = v5;
  Height = 0.0;
  if (self->_lockViewHidden)
  {
    v11 = v8;
    Height = CGRectGetHeight(*&v3);
  }

  v12 = v6;
  v13 = Height;
  v14 = v8;
  v15 = v9;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)_orbViewContainerFrame
{
  IsPad = SiriUIDeviceIsPad();
  [(AFUISiriCompactView *)self _sizeForOrbViewContainer];
  v5 = v4;
  v7 = v6;
  [(AFUISiriCompactView *)self _originXForOrbContainer];
  v9 = v8;
  [(AFUISiriCompactView *)self frame];
  v10 = CGRectGetHeight(v33) - v7 + -44.0;
  if (IsPad)
  {
    v38.origin.x = v9;
    v38.origin.y = v10;
    v38.size.width = v5;
    v38.size.height = v7;
    if (CGRectIntersectsRect(self->_dockFrame, v38) && !self->_saeEnabled)
    {
      v10 = v10 - self->_dockFrame.size.height;
    }
  }

  p_orbViewContainerFrame = &self->_orbViewContainerFrame;
  v34.origin.x = v9;
  v34.origin.y = v10;
  v34.size.width = v5;
  v34.size.height = v7;
  if (!CGRectEqualToRect(v34, self->_orbViewContainerFrame))
  {
    p_orbViewContainerFrame->origin.x = v9;
    self->_orbViewContainerFrame.origin.y = v10;
    self->_orbViewContainerFrame.size.width = v5;
    self->_orbViewContainerFrame.size.height = v7;
    v12 = [(AFUISiriCompactView *)self traitCollection];
    v13 = [v12 isAmbientPresented];

    v14 = [(UIView *)self->_orbViewContainer superview];
    [(AFUISiriCompactView *)self convertRect:v14 fromView:p_orbViewContainerFrame->origin.x, self->_orbViewContainerFrame.origin.y, self->_orbViewContainerFrame.size.width, self->_orbViewContainerFrame.size.height];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v23 = 0.0;
    if ((v13 & 1) == 0)
    {
      [(AFUISiriCompactView *)self bounds:0.0];
      Height = CGRectGetHeight(v35);
      v25 = v16;
      v26 = Height;
      v36.origin.x = v25;
      v36.origin.y = v18;
      v36.size.width = v20;
      v36.size.height = v22;
      v23 = v26 - CGRectGetMinY(v36);
    }

    if (self->_saeEnabled)
    {
      v27 = 0.0;
    }

    else
    {
      v27 = v23;
    }

    WeakRetained = objc_loadWeakRetained(&self->_compactViewDelegate);
    [WeakRetained compactView:self bottomContentInsetDidChange:v27];
  }

  v29 = v9;
  v30 = v10;
  v31 = v5;
  v32 = v7;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (void)layoutSubviews
{
  v33.receiver = self;
  v33.super_class = AFUISiriCompactView;
  [(AFUISiriCompactView *)&v33 layoutSubviews];
  [(AFUISiriCompactView *)self bounds];
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  if (!self->_inFluidDismissal)
  {
    [(UIView *)self->_foregroundContainerView setFrame:v3, v4, v5, v6];
  }

  [(AFUISiriCompactDimmingView *)self->_dimmingBackdropView setFrame:v7, v8, v9, v10];
  remoteContentView = self->_remoteContentView;
  [(AFUISiriCompactView *)self _remoteContentViewFrame];
  [(UIView *)remoteContentView setFrame:?];
  [(UIView *)self->_blurringAndLockContainer setFrame:v7, v8, v9, v10];
  lockContainerView = self->_lockContainerView;
  [(AFUISiriCompactView *)self _lockViewFrame];
  [(AFUIPasscodeContainerView *)lockContainerView setFrame:?];
  orbViewContainer = self->_orbViewContainer;
  [(AFUISiriCompactView *)self _orbViewContainerFrame];
  [(UIView *)orbViewContainer setFrame:?];
  if (!self->_saeEnabled)
  {
    [(AFUISiriCompactView *)self _sizeForOrbViewContainer];
    v15 = v14;
    v17 = v16;
    [(AFUISiriCompactView *)self _sizeForOrbView];
    v19 = v18;
    v21 = v20;
    v22 = (v15 - v18) * 0.5;
    v23 = (v17 - v20) * 0.5;
    orbView = self->_orbView;
    v25 = [MEMORY[0x277D759A0] mainScreen];
    [v25 scale];
    v27 = v26 < 2.0;
    v28 = ceil(v22);
    v29 = ceil(v23);
    v30 = ceil(v19);
    v31 = ceil(v21);
    if (!v27)
    {
      v28 = v22;
      v29 = v23;
      v30 = v19;
      v31 = v21;
    }

    [(SUICOrbView *)orbView setFrame:v28, v29, v30, v31];
  }

  touchInputView = self->_touchInputView;
  [(UIView *)self->_orbViewContainer frame];
  [(AFUITouchInputView *)touchInputView setFrame:?];
  [(UIView *)self->_voiceActivationMaskView setFrame:v7, v8, v9, v10];
  [(AFUISiriEyesFreeView *)self->_eyesFreeView setFrame:v7, v8, v9, v10];
}

- (void)setRemoteContentView:(id)a3
{
  v5 = a3;
  remoteContentView = self->_remoteContentView;
  if (remoteContentView != v5)
  {
    v10 = v5;
    [(UIView *)remoteContentView removeFromSuperview];
    objc_storeStrong(&self->_remoteContentView, a3);
    v7 = self->_remoteContentView;
    if (v7)
    {
      [(AFUISiriCompactView *)self frame];
      [(UIView *)v7 setFrame:?];
    }

    if (self->_voiceActivationMaskView)
    {
      foregroundContainerView = self->_foregroundContainerView;
      v9 = self->_remoteContentView;
    }

    else
    {
      foregroundContainerView = self->_foregroundContainerView;
      v9 = self->_remoteContentView;
      if (!self->_orbViewContainer)
      {
        remoteContentView = [(UIView *)foregroundContainerView addSubview:v9];
        goto LABEL_8;
      }
    }

    remoteContentView = [(UIView *)foregroundContainerView insertSubview:v9 belowSubview:?];
LABEL_8:
    v5 = v10;
  }

  MEMORY[0x2821F96F8](remoteContentView, v5);
}

- (void)setTamaleView:(id)a3
{
  v5 = a3;
  tamaleView = self->_tamaleView;
  if (tamaleView != v5)
  {
    v11 = v5;
    [(SiriSharedUITamaleView *)tamaleView removeFromSuperview];
    objc_storeStrong(&self->_tamaleView, a3);
    v7 = self->_tamaleView;
    v8 = [MEMORY[0x277D759A0] mainScreen];
    [v8 bounds];
    [(SiriSharedUITamaleView *)v7 setFrame:?];

    [(SiriSharedUITamaleView *)self->_tamaleView setAlpha:0.0];
    if (!self->_saeEnabled)
    {
      foregroundContainerView = self->_foregroundContainerView;
      if (foregroundContainerView)
      {
        [(UIView *)foregroundContainerView setHidden:1];
        [(AFUISiriCompactView *)self _tearDownBugReportButton];
      }
    }

    v10 = self->_tamaleView;
    if (self->_foregroundContainerView)
    {
      tamaleView = [(AFUISiriCompactView *)self insertSubview:v10 belowSubview:?];
    }

    else
    {
      tamaleView = [(AFUISiriCompactView *)self insertSubview:v10 atIndex:?];
    }

    v5 = v11;
  }

  MEMORY[0x2821F96F8](tamaleView, v5);
}

- (void)_tearDownBugReportButton
{
  [(SiriUIContentButton *)self->_reportBugButton removeFromSuperview];
  v3 = MEMORY[0x277CCAAD0];
  v4 = [(SiriUIContentButton *)self->_reportBugButton constraints];
  [v3 deactivateConstraints:v4];

  reportBugButton = self->_reportBugButton;
  self->_reportBugButton = 0;

  [(UIView *)self->_siriXIndicator removeFromSuperview];
  v6 = MEMORY[0x277CCAAD0];
  v7 = [(UIView *)self->_siriXIndicator constraints];
  [v6 deactivateConstraints:v7];

  siriXIndicator = self->_siriXIndicator;
  self->_siriXIndicator = 0;
}

- (void)siriWillPresentOverVisualIntelliengece
{
  if (!self->_saeEnabled && [(UIView *)self->_foregroundContainerView isHidden])
  {
    [(UIView *)self->_foregroundContainerView setHidden:0];

    [(AFUISiriCompactView *)self _setupBugReportButtonIfNeeded];
  }
}

- (void)setSiriSessionState:(int64_t)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CEF098];
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v7 = MEMORY[0x277CCABB0];
    ignoreSiriSessionUpdates = self->_ignoreSiriSessionUpdates;
    v9 = v6;
    v10 = [v7 numberWithBool:ignoreSiriSessionUpdates];
    v24 = 136315394;
    v25 = "[AFUISiriCompactView setSiriSessionState:]";
    v26 = 2112;
    v27 = v10;
    _os_log_impl(&dword_241432000, v9, OS_LOG_TYPE_DEFAULT, "%s #orbAnimation _ignoreSiriSessionUpdates: %@", &v24, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_compactViewDelegate);
  v12 = [WeakRetained compactViewRequestAttendingState:self];

  if ((self->_siriSessionState != a3 || self->_isAttending != v12) && !self->_ignoreSiriSessionUpdates)
  {
    self->_isAttending = v12;
    -[SUICOrbView setMode:](self->_orbView, "setMode:", [MEMORY[0x277D60138] orbViewModeForSiriSessionState:a3 isAttending:v12]);
    v13 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v14 = MEMORY[0x277CCABB0];
      v15 = self->_ignoreSiriSessionUpdates;
      v16 = v13;
      v17 = [v14 numberWithBool:v15];
      v24 = 136315394;
      v25 = "[AFUISiriCompactView setSiriSessionState:]";
      v26 = 2112;
      v27 = v17;
      _os_log_impl(&dword_241432000, v16, OS_LOG_TYPE_DEFAULT, "%s #orbAnimation _ignoreSiriSessionUpdates: %@", &v24, 0x16u);
    }

    v18 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v19 = MEMORY[0x277CCABB0];
      siriSessionState = self->_siriSessionState;
      v21 = v18;
      v22 = [v19 numberWithInteger:siriSessionState];
      v23 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
      v24 = 136315650;
      v25 = "[AFUISiriCompactView setSiriSessionState:]";
      v26 = 2112;
      v27 = v22;
      v28 = 2112;
      v29 = v23;
      _os_log_impl(&dword_241432000, v21, OS_LOG_TYPE_DEFAULT, "%s #orbAnimation old state: %@ | new  state:  %@", &v24, 0x20u);
    }

    self->_siriSessionState = a3;
  }
}

- (void)setSiriContentDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_siriContentDelegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_siriContentDelegate, obj);
    v5 = obj;
  }
}

- (void)setVoiceActivationMaskViewVisible:(BOOL)a3
{
  if (a3)
  {

    [(AFUISiriCompactView *)self _setupVoiceActivationMaskView];
  }

  else if (self->_voiceActivationMaskView)
  {
    objc_initWeak(&location, self);
    v3 = MEMORY[0x277D75D18];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __57__AFUISiriCompactView_setVoiceActivationMaskViewVisible___block_invoke;
    v6[3] = &unk_278CD55A0;
    objc_copyWeak(&v7, &location);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __57__AFUISiriCompactView_setVoiceActivationMaskViewVisible___block_invoke_2;
    v4[3] = &unk_278CD55C8;
    objc_copyWeak(&v5, &location);
    [v3 animateWithDuration:v6 animations:v4 completion:0.4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __57__AFUISiriCompactView_setVoiceActivationMaskViewVisible___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[57] setAlpha:0.0];
    WeakRetained = v2;
  }
}

void __57__AFUISiriCompactView_setVoiceActivationMaskViewVisible___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[57] removeFromSuperview];
    v2 = v3[57];
    v3[57] = 0;

    WeakRetained = v3;
  }
}

- (void)setAuxiliaryViewsHidden:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_auxiliaryViewsHidden != a3)
  {
    v10 = v4;
    v11 = v5;
    self->_auxiliaryViewsHidden = a3;
    if (a3)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = 1.0;
    }

    v8[1] = 3221225472;
    v7 = 0.3;
    v8[0] = MEMORY[0x277D85DD0];
    v8[2] = __56__AFUISiriCompactView_setAuxiliaryViewsHidden_animated___block_invoke;
    v8[3] = &unk_278CD6A78;
    v8[4] = self;
    if (!a4)
    {
      v7 = 0.0;
    }

    *&v8[5] = v6;
    v9 = a3;
    [MEMORY[0x277D75D18] animateWithDuration:v8 animations:v7];
  }
}

uint64_t __56__AFUISiriCompactView_setAuxiliaryViewsHidden_animated___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 440) setAlpha:*(a1 + 40)];
  [*(*(a1 + 32) + 560) setAlpha:*(a1 + 40)];
  [*(*(a1 + 32) + 568) setHidden:*(a1 + 48)];
  [*(*(a1 + 32) + 448) setHidden:*(a1 + 48)];
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)_setupVoiceActivationMaskView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  [(AFUISiriCompactView *)self frame];
  v4 = [v3 initWithFrame:?];
  voiceActivationMaskView = self->_voiceActivationMaskView;
  self->_voiceActivationMaskView = v4;

  v6 = self->_voiceActivationMaskView;
  v7 = [MEMORY[0x277D75348] blackColor];
  [(UIView *)v6 setBackgroundColor:v7];

  foregroundContainerView = self->_foregroundContainerView;
  v9 = self->_voiceActivationMaskView;
  orbViewContainer = self->_orbViewContainer;

  [(UIView *)foregroundContainerView insertSubview:v9 belowSubview:orbViewContainer];
}

- (void)backgroundBlurViewController:(id)a3 didSetBlurVisibilityTo:(BOOL)a4
{
  v4 = a4;
  v13 = *MEMORY[0x277D85DE8];
  self->_blurViewVisible = a4;
  WeakRetained = objc_loadWeakRetained(&self->_compactViewDelegate);
  [WeakRetained compactView:self blurVisibilityDidChange:v4];

  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"not visible";
    if (v4)
    {
      v8 = @"visible";
    }

    v9 = 136315394;
    v10 = "[AFUISiriCompactView backgroundBlurViewController:didSetBlurVisibilityTo:]";
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_241432000, v7, OS_LOG_TYPE_DEFAULT, "%s #compact Blur Visibility changed to %@", &v9, 0x16u);
  }
}

- (void)_setUpEyesFreePresentation:(int64_t)a3
{
  self->_isEyesFree = 1;
  v5 = [AFUISiriEyesFreeView alloc];
  [(AFUISiriCompactView *)self bounds];
  v6 = [(AFUISiriEyesFreeView *)v5 initWithFrame:a3 eyesFreeMode:?];
  eyesFreeView = self->_eyesFreeView;
  self->_eyesFreeView = v6;

  [(AFUISiriEyesFreeView *)self->_eyesFreeView setAlpha:0.0];
  v8 = [(AFUISiriCompactView *)self edgeLightViewProvider];

  if (v8)
  {
    v11 = [(AFUISiriCompactView *)self edgeLightViewProvider];
    [v11 insertEyesFreeView:self->_eyesFreeView];
  }

  else
  {
    v9 = self->_eyesFreeView;
    foregroundContainerView = self->_foregroundContainerView;

    [(AFUISiriCompactView *)self insertSubview:v9 belowSubview:foregroundContainerView];
  }
}

- (void)_animateLockViewIsAnimatingIn:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  [MEMORY[0x277CD9FF0] begin];
  if (v6)
  {
    [MEMORY[0x277CD9FF0] setCompletionBlock:v6];
  }

  [(AFUISiriCompactView *)self _remoteContentViewFrame];
  MinY = CGRectGetMinY(v22);
  self->_remoteContentViewHidden = v4;
  v8 = objc_opt_class();
  remoteContentView = self->_remoteContentView;
  [(AFUISiriCompactView *)self _remoteContentViewFrame];
  v10 = CGRectGetMinY(v23);
  if (self->_remoteContentViewHidden)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  [v8 _animateView:remoteContentView fromYPosition:v11 toYPosition:0 fade:MinY completion:v10];
  [(AFUISiriCompactView *)self _lockViewFrame];
  v12 = CGRectGetMinY(v24);
  self->_lockViewHidden = !v4;
  v13 = objc_opt_class();
  lockContainerView = self->_lockContainerView;
  [(AFUISiriCompactView *)self _lockViewFrame];
  v15 = CGRectGetMinY(v25);
  if (self->_lockViewHidden)
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  [v13 _animateView:lockContainerView fromYPosition:v16 toYPosition:0 fade:v12 completion:v15];
  v17 = 1.0;
  if (self->_lockViewHidden)
  {
    v17 = 0.0;
  }

  [(SUICOrbView *)self->_orbView setAlpha:v17];
  orbViewContainer = self->_orbViewContainer;
  [(AFUISiriCompactView *)self _orbViewContainerFrame];
  [(UIView *)orbViewContainer setFrame:?];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __64__AFUISiriCompactView__animateLockViewIsAnimatingIn_completion___block_invoke;
  v21[3] = &unk_278CD5618;
  v21[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v21 animations:0 completion:0.3];
  [(UIView *)self->_blurringAndLockContainer setUserInteractionEnabled:!self->_lockViewHidden];
  fullScreenBlurViewController = self->_fullScreenBlurViewController;
  if (fullScreenBlurViewController)
  {
    if (v4)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __64__AFUISiriCompactView__animateLockViewIsAnimatingIn_completion___block_invoke_2;
      v20[3] = &unk_278CD5618;
      v20[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:v20 animations:0 completion:1.0];
    }

    else
    {
      [(SiriUIBackgroundBlurViewController *)fullScreenBlurViewController requestBackgroundBlurVisible:1 forReason:2];
    }
  }

  [MEMORY[0x277CD9FF0] commit];
}

uint64_t __64__AFUISiriCompactView__animateLockViewIsAnimatingIn_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = 0.0;
  if (*(v1 + 665))
  {
    v2 = 1.0;
  }

  return [*(v1 + 440) setAlpha:v2];
}

+ (void)_animateView:(id)a3 fromYPosition:(double)a4 toYPosition:(double)a5 fade:(int64_t)a6 completion:(id)a7
{
  v28 = a3;
  v11 = a7;
  [MEMORY[0x277CD9FF0] begin];
  if (v11)
  {
    [MEMORY[0x277CD9FF0] setCompletionBlock:v11];
  }

  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = objc_alloc_init(MEMORY[0x277CD9FA0]);
  [v13 setKeyPath:@"position.y"];
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  [v13 setFromValue:v14];

  v15 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
  [v13 setToValue:v15];

  [v13 setMass:4.0];
  [v13 setStiffness:600.0];
  [v13 setDamping:800.0];
  [v12 addObject:v13];
  if (a6)
  {
    v16 = a6 == 2;
    v17 = a6 != 2;
    v18 = v16;
    if (v16)
    {
      v19 = 0.1;
    }

    else
    {
      v19 = 32.0;
    }

    v20 = [MEMORY[0x277CCABB0] numberWithInt:v18];
    a6 = [MEMORY[0x277CCABB0] numberWithInt:v17];
    v21 = objc_alloc_init(MEMORY[0x277CD9FA0]);
    [v21 setKeyPath:@"opacity"];
    [v21 setFromValue:v20];
    [v21 setToValue:a6];
    [v21 setMass:v19];
    [v21 setStiffness:600.0];
    [v21 setDamping:800.0];
    [v12 addObject:v21];
  }

  v22 = objc_alloc_init(MEMORY[0x277CD9E00]);
  [v22 setRemovedOnCompletion:1];
  v23 = [MEMORY[0x277D60100] defaultTimingFunction];
  [v22 setTimingFunction:v23];

  [MEMORY[0x277D60100] defaultAnimationDuration];
  [v22 setDuration:?];
  [v22 setBeginTime:CACurrentMediaTime()];
  [v22 setFillMode:*MEMORY[0x277CDA228]];
  [v22 setAnimations:v12];
  v24 = [v28 layer];
  [v24 addAnimation:v22 forKey:@"Animation Group"];

  [MEMORY[0x277CD9FF0] commit];
  if (a6)
  {
    v25 = [v28 layer];
    [a6 floatValue];
    [v25 setOpacity:?];
  }

  v26 = [v28 layer];
  [v26 setAnchorPoint:{0.0, 0.0}];

  v27 = [v28 layer];
  [v27 setPosition:{0.0, a5}];
}

- (void)passcodeView:(id)a3 hideLockViewWithResult:(int64_t)a4 unlockCompletionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  if (v7)
  {
    [MEMORY[0x277D60100] defaultAnimationDuration];
    v9 = dispatch_time(0, (v8 * 0.15 * 1000000000.0));
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__AFUISiriCompactView_passcodeView_hideLockViewWithResult_unlockCompletionHandler___block_invoke;
    block[3] = &unk_278CD56B8;
    v12 = v7;
    v13 = a4;
    dispatch_after(v9, MEMORY[0x277D85CD0], block);
  }

  self->_inHideUnlockViewAnimation = 1;
  self->_inShowUnlockViewAnimation = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__AFUISiriCompactView_passcodeView_hideLockViewWithResult_unlockCompletionHandler___block_invoke_2;
  v10[3] = &unk_278CD5618;
  v10[4] = self;
  [(AFUISiriCompactView *)self _animateLockViewIsAnimatingIn:0 completion:v10];
}

- (BOOL)passcodeView:(id)a3 attemptUnlockWithPassword:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_siriContentDelegate);
  LOBYTE(self) = [WeakRetained siriView:self attemptUnlockWithPassword:v5];

  return self;
}

- (void)passcodeView:(id)a3 animateShowPasscodeWithCompletionHandler:(id)a4
{
  v5 = a4;
  self->_inShowUnlockViewAnimation = 1;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__AFUISiriCompactView_passcodeView_animateShowPasscodeWithCompletionHandler___block_invoke;
  v11[3] = &unk_278CD5618;
  v11[4] = self;
  [(AFUISiriCompactView *)self _animateLockViewIsAnimatingIn:1 completion:v11];
  [MEMORY[0x277D60100] defaultAnimationDuration];
  v7 = dispatch_time(0, (v6 * 0.15 * 1000000000.0));
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__AFUISiriCompactView_passcodeView_animateShowPasscodeWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_278CD5690;
  v10 = v5;
  v8 = v5;
  dispatch_after(v7, MEMORY[0x277D85CD0], v9);
}

void __77__AFUISiriCompactView_passcodeView_animateShowPasscodeWithCompletionHandler___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 667) = 0;
  [*(a1 + 32) setNeedsLayout];
  v1 = [MEMORY[0x277CEF158] sharedAnalytics];
  [v1 logEventWithType:1433 context:0];
}

uint64_t __77__AFUISiriCompactView_passcodeView_animateShowPasscodeWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)dealloc
{
  [(SUICOrbView *)self->_orbView invalidate];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = AFUISiriCompactView;
  [(AFUISiriCompactView *)&v4 dealloc];
}

- (void)updateVolumeInputdB:(float)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_edgeLightViewProvider);
  v5 = [WeakRetained edgeLightMaskMetalLayerForView:self];
  *&v6 = a3;
  [v5 updateVolumeInputdB:v6];
}

- (void)dismissalBlur:(float)a3
{
  if (self->_saeEnabled)
  {
    WeakRetained = objc_loadWeakRetained(&self->_edgeLightViewProvider);
    v6 = [WeakRetained edgeLightMaskMetalLayerForView:self];
    *&v7 = a3;
    [v6 dismissalBlur:v7];
  }
}

- (void)setInputPowerLevel:(float)a3
{
  if (self->_shouldUpdatePowerLevel)
  {
    v5 = MEMORY[0x277D60138];
    siriSessionState = self->_siriSessionState;
    WeakRetained = objc_loadWeakRetained(&self->_compactViewDelegate);
    v8 = [v5 orbViewModeForSiriSessionState:siriSessionState isAttending:{objc_msgSend(WeakRetained, "compactViewRequestAttendingState:", self)}];

    if (v8 == 1)
    {
      orbView = self->_orbView;
      *&v9 = a3;

      [(SUICOrbView *)orbView setPowerLevel:v9];
    }
  }
}

- (void)setOutputPowerLevel:(float)a3
{
  if (self->_shouldUpdatePowerLevel)
  {
    v5 = MEMORY[0x277D60138];
    siriSessionState = self->_siriSessionState;
    WeakRetained = objc_loadWeakRetained(&self->_compactViewDelegate);
    v8 = [v5 orbViewModeForSiriSessionState:siriSessionState isAttending:{objc_msgSend(WeakRetained, "compactViewRequestAttendingState:", self)}];

    if (v8 == 3)
    {
      orbView = self->_orbView;
      *&v9 = a3;

      [(SUICOrbView *)orbView setPowerLevel:v9];
    }
  }
}

- (void)animateOrbViewToOffWithCompletion:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_edgeLightViewProvider);
  v6 = [WeakRetained edgeLightMaskMetalLayerForView:self];

  if (v6)
  {
    [v6 animateOffWithCompletion:v4];
  }

  else
  {
    [(SUICOrbView *)self->_orbView animateToOffWithCompletion:v4];
  }
}

- (void)setContentViewsAlpha:(double)a3
{
  [(UIView *)self->_remoteContentView setAlpha:?];
  eyesFreeView = self->_eyesFreeView;

  [(AFUISiriEyesFreeView *)eyesFreeView setAlpha:a3];
}

- (void)touchesBeganForInputView:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_compactViewDelegate);
  v5 = [WeakRetained compactViewRequestAttendingState:self];

  if (v5)
  {
    self->_shouldUpdatePowerLevel = 0;
    LODWORD(v6) = -1039400960;
    [(SUICOrbView *)self->_orbView setPowerLevel:v6];
    [(AFUISiriCompactView *)self performSelector:sel__playHaptic withObject:0 afterDelay:0.2];
    [(AFUISiriCompactView *)self performSelector:sel_touchesEndedForInputView_ withObject:0 afterDelay:0.2];
    memset(&v9, 0, sizeof(v9));
    CATransform3DMakeScale(&v9, 1.12, 1.12, 1.0);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v8 = v9;
    v7[2] = __48__AFUISiriCompactView_touchesBeganForInputView___block_invoke;
    v7[3] = &unk_278CD6AF0;
    v7[4] = self;
    [MEMORY[0x277D75D18] _animateUsingSpringWithDampingRatio:1 response:v7 tracking:0 dampingRatioSmoothing:0.4 responseSmoothing:0.5 targetSmoothing:0.0 projectionDeceleration:0.0 retargetImpulse:0.0 animations:0.0 completion:0.008];
  }
}

void __48__AFUISiriCompactView_touchesBeganForInputView___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 120);
  v11 = *(a1 + 104);
  v12 = v1;
  v2 = *(a1 + 152);
  v13 = *(a1 + 136);
  v14 = v2;
  v3 = *(a1 + 56);
  v7 = *(a1 + 40);
  v8 = v3;
  v4 = *(a1 + 88);
  v9 = *(a1 + 72);
  v10 = v4;
  v5 = [*(*(a1 + 32) + 440) layer];
  v6[4] = v11;
  v6[5] = v12;
  v6[6] = v13;
  v6[7] = v14;
  v6[0] = v7;
  v6[1] = v8;
  v6[2] = v9;
  v6[3] = v10;
  [v5 setTransform:v6];
}

- (void)touchesEndedForInputView:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_compactViewDelegate);
  v5 = [WeakRetained compactViewRequestAttendingState:self];

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_siriContentDelegate);
    [v6 siriContentDidReceiveOrbTappedAction:self];

    self->_shouldUpdatePowerLevel = 1;
    [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel__playHaptic object:0];
    [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:sel_touchesEndedForInputView_ object:0];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__AFUISiriCompactView_touchesEndedForInputView___block_invoke;
    v7[3] = &unk_278CD5618;
    v7[4] = self;
    [MEMORY[0x277D75D18] _animateUsingSpringWithDampingRatio:1 response:v7 tracking:0 dampingRatioSmoothing:0.4 responseSmoothing:0.5 targetSmoothing:0.0 projectionDeceleration:0.0 retargetImpulse:0.0 animations:0.0 completion:0.008];
  }

  else
  {

    [(AFUISiriCompactView *)self _handleTouchEndedForNonAttendingConfiguration];
  }
}

void __48__AFUISiriCompactView_touchesEndedForInputView___block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 440) layer];
  v2 = *(MEMORY[0x277CD9DE8] + 80);
  v6[4] = *(MEMORY[0x277CD9DE8] + 64);
  v6[5] = v2;
  v3 = *(MEMORY[0x277CD9DE8] + 112);
  v6[6] = *(MEMORY[0x277CD9DE8] + 96);
  v6[7] = v3;
  v4 = *(MEMORY[0x277CD9DE8] + 16);
  v6[0] = *MEMORY[0x277CD9DE8];
  v6[1] = v4;
  v5 = *(MEMORY[0x277CD9DE8] + 48);
  v6[2] = *(MEMORY[0x277CD9DE8] + 32);
  v6[3] = v5;
  [v1 setTransform:v6];
}

- (void)_handleTouchEndedForNonAttendingConfiguration
{
  WeakRetained = objc_loadWeakRetained(&self->_siriContentDelegate);
  [WeakRetained siriContentDidReceiveOrbTappedAction:self];
}

- (void)_playHaptic
{
  v2 = [objc_alloc(MEMORY[0x277D755F0]) initWithStyle:2];
  [v2 _setOutputMode:5];
  [v2 prepare];
  [v2 impactOccurred];
}

- (AFUISiriEdgelightViewProvider)edgeLightViewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_edgeLightViewProvider);

  return WeakRetained;
}

@end