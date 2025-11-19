@interface CNActionView
+ (CGSize)minimumSizeForStyle:(int64_t)a3;
+ (double)minimumPillDimension;
+ (id)colorByIncreasingBrightnessComponentByPercentage:(double)a3 ofColor:(id)a4;
+ (id)titleFontForStyle:(int64_t)a3;
+ (void)fadeInView:(id)a3;
- (BOOL)shouldShowDisambiguation;
- (CGSize)intrinsicContentSize;
- (CGSize)platterViewMinimumLayoutSizeForStyle:(int64_t)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CNActionView)initWithFrame:(CGRect)a3;
- (CNActionViewDelegate)actionDelegate;
- (UIFont)titleFont;
- (id)colorByAdjustingColorToHighlightState:(id)a3;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4;
- (id)sourceViewForContextMenuPreview;
- (void)applyDefaultLabelContainerMetrics;
- (void)applyRoundedRectMargins;
- (void)containerViewDidLayoutArrangedSubviews:(id)a3;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
- (void)didMoveToWindow;
- (void)handleTapGesture;
- (void)layoutSubviews;
- (void)setActionDelegate:(id)a3;
- (void)setDisabled:(BOOL)a3 animated:(BOOL)a4;
- (void)setHighlighted:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setImage:(id)a3;
- (void)setPosterTintColor:(id)a3;
- (void)setStyle:(int64_t)a3;
- (void)setTitle:(id)a3;
- (void)setVisualEffectViewCaptureView:(id)a3;
- (void)tintColorDidChange;
- (void)tlk_updateForAppearance:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateBackground;
- (void)updateBackgroundForVibrantRoundedRect;
- (void)updateImage;
- (void)updateImageViewStateAnimated:(BOOL)a3;
- (void)updateLabelArrangedSubviews;
- (void)updateLabelStateAnimated:(BOOL)a3;
- (void)updatePlatterViewStateAnimated:(BOOL)a3;
- (void)updateTitleLabelFont;
- (void)updateWithMenuItems:(id)a3;
@end

@implementation CNActionView

- (CNActionViewDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (void)updateWithMenuItems:(id)a3
{
  v4 = a3;
  v6 = [(CNActionView *)self actionMenuHelper];
  v5 = [(CNActionView *)self contextMenuInteraction];
  [v6 updateWithMenuItems:v4 contextMenuInteraction:v5];
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v7.receiver = self;
  v7.super_class = CNActionView;
  [(CNActionView *)&v7 contextMenuInteraction:a3 willEndForConfiguration:a4 animator:a5];
  v6 = [(CNActionView *)self actionMenuHelper];
  [v6 willDismissMenu];
}

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  v10.receiver = self;
  v10.super_class = CNActionView;
  v8 = a3;
  [(CNActionView *)&v10 contextMenuInteraction:v8 willDisplayMenuForConfiguration:a4 animator:a5];
  v9 = [(CNActionView *)self actionMenuHelper:v10.receiver];
  [v9 willDisplayMenuWithContextMenuInteraction:v8];
}

- (id)sourceViewForContextMenuPreview
{
  if ([(CNActionView *)self style]== 7 || [(CNActionView *)self style]== 6 || [(CNActionView *)self style]== 11 || [(CNActionView *)self style]== 10)
  {
    v3 = self;
  }

  else
  {
    v3 = [(CNActionView *)self imageView];
  }

  return v3;
}

- (id)contextMenuInteraction:(id)a3 previewForHighlightingMenuWithConfiguration:(id)a4
{
  v5 = [(CNActionView *)self sourceViewForContextMenuPreview:a3];
  v10 = v5;
  if (v5)
  {
    v11 = [v5 window];

    if (v11)
    {
      v16 = [(CNActionView *)self actionMenuHelper];
      v17 = [v16 targetedPreviewForSourceView:v10];

      goto LABEL_7;
    }

    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNActionView.m", 980, 3, @"Tried to initialize UITargetedPreview with a view that is not in a window: %@", v12, v13, v14, v15, v10);
  }

  else
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNActionView.m", 980, 3, @"Tried to initialize UITargetedPreview with a view that is not in a window: %@", v6, v7, v8, v9, 0);
  }

  v17 = 0;
LABEL_7:

  return v17;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  if ([(CNActionView *)self shouldShowDisambiguation:a3])
  {
    v5 = [(CNActionView *)self actionMenuHelper];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __70__CNActionView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
    v11[3] = &unk_1E74E6A88;
    v11[4] = self;
    v6 = [v5 configurationActionProviderWithActionBlock:v11];

    v7 = MEMORY[0x1E69DC8D8];
    v8 = [(CNActionView *)self type];
    v9 = [v7 configurationWithIdentifier:v8 previewProvider:0 actionProvider:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __70__CNActionView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) actionDelegate];
  [v2 didPressActionView:*(a1 + 32) longPress:1];
}

- (void)containerViewDidLayoutArrangedSubviews:(id)a3
{
  v4 = [(CNActionView *)self platterView];
  [v4 frame];
  v6 = v5 * 0.5;
  v7 = [(CNActionView *)self platterView];
  v8 = [v7 layer];
  [v8 setCornerRadius:v6];

  v9 = *MEMORY[0x1E69796E8];
  v10 = [(CNActionView *)self platterView];
  v11 = [v10 layer];
  [v11 setCornerCurve:v9];

  v12 = [(CNActionView *)self vibrantPlatterView];
  [v12 frame];
  v14 = v13 * 0.5;
  v15 = [(CNActionView *)self vibrantPlatterView];
  v16 = [v15 layer];
  [v16 setCornerRadius:v14];

  v18 = [(CNActionView *)self vibrantPlatterView];
  v17 = [v18 layer];
  [v17 setCornerCurve:v9];
}

- (void)layoutSubviews
{
  v35.receiver = self;
  v35.super_class = CNActionView;
  [(CNActionView *)&v35 layoutSubviews];
  [(CNActionView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CNActionView *)self vibrantBackgroundView];
  [v11 setFrame:{v4, v6, v8, v10}];

  LODWORD(v11) = self->_swiftUIContactCardEnabled;
  [(CNActionView *)self bounds];
  v16 = v15;
  if (v11 == 1)
  {
    [(CNActionView *)self bounds];
    v18 = v17;
    [(CNActionView *)self bounds];
    v20 = v19;
    v22 = v21;
    [(CNActionView *)self bounds];
    v24 = v16 < v18;
    v26 = v25 - v20;
    if (v16 < v18)
    {
      v27 = 0.0;
    }

    else
    {
      v27 = (v23 - v22) * 0.5;
    }

    if (v24)
    {
      v28 = v26 * 0.5;
    }

    else
    {
      v28 = 0.0;
    }

    if (v24)
    {
      v16 = v20;
    }

    else
    {
      v16 = v22;
    }

    if (!v24)
    {
      v20 = v22;
    }
  }

  else
  {
    v27 = v12;
    v28 = v13;
    v20 = v14;
  }

  v29 = [(CNActionView *)self colorMatrixView];
  [v29 setFrame:{v27, v28, v16, v20}];

  if (self->_swiftUIContactCardEnabled)
  {
    v30 = [(CNActionView *)self colorMatrixView];
    [v30 frame];
    v32 = v31 * 0.5;
    v33 = [(CNActionView *)self colorMatrixView];
    v34 = [v33 layer];
    [v34 setCornerRadius:v32];
  }
}

- (void)handleTapGesture
{
  v3 = [(CNActionView *)self actionDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CNActionView *)self actionDelegate];
    [v5 didPressActionView:self longPress:0];
  }
}

- (void)updateTitleLabelFont
{
  v3 = [(CNActionView *)self titleLabel];

  if (v3)
  {
    v4 = [objc_opt_class() titleFontForStyle:{-[CNActionView style](self, "style")}];
    [(CNActionView *)self setTitleFont:v4];

    v6 = [(CNActionView *)self titleFont];
    v5 = [(CNActionView *)self titleLabel];
    [v5 setFont:v6];
  }
}

- (UIFont)titleFont
{
  titleFont = self->_titleFont;
  if (titleFont)
  {
    v3 = titleFont;
  }

  else
  {
    v3 = [objc_opt_class() defaultTitleFont];
  }

  return v3;
}

- (void)setTitle:(id)a3
{
  v5 = a3;
  if (self->_title != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_title, a3);
    v6 = [(CNActionView *)self titleLabel];

    if (!v6)
    {
      v7 = objc_opt_new();
      [v7 setNumberOfLines:1];
      if ([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory])
      {
        v8 = 4;
      }

      else
      {
        v8 = 1;
      }

      [v7 setTextAlignment:v8];
      [(CNActionView *)self setTitleLabel:v7];
      [(CNActionView *)self updateTitleLabelFont];
    }

    [(CNActionView *)self updateLabelStateAnimated:0];
    v5 = v9;
  }
}

- (void)updateImage
{
  v3 = [(CNActionView *)self style];
  if ((v3 - 10) < 2)
  {
    v11 = [(CNActionView *)self image];
    v7 = MEMORY[0x1E69DCAD8];
    v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC8]];
    v6 = [v7 configurationWithFont:v5];
    goto LABEL_5;
  }

  if ((v3 - 8) <= 1)
  {
    v11 = [(CNActionView *)self image];
    v4 = MEMORY[0x1E69DCAD8];
    v5 = [(CNActionView *)self titleFont];
    [v5 pointSize];
    v6 = [v4 configurationWithPointSize:?];
LABEL_5:
    v8 = v6;
    v9 = [v11 imageWithConfiguration:v6];
    v10 = [(CNActionView *)self imageView];
    [v10 setImage:v9];

    goto LABEL_6;
  }

  v11 = [(CNActionView *)self image];
  v5 = [(CNActionView *)self imageView];
  [v5 setImage:v11];
LABEL_6:
}

- (void)setImage:(id)a3
{
  v5 = a3;
  if (self->_image != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_image, a3);
    [(CNActionView *)self updateImage];
    [(CNActionView *)self updateImageViewStateAnimated:0];
    v5 = v6;
  }
}

- (void)updateLabelArrangedSubviews
{
  if (([(CNActionView *)self style]& 0xFFFFFFFFFFFFFFFELL) == 8)
  {
    v3 = [(CNActionView *)self containerView];
    v4 = [(CNActionView *)self titleLabel];
    [v3 removeArrangedSubview:v4];

    [(CNActionView *)self horizontalContentView];
  }

  else
  {
    v5 = [(CNActionView *)self horizontalContentView];
    v6 = [(CNActionView *)self titleLabel];
    [v5 removeArrangedSubview:v6];

    [(CNActionView *)self containerView];
  }
  v8 = ;
  v7 = [(CNActionView *)self titleLabel];
  [v8 addArrangedSubview:v7];
}

- (void)applyDefaultLabelContainerMetrics
{
  v3 = *MEMORY[0x1E69DDCE0];
  v4 = *(MEMORY[0x1E69DDCE0] + 8);
  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  v6 = *(MEMORY[0x1E69DDCE0] + 24);
  v7 = [(CNActionView *)self horizontalContentView];
  [v7 setLayoutMargins:{v3, v4, v5, v6}];

  v8 = [(CNActionView *)self title];
  v9 = [(CNActionView *)self titleLabel];
  [v9 setText:v8];

  v10 = [(CNActionView *)self containerView];
  [v10 setAlignment:3];

  v11 = [(CNActionView *)self titleLabel];
  [v11 setHidden:0];

  if (([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] & 1) == 0)
  {
    v12 = *MEMORY[0x1E698B6F8];
    v13 = [(CNActionView *)self titleLabel];
    [v13 setMaximumLayoutSize:{66.0, v12}];
  }
}

- (void)updateLabelStateAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNActionView *)self titleLabel];

  if (!v5)
  {
    return;
  }

  v6 = [(CNActionView *)self titleLabel];
  v7 = [(CNActionView *)self title];
  [v6 setText:v7];

  v8 = [(CNActionView *)self style];
  if (v8 <= 7)
  {
    if (v8 <= 3)
    {
      if ((v8 - 2) >= 2)
      {
        if (v8 == 1 && [(CNActionView *)self disabled])
        {
          v9 = [objc_opt_class() contentColorForDisabledVibrantDarkState];
LABEL_32:
          v31 = v9;
          goto LABEL_33;
        }

        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v8 == 4)
    {
LABEL_18:
      if ([(CNActionView *)self disabled])
      {
        v9 = [objc_opt_class() contentColorForDisabledBoldState];
        goto LABEL_32;
      }

LABEL_31:
      v9 = [(UIView *)self tintColorOverride];
      goto LABEL_32;
    }

    if (v8 != 6)
    {
      if (v8 != 7)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

LABEL_20:
    v11 = [MEMORY[0x1E69D9108] bestAppearanceForView:self];
    if ([(CNActionView *)self disabled])
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

LABEL_23:
    v31 = [v11 colorForProminence:v12];

    v10 = [MEMORY[0x1E69D9108] bestAppearanceForView:self];
    v13 = [(CNActionView *)self titleLabel];
    [v10 enableAppearanceForView:v13];

    goto LABEL_24;
  }

  if (v8 <= 9)
  {
    if (v8 == 8)
    {
      if ([(CNActionView *)self disabled])
      {
        v9 = +[CNUIColorRepository quickActionContentColorDisabledPill];
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    v11 = [MEMORY[0x1E69D9108] bestAppearanceForView:self];
    if ([(CNActionView *)self disabled])
    {
      v12 = 2;
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_23;
  }

  if (v8 == 12 || v8 == 11)
  {
    goto LABEL_20;
  }

  if (v8 != 10)
  {
    goto LABEL_31;
  }

  v10 = [(CNActionView *)self posterTintColor];
  if ([(CNActionView *)self disabled])
  {
    [v10 colorWithAlphaComponent:0.2];
  }

  else
  {
    [(CNActionView *)self posterTintColor];
  }
  v31 = ;
LABEL_24:

LABEL_33:
  v14 = [(CNActionView *)self titleLabel];
  [v14 setTextColor:v31];

  [(CNActionView *)self updateLabelArrangedSubviews];
  v15 = [(CNActionView *)self title];
  if (v15)
  {
    v16 = [(CNActionView *)self title];
    v17 = [v16 length] == 0;
  }

  else
  {
    v17 = 1;
  }

  if (([(CNActionView *)self style]& 0xFFFFFFFFFFFFFFFELL) == 8)
  {
    if (v17)
    {
      [(CNActionView *)self applyDefaultLabelContainerMetrics];
    }

    else
    {
      v18 = [(CNActionView *)self horizontalContentView];
      [v18 setLayoutMargins:{0.0, 14.0, 0.0, 14.0}];

      v19 = [(CNActionView *)self title];
      v20 = [v19 localizedCapitalizedString];
      v21 = [(CNActionView *)self titleLabel];
      [v21 setText:v20];

      v22 = *MEMORY[0x1E698B700];
      v23 = *(MEMORY[0x1E698B700] + 8);
      v24 = [(CNActionView *)self titleLabel];
      [v24 setMaximumLayoutSize:{v22, v23}];
    }

    v25 = [(CNActionView *)self titleLabel];
    [v25 setHidden:v17];

    v26 = [(CNActionView *)self containerView];
    [v26 setAlignment:0];
  }

  else
  {
    [(CNActionView *)self applyDefaultLabelContainerMetrics];
  }

  v27 = [(CNActionView *)self titleFont];
  v28 = [(CNActionView *)self titleLabel];
  [v28 setFont:v27];

  if (v3)
  {
    v29 = objc_opt_class();
    v30 = [(CNActionView *)self titleLabel];
    [v29 fadeInView:v30];
  }
}

- (void)updateImageViewStateAnimated:(BOOL)a3
{
  v4 = [(CNActionView *)self window];

  if (!v4)
  {
    return;
  }

  v5 = [(CNActionView *)self style];
  if (v5 <= 6)
  {
    if (v5 <= 3)
    {
      if ((v5 - 2) >= 2)
      {
        if (v5 != 1)
        {
LABEL_34:
          if (![(CNActionView *)self disabled])
          {
            v10 = +[CNUIColorRepository quickActionContentColor];
            goto LABEL_38;
          }

          goto LABEL_35;
        }

LABEL_20:
        if ([(CNActionView *)self disabled])
        {
          v10 = [objc_opt_class() contentColorForDisabledVibrantDarkState];
LABEL_38:
          v14 = v10;
          goto LABEL_39;
        }

        goto LABEL_31;
      }

LABEL_16:
      v6 = [MEMORY[0x1E69D9108] bestAppearanceForView:self];
      v7 = [v6 primaryButtonColor];
      if ([(CNActionView *)self disabled])
      {
        v8 = [v7 colorWithAlphaComponent:0.3];
      }

      else
      {
        v8 = v7;
      }

      v14 = v8;
      v9 = [(CNActionView *)self imageView];
      [v6 enableAppearanceForView:v9];

      goto LABEL_33;
    }

    if (v5 != 4)
    {
      if (v5 == 5)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if (![(CNActionView *)self disabled])
    {
      v10 = +[CNUIColorRepository quickActionContentColorEnabled];
      goto LABEL_38;
    }

LABEL_35:
    v10 = [objc_opt_class() contentColorForDisabledBoldState];
    goto LABEL_38;
  }

  if (v5 > 9)
  {
    if ((v5 - 11) >= 2)
    {
      if (v5 != 10)
      {
        goto LABEL_34;
      }

      v11 = [(CNActionView *)self posterTintColor];
      v6 = [(CNActionView *)self colorByAdjustingColorToHighlightState:v11];

      if ([(CNActionView *)self disabled])
      {
        v12 = [v6 colorWithAlphaComponent:0.2];
      }

      else
      {
        v12 = v6;
      }

      goto LABEL_32;
    }

    goto LABEL_16;
  }

  if (v5 == 7)
  {
    if ([(CNActionView *)self disabled])
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (v5 != 8)
    {
      goto LABEL_16;
    }

    if ([(CNActionView *)self disabled])
    {
      v10 = +[CNUIColorRepository quickActionContentColorDisabledPill];
      goto LABEL_38;
    }
  }

LABEL_31:
  v6 = [(UIView *)self tintColorOverride];
  v12 = [(CNActionView *)self colorByAdjustingColorToHighlightState:v6];
LABEL_32:
  v14 = v12;
LABEL_33:

LABEL_39:
  v13 = [(CNActionView *)self imageView];
  [v13 setTintColor:v14];
}

- (void)updatePlatterViewStateAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNActionView *)self window];

  if (!v5 || [(CNActionView *)self style]== 6 || [(CNActionView *)self style]== 11 || [(CNActionView *)self style]== 10)
  {
    return;
  }

  v6 = [(CNActionView *)self style]== 3 || [(CNActionView *)self style]== 2 || [(CNActionView *)self style]== 9 || [(CNActionView *)self style]== 12;
  v7 = [(CNActionView *)self platterView];
  [v7 setHidden:v6];

  v8 = [(CNActionView *)self vibrantPlatterView];
  [v8 setHidden:v6 ^ 1];

  v9 = [(CNActionView *)self style];
  if (v9 > 4)
  {
    if (v9 > 8)
    {
      if (v9 == 9 || v9 == 12)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v9 == 5)
      {
        goto LABEL_28;
      }

      if (v9 == 7)
      {
        v16 = [MEMORY[0x1E69DC888] clearColor];
        v17 = [(CNActionView *)self platterView];
        [v17 setBackgroundColor:v16];

        v18 = [(CNActionView *)self platterView];
        v19 = [v18 layer];
        [v19 setBorderWidth:0.0];

        v20 = [(CNActionView *)self platterView];
        v21 = [v20 layer];
        [v21 setCompositingFilter:0];

        goto LABEL_40;
      }
    }

LABEL_30:
    v36 = [(CNActionView *)self platterView];
    v37 = [v36 layer];
    [v37 setBorderWidth:1.0];

    v38 = +[CNContactStyle currentStyle];
    v39 = [v38 transportBackgroundColor];
    v40 = [(CNActionView *)self colorByAdjustingColorToHighlightState:v39];
    v41 = [(CNActionView *)self platterView];
    [v41 setBackgroundColor:v40];

    v42 = +[CNContactStyle currentStyle];
    v43 = [v42 transportBorderColor];
    v44 = [(CNActionView *)self colorByAdjustingColorToHighlightState:v43];
    v45 = [v44 CGColor];
    v46 = [(CNActionView *)self platterView];
    v47 = [v46 layer];
    [v47 setBorderColor:v45];

    v48 = [(CNActionView *)self platterView];
    v49 = [v48 layer];
    [v49 setCompositingFilter:0];

    v33 = [(CNActionView *)self layer];
    v20 = v33;
    v34 = 1;
LABEL_27:
    [v33 setAllowsGroupBlending:v34];
    goto LABEL_40;
  }

  if ((v9 - 2) < 2)
  {
LABEL_21:
    v22 = [(CNActionView *)self vibrantPlatterView];

    if (!v22)
    {
      v23 = objc_opt_new();
      [(CNActionView *)self setVibrantPlatterView:v23];

      [(CNActionView *)self platterViewMinimumLayoutSizeForStyle:[(CNActionView *)self style]];
      v25 = v24;
      v27 = v26;
      v28 = [(CNActionView *)self vibrantPlatterView];
      [v28 setMinimumLayoutSize:{v25, v27}];

      v29 = [(CNActionView *)self platterBoxView];
      v30 = [(CNActionView *)self vibrantPlatterView];
      [v29 insertArrangedSubview:v30 atIndex:0];
    }

    if ([(CNActionView *)self isHighlighted])
    {
      v31 = 2;
    }

    else
    {
      v31 = 3;
    }

    v32 = [(CNActionView *)self vibrantPlatterView];
    [v32 setProminence:v31];

    v33 = [(CNActionView *)self layer];
    v20 = v33;
    v34 = 0;
    goto LABEL_27;
  }

  if (v9)
  {
    if (v9 == 4)
    {
      if ([(CNActionView *)self disabled])
      {
        v10 = [MEMORY[0x1E69DC888] clearColor];
        v11 = [(CNActionView *)self platterView];
        [v11 setBackgroundColor:v10];

        v12 = [(CNActionView *)self platterView];
        v13 = [v12 layer];
        [v13 setBorderWidth:1.0];

        v14 = [objc_opt_class() borderColorForDisabledBoldState];
        v15 = [v14 CGColor];
      }

      else
      {
        v50 = +[CNContactStyle currentStyle];
        v51 = [v50 transportBoldBackgroundColor];
        v52 = v51;
        if (v51)
        {
          v53 = v51;
        }

        else
        {
          v53 = [(UIView *)self tintColorOverride];
        }

        v14 = v53;

        v54 = [(CNActionView *)self platterView];
        [v54 setBackgroundColor:v14];

        v55 = [(CNActionView *)self platterView];
        v56 = [v55 layer];
        [v56 setBorderWidth:0.0];

        v15 = 0;
      }

      v57 = [(CNActionView *)self platterView];
      v58 = [v57 layer];
      [v58 setBorderColor:v15];

      goto LABEL_36;
    }

    goto LABEL_30;
  }

LABEL_28:
  v14 = [MEMORY[0x1E69DC888] clearColor];
  v35 = [(CNActionView *)self platterView];
  [v35 setBackgroundColor:v14];

LABEL_36:
  if ([(CNActionView *)self isHighlighted])
  {
    v59 = 0.3;
  }

  else
  {
    v59 = 1.0;
  }

  v20 = [(CNActionView *)self platterView];
  [v20 setAlpha:v59];
LABEL_40:

  if (v3)
  {
    v60 = objc_opt_class();
    v61 = [(CNActionView *)self platterView];
    [v60 fadeInView:v61];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(CNActionView *)self title];
  if (v6)
  {
    v7 = v6;
    v8 = [(CNActionView *)self titleLabel];
    v9 = [v8 text];

    if (!v9)
    {
      v10 = [(CNActionView *)self titleLabel];
      v11 = [(CNActionView *)self title];
      [v10 setText:v11];
    }
  }

  v12 = [(CNActionView *)self containerView];
  [v12 sizeThatFits:{width, height}];
  v14 = v13;
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result.height = v18;
  result.width = v17;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = [(CNActionView *)self containerView];
  [v2 effectiveLayoutSizeFittingSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)tlk_updateForAppearance:(id)a3
{
  v4.receiver = self;
  v4.super_class = CNActionView;
  [(CNActionView *)&v4 tlk_updateForAppearance:a3];
  [(CNActionView *)self updateLabelStateAnimated:0];
  [(CNActionView *)self updateImageViewStateAnimated:0];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CNActionView;
  [(CNActionView *)&v9 traitCollectionDidChange:v4];
  v5 = [(CNActionView *)self traitCollection];
  if ([v5 hasDifferentColorAppearanceComparedToTraitCollection:v4])
  {

LABEL_4:
    [(CNActionView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  v6 = [(CNActionView *)self traitCollection];
  v7 = [v6 _vibrancy];
  v8 = [v4 _vibrancy];

  if (v7 != v8)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = CNActionView;
  [(CNActionView *)&v3 tintColorDidChange];
  [(CNActionView *)self tlk_updateWithCurrentAppearance];
  [(CNActionView *)self updatePlatterViewStateAnimated:0];
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = CNActionView;
  [(CNActionView *)&v3 didMoveToWindow];
  [(CNActionView *)self tlk_updateWithCurrentAppearance];
  [(CNActionView *)self updatePlatterViewStateAnimated:0];
  [(CNActionView *)self invalidateIntrinsicContentSize];
}

- (CGSize)platterViewMinimumLayoutSizeForStyle:(int64_t)a3
{
  v3 = 37.0;
  if (a3 <= 0xB)
  {
    if (((1 << a3) & 0xCC0) != 0)
    {
      v3 = 24.0;
      if ([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory])
      {
        [(UIImageView *)self->_imageView setMinimumLayoutSize:28.0, 28.0];
      }
    }

    else if (((1 << a3) & 0x300) != 0)
    {
      [objc_opt_class() minimumPillDimension];
      v3 = v5;
    }
  }

  v6 = v3;
  v7 = v3;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)applyRoundedRectMargins
{
  v3 = [(CNActionView *)self containerView];
  [v3 setLayoutMarginsRelativeArrangement:1];

  if ([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory])
  {
    v10 = [(UIView *)self _cnui_contactStyle];
    [v10 sectionContentInset];
    v5 = v4;
    v6 = [(UIView *)self _cnui_contactStyle];
    [v6 sectionContentInset];
    v8 = v7;
    v9 = [(CNActionView *)self containerView];
    [v9 setLayoutMargins:{9.5, v5, 9.5, v8}];
  }

  else
  {
    v10 = [(CNActionView *)self containerView];
    [v10 setLayoutMargins:{9.5, 4.0, 9.5, 4.0}];
  }
}

- (void)updateBackgroundForVibrantRoundedRect
{
  [(CNActionView *)self applyRoundedRectMargins];
  [(CNActionView *)self setBackgroundColor:0];
  v3 = [(CNActionView *)self layer];
  [v3 setCornerRadius:0.0];

  v4 = [(CNActionView *)self layer];
  [v4 setBorderWidth:0.0];

  v5 = [(CNActionView *)self layer];
  [v5 setBorderColor:0];

  v6 = [(CNActionView *)self vibrantBackgroundView];

  if (!v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E69D91C8]) initWithProminence:3];
    [(CNActionView *)self setVibrantBackgroundView:v7];

    v8 = [(CNActionView *)self vibrantBackgroundView];
    [v8 setUserInteractionEnabled:0];

    v9 = [(CNActionView *)self vibrantBackgroundView];
    v10 = [v9 layer];
    [v10 setCornerRadius:20.0];

    v11 = *MEMORY[0x1E69796E8];
    v12 = [(CNActionView *)self vibrantBackgroundView];
    v13 = [v12 layer];
    [v13 setCornerCurve:v11];

    v14 = [(CNActionView *)self vibrantBackgroundView];
    v15 = [(CNActionView *)self containerView];
    [(CNActionView *)self insertSubview:v14 belowSubview:v15];

    [(CNActionView *)self setNeedsLayout];
  }

  if ([(CNActionView *)self isHighlighted])
  {
    v16 = 2;
  }

  else
  {
    v16 = 3;
  }

  v17 = [(CNActionView *)self vibrantBackgroundView];
  [v17 setProminence:v16];

  v18 = [(CNActionView *)self vibrantBackgroundView];
  [v18 setHidden:0];

  v19 = [(CNActionView *)self vibrantPlatterView];
  [v19 setHidden:1];
}

- (void)updateBackground
{
  v40[2] = *MEMORY[0x1E69E9840];
  v3 = [(CNActionView *)self style];
  if (v3 <= 9)
  {
    if (v3 != 6)
    {
      if (v3 == 7)
      {
        [(CNActionView *)self applyRoundedRectMargins];
        v4 = [(CNActionView *)self layer];
        [v4 setCornerRadius:20.0];

        v5 = *MEMORY[0x1E69796E8];
        v6 = [(CNActionView *)self layer];
        [v6 setCornerCurve:v5];

        v7 = [(CNActionView *)self layer];
        [v7 setBorderWidth:0.5];

        v8 = +[CNUIColorRepository quickActionViewRoundedRectBorderColor];
        v9 = [v8 CGColor];
        v10 = [(CNActionView *)self layer];
        [v10 setBorderColor:v9];

        v11 = +[CNUIColorRepository quickActionViewRoundedRectBackgroundColor];
        [(CNActionView *)self setBackgroundColor:v11];
LABEL_16:

        v38 = [(CNActionView *)self vibrantBackgroundView];
        [v38 setHidden:1];

        return;
      }

LABEL_15:
      v18 = [(CNActionView *)self containerView];
      [v18 setLayoutMarginsRelativeArrangement:0];

      [(CNActionView *)self setBackgroundColor:0];
      v19 = [(CNActionView *)self layer];
      [v19 setCornerRadius:0.0];

      v20 = [(CNActionView *)self layer];
      [v20 setBorderWidth:0.0];

      v11 = [(CNActionView *)self layer];
      [v11 setBorderColor:0];
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  if (v3 != 10)
  {
    if (v3 != 11)
    {
      if (v3 == 12)
      {
        return;
      }

      goto LABEL_15;
    }

LABEL_9:

    [(CNActionView *)self updateBackgroundForVibrantRoundedRect];
    return;
  }

  [(CNActionView *)self applyRoundedRectMargins];
  v12 = [(CNActionView *)self colorMatrixView];

  if (!v12)
  {
    swiftUIContactCardEnabled = self->_swiftUIContactCardEnabled;
    v14 = objc_alloc(MEMORY[0x1E69DD298]);
    v15 = v14;
    if (swiftUIContactCardEnabled)
    {
      v16 = [MEMORY[0x1E69DC730] effectWithStyle:6];
      v17 = [v15 initWithEffect:v16];
    }

    else
    {
      v17 = [v14 initWithEffect:0];
    }

    v21 = [v17 layer];
    [v21 setCornerRadius:20.0];

    v22 = *MEMORY[0x1E69796E8];
    v23 = [v17 layer];
    [v23 setCornerCurve:v22];

    [v17 setClipsToBounds:1];
    [v17 setUserInteractionEnabled:0];
    [v17 _setGroupName:@"CNQuickActionsCaptureGroup"];
    v24 = [(CNActionView *)self containerView];
    [(CNActionView *)self insertSubview:v17 belowSubview:v24];

    [(CNActionView *)self setColorMatrixView:v17];
  }

  if (!self->_swiftUIContactCardEnabled)
  {
    v39[2] = xmmword_199E43E28;
    v39[3] = unk_199E43E38;
    v39[4] = xmmword_199E43E48;
    v39[0] = xmmword_199E43E08;
    v39[1] = unk_199E43E18;
    v25 = [MEMORY[0x1E69DC898] _colorEffectCAMatrix:v39];
    v26 = [MEMORY[0x1E69DC730] effectWithBlurRadius:30.0];
    v40[0] = v25;
    v40[1] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
    v28 = [(CNActionView *)self colorMatrixView];
    [v28 setBackgroundEffects:v27];
  }

  [(CNActionView *)self bounds];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = [(CNActionView *)self colorMatrixView];
  [v37 setFrame:{v30, v32, v34, v36}];
}

- (void)setVisualEffectViewCaptureView:(id)a3
{
  if (self->_visualEffectViewCaptureView != a3)
  {
    v5 = a3;
    v6 = [(CNActionView *)self colorMatrixView];
    [v6 _setCaptureView:v5];

    v7 = [(CNActionView *)self colorMatrixView];
    [v7 _setGroupName:@"CNQuickActionsCaptureGroup"];
  }
}

- (void)setPosterTintColor:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = +[CNUIColorRepository quickActionViewDefaultPosterTintColor];
  }

  v6 = v5;
  if (self->_posterTintColor != v5)
  {
    objc_storeStrong(&self->_posterTintColor, v5);
    if ([(CNActionView *)self style]== 10)
    {
      [(CNActionView *)self tlk_updateWithCurrentAppearance];
    }
  }
}

- (void)setStyle:(int64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    [(CNActionView *)self updatePlatterViewStateAnimated:0];
    [(CNActionView *)self updateTitleLabelFont];
    [(CNActionView *)self tlk_updateWithCurrentAppearance];
    [(CNActionView *)self updateImage];
    [(CNActionView *)self platterViewMinimumLayoutSizeForStyle:a3];
    v7 = v6;
    v9 = v8;
    v10 = [(CNActionView *)self platterView];
    [v10 setMinimumLayoutSize:{v7, v9}];

    [(CNActionView *)self platterViewMinimumLayoutSizeForStyle:a3];
    v12 = v11;
    v14 = v13;
    v15 = [(CNActionView *)self vibrantPlatterView];
    [v15 setMinimumLayoutSize:{v12, v14}];

    v16 = [(CNActionView *)self platterView];
    [v16 minimumLayoutSize];
    v18 = v17;
    v19 = [(CNActionView *)self platterView];
    [v19 minimumLayoutSize];
    v21 = v20;
    v22 = [(CNActionView *)self horizontalContentView];
    [v22 setFrame:{0.0, 0.0, v18, v21}];

    [(CNActionView *)self updateBackground];
  }
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7.receiver = self;
  v7.super_class = CNActionView;
  [(CNActionView *)&v7 setHighlighted:?];
  if (![(CNActionView *)self disabled]|| !a3)
  {
    [(CNActionView *)self updatePlatterViewStateAnimated:v4];
    [(CNActionView *)self updateImageViewStateAnimated:v4];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CNActionView;
  [(CNActionView *)&v4 setHighlighted:a3];
  [(CNActionView *)self updatePlatterViewStateAnimated:0];
  [(CNActionView *)self updateImageViewStateAnimated:0];
  [(CNActionView *)self updateBackground];
}

- (void)setDisabled:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  if (self->_disabled != a3)
  {
    v6 = a4;
    self->_disabled = a3;
    [(CNActionView *)self setUserInteractionEnabled:!a3];
    [(CNActionView *)self setHighlighted:0 animated:v6];
    [(CNActionView *)self updatePlatterViewStateAnimated:v6];
    [(CNActionView *)self tlk_updateWithCurrentAppearance];
  }

  if (v4)
  {
    if (([(CNActionView *)self isContextMenuInteractionEnabled]& 1) == 0)
    {
      return;
    }

    v7 = 0;
  }

  else
  {
    v7 = [(CNActionView *)self shouldShowDisambiguation];
    if (v7 == [(CNActionView *)self isContextMenuInteractionEnabled])
    {
      return;
    }
  }

  if ([(CNActionView *)self isContextMenuInteractionEnabled])
  {
    v8 = [(CNActionView *)self contextMenuInteraction];
    [v8 dismissMenu];
  }

  [(CNActionView *)self setContextMenuInteractionEnabled:v7];
}

- (void)setActionDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  v6 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_actionDelegate, obj);
    if ([(CNActionView *)self isContextMenuInteractionEnabled])
    {
      v7 = [(CNActionView *)self shouldShowDisambiguation];
    }

    else
    {
      v7 = 0;
    }

    v5 = [(CNActionView *)self setContextMenuInteractionEnabled:v7];
    v6 = obj;
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (BOOL)shouldShowDisambiguation
{
  v3 = [(CNActionView *)self actionDelegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  v5 = [(CNActionView *)self actionDelegate];
  v6 = [v5 actionViewShouldPresentDisambiguationUI:self];

  return v6;
}

- (CNActionView)initWithFrame:(CGRect)a3
{
  v34[1] = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = CNActionView;
  v3 = [(CNActionView *)&v32 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CNActionView *)v3 setContextMenuInteractionEnabled:1];
    v5 = objc_opt_new();
    platterView = v4->_platterView;
    v4->_platterView = v5;

    v7 = objc_opt_new();
    imageView = v4->_imageView;
    v4->_imageView = v7;

    [(UIImageView *)v4->_imageView setContentMode:4];
    LODWORD(v9) = 1148846080;
    [(UIImageView *)v4->_imageView setContentHuggingPriority:0 forAxis:v9];
    v10 = objc_alloc(MEMORY[0x1E698B730]);
    v34[0] = v4->_imageView;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
    v12 = [v10 initWithArrangedSubviews:v11];
    horizontalContentView = v4->_horizontalContentView;
    v4->_horizontalContentView = v12;

    [(NUIContainerStackView *)v4->_horizontalContentView setAlignment:3];
    [(NUIContainerStackView *)v4->_horizontalContentView setSpacing:4.0];
    [(NUIContainerStackView *)v4->_horizontalContentView setLayoutMarginsRelativeArrangement:1];
    [(NUIContainerStackView *)v4->_horizontalContentView setLayoutMargins:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    [(NUIContainerStackView *)v4->_horizontalContentView setInsetsLayoutMarginsFromSafeArea:0];
    [(CNActionView *)v4 updatePlatterViewStateAnimated:0];
    [(CNActionView *)v4 updateImageViewStateAnimated:0];
    LODWORD(v10) = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
    v14 = objc_alloc(MEMORY[0x1E698B730]);
    [(CNActionView *)v4 bounds];
    v15 = [v14 initWithFrame:?];
    containerView = v4->_containerView;
    v4->_containerView = v15;

    [(NUIContainerStackView *)v4->_containerView setUserInteractionEnabled:0];
    [(NUIContainerStackView *)v4->_containerView setAutoresizingMask:18];
    [(NUIContainerStackView *)v4->_containerView setAlignment:3];
    [(NUIContainerStackView *)v4->_containerView setAxis:v10 ^ 1];
    v17 = 2.0;
    if (v10)
    {
      v17 = 12.0;
    }

    [(NUIContainerStackView *)v4->_containerView setSpacing:v17];
    [(NUIContainerStackView *)v4->_containerView setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview:1];
    [(NUIContainerStackView *)v4->_containerView setInsetsLayoutMarginsFromSafeArea:0];
    v18 = objc_alloc(MEMORY[0x1E698B718]);
    v33[0] = v4->_platterView;
    v33[1] = v4->_horizontalContentView;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
    v20 = [v18 initWithArrangedSubviews:v19];
    platterBoxView = v4->_platterBoxView;
    v4->_platterBoxView = v20;

    [(NUIContainerBoxView *)v4->_platterBoxView setDelegate:v4];
    [(NUIContainerBoxView *)v4->_platterBoxView setAlignment:3 forView:v4->_horizontalContentView inAxis:1];
    [(NUIContainerBoxView *)v4->_platterBoxView setAlignment:3 forView:v4->_horizontalContentView inAxis:0];
    LODWORD(v22) = 1148846080;
    [(NUIContainerBoxView *)v4->_platterBoxView setContentHuggingPriority:0 forAxis:v22];
    LODWORD(v23) = 1148846080;
    [(NUIContainerBoxView *)v4->_platterBoxView setContentCompressionResistancePriority:0 forAxis:v23];
    LODWORD(v24) = 1148846080;
    [(NUIContainerBoxView *)v4->_platterBoxView setContentCompressionResistancePriority:1 forAxis:v24];
    [(NUIContainerStackView *)v4->_containerView addArrangedSubview:v4->_platterBoxView];
    [(CNActionView *)v4 addSubview:v4->_containerView];
    [(CNActionView *)v4 addTarget:v4 action:sel_handleTapGesture forControlEvents:64];
    v25 = objc_alloc_init(CNActionMenuHelper);
    actionMenuHelper = v4->_actionMenuHelper;
    v4->_actionMenuHelper = v25;

    v27 = +[CNUIColorRepository quickActionViewDefaultPosterTintColor];
    posterTintColor = v4->_posterTintColor;
    v4->_posterTintColor = v27;

    v29 = [MEMORY[0x1E69966E8] currentEnvironment];
    v30 = [v29 featureFlags];
    v4->_swiftUIContactCardEnabled = [v30 isFeatureEnabled:11];
  }

  return v4;
}

- (id)colorByAdjustingColorToHighlightState:(id)a3
{
  v4 = a3;
  v5 = [(CNActionView *)self style];
  if (([(CNActionView *)self isHighlighted]& 1) != 0)
  {
    if (v5 == 1)
    {
      v6 = -0.100000001;
    }

    else
    {
      v6 = 0.0;
    }

    v7 = [objc_opt_class() colorByIncreasingBrightnessComponentByPercentage:v4 ofColor:v6];
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v8;
}

+ (CGSize)minimumSizeForStyle:(int64_t)a3
{
  v3 = *MEMORY[0x1E698B6F8];
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 8)
  {
    [a1 minimumPillDimension];
    v5 = v4;
  }

  else
  {
    v5 = 37.0;
  }

  v6 = v3;
  result.height = v5;
  result.width = v6;
  return result;
}

+ (id)titleFontForStyle:(int64_t)a3
{
  if ((a3 - 8) > 3)
  {
    v4 = MEMORY[0x1E69DDD10];
  }

  else
  {
    v4 = qword_1E74E2C50[a3 - 8];
  }

  v5 = *v4;
  v6 = MEMORY[0x1E69DB878];
  v7 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v5];
  v8 = [v6 fontWithDescriptor:v7 size:0.0];

  return v8;
}

+ (double)minimumPillDimension
{
  v2 = [objc_opt_class() titleFontForStyle:8];
  [v2 _scaledValueForValue:31.0];
  v4 = v3;

  if (v4 >= 31.0)
  {
    return v4;
  }

  else
  {
    return 31.0;
  }
}

+ (void)fadeInView:(id)a3
{
  v3 = MEMORY[0x1E6979538];
  v4 = a3;
  v6 = [v3 animation];
  [v6 setDuration:0.2];
  v5 = [v4 layer];

  [v5 addAnimation:v6 forKey:0];
}

+ (id)colorByIncreasingBrightnessComponentByPercentage:(double)a3 ofColor:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v6 = [MEMORY[0x1E69DC888] clearColor];
    v7 = [v5 isEqual:v6];

    if (v7 || fabs(a3) > 1.0 || (v13 = 0.0, v14 = 0.0, v11 = 0.0, v12 = 0.0, ([v5 getHue:&v14 saturation:&v13 brightness:&v12 alpha:&v11] & 1) == 0))
    {
      v8 = v5;
    }

    else
    {
      v12 = fmin((a3 + 1.0) * v12, 1.0);
      if (v11 < 0.1)
      {
        v11 = v11 + 0.100000001;
      }

      v8 = [MEMORY[0x1E69DC888] colorWithHue:v14 saturation:v13 brightness:*&v11 alpha:*&v12];
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end