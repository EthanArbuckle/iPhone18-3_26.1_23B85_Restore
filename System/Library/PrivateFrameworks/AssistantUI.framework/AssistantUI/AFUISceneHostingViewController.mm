@interface AFUISceneHostingViewController
- (AFUISceneHostingViewController)init;
- (AFUISceneHostingViewController)initWithCoder:(id)coder;
- (BOOL)isHostingScene;
- (BOOL)isSceneActive;
- (CGRect)currentFrame;
- (UIEdgeInsets)effectiveSafeAreaInsets;
- (UIEdgeInsets)suspendedSafeAreaInsets;
- (void)_commonInit;
- (void)_registerForAmbientPresentationTraitChange;
- (void)_transitionContentsWithView:(id)view forContentState:(int64_t)state;
- (void)_updateDeferralChainWithWindow:(id)window;
- (void)_updateSceneSettingsForAmbient;
- (void)_updateSceneSettingsToSize:(CGSize)size interfaceOrientation:(int64_t)orientation withAnimationSettings:(id)settings animationFence:(id)fence;
- (void)_updateSceneUIApplicationSceneSettingsWithBlock:(id)block;
- (void)deactivateScene;
- (void)invalidateAndPauseDeferringHIDEvents;
- (void)invalidateSceneForReason:(unint64_t)reason explanation:(id)explanation;
- (void)reactivateScene;
- (void)sceneController:(id)controller sceneContentStateDidChange:(id)change;
- (void)sceneController:(id)controller sceneDidUpdateClientSettings:(id)settings;
- (void)sceneController:(id)controller sceneWasInvalidated:(id)invalidated forReason:(unint64_t)reason;
- (void)setClippingDisabled:(BOOL)disabled;
- (void)setSafeAreaInsetsAreSuspended:(BOOL)suspended;
- (void)startDeferringHIDEventsIfNeeded;
- (void)startHostingSceneForConfiguration:(id)configuration withCompletionBlock:(id)block;
- (void)stopHostingScene;
- (void)traitCollectionDidChange:(id)change;
- (void)updateSceneDeactivationReasonMask:(unint64_t)mask;
- (void)updateSceneWithConfiguration:(id)configuration;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation AFUISceneHostingViewController

- (void)_updateSceneSettingsForAmbient
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __64__AFUISceneHostingViewController__updateSceneSettingsForAmbient__block_invoke;
  v2[3] = &unk_278CD53A8;
  v2[4] = self;
  [(AFUISceneHostingViewController *)self _updateSceneUIApplicationSceneSettingsWithBlock:v2];
}

- (AFUISceneHostingViewController)init
{
  v5.receiver = self;
  v5.super_class = AFUISceneHostingViewController;
  v2 = [(AFUISceneHostingViewController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AFUISceneHostingViewController *)v2 _commonInit];
  }

  return v3;
}

- (void)_commonInit
{
  v3 = objc_alloc_init(AFUISceneController);
  sceneController = self->_sceneController;
  self->_sceneController = v3;

  [(AFUISceneController *)self->_sceneController setDelegate:self];
  self->_deferralMode = 0;
  self->_pauseDeferrals = 1;

  [(AFUISceneHostingViewController *)self _registerForAmbientPresentationTraitChange];
}

- (void)_registerForAmbientPresentationTraitChange
{
  v9[1] = *MEMORY[0x277D85DE8];
  [(AFUISceneHostingViewController *)self _updateSceneSettingsForAmbient];
  objc_initWeak(&location, self);
  v3 = objc_opt_self();
  v9[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__AFUISceneHostingViewController__registerForAmbientPresentationTraitChange__block_invoke;
  v6[3] = &unk_278CD5380;
  objc_copyWeak(&v7, &location);
  v5 = [(AFUISceneHostingViewController *)self registerForTraitChanges:v4 withHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __61__AFUISceneHostingViewController_viewSafeAreaInsetsDidChange__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 view];
  [v5 safeAreaInsets];
  [v4 setSafeAreaInsetsPortrait:?];

  v6 = [*(a1 + 32) view];
  [v6 safeAreaInsets];
  [v4 setSafeAreaInsetsLandscapeLeft:?];

  v7 = [*(a1 + 32) view];
  [v7 safeAreaInsets];
  [v4 setSafeAreaInsetsLandscapeRight:?];

  v8 = [*(a1 + 32) view];
  [v8 safeAreaInsets];
  [v4 setSafeAreaInsetsPortraitUpsideDown:?];
}

- (void)viewSafeAreaInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = AFUISceneHostingViewController;
  [(AFUISceneHostingViewController *)&v4 viewSafeAreaInsetsDidChange];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __61__AFUISceneHostingViewController_viewSafeAreaInsetsDidChange__block_invoke;
  v3[3] = &unk_278CD53A8;
  v3[4] = self;
  [(AFUISceneHostingViewController *)self _updateSceneUIApplicationSceneSettingsWithBlock:v3];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = AFUISceneHostingViewController;
  [(AFUISceneHostingViewController *)&v5 viewWillLayoutSubviews];
  windowSceneHostingView = self->_windowSceneHostingView;
  view = [(AFUISceneHostingViewController *)self view];
  [view bounds];
  [(UIView *)windowSceneHostingView setFrame:?];
}

void __64__AFUISceneHostingViewController__updateSceneSettingsForAmbient__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [*(a1 + 32) traitCollection];
    v4 = [v3 isAmbientPresented];

    [v5 setAmbientPresented:v4];
  }
}

- (AFUISceneHostingViewController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = AFUISceneHostingViewController;
  v3 = [(AFUISceneHostingViewController *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(AFUISceneHostingViewController *)v3 _commonInit];
  }

  return v4;
}

void __76__AFUISceneHostingViewController__registerForAmbientPresentationTraitChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSceneSettingsForAmbient];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = AFUISceneHostingViewController;
  [(AFUISceneHostingViewController *)&v5 viewWillAppear:appear];
  if (!self->_currentOrientation)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    self->_currentOrientation = [mEMORY[0x277D75128] activeInterfaceOrientation];
  }
}

- (void)_updateSceneSettingsToSize:(CGSize)size interfaceOrientation:(int64_t)orientation withAnimationSettings:(id)settings animationFence:(id)fence
{
  height = size.height;
  width = size.width;
  v39 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  fenceCopy = fence;
  v13 = MEMORY[0x277CEF098];
  v14 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v34 = "[AFUISceneHostingViewController _updateSceneSettingsToSize:interfaceOrientation:withAnimationSettings:animationFence:]";
    _os_log_impl(&dword_241432000, v14, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  if ((orientation - 3) >= 2)
  {
    v15 = width;
  }

  else
  {
    v15 = height;
  }

  if ((orientation - 3) < 2)
  {
    height = width;
  }

  scene = [(AFUISceneHostingViewController *)self scene];
  settings = [scene settings];
  isForeground = [settings isForeground];

  if (self->_currentOrientation != orientation || (v40.origin.x = 0.0, v40.origin.y = 0.0, v40.size.width = v15, v40.size.height = height, !CGRectEqualToRect(v40, self->_currentFrame)))
  {
    self->_currentOrientation = orientation;
    self->_currentFrame.origin.x = 0.0;
    self->_currentFrame.origin.y = 0.0;
    self->_currentFrame.size.width = v15;
    self->_currentFrame.size.height = height;
    v19 = *v13;
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
    {
      x = self->_currentFrame.origin.x;
      y = self->_currentFrame.origin.y;
      v22 = self->_currentFrame.size.width;
      v23 = self->_currentFrame.size.height;
      v24 = v19;
      v41.origin.x = x;
      v41.origin.y = y;
      v41.size.width = v22;
      v41.size.height = v23;
      v25 = NSStringFromCGRect(v41);
      *buf = 136315650;
      v34 = "[AFUISceneHostingViewController _updateSceneSettingsToSize:interfaceOrientation:withAnimationSettings:animationFence:]";
      v35 = 2112;
      v36 = v25;
      v37 = 2048;
      orientationCopy = orientation;
      _os_log_impl(&dword_241432000, v24, OS_LOG_TYPE_DEFAULT, "%s Updating scene with frame: %@, interfaceOrientation: %zd", buf, 0x20u);
    }

    scene = self->_scene;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __119__AFUISceneHostingViewController__updateSceneSettingsToSize_interfaceOrientation_withAnimationSettings_animationFence___block_invoke;
    v27[3] = &unk_278CD53D0;
    v32 = isForeground;
    v28 = fenceCopy;
    selfCopy = self;
    orientationCopy2 = orientation;
    v29 = settingsCopy;
    [(FBScene *)scene updateSettingsWithTransitionBlock:v27];
    [(AFUISceneHostingViewController *)self updateRemoteSceneWithFrontMostAppInterfaceOrientation:self->_currentOrientation];
  }
}

id __119__AFUISceneHostingViewController__updateSceneSettingsToSize_interfaceOrientation_withAnimationSettings_animationFence___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 64) == 1)
  {
    v4 = objc_opt_new();
    [v4 setAnimationFence:*(a1 + 32)];
    [v4 setAnimationSettings:*(a1 + 40)];
  }

  else
  {
    v4 = 0;
  }

  if ([v3 isUISubclass])
  {
    v5 = *(a1 + 56);
    v6 = v3;
    [v6 setInterfaceOrientation:v5];
    [v6 setFrame:{*(*(a1 + 48) + 1064), *(*(a1 + 48) + 1072), *(*(a1 + 48) + 1080), *(*(a1 + 48) + 1088)}];
  }

  return v4;
}

- (void)startHostingSceneForConfiguration:(id)configuration withCompletionBlock:(id)block
{
  configurationCopy = configuration;
  blockCopy = block;
  v10 = blockCopy;
  if (!configurationCopy)
  {
    [AFUISceneHostingViewController startHostingSceneForConfiguration:a2 withCompletionBlock:self];
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_5:
    [AFUISceneHostingViewController startHostingSceneForConfiguration:a2 withCompletionBlock:self];
    goto LABEL_3;
  }

  if (!blockCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  preferredDeferralMode = [configurationCopy preferredDeferralMode];
  self->_deferralMode = preferredDeferralMode;
  self->_pauseDeferrals = preferredDeferralMode != 1;
  objc_storeStrong(&self->_configuration, configuration);
  objc_initWeak(&location, self);
  sceneController = self->_sceneController;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __88__AFUISceneHostingViewController_startHostingSceneForConfiguration_withCompletionBlock___block_invoke;
  v14[3] = &unk_278CD5418;
  objc_copyWeak(&v16, &location);
  v13 = v10;
  v15 = v13;
  [(AFUISceneController *)sceneController requestSceneWithConfiguration:configurationCopy completionBlock:v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __88__AFUISceneHostingViewController_startHostingSceneForConfiguration_withCompletionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277CEF098];
  if (v6)
  {
    v8 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [v6 localizedDescription];
      *buf = 136315394;
      v26 = "[AFUISceneHostingViewController startHostingSceneForConfiguration:withCompletionBlock:]_block_invoke";
      v27 = 2112;
      v28 = v10;
      _os_log_impl(&dword_241432000, v9, OS_LOG_TYPE_DEFAULT, "%s #sceneHosting Error requesting scene: %@ ", buf, 0x16u);
    }
  }

  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v12 = WeakRetained;
    if (WeakRetained)
    {
      v13 = [WeakRetained scene];
      v14 = v13;
      if (v13 == v5)
      {
        v19 = [v12 presentation];
      }

      else
      {
        if (v13)
        {
          __88__AFUISceneHostingViewController_startHostingSceneForConfiguration_withCompletionBlock___block_invoke_cold_1(v13, v5);
        }

        [v12 setScene:v5];
        [v12 _updateSceneSettingsForAmbient];
        v15 = [v5 uiPresentationManager];
        v16 = MEMORY[0x277CCACA8];
        v17 = [v5 identifier];
        v18 = [v16 stringWithFormat:@"PresentationManager-Scene%@", v17];
        v19 = [v15 createPresenterWithIdentifier:v18];

        [v19 modifyPresentationContext:&__block_literal_global];
        [v12 setPresentation:v19];
      }

      [v19 activate];
      v20 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v20;
        v22 = [v5 identifier];
        *buf = 136315906;
        v26 = "[AFUISceneHostingViewController startHostingSceneForConfiguration:withCompletionBlock:]_block_invoke";
        v27 = 2112;
        v28 = v19;
        v29 = 2112;
        v30 = v22;
        v31 = 2112;
        v32 = v5;
        _os_log_impl(&dword_241432000, v21, OS_LOG_TYPE_DEFAULT, "%s #sceneHosting Completed scene request with presenter %@ for scene (ID: %@) %@", buf, 0x2Au);
      }

      v23 = [v19 presentationView];
      [v12 _transitionContentsWithView:v23 forContentState:{objc_msgSend(v5, "contentState")}];
    }
  }

  v24 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "[AFUISceneHostingViewController startHostingSceneForConfiguration:withCompletionBlock:]_block_invoke";
    _os_log_impl(&dword_241432000, v24, OS_LOG_TYPE_DEFAULT, "%s #sceneHosting calling completion block for startHostingSceneForConfiguration", buf, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __88__AFUISceneHostingViewController_startHostingSceneForConfiguration_withCompletionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setAppearanceStyle:2];
  [v2 setPresentedLayerTypes:26];
}

- (void)stopHostingScene
{
  [(AFUISceneHostingViewController *)self _audioCategoriesDisablingVolumeHUDDidChangeTo:0];
  [(AFUISceneHostingViewController *)self _transitionContentsWithView:0 forContentState:0];
  presentation = self->_presentation;

  [(UIScenePresenter *)presentation deactivate];
}

- (void)invalidateSceneForReason:(unint64_t)reason explanation:(id)explanation
{
  explanationCopy = explanation;
  [(AFUISceneHostingViewController *)self stopHostingScene];
  [(AFUISceneController *)self->_sceneController invalidateSceneForReason:reason explanation:explanationCopy];

  [(UIScenePresenter *)self->_presentation invalidate];
  presentation = self->_presentation;
  self->_presentation = 0;

  [(AFUISceneHostingViewController *)self setScene:0];
}

- (BOOL)isHostingScene
{
  windowSceneHostingView = self->_windowSceneHostingView;
  if (!windowSceneHostingView)
  {
    return 0;
  }

  superview = [(UIView *)windowSceneHostingView superview];
  v4 = superview != 0;

  return v4;
}

- (void)startDeferringHIDEventsIfNeeded
{
  v12 = *MEMORY[0x277D85DE8];
  self->_pauseDeferrals = 0;
  view = [(AFUISceneHostingViewController *)self view];
  window = [view window];

  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[AFUISceneHostingViewController startDeferringHIDEventsIfNeeded]";
    v10 = 2112;
    v11 = window;
    _os_log_impl(&dword_241432000, v5, OS_LOG_TYPE_DEFAULT, "%s #siriHID Starting HID deferrals and resuming until asked to pause again: %@", &v8, 0x16u);
  }

  view2 = [(AFUISceneHostingViewController *)self view];
  window2 = [view2 window];
  [(AFUISceneHostingViewController *)self _updateDeferralChainWithWindow:window2];
}

- (void)invalidateAndPauseDeferringHIDEvents
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[AFUISceneHostingViewController invalidateAndPauseDeferringHIDEvents]";
    _os_log_impl(&dword_241432000, v3, OS_LOG_TYPE_DEFAULT, "%s #siriHID Invalidating HID deferrals and pausing until asked to start again", &v4, 0xCu);
  }

  [(BSInvalidatable *)self->_predicateInvalidationHandler invalidate];
  self->_pauseDeferrals = 1;
}

- (void)updateSceneWithConfiguration:(id)configuration
{
  objc_storeStrong(&self->_configuration, configuration);
  configurationCopy = configuration;
  [(AFUISceneController *)self->_sceneController updateSceneViewWithConfiguration:configurationCopy];
}

- (void)_transitionContentsWithView:(id)view forContentState:(int64_t)state
{
  viewCopy = view;
  [(UIView *)self->_windowSceneHostingView removeFromSuperview];
  windowSceneHostingView = self->_windowSceneHostingView;
  self->_windowSceneHostingView = 0;

  if (viewCopy)
  {
    objc_storeStrong(&self->_windowSceneHostingView, view);
    v7 = self->_windowSceneHostingView;
    view = [(AFUISceneHostingViewController *)self view];
    [view bounds];
    [(UIView *)v7 setFrame:?];

    view2 = [(AFUISceneHostingViewController *)self view];
    [view2 addSubview:self->_windowSceneHostingView];

    view3 = [(AFUISceneHostingViewController *)self view];
    window = [view3 window];
    [(AFUISceneHostingViewController *)self _updateDeferralChainWithWindow:window];
  }
}

- (void)_updateSceneUIApplicationSceneSettingsWithBlock:(id)block
{
  blockCopy = block;
  scene = self->_scene;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__AFUISceneHostingViewController__updateSceneUIApplicationSceneSettingsWithBlock___block_invoke;
  v7[3] = &unk_278CD5440;
  v8 = blockCopy;
  v6 = blockCopy;
  [(FBScene *)scene updateSettingsWithBlock:v7];
}

void __82__AFUISceneHostingViewController__updateSceneUIApplicationSceneSettingsWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      __82__AFUISceneHostingViewController__updateSceneUIApplicationSceneSettingsWithBlock___block_invoke_cold_1(v4);
    }
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = AFUISceneHostingViewController;
  changeCopy = change;
  [(AFUISceneHostingViewController *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(AFUISceneHostingViewController *)self traitCollection:v8.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];

  userInterfaceStyle2 = [changeCopy userInterfaceStyle];
  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(AFUISceneConfiguration *)self->_configuration setUserInterfaceStyle:userInterfaceStyle];
    [(AFUISceneHostingViewController *)self updateSceneWithConfiguration:self->_configuration];
  }
}

- (UIEdgeInsets)effectiveSafeAreaInsets
{
  if ([(AFUISceneHostingViewController *)self safeAreaInsetsAreSuspended])
  {

    [(AFUISceneHostingViewController *)self suspendedSafeAreaInsets];
  }

  else
  {
    view = [(AFUISceneHostingViewController *)self view];
    [view safeAreaInsets];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v3 = v9;
    v4 = v11;
    v5 = v13;
    v6 = v15;
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)setSafeAreaInsetsAreSuspended:(BOOL)suspended
{
  if (self->_safeAreaInsetsAreSuspended != suspended)
  {
    if (suspended)
    {
      view = [(AFUISceneHostingViewController *)self view];
      [view safeAreaInsets];
      [(AFUISceneHostingViewController *)self setSuspendedSafeAreaInsets:?];

      self->_safeAreaInsetsAreSuspended = suspended;
    }

    else
    {
      self->_safeAreaInsetsAreSuspended = 0;

      [(AFUISceneHostingViewController *)self viewSafeAreaInsetsDidChange];
    }
  }
}

- (void)setClippingDisabled:(BOOL)disabled
{
  if (self->_clippingDisabled != disabled)
  {
    v9 = v3;
    v10 = v4;
    self->_clippingDisabled = disabled;
    presentation = [(AFUISceneHostingViewController *)self presentation];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__AFUISceneHostingViewController_setClippingDisabled___block_invoke;
    v7[3] = &__block_descriptor_33_e43_v16__0__UIMutableScenePresentationContext_8l;
    disabledCopy = disabled;
    [presentation modifyPresentationContext:v7];
  }
}

- (BOOL)isSceneActive
{
  configuration = [(AFUISceneHostingViewController *)self configuration];
  v3 = [configuration deactivationReasonMask] == 0;

  return v3;
}

- (void)reactivateScene
{
  if (![(AFUISceneHostingViewController *)self isSceneActive])
  {

    [(AFUISceneHostingViewController *)self updateSceneDeactivationReasonMask:0];
  }
}

- (void)deactivateScene
{
  if ([(AFUISceneHostingViewController *)self isSceneActive])
  {

    [(AFUISceneHostingViewController *)self updateSceneDeactivationReasonMask:16];
  }
}

- (void)updateSceneDeactivationReasonMask:(unint64_t)mask
{
  configuration = [(AFUISceneHostingViewController *)self configuration];
  v6 = [configuration copy];

  [v6 setDeactivationReasonMask:mask];
  [(AFUISceneHostingViewController *)self updateSceneWithConfiguration:v6];
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v12 = *MEMORY[0x277D85DE8];
  windowCopy = window;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[AFUISceneHostingViewController viewDidMoveToWindow:shouldAppearOrDisappear:]";
    v10 = 1024;
    v11 = disappearCopy;
    _os_log_impl(&dword_241432000, v7, OS_LOG_TYPE_DEFAULT, "%s #siriHID viewDidMoveToWindow:shouldAppearOrDisappear: %d", &v8, 0x12u);
  }

  [(AFUISceneHostingViewController *)self _updateDeferralChainWithWindow:windowCopy];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v18.receiver = self;
  v18.super_class = AFUISceneHostingViewController;
  [(AFUISceneHostingViewController *)&v18 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  containerView = [coordinatorCopy containerView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    window = containerView;
  }

  else
  {
    window = [containerView window];
  }

  v10 = window;
  v11 = SBFWindowForViewControllerTransition();
  _toWindowOrientation = [v11 _toWindowOrientation];

  v13 = MEMORY[0x277CF0B70];
  [coordinatorCopy transitionDuration];
  v14 = [v13 settingsWithDuration:?];
  windowScene = [v10 windowScene];
  _synchronizedDrawingFence = [windowScene _synchronizedDrawingFence];

  [(AFUISceneHostingViewController *)self _updateSceneSettingsToSize:_toWindowOrientation interfaceOrientation:v14 withAnimationSettings:_synchronizedDrawingFence animationFence:width, height];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __85__AFUISceneHostingViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v17[3] = &unk_278CD5488;
  v17[5] = 0;
  v17[6] = 0;
  v17[4] = self;
  *&v17[7] = width;
  *&v17[8] = height;
  [coordinatorCopy animateAlongsideTransition:v17 completion:&__block_literal_global_45];
}

void __85__AFUISceneHostingViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
}

- (void)_updateDeferralChainWithWindow:(id)window
{
  *&v34[5] = *MEMORY[0x277D85DE8];
  windowCopy = window;
  if ([(AFUISceneHostingViewController *)self _shouldDeferHIDEventsForMode])
  {
    if (self->_pauseDeferrals)
    {
      v5 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v31 = 136315138;
        v32 = "[AFUISceneHostingViewController _updateDeferralChainWithWindow:]";
        v6 = "%s #siriHID skipping deferral of HID events until un-paused";
        v7 = v5;
        v8 = 12;
LABEL_7:
        _os_log_impl(&dword_241432000, v7, OS_LOG_TYPE_DEFAULT, v6, &v31, v8);
      }
    }

    else
    {
      if (self->_predicateInvalidationHandler)
      {
        v11 = *MEMORY[0x277CEF098];
        if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
        {
          v31 = 136315138;
          v32 = "[AFUISceneHostingViewController _updateDeferralChainWithWindow:]";
          _os_log_impl(&dword_241432000, v11, OS_LOG_TYPE_DEFAULT, "%s #siriHID invalidating defer HID events assertion", &v31, 0xCu);
        }

        [(BSInvalidatable *)self->_predicateInvalidationHandler invalidate];
      }

      clientHandle = [(FBScene *)self->_scene clientHandle];
      if (clientHandle)
      {
        uiClientSettings = [(FBScene *)self->_scene uiClientSettings];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          uiClientSettings2 = [(FBScene *)self->_scene uiClientSettings];
        }

        else
        {
          uiClientSettings2 = 0;
        }

        _contextId = [windowCopy _contextId];
        clientWindowContextID = [uiClientSettings2 clientWindowContextID];
        v17 = clientWindowContextID;
        if (_contextId)
        {
          v18 = clientWindowContextID == 0;
        }

        else
        {
          v18 = 1;
        }

        v19 = v18;
        if (!windowCopy || (v19 & 1) != 0)
        {
          if (v19)
          {
            v30 = *MEMORY[0x277CEF098];
            if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
            {
              v31 = 136315650;
              v32 = "[AFUISceneHostingViewController _updateDeferralChainWithWindow:]";
              v33 = 1024;
              *v34 = _contextId;
              v34[2] = 1024;
              *&v34[3] = v17;
              _os_log_impl(&dword_241432000, v30, OS_LOG_TYPE_DEFAULT, "%s #siriHID Skipped deferring HID events because of an invalid contextID (%u) or clientContextID (%u)", &v31, 0x18u);
            }
          }
        }

        else
        {
          v20 = [MEMORY[0x277CF0650] tokenForIdentifierOfCAContext:_contextId];
          v21 = objc_alloc_init(MEMORY[0x277CF0730]);
          [v21 setDisplay:0];
          [v21 setToken:v20];
          keyboardFocusEnvironment = [MEMORY[0x277CF0628] keyboardFocusEnvironment];
          [v21 setEnvironment:keyboardFocusEnvironment];

          v23 = [MEMORY[0x277CF0650] tokenForIdentifierOfCAContext:v17];
          v24 = objc_alloc_init(MEMORY[0x277CF0748]);
          processHandle = [clientHandle processHandle];
          [v24 setPid:{objc_msgSend(processHandle, "pid")}];

          [v24 setToken:v23];
          mEMORY[0x277CF0668] = [MEMORY[0x277CF0668] sharedInstance];
          v27 = [mEMORY[0x277CF0668] deferEventsMatchingPredicate:v21 toTarget:v24 withReason:@"launching Siri.app"];
          predicateInvalidationHandler = self->_predicateInvalidationHandler;
          self->_predicateInvalidationHandler = v27;

          v29 = *MEMORY[0x277CEF098];
          if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
          {
            v31 = 136315138;
            v32 = "[AFUISceneHostingViewController _updateDeferralChainWithWindow:]";
            _os_log_impl(&dword_241432000, v29, OS_LOG_TYPE_DEFAULT, "%s #siriHID Started deferring HID events to Siri.app", &v31, 0xCu);
          }
        }
      }
    }
  }

  else
  {
    v9 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      deferralMode = self->_deferralMode;
      v31 = 136315394;
      v32 = "[AFUISceneHostingViewController _updateDeferralChainWithWindow:]";
      v33 = 2048;
      *v34 = deferralMode;
      v6 = "%s #siriHID _shouldDeferHIDEventsForMode returned false for current deferral mode: %zd";
      v7 = v9;
      v8 = 22;
      goto LABEL_7;
    }
  }
}

- (void)sceneController:(id)controller sceneContentStateDidChange:(id)change
{
  changeCopy = change;
  presentation = [(AFUISceneHostingViewController *)self presentation];

  if (presentation)
  {
    presentation2 = [(AFUISceneHostingViewController *)self presentation];
    presentationView = [presentation2 presentationView];
    -[AFUISceneHostingViewController _transitionContentsWithView:forContentState:](self, "_transitionContentsWithView:forContentState:", presentationView, [changeCopy contentState]);
  }

  if ([changeCopy contentState] == 2 && objc_msgSend(changeCopy, "isValid"))
  {
    identifier = [changeCopy identifier];
    [(AFUISceneHostingViewController *)self _handleSceneDidActivateWithIdentifier:identifier];
  }
}

- (void)sceneController:(id)controller sceneWasInvalidated:(id)invalidated forReason:(unint64_t)reason
{
  v12 = *MEMORY[0x277D85DE8];
  invalidatedCopy = invalidated;
  v8 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v11 = "[AFUISceneHostingViewController sceneController:sceneWasInvalidated:forReason:]";
    _os_log_impl(&dword_241432000, v8, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  [(AFUISceneHostingViewController *)self _updateDeferralChainWithWindow:0];
  invalidatedCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Scene was invalidated - scene=%@", invalidatedCopy];
  [(AFUISceneHostingViewController *)self _handleInvalidationForReason:reason explanation:invalidatedCopy];
}

- (void)sceneController:(id)controller sceneDidUpdateClientSettings:(id)settings
{
  v12 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  v6 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[AFUISceneHostingViewController sceneController:sceneDidUpdateClientSettings:]";
    _os_log_impl(&dword_241432000, v6, OS_LOG_TYPE_DEFAULT, "%s #siriHID sceneDidUpdateClientSettings", &v10, 0xCu);
  }

  view = [(AFUISceneHostingViewController *)self view];
  window = [view window];
  [(AFUISceneHostingViewController *)self _updateDeferralChainWithWindow:window];

  audioCategoriesDisablingVolumeHUD = [settingsCopy audioCategoriesDisablingVolumeHUD];
  [(AFUISceneHostingViewController *)self _audioCategoriesDisablingVolumeHUDDidChangeTo:audioCategoriesDisablingVolumeHUD];
}

- (CGRect)currentFrame
{
  x = self->_currentFrame.origin.x;
  y = self->_currentFrame.origin.y;
  width = self->_currentFrame.size.width;
  height = self->_currentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIEdgeInsets)suspendedSafeAreaInsets
{
  top = self->_suspendedSafeAreaInsets.top;
  left = self->_suspendedSafeAreaInsets.left;
  bottom = self->_suspendedSafeAreaInsets.bottom;
  right = self->_suspendedSafeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end