@interface QLTransitionController
- ($9F4668F2352A2F7A80B9EC1B630AA830)_requiredVisualStateTransitions;
- (BOOL)forceDismissalIfNeeded;
- (QLPreviewController)previewController;
- (UIViewController)presenterViewController;
- (UIViewControllerContextTransitioning)transitionContext;
- (void)_completeBackgroundTransition:(BOOL)a3;
- (void)_completeOverlayTransition:(BOOL)a3;
- (void)_performForcedDismissal;
- (void)_performStartBlockIfNeeded;
- (void)_performTransition;
- (void)_prepareTimedForcedDismissal;
- (void)_updateBackgroundTransitionWithProgress:(double)a3;
- (void)_updateOverlayTransitionWithProgress:(double)a3;
- (void)_view:(id)a3 applyFrameFromTransitionContextAsFinalFrame:(BOOL)a4 isToView:(BOOL)a5;
- (void)animateTransition:(id)a3;
- (void)setUpWithTransitionContext:(id)a3 completionHandler:(id)a4;
@end

@implementation QLTransitionController

- (void)setUpWithTransitionContext:(id)a3 completionHandler:(id)a4
{
  v82 = *MEMORY[0x277D85DE8];
  v72 = a3;
  v6 = a4;
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
    v79 = self;
    v80 = 2112;
    v81 = v72;
    _os_log_impl(&dword_23A714000, v8, OS_LOG_TYPE_INFO, "QLTransitionController (%@) is being setup (%@). #AppearanceTransition", buf, 0x16u);
  }

  v9 = [MEMORY[0x277CBEAA8] date];
  [(QLTransitionController *)self setSetupDate:v9];

  [(QLTransitionController *)self setTransitionContext:v73];
  if (_os_feature_enabled_impl())
  {
    v10 = [(QLTransitionController *)self previewController];
    [v10 updateStatusBarAnimated:0];

    v11 = [(QLTransitionController *)self previewController];
    v12 = [v11 view];
    [v12 layoutIfNeeded];
  }

  v13 = [(QLTransitionController *)self previewController];
  v14 = [v13 delegate];
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

    v17 = [(QLTransitionController *)self previewController];
    v18 = [v17 delegate];
    v19 = [(QLTransitionController *)self previewController];
    [v18 previewController:v19 willTransitionToState:v16];
  }

  v20 = [(QLTransitionController *)self transitionContext];
  v21 = [v20 containerView];

  v22 = [(QLTransitionController *)self transitionContext];
  v23 = [v22 viewForKey:*MEMORY[0x277D77248]];

  v24 = [(QLTransitionController *)self transitionContext];
  v25 = [v24 viewForKey:*MEMORY[0x277D77238]];

  if ([(QLTransitionController *)self showing])
  {
    [v21 addSubview:v23];
    [v23 setHidden:1];
  }

  else
  {
    v26 = [(QLTransitionController *)self previewController];
    v27 = [v26 view];
    [v21 insertSubview:v23 below:v27];
  }

  [(QLTransitionController *)self _view:v25 applyFrameFromTransitionContextAsFinalFrame:0 isToView:0];
  [(QLTransitionController *)self _view:v23 applyFrameFromTransitionContextAsFinalFrame:1 isToView:1];
  v28 = [QLTransitionContext alloc];
  v29 = [(QLTransitionController *)self previewController];
  v30 = [(QLTransitionController *)self transitionContext];
  v31 = [v30 viewControllerForKey:*MEMORY[0x277D77240]];
  v32 = [(QLTransitionContext *)v28 initWithQLPreviewController:v29 containerView:v21 toViewController:v31];
  [(QLTransitionController *)self setQuickLookTransitionContext:v32];

  v33 = [MEMORY[0x277D75348] clearColor];
  v34 = [(QLTransitionController *)self previewController];
  v35 = [v34 view];
  [v35 setBackgroundColor:v33];

  v36 = objc_alloc(MEMORY[0x277D75D18]);
  [v21 bounds];
  v37 = [v36 initWithFrame:?];
  transitionBackgroundView = self->_transitionBackgroundView;
  self->_transitionBackgroundView = v37;

  v39 = [(QLTransitionController *)self previewController];
  v40 = [v39 _preferredBackgroundColor];
  [(UIView *)self->_transitionBackgroundView setBackgroundColor:v40];

  v41 = self->_transitionBackgroundView;
  v42 = [(QLTransitionController *)self previewController];
  v43 = [v42 view];
  [v21 insertSubview:v41 below:v43];

  v44 = [(QLTransitionController *)self previewController];
  v45 = [v44 presentationMode] == 1;

  if (v45)
  {
    v46 = [(QLTransitionController *)self previewController];
    if ([v46 fullScreen])
    {
      v47 = [(QLTransitionController *)self showing];

      if (v47)
      {
LABEL_20:
        v52 = [(QLTransitionController *)self previewController];
        v53 = [v52 internalNavigationController];
        disabledNavigationController = self->_disabledNavigationController;
        self->_disabledNavigationController = v53;

        v55 = [(UINavigationController *)self->_disabledNavigationController view];
        [v55 setUserInteractionEnabled:0];

        goto LABEL_21;
      }

      v48 = [(QLTransitionController *)self previewController];
      v49 = [v48 navigationController];
      v50 = [v49 navigationBar];
      [v50 setAlpha:0.01];

      v46 = [(QLTransitionController *)self previewController];
      v51 = [v46 toolbarController];
      [v51 setOriginalToolbarAlpha:0.0];
    }

    goto LABEL_20;
  }

LABEL_21:
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v56 = [(QLTransitionController *)self previewController];
    [v56 updateStatusBarAnimated:1];
  }

  [(QLTransitionController *)self updateTransitionWithProgress:0.0];
  objc_initWeak(buf, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __71__QLTransitionController_setUpWithTransitionContext_completionHandler___block_invoke;
  aBlock[3] = &unk_278B578C8;
  objc_copyWeak(&v77, buf);
  v57 = v6;
  v76 = v57;
  v58 = v23;
  v75 = v58;
  v59 = _Block_copy(aBlock);
  startTransitionBlock = self->_startTransitionBlock;
  self->_startTransitionBlock = v59;

  v61 = [(QLTransitionController *)self previewController];
  v62 = [v61 currentAnimator];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((([(QLTransitionController *)self showing]| isKindOfClass) & 1) == 0)
  {
    [(QLTransitionController *)self _prepareTimedForcedDismissal];
  }

  v64 = [(QLTransitionController *)self previewController];
  v65 = [v64 previewCollection];
  v66 = [v65 isAvailable];

  if (v66)
  {
    v67 = [(QLTransitionController *)self previewController];
    v68 = [v67 previewCollection];
    v69 = [v68 isRemote];

    if (v69)
    {
      v70 = [(QLTransitionController *)self quickLookTransitionContext];
      [v70 prepareContextToSend];
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
  v3 = [(QLTransitionController *)self previewController];
  v4 = [v3 currentAnimator];
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

- (void)animateTransition:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_transitionContext, v4);
  objc_initWeak(&location, self);
  v5 = [(QLTransitionController *)self previewController];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__QLTransitionController_animateTransition___block_invoke;
  v6[3] = &unk_278B578F0;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  [v5 waitForPreviewCollectionWithCompletionHandler:v6];

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
  v3 = [(QLTransitionController *)self previewController];
  v4 = [v3 presentationMode];

  v5 = [(QLTransitionController *)self previewController];
  v6 = [v5 presentationMode];

  v7 = [(QLTransitionController *)self previewController];
  v8 = [v7 fullScreen];

  v9 = [(QLTransitionController *)self previewController];
  v10 = [v9 previousNavigationVCState];
  v11 = [v10 toolBarHidden];

  v12 = [(QLTransitionController *)self previewController];
  v13 = [v12 toolbarController];
  v14 = [v13 isOriginalToolbarHidden];

  v15 = [(QLTransitionController *)self previewController];
  v16 = [v15 toolbarController];
  v17 = [v16 isAccessoryViewHidden];

  v18 = v14 ^ 1;
  v19 = 0x10000000000;
  if (v4 == 2)
  {
    v20 = 1;
    v21 = 0x1000000;
  }

  else
  {
    if ((v8 & (v6 != 1)) == 0)
    {
      v19 = 0;
    }

    if (v8 & (v6 != 1) | v18 & 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = 0;
      v19 = 0x10000000000;
      if ((v11 | v17))
      {
        v19 = 0;
      }
    }

    v20 = v8;
  }

  v22 = v6 == 1;
  v23 = v20 | v11 | v18 | v17;
  v24 = 0x100000000;
  if (v23)
  {
    v24 = 0;
  }

  v25 = 0x10000;
  if (v20 & 1 | ((v11 & 1) == 0) | v17 & v14 & 1)
  {
    v25 = 0;
  }

  v26 = 256;
  if (((v20 | v14) | (v11 | v17)))
  {
    v26 = 0;
  }

  v27 = (v23 & 1) == 0;
  v28 = 0x1000000000000;
  if (v11)
  {
    v28 = 0;
  }

  v29 = v22 & v8;
  if ((v22 & v8) != 0)
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

- (void)_updateOverlayTransitionWithProgress:(double)a3
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
    v61 = a3;
    _os_log_impl(&dword_23A714000, v6, OS_LOG_TYPE_INFO, "QLTransitionController is updating overlay with progress:%f #AppearanceTransition", &v60, 0xCu);
  }

  v7 = [(QLTransitionController *)self _requiredVisualStateTransitions];
  v8 = v7;
  v10 = v9;
  if (v7)
  {
    if ([(QLTransitionController *)self showing])
    {
      v11 = 1.0 - a3;
    }

    else
    {
      v11 = a3;
    }

    v12 = [(QLTransitionController *)self previewController];
    v13 = [v12 toolbarController];
    [v13 setAccessoryViewAlpha:v11];

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

  else if ((v7 & 0x100) == 0)
  {
    goto LABEL_7;
  }

  v14 = [(QLTransitionController *)self previewController];
  v15 = [v14 toolbarController];
  v16 = [(QLTransitionController *)self showing];
  v17 = 1.0 - a3;
  if (!v16)
  {
    v17 = a3;
  }

  [v15 setAccessoryViewHiddenProgress:v17];

  v18 = [(QLTransitionController *)self previewController];
  v19 = [v18 toolbarController];
  [v19 updateLayout];

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
  v20 = [(QLTransitionController *)self previewController];
  v21 = [v20 toolbarController];
  v22 = [v21 originalToolbar];
  [v22 _removeAllAnimations:1];

  v23 = [(QLTransitionController *)self previewController];
  v24 = [v23 toolbarController];
  v25 = [(QLTransitionController *)self showing];
  v26 = 1.0 - a3;
  if (!v25)
  {
    v26 = a3;
  }

  [v24 setHiddenProgress:v26];

  v27 = [(QLTransitionController *)self previewController];
  v28 = [v27 toolbarController];
  [v28 updateLayout];

  if ((v8 & 0x1000000) != 0)
  {
LABEL_20:
    if ([(QLTransitionController *)self showing])
    {
      v29 = a3;
    }

    else
    {
      v29 = 1.0 - a3;
    }

    v30 = [(QLTransitionController *)self previewController];
    v31 = [v30 toolbarController];
    [v31 setToolbarAlpha:v29];

    v32 = [(QLTransitionController *)self previewController];
    LOBYTE(v31) = [v32 fullScreen];

    if ((v31 & 1) == 0)
    {
      if ([(QLTransitionController *)self showing])
      {
        v33 = a3;
      }

      else
      {
        v33 = 1.0 - a3;
      }

      v34 = [(QLTransitionController *)self previewController];
      [v34 setToolbarGradientAlpha:v33];
    }
  }

LABEL_28:
  if ((v8 & 0x10000000000) != 0)
  {
    v35 = [(QLTransitionController *)self previewController];
    v36 = [v35 toolbarController];
    v37 = [v36 originalToolbar];
    [v37 _removeAllAnimations:1];

    if ([(QLTransitionController *)self showing])
    {
      v38 = a3;
    }

    else
    {
      v38 = 1.0 - a3;
    }

    v39 = [(QLTransitionController *)self previewController];
    v40 = [v39 toolbarController];
    [v40 setOriginalToolbarAlpha:v38];

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

  v41 = [(QLTransitionController *)self previewController];
  v42 = [v41 toolbarController];
  [v42 restoreOriginalConfiguration];

  v43 = [(QLTransitionController *)self previewController];
  v44 = [v43 toolbarController];
  v45 = [v44 originalToolbar];
  [v45 _removeAllAnimations:1];

  if ([(QLTransitionController *)self showing])
  {
    v46 = 1.0 - a3;
  }

  else
  {
    v46 = a3;
  }

  v47 = [(QLTransitionController *)self previewController];
  v48 = [v47 toolbarController];
  [v48 setOriginalToolbarAlpha:v46];

  if ((v8 & 0x100000000000000) == 0)
  {
    goto LABEL_48;
  }

LABEL_40:
  if ([(QLTransitionController *)self showing])
  {
    v49 = a3;
  }

  else
  {
    v49 = 1.0 - a3;
  }

  v50 = [(QLTransitionController *)self previewController];
  v51 = [v50 internalNavigationController];
  v52 = [v51 navigationBar];
  [v52 setAlpha:v49];

  v53 = [(QLTransitionController *)self previewController];
  LOBYTE(v51) = [v53 fullScreen];

  if ((v51 & 1) == 0)
  {
    if ([(QLTransitionController *)self showing])
    {
      v54 = a3;
    }

    else
    {
      v54 = 1.0 - a3;
    }

    v55 = [(QLTransitionController *)self previewController];
    [v55 setNavigationBarGradientAlpha:v54];
  }

LABEL_48:
  if (v10)
  {
    v56 = [(QLTransitionController *)self presenterViewController];
    v57 = [v56 navigationController];
    v58 = [v57 navigationBar];
    [v58 setAlpha:a3];
  }

  v59 = *MEMORY[0x277D85DE8];
}

- (void)_updateBackgroundTransitionWithProgress:(double)a3
{
  v5 = [(QLTransitionController *)self showing];
  v6 = 1.0 - a3;
  if (v5)
  {
    v6 = a3;
  }

  transitionBackgroundView = self->_transitionBackgroundView;

  [(UIView *)transitionBackgroundView setAlpha:v6];
}

- (void)_completeOverlayTransition:(BOOL)a3
{
  v3 = a3;
  v5 = [(QLTransitionController *)self _requiredVisualStateTransitions];
  v6 = v5;
  if (v5)
  {
    v7 = [(QLTransitionController *)self previewController];
    v8 = [v7 toolbarController];
    [v8 setAccessoryViewAlpha:1.0];

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

  else if ((v5 & 0x100) == 0)
  {
    goto LABEL_3;
  }

  v9 = [(QLTransitionController *)self showing];
  v10 = [(QLTransitionController *)self previewController];
  v11 = [v10 toolbarController];
  [v11 setAccessoryViewHidden:v9 ^ v3];

  v12 = [(QLTransitionController *)self previewController];
  v13 = [v12 toolbarController];
  [v13 updateLayout];

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
  v14 = [(QLTransitionController *)self showing];
  v15 = [(QLTransitionController *)self previewController];
  v16 = [v15 toolbarController];
  [v16 setHidden:v14 ^ v3];

  v17 = [(QLTransitionController *)self previewController];
  v18 = [v17 toolbarController];
  [v18 updateLayout];

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
  if ([(QLTransitionController *)self showing]!= v3)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = 1.0;
  }

  v20 = [(QLTransitionController *)self previewController];
  v21 = [v20 toolbarController];
  [v21 setToolbarAlpha:v19];

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
  v22 = [(QLTransitionController *)self previewController];
  v23 = [v22 toolbarController];
  v24 = [v23 originalToolbar];
  [v24 _removeAllAnimations:1];

  if ([(QLTransitionController *)self showing]!= v3)
  {
    v25 = 0.0;
  }

  else
  {
    v25 = 1.0;
  }

  v26 = [(QLTransitionController *)self previewController];
  v27 = [v26 toolbarController];
  [v27 setOriginalToolbarAlpha:v25];

  if ((v6 & 0x100000000000000) != 0)
  {
LABEL_19:
    if ([(QLTransitionController *)self showing]!= v3)
    {
      v28 = 0.0;
    }

    else
    {
      v28 = 1.0;
    }

    v31 = [(QLTransitionController *)self previewController];
    v29 = [v31 internalNavigationController];
    v30 = [v29 navigationBar];
    [v30 setAlpha:v28];
  }
}

- (void)_completeBackgroundTransition:(BOOL)a3
{
  v3 = a3;
  v5 = [(QLTransitionController *)self showing];
  v6 = 1.0;
  if (v5 != v3)
  {
    v6 = 0.0;
  }

  transitionBackgroundView = self->_transitionBackgroundView;

  [(UIView *)transitionBackgroundView setAlpha:v6];
}

- (void)_view:(id)a3 applyFrameFromTransitionContextAsFinalFrame:(BOOL)a4 isToView:(BOOL)a5
{
  v5 = a5;
  v21 = a3;
  v8 = MEMORY[0x277D77240];
  if (!v5)
  {
    v8 = MEMORY[0x277D77230];
  }

  v9 = *v8;
  v10 = [(QLTransitionController *)self transitionContext];
  v11 = [(QLTransitionController *)self transitionContext];
  v12 = [v11 viewControllerForKey:v9];
  if (a4)
  {
    [v10 finalFrameForViewController:v12];
  }

  else
  {
    [v10 initialFrameForViewController:v12];
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
    [v21 setFrame:{v17, v18, v19, v20}];
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
    v6 = [(QLTransitionController *)self setupDate];
    [v6 timeIntervalSinceNow];
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
    v12 = self;
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
    v7 = self;
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