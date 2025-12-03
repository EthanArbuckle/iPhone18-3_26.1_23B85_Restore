@interface AFUISiriCompactDimmingView
- (AFUISiriCompactDimmingView)initWithFrame:(CGRect)frame;
- (BOOL)_isInAmbient;
- (id)ambientFadeToBlackView;
- (id)ambientMaterialView;
- (void)layoutSubviews;
- (void)setVisible:(BOOL)visible animated:(BOOL)animated;
@end

@implementation AFUISiriCompactDimmingView

- (AFUISiriCompactDimmingView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = AFUISiriCompactDimmingView;
  v3 = [(AFUISiriCompactDimmingView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(AFUISiriCompactDimmingView *)v3 setAlpha:1.0];
    [(AFUISiriCompactDimmingView *)v4 setOpaque:0];
    [(AFUISiriCompactDimmingView *)v4 setUserInteractionEnabled:0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(AFUISiriCompactDimmingView *)v4 setBackgroundColor:clearColor];
  }

  return v4;
}

- (void)setVisible:(BOOL)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  visibleCopy = visible;
  self->_isVisible = visible;
  if ([(AFUISiriCompactDimmingView *)self _isInAmbient])
  {
    [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    [MEMORY[0x277D75348] _dimmingViewColor];
  }
  v7 = ;
  v8 = v7;
  if (visibleCopy)
  {
    clearColor = v7;
  }

  else
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
  }

  v10 = clearColor;
  _isInAmbient = [(AFUISiriCompactDimmingView *)self _isInAmbient];
  if (!animatedCopy)
  {
    [(AFUISiriCompactDimmingView *)self _isInAmbient];
    v13 = 0.0;
LABEL_14:
    animation = [MEMORY[0x277CD9FA0] animation];
    [animation setKeyPath:@"backgroundColor"];
    backgroundColor = [(AFUISiriCompactDimmingView *)self backgroundColor];
    [animation setFromValue:backgroundColor];

    [animation setToValue:v10];
    [animation setMass:*MEMORY[0x277D60160]];
    [animation setStiffness:*MEMORY[0x277D60168]];
    [animation setDamping:*MEMORY[0x277D60158]];
    defaultTimingFunction = [MEMORY[0x277D60100] defaultTimingFunction];
    [animation setTimingFunction:defaultTimingFunction];

    [animation setDuration:v13];
    [(AFUISiriCompactDimmingView *)self addAnimation:animation forKey:0];
    [(AFUISiriCompactDimmingView *)self setBackgroundColor:v10];
    goto LABEL_15;
  }

  [MEMORY[0x277D60100] animationDurationForStyle:0 presentationType:_isInAmbient];
  v13 = v12;
  if (![(AFUISiriCompactDimmingView *)self _isInAmbient]|| !visibleCopy || !animatedCopy || [(AFUISiriCompactDimmingView *)self accessibilityReduceMotionEnabled])
  {
    goto LABEL_14;
  }

  ambientMaterialView = [(AFUISiriCompactDimmingView *)self ambientMaterialView];
  [(AFUISiriCompactDimmingView *)self insertSubview:ambientMaterialView atIndex:0];
  ambientFadeToBlackView = [(AFUISiriCompactDimmingView *)self ambientFadeToBlackView];
  [(AFUISiriCompactDimmingView *)self insertSubview:ambientFadeToBlackView atIndex:0];
  self->_isAnimatingBlur = 1;
  objc_initWeak(&location, self);
  v16 = *MEMORY[0x277D60148];
  v17 = *MEMORY[0x277D60150];
  v18 = *MEMORY[0x277D60140];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __50__AFUISiriCompactDimmingView_setVisible_animated___block_invoke;
  v30[3] = &unk_278CD6418;
  v19 = ambientMaterialView;
  v31 = v19;
  v20 = ambientFadeToBlackView;
  v32 = v20;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __50__AFUISiriCompactDimmingView_setVisible_animated___block_invoke_2;
  v25[3] = &unk_278CD6A50;
  objc_copyWeak(&v29, &location);
  v26 = v10;
  animation = v19;
  v27 = animation;
  v22 = v20;
  v28 = v22;
  [AFUIUtilities animateUsingSpringWithMass:v30 stiffness:v25 damping:v16 animations:v17 completion:v18];

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);

LABEL_15:
}

uint64_t __50__AFUISiriCompactDimmingView_setVisible_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setWeighting:1.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:1.0];
}

void __50__AFUISiriCompactDimmingView_setVisible_animated___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    WeakRetained[409] = 0;
    [WeakRetained setBackgroundColor:*(a1 + 32)];
  }

  [*(a1 + 40) removeFromSuperview];
  [*(a1 + 48) removeFromSuperview];
}

- (id)ambientFadeToBlackView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  [(AFUISiriCompactDimmingView *)self bounds];
  v4 = [v3 initWithFrame:?];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [v4 setBackgroundColor:blackColor];

  [v4 setAlpha:0.0];

  return v4;
}

- (id)ambientMaterialView
{
  v3 = MEMORY[0x277D26720];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v3 materialViewWithRecipeNamed:@"fullScreenBannerBackground" inBundle:v4 options:0 initialWeighting:0 scaleAdjustment:0.0];

  [(AFUISiriCompactDimmingView *)self bounds];
  [v5 setFrame:?];
  [v5 setAutoresizingMask:18];

  return v5;
}

- (BOOL)_isInAmbient
{
  traitCollection = [(AFUISiriCompactDimmingView *)self traitCollection];
  isAmbientPresented = [traitCollection isAmbientPresented];

  return isAmbientPresented;
}

- (void)layoutSubviews
{
  if ([(AFUISiriCompactDimmingView *)self _isInAmbient])
  {
    [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    [MEMORY[0x277D75348] _dimmingViewColor];
  }
  v3 = ;
  v6 = v3;
  if (self->_isVisible)
  {
    clearColor = v3;
  }

  else
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
  }

  v5 = clearColor;
  if (!self->_isAnimatingBlur)
  {
    [(AFUISiriCompactDimmingView *)self setBackgroundColor:clearColor];
  }
}

@end