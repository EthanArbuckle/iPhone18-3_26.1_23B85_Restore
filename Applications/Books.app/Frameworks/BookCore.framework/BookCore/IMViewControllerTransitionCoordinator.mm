@interface IMViewControllerTransitionCoordinator
- (BOOL)animateAlongsideTransitionInView:(id)view animation:(id)animation completion:(id)completion;
- (CGAffineTransform)affineTransform;
- (CGAffineTransform)targetTransform;
- (IMViewControllerTransitionCoordinator)initWithMainContext:(id)context;
- (id)_alongsideAnimations:(BOOL)animations;
- (id)_alongsideCompletions:(BOOL)completions;
- (id)_interactiveChangeHandlers:(BOOL)handlers;
- (void)_applyBlocks:(id)blocks releaseBlocks:(id)releaseBlocks;
- (void)notifyWhenInteractionChangesUsingBlock:(id)block;
@end

@implementation IMViewControllerTransitionCoordinator

- (IMViewControllerTransitionCoordinator)initWithMainContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = IMViewControllerTransitionCoordinator;
  v5 = [(IMViewControllerTransitionCoordinator *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v5->__mainContext = contextCopy;
    _auxContext = [(IMViewControllerTransitionContext *)contextCopy _auxContext];

    if (!_auxContext)
    {
      [(IMViewControllerTransitionContext *)contextCopy _setAuxContext:v6];
    }
  }

  return v6;
}

- (CGAffineTransform)affineTransform
{
  v3 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v3;
  *&retstr->tx = *&CGAffineTransformIdentity.tx;
  return self;
}

- (CGAffineTransform)targetTransform
{
  result = self->__mainContext;
  if (result)
  {
    return [(CGAffineTransform *)result targetTransform];
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  return result;
}

- (id)_interactiveChangeHandlers:(BOOL)handlers
{
  interactiveChangeHandlers = self->__interactiveChangeHandlers;
  if (interactiveChangeHandlers)
  {
    v5 = 1;
  }

  else
  {
    v5 = !handlers;
  }

  if (!v5)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->__interactiveChangeHandlers;
    self->__interactiveChangeHandlers = v6;

    interactiveChangeHandlers = self->__interactiveChangeHandlers;
  }

  return interactiveChangeHandlers;
}

- (id)_alongsideAnimations:(BOOL)animations
{
  alongsideAnimations = self->__alongsideAnimations;
  if (alongsideAnimations)
  {
    v5 = 1;
  }

  else
  {
    v5 = !animations;
  }

  if (!v5)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->__alongsideAnimations;
    self->__alongsideAnimations = v6;

    alongsideAnimations = self->__alongsideAnimations;
  }

  return alongsideAnimations;
}

- (id)_alongsideCompletions:(BOOL)completions
{
  alongsideCompletions = self->__alongsideCompletions;
  if (alongsideCompletions)
  {
    v5 = 1;
  }

  else
  {
    v5 = !completions;
  }

  if (!v5)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->__alongsideCompletions;
    self->__alongsideCompletions = v6;

    alongsideCompletions = self->__alongsideCompletions;
  }

  return alongsideCompletions;
}

- (void)_applyBlocks:(id)blocks releaseBlocks:(id)releaseBlocks
{
  blocksCopy = blocks;
  releaseBlocksCopy = releaseBlocks;
  if ([blocksCopy count])
  {
    releaseBlocksCopy[2](releaseBlocksCopy);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = blocksCopy;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v16;
      do
      {
        v13 = 0;
        v14 = v11;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v11 = objc_retainBlock(*(*(&v15 + 1) + 8 * v13));

          (*(v11 + 2))(v11, self);
          v13 = v13 + 1;
          v14 = v11;
        }

        while (v10 != v13);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }
}

- (BOOL)animateAlongsideTransitionInView:(id)view animation:(id)animation completion:(id)completion
{
  viewCopy = view;
  animationCopy = animation;
  completionCopy = completion;
  _mainContext = [(IMViewControllerTransitionCoordinator *)self _mainContext];
  _transitionIsInFlight = [_mainContext _transitionIsInFlight];

  if (animationCopy && (_transitionIsInFlight & 1) == 0)
  {
    v13 = [animationCopy copy];
    v14 = [(IMViewControllerTransitionCoordinator *)self _alongsideAnimations:1];
    v15 = objc_retainBlock(v13);
    [v14 addObject:v15];

    if (viewCopy)
    {
      _mainContext2 = [(IMViewControllerTransitionCoordinator *)self _mainContext];
      containerView = [_mainContext2 containerView];
      v18 = [viewCopy isDescendantOfView:containerView];

      if ((v18 & 1) == 0)
      {
        _alongsideAnimationViews = [(IMViewControllerTransitionCoordinator *)self _alongsideAnimationViews];
        if (!_alongsideAnimationViews)
        {
          _alongsideAnimationViews = objc_opt_new();
          [(IMViewControllerTransitionCoordinator *)self _setAlongsideAnimationViews:_alongsideAnimationViews];
        }

        [_alongsideAnimationViews addObject:viewCopy];
      }
    }
  }

  if (completionCopy)
  {
    v20 = [completionCopy copy];
    v21 = [(IMViewControllerTransitionCoordinator *)self _alongsideCompletions:1];
    v22 = objc_retainBlock(v20);
    [v21 addObject:v22];
  }

  return animationCopy == 0 || (_transitionIsInFlight & 1) == 0;
}

- (void)notifyWhenInteractionChangesUsingBlock:(id)block
{
  if (block)
  {
    v6 = [block copy];
    v4 = [(IMViewControllerTransitionCoordinator *)self _interactiveChangeHandlers:1];
    v5 = objc_retainBlock(v6);
    [v4 addObject:v5];
  }
}

@end