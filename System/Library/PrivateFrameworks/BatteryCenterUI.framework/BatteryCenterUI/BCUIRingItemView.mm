@interface BCUIRingItemView
+ (BOOL)isAX1PlusLayoutRequiredForContentSizeCategory:(id)category;
+ (double)_ringLabelPaddingForContentSizeCategory:(id)category;
- (BCUIRingItemView)initWithFrame:(CGRect)frame;
- (CGRect)_frameForChargeLabelWithSize:(CGSize)size baseLineOffsetFromBoundsTop:(double)top chargeRingSize:(CGSize)ringSize style:(int64_t)style inBounds:(CGRect)bounds scale:(double)scale;
- (CGRect)_frameForChargeRingWithSize:(CGSize)size chargeLabelSize:(CGSize)labelSize style:(int64_t)style inBounds:(CGRect)bounds scale:(double)scale;
- (CGRect)_largestPossibleFrameForChargeLabelGivenBounds:(CGRect)result chargeRingSize:(CGSize)size andRingLabelPadding:(double)padding;
- (CGSize)_sizeForChargeLabel:(id)label withStyle:(int64_t)style inBounds:(CGRect)bounds scale:(double)scale;
- (CGSize)_sizeForChargeRingWithStyle:(int64_t)style inBounds:(CGRect)bounds withPreferredContentSizeCategory:(id)category;
- (UIViewControllerTransitionCoordinator)transitionCoordinator;
- (id)_chargeRing;
- (id)_lazyPercentChargeFormatter;
- (id)_percentChargeString:(int64_t)string;
- (id)_visualStylingProviderForCategory:(int64_t)category;
- (void)_beginAutomaticallyUpdatingChargeLabelVisualStyling;
- (void)_configureChargeLabelForStyle:(int64_t)style;
- (void)_stopAutomaticallyUpdatingVisualStyling;
- (void)_updateFontForChargeLabelForStyle:(int64_t)style andContentSizeCategory:(id)category;
- (void)_updateVisualStylingWithProvidersFromStylingProvider:(id)provider;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setCharging:(BOOL)charging;
- (void)setEmpty:(BOOL)empty;
- (void)setGlyph:(id)glyph;
- (void)setLowCharge:(BOOL)charge;
- (void)setLowPowerModeEnabled:(BOOL)enabled;
- (void)setPercentCharge:(int64_t)charge;
- (void)setRingItemViewStyle:(int64_t)style;
- (void)setRingLineWidth:(double)width;
- (void)setRingScale:(double)scale;
- (void)setScaleFactor:(double)factor;
- (void)setTransitionCoordinator:(id)coordinator;
- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category;
@end

@implementation BCUIRingItemView

+ (BOOL)isAX1PlusLayoutRequiredForContentSizeCategory:(id)category
{
  categoryCopy = category;
  v4 = *MEMORY[0x1E69DDC40];
  if (UIContentSizeCategoryCompareToCategory(categoryCopy, *MEMORY[0x1E69DDC40]))
  {
    v5 = UIContentSizeCategoryCompareToCategory(categoryCopy, v4) == NSOrderedDescending;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

+ (double)_ringLabelPaddingForContentSizeCategory:(id)category
{
  categoryCopy = category;
  v4 = 10.0;
  if (UIContentSizeCategoryCompareToCategory(categoryCopy, *MEMORY[0x1E69DDC40]) && UIContentSizeCategoryCompareToCategory(categoryCopy, *MEMORY[0x1E69DDC38]))
  {
    if (UIContentSizeCategoryCompareToCategory(categoryCopy, *MEMORY[0x1E69DDC30]))
    {
      if (UIContentSizeCategoryCompareToCategory(categoryCopy, *MEMORY[0x1E69DDC28]))
      {
        if (UIContentSizeCategoryCompareToCategory(categoryCopy, *MEMORY[0x1E69DDC20]))
        {
          v4 = 18.0;
        }

        else
        {
          v4 = 0.0;
        }
      }

      else
      {
        v4 = 3.0;
      }
    }

    else
    {
      v4 = 8.0;
    }
  }

  return v4;
}

- (CGRect)_largestPossibleFrameForChargeLabelGivenBounds:(CGRect)result chargeRingSize:(CGSize)size andRingLabelPadding:(double)padding
{
  v5 = result.size.height - (size.height + padding + 16.0);
  result.size.height = v5;
  return result;
}

- (void)setRingItemViewStyle:(int64_t)style
{
  if (self->_ringItemViewStyle != style)
  {
    self->_ringItemViewStyle = style;
    [(BCUIRingItemView *)self setNeedsLayout];
  }
}

- (void)setRingLineWidth:(double)width
{
  [(BCUIRingItemView *)self ringLineWidth];
  if (v5 != width)
  {
    _chargeRing = [(BCUIRingItemView *)self _chargeRing];
    [_chargeRing setLineWidth:width];

    [(BCUIRingItemView *)self setNeedsLayout];
  }
}

- (void)setRingScale:(double)scale
{
  if (self->_ringScale != scale)
  {
    self->_ringScale = scale;
    _chargeRing = [(BCUIRingItemView *)self _chargeRing];
    [_chargeRing setRingScale:scale];

    [(BCUIRingItemView *)self setNeedsLayout];
  }
}

- (void)setPercentCharge:(int64_t)charge
{
  if ([(BCUIRingItemView *)self percentCharge]!= charge)
  {
    _chargeRing = [(BCUIRingItemView *)self _chargeRing];
    [_chargeRing setPercentCharge:charge];

    [(BCUIRingItemView *)self setNeedsLayout];
  }
}

- (void)setLowCharge:(BOOL)charge
{
  chargeCopy = charge;
  if ([(BCUIRingItemView *)self isLowCharge]!= charge)
  {
    _chargeRing = [(BCUIRingItemView *)self _chargeRing];
    [_chargeRing setLowCharge:chargeCopy];
  }
}

- (void)setCharging:(BOOL)charging
{
  chargingCopy = charging;
  if ([(BCUIRingItemView *)self isCharging]!= charging)
  {
    _chargeRing = [(BCUIRingItemView *)self _chargeRing];
    [_chargeRing setCharging:chargingCopy];
  }
}

- (void)setLowPowerModeEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(BCUIRingItemView *)self isLowPowerModeEnabled]!= enabled)
  {
    _chargeRing = [(BCUIRingItemView *)self _chargeRing];
    [_chargeRing setLowPowerModeEnabled:enabledCopy];
  }
}

- (void)setGlyph:(id)glyph
{
  glyphCopy = glyph;
  glyph = [(BCUIRingItemView *)self glyph];

  if (glyph != glyphCopy)
  {
    _chargeRing = [(BCUIRingItemView *)self _chargeRing];
    [_chargeRing setGlyph:glyphCopy];
  }
}

- (void)setScaleFactor:(double)factor
{
  if (self->_scaleFactor != factor)
  {
    self->_scaleFactor = factor;
    _chargeRing = [(BCUIRingItemView *)self _chargeRing];
    [_chargeRing setScaleFactor:self->_scaleFactor];

    [(BCUIRingItemView *)self setNeedsLayout];
  }
}

- (void)setEmpty:(BOOL)empty
{
  if (self->_empty != empty)
  {
    self->_empty = empty;
    [(BCUIRingItemView *)self setNeedsLayout];
  }
}

- (void)setTransitionCoordinator:(id)coordinator
{
  obj = coordinator;
  WeakRetained = objc_loadWeakRetained(&self->_transitionCoordinator);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_transitionCoordinator, obj);
    chargeRing = self->_chargeRing;
    v7 = v5;
    [(BCUIChargeRing *)chargeRing setTransitionCoordinator:obj];
  }
}

- (BCUIRingItemView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = BCUIRingItemView;
  v3 = [(BCUIRingItemView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_ringScale = 1.0;
    _chargeRing = [(BCUIRingItemView *)v3 _chargeRing];
    [_chargeRing setRingScale:1.0];

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __34__BCUIRingItemView_initWithFrame___block_invoke;
    v7[3] = &unk_1E814EBF0;
    v8 = v4;
    [(UIView *)v8 observeContentSizeCategoryChange:v7];
  }

  return v4;
}

- (void)didMoveToSuperview
{
  v4.receiver = self;
  v4.super_class = BCUIRingItemView;
  [(BCUIRingItemView *)&v4 didMoveToSuperview];
  superview = [(BCUIRingItemView *)self superview];
  [(BCUIRingItemView *)self _updateVisualStylingWithProvidersFromStylingProvider:superview];
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = BCUIRingItemView;
  [(BCUIRingItemView *)&v5 didMoveToWindow];
  window = [(BCUIRingItemView *)self window];

  if (window)
  {
    superview = [(BCUIRingItemView *)self superview];
    [(BCUIRingItemView *)self _updateVisualStylingWithProvidersFromStylingProvider:superview];
  }
}

- (void)layoutSubviews
{
  v41.receiver = self;
  v41.super_class = BCUIRingItemView;
  [(BCUIRingItemView *)&v41 layoutSubviews];
  [(BCUIRingItemView *)self bounds];
  if (!CGRectIsEmpty(v42))
  {
    traitCollection = [(BCUIRingItemView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    [(BCUIRingItemView *)self _configureChargeLabelForStyle:self->_ringItemViewStyle];
    [(BCUIRingItemView *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    window = [(BCUIRingItemView *)self window];
    if (window)
    {
      window2 = [(BCUIRingItemView *)self window];
      screen = [window2 screen];
      [screen scale];
      v17 = v16;
    }

    else
    {
      window2 = [MEMORY[0x1E69DCEB0] mainScreen];
      [window2 scale];
      v17 = v18;
    }

    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x4010000000;
    v38[3] = &unk_1C1CAA8BD;
    v19 = *(MEMORY[0x1E695F050] + 16);
    v39 = *MEMORY[0x1E695F050];
    v40 = v19;
    [(BCUIRingItemView *)self _sizeForChargeRingWithStyle:self->_ringItemViewStyle inBounds:preferredContentSizeCategory withPreferredContentSizeCategory:v6, v8, v10, v12];
    v22 = v21;
    if (self->_chargeLabel)
    {
      v35 = v20;
      [(BCUIRingItemView *)self _updateFontForChargeLabelForStyle:self->_ringItemViewStyle andContentSizeCategory:preferredContentSizeCategory];
      _lazyPercentChargeFormatter = [(BCUIRingItemView *)self _lazyPercentChargeFormatter];
      [_lazyPercentChargeFormatter bcui_setPercentSymbolEnabled:{-[BCUIRingItemView _isPercentSymbolEnabledForRingItemStyle:andContentSizeCategory:](self, "_isPercentSymbolEnabledForRingItemStyle:andContentSizeCategory:", self->_ringItemViewStyle, preferredContentSizeCategory)}];

      v24 = [(BCUIRingItemView *)self _percentChargeString:[(BCUIRingItemView *)self percentCharge]];
      text = [(UILabel *)self->_chargeLabel text];
      v26 = [text isEqualToString:v24];

      if ((v26 & 1) == 0)
      {
        [(UILabel *)self->_chargeLabel setText:v24];
        -[UILabel setAdjustsFontSizeToFitWidth:](self->_chargeLabel, "setAdjustsFontSizeToFitWidth:", [v24 length] > 4);
        [(UILabel *)self->_chargeLabel pl_performCrossFadeIfNecessary];
      }

      [(BCUIRingItemView *)self _sizeForChargeLabel:self->_chargeLabel withStyle:self->_ringItemViewStyle inBounds:v6 scale:v8, v10, v12, v17];
      v28 = v27;
      v30 = v29;
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __34__BCUIRingItemView_layoutSubviews__block_invoke;
      v37[3] = &unk_1E814EC18;
      *&v37[6] = v27;
      *&v37[7] = v29;
      v37[4] = self;
      v37[5] = v38;
      *&v37[8] = v35;
      *&v37[9] = v22;
      *&v37[10] = v6;
      *&v37[11] = v8;
      *&v37[12] = v10;
      *&v37[13] = v12;
      *&v37[14] = v17;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v37];

      v20 = v35;
    }

    else
    {
      v28 = *MEMORY[0x1E695F060];
      v30 = *(MEMORY[0x1E695F060] + 8);
    }

    [(BCUIRingItemView *)self _frameForChargeRingWithSize:self->_ringItemViewStyle chargeLabelSize:v20 style:v22 inBounds:v28 scale:v30, v6, v8, v10, v12, *&v17];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __34__BCUIRingItemView_layoutSubviews__block_invoke_2;
    v36[3] = &unk_1E814EC40;
    v36[4] = self;
    v36[5] = v31;
    v36[6] = v32;
    v36[7] = v33;
    v36[8] = v34;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v36];
    _Block_object_dispose(v38, 8);
  }
}

uint64_t __34__BCUIRingItemView_layoutSubviews__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[59];
  if (v3 == 2)
  {
    v4 = v2[52];
    BSRectWithSize();
    [v4 setFrame:?];
    [*(*(a1 + 32) + 416) _firstLineBaselineOffsetFromBoundsTop];
    v6 = v5;
    v2 = *(a1 + 32);
    v3 = v2[59];
  }

  else
  {
    v6 = 0.0;
  }

  [v2 _frameForChargeLabelWithSize:v3 baseLineOffsetFromBoundsTop:*(a1 + 48) chargeRingSize:*(a1 + 56) style:v6 inBounds:*(a1 + 64) scale:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112)}];
  v7 = *(*(a1 + 40) + 8);
  v7[4] = v8;
  v7[5] = v9;
  v7[6] = v10;
  v7[7] = v11;
  v12 = *(*(a1 + 32) + 416);
  v13 = *(*(a1 + 40) + 8);
  v14 = v13[4];
  v15 = v13[5];
  v16 = v13[6];
  v17 = v13[7];

  return [v12 setFrame:{v14, v15, v16, v17}];
}

void __34__BCUIRingItemView_layoutSubviews__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _chargeRing];
  [v2 setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
}

- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category
{
  providerCopy = provider;
  if (providerCopy)
  {
    requiredVisualStyleCategories = [(BCUIRingItemView *)self requiredVisualStyleCategories];
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:category];
    v9 = [requiredVisualStyleCategories containsObject:v8];

    if (v9)
    {
      v10 = [(BCUIRingItemView *)self _visualStylingProviderForCategory:category];
      if (v10 != providerCopy)
      {
        [(BCUIRingItemView *)self _stopAutomaticallyUpdatingVisualStyling];
        objc_storeStrong(&self->_visualStylingProvider, provider);
        [(BCUIRingItemView *)self _beginAutomaticallyUpdatingChargeLabelVisualStyling];
      }
    }
  }
}

- (id)_chargeRing
{
  chargeRing = self->_chargeRing;
  if (!chargeRing)
  {
    v4 = objc_alloc_init(BCUIChargeRing);
    v5 = self->_chargeRing;
    self->_chargeRing = v4;

    v6 = self->_chargeRing;
    WeakRetained = objc_loadWeakRetained(&self->_transitionCoordinator);
    [(BCUIChargeRing *)v6 setTransitionCoordinator:WeakRetained];

    [(BCUIRingItemView *)self addSubview:self->_chargeRing];
    chargeRing = self->_chargeRing;
  }

  return chargeRing;
}

- (CGSize)_sizeForChargeRingWithStyle:(int64_t)style inBounds:(CGRect)bounds withPreferredContentSizeCategory:(id)category
{
  if (self->_ringScale == 1.0)
  {
    Width = CGRectGetWidth(bounds);
  }

  else
  {
    Width = self->_scaleFactor * 74.0;
  }

  if (style == 2)
  {
    Width = (Width + -11.0) * 0.5;
  }

  v7 = Width;
  result.height = v7;
  result.width = Width;
  return result;
}

- (CGRect)_frameForChargeRingWithSize:(CGSize)size chargeLabelSize:(CGSize)labelSize style:(int64_t)style inBounds:(CGRect)bounds scale:(double)scale
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  BSRectWithSize();
  rect = v13;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  v20 = CGRectGetHeight(v29);
  ringScale = self->_ringScale;
  if (style == 2)
  {
    if ([(BCUIRingItemView *)self _shouldReverseLayoutDirection])
    {
      [(BCUIRingItemView *)self bounds];
      CGRectGetMaxX(v30);
      v31.origin.x = rect;
      v31.origin.y = v15;
      v31.size.width = v17;
      v31.size.height = v19;
      CGRectGetWidth(v31);
    }
  }

  else if (style == 1)
  {
    traitCollection = [(BCUIRingItemView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    [BCUIRingItemView _ringLabelPaddingForContentSizeCategory:preferredContentSizeCategory];
  }

  if (ringScale == 1.0)
  {
    UIRectIntegralWithScale();
  }

  else
  {
    UIRectCenteredXInRectScale();
  }

  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (void)_configureChargeLabelForStyle:(int64_t)style
{
  chargeLabel = self->_chargeLabel;
  if (style)
  {
    if (!chargeLabel)
    {
      v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      v7 = self->_chargeLabel;
      self->_chargeLabel = v6;

      [(BCUIRingItemView *)self addSubview:self->_chargeLabel];
      [(BCUIRingItemView *)self _beginAutomaticallyUpdatingChargeLabelVisualStyling];
      chargeLabel = self->_chargeLabel;
    }

    if (style == 1)
    {
      v8 = 1;
    }

    else if ([(BCUIRingItemView *)self _shouldReverseLayoutDirection])
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    [(UILabel *)chargeLabel setTextAlignment:v8];
    [(UILabel *)self->_chargeLabel setLineBreakMode:2];
    v10 = self->_chargeLabel;
    v11 = 1.0;
    if (self->_empty)
    {
      v11 = 0.0;
    }

    [(UILabel *)v10 setAlpha:v11];
  }

  else if (chargeLabel)
  {
    [(UILabel *)self->_chargeLabel removeFromSuperview];
    v9 = self->_chargeLabel;
    self->_chargeLabel = 0;
  }
}

- (void)_updateFontForChargeLabelForStyle:(int64_t)style andContentSizeCategory:(id)category
{
  categoryCopy = category;
  v7 = categoryCopy;
  chargeLabel = self->_chargeLabel;
  if (chargeLabel)
  {
    if (style == 2)
    {
      v13 = categoryCopy;
      v9 = [MEMORY[0x1E69DB878] systemFontOfSize:self->_scaleFactor * 46.0];
      [(UILabel *)chargeLabel setFont:v9];
    }

    else
    {
      if (style != 1)
      {
        goto LABEL_7;
      }

      v13 = categoryCopy;
      v9 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:categoryCopy];
      v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC0] compatibleWithTraitCollection:v9];
      [v10 pointSize];
      v12 = [v10 fontWithSize:v11 * self->_scaleFactor];

      [(UILabel *)self->_chargeLabel setFont:v12];
    }

    v7 = v13;
  }

LABEL_7:

  MEMORY[0x1EEE66BB8](categoryCopy, v7);
}

- (id)_visualStylingProviderForCategory:(int64_t)category
{
  if (category == 1)
  {
    return self->_visualStylingProvider;
  }

  else
  {
    return 0;
  }
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
    requiredVisualStyleCategories = [(BCUIRingItemView *)self requiredVisualStyleCategories];
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
          -[BCUIRingItemView setVisualStylingProvider:forCategory:](self, "setVisualStylingProvider:forCategory:", v11, [v10 integerValue]);
        }

        v7 = [requiredVisualStyleCategories countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

- (void)_beginAutomaticallyUpdatingChargeLabelVisualStyling
{
  visualStylingProvider = self->_visualStylingProvider;
  if (visualStylingProvider)
  {
    chargeLabel = self->_chargeLabel;
    if (chargeLabel)
    {
      [(MTVisualStylingProvider *)visualStylingProvider automaticallyUpdateView:chargeLabel withStyle:0 andObserverBlock:&__block_literal_global];
    }
  }
}

id __71__BCUIRingItemView__beginAutomaticallyUpdatingChargeLabelVisualStyling__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 alpha];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__BCUIRingItemView__beginAutomaticallyUpdatingChargeLabelVisualStyling__block_invoke_2;
  v6[3] = &__block_descriptor_40_e36_v24__0__MTVisualStylingProvider_8_16l;
  v6[4] = v3;
  v4 = MEMORY[0x1C690A930](v6);

  return v4;
}

- (void)_stopAutomaticallyUpdatingVisualStyling
{
  visualStylingProvider = self->_visualStylingProvider;
  if (visualStylingProvider)
  {
    if (self->_chargeLabel)
    {
      [(MTVisualStylingProvider *)visualStylingProvider stopAutomaticallyUpdatingView:?];
    }
  }
}

- (CGSize)_sizeForChargeLabel:(id)label withStyle:(int64_t)style inBounds:(CGRect)bounds scale:(double)scale
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  labelCopy = label;
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v12 = CGRectGetWidth(v21);
  v13 = 0.0;
  if (style == 1)
  {
    v13 = 12.0;
  }

  v14 = v13 + v12;
  font = [labelCopy font];

  [font pointSize];
  v17 = v16;

  v18 = v14;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (CGRect)_frameForChargeLabelWithSize:(CGSize)size baseLineOffsetFromBoundsTop:(double)top chargeRingSize:(CGSize)ringSize style:(int64_t)style inBounds:(CGRect)bounds scale:(double)scale
{
  BSRectWithSize();
  CGRectGetHeight(bounds);
  if (style == 1)
  {
    traitCollection = [(BCUIRingItemView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    [BCUIRingItemView _ringLabelPaddingForContentSizeCategory:preferredContentSizeCategory];
  }

  UIRectIntegralWithScale();
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (id)_lazyPercentChargeFormatter
{
  percentChargeFormatter = self->_percentChargeFormatter;
  if (!percentChargeFormatter)
  {
    bcui_newPercentChargeFormatter = [MEMORY[0x1E696ADA0] bcui_newPercentChargeFormatter];
    v5 = self->_percentChargeFormatter;
    self->_percentChargeFormatter = bcui_newPercentChargeFormatter;

    percentChargeFormatter = self->_percentChargeFormatter;
  }

  return percentChargeFormatter;
}

- (id)_percentChargeString:(int64_t)string
{
  _lazyPercentChargeFormatter = [(BCUIRingItemView *)self _lazyPercentChargeFormatter];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:string];
  v6 = [_lazyPercentChargeFormatter stringFromNumber:v5];

  return v6;
}

- (UIViewControllerTransitionCoordinator)transitionCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionCoordinator);

  return WeakRetained;
}

@end