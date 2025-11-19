@interface IMViewControllerNullAnimationTransitionCoordinator
- (BOOL)animateAlongsideTransitionInView:(id)a3 animation:(id)a4 completion:(id)a5;
- (CGAffineTransform)targetTransform;
- (id)_alongsideAnimations:(BOOL)a3;
- (id)_alongsideCompletions:(BOOL)a3;
- (void)_applyBlocks:(id)a3 releaseBlocks:(id)a4;
- (void)_runAlongsideAnimations;
- (void)_runAlongsideCompletionsAfterCommit;
@end

@implementation IMViewControllerNullAnimationTransitionCoordinator

- (CGAffineTransform)targetTransform
{
  v3 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v3;
  *&retstr->tx = *&CGAffineTransformIdentity.tx;
  return self;
}

- (id)_alongsideAnimations:(BOOL)a3
{
  alongsideAnimations = self->_alongsideAnimations;
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
    v7 = self->_alongsideAnimations;
    self->_alongsideAnimations = v6;

    alongsideAnimations = self->_alongsideAnimations;
  }

  return alongsideAnimations;
}

- (id)_alongsideCompletions:(BOOL)a3
{
  alongsideCompletions = self->_alongsideCompletions;
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
    v7 = self->_alongsideCompletions;
    self->_alongsideCompletions = v6;

    alongsideCompletions = self->_alongsideCompletions;
  }

  return alongsideCompletions;
}

- (BOOL)animateAlongsideTransitionInView:(id)a3 animation:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  transitionIsInFlight = self->_transitionIsInFlight;
  if (v9 && !self->_transitionIsInFlight)
  {
    v12 = [v9 copy];
    v13 = [(IMViewControllerNullAnimationTransitionCoordinator *)self _alongsideAnimations:1];
    v14 = objc_retainBlock(v12);
    [v13 addObject:v14];
  }

  if (v10)
  {
    v15 = [v10 copy];
    v16 = [(IMViewControllerNullAnimationTransitionCoordinator *)self _alongsideCompletions:1];
    v17 = objc_retainBlock(v15);
    [v16 addObject:v17];
  }

  return v9 == 0 || !transitionIsInFlight;
}

- (void)_runAlongsideAnimations
{
  v3 = 0;
  self->_transitionIsInFlight = 1;
  v4 = -2;
  do
  {
    v5 = v3;
    v3 = [(IMViewControllerNullAnimationTransitionCoordinator *)self _alongsideAnimations:0];

    if (!v3)
    {
      break;
    }

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_138514;
    v8[3] = &unk_2C7D40;
    v8[4] = self;
    [(IMViewControllerNullAnimationTransitionCoordinator *)self _applyBlocks:v3 releaseBlocks:v8];
  }

  while (!__CFADD__(v4++, 1));
  alongsideAnimations = self->_alongsideAnimations;
  self->_alongsideAnimations = 0;
}

- (void)_runAlongsideCompletionsAfterCommit
{
  v3 = [(IMViewControllerNullAnimationTransitionCoordinator *)self _alongsideCompletions:0];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1385B8;
  v4[3] = &unk_2C7D40;
  v4[4] = self;
  [(IMViewControllerNullAnimationTransitionCoordinator *)self _applyBlocks:v3 releaseBlocks:v4];
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

@end