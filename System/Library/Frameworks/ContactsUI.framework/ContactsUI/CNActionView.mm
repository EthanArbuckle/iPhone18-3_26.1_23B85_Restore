@interface CNActionView
+ (CGSize)minimumSizeForStyle:(int64_t)style;
+ (double)minimumPillDimension;
+ (id)colorByIncreasingBrightnessComponentByPercentage:(double)percentage ofColor:(id)color;
+ (id)titleFontForStyle:(int64_t)style;
+ (void)fadeInView:(id)view;
- (BOOL)shouldShowDisambiguation;
- (CGSize)intrinsicContentSize;
- (CGSize)platterViewMinimumLayoutSizeForStyle:(int64_t)style;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CNActionView)initWithFrame:(CGRect)frame;
- (CNActionViewDelegate)actionDelegate;
- (UIFont)titleFont;
- (id)colorByAdjustingColorToHighlightState:(id)state;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration;
- (id)sourceViewForContextMenuPreview;
- (void)applyDefaultLabelContainerMetrics;
- (void)applyRoundedRectMargins;
- (void)containerViewDidLayoutArrangedSubviews:(id)subviews;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
- (void)didMoveToWindow;
- (void)handleTapGesture;
- (void)layoutSubviews;
- (void)setActionDelegate:(id)delegate;
- (void)setDisabled:(BOOL)disabled animated:(BOOL)animated;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setImage:(id)image;
- (void)setPosterTintColor:(id)color;
- (void)setStyle:(int64_t)style;
- (void)setTitle:(id)title;
- (void)setVisualEffectViewCaptureView:(id)view;
- (void)tintColorDidChange;
- (void)tlk_updateForAppearance:(id)appearance;
- (void)traitCollectionDidChange:(id)change;
- (void)updateBackground;
- (void)updateBackgroundForVibrantRoundedRect;
- (void)updateImage;
- (void)updateImageViewStateAnimated:(BOOL)animated;
- (void)updateLabelArrangedSubviews;
- (void)updateLabelStateAnimated:(BOOL)animated;
- (void)updatePlatterViewStateAnimated:(BOOL)animated;
- (void)updateTitleLabelFont;
- (void)updateWithMenuItems:(id)items;
@end

@implementation CNActionView

- (CNActionViewDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (void)updateWithMenuItems:(id)items
{
  itemsCopy = items;
  actionMenuHelper = [(CNActionView *)self actionMenuHelper];
  contextMenuInteraction = [(CNActionView *)self contextMenuInteraction];
  [actionMenuHelper updateWithMenuItems:itemsCopy contextMenuInteraction:contextMenuInteraction];
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  v7.receiver = self;
  v7.super_class = CNActionView;
  [(CNActionView *)&v7 contextMenuInteraction:interaction willEndForConfiguration:configuration animator:animator];
  actionMenuHelper = [(CNActionView *)self actionMenuHelper];
  [actionMenuHelper willDismissMenu];
}

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  v10.receiver = self;
  v10.super_class = CNActionView;
  interactionCopy = interaction;
  [(CNActionView *)&v10 contextMenuInteraction:interactionCopy willDisplayMenuForConfiguration:configuration animator:animator];
  v9 = [(CNActionView *)self actionMenuHelper:v10.receiver];
  [v9 willDisplayMenuWithContextMenuInteraction:interactionCopy];
}

- (id)sourceViewForContextMenuPreview
{
  if ([(CNActionView *)self style]== 7 || [(CNActionView *)self style]== 6 || [(CNActionView *)self style]== 11 || [(CNActionView *)self style]== 10)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [(CNActionView *)self imageView];
  }

  return selfCopy;
}

- (id)contextMenuInteraction:(id)interaction previewForHighlightingMenuWithConfiguration:(id)configuration
{
  v5 = [(CNActionView *)self sourceViewForContextMenuPreview:interaction];
  v10 = v5;
  if (v5)
  {
    window = [v5 window];

    if (window)
    {
      actionMenuHelper = [(CNActionView *)self actionMenuHelper];
      v17 = [actionMenuHelper targetedPreviewForSourceView:v10];

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

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  if ([(CNActionView *)self shouldShowDisambiguation:interaction])
  {
    actionMenuHelper = [(CNActionView *)self actionMenuHelper];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __70__CNActionView_contextMenuInteraction_configurationForMenuAtLocation___block_invoke;
    v11[3] = &unk_1E74E6A88;
    v11[4] = self;
    v6 = [actionMenuHelper configurationActionProviderWithActionBlock:v11];

    v7 = MEMORY[0x1E69DC8D8];
    type = [(CNActionView *)self type];
    v9 = [v7 configurationWithIdentifier:type previewProvider:0 actionProvider:v6];
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

- (void)containerViewDidLayoutArrangedSubviews:(id)subviews
{
  platterView = [(CNActionView *)self platterView];
  [platterView frame];
  v6 = v5 * 0.5;
  platterView2 = [(CNActionView *)self platterView];
  layer = [platterView2 layer];
  [layer setCornerRadius:v6];

  v9 = *MEMORY[0x1E69796E8];
  platterView3 = [(CNActionView *)self platterView];
  layer2 = [platterView3 layer];
  [layer2 setCornerCurve:v9];

  vibrantPlatterView = [(CNActionView *)self vibrantPlatterView];
  [vibrantPlatterView frame];
  v14 = v13 * 0.5;
  vibrantPlatterView2 = [(CNActionView *)self vibrantPlatterView];
  layer3 = [vibrantPlatterView2 layer];
  [layer3 setCornerRadius:v14];

  vibrantPlatterView3 = [(CNActionView *)self vibrantPlatterView];
  layer4 = [vibrantPlatterView3 layer];
  [layer4 setCornerCurve:v9];
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
  vibrantBackgroundView = [(CNActionView *)self vibrantBackgroundView];
  [vibrantBackgroundView setFrame:{v4, v6, v8, v10}];

  LODWORD(vibrantBackgroundView) = self->_swiftUIContactCardEnabled;
  [(CNActionView *)self bounds];
  v16 = v15;
  if (vibrantBackgroundView == 1)
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

  colorMatrixView = [(CNActionView *)self colorMatrixView];
  [colorMatrixView setFrame:{v27, v28, v16, v20}];

  if (self->_swiftUIContactCardEnabled)
  {
    colorMatrixView2 = [(CNActionView *)self colorMatrixView];
    [colorMatrixView2 frame];
    v32 = v31 * 0.5;
    colorMatrixView3 = [(CNActionView *)self colorMatrixView];
    layer = [colorMatrixView3 layer];
    [layer setCornerRadius:v32];
  }
}

- (void)handleTapGesture
{
  actionDelegate = [(CNActionView *)self actionDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    actionDelegate2 = [(CNActionView *)self actionDelegate];
    [actionDelegate2 didPressActionView:self longPress:0];
  }
}

- (void)updateTitleLabelFont
{
  titleLabel = [(CNActionView *)self titleLabel];

  if (titleLabel)
  {
    v4 = [objc_opt_class() titleFontForStyle:{-[CNActionView style](self, "style")}];
    [(CNActionView *)self setTitleFont:v4];

    titleFont = [(CNActionView *)self titleFont];
    titleLabel2 = [(CNActionView *)self titleLabel];
    [titleLabel2 setFont:titleFont];
  }
}

- (UIFont)titleFont
{
  titleFont = self->_titleFont;
  if (titleFont)
  {
    defaultTitleFont = titleFont;
  }

  else
  {
    defaultTitleFont = [objc_opt_class() defaultTitleFont];
  }

  return defaultTitleFont;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (self->_title != titleCopy)
  {
    v9 = titleCopy;
    objc_storeStrong(&self->_title, title);
    titleLabel = [(CNActionView *)self titleLabel];

    if (!titleLabel)
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
    titleCopy = v9;
  }
}

- (void)updateImage
{
  style = [(CNActionView *)self style];
  if ((style - 10) < 2)
  {
    image = [(CNActionView *)self image];
    v7 = MEMORY[0x1E69DCAD8];
    titleFont = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDDC8]];
    v6 = [v7 configurationWithFont:titleFont];
    goto LABEL_5;
  }

  if ((style - 8) <= 1)
  {
    image = [(CNActionView *)self image];
    v4 = MEMORY[0x1E69DCAD8];
    titleFont = [(CNActionView *)self titleFont];
    [titleFont pointSize];
    v6 = [v4 configurationWithPointSize:?];
LABEL_5:
    v8 = v6;
    v9 = [image imageWithConfiguration:v6];
    imageView = [(CNActionView *)self imageView];
    [imageView setImage:v9];

    goto LABEL_6;
  }

  image = [(CNActionView *)self image];
  titleFont = [(CNActionView *)self imageView];
  [titleFont setImage:image];
LABEL_6:
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (self->_image != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_image, image);
    [(CNActionView *)self updateImage];
    [(CNActionView *)self updateImageViewStateAnimated:0];
    imageCopy = v6;
  }
}

- (void)updateLabelArrangedSubviews
{
  if (([(CNActionView *)self style]& 0xFFFFFFFFFFFFFFFELL) == 8)
  {
    containerView = [(CNActionView *)self containerView];
    titleLabel = [(CNActionView *)self titleLabel];
    [containerView removeArrangedSubview:titleLabel];

    [(CNActionView *)self horizontalContentView];
  }

  else
  {
    horizontalContentView = [(CNActionView *)self horizontalContentView];
    titleLabel2 = [(CNActionView *)self titleLabel];
    [horizontalContentView removeArrangedSubview:titleLabel2];

    [(CNActionView *)self containerView];
  }
  v8 = ;
  titleLabel3 = [(CNActionView *)self titleLabel];
  [v8 addArrangedSubview:titleLabel3];
}

- (void)applyDefaultLabelContainerMetrics
{
  v3 = *MEMORY[0x1E69DDCE0];
  v4 = *(MEMORY[0x1E69DDCE0] + 8);
  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  v6 = *(MEMORY[0x1E69DDCE0] + 24);
  horizontalContentView = [(CNActionView *)self horizontalContentView];
  [horizontalContentView setLayoutMargins:{v3, v4, v5, v6}];

  title = [(CNActionView *)self title];
  titleLabel = [(CNActionView *)self titleLabel];
  [titleLabel setText:title];

  containerView = [(CNActionView *)self containerView];
  [containerView setAlignment:3];

  titleLabel2 = [(CNActionView *)self titleLabel];
  [titleLabel2 setHidden:0];

  if (([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] & 1) == 0)
  {
    v12 = *MEMORY[0x1E698B6F8];
    titleLabel3 = [(CNActionView *)self titleLabel];
    [titleLabel3 setMaximumLayoutSize:{66.0, v12}];
  }
}

- (void)updateLabelStateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  titleLabel = [(CNActionView *)self titleLabel];

  if (!titleLabel)
  {
    return;
  }

  titleLabel2 = [(CNActionView *)self titleLabel];
  title = [(CNActionView *)self title];
  [titleLabel2 setText:title];

  style = [(CNActionView *)self style];
  if (style <= 7)
  {
    if (style <= 3)
    {
      if ((style - 2) >= 2)
      {
        if (style == 1 && [(CNActionView *)self disabled])
        {
          contentColorForDisabledVibrantDarkState = [objc_opt_class() contentColorForDisabledVibrantDarkState];
LABEL_32:
          v31 = contentColorForDisabledVibrantDarkState;
          goto LABEL_33;
        }

        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (style == 4)
    {
LABEL_18:
      if ([(CNActionView *)self disabled])
      {
        contentColorForDisabledVibrantDarkState = [objc_opt_class() contentColorForDisabledBoldState];
        goto LABEL_32;
      }

LABEL_31:
      contentColorForDisabledVibrantDarkState = [(UIView *)self tintColorOverride];
      goto LABEL_32;
    }

    if (style != 6)
    {
      if (style != 7)
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

    posterTintColor = [MEMORY[0x1E69D9108] bestAppearanceForView:self];
    titleLabel3 = [(CNActionView *)self titleLabel];
    [posterTintColor enableAppearanceForView:titleLabel3];

    goto LABEL_24;
  }

  if (style <= 9)
  {
    if (style == 8)
    {
      if ([(CNActionView *)self disabled])
      {
        contentColorForDisabledVibrantDarkState = +[CNUIColorRepository quickActionContentColorDisabledPill];
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

  if (style == 12 || style == 11)
  {
    goto LABEL_20;
  }

  if (style != 10)
  {
    goto LABEL_31;
  }

  posterTintColor = [(CNActionView *)self posterTintColor];
  if ([(CNActionView *)self disabled])
  {
    [posterTintColor colorWithAlphaComponent:0.2];
  }

  else
  {
    [(CNActionView *)self posterTintColor];
  }
  v31 = ;
LABEL_24:

LABEL_33:
  titleLabel4 = [(CNActionView *)self titleLabel];
  [titleLabel4 setTextColor:v31];

  [(CNActionView *)self updateLabelArrangedSubviews];
  title2 = [(CNActionView *)self title];
  if (title2)
  {
    title3 = [(CNActionView *)self title];
    v17 = [title3 length] == 0;
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
      horizontalContentView = [(CNActionView *)self horizontalContentView];
      [horizontalContentView setLayoutMargins:{0.0, 14.0, 0.0, 14.0}];

      title4 = [(CNActionView *)self title];
      localizedCapitalizedString = [title4 localizedCapitalizedString];
      titleLabel5 = [(CNActionView *)self titleLabel];
      [titleLabel5 setText:localizedCapitalizedString];

      v22 = *MEMORY[0x1E698B700];
      v23 = *(MEMORY[0x1E698B700] + 8);
      titleLabel6 = [(CNActionView *)self titleLabel];
      [titleLabel6 setMaximumLayoutSize:{v22, v23}];
    }

    titleLabel7 = [(CNActionView *)self titleLabel];
    [titleLabel7 setHidden:v17];

    containerView = [(CNActionView *)self containerView];
    [containerView setAlignment:0];
  }

  else
  {
    [(CNActionView *)self applyDefaultLabelContainerMetrics];
  }

  titleFont = [(CNActionView *)self titleFont];
  titleLabel8 = [(CNActionView *)self titleLabel];
  [titleLabel8 setFont:titleFont];

  if (animatedCopy)
  {
    v29 = objc_opt_class();
    titleLabel9 = [(CNActionView *)self titleLabel];
    [v29 fadeInView:titleLabel9];
  }
}

- (void)updateImageViewStateAnimated:(BOOL)animated
{
  window = [(CNActionView *)self window];

  if (!window)
  {
    return;
  }

  style = [(CNActionView *)self style];
  if (style <= 6)
  {
    if (style <= 3)
    {
      if ((style - 2) >= 2)
      {
        if (style != 1)
        {
LABEL_34:
          if (![(CNActionView *)self disabled])
          {
            contentColorForDisabledVibrantDarkState = +[CNUIColorRepository quickActionContentColor];
            goto LABEL_38;
          }

          goto LABEL_35;
        }

LABEL_20:
        if ([(CNActionView *)self disabled])
        {
          contentColorForDisabledVibrantDarkState = [objc_opt_class() contentColorForDisabledVibrantDarkState];
LABEL_38:
          v14 = contentColorForDisabledVibrantDarkState;
          goto LABEL_39;
        }

        goto LABEL_31;
      }

LABEL_16:
      tintColorOverride = [MEMORY[0x1E69D9108] bestAppearanceForView:self];
      primaryButtonColor = [tintColorOverride primaryButtonColor];
      if ([(CNActionView *)self disabled])
      {
        v8 = [primaryButtonColor colorWithAlphaComponent:0.3];
      }

      else
      {
        v8 = primaryButtonColor;
      }

      v14 = v8;
      imageView = [(CNActionView *)self imageView];
      [tintColorOverride enableAppearanceForView:imageView];

      goto LABEL_33;
    }

    if (style != 4)
    {
      if (style == 5)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if (![(CNActionView *)self disabled])
    {
      contentColorForDisabledVibrantDarkState = +[CNUIColorRepository quickActionContentColorEnabled];
      goto LABEL_38;
    }

LABEL_35:
    contentColorForDisabledVibrantDarkState = [objc_opt_class() contentColorForDisabledBoldState];
    goto LABEL_38;
  }

  if (style > 9)
  {
    if ((style - 11) >= 2)
    {
      if (style != 10)
      {
        goto LABEL_34;
      }

      posterTintColor = [(CNActionView *)self posterTintColor];
      tintColorOverride = [(CNActionView *)self colorByAdjustingColorToHighlightState:posterTintColor];

      if ([(CNActionView *)self disabled])
      {
        v12 = [tintColorOverride colorWithAlphaComponent:0.2];
      }

      else
      {
        v12 = tintColorOverride;
      }

      goto LABEL_32;
    }

    goto LABEL_16;
  }

  if (style == 7)
  {
    if ([(CNActionView *)self disabled])
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (style != 8)
    {
      goto LABEL_16;
    }

    if ([(CNActionView *)self disabled])
    {
      contentColorForDisabledVibrantDarkState = +[CNUIColorRepository quickActionContentColorDisabledPill];
      goto LABEL_38;
    }
  }

LABEL_31:
  tintColorOverride = [(UIView *)self tintColorOverride];
  v12 = [(CNActionView *)self colorByAdjustingColorToHighlightState:tintColorOverride];
LABEL_32:
  v14 = v12;
LABEL_33:

LABEL_39:
  imageView2 = [(CNActionView *)self imageView];
  [imageView2 setTintColor:v14];
}

- (void)updatePlatterViewStateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  window = [(CNActionView *)self window];

  if (!window || [(CNActionView *)self style]== 6 || [(CNActionView *)self style]== 11 || [(CNActionView *)self style]== 10)
  {
    return;
  }

  v6 = [(CNActionView *)self style]== 3 || [(CNActionView *)self style]== 2 || [(CNActionView *)self style]== 9 || [(CNActionView *)self style]== 12;
  platterView = [(CNActionView *)self platterView];
  [platterView setHidden:v6];

  vibrantPlatterView = [(CNActionView *)self vibrantPlatterView];
  [vibrantPlatterView setHidden:v6 ^ 1];

  style = [(CNActionView *)self style];
  if (style > 4)
  {
    if (style > 8)
    {
      if (style == 9 || style == 12)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (style == 5)
      {
        goto LABEL_28;
      }

      if (style == 7)
      {
        clearColor = [MEMORY[0x1E69DC888] clearColor];
        platterView2 = [(CNActionView *)self platterView];
        [platterView2 setBackgroundColor:clearColor];

        platterView3 = [(CNActionView *)self platterView];
        layer = [platterView3 layer];
        [layer setBorderWidth:0.0];

        platterView4 = [(CNActionView *)self platterView];
        layer2 = [platterView4 layer];
        [layer2 setCompositingFilter:0];

        goto LABEL_40;
      }
    }

LABEL_30:
    platterView5 = [(CNActionView *)self platterView];
    layer3 = [platterView5 layer];
    [layer3 setBorderWidth:1.0];

    v38 = +[CNContactStyle currentStyle];
    transportBackgroundColor = [v38 transportBackgroundColor];
    v40 = [(CNActionView *)self colorByAdjustingColorToHighlightState:transportBackgroundColor];
    platterView6 = [(CNActionView *)self platterView];
    [platterView6 setBackgroundColor:v40];

    v42 = +[CNContactStyle currentStyle];
    transportBorderColor = [v42 transportBorderColor];
    v44 = [(CNActionView *)self colorByAdjustingColorToHighlightState:transportBorderColor];
    cGColor = [v44 CGColor];
    platterView7 = [(CNActionView *)self platterView];
    layer4 = [platterView7 layer];
    [layer4 setBorderColor:cGColor];

    platterView8 = [(CNActionView *)self platterView];
    layer5 = [platterView8 layer];
    [layer5 setCompositingFilter:0];

    layer6 = [(CNActionView *)self layer];
    platterView4 = layer6;
    v34 = 1;
LABEL_27:
    [layer6 setAllowsGroupBlending:v34];
    goto LABEL_40;
  }

  if ((style - 2) < 2)
  {
LABEL_21:
    vibrantPlatterView2 = [(CNActionView *)self vibrantPlatterView];

    if (!vibrantPlatterView2)
    {
      v23 = objc_opt_new();
      [(CNActionView *)self setVibrantPlatterView:v23];

      [(CNActionView *)self platterViewMinimumLayoutSizeForStyle:[(CNActionView *)self style]];
      v25 = v24;
      v27 = v26;
      vibrantPlatterView3 = [(CNActionView *)self vibrantPlatterView];
      [vibrantPlatterView3 setMinimumLayoutSize:{v25, v27}];

      platterBoxView = [(CNActionView *)self platterBoxView];
      vibrantPlatterView4 = [(CNActionView *)self vibrantPlatterView];
      [platterBoxView insertArrangedSubview:vibrantPlatterView4 atIndex:0];
    }

    if ([(CNActionView *)self isHighlighted])
    {
      v31 = 2;
    }

    else
    {
      v31 = 3;
    }

    vibrantPlatterView5 = [(CNActionView *)self vibrantPlatterView];
    [vibrantPlatterView5 setProminence:v31];

    layer6 = [(CNActionView *)self layer];
    platterView4 = layer6;
    v34 = 0;
    goto LABEL_27;
  }

  if (style)
  {
    if (style == 4)
    {
      if ([(CNActionView *)self disabled])
      {
        clearColor2 = [MEMORY[0x1E69DC888] clearColor];
        platterView9 = [(CNActionView *)self platterView];
        [platterView9 setBackgroundColor:clearColor2];

        platterView10 = [(CNActionView *)self platterView];
        layer7 = [platterView10 layer];
        [layer7 setBorderWidth:1.0];

        borderColorForDisabledBoldState = [objc_opt_class() borderColorForDisabledBoldState];
        cGColor2 = [borderColorForDisabledBoldState CGColor];
      }

      else
      {
        v50 = +[CNContactStyle currentStyle];
        transportBoldBackgroundColor = [v50 transportBoldBackgroundColor];
        v52 = transportBoldBackgroundColor;
        if (transportBoldBackgroundColor)
        {
          tintColorOverride = transportBoldBackgroundColor;
        }

        else
        {
          tintColorOverride = [(UIView *)self tintColorOverride];
        }

        borderColorForDisabledBoldState = tintColorOverride;

        platterView11 = [(CNActionView *)self platterView];
        [platterView11 setBackgroundColor:borderColorForDisabledBoldState];

        platterView12 = [(CNActionView *)self platterView];
        layer8 = [platterView12 layer];
        [layer8 setBorderWidth:0.0];

        cGColor2 = 0;
      }

      platterView13 = [(CNActionView *)self platterView];
      layer9 = [platterView13 layer];
      [layer9 setBorderColor:cGColor2];

      goto LABEL_36;
    }

    goto LABEL_30;
  }

LABEL_28:
  borderColorForDisabledBoldState = [MEMORY[0x1E69DC888] clearColor];
  platterView14 = [(CNActionView *)self platterView];
  [platterView14 setBackgroundColor:borderColorForDisabledBoldState];

LABEL_36:
  if ([(CNActionView *)self isHighlighted])
  {
    v59 = 0.3;
  }

  else
  {
    v59 = 1.0;
  }

  platterView4 = [(CNActionView *)self platterView];
  [platterView4 setAlpha:v59];
LABEL_40:

  if (animatedCopy)
  {
    v60 = objc_opt_class();
    platterView15 = [(CNActionView *)self platterView];
    [v60 fadeInView:platterView15];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  title = [(CNActionView *)self title];
  if (title)
  {
    v7 = title;
    titleLabel = [(CNActionView *)self titleLabel];
    text = [titleLabel text];

    if (!text)
    {
      titleLabel2 = [(CNActionView *)self titleLabel];
      title2 = [(CNActionView *)self title];
      [titleLabel2 setText:title2];
    }
  }

  containerView = [(CNActionView *)self containerView];
  [containerView sizeThatFits:{width, height}];
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
  containerView = [(CNActionView *)self containerView];
  [containerView effectiveLayoutSizeFittingSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)tlk_updateForAppearance:(id)appearance
{
  v4.receiver = self;
  v4.super_class = CNActionView;
  [(CNActionView *)&v4 tlk_updateForAppearance:appearance];
  [(CNActionView *)self updateLabelStateAnimated:0];
  [(CNActionView *)self updateImageViewStateAnimated:0];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = CNActionView;
  [(CNActionView *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(CNActionView *)self traitCollection];
  if ([traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy])
  {

LABEL_4:
    [(CNActionView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  traitCollection2 = [(CNActionView *)self traitCollection];
  _vibrancy = [traitCollection2 _vibrancy];
  _vibrancy2 = [changeCopy _vibrancy];

  if (_vibrancy != _vibrancy2)
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

- (CGSize)platterViewMinimumLayoutSizeForStyle:(int64_t)style
{
  v3 = 37.0;
  if (style <= 0xB)
  {
    if (((1 << style) & 0xCC0) != 0)
    {
      v3 = 24.0;
      if ([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory])
      {
        [(UIImageView *)self->_imageView setMinimumLayoutSize:28.0, 28.0];
      }
    }

    else if (((1 << style) & 0x300) != 0)
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
  containerView = [(CNActionView *)self containerView];
  [containerView setLayoutMarginsRelativeArrangement:1];

  if ([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory])
  {
    _cnui_contactStyle = [(UIView *)self _cnui_contactStyle];
    [_cnui_contactStyle sectionContentInset];
    v5 = v4;
    _cnui_contactStyle2 = [(UIView *)self _cnui_contactStyle];
    [_cnui_contactStyle2 sectionContentInset];
    v8 = v7;
    containerView2 = [(CNActionView *)self containerView];
    [containerView2 setLayoutMargins:{9.5, v5, 9.5, v8}];
  }

  else
  {
    _cnui_contactStyle = [(CNActionView *)self containerView];
    [_cnui_contactStyle setLayoutMargins:{9.5, 4.0, 9.5, 4.0}];
  }
}

- (void)updateBackgroundForVibrantRoundedRect
{
  [(CNActionView *)self applyRoundedRectMargins];
  [(CNActionView *)self setBackgroundColor:0];
  layer = [(CNActionView *)self layer];
  [layer setCornerRadius:0.0];

  layer2 = [(CNActionView *)self layer];
  [layer2 setBorderWidth:0.0];

  layer3 = [(CNActionView *)self layer];
  [layer3 setBorderColor:0];

  vibrantBackgroundView = [(CNActionView *)self vibrantBackgroundView];

  if (!vibrantBackgroundView)
  {
    v7 = [objc_alloc(MEMORY[0x1E69D91C8]) initWithProminence:3];
    [(CNActionView *)self setVibrantBackgroundView:v7];

    vibrantBackgroundView2 = [(CNActionView *)self vibrantBackgroundView];
    [vibrantBackgroundView2 setUserInteractionEnabled:0];

    vibrantBackgroundView3 = [(CNActionView *)self vibrantBackgroundView];
    layer4 = [vibrantBackgroundView3 layer];
    [layer4 setCornerRadius:20.0];

    v11 = *MEMORY[0x1E69796E8];
    vibrantBackgroundView4 = [(CNActionView *)self vibrantBackgroundView];
    layer5 = [vibrantBackgroundView4 layer];
    [layer5 setCornerCurve:v11];

    vibrantBackgroundView5 = [(CNActionView *)self vibrantBackgroundView];
    containerView = [(CNActionView *)self containerView];
    [(CNActionView *)self insertSubview:vibrantBackgroundView5 belowSubview:containerView];

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

  vibrantBackgroundView6 = [(CNActionView *)self vibrantBackgroundView];
  [vibrantBackgroundView6 setProminence:v16];

  vibrantBackgroundView7 = [(CNActionView *)self vibrantBackgroundView];
  [vibrantBackgroundView7 setHidden:0];

  vibrantPlatterView = [(CNActionView *)self vibrantPlatterView];
  [vibrantPlatterView setHidden:1];
}

- (void)updateBackground
{
  v40[2] = *MEMORY[0x1E69E9840];
  style = [(CNActionView *)self style];
  if (style <= 9)
  {
    if (style != 6)
    {
      if (style == 7)
      {
        [(CNActionView *)self applyRoundedRectMargins];
        layer = [(CNActionView *)self layer];
        [layer setCornerRadius:20.0];

        v5 = *MEMORY[0x1E69796E8];
        layer2 = [(CNActionView *)self layer];
        [layer2 setCornerCurve:v5];

        layer3 = [(CNActionView *)self layer];
        [layer3 setBorderWidth:0.5];

        v8 = +[CNUIColorRepository quickActionViewRoundedRectBorderColor];
        cGColor = [v8 CGColor];
        layer4 = [(CNActionView *)self layer];
        [layer4 setBorderColor:cGColor];

        layer7 = +[CNUIColorRepository quickActionViewRoundedRectBackgroundColor];
        [(CNActionView *)self setBackgroundColor:layer7];
LABEL_16:

        vibrantBackgroundView = [(CNActionView *)self vibrantBackgroundView];
        [vibrantBackgroundView setHidden:1];

        return;
      }

LABEL_15:
      containerView = [(CNActionView *)self containerView];
      [containerView setLayoutMarginsRelativeArrangement:0];

      [(CNActionView *)self setBackgroundColor:0];
      layer5 = [(CNActionView *)self layer];
      [layer5 setCornerRadius:0.0];

      layer6 = [(CNActionView *)self layer];
      [layer6 setBorderWidth:0.0];

      layer7 = [(CNActionView *)self layer];
      [layer7 setBorderColor:0];
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  if (style != 10)
  {
    if (style != 11)
    {
      if (style == 12)
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
  colorMatrixView = [(CNActionView *)self colorMatrixView];

  if (!colorMatrixView)
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

    layer8 = [v17 layer];
    [layer8 setCornerRadius:20.0];

    v22 = *MEMORY[0x1E69796E8];
    layer9 = [v17 layer];
    [layer9 setCornerCurve:v22];

    [v17 setClipsToBounds:1];
    [v17 setUserInteractionEnabled:0];
    [v17 _setGroupName:@"CNQuickActionsCaptureGroup"];
    containerView2 = [(CNActionView *)self containerView];
    [(CNActionView *)self insertSubview:v17 belowSubview:containerView2];

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
    colorMatrixView2 = [(CNActionView *)self colorMatrixView];
    [colorMatrixView2 setBackgroundEffects:v27];
  }

  [(CNActionView *)self bounds];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  colorMatrixView3 = [(CNActionView *)self colorMatrixView];
  [colorMatrixView3 setFrame:{v30, v32, v34, v36}];
}

- (void)setVisualEffectViewCaptureView:(id)view
{
  if (self->_visualEffectViewCaptureView != view)
  {
    viewCopy = view;
    colorMatrixView = [(CNActionView *)self colorMatrixView];
    [colorMatrixView _setCaptureView:viewCopy];

    colorMatrixView2 = [(CNActionView *)self colorMatrixView];
    [colorMatrixView2 _setGroupName:@"CNQuickActionsCaptureGroup"];
  }
}

- (void)setPosterTintColor:(id)color
{
  colorCopy = color;
  v7 = colorCopy;
  if (colorCopy)
  {
    v5 = colorCopy;
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

- (void)setStyle:(int64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    [(CNActionView *)self updatePlatterViewStateAnimated:0];
    [(CNActionView *)self updateTitleLabelFont];
    [(CNActionView *)self tlk_updateWithCurrentAppearance];
    [(CNActionView *)self updateImage];
    [(CNActionView *)self platterViewMinimumLayoutSizeForStyle:style];
    v7 = v6;
    v9 = v8;
    platterView = [(CNActionView *)self platterView];
    [platterView setMinimumLayoutSize:{v7, v9}];

    [(CNActionView *)self platterViewMinimumLayoutSizeForStyle:style];
    v12 = v11;
    v14 = v13;
    vibrantPlatterView = [(CNActionView *)self vibrantPlatterView];
    [vibrantPlatterView setMinimumLayoutSize:{v12, v14}];

    platterView2 = [(CNActionView *)self platterView];
    [platterView2 minimumLayoutSize];
    v18 = v17;
    platterView3 = [(CNActionView *)self platterView];
    [platterView3 minimumLayoutSize];
    v21 = v20;
    horizontalContentView = [(CNActionView *)self horizontalContentView];
    [horizontalContentView setFrame:{0.0, 0.0, v18, v21}];

    [(CNActionView *)self updateBackground];
  }
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  animatedCopy = animated;
  v7.receiver = self;
  v7.super_class = CNActionView;
  [(CNActionView *)&v7 setHighlighted:?];
  if (![(CNActionView *)self disabled]|| !highlighted)
  {
    [(CNActionView *)self updatePlatterViewStateAnimated:animatedCopy];
    [(CNActionView *)self updateImageViewStateAnimated:animatedCopy];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = CNActionView;
  [(CNActionView *)&v4 setHighlighted:highlighted];
  [(CNActionView *)self updatePlatterViewStateAnimated:0];
  [(CNActionView *)self updateImageViewStateAnimated:0];
  [(CNActionView *)self updateBackground];
}

- (void)setDisabled:(BOOL)disabled animated:(BOOL)animated
{
  disabledCopy = disabled;
  if (self->_disabled != disabled)
  {
    animatedCopy = animated;
    self->_disabled = disabled;
    [(CNActionView *)self setUserInteractionEnabled:!disabled];
    [(CNActionView *)self setHighlighted:0 animated:animatedCopy];
    [(CNActionView *)self updatePlatterViewStateAnimated:animatedCopy];
    [(CNActionView *)self tlk_updateWithCurrentAppearance];
  }

  if (disabledCopy)
  {
    if (([(CNActionView *)self isContextMenuInteractionEnabled]& 1) == 0)
    {
      return;
    }

    shouldShowDisambiguation = 0;
  }

  else
  {
    shouldShowDisambiguation = [(CNActionView *)self shouldShowDisambiguation];
    if (shouldShowDisambiguation == [(CNActionView *)self isContextMenuInteractionEnabled])
    {
      return;
    }
  }

  if ([(CNActionView *)self isContextMenuInteractionEnabled])
  {
    contextMenuInteraction = [(CNActionView *)self contextMenuInteraction];
    [contextMenuInteraction dismissMenu];
  }

  [(CNActionView *)self setContextMenuInteractionEnabled:shouldShowDisambiguation];
}

- (void)setActionDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  v6 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_actionDelegate, obj);
    if ([(CNActionView *)self isContextMenuInteractionEnabled])
    {
      shouldShowDisambiguation = [(CNActionView *)self shouldShowDisambiguation];
    }

    else
    {
      shouldShowDisambiguation = 0;
    }

    v5 = [(CNActionView *)self setContextMenuInteractionEnabled:shouldShowDisambiguation];
    v6 = obj;
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (BOOL)shouldShowDisambiguation
{
  actionDelegate = [(CNActionView *)self actionDelegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 1;
  }

  actionDelegate2 = [(CNActionView *)self actionDelegate];
  v6 = [actionDelegate2 actionViewShouldPresentDisambiguationUI:self];

  return v6;
}

- (CNActionView)initWithFrame:(CGRect)frame
{
  v34[1] = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = CNActionView;
  v3 = [(CNActionView *)&v32 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

    currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
    featureFlags = [currentEnvironment featureFlags];
    v4->_swiftUIContactCardEnabled = [featureFlags isFeatureEnabled:11];
  }

  return v4;
}

- (id)colorByAdjustingColorToHighlightState:(id)state
{
  stateCopy = state;
  style = [(CNActionView *)self style];
  if (([(CNActionView *)self isHighlighted]& 1) != 0)
  {
    if (style == 1)
    {
      v6 = -0.100000001;
    }

    else
    {
      v6 = 0.0;
    }

    v7 = [objc_opt_class() colorByIncreasingBrightnessComponentByPercentage:stateCopy ofColor:v6];
  }

  else
  {
    v7 = stateCopy;
  }

  v8 = v7;

  return v8;
}

+ (CGSize)minimumSizeForStyle:(int64_t)style
{
  v3 = *MEMORY[0x1E698B6F8];
  if ((style & 0xFFFFFFFFFFFFFFFELL) == 8)
  {
    [self minimumPillDimension];
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

+ (id)titleFontForStyle:(int64_t)style
{
  if ((style - 8) > 3)
  {
    v4 = MEMORY[0x1E69DDD10];
  }

  else
  {
    v4 = qword_1E74E2C50[style - 8];
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

+ (void)fadeInView:(id)view
{
  v3 = MEMORY[0x1E6979538];
  viewCopy = view;
  animation = [v3 animation];
  [animation setDuration:0.2];
  layer = [viewCopy layer];

  [layer addAnimation:animation forKey:0];
}

+ (id)colorByIncreasingBrightnessComponentByPercentage:(double)percentage ofColor:(id)color
{
  colorCopy = color;
  if (colorCopy)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    v7 = [colorCopy isEqual:clearColor];

    if (v7 || fabs(percentage) > 1.0 || (v13 = 0.0, v14 = 0.0, v11 = 0.0, v12 = 0.0, ([colorCopy getHue:&v14 saturation:&v13 brightness:&v12 alpha:&v11] & 1) == 0))
    {
      v8 = colorCopy;
    }

    else
    {
      v12 = fmin((percentage + 1.0) * v12, 1.0);
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