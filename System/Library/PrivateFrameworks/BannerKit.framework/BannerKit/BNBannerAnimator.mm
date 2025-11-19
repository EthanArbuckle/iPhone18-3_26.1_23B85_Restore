@interface BNBannerAnimator
+ (void)_animateInteractive:(BOOL)a3 settings:(id)a4 animations:(id)a5 completion:(id)a6;
- (BNBannerAnimator)initWithAnimationSettings:(id)a3;
- (BOOL)_popTransitionForContext:(id)a3;
- (double)transitionDuration:(id)a3;
- (void)_pushTransitionForContext:(id)a3;
- (void)actionsForTransition:(id)a3;
- (void)animateTransition:(id)a3;
- (void)retargetTransition:(id)a3;
- (void)runAnimationsWithActions:(id)a3 animated:(BOOL)a4 completion:(id)a5;
@end

@implementation BNBannerAnimator

- (BNBannerAnimator)initWithAnimationSettings:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BNBannerAnimator;
  v6 = [(BNBannerAnimator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_animationSettings, a3);
  }

  return v7;
}

- (void)retargetTransition:(id)a3
{
  v4 = a3;
  v5 = [(BNBannerAnimator *)self isRetargetable];
  if (v4 && v5)
  {
    [(BNBannerAnimator *)self _pushTransitionForContext:v4];
    objc_initWeak(&location, self);
    v6 = MEMORY[0x1E69DD250];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __39__BNBannerAnimator_retargetTransition___block_invoke;
    v11[3] = &unk_1E81E4BC8;
    v7 = v4;
    v12 = v7;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __39__BNBannerAnimator_retargetTransition___block_invoke_2;
    v8[3] = &unk_1E81E50F8;
    objc_copyWeak(&v10, &location);
    v9 = v7;
    [v6 _animateByRetargetingAnimations:v11 completion:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

uint64_t __39__BNBannerAnimator_retargetTransition___block_invoke(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 __runAlongsideAnimations];
  }

  return result;
}

void __39__BNBannerAnimator_retargetTransition___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (([WeakRetained _popTransitionForContext:*(a1 + 32)] & 1) == 0)
  {
    [*(a1 + 32) completeTransition:1];
  }
}

- (void)animateTransition:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __38__BNBannerAnimator_animateTransition___block_invoke;
  v18[3] = &unk_1E81E47B0;
  objc_copyWeak(&v20, &location);
  v5 = v4;
  v19 = v5;
  v6 = MEMORY[0x1C6936EC0](v18);
  if ([v5 isAnimated])
  {
    [(BNBannerAnimator *)self transitionDuration:v5];
    v8 = v7 > 0.0;
  }

  else
  {
    v8 = 0;
  }

  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __38__BNBannerAnimator_animateTransition___block_invoke_2;
  v14 = &unk_1E81E5120;
  objc_copyWeak(&v16, &location);
  v17 = v8;
  v9 = v5;
  v15 = v9;
  v10 = MEMORY[0x1C6936EC0](&v11);
  if (v8)
  {
    [(BNBannerAnimator *)self _pushTransitionForContext:v9, v11, v12, v13, v14];
  }

  [(BNBannerAnimator *)self runAnimationsWithActions:v6 animated:v8 completion:v10, v11, v12, v13, v14];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

uint64_t __38__BNBannerAnimator_animateTransition___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained actionsForTransition:*(a1 + 32)];

  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = *(a1 + 32);

    return [v4 __runAlongsideAnimations];
  }

  return result;
}

void __38__BNBannerAnimator_animateTransition___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v4 = WeakRetained;
  if (*(a1 + 48) == 1)
  {
    if ([WeakRetained _popTransitionForContext:v3])
    {
      goto LABEL_5;
    }

    v3 = *(a1 + 32);
  }

  [v3 completeTransition:1];
LABEL_5:
}

- (double)transitionDuration:(id)a3
{
  animationSettings = self->_animationSettings;
  if (!animationSettings)
  {
    return 0.375;
  }

  [(BSAnimationSettings *)animationSettings duration];
  return result;
}

+ (void)_animateInteractive:(BOOL)a3 settings:(id)a4 animations:(id)a5 completion:(id)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = v11;
  if (v10)
  {
    if (v9)
    {
      v13 = MEMORY[0x1E698E7D0];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __71__BNBannerAnimator__animateInteractive_settings_animations_completion___block_invoke;
      v14[3] = &unk_1E81E4FD8;
      v15 = v11;
      [v13 animateWithSettings:v9 options:6 actions:v10 completion:v14];
    }

    else
    {
      [MEMORY[0x1E69DD250] _animateUsingSpringInteractive:v8 animations:v10 completion:v11];
    }
  }

  else if (v11)
  {
    (*(v11 + 2))(v11, 1, 0);
  }
}

uint64_t __71__BNBannerAnimator__animateInteractive_settings_animations_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, 0);
  }

  return result;
}

- (void)_pushTransitionForContext:(id)a3
{
  if (a3)
  {
    transitionContextsToTransitionCount = self->_transitionContextsToTransitionCount;
    v5 = a3;
    v6 = [(NSMapTable *)transitionContextsToTransitionCount objectForKey:v5];
    v7 = [v6 unsignedIntegerValue];

    v8 = self->_transitionContextsToTransitionCount;
    if (!v8)
    {
      v9 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
      v10 = self->_transitionContextsToTransitionCount;
      self->_transitionContextsToTransitionCount = v9;

      v8 = self->_transitionContextsToTransitionCount;
    }

    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7 + 1];
    [(NSMapTable *)v8 setObject:v11 forKey:v5];
  }
}

- (BOOL)_popTransitionForContext:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = [(NSMapTable *)self->_transitionContextsToTransitionCount objectForKey:v4];
  v6 = [v5 unsignedIntegerValue];

  transitionContextsToTransitionCount = self->_transitionContextsToTransitionCount;
  if (!v6)
  {
    [(NSMapTable *)transitionContextsToTransitionCount removeObjectForKey:v4];
LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v8 = v6 - 1;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
  [(NSMapTable *)transitionContextsToTransitionCount setObject:v9 forKey:v4];

  v10 = v8 != 0;
LABEL_6:

  return v10;
}

- (void)actionsForTransition:(id)a3
{
  v3 = *MEMORY[0x1E69DE778];
  v4 = a3;
  v14 = [v4 viewControllerForKey:v3];
  v5 = [v14 view];
  [v4 finalFrameForViewController:v14];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v5 setFrame:{v7, v9, v11, v13}];
}

- (void)runAnimationsWithActions:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (v6)
  {
    animationSettings = self->_animationSettings;
    v11 = objc_opt_class();
    v12 = v11;
    if (animationSettings)
    {
      [v11 animateWithSettings:self->_animationSettings animations:v8 completion:v9];
    }

    else
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __84__BNBannerAnimator_SubclassOverrides__runAnimationsWithActions_animated_completion___block_invoke;
      v13[3] = &unk_1E81E4EB8;
      v14 = v8;
      [v12 animateInteractive:0 animations:v13 completion:v9];
    }
  }

  else
  {
    v8[2](v8);
    v9[2](v9, 1, 0);
  }
}

uint64_t __84__BNBannerAnimator_SubclassOverrides__runAnimationsWithActions_animated_completion___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v6 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v3 = *(a1 + 32);

  return [v2 _modifyAnimationsWithPreferredFrameRateRange:3145729 updateReason:v3 animations:{*&v6.minimum, *&v6.maximum, *&v6.preferred}];
}

@end