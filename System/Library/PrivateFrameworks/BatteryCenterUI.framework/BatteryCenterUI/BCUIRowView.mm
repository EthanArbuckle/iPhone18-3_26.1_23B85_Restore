@interface BCUIRowView
- (BCUIRowView)init;
- (CGRect)_batteryViewFrameforContentSize:(id)a3 percentChargeLabelFrame:(CGRect)a4;
- (CGRect)_glyphImageViewFrameForContentSizeCategory:(id)a3;
- (CGRect)_nameLabelFrameForContentSize:(id)a3 percentChargeLabelFrame:(CGRect)a4;
- (CGRect)_percentChargeLabelFrameForContentSizeCategory:(id)a3;
- (CGRect)_sepatorFrameForContentSize:(id)a3;
- (id)_lazyPercentChargeFormatter;
- (id)_percentChargeString:(int64_t)a3;
- (id)_visualStylingProviderForCategory:(int64_t)a3;
- (void)_beginAutomaticallyUpdatingVisualStylingForCategory:(int64_t)a3;
- (void)_configureBatteryViewIfNecessary;
- (void)_configureGlyphImageViewIfNecessary;
- (void)_configureNameLabelIfNecessary;
- (void)_configurePercentChargeLabelIfNecessary;
- (void)_configureSeparatorIfNecessary;
- (void)_stopAutomaticallyUpdatingVisualStylingForCategory:(int64_t)a3;
- (void)_updateGlyphImageViewIfNecessary:(id)a3;
- (void)_updateNameLabelIfNecessary:(id)a3;
- (void)_updatePercentChargeLabelIfNecessary:(id)a3;
- (void)_updateVisualStylingWithProvidersFromStylingProvider:(id)a3;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setCharging:(BOOL)a3;
- (void)setEmpty:(BOOL)a3;
- (void)setGlyph:(id)a3;
- (void)setLowCharge:(BOOL)a3;
- (void)setLowPowerModeEnabled:(BOOL)a3;
- (void)setName:(id)a3;
- (void)setPercentCharge:(int64_t)a3;
- (void)setScaleFactor:(double)a3;
- (void)setSeparatorVisible:(BOOL)a3;
- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4;
@end

@implementation BCUIRowView

- (void)setSeparatorVisible:(BOOL)a3
{
  v3 = a3;
  if ([(BCUIRowView *)self isSeparatorVisible]!= a3)
  {
    if (v3)
    {
      [(BCUIRowView *)self _configureSeparatorIfNecessary];
    }

    else
    {
      [(UIView *)self->_separator removeFromSuperview];
      separator = self->_separator;
      self->_separator = 0;
    }

    [(BCUIRowView *)self setNeedsLayout];
  }
}

- (void)setPercentCharge:(int64_t)a3
{
  if (!self->_empty && self->_percentCharge != a3)
  {
    self->_percentCharge = a3;
    [(BCUIRowView *)self setNeedsLayout];
  }
}

- (void)setCharging:(BOOL)a3
{
  if (!self->_empty && self->_charging != a3)
  {
    self->_charging = a3;
    [(BCUIRowView *)self _configureBatteryViewIfNecessary];
    [(_UIStaticBatteryView *)self->_batteryView setShowsInlineChargingIndicator:self->_charging];

    [(BCUIRowView *)self setNeedsLayout];
  }
}

- (void)setLowCharge:(BOOL)a3
{
  if (!self->_empty && self->_lowCharge != a3)
  {
    self->_lowCharge = a3;
    if (a3)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    [(BCUIRowView *)self _configureBatteryViewIfNecessary];
    [(_UIStaticBatteryView *)self->_batteryView setLowBatteryMode:v4];

    [(BCUIRowView *)self setNeedsLayout];
  }
}

- (void)setLowPowerModeEnabled:(BOOL)a3
{
  if (!self->_empty && self->_lowPowerModeEnabled != a3)
  {
    self->_lowPowerModeEnabled = a3;
    [(BCUIRowView *)self _configureBatteryViewIfNecessary];
    [(_UIStaticBatteryView *)self->_batteryView setSaverModeActive:self->_lowPowerModeEnabled];

    [(BCUIRowView *)self setNeedsLayout];
  }
}

- (void)setGlyph:(id)a3
{
  v5 = a3;
  if (!self->_empty && self->_glyph != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_glyph, a3);
    [(BCUIRowView *)self setNeedsLayout];
    v5 = v6;
  }
}

- (void)setScaleFactor:(double)a3
{
  if (self->_scaleFactor != a3)
  {
    self->_scaleFactor = a3;
    [(BCUIRowView *)self setNeedsLayout];
  }
}

- (void)setName:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (!self->_empty)
  {
    v7 = v5;
    v5 = [(NSString *)self->_name isEqualToString:v5];
    v6 = v7;
    if ((v5 & 1) == 0)
    {
      objc_storeStrong(&self->_name, a3);
      v5 = [(BCUIRowView *)self setNeedsLayout];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)setEmpty:(BOOL)a3
{
  if (self->_empty != a3)
  {
    self->_empty = a3;
    [(BCUIRowView *)self setNeedsLayout];
  }
}

- (BCUIRowView)init
{
  v7.receiver = self;
  v7.super_class = BCUIRowView;
  v2 = [(BCUIRowView *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __19__BCUIRowView_init__block_invoke;
    v5[3] = &unk_1E814EBF0;
    v6 = v2;
    [(UIView *)v6 observeContentSizeCategoryChange:v5];
  }

  return v3;
}

- (void)didMoveToSuperview
{
  v4.receiver = self;
  v4.super_class = BCUIRowView;
  [(BCUIRowView *)&v4 didMoveToSuperview];
  v3 = [(BCUIRowView *)self superview];
  [(BCUIRowView *)self _updateVisualStylingWithProvidersFromStylingProvider:v3];
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = BCUIRowView;
  [(BCUIRowView *)&v5 didMoveToWindow];
  v3 = [(BCUIRowView *)self window];

  if (v3)
  {
    v4 = [(BCUIRowView *)self superview];
    [(BCUIRowView *)self _updateVisualStylingWithProvidersFromStylingProvider:v4];
  }
}

- (void)layoutSubviews
{
  v37.receiver = self;
  v37.super_class = BCUIRowView;
  [(BCUIRowView *)&v37 layoutSubviews];
  v3 = [(BCUIRowView *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (self->_empty)
  {
    [(UIImageView *)self->_glyphImageView removeFromSuperview];
    glyphImageView = self->_glyphImageView;
    self->_glyphImageView = 0;

    [(UILabel *)self->_percentChargeLabel removeFromSuperview];
    percentChargeLabel = self->_percentChargeLabel;
    self->_percentChargeLabel = 0;

    [(UILabel *)self->_nameLabel removeFromSuperview];
    nameLabel = self->_nameLabel;
    self->_nameLabel = 0;

    batteryView = self->_batteryView;
LABEL_20:
    [(_UIStaticBatteryView *)batteryView removeFromSuperview];
    v32 = self->_batteryView;
    self->_batteryView = 0;

    goto LABEL_21;
  }

  if (self->_glyph)
  {
    [(BCUIRowView *)self _configureGlyphImageViewIfNecessary];
    [(BCUIRowView *)self _updateGlyphImageViewIfNecessary:v4];
    [(BCUIRowView *)self _glyphImageViewFrameForContentSizeCategory:v4];
    x = v38.origin.x;
    y = v38.origin.y;
    width = v38.size.width;
    height = v38.size.height;
    if (!CGRectIsNull(v38))
    {
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __29__BCUIRowView_layoutSubviews__block_invoke;
      v36[3] = &unk_1E814EC40;
      v36[4] = self;
      *&v36[5] = x;
      *&v36[6] = y;
      *&v36[7] = width;
      *&v36[8] = height;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v36];
    }
  }

  else
  {
    [(UIImageView *)self->_glyphImageView removeFromSuperview];
    v13 = self->_glyphImageView;
    self->_glyphImageView = 0;
  }

  [(BCUIRowView *)self _configurePercentChargeLabelIfNecessary];
  [(BCUIRowView *)self _updatePercentChargeLabelIfNecessary:v4];
  [(BCUIRowView *)self _percentChargeLabelFrameForContentSizeCategory:v4];
  v18 = v14;
  v19 = v15;
  v20 = v16;
  v21 = v17;
  if (self->_percentCharge)
  {
    if (!CGRectIsNull(*&v14))
    {
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __29__BCUIRowView_layoutSubviews__block_invoke_2;
      v35[3] = &unk_1E814EC40;
      v35[4] = self;
      *&v35[5] = v18;
      *&v35[6] = v19;
      *&v35[7] = v20;
      *&v35[8] = v21;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v35];
    }
  }

  else
  {
    [(UILabel *)self->_percentChargeLabel removeFromSuperview];
    v22 = self->_percentChargeLabel;
    self->_percentChargeLabel = 0;
  }

  if (self->_name)
  {
    [(BCUIRowView *)self _configureNameLabelIfNecessary];
    [(BCUIRowView *)self _updateNameLabelIfNecessary:v4];
    [(BCUIRowView *)self _nameLabelFrameForContentSize:v4 percentChargeLabelFrame:v18, v19, v20, v21];
    v23 = v39.origin.x;
    v24 = v39.origin.y;
    v25 = v39.size.width;
    v26 = v39.size.height;
    if (!CGRectIsNull(v39))
    {
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __29__BCUIRowView_layoutSubviews__block_invoke_3;
      v34[3] = &unk_1E814EC40;
      v34[4] = self;
      *&v34[5] = v23;
      *&v34[6] = v24;
      *&v34[7] = v25;
      *&v34[8] = v26;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v34];
    }

    [(BCUIRowView *)self _updateNameLabelIfNecessary:v4];
  }

  else
  {
    [(UILabel *)self->_nameLabel removeFromSuperview];
    v27 = self->_nameLabel;
    self->_nameLabel = 0;
  }

  [(BCUIRowView *)self _configureBatteryViewIfNecessary];
  if (!self->_batteryView)
  {
    batteryView = 0;
    goto LABEL_20;
  }

  [(BCUIRowView *)self _updateBatteryViewIfNeccessary];
  [(BCUIRowView *)self _batteryViewFrameforContentSize:v4 percentChargeLabelFrame:v18, v19, v20, v21];
  v28 = v40.origin.x;
  v29 = v40.origin.y;
  v30 = v40.size.width;
  v31 = v40.size.height;
  if (!CGRectIsNull(v40))
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __29__BCUIRowView_layoutSubviews__block_invoke_4;
    v33[3] = &unk_1E814EC40;
    v33[4] = self;
    *&v33[5] = v28;
    *&v33[6] = v29;
    *&v33[7] = v30;
    *&v33[8] = v31;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v33];
  }

LABEL_21:
  [(BCUIRowView *)self _sepatorFrameForContentSize:v4];
  [(UIView *)self->_separator setFrame:?];
}

- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4
{
  v14 = a3;
  if (v14)
  {
    v6 = [(BCUIRowView *)self requiredVisualStyleCategories];
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v8 = [v6 containsObject:v7];

    if (v8)
    {
      v9 = [(BCUIRowView *)self _visualStylingProviderForCategory:a4];
      if (v9 != v14)
      {
        [(BCUIRowView *)self _stopAutomaticallyUpdatingVisualStylingForCategory:a4];
        categoriesToVisualStylingProvider = self->_categoriesToVisualStylingProvider;
        if (!categoriesToVisualStylingProvider)
        {
          v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v12 = self->_categoriesToVisualStylingProvider;
          self->_categoriesToVisualStylingProvider = v11;

          categoriesToVisualStylingProvider = self->_categoriesToVisualStylingProvider;
        }

        v13 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
        [(NSMutableDictionary *)categoriesToVisualStylingProvider setObject:v14 forKey:v13];

        [(BCUIRowView *)self _beginAutomaticallyUpdatingVisualStylingForCategory:a4];
      }
    }
  }
}

- (void)_updateGlyphImageViewIfNecessary:(id)a3
{
  v14 = a3;
  v4 = [(UIImageView *)self->_glyphImageView image];
  glyph = self->_glyph;

  if (v4 != glyph)
  {
    [(UIImageView *)self->_glyphImageView setImage:self->_glyph];
    [(UIImageView *)self->_glyphImageView setContentMode:4];
    v6 = MEMORY[0x1E69DB878];
    v7 = *MEMORY[0x1E69DDD80];
    v8 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v14];
    v9 = [v6 preferredFontForTextStyle:v7 compatibleWithTraitCollection:v8];

    v10 = MEMORY[0x1E69DCAD8];
    [v9 pointSize];
    v11 = [v10 configurationWithPointSize:4 weight:3 scale:?];
    v12 = [MEMORY[0x1E69DCAD8] configurationWithPaletteColors:MEMORY[0x1E695E0F0]];
    v13 = [v11 configurationByApplyingConfiguration:v12];

    [(UIImageView *)self->_glyphImageView setPreferredSymbolConfiguration:v13];
    [(UIImageView *)self->_glyphImageView pl_performCrossFadeIfNecessary];
  }
}

- (void)_updatePercentChargeLabelIfNecessary:(id)a3
{
  v4 = MEMORY[0x1E69DB878];
  v5 = *MEMORY[0x1E69DDD08];
  v6 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:a3];
  v7 = [v4 preferredFontForTextStyle:v5 compatibleWithTraitCollection:v6];

  [v7 pointSize];
  v11 = [v7 fontWithSize:v8 * self->_scaleFactor];

  [(UILabel *)self->_percentChargeLabel setFont:v11];
  v9 = [(BCUIRowView *)self _percentChargeString:self->_percentCharge];
  v10 = [(UILabel *)self->_percentChargeLabel text];
  LOBYTE(v6) = [v10 isEqualToString:v9];

  if ((v6 & 1) == 0)
  {
    [(UILabel *)self->_percentChargeLabel setText:v9];
    [(UILabel *)self->_percentChargeLabel pl_performCrossFadeIfNecessary];
  }
}

- (void)_updateNameLabelIfNecessary:(id)a3
{
  v4 = MEMORY[0x1E69DB878];
  v5 = *MEMORY[0x1E69DDD80];
  v6 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:a3];
  v7 = [v4 preferredFontForTextStyle:v5 compatibleWithTraitCollection:v6];

  [v7 pointSize];
  v10 = [v7 fontWithSize:v8 * self->_scaleFactor];

  [(UILabel *)self->_nameLabel setFont:v10];
  v9 = [(UILabel *)self->_nameLabel text];
  LOBYTE(v5) = [v9 isEqualToString:self->_name];

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_nameLabel setText:self->_name];
    [(UILabel *)self->_nameLabel pl_performCrossFadeIfNecessary];
  }
}

- (CGRect)_glyphImageViewFrameForContentSizeCategory:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() isAX3PlusLayoutRequiredForContentSizeCategory:v4];

  [(BCUIRowView *)self bounds];
  v10 = BCUI6x8ColumnWidthForBounds(v6, v7, v8, v9);
  [(BCUIRowView *)self bounds];
  Height = CGRectGetHeight(v19);
  if (v5)
  {
    v12 = 80.0;
  }

  else
  {
    v12 = v10;
  }

  if (v5)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = 8.0;
  }

  [(UIImageView *)self->_glyphImageView sizeThatFits:v12, Height];
  BSRectWithSize();
  BSRectWithSize();
  if ([(BCUIRowView *)self _shouldReverseLayoutDirection])
  {
    [(BCUIRowView *)self bounds];
    v14 = CGRectGetWidth(v20) - v13;
  }

  [(UIImageView *)self->_glyphImageView setContentMode:1, v14];
  UIRectCenteredIntegralRectScale();
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)_percentChargeLabelFrameForContentSizeCategory:(id)a3
{
  v4 = a3;
  v5 = [(BCUIRowView *)self window];
  if (v5)
  {
    v6 = [(BCUIRowView *)self window];
    v7 = [v6 screen];
    [v7 scale];
  }

  else
  {
    v6 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v6 scale];
  }

  [(BCUIRowView *)self bounds];
  Height = CGRectGetHeight(v33);
  v9 = [(BCUIRowView *)self _shouldReverseLayoutDirection];
  v10 = [objc_opt_class() isAX3PlusLayoutRequiredForContentSizeCategory:v4];

  if (v10)
  {
    if ((v9 & 1) == 0)
    {
      [(UILabel *)self->_percentChargeLabel setTextAlignment:3];
    }

    percentChargeLabel = self->_percentChargeLabel;
    [(BCUIRowView *)self bounds];
    [(UILabel *)percentChargeLabel sizeThatFits:CGRectGetWidth(v34) + -80.0 + -8.0, Height * 0.5 + -16.0];
    if (v9)
    {
      [(BCUIRowView *)self bounds];
      CGRectGetWidth(v35);
    }

    [(BCUIRowView *)self bounds];
    CGRectGetWidth(v36);
    UIRectCenteredYInRectScale();
  }

  else
  {
    [(BCUIRowView *)self bounds];
    v16 = BCUI6x8ColumnWidthForBounds(v12, v13, v14, v15);
    BSRectWithSize();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    if (v9)
    {
      v23 = v16 + 16.0;
    }

    else
    {
      [(BCUIRowView *)self bounds];
      v23 = CGRectGetWidth(v37) + -16.0 + v16 * -2.0;
    }

    v28 = self->_percentChargeLabel;
    [(BCUIRowView *)self bounds];
    [(UILabel *)v28 sizeThatFits:v29, v30];
    v32 = v31;
    v38.origin.x = v23;
    v38.origin.y = v18;
    v38.size.width = v20;
    v38.size.height = v22;
    if (!((v32 <= CGRectGetWidth(v38)) | v9 & 1))
    {
      v39.origin.x = v23;
      v39.origin.y = v18;
      v39.size.width = v20;
      v39.size.height = v22;
      CGRectGetWidth(v39);
    }

    UIRectIntegralWithScale();
  }

  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (CGRect)_nameLabelFrameForContentSize:(id)a3 percentChargeLabelFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = [(BCUIRowView *)self window];
  if (v10)
  {
    v11 = [(BCUIRowView *)self window];
    v12 = [v11 screen];
    [v12 scale];
  }

  else
  {
    v11 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v11 scale];
  }

  [(BCUIRowView *)self bounds];
  CGRectGetHeight(v23);
  v13 = [objc_opt_class() isAX3PlusLayoutRequiredForContentSizeCategory:v9];

  [(BCUIRowView *)self bounds];
  if (v13)
  {
    CGRectGetWidth(*&v14);
    BSRectWithSize();
    if ([(BCUIRowView *)self _shouldReverseLayoutDirection])
    {
      [(BCUIRowView *)self bounds];
      CGRectGetWidth(v24);
    }

    [(BCUIRowView *)self bounds];
    CGRectGetWidth(v28);
  }

  else
  {
    BCUI6x8ColumnWidthForBounds(v14, v15, v16, v17);
    BSRectWithSize();
    if ([(BCUIRowView *)self _shouldReverseLayoutDirection])
    {
      [(BCUIRowView *)self bounds];
      CGRectGetWidth(v25);
      v26.origin.x = x;
      v26.origin.y = y;
      v26.size.width = width;
      v26.size.height = height;
      CGRectGetMaxX(v26);
      v27.origin.x = x;
      v27.origin.y = y;
      v27.size.width = width;
      v27.size.height = height;
      CGRectGetMaxX(v27);
    }

    else
    {
      v29.origin.x = x;
      v29.origin.y = y;
      v29.size.width = width;
      v29.size.height = height;
      CGRectGetMinX(v29);
    }
  }

  UIRectIntegralWithScale();
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)_batteryViewFrameforContentSize:(id)a3 percentChargeLabelFrame:(CGRect)a4
{
  v5 = a3;
  v6 = [(BCUIRowView *)self window];
  if (v6)
  {
    v7 = [(BCUIRowView *)self window];
    v8 = [v7 screen];
    [v8 scale];
  }

  else
  {
    v7 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v7 scale];
  }

  [(BCUIRowView *)self bounds];
  CGRectGetHeight(v40);
  [(_UIStaticBatteryView *)self->_batteryView intrinsicContentSize];
  BSRectWithSize();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(BCUIRowView *)self bounds];
  v21 = BCUI6x8ColumnWidthForBounds(v17, v18, v19, v20);
  v22 = [objc_opt_class() isAX3PlusLayoutRequiredForContentSizeCategory:v5];

  if (v22)
  {
    if ([(BCUIRowView *)self _shouldReverseLayoutDirection])
    {
      [(BCUIRowView *)self bounds];
      CGRectGetWidth(v41);
    }

    UIRectCenteredIntegralRectScale();
  }

  else
  {
    rect = v10;
    BSRectWithSize();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = 8.0;
    if (([(BCUIRowView *)self _shouldReverseLayoutDirection]& 1) == 0)
    {
      [(BCUIRowView *)self bounds];
      v29 = CGRectGetWidth(v42) + -8.0 - v21;
    }

    v30 = [(BCUIRowView *)self _shouldReverseLayoutDirection];
    v31 = v29;
    v32 = v24;
    v33 = v26;
    v34 = v28;
    if (v30)
    {
      CGRectGetMaxX(*&v31);
      v43.origin.x = rect;
      v43.origin.y = v12;
      v43.size.width = v14;
      v43.size.height = v16;
      CGRectGetWidth(v43);
    }

    else
    {
      CGRectGetMinX(*&v31);
    }

    UIRectCenteredYInRectScale();
  }

  result.size.height = v38;
  result.size.width = v37;
  result.origin.y = v36;
  result.origin.x = v35;
  return result;
}

- (CGRect)_sepatorFrameForContentSize:(id)a3
{
  if (self->_separator)
  {
    v4 = a3;
    [(BCUIRowView *)self bounds];
    BCUI6x8ColumnWidthForBounds(v5, v6, v7, v8);
    [objc_opt_class() isAX3PlusLayoutRequiredForContentSizeCategory:v4];

    v9 = [(BCUIRowView *)self window];
    if (v9)
    {
      v10 = [(BCUIRowView *)self window];
      v11 = [v10 screen];
      [v11 scale];
    }

    else
    {
      v10 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v10 scale];
    }

    [(BCUIRowView *)self bounds];
    CGRectGetWidth(v16);
    [(BCUIRowView *)self _shouldReverseLayoutDirection];
    [(BCUIRowView *)self bounds];
    CGRectGetHeight(v17);
    UIRectIntegralWithScale();
  }

  else
  {
    v12 = *MEMORY[0x1E695F050];
    v13 = *(MEMORY[0x1E695F050] + 8);
    v14 = *(MEMORY[0x1E695F050] + 16);
    v15 = *(MEMORY[0x1E695F050] + 24);
  }

  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (void)_configureGlyphImageViewIfNecessary
{
  if (!self->_glyphImageView)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    glyphImageView = self->_glyphImageView;
    self->_glyphImageView = v3;

    [(BCUIRowView *)self addSubview:self->_glyphImageView];
    v5 = [(NSMutableDictionary *)self->_categoriesToVisualStylingProvider objectForKey:&unk_1F416AE90];
    [v5 automaticallyUpdateView:self->_glyphImageView withStyle:0];
  }
}

- (void)_configureNameLabelIfNecessary
{
  if (!self->_nameLabel)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    nameLabel = self->_nameLabel;
    self->_nameLabel = v3;

    v5 = self->_nameLabel;
    if ([(BCUIRowView *)self _shouldReverseLayoutDirection])
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    [(UILabel *)v5 setTextAlignment:v6];
    [(UILabel *)self->_nameLabel setLineBreakMode:4];
    v7 = self->_nameLabel;

    [(BCUIRowView *)self addSubview:v7];
  }
}

- (void)_configurePercentChargeLabelIfNecessary
{
  if (!self->_percentChargeLabel)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    percentChargeLabel = self->_percentChargeLabel;
    self->_percentChargeLabel = v3;

    v5 = self->_percentChargeLabel;
    if ([(BCUIRowView *)self _shouldReverseLayoutDirection])
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    [(UILabel *)v5 setTextAlignment:v6];
    [(UILabel *)self->_percentChargeLabel setLineBreakMode:2];
    [(BCUIRowView *)self addSubview:self->_percentChargeLabel];
    v7 = [(NSMutableDictionary *)self->_categoriesToVisualStylingProvider objectForKey:&unk_1F416AE90];
    [v7 automaticallyUpdateView:self->_percentChargeLabel withStyle:0];
  }
}

- (void)_configureBatteryViewIfNecessary
{
  if (!self->_batteryView)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DD740]);
    batteryView = self->_batteryView;
    self->_batteryView = v3;

    [(_UIStaticBatteryView *)self->_batteryView setChargingState:1];
    v5 = self->_batteryView;

    [(BCUIRowView *)self addSubview:v5];
  }
}

- (void)_configureSeparatorIfNecessary
{
  if (!self->_separator)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
    separator = self->_separator;
    self->_separator = v3;

    v5 = self->_separator;
    v6 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)v5 setBackgroundColor:v6];

    [(BCUIRowView *)self addSubview:self->_separator];
    v7 = [(NSMutableDictionary *)self->_categoriesToVisualStylingProvider objectForKey:&unk_1F416AEA8];
    [v7 automaticallyUpdateView:self->_separator withStyle:5];
  }
}

- (id)_visualStylingProviderForCategory:(int64_t)a3
{
  categoriesToVisualStylingProvider = self->_categoriesToVisualStylingProvider;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)categoriesToVisualStylingProvider objectForKey:v4];

  return v5;
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
    v5 = [(BCUIRowView *)self requiredVisualStyleCategories];
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
          -[BCUIRowView setVisualStylingProvider:forCategory:](self, "setVisualStylingProvider:forCategory:", v11, [v10 integerValue]);
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }
}

- (void)_beginAutomaticallyUpdatingVisualStylingForCategory:(int64_t)a3
{
  categoriesToVisualStylingProvider = self->_categoriesToVisualStylingProvider;
  if (!categoriesToVisualStylingProvider)
  {
    return;
  }

  if (a3 == 2)
  {
    if (!self->_separator)
    {
      return;
    }

    v6 = [(NSMutableDictionary *)categoriesToVisualStylingProvider objectForKey:&unk_1F416AEA8];
    v7 = v6;
    separator = self->_separator;
    v9 = 5;
    goto LABEL_10;
  }

  if (a3 == 1)
  {
    if (self->_percentChargeLabel)
    {
      v5 = [(NSMutableDictionary *)categoriesToVisualStylingProvider objectForKey:&unk_1F416AE90];
      [v5 automaticallyUpdateView:self->_percentChargeLabel withStyle:0];

      [(BCUIRowView *)self setNeedsDisplay];
    }

    if (self->_glyphImageView)
    {
      v6 = [(NSMutableDictionary *)self->_categoriesToVisualStylingProvider objectForKey:&unk_1F416AE90];
      v7 = v6;
      separator = self->_glyphImageView;
      v9 = 0;
LABEL_10:
      [v6 automaticallyUpdateView:separator withStyle:v9];

      [(BCUIRowView *)self setNeedsDisplay];
    }
  }
}

- (void)_stopAutomaticallyUpdatingVisualStylingForCategory:(int64_t)a3
{
  categoriesToVisualStylingProvider = self->_categoriesToVisualStylingProvider;
  if (!categoriesToVisualStylingProvider)
  {
    return;
  }

  if (a3 == 2)
  {
    p_separator = &self->_separator;
    if (!self->_separator)
    {
      return;
    }

    v7 = &unk_1F416AEA8;
    goto LABEL_10;
  }

  if (a3 == 1)
  {
    if (self->_percentChargeLabel)
    {
      v5 = [(NSMutableDictionary *)categoriesToVisualStylingProvider objectForKey:&unk_1F416AE90];
      [v5 stopAutomaticallyUpdatingView:self->_percentChargeLabel];

      [(BCUIRowView *)self setNeedsDisplay];
    }

    p_separator = &self->_glyphImageView;
    if (self->_glyphImageView)
    {
      categoriesToVisualStylingProvider = self->_categoriesToVisualStylingProvider;
      v7 = &unk_1F416AE90;
LABEL_10:
      v8 = [(NSMutableDictionary *)categoriesToVisualStylingProvider objectForKey:v7];
      [v8 stopAutomaticallyUpdatingView:*p_separator];

      [(BCUIRowView *)self setNeedsDisplay];
    }
  }
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
  v4 = [(BCUIRowView *)self _lazyPercentChargeFormatter];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 stringFromNumber:v5];

  return v6;
}

@end