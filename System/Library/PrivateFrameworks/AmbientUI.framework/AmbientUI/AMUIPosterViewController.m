@interface AMUIPosterViewController
+ (NSArray)suggestedInstanceIdentifiers;
- (AMUIPosterViewControllerDelegate)delegate;
- (BOOL)updatePosterConfiguration:(id)a3 withAnimationSettings:(id)a4;
- (id)_posterExtensionDisplayNameWithBundleIdentifier:(id)a3;
- (id)_snapshotController;
- (id)ambientPosterViewControllerRequestExtensionInstanceIdentifier:(id)a3;
- (unint64_t)ambientPosterViewController:(id)a3 titleAlignmentForInterfaceOrientation:(int64_t)a4;
- (void)_evaluateAuthenticationWithConfiguration:(id)a3;
- (void)_triggerTapEvent:(id)a3;
- (void)_updateStateForContentMode:(int64_t)a3;
- (void)ambientPosterViewController:(id)a3 relinquishExtensionInstanceIdentifier:(id)a4;
- (void)setAppearanceTransitionCoordinator:(id)a3;
- (void)setContentMode:(int64_t)a3;
- (void)viewDidLoad;
@end

@implementation AMUIPosterViewController

- (void)setContentMode:(int64_t)a3
{
  if (self->_contentMode != a3)
  {
    self->_contentMode = a3;
    [(AMUIPosterViewController *)self _updateStateForContentMode:[(AMUIPosterViewController *)self effectiveContentMode]];
    self->_appearanceTransitionProgress = 1.0;
    v5 = objc_alloc_init(AMUIPosterAppearanceTransitionCoordinator);
    appearanceTransitionCoordinator = self->_appearanceTransitionCoordinator;
    self->_appearanceTransitionCoordinator = v5;

    MEMORY[0x2821F96F8]();
  }
}

- (void)setAppearanceTransitionCoordinator:(id)a3
{
  v5 = a3;
  appearanceTransitionCoordinator = self->_appearanceTransitionCoordinator;
  v10 = v5;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_appearanceTransitionCoordinator, a3);
    v7 = self->_appearanceTransitionCoordinator;
    if (!v7)
    {
      v8 = objc_alloc_init(AMUIPosterAppearanceTransitionCoordinator);
      v9 = self->_appearanceTransitionCoordinator;
      self->_appearanceTransitionCoordinator = v8;

      v7 = self->_appearanceTransitionCoordinator;
    }

    [(AMUIPosterAppearanceTransitionCoordinator *)v7 setPosterViewController:self progress:self->_appearanceTransitionProgress];
  }
}

- (void)viewDidLoad
{
  v12.receiver = self;
  v12.super_class = AMUIPosterViewController;
  [(AMUIPosterViewController *)&v12 viewDidLoad];
  v3 = [(AMUIPosterViewController *)self view];
  v4 = [MEMORY[0x277D75348] blackColor];
  [v3 setBackgroundColor:v4];

  v5 = objc_alloc(MEMORY[0x277D75D18]);
  [v3 bounds];
  v6 = [v5 initWithFrame:?];
  [(UIView *)v6 setAutoresizingMask:18];
  v7 = [(UIView *)v6 layer];
  [v7 setHitTestsAsOpaque:1];

  [v3 addSubview:v6];
  touchBlockingView = self->_touchBlockingView;
  self->_touchBlockingView = v6;
  v9 = v6;

  v10 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__triggerTapEvent_];
  tapGestureRecognizer = self->_tapGestureRecognizer;
  self->_tapGestureRecognizer = v10;

  [(UIGestureRecognizer *)self->_tapGestureRecognizer setName:@"AmbientTap"];
  [(UIView *)self->_touchBlockingView addGestureRecognizer:self->_tapGestureRecognizer];
}

- (BOOL)updatePosterConfiguration:(id)a3 withAnimationSettings:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (([(PRUISAmbientPosterViewController *)self->_posterViewController updateConfiguration:v7]& 1) != 0)
  {
    v9 = 1;
  }

  else if (v7)
  {
    objc_storeStrong(&self->_configuration, a3);
    v10 = self->_posterViewController;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __76__AMUIPosterViewController_updatePosterConfiguration_withAnimationSettings___block_invoke;
    v32[3] = &unk_278C75DD8;
    v32[4] = self;
    v11 = v10;
    v33 = v11;
    v12 = MEMORY[0x245CAD730](v32);
    v13 = objc_alloc_init(getPRUISAmbientPosterViewControllerClass());
    v14 = [v13 view];
    v15 = [(AMUIPosterViewController *)self view];
    [v15 bounds];
    [v14 setFrame:?];

    [v14 setAutoresizingMask:18];
    [v14 setAlpha:0.0];
    if (v8)
    {
      v16 = [v14 layer];
      [v16 setAllowsGroupOpacity:1];
    }

    [(AMUIPosterViewController *)self bs_addChildViewController:v13];
    v17 = [(AMUIPosterViewController *)self view];
    [v17 bringSubviewToFront:self->_touchBlockingView];

    objc_storeStrong(&self->_posterViewController, v13);
    [(PRUISAmbientPosterViewController *)self->_posterViewController setDelegate:self];
    posterViewController = self->_posterViewController;
    v19 = [(AMUIPosterViewController *)self _snapshotController];
    [(PRUISAmbientPosterViewController *)posterViewController setSnapshotController:v19];

    [(PRUISAmbientPosterViewController *)self->_posterViewController setVisibleSnapshotLayers:1];
    v9 = [(PRUISAmbientPosterViewController *)self->_posterViewController updateConfiguration:v7];
    v20 = self->_posterViewController;
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __76__AMUIPosterViewController_updatePosterConfiguration_withAnimationSettings___block_invoke_2;
    v27 = &unk_278C75EF8;
    v28 = self;
    v29 = v13;
    v30 = v8;
    v31 = v12;
    v21 = v12;
    v22 = v13;
    [(PRUISAmbientPosterViewController *)v20 activateWithCompletion:&v24];
    [(AMUIPosterViewController *)self _updateStateForContentMode:[(AMUIPosterViewController *)self effectiveContentMode:v24]];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __76__AMUIPosterViewController_updatePosterConfiguration_withAnimationSettings___block_invoke(uint64_t a1)
{
  [*(a1 + 32) bs_removeChildViewController:*(a1 + 40)];
  v2 = *(a1 + 40);

  return [v2 invalidate];
}

void __76__AMUIPosterViewController_updatePosterConfiguration_withAnimationSettings___block_invoke_2(uint64_t a1)
{
  BSDispatchQueueAssertMain();
  v2 = *(a1 + 40);
  if (*(*(a1 + 32) + 992) == v2)
  {
    v4 = MEMORY[0x277CF0D38];
    v5 = *(a1 + 48);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __76__AMUIPosterViewController_updatePosterConfiguration_withAnimationSettings___block_invoke_3;
    v8[3] = &unk_278C75D60;
    v9 = v2;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __76__AMUIPosterViewController_updatePosterConfiguration_withAnimationSettings___block_invoke_4;
    v6[3] = &unk_278C75D08;
    v7 = *(a1 + 56);
    [v4 animateWithSettings:v5 actions:v8 completion:v6];
  }

  else
  {
    v3 = *(*(a1 + 56) + 16);

    v3();
  }
}

void __76__AMUIPosterViewController_updatePosterConfiguration_withAnimationSettings___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:1.0];
}

+ (NSArray)suggestedInstanceIdentifiers
{
  PRUISAmbientPosterViewControllerClass = getPRUISAmbientPosterViewControllerClass();

  return [PRUISAmbientPosterViewControllerClass suggestedInstanceIdentifiers];
}

- (id)ambientPosterViewControllerRequestExtensionInstanceIdentifier:(id)a3
{
  v4 = [(AMUIPosterViewController *)self delegate];
  v5 = [v4 posterViewControllerRequestExtensionInstanceIdentifier:self];

  return v5;
}

- (void)ambientPosterViewController:(id)a3 relinquishExtensionInstanceIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(AMUIPosterViewController *)self delegate];
  [v6 posterViewController:self relinquishExtensionInstanceIdentifier:v5];
}

- (unint64_t)ambientPosterViewController:(id)a3 titleAlignmentForInterfaceOrientation:(int64_t)a4
{
  chromeOrientationPolicy = self->_chromeOrientationPolicy;
  if (chromeOrientationPolicy == 2)
  {
    if (a4 == 3)
    {
      return 3;
    }

    else
    {
      return 2 * (a4 == 4);
    }
  }

  else if (chromeOrientationPolicy == 1)
  {
    return 5;
  }

  else if (chromeOrientationPolicy)
  {
    return 0;
  }

  else
  {
    return 4;
  }
}

- (id)_snapshotController
{
  if (_snapshotController_onceToken != -1)
  {
    [AMUIPosterViewController _snapshotController];
  }

  v3 = _snapshotController___sharedSnapshotController;

  return v3;
}

void __47__AMUIPosterViewController__snapshotController__block_invoke()
{
  v0 = [getPRUISAmbientPosterViewControllerClass() defaultSnapshotCacheURL];
  v1 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = 0;
  v2 = [v1 createDirectoryAtURL:v0 withIntermediateDirectories:1 attributes:0 error:&v9];
  v3 = v9;

  if ((v2 & 1) == 0)
  {
    v4 = AMUILogSwitcher();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __47__AMUIPosterViewController__snapshotController__block_invoke_cold_1();
    }
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v5 = getPRUISPosterSnapshotControllerClass_softClass;
  v14 = getPRUISPosterSnapshotControllerClass_softClass;
  if (!getPRUISPosterSnapshotControllerClass_softClass)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __getPRUISPosterSnapshotControllerClass_block_invoke;
    v10[3] = &unk_278C75E70;
    v10[4] = &v11;
    __getPRUISPosterSnapshotControllerClass_block_invoke(v10);
    v5 = v12[3];
  }

  v6 = v5;
  _Block_object_dispose(&v11, 8);
  v7 = [[v5 alloc] initWithCacheURL:v0];
  v8 = _snapshotController___sharedSnapshotController;
  _snapshotController___sharedSnapshotController = v7;
}

- (void)_updateStateForContentMode:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = 2;
  }

  else
  {
    if (a3)
    {
      return;
    }

    v3 = 1;
  }

  [(PRUISAmbientPosterViewController *)self->_posterViewController setPresentationMode:v3];
}

- (void)_triggerTapEvent:(id)a3
{
  [a3 locationInView:self->_touchBlockingView];
  posterViewController = self->_posterViewController;

  [(PRUISAmbientPosterViewController *)posterViewController userTapEventOccurredWithLocation:?];
}

- (void)_evaluateAuthenticationWithConfiguration:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = 0;
  v5 = [v4 pr_loadAmbientConfigurationWithError:&v18];
  v6 = v18;
  if (v5)
  {
    v7 = [(AMUIPosterViewController *)self delegate];
    v8 = [v7 posterViewControllerIsAuthenticated:self];
    v9 = [v7 posterViewControllerHasInlineAuthenticated:self];
    v10 = [v5 needsAuthentication];
    if (!v8 && !v9 && v10)
    {
      v11 = AMUILogSwitcher();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = MEMORY[0x245CAD1C0](v8);
        v13 = MEMORY[0x245CAD1C0](v9);
        v14 = MEMORY[0x245CAD1C0](1);
        *buf = 138543874;
        v20 = v12;
        v21 = 2114;
        v22 = v13;
        v23 = 2114;
        v24 = v14;
        _os_log_impl(&dword_23F38B000, v11, OS_LOG_TYPE_DEFAULT, "Poster configuration requesting in-line authentication... isAuthenticated: %{public}@, hasInlineAuthenticated: %{public}@, configurationNeedsAuthentication: %{public}@", buf, 0x20u);
      }

      v15 = [v4 providerBundleIdentifier];
      v16 = [(AMUIPosterViewController *)self _posterExtensionDisplayNameWithBundleIdentifier:v15];
      [v7 posterViewController:self didRequestInlineAuthenticationWithUnlockDestination:v16];
    }
  }

  else
  {
    v7 = AMUILogSwitcher();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [AMUIPosterViewController _evaluateAuthenticationWithConfiguration:];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_posterExtensionDisplayNameWithBundleIdentifier:(id)a3
{
  v3 = MEMORY[0x277CC1E50];
  v4 = a3;
  v5 = [[v3 alloc] initWithBundleIdentifier:v4 error:0];

  v6 = [v5 localizedName];

  return v6;
}

- (AMUIPosterViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __47__AMUIPosterViewController__snapshotController__block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_23F38B000, v0, v1, "Failed to create cache directory at URL %{public}@. Error %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_evaluateAuthenticationWithConfiguration:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_23F38B000, v0, v1, "Failed to load ambient configuration from configuration %@ with error %@");
  v2 = *MEMORY[0x277D85DE8];
}

@end