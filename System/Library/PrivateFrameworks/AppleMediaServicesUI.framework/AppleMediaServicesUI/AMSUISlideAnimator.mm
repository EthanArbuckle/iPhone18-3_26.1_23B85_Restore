@interface AMSUISlideAnimator
- (double)transitionDuration:(id)a3;
- (void)animateTransition:(id)a3;
@end

@implementation AMSUISlideAnimator

- (double)transitionDuration:(id)a3
{
  v3 = *MEMORY[0x1E69DE768];
  v4 = a3;
  v5 = [v4 viewControllerForKey:v3];
  v6 = [v4 viewControllerForKey:*MEMORY[0x1E69DE778]];

  v7 = [v5 presentedViewController];

  if (v7 == v6)
  {
    v9 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"position.y"];
    [v9 setMass:1.0];
    [v9 setStiffness:150.0];
    [v9 setDamping:19.0];
    [v9 setInitialVelocity:0.0];
    [v9 settlingDuration];
    v8 = v10;
  }

  else
  {
    v8 = 0.18;
  }

  return v8;
}

- (void)animateTransition:(id)a3
{
  v4 = a3;
  v5 = [v4 viewControllerForKey:*MEMORY[0x1E69DE768]];
  v6 = [v4 viewControllerForKey:*MEMORY[0x1E69DE778]];
  v7 = [v5 presentedViewController];

  v8 = [v4 containerView];
  [(AMSUISlideAnimator *)self transitionDuration:v4];
  v10 = v9;
  if (v7 == v6)
  {
    [v4 finalFrameForViewController:v6];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    [v8 frame];
    v34 = v33;
    v35 = [v6 view];
    [v35 setFrame:{v26, v34, v30, v32}];

    v36 = [v6 view];
    [v8 addSubview:v36];

    v19 = [objc_alloc(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:150.0 damping:19.0 initialVelocity:{0.0, 0.0}];
    v20 = [objc_alloc(MEMORY[0x1E69DD278]) initWithDuration:v19 timingParameters:v10];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __40__AMSUISlideAnimator_animateTransition___block_invoke;
    v47[3] = &unk_1E7F25950;
    v21 = v48;
    v48[0] = v6;
    *&v48[1] = v26;
    v48[2] = v28;
    *&v48[3] = v30;
    *&v48[4] = v32;
    [v20 addAnimations:v47];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __40__AMSUISlideAnimator_animateTransition___block_invoke_2;
    v45[3] = &unk_1E7F24DA0;
    v22 = &v46;
    v46 = v4;
    v37 = v4;
    v24 = v45;
  }

  else
  {
    [v4 initialFrameForViewController:v5];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [v8 frame];
    v18 = v17;
    v19 = [objc_alloc(MEMORY[0x1E69DC908]) initWithControlPoint1:0.33 controlPoint2:{0.0, 0.65, 0.0}];
    v20 = [objc_alloc(MEMORY[0x1E69DD278]) initWithDuration:v19 timingParameters:v10];
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __40__AMSUISlideAnimator_animateTransition___block_invoke_3;
    v43[3] = &unk_1E7F25950;
    v21 = v44;
    v44[0] = v5;
    v44[1] = v12;
    v44[2] = v18;
    v44[3] = v14;
    v44[4] = v16;
    [v20 addAnimations:v43];
    v38 = MEMORY[0x1E69E9820];
    v39 = 3221225472;
    v40 = __40__AMSUISlideAnimator_animateTransition___block_invoke_4;
    v41 = &unk_1E7F24DA0;
    v22 = &v42;
    v42 = v4;
    v23 = v4;
    v24 = &v38;
  }

  [v20 addCompletion:{v24, v38, v39, v40, v41}];
  [v20 startAnimation];
}

void __40__AMSUISlideAnimator_animateTransition___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = [*(a1 + 32) view];
  [v5 setFrame:{v1, v2, v3, v4}];
}

void __40__AMSUISlideAnimator_animateTransition___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = [*(a1 + 32) view];
  [v5 setFrame:{v1, v2, v3, v4}];
}

@end