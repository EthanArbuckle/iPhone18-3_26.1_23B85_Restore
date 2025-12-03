@interface MFNullAnimationTransitionCoordinator
- (BOOL)animateAlongsideTransitionInView:(id)view animation:(id)animation completion:(id)completion;
- (CGAffineTransform)targetTransform;
- (UIView)containerView;
- (id)_alongsideAnimations;
- (id)_alongsideCompletions;
- (void)_addAlongsideAnimation:(id)animation;
- (void)_addAlongsideCompletion:(id)completion;
- (void)_applyBlocks:(id)blocks;
- (void)_runAlongsideAnimations;
- (void)_runAlongsideCompletionsAfterCommit;
@end

@implementation MFNullAnimationTransitionCoordinator

- (CGAffineTransform)targetTransform
{
  v3 = *&CGAffineTransformIdentity.c;
  *&retstr->a = *&CGAffineTransformIdentity.a;
  *&retstr->c = v3;
  *&retstr->tx = *&CGAffineTransformIdentity.tx;
  return self;
}

- (BOOL)animateAlongsideTransitionInView:(id)view animation:(id)animation completion:(id)completion
{
  viewCopy = view;
  animationCopy = animation;
  completionCopy = completion;
  transitionIsInFlight = self->_transitionIsInFlight;
  if (animationCopy && !self->_transitionIsInFlight)
  {
    [(MFNullAnimationTransitionCoordinator *)self _addAlongsideAnimation:animationCopy];
  }

  if (completionCopy)
  {
    [(MFNullAnimationTransitionCoordinator *)self _addAlongsideCompletion:completionCopy];
  }

  return animationCopy == 0 || !transitionIsInFlight;
}

- (void)_addAlongsideAnimation:(id)animation
{
  animationCopy = animation;
  alongsideAnimations = self->_alongsideAnimations;
  v10 = animationCopy;
  if (alongsideAnimations)
  {
    v6 = objc_retainBlock(animationCopy);
    [(NSMutableArray *)alongsideAnimations addObject:v6];
  }

  else
  {
    v7 = [NSMutableArray alloc];
    v6 = objc_retainBlock(v10);
    v8 = [v7 initWithObjects:{v6, 0}];
    v9 = self->_alongsideAnimations;
    self->_alongsideAnimations = v8;
  }
}

- (void)_addAlongsideCompletion:(id)completion
{
  completionCopy = completion;
  alongsideCompletions = self->_alongsideCompletions;
  v10 = completionCopy;
  if (alongsideCompletions)
  {
    v6 = objc_retainBlock(completionCopy);
    [(NSMutableArray *)alongsideCompletions addObject:v6];
  }

  else
  {
    v7 = [NSMutableArray alloc];
    v6 = objc_retainBlock(v10);
    v8 = [v7 initWithObjects:{v6, 0}];
    v9 = self->_alongsideCompletions;
    self->_alongsideCompletions = v8;
  }
}

- (id)_alongsideAnimations
{
  alongsideAnimations = self->_alongsideAnimations;
  v4 = alongsideAnimations;
  v5 = self->_alongsideAnimations;
  self->_alongsideAnimations = 0;

  return alongsideAnimations;
}

- (id)_alongsideCompletions
{
  alongsideCompletions = self->_alongsideCompletions;
  v4 = alongsideCompletions;
  v5 = self->_alongsideCompletions;
  self->_alongsideCompletions = 0;

  return alongsideCompletions;
}

- (void)_runAlongsideAnimations
{
  v3 = 0;
  self->_transitionIsInFlight = 1;
  v4 = -2;
  do
  {
    _alongsideAnimations = [(MFNullAnimationTransitionCoordinator *)self _alongsideAnimations];

    if (!_alongsideAnimations)
    {
      break;
    }

    [(MFNullAnimationTransitionCoordinator *)self _applyBlocks:?];
    v3 = _alongsideAnimations;
  }

  while (!__CFADD__(v4++, 1));
  alongsideAnimations = self->_alongsideAnimations;
  self->_alongsideAnimations = 0;

  self->_transitionIsInFlight = 0;
}

- (void)_runAlongsideCompletionsAfterCommit
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100203DBC;
  v2[3] = &unk_10064C7E8;
  v2[4] = self;
  [UIApp _performBlockAfterCATransactionCommits:v2];
}

- (void)_applyBlocks:(id)blocks
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  blocksCopy = blocks;
  v4 = [blocksCopy countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v4)
  {
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(blocksCopy);
        }

        (*(*(*(&v7 + 1) + 8 * v6) + 16))(*(*(&v7 + 1) + 8 * v6));
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [blocksCopy countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (UIView)containerView
{
  WeakRetained = objc_loadWeakRetained(&self->_containerView);

  return WeakRetained;
}

@end