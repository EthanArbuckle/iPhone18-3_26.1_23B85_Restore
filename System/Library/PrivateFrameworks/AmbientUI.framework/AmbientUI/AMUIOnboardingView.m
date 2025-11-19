@interface AMUIOnboardingView
- (AMUIOnboardingView)initWithFrame:(CGRect)a3;
- (AMUIOnboardingViewDelegate)delegate;
- (CGSize)sizeThatFits:(CGSize)a3;
- (id)_containerScrollView;
- (id)_onboardingTitle;
- (id)_onboardingViewPackageName;
- (void)_configureContainerScrollViewIfNecessary;
- (void)_configureContinueButtonIfNecessary;
- (void)_configureContinueButtonOcclusionMaterialViewIfNecessary;
- (void)_configurePackageViewIfNecessary;
- (void)_layoutContainerScrollViewIfNecessary;
- (void)_layoutContentLabelIfNecessary;
- (void)_layoutContinueButtonIfNecessary;
- (void)_layoutContinueButtonOcclusionMaterialViewIfNecessary;
- (void)_layoutPackageViewIfNecessary;
- (void)_layoutTitleLabelIfNecessary;
- (void)_setContent:(id)a3;
- (void)_setTitle:(id)a3;
- (void)_toggleContinueButtonOcclusionMaterialViewVisibilityIsVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)layoutSubviews;
- (void)scrollViewDidScroll:(id)a3;
@end

@implementation AMUIOnboardingView

- (AMUIOnboardingView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = AMUIOnboardingView;
  v3 = [(AMUIOnboardingView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(AMUIOnboardingView *)v3 _setOverrideUserInterfaceStyle:2];
    v5 = [(AMUIOnboardingView *)v4 _onboardingTitle];
    [(AMUIOnboardingView *)v4 _setTitle:v5];

    v6 = AMUIAmbientUIFrameworkBundle();
    v7 = [v6 localizedStringForKey:@"ONBOARDING_DESCRIPTION" value:&stru_28518E9B8 table:0];
    [(AMUIOnboardingView *)v4 _setContent:v7];

    v8 = [(AMUIOnboardingView *)v4 layer];
    [v8 setAllowsGroupOpacity:1];

    [(AMUIOnboardingView *)v4 setMaximumContentSizeCategory:*MEMORY[0x277D76820]];
  }

  return v4;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = AMUIOnboardingView;
  [(AMUIOnboardingView *)&v3 layoutSubviews];
  [(AMUIOnboardingView *)self _configureContainerScrollViewIfNecessary];
  [(AMUIOnboardingView *)self _configurePackageViewIfNecessary];
  [(AMUIOnboardingView *)self _configureContinueButtonIfNecessary];
  [(AMUIOnboardingView *)self _layoutPackageViewIfNecessary];
  [(AMUIOnboardingView *)self _layoutTitleLabelIfNecessary];
  [(AMUIOnboardingView *)self _layoutContentLabelIfNecessary];
  [(AMUIOnboardingView *)self _layoutContinueButtonIfNecessary];
  [(AMUIOnboardingView *)self _layoutContainerScrollViewIfNecessary];
  [(AMUIOnboardingView *)self _configureContinueButtonOcclusionMaterialViewIfNecessary];
  [(AMUIOnboardingView *)self _layoutContinueButtonOcclusionMaterialViewIfNecessary];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(AMUIOnboardingView *)self _contentAllowedWidthForSize:?];
  v7 = v6;
  [(UILabel *)self->_titleLabel sizeThatFits:?];
  v9 = v8 + 154.0 + 8.0;
  [(UILabel *)self->_contentLabel sizeThatFits:v7, height];
  v11 = ceil(v9 + v10 + 72.0 + 24.0);
  v12 = width;
  result.height = v11;
  result.width = v12;
  return result;
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  [v4 contentOffset];
  v6 = v5;
  [v4 frame];
  Height = CGRectGetHeight(v11);
  [v4 contentSize];
  v9 = v8;

  [(AMUIOnboardingView *)self _toggleContinueButtonOcclusionMaterialViewVisibilityIsVisible:v6 + Height < v9 animated:1, v6 + Height];
}

- (id)_onboardingTitle
{
  v2 = MEMORY[0x277CCACA8];
  v3 = AMUIAmbientUIFrameworkBundle();
  v4 = [v3 localizedStringForKey:@"ONBOARDING_TITLE" value:&stru_28518E9B8 table:0];
  v5 = AMUIAmbientUIFrameworkBundle();
  v6 = [v5 localizedStringForKey:@"FEATURE_NAME" value:&stru_28518E9B8 table:0];
  v7 = [v2 stringWithFormat:v4, v6];

  return v7;
}

- (id)_containerScrollView
{
  [(AMUIOnboardingView *)self _configureContainerScrollViewIfNecessary];
  containerScrollView = self->_containerScrollView;

  return containerScrollView;
}

- (void)_setTitle:(id)a3
{
  v13 = a3;
  v4 = [(UILabel *)self->_titleLabel text];
  v5 = [v4 isEqualToString:v13];

  if ((v5 & 1) == 0)
  {
    titleLabel = self->_titleLabel;
    if (!titleLabel)
    {
      v7 = objc_alloc_init(MEMORY[0x277D756B8]);
      v8 = self->_titleLabel;
      self->_titleLabel = v7;

      [(UILabel *)self->_titleLabel setNumberOfLines:1];
      [(UILabel *)self->_titleLabel setTextAlignment:1];
      [(UILabel *)self->_titleLabel setAdjustsFontSizeToFitWidth:1];
      [(UILabel *)self->_titleLabel setAdjustsFontForContentSizeCategory:1];
      v9 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76A08] weight:*MEMORY[0x277D743F8]];
      [(UILabel *)self->_titleLabel setFont:v9];
      v10 = self->_titleLabel;
      v11 = [MEMORY[0x277D75348] labelColor];
      [(UILabel *)v10 setTextColor:v11];

      [(UILabel *)self->_titleLabel setPreferredVibrancy:1];
      v12 = [(AMUIOnboardingView *)self _containerScrollView];
      [v12 addSubview:self->_titleLabel];

      titleLabel = self->_titleLabel;
    }

    [(UILabel *)titleLabel setText:v13];
    [(AMUIOnboardingView *)self setNeedsLayout];
  }
}

- (void)_setContent:(id)a3
{
  v13 = a3;
  v4 = [(UILabel *)self->_contentLabel text];
  v5 = [v4 isEqualToString:v13];

  if ((v5 & 1) == 0)
  {
    contentLabel = self->_contentLabel;
    if (!contentLabel)
    {
      v7 = objc_alloc_init(MEMORY[0x277D756B8]);
      v8 = self->_contentLabel;
      self->_contentLabel = v7;

      [(UILabel *)self->_contentLabel setNumberOfLines:0];
      [(UILabel *)self->_contentLabel setTextAlignment:1];
      [(UILabel *)self->_contentLabel setAdjustsFontForContentSizeCategory:1];
      v9 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76918] weight:*MEMORY[0x277D74418]];
      [(UILabel *)self->_contentLabel setFont:v9];
      v10 = self->_contentLabel;
      v11 = [MEMORY[0x277D75348] secondaryLabelColor];
      [(UILabel *)v10 setTextColor:v11];

      [(UILabel *)self->_contentLabel setPreferredVibrancy:1];
      v12 = [(AMUIOnboardingView *)self _containerScrollView];
      [v12 addSubview:self->_contentLabel];

      contentLabel = self->_contentLabel;
    }

    [(UILabel *)contentLabel setText:v13];
    [(AMUIOnboardingView *)self setNeedsLayout];
  }
}

- (void)_configureContinueButtonIfNecessary
{
  v21[1] = *MEMORY[0x277D85DE8];
  if (!self->_continueButton)
  {
    v3 = [MEMORY[0x277D75230] filledButtonConfiguration];
    v4 = [MEMORY[0x277CF0D60] preferredFontProvider];
    v5 = [v4 preferredFontForTextStyle:*MEMORY[0x277D76918] hiFontStyle:4];

    v6 = objc_alloc(MEMORY[0x277CCA898]);
    v7 = AMUIAmbientUIFrameworkBundle();
    v8 = [v7 localizedStringForKey:@"ONBOARDING_CONTINUE" value:&stru_28518E9B8 table:0];
    v20 = *MEMORY[0x277D740A8];
    v21[0] = v5;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v10 = [v6 initWithString:v8 attributes:v9];

    [v3 setAttributedTitle:v10];
    [v3 setCornerStyle:3];
    objc_initWeak(&location, self);
    v11 = MEMORY[0x277D75220];
    v12 = MEMORY[0x277D750C8];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __57__AMUIOnboardingView__configureContinueButtonIfNecessary__block_invoke;
    v17[3] = &unk_278C75D38;
    objc_copyWeak(&v18, &location);
    v13 = [v12 actionWithHandler:v17];
    v14 = [v11 buttonWithConfiguration:v3 primaryAction:v13];
    continueButton = self->_continueButton;
    self->_continueButton = v14;

    [(AMUIOnboardingView *)self addSubview:self->_continueButton];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __57__AMUIOnboardingView__configureContinueButtonIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 onboardingViewRequestsDismissal:v3];

    WeakRetained = v3;
  }
}

- (void)_configureContinueButtonOcclusionMaterialViewIfNecessary
{
  showContinueButtonOcclusionMaterialView = self->_showContinueButtonOcclusionMaterialView;
  continueButtonOcclusionMaterialView = self->_continueButtonOcclusionMaterialView;
  if (showContinueButtonOcclusionMaterialView)
  {
    if (!continueButtonOcclusionMaterialView)
    {
      v5 = [MEMORY[0x277D26718] materialViewWithRecipe:51];
      v6 = self->_continueButtonOcclusionMaterialView;
      self->_continueButtonOcclusionMaterialView = v5;

      [(MTMaterialView *)self->_continueButtonOcclusionMaterialView setGroupNameBase:@"AMUIOnboardingViewMaterialGroup"];
      v7 = self->_continueButtonOcclusionMaterialView;

      [(AMUIOnboardingView *)self addSubview:v7];
    }
  }

  else if (continueButtonOcclusionMaterialView)
  {
    [(MTMaterialView *)continueButtonOcclusionMaterialView removeFromSuperview];
    v8 = self->_continueButtonOcclusionMaterialView;
    self->_continueButtonOcclusionMaterialView = 0;
  }
}

- (id)_onboardingViewPackageName
{
  if ([(AMUIOnboardingView *)self effectiveUserInterfaceLayoutDirection]== 1)
  {
    v2 = [@"AmbientOnboardingAsset" stringByAppendingString:@"-RTL"];
  }

  else
  {
    v2 = @"AmbientOnboardingAsset";
  }

  return v2;
}

- (void)_configurePackageViewIfNecessary
{
  if (!self->_packageView)
  {
    v3 = objc_alloc(MEMORY[0x277CF0D48]);
    v4 = [(AMUIOnboardingView *)self _onboardingViewPackageName];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v3 initWithPackageName:v4 inBundle:v5];
    packageView = self->_packageView;
    self->_packageView = v6;

    v8 = [(AMUIOnboardingView *)self _containerScrollView];
    [v8 addSubview:self->_packageView];

    self->_packageViewStateIndex = 0;
    v9 = dispatch_time(0, 250000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__AMUIOnboardingView__configurePackageViewIfNecessary__block_invoke;
    block[3] = &unk_278C75D60;
    block[4] = self;
    dispatch_after(v9, MEMORY[0x277D85CD0], block);
  }
}

- (void)_configureContainerScrollViewIfNecessary
{
  if (!self->_containerScrollView)
  {
    v3 = objc_alloc(MEMORY[0x277D759D8]);
    [(AMUIOnboardingView *)self bounds];
    v4 = [v3 initWithFrame:?];
    containerScrollView = self->_containerScrollView;
    self->_containerScrollView = v4;

    [(UIScrollView *)self->_containerScrollView setShowsVerticalScrollIndicator:0];
    [(UIScrollView *)self->_containerScrollView setClipsToBounds:0];
    [(UIScrollView *)self->_containerScrollView setDelegate:self];
    v6 = self->_containerScrollView;

    [(AMUIOnboardingView *)self addSubview:v6];
  }
}

- (void)_layoutTitleLabelIfNecessary
{
  if (self->_titleLabel)
  {
    [(AMUIOnboardingView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(AMUIOnboardingView *)self _contentAllowedWidthForSize:v7, v9];
    v12 = v11;
    v15.origin.x = v4;
    v15.origin.y = v6;
    v15.size.width = v8;
    v15.size.height = v10;
    [(UILabel *)self->_titleLabel sizeThatFits:v12, CGRectGetHeight(v15)];
    UIRectCenteredXInRect();
    UIRectIntegralWithScale();
    titleLabel = self->_titleLabel;

    [(UILabel *)titleLabel setFrame:?];
  }
}

- (void)_layoutContentLabelIfNecessary
{
  if (self->_contentLabel)
  {
    [(AMUIOnboardingView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(AMUIOnboardingView *)self _contentAllowedWidthForSize:v7, v9];
    v12 = v11;
    v15.origin.x = v4;
    v15.origin.y = v6;
    v15.size.width = v8;
    v15.size.height = v10;
    [(UILabel *)self->_contentLabel sizeThatFits:v12, CGRectGetHeight(v15)];
    [(UILabel *)self->_titleLabel frame];
    CGRectGetMaxY(v16);
    UIRectCenteredXInRect();
    UIRectIntegralWithScale();
    contentLabel = self->_contentLabel;

    [(UILabel *)contentLabel setFrame:?];
  }
}

- (void)_layoutPackageViewIfNecessary
{
  if (self->_packageView)
  {
    [(AMUIOnboardingView *)self bounds];
    [(BSUICAPackageView *)self->_packageView frame];
    UIRectCenteredXInRect();
    UIRectIntegralWithScale();
    packageView = self->_packageView;

    [(BSUICAPackageView *)packageView setFrame:?];
  }
}

- (void)_layoutContinueButtonOcclusionMaterialViewIfNecessary
{
  if (self->_continueButtonOcclusionMaterialView)
  {
    [(AMUIOnboardingView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(MTMaterialView *)self->_continueButtonOcclusionMaterialView frame];
    v13.origin.x = v4;
    v13.origin.y = v6;
    v13.size.width = v8;
    v13.size.height = v10;
    CGRectGetHeight(v13);
    v14.origin.x = v4;
    v14.origin.y = v6;
    v14.size.width = v8;
    v14.size.height = v10;
    CGRectGetWidth(v14);
    UIRectIntegralWithScale();
    [(MTMaterialView *)self->_continueButtonOcclusionMaterialView setFrame:?];
    continueButton = self->_continueButton;

    [(AMUIOnboardingView *)self bringSubviewToFront:continueButton];
  }
}

- (void)_layoutContinueButtonIfNecessary
{
  if (self->_continueButton)
  {
    [(AMUIOnboardingView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(UIButton *)self->_continueButton frame];
    v13.origin.x = v4;
    v13.origin.y = v6;
    v13.size.width = v8;
    v13.size.height = v10;
    CGRectGetWidth(v13);
    v14.origin.x = v4;
    v14.origin.y = v6;
    v14.size.width = v8;
    v14.size.height = v10;
    CGRectGetMaxY(v14);
    UIRectCenteredXInRect();
    UIRectIntegralWithScale();
    [(UIButton *)self->_continueButton setFrame:?];
    continueButton = self->_continueButton;

    [(AMUIOnboardingView *)self bringSubviewToFront:continueButton];
  }
}

- (void)_layoutContainerScrollViewIfNecessary
{
  if (self->_containerScrollView)
  {
    [(AMUIOnboardingView *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(UIScrollView *)self->_containerScrollView frame];
    [(UIButton *)self->_continueButton frame];
    v11 = CGRectGetMinY(v21) + -24.0;
    v22.origin.x = v4;
    v22.origin.y = v6;
    v22.size.width = v8;
    v22.size.height = v10;
    CGRectGetWidth(v22);
    UIRectIntegralWithScale();
    v13 = v12;
    v15 = v14;
    [(UIScrollView *)self->_containerScrollView setFrame:?];
    [(UILabel *)self->_contentLabel frame];
    MaxY = CGRectGetMaxY(v23);
    if (MaxY <= v11)
    {
      [(UIScrollView *)self->_containerScrollView setScrollEnabled:0];
      v18 = 0;
      v17 = v15;
    }

    else
    {
      v17 = MaxY;
      v18 = 1;
    }

    self->_showContinueButtonOcclusionMaterialView = v18;
    containerScrollView = self->_containerScrollView;

    [(UIScrollView *)containerScrollView setContentSize:v13, v17];
  }
}

uint64_t __66__AMUIOnboardingView__performNextAnimationForPackageViewAnimated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[54] + 1;
    WeakRetained[54] = v2;
    v5 = WeakRetained;
    v3 = [&unk_28519CD38 count];
    if (v2 >= v3)
    {
      v5[54] = 0;
    }

    [v5 _performNextAnimationForPackageViewAnimated:v2 < v3];
  }

  return MEMORY[0x2821F96F8]();
}

- (void)_toggleContinueButtonOcclusionMaterialViewVisibilityIsVisible:(BOOL)a3 animated:(BOOL)a4
{
  if (a3)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = self->_continueButtonOcclusionMaterialView;
  v7 = v6;
  if (a4)
  {
    v8 = MEMORY[0x277D75D18];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __93__AMUIOnboardingView__toggleContinueButtonOcclusionMaterialViewVisibilityIsVisible_animated___block_invoke;
    v9[3] = &unk_278C75DB0;
    v10 = v6;
    v11 = v5;
    [v8 animateWithDuration:0 delay:v9 options:0 animations:0.25 completion:0.0];
  }

  else
  {
    [(MTMaterialView *)v6 setAlpha:v5];
  }
}

- (AMUIOnboardingViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end