@interface AMUIAmbientViewController
- (AMUIAmbientViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (AMUIAmbientViewControllerDelegate)delegate;
- (AMUIPosterSelectionCoordinating)_posterSelectionCoordinator;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)handleDismiss;
- (BOOL)posterSwitcherViewControllerIsAuthenticated:(id)a3;
- (BOOL)viewController:(id)a3 isApplicationVisibleWithBundleIdentifier:(id)a4;
- (PRSPosterConfiguration)activeConfiguration;
- (id)_defaultPosterSelectionCoordinator;
- (id)createUnlockRequestForViewController:(id)a3;
- (id)defaultWidgetDescriptorStacksForViewController:(id)a3;
- (id)posterSelectionCoordinatorRequestsConnectedChargerId:(id)a3;
- (id)posterSwitcherViewController:(id)a3 requestsLastSelectedConfigurationUUIDForProviderBundleIdentifier:(id)a4;
- (id)posterSwitcherViewControllerAuthenticationHandler:(id)a3;
- (id)widgetHostManagerForViewController:(id)a3;
- (void)_animateAllOverlayUIAppearance;
- (void)_animateAllOverlayUIDismissal;
- (void)_animateBatteryViewAppearanceIfNecessary;
- (void)_animateBatteryViewDismissalIfNecessary;
- (void)_animateNotificationIndicatorViewAppearanceIfNecessary;
- (void)_animateNotificationIndicatorViewRemoval;
- (void)_configureNotificationIndicatorViewIfNecessary;
- (void)_dismissPosterEditingSwitcher;
- (void)_handleAuthenticationChanged:(BOOL)a3;
- (void)_handlePosterEditingSwitcherGesture:(id)a3;
- (void)_refreshPosterConfigurationsAnimated:(BOOL)a3;
- (void)_setNotificationIndicatorHidden:(BOOL)a3;
- (void)_setPosterSelectionCoordinator:(id)a3;
- (void)_setupPosterEditingSwitcherGestureRecognizer;
- (void)_updateBatteryViewLayout;
- (void)_updateNotificationIndicatorViewLayout;
- (void)_willBeginConfiguration;
- (void)_willEndConfiguration;
- (void)dealloc;
- (void)posterSelectionCoordinator:(id)a3 didUpdateLastSelectedPosterConfiguration:(id)a4;
- (void)requestUnlockForViewController:(id)a3 withRequest:(id)a4 completion:(id)a5;
- (void)setAuthenticated:(BOOL)a3;
- (void)setDateProvider:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setNotificationCount:(unint64_t)a3;
- (void)viewController:(id)a3 didUpdateActiveConfigurationMetadata:(id)a4;
- (void)viewControllerWillBeginConfiguration:(id)a3;
- (void)viewControllerWillBeginShowingTemporaryOverlay:(id)a3;
- (void)viewControllerWillEndConfiguration:(id)a3;
- (void)viewControllerWillEndShowingTemporaryOverlay:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation AMUIAmbientViewController

- (AMUIAmbientViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v14.receiver = self;
  v14.super_class = AMUIAmbientViewController;
  v4 = [(AMUIAmbientViewController *)&v14 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(AMUIAmbientViewController *)v4 _defaultPosterSelectionCoordinator];
    [v6 setDelegate:v5];
    objc_storeWeak(&v5->_posterSelectionCoordinator, v6);
    v7 = objc_alloc_init(AMUIPosterSwitcherViewController);
    posterSwitcherViewController = v5->_posterSwitcherViewController;
    v5->_posterSwitcherViewController = v7;

    [(AMUIPosterSwitcherViewController *)v5->_posterSwitcherViewController setDelegate:v5];
    v9 = +[AMUIPosterSwitcherModel sharedInstance];
    posterSwitcherModel = v5->_posterSwitcherModel;
    v5->_posterSwitcherModel = v9;

    [(AMUIPosterSwitcherModel *)v5->_posterSwitcherModel addObserver:v5];
    [(AMUIAmbientViewController *)v5 _refreshPosterConfigurationsAnimated:0];
    v11 = objc_alloc_init(AMUIBatteryChargingViewController);
    batteryChargingViewController = v5->_batteryChargingViewController;
    v5->_batteryChargingViewController = v11;
  }

  return v5;
}

- (void)dealloc
{
  [(AMUIPosterSwitcherViewController *)self->_posterSwitcherViewController invalidate];
  [(AMUIPosterSwitcherModel *)self->_posterSwitcherModel removeObserver:self];
  batteryChargingViewController = self->_batteryChargingViewController;
  self->_batteryChargingViewController = 0;

  v4.receiver = self;
  v4.super_class = AMUIAmbientViewController;
  [(AMUIAmbientViewController *)&v4 dealloc];
}

- (BOOL)handleDismiss
{
  if (self->_posterEditingSwitcherVC)
  {
    [(AMUIPosterEditingSwitcherViewController *)self->_posterEditingSwitcherVC handleDismiss];
    return 1;
  }

  else
  {
    posterSwitcherViewController = self->_posterSwitcherViewController;

    return [(AMUIPosterSwitcherViewController *)posterSwitcherViewController handleDismiss];
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v6 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    if (objc_opt_respondsToSelector())
    {
      v7 = [obj ambientDefaultsForAmbientViewController:self];
      ambientDefaults = self->_ambientDefaults;
      self->_ambientDefaults = v7;

      [(AMUIDefaultSelectedPosterCoordinator *)self->_defaultPosterSelectionCoordinator setAmbientDefaults:self->_ambientDefaults];
    }

    v5 = [(AMUIPosterSwitcherViewController *)self->_posterSwitcherViewController noteAmbientViewControllingDelegateDidUpdate];
    v6 = obj;
  }

  MEMORY[0x2821F96F8](v5, v6);
}

- (void)setNotificationCount:(unint64_t)a3
{
  if (self->_notificationCount != a3)
  {
    self->_notificationCount = a3;
    if (a3)
    {
      notificationIndicatorView = self->_notificationIndicatorView;
      if (notificationIndicatorView)
      {
        [(AMUINotificationIndicatorView *)notificationIndicatorView setNotificationCount:?];
      }
    }

    else
    {
      [(AMUIAmbientViewController *)self _animateNotificationIndicatorViewRemoval];
    }

    v6 = [(AMUIAmbientViewController *)self viewIfLoaded];
    [v6 setNeedsLayout];
  }
}

- (void)_setPosterSelectionCoordinator:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [(AMUIAmbientViewController *)self _defaultPosterSelectionCoordinator];
  }

  obj = v4;
  WeakRetained = objc_loadWeakRetained(&self->_posterSelectionCoordinator);

  v6 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_posterSelectionCoordinator, obj);
    v6 = obj;
  }
}

- (void)setDateProvider:(id)a3
{
  objc_storeStrong(&self->_dateProvider, a3);
  v5 = a3;
  [(AMUIPosterSwitcherViewController *)self->_posterSwitcherViewController setDateProvider:self->_dateProvider];
}

- (PRSPosterConfiguration)activeConfiguration
{
  WeakRetained = objc_loadWeakRetained(&self->_posterSelectionCoordinator);
  v4 = [WeakRetained lastSelectedPosterConfiguration];

  if (!v4)
  {
    v4 = [(AMUIPosterSwitcherViewController *)self->_posterSwitcherViewController mostVisibleConfiguration];
  }

  return v4;
}

- (void)setAuthenticated:(BOOL)a3
{
  if (self->_authenticated != a3)
  {
    self->_authenticated = a3;
    [(AMUIAmbientViewController *)self _handleAuthenticationChanged:?];
  }
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = AMUIAmbientViewController;
  [(AMUIAmbientViewController *)&v5 viewDidLoad];
  v3 = [(AMUIAmbientViewController *)self view];
  [v3 setAccessibilityIdentifier:@"amui-ambient-view"];
  v4 = [(AMUIPosterSwitcherViewController *)self->_posterSwitcherViewController view];
  [v3 bounds];
  [v4 setFrame:?];
  [v4 setAutoresizingMask:18];
  [(AMUIAmbientViewController *)self bs_addChildViewController:self->_posterSwitcherViewController];
  [(AMUIAmbientViewController *)self _setupPosterEditingSwitcherGestureRecognizer];
  [(AMUIAmbientViewController *)self bs_addChildViewController:self->_batteryChargingViewController];
  [(AMUIAmbientViewController *)self _updateBatteryViewLayout];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = AMUIAmbientViewController;
  [(AMUIAmbientViewController *)&v3 viewWillLayoutSubviews];
  [(AMUIAmbientViewController *)self _configureNotificationIndicatorViewIfNecessary];
  [(AMUIAmbientViewController *)self _updateNotificationIndicatorViewLayout];
  [(AMUIAmbientViewController *)self _updateBatteryViewLayout];
}

- (void)viewDidLayoutSubviews
{
  v20 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = AMUIAmbientViewController;
  [(AMUIAmbientViewController *)&v17 viewDidLayoutSubviews];
  v3 = [(AMUIAmbientViewController *)self view];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v21.origin.x = v5;
  v21.origin.y = v7;
  v21.size.width = v9;
  v21.size.height = v11;
  if (!CGRectEqualToRect(self->_lastViewFrame, v21))
  {
    self->_lastViewFrame.origin.x = v5;
    self->_lastViewFrame.origin.y = v7;
    self->_lastViewFrame.size.width = v9;
    self->_lastViewFrame.size.height = v11;
    v12 = [(AMUIPosterSwitcherModel *)self->_posterSwitcherModel activeConfiguration];
    v13 = AMUILogSwitcher();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v12 serverUUID];
      *buf = 138543362;
      v19 = v14;
      _os_log_impl(&dword_23F38B000, v13, OS_LOG_TYPE_DEFAULT, "switcher resetting scroll position after layout (scrolling to %{public}@)", buf, 0xCu);
    }

    v15 = [MEMORY[0x277D75D18] _currentAnimationSettings];
    [(AMUIAmbientViewController *)self setConfiguration:v12 withAnimationSettings:v15];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_setupPosterEditingSwitcherGestureRecognizer
{
  if (!self->_posterEditingSwitcherGestureRecognizer)
  {
    v3 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:self action:sel__handlePosterEditingSwitcherGesture_];
    posterEditingSwitcherGestureRecognizer = self->_posterEditingSwitcherGestureRecognizer;
    self->_posterEditingSwitcherGestureRecognizer = v3;

    [(UILongPressGestureRecognizer *)self->_posterEditingSwitcherGestureRecognizer setMinimumPressDuration:0.3];
    [(UILongPressGestureRecognizer *)self->_posterEditingSwitcherGestureRecognizer setDelegate:self];
    v5 = [(AMUIAmbientViewController *)self view];
    [v5 addGestureRecognizer:self->_posterEditingSwitcherGestureRecognizer];
  }

  if (!self->_posterEditingSwitcherFeedbackGenerator)
  {
    v6 = objc_alloc_init(MEMORY[0x277D757B8]);
    posterEditingSwitcherFeedbackGenerator = self->_posterEditingSwitcherFeedbackGenerator;
    self->_posterEditingSwitcherFeedbackGenerator = v6;

    MEMORY[0x2821F96F8](v6, posterEditingSwitcherFeedbackGenerator);
  }
}

- (void)_handlePosterEditingSwitcherGesture:(id)a3
{
  v4 = a3;
  if ([v4 state] == 1)
  {
    v5 = AMUILogEditingSwitcher();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_23F38B000, v5, OS_LOG_TYPE_DEFAULT, "Poster Editing Switcher - gesture recognized", buf, 2u);
    }

    v6 = [(AMUIPosterSwitcherViewController *)self->_posterSwitcherViewController view];
    objc_initWeak(buf, self);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __65__AMUIAmbientViewController__handlePosterEditingSwitcherGesture___block_invoke;
    v12[3] = &unk_278C760E0;
    objc_copyWeak(&v14, buf);
    v7 = v6;
    v13 = v7;
    v8 = MEMORY[0x245CAD730](v12);
    v9 = [(AMUIAmbientViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v10 = objc_alloc_init(AMUIConcreteUnlockRequest);
      [v9 ambientViewController:self requestsUnlock:v10 withCompletion:v8];
    }

    else
    {
      if ([v9 ambientViewControllerIsAuthenticated:self])
      {
        v8[2](v8, 1);
        goto LABEL_9;
      }

      [(UINotificationFeedbackGenerator *)self->_posterEditingSwitcherFeedbackGenerator notificationOccurred:2];
      v10 = AMUILogEditingSwitcher();
      if (os_log_type_enabled(&v10->super, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_23F38B000, &v10->super, OS_LOG_TYPE_DEFAULT, "Poster Editing Switcher - gesture failed because device has not been authenticated", v11, 2u);
      }
    }

LABEL_9:
    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }
}

void __65__AMUIAmbientViewController__handlePosterEditingSwitcherGesture___block_invoke(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained _willBeginConfiguration];
      v5 = AMUILogEditingSwitcher();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        isa = v4[133].isa;
        v13 = 138543362;
        v14 = isa;
        _os_log_impl(&dword_23F38B000, v5, OS_LOG_TYPE_DEFAULT, "Presenting Poster Editing Switcher with activeConfig: %{public}@", &v13, 0xCu);
      }

      v7 = [[AMUIPosterEditingSwitcherViewController alloc] initWithActiveConfiguration:v4[133].isa transitionOverlayView:*(a1 + 32)];
      [(AMUIPosterEditingSwitcherViewController *)v7 setDelegate:v4];
      v8 = [(AMUIPosterEditingSwitcherViewController *)v7 view];
      v9 = [v4 view];
      [v9 bounds];
      [v8 setFrame:?];

      [v8 setAutoresizingMask:18];
      [v4 bs_addChildViewController:v7];
      v10 = v4[132].isa;
      v4[132].isa = v7;
      v11 = v7;

      [(objc_class *)v4[131].isa notificationOccurred:0];
    }
  }

  else
  {
    v4 = AMUILogEditingSwitcher();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_23F38B000, v4, OS_LOG_TYPE_DEFAULT, "Not presenting Poster Editing Switcher because device authentication failed", &v13, 2u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_dismissPosterEditingSwitcher
{
  if (self->_posterEditingSwitcherVC)
  {
    [(AMUIAmbientViewController *)self bs_removeChildViewController:?];
    posterEditingSwitcherVC = self->_posterEditingSwitcherVC;
    self->_posterEditingSwitcherVC = 0;

    [(AMUIAmbientViewController *)self _willEndConfiguration];
  }
}

- (id)createUnlockRequestForViewController:(id)a3
{
  v3 = objc_alloc_init(AMUIConcreteUnlockRequest);

  return v3;
}

- (void)requestUnlockForViewController:(id)a3 withRequest:(id)a4 completion:(id)a5
{
  v9 = a4;
  v7 = a5;
  v8 = [(AMUIAmbientViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 ambientViewController:self requestsUnlock:v9 withCompletion:v7];
  }
}

- (void)viewControllerWillBeginConfiguration:(id)a3
{
  [(AMUIAmbientViewController *)self _willBeginConfiguration];
  posterSwitcherViewController = self->_posterSwitcherViewController;

  [(AMUIPosterSwitcherViewController *)posterSwitcherViewController setSwitchingEnabled:0];
}

- (void)viewControllerWillEndConfiguration:(id)a3
{
  [(AMUIAmbientViewController *)self _willEndConfiguration];
  posterSwitcherViewController = self->_posterSwitcherViewController;

  [(AMUIPosterSwitcherViewController *)posterSwitcherViewController setSwitchingEnabled:1];
}

- (void)viewController:(id)a3 didUpdateActiveConfigurationMetadata:(id)a4
{
  v7 = a4;
  v5 = [(AMUIAmbientViewController *)self delegate];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [(AMUIAmbientViewController *)self activeConfiguration];
    [v5 ambientViewController:self didUpdateActiveConfiguration:v6 withMetadata:v7];
  }
}

- (void)viewControllerWillBeginShowingTemporaryOverlay:(id)a3
{
  [(AMUIAmbientViewController *)self setTemporaryOverlayVisible:1];

  [(AMUIAmbientViewController *)self _animateAllOverlayUIDismissal];
}

- (void)viewControllerWillEndShowingTemporaryOverlay:(id)a3
{
  [(AMUIAmbientViewController *)self setTemporaryOverlayVisible:0];

  [(AMUIAmbientViewController *)self _animateAllOverlayUIAppearance];
}

- (id)widgetHostManagerForViewController:(id)a3
{
  v4 = [(AMUIAmbientViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 widgetHostManagerForAmbientViewController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)defaultWidgetDescriptorStacksForViewController:(id)a3
{
  v4 = [(AMUIAmbientViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 defaultWidgetDescriptorStacksForAmbientViewController:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)viewController:(id)a3 isApplicationVisibleWithBundleIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(AMUIAmbientViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 ambientViewController:self isApplicationVisibleWithBundleIdentifier:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)posterSwitcherViewControllerIsAuthenticated:(id)a3
{
  v3 = self;
  v4 = [(AMUIAmbientViewController *)self delegate];
  LOBYTE(v3) = [v4 ambientViewControllerIsAuthenticated:v3];

  return v3;
}

- (id)posterSwitcherViewControllerAuthenticationHandler:(id)a3
{
  v4 = [(AMUIAmbientViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 ambientViewControllerAuthenticationHandler:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)posterSwitcherViewController:(id)a3 requestsLastSelectedConfigurationUUIDForProviderBundleIdentifier:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_posterSelectionCoordinator);
  v7 = [WeakRetained lastSelectedPosterConfigurationUUIDForProviderBundleIdentifier:v5];

  return v7;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  if ([a3 isEqual:self->_posterEditingSwitcherGestureRecognizer])
  {
    posterConfigurationForEditingSwitcher = self->_posterConfigurationForEditingSwitcher;
    self->_posterConfigurationForEditingSwitcher = 0;

    v5 = [(AMUIAmbientViewController *)self activeConfiguration];
    v19 = 0;
    v6 = [v5 pr_loadAmbientConfigurationWithError:&v19];
    v7 = v19;
    v8 = AMUILogEditingSwitcher();
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [(AMUIAmbientViewController *)self activeConfiguration];
        *buf = 138543618;
        v21 = v10;
        v22 = 2114;
        v23 = v6;
        _os_log_impl(&dword_23F38B000, v9, OS_LOG_TYPE_DEFAULT, "Checking if editing gesture recognizer should begin for activeConfig: %{public}@ with ambientConfig: %{public}@", buf, 0x16u);
      }

      v11 = [v6 editingBehavior];
      v12 = [v6 deletionBehavior];
      if (v11 == 1 && v12 == 2)
      {
        goto LABEL_14;
      }

      v13 = [v5 providerBundleIdentifier];
      v14 = [v13 isEqualToString:@"com.apple.ambient.AmbientUI.InfographPoster"];

      if (!v14)
      {
        v16 = self->_posterConfigurationForEditingSwitcher;
        self->_posterConfigurationForEditingSwitcher = v5;
        v15 = 1;
        v5 = v6;
        goto LABEL_15;
      }

      v9 = AMUILogEditingSwitcher();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [AMUIAmbientViewController gestureRecognizerShouldBegin:v9];
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(AMUIAmbientViewController *)self gestureRecognizerShouldBegin:v7, v9];
    }

LABEL_14:
    v15 = 0;
    v16 = v6;
LABEL_15:

    goto LABEL_16;
  }

  v15 = 1;
LABEL_16:
  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)posterSelectionCoordinator:(id)a3 didUpdateLastSelectedPosterConfiguration:(id)a4
{
  v7 = a4;
  v5 = [(AMUIAmbientViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(AMUIAmbientViewController *)self activeConfigurationMetadata];
    [v5 ambientViewController:self didUpdateActiveConfiguration:v7 withMetadata:v6];
  }
}

- (id)posterSelectionCoordinatorRequestsConnectedChargerId:(id)a3
{
  v4 = [(AMUIAmbientViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 ambientViewControllerRequestsConnectedChargerId:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_refreshPosterConfigurationsAnimated:(BOOL)a3
{
  posterSwitcherViewController = self->_posterSwitcherViewController;
  v6 = [(AMUIPosterSwitcherModel *)self->_posterSwitcherModel posterConfigurations];
  [(AMUIPosterSwitcherViewController *)posterSwitcherViewController setConfigurations:v6];

  v7 = self->_posterSwitcherViewController;
  v9 = [(AMUIPosterSwitcherModel *)self->_posterSwitcherModel activeConfiguration];
  if (a3)
  {
    v8 = [MEMORY[0x277CF0B70] settingsWithDuration:0.3];
    [(AMUIPosterSwitcherViewController *)v7 updatePosterConfiguration:v9 withAnimationSettings:v8];
  }

  else
  {
    [(AMUIPosterSwitcherViewController *)v7 updatePosterConfiguration:v9 withAnimationSettings:0];
  }
}

- (id)_defaultPosterSelectionCoordinator
{
  defaultPosterSelectionCoordinator = self->_defaultPosterSelectionCoordinator;
  if (!defaultPosterSelectionCoordinator)
  {
    v4 = objc_alloc_init(AMUIDefaultSelectedPosterCoordinator);
    v5 = self->_defaultPosterSelectionCoordinator;
    self->_defaultPosterSelectionCoordinator = v4;

    [(AMUIDefaultSelectedPosterCoordinator *)self->_defaultPosterSelectionCoordinator setAmbientDefaults:self->_ambientDefaults];
    defaultPosterSelectionCoordinator = self->_defaultPosterSelectionCoordinator;
  }

  return defaultPosterSelectionCoordinator;
}

- (void)_animateAllOverlayUIAppearance
{
  [(AMUIAmbientViewController *)self _animateNotificationIndicatorViewAppearanceIfNecessary];

  [(AMUIAmbientViewController *)self _animateBatteryViewAppearanceIfNecessary];
}

- (void)_animateAllOverlayUIDismissal
{
  [(AMUIAmbientViewController *)self _animateNotificationIndicatorViewRemoval];

  [(AMUIAmbientViewController *)self _animateBatteryViewDismissalIfNecessary];
}

- (void)_willBeginConfiguration
{
  if (![(AMUIAmbientViewController *)self isConfiguringUIVisible])
  {
    [(AMUIAmbientViewController *)self setConfiguringUIVisible:1];
    [(AMUIAmbientViewController *)self _animateAllOverlayUIDismissal];
    v3 = [(AMUIAmbientViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v3 ambientViewControllerWillBeginConfiguration:self];
    }
  }
}

- (void)_willEndConfiguration
{
  if ([(AMUIAmbientViewController *)self isConfiguringUIVisible])
  {
    [(AMUIAmbientViewController *)self setConfiguringUIVisible:0];
    [(AMUIAmbientViewController *)self _animateAllOverlayUIAppearance];
    v3 = [(AMUIAmbientViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v3 ambientViewControllerWillEndConfiguration:self];
    }
  }
}

- (void)_handleAuthenticationChanged:(BOOL)a3
{
  if (!a3)
  {
    [(AMUIPosterEditingSwitcherViewController *)self->_posterEditingSwitcherVC handleDismiss];
  }
}

- (void)_configureNotificationIndicatorViewIfNecessary
{
  if (!self->_notificationIndicatorView && [(AMUIAmbientViewController *)self notificationCount])
  {
    v3 = [[AMUINotificationIndicatorView alloc] initWithNotificationCount:[(AMUIAmbientViewController *)self notificationCount]];
    notificationIndicatorView = self->_notificationIndicatorView;
    self->_notificationIndicatorView = v3;

    v5 = [(AMUIAmbientViewController *)self view];
    [v5 addSubview:self->_notificationIndicatorView];

    v6 = self->_notificationIndicatorView;

    [(AMUINotificationIndicatorView *)v6 setAlpha:0.0];
  }
}

- (void)_animateNotificationIndicatorViewAppearanceIfNecessary
{
  notificationIndicatorView = self->_notificationIndicatorView;
  if (notificationIndicatorView)
  {
    [(AMUINotificationIndicatorView *)notificationIndicatorView alpha];
    if (v4 == 0.0 && ![(AMUIAmbientViewController *)self isConfiguringUIVisible]&& ![(AMUIAmbientViewController *)self isTemporaryOverlayVisible])
    {
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __83__AMUIAmbientViewController__animateNotificationIndicatorViewAppearanceIfNecessary__block_invoke;
      v5[3] = &unk_278C75D60;
      v5[4] = self;
      [MEMORY[0x277D75D18] animateWithDuration:0 delay:v5 options:0 animations:0.2 completion:0.0];
    }
  }
}

- (void)_animateNotificationIndicatorViewRemoval
{
  notificationIndicatorView = self->_notificationIndicatorView;
  if (notificationIndicatorView)
  {
    v4 = notificationIndicatorView;
    v5 = MEMORY[0x277D75D18];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __69__AMUIAmbientViewController__animateNotificationIndicatorViewRemoval__block_invoke;
    v10[3] = &unk_278C75D60;
    v11 = v4;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __69__AMUIAmbientViewController__animateNotificationIndicatorViewRemoval__block_invoke_2;
    v8[3] = &unk_278C76108;
    v9 = v11;
    v6 = v11;
    [v5 animateWithDuration:0 delay:v10 options:v8 animations:0.2 completion:0.0];
    v7 = self->_notificationIndicatorView;
    self->_notificationIndicatorView = 0;
  }
}

- (void)_updateNotificationIndicatorViewLayout
{
  if (self->_notificationIndicatorView)
  {
    v3 = [(AMUIAmbientViewController *)self view];
    [v3 bringSubviewToFront:self->_notificationIndicatorView];

    v4 = [(AMUIAmbientViewController *)self view];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    [(AMUINotificationIndicatorView *)self->_notificationIndicatorView frame];
    [(AMUINotificationIndicatorView *)self->_notificationIndicatorView sizeThatFits:v10, v12];
    UIRectCenteredXInRect();
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20.origin.x = v6;
    v20.origin.y = v8;
    v20.size.width = v10;
    v20.size.height = v12;
    [(AMUINotificationIndicatorView *)self->_notificationIndicatorView setFrame:v14, CGRectGetHeight(v20) * 0.02, v16, v18];

    [(AMUIAmbientViewController *)self _animateNotificationIndicatorViewAppearanceIfNecessary];
  }
}

- (void)_setNotificationIndicatorHidden:(BOOL)a3
{
  objc_initWeak(&location, self->_notificationIndicatorView);
  v4 = MEMORY[0x277D75D18];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__AMUIAmbientViewController__setNotificationIndicatorHidden___block_invoke;
  v5[3] = &unk_278C75ED0;
  objc_copyWeak(&v6, &location);
  v7 = a3;
  [v4 animateWithDuration:0 delay:v5 options:0 animations:0.2 completion:0.0];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __61__AMUIAmbientViewController__setNotificationIndicatorHidden___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  v3 = 1.0;
  if (*(a1 + 40))
  {
    v3 = 0.0;
  }

  [WeakRetained setAlpha:v3];
}

- (void)_animateBatteryViewAppearanceIfNecessary
{
  if (self->_batteryChargingViewController && ![(AMUIAmbientViewController *)self isConfiguringUIVisible]&& ![(AMUIAmbientViewController *)self isTemporaryOverlayVisible]&& ([(AMAmbientDefaults *)self->_ambientDefaults isFirstPresentation]& 1) == 0)
  {
    v3 = self->_batteryChargingViewController;
    v4 = [(AMUIBatteryChargingViewController *)v3 view];
    objc_initWeak(&location, self);
    v5 = MEMORY[0x277D75D18];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __69__AMUIAmbientViewController__animateBatteryViewAppearanceIfNecessary__block_invoke;
    v11[3] = &unk_278C75D60;
    v6 = v4;
    v12 = v6;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __69__AMUIAmbientViewController__animateBatteryViewAppearanceIfNecessary__block_invoke_2;
    v8[3] = &unk_278C76130;
    v7 = v3;
    v9 = v7;
    objc_copyWeak(&v10, &location);
    [v5 animateWithDuration:0 delay:v11 options:v8 animations:0.2 completion:0.0];
    objc_destroyWeak(&v10);

    objc_destroyWeak(&location);
  }
}

void __69__AMUIAmbientViewController__animateBatteryViewAppearanceIfNecessary__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __69__AMUIAmbientViewController__animateBatteryViewAppearanceIfNecessary__block_invoke_3;
  v2[3] = &unk_278C75D88;
  objc_copyWeak(&v3, (a1 + 40));
  [v1 performChargingAnimation:v2];
  objc_destroyWeak(&v3);
}

void __69__AMUIAmbientViewController__animateBatteryViewAppearanceIfNecessary__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _animateBatteryViewDismissalIfNecessary];
}

- (void)_animateBatteryViewDismissalIfNecessary
{
  batteryChargingViewController = self->_batteryChargingViewController;
  if (batteryChargingViewController)
  {
    v4 = batteryChargingViewController;
    v5 = [(AMUIBatteryChargingViewController *)v4 view];
    objc_initWeak(&location, self);
    v6 = MEMORY[0x277D75D18];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __68__AMUIAmbientViewController__animateBatteryViewDismissalIfNecessary__block_invoke;
    v12[3] = &unk_278C75D60;
    v7 = v5;
    v13 = v7;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __68__AMUIAmbientViewController__animateBatteryViewDismissalIfNecessary__block_invoke_2;
    v9[3] = &unk_278C760E0;
    objc_copyWeak(&v11, &location);
    v8 = v4;
    v10 = v8;
    [v6 animateWithDuration:0 delay:v12 options:v9 animations:0.3 completion:0.0];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __68__AMUIAmbientViewController__animateBatteryViewDismissalIfNecessary__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained bs_removeChildViewController:*(a1 + 32)];
    v3 = v4[129];
    v4[129] = 0;

    WeakRetained = v4;
  }
}

- (void)_updateBatteryViewLayout
{
  batteryChargingViewController = self->_batteryChargingViewController;
  if (batteryChargingViewController)
  {
    v8 = [(AMUIBatteryChargingViewController *)batteryChargingViewController view];
    v4 = [(AMUIAmbientViewController *)self view];
    [v4 bounds];
    [v8 setBounds:?];

    v5 = [(AMUIAmbientViewController *)self view];
    [v5 frame];
    [v8 setFrame:?];

    [v8 setAutoresizingMask:18];
    v6 = [(AMUIAmbientViewController *)self view];
    v7 = [(AMUIBatteryChargingViewController *)self->_batteryChargingViewController view];
    [v6 bringSubviewToFront:v7];
  }
}

- (AMUIPosterSelectionCoordinating)_posterSelectionCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_posterSelectionCoordinator);

  return WeakRetained;
}

- (AMUIAmbientViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)gestureRecognizerShouldBegin:(NSObject *)a3 .cold.2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [*(a1 + 992) mostVisibleConfiguration];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_23F38B000, a3, OS_LOG_TYPE_ERROR, "Failed to load ambient configuration from configuration %@ with error %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end