@interface MFNullAnimationTransitionCoordinator
- (BOOL)animateAlongsideTransitionInView:(id)a3 animation:(id)a4 completion:(id)a5;
- (CGAffineTransform)targetTransform;
- (UIView)containerView;
- (id)_alongsideAnimations;
- (id)_alongsideCompletions;
- (void)_addAlongsideAnimation:(id)a3;
- (void)_addAlongsideCompletion:(id)a3;
- (void)_applyBlocks:(id)a3;
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

- (BOOL)animateAlongsideTransitionInView:(id)a3 animation:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  transitionIsInFlight = self->_transitionIsInFlight;
  if (v9 && !self->_transitionIsInFlight)
  {
    [(MFNullAnimationTransitionCoordinator *)self _addAlongsideAnimation:v9];
  }

  if (v10)
  {
    [(MFNullAnimationTransitionCoordinator *)self _addAlongsideCompletion:v10];
  }

  return v9 == 0 || !transitionIsInFlight;
}

- (void)_addAlongsideAnimation:(id)a3
{
  v4 = a3;
  alongsideAnimations = self->_alongsideAnimations;
  v10 = v4;
  if (alongsideAnimations)
  {
    v6 = objc_retainBlock(v4);
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

- (void)_addAlongsideCompletion:(id)a3
{
  v4 = a3;
  alongsideCompletions = self->_alongsideCompletions;
  v10 = v4;
  if (alongsideCompletions)
  {
    v6 = objc_retainBlock(v4);
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
    v7 = [(MFNullAnimationTransitionCoordinator *)self _alongsideAnimations];

    if (!v7)
    {
      break;
    }

    [(MFNullAnimationTransitionCoordinator *)self _applyBlocks:?];
    v3 = v7;
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

- (void)_applyBlocks:(id)a3
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
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
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v7 + 1) + 8 * v6) + 16))(*(*(&v7 + 1) + 8 * v6));
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v7 objects:v11 count:16];
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