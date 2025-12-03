@interface BCUIChargeRing
- (BCUIChargeRing)init;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIViewControllerTransitionCoordinator)transitionCoordinator;
- (double)lineWidth;
- (id)_baseRing;
- (id)_chargeRing;
- (id)_glyphImageView;
- (id)_ringVisualStylingProvider;
- (void)_beginAutomaticallyUpdatingPrimaryVisualStylingForView:(id)view observerBlock:(id)block;
- (void)_beginAutomaticallyUpdatingVisualStylingForCategory:(int64_t)category;
- (void)_configureBoltImageViewIfNecessary;
- (void)_configureBoltMaskImageViewIfNecessary;
- (void)_configureCaptureBackdropIfNecessary;
- (void)_configureRingCapShadowIfNecessary;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_stopAutomaticallyUpdatingVisualStylingForCategory:(int64_t)category;
- (void)_updateVisualStylingForBaseRingIfNecessary;
- (void)_updateVisualStylingForBolt;
- (void)_updateVisualStylingWithProvidersFromStylingProvider:(id)provider;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setCharging:(BOOL)charging;
- (void)setGlyph:(id)glyph;
- (void)setLineWidth:(double)width;
- (void)setLowCharge:(BOOL)charge;
- (void)setLowPowerModeEnabled:(BOOL)enabled;
- (void)setPercentCharge:(int64_t)charge;
- (void)setScaleFactor:(double)factor;
- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category;
@end

@implementation BCUIChargeRing

- (double)lineWidth
{
  result = self->_lineWidth;
  if (result <= 0.0)
  {
    return 6.0;
  }

  return result;
}

- (void)setLineWidth:(double)width
{
  if (self->_lineWidth != width)
  {
    self->_lineWidth = width;
    [(BCUIChargeRing *)self setNeedsLayout];
  }
}

- (void)setPercentCharge:(int64_t)charge
{
  v3 = charge & ~(charge >> 63);
  if (v3 >= 100)
  {
    v3 = 100;
  }

  if (v3 != self->_percentCharge)
  {
    self->_percentCharge = v3;
    if (charge < 1)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __35__BCUIChargeRing_setPercentCharge___block_invoke;
      v9[3] = &unk_1E814ECE8;
      v9[4] = self;
      _chargeRing = MEMORY[0x1C690A930](v9, a2);
      WeakRetained = objc_loadWeakRetained(&self->_transitionCoordinator);
      if (WeakRetained)
      {
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __35__BCUIChargeRing_setPercentCharge___block_invoke_2;
        v7[3] = &unk_1E814ED60;
        v8 = _chargeRing;
        [WeakRetained animateAlongsideTransition:0 completion:v7];
      }

      else
      {
        _chargeRing[2](_chargeRing);
      }
    }

    else
    {
      _chargeRing = [(BCUIChargeRing *)self _chargeRing];
      [_chargeRing setFractionComplete:self->_percentCharge / 100.0];
    }

    [(BCUIChargeRing *)self setNeedsLayout];
  }
}

void __35__BCUIChargeRing_setPercentCharge___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 504))
  {
    [*(v2 + 416) removeFromSuperview];
    v4 = *(a1 + 32);
    v5 = *(v4 + 416);
    *(v4 + 416) = 0;

    [*(*(a1 + 32) + 440) removeFromSuperview];
    v6 = *(a1 + 32);
    v7 = *(v6 + 440);
    *(v6 + 440) = 0;

    [*(*(a1 + 32) + 432) removeFromSuperview];
    v8 = *(a1 + 32);
    v9 = *(v8 + 432);
    *(v8 + 432) = 0;
  }
}

- (void)setLowCharge:(BOOL)charge
{
  if (self->_lowCharge != charge)
  {
    self->_lowCharge = charge;
    [(BCUIChargeRing *)self setNeedsLayout];
  }
}

- (void)setCharging:(BOOL)charging
{
  if (self->_charging != charging)
  {
    self->_charging = charging;
    [(BCUIChargeRing *)self setNeedsLayout];
  }
}

- (void)setLowPowerModeEnabled:(BOOL)enabled
{
  if (self->_lowPowerModeEnabled != enabled)
  {
    self->_lowPowerModeEnabled = enabled;
    [(BCUIChargeRing *)self setNeedsLayout];
  }
}

- (void)setGlyph:(id)glyph
{
  glyphCopy = glyph;
  if (self->_glyph != glyphCopy)
  {
    v6 = glyphCopy;
    objc_storeStrong(&self->_glyph, glyph);
    [(BCUIChargeRing *)self setNeedsLayout];
    glyphCopy = v6;
  }
}

- (void)setScaleFactor:(double)factor
{
  if (self->_scaleFactor != factor)
  {
    self->_scaleFactor = factor;
    [(BCUIChargeRing *)self setNeedsLayout];
  }
}

- (BCUIChargeRing)init
{
  v7.receiver = self;
  v7.super_class = BCUIChargeRing;
  v2 = [(BCUIChargeRing *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __22__BCUIChargeRing_init__block_invoke;
    v5[3] = &unk_1E814EBF0;
    v6 = v2;
    [(UIView *)v6 observeContentSizeCategoryChange:v5];
  }

  return v3;
}

- (void)didMoveToSuperview
{
  v4.receiver = self;
  v4.super_class = BCUIChargeRing;
  [(BCUIChargeRing *)&v4 didMoveToSuperview];
  superview = [(BCUIChargeRing *)self superview];
  [(BCUIChargeRing *)self _updateVisualStylingWithProvidersFromStylingProvider:superview];
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = BCUIChargeRing;
  [(BCUIChargeRing *)&v5 didMoveToWindow];
  window = [(BCUIChargeRing *)self window];

  if (window)
  {
    superview = [(BCUIChargeRing *)self superview];
    [(BCUIChargeRing *)self _updateVisualStylingWithProvidersFromStylingProvider:superview];
  }
}

- (void)layoutSubviews
{
  v45.receiver = self;
  v45.super_class = BCUIChargeRing;
  [(BCUIChargeRing *)&v45 layoutSubviews];
  [(BCUIChargeRing *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(BCUIChargeRing *)self lineWidth];
  v12 = v11 * self->_scaleFactor * self->_ringScale;
  _baseRing = [(BCUIChargeRing *)self _baseRing];
  [_baseRing setLineWidth:v12];

  [(BCUIRingView *)self->_baseRing setFrame:v4, v6, v8, v10];
  [(BCUIChargeRing *)self _updateVisualStylingForBaseRingIfNecessary];
  lowCharge = self->_lowCharge;
  lowPowerModeEnabled = self->_lowPowerModeEnabled;
  systemGreenColor = [MEMORY[0x1E69DC888] systemGreenColor];
  if (lowPowerModeEnabled)
  {
    systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
  }

  else
  {
    if (!lowCharge)
    {
      goto LABEL_6;
    }

    systemYellowColor = [MEMORY[0x1E69DC888] systemRedColor];
  }

  v18 = systemYellowColor;

  systemGreenColor = v18;
LABEL_6:
  chargeRing = self->_chargeRing;
  if (chargeRing)
  {
    [(BCUIRingView *)chargeRing setLineWidth:v12];
    [(BCUIRingView *)self->_chargeRing setFrame:v4, v6, v8, v10];
    [(BCUIRingView *)self->_chargeRing setStrokeColor:systemGreenColor];
    chargeRing = self->_chargeRing;
  }

  v20 = 0.0;
  if (self->_percentCharge > 0)
  {
    v20 = 1.0;
  }

  [(BCUIRingView *)chargeRing setAlpha:v20];
  ringCapShadow = self->_ringCapShadow;
  [(BCUIChargeRing *)self _configureRingCapShadowIfNecessary];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __32__BCUIChargeRing_layoutSubviews__block_invoke;
  v44[3] = &unk_1E814EC40;
  v44[4] = self;
  *&v44[5] = v4;
  *&v44[6] = v6;
  *&v44[7] = v8;
  *&v44[8] = v10;
  v22 = MEMORY[0x1C690A930](v44);
  v23 = v22;
  if (ringCapShadow || !self->_ringCapShadow)
  {
    (*(v22 + 16))(v22);
  }

  else
  {
    [MEMORY[0x1E69DD250] performWithoutAnimation:v22];
  }

  v24 = self->_ringCapShadow;
  _shouldShowRingCapShadow = [(BCUIChargeRing *)self _shouldShowRingCapShadow];
  v26 = 0.0;
  if (_shouldShowRingCapShadow)
  {
    v26 = 1.0;
  }

  [(BCUIRingCapShadow *)v24 setAlpha:v26];
  window = [(BCUIChargeRing *)self window];
  if (window)
  {
    window2 = [(BCUIChargeRing *)self window];
    screen = [window2 screen];
    [screen scale];
  }

  else
  {
    window2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [window2 scale];
  }

  if (self->_charging)
  {
    [(BCUIRingView *)self->_baseRing bounds];
    CGRectGetMidX(v46);
    BSRectWithSize();
    UIRectCenteredAboutPoint();
    UIRectIntegralWithScale();
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __32__BCUIChargeRing_layoutSubviews__block_invoke_2;
    v43[3] = &unk_1E814EC40;
    v43[4] = self;
    v43[5] = v30;
    v43[6] = v31;
    v43[7] = v32;
    v43[8] = v33;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v43];
  }

  [(BCUIChargeRing *)self _updateVisualStylingForBolt];
  [(BCUIChargeRing *)self _configureCaptureBackdropIfNecessary];
  [(CABackdropLayer *)self->_captureBackdrop setFrame:v4, v6, v8, v10];
  if (self->_charging)
  {
    v34 = 1.0;
  }

  else
  {
    v34 = 0.0;
  }

  [(UIImageView *)self->_boltMaskImageView setAlpha:v34];
  if (self->_charging)
  {
    v35 = 1.0;
  }

  else
  {
    v35 = 0.0;
  }

  [(UIImageView *)self->_boltImageView setAlpha:v35];
  _glyphImageView = [(BCUIChargeRing *)self _glyphImageView];
  image = [_glyphImageView image];
  glyph = self->_glyph;

  if (image != glyph)
  {
    [(UIImageView *)self->_glyphImageView setImage:self->_glyph];
    [(UIImageView *)self->_glyphImageView setContentMode:4];
    v39 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:self->_scaleFactor * 24.0 * self->_ringScale];
    v40 = [MEMORY[0x1E69DCAD8] configurationWithPaletteColors:MEMORY[0x1E695E0F0]];
    v41 = [v39 configurationByApplyingConfiguration:v40];

    [(UIImageView *)self->_glyphImageView setPreferredSymbolConfiguration:v41];
    [(UIImageView *)self->_glyphImageView pl_performCrossFadeIfNecessary];
  }

  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __32__BCUIChargeRing_layoutSubviews__block_invoke_3;
  v42[3] = &unk_1E814EC40;
  v42[4] = self;
  *&v42[5] = v4;
  *&v42[6] = v6;
  *&v42[7] = v8;
  *&v42[8] = v10;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v42];
}

uint64_t __32__BCUIChargeRing_layoutSubviews__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 424) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  [*(*(a1 + 32) + 424) setArcFraction:*(*(a1 + 32) + 504) / 100.0];
  v2 = *(*(a1 + 32) + 424);

  return [v2 layoutIfNeeded];
}

uint64_t __32__BCUIChargeRing_layoutSubviews__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _configureBoltMaskImageViewIfNecessary];
  [*(*(a1 + 32) + 432) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  [*(a1 + 32) _configureBoltImageViewIfNecessary];
  v2 = *(*(a1 + 32) + 440);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);

  return [v2 setFrame:{v3, v4, v5, v6}];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  _baseRing = [(BCUIChargeRing *)self _baseRing];
  [_baseRing sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v4.receiver = self;
  v4.super_class = BCUIChargeRing;
  [(BCUIChargeRing *)&v4 _dynamicUserInterfaceTraitDidChange];
  baseRingVisualStylingProvider = self->_baseRingVisualStylingProvider;
  self->_baseRingVisualStylingProvider = 0;

  [(BCUIChargeRing *)self _updateVisualStylingForBaseRingIfNecessary];
}

- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category
{
  providerCopy = provider;
  if (providerCopy)
  {
    requiredVisualStyleCategories = [(BCUIChargeRing *)self requiredVisualStyleCategories];
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:category];
    v9 = [requiredVisualStyleCategories containsObject:v8];

    if (v9)
    {
      v10 = [(BCUIChargeRing *)self _visualStylingProviderForCategory:category];
      if (v10 != providerCopy)
      {
        [(BCUIChargeRing *)self _stopAutomaticallyUpdatingVisualStylingForCategory:category];
        objc_storeStrong(&self->_visualStylingProvider, provider);
        [(BCUIChargeRing *)self _beginAutomaticallyUpdatingVisualStylingForCategory:category];
      }
    }
  }
}

- (id)_chargeRing
{
  chargeRing = self->_chargeRing;
  if (!chargeRing)
  {
    v4 = objc_alloc_init(BCUIRingView);
    v5 = self->_chargeRing;
    self->_chargeRing = v4;

    v6 = self->_chargeRing;
    _baseRing = [(BCUIChargeRing *)self _baseRing];
    [(BCUIChargeRing *)self insertSubview:v6 aboveSubview:_baseRing];

    chargeRing = self->_chargeRing;
  }

  return chargeRing;
}

- (id)_baseRing
{
  baseRing = self->_baseRing;
  if (!baseRing)
  {
    v4 = objc_alloc_init(BCUIRingView);
    v5 = self->_baseRing;
    self->_baseRing = v4;

    v6 = self->_baseRing;
    secondarySystemFillColor = [MEMORY[0x1E69DC888] secondarySystemFillColor];
    [(BCUIRingView *)v6 setStrokeColor:secondarySystemFillColor];

    [(BCUIRingView *)self->_baseRing setFractionComplete:1.0];
    [(BCUIChargeRing *)self addSubview:self->_baseRing];
    baseRing = self->_baseRing;
  }

  return baseRing;
}

- (id)_glyphImageView
{
  glyphImageView = self->_glyphImageView;
  if (!glyphImageView)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    v5 = self->_glyphImageView;
    self->_glyphImageView = v4;

    chargeRing = self->_chargeRing;
    if (chargeRing)
    {
      _baseRing = chargeRing;
    }

    else
    {
      _baseRing = [(BCUIChargeRing *)self _baseRing];
    }

    v8 = _baseRing;
    [(BCUIChargeRing *)self insertSubview:self->_glyphImageView aboveSubview:_baseRing];
    [(MTVisualStylingProvider *)self->_visualStylingProvider automaticallyUpdateView:self->_glyphImageView withStyle:0];

    glyphImageView = self->_glyphImageView;
  }

  return glyphImageView;
}

- (void)_configureBoltMaskImageViewIfNecessary
{
  if (!self->_boltMaskImageView)
  {
    v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v4 = MEMORY[0x1E69DCAB8];
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    traitCollection = [(BCUIChargeRing *)self traitCollection];
    v7 = [v4 imageNamed:@"batterywidget.bolt.mask" inBundle:v5 compatibleWithTraitCollection:traitCollection];
    v8 = [v3 initWithImage:v7];
    boltMaskImageView = self->_boltMaskImageView;
    self->_boltMaskImageView = v8;

    [(UIImageView *)self->_boltMaskImageView setContentMode:1];
    layer = [(UIImageView *)self->_boltMaskImageView layer];
    [layer setCompositingFilter:*MEMORY[0x1E69798E8]];

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__BCUIChargeRing__configureBoltMaskImageViewIfNecessary__block_invoke;
    v11[3] = &unk_1E814ECE8;
    v11[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v11];
    [(BCUIChargeRing *)self addSubview:self->_boltMaskImageView];
  }
}

- (void)_configureBoltImageViewIfNecessary
{
  if (!self->_boltImageView)
  {
    v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v4 = MEMORY[0x1E69DCAB8];
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    traitCollection = [(BCUIChargeRing *)self traitCollection];
    v7 = [v4 imageNamed:@"batterywidget.bolt" inBundle:v5 compatibleWithTraitCollection:traitCollection];
    v8 = [v3 initWithImage:v7];
    boltImageView = self->_boltImageView;
    self->_boltImageView = v8;

    [(UIImageView *)self->_boltImageView setContentMode:1];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52__BCUIChargeRing__configureBoltImageViewIfNecessary__block_invoke;
    v10[3] = &unk_1E814ECE8;
    v10[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v10];
    [(BCUIChargeRing *)self _configureBoltMaskImageViewIfNecessary];
    [(BCUIChargeRing *)self insertSubview:self->_boltImageView aboveSubview:self->_boltMaskImageView];
  }
}

- (void)_configureRingCapShadowIfNecessary
{
  _shouldShowRingCapShadow = [(BCUIChargeRing *)self _shouldShowRingCapShadow];
  [(BCUIChargeRing *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __52__BCUIChargeRing__configureRingCapShadowIfNecessary__block_invoke;
  v25[3] = &unk_1E814ECE8;
  v25[4] = self;
  v12 = MEMORY[0x1C690A930](v25);
  [(BCUIRingCapShadow *)self->_ringCapShadow ringBounds];
  v27.origin.x = v13;
  v27.origin.y = v14;
  v27.size.width = v15;
  v27.size.height = v16;
  v26.origin.x = v5;
  v26.origin.y = v7;
  v26.size.width = v9;
  v26.size.height = v11;
  if (!CGRectEqualToRect(v26, v27))
  {
    v12[2](v12);
  }

  ringCapShadow = self->_ringCapShadow;
  if (ringCapShadow == 0 && _shouldShowRingCapShadow)
  {
    [(BCUIRingView *)self->_chargeRing lineWidth];
    v19 = [BCUIRingCapShadow ringCapShadowForRingWithBounds:v5 lineWidth:v7, v9, v11, v18];
    v20 = self->_ringCapShadow;
    self->_ringCapShadow = v19;

    [(BCUIChargeRing *)self insertSubview:self->_ringCapShadow aboveSubview:self->_chargeRing];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __52__BCUIChargeRing__configureRingCapShadowIfNecessary__block_invoke_2;
    v24[3] = &unk_1E814ECE8;
    v24[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v24];
  }

  else if (ringCapShadow != 0 && !_shouldShowRingCapShadow)
  {
    WeakRetained = objc_loadWeakRetained(&self->_transitionCoordinator);
    if (WeakRetained)
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __52__BCUIChargeRing__configureRingCapShadowIfNecessary__block_invoke_3;
      v22[3] = &unk_1E814ED88;
      v22[4] = self;
      v23 = v12;
      [WeakRetained animateAlongsideTransition:0 completion:v22];
    }

    else
    {
      v12[2](v12);
    }
  }
}

void __52__BCUIChargeRing__configureRingCapShadowIfNecessary__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 424) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = *(v2 + 424);
  *(v2 + 424) = 0;
}

uint64_t __52__BCUIChargeRing__configureRingCapShadowIfNecessary__block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) _isPastThresholdForRingCapShadow];
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

- (void)_updateVisualStylingWithProvidersFromStylingProvider:(id)provider
{
  v17 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  if (providerCopy)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    requiredVisualStyleCategories = [(BCUIChargeRing *)self requiredVisualStyleCategories];
    v6 = [requiredVisualStyleCategories countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(requiredVisualStyleCategories);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          v11 = [providerCopy visualStylingProviderForCategory:{objc_msgSend(v10, "integerValue")}];
          -[BCUIChargeRing setVisualStylingProvider:forCategory:](self, "setVisualStylingProvider:forCategory:", v11, [v10 integerValue]);
        }

        v7 = [requiredVisualStyleCategories countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

- (void)_beginAutomaticallyUpdatingPrimaryVisualStylingForView:(id)view observerBlock:(id)block
{
  if (view)
  {
    visualStylingProvider = self->_visualStylingProvider;
    if (visualStylingProvider)
    {
      [MTVisualStylingProvider automaticallyUpdateView:"automaticallyUpdateView:withStyle:andObserverBlock:" withStyle:? andObserverBlock:?];

      [(BCUIChargeRing *)self setNeedsDisplay];
    }
  }
}

- (void)_beginAutomaticallyUpdatingVisualStylingForCategory:(int64_t)category
{
  if (category == 1 && self->_visualStylingProvider)
  {
    [(BCUIChargeRing *)self _beginAutomaticallyUpdatingPrimaryVisualStylingForView:self->_glyphImageView observerBlock:0];

    [(BCUIChargeRing *)self _updateVisualStylingForBolt];
  }
}

- (void)_stopAutomaticallyUpdatingVisualStylingForCategory:(int64_t)category
{
  if (category == 1)
  {
    v7[9] = v3;
    v7[10] = v4;
    if (self->_visualStylingProvider)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __69__BCUIChargeRing__stopAutomaticallyUpdatingVisualStylingForCategory___block_invoke;
      v7[3] = &unk_1E814EDB0;
      v7[4] = self;
      v6 = MEMORY[0x1C690A930](v7, a2);
      (v6)[2](v6, self->_glyphImageView);
      (v6)[2](v6, self->_boltImageView);
    }
  }
}

uint64_t __69__BCUIChargeRing__stopAutomaticallyUpdatingVisualStylingForCategory___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    [*(*(result + 32) + 464) stopAutomaticallyUpdatingView:a2];
    v3 = *(v2 + 32);

    return [v3 setNeedsDisplay];
  }

  return result;
}

- (id)_ringVisualStylingProvider
{
  baseRingVisualStylingProvider = self->_baseRingVisualStylingProvider;
  if (!baseRingVisualStylingProvider)
  {
    traitCollection = [(BCUIChargeRing *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];
    v6 = @"baseRingLight";
    if (userInterfaceStyle == 2)
    {
      v6 = @"baseRingDark";
    }

    v7 = v6;

    v8 = MEMORY[0x1E69AE170];
    v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v10 = [v8 _visualStylingProviderForStyleSetNamed:v7 inBundle:v9];

    v11 = self->_baseRingVisualStylingProvider;
    self->_baseRingVisualStylingProvider = v10;

    baseRingVisualStylingProvider = self->_baseRingVisualStylingProvider;
  }

  return baseRingVisualStylingProvider;
}

- (void)_updateVisualStylingForBaseRingIfNecessary
{
  if (!self->_baseRingVisualStylingProvider)
  {
    [(BCUIRingView *)self->_baseRing mt_removeAllVisualStyling];
    baseRing = self->_baseRing;
    _ringVisualStylingProvider = [(BCUIChargeRing *)self _ringVisualStylingProvider];
    v5 = [_ringVisualStylingProvider _visualStylingForStyle:1];
    [(BCUIRingView *)baseRing mt_replaceVisualStyling:v5];
  }
}

- (void)_configureCaptureBackdropIfNecessary
{
  captureBackdrop = self->_captureBackdrop;
  if (self->_charging)
  {
    if (!captureBackdrop)
    {
      v4 = objc_alloc_init(MEMORY[0x1E6979310]);
      v5 = self->_captureBackdrop;
      self->_captureBackdrop = v4;

      [(CABackdropLayer *)self->_captureBackdrop setAllowsInPlaceFiltering:1];
      layer = [(BCUIChargeRing *)self layer];
      [layer insertSublayer:self->_captureBackdrop atIndex:0];
    }
  }

  else if (captureBackdrop)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __54__BCUIChargeRing__configureCaptureBackdropIfNecessary__block_invoke;
    v11[3] = &unk_1E814ECE8;
    v11[4] = self;
    v6 = MEMORY[0x1C690A930](v11, a2);
    WeakRetained = objc_loadWeakRetained(&self->_transitionCoordinator);
    if (WeakRetained)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __54__BCUIChargeRing__configureCaptureBackdropIfNecessary__block_invoke_2;
      v9[3] = &unk_1E814ED60;
      v10 = v6;
      [WeakRetained animateAlongsideTransition:0 completion:v9];
    }

    else
    {
      v6[2](v6);
    }
  }
}

void __54__BCUIChargeRing__configureCaptureBackdropIfNecessary__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 481) & 1) == 0)
  {
    [*(v2 + 448) removeFromSuperlayer];
    v4 = *(a1 + 32);
    v5 = *(v4 + 448);
    *(v4 + 448) = 0;
  }
}

- (void)_updateVisualStylingForBolt
{
  if (self->_charging)
  {
    percentCharge = self->_percentCharge;
    visualStylingProvider = self->_visualStylingProvider;
    boltImageView = self->_boltImageView;
    if (percentCharge == 100)
    {
      [(MTVisualStylingProvider *)visualStylingProvider stopAutomaticallyUpdatingView:boltImageView];
      v6 = self->_boltImageView;
      systemGreenColor = [MEMORY[0x1E69DC888] systemGreenColor];
      [(UIImageView *)v6 setTintColor:systemGreenColor];
    }

    else
    {
      v10 = [(MTVisualStylingProvider *)visualStylingProvider _visualStylingForContinuallyUpdatedView:boltImageView];

      if (!v10)
      {
        objc_initWeak(&location, self->_boltImageView);
        v11 = self->_boltImageView;
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __45__BCUIChargeRing__updateVisualStylingForBolt__block_invoke;
        v14[3] = &unk_1E814EDD8;
        objc_copyWeak(&v15, &location);
        [(BCUIChargeRing *)self _beginAutomaticallyUpdatingPrimaryVisualStylingForView:v11 observerBlock:v14];
        objc_destroyWeak(&v15);
        objc_destroyWeak(&location);
      }
    }

    layer = [(BCUIChargeRing *)self layer];
    [layer setAllowsGroupBlending:1];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_transitionCoordinator);
    layer = WeakRetained;
    if (WeakRetained)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __45__BCUIChargeRing__updateVisualStylingForBolt__block_invoke_3;
      v13[3] = &unk_1E814EE00;
      v13[4] = self;
      [WeakRetained animateAlongsideTransition:0 completion:v13];
    }

    else
    {
      layer2 = [(BCUIChargeRing *)self layer];
      [layer2 setAllowsGroupBlending:self->_charging];
    }
  }
}

id __45__BCUIChargeRing__updateVisualStylingForBolt__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained alpha];
  v3 = v2;

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__BCUIChargeRing__updateVisualStylingForBolt__block_invoke_2;
  v6[3] = &__block_descriptor_40_e36_v24__0__MTVisualStylingProvider_8_16l;
  v6[4] = v3;
  v4 = MEMORY[0x1C690A930](v6);

  return v4;
}

void __45__BCUIChargeRing__updateVisualStylingForBolt__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  [v2 setAllowsGroupBlending:*(*(a1 + 32) + 481)];
}

- (UIViewControllerTransitionCoordinator)transitionCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionCoordinator);

  return WeakRetained;
}

@end