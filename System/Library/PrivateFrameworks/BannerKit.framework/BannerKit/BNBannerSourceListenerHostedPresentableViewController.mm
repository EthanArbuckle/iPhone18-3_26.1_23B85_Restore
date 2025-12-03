@interface BNBannerSourceListenerHostedPresentableViewController
- (BNBannerSourceListenerHostedPresentableViewController)initWithSpecification:(id)specification serviceDomain:(id)domain scene:(id)scene readyCompletion:(id)completion;
- (BOOL)isDraggingDismissalEnabled;
- (BOOL)isDraggingInteractionEnabled;
- (BOOL)isTouchOutsideDismissalEnabled;
- (NSSet)preferredBackgroundActivitiesToSuppress;
- (UIEdgeInsets)bannerContentOutsets;
- (id)_tearDownSceneBlock:(id)block scenePresenter:(id)presenter;
- (id)presentableDescription;
- (void)_handleUserInterfaceStyleTraitChange:(id)change;
- (void)_setReadyCompletion:(id)completion;
- (void)_tearDownSceneIfNecessary;
- (void)_tearDownSceneInfrastructureIfNecessary;
- (void)_tearDownScenePresenterIfNecessary;
- (void)_updateBannerContentOutsetsWithScene:(id)scene;
- (void)_updateClippingWithScene:(id)scene;
- (void)_updatePreferredContentSizeWithScene:(id)scene transitionContext:(id)context;
- (void)bannerSourceListenerPresentableViewControllerViewDidChangeSize:(id)size;
- (void)dealloc;
- (void)draggingDidBeginWithGestureProxy:(id)proxy;
- (void)invalidate;
- (void)presentableDidAppearAsBanner:(id)banner;
- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)presentableWillAppearAsBanner:(id)banner;
- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)presentableWillNotAppearAsBanner:(id)banner withReason:(id)reason;
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context;
- (void)userInteractionDidEndForBannerForPresentable:(id)presentable;
- (void)userInteractionWillBeginForBannerForPresentable:(id)presentable;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation BNBannerSourceListenerHostedPresentableViewController

- (UIEdgeInsets)bannerContentOutsets
{
  top = self->_bannerContentOutsets.top;
  left = self->_bannerContentOutsets.left;
  bottom = self->_bannerContentOutsets.bottom;
  right = self->_bannerContentOutsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)presentableDescription
{
  v8[1] = *MEMORY[0x1E69E9840];
  identifier = [(FBScene *)self->_scene identifier];
  if ([identifier length])
  {
    v7 = @"sceneID";
    v8[0] = identifier;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    v4 = 0;
  }

  v5 = BNPresentableDescription(self, v4);

  return v5;
}

- (void)invalidate
{
  v3.receiver = self;
  v3.super_class = BNBannerSourceListenerHostedPresentableViewController;
  [(BNBannerSourceListenerPresentableViewController *)&v3 invalidate];
  [(BNBannerSourceListenerHostedPresentableViewController *)self _tearDownSceneInfrastructureIfNecessary];
}

- (void)_tearDownSceneInfrastructureIfNecessary
{
  [(BNBannerSourceListenerHostedPresentableViewController *)self _tearDownScenePresenterIfNecessary];

  [(BNBannerSourceListenerHostedPresentableViewController *)self _tearDownSceneIfNecessary];
}

- (void)_tearDownScenePresenterIfNecessary
{
  scenePresenter = self->_scenePresenter;
  if (scenePresenter)
  {
    self->_scenePresenter = 0;
    v3 = scenePresenter;

    [(UIScenePresenter *)v3 deactivate];
    [(UIScenePresenter *)v3 invalidate];
  }
}

- (void)_tearDownSceneIfNecessary
{
  scene = self->_scene;
  if (scene)
  {
    self->_scene = 0;
    v7 = scene;

    scenePresenter = self->_scenePresenter;
    self->_scenePresenter = 0;
    v5 = scenePresenter;

    v6 = [(BNBannerSourceListenerHostedPresentableViewController *)self _tearDownSceneBlock:v7 scenePresenter:v5];

    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

- (void)dealloc
{
  [(BNBannerSourceListenerHostedPresentableViewController *)self unregisterForTraitChanges:self->_traitChangeRegistration];
  v3.receiver = self;
  v3.super_class = BNBannerSourceListenerHostedPresentableViewController;
  [(BNBannerSourceListenerPresentableViewController *)&v3 dealloc];
}

- (BNBannerSourceListenerHostedPresentableViewController)initWithSpecification:(id)specification serviceDomain:(id)domain scene:(id)scene readyCompletion:(id)completion
{
  v20[1] = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  v19.receiver = self;
  v19.super_class = BNBannerSourceListenerHostedPresentableViewController;
  v12 = [(BNBannerSourceListenerPresentableViewController *)&v19 initWithSpecification:specification serviceDomain:domain readyCompletion:completion];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_scene, scene);
    [(FBScene *)v13->_scene setDelegate:v13];
    [(FBScene *)v13->_scene addObserver:v13];
    [(BNBannerSourceListenerHostedPresentableViewController *)v13 _updatePreferredContentSizeWithScene:sceneCopy transitionContext:0];
    [(BNBannerSourceListenerHostedPresentableViewController *)v13 _updateBannerContentOutsetsWithScene:sceneCopy];
    [(BNBannerSourceListenerHostedPresentableViewController *)v13 _updateClippingWithScene:sceneCopy];
    v14 = objc_opt_self();
    v20[0] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v16 = [(BNBannerSourceListenerHostedPresentableViewController *)v13 registerForTraitChanges:v15 withAction:sel__handleUserInterfaceStyleTraitChange_];
    traitChangeRegistration = v13->_traitChangeRegistration;
    v13->_traitChangeRegistration = v16;
  }

  return v13;
}

- (void)draggingDidBeginWithGestureProxy:(id)proxy
{
  proxyCopy = proxy;
  clientSettings = [(FBScene *)self->_scene clientSettings];
  v7 = objc_opt_class();
  v8 = clientSettings;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if ([v10 isPanGestureProxySupported])
  {
    objc_storeStrong(&self->_panGestureProxy, proxy);
    objc_initWeak(&location, self);
    panGestureProxy = self->_panGestureProxy;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __90__BNBannerSourceListenerHostedPresentableViewController_draggingDidBeginWithGestureProxy___block_invoke;
    v12[3] = &unk_1E81E4F08;
    objc_copyWeak(&v13, &location);
    [(BNPanGestureProxy *)panGestureProxy setActionHandler:v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __90__BNBannerSourceListenerHostedPresentableViewController_draggingDidBeginWithGestureProxy___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [BNPanGestureProxyAction alloc];
  v5 = [WeakRetained view];
  v6 = [v5 window];
  v7 = [(BNPanGestureProxyAction *)v4 initWithPanGestureProxy:v3 hostSideWindow:v6];

  v8 = [WeakRetained scene];
  v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v7, 0}];
  [v8 sendActions:v9];
}

- (NSSet)preferredBackgroundActivitiesToSuppress
{
  clientSettings = [(FBScene *)self->_scene clientSettings];
  v3 = objc_opt_class();
  v4 = clientSettings;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

  preferredBackgroundActivitiesToSuppress = [v6 preferredBackgroundActivitiesToSuppress];

  return preferredBackgroundActivitiesToSuppress;
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = BNBannerSourceListenerHostedPresentableViewController;
  [(BNBannerSourceListenerPresentableViewController *)&v13 viewDidLoad];
  view = [(BNBannerSourceListenerHostedPresentableViewController *)self view];
  uiPresentationManager = [(FBScene *)self->_scene uiPresentationManager];
  isClippingEnabled = self->_isClippingEnabled;
  v6 = [uiPresentationManager createPresenterWithIdentifier:@"default"];
  scenePresenter = self->_scenePresenter;
  self->_scenePresenter = v6;

  v8 = self->_scenePresenter;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__BNBannerSourceListenerHostedPresentableViewController_viewDidLoad__block_invoke;
  v11[3] = &__block_descriptor_33_e43_v16__0__UIMutableScenePresentationContext_8l;
  v12 = isClippingEnabled;
  [(UIScenePresenter *)v8 modifyPresentationContext:v11];
  [(UIScenePresenter *)self->_scenePresenter activate];
  presentationView = [(UIScenePresenter *)self->_scenePresenter presentationView];
  [(BNBannerSourceListenerPresentableViewController *)self _setContentView:presentationView];

  contentView = [(BNBannerSourceListenerPresentableViewController *)self contentView];
  [view addSubview:contentView];
}

void __68__BNBannerSourceListenerHostedPresentableViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setPresentedLayerTypes:26];
  [v3 setAppearanceStyle:2];
  [v3 setClippingDisabled:(*(a1 + 32) & 1) == 0];
  [v3 setZombifiesHostedContext:0];
}

- (void)viewWillLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = BNBannerSourceListenerHostedPresentableViewController;
  [(BNBannerSourceListenerHostedPresentableViewController *)&v4 viewWillLayoutSubviews];
  parentViewController = [(BNBannerSourceListenerHostedPresentableViewController *)self parentViewController];
  if (-[FBScene isActive](self->_scene, "isActive") && (-[BNBannerSourceListenerHostedPresentableViewController _appearState](self, "_appearState") != 2 || (objc_opt_respondsToSelector() & 1) == 0 || [parentViewController shouldFenceAnimationsForPresentable:self]))
  {
    [(FBScene *)self->_scene updateSettingsWithTransitionBlock:&__block_literal_global_3];
  }
}

id __79__BNBannerSourceListenerHostedPresentableViewController_viewWillLayoutSubviews__block_invoke()
{
  v0 = [MEMORY[0x1E69DC6A0] transitionContext];
  v1 = [MEMORY[0x1E69DCE70] _synchronizedDrawingFence];
  [v0 setAnimationFence:v1];

  return v0;
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = BNBannerSourceListenerHostedPresentableViewController;
  [(BNBannerSourceListenerHostedPresentableViewController *)&v4 viewWillAppear:appear];
  [(FBScene *)self->_scene updateSettingsWithBlock:&__block_literal_global_28];
}

void __72__BNBannerSourceListenerHostedPresentableViewController_viewWillAppear___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v6 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  [v5 setViewControllerAppearState:1];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = BNBannerSourceListenerHostedPresentableViewController;
  [(BNBannerSourceListenerHostedPresentableViewController *)&v4 viewDidAppear:appear];
  [(FBScene *)self->_scene updateSettingsWithBlock:&__block_literal_global_33];
}

void __71__BNBannerSourceListenerHostedPresentableViewController_viewDidAppear___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v6 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  [v5 setViewControllerAppearState:2];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = BNBannerSourceListenerHostedPresentableViewController;
  [(BNBannerSourceListenerHostedPresentableViewController *)&v4 viewWillDisappear:disappear];
  [(FBScene *)self->_scene updateSettingsWithBlock:&__block_literal_global_37];
}

void __75__BNBannerSourceListenerHostedPresentableViewController_viewWillDisappear___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v6 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  [v5 setViewControllerAppearState:3];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = BNBannerSourceListenerHostedPresentableViewController;
  [(BNBannerSourceListenerHostedPresentableViewController *)&v4 viewDidDisappear:disappear];
  [(FBScene *)self->_scene updateSettingsWithBlock:&__block_literal_global_41];
}

void __74__BNBannerSourceListenerHostedPresentableViewController_viewDidDisappear___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v6 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  [v5 setViewControllerAppearState:0];
}

- (void)_setReadyCompletion:(id)completion
{
  completionCopy = completion;
  readyCompletion = [(BNBannerSourceListenerPresentableViewController *)self readyCompletion];

  if (readyCompletion != completionCopy)
  {
    isReady = [(BNBannerSourceListenerHostedPresentableViewController *)self isReady];
    if (completionCopy && isReady)
    {
      readyCompletion2 = [(BNBannerSourceListenerPresentableViewController *)self readyCompletion];

      if (readyCompletion2)
      {
        [(BNBannerSourceListenerHostedPresentableViewController *)a2 _setReadyCompletion:?];
      }

      completionCopy[2](completionCopy, self, 0);
    }

    else
    {
      v9.receiver = self;
      v9.super_class = BNBannerSourceListenerHostedPresentableViewController;
      [(BNBannerSourceListenerPresentableViewController *)&v9 _setReadyCompletion:completionCopy];
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v35.receiver = self;
  v35.super_class = BNBannerSourceListenerHostedPresentableViewController;
  [(BNBannerSourceListenerHostedPresentableViewController *)&v35 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  settings = [(FBScene *)self->_scene settings];
  v9 = objc_opt_class();
  v10 = settings;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  view = [(BNBannerSourceListenerHostedPresentableViewController *)self view];
  window = [view window];
  interfaceOrientation = [window interfaceOrientation];

  switch(interfaceOrientation)
  {
    case 1:
      v16 = 0.0;
      break;
    case 3:
      v16 = 1.57079633;
      break;
    case 4:
      v16 = -1.57079633;
      break;
    default:
      v16 = 3.14159265;
      if (interfaceOrientation != 2)
      {
        v16 = 0.0;
      }

      break;
  }

  CGAffineTransformMakeRotation(&t1, v16);
  if (coordinatorCopy)
  {
    [coordinatorCopy targetTransform];
  }

  else
  {
    memset(&t2, 0, sizeof(t2));
  }

  CGAffineTransformConcat(&v34, &t1, &t2);
  v17 = BNInterfaceOrientationFromTransform(&v34);
  if (-[FBScene isActive](self->_scene, "isActive") && v17 != [v12 interfaceOrientation])
  {
    [v12 frame];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    if (coordinatorCopy)
    {
      [coordinatorCopy targetTransform];
    }

    else
    {
      memset(&v34, 0, sizeof(v34));
    }

    v36.origin.x = v19;
    v36.origin.y = v21;
    v36.size.width = v23;
    v36.size.height = v25;
    CGRectApplyAffineTransform(v36, &v34);
    BSRectWithSize();
    scene = self->_scene;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __108__BNBannerSourceListenerHostedPresentableViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
    v31[3] = &__block_descriptor_72_e60___FBSSceneTransitionContext_16__0__FBSMutableSceneSettings_8l;
    v31[4] = v17;
    v31[5] = v27;
    v31[6] = v28;
    v31[7] = v29;
    v31[8] = v30;
    [(FBScene *)scene updateSettingsWithTransitionBlock:v31];
  }
}

id __108__BNBannerSourceListenerHostedPresentableViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  [v7 setInterfaceOrientation:*(a1 + 32)];
  [v7 setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];

  v8 = [MEMORY[0x1E69DC6A0] transitionContext];
  v9 = [MEMORY[0x1E69DCE70] _synchronizedDrawingFence];
  [v8 setAnimationFence:v9];

  return v8;
}

- (BOOL)isDraggingDismissalEnabled
{
  v10.receiver = self;
  v10.super_class = BNBannerSourceListenerHostedPresentableViewController;
  isDraggingDismissalEnabled = [(BNBannerSourceListenerPresentableViewController *)&v10 isDraggingDismissalEnabled];
  if (![(BNBannerSourceListenerPresentableViewController *)self _isPresentableContextInterfaceAvailable])
  {
    clientSettings = [(FBScene *)self->_scene clientSettings];
    v5 = objc_opt_class();
    v6 = clientSettings;
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

    isDraggingDismissalEnabled = [v8 isDraggingDismissalEnabled];
  }

  return isDraggingDismissalEnabled;
}

- (BOOL)isDraggingInteractionEnabled
{
  v10.receiver = self;
  v10.super_class = BNBannerSourceListenerHostedPresentableViewController;
  isDraggingInteractionEnabled = [(BNBannerSourceListenerPresentableViewController *)&v10 isDraggingInteractionEnabled];
  if (![(BNBannerSourceListenerPresentableViewController *)self _isPresentableContextInterfaceAvailable])
  {
    clientSettings = [(FBScene *)self->_scene clientSettings];
    v5 = objc_opt_class();
    v6 = clientSettings;
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

    isDraggingInteractionEnabled = [v8 isDraggingInteractionEnabled];
  }

  return isDraggingInteractionEnabled;
}

- (BOOL)isTouchOutsideDismissalEnabled
{
  v10.receiver = self;
  v10.super_class = BNBannerSourceListenerHostedPresentableViewController;
  isTouchOutsideDismissalEnabled = [(BNBannerSourceListenerPresentableViewController *)&v10 isTouchOutsideDismissalEnabled];
  if (![(BNBannerSourceListenerPresentableViewController *)self _isPresentableContextInterfaceAvailable])
  {
    clientSettings = [(FBScene *)self->_scene clientSettings];
    v5 = objc_opt_class();
    v6 = clientSettings;
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

    isTouchOutsideDismissalEnabled = [v8 isTouchOutsideDismissalEnabled];
  }

  return isTouchOutsideDismissalEnabled;
}

- (void)presentableWillAppearAsBanner:(id)banner
{
  v4.receiver = self;
  v4.super_class = BNBannerSourceListenerHostedPresentableViewController;
  [(BNBannerSourceListenerPresentableViewController *)&v4 presentableWillAppearAsBanner:banner];
  if (![(BNBannerSourceListenerPresentableViewController *)self _isPresentableContextInterfaceAvailable])
  {
    [(FBScene *)self->_scene updateSettingsWithBlock:&__block_literal_global_66];
  }
}

void __87__BNBannerSourceListenerHostedPresentableViewController_presentableWillAppearAsBanner___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v6 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  [v5 setBannerAppearState:1];
}

- (void)presentableDidAppearAsBanner:(id)banner
{
  v4.receiver = self;
  v4.super_class = BNBannerSourceListenerHostedPresentableViewController;
  [(BNBannerSourceListenerPresentableViewController *)&v4 presentableDidAppearAsBanner:banner];
  if (![(BNBannerSourceListenerPresentableViewController *)self _isPresentableContextInterfaceAvailable])
  {
    [(FBScene *)self->_scene updateSettingsWithBlock:&__block_literal_global_70];
  }
}

void __86__BNBannerSourceListenerHostedPresentableViewController_presentableDidAppearAsBanner___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v6 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  [v5 setBannerAppearState:2];
}

- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason
{
  reasonCopy = reason;
  v10.receiver = self;
  v10.super_class = BNBannerSourceListenerHostedPresentableViewController;
  [(BNBannerSourceListenerPresentableViewController *)&v10 presentableWillDisappearAsBanner:banner withReason:reasonCopy];
  if (![(BNBannerSourceListenerPresentableViewController *)self _isPresentableContextInterfaceAvailable])
  {
    scene = self->_scene;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __101__BNBannerSourceListenerHostedPresentableViewController_presentableWillDisappearAsBanner_withReason___block_invoke;
    v8[3] = &unk_1E81E48B0;
    v9 = reasonCopy;
    [(FBScene *)scene updateSettingsWithBlock:v8];
  }
}

void __101__BNBannerSourceListenerHostedPresentableViewController_presentableWillDisappearAsBanner_withReason___block_invoke(uint64_t a1, void *a2)
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

  [v6 setBannerAppearState:3];
  [v6 setRevocationReason:*(a1 + 32)];
}

- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason
{
  bannerCopy = banner;
  reasonCopy = reason;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __100__BNBannerSourceListenerHostedPresentableViewController_presentableDidDisappearAsBanner_withReason___block_invoke;
  v20[3] = &unk_1E81E4FB0;
  v8 = bannerCopy;
  v21 = v8;
  v9 = reasonCopy;
  v22 = v9;
  selfCopy = self;
  v10 = MEMORY[0x1C6936EC0](v20);
  if ([(FBScene *)self->_scene isActive]&& ![(BNBannerSourceListenerPresentableViewController *)self _isPresentableContextInterfaceAvailable])
  {
    settings = [(FBScene *)self->_scene settings];
    v12 = [settings mutableCopy];
    v13 = objc_opt_class();
    v14 = v12;
    if (v13)
    {
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    [v16 setBannerAppearState:0];
    [v16 setRevocationReason:v9];
    scene = self->_scene;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __100__BNBannerSourceListenerHostedPresentableViewController_presentableDidDisappearAsBanner_withReason___block_invoke_2;
    v18[3] = &unk_1E81E4FD8;
    v19 = v10;
    [(FBScene *)scene updateSettings:v16 withTransitionContext:0 completion:v18];
  }

  else
  {
    v10[2](v10);
  }
}

uint64_t __100__BNBannerSourceListenerHostedPresentableViewController_presentableDidDisappearAsBanner_withReason___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v5.receiver = *(a1 + 48);
  v5.super_class = BNBannerSourceListenerHostedPresentableViewController;
  objc_msgSendSuper2(&v5, sel_presentableDidDisappearAsBanner_withReason_, v3, v2);
  return [*(a1 + 48) _tearDownSceneInfrastructureIfNecessary];
}

- (void)presentableWillNotAppearAsBanner:(id)banner withReason:(id)reason
{
  reasonCopy = reason;
  v10.receiver = self;
  v10.super_class = BNBannerSourceListenerHostedPresentableViewController;
  [(BNBannerSourceListenerPresentableViewController *)&v10 presentableWillNotAppearAsBanner:banner withReason:reasonCopy];
  if (![(BNBannerSourceListenerPresentableViewController *)self _isPresentableContextInterfaceAvailable])
  {
    v7 = [[BNBannerSourceListenerPresentableRejectionAction alloc] initWithReason:reasonCopy];
    scene = [(BNBannerSourceListenerHostedPresentableViewController *)self scene];
    v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v7, 0}];
    [scene sendActions:v9];
  }

  [(BNBannerSourceListenerHostedPresentableViewController *)self _tearDownSceneInfrastructureIfNecessary];
}

- (void)userInteractionWillBeginForBannerForPresentable:(id)presentable
{
  v4.receiver = self;
  v4.super_class = BNBannerSourceListenerHostedPresentableViewController;
  [(BNBannerSourceListenerPresentableViewController *)&v4 userInteractionWillBeginForBannerForPresentable:presentable];
  if (![(BNBannerSourceListenerPresentableViewController *)self _isPresentableContextInterfaceAvailable])
  {
    [(FBScene *)self->_scene updateSettingsWithBlock:&__block_literal_global_83];
  }
}

void __105__BNBannerSourceListenerHostedPresentableViewController_userInteractionWillBeginForBannerForPresentable___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v6 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  [v5 setUserInteractionInProgress:1];
}

- (void)userInteractionDidEndForBannerForPresentable:(id)presentable
{
  v5.receiver = self;
  v5.super_class = BNBannerSourceListenerHostedPresentableViewController;
  [(BNBannerSourceListenerPresentableViewController *)&v5 userInteractionDidEndForBannerForPresentable:presentable];
  if (![(BNBannerSourceListenerPresentableViewController *)self _isPresentableContextInterfaceAvailable])
  {
    [(FBScene *)self->_scene updateSettingsWithBlock:&__block_literal_global_87];
  }

  panGestureProxy = self->_panGestureProxy;
  self->_panGestureProxy = 0;
}

void __102__BNBannerSourceListenerHostedPresentableViewController_userInteractionDidEndForBannerForPresentable___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v6 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  [v5 setUserInteractionInProgress:0];
}

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  sceneCopy = scene;
  transitionContext = [settings transitionContext];
  [(BNBannerSourceListenerHostedPresentableViewController *)self preferredContentSize];
  v8 = v7;
  v10 = v9;
  [(BNBannerSourceListenerHostedPresentableViewController *)self _updatePreferredContentSizeWithScene:sceneCopy transitionContext:transitionContext];
  v14 = *&self->_bannerContentOutsets.bottom;
  v15 = *&self->_bannerContentOutsets.top;
  [(BNBannerSourceListenerHostedPresentableViewController *)self _updateBannerContentOutsetsWithScene:sceneCopy];
  [(BNBannerSourceListenerHostedPresentableViewController *)self preferredContentSize];
  if (v8 == v12 && v10 == v11 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(v15, *&self->_bannerContentOutsets.top), vceqq_f64(v14, *&self->_bannerContentOutsets.bottom)), xmmword_1C430F610)) & 0xF) != 0)
  {
    parentViewController = [(BNBannerSourceListenerHostedPresentableViewController *)self parentViewController];
    [parentViewController bannerContentOutsetsDidInvalidateForPresentableViewController:self];
  }

  [(BNBannerSourceListenerHostedPresentableViewController *)self _updateClippingWithScene:sceneCopy];
}

- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context
{
  [(BNBannerSourceListenerHostedPresentableViewController *)self _tearDownSceneInfrastructureIfNecessary:invalidate];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __88__BNBannerSourceListenerHostedPresentableViewController_sceneDidInvalidate_withContext___block_invoke;
  v5[3] = &unk_1E81E47D8;
  v5[4] = self;
  [(BNBannerSourceListenerPresentableViewController *)self _enumerateObserversRespondingToSelector:sel_sceneDidInvalidateForBannerSourceListenerPresentable_ usingBlock:v5];
}

- (void)bannerSourceListenerPresentableViewControllerViewDidChangeSize:(id)size
{
  v37.receiver = self;
  v37.super_class = BNBannerSourceListenerHostedPresentableViewController;
  [(BNBannerSourceListenerPresentableViewController *)&v37 bannerSourceListenerPresentableViewControllerViewDidChangeSize:size];
  view = [(BNBannerSourceListenerHostedPresentableViewController *)self view];
  superview = [view superview];
  v6 = superview;
  if (superview)
  {
    window = [superview window];
    [view frame];
    v12 = v8;
    v13 = v9;
    v14 = v10;
    v15 = v11;
    if (window)
    {
      [v6 bn_convertRectToSceneReferenceSpace:{v8, v9, v10, v11}];
      v12 = v16;
      v13 = v17;
      v14 = v18;
      v15 = v19;
    }
  }

  else
  {
    [view frame];
    v12 = v20;
    v13 = v21;
    v14 = v22;
    v15 = v23;
  }

  _isInAnimationBlockWithAnimationsEnabled = [MEMORY[0x1E69DD250] _isInAnimationBlockWithAnimationsEnabled];
  scene = self->_scene;
  if (_isInAnimationBlockWithAnimationsEnabled)
  {
    settings = [(FBScene *)scene settings];
    v27 = objc_opt_class();
    v28 = settings;
    if (v27)
    {
      if (objc_opt_isKindOfClass())
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }
    }

    else
    {
      v29 = 0;
    }

    v30 = v29;

    v31 = [v30 mutableCopy];
    if ([(FBScene *)self->_scene isActive]&& v31)
    {
      [v31 setFrame:{v12, v13, v14, v15}];
      v32 = objc_alloc_init(MEMORY[0x1E69DC6A0]);
      parentViewController = [(BNBannerSourceListenerHostedPresentableViewController *)self parentViewController];
      if (objc_opt_respondsToSelector())
      {
        v34 = [parentViewController sizeTransitionAnimationSettingsForPresentable:self];
      }

      else
      {
        v34 = 0;
      }

      [v32 setAnimationSettings:v34];
      if ((objc_opt_respondsToSelector() & 1) != 0 && ![parentViewController shouldFenceAnimationsForPresentable:self])
      {
        _synchronizedDrawingFence = 0;
      }

      else
      {
        _synchronizedDrawingFence = [MEMORY[0x1E69DCE70] _synchronizedDrawingFence];
      }

      [v32 setAnimationFence:_synchronizedDrawingFence];
      [(FBScene *)self->_scene updateSettings:v31 withTransitionContext:v32 completion:0];
    }
  }

  else
  {
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __120__BNBannerSourceListenerHostedPresentableViewController_bannerSourceListenerPresentableViewControllerViewDidChangeSize___block_invoke;
    v36[3] = &__block_descriptor_64_e33_v16__0__FBSMutableSceneSettings_8l;
    *&v36[4] = v12;
    *&v36[5] = v13;
    *&v36[6] = v14;
    *&v36[7] = v15;
    [(FBScene *)scene updateSettingsWithBlock:v36];
  }
}

void __120__BNBannerSourceListenerHostedPresentableViewController_bannerSourceListenerPresentableViewControllerViewDidChangeSize___block_invoke(double *a1, void *a2)
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

  [v6 setFrame:{a1[4], a1[5], a1[6], a1[7]}];
}

- (void)_handleUserInterfaceStyleTraitChange:(id)change
{
  if ([(FBScene *)self->_scene isActive])
  {
    scene = self->_scene;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __94__BNBannerSourceListenerHostedPresentableViewController__handleUserInterfaceStyleTraitChange___block_invoke;
    v5[3] = &unk_1E81E5020;
    v5[4] = self;
    [(FBScene *)scene updateSettingsWithTransitionBlock:v5];
  }
}

id __94__BNBannerSourceListenerHostedPresentableViewController__handleUserInterfaceStyleTraitChange___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [*(a1 + 32) traitCollection];
  v9 = [v8 userInterfaceStyle];

  [v7 setUserInterfaceStyle:v9];
  v10 = [*(a1 + 32) parentViewController];
  v11 = +[(FBSSceneTransitionContext *)BNBannerSceneTransitionContext];
  if (objc_opt_respondsToSelector())
  {
    v12 = [v10 userInterfaceStyleTransitionAnimationSettingsForPresentable:*(a1 + 32) forTransitionToStyle:v9];
  }

  else
  {
    v12 = 0;
  }

  [v11 setBannerAnimationSettings:v12];
  v13 = [MEMORY[0x1E69DCE70] _synchronizedDrawingFence];
  [v11 setAnimationFence:v13];

  return v11;
}

- (void)_updatePreferredContentSizeWithScene:(id)scene transitionContext:(id)context
{
  contextCopy = context;
  clientSettings = [scene clientSettings];
  v7 = objc_opt_class();
  v8 = clientSettings;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    animationSettings = [contextCopy animationSettings];
    bannerSizeTransitionAnimationSettings = self->_bannerSizeTransitionAnimationSettings;
    self->_bannerSizeTransitionAnimationSettings = animationSettings;

    [v10 preferredContentSize];
    v14 = v13;
    v16 = v15;
    [(BNBannerSourceListenerHostedPresentableViewController *)self preferredContentSize];
    if (v18 != v14 || v17 != v16)
    {
      [(BNBannerSourceListenerHostedPresentableViewController *)self setPreferredContentSize:v14, v16];
    }
  }
}

- (void)_updateBannerContentOutsetsWithScene:(id)scene
{
  clientSettings = [scene clientSettings];
  v5 = objc_opt_class();
  v6 = clientSettings;
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

  v15 = v7;

  v8 = v15;
  if (v15)
  {
    [v15 bannerContentOutsets];
    v8 = v15;
    v13.f64[0] = v9;
    v13.f64[1] = v10;
    v14.f64[0] = v11;
    v14.f64[1] = v12;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_bannerContentOutsets.top, v13), vceqq_f64(*&self->_bannerContentOutsets.bottom, v14)))) & 1) == 0)
    {
      self->_bannerContentOutsets.top = v9;
      self->_bannerContentOutsets.left = v10;
      self->_bannerContentOutsets.bottom = v11;
      self->_bannerContentOutsets.right = v12;
    }
  }
}

- (void)_updateClippingWithScene:(id)scene
{
  clientSettings = [scene clientSettings];
  v5 = objc_opt_class();
  v6 = clientSettings;
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

  v9 = v7;

  v8 = v9;
  if (v9)
  {
    self->_isClippingEnabled = [v9 isClippingEnabled];
    v8 = v9;
  }
}

- (id)_tearDownSceneBlock:(id)block scenePresenter:(id)presenter
{
  blockCopy = block;
  presenterCopy = presenter;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __92__BNBannerSourceListenerHostedPresentableViewController__tearDownSceneBlock_scenePresenter___block_invoke;
  v11[3] = &unk_1E81E4800;
  v12 = blockCopy;
  v13 = presenterCopy;
  v7 = presenterCopy;
  v8 = blockCopy;
  v9 = MEMORY[0x1C6936EC0](v11);

  return v9;
}

void *__92__BNBannerSourceListenerHostedPresentableViewController__tearDownSceneBlock_scenePresenter___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 updateSettingsWithBlock:&__block_literal_global_103];
    [*(a1 + 32) invalidate:0];
  }

  result = *(a1 + 40);
  if (result)
  {

    return [result invalidate];
  }

  return result;
}

void __92__BNBannerSourceListenerHostedPresentableViewController__tearDownSceneBlock_scenePresenter___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v6 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  [v5 setForeground:0];
}

- (void)_setReadyCompletion:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BNBannerSourceListenerHostedPresentableViewController.m" lineNumber:193 description:@"How can we be prepared and still have a ready completion?"];
}

@end