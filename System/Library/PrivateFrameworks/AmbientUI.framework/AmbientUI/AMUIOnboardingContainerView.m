@interface AMUIOnboardingContainerView
- (AMAmbientDefaults)ambientDefaults;
- (AMUIOnboardingContainerViewDelegate)delegate;
- (id)_newBlurMaterialViewWithInitialWeighting:(double)a3 superview:(id)a4;
- (void)_configureAnimationContainerViewIfNecessary;
- (void)_configureOnboardingViewIfNecessary;
- (void)_configureOverlayBlurMaterialViewIfNecessaryWithInitialWeighting:(double)a3;
- (void)_layoutOnboardingView;
- (void)_performDismissalAnimationWithCompletion:(id)a3;
- (void)_performPresentationAnimationWithCompletion:(id)a3;
- (void)layoutSubviews;
- (void)onboardingViewRequestsDismissal:(id)a3;
- (void)performDismissalAnimation;
@end

@implementation AMUIOnboardingContainerView

- (void)performDismissalAnimation
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __56__AMUIOnboardingContainerView_performDismissalAnimation__block_invoke;
  v2[3] = &unk_278C75D60;
  v2[4] = self;
  [(AMUIOnboardingContainerView *)self _performDismissalAnimationWithCompletion:v2];
}

void __56__AMUIOnboardingContainerView_performDismissalAnimation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 onboardingContainerView:*(a1 + 32) requestsDismissalWithUserIntent:0];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = AMUIOnboardingContainerView;
  [(AMUIOnboardingContainerView *)&v3 layoutSubviews];
  [(AMUIOnboardingContainerView *)self _configureAnimationContainerViewIfNecessary];
  [(AMUIOnboardingContainerView *)self _configureOnboardingViewIfNecessary];
  [(AMUIOnboardingContainerView *)self _layoutOnboardingView];
}

- (void)onboardingViewRequestsDismissal:(id)a3
{
  v4 = [(AMUIOnboardingContainerView *)self ambientDefaults];
  [v4 setFirstPresentation:0];

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__AMUIOnboardingContainerView_onboardingViewRequestsDismissal___block_invoke;
  v5[3] = &unk_278C75D60;
  v5[4] = self;
  [(AMUIOnboardingContainerView *)self _performDismissalAnimationWithCompletion:v5];
}

void __63__AMUIOnboardingContainerView_onboardingViewRequestsDismissal___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 onboardingContainerView:*(a1 + 32) requestsDismissalWithUserIntent:1];
}

- (void)_configureAnimationContainerViewIfNecessary
{
  if (!self->_animationContainerView)
  {
    v3 = objc_alloc(MEMORY[0x277D75D18]);
    [(AMUIOnboardingContainerView *)self bounds];
    v4 = [v3 initWithFrame:?];
    animationContainerView = self->_animationContainerView;
    self->_animationContainerView = v4;

    [(UIView *)self->_animationContainerView setAutoresizingMask:18];
    [(AMUIOnboardingContainerView *)self addSubview:self->_animationContainerView];
    [(AMUIOnboardingContainerView *)self bringSubviewToFront:self->_animationContainerView];
    v6 = self->_animationContainerView;

    [(UIView *)v6 setAlpha:0.0];
  }
}

- (void)_configureOnboardingViewIfNecessary
{
  if (!self->_onboardingView)
  {
    v3 = [AMUIOnboardingView alloc];
    v4 = [(AMUIOnboardingView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    onboardingView = self->_onboardingView;
    self->_onboardingView = v4;

    [(AMUIOnboardingView *)self->_onboardingView setDelegate:self];
    [(UIView *)self->_animationContainerView addSubview:self->_onboardingView];
    animationContainerView = self->_animationContainerView;
    v7 = self->_onboardingView;

    [(UIView *)animationContainerView bringSubviewToFront:v7];
  }
}

- (id)_newBlurMaterialViewWithInitialWeighting:(double)a3 superview:(id)a4
{
  v5 = MEMORY[0x277D26718];
  v6 = MEMORY[0x277CCA8D8];
  v7 = a4;
  v8 = [v6 bundleForClass:objc_opt_class()];
  v9 = [v5 materialViewWithRecipeNamed:@"ambientOnboardingOverlayBlur" inBundle:v8 options:0 initialWeighting:0 scaleAdjustment:a3];

  [v9 setGroupNameBase:@"AMUIOnboardingViewMaterialGroup"];
  [v7 addSubview:v9];
  [v7 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [v9 setFrame:{v11, v13, v15, v17}];
  [v9 setAutoresizingMask:18];
  return v9;
}

- (void)_layoutOnboardingView
{
  if (self->_onboardingView)
  {
    [(AMUIOnboardingContainerView *)self bounds];
    x = v9.origin.x;
    y = v9.origin.y;
    width = v9.size.width;
    height = v9.size.height;
    CGRectGetWidth(v9);
    v10.origin.x = x;
    v10.origin.y = y;
    v10.size.width = width;
    v10.size.height = height;
    CGRectGetHeight(v10);
    v11.origin.x = x;
    v11.origin.y = y;
    v11.size.width = width;
    v11.size.height = height;
    CGRectGetWidth(v11);
    UIRectCenteredRect();
    UIRectIntegralWithScale();
    onboardingView = self->_onboardingView;

    [(AMUIOnboardingView *)onboardingView setFrame:?];
  }
}

- (void)_performPresentationAnimationWithCompletion:(id)a3
{
  [(AMUIOnboardingContainerView *)self layoutIfNeeded];
  [(AMUIOnboardingContainerView *)self _configureOverlayBlurMaterialViewIfNecessaryWithInitialWeighting:1.0];
  v4 = self->_animationContainerView;
  v5 = self->_overlayBlurMaterialView;
  [(UIView *)v4 setAlpha:0.0];
  CGAffineTransformMakeScale(&v23, 1.25, 1.25);
  [(UIView *)v4 setTransform:&v23];
  v6 = [(UIView *)v4 layer];
  [v6 setAllowsGroupOpacity:1];

  v7 = MEMORY[0x277D75D18];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __75__AMUIOnboardingContainerView__performPresentationAnimationWithCompletion___block_invoke;
  v21[3] = &unk_278C75D60;
  v22 = v5;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __75__AMUIOnboardingContainerView__performPresentationAnimationWithCompletion___block_invoke_2;
  v19[3] = &unk_278C76108;
  v20 = v22;
  v8 = v22;
  [v7 _animateUsingSpringWithDuration:2 delay:v21 options:v19 mass:0.8 stiffness:0.195 damping:2.0 initialVelocity:300.0 animations:50.0 completion:0.0];
  v9 = MEMORY[0x277D75D18];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __75__AMUIOnboardingContainerView__performPresentationAnimationWithCompletion___block_invoke_3;
  v17[3] = &unk_278C75D60;
  v10 = v4;
  v18 = v10;
  [v9 _animateUsingSpringWithDuration:2 delay:v17 options:0 mass:2.765 stiffness:0.0 damping:2.0 initialVelocity:30.0 animations:11.0 completion:0.0];
  v11 = MEMORY[0x277D75D18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__AMUIOnboardingContainerView__performPresentationAnimationWithCompletion___block_invoke_4;
  v15[3] = &unk_278C75D60;
  v16 = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__AMUIOnboardingContainerView__performPresentationAnimationWithCompletion___block_invoke_5;
  v13[3] = &unk_278C76108;
  v14 = v16;
  v12 = v16;
  [v11 _animateUsingSpringWithDuration:2 delay:v15 options:v13 mass:2.0 stiffness:0.2 damping:1.5 initialVelocity:30.0 animations:12.0 completion:0.0];
}

uint64_t __75__AMUIOnboardingContainerView__performPresentationAnimationWithCompletion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v1 setTransform:v4];
}

void __75__AMUIOnboardingContainerView__performPresentationAnimationWithCompletion___block_invoke_5(uint64_t a1)
{
  v1 = [*(a1 + 32) layer];
  [v1 setAllowsGroupOpacity:0];
}

- (void)_performDismissalAnimationWithCompletion:(id)a3
{
  v4 = a3;
  [(AMUIOnboardingContainerView *)self layoutIfNeeded];
  [(AMUIOnboardingContainerView *)self _configureOverlayBlurMaterialViewIfNecessaryWithInitialWeighting:0.0];
  v5 = self->_animationContainerView;
  v6 = self->_onboardingView;
  v7 = self->_overlayBlurMaterialView;
  v8 = [(UIView *)v5 layer];
  [v8 setAllowsGroupOpacity:1];

  memset(&v22, 0, sizeof(v22));
  CGAffineTransformMakeScale(&v22, 0.8, 0.8);
  v9 = MEMORY[0x277D75D18];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __72__AMUIOnboardingContainerView__performDismissalAnimationWithCompletion___block_invoke;
  v17[3] = &unk_278C761F8;
  v18 = v5;
  v19 = v6;
  v21 = v22;
  v20 = v7;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __72__AMUIOnboardingContainerView__performDismissalAnimationWithCompletion___block_invoke_2;
  v14[3] = &unk_278C76220;
  v15 = v18;
  v16 = v4;
  v10 = v4;
  v11 = v18;
  v12 = v7;
  v13 = v6;
  [v9 _animateUsingSpringWithDuration:2 delay:v17 options:v14 mass:0.8 stiffness:0.0 damping:2.0 initialVelocity:300.0 animations:50.0 completion:0.0];
}

uint64_t __72__AMUIOnboardingContainerView__performDismissalAnimationWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);
  v3 = *(a1 + 72);
  v5[0] = *(a1 + 56);
  v5[1] = v3;
  v5[2] = *(a1 + 88);
  [v2 setTransform:v5];
  return [*(a1 + 48) setWeighting:1.0];
}

uint64_t __72__AMUIOnboardingContainerView__performDismissalAnimationWithCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_configureOverlayBlurMaterialViewIfNecessaryWithInitialWeighting:(double)a3
{
  v4 = [(AMUIOnboardingContainerView *)self _newBlurMaterialViewWithInitialWeighting:self->_animationContainerView superview:a3];
  overlayBlurMaterialView = self->_overlayBlurMaterialView;
  self->_overlayBlurMaterialView = v4;

  animationContainerView = self->_animationContainerView;
  v7 = self->_overlayBlurMaterialView;

  [(UIView *)animationContainerView bringSubviewToFront:v7];
}

- (AMUIOnboardingContainerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (AMAmbientDefaults)ambientDefaults
{
  WeakRetained = objc_loadWeakRetained(&self->_ambientDefaults);

  return WeakRetained;
}

@end