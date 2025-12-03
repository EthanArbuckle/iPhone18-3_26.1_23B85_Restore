@interface AMSUIFadeAnimator
- (void)animateTransition:(id)transition;
@end

@implementation AMSUIFadeAnimator

- (void)animateTransition:(id)transition
{
  transitionCopy = transition;
  v5 = [transitionCopy viewControllerForKey:*MEMORY[0x1E69DE768]];
  v6 = [transitionCopy viewControllerForKey:*MEMORY[0x1E69DE778]];
  containerView = [transitionCopy containerView];
  presentedViewController = [v5 presentedViewController];

  [(AMSUIFadeAnimator *)self transitionDuration:transitionCopy];
  v10 = v9;
  if (presentedViewController == v6)
  {
    [transitionCopy finalFrameForViewController:v6];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    view = [v6 view];
    [view setAlpha:0.0];

    view2 = [v6 view];
    [view2 setFrame:{v16, v18, v20, v22}];

    view3 = [v6 view];
    [containerView addSubview:view3];

    v11 = v32;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v12 = 1;
    v13 = __39__AMSUIFadeAnimator_animateTransition___block_invoke;
    v14 = v6;
  }

  else
  {
    v11 = v31;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v12 = 2;
    v13 = __39__AMSUIFadeAnimator_animateTransition___block_invoke_2;
    v14 = v5;
  }

  v11[2] = v13;
  v11[3] = &unk_1E7F242D0;
  v11[4] = v14;
  v26 = _Block_copy(v11);

  v27 = [objc_alloc(MEMORY[0x1E69DD278]) initWithDuration:v12 curve:v26 animations:v10];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __39__AMSUIFadeAnimator_animateTransition___block_invoke_3;
  v29[3] = &unk_1E7F24DA0;
  v30 = transitionCopy;
  v28 = transitionCopy;
  [v27 addCompletion:v29];
  [v27 startAnimation];
}

void __39__AMSUIFadeAnimator_animateTransition___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:1.0];
}

void __39__AMSUIFadeAnimator_animateTransition___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:0.0];
}

@end