@interface AMUIDataLayerViewController
+ (Class)_dataLayerClassForConfiguration:(id)a3;
+ (int64_t)_dataLayoutForDataLayerClass:(Class)a3;
+ (int64_t)dataLayoutForConfiguration:(id)a3;
- (AMUIDataLayerViewControllerDelegate)delegate;
- (BOOL)updatePosterConfiguration:(id)a3 withAnimationSettings:(id)a4;
- (BOOL)viewController:(id)a3 isApplicationVisibleWithBundleIdentifier:(id)a4;
- (UIView)viewForOpacityAdjustment;
- (id)ambientDefaultsForViewController:(id)a3;
- (id)cancelTouchesForCurrentEventInHostedContent;
- (id)createUnlockRequestForViewController:(id)a3;
- (id)defaultWidgetDescriptorStacksForViewController:(id)a3;
- (id)widgetHostManagerForViewController:(id)a3;
- (int64_t)currentDataLayout;
- (void)_registerForAmbientPresentationTraitChanges;
- (void)_updateRedModeFiltersForTraitEnvironment:(id)a3 previousTraitCollection:(id)a4 animated:(BOOL)a5;
- (void)invalidate;
- (void)loadView;
- (void)requestUnlockForViewController:(id)a3 withRequest:(id)a4 completion:(id)a5;
- (void)setChromeOrientationPolicy:(int64_t)a3;
- (void)setChromeVisibility:(BOOL)a3 withAnimationSettings:(id)a4 animationFence:(id)a5;
- (void)setDateProvider:(id)a3;
- (void)setDateTimeLayerHidden:(BOOL)a3;
- (void)viewController:(id)a3 didUpdateActiveConfigurationMetadata:(id)a4;
- (void)viewControllerWillBeginConfiguration:(id)a3;
- (void)viewControllerWillBeginShowingTemporaryOverlay:(id)a3;
- (void)viewControllerWillEndConfiguration:(id)a3;
- (void)viewControllerWillEndShowingTemporaryOverlay:(id)a3;
- (void)viewDidLoad;
@end

@implementation AMUIDataLayerViewController

- (void)setChromeVisibility:(BOOL)a3 withAnimationSettings:(id)a4 animationFence:(id)a5
{
  v8 = a4;
  if (a5)
  {
    v9 = a5;
    v10 = [(AMUIDataLayerViewController *)self view];
    v11 = [v10 window];
    v12 = [v11 windowScene];

    [v12 _synchronizeDrawingWithFence:v9];
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__AMUIDataLayerViewController_setChromeVisibility_withAnimationSettings_animationFence___block_invoke;
  v13[3] = &unk_278C76298;
  v13[4] = self;
  v14 = a3;
  [MEMORY[0x277CF0D38] animateWithSettings:v8 actions:v13];
}

void __88__AMUIDataLayerViewController_setChromeVisibility_withAnimationSettings_animationFence___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) viewForOpacityAdjustment];
  LOBYTE(v2) = *(a1 + 40);
  [v3 setAlpha:v2];
}

- (void)setChromeOrientationPolicy:(int64_t)a3
{
  self->_chromeOrientationPolicy = a3;
  concreteDataLayerViewController = self->_concreteDataLayerViewController;
  v5 = objc_opt_class();
  v6 = concreteDataLayerViewController;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  [(AMUIAmbientViewControlling *)v8 setChromeOrientationPolicy:self->_chromeOrientationPolicy];
}

- (void)setDateProvider:(id)a3
{
  v10 = a3;
  objc_storeStrong(&self->_dateProvider, a3);
  concreteDataLayerViewController = self->_concreteDataLayerViewController;
  v6 = objc_opt_class();
  v7 = concreteDataLayerViewController;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  [(AMUIAmbientViewControlling *)v9 setDateProvider:self->_dateProvider];
}

- (int64_t)currentDataLayout
{
  v3 = objc_opt_class();
  concreteDataLayerViewController = self->_concreteDataLayerViewController;
  v5 = objc_opt_class();

  return [v3 _dataLayoutForDataLayerClass:v5];
}

+ (int64_t)dataLayoutForConfiguration:(id)a3
{
  v4 = [a1 _dataLayerClassForConfiguration:a3];

  return [a1 _dataLayoutForDataLayerClass:v4];
}

- (void)setDateTimeLayerHidden:(BOOL)a3
{
  if ([(AMUIAmbientViewControlling *)self->_concreteDataLayerViewController isMemberOfClass:objc_opt_class()])
  {
    v5 = [(AMUIAmbientViewControlling *)self->_concreteDataLayerViewController view];
    v6 = MEMORY[0x277D75D18];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __54__AMUIDataLayerViewController_setDateTimeLayerHidden___block_invoke;
    v8[3] = &unk_278C76298;
    v9 = v5;
    v10 = a3;
    v7 = v5;
    [v6 animateWithDuration:v8 animations:0.2];
  }
}

uint64_t __54__AMUIDataLayerViewController_setDateTimeLayerHidden___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = 1.0;
  if (*(a1 + 40))
  {
    v2 = 0.0;
  }

  return [*(a1 + 32) setAlpha:v2];
}

- (UIView)viewForOpacityAdjustment
{
  concreteDataLayerViewController = self->_concreteDataLayerViewController;
  if (objc_opt_respondsToSelector())
  {
    [(AMUIAmbientViewControlling *)self->_concreteDataLayerViewController viewForOpacityAdjustment];
  }

  else
  {
    [(AMUIDataLayerViewController *)self view];
  }
  v4 = ;

  return v4;
}

- (BOOL)updatePosterConfiguration:(id)a3 withAnimationSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!-[AMUIAmbientViewControlling isMemberOfClass:](self->_concreteDataLayerViewController, "isMemberOfClass:", [objc_opt_class() _dataLayerClassForConfiguration:v6]) || (-[AMUIAmbientViewControlling updatePosterConfiguration:withAnimationSettings:](self->_concreteDataLayerViewController, "updatePosterConfiguration:withAnimationSettings:", v6, v7) & 1) == 0)
  {
    v8 = self->_concreteDataLayerViewController;
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __79__AMUIDataLayerViewController_updatePosterConfiguration_withAnimationSettings___block_invoke;
    v42[3] = &unk_278C75DD8;
    v42[4] = self;
    v9 = v8;
    v43 = v9;
    v10 = MEMORY[0x245CAD730](v42);
    v11 = objc_alloc_init([objc_opt_class() _dataLayerClassForConfiguration:v6]);
    v12 = objc_opt_class();
    v13 = v11;
    if (v12)
    {
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    [v15 setDelegate:self];
    v16 = objc_opt_class();
    v17 = v13;
    if (v16)
    {
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    [v19 setChromeOrientationPolicy:self->_chromeOrientationPolicy];
    v20 = objc_opt_class();
    v21 = v17;
    if (v20)
    {
      if (objc_opt_isKindOfClass())
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    [v23 setDateProvider:self->_dateProvider];
    v24 = [(AMUIDataLayerViewController *)self view];
    v25 = [v21 view];
    [v24 bounds];
    [v25 setFrame:?];
    [v25 setAutoresizingMask:18];
    [v25 setAlpha:0.0];
    if (v7)
    {
      [v25 layer];
      v26 = v24;
      v27 = v6;
      v28 = v11;
      v29 = v7;
      v30 = v10;
      v32 = v31 = v9;
      [v32 setAllowsGroupOpacity:1];

      v9 = v31;
      v10 = v30;
      v7 = v29;
      v11 = v28;
      v6 = v27;
      v24 = v26;
    }

    [(AMUIDataLayerViewController *)self bs_addChildViewController:v21];
    objc_storeStrong(&self->_concreteDataLayerViewController, v11);
    [(AMUIAmbientViewControlling *)self->_concreteDataLayerViewController updatePosterConfiguration:v6 withAnimationSettings:0];
    v33 = MEMORY[0x277CF0D38];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __79__AMUIDataLayerViewController_updatePosterConfiguration_withAnimationSettings___block_invoke_2;
    v40[3] = &unk_278C75D60;
    v41 = v21;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __79__AMUIDataLayerViewController_updatePosterConfiguration_withAnimationSettings___block_invoke_3;
    v37[3] = &unk_278C762C0;
    v37[4] = self;
    v38 = v41;
    v39 = v10;
    v34 = v10;
    v35 = v41;
    [v33 animateWithSettings:v7 actions:v40 completion:v37];
  }

  return 1;
}

uint64_t __79__AMUIDataLayerViewController_updatePosterConfiguration_withAnimationSettings___block_invoke(uint64_t a1)
{
  [*(a1 + 32) bs_removeChildViewController:*(a1 + 40)];
  v2 = *(a1 + 40);

  return [v2 invalidate];
}

void __79__AMUIDataLayerViewController_updatePosterConfiguration_withAnimationSettings___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:1.0];
}

- (void)invalidate
{
  [(AMUIDataLayerViewController *)self bs_removeChildViewController:self->_concreteDataLayerViewController];
  [(AMUIAmbientViewControlling *)self->_concreteDataLayerViewController invalidate];
  concreteDataLayerViewController = self->_concreteDataLayerViewController;
  self->_concreteDataLayerViewController = 0;
}

- (id)cancelTouchesForCurrentEventInHostedContent
{
  concreteDataLayerViewController = self->_concreteDataLayerViewController;
  if (objc_opt_respondsToSelector())
  {
    v4 = [(AMUIAmbientViewControlling *)self->_concreteDataLayerViewController cancelTouchesForCurrentEventInHostedContent];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)loadView
{
  v3 = objc_alloc_init(AMUITouchPassthroughView);
  [(AMUIDataLayerViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = AMUIDataLayerViewController;
  [(AMUIDataLayerViewController *)&v3 viewDidLoad];
  [(AMUIDataLayerViewController *)self _registerForAmbientPresentationTraitChanges];
  [(AMUIDataLayerViewController *)self _updateRedModeFiltersForTraitEnvironment:self previousTraitCollection:0 animated:0];
}

- (id)createUnlockRequestForViewController:(id)a3
{
  v4 = [(AMUIDataLayerViewController *)self delegate];
  v5 = [v4 createUnlockRequestForViewController:self];

  return v5;
}

- (void)requestUnlockForViewController:(id)a3 withRequest:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(AMUIDataLayerViewController *)self delegate];
  [v9 requestUnlockForViewController:self withRequest:v8 completion:v7];
}

- (void)viewControllerWillBeginConfiguration:(id)a3
{
  v4 = [(AMUIDataLayerViewController *)self delegate];
  [v4 viewControllerWillBeginConfiguration:self];
}

- (void)viewControllerWillEndConfiguration:(id)a3
{
  v4 = [(AMUIDataLayerViewController *)self delegate];
  [v4 viewControllerWillEndConfiguration:self];
}

- (void)viewController:(id)a3 didUpdateActiveConfigurationMetadata:(id)a4
{
  v5 = a4;
  v6 = [(AMUIDataLayerViewController *)self delegate];
  [v6 viewController:self didUpdateActiveConfigurationMetadata:v5];
}

- (id)widgetHostManagerForViewController:(id)a3
{
  v4 = [(AMUIDataLayerViewController *)self delegate];
  v5 = [v4 widgetHostManagerForViewController:self];

  return v5;
}

- (id)ambientDefaultsForViewController:(id)a3
{
  v4 = [(AMUIDataLayerViewController *)self delegate];
  v5 = [v4 ambientDefaultsForViewController:self];

  return v5;
}

- (id)defaultWidgetDescriptorStacksForViewController:(id)a3
{
  v4 = [(AMUIDataLayerViewController *)self delegate];
  v5 = [v4 defaultWidgetDescriptorStacksForViewController:self];

  return v5;
}

- (void)viewControllerWillBeginShowingTemporaryOverlay:(id)a3
{
  v4 = a3;
  v5 = [(AMUIDataLayerViewController *)self delegate];
  [v5 viewControllerWillBeginShowingTemporaryOverlay:v4];
}

- (void)viewControllerWillEndShowingTemporaryOverlay:(id)a3
{
  v4 = a3;
  v5 = [(AMUIDataLayerViewController *)self delegate];
  [v5 viewControllerWillEndShowingTemporaryOverlay:v4];
}

- (BOOL)viewController:(id)a3 isApplicationVisibleWithBundleIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AMUIDataLayerViewController *)self delegate];
  v9 = [v8 viewController:v7 isApplicationVisibleWithBundleIdentifier:v6];

  return v9;
}

+ (Class)_dataLayerClassForConfiguration:(id)a3
{
  v3 = a3;
  v16 = 0;
  v4 = [v3 pr_loadAmbientConfigurationWithError:&v16];
  v5 = v16;
  if (v4)
  {
    v6 = [v4 supportedDataLayout];
    if (v6 == 1)
    {
      v7 = off_278C755C0;
    }

    else
    {
      if (v6 != 2)
      {
        v12 = 0;
        goto LABEL_10;
      }

      v7 = off_278C75600;
    }

    v11 = *v7;
    v12 = objc_opt_class();
LABEL_10:
    v10 = v12;
    goto LABEL_11;
  }

  v8 = [v3 providerBundleIdentifier];
  v9 = [v8 isEqualToString:@"com.apple.ambient.AmbientUI.InfographPoster"];

  if (v9)
  {
    v10 = objc_opt_class();
LABEL_11:
    v13 = v10;
    goto LABEL_12;
  }

  v15 = AMUILogDataLayer();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [(AMUIDataLayerViewController *)v3 _dataLayerClassForConfiguration:v5, v15];
  }

  v13 = 0;
LABEL_12:

  return v13;
}

+ (int64_t)_dataLayoutForDataLayerClass:(Class)a3
{
  if (([(objc_class *)a3 isEqual:objc_opt_class()]& 1) != 0)
  {
    return 2;
  }

  if ([(objc_class *)a3 isEqual:objc_opt_class()])
  {
    return 1;
  }

  return 3;
}

- (void)_registerForAmbientPresentationTraitChanges
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_self();
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v5 = [(AMUIDataLayerViewController *)self registerForTraitChanges:v4 withHandler:&__block_literal_global_6];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_updateRedModeFiltersForTraitEnvironment:(id)a3 previousTraitCollection:(id)a4 animated:(BOOL)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a3;
  v9 = [(AMUIDataLayerViewController *)self view];
  v10 = [v8 traitCollection];

  v11 = objc_opt_self();
  [v10 valueForNSIntegerTrait:v11];
  IsRedMode = AMUIAmbientDisplayStyleIsRedMode();

  v13 = objc_opt_self();
  [v7 valueForNSIntegerTrait:v13];

  v14 = AMUIAmbientDisplayStyleIsRedMode();
  if (v7 && IsRedMode == v14)
  {
    v23 = AMUILogDataLayer();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 134218240;
      v26 = self;
      v27 = 1024;
      LODWORD(v28) = IsRedMode;
      _os_log_impl(&dword_23F38B000, v23, OS_LOG_TYPE_DEFAULT, "0x%p: Not changing red mode filters because red mode trait did not change(isRedModeEnabled=%{BOOL}u)", &v25, 0x12u);
    }
  }

  else
  {
    v15 = AMUILogDataLayer();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (IsRedMode)
    {
      if (v16)
      {
        concreteDataLayerViewController = self->_concreteDataLayerViewController;
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v25 = 134218242;
        v26 = self;
        v27 = 2112;
        v28 = v19;
        _os_log_impl(&dword_23F38B000, v15, OS_LOG_TYPE_DEFAULT, "0x%p: Applying red mode filter on the concreteDataLayerViewController of type:%@", &v25, 0x16u);
      }

      [v9 amui_applyRedModeFilterAnimated:1 withCompletion:0];
    }

    else
    {
      if (v16)
      {
        v20 = self->_concreteDataLayerViewController;
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v25 = 134218242;
        v26 = self;
        v27 = 2112;
        v28 = v22;
        _os_log_impl(&dword_23F38B000, v15, OS_LOG_TYPE_DEFAULT, "0x%p: Clearing red mode filter on the concreteDataLayerViewController of type:%@", &v25, 0x16u);
      }

      [v9 amui_clearRedModeFilterAnimated:1 withCompletion:0];
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (AMUIDataLayerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (void)_dataLayerClassForConfiguration:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_23F38B000, log, OS_LOG_TYPE_ERROR, "Failed to load ambient configuration from configuration %@ with error %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end