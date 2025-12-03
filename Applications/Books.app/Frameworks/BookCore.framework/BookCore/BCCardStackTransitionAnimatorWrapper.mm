@interface BCCardStackTransitionAnimatorWrapper
- (BCCardStackTransitionAnimatorWrapper)initWithAnimator:(id)animator context:(id)context waitUntilReadyBlock:(id)block setupBeforeAnimationBlock:(id)animationBlock;
- (double)transitionDuration:(id)duration;
- (void)_setupBeforeAnimationIfNeeded;
- (void)animateTransition:(id)transition;
- (void)waitUntilReady:(id)ready;
- (void)waitUntilReadyThenAnimate;
@end

@implementation BCCardStackTransitionAnimatorWrapper

- (BCCardStackTransitionAnimatorWrapper)initWithAnimator:(id)animator context:(id)context waitUntilReadyBlock:(id)block setupBeforeAnimationBlock:(id)animationBlock
{
  animatorCopy = animator;
  contextCopy = context;
  blockCopy = block;
  animationBlockCopy = animationBlock;
  v22.receiver = self;
  v22.super_class = BCCardStackTransitionAnimatorWrapper;
  v15 = [(BCCardStackTransitionAnimatorWrapper *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_animator, animator);
    objc_storeStrong(&v16->_context, context);
    v17 = [blockCopy copy];
    waitUntilReadyBlock = v16->_waitUntilReadyBlock;
    v16->_waitUntilReadyBlock = v17;

    v19 = [animationBlockCopy copy];
    setupBeforeAnimationBlock = v16->_setupBeforeAnimationBlock;
    v16->_setupBeforeAnimationBlock = v19;
  }

  return v16;
}

- (void)waitUntilReady:(id)ready
{
  waitUntilReadyBlock = self->_waitUntilReadyBlock;
  readyCopy = ready;
  v7 = objc_retainBlock(waitUntilReadyBlock);
  v6 = self->_waitUntilReadyBlock;
  self->_waitUntilReadyBlock = 0;

  if (v7)
  {
    v7[2]();
  }

  else
  {
    readyCopy[2](readyCopy);
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

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  context = self->_context;
  if (context != transitionCopy)
  {
    [(BCCardStackTransitionContext *)context setOuterContext:transitionCopy];
    containerView = [(BCCardStackTransitionContext *)transitionCopy containerView];
    v7 = [(BCCardStackTransitionContext *)transitionCopy viewForKey:UITransitionContextToViewKey];
    [containerView addSubview:v7];
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

- (double)transitionDuration:(id)duration
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