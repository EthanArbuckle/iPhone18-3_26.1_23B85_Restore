@interface BNBannerTransitionAnimator
+ (void)animateInteractive:(BOOL)interactive animations:(id)animations completion:(id)completion;
- (double)transitionDuration:(id)duration;
- (id)initForPresenting:(BOOL)presenting;
- (void)actionsForTransition:(id)transition;
@end

@implementation BNBannerTransitionAnimator

- (id)initForPresenting:(BOOL)presenting
{
  v5.receiver = self;
  v5.super_class = BNBannerTransitionAnimator;
  result = [(BNBannerAnimator *)&v5 init];
  if (result)
  {
    *(result + 24) = presenting;
  }

  return result;
}

+ (void)animateInteractive:(BOOL)interactive animations:(id)animations completion:(id)completion
{
  interactiveCopy = interactive;
  animationsCopy = animations;
  completionCopy = completion;
  v9 = completionCopy;
  if (animationsCopy)
  {
    v10 = MEMORY[0x1E69DD250];
    if (interactiveCopy)
    {
      v11 = 0.85;
    }

    else
    {
      v11 = 1.0;
    }

    if (interactiveCopy)
    {
      v12 = 0.08;
    }

    else
    {
      v12 = 0.5;
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __71__BNBannerTransitionAnimator_animateInteractive_animations_completion___block_invoke;
    v13[3] = &unk_1E81E4EB8;
    v14 = animationsCopy;
    [v10 _animateUsingSpringWithDampingRatio:interactiveCopy response:v13 tracking:v9 dampingRatioSmoothing:v11 responseSmoothing:v12 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.998];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1, 0);
  }
}

- (void)actionsForTransition:(id)transition
{
  transitionCopy = transition;
  v5 = transitionCopy;
  if (self->_presenting)
  {
    v6 = MEMORY[0x1E69DE778];
  }

  else
  {
    v6 = MEMORY[0x1E69DE768];
  }

  v7 = [transitionCopy viewControllerForKey:*v6];
  view = [v7 view];
  if (self->_presenting)
  {
    [v5 initialFrameForViewController:v7];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = MEMORY[0x1E69DD250];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __51__BNBannerTransitionAnimator_actionsForTransition___block_invoke;
    v18[3] = &unk_1E81E4EE0;
    v19 = view;
    v20 = v10;
    v21 = v12;
    v22 = v14;
    v23 = v16;
    [v17 performWithoutAnimation:v18];
  }

  [v5 finalFrameForViewController:v7];
  [view setFrame:?];
}

uint64_t __51__BNBannerTransitionAnimator_actionsForTransition___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (double)transitionDuration:(id)duration
{
  if (self->_presenting)
  {
    v3 = MEMORY[0x1E69DE778];
  }

  else
  {
    v3 = MEMORY[0x1E69DE768];
  }

  v4 = *v3;
  durationCopy = duration;
  v6 = [durationCopy viewControllerForKey:v4];
  [durationCopy initialFrameForViewController:v6];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [durationCopy finalFrameForViewController:v6];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v25.origin.x = v8;
  v25.origin.y = v10;
  v25.size.width = v12;
  v25.size.height = v14;
  v26.origin.x = v16;
  v26.origin.y = v18;
  v26.size.width = v20;
  v26.size.height = v22;
  if (CGRectEqualToRect(v25, v26))
  {
    v23 = 0.0;
  }

  else
  {
    v23 = 0.375;
  }

  return v23;
}

@end