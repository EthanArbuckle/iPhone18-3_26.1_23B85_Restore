@interface AVPresentationController
- (AVPresentationContainerView)presentedPresentationContainerView;
- (AVPresentationController)initWithPresentationController:(id)a3 presentedViewController:(id)a4 presentingViewController:(id)a5 withConfiguration:(id)a6;
- (BOOL)dismissed;
- (BOOL)dismissing;
- (BOOL)presented;
- (BOOL)presenting;
- (BOOL)shouldRemovePresentersView;
- (UIView)containerView;
- (UIViewController)presentedViewController;
- (UIViewController)presentingViewController;
- (UIWindow)presentationWindowForDisablingAutorotation;
- (id)presentedView;
- (void)_ensureOrientation:(int64_t)a3 enablingMixedOrientations:(BOOL)a4;
- (void)_observeSceneDidBecomeActiveForRestoringRotatability;
- (void)_prepareDismissingTransitionContext;
- (void)containerViewWillLayoutSubviews;
- (void)dealloc;
- (void)dismissalTransitionDidEnd:(BOOL)a3;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionDidEnd:(BOOL)a3;
- (void)presentationTransitionWillBegin;
@end

@implementation AVPresentationController

- (UIWindow)presentationWindowForDisablingAutorotation
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationWindowForDisablingAutorotation);

  return WeakRetained;
}

- (void)_observeSceneDidBecomeActiveForRestoringRotatability
{
  v2 = [(AVPresentationController *)self observationController];
  [v2 startObservingNotificationForName:*MEMORY[0x1E69DE338] object:0 notificationCenter:0 observationHandler:&__block_literal_global_14191];
}

void __80__AVPresentationController__observeSceneDidBecomeActiveForRestoringRotatability__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a4 object];
  v7 = [v5 context];
  v8 = [v7 presentedViewController];
  v9 = [v8 view];
  v10 = [v9 window];
  v11 = [v10 windowScene];

  if (v6 == v11)
  {
    v12 = _AVLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v5 presentationWindowForDisablingAutorotation];
      v19 = 136315394;
      v20 = "[AVPresentationController _observeSceneDidBecomeActiveForRestoringRotatability]_block_invoke";
      v21 = 2048;
      v22 = v13;
      _os_log_impl(&dword_18B49C000, v12, OS_LOG_TYPE_DEFAULT, "%s Enabling autorotation for window: %p", &v19, 0x16u);
    }

    [v5 setPresentationWindowForDisablingAutorotation:0];
    v14 = [v5 context];
    v15 = [v14 presentationWindow];
    v16 = [v15 windowScene];
    [v5 _ensureOrientation:objc_msgSend(v16 enablingMixedOrientations:{"interfaceOrientation"), 1}];

    v17 = [v5 context];
    v18 = [v17 presentedViewController];
    [v18 setNeedsUpdateOfSupportedInterfaceOrientations];
  }
}

- (void)dismissalTransitionDidEnd:(BOOL)a3
{
  v3 = a3;
  v32 = *MEMORY[0x1E69E9840];
  v5 = [(AVPresentationController *)self context];
  v6 = [v5 dismissingTransition];
  if ([v6 wasCancelledWithInactiveScene])
  {
    v7 = [(AVPresentationController *)self context];
    v8 = [v7 presentedViewController];
    v9 = [v8 view];
    v10 = [v9 window];
    v11 = [v10 windowScene];
    v12 = [v11 activationState] != 0;
  }

  else
  {
    v12 = 0;
  }

  v13 = _AVLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = "NO";
    *buf = 136315650;
    v27 = "[AVPresentationController dismissalTransitionDidEnd:]";
    v29 = "completed";
    v28 = 2080;
    if (v3)
    {
      v14 = "YES";
    }

    v30 = 2080;
    v31 = v14;
    _os_log_impl(&dword_18B49C000, v13, OS_LOG_TYPE_DEFAULT, "%s %s %s", buf, 0x20u);
  }

  v15 = [(AVPresentationController *)self context];
  v16 = [v15 dismissingTransition];
  v17 = [v16 hasAVKitAnimator];

  if (v17)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __54__AVPresentationController_dismissalTransitionDidEnd___block_invoke;
    v24[3] = &unk_1E7208B88;
    v24[4] = self;
    v25 = v3;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v24];
  }

  else if (!v3)
  {
    v18 = [(AVPresentationController *)self context];
    [v18 setDismissingTransition:0];
  }

  if (v12)
  {
    v19 = [(AVPresentationController *)self presentationWindowForDisablingAutorotation];

    if (!v19)
    {
      v20 = [(AVPresentationController *)self context];
      v21 = [v20 presentationWindow];
      [(AVPresentationController *)self setPresentationWindowForDisablingAutorotation:v21];

      v22 = _AVLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [(AVPresentationController *)self presentationWindowForDisablingAutorotation];
        *buf = 136315394;
        v27 = "[AVPresentationController dismissalTransitionDidEnd:]";
        v28 = 2048;
        v29 = v23;
        _os_log_impl(&dword_18B49C000, v22, OS_LOG_TYPE_DEFAULT, "%s Disabling autorotation for window: %p", buf, 0x16u);
      }
    }
  }
}

void __54__AVPresentationController_dismissalTransitionDidEnd___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 presentedPresentationContainerView];
  [v3 willBeginAdjustingOrientation];

  v4 = [*(a1 + 32) presentedView];
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  v61[0] = *MEMORY[0x1E695EFD0];
  v61[1] = v5;
  v61[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v4 setTransform:v61];

  if ((*(a1 + 40) & 1) == 0)
  {
    if ([*(a1 + 32) shouldRemovePresentersView])
    {
      v6 = [*(a1 + 32) presentingViewController];
      v7 = [v6 viewIfLoaded];
      v8 = [*(a1 + 32) containerView];
      v9 = [v7 isDescendantOfView:v8];

      if (v9)
      {
        v10 = [*(a1 + 32) presentingViewController];
        for (i = [v10 view];
        {
          v12 = i;

          v13 = [v12 superview];
          v14 = [*(a1 + 32) containerView];

          if (!v12 || v13 == v14)
          {
            break;
          }

          v10 = v12;
          [v12 superview];
        }

        [v12 removeFromSuperview];
      }
    }

    v15 = *(a1 + 32);
    v16 = [v15 context];
    v17 = [v16 dismissingTransition];
    [v15 _ensureOrientation:objc_msgSend(v17 enablingMixedOrientations:{"initialInterfaceOrientation"), 1}];

    v18 = [*(a1 + 32) containerView];
    [v18 bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v27 = [*(a1 + 32) presentedView];
    [v27 setFrame:{v20, v22, v24, v26}];

    v28 = [*(a1 + 32) containerView];
    [v28 bounds];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v37 = [*(a1 + 32) context];
    v38 = [v37 backgroundView];
    [v38 setFrame:{v30, v32, v34, v36}];

    v39 = [*(a1 + 32) containerView];
    [v39 bounds];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v48 = [*(a1 + 32) context];
    v49 = [v48 touchBlockingView];
    [v49 setFrame:{v41, v43, v45, v47}];

    v50 = [*(a1 + 32) context];
    v51 = [v50 rotatableWindowViewController];
    v52 = v51;
    if (v51)
    {
      [v51 avkit_setNeedsUpdatePreferencesIfNeeded];
    }

    else
    {
      v53 = [*(a1 + 32) context];
      v54 = [v53 presentedViewController];
      [v54 avkit_setNeedsUpdatePreferencesIfNeeded];
    }

    v55 = [*(a1 + 32) context];
    [v55 setDismissingTransition:0];
  }

  v56 = [*(a1 + 32) context];
  v57 = [v56 presentedPresentationContainerView];
  [v57 didStopTransition];

  if (*(a1 + 40) == 1)
  {
    v58 = [*(a1 + 32) context];
    v59 = [v58 rotatableSecondWindow];
    [v59 setHidden:1];

    v60 = [*(a1 + 32) context];
    [v60 setRotatableSecondWindow:0];
  }
}

- (void)_prepareDismissingTransitionContext
{
  v3 = objc_alloc_init(AVPresentationContextTransition);
  v4 = [(AVPresentationController *)self context];
  [v4 setDismissingTransition:v3];

  v5 = [(AVPresentationController *)self presentedViewController];
  v6 = [v5 transitionCoordinator];
  v7 = [v6 isInteractive];
  v8 = [(AVPresentationController *)self context];
  v9 = [v8 dismissingTransition];
  [v9 setWasInitiallyInteractive:v7];

  v10 = [(AVPresentationController *)self presentedViewController];
  v11 = [v10 transitioningDelegate];
  objc_opt_class();
  LOBYTE(v7) = objc_opt_isKindOfClass();
  v12 = [(AVPresentationController *)self context];
  v13 = [v12 dismissingTransition];
  [v13 setHasAVKitAnimator:v7 & 1];

  v14 = [(AVPresentationController *)self containerView];
  v15 = [v14 window];
  if ([v15 autorotates])
  {
    v16 = *MEMORY[0x1E69DDA98];
    v17 = [(AVPresentationController *)self containerView];
    v18 = [v17 window];
    v19 = [v16 _supportedInterfaceOrientationsForWindow:v18];
  }

  else
  {
    v17 = [(AVPresentationController *)self containerView];
    v18 = [v17 window];
    v19 = 1 << [v18 _windowInterfaceOrientation];
  }

  v20 = [(AVPresentationController *)self presentingViewController];
  if ([v20 shouldAutorotate])
  {
  }

  else
  {
    v21 = [(AVPresentationController *)self presentingViewController];
    v22 = [v21 supportedInterfaceOrientations];
    v23 = [(AVPresentationController *)self containerView];
    v24 = [v23 window];
    v25 = (1 << [v24 _windowInterfaceOrientation]) & ~v22;

    if (!v25)
    {
      v26 = [(AVPresentationController *)self containerView];
      v27 = [v26 window];
      v28 = 1 << [v27 _windowInterfaceOrientation];

      goto LABEL_9;
    }
  }

  v26 = [(AVPresentationController *)self presentingViewController];
  v28 = [v26 supportedInterfaceOrientations];
LABEL_9:

  v29 = [(AVPresentationController *)self context];
  v30 = [v29 dismissingTransition];
  [v30 setPresenterSupportedOrientations:v28 & v19];

  v31 = [(AVPresentationController *)self context];
  v32 = [v31 presentationWindow];
  v33 = [v32 windowScene];
  v34 = [v33 interfaceOrientation];
  v35 = [(AVPresentationController *)self context];
  v36 = [v35 dismissingTransition];
  [v36 setInitialInterfaceOrientation:v34];

  v41 = [(AVPresentationController *)self context];
  v37 = [v41 presentationWindow];
  v38 = [v37 interfaceOrientation];
  v39 = [(AVPresentationController *)self context];
  v40 = [v39 dismissingTransition];
  [v40 setFinalInterfaceOrientation:v38];
}

- (void)dismissalTransitionWillBegin
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = _AVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v34 = "[AVPresentationController dismissalTransitionWillBegin]";
    v35 = 1024;
    v36 = 252;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s %d", buf, 0x12u);
  }

  v4 = [(AVPresentationController *)self containerView];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(AVPresentationController *)self context];
  v14 = [v13 backgroundView];
  [v14 setFrame:{v6, v8, v10, v12}];

  v15 = [(AVPresentationController *)self containerView];
  [v15 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = [(AVPresentationController *)self context];
  v25 = [v24 touchBlockingView];
  [v25 setFrame:{v17, v19, v21, v23}];

  [(AVPresentationController *)self _prepareDismissingTransitionContext];
  v26 = [(AVPresentationController *)self context];
  v27 = [v26 dismissingTransition];
  LODWORD(v25) = [v27 hasAVKitAnimator];

  if (v25)
  {
    v28 = [(AVPresentationController *)self context];
    v29 = [v28 presentedPresentationContainerView];
    [v29 willBeginAdjustingOrientation];

    v30 = [(AVPresentationController *)self context];
    v31 = [v30 dismissingTransition];
    -[AVPresentationController _ensureOrientation:enablingMixedOrientations:](self, "_ensureOrientation:enablingMixedOrientations:", [v31 finalInterfaceOrientation], 0);

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __56__AVPresentationController_dismissalTransitionWillBegin__block_invoke;
    v32[3] = &unk_1E720A090;
    v32[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v32];
  }
}

void __56__AVPresentationController_dismissalTransitionWillBegin__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 rotatableSecondWindow];
  if (v3)
  {
    v4 = v3;
    v5 = [*(a1 + 32) presentingViewController];
    v6 = [v5 viewIfLoaded];
    v7 = [v6 _isInAWindow];

    if (!v7)
    {
      goto LABEL_5;
    }

    v8 = [*(a1 + 32) presentingViewController];
    v9 = [v8 view];
    [v9 _setViewDelegateContentOverlayInsetsAreClean:0];

    v10 = [*(a1 + 32) presentingViewController];
    v11 = [v10 view];
    [v11 setNeedsLayout];

    v12 = [*(a1 + 32) context];
    v13 = [v12 presentationWindow];
    [v13 setNeedsLayout];

    v2 = [*(a1 + 32) context];
    v14 = [v2 presentationWindow];
    [v14 layoutIfNeeded];
  }

LABEL_5:
  v15 = [*(a1 + 32) containerView];
  [v15 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = [*(a1 + 32) context];
  v25 = [v24 backgroundView];
  [v25 setFrame:{v17, v19, v21, v23}];

  v36 = [*(a1 + 32) containerView];
  [v36 bounds];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = [*(a1 + 32) context];
  v35 = [v34 touchBlockingView];
  [v35 setFrame:{v27, v29, v31, v33}];
}

- (void)_ensureOrientation:(int64_t)a3 enablingMixedOrientations:(BOOL)a4
{
  if (!a4)
  {
    v11 = [MEMORY[0x1E69DC888] clearColor];
    v12 = [(AVPresentationController *)self context];
    v13 = [v12 rotatableSecondWindow];
    [v13 setBackgroundColor:v11];

    v55 = [(AVPresentationController *)self context];
    v14 = [(AVFullScreenViewController *)v55 avFullScreenViewController];
    [v14 attachContentView];
    goto LABEL_10;
  }

  v5 = [(AVPresentationController *)self context];
  if ([v5 allowsSecondWindowPresentations])
  {
    v6 = [(AVPresentationController *)self context];
    if ([v6 wasInitiallyPresentedWithoutSecondWindow])
    {
LABEL_6:

      goto LABEL_7;
    }

    v7 = [(AVPresentationController *)self context];
    v8 = [v7 presentationWindow];
    v9 = [(AVPresentationController *)self context];
    v10 = [v9 presentedViewController];
    if ([v8 avkit_supportsAutorotationForInterfaceOrientationMask:{objc_msgSend(v10, "supportedInterfaceOrientations")}])
    {

      goto LABEL_6;
    }

    v15 = [(AVPresentationController *)self context];
    v16 = [v15 presentationWindow];
    v17 = [v16 avkit_canAttemptSecondWindowForRotability];

    if ((v17 & 1) == 0)
    {
      goto LABEL_8;
    }

    v18 = [(AVPresentationController *)self context];
    v19 = [v18 avFullScreenViewController];

    if (!v19)
    {
      return;
    }

    v20 = [(AVPresentationController *)self context];
    v21 = [v20 rotatableSecondWindow];
    [v21 setHidden:1];

    v22 = objc_alloc(MEMORY[0x1E69DD2E8]);
    v23 = [(AVPresentationController *)self containerView];
    v24 = [v23 window];
    v25 = [v24 windowScene];
    v26 = [v22 initWithWindowScene:v25];
    v27 = [(AVPresentationController *)self context];
    [v27 setRotatableSecondWindow:v26];

    v28 = [(AVPresentationController *)self context];
    v29 = [v28 presentationWindow];
    [v29 windowLevel];
    v31 = v30 + 1.0;

    if (v31 >= *MEMORY[0x1E69DE7F0])
    {
      v31 = *MEMORY[0x1E69DE7F0];
    }

    v32 = [(AVPresentationController *)self context];
    v33 = [v32 rotatableSecondWindow];
    [v33 setWindowLevel:v31];

    v55 = objc_alloc_init(AVFullScreenViewController);
    v34 = [(AVPresentationController *)self context];
    v35 = [v34 rotatableSecondWindow];
    [v35 setRootViewController:v55];

    v36 = [(AVPresentationController *)self context];
    v37 = [v36 avFullScreenViewController];
    v38 = [(AVPresentationController *)self context];
    v39 = [v38 rotatableWindowViewController];
    [v39 setSourceFullScreenViewController:v37];

    v40 = [(AVPresentationController *)self context];
    v41 = [v40 avFullScreenViewController];
    v42 = [v41 delegate];
    v43 = [(AVPresentationController *)self context];
    v44 = [v43 rotatableWindowViewController];
    [v44 setDelegate:v42];

    v45 = [(AVPresentationController *)self context];
    v46 = [v45 rotatableWindowViewController];
    v47 = [(AVPresentationController *)self context];
    v48 = [v47 avFullScreenViewController];
    [v48 setAssociatedFullScreenViewController:v46];

    v49 = [(AVPresentationController *)self context];
    v50 = [v49 rotatableSecondWindow];
    v51 = [v50 rootViewController];
    [v51 _setIgnoreAppSupportedOrientations:1];

    v52 = [(AVPresentationController *)self context];
    v53 = [v52 rotatableSecondWindow];
    [v53 setHidden:0];

    v14 = [(AVPresentationController *)self context];
    v54 = [v14 rotatableWindowViewController];
    [v54 attachContentView];

LABEL_10:
    goto LABEL_11;
  }

LABEL_7:

LABEL_8:
  v55 = [(AVPresentationController *)self context];
  [(AVFullScreenViewController *)v55 setWasInitiallyPresentedWithoutSecondWindow:1];
LABEL_11:
}

- (void)presentationTransitionDidEnd:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "NO";
    *buf = 136315650;
    v13 = "[AVPresentationController presentationTransitionDidEnd:]";
    v15 = "completed";
    v14 = 2080;
    if (v3)
    {
      v6 = "YES";
    }

    v16 = 2080;
    v17 = v6;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", buf, 0x20u);
  }

  v7 = [(AVPresentationController *)self context];
  v8 = [v7 presentingTransition];
  v9 = [v8 hasAVKitAnimator];

  if (v9)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__AVPresentationController_presentationTransitionDidEnd___block_invoke;
    v10[3] = &unk_1E7208B88;
    v10[4] = self;
    v11 = v3;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v10];
  }
}

void __57__AVPresentationController_presentationTransitionDidEnd___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 presentedView];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v43[0] = *MEMORY[0x1E695EFD0];
  v43[1] = v4;
  v43[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v3 setTransform:v43];

  if (*(a1 + 40) == 1)
  {
    v5 = *(a1 + 32);
    v6 = [v5 context];
    v7 = [v6 presentingTransition];
    [v5 _ensureOrientation:objc_msgSend(v7 enablingMixedOrientations:{"finalInterfaceOrientation"), 1}];

    v8 = [*(a1 + 32) containerView];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [*(a1 + 32) context];
    v18 = [v17 presentedView];
    [v18 setFrame:{v10, v12, v14, v16}];

    v19 = [*(a1 + 32) containerView];
    [v19 bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = [*(a1 + 32) context];
    v29 = [v28 backgroundView];
    [v29 setFrame:{v21, v23, v25, v27}];

    v30 = [*(a1 + 32) containerView];
    [v30 bounds];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v39 = [*(a1 + 32) context];
    v40 = [v39 touchBlockingView];
    [v40 setFrame:{v32, v34, v36, v38}];
  }

  v41 = [*(a1 + 32) context];
  v42 = [v41 presentedPresentationContainerView];
  [v42 didStopTransition];
}

- (void)presentationTransitionWillBegin
{
  v79 = *MEMORY[0x1E69E9840];
  v3 = _AVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v75 = 136315394;
    v76 = "[AVPresentationController presentationTransitionWillBegin]";
    v77 = 1024;
    v78 = 157;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s %d", &v75, 0x12u);
  }

  v4 = objc_alloc_init(AVPresentationContextTransition);
  v5 = [(AVPresentationController *)self context];
  [v5 setPresentingTransition:v4];

  v6 = [(AVPresentationController *)self presentedViewController];
  v7 = [v6 transitionCoordinator];
  v8 = [v7 isInteractive];
  v9 = [(AVPresentationController *)self context];
  v10 = [v9 presentingTransition];
  [v10 setWasInitiallyInteractive:v8];

  v11 = [(AVPresentationController *)self presentedViewController];
  v12 = [v11 transitioningDelegate];
  objc_opt_class();
  LOBYTE(v8) = objc_opt_isKindOfClass();
  v13 = [(AVPresentationController *)self context];
  v14 = [v13 presentingTransition];
  [v14 setHasAVKitAnimator:v8 & 1];

  v15 = [(AVPresentationController *)self containerView];
  v16 = [v15 window];
  if ([v16 autorotates])
  {
    v17 = *MEMORY[0x1E69DDA98];
    v18 = [(AVPresentationController *)self containerView];
    v19 = [v18 window];
    v20 = [v17 _supportedInterfaceOrientationsForWindow:v19];
  }

  else
  {
    v18 = [(AVPresentationController *)self containerView];
    v19 = [v18 window];
    v20 = 1 << [v19 _windowInterfaceOrientation];
  }

  v21 = [(AVPresentationController *)self presentingViewController];
  if ([v21 shouldAutorotate])
  {
    v22 = [(AVPresentationController *)self presentingViewController];
    v23 = [v22 supportedInterfaceOrientations];
  }

  else
  {
    v22 = [(AVPresentationController *)self containerView];
    v24 = [v22 window];
    v23 = 1 << [v24 _windowInterfaceOrientation];
  }

  v25 = [(AVPresentationController *)self context];
  v26 = [v25 presentingTransition];
  [v26 setPresenterSupportedOrientations:v23 & v20];

  v27 = [(AVPresentationController *)self context];
  v28 = [v27 presentedViewController];
  [v28 _setIgnoreAppSupportedOrientations:1];

  v29 = [(AVPresentationController *)self context];
  v30 = [v29 presentationWindow];
  v31 = [v30 windowScene];
  v32 = [v31 interfaceOrientation];
  v33 = [(AVPresentationController *)self context];
  v34 = [v33 presentingTransition];
  [v34 setInitialInterfaceOrientation:v32];

  v35 = [(AVPresentationController *)self context];
  v36 = [v35 presentationWindow];
  v37 = [v36 interfaceOrientation];
  v38 = [(AVPresentationController *)self context];
  v39 = [v38 presentingTransition];
  [v39 setFinalInterfaceOrientation:v37];

  v40 = [(AVPresentationController *)self context];
  v41 = [v40 presentingTransition];
  LODWORD(v37) = [v41 hasAVKitAnimator];

  if (v37)
  {
    v42 = [(AVPresentationController *)self presentedView];
    [v42 setAutoresizingMask:0];

    v43 = [(AVPresentationController *)self containerView];
    [v43 bounds];
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v52 = [(AVPresentationController *)self presentedView];
    [v52 setFrame:{v45, v47, v49, v51}];

    v53 = [(AVPresentationController *)self containerView];
    [v53 bounds];
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v62 = [(AVPresentationController *)self context];
    v63 = [v62 backgroundView];
    [v63 setFrame:{v55, v57, v59, v61}];

    v64 = [(AVPresentationController *)self containerView];
    [v64 bounds];
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v73 = [(AVPresentationController *)self context];
    v74 = [v73 touchBlockingView];
    [v74 setFrame:{v66, v68, v70, v72}];
  }
}

- (AVPresentationContainerView)presentedPresentationContainerView
{
  WeakRetained = objc_loadWeakRetained(&self->_presentedPresentationContainerView);

  return WeakRetained;
}

- (id)presentedView
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationController);
  v3 = [WeakRetained presentedView];

  return v3;
}

- (UIView)containerView
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationController);
  v3 = [WeakRetained containerView];

  return v3;
}

- (UIViewController)presentedViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationController);
  v3 = [WeakRetained presentedViewController];

  return v3;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationController);
  v3 = [WeakRetained presentingViewController];

  return v3;
}

- (void)containerViewWillLayoutSubviews
{
  if ([(AVPresentationController *)self presented])
  {
    v3 = [(AVPresentationController *)self containerView];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [(AVPresentationController *)self presentedView];
    [v12 setFrame:{v5, v7, v9, v11}];

    v13 = [(AVPresentationController *)self containerView];
    [v13 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [(AVPresentationController *)self context];
    v23 = [v22 backgroundView];
    [v23 setFrame:{v15, v17, v19, v21}];

    v34 = [(AVPresentationController *)self containerView];
    [v34 bounds];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = [(AVPresentationController *)self context];
    v33 = [v32 touchBlockingView];
    [v33 setFrame:{v25, v27, v29, v31}];
  }
}

- (BOOL)dismissed
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationController);
  v3 = [WeakRetained dismissed];

  return v3;
}

- (BOOL)presented
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationController);
  v3 = [WeakRetained presented];

  return v3;
}

- (BOOL)presenting
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationController);
  v3 = [WeakRetained presenting];

  return v3;
}

- (BOOL)dismissing
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationController);
  v3 = [WeakRetained dismissing];

  return v3;
}

- (BOOL)shouldRemovePresentersView
{
  v2 = [(AVPresentationController *)self presentedViewController];
  v3 = [v2 modalPresentationStyle] == 0;

  return v3;
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  [(AVObservationController *)self->_observationController stopAllObservation];
  v3 = [(AVPresentationController *)self presentationWindowForDisablingAutorotation];
  [v3 endDisablingInterfaceAutorotation];

  v4 = _AVLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(AVPresentationController *)self presentationWindowForDisablingAutorotation];
    *buf = 136315394;
    v9 = "[AVPresentationController dealloc]";
    v10 = 2048;
    v11 = v5;
    _os_log_impl(&dword_18B49C000, v4, OS_LOG_TYPE_DEFAULT, "%s Enabling autorotation for window: %p", buf, 0x16u);
  }

  [(AVPresentationController *)self setPresentationWindowForDisablingAutorotation:0];
  v6 = _AVLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "[AVPresentationController dealloc]";
    v10 = 1024;
    LODWORD(v11) = 72;
    _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "%s %d", buf, 0x12u);
  }

  v7.receiver = self;
  v7.super_class = AVPresentationController;
  [(AVPresentationController *)&v7 dealloc];
}

- (AVPresentationController)initWithPresentationController:(id)a3 presentedViewController:(id)a4 presentingViewController:(id)a5 withConfiguration:(id)a6
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v21.receiver = self;
  v21.super_class = AVPresentationController;
  v12 = [(AVPresentationController *)&v21 init];
  v13 = _AVLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "[AVPresentationController initWithPresentationController:presentedViewController:presentingViewController:withConfiguration:]";
    v24 = 1024;
    v25 = 51;
    _os_log_impl(&dword_18B49C000, v13, OS_LOG_TYPE_DEFAULT, "%s %d", buf, 0x12u);
  }

  if (v12)
  {
    objc_storeWeak(&v12->_presentationController, v9);
    v14 = [v10 view];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v10 view];
      objc_storeWeak(&v12->_presentedPresentationContainerView, v15);
    }

    else
    {
      objc_storeWeak(&v12->_presentedPresentationContainerView, 0);
    }

    v16 = [[AVPresentationContext alloc] initWithPresentationController:v12 configuration:v11];
    context = v12->_context;
    v12->_context = v16;

    v18 = [[AVObservationController alloc] initWithOwner:v12];
    observationController = v12->_observationController;
    v12->_observationController = v18;

    [(AVPresentationController *)v12 _observeSceneDidBecomeActiveForRestoringRotatability];
  }

  return v12;
}

@end