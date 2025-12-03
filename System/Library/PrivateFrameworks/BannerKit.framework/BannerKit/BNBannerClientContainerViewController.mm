@interface BNBannerClientContainerViewController
- (BNBannerClientContainerDelegate)delegate;
- (BNBannerClientContainerViewController)initWithScene:(id)scene presentable:(id)presentable context:(id)context;
- (NSString)description;
- (UIScene)scene;
- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context;
- (id)keyWindowForScreen:(id)screen;
- (void)_acquireDeferringRuleIfNecessary;
- (void)_handlePanGestureProxyAction:(id)action;
- (void)_handleRejectionAction:(id)action;
- (void)_invalidateDeferringRule;
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
- (void)_setPreferredContentSize:(CGSize)size shouldFence:(BOOL)fence;
- (void)_setPresentableBannerAppearState:(int)state reason:(id)reason;
- (void)_setPresentableUserInteractionInProgress:(BOOL)progress;
- (void)_setPresentableViewControllerAppearState:(int)state;
- (void)bs_traitCollectionDidChange:(id)change forManagedTraitEnvironment:(id)environment;
- (void)dealloc;
- (void)performCoordinatedUpdate:(id)update updateResponseHandler:(id)handler;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
- (void)setHostNeedsUpdate;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation BNBannerClientContainerViewController

- (void)_invalidateDeferringRule
{
  [(BSInvalidatable *)self->_deferringRule invalidate];
  deferringRule = self->_deferringRule;
  self->_deferringRule = 0;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained bannerClientContainerStoppedDeferringFocus:self];
  }
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_deferringRule invalidate];
  deferringRule = self->_deferringRule;
  self->_deferringRule = 0;

  sceneUpdateAction = self->_sceneUpdateAction;
  self->_sceneUpdateAction = 0;

  v5.receiver = self;
  v5.super_class = BNBannerClientContainerViewController;
  [(BNBannerClientContainerViewController *)&v5 dealloc];
}

- (BNBannerClientContainerViewController)initWithScene:(id)scene presentable:(id)presentable context:(id)context
{
  sceneCopy = scene;
  presentableCopy = presentable;
  contextCopy = context;
  if (sceneCopy)
  {
    if (presentableCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [BNBannerClientContainerViewController initWithScene:presentable:context:];
    if (presentableCopy)
    {
      goto LABEL_3;
    }
  }

  [BNBannerClientContainerViewController initWithScene:presentable:context:];
LABEL_3:
  v26.receiver = self;
  v26.super_class = BNBannerClientContainerViewController;
  v12 = [(BNBannerClientContainerViewController *)&v26 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    v14 = objc_storeWeak(&v12->_scene, sceneCopy);
    _FBSScene = [sceneCopy _FBSScene];
    [_FBSScene addObserver:v13];

    objc_storeStrong(&v13->_presentable, presentable);
    objc_storeStrong(&v13->_presentableContext, context);
    viewController = [(BNPresentable *)v13->_presentable viewController];
    if (!viewController)
    {
      [BNBannerClientContainerViewController initWithScene:a2 presentable:v13 context:presentableCopy];
    }

    [(BNBannerClientContainerViewController *)v13 addChildViewController:viewController];
    [viewController didMoveToParentViewController:v13];
    WeakRetained = objc_loadWeakRetained(&v13->_scene);
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __75__BNBannerClientContainerViewController_initWithScene_presentable_context___block_invoke;
    v23 = &unk_1E81E4B08;
    v18 = viewController;
    v24 = v18;
    v25 = presentableCopy;
    [WeakRetained _updateUIClientSettingsWithBlock:&v20];

    if (objc_opt_respondsToSelector())
    {
      [(BNPresentable *)v13->_presentable setPresentableContext:v13, v20, v21, v22, v23, v24];
    }

    [(BNPresentableContext *)v13->_presentableContext setHostNeedsUpdate:v20];
  }

  return v13;
}

void __75__BNBannerClientContainerViewController_initWithScene_presentable_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v11 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v11;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  [*(a1 + 32) bannerContentOutsets];
  [v6 setBannerContentOutsets:?];
  [v6 setClippingEnabled:{objc_msgSend(*(a1 + 32), "isClippingEnabled")}];
  if (objc_opt_respondsToSelector())
  {
    v7 = [*(a1 + 40) isDraggingDismissalEnabled];
  }

  else
  {
    v7 = 1;
  }

  [v6 setDraggingDismissalEnabled:v7];
  if (objc_opt_respondsToSelector())
  {
    v8 = [*(a1 + 40) isDraggingInteractionEnabled];
  }

  else
  {
    v8 = 0;
  }

  [v6 setDraggingInteractionEnabled:v8];
  if (objc_opt_respondsToSelector())
  {
    v9 = [*(a1 + 40) isTouchOutsideDismissalEnabled];
  }

  else
  {
    v9 = 0;
  }

  [v6 setTouchOutsideDismissalEnabled:v9];
  [v6 setPanGestureProxySupported:objc_opt_respondsToSelector() & 1];
  if (objc_opt_respondsToSelector())
  {
    v10 = [*(a1 + 40) preferredBackgroundActivitiesToSuppress];
    [v6 setPreferredBackgroundActivitiesToSuppress:v10];
  }
}

- (id)keyWindowForScreen:(id)screen
{
  screenCopy = screen;
  if ([(BNBannerClientContainerViewController *)self isDeferringFocus])
  {
    WeakRetained = objc_loadWeakRetained(&self->_scene);
    _FBSScene = [WeakRetained _FBSScene];

    settings = [_FBSScene settings];
    displayIdentity = [settings displayIdentity];
    displayIdentity2 = [screenCopy displayIdentity];
    v10 = [displayIdentity isEqual:displayIdentity2];

    if (v10)
    {
      view = [(BNBannerClientContainerViewController *)self view];
      window = [view window];
    }

    else
    {
      window = 0;
    }
  }

  else
  {
    window = 0;
  }

  return window;
}

- (void)setHostNeedsUpdate
{
  [(BNPresentableContext *)self->_presentableContext setHostNeedsUpdate];
  v3 = self->_presentable;
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__BNBannerClientContainerViewController_setHostNeedsUpdate__block_invoke;
  v10[3] = &unk_1E81E4B30;
  v5 = v3;
  v11 = v5;
  [WeakRetained _updateUIClientSettingsWithBlock:v10];

  v6 = objc_loadWeakRetained(&self->_scene);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__BNBannerClientContainerViewController_setHostNeedsUpdate__block_invoke_2;
  v8[3] = &unk_1E81E4B58;
  v9 = v5;
  v7 = v5;
  [v6 _updateUIClientSettingsWithUITransitionBlock:v8];
}

void __59__BNBannerClientContainerViewController_setHostNeedsUpdate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v8 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v8;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (objc_opt_respondsToSelector())
  {
    [v6 setDraggingDismissalEnabled:{objc_msgSend(*(a1 + 32), "isDraggingDismissalEnabled")}];
  }

  if (objc_opt_respondsToSelector())
  {
    [v6 setDraggingInteractionEnabled:{objc_msgSend(*(a1 + 32), "isDraggingInteractionEnabled")}];
  }

  if (objc_opt_respondsToSelector())
  {
    [v6 setTouchOutsideDismissalEnabled:{objc_msgSend(*(a1 + 32), "isTouchOutsideDismissalEnabled")}];
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [*(a1 + 32) preferredBackgroundActivitiesToSuppress];
    [v6 setPreferredBackgroundActivitiesToSuppress:v7];
  }
}

uint64_t __59__BNBannerClientContainerViewController_setHostNeedsUpdate__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [v6 viewController];
  v9 = [v8 bannerSizeTransitionAnimationSettings];
  [v7 setAnimationSettings:v9];

  v10 = objc_opt_class();
  v11 = v5;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  [v8 bannerContentOutsets];
  [v13 setBannerContentOutsets:?];

  return 1;
}

- (void)viewDidLoad
{
  v22.receiver = self;
  v22.super_class = BNBannerClientContainerViewController;
  [(BNBannerClientContainerViewController *)&v22 viewDidLoad];
  view = [(BNBannerClientContainerViewController *)self view];
  [view setAutoresizesSubviews:1];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  viewController = [(BNPresentable *)self->_presentable viewController];
  [viewController bannerContentOutsets];
  v14 = v5 + v13;
  v16 = v7 + v15;
  v18 = v9 - (v13 + v17);
  v20 = v11 - (v15 + v19);
  view2 = [viewController view];
  [view2 setFrame:{v14, v16, v18, v20}];
  [view addSubview:view2];
}

- (void)viewWillLayoutSubviews
{
  view = [(BNBannerClientContainerViewController *)self view];
  [view bounds];

  viewController = [(BNPresentable *)self->_presentable viewController];
  [viewController bannerContentOutsets];
  UIRectInset();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  view2 = [viewController view];
  [view2 setFrame:{v5, v7, v9, v11}];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p", objc_opt_class(), self];
  presentable = self->_presentable;
  if (presentable)
  {
    v5 = BNPresentableDescription(presentable, 0);
    [v3 appendFormat:@"; presentable: %@", v5];
  }

  WeakRetained = objc_loadWeakRetained(&self->_scene);
  _sceneIdentifier = [WeakRetained _sceneIdentifier];

  if ([_sceneIdentifier length])
  {
    [v3 appendFormat:@"; sceneID: %@", _sceneIdentifier];
  }

  [v3 appendString:@">"];

  return v3;
}

- (void)_setPreferredContentSize:(CGSize)size shouldFence:(BOOL)fence
{
  height = size.height;
  width = size.width;
  [(BNBannerClientContainerViewController *)self preferredContentSize];
  v9 = v8;
  v11 = v10;
  v16.receiver = self;
  v16.super_class = BNBannerClientContainerViewController;
  [(BNBannerClientContainerViewController *)&v16 setPreferredContentSize:width, height];
  if (v9 != width || v11 != height)
  {
    WeakRetained = objc_loadWeakRetained(&self->_scene);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __78__BNBannerClientContainerViewController__setPreferredContentSize_shouldFence___block_invoke;
    v14[3] = &unk_1E81E4B80;
    v14[4] = self;
    *&v14[5] = width;
    *&v14[6] = height;
    fenceCopy = fence;
    [WeakRetained _updateUIClientSettingsWithUITransitionBlock:v14];
  }
}

uint64_t __78__BNBannerClientContainerViewController__setPreferredContentSize_shouldFence___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(*(a1 + 32) + 1024);
  v7 = a3;
  v8 = [v6 viewController];
  v9 = [v8 bannerSizeTransitionAnimationSettings];
  [v7 setAnimationSettings:v9];

  v10 = objc_opt_class();
  v11 = v5;
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  [v13 setPreferredContentSize:{*(a1 + 40), *(a1 + 48)}];
  v14 = *(a1 + 56);

  return v14;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  containerCopy = container;
  v28.receiver = self;
  v28.super_class = BNBannerClientContainerViewController;
  [(BNBannerClientContainerViewController *)&v28 preferredContentSizeDidChangeForChildContentContainer:containerCopy];
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  _FBSScene = [WeakRetained _FBSScene];
  settings = [_FBSScene settings];
  v8 = objc_opt_class();
  v9 = settings;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  [v11 presentationSize];
  v13 = v12;
  v15 = v14;
  [v11 containerSize];
  v17 = v16;
  v19 = v18;

  v20 = objc_opt_class();
  v21 = containerCopy;
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

  if (objc_opt_respondsToSelector())
  {
    [v23 preferredContentSizeWithPresentationSize:v13 containerSize:{v15, v17, v19}];
  }

  else
  {
    [v21 preferredContentSize];
  }

  v26 = v24;
  v27 = v25;

  [(BNBannerClientContainerViewController *)self setPreferredContentSize:v26, v27];
}

- (void)bs_traitCollectionDidChange:(id)change forManagedTraitEnvironment:(id)environment
{
  changeCopy = change;
  environmentCopy = environment;
  v46.receiver = self;
  v46.super_class = BNBannerClientContainerViewController;
  [(BNBannerClientContainerViewController *)&v46 bs_traitCollectionDidChange:changeCopy forManagedTraitEnvironment:environmentCopy];
  [changeCopy displayScale];
  v9 = v8;
  traitCollection = [(BNBannerClientContainerViewController *)self traitCollection];
  [traitCollection displayScale];
  v12 = v11;

  if (v9 != v12)
  {
    viewController = [(BNPresentable *)self->_presentable viewController];
    [viewController bannerContentOutsets];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    WeakRetained = objc_loadWeakRetained(&self->_scene);
    _effectiveUIClientSettings = [WeakRetained _effectiveUIClientSettings];
    v24 = objc_opt_class();
    v25 = _effectiveUIClientSettings;
    if (v24)
    {
      if (objc_opt_isKindOfClass())
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;

    [v27 bannerContentOutsets];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    if (v17 != v31 || v15 != v29 || v21 != v35 || v19 != v33)
    {
      v39 = objc_loadWeakRetained(&self->_scene);
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __96__BNBannerClientContainerViewController_bs_traitCollectionDidChange_forManagedTraitEnvironment___block_invoke;
      v45[3] = &__block_descriptor_64_e49_v16__0__UIMutableApplicationSceneClientSettings_8l;
      *&v45[4] = v15;
      *&v45[5] = v17;
      *&v45[6] = v19;
      *&v45[7] = v21;
      [v39 _updateUIClientSettingsWithBlock:v45];
    }
  }

  preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];
  traitCollection2 = [(BNBannerClientContainerViewController *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection2 preferredContentSizeCategory];
  if (([preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2] & 1) != 0 || (objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_23;
  }

  view = [(BNBannerClientContainerViewController *)self view];
  v44 = [environmentCopy isDescendantOfView:view];

  if (v44)
  {
    preferredContentSizeCategory = [(BNPresentable *)self->_presentable viewController];
    [(BNBannerClientContainerViewController *)self preferredContentSizeDidChangeForChildContentContainer:preferredContentSizeCategory];
LABEL_23:
  }
}

void __96__BNBannerClientContainerViewController_bs_traitCollectionDidChange_forManagedTraitEnvironment___block_invoke(double *a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v7 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  [v6 setBannerContentOutsets:{a1[4], a1[5], a1[6], a1[7]}];
}

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  sceneUpdateAction = self->_sceneUpdateAction;
  if (sceneUpdateAction)
  {
    sceneUpdateAction[2](sceneUpdateAction, a2, scene, settings);
    v6 = self->_sceneUpdateAction;
    self->_sceneUpdateAction = 0;
  }
}

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  settingsCopy = settings;
  contextCopy = context;
  settings = [sScene settings];
  v14 = objc_opt_class();
  v15 = settings;
  if (v14)
  {
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  if (v17)
  {
    v18 = objc_opt_class();
    v19 = settingsCopy;
    if (v18)
    {
      if (objc_opt_isKindOfClass())
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    userInterfaceStyle = [v21 userInterfaceStyle];
    if (userInterfaceStyle != [v17 userInterfaceStyle])
    {
      v23 = objc_opt_class();
      v24 = contextCopy;
      if (v23)
      {
        if (objc_opt_isKindOfClass())
        {
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v25 = 0;
      }

      v26 = v25;

      if (v26)
      {
        animationFence = [v26 animationFence];
        if (animationFence)
        {
          [MEMORY[0x1E69DCE70] _synchronizeDrawingWithFence:animationFence];
        }

        bannerAnimationSettings = [v26 bannerAnimationSettings];
        if (bannerAnimationSettings)
        {
          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = __151__BNBannerClientContainerViewController__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke;
          v33[3] = &unk_1E81E4BC8;
          v33[4] = self;
          [MEMORY[0x1E698E7D0] animateWithSettings:bannerAnimationSettings actions:v33];
        }
      }
    }

    -[BNBannerClientContainerViewController _setPresentableViewControllerAppearState:](self, "_setPresentableViewControllerAppearState:", [v17 viewControllerAppearState]);
    bannerAppearState = [v21 bannerAppearState];
    if (bannerAppearState != [v17 bannerAppearState])
    {
      bannerAppearState2 = [v17 bannerAppearState];
      revocationReason = [v17 revocationReason];
      [(BNBannerClientContainerViewController *)self _setPresentableBannerAppearState:bannerAppearState2 reason:revocationReason];
    }

    isUserInteractionInProgress = [v21 isUserInteractionInProgress];
    if (isUserInteractionInProgress != [v17 isUserInteractionInProgress])
    {
      -[BNBannerClientContainerViewController _setPresentableUserInteractionInProgress:](self, "_setPresentableUserInteractionInProgress:", [v17 isUserInteractionInProgress]);
    }
  }
}

void __151__BNBannerClientContainerViewController__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 layoutIfNeeded];
}

- (void)_handlePanGestureProxyAction:(id)action
{
  actionCopy = action;
  if (!actionCopy)
  {
    [BNBannerClientContainerViewController _handlePanGestureProxyAction:];
  }

  if (!self->_panGestureProxy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = objc_alloc_init(_BNPanGestureServiceProxy);
    panGestureProxy = self->_panGestureProxy;
    self->_panGestureProxy = v4;

    [(BNPresentable *)self->_presentable draggingDidBeginWithGestureProxy:self->_panGestureProxy];
  }

  view = [(BNBannerClientContainerViewController *)self view];
  window = [view window];
  [actionCopy setServiceSideWindow:window];

  [(_BNPanGestureServiceProxy *)self->_panGestureProxy _setActivePanGestureProxyAction:actionCopy];
  [(_BNPanGestureServiceProxy *)self->_panGestureProxy sendAction];
}

- (void)_handleRejectionAction:(id)action
{
  v14 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  if (!actionCopy)
  {
    [BNBannerClientContainerViewController _handleRejectionAction:];
  }

  rejectionReason = [actionCopy rejectionReason];
  v6 = BNLogHostingService;
  if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_DEFAULT))
  {
    presentable = self->_presentable;
    v8 = v6;
    v9 = BNEffectivePresentableDescription(presentable);
    v10 = 138543618;
    v11 = v9;
    v12 = 2114;
    v13 = rejectionReason;
    _os_log_impl(&dword_1C42DC000, v8, OS_LOG_TYPE_DEFAULT, "Service presentable will NOT appear as banner: %{public}@ (%{public}@)", &v10, 0x16u);
  }

  if (objc_opt_respondsToSelector())
  {
    [(BNPresentable *)self->_presentable presentableWillNotAppearAsBanner:self->_presentable withReason:rejectionReason];
  }
}

- (id)_respondToActions:(id)actions forFBSScene:(id)scene inUIScene:(id)iScene fromTransitionContext:(id)context
{
  v32 = *MEMORY[0x1E69E9840];
  actionsCopy = actions;
  v8 = [actionsCopy mutableCopy];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = actionsCopy;
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        v15 = objc_opt_class();
        v16 = v14;
        if (v15)
        {
          if (objc_opt_isKindOfClass())
          {
            v15 = v16;
          }

          else
          {
            v15 = 0;
          }
        }

        if (v15)
        {
          v17 = objc_opt_class();
          v18 = v16;
          if (v17)
          {
            if (objc_opt_isKindOfClass())
            {
              v19 = v18;
            }

            else
            {
              v19 = 0;
            }
          }

          else
          {
            v19 = 0;
          }

          v25 = v19;

          [(BNBannerClientContainerViewController *)self _handlePanGestureProxyAction:v25];
LABEL_28:

          continue;
        }

        v20 = objc_opt_class();
        v21 = v16;
        if (v20)
        {
          if (objc_opt_isKindOfClass())
          {
            v20 = v21;
          }

          else
          {
            v20 = 0;
          }
        }

        if (v20)
        {
          v22 = objc_opt_class();
          v23 = v21;
          if (v22)
          {
            if (objc_opt_isKindOfClass())
            {
              v24 = v23;
            }

            else
            {
              v24 = 0;
            }
          }

          else
          {
            v24 = 0;
          }

          v25 = v24;

          [(BNBannerClientContainerViewController *)self _handleRejectionAction:v25, v27];
          goto LABEL_28;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v11);
  }

  return v8;
}

- (void)performCoordinatedUpdate:(id)update updateResponseHandler:(id)handler
{
  updateCopy = update;
  handlerCopy = handler;
  if (self->_sceneUpdateAction)
  {
    v8 = BNLogHostingService;
    if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_ERROR))
    {
      [BNBannerClientContainerViewController performCoordinatedUpdate:v8 updateResponseHandler:?];
    }

    sceneUpdateAction = self->_sceneUpdateAction;
    self->_sceneUpdateAction = 0;
  }

  v10 = MEMORY[0x1C6936EC0](handlerCopy);
  v11 = self->_sceneUpdateAction;
  self->_sceneUpdateAction = v10;

  if (updateCopy)
  {
    updateCopy[2](updateCopy);
  }
}

- (void)_setPresentableViewControllerAppearState:(int)state
{
  viewController = [(BNPresentable *)self->_presentable viewController];
  v4 = [viewController _appearState] == state;
  v5 = viewController;
  if (!v4)
  {
    _appearState = [viewController _appearState];
    if (_appearState > 1)
    {
      if (_appearState == 3)
      {
        if (!state)
        {
LABEL_34:
          [viewController endAppearanceTransition];
          goto LABEL_35;
        }

        v5 = viewController;
        if (state != 1)
        {
          if (state != 2)
          {
            goto LABEL_36;
          }

          [viewController endAppearanceTransition];
          goto LABEL_25;
        }

        [viewController endAppearanceTransition];
      }

      else
      {
        v4 = _appearState == 2;
        v5 = viewController;
        if (!v4)
        {
          goto LABEL_36;
        }

        if (!state)
        {
LABEL_32:
          v7 = viewController;
          v8 = 0;
          goto LABEL_33;
        }

        if (state == 3)
        {
          goto LABEL_27;
        }

        if (state != 1)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      if (_appearState)
      {
        v4 = _appearState == 1;
        v5 = viewController;
        if (!v4)
        {
          goto LABEL_36;
        }

        if (state)
        {
          if (state != 3)
          {
            if (state != 2)
            {
              goto LABEL_36;
            }

            goto LABEL_34;
          }

          [viewController endAppearanceTransition];
          goto LABEL_27;
        }

        [viewController endAppearanceTransition];
        goto LABEL_32;
      }

      if (state != 1)
      {
        v5 = viewController;
        if (state != 3)
        {
          if (state != 2)
          {
            goto LABEL_36;
          }

LABEL_25:
          v7 = viewController;
          v8 = 1;
LABEL_33:
          [v7 beginAppearanceTransition:v8 animated:0];
          goto LABEL_34;
        }

LABEL_27:
        v9 = viewController;
        v10 = 0;
LABEL_30:
        [v9 beginAppearanceTransition:v10 animated:1];
LABEL_35:
        v5 = viewController;
        goto LABEL_36;
      }
    }

    v9 = viewController;
    v10 = 1;
    goto LABEL_30;
  }

LABEL_36:
}

- (void)_acquireDeferringRuleIfNecessary
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  if (objc_opt_respondsToSelector())
  {
    reason = [*self reason];
    OUTLINED_FUNCTION_0_0();
    [v3 handleFailureInMethod:reason object:? file:? lineNumber:? description:?];
  }

  else
  {
    OUTLINED_FUNCTION_0_0();
    [v4 handleFailureInMethod:@"[none]" object:? file:? lineNumber:? description:?];
  }
}

- (void)_setPresentableBannerAppearState:(int)state reason:(id)reason
{
  v27 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  if (state > 1)
  {
    if (state == 2)
    {
      v19 = BNLogHostingService;
      if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_DEFAULT))
      {
        presentable = self->_presentable;
        v21 = v19;
        v22 = BNEffectivePresentableDescription(presentable);
        v23 = 138543362;
        v24 = v22;
        _os_log_impl(&dword_1C42DC000, v21, OS_LOG_TYPE_DEFAULT, "Service presentable did appear as banner: %{public}@", &v23, 0xCu);
      }

      if (objc_opt_respondsToSelector())
      {
        [(BNPresentable *)self->_presentable presentableDidAppearAsBanner:self->_presentable];
      }
    }

    else if (state == 3)
    {
      [(BNBannerClientContainerViewController *)self _invalidateDeferringRule];
      v11 = BNLogHostingService;
      if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_DEFAULT))
      {
        v12 = self->_presentable;
        v13 = v11;
        v14 = BNEffectivePresentableDescription(v12);
        v23 = 138543618;
        v24 = v14;
        v25 = 2114;
        v26 = reasonCopy;
        _os_log_impl(&dword_1C42DC000, v13, OS_LOG_TYPE_DEFAULT, "Service presentable will disappear as banner: %{public}@ (%{public}@)", &v23, 0x16u);
      }

      if (objc_opt_respondsToSelector())
      {
        [(BNPresentable *)self->_presentable presentableWillDisappearAsBanner:self->_presentable withReason:reasonCopy];
      }
    }
  }

  else if (state)
  {
    if (state == 1)
    {
      [(BNBannerClientContainerViewController *)self _acquireDeferringRuleIfNecessary];
      v7 = BNLogHostingService;
      if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_DEFAULT))
      {
        v8 = self->_presentable;
        v9 = v7;
        v10 = BNEffectivePresentableDescription(v8);
        v23 = 138543362;
        v24 = v10;
        _os_log_impl(&dword_1C42DC000, v9, OS_LOG_TYPE_DEFAULT, "Service presentable will appear as banner: %{public}@", &v23, 0xCu);
      }

      if (objc_opt_respondsToSelector())
      {
        [(BNPresentable *)self->_presentable presentableWillAppearAsBanner:self->_presentable];
      }
    }
  }

  else
  {
    v15 = BNLogHostingService;
    if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_DEFAULT))
    {
      v16 = self->_presentable;
      v17 = v15;
      v18 = BNEffectivePresentableDescription(v16);
      v23 = 138543618;
      v24 = v18;
      v25 = 2114;
      v26 = reasonCopy;
      _os_log_impl(&dword_1C42DC000, v17, OS_LOG_TYPE_DEFAULT, "Service presentable did disappear as banner: %{public}@ (%{public}@)", &v23, 0x16u);
    }

    if (objc_opt_respondsToSelector())
    {
      [(BNPresentable *)self->_presentable presentableDidDisappearAsBanner:self->_presentable withReason:reasonCopy];
    }
  }
}

- (void)_setPresentableUserInteractionInProgress:(BOOL)progress
{
  if (progress)
  {
    if (objc_opt_respondsToSelector())
    {
      presentable = self->_presentable;

      [(BNPresentable *)presentable userInteractionWillBeginForBannerForPresentable:presentable];
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    v5 = self->_presentable;

    [(BNPresentable *)v5 userInteractionDidEndForBannerForPresentable:v5];
  }
}

- (UIScene)scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (BNBannerClientContainerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithScene:presentable:context:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"scene" object:? file:? lineNumber:? description:?];
}

- (void)initWithScene:presentable:context:.cold.2()
{
  OUTLINED_FUNCTION_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"presentable" object:? file:? lineNumber:? description:?];
}

- (void)initWithScene:(uint64_t)a1 presentable:(uint64_t)a2 context:(uint64_t)a3 .cold.3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"BNBannerClientContainerViewController.m" lineNumber:69 description:{@"Presentable '%@' did not provide a view controller", a3}];
}

- (void)_handlePanGestureProxyAction:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"panGestureProxyAction" object:? file:? lineNumber:? description:?];
}

- (void)_handleRejectionAction:.cold.1()
{
  OUTLINED_FUNCTION_3();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"rejectionAction" object:? file:? lineNumber:? description:?];
}

@end