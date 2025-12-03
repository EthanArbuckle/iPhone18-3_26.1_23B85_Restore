@interface IMViewControllerTransitionContext
- (CGAffineTransform)targetTransform;
- (CGRect)finalFrameForViewController:(id)controller;
- (CGRect)initialFrameForViewController:(id)controller;
- (IMViewControllerTransitionContext)init;
- (id)_transitionCoordinator;
- (void)__runAlongsideAnimations;
- (void)_disableInteractionForViews:(id)views;
- (void)_enableInteractionForDisabledViews;
- (void)_interactivityDidChange:(BOOL)change;
- (void)_runAlongsideCompletions;
- (void)_setAnimator:(id)animator;
- (void)_setInteractor:(id)interactor;
- (void)_setTransitionIsCompleting:(BOOL)completing;
- (void)_updateInteractiveTransitionWithoutTrackingPercentComplete:(double)complete;
- (void)cancelInteractiveTransition;
- (void)completeTransition:(BOOL)transition;
- (void)dealloc;
- (void)finishInteractiveTransition;
- (void)trackAnimation:(id)animation withLayer:(id)layer;
- (void)updateInteractiveTransition:(double)transition;
@end

@implementation IMViewControllerTransitionContext

- (IMViewControllerTransitionContext)init
{
  self->_previousPercentComplete = 0.0;
  self->__completionCurve = 0;
  self->__completionVelocity = 1.0;
  self->_presentationStyle = -1;
  *&self->_transitionContextFlags |= 8u;
  v3 = +[NSMapTable strongToStrongObjectsMapTable];
  trackedAnimations = self->_trackedAnimations;
  self->_trackedAnimations = v3;

  v6.receiver = self;
  v6.super_class = IMViewControllerTransitionContext;
  return [(IMViewControllerTransitionContext *)&v6 init];
}

- (void)dealloc
{
  [(IMViewControllerTransitionContext *)self setBk_containerView:0];
  [(IMViewControllerTransitionContext *)self _setInteractiveUpdateHandler:0];
  [(IMViewControllerTransitionContext *)self _setPostInteractiveCompletionHandler:0];
  [(IMViewControllerTransitionContext *)self _setWillCompleteHandler:0];
  [(IMViewControllerTransitionContext *)self _setCompletionHandler:0];
  [(IMViewControllerTransitionContext *)self _setAuxContext:0];
  v3.receiver = self;
  v3.super_class = IMViewControllerTransitionContext;
  [(IMViewControllerTransitionContext *)&v3 dealloc];
}

- (void)_setAnimator:(id)animator
{
  animatorCopy = animator;
  animator = self->_animator;
  if (animator != animatorCopy)
  {
    v6 = animatorCopy;
    if (animator)
    {
      objc_setAssociatedObject(animator, &unk_342298, 0, &dword_0 + 1);
      animatorCopy = v6;
    }

    self->_animator = animatorCopy;
    if (animatorCopy)
    {
      objc_setAssociatedObject(animatorCopy, &unk_342298, self, &dword_0 + 1);
    }
  }

  _objc_release_x2();
}

- (void)_setInteractor:(id)interactor
{
  interactorCopy = interactor;
  interactor = self->_interactor;
  if (interactor != interactorCopy)
  {
    object = interactorCopy;
    if (interactor)
    {
      objc_setAssociatedObject(interactor, &unk_342298, 0, &dword_0 + 1);
      interactorCopy = object;
    }

    self->_interactor = interactorCopy;
    if (interactorCopy)
    {
      *&self->_transitionContextFlags = *&self->_transitionContextFlags & 0xFE | objc_opt_respondsToSelector() & 1;
      if (objc_opt_respondsToSelector())
      {
        v6 = 2;
      }

      else
      {
        v6 = 0;
      }

      *&self->_transitionContextFlags = *&self->_transitionContextFlags & 0xFD | v6;
      [(IMViewControllerTransitionContext *)self _setInitiallyInteractive:1];
      [(IMViewControllerTransitionContext *)self _setIsCurrentlyInteractive:1];
      objc_setAssociatedObject(object, &unk_342298, self, &dword_0 + 1);
    }
  }

  _objc_release_x2();
}

- (id)_transitionCoordinator
{
  auxContext = self->__auxContext;
  if (auxContext)
  {
    v3 = auxContext;
  }

  else
  {
    v3 = [[IMViewControllerTransitionCoordinator alloc] initWithMainContext:self];
  }

  return v3;
}

- (void)_updateInteractiveTransitionWithoutTrackingPercentComplete:(double)complete
{
  if ([(IMViewControllerTransitionContext *)self initiallyInteractive])
  {
    _interactiveUpdateHandler = [(IMViewControllerTransitionContext *)self _interactiveUpdateHandler];

    if (_interactiveUpdateHandler)
    {
      *&self->_transitionContextFlags &= ~8u;
      v7 = *(self->__interactiveUpdateHandler + 2);
      v6.n128_f64[0] = complete;

      v7(v6);
    }
  }
}

- (void)updateInteractiveTransition:(double)transition
{
  if ([(IMViewControllerTransitionContext *)self _state]== &dword_0 + 1)
  {
    if ([(IMViewControllerTransitionContext *)self isCurrentlyInteractive])
    {
      _interactiveUpdateHandler = [(IMViewControllerTransitionContext *)self _interactiveUpdateHandler];
      if (_interactiveUpdateHandler)
      {
        previousPercentComplete = self->_previousPercentComplete;

        if (previousPercentComplete != transition)
        {
          *&self->_transitionContextFlags &= ~8u;
          self->_previousPercentComplete = transition;
          interactiveUpdateHandler = self->__interactiveUpdateHandler;
          [(IMViewControllerTransitionContext *)self _percentOffset];
          v8 = interactiveUpdateHandler[2];
          v9.n128_f64[0] = v9.n128_f64[0] + transition;

          v8(interactiveUpdateHandler, 0, 0, self, v9);
        }
      }
    }
  }
}

- (void)finishInteractiveTransition
{
  if ([(IMViewControllerTransitionContext *)self _state]== &dword_0 + 1)
  {
    transitionContextFlags = self->_transitionContextFlags;
    *&self->_transitionContextFlags = transitionContextFlags & 0xF3 | 8;
    if (transitionContextFlags)
    {
      [(UIViewControllerInteractiveTransitioning *)self->_interactor completionSpeed];
      self->__completionVelocity = v4;
      if (v4 < 0.0)
      {
        self->__completionVelocity = 1.0;
      }
    }

    if ((*&self->_transitionContextFlags & 2) != 0)
    {
      self->__completionCurve = [(UIViewControllerInteractiveTransitioning *)self->_interactor completionCurve];
    }

    if ([(IMViewControllerTransitionContext *)self isCurrentlyInteractive])
    {
      _interactiveUpdateHandler = [(IMViewControllerTransitionContext *)self _interactiveUpdateHandler];

      if (_interactiveUpdateHandler)
      {
        (*(self->__interactiveUpdateHandler + 2))(self->_previousPercentComplete);
      }
    }

    [(IMViewControllerTransitionContext *)self _interactivityDidChange:0];
  }

  else
  {

    [(IMViewControllerTransitionContext *)self _setState:3];
  }
}

- (void)cancelInteractiveTransition
{
  if ([(IMViewControllerTransitionContext *)self _state]== &dword_0 + 1)
  {
    transitionContextFlags = self->_transitionContextFlags;
    *&self->_transitionContextFlags = transitionContextFlags | 0xC;
    if (transitionContextFlags)
    {
      [(UIViewControllerInteractiveTransitioning *)self->_interactor completionSpeed];
      v5 = -v4;
      v6 = v4 < 0.0;
      v7 = -1.0;
      if (!v6)
      {
        v7 = v5;
      }

      self->__completionVelocity = v7;
    }

    if ((*&self->_transitionContextFlags & 2) != 0)
    {
      self->__completionCurve = [(UIViewControllerInteractiveTransitioning *)self->_interactor completionCurve];
    }

    if ([(IMViewControllerTransitionContext *)self isCurrentlyInteractive])
    {
      _interactiveUpdateHandler = [(IMViewControllerTransitionContext *)self _interactiveUpdateHandler];

      if (_interactiveUpdateHandler)
      {
        (*(self->__interactiveUpdateHandler + 2))(self->_previousPercentComplete);
      }
    }

    [(IMViewControllerTransitionContext *)self _interactivityDidChange:0];
  }

  else
  {

    [(IMViewControllerTransitionContext *)self _setState:2];
  }
}

- (void)completeTransition:(BOOL)transition
{
  transitionCopy = transition;
  willCompleteHandler = self->__willCompleteHandler;
  if (willCompleteHandler)
  {
    willCompleteHandler[2](willCompleteHandler, self, transition);
  }

  completionHandler = self->__completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, self, transitionCopy);
  }

  [(IMViewControllerTransitionContext *)self _runAlongsideCompletions];
}

- (CGAffineTransform)targetTransform
{
  v3 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v3;
  *&retstr->tx = *&CGAffineTransformIdentity.tx;
  return self;
}

- (CGRect)initialFrameForViewController:(id)controller
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)finalFrameForViewController:(id)controller
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_setTransitionIsCompleting:(BOOL)completing
{
  if (completing)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_transitionContextFlags = *&self->_transitionContextFlags & 0xF7 | v3;
}

- (void)_runAlongsideCompletions
{
  auxContext = self->__auxContext;
  if (auxContext)
  {
    _alongsideCompletions = [self->__auxContext _alongsideCompletions];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_65C54;
    v5[3] = &unk_2C7D40;
    v5[4] = self;
    [auxContext _applyBlocks:_alongsideCompletions releaseBlocks:v5];
  }
}

- (void)_interactivityDidChange:(BOOL)change
{
  [(IMViewControllerTransitionContext *)self _setIsCurrentlyInteractive:change];
  auxContext = self->__auxContext;
  if (auxContext)
  {
    _interactiveChangeHandlers = [auxContext _interactiveChangeHandlers];
    if (_interactiveChangeHandlers)
    {
      v6 = self->__auxContext;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_65D04;
      v7[3] = &unk_2C7D40;
      v7[4] = self;
      [v6 _applyBlocks:_interactiveChangeHandlers releaseBlocks:v7];
    }
  }
}

- (void)__runAlongsideAnimations
{
  if (self->__auxContext)
  {
    _alongsideAnimations = 0;
    v4 = -2;
    do
    {
      v5 = _alongsideAnimations;
      _alongsideAnimations = [self->__auxContext _alongsideAnimations];

      if (!_alongsideAnimations)
      {
        break;
      }

      auxContext = self->__auxContext;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_65DFC;
      v8[3] = &unk_2C7D40;
      v8[4] = self;
      [auxContext _applyBlocks:_alongsideAnimations releaseBlocks:v8];
    }

    while (!__CFADD__(v4++, 1));
    [self->__auxContext _setAlongsideAnimations:0];
  }
}

- (void)_disableInteractionForViews:(id)views
{
  viewsCopy = views;
  [(IMViewControllerTransitionContext *)self _enableInteractionForDisabledViews];
  objc_storeStrong(&self->_disabledViews, views);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_disabledViews;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) setUserInteractionEnabled:{0, v11}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_enableInteractionForDisabledViews
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_disabledViews;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7) setUserInteractionEnabled:{1, v9}];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  disabledViews = self->_disabledViews;
  self->_disabledViews = 0;
}

- (void)trackAnimation:(id)animation withLayer:(id)layer
{
  layerCopy = layer;
  v8 = [animation copy];
  trackedAnimations = [(IMViewControllerTransitionContext *)self trackedAnimations];
  [trackedAnimations setObject:layerCopy forKey:v8];
}

@end