@interface BCCardStackTransitionAnimatorWrapper
- (BCCardStackTransitionAnimatorWrapper)initWithAnimator:(id)a3 context:(id)a4 waitUntilReadyBlock:(id)a5 setupBeforeAnimationBlock:(id)a6;
- (double)transitionDuration:(id)a3;
- (void)_setupBeforeAnimationIfNeeded;
- (void)animateTransition:(id)a3;
- (void)waitUntilReady:(id)a3;
- (void)waitUntilReadyThenAnimate;
@end

@implementation BCCardStackTransitionAnimatorWrapper

- (BCCardStackTransitionAnimatorWrapper)initWithAnimator:(id)a3 context:(id)a4 waitUntilReadyBlock:(id)a5 setupBeforeAnimationBlock:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = BCCardStackTransitionAnimatorWrapper;
  v15 = [(BCCardStackTransitionAnimatorWrapper *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_animator, a3);
    objc_storeStrong(&v16->_context, a4);
    v17 = [v13 copy];
    waitUntilReadyBlock = v16->_waitUntilReadyBlock;
    v16->_waitUntilReadyBlock = v17;

    v19 = [v14 copy];
    setupBeforeAnimationBlock = v16->_setupBeforeAnimationBlock;
    v16->_setupBeforeAnimationBlock = v19;
  }

  return v16;
}

- (void)waitUntilReady:(id)a3
{
  waitUntilReadyBlock = self->_waitUntilReadyBlock;
  v5 = a3;
  v7 = objc_retainBlock(waitUntilReadyBlock);
  v6 = self->_waitUntilReadyBlock;
  self->_waitUntilReadyBlock = 0;

  if (v7)
  {
    v7[2]();
  }

  else
  {
    v5[2](v5);
  }
}

- (void)waitUntilReadyThenAnimate
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_2C69C;
  v2[3] = &unk_2C7D40;
  v2[4] = self;
  [(BCCardStackTransitionAnimatorWrapper *)self waitUntilReady:v2];
}

- (void)_setupBeforeAnimationIfNeeded
{
  v3 = objc_retainBlock(self->_setupBeforeAnimationBlock);
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3);
  }

  setupBeforeAnimationBlock = self->_setupBeforeAnimationBlock;
  self->_setupBeforeAnimationBlock = 0;
}

- (void)animateTransition:(id)a3
{
  v4 = a3;
  context = self->_context;
  if (context != v4)
  {
    [(BCCardStackTransitionContext *)context setOuterContext:v4];
    v6 = [(BCCardStackTransitionContext *)v4 containerView];
    v7 = [(BCCardStackTransitionContext *)v4 viewForKey:UITransitionContextToViewKey];
    [v6 addSubview:v7];
  }

  [(BCCardStackTransitionAnimatorWrapper *)self _setupBeforeAnimationIfNeeded];
  if ([(BCCardStackTransitionContext *)self->_context isAnimated])
  {
    [(BCCardStackTransitionAnimator *)self->_animator animateTransition:self->_context];
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_2C80C;
    v8[3] = &unk_2C7D40;
    v8[4] = self;
    [UIView performWithoutAnimation:v8];
  }
}

- (double)transitionDuration:(id)a3
{
  if (![(BCCardStackTransitionContext *)self->_context isAnimated])
  {
    return 0.0;
  }

  animator = self->_animator;
  context = self->_context;

  [(BCCardStackTransitionAnimator *)animator transitionDuration:context];
  return result;
}

@end