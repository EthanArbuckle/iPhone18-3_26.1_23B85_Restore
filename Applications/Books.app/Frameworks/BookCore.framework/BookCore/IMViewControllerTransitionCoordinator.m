@interface IMViewControllerTransitionCoordinator
- (BOOL)animateAlongsideTransitionInView:(id)a3 animation:(id)a4 completion:(id)a5;
- (CGAffineTransform)affineTransform;
- (CGAffineTransform)targetTransform;
- (IMViewControllerTransitionCoordinator)initWithMainContext:(id)a3;
- (id)_alongsideAnimations:(BOOL)a3;
- (id)_alongsideCompletions:(BOOL)a3;
- (id)_interactiveChangeHandlers:(BOOL)a3;
- (void)_applyBlocks:(id)a3 releaseBlocks:(id)a4;
- (void)notifyWhenInteractionChangesUsingBlock:(id)a3;
@end

@implementation IMViewControllerTransitionCoordinator

- (IMViewControllerTransitionCoordinator)initWithMainContext:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IMViewControllerTransitionCoordinator;
  v5 = [(IMViewControllerTransitionCoordinator *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v5->__mainContext = v4;
    v7 = [(IMViewControllerTransitionContext *)v4 _auxContext];

    if (!v7)
    {
      [(IMViewControllerTransitionContext *)v4 _setAuxContext:v6];
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

- (id)_interactiveChangeHandlers:(BOOL)a3
{
  interactiveChangeHandlers = self->__interactiveChangeHandlers;
  if (interactiveChangeHandlers)
  {
    v5 = 1;
  }

  else
  {
    v5 = !a3;
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

- (id)_alongsideAnimations:(BOOL)a3
{
  alongsideAnimations = self->__alongsideAnimations;
  if (alongsideAnimations)
  {
    v5 = 1;
  }

  else
  {
    v5 = !a3;
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

- (id)_alongsideCompletions:(BOOL)a3
{
  alongsideCompletions = self->__alongsideCompletions;
  if (alongsideCompletions)
  {
    v5 = 1;
  }

  else
  {
    v5 = !a3;
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

- (void)_applyBlocks:(id)a3 releaseBlocks:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v7[2](v7);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v6;
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

- (BOOL)animateAlongsideTransitionInView:(id)a3 animation:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(IMViewControllerTransitionCoordinator *)self _mainContext];
  v12 = [v11 _transitionIsInFlight];

  if (v9 && (v12 & 1) == 0)
  {
    v13 = [v9 copy];
    v14 = [(IMViewControllerTransitionCoordinator *)self _alongsideAnimations:1];
    v15 = objc_retainBlock(v13);
    [v14 addObject:v15];

    if (v8)
    {
      v16 = [(IMViewControllerTransitionCoordinator *)self _mainContext];
      v17 = [v16 containerView];
      v18 = [v8 isDescendantOfView:v17];

      if ((v18 & 1) == 0)
      {
        v19 = [(IMViewControllerTransitionCoordinator *)self _alongsideAnimationViews];
        if (!v19)
        {
          v19 = objc_opt_new();
          [(IMViewControllerTransitionCoordinator *)self _setAlongsideAnimationViews:v19];
        }

        [v19 addObject:v8];
      }
    }
  }

  if (v10)
  {
    v20 = [v10 copy];
    v21 = [(IMViewControllerTransitionCoordinator *)self _alongsideCompletions:1];
    v22 = objc_retainBlock(v20);
    [v21 addObject:v22];
  }

  return v9 == 0 || (v12 & 1) == 0;
}

- (void)notifyWhenInteractionChangesUsingBlock:(id)a3
{
  if (a3)
  {
    v6 = [a3 copy];
    v4 = [(IMViewControllerTransitionCoordinator *)self _interactiveChangeHandlers:1];
    v5 = objc_retainBlock(v6);
    [v4 addObject:v5];
  }
}

@end