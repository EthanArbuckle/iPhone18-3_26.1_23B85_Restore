@interface AVTransitionController
- (AVDisplayLink)displayLink;
- (AVTransitionControllerDelegate)delegate;
- (BOOL)transitionDriver:(id)a3 gestureRecognizer:(id)a4 shouldReceiveTouch:(id)a5;
- (BOOL)transitionDriver:(id)a3 shouldDriveTransitionInteractionOfType:(int64_t)a4;
- (BOOL)wantsInteractiveStart;
- (CGPoint)touchGravity;
- (UIView)interactionView;
- (UIView)sourceViewForNextPresentation;
- (double)transitionDuration:(id)a3;
- (id)transitionBackgroundViewBackgroundColor:(id)a3;
- (id)transitionPresentedViewBackgroundColor:(id)a3;
- (void)_cancelTransition;
- (void)_dismiss:(id)a3 fromViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)_ensurePresentationControllerWithTransitionContext:(id)a3;
- (void)_finishTransition;
- (void)_fireDidBeginHandlerIfNeeded;
- (void)_present:(id)a3 fromViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)_startObservingAnimatorProgress;
- (void)addTransitionDriver:(id)a3 toView:(id)a4;
- (void)animationEnded:(BOOL)a3;
- (void)beginFullScreenDismissalOfViewController:(id)a3 animated:(BOOL)a4 isInteractive:(BOOL)a5 completion:(id)a6;
- (void)beginFullScreenPresentationOfViewController:(id)a3 fromView:(id)a4 isInteractive:(BOOL)a5 completion:(id)a6;
- (void)ensurePresentationControllerWithPresentingViewController:(id)a3 presentedViewController:(id)a4;
- (void)setInteractionView:(id)a3;
- (void)setInteractiveGestureTracker:(id)a3;
- (void)startInteractiveTransition:(id)a3;
- (void)transitionDriver:(id)a3 didBeginTrackingTransitionInteraction:(int64_t)a4 readyToProceedHandler:(id)a5;
- (void)transitionDriverDidCancelInteraction:(id)a3;
- (void)transitionDriverDidContinueInteraction:(id)a3;
- (void)transitionDriverDidFinishInteraction:(id)a3;
- (void)transitionWillComplete:(id)a3 success:(BOOL)a4 continueBlock:(id)a5;
@end

@implementation AVTransitionController

- (CGPoint)touchGravity
{
  x = self->_touchGravity.x;
  y = self->_touchGravity.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIView)sourceViewForNextPresentation
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceViewForNextPresentation);

  return WeakRetained;
}

- (UIView)interactionView
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionView);

  return WeakRetained;
}

- (AVTransitionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_startObservingAnimatorProgress
{
  v3 = [(AVTransitionController *)self presentationContext];
  v4 = [v3 presentedViewController];
  v5 = [v4 transitioningDelegate];

  if (v5 == self)
  {
    v6 = [(AVTransitionController *)self displayLink];
    [v6 startDisplayLinkUpdatesForObserver:self framesPerSecond:36 usingBlock:&__block_literal_global_29881];
  }
}

void __57__AVTransitionController__startObservingAnimatorProgress__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 state] >= 2)
  {
    v2 = [v5 delegate];
    v3 = [v5 activeTransition];
    [v3 transitionAnimatorProgress];
    *&v4 = v4;
    [v2 transitionController:v5 animationProgressDidChange:v4];
  }
}

- (void)_present:(id)a3 fromViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a4;
  v11 = a6;
  v12 = a3;
  [(AVTransitionController *)self ensurePresentationControllerWithPresentingViewController:v10 presentedViewController:v12];
  v13 = [v10 transitionCoordinator];

  if (v13)
  {
    v14 = _AVLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v14, OS_LOG_TYPE_ERROR, "Attempted to present from source view controller that is transitioning.", buf, 2u);
    }
  }

  [v10 presentViewController:v12 animated:v7 completion:0];
  v15 = [v12 transitionCoordinator];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __74__AVTransitionController__present_fromViewController_animated_completion___block_invoke;
  v17[3] = &unk_1E72097E8;
  v18 = v11;
  v16 = v11;
  [v15 animateAlongsideTransition:0 completion:v17];

  [(AVTransitionController *)self _startObservingAnimatorProgress];
}

uint64_t __74__AVTransitionController__present_fromViewController_animated_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 isCancelled];
  v4 = *(v2 + 16);

  return v4(v2, v3 ^ 1u);
}

- (void)_fireDidBeginHandlerIfNeeded
{
  v4 = [(AVTransitionController *)self transitionDidBeginHandler];
  [(AVTransitionController *)self setTransitionDidBeginHandler:0];
  v3 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4);
    v3 = v4;
  }
}

- (void)_dismiss:(id)a3 fromViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a4;
  v11 = a6;
  v12 = a3;
  v13 = [v10 transitionCoordinator];

  if (v13)
  {
    v14 = _AVLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v14, OS_LOG_TYPE_ERROR, "Attempted to dismiss from source view controller that is transitioning.", buf, 2u);
    }
  }

  [v10 dismissViewControllerAnimated:v7 completion:0];
  v15 = [v12 transitionCoordinator];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __74__AVTransitionController__dismiss_fromViewController_animated_completion___block_invoke;
  v17[3] = &unk_1E72097E8;
  v18 = v11;
  v16 = v11;
  [v15 animateAlongsideTransition:0 completion:v17];

  [(AVTransitionController *)self _startObservingAnimatorProgress];
}

uint64_t __74__AVTransitionController__dismiss_fromViewController_animated_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 isCancelled];
  v4 = *(v2 + 16);

  return v4(v2, v3 ^ 1u);
}

- (void)transitionWillComplete:(id)a3 success:(BOOL)a4 continueBlock:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = [(AVTransitionController *)self delegate];
  [v8 transitionController:self transitionWillComplete:v5 continueBlock:v7];
}

- (id)transitionPresentedViewBackgroundColor:(id)a3
{
  v4 = [(AVTransitionController *)self delegate];
  v5 = [v4 transitionControllerPresentedViewBackgroundColor:self];

  return v5;
}

- (id)transitionBackgroundViewBackgroundColor:(id)a3
{
  v4 = [(AVTransitionController *)self delegate];
  v5 = [v4 transitionControllerBackgroundViewBackgroundColor:self];

  return v5;
}

- (void)animationEnded:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  if ([(AVPresentationController *)self->_presentationController presented]|| [(AVPresentationController *)self->_presentationController presenting])
  {
    [(AVPresentationController *)self->_presentationController presentationTransitionDidEnd:v3];
  }

  else if ([(AVPresentationController *)self->_presentationController dismissed]|| [(AVPresentationController *)self->_presentationController dismissing])
  {
    [(AVPresentationController *)self->_presentationController dismissalTransitionDidEnd:v3];
    presentationController = self->_presentationController;
    self->_presentationController = 0;
  }

  [(AVTransitionController *)self setActiveTransition:0];
  v5 = [(AVTransitionController *)self displayLink];
  [v5 invalidate];

  [(AVTransitionController *)self setState:0];
  interactiveGestureTracker = self->_interactiveGestureTracker;
  if (interactiveGestureTracker)
  {
    v7 = interactiveGestureTracker;
  }

  else
  {
    v7 = objc_alloc_init(AVInteractiveTransitionGestureTracker);
  }

  v8 = v7;
  [(AVTransitionController *)self setInteractiveGestureTracker:v7];
  v9 = _AVLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315650;
    v12 = "[AVTransitionController animationEnded:]";
    v13 = 1024;
    v14 = 675;
    v15 = 2048;
    v16 = self;
    _os_log_impl(&dword_18B49C000, v9, OS_LOG_TYPE_DEFAULT, "%s %d %p", &v11, 0x1Cu);
  }
}

- (double)transitionDuration:(id)a3
{
  v5 = a3;
  [(AVTransitionController *)self _ensurePresentationControllerWithTransitionContext:v5];
  if ([(AVPresentationController *)self->_presentationController presented]|| [(AVPresentationController *)self->_presentationController presenting])
  {
    [(AVPresentationController *)self->_presentationController presentationTransitionWillBegin];
  }

  else if ([(AVPresentationController *)self->_presentationController dismissed]|| [(AVPresentationController *)self->_presentationController dismissing])
  {
    [(AVPresentationController *)self->_presentationController dismissalTransitionWillBegin];
  }

  v6 = [(AVTransitionController *)self presentationContext];
  v7 = [v6 presentationWindow];
  v8 = [v7 windowScene];

  v9 = [v8 activationState];
  v10 = v9;
  if (v9 == 2 || v9 == -1)
  {
    v7 = [(AVTransitionController *)self presentationContext];
    v3 = [v7 presentationWindow];
    v11 = [v3 avkit_isHostedInAnotherProcess];
  }

  else
  {
    v11 = 1;
  }

  if (v10 == 2 || v10 == -1)
  {
  }

  v12 = 0.0;
  if (([v5 isAnimated] & v11) == 1)
  {
    v13 = [(AVTransitionController *)self presentationContext];
    v14 = [v13 configuration];
    [v14 transitionDuration];
    v12 = v15;
  }

  return v12;
}

- (void)_ensurePresentationControllerWithTransitionContext:(id)a3
{
  v4 = *MEMORY[0x1E69DE768];
  v5 = a3;
  v8 = [v5 viewControllerForKey:v4];
  v6 = [v5 viewControllerForKey:*MEMORY[0x1E69DE778]];
  [(AVTransitionController *)self ensurePresentationControllerWithPresentingViewController:v8 presentedViewController:v6];
  v7 = [(AVPresentationController *)self->_presentationController context];
  [v7 setTransitionContext:v5];
}

- (void)startInteractiveTransition:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v35 = "[AVTransitionController startInteractiveTransition:]";
    v36 = 2112;
    v37 = v4;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  v6 = [(AVTransitionController *)self presentationContext];
  [v6 setTransitionContext:v4];

  v7 = [[AVTransition alloc] initWithTransitionContext:v4];
  [(AVTransitionController *)self setActiveTransition:v7];

  v8 = [(AVTransitionController *)self activeTransition];
  v9 = [(AVTransitionController *)self presentationContext];
  [v8 setPresentationContext:v9];

  v10 = [(AVTransitionController *)self activeTransition];
  [v10 setDelegate:self];

  v11 = [(AVTransitionController *)self activeTransition];
  [v11 startInteractiveTransition];

  v12 = [(AVTransitionController *)self state];
  if (v12 > 2)
  {
    if (v12 != 3)
    {
      if (v12 == 4)
      {
        [(AVTransitionController *)self _fireDidBeginHandlerIfNeeded];
        v13 = [(AVTransitionController *)self delegate];
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __53__AVTransitionController_startInteractiveTransition___block_invoke;
        v33[3] = &unk_1E720A090;
        v33[4] = self;
        [v13 transitionController:self prepareForFinishingInteractiveTransition:v33];
LABEL_17:

        goto LABEL_21;
      }

      if (v12 != 5)
      {
        goto LABEL_21;
      }

LABEL_11:
      v13 = _AVLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = _AVMethodProem(self);
        *buf = 138412290;
        v35 = v14;
        _os_log_error_impl(&dword_18B49C000, v13, OS_LOG_TYPE_ERROR, "%@: Unexpected transition state.", buf, 0xCu);
      }

      goto LABEL_17;
    }

    [(AVTransitionController *)self _fireDidBeginHandlerIfNeeded];
    v15 = self;
    v16 = 3;
LABEL_20:
    [(AVTransitionController *)v15 setState:v16];
    goto LABEL_21;
  }

  switch(v12)
  {
    case 0:
LABEL_19:
      v15 = self;
      v16 = 5;
      goto LABEL_20;
    case 1:
      if ([v4 isInteractive])
      {
        [(AVTransitionController *)self setState:2];
        [(AVTransitionController *)self _fireDidBeginHandlerIfNeeded];
        break;
      }

      [(AVTransitionController *)self _fireDidBeginHandlerIfNeeded];
      goto LABEL_19;
    case 2:
      goto LABEL_11;
  }

LABEL_21:
  v17 = [(AVPresentationController *)self->_presentationController context];
  v18 = [v17 transitionType];

  if (v18)
  {
    if (v18 == 2)
    {
      v22 = [(AVTransitionController *)self delegate];
      v23 = [(AVPresentationController *)self->_presentationController context];
      v24 = [v23 presentedViewController];
      v19 = [v22 transitionController:self targetViewForDismissingViewController:v24];

      v25 = [(AVTransitionController *)self presentationContext];
      [v25 setSourceView:v19];

      v26 = [(AVTransitionController *)self presentationContext];
      v27 = [(AVTransitionController *)self interactiveGestureTracker];
      [v26 setAllowsPausingWhenTransitionCompletes:{objc_msgSend(v27, "transitionInteraction") != 2}];

      v20 = [(AVTransitionController *)self delegate];
      v21 = [(AVPresentationController *)self->_presentationController context];
      v28 = [v21 presentedViewController];
      [v20 transitionController:self willBeginDismissingViewController:v28];
    }

    else
    {
      if (v18 != 1)
      {
        goto LABEL_30;
      }

      v19 = [(AVTransitionController *)self delegate];
      v20 = [(AVPresentationController *)self->_presentationController context];
      v21 = [v20 presentedViewController];
      [v19 transitionController:self willBeginPresentingViewController:v21];
    }
  }

  else
  {
    v19 = _AVLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v19, OS_LOG_TYPE_ERROR, "Unexpected", buf, 2u);
    }
  }

LABEL_30:
  v29 = [(AVTransitionController *)self activeTransition];
  [v29 addRunAlongsideAnimationsIfNeeded];

  v30 = [(AVTransitionController *)self state];
  if (v30 > 2)
  {
    if (v30 == 3)
    {
      v31 = [(AVTransitionController *)self activeTransition];
      [v31 cancelInteractiveTransition];
      goto LABEL_40;
    }

    if (v30 == 5)
    {
      v31 = [(AVTransitionController *)self activeTransition];
      [v31 finishInteractiveTransition];
LABEL_40:
    }
  }

  else
  {
    if (v30 < 2)
    {
      v31 = _AVLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = _AVMethodProem(self);
        *buf = 138412290;
        v35 = v32;
        _os_log_error_impl(&dword_18B49C000, v31, OS_LOG_TYPE_ERROR, "%@: Unexpected transition state.", buf, 0xCu);
      }

      goto LABEL_40;
    }

    if (v30 == 2)
    {
      v31 = [(AVTransitionController *)self activeTransition];
      [v31 pauseInteractiveTransition];
      goto LABEL_40;
    }
  }
}

void __53__AVTransitionController_startInteractiveTransition___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) activeTransition];
  [v1 finishInteractiveTransition];
}

- (BOOL)wantsInteractiveStart
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [(AVTransitionController *)self state];
  v3 = _AVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "NO";
    v6 = 136315650;
    v7 = "[AVTransitionController wantsInteractiveStart]";
    v9 = "wantsInteractiveStart";
    v8 = 2080;
    if (v2 == 1)
    {
      v4 = "YES";
    }

    v10 = 2080;
    v11 = v4;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v6, 0x20u);
  }

  return v2 == 1;
}

- (void)_finishTransition
{
  v12 = *MEMORY[0x1E69E9840];
  if ([(AVTransitionController *)self state]!= 2 && [(AVTransitionController *)self state]!= 1)
  {
    v3 = _AVLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = _AVMethodProem(self);
      *buf = 138412546;
      v9 = v6;
      v10 = 2048;
      v11 = [(AVTransitionController *)self state];
      _os_log_error_impl(&dword_18B49C000, v3, OS_LOG_TYPE_ERROR, "%@ called with an invalid state %ld", buf, 0x16u);
    }
  }

  v4 = [(AVTransitionController *)self activeTransition];

  if (v4)
  {
    [(AVTransitionController *)self setState:5];
    v5 = [(AVTransitionController *)self delegate];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __43__AVTransitionController__finishTransition__block_invoke;
    v7[3] = &unk_1E720A090;
    v7[4] = self;
    [v5 transitionController:self prepareForFinishingInteractiveTransition:v7];
  }

  else
  {
    [(AVTransitionController *)self setState:4];
  }
}

void __43__AVTransitionController__finishTransition__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) activeTransition];
  [v1 finishInteractiveTransition];
}

- (void)transitionDriverDidFinishInteraction:(id)a3
{
  v4 = a3;
  v5 = [v4 transitionInteraction];
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      [v4 pinchScale];
      if (v30 < 0.95)
      {
        [v4 pinchVelocity];
        if (v31 < 0.0)
        {
          goto LABEL_42;
        }
      }

      [v4 pinchVelocity];
      if (v32 < -2.5)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }

    if (v5 != 3)
    {
      goto LABEL_43;
    }

    [v4 locationInWindow];
    v10 = v9;
    [v4 velocityInWindow];
    v43 = v11;
    v13 = v12;
    [v4 translationInWindow];
    v15 = v14;
    v16 = v10 - v14;
    v17 = [(AVTransitionController *)self presentationContext];
    v18 = [v17 presentationWindow];
    [v18 bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v27 = [(AVTransitionController *)self presentationContext];
    v28 = [v27 currentTransition];
    v29 = v28;
    if (v28)
    {
      [v28 rotationTransform];
    }

    else
    {
      memset(&v44, 0, sizeof(v44));
    }

    v45.origin.x = v20;
    v45.origin.y = v22;
    v45.size.width = v24;
    v45.size.height = v26;
    v46 = CGRectApplyAffineTransform(v45, &v44);
    height = v46.size.height;

    if (height <= 0.0)
    {
      v34 = 1.0;
    }

    else
    {
      v34 = v16 / height;
    }

    [v4 angleOfVelocityInWindow];
    v36 = v35;
    v37 = [v4 lastNonZeroVelocityWasDownward];
    v38 = -v36;
    if (v36 >= 0.0)
    {
      v38 = v36;
    }

    if (v38 >= v34 * 70.0 + (1.0 - v34) * 80.0 || v13 <= 0.0)
    {
      v39 = v13 != *(MEMORY[0x1E695EFF8] + 8) || v43 != *MEMORY[0x1E695EFF8];
      if (!v37)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v39 = 0;
      if (!v37)
      {
        goto LABEL_41;
      }
    }

    if (!v39)
    {
      v40 = fmax(height - v16, 0.0);
      v41 = 32.0;
      if (v15 < 0.0)
      {
        v41 = 32.0 - v15;
      }

      v42 = 44.0;
      if (v15 < 0.0)
      {
        v42 = 44.0 - v15;
      }

      if (v41 >= v40)
      {
        v40 = v41;
      }

      if (v40 >= v42)
      {
        v40 = v42;
      }

      if (v15 >= v40 || v10 + v13 * 0.001 * 0.995 / 0.005 - v16 >= 96.0)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_41;
  }

  if (!v5)
  {
LABEL_41:
    [(AVTransitionController *)self _cancelTransition];
    goto LABEL_43;
  }

  if (v5 == 1)
  {
    [v4 pinchScale];
    if (v6 > 1.05 && ([v4 pinchVelocity], v7 > 0.0) || (objc_msgSend(v4, "pinchVelocity"), v8 > 1.5))
    {
LABEL_42:
      [(AVTransitionController *)self _finishTransition];
      goto LABEL_43;
    }

    goto LABEL_41;
  }

LABEL_43:
}

- (void)_cancelTransition
{
  v10 = *MEMORY[0x1E69E9840];
  if ([(AVTransitionController *)self state])
  {
    if ([(AVTransitionController *)self state]!= 2 && [(AVTransitionController *)self state]!= 1)
    {
      v3 = _AVLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v5 = _AVMethodProem(self);
        v6 = 138412546;
        v7 = v5;
        v8 = 2048;
        v9 = [(AVTransitionController *)self state];
        _os_log_error_impl(&dword_18B49C000, v3, OS_LOG_TYPE_ERROR, "%@ called with an invalid state %ld", &v6, 0x16u);
      }
    }

    [(AVTransitionController *)self setState:3];
    v4 = [(AVTransitionController *)self activeTransition];
    [v4 cancelInteractiveTransition];
  }
}

- (void)transitionDriverDidCancelInteraction:(id)a3
{
  v10 = [(AVTransitionController *)self presentationContext];
  v4 = [v10 presentationWindow];
  v5 = [v4 windowScene];

  v6 = [v10 dismissingTransition];
  v7 = [v5 interfaceOrientation];
  if ([v10 isDismissing] && objc_msgSend(v6, "isRotated") && objc_msgSend(v10, "wasInitiallyInteractive") && v7 == objc_msgSend(v6, "finalInterfaceOrientation") && objc_msgSend(v5, "activationState"))
  {
    v8 = [v10 rotatableSecondWindow];
    if (v8)
    {

LABEL_9:
      [(AVTransitionController *)self _finishTransition];
      goto LABEL_12;
    }

    v9 = [v10 avFullScreenViewController];

    if (v9)
    {
      goto LABEL_9;
    }

    [v6 setWasCancelledWithInactiveScene:1];
  }

  [(AVTransitionController *)self _cancelTransition];
LABEL_12:
}

- (void)transitionDriverDidContinueInteraction:(id)a3
{
  v4 = a3;
  if ([(AVTransitionController *)self state]!= 2)
  {
    goto LABEL_31;
  }

  v5 = [(AVPresentationController *)self->_presentationController context];
  v6 = [v5 sourceView];

  [v4 translationInWindow];
  v95 = v7;
  v96 = v8;
  [v4 rotation];
  v10 = v9;
  v11 = [v4 transitionInteraction];
  v12 = 0.5;
  v13 = 1.125;
  if (v11 == 3)
  {
    v19 = [(AVTransitionController *)self presentationContext];
    v20 = [v19 transitionContext];
    v21 = [v20 containerView];
    [v21 frame];
    v23 = v22;

    v24 = [(AVTransitionController *)self presentationContext];
    v25 = [v24 transitionContext];
    v26 = [v25 containerView];
    [v26 frame];
    v28 = v27;

    v29 = [(AVTransitionController *)self presentationContext];
    v30 = [v29 dismissingTransition];
    if ([v30 isRotated])
    {
      v23 = v28;
    }

    v15 = v96 / v23;
    v14 = 1.0 - v96 / v23;
    goto LABEL_11;
  }

  if (v11 == 2)
  {
    [v4 pinchScale];
    v15 = 1.0 - v17;
  }

  else
  {
    v14 = 1.0;
    v15 = 1.0;
    if (v11 != 1)
    {
      goto LABEL_11;
    }

    [v4 pinchScale];
    v15 = v16 + -1.0;
  }

  [v4 pinchScale];
  v14 = v18;
  v13 = 3.5;
  v12 = 0.2;
LABEL_11:
  if (!self->_easeOutFunction || !self->_easeInFunction)
  {
    v31 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB0]];
    easeInFunction = self->_easeInFunction;
    self->_easeInFunction = v31;

    v33 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
    easeOutFunction = self->_easeOutFunction;
    self->_easeOutFunction = v33;
  }

  v35 = 1.0;
  if (v14 <= 1.0)
  {
    if (v14 < 1.0)
    {
      v41 = [(AVTransitionController *)self easeInFunction];
      v42 = fmax(v14, 0.0);
      *&v42 = v42;
      [v41 _solveForInput:v42];
      v44 = v43;

      v35 = v12 + v44 * (1.0 - v12);
    }
  }

  else
  {
    v36 = v13 - v12;
    v37 = [(AVTransitionController *)self easeInFunction];
    v38 = fmin(fmax((v14 + -1.0) / (v13 - v12), 0.0), 1.0);
    *&v38 = v38;
    [v37 _solveForInput:v38];
    v40 = v39;

    v35 = v40 * v36 + 1.0;
  }

  v45 = fmax(v15, 0.0);
  if (v6)
  {
    v46 = [(AVTransitionController *)self presentationContext];
    v47 = [v46 currentTransition];
    if ([v47 isRotated])
    {
      v48 = 3.14159265;
    }

    else
    {
      v48 = 9.42477796;
    }
  }

  else
  {
    v48 = 9.42477796;
  }

  v49 = fmin(v45, 0.5);
  v50 = [(AVTransitionController *)self easeOutFunction];
  v51 = v10 / v48;
  *&v52 = fabsf(v51);
  [v50 _solveForInput:v52];
  if (v10 >= 0.0)
  {
    v54 = v53 * 1.57079633;
  }

  else
  {
    v54 = -(v53 * 1.57079633);
  }

  v55 = [(AVTransitionController *)self presentationContext];
  v56 = [v55 presentationWindow];
  [v56 bounds];
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v65 = [(AVTransitionController *)self presentationContext];
  v66 = [v65 currentTransition];
  v67 = v66;
  if (v66)
  {
    [v66 rotationTransform];
  }

  else
  {
    memset(&v97, 0, sizeof(v97));
  }

  v98.origin.x = v58;
  v98.origin.y = v60;
  v98.size.width = v62;
  v98.size.height = v64;
  v99 = CGRectApplyAffineTransform(v98, &v97);
  height = v99.size.height;
  width = v99.size.width;

  [v4 locationInWindow];
  v69 = v68;
  v71 = v70;
  UIRectGetCenter();
  v73 = v69 - v72;
  v75 = v71 - v74;
  v76.f64[0] = v95;
  v76.f64[1] = v96;
  v77.f64[0] = width;
  v77.f64[1] = height;
  v78 = vdivq_f64(vbslq_s8(vcltzq_f64(v76), vnegq_f64(v76), v76), v77);
  __asm { FMOV            V1.2D, #1.0 }

  self->_touchGravity = vminnmq_f64(vbslq_s8(vcgtq_f64(v78, self->_touchGravity), v78, self->_touchGravity), _Q1);
  [(AVTransitionController *)self touchGravity];
  v85 = 1.0 - v84;
  [(AVTransitionController *)self touchGravity];
  v87 = v73 * v86 + v85 * v95;
  [(AVTransitionController *)self touchGravity];
  v89 = 1.0 - v88;
  [(AVTransitionController *)self touchGravity];
  v91 = v75 * v90 + v89 * v96;
  v92 = [(AVTransitionController *)self activeTransition];
  [v92 updateWithPercentComplete:v49 scale:v35 translation:v87 rotation:{v91, v54}];

LABEL_31:
}

- (void)transitionDriver:(id)a3 didBeginTrackingTransitionInteraction:(int64_t)a4 readyToProceedHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  [(AVTransitionController *)self setTouchGravity:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  if (![(AVTransitionController *)self state])
  {
    v10 = [v7 transitionInteraction];
    if ((v10 - 2) >= 2)
    {
      if (v10 != 1)
      {
        v9 = _AVLog();
        if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_3;
        }

        v15 = 0;
        v12 = "Unexpected gesture kind.";
        v13 = &v15;
LABEL_13:
        _os_log_error_impl(&dword_18B49C000, v9, OS_LOG_TYPE_ERROR, v12, v13, 2u);
        goto LABEL_3;
      }

      [(AVTransitionController *)self setState:1];
      v11 = [(AVTransitionController *)self delegate];
      [v11 transitionControllerBeginInteractivePresentationTransition:self];
    }

    else
    {
      [(AVTransitionController *)self setState:1];
      v11 = [(AVTransitionController *)self delegate];
      [v11 transitionControllerBeginInteractiveDismissalTransition:self];
    }

    [(AVTransitionController *)self setTransitionDidBeginHandler:v8];
    goto LABEL_9;
  }

  v9 = _AVLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v14 = 0;
    v12 = "Unexpected transitioning state.";
    v13 = &v14;
    goto LABEL_13;
  }

LABEL_3:

  v8[2](v8);
LABEL_9:
}

- (BOOL)transitionDriver:(id)a3 shouldDriveTransitionInteractionOfType:(int64_t)a4
{
  v6 = a3;
  if ((a4 - 2) >= 2)
  {
    if (a4 == 1 && ![(AVTransitionController *)self state])
    {
      v7 = [(AVTransitionController *)self delegate];
      v9 = [v7 transitionControllerCanBeginInteractivePresentationTransition:self];
LABEL_10:

      goto LABEL_11;
    }
  }

  else if (![(AVTransitionController *)self state])
  {
    v7 = [(AVTransitionController *)self presentationContext];
    if ([v7 canBeInteractivelyDismissed])
    {
      v8 = [(AVTransitionController *)self delegate];
      v9 = [v8 transitionControllerCanBeginInteractiveDismissalTransition:self];
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_10;
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (BOOL)transitionDriver:(id)a3 gestureRecognizer:(id)a4 shouldReceiveTouch:(id)a5
{
  v8 = a4;
  v9 = a5;
  if ([a3 isEnabled])
  {
    v10 = [(AVTransitionController *)self delegate];
    v11 = [v10 transitionController:self gestureRecognizer:v8 shouldReceiveTouch:v9];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)ensurePresentationControllerWithPresentingViewController:(id)a3 presentedViewController:(id)a4
{
  if (!self->_presentationController)
  {
    v7 = a4;
    v8 = a3;
    v9 = [(AVTransitionController *)self delegate];
    v16 = [v9 transitionController:self configurationForPresentedViewController:v7 presentingViewController:v8];

    v10 = [(AVTransitionController *)self sourceViewForNextPresentation];
    v11 = [AVPresentationController alloc];
    v12 = [v7 presentationController];
    v13 = [(AVPresentationController *)v11 initWithPresentationController:v12 presentedViewController:v7 presentingViewController:v8 withConfiguration:v16];

    v14 = [(AVPresentationController *)v13 context];
    [v14 setSourceView:v10];

    [(AVTransitionController *)self setSourceViewForNextPresentation:0];
    presentationController = self->_presentationController;
    self->_presentationController = v13;
  }
}

- (void)beginFullScreenDismissalOfViewController:(id)a3 animated:(BOOL)a4 isInteractive:(BOOL)a5 completion:(id)a6
{
  v7 = a4;
  v24 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = [a6 copy];
  v11 = [v9 presentingViewController];

  if (!v11)
  {
    v12 = _AVLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v12, OS_LOG_TYPE_ERROR, "Tried to dismiss a view controller without a presenting view controller. This is hard.", buf, 2u);
    }
  }

  v13 = [(AVTransitionController *)self presentationContext];
  v14 = [v13 presentedViewController];

  v15 = [v9 transitionCoordinator];
  if (v15)
  {
    v16 = _AVLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v9;
      _os_log_impl(&dword_18B49C000, v16, OS_LOG_TYPE_DEFAULT, "Source view controller is transitioning. Will continue fullscreen dismissal once complete. %@", buf, 0xCu);
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __101__AVTransitionController_beginFullScreenDismissalOfViewController_animated_isInteractive_completion___block_invoke;
    v17[3] = &unk_1E72097C0;
    v17[4] = self;
    v18 = v9;
    v19 = v14;
    v21 = v7;
    v20 = v10;
    [v15 animateAlongsideTransition:0 completion:v17];
  }

  else
  {
    [(AVTransitionController *)self _dismiss:v9 fromViewController:v14 animated:v7 completion:v10];
  }
}

- (void)beginFullScreenPresentationOfViewController:(id)a3 fromView:(id)a4 isInteractive:(BOOL)a5 completion:(id)a6
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  [(AVTransitionController *)self setSourceViewForNextPresentation:v10];
  [v9 setTransitioningDelegate:self];
  if (v10 && ([MEMORY[0x1E69DD258] _viewControllerForFullScreenPresentationFromView:v10], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
  }

  else
  {
    v14 = MEMORY[0x1E69DDA98];
    if ([*MEMORY[0x1E69DDA98] supportsMultipleScenes])
    {
      v13 = 0;
    }

    else
    {

      v19 = [*v14 avkit_possibleWindowForControllingOverallAppearance];
      for (i = [v19 rootViewController];
      {
        v13 = i;

        v10 = [v13 presentedViewController];

        if (!v10)
        {
          break;
        }

        v19 = v13;
        [v13 presentedViewController];
      }
    }
  }

  if (v9)
  {
    v15 = [v11 copy];

    v16 = [v13 transitionCoordinator];
    if (v16)
    {
      v17 = _AVLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v13;
        _os_log_impl(&dword_18B49C000, v17, OS_LOG_TYPE_DEFAULT, "Source view controller is transitioning. Will continue fullscreen presentation once complete. %@", buf, 0xCu);
      }

      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __104__AVTransitionController_beginFullScreenPresentationOfViewController_fromView_isInteractive_completion___block_invoke;
      v21[3] = &unk_1E7209798;
      v21[4] = self;
      v22 = v9;
      v23 = v13;
      v24 = v15;
      [v16 animateAlongsideTransition:0 completion:v21];
    }

    else
    {
      [(AVTransitionController *)self _present:v9 fromViewController:v13 animated:1 completion:v15];
    }
  }

  else
  {
    v18 = _AVLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v18, OS_LOG_TYPE_ERROR, "Cannot present view controller without a view controller from which to present.", buf, 2u);
    }

    (*(v11 + 2))(v11, 0);
    v15 = v11;
  }
}

- (void)addTransitionDriver:(id)a3 toView:(id)a4
{
  if (a3 && a4)
  {
    v6 = a3;
    [a4 addInteraction:v6];
    [v6 setTransitionDriverDelegate:self];
  }
}

- (void)setInteractionView:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_interactionView);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_interactionView, obj);
    v5 = [(AVTransitionController *)self interactiveGestureTracker];
    [(AVTransitionController *)self addTransitionDriver:v5 toView:obj];
  }
}

- (void)setInteractiveGestureTracker:(id)a3
{
  v5 = a3;
  if (self->_interactiveGestureTracker != v5)
  {
    v14 = v5;
    v6 = [(AVTransitionController *)self interactiveGestureTracker];

    if (v6)
    {
      v7 = [(AVTransitionController *)self interactiveGestureTracker];
      v8 = [v7 view];
      v9 = [(AVTransitionController *)self interactiveGestureTracker];
      [v8 removeInteraction:v9];

      v10 = [(AVTransitionController *)self interactiveGestureTracker];
      v11 = [v10 contentTransitioningViewGestureRecognizer];
      [(AVTransitionDriver *)v14 setContentTransitioningViewGestureRecognizer:v11];
    }

    objc_storeStrong(&self->_interactiveGestureTracker, a3);
    interactiveGestureTracker = self->_interactiveGestureTracker;
    v13 = [(AVTransitionController *)self interactionView];
    [(AVTransitionController *)self addTransitionDriver:interactiveGestureTracker toView:v13];

    v5 = v14;
  }
}

- (AVDisplayLink)displayLink
{
  displayLink = self->_displayLink;
  if (!displayLink)
  {
    v4 = objc_alloc_init(AVDisplayLink);
    v5 = self->_displayLink;
    self->_displayLink = v4;

    displayLink = self->_displayLink;
  }

  return displayLink;
}

@end