@interface BCUIRingItemView
+ (BOOL)isAX1PlusLayoutRequiredForContentSizeCategory:(id)a3;
+ (double)_ringLabelPaddingForContentSizeCategory:(id)a3;
- (BCUIRingItemView)initWithFrame:(CGRect)a3;
- (CGRect)_frameForChargeLabelWithSize:(CGSize)a3 baseLineOffsetFromBoundsTop:(double)a4 chargeRingSize:(CGSize)a5 style:(int64_t)a6 inBounds:(CGRect)a7 scale:(double)a8;
- (CGRect)_frameForChargeRingWithSize:(CGSize)a3 chargeLabelSize:(CGSize)a4 style:(int64_t)a5 inBounds:(CGRect)a6 scale:(double)a7;
- (CGRect)_largestPossibleFrameForChargeLabelGivenBounds:(CGRect)result chargeRingSize:(CGSize)a4 andRingLabelPadding:(double)a5;
- (CGSize)_sizeForChargeLabel:(id)a3 withStyle:(int64_t)a4 inBounds:(CGRect)a5 scale:(double)a6;
- (CGSize)_sizeForChargeRingWithStyle:(int64_t)a3 inBounds:(CGRect)a4 withPreferredContentSizeCategory:(id)a5;
- (UIViewControllerTransitionCoordinator)transitionCoordinator;
- (id)_chargeRing;
- (id)_lazyPercentChargeFormatter;
- (id)_percentChargeString:(int64_t)a3;
- (id)_visualStylingProviderForCategory:(int64_t)a3;
- (void)_beginAutomaticallyUpdatingChargeLabelVisualStyling;
- (void)_configureChargeLabelForStyle:(int64_t)a3;
- (void)_stopAutomaticallyUpdatingVisualStyling;
- (void)_updateFontForChargeLabelForStyle:(int64_t)a3 andContentSizeCategory:(id)a4;
- (void)_updateVisualStylingWithProvidersFromStylingProvider:(id)a3;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setCharging:(BOOL)a3;
- (void)setEmpty:(BOOL)a3;
- (void)setGlyph:(id)a3;
- (void)setLowCharge:(BOOL)a3;
- (void)setLowPowerModeEnabled:(BOOL)a3;
- (void)setPercentCharge:(int64_t)a3;
- (void)setRingItemViewStyle:(int64_t)a3;
- (void)setRingLineWidth:(double)a3;
- (void)setRingScale:(double)a3;
- (void)setScaleFactor:(double)a3;
- (void)setTransitionCoordinator:(id)a3;
- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4;
@end

@implementation BCUIRingItemView

+ (BOOL)isAX1PlusLayoutRequiredForContentSizeCategory:(id)a3
{
  v3 = a3;
  v4 = *MEMORY[0x1E69DDC40];
  if (UIContentSizeCategoryCompareToCategory(v3, *MEMORY[0x1E69DDC40]))
  {
    v5 = UIContentSizeCategoryCompareToCategory(v3, v4) == NSOrderedDescending;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

+ (double)_ringLabelPaddingForContentSizeCategory:(id)a3
{
  v3 = a3;
  v4 = 10.0;
  if (UIContentSizeCategoryCompareToCategory(v3, *MEMORY[0x1E69DDC40]) && UIContentSizeCategoryCompareToCategory(v3, *MEMORY[0x1E69DDC38]))
  {
    if (UIContentSizeCategoryCompareToCategory(v3, *MEMORY[0x1E69DDC30]))
    {
      if (UIContentSizeCategoryCompareToCategory(v3, *MEMORY[0x1E69DDC28]))
      {
        if (UIContentSizeCategoryCompareToCategory(v3, *MEMORY[0x1E69DDC20]))
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

- (CGRect)_largestPossibleFrameForChargeLabelGivenBounds:(CGRect)result chargeRingSize:(CGSize)a4 andRingLabelPadding:(double)a5
{
  v5 = result.size.height - (a4.height + a5 + 16.0);
  result.size.height = v5;
  return result;
}

- (void)setRingItemViewStyle:(int64_t)a3
{
  if (self->_ringItemViewStyle != a3)
  {
    self->_ringItemViewStyle = a3;
    [(BCUIRingItemView *)self setNeedsLayout];
  }
}

- (void)setRingLineWidth:(double)a3
{
  [(BCUIRingItemView *)self ringLineWidth];
  if (v5 != a3)
  {
    v6 = [(BCUIRingItemView *)self _chargeRing];
    [v6 setLineWidth:a3];

    [(BCUIRingItemView *)self setNeedsLayout];
  }
}

- (void)setRingScale:(double)a3
{
  if (self->_ringScale != a3)
  {
    self->_ringScale = a3;
    v5 = [(BCUIRingItemView *)self _chargeRing];
    [v5 setRingScale:a3];

    [(BCUIRingItemView *)self setNeedsLayout];
  }
}

- (void)setPercentCharge:(int64_t)a3
{
  if ([(BCUIRingItemView *)self percentCharge]!= a3)
  {
    v5 = [(BCUIRingItemView *)self _chargeRing];
    [v5 setPercentCharge:a3];

    [(BCUIRingItemView *)self setNeedsLayout];
  }
}

- (void)setLowCharge:(BOOL)a3
{
  v3 = a3;
  if ([(BCUIRingItemView *)self isLowCharge]!= a3)
  {
    v5 = [(BCUIRingItemView *)self _chargeRing];
    [v5 setLowCharge:v3];
  }
}

- (void)setCharging:(BOOL)a3
{
  v3 = a3;
  if ([(BCUIRingItemView *)self isCharging]!= a3)
  {
    v5 = [(BCUIRingItemView *)self _chargeRing];
    [v5 setCharging:v3];
  }
}

- (void)setLowPowerModeEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(BCUIRingItemView *)self isLowPowerModeEnabled]!= a3)
  {
    v5 = [(BCUIRingItemView *)self _chargeRing];
    [v5 setLowPowerModeEnabled:v3];
  }
}

- (void)setGlyph:(id)a3
{
  v6 = a3;
  v4 = [(BCUIRingItemView *)self glyph];

  if (v4 != v6)
  {
    v5 = [(BCUIRingItemView *)self _chargeRing];
    [v5 setGlyph:v6];
  }
}

- (void)setScaleFactor:(double)a3
{
  if (self->_scaleFactor != a3)
  {
    self->_scaleFactor = a3;
    v4 = [(BCUIRingItemView *)self _chargeRing];
    [v4 setScaleFactor:self->_scaleFactor];

    [(BCUIRingItemView *)self setNeedsLayout];
  }
}

- (void)setEmpty:(BOOL)a3
{
  if (self->_empty != a3)
  {
    self->_empty = a3;
    [(BCUIRingItemView *)self setNeedsLayout];
  }
}

- (void)setTransitionCoordinator:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_transitionCoordinator);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_transitionCoordinator, obj);
    chargeRing = self->_chargeRing;
    v7 = v5;
    [(BCUIChargeRing *)chargeRing setTransitionCoordinator:obj];
  }
}

- (BCUIRingItemView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = BCUIRingItemView;
  v3 = [(BCUIRingItemView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_ringScale = 1.0;
    v5 = [(BCUIRingItemView *)v3 _chargeRing];
    [v5 setRingScale:1.0];

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
  v3 = [(BCUIRingItemView *)self superview];
  [(BCUIRingItemView *)self _updateVisualStylingWithProvidersFromStylingProvider:v3];
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = BCUIRingItemView;
  [(BCUIRingItemView *)&v5 didMoveToWindow];
  v3 = [(BCUIRingItemView *)self window];

  if (v3)
  {
    v4 = [(BCUIRingItemView *)self superview];
    [(BCUIRingItemView *)self _updateVisualStylingWithProvidersFromStylingProvider:v4];
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
    v3 = [(BCUIRingItemView *)self traitCollection];
    v4 = [v3 preferredContentSizeCategory];
    [(BCUIRingItemView *)self _configureChargeLabelForStyle:self->_ringItemViewStyle];
    [(BCUIRingItemView *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(BCUIRingItemView *)self window];
    if (v13)
    {
      v14 = [(BCUIRingItemView *)self window];
      v15 = [v14 screen];
      [v15 scale];
      v17 = v16;
    }

    else
    {
      v14 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v14 scale];
      v17 = v18;
    }

    v38[0] = 0;
    v38[1] = v38;
    v38[2] = 0x4010000000;
    v38[3] = &unk_1C1CAA8BD;
    v19 = *(MEMORY[0x1E695F050] + 16);
    v39 = *MEMORY[0x1E695F050];
    v40 = v19;
    [(BCUIRingItemView *)self _sizeForChargeRingWithStyle:self->_ringItemViewStyle inBounds:v4 withPreferredContentSizeCategory:v6, v8, v10, v12];
    v22 = v21;
    if (self->_chargeLabel)
    {
      v35 = v20;
      [(BCUIRingItemView *)self _updateFontForChargeLabelForStyle:self->_ringItemViewStyle andContentSizeCategory:v4];
      v23 = [(BCUIRingItemView *)self _lazyPercentChargeFormatter];
      [v23 bcui_setPercentSymbolEnabled:{-[BCUIRingItemView _isPercentSymbolEnabledForRingItemStyle:andContentSizeCategory:](self, "_isPercentSymbolEnabledForRingItemStyle:andContentSizeCategory:", self->_ringItemViewStyle, v4)}];

      v24 = [(BCUIRingItemView *)self _percentChargeString:[(BCUIRingItemView *)self percentCharge]];
      v25 = [(UILabel *)self->_chargeLabel text];
      v26 = [v25 isEqualToString:v24];

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

- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4
{
  v11 = a3;
  if (v11)
  {
    v7 = [(BCUIRingItemView *)self requiredVisualStyleCategories];
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v9 = [v7 containsObject:v8];

    if (v9)
    {
      v10 = [(BCUIRingItemView *)self _visualStylingProviderForCategory:a4];
      if (v10 != v11)
      {
        [(BCUIRingItemView *)self _stopAutomaticallyUpdatingVisualStyling];
        objc_storeStrong(&self->_visualStylingProvider, a3);
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

- (CGSize)_sizeForChargeRingWithStyle:(int64_t)a3 inBounds:(CGRect)a4 withPreferredContentSizeCategory:(id)a5
{
  if (self->_ringScale == 1.0)
  {
    Width = CGRectGetWidth(a4);
  }

  else
  {
    Width = self->_scaleFactor * 74.0;
  }

  if (a3 == 2)
  {
    Width = (Width + -11.0) * 0.5;
  }

  v7 = Width;
  result.height = v7;
  result.width = Width;
  return result;
}

- (CGRect)_frameForChargeRingWithSize:(CGSize)a3 chargeLabelSize:(CGSize)a4 style:(int64_t)a5 inBounds:(CGRect)a6 scale:(double)a7
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
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
  if (a5 == 2)
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

  else if (a5 == 1)
  {
    v22 = [(BCUIRingItemView *)self traitCollection];
    v23 = [v22 preferredContentSizeCategory];
    [BCUIRingItemView _ringLabelPaddingForContentSizeCategory:v23];
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

- (void)_configureChargeLabelForStyle:(int64_t)a3
{
  chargeLabel = self->_chargeLabel;
  if (a3)
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

    if (a3 == 1)
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

- (void)_updateFontForChargeLabelForStyle:(int64_t)a3 andContentSizeCategory:(id)a4
{
  v6 = a4;
  v7 = v6;
  chargeLabel = self->_chargeLabel;
  if (chargeLabel)
  {
    if (a3 == 2)
    {
      v13 = v6;
      v9 = [MEMORY[0x1E69DB878] systemFontOfSize:self->_scaleFactor * 46.0];
      [(UILabel *)chargeLabel setFont:v9];
    }

    else
    {
      if (a3 != 1)
      {
        goto LABEL_7;
      }

      v13 = v6;
      v9 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v6];
      v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC0] compatibleWithTraitCollection:v9];
      [v10 pointSize];
      v12 = [v10 fontWithSize:v11 * self->_scaleFactor];

      [(UILabel *)self->_chargeLabel setFont:v12];
    }

    v7 = v13;
  }

LABEL_7:

  MEMORY[0x1EEE66BB8](v6, v7);
}

- (id)_visualStylingProviderForCategory:(int64_t)a3
{
  if (a3 == 1)
  {
    return self->_visualStylingProvider;
  }

  else
  {
    return 0;
  }
}

- (void)_updateVisualStylingWithProvidersFromStylingProvider:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [(BCUIRingItemView *)self requiredVisualStyleCategories];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          v11 = [v4 visualStylingProviderForCategory:{objc_msgSend(v10, "integerValue")}];
          -[BCUIRingItemView setVisualStylingProvider:forCategory:](self, "setVisualStylingProvider:forCategory:", v11, [v10 integerValue]);
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (CGSize)_sizeForChargeLabel:(id)a3 withStyle:(int64_t)a4 inBounds:(CGRect)a5 scale:(double)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a3;
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v12 = CGRectGetWidth(v21);
  v13 = 0.0;
  if (a4 == 1)
  {
    v13 = 12.0;
  }

  v14 = v13 + v12;
  v15 = [v11 font];

  [v15 pointSize];
  v17 = v16;

  v18 = v14;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (CGRect)_frameForChargeLabelWithSize:(CGSize)a3 baseLineOffsetFromBoundsTop:(double)a4 chargeRingSize:(CGSize)a5 style:(int64_t)a6 inBounds:(CGRect)a7 scale:(double)a8
{
  BSRectWithSize();
  CGRectGetHeight(a7);
  if (a6 == 1)
  {
    v10 = [(BCUIRingItemView *)self traitCollection];
    v11 = [v10 preferredContentSizeCategory];
    [BCUIRingItemView _ringLabelPaddingForContentSizeCategory:v11];
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
    v4 = [MEMORY[0x1E696ADA0] bcui_newPercentChargeFormatter];
    v5 = self->_percentChargeFormatter;
    self->_percentChargeFormatter = v4;

    percentChargeFormatter = self->_percentChargeFormatter;
  }

  return percentChargeFormatter;
}

- (id)_percentChargeString:(int64_t)a3
{
  v4 = [(BCUIRingItemView *)self _lazyPercentChargeFormatter];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 stringFromNumber:v5];

  return v6;
}

- (UIViewControllerTransitionCoordinator)transitionCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionCoordinator);

  return WeakRetained;
}

@end