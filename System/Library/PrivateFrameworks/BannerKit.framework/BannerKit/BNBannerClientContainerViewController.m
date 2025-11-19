@interface BNBannerClientContainerViewController
- (BNBannerClientContainerDelegate)delegate;
- (BNBannerClientContainerViewController)initWithScene:(id)a3 presentable:(id)a4 context:(id)a5;
- (NSString)description;
- (UIScene)scene;
- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6;
- (id)keyWindowForScreen:(id)a3;
- (void)_acquireDeferringRuleIfNecessary;
- (void)_handlePanGestureProxyAction:(id)a3;
- (void)_handleRejectionAction:(id)a3;
- (void)_invalidateDeferringRule;
- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8;
- (void)_setPreferredContentSize:(CGSize)a3 shouldFence:(BOOL)a4;
- (void)_setPresentableBannerAppearState:(int)a3 reason:(id)a4;
- (void)_setPresentableUserInteractionInProgress:(BOOL)a3;
- (void)_setPresentableViewControllerAppearState:(int)a3;
- (void)bs_traitCollectionDidChange:(id)a3 forManagedTraitEnvironment:(id)a4;
- (void)dealloc;
- (void)performCoordinatedUpdate:(id)a3 updateResponseHandler:(id)a4;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
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

- (BNBannerClientContainerViewController)initWithScene:(id)a3 presentable:(id)a4 context:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [BNBannerClientContainerViewController initWithScene:presentable:context:];
    if (v10)
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
    v14 = objc_storeWeak(&v12->_scene, v9);
    v15 = [v9 _FBSScene];
    [v15 addObserver:v13];

    objc_storeStrong(&v13->_presentable, a4);
    objc_storeStrong(&v13->_presentableContext, a5);
    v16 = [(BNPresentable *)v13->_presentable viewController];
    if (!v16)
    {
      [BNBannerClientContainerViewController initWithScene:a2 presentable:v13 context:v10];
    }

    [(BNBannerClientContainerViewController *)v13 addChildViewController:v16];
    [v16 didMoveToParentViewController:v13];
    WeakRetained = objc_loadWeakRetained(&v13->_scene);
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __75__BNBannerClientContainerViewController_initWithScene_presentable_context___block_invoke;
    v23 = &unk_1E81E4B08;
    v18 = v16;
    v24 = v18;
    v25 = v10;
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

- (id)keyWindowForScreen:(id)a3
{
  v4 = a3;
  if ([(BNBannerClientContainerViewController *)self isDeferringFocus])
  {
    WeakRetained = objc_loadWeakRetained(&self->_scene);
    v6 = [WeakRetained _FBSScene];

    v7 = [v6 settings];
    v8 = [v7 displayIdentity];
    v9 = [v4 displayIdentity];
    v10 = [v8 isEqual:v9];

    if (v10)
    {
      v11 = [(BNBannerClientContainerViewController *)self view];
      v12 = [v11 window];
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

  return v12;
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
  v3 = [(BNBannerClientContainerViewController *)self view];
  [v3 setAutoresizesSubviews:1];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(BNPresentable *)self->_presentable viewController];
  [v12 bannerContentOutsets];
  v14 = v5 + v13;
  v16 = v7 + v15;
  v18 = v9 - (v13 + v17);
  v20 = v11 - (v15 + v19);
  v21 = [v12 view];
  [v21 setFrame:{v14, v16, v18, v20}];
  [v3 addSubview:v21];
}

- (void)viewWillLayoutSubviews
{
  v3 = [(BNBannerClientContainerViewController *)self view];
  [v3 bounds];

  v13 = [(BNPresentable *)self->_presentable viewController];
  [v13 bannerContentOutsets];
  UIRectInset();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [v13 view];
  [v12 setFrame:{v5, v7, v9, v11}];
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
  v7 = [WeakRetained _sceneIdentifier];

  if ([v7 length])
  {
    [v3 appendFormat:@"; sceneID: %@", v7];
  }

  [v3 appendString:@">"];

  return v3;
}

- (void)_setPreferredContentSize:(CGSize)a3 shouldFence:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
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
    v15 = a4;
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

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = BNBannerClientContainerViewController;
  [(BNBannerClientContainerViewController *)&v28 preferredContentSizeDidChangeForChildContentContainer:v4];
  WeakRetained = objc_loadWeakRetained(&self->_scene);
  v6 = [WeakRetained _FBSScene];
  v7 = [v6 settings];
  v8 = objc_opt_class();
  v9 = v7;
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
  v21 = v4;
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

- (void)bs_traitCollectionDidChange:(id)a3 forManagedTraitEnvironment:(id)a4
{
  v6 = a3;
  v7 = a4;
  v46.receiver = self;
  v46.super_class = BNBannerClientContainerViewController;
  [(BNBannerClientContainerViewController *)&v46 bs_traitCollectionDidChange:v6 forManagedTraitEnvironment:v7];
  [v6 displayScale];
  v9 = v8;
  v10 = [(BNBannerClientContainerViewController *)self traitCollection];
  [v10 displayScale];
  v12 = v11;

  if (v9 != v12)
  {
    v13 = [(BNPresentable *)self->_presentable viewController];
    [v13 bannerContentOutsets];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    WeakRetained = objc_loadWeakRetained(&self->_scene);
    v23 = [WeakRetained _effectiveUIClientSettings];
    v24 = objc_opt_class();
    v25 = v23;
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

  v40 = [v6 preferredContentSizeCategory];
  v41 = [(BNBannerClientContainerViewController *)self traitCollection];
  v42 = [v41 preferredContentSizeCategory];
  if (([v40 isEqualToString:v42] & 1) != 0 || (objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_23;
  }

  v43 = [(BNBannerClientContainerViewController *)self view];
  v44 = [v7 isDescendantOfView:v43];

  if (v44)
  {
    v40 = [(BNPresentable *)self->_presentable viewController];
    [(BNBannerClientContainerViewController *)self preferredContentSizeDidChangeForChildContentContainer:v40];
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

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  sceneUpdateAction = self->_sceneUpdateAction;
  if (sceneUpdateAction)
  {
    sceneUpdateAction[2](sceneUpdateAction, a2, a3, a4);
    v6 = self->_sceneUpdateAction;
    self->_sceneUpdateAction = 0;
  }
}

- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8
{
  v11 = a6;
  v12 = a7;
  v13 = [a4 settings];
  v14 = objc_opt_class();
  v15 = v13;
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
    v19 = v11;
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

    v22 = [v21 userInterfaceStyle];
    if (v22 != [v17 userInterfaceStyle])
    {
      v23 = objc_opt_class();
      v24 = v12;
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
        v27 = [v26 animationFence];
        if (v27)
        {
          [MEMORY[0x1E69DCE70] _synchronizeDrawingWithFence:v27];
        }

        v28 = [v26 bannerAnimationSettings];
        if (v28)
        {
          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = __151__BNBannerClientContainerViewController__performActionsForUIScene_withUpdatedFBSScene_settingsDiff_fromSettings_transitionContext_lifecycleActionType___block_invoke;
          v33[3] = &unk_1E81E4BC8;
          v33[4] = self;
          [MEMORY[0x1E698E7D0] animateWithSettings:v28 actions:v33];
        }
      }
    }

    -[BNBannerClientContainerViewController _setPresentableViewControllerAppearState:](self, "_setPresentableViewControllerAppearState:", [v17 viewControllerAppearState]);
    v29 = [v21 bannerAppearState];
    if (v29 != [v17 bannerAppearState])
    {
      v30 = [v17 bannerAppearState];
      v31 = [v17 revocationReason];
      [(BNBannerClientContainerViewController *)self _setPresentableBannerAppearState:v30 reason:v31];
    }

    v32 = [v21 isUserInteractionInProgress];
    if (v32 != [v17 isUserInteractionInProgress])
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

- (void)_handlePanGestureProxyAction:(id)a3
{
  v8 = a3;
  if (!v8)
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

  v6 = [(BNBannerClientContainerViewController *)self view];
  v7 = [v6 window];
  [v8 setServiceSideWindow:v7];

  [(_BNPanGestureServiceProxy *)self->_panGestureProxy _setActivePanGestureProxyAction:v8];
  [(_BNPanGestureServiceProxy *)self->_panGestureProxy sendAction];
}

- (void)_handleRejectionAction:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    [BNBannerClientContainerViewController _handleRejectionAction:];
  }

  v5 = [v4 rejectionReason];
  v6 = BNLogHostingService;
  if (os_log_type_enabled(BNLogHostingService, OS_LOG_TYPE_DEFAULT))
  {
    presentable = self->_presentable;
    v8 = v6;
    v9 = BNEffectivePresentableDescription(presentable);
    v10 = 138543618;
    v11 = v9;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&dword_1C42DC000, v8, OS_LOG_TYPE_DEFAULT, "Service presentable will NOT appear as banner: %{public}@ (%{public}@)", &v10, 0x16u);
  }

  if (objc_opt_respondsToSelector())
  {
    [(BNPresentable *)self->_presentable presentableWillNotAppearAsBanner:self->_presentable withReason:v5];
  }
}

- (id)_respondToActions:(id)a3 forFBSScene:(id)a4 inUIScene:(id)a5 fromTransitionContext:(id)a6
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [v7 mutableCopy];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = v7;
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

- (void)performCoordinatedUpdate:(id)a3 updateResponseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
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

  v10 = MEMORY[0x1C6936EC0](v7);
  v11 = self->_sceneUpdateAction;
  self->_sceneUpdateAction = v10;

  if (v6)
  {
    v6[2](v6);
  }
}

- (void)_setPresentableViewControllerAppearState:(int)a3
{
  v11 = [(BNPresentable *)self->_presentable viewController];
  v4 = [v11 _appearState] == a3;
  v5 = v11;
  if (!v4)
  {
    v6 = [v11 _appearState];
    if (v6 > 1)
    {
      if (v6 == 3)
      {
        if (!a3)
        {
LABEL_34:
          [v11 endAppearanceTransition];
          goto LABEL_35;
        }

        v5 = v11;
        if (a3 != 1)
        {
          if (a3 != 2)
          {
            goto LABEL_36;
          }

          [v11 endAppearanceTransition];
          goto LABEL_25;
        }

        [v11 endAppearanceTransition];
      }

      else
      {
        v4 = v6 == 2;
        v5 = v11;
        if (!v4)
        {
          goto LABEL_36;
        }

        if (!a3)
        {
LABEL_32:
          v7 = v11;
          v8 = 0;
          goto LABEL_33;
        }

        if (a3 == 3)
        {
          goto LABEL_27;
        }

        if (a3 != 1)
        {
          goto LABEL_36;
        }
      }
    }

    else
    {
      if (v6)
      {
        v4 = v6 == 1;
        v5 = v11;
        if (!v4)
        {
          goto LABEL_36;
        }

        if (a3)
        {
          if (a3 != 3)
          {
            if (a3 != 2)
            {
              goto LABEL_36;
            }

            goto LABEL_34;
          }

          [v11 endAppearanceTransition];
          goto LABEL_27;
        }

        [v11 endAppearanceTransition];
        goto LABEL_32;
      }

      if (a3 != 1)
      {
        v5 = v11;
        if (a3 != 3)
        {
          if (a3 != 2)
          {
            goto LABEL_36;
          }

LABEL_25:
          v7 = v11;
          v8 = 1;
LABEL_33:
          [v7 beginAppearanceTransition:v8 animated:0];
          goto LABEL_34;
        }

LABEL_27:
        v9 = v11;
        v10 = 0;
LABEL_30:
        [v9 beginAppearanceTransition:v10 animated:1];
LABEL_35:
        v5 = v11;
        goto LABEL_36;
      }
    }

    v9 = v11;
    v10 = 1;
    goto LABEL_30;
  }

LABEL_36:
}

- (void)_acquireDeferringRuleIfNecessary
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  if (objc_opt_respondsToSelector())
  {
    v2 = [*a1 reason];
    OUTLINED_FUNCTION_0_0();
    [v3 handleFailureInMethod:v2 object:? file:? lineNumber:? description:?];
  }

  else
  {
    OUTLINED_FUNCTION_0_0();
    [v4 handleFailureInMethod:@"[none]" object:? file:? lineNumber:? description:?];
  }
}

- (void)_setPresentableBannerAppearState:(int)a3 reason:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (a3 > 1)
  {
    if (a3 == 2)
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

    else if (a3 == 3)
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
        v26 = v6;
        _os_log_impl(&dword_1C42DC000, v13, OS_LOG_TYPE_DEFAULT, "Service presentable will disappear as banner: %{public}@ (%{public}@)", &v23, 0x16u);
      }

      if (objc_opt_respondsToSelector())
      {
        [(BNPresentable *)self->_presentable presentableWillDisappearAsBanner:self->_presentable withReason:v6];
      }
    }
  }

  else if (a3)
  {
    if (a3 == 1)
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
      v26 = v6;
      _os_log_impl(&dword_1C42DC000, v17, OS_LOG_TYPE_DEFAULT, "Service presentable did disappear as banner: %{public}@ (%{public}@)", &v23, 0x16u);
    }

    if (objc_opt_respondsToSelector())
    {
      [(BNPresentable *)self->_presentable presentableDidDisappearAsBanner:self->_presentable withReason:v6];
    }
  }
}

- (void)_setPresentableUserInteractionInProgress:(BOOL)a3
{
  if (a3)
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