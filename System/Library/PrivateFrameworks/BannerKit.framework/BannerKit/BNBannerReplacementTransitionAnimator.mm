@interface BNBannerReplacementTransitionAnimator
- (void)actionsForTransition:(id)transition;
@end

@implementation BNBannerReplacementTransitionAnimator

- (void)actionsForTransition:(id)transition
{
  transitionCopy = transition;
  isPresenting = [(BNBannerTransitionAnimator *)self isPresenting];
  v6 = MEMORY[0x1E69DE778];
  if (!isPresenting)
  {
    v6 = MEMORY[0x1E69DE768];
  }

  v7 = [transitionCopy viewControllerForKey:*v6];

  view = [v7 view];
  memset(&v17, 0, sizeof(v17));
  if (isPresenting)
  {
    v9 = *(MEMORY[0x1E695EFD0] + 16);
    *&v17.a = *MEMORY[0x1E695EFD0];
    *&v17.c = v9;
    *&v17.tx = *(MEMORY[0x1E695EFD0] + 32);
    v10 = 1.0;
  }

  else
  {
    CGAffineTransformMakeScale(&v17, 0.8, 0.8);
    v10 = 0.0;
  }

  v16 = v17;
  [view setTransform:&v16];
  v11 = MEMORY[0x1E69DD250];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__BNBannerReplacementTransitionAnimator_actionsForTransition___block_invoke;
  v13[3] = &unk_1E81E4E68;
  v14 = view;
  v15 = v10;
  v12 = view;
  [v11 animateWithDuration:0 delay:v13 options:0 animations:0.2 completion:0.25];
}

@end