@interface AVTransitionController
- (AVDisplayLink)displayLink;
- (AVTransitionControllerDelegate)delegate;
- (BOOL)transitionDriver:(id)driver gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)transitionDriver:(id)driver shouldDriveTransitionInteractionOfType:(int64_t)type;
- (BOOL)wantsInteractiveStart;
- (CGPoint)touchGravity;
- (UIView)interactionView;
- (UIView)sourceViewForNextPresentation;
- (double)transitionDuration:(id)duration;
- (id)transitionBackgroundViewBackgroundColor:(id)color;
- (id)transitionPresentedViewBackgroundColor:(id)color;
- (void)_cancelTransition;
- (void)_dismiss:(id)_dismiss fromViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)_ensurePresentationControllerWithTransitionContext:(id)context;
- (void)_finishTransition;
- (void)_fireDidBeginHandlerIfNeeded;
- (void)_present:(id)_present fromViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)_startObservingAnimatorProgress;
- (void)addTransitionDriver:(id)driver toView:(id)view;
- (void)animationEnded:(BOOL)ended;
- (void)beginFullScreenDismissalOfViewController:(id)controller animated:(BOOL)animated isInteractive:(BOOL)interactive completion:(id)completion;
- (void)beginFullScreenPresentationOfViewController:(id)controller fromView:(id)view isInteractive:(BOOL)interactive completion:(id)completion;
- (void)ensurePresentationControllerWithPresentingViewController:(id)controller presentedViewController:(id)viewController;
- (void)setInteractionView:(id)view;
- (void)setInteractiveGestureTracker:(id)tracker;
- (void)startInteractiveTransition:(id)transition;
- (void)transitionDriver:(id)driver didBeginTrackingTransitionInteraction:(int64_t)interaction readyToProceedHandler:(id)handler;
- (void)transitionDriverDidCancelInteraction:(id)interaction;
- (void)transitionDriverDidContinueInteraction:(id)interaction;
- (void)transitionDriverDidFinishInteraction:(id)interaction;
- (void)transitionWillComplete:(id)complete success:(BOOL)success continueBlock:(id)block;
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
  presentationContext = [(AVTransitionController *)self presentationContext];
  presentedViewController = [presentationContext presentedViewController];
  transitioningDelegate = [presentedViewController transitioningDelegate];

  if (transitioningDelegate == self)
  {
    displayLink = [(AVTransitionController *)self displayLink];
    [displayLink startDisplayLinkUpdatesForObserver:self framesPerSecond:36 usingBlock:&__block_literal_global_29881];
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

- (void)_present:(id)_present fromViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  _presentCopy = _present;
  [(AVTransitionController *)self ensurePresentationControllerWithPresentingViewController:controllerCopy presentedViewController:_presentCopy];
  transitionCoordinator = [controllerCopy transitionCoordinator];

  if (transitionCoordinator)
  {
    v14 = _AVLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v14, OS_LOG_TYPE_ERROR, "Attempted to present from source view controller that is transitioning.", buf, 2u);
    }
  }

  [controllerCopy presentViewController:_presentCopy animated:animatedCopy completion:0];
  transitionCoordinator2 = [_presentCopy transitionCoordinator];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __74__AVTransitionController__present_fromViewController_animated_completion___block_invoke;
  v17[3] = &unk_1E72097E8;
  v18 = completionCopy;
  v16 = completionCopy;
  [transitionCoordinator2 animateAlongsideTransition:0 completion:v17];

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
  transitionDidBeginHandler = [(AVTransitionController *)self transitionDidBeginHandler];
  [(AVTransitionController *)self setTransitionDidBeginHandler:0];
  v3 = transitionDidBeginHandler;
  if (transitionDidBeginHandler)
  {
    (*(transitionDidBeginHandler + 16))(transitionDidBeginHandler);
    v3 = transitionDidBeginHandler;
  }
}

- (void)_dismiss:(id)_dismiss fromViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  _dismissCopy = _dismiss;
  transitionCoordinator = [controllerCopy transitionCoordinator];

  if (transitionCoordinator)
  {
    v14 = _AVLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v14, OS_LOG_TYPE_ERROR, "Attempted to dismiss from source view controller that is transitioning.", buf, 2u);
    }
  }

  [controllerCopy dismissViewControllerAnimated:animatedCopy completion:0];
  transitionCoordinator2 = [_dismissCopy transitionCoordinator];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __74__AVTransitionController__dismiss_fromViewController_animated_completion___block_invoke;
  v17[3] = &unk_1E72097E8;
  v18 = completionCopy;
  v16 = completionCopy;
  [transitionCoordinator2 animateAlongsideTransition:0 completion:v17];

  [(AVTransitionController *)self _startObservingAnimatorProgress];
}

uint64_t __74__AVTransitionController__dismiss_fromViewController_animated_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 isCancelled];
  v4 = *(v2 + 16);

  return v4(v2, v3 ^ 1u);
}

- (void)transitionWillComplete:(id)complete success:(BOOL)success continueBlock:(id)block
{
  successCopy = success;
  blockCopy = block;
  delegate = [(AVTransitionController *)self delegate];
  [delegate transitionController:self transitionWillComplete:successCopy continueBlock:blockCopy];
}

- (id)transitionPresentedViewBackgroundColor:(id)color
{
  delegate = [(AVTransitionController *)self delegate];
  v5 = [delegate transitionControllerPresentedViewBackgroundColor:self];

  return v5;
}

- (id)transitionBackgroundViewBackgroundColor:(id)color
{
  delegate = [(AVTransitionController *)self delegate];
  v5 = [delegate transitionControllerBackgroundViewBackgroundColor:self];

  return v5;
}

- (void)animationEnded:(BOOL)ended
{
  endedCopy = ended;
  v17 = *MEMORY[0x1E69E9840];
  if ([(AVPresentationController *)self->_presentationController presented]|| [(AVPresentationController *)self->_presentationController presenting])
  {
    [(AVPresentationController *)self->_presentationController presentationTransitionDidEnd:endedCopy];
  }

  else if ([(AVPresentationController *)self->_presentationController dismissed]|| [(AVPresentationController *)self->_presentationController dismissing])
  {
    [(AVPresentationController *)self->_presentationController dismissalTransitionDidEnd:endedCopy];
    presentationController = self->_presentationController;
    self->_presentationController = 0;
  }

  [(AVTransitionController *)self setActiveTransition:0];
  displayLink = [(AVTransitionController *)self displayLink];
  [displayLink invalidate];

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
    selfCopy = self;
    _os_log_impl(&dword_18B49C000, v9, OS_LOG_TYPE_DEFAULT, "%s %d %p", &v11, 0x1Cu);
  }
}

- (double)transitionDuration:(id)duration
{
  durationCopy = duration;
  [(AVTransitionController *)self _ensurePresentationControllerWithTransitionContext:durationCopy];
  if ([(AVPresentationController *)self->_presentationController presented]|| [(AVPresentationController *)self->_presentationController presenting])
  {
    [(AVPresentationController *)self->_presentationController presentationTransitionWillBegin];
  }

  else if ([(AVPresentationController *)self->_presentationController dismissed]|| [(AVPresentationController *)self->_presentationController dismissing])
  {
    [(AVPresentationController *)self->_presentationController dismissalTransitionWillBegin];
  }

  presentationContext = [(AVTransitionController *)self presentationContext];
  presentationWindow = [presentationContext presentationWindow];
  windowScene = [presentationWindow windowScene];

  activationState = [windowScene activationState];
  v10 = activationState;
  if (activationState == 2 || activationState == -1)
  {
    presentationWindow = [(AVTransitionController *)self presentationContext];
    v7PresentationWindow = [presentationWindow presentationWindow];
    avkit_isHostedInAnotherProcess = [v7PresentationWindow avkit_isHostedInAnotherProcess];
  }

  else
  {
    avkit_isHostedInAnotherProcess = 1;
  }

  if (v10 == 2 || v10 == -1)
  {
  }

  v12 = 0.0;
  if (([durationCopy isAnimated] & avkit_isHostedInAnotherProcess) == 1)
  {
    presentationContext2 = [(AVTransitionController *)self presentationContext];
    configuration = [presentationContext2 configuration];
    [configuration transitionDuration];
    v12 = v15;
  }

  return v12;
}

- (void)_ensurePresentationControllerWithTransitionContext:(id)context
{
  v4 = *MEMORY[0x1E69DE768];
  contextCopy = context;
  v8 = [contextCopy viewControllerForKey:v4];
  v6 = [contextCopy viewControllerForKey:*MEMORY[0x1E69DE778]];
  [(AVTransitionController *)self ensurePresentationControllerWithPresentingViewController:v8 presentedViewController:v6];
  context = [(AVPresentationController *)self->_presentationController context];
  [context setTransitionContext:contextCopy];
}

- (void)startInteractiveTransition:(id)transition
{
  v38 = *MEMORY[0x1E69E9840];
  transitionCopy = transition;
  v5 = _AVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v35 = "[AVTransitionController startInteractiveTransition:]";
    v36 = 2112;
    v37 = transitionCopy;
    _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
  }

  presentationContext = [(AVTransitionController *)self presentationContext];
  [presentationContext setTransitionContext:transitionCopy];

  v7 = [[AVTransition alloc] initWithTransitionContext:transitionCopy];
  [(AVTransitionController *)self setActiveTransition:v7];

  activeTransition = [(AVTransitionController *)self activeTransition];
  presentationContext2 = [(AVTransitionController *)self presentationContext];
  [activeTransition setPresentationContext:presentationContext2];

  activeTransition2 = [(AVTransitionController *)self activeTransition];
  [activeTransition2 setDelegate:self];

  activeTransition3 = [(AVTransitionController *)self activeTransition];
  [activeTransition3 startInteractiveTransition];

  state = [(AVTransitionController *)self state];
  if (state > 2)
  {
    if (state != 3)
    {
      if (state == 4)
      {
        [(AVTransitionController *)self _fireDidBeginHandlerIfNeeded];
        delegate = [(AVTransitionController *)self delegate];
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __53__AVTransitionController_startInteractiveTransition___block_invoke;
        v33[3] = &unk_1E720A090;
        v33[4] = self;
        [delegate transitionController:self prepareForFinishingInteractiveTransition:v33];
LABEL_17:

        goto LABEL_21;
      }

      if (state != 5)
      {
        goto LABEL_21;
      }

LABEL_11:
      delegate = _AVLog();
      if (os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
      {
        v14 = _AVMethodProem(self);
        *buf = 138412290;
        v35 = v14;
        _os_log_error_impl(&dword_18B49C000, delegate, OS_LOG_TYPE_ERROR, "%@: Unexpected transition state.", buf, 0xCu);
      }

      goto LABEL_17;
    }

    [(AVTransitionController *)self _fireDidBeginHandlerIfNeeded];
    selfCopy2 = self;
    v16 = 3;
LABEL_20:
    [(AVTransitionController *)selfCopy2 setState:v16];
    goto LABEL_21;
  }

  switch(state)
  {
    case 0:
LABEL_19:
      selfCopy2 = self;
      v16 = 5;
      goto LABEL_20;
    case 1:
      if ([transitionCopy isInteractive])
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
  context = [(AVPresentationController *)self->_presentationController context];
  transitionType = [context transitionType];

  if (transitionType)
  {
    if (transitionType == 2)
    {
      delegate2 = [(AVTransitionController *)self delegate];
      context2 = [(AVPresentationController *)self->_presentationController context];
      presentedViewController = [context2 presentedViewController];
      delegate4 = [delegate2 transitionController:self targetViewForDismissingViewController:presentedViewController];

      presentationContext3 = [(AVTransitionController *)self presentationContext];
      [presentationContext3 setSourceView:delegate4];

      presentationContext4 = [(AVTransitionController *)self presentationContext];
      interactiveGestureTracker = [(AVTransitionController *)self interactiveGestureTracker];
      [presentationContext4 setAllowsPausingWhenTransitionCompletes:{objc_msgSend(interactiveGestureTracker, "transitionInteraction") != 2}];

      delegate3 = [(AVTransitionController *)self delegate];
      context3 = [(AVPresentationController *)self->_presentationController context];
      presentedViewController2 = [context3 presentedViewController];
      [delegate3 transitionController:self willBeginDismissingViewController:presentedViewController2];
    }

    else
    {
      if (transitionType != 1)
      {
        goto LABEL_30;
      }

      delegate4 = [(AVTransitionController *)self delegate];
      delegate3 = [(AVPresentationController *)self->_presentationController context];
      context3 = [delegate3 presentedViewController];
      [delegate4 transitionController:self willBeginPresentingViewController:context3];
    }
  }

  else
  {
    delegate4 = _AVLog();
    if (os_log_type_enabled(delegate4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, delegate4, OS_LOG_TYPE_ERROR, "Unexpected", buf, 2u);
    }
  }

LABEL_30:
  activeTransition4 = [(AVTransitionController *)self activeTransition];
  [activeTransition4 addRunAlongsideAnimationsIfNeeded];

  state2 = [(AVTransitionController *)self state];
  if (state2 > 2)
  {
    if (state2 == 3)
    {
      activeTransition5 = [(AVTransitionController *)self activeTransition];
      [activeTransition5 cancelInteractiveTransition];
      goto LABEL_40;
    }

    if (state2 == 5)
    {
      activeTransition5 = [(AVTransitionController *)self activeTransition];
      [activeTransition5 finishInteractiveTransition];
LABEL_40:
    }
  }

  else
  {
    if (state2 < 2)
    {
      activeTransition5 = _AVLog();
      if (os_log_type_enabled(activeTransition5, OS_LOG_TYPE_ERROR))
      {
        v32 = _AVMethodProem(self);
        *buf = 138412290;
        v35 = v32;
        _os_log_error_impl(&dword_18B49C000, activeTransition5, OS_LOG_TYPE_ERROR, "%@: Unexpected transition state.", buf, 0xCu);
      }

      goto LABEL_40;
    }

    if (state2 == 2)
    {
      activeTransition5 = [(AVTransitionController *)self activeTransition];
      [activeTransition5 pauseInteractiveTransition];
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
  state = [(AVTransitionController *)self state];
  v3 = _AVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "NO";
    v6 = 136315650;
    v7 = "[AVTransitionController wantsInteractiveStart]";
    v9 = "wantsInteractiveStart";
    v8 = 2080;
    if (state == 1)
    {
      v4 = "YES";
    }

    v10 = 2080;
    v11 = v4;
    _os_log_impl(&dword_18B49C000, v3, OS_LOG_TYPE_DEFAULT, "%s %s %s", &v6, 0x20u);
  }

  return state == 1;
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
      state = [(AVTransitionController *)self state];
      _os_log_error_impl(&dword_18B49C000, v3, OS_LOG_TYPE_ERROR, "%@ called with an invalid state %ld", buf, 0x16u);
    }
  }

  activeTransition = [(AVTransitionController *)self activeTransition];

  if (activeTransition)
  {
    [(AVTransitionController *)self setState:5];
    delegate = [(AVTransitionController *)self delegate];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __43__AVTransitionController__finishTransition__block_invoke;
    v7[3] = &unk_1E720A090;
    v7[4] = self;
    [delegate transitionController:self prepareForFinishingInteractiveTransition:v7];
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

- (void)transitionDriverDidFinishInteraction:(id)interaction
{
  interactionCopy = interaction;
  transitionInteraction = [interactionCopy transitionInteraction];
  if (transitionInteraction > 1)
  {
    if (transitionInteraction == 2)
    {
      [interactionCopy pinchScale];
      if (v30 < 0.95)
      {
        [interactionCopy pinchVelocity];
        if (v31 < 0.0)
        {
          goto LABEL_42;
        }
      }

      [interactionCopy pinchVelocity];
      if (v32 < -2.5)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }

    if (transitionInteraction != 3)
    {
      goto LABEL_43;
    }

    [interactionCopy locationInWindow];
    v10 = v9;
    [interactionCopy velocityInWindow];
    v43 = v11;
    v13 = v12;
    [interactionCopy translationInWindow];
    v15 = v14;
    v16 = v10 - v14;
    presentationContext = [(AVTransitionController *)self presentationContext];
    presentationWindow = [presentationContext presentationWindow];
    [presentationWindow bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    presentationContext2 = [(AVTransitionController *)self presentationContext];
    currentTransition = [presentationContext2 currentTransition];
    v29 = currentTransition;
    if (currentTransition)
    {
      [currentTransition rotationTransform];
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

    [interactionCopy angleOfVelocityInWindow];
    v36 = v35;
    lastNonZeroVelocityWasDownward = [interactionCopy lastNonZeroVelocityWasDownward];
    v38 = -v36;
    if (v36 >= 0.0)
    {
      v38 = v36;
    }

    if (v38 >= v34 * 70.0 + (1.0 - v34) * 80.0 || v13 <= 0.0)
    {
      v39 = v13 != *(MEMORY[0x1E695EFF8] + 8) || v43 != *MEMORY[0x1E695EFF8];
      if (!lastNonZeroVelocityWasDownward)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v39 = 0;
      if (!lastNonZeroVelocityWasDownward)
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

  if (!transitionInteraction)
  {
LABEL_41:
    [(AVTransitionController *)self _cancelTransition];
    goto LABEL_43;
  }

  if (transitionInteraction == 1)
  {
    [interactionCopy pinchScale];
    if (v6 > 1.05 && ([interactionCopy pinchVelocity], v7 > 0.0) || (objc_msgSend(interactionCopy, "pinchVelocity"), v8 > 1.5))
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
        state = [(AVTransitionController *)self state];
        _os_log_error_impl(&dword_18B49C000, v3, OS_LOG_TYPE_ERROR, "%@ called with an invalid state %ld", &v6, 0x16u);
      }
    }

    [(AVTransitionController *)self setState:3];
    activeTransition = [(AVTransitionController *)self activeTransition];
    [activeTransition cancelInteractiveTransition];
  }
}

- (void)transitionDriverDidCancelInteraction:(id)interaction
{
  presentationContext = [(AVTransitionController *)self presentationContext];
  presentationWindow = [presentationContext presentationWindow];
  windowScene = [presentationWindow windowScene];

  dismissingTransition = [presentationContext dismissingTransition];
  interfaceOrientation = [windowScene interfaceOrientation];
  if ([presentationContext isDismissing] && objc_msgSend(dismissingTransition, "isRotated") && objc_msgSend(presentationContext, "wasInitiallyInteractive") && interfaceOrientation == objc_msgSend(dismissingTransition, "finalInterfaceOrientation") && objc_msgSend(windowScene, "activationState"))
  {
    rotatableSecondWindow = [presentationContext rotatableSecondWindow];
    if (rotatableSecondWindow)
    {

LABEL_9:
      [(AVTransitionController *)self _finishTransition];
      goto LABEL_12;
    }

    avFullScreenViewController = [presentationContext avFullScreenViewController];

    if (avFullScreenViewController)
    {
      goto LABEL_9;
    }

    [dismissingTransition setWasCancelledWithInactiveScene:1];
  }

  [(AVTransitionController *)self _cancelTransition];
LABEL_12:
}

- (void)transitionDriverDidContinueInteraction:(id)interaction
{
  interactionCopy = interaction;
  if ([(AVTransitionController *)self state]!= 2)
  {
    goto LABEL_31;
  }

  context = [(AVPresentationController *)self->_presentationController context];
  sourceView = [context sourceView];

  [interactionCopy translationInWindow];
  v95 = v7;
  v96 = v8;
  [interactionCopy rotation];
  v10 = v9;
  transitionInteraction = [interactionCopy transitionInteraction];
  v12 = 0.5;
  v13 = 1.125;
  if (transitionInteraction == 3)
  {
    presentationContext = [(AVTransitionController *)self presentationContext];
    transitionContext = [presentationContext transitionContext];
    containerView = [transitionContext containerView];
    [containerView frame];
    v23 = v22;

    presentationContext2 = [(AVTransitionController *)self presentationContext];
    transitionContext2 = [presentationContext2 transitionContext];
    containerView2 = [transitionContext2 containerView];
    [containerView2 frame];
    v28 = v27;

    presentationContext3 = [(AVTransitionController *)self presentationContext];
    dismissingTransition = [presentationContext3 dismissingTransition];
    if ([dismissingTransition isRotated])
    {
      v23 = v28;
    }

    v15 = v96 / v23;
    v14 = 1.0 - v96 / v23;
    goto LABEL_11;
  }

  if (transitionInteraction == 2)
  {
    [interactionCopy pinchScale];
    v15 = 1.0 - v17;
  }

  else
  {
    v14 = 1.0;
    v15 = 1.0;
    if (transitionInteraction != 1)
    {
      goto LABEL_11;
    }

    [interactionCopy pinchScale];
    v15 = v16 + -1.0;
  }

  [interactionCopy pinchScale];
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
      easeInFunction = [(AVTransitionController *)self easeInFunction];
      v42 = fmax(v14, 0.0);
      *&v42 = v42;
      [easeInFunction _solveForInput:v42];
      v44 = v43;

      v35 = v12 + v44 * (1.0 - v12);
    }
  }

  else
  {
    v36 = v13 - v12;
    easeInFunction2 = [(AVTransitionController *)self easeInFunction];
    v38 = fmin(fmax((v14 + -1.0) / (v13 - v12), 0.0), 1.0);
    *&v38 = v38;
    [easeInFunction2 _solveForInput:v38];
    v40 = v39;

    v35 = v40 * v36 + 1.0;
  }

  v45 = fmax(v15, 0.0);
  if (sourceView)
  {
    presentationContext4 = [(AVTransitionController *)self presentationContext];
    currentTransition = [presentationContext4 currentTransition];
    if ([currentTransition isRotated])
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
  easeOutFunction = [(AVTransitionController *)self easeOutFunction];
  v51 = v10 / v48;
  *&v52 = fabsf(v51);
  [easeOutFunction _solveForInput:v52];
  if (v10 >= 0.0)
  {
    v54 = v53 * 1.57079633;
  }

  else
  {
    v54 = -(v53 * 1.57079633);
  }

  presentationContext5 = [(AVTransitionController *)self presentationContext];
  presentationWindow = [presentationContext5 presentationWindow];
  [presentationWindow bounds];
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  presentationContext6 = [(AVTransitionController *)self presentationContext];
  currentTransition2 = [presentationContext6 currentTransition];
  v67 = currentTransition2;
  if (currentTransition2)
  {
    [currentTransition2 rotationTransform];
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

  [interactionCopy locationInWindow];
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
  activeTransition = [(AVTransitionController *)self activeTransition];
  [activeTransition updateWithPercentComplete:v49 scale:v35 translation:v87 rotation:{v91, v54}];

LABEL_31:
}

- (void)transitionDriver:(id)driver didBeginTrackingTransitionInteraction:(int64_t)interaction readyToProceedHandler:(id)handler
{
  driverCopy = driver;
  handlerCopy = handler;
  [(AVTransitionController *)self setTouchGravity:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  if (![(AVTransitionController *)self state])
  {
    transitionInteraction = [driverCopy transitionInteraction];
    if ((transitionInteraction - 2) >= 2)
    {
      if (transitionInteraction != 1)
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
      delegate = [(AVTransitionController *)self delegate];
      [delegate transitionControllerBeginInteractivePresentationTransition:self];
    }

    else
    {
      [(AVTransitionController *)self setState:1];
      delegate = [(AVTransitionController *)self delegate];
      [delegate transitionControllerBeginInteractiveDismissalTransition:self];
    }

    [(AVTransitionController *)self setTransitionDidBeginHandler:handlerCopy];
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

  handlerCopy[2](handlerCopy);
LABEL_9:
}

- (BOOL)transitionDriver:(id)driver shouldDriveTransitionInteractionOfType:(int64_t)type
{
  driverCopy = driver;
  if ((type - 2) >= 2)
  {
    if (type == 1 && ![(AVTransitionController *)self state])
    {
      delegate = [(AVTransitionController *)self delegate];
      v9 = [delegate transitionControllerCanBeginInteractivePresentationTransition:self];
LABEL_10:

      goto LABEL_11;
    }
  }

  else if (![(AVTransitionController *)self state])
  {
    delegate = [(AVTransitionController *)self presentationContext];
    if ([delegate canBeInteractivelyDismissed])
    {
      delegate2 = [(AVTransitionController *)self delegate];
      v9 = [delegate2 transitionControllerCanBeginInteractiveDismissalTransition:self];
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

- (BOOL)transitionDriver:(id)driver gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  if ([driver isEnabled])
  {
    delegate = [(AVTransitionController *)self delegate];
    v11 = [delegate transitionController:self gestureRecognizer:recognizerCopy shouldReceiveTouch:touchCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)ensurePresentationControllerWithPresentingViewController:(id)controller presentedViewController:(id)viewController
{
  if (!self->_presentationController)
  {
    viewControllerCopy = viewController;
    controllerCopy = controller;
    delegate = [(AVTransitionController *)self delegate];
    v16 = [delegate transitionController:self configurationForPresentedViewController:viewControllerCopy presentingViewController:controllerCopy];

    sourceViewForNextPresentation = [(AVTransitionController *)self sourceViewForNextPresentation];
    v11 = [AVPresentationController alloc];
    presentationController = [viewControllerCopy presentationController];
    v13 = [(AVPresentationController *)v11 initWithPresentationController:presentationController presentedViewController:viewControllerCopy presentingViewController:controllerCopy withConfiguration:v16];

    context = [(AVPresentationController *)v13 context];
    [context setSourceView:sourceViewForNextPresentation];

    [(AVTransitionController *)self setSourceViewForNextPresentation:0];
    presentationController = self->_presentationController;
    self->_presentationController = v13;
  }
}

- (void)beginFullScreenDismissalOfViewController:(id)controller animated:(BOOL)animated isInteractive:(BOOL)interactive completion:(id)completion
{
  animatedCopy = animated;
  v24 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v10 = [completion copy];
  presentingViewController = [controllerCopy presentingViewController];

  if (!presentingViewController)
  {
    v12 = _AVLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v12, OS_LOG_TYPE_ERROR, "Tried to dismiss a view controller without a presenting view controller. This is hard.", buf, 2u);
    }
  }

  presentationContext = [(AVTransitionController *)self presentationContext];
  presentedViewController = [presentationContext presentedViewController];

  transitionCoordinator = [controllerCopy transitionCoordinator];
  if (transitionCoordinator)
  {
    v16 = _AVLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = controllerCopy;
      _os_log_impl(&dword_18B49C000, v16, OS_LOG_TYPE_DEFAULT, "Source view controller is transitioning. Will continue fullscreen dismissal once complete. %@", buf, 0xCu);
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __101__AVTransitionController_beginFullScreenDismissalOfViewController_animated_isInteractive_completion___block_invoke;
    v17[3] = &unk_1E72097C0;
    v17[4] = self;
    v18 = controllerCopy;
    v19 = presentedViewController;
    v21 = animatedCopy;
    v20 = v10;
    [transitionCoordinator animateAlongsideTransition:0 completion:v17];
  }

  else
  {
    [(AVTransitionController *)self _dismiss:controllerCopy fromViewController:presentedViewController animated:animatedCopy completion:v10];
  }
}

- (void)beginFullScreenPresentationOfViewController:(id)controller fromView:(id)view isInteractive:(BOOL)interactive completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  viewCopy = view;
  completionCopy = completion;
  [(AVTransitionController *)self setSourceViewForNextPresentation:viewCopy];
  [controllerCopy setTransitioningDelegate:self];
  if (viewCopy && ([MEMORY[0x1E69DD258] _viewControllerForFullScreenPresentationFromView:viewCopy], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
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

      avkit_possibleWindowForControllingOverallAppearance = [*v14 avkit_possibleWindowForControllingOverallAppearance];
      for (i = [avkit_possibleWindowForControllingOverallAppearance rootViewController];
      {
        v13 = i;

        viewCopy = [v13 presentedViewController];

        if (!viewCopy)
        {
          break;
        }

        avkit_possibleWindowForControllingOverallAppearance = v13;
        [v13 presentedViewController];
      }
    }
  }

  if (controllerCopy)
  {
    v15 = [completionCopy copy];

    transitionCoordinator = [v13 transitionCoordinator];
    if (transitionCoordinator)
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
      v22 = controllerCopy;
      v23 = v13;
      v24 = v15;
      [transitionCoordinator animateAlongsideTransition:0 completion:v21];
    }

    else
    {
      [(AVTransitionController *)self _present:controllerCopy fromViewController:v13 animated:1 completion:v15];
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

    (*(completionCopy + 2))(completionCopy, 0);
    v15 = completionCopy;
  }
}

- (void)addTransitionDriver:(id)driver toView:(id)view
{
  if (driver && view)
  {
    driverCopy = driver;
    [view addInteraction:driverCopy];
    [driverCopy setTransitionDriverDelegate:self];
  }
}

- (void)setInteractionView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_interactionView);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_interactionView, obj);
    interactiveGestureTracker = [(AVTransitionController *)self interactiveGestureTracker];
    [(AVTransitionController *)self addTransitionDriver:interactiveGestureTracker toView:obj];
  }
}

- (void)setInteractiveGestureTracker:(id)tracker
{
  trackerCopy = tracker;
  if (self->_interactiveGestureTracker != trackerCopy)
  {
    v14 = trackerCopy;
    interactiveGestureTracker = [(AVTransitionController *)self interactiveGestureTracker];

    if (interactiveGestureTracker)
    {
      interactiveGestureTracker2 = [(AVTransitionController *)self interactiveGestureTracker];
      view = [interactiveGestureTracker2 view];
      interactiveGestureTracker3 = [(AVTransitionController *)self interactiveGestureTracker];
      [view removeInteraction:interactiveGestureTracker3];

      interactiveGestureTracker4 = [(AVTransitionController *)self interactiveGestureTracker];
      contentTransitioningViewGestureRecognizer = [interactiveGestureTracker4 contentTransitioningViewGestureRecognizer];
      [(AVTransitionDriver *)v14 setContentTransitioningViewGestureRecognizer:contentTransitioningViewGestureRecognizer];
    }

    objc_storeStrong(&self->_interactiveGestureTracker, tracker);
    interactiveGestureTracker = self->_interactiveGestureTracker;
    interactionView = [(AVTransitionController *)self interactionView];
    [(AVTransitionController *)self addTransitionDriver:interactiveGestureTracker toView:interactionView];

    trackerCopy = v14;
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