@interface ASCredentialRequestContainerViewControllerAnimator
- (ASCredentialRequestContainerViewControllerAnimator)initWithPresenting:(BOOL)a3;
- (id)_viewControllerForTransitionContext:(id)a3;
- (void)animateTransition:(id)a3;
@end

@implementation ASCredentialRequestContainerViewControllerAnimator

- (ASCredentialRequestContainerViewControllerAnimator)initWithPresenting:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = ASCredentialRequestContainerViewControllerAnimator;
  v4 = [(ASCredentialRequestContainerViewControllerAnimator *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_presenting = a3;
    v6 = v4;
  }

  return v5;
}

- (id)_viewControllerForTransitionContext:(id)a3
{
  v4 = a3;
  v5 = [(ASCredentialRequestContainerViewControllerAnimator *)self isPresenting];
  v6 = MEMORY[0x1E69DE778];
  if (!v5)
  {
    v6 = MEMORY[0x1E69DE768];
  }

  v7 = [v4 viewControllerForKey:*v6];

  return v7;
}

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v5 = [(ASCredentialRequestContainerViewControllerAnimator *)self _viewControllerForTransitionContext:v4];
  v6 = [v5 view];
  v7 = [v4 containerView];
  [v7 addSubview:v6];
  v8 = MEMORY[0x1E69DD250];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__ASCredentialRequestContainerViewControllerAnimator_animateTransition___block_invoke;
  v15[3] = &unk_1E7AF76A8;
  v16 = v6;
  v17 = v7;
  v9 = v7;
  v10 = v6;
  [v8 performWithoutAnimation:v15];
  v11 = MEMORY[0x1E69DD250];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__ASCredentialRequestContainerViewControllerAnimator_animateTransition___block_invoke_3;
  v13[3] = &unk_1E7AF7768;
  v14 = v4;
  v12 = v4;
  [v11 _animateUsingDefaultTimingWithOptions:134 animations:&__block_literal_global_24 completion:v13];
}

uint64_t __72__ASCredentialRequestContainerViewControllerAnimator_animateTransition___block_invoke(uint64_t a1)
{
  [*(a1 + 40) bounds];
  [*(a1 + 32) setFrame:?];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

@end