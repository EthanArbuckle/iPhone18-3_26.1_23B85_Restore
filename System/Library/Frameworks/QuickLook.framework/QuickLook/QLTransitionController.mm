@interface QLTransitionController
- ($9F4668F2352A2F7A80B9EC1B630AA830)_requiredVisualStateTransitions;
- (BOOL)forceDismissalIfNeeded;
- (QLPreviewController)previewController;
- (UIViewController)presenterViewController;
- (UIViewControllerContextTransitioning)transitionContext;
- (void)_completeBackgroundTransition:(BOOL)transition;
- (void)_completeOverlayTransition:(BOOL)transition;
- (void)_performForcedDismissal;
- (void)_performStartBlockIfNeeded;
- (void)_performTransition;
- (void)_prepareTimedForcedDismissal;
- (void)_updateBackgroundTransitionWithProgress:(double)progress;
- (void)_updateOverlayTransitionWithProgress:(double)progress;
- (void)_view:(id)_view applyFrameFromTransitionContextAsFinalFrame:(BOOL)frame isToView:(BOOL)view;
- (void)animateTransition:(id)transition;
- (void)setUpWithTransitionContext:(id)context completionHandler:(id)handler;
@end

@implementation QLTransitionController

- (void)setUpWithTransitionContext:(id)context completionHandler:(id)handler
{
  v82 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  handlerCopy = handler;
  v7 = MEMORY[0x277D43EF8];
  v8 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v8 = *v7;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    selfCopy = self;
    v80 = 2112;
    v81 = contextCopy;
    _os_log_impl(&dword_23A714000, v8, OS_LOG_TYPE_INFO, "QLTransitionController (%@) is being setup (%@). #AppearanceTransition", buf, 0x16u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  [(QLTransitionController *)self setSetupDate:date];

  [(QLTransitionController *)self setTransitionContext:v73];
  if (_os_feature_enabled_impl())
  {
    previewController = [(QLTransitionController *)self previewController];
    [previewController updateStatusBarAnimated:0];

    previewController2 = [(QLTransitionController *)self previewController];
    view = [previewController2 view];
    [view layoutIfNeeded];
  }

  previewController3 = [(QLTransitionController *)self previewController];
  delegate = [previewController3 delegate];
  v15 = objc_opt_respondsToSelector();

  if (v15)
  {
    if ([(QLTransitionController *)self showing])
    {
      v16 = 1;
    }

    else
    {
      v16 = 3;
    }

    previewController4 = [(QLTransitionController *)self previewController];
    delegate2 = [previewController4 delegate];
    previewController5 = [(QLTransitionController *)self previewController];
    [delegate2 previewController:previewController5 willTransitionToState:v16];
  }

  transitionContext = [(QLTransitionController *)self transitionContext];
  containerView = [transitionContext containerView];

  transitionContext2 = [(QLTransitionController *)self transitionContext];
  v23 = [transitionContext2 viewForKey:*MEMORY[0x277D77248]];

  transitionContext3 = [(QLTransitionController *)self transitionContext];
  v25 = [transitionContext3 viewForKey:*MEMORY[0x277D77238]];

  if ([(QLTransitionController *)self showing])
  {
    [containerView addSubview:v23];
    [v23 setHidden:1];
  }

  else
  {
    previewController6 = [(QLTransitionController *)self previewController];
    view2 = [previewController6 view];
    [containerView insertSubview:v23 below:view2];
  }

  [(QLTransitionController *)self _view:v25 applyFrameFromTransitionContextAsFinalFrame:0 isToView:0];
  [(QLTransitionController *)self _view:v23 applyFrameFromTransitionContextAsFinalFrame:1 isToView:1];
  v28 = [QLTransitionContext alloc];
  previewController7 = [(QLTransitionController *)self previewController];
  transitionContext4 = [(QLTransitionController *)self transitionContext];
  v31 = [transitionContext4 viewControllerForKey:*MEMORY[0x277D77240]];
  v32 = [(QLTransitionContext *)v28 initWithQLPreviewController:previewController7 containerView:containerView toViewController:v31];
  [(QLTransitionController *)self setQuickLookTransitionContext:v32];

  clearColor = [MEMORY[0x277D75348] clearColor];
  previewController8 = [(QLTransitionController *)self previewController];
  view3 = [previewController8 view];
  [view3 setBackgroundColor:clearColor];

  v36 = objc_alloc(MEMORY[0x277D75D18]);
  [containerView bounds];
  v37 = [v36 initWithFrame:?];
  transitionBackgroundView = self->_transitionBackgroundView;
  self->_transitionBackgroundView = v37;

  previewController9 = [(QLTransitionController *)self previewController];
  _preferredBackgroundColor = [previewController9 _preferredBackgroundColor];
  [(UIView *)self->_transitionBackgroundView setBackgroundColor:_preferredBackgroundColor];

  v41 = self->_transitionBackgroundView;
  previewController10 = [(QLTransitionController *)self previewController];
  view4 = [previewController10 view];
  [containerView insertSubview:v41 below:view4];

  previewController11 = [(QLTransitionController *)self previewController];
  v45 = [previewController11 presentationMode] == 1;

  if (v45)
  {
    previewController12 = [(QLTransitionController *)self previewController];
    if ([previewController12 fullScreen])
    {
      showing = [(QLTransitionController *)self showing];

      if (showing)
      {
LABEL_20:
        previewController13 = [(QLTransitionController *)self previewController];
        internalNavigationController = [previewController13 internalNavigationController];
        disabledNavigationController = self->_disabledNavigationController;
        self->_disabledNavigationController = internalNavigationController;

        view5 = [(UINavigationController *)self->_disabledNavigationController view];
        [view5 setUserInteractionEnabled:0];

        goto LABEL_21;
      }

      previewController14 = [(QLTransitionController *)self previewController];
      navigationController = [previewController14 navigationController];
      navigationBar = [navigationController navigationBar];
      [navigationBar setAlpha:0.01];

      previewController12 = [(QLTransitionController *)self previewController];
      toolbarController = [previewController12 toolbarController];
      [toolbarController setOriginalToolbarAlpha:0.0];
    }

    goto LABEL_20;
  }

LABEL_21:
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    previewController15 = [(QLTransitionController *)self previewController];
    [previewController15 updateStatusBarAnimated:1];
  }

  [(QLTransitionController *)self updateTransitionWithProgress:0.0];
  objc_initWeak(buf, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__QLTransitionController_setUpWithTransitionContext_completionHandler___block_invoke;
  aBlock[3] = &unk_278B578C8;
  objc_copyWeak(&v77, buf);
  v57 = handlerCopy;
  v76 = v57;
  v58 = v23;
  v75 = v58;
  v59 = _Block_copy(aBlock);
  startTransitionBlock = self->_startTransitionBlock;
  self->_startTransitionBlock = v59;

  previewController16 = [(QLTransitionController *)self previewController];
  currentAnimator = [previewController16 currentAnimator];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((([(QLTransitionController *)self showing]| isKindOfClass) & 1) == 0)
  {
    [(QLTransitionController *)self _prepareTimedForcedDismissal];
  }

  previewController17 = [(QLTransitionController *)self previewController];
  previewCollection = [previewController17 previewCollection];
  isAvailable = [previewCollection isAvailable];

  if (isAvailable)
  {
    previewController18 = [(QLTransitionController *)self previewController];
    previewCollection2 = [previewController18 previewCollection];
    isRemote = [previewCollection2 isRemote];

    if (isRemote)
    {
      quickLookTransitionContext = [(QLTransitionController *)self quickLookTransitionContext];
      [quickLookTransitionContext prepareContextToSend];
    }

    QLRunInBackgroundThread();
  }

  else
  {
    [(QLTransitionController *)self _performStartBlockIfNeeded];
  }

  objc_destroyWeak(&v77);
  objc_destroyWeak(buf);

  v71 = *MEMORY[0x277D85DE8];
}

void __71__QLTransitionController_setUpWithTransitionContext_completionHandler___block_invoke(id *a1)
{
  objc_copyWeak(&v4, a1 + 6);
  v3 = a1[5];
  v2 = a1[4];
  QLRunInMainThread();

  objc_destroyWeak(&v4);
}

void __71__QLTransitionController_setUpWithTransitionContext_completionHandler___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setTransitionState:1];

  v3 = MEMORY[0x277D75D18];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __71__QLTransitionController_setUpWithTransitionContext_completionHandler___block_invoke_3;
  v17[3] = &unk_278B57858;
  objc_copyWeak(&v18, (a1 + 48));
  [v3 animateWithDuration:v17 animations:0.2];
  v4 = objc_loadWeakRetained((a1 + 48));
  v5 = [v4 showing];

  if (v5)
  {
    v6 = objc_loadWeakRetained((a1 + 48));
    [v6 updateTransitionWithProgress:0.0];
  }

  v7 = MEMORY[0x277D43EF8];
  v8 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v8 = *v7;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = objc_loadWeakRetained((a1 + 48));
    *buf = 138412290;
    v20 = v10;
    _os_log_impl(&dword_23A714000, v9, OS_LOG_TYPE_INFO, "QLTransitionController (%@) setup is done, calling handler to perform transition. #AppearanceTransition", buf, 0xCu);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))();
  }

  v12 = objc_loadWeakRetained((a1 + 48));
  v13 = [v12 quickLookTransitionContext];
  v14 = [v13 sourceView];
  [v14 setHidden:1];

  v15 = objc_loadWeakRetained((a1 + 48));
  LODWORD(v13) = [v15 showing];

  if (v13)
  {
    [*(a1 + 32) setHidden:0];
  }

  objc_destroyWeak(&v18);
  v16 = *MEMORY[0x277D85DE8];
}

void __71__QLTransitionController_setUpWithTransitionContext_completionHandler___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained previewController];
  [v1 setNeedsStatusBarAppearanceUpdate];
}

void __71__QLTransitionController_setUpWithTransitionContext_completionHandler___block_invoke_7(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D43EF8];
  v3 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v3 = *v2;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v14 = v4;
    _os_log_impl(&dword_23A714000, v3, OS_LOG_TYPE_INFO, "QLTransitionController (%@) is notifying preview collection about transition #AppearanceTransition", buf, 0xCu);
  }

  v5 = [*(a1 + 32) previewController];
  v6 = [v5 previewCollection];
  v7 = [*(a1 + 32) quickLookTransitionContext];
  v8 = *(a1 + 32);
  v9 = [v8 showing];
  v10 = *(a1 + 40);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__QLTransitionController_setUpWithTransitionContext_completionHandler___block_invoke_8;
  v12[3] = &unk_278B57190;
  v12[4] = *(a1 + 32);
  [v6 startTransitionWithSourceViewProvider:v7 transitionController:v8 presenting:v9 useInteractiveTransition:v10 completionHandler:v12];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_prepareTimedForcedDismissal
{
  previewController = [(QLTransitionController *)self previewController];
  currentAnimator = [previewController currentAnimator];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ([(QLTransitionController *)self showing]|| (isKindOfClass & 1) != 0)
  {
    [QLTransitionController _prepareTimedForcedDismissal];
  }

  objc_initWeak(&location, self);
  v6 = dispatch_time(0, 5000000000);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__QLTransitionController__prepareTimedForcedDismissal__block_invoke;
  v7[3] = &unk_278B57858;
  objc_copyWeak(&v8, &location);
  dispatch_after(v6, MEMORY[0x277D85CD0], v7);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __54__QLTransitionController__prepareTimedForcedDismissal__block_invoke(uint64_t a1)
{
  objc_copyWeak(&v1, (a1 + 32));
  QLRunInMainThread();
  objc_destroyWeak(&v1);
}

void __54__QLTransitionController__prepareTimedForcedDismissal__block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v3 = MEMORY[0x277D43EF8];
    v4 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v4 = *v3;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = objc_loadWeakRetained((a1 + 32));
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_23A714000, v5, OS_LOG_TYPE_ERROR, "Forced dismissal of QLPreviewController after timeout with animator: %@ #PreviewController", &v9, 0xCu);
    }

    v7 = objc_loadWeakRetained((a1 + 32));
    [v7 _performForcedDismissal];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_performStartBlockIfNeeded
{
  startTransitionBlock = self->_startTransitionBlock;
  if (startTransitionBlock)
  {
    startTransitionBlock[2](startTransitionBlock, a2);
    v4 = self->_startTransitionBlock;
    self->_startTransitionBlock = 0;
  }
}

void __45__QLTransitionController_tearDownTransition___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D43EF8];
  v3 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v3 = *v2;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_23A714000, v3, OS_LOG_TYPE_INFO, "About to tearDownTransition with remote previewCollection #AppearanceTransition", v5, 2u);
  }

  v4 = [*(a1 + 32) previewCollection];
  [v4 tearDownTransition:*(a1 + 40)];
}

- (UIViewController)presenterViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionContext);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_transitionContext);
    WeakRetained = [v4 viewControllerForKey:*MEMORY[0x277D77230]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = objc_loadWeakRetained(&self->_transitionContext);
      v6 = [v5 viewControllerForKey:*MEMORY[0x277D77240]];

      WeakRetained = v6;
    }
  }

  return WeakRetained;
}

- (QLPreviewController)previewController
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionContext);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_transitionContext);
    WeakRetained = [v4 viewControllerForKey:*MEMORY[0x277D77230]];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = objc_loadWeakRetained(&self->_transitionContext);
      v6 = [v5 viewControllerForKey:*MEMORY[0x277D77240]];

      WeakRetained = v6;
    }
  }

  return WeakRetained;
}

- (void)_performTransition
{
  if (![(QLTransitionController *)self hasPerformedTransition])
  {
    [(QLTransitionController *)self setHasPerformedTransition:1];
    v3 = MEMORY[0x277D75D18];
    WeakRetained = objc_loadWeakRetained(&self->_transitionContext);
    [(QLTransitionController *)self transitionDuration:WeakRetained];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __44__QLTransitionController__performTransition__block_invoke;
    v6[3] = &unk_278B57190;
    v6[4] = self;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __44__QLTransitionController__performTransition__block_invoke_2;
    v5[3] = &unk_278B571B8;
    v5[4] = self;
    [v3 animateWithDuration:v6 animations:v5 completion:?];
  }
}

uint64_t __44__QLTransitionController__performTransition__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) completeTransition:1];
  v2 = *(a1 + 32);

  return [v2 tearDownTransition:1];
}

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  objc_storeWeak(&self->_transitionContext, transitionCopy);
  objc_initWeak(&location, self);
  previewController = [(QLTransitionController *)self previewController];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__QLTransitionController_animateTransition___block_invoke;
  v6[3] = &unk_278B578F0;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  [previewController waitForPreviewCollectionWithCompletionHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __44__QLTransitionController_animateTransition___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained((*(a1 + 32) + 56));
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__QLTransitionController_animateTransition___block_invoke_2;
  v4[3] = &unk_278B57858;
  objc_copyWeak(&v5, (a1 + 40));
  [WeakRetained setUpWithTransitionContext:v3 completionHandler:v4];

  objc_destroyWeak(&v5);
}

void __44__QLTransitionController_animateTransition___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _performTransition];
}

uint64_t __55__QLTransitionController_updateTransitionWithProgress___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateOverlayTransitionWithProgress:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _updateBackgroundTransitionWithProgress:v3];
}

- ($9F4668F2352A2F7A80B9EC1B630AA830)_requiredVisualStateTransitions
{
  previewController = [(QLTransitionController *)self previewController];
  presentationMode = [previewController presentationMode];

  previewController2 = [(QLTransitionController *)self previewController];
  presentationMode2 = [previewController2 presentationMode];

  previewController3 = [(QLTransitionController *)self previewController];
  fullScreen = [previewController3 fullScreen];

  previewController4 = [(QLTransitionController *)self previewController];
  previousNavigationVCState = [previewController4 previousNavigationVCState];
  toolBarHidden = [previousNavigationVCState toolBarHidden];

  previewController5 = [(QLTransitionController *)self previewController];
  toolbarController = [previewController5 toolbarController];
  isOriginalToolbarHidden = [toolbarController isOriginalToolbarHidden];

  previewController6 = [(QLTransitionController *)self previewController];
  toolbarController2 = [previewController6 toolbarController];
  isAccessoryViewHidden = [toolbarController2 isAccessoryViewHidden];

  v18 = isOriginalToolbarHidden ^ 1;
  v19 = 0x10000000000;
  if (presentationMode == 2)
  {
    v20 = 1;
    v21 = 0x1000000;
  }

  else
  {
    if ((fullScreen & (presentationMode2 != 1)) == 0)
    {
      v19 = 0;
    }

    if (fullScreen & (presentationMode2 != 1) | v18 & 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = 0;
      v19 = 0x10000000000;
      if ((toolBarHidden | isAccessoryViewHidden))
      {
        v19 = 0;
      }
    }

    v20 = fullScreen;
  }

  v22 = presentationMode2 == 1;
  v23 = v20 | toolBarHidden | v18 | isAccessoryViewHidden;
  v24 = 0x100000000;
  if (v23)
  {
    v24 = 0;
  }

  v25 = 0x10000;
  if (v20 & 1 | ((toolBarHidden & 1) == 0) | isAccessoryViewHidden & isOriginalToolbarHidden & 1)
  {
    v25 = 0;
  }

  v26 = 256;
  if (((v20 | isOriginalToolbarHidden) | (toolBarHidden | isAccessoryViewHidden)))
  {
    v26 = 0;
  }

  v27 = (v23 & 1) == 0;
  v28 = 0x1000000000000;
  if (toolBarHidden)
  {
    v28 = 0;
  }

  v29 = v22 & fullScreen;
  if ((v22 & fullScreen) != 0)
  {
    v30 = v28;
  }

  else
  {
    v30 = 0;
  }

  v31 = (v20 & 1) == 0;
  v32 = 0x100000000000000;
  if (v31)
  {
    v32 = 0;
  }

  v33 = v21 | v32 | v19 | v30 | v25 | v24 | v26 | v27;
  result.var0 = v33;
  result.var1 = BYTE1(v33);
  result.var2 = BYTE2(v33);
  result.var3 = BYTE3(v33);
  result.var4 = BYTE4(v33);
  result.var5 = BYTE5(v33);
  result.var6 = BYTE6(v33);
  result.var7 = HIBYTE(v33);
  result.var8 = v29;
  return result;
}

- (void)_updateOverlayTransitionWithProgress:(double)progress
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D43EF8];
  v6 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v6 = *v5;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v60 = 134217984;
    progressCopy = progress;
    _os_log_impl(&dword_23A714000, v6, OS_LOG_TYPE_INFO, "QLTransitionController is updating overlay with progress:%f #AppearanceTransition", &v60, 0xCu);
  }

  _requiredVisualStateTransitions = [(QLTransitionController *)self _requiredVisualStateTransitions];
  v8 = _requiredVisualStateTransitions;
  v10 = v9;
  if (_requiredVisualStateTransitions)
  {
    if ([(QLTransitionController *)self showing])
    {
      progressCopy2 = 1.0 - progress;
    }

    else
    {
      progressCopy2 = progress;
    }

    previewController = [(QLTransitionController *)self previewController];
    toolbarController = [previewController toolbarController];
    [toolbarController setAccessoryViewAlpha:progressCopy2];

    if ((v8 & 0x100) == 0)
    {
LABEL_7:
      if ((v8 & 0x10000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  else if ((_requiredVisualStateTransitions & 0x100) == 0)
  {
    goto LABEL_7;
  }

  previewController2 = [(QLTransitionController *)self previewController];
  toolbarController2 = [previewController2 toolbarController];
  showing = [(QLTransitionController *)self showing];
  progressCopy3 = 1.0 - progress;
  if (!showing)
  {
    progressCopy3 = progress;
  }

  [toolbarController2 setAccessoryViewHiddenProgress:progressCopy3];

  previewController3 = [(QLTransitionController *)self previewController];
  toolbarController3 = [previewController3 toolbarController];
  [toolbarController3 updateLayout];

  if ((v8 & 0x10000) == 0)
  {
LABEL_8:
    if ((v8 & 0x1000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_20;
  }

LABEL_17:
  previewController4 = [(QLTransitionController *)self previewController];
  toolbarController4 = [previewController4 toolbarController];
  originalToolbar = [toolbarController4 originalToolbar];
  [originalToolbar _removeAllAnimations:1];

  previewController5 = [(QLTransitionController *)self previewController];
  toolbarController5 = [previewController5 toolbarController];
  showing2 = [(QLTransitionController *)self showing];
  progressCopy4 = 1.0 - progress;
  if (!showing2)
  {
    progressCopy4 = progress;
  }

  [toolbarController5 setHiddenProgress:progressCopy4];

  previewController6 = [(QLTransitionController *)self previewController];
  toolbarController6 = [previewController6 toolbarController];
  [toolbarController6 updateLayout];

  if ((v8 & 0x1000000) != 0)
  {
LABEL_20:
    if ([(QLTransitionController *)self showing])
    {
      progressCopy5 = progress;
    }

    else
    {
      progressCopy5 = 1.0 - progress;
    }

    previewController7 = [(QLTransitionController *)self previewController];
    toolbarController7 = [previewController7 toolbarController];
    [toolbarController7 setToolbarAlpha:progressCopy5];

    previewController8 = [(QLTransitionController *)self previewController];
    LOBYTE(toolbarController7) = [previewController8 fullScreen];

    if ((toolbarController7 & 1) == 0)
    {
      if ([(QLTransitionController *)self showing])
      {
        progressCopy6 = progress;
      }

      else
      {
        progressCopy6 = 1.0 - progress;
      }

      previewController9 = [(QLTransitionController *)self previewController];
      [previewController9 setToolbarGradientAlpha:progressCopy6];
    }
  }

LABEL_28:
  if ((v8 & 0x10000000000) != 0)
  {
    previewController10 = [(QLTransitionController *)self previewController];
    toolbarController8 = [previewController10 toolbarController];
    originalToolbar2 = [toolbarController8 originalToolbar];
    [originalToolbar2 _removeAllAnimations:1];

    if ([(QLTransitionController *)self showing])
    {
      progressCopy7 = progress;
    }

    else
    {
      progressCopy7 = 1.0 - progress;
    }

    previewController11 = [(QLTransitionController *)self previewController];
    toolbarController9 = [previewController11 toolbarController];
    [toolbarController9 setOriginalToolbarAlpha:progressCopy7];

    if ((v8 & 0x1000000000000) == 0)
    {
LABEL_30:
      if ((v8 & 0x100000000000000) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_40;
    }
  }

  else if ((v8 & 0x1000000000000) == 0)
  {
    goto LABEL_30;
  }

  previewController12 = [(QLTransitionController *)self previewController];
  toolbarController10 = [previewController12 toolbarController];
  [toolbarController10 restoreOriginalConfiguration];

  previewController13 = [(QLTransitionController *)self previewController];
  toolbarController11 = [previewController13 toolbarController];
  originalToolbar3 = [toolbarController11 originalToolbar];
  [originalToolbar3 _removeAllAnimations:1];

  if ([(QLTransitionController *)self showing])
  {
    progressCopy8 = 1.0 - progress;
  }

  else
  {
    progressCopy8 = progress;
  }

  previewController14 = [(QLTransitionController *)self previewController];
  toolbarController12 = [previewController14 toolbarController];
  [toolbarController12 setOriginalToolbarAlpha:progressCopy8];

  if ((v8 & 0x100000000000000) == 0)
  {
    goto LABEL_48;
  }

LABEL_40:
  if ([(QLTransitionController *)self showing])
  {
    progressCopy9 = progress;
  }

  else
  {
    progressCopy9 = 1.0 - progress;
  }

  previewController15 = [(QLTransitionController *)self previewController];
  internalNavigationController = [previewController15 internalNavigationController];
  navigationBar = [internalNavigationController navigationBar];
  [navigationBar setAlpha:progressCopy9];

  previewController16 = [(QLTransitionController *)self previewController];
  LOBYTE(internalNavigationController) = [previewController16 fullScreen];

  if ((internalNavigationController & 1) == 0)
  {
    if ([(QLTransitionController *)self showing])
    {
      progressCopy10 = progress;
    }

    else
    {
      progressCopy10 = 1.0 - progress;
    }

    previewController17 = [(QLTransitionController *)self previewController];
    [previewController17 setNavigationBarGradientAlpha:progressCopy10];
  }

LABEL_48:
  if (v10)
  {
    presenterViewController = [(QLTransitionController *)self presenterViewController];
    navigationController = [presenterViewController navigationController];
    navigationBar2 = [navigationController navigationBar];
    [navigationBar2 setAlpha:progress];
  }

  v59 = *MEMORY[0x277D85DE8];
}

- (void)_updateBackgroundTransitionWithProgress:(double)progress
{
  showing = [(QLTransitionController *)self showing];
  progressCopy = 1.0 - progress;
  if (showing)
  {
    progressCopy = progress;
  }

  transitionBackgroundView = self->_transitionBackgroundView;

  [(UIView *)transitionBackgroundView setAlpha:progressCopy];
}

- (void)_completeOverlayTransition:(BOOL)transition
{
  transitionCopy = transition;
  _requiredVisualStateTransitions = [(QLTransitionController *)self _requiredVisualStateTransitions];
  v6 = _requiredVisualStateTransitions;
  if (_requiredVisualStateTransitions)
  {
    previewController = [(QLTransitionController *)self previewController];
    toolbarController = [previewController toolbarController];
    [toolbarController setAccessoryViewAlpha:1.0];

    if ((v6 & 0x100) == 0)
    {
LABEL_3:
      if ((v6 & 0x10000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((_requiredVisualStateTransitions & 0x100) == 0)
  {
    goto LABEL_3;
  }

  showing = [(QLTransitionController *)self showing];
  previewController2 = [(QLTransitionController *)self previewController];
  toolbarController2 = [previewController2 toolbarController];
  [toolbarController2 setAccessoryViewHidden:showing ^ transitionCopy];

  previewController3 = [(QLTransitionController *)self previewController];
  toolbarController3 = [previewController3 toolbarController];
  [toolbarController3 updateLayout];

  if ((v6 & 0x10000) == 0)
  {
LABEL_4:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  showing2 = [(QLTransitionController *)self showing];
  previewController4 = [(QLTransitionController *)self previewController];
  toolbarController4 = [previewController4 toolbarController];
  [toolbarController4 setHidden:showing2 ^ transitionCopy];

  previewController5 = [(QLTransitionController *)self previewController];
  toolbarController5 = [previewController5 toolbarController];
  [toolbarController5 updateLayout];

  if ((v6 & 0x1000000) == 0)
  {
LABEL_5:
    if ((v6 & 0x10000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_11:
  if ([(QLTransitionController *)self showing]!= transitionCopy)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = 1.0;
  }

  previewController6 = [(QLTransitionController *)self previewController];
  toolbarController6 = [previewController6 toolbarController];
  [toolbarController6 setToolbarAlpha:v19];

  if ((v6 & 0x10000000000) == 0)
  {
LABEL_6:
    if ((v6 & 0x100000000000000) == 0)
    {
      return;
    }

    goto LABEL_19;
  }

LABEL_15:
  previewController7 = [(QLTransitionController *)self previewController];
  toolbarController7 = [previewController7 toolbarController];
  originalToolbar = [toolbarController7 originalToolbar];
  [originalToolbar _removeAllAnimations:1];

  if ([(QLTransitionController *)self showing]!= transitionCopy)
  {
    v25 = 0.0;
  }

  else
  {
    v25 = 1.0;
  }

  previewController8 = [(QLTransitionController *)self previewController];
  toolbarController8 = [previewController8 toolbarController];
  [toolbarController8 setOriginalToolbarAlpha:v25];

  if ((v6 & 0x100000000000000) != 0)
  {
LABEL_19:
    if ([(QLTransitionController *)self showing]!= transitionCopy)
    {
      v28 = 0.0;
    }

    else
    {
      v28 = 1.0;
    }

    previewController9 = [(QLTransitionController *)self previewController];
    internalNavigationController = [previewController9 internalNavigationController];
    navigationBar = [internalNavigationController navigationBar];
    [navigationBar setAlpha:v28];
  }
}

- (void)_completeBackgroundTransition:(BOOL)transition
{
  transitionCopy = transition;
  showing = [(QLTransitionController *)self showing];
  v6 = 1.0;
  if (showing != transitionCopy)
  {
    v6 = 0.0;
  }

  transitionBackgroundView = self->_transitionBackgroundView;

  [(UIView *)transitionBackgroundView setAlpha:v6];
}

- (void)_view:(id)_view applyFrameFromTransitionContextAsFinalFrame:(BOOL)frame isToView:(BOOL)view
{
  viewCopy = view;
  _viewCopy = _view;
  v8 = MEMORY[0x277D77240];
  if (!viewCopy)
  {
    v8 = MEMORY[0x277D77230];
  }

  v9 = *v8;
  transitionContext = [(QLTransitionController *)self transitionContext];
  transitionContext2 = [(QLTransitionController *)self transitionContext];
  v12 = [transitionContext2 viewControllerForKey:v9];
  if (frame)
  {
    [transitionContext finalFrameForViewController:v12];
  }

  else
  {
    [transitionContext initialFrameForViewController:v12];
  }

  v17 = v13;
  v18 = v14;
  v19 = v15;
  v20 = v16;

  v23.origin.x = v17;
  v23.origin.y = v18;
  v23.size.width = v19;
  v23.size.height = v20;
  if (!CGRectEqualToRect(v23, *MEMORY[0x277CBF3A0]))
  {
    [_viewCopy setFrame:{v17, v18, v19, v20}];
  }
}

- (BOOL)forceDismissalIfNeeded
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(QLTransitionController *)self showing])
  {
    goto LABEL_2;
  }

  if (![(QLTransitionController *)self hasPerformedTransition])
  {
    setupDate = [(QLTransitionController *)self setupDate];
    [setupDate timeIntervalSinceNow];
    v8 = v7;

    if (v8 < -5.0)
    {
      [(QLTransitionController *)self _performForcedDismissal];
      LOBYTE(v3) = 1;
      goto LABEL_3;
    }

    goto LABEL_2;
  }

  v5 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    v9 = MEMORY[0x277D43EF8];
    QLSInitLogging();
    v5 = *v9;
  }

  v3 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v3)
  {
    v11 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_23A714000, v5, OS_LOG_TYPE_INFO, "QLTransitionController (%@) did not perform forced dismissal because dismissal has already been performed successfully. #AppearanceTransition", &v11, 0xCu);
LABEL_2:
    LOBYTE(v3) = 0;
  }

LABEL_3:
  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)_performForcedDismissal
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D43EF8];
  v4 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v4 = *v3;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_23A714000, v4, OS_LOG_TYPE_FAULT, "QLTransitionController (%@) had to performed a forced dismissal. #AppearanceTransition", buf, 0xCu);
  }

  if ([(QLTransitionController *)self showing])
  {
    [QLTransitionController _performForcedDismissal];
  }

  QLRunInMainThread();
  v5 = *MEMORY[0x277D85DE8];
}

- (UIViewControllerContextTransitioning)transitionContext
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionContext);

  return WeakRetained;
}

@end