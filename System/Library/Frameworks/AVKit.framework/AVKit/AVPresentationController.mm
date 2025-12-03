@interface AVPresentationController
- (AVPresentationContainerView)presentedPresentationContainerView;
- (AVPresentationController)initWithPresentationController:(id)controller presentedViewController:(id)viewController presentingViewController:(id)presentingViewController withConfiguration:(id)configuration;
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
- (void)_ensureOrientation:(int64_t)orientation enablingMixedOrientations:(BOOL)orientations;
- (void)_observeSceneDidBecomeActiveForRestoringRotatability;
- (void)_prepareDismissingTransitionContext;
- (void)containerViewWillLayoutSubviews;
- (void)dealloc;
- (void)dismissalTransitionDidEnd:(BOOL)end;
- (void)dismissalTransitionWillBegin;
- (void)presentationTransitionDidEnd:(BOOL)end;
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
  observationController = [(AVPresentationController *)self observationController];
  [observationController startObservingNotificationForName:*MEMORY[0x1E69DE338] object:0 notificationCenter:0 observationHandler:&__block_literal_global_14191];
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

- (void)dismissalTransitionDidEnd:(BOOL)end
{
  endCopy = end;
  v32 = *MEMORY[0x1E69E9840];
  context = [(AVPresentationController *)self context];
  dismissingTransition = [context dismissingTransition];
  if ([dismissingTransition wasCancelledWithInactiveScene])
  {
    context2 = [(AVPresentationController *)self context];
    presentedViewController = [context2 presentedViewController];
    view = [presentedViewController view];
    window = [view window];
    windowScene = [window windowScene];
    v12 = [windowScene activationState] != 0;
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
    if (endCopy)
    {
      v14 = "YES";
    }

    v30 = 2080;
    v31 = v14;
    _os_log_impl(&dword_18B49C000, v13, OS_LOG_TYPE_DEFAULT, "%s %s %s", buf, 0x20u);
  }

  context3 = [(AVPresentationController *)self context];
  dismissingTransition2 = [context3 dismissingTransition];
  hasAVKitAnimator = [dismissingTransition2 hasAVKitAnimator];

  if (hasAVKitAnimator)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __54__AVPresentationController_dismissalTransitionDidEnd___block_invoke;
    v24[3] = &unk_1E7208B88;
    v24[4] = self;
    v25 = endCopy;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v24];
  }

  else if (!endCopy)
  {
    context4 = [(AVPresentationController *)self context];
    [context4 setDismissingTransition:0];
  }

  if (v12)
  {
    presentationWindowForDisablingAutorotation = [(AVPresentationController *)self presentationWindowForDisablingAutorotation];

    if (!presentationWindowForDisablingAutorotation)
    {
      context5 = [(AVPresentationController *)self context];
      presentationWindow = [context5 presentationWindow];
      [(AVPresentationController *)self setPresentationWindowForDisablingAutorotation:presentationWindow];

      v22 = _AVLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        presentationWindowForDisablingAutorotation2 = [(AVPresentationController *)self presentationWindowForDisablingAutorotation];
        *buf = 136315394;
        v27 = "[AVPresentationController dismissalTransitionDidEnd:]";
        v28 = 2048;
        v29 = presentationWindowForDisablingAutorotation2;
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
  context = [(AVPresentationController *)self context];
  [context setDismissingTransition:v3];

  presentedViewController = [(AVPresentationController *)self presentedViewController];
  transitionCoordinator = [presentedViewController transitionCoordinator];
  isInteractive = [transitionCoordinator isInteractive];
  context2 = [(AVPresentationController *)self context];
  dismissingTransition = [context2 dismissingTransition];
  [dismissingTransition setWasInitiallyInteractive:isInteractive];

  presentedViewController2 = [(AVPresentationController *)self presentedViewController];
  transitioningDelegate = [presentedViewController2 transitioningDelegate];
  objc_opt_class();
  LOBYTE(isInteractive) = objc_opt_isKindOfClass();
  context3 = [(AVPresentationController *)self context];
  dismissingTransition2 = [context3 dismissingTransition];
  [dismissingTransition2 setHasAVKitAnimator:isInteractive & 1];

  containerView = [(AVPresentationController *)self containerView];
  window = [containerView window];
  if ([window autorotates])
  {
    v16 = *MEMORY[0x1E69DDA98];
    containerView2 = [(AVPresentationController *)self containerView];
    window2 = [containerView2 window];
    v19 = [v16 _supportedInterfaceOrientationsForWindow:window2];
  }

  else
  {
    containerView2 = [(AVPresentationController *)self containerView];
    window2 = [containerView2 window];
    v19 = 1 << [window2 _windowInterfaceOrientation];
  }

  presentingViewController = [(AVPresentationController *)self presentingViewController];
  if ([presentingViewController shouldAutorotate])
  {
  }

  else
  {
    presentingViewController2 = [(AVPresentationController *)self presentingViewController];
    supportedInterfaceOrientations = [presentingViewController2 supportedInterfaceOrientations];
    containerView3 = [(AVPresentationController *)self containerView];
    window3 = [containerView3 window];
    v25 = (1 << [window3 _windowInterfaceOrientation]) & ~supportedInterfaceOrientations;

    if (!v25)
    {
      containerView4 = [(AVPresentationController *)self containerView];
      window4 = [containerView4 window];
      supportedInterfaceOrientations2 = 1 << [window4 _windowInterfaceOrientation];

      goto LABEL_9;
    }
  }

  containerView4 = [(AVPresentationController *)self presentingViewController];
  supportedInterfaceOrientations2 = [containerView4 supportedInterfaceOrientations];
LABEL_9:

  context4 = [(AVPresentationController *)self context];
  dismissingTransition3 = [context4 dismissingTransition];
  [dismissingTransition3 setPresenterSupportedOrientations:supportedInterfaceOrientations2 & v19];

  context5 = [(AVPresentationController *)self context];
  presentationWindow = [context5 presentationWindow];
  windowScene = [presentationWindow windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];
  context6 = [(AVPresentationController *)self context];
  dismissingTransition4 = [context6 dismissingTransition];
  [dismissingTransition4 setInitialInterfaceOrientation:interfaceOrientation];

  context7 = [(AVPresentationController *)self context];
  presentationWindow2 = [context7 presentationWindow];
  interfaceOrientation2 = [presentationWindow2 interfaceOrientation];
  context8 = [(AVPresentationController *)self context];
  dismissingTransition5 = [context8 dismissingTransition];
  [dismissingTransition5 setFinalInterfaceOrientation:interfaceOrientation2];
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

  containerView = [(AVPresentationController *)self containerView];
  [containerView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  context = [(AVPresentationController *)self context];
  backgroundView = [context backgroundView];
  [backgroundView setFrame:{v6, v8, v10, v12}];

  containerView2 = [(AVPresentationController *)self containerView];
  [containerView2 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  context2 = [(AVPresentationController *)self context];
  touchBlockingView = [context2 touchBlockingView];
  [touchBlockingView setFrame:{v17, v19, v21, v23}];

  [(AVPresentationController *)self _prepareDismissingTransitionContext];
  context3 = [(AVPresentationController *)self context];
  dismissingTransition = [context3 dismissingTransition];
  LODWORD(touchBlockingView) = [dismissingTransition hasAVKitAnimator];

  if (touchBlockingView)
  {
    context4 = [(AVPresentationController *)self context];
    presentedPresentationContainerView = [context4 presentedPresentationContainerView];
    [presentedPresentationContainerView willBeginAdjustingOrientation];

    context5 = [(AVPresentationController *)self context];
    dismissingTransition2 = [context5 dismissingTransition];
    -[AVPresentationController _ensureOrientation:enablingMixedOrientations:](self, "_ensureOrientation:enablingMixedOrientations:", [dismissingTransition2 finalInterfaceOrientation], 0);

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

- (void)_ensureOrientation:(int64_t)orientation enablingMixedOrientations:(BOOL)orientations
{
  if (!orientations)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    context = [(AVPresentationController *)self context];
    rotatableSecondWindow = [context rotatableSecondWindow];
    [rotatableSecondWindow setBackgroundColor:clearColor];

    context2 = [(AVPresentationController *)self context];
    avFullScreenViewController = [(AVFullScreenViewController *)context2 avFullScreenViewController];
    [avFullScreenViewController attachContentView];
    goto LABEL_10;
  }

  context3 = [(AVPresentationController *)self context];
  if ([context3 allowsSecondWindowPresentations])
  {
    context4 = [(AVPresentationController *)self context];
    if ([context4 wasInitiallyPresentedWithoutSecondWindow])
    {
LABEL_6:

      goto LABEL_7;
    }

    context5 = [(AVPresentationController *)self context];
    presentationWindow = [context5 presentationWindow];
    context6 = [(AVPresentationController *)self context];
    presentedViewController = [context6 presentedViewController];
    if ([presentationWindow avkit_supportsAutorotationForInterfaceOrientationMask:{objc_msgSend(presentedViewController, "supportedInterfaceOrientations")}])
    {

      goto LABEL_6;
    }

    context7 = [(AVPresentationController *)self context];
    presentationWindow2 = [context7 presentationWindow];
    avkit_canAttemptSecondWindowForRotability = [presentationWindow2 avkit_canAttemptSecondWindowForRotability];

    if ((avkit_canAttemptSecondWindowForRotability & 1) == 0)
    {
      goto LABEL_8;
    }

    context8 = [(AVPresentationController *)self context];
    avFullScreenViewController2 = [context8 avFullScreenViewController];

    if (!avFullScreenViewController2)
    {
      return;
    }

    context9 = [(AVPresentationController *)self context];
    rotatableSecondWindow2 = [context9 rotatableSecondWindow];
    [rotatableSecondWindow2 setHidden:1];

    v22 = objc_alloc(MEMORY[0x1E69DD2E8]);
    containerView = [(AVPresentationController *)self containerView];
    window = [containerView window];
    windowScene = [window windowScene];
    v26 = [v22 initWithWindowScene:windowScene];
    context10 = [(AVPresentationController *)self context];
    [context10 setRotatableSecondWindow:v26];

    context11 = [(AVPresentationController *)self context];
    presentationWindow3 = [context11 presentationWindow];
    [presentationWindow3 windowLevel];
    v31 = v30 + 1.0;

    if (v31 >= *MEMORY[0x1E69DE7F0])
    {
      v31 = *MEMORY[0x1E69DE7F0];
    }

    context12 = [(AVPresentationController *)self context];
    rotatableSecondWindow3 = [context12 rotatableSecondWindow];
    [rotatableSecondWindow3 setWindowLevel:v31];

    context2 = objc_alloc_init(AVFullScreenViewController);
    context13 = [(AVPresentationController *)self context];
    rotatableSecondWindow4 = [context13 rotatableSecondWindow];
    [rotatableSecondWindow4 setRootViewController:context2];

    context14 = [(AVPresentationController *)self context];
    avFullScreenViewController3 = [context14 avFullScreenViewController];
    context15 = [(AVPresentationController *)self context];
    rotatableWindowViewController = [context15 rotatableWindowViewController];
    [rotatableWindowViewController setSourceFullScreenViewController:avFullScreenViewController3];

    context16 = [(AVPresentationController *)self context];
    avFullScreenViewController4 = [context16 avFullScreenViewController];
    delegate = [avFullScreenViewController4 delegate];
    context17 = [(AVPresentationController *)self context];
    rotatableWindowViewController2 = [context17 rotatableWindowViewController];
    [rotatableWindowViewController2 setDelegate:delegate];

    context18 = [(AVPresentationController *)self context];
    rotatableWindowViewController3 = [context18 rotatableWindowViewController];
    context19 = [(AVPresentationController *)self context];
    avFullScreenViewController5 = [context19 avFullScreenViewController];
    [avFullScreenViewController5 setAssociatedFullScreenViewController:rotatableWindowViewController3];

    context20 = [(AVPresentationController *)self context];
    rotatableSecondWindow5 = [context20 rotatableSecondWindow];
    rootViewController = [rotatableSecondWindow5 rootViewController];
    [rootViewController _setIgnoreAppSupportedOrientations:1];

    context21 = [(AVPresentationController *)self context];
    rotatableSecondWindow6 = [context21 rotatableSecondWindow];
    [rotatableSecondWindow6 setHidden:0];

    avFullScreenViewController = [(AVPresentationController *)self context];
    rotatableWindowViewController4 = [avFullScreenViewController rotatableWindowViewController];
    [rotatableWindowViewController4 attachContentView];

LABEL_10:
    goto LABEL_11;
  }

LABEL_7:

LABEL_8:
  context2 = [(AVPresentationController *)self context];
  [(AVFullScreenViewController *)context2 setWasInitiallyPresentedWithoutSecondWindow:1];
LABEL_11:
}

- (void)presentationTransitionDidEnd:(BOOL)end
{
  endCopy = end;
  v18 = *MEMORY[0x1E69E9840];
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "NO";
    *buf = 136315650;
    v13 = "[AVPresentationController presentationTransitionDidEnd:]";
    v15 = "completed";
    v14 = 2080;
    if (endCopy)
    {
      v6 = "YES";
    }

    v16 = 2080;
    v17 = v6;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %s %s", buf, 0x20u);
  }

  context = [(AVPresentationController *)self context];
  presentingTransition = [context presentingTransition];
  hasAVKitAnimator = [presentingTransition hasAVKitAnimator];

  if (hasAVKitAnimator)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__AVPresentationController_presentationTransitionDidEnd___block_invoke;
    v10[3] = &unk_1E7208B88;
    v10[4] = self;
    v11 = endCopy;
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
  context = [(AVPresentationController *)self context];
  [context setPresentingTransition:v4];

  presentedViewController = [(AVPresentationController *)self presentedViewController];
  transitionCoordinator = [presentedViewController transitionCoordinator];
  isInteractive = [transitionCoordinator isInteractive];
  context2 = [(AVPresentationController *)self context];
  presentingTransition = [context2 presentingTransition];
  [presentingTransition setWasInitiallyInteractive:isInteractive];

  presentedViewController2 = [(AVPresentationController *)self presentedViewController];
  transitioningDelegate = [presentedViewController2 transitioningDelegate];
  objc_opt_class();
  LOBYTE(isInteractive) = objc_opt_isKindOfClass();
  context3 = [(AVPresentationController *)self context];
  presentingTransition2 = [context3 presentingTransition];
  [presentingTransition2 setHasAVKitAnimator:isInteractive & 1];

  containerView = [(AVPresentationController *)self containerView];
  window = [containerView window];
  if ([window autorotates])
  {
    v17 = *MEMORY[0x1E69DDA98];
    containerView2 = [(AVPresentationController *)self containerView];
    window2 = [containerView2 window];
    v20 = [v17 _supportedInterfaceOrientationsForWindow:window2];
  }

  else
  {
    containerView2 = [(AVPresentationController *)self containerView];
    window2 = [containerView2 window];
    v20 = 1 << [window2 _windowInterfaceOrientation];
  }

  presentingViewController = [(AVPresentationController *)self presentingViewController];
  if ([presentingViewController shouldAutorotate])
  {
    presentingViewController2 = [(AVPresentationController *)self presentingViewController];
    supportedInterfaceOrientations = [presentingViewController2 supportedInterfaceOrientations];
  }

  else
  {
    presentingViewController2 = [(AVPresentationController *)self containerView];
    window3 = [presentingViewController2 window];
    supportedInterfaceOrientations = 1 << [window3 _windowInterfaceOrientation];
  }

  context4 = [(AVPresentationController *)self context];
  presentingTransition3 = [context4 presentingTransition];
  [presentingTransition3 setPresenterSupportedOrientations:supportedInterfaceOrientations & v20];

  context5 = [(AVPresentationController *)self context];
  presentedViewController3 = [context5 presentedViewController];
  [presentedViewController3 _setIgnoreAppSupportedOrientations:1];

  context6 = [(AVPresentationController *)self context];
  presentationWindow = [context6 presentationWindow];
  windowScene = [presentationWindow windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];
  context7 = [(AVPresentationController *)self context];
  presentingTransition4 = [context7 presentingTransition];
  [presentingTransition4 setInitialInterfaceOrientation:interfaceOrientation];

  context8 = [(AVPresentationController *)self context];
  presentationWindow2 = [context8 presentationWindow];
  interfaceOrientation2 = [presentationWindow2 interfaceOrientation];
  context9 = [(AVPresentationController *)self context];
  presentingTransition5 = [context9 presentingTransition];
  [presentingTransition5 setFinalInterfaceOrientation:interfaceOrientation2];

  context10 = [(AVPresentationController *)self context];
  presentingTransition6 = [context10 presentingTransition];
  LODWORD(interfaceOrientation2) = [presentingTransition6 hasAVKitAnimator];

  if (interfaceOrientation2)
  {
    presentedView = [(AVPresentationController *)self presentedView];
    [presentedView setAutoresizingMask:0];

    containerView3 = [(AVPresentationController *)self containerView];
    [containerView3 bounds];
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;
    presentedView2 = [(AVPresentationController *)self presentedView];
    [presentedView2 setFrame:{v45, v47, v49, v51}];

    containerView4 = [(AVPresentationController *)self containerView];
    [containerView4 bounds];
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;
    context11 = [(AVPresentationController *)self context];
    backgroundView = [context11 backgroundView];
    [backgroundView setFrame:{v55, v57, v59, v61}];

    containerView5 = [(AVPresentationController *)self containerView];
    [containerView5 bounds];
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v72 = v71;
    context12 = [(AVPresentationController *)self context];
    touchBlockingView = [context12 touchBlockingView];
    [touchBlockingView setFrame:{v66, v68, v70, v72}];
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
  presentedView = [WeakRetained presentedView];

  return presentedView;
}

- (UIView)containerView
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationController);
  containerView = [WeakRetained containerView];

  return containerView;
}

- (UIViewController)presentedViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationController);
  presentedViewController = [WeakRetained presentedViewController];

  return presentedViewController;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationController);
  presentingViewController = [WeakRetained presentingViewController];

  return presentingViewController;
}

- (void)containerViewWillLayoutSubviews
{
  if ([(AVPresentationController *)self presented])
  {
    containerView = [(AVPresentationController *)self containerView];
    [containerView bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    presentedView = [(AVPresentationController *)self presentedView];
    [presentedView setFrame:{v5, v7, v9, v11}];

    containerView2 = [(AVPresentationController *)self containerView];
    [containerView2 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    context = [(AVPresentationController *)self context];
    backgroundView = [context backgroundView];
    [backgroundView setFrame:{v15, v17, v19, v21}];

    containerView3 = [(AVPresentationController *)self containerView];
    [containerView3 bounds];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    context2 = [(AVPresentationController *)self context];
    touchBlockingView = [context2 touchBlockingView];
    [touchBlockingView setFrame:{v25, v27, v29, v31}];
  }
}

- (BOOL)dismissed
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationController);
  dismissed = [WeakRetained dismissed];

  return dismissed;
}

- (BOOL)presented
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationController);
  presented = [WeakRetained presented];

  return presented;
}

- (BOOL)presenting
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationController);
  presenting = [WeakRetained presenting];

  return presenting;
}

- (BOOL)dismissing
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationController);
  dismissing = [WeakRetained dismissing];

  return dismissing;
}

- (BOOL)shouldRemovePresentersView
{
  presentedViewController = [(AVPresentationController *)self presentedViewController];
  v3 = [presentedViewController modalPresentationStyle] == 0;

  return v3;
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  [(AVObservationController *)self->_observationController stopAllObservation];
  presentationWindowForDisablingAutorotation = [(AVPresentationController *)self presentationWindowForDisablingAutorotation];
  [presentationWindowForDisablingAutorotation endDisablingInterfaceAutorotation];

  v4 = _AVLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    presentationWindowForDisablingAutorotation2 = [(AVPresentationController *)self presentationWindowForDisablingAutorotation];
    *buf = 136315394;
    v9 = "[AVPresentationController dealloc]";
    v10 = 2048;
    v11 = presentationWindowForDisablingAutorotation2;
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

- (AVPresentationController)initWithPresentationController:(id)controller presentedViewController:(id)viewController presentingViewController:(id)presentingViewController withConfiguration:(id)configuration
{
  v26 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  viewControllerCopy = viewController;
  configurationCopy = configuration;
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
    objc_storeWeak(&v12->_presentationController, controllerCopy);
    view = [viewControllerCopy view];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      view2 = [viewControllerCopy view];
      objc_storeWeak(&v12->_presentedPresentationContainerView, view2);
    }

    else
    {
      objc_storeWeak(&v12->_presentedPresentationContainerView, 0);
    }

    v16 = [[AVPresentationContext alloc] initWithPresentationController:v12 configuration:configurationCopy];
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