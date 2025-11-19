@interface PKUCBPaletteView
+ (id)makeBackgroundView;
- (BOOL)_shouldHideLeadingButtonGroupView;
- (BOOL)_shouldHideReturnKeyButtonGroupView;
- (BOOL)_shouldHideTrailingButtonGroupView;
- (BOOL)_shouldShowCenterButtonGroupView;
- (BOOL)isPalettePresentingPopover;
- (CGSize)paletteSizeForEdge:(unint64_t)a3;
- (PKUCBPaletteView)initWithFrame:(CGRect)a3;
- (double)borderWidthForTraitCollection:(id)a3;
- (double)dampingRatioForThrowingFromPosition:(int64_t)a3 toPosition:(int64_t)a4 withVelocity:(CGPoint)a5;
- (double)responseForThrowingFromPosition:(int64_t)a3 toPosition:(int64_t)a4 withVelocity:(CGPoint)a5;
- (double)shadowOpacity;
- (id)_centeredBarButtons;
- (id)borderColorForTraitCollection:(id)a3;
- (void)_flashLanguageIndicatorIfNeeded;
- (void)_handleReturnKey;
- (void)_performUpdateUIBlock:(id)a3;
- (void)_updateCenteredButtonGroup;
- (void)_updateLeadingButtonGroup;
- (void)_updateReturnKeyButton;
- (void)_updateSubviewLayoutAxis;
- (void)_updateTrailingButtonGroup;
- (void)_updateUI;
- (void)buttonDidChangeIntrinsicContentSize:(id)a3;
- (void)didChangePaletteScaleFactor;
- (void)dismissPalettePopoverWithCompletion:(id)a3;
- (void)setCenteredBarButtons:(id)a3;
- (void)setLeadingBarButtons:(id)a3;
- (void)setLocaleIdentifier:(id)a3;
- (void)setReturnKeyEnabled:(BOOL)a3;
- (void)setReturnKeyType:(int64_t)a3;
- (void)setTrailingBarButtons:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateConstraints;
- (void)willStartAppearanceAnimation:(BOOL)a3;
@end

@implementation PKUCBPaletteView

+ (id)makeBackgroundView
{
  v2 = objc_alloc_init(PKPaletteBackgroundViewFactory);
  v3 = [(PKPaletteBackgroundViewFactory *)v2 makeBackgroundViewWithName:0 backgroundColor:0 shouldUseGlassBackground:?];

  return v3;
}

- (PKUCBPaletteView)initWithFrame:(CGRect)a3
{
  v87[2] = *MEMORY[0x1E69E9840];
  v83.receiver = self;
  v83.super_class = PKUCBPaletteView;
  v3 = [(PKPaletteView *)&v83 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKUCBPaletteView *)v3 setAccessibilityIdentifier:@"Scribble-UCB-Palette"];
    v5 = +[PKTextInputSettings sharedSettings];
    v4->_alwaysIncludeReturnKeyAndInputAssistantItems = [v5 alwaysIncludeReturnKeyAndInputAssistantItems];

    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    contentView = v4->__contentView;
    v4->__contentView = v6;

    [(UIView *)v4->__contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [(PKPaletteView *)v4 containerView];
    v9 = [v8 contentView];
    [v9 addSubview:v4->__contentView];

    v81 = [(UIView *)v4->__contentView centerXAnchor];
    v10 = [(PKPaletteView *)v4 containerView];
    v11 = [v10 contentView];
    v12 = [v11 centerXAnchor];
    v13 = [v81 constraintEqualToAnchor:v12];
    v87[0] = v13;
    v14 = [(UIView *)v4->__contentView centerYAnchor];
    v15 = [(PKPaletteView *)v4 containerView];
    v16 = [v15 contentView];
    v17 = [v16 centerYAnchor];
    v18 = [v14 constraintEqualToAnchor:v17];
    v87[1] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:2];
    nonCompactContentViewConstraints = v4->_nonCompactContentViewConstraints;
    v4->_nonCompactContentViewConstraints = v19;

    v21 = [(UIView *)v4->__contentView topAnchor];
    v22 = [(PKPaletteView *)v4 containerView];
    v23 = [v22 contentView];
    v24 = [v23 topAnchor];
    v25 = [v21 constraintEqualToAnchor:v24];
    contentViewTopAnchor = v4->__contentViewTopAnchor;
    v4->__contentViewTopAnchor = v25;

    v27 = [(UIView *)v4->__contentView bottomAnchor];
    v28 = [(PKPaletteView *)v4 containerView];
    v29 = [v28 contentView];
    v30 = [v29 bottomAnchor];
    v31 = [v27 constraintEqualToAnchor:v30];
    contentViewBottomAnchor = v4->__contentViewBottomAnchor;
    v4->__contentViewBottomAnchor = v31;

    v33 = [(UIView *)v4->__contentView leadingAnchor];
    v34 = [(PKPaletteView *)v4 containerView];
    v35 = [v34 contentView];
    v36 = [v35 leadingAnchor];
    v37 = [v33 constraintEqualToAnchor:v36];
    contentViewLeadingAnchor = v4->__contentViewLeadingAnchor;
    v4->__contentViewLeadingAnchor = v37;

    v39 = [(UIView *)v4->__contentView trailingAnchor];
    v40 = [(PKPaletteView *)v4 containerView];
    v41 = [v40 contentView];
    v42 = [v41 trailingAnchor];
    v43 = [v39 constraintEqualToAnchor:v42];
    contentViewTrailingAnchor = v4->__contentViewTrailingAnchor;
    v4->__contentViewTrailingAnchor = v43;

    v86[0] = v4->__contentViewTopAnchor;
    v86[1] = v4->__contentViewBottomAnchor;
    v86[2] = v4->__contentViewLeadingAnchor;
    v86[3] = v4->__contentViewTrailingAnchor;
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:4];
    compactContentViewConstraints = v4->_compactContentViewConstraints;
    v4->_compactContentViewConstraints = v45;

    v82 = objc_alloc_init(PKPaletteConcreteHandwritingTool);
    v47 = [(PKPaletteView *)v4 toolPreview];
    [v47 showPreviewForTool:v82 animated:0];

    v48 = objc_alloc_init(PKPaletteButtonGroupView);
    leadingButtonGroupView = v4->__leadingButtonGroupView;
    v4->__leadingButtonGroupView = v48;

    v50 = objc_alloc_init(PKPaletteButtonGroupView);
    centeredButtonGroupView = v4->__centeredButtonGroupView;
    v4->__centeredButtonGroupView = v50;

    v52 = objc_alloc_init(PKPaletteButtonGroupView);
    trailingButtonGroupView = v4->__trailingButtonGroupView;
    v4->__trailingButtonGroupView = v52;

    v54 = objc_alloc_init(PKPaletteButtonGroupView);
    returnKeyButtonGroupView = v4->__returnKeyButtonGroupView;
    v4->__returnKeyButtonGroupView = v54;

    v56 = objc_alloc_init(PKPaletteReturnKeyButton);
    returnKeyButton = v4->__returnKeyButton;
    v4->__returnKeyButton = v56;

    [(PKPaletteReturnKeyButton *)v4->__returnKeyButton addTarget:v4 action:sel__handleReturnKey forControlEvents:64];
    v58 = objc_alloc(MEMORY[0x1E69DCF90]);
    v85[0] = v4->__leadingButtonGroupView;
    v85[1] = v4->__returnKeyButtonGroupView;
    v85[2] = v4->__centeredButtonGroupView;
    v85[3] = v4->__trailingButtonGroupView;
    v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:4];
    v60 = [v58 initWithArrangedSubviews:v59];
    buttonStackView = v4->__buttonStackView;
    v4->__buttonStackView = v60;

    [(UIStackView *)v4->__buttonStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v4->__buttonStackView setDistribution:3];
    [(UIStackView *)v4->__buttonStackView setAlignment:3];
    [(UIView *)v4->__contentView addSubview:v4->__buttonStackView];
    v62 = [(UIStackView *)v4->__buttonStackView bottomAnchor];
    v63 = [(UIView *)v4->__contentView bottomAnchor];
    v64 = [v62 constraintEqualToAnchor:v63];
    buttonStackViewBottomConstraint = v4->__buttonStackViewBottomConstraint;
    v4->__buttonStackViewBottomConstraint = v64;

    v66 = [(UIStackView *)v4->__buttonStackView heightAnchor];
    [(PKUCBPaletteView *)v4 compactPaletteHeight];
    v67 = [v66 constraintEqualToConstant:?];
    buttonStackViewHeightConstraint = v4->__buttonStackViewHeightConstraint;
    v4->__buttonStackViewHeightConstraint = v67;

    v79 = MEMORY[0x1E696ACD8];
    v80 = [(UIStackView *)v4->__buttonStackView topAnchor];
    v69 = [(UIView *)v4->__contentView topAnchor];
    v70 = [v80 constraintEqualToAnchor:v69];
    v84[0] = v70;
    v84[1] = v4->__buttonStackViewBottomConstraint;
    v71 = [(UIStackView *)v4->__buttonStackView leadingAnchor];
    v72 = [(UIView *)v4->__contentView leadingAnchor];
    v73 = [v71 constraintEqualToAnchor:v72];
    v84[2] = v73;
    v74 = [(UIStackView *)v4->__buttonStackView trailingAnchor];
    v75 = [(UIView *)v4->__contentView trailingAnchor];
    v76 = [v74 constraintEqualToAnchor:v75];
    v84[3] = v76;
    v77 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:4];
    [v79 activateConstraints:v77];

    [(PKUCBPaletteView *)v4 _updateUI];
  }

  return v4;
}

- (void)updateConstraints
{
  if ([(UIView *)self _pk_useCompactLayout])
  {
    [(PKUCBPaletteView *)self _contentMargin];
    v4 = v3;
    v5 = [(PKUCBPaletteView *)self _contentViewLeadingAnchor];
    [v5 setConstant:v4];

    [(PKUCBPaletteView *)self _contentMargin];
    v7 = -v6;
    v8 = [(PKUCBPaletteView *)self _contentViewTrailingAnchor];
    [v8 setConstant:v7];

    v9 = MEMORY[0x1E696ACD8];
    v10 = [(PKUCBPaletteView *)self nonCompactContentViewConstraints];
    [v9 deactivateConstraints:v10];

    v11 = MEMORY[0x1E696ACD8];
    [(PKUCBPaletteView *)self compactContentViewConstraints];
  }

  else
  {
    v12 = MEMORY[0x1E696ACD8];
    v13 = [(PKUCBPaletteView *)self compactContentViewConstraints];
    [v12 deactivateConstraints:v13];

    v11 = MEMORY[0x1E696ACD8];
    [(PKUCBPaletteView *)self nonCompactContentViewConstraints];
  }
  v14 = ;
  [v11 activateConstraints:v14];

  v15.receiver = self;
  v15.super_class = PKUCBPaletteView;
  [(PKUCBPaletteView *)&v15 updateConstraints];
}

- (double)responseForThrowingFromPosition:(int64_t)a3 toPosition:(int64_t)a4 withVelocity:(CGPoint)a5
{
  v5 = sqrt(a5.y * a5.y + a5.x * a5.x);
  if (a3 <= 2)
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {
        v6 = (a4 & 0xFFFFFFFFFFFFFFFELL) == 6;
        goto LABEL_14;
      }

LABEL_17:
      v8 = v5 > 2700.0;
      goto LABEL_18;
    }

    v7 = a4 - 5;
LABEL_12:
    if (v7 < 2)
    {
      v6 = 1;
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  if (a3 == 3)
  {
    v7 = a4 - 7;
    goto LABEL_12;
  }

  if (a3 != 4)
  {
    goto LABEL_17;
  }

  v6 = 1;
  if (a4 != 5 && a4 != 8)
  {
    goto LABEL_17;
  }

LABEL_14:
  v8 = v5 > 2700.0;
  if (v6 && v5 > 2700.0)
  {
    return 0.456;
  }

LABEL_18:
  if ((a3 & 0xFFFFFFFFFFFFFFFDLL) != 1 || a4 != 2 && a4 != 4)
  {
    v9 = 0;
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        goto LABEL_34;
      }

      if (a3 != 4)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (a3 == 1)
      {
LABEL_32:
        v11 = a4 - 7;
LABEL_35:
        v9 = v11 < 2;
        goto LABEL_36;
      }

      if (a3 != 2)
      {
        goto LABEL_36;
      }
    }

    v8 &= (a4 & 0xFFFFFFFFFFFFFFFDLL) == 1;
  }

  if (v8)
  {
    return 0.456;
  }

  if (a3 > 2)
  {
    if (a3 != 3)
    {
      goto LABEL_39;
    }

LABEL_34:
    v11 = a4 - 5;
    goto LABEL_35;
  }

  if (a3 == 1)
  {
    goto LABEL_32;
  }

LABEL_39:
  if (a4 == 4 || a4 == 2)
  {
    v12 = [(PKUCBPaletteView *)self window];
    v13 = [v12 windowScene];
    v14 = dbl_1C801E690[([v13 interfaceOrientation] - 1) < 2];

    return dbl_1C801E6A0[v5 > v14];
  }

  if (a3 == 2)
  {
    v15 = a4 == 5 || a4 == 8;
  }

  else
  {
    v15 = (a4 & 0xFFFFFFFFFFFFFFFELL) == 6;
  }

  v9 = v15;
LABEL_36:
  result = 0.7;
  if (v9 && v5 > 7000.0)
  {
    return 0.456;
  }

  return result;
}

- (double)dampingRatioForThrowingFromPosition:(int64_t)a3 toPosition:(int64_t)a4 withVelocity:(CGPoint)a5
{
  v5 = sqrt(a5.y * a5.y + a5.x * a5.x);
  if (a3 <= 2)
  {
    if (a3 != 1)
    {
      if (a3 != 2)
      {
        goto LABEL_16;
      }

      v6 = (a4 & 0xFFFFFFFFFFFFFFFELL) == 6;
      goto LABEL_14;
    }

    v7 = a4 - 5;
    goto LABEL_12;
  }

  if (a3 == 3)
  {
    v7 = a4 - 7;
LABEL_12:
    if (v7 >= 2)
    {
      goto LABEL_17;
    }

    v6 = 1;
    goto LABEL_14;
  }

  if (a3 != 4)
  {
    goto LABEL_16;
  }

  v6 = 1;
  if (a4 != 5 && a4 != 8)
  {
LABEL_21:
    v8 = (a4 & 0xFFFFFFFFFFFFFFFDLL) == 1;
    goto LABEL_22;
  }

LABEL_14:
  if (v6 && v5 > 1900.0)
  {
    return 0.95;
  }

LABEL_16:
  if ((a3 & 0xFFFFFFFFFFFFFFFDLL) != 1)
  {
    goto LABEL_19;
  }

LABEL_17:
  v8 = 1;
  if (a4 != 2 && a4 != 4)
  {
LABEL_19:
    if (a3 != 4 && a3 != 2)
    {
      goto LABEL_33;
    }

    goto LABEL_21;
  }

LABEL_22:
  if (v8 && v5 > 3000.0)
  {
    return 0.95;
  }

  if (a3 == 4 || a3 == 2)
  {
    v11 = a4 == 2 || a4 == 4;
    goto LABEL_34;
  }

LABEL_33:
  v11 = 0;
LABEL_34:
  v12 = v5 > 4000.0;
  result = 0.8;
  if (v11 && v12)
  {
    return 0.95;
  }

  return result;
}

- (id)borderColorForTraitCollection:(id)a3
{
  v3 = a3;
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v4 = [MEMORY[0x1E69DC888] systemGray4Color];
  }

  else
  {
    v5 = [v3 userInterfaceStyle];
    v6 = [MEMORY[0x1E69DC888] systemGray4Color];
    v7 = v6;
    if (v5 == 2)
    {
      v8 = 0.4;
    }

    else
    {
      v8 = 0.5;
    }

    v4 = [v6 colorWithAlphaComponent:v8];
  }

  return v4;
}

- (double)borderWidthForTraitCollection:(id)a3
{
  v3 = UIAccessibilityDarkerSystemColorsEnabled();
  result = 0.5;
  if (v3)
  {
    return 1.0;
  }

  return result;
}

- (double)shadowOpacity
{
  v2 = UIAccessibilityDarkerSystemColorsEnabled();
  result = 0.25;
  if (v2)
  {
    return 0.5;
  }

  return result;
}

- (void)didChangePaletteScaleFactor
{
  [(PKUCBPaletteView *)self _updateUI];
  v3.receiver = self;
  v3.super_class = PKUCBPaletteView;
  [(PKPaletteView *)&v3 didChangePaletteScaleFactor];
  [(PKUCBPaletteView *)self setNeedsUpdateConstraints];
}

- (CGSize)paletteSizeForEdge:(unint64_t)a3
{
  v5 = [(PKUCBPaletteView *)self _buttonStackView];
  [v5 systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)}];
  v7 = v6;
  v9 = v8;

  v10 = [(PKPaletteView *)self palettePosition];
  if (v10 == 4 || v10 == 2)
  {
    [(PKUCBPaletteView *)self _contentMargin];
    v12 = v11 + v11;
    [(PKUCBPaletteView *)self _narrowLength];
    v14 = v13;
    v15 = v9 + v12;
    v16 = 1;
  }

  else
  {
    [(PKUCBPaletteView *)self _contentMargin];
    v14 = v7 + v17 + v17;
    [(PKUCBPaletteView *)self _narrowLength];
    v16 = 0;
  }

  v19 = a3 == 2 || a3 == 8;
  v20 = v19 ^ v16;
  if (v20)
  {
    v21 = v14;
  }

  else
  {
    v21 = v15;
  }

  if (!v20)
  {
    v15 = v14;
  }

  result.height = v21;
  result.width = v15;
  return result;
}

- (void)willStartAppearanceAnimation:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = PKUCBPaletteView;
  [(PKPaletteView *)&v5 willStartAppearanceAnimation:?];
  if (v3)
  {
    [(PKUCBPaletteView *)self _flashLanguageIndicatorIfNeeded];
  }
}

- (BOOL)isPalettePresentingPopover
{
  v2 = [(PKPaletteView *)self palettePopoverPresentingController];
  v3 = [v2 presentedViewController];

  if (v3)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v6 = v4 == v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setReturnKeyType:(int64_t)a3
{
  if (self->_returnKeyType != a3)
  {
    self->_returnKeyType = a3;
    [(PKUCBPaletteView *)self _updateUI];
    v5 = [(PKPaletteView *)self internalDelegate];
    [v5 paletteViewContentSizeDidChange:self];

    v6 = [(PKPaletteView *)self internalDelegate];
    [v6 paletteViewReturnKeyTypeDidChange:self];
  }
}

- (void)setReturnKeyEnabled:(BOOL)a3
{
  if (self->_returnKeyEnabled != a3)
  {
    self->_returnKeyEnabled = a3;
    [(PKUCBPaletteView *)self _updateUI];
  }
}

- (void)setLocaleIdentifier:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_localeIdentifier isEqualToString:?])
  {
    v4 = [v6 copy];
    localeIdentifier = self->_localeIdentifier;
    self->_localeIdentifier = v4;

    [(PKUCBPaletteView *)self _updateUI];
  }
}

- (void)setLeadingBarButtons:(id)a3
{
  if (self->_leadingBarButtons != a3)
  {
    v4 = [a3 copy];
    leadingBarButtons = self->_leadingBarButtons;
    self->_leadingBarButtons = v4;

    [(PKUCBPaletteView *)self _updateUI];
    v6 = [(PKPaletteView *)self internalDelegate];
    [v6 paletteViewContentSizeDidChange:self];
  }
}

- (void)setCenteredBarButtons:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  centeredBarButtons = self->_centeredBarButtons;
  if (centeredBarButtons != v4)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = centeredBarButtons;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      do
      {
        v10 = 0;
        do
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v23 + 1) + 8 * v10++) removeIntrinsicContentSizeObserver:self];
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v8);
    }

    v11 = [(NSArray *)v4 copy];
    v12 = self->_centeredBarButtons;
    self->_centeredBarButtons = v11;

    [(PKUCBPaletteView *)self _updateUI];
    v13 = [(PKPaletteView *)self internalDelegate];
    [v13 paletteViewContentSizeDidChange:self];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v14 = self->_centeredBarButtons;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v20;
      do
      {
        v18 = 0;
        do
        {
          if (*v20 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v19 + 1) + 8 * v18++) addIntrinsicContentSizeObserver:{self, v19}];
        }

        while (v16 != v18);
        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v16);
    }
  }
}

- (void)setTrailingBarButtons:(id)a3
{
  if (self->_trailingBarButtons != a3)
  {
    v4 = [a3 copy];
    trailingBarButtons = self->_trailingBarButtons;
    self->_trailingBarButtons = v4;

    [(PKUCBPaletteView *)self _updateUI];
    v6 = [(PKPaletteView *)self internalDelegate];
    [v6 paletteViewContentSizeDidChange:self];
  }
}

- (void)_flashLanguageIndicatorIfNeeded
{
  v21[2] = *MEMORY[0x1E69E9840];
  if ([(PKPaletteView *)self isToolPreviewMinimized])
  {
    v3 = +[PKTextInputLanguageSelectionController sharedInstance];
    if ([v3 shouldIdentifyLanguages])
    {
      v4 = [v3 languageIdentificationIcon];
      v5 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v4];
      [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
      v6 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [v5 setTintColor:v6];

      [v4 size];
      v7 = 1.0;
      if (v8 > 0.0)
      {
        [v4 size];
        v10 = v9;
        [v4 size];
        v7 = v10 / v11;
      }

      v12 = MEMORY[0x1E696ACD8];
      v13 = [v5 heightAnchor];
      v14 = [v13 constraintEqualToConstant:28.0];
      v21[0] = v14;
      v15 = [v5 widthAnchor];
      v16 = [v5 heightAnchor];
      v17 = [v15 constraintEqualToAnchor:v16 multiplier:v7];
      v21[1] = v17;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
      v18 = v20 = v4;
      [v12 activateConstraints:v18];

      v19 = [(PKPaletteView *)self toolPreview];
      [v19 flashAlternatePreviewView:v5];
    }
  }
}

- (void)buttonDidChangeIntrinsicContentSize:(id)a3
{
  if (![(PKUCBPaletteView *)self isUpdatingUI])
  {
    v4 = [(PKPaletteView *)self internalDelegate];
    [v4 paletteViewContentSizeDidChange:self];
  }
}

- (void)_handleReturnKey
{
  v3 = [(PKUCBPaletteView *)self returnKeyHandler];

  if (v3)
  {
    v4 = [(PKUCBPaletteView *)self returnKeyHandler];
    v4[2](v4, self);
  }
}

- (void)_performUpdateUIBlock:(id)a3
{
  v4 = a3;
  [(PKUCBPaletteView *)self setUpdatingUI:1];
  v4[2](v4);

  [(PKUCBPaletteView *)self setUpdatingUI:0];
}

- (void)_updateUI
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __29__PKUCBPaletteView__updateUI__block_invoke;
  v2[3] = &unk_1E82D7148;
  v2[4] = self;
  [(PKUCBPaletteView *)self _performUpdateUIBlock:v2];
}

uint64_t __29__PKUCBPaletteView__updateUI__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC888] pk_paletteBackgroundColor];
  [*(a1 + 32) setBackgroundColor:v2];

  v3 = [*(a1 + 32) localeIdentifier];
  v4 = [*(a1 + 32) toolPreview];
  [v4 setLocaleIdentifier:v3];

  [*(a1 + 32) _buttonGroupSpacing];
  v6 = v5;
  v7 = [*(a1 + 32) _buttonStackView];
  [v7 setSpacing:v6];

  LODWORD(v7) = [*(a1 + 32) _pk_useCompactLayout];
  v8 = [*(a1 + 32) _buttonStackViewBottomConstraint];
  [v8 setActive:v7 ^ 1];

  v9 = [*(a1 + 32) _pk_useCompactLayout];
  v10 = [*(a1 + 32) _buttonStackViewHeightConstraint];
  [v10 setActive:v9];

  [*(a1 + 32) paletteScaleFactor];
  v12 = v11;
  v13 = [*(a1 + 32) _leadingButtonGroupView];
  [v13 setScalingFactor:v12];

  [*(a1 + 32) paletteScaleFactor];
  v15 = v14;
  v16 = [*(a1 + 32) _trailingButtonGroupView];
  [v16 setScalingFactor:v15];

  [*(a1 + 32) paletteScaleFactor];
  v18 = v17;
  v19 = [*(a1 + 32) _centeredButtonGroupView];
  [v19 setScalingFactor:v18];

  [*(a1 + 32) paletteScaleFactor];
  v21 = v20;
  v22 = [*(a1 + 32) _returnKeyButtonGroupView];
  [v22 setScalingFactor:v21];

  [*(a1 + 32) _updateReturnKeyButton];
  [*(a1 + 32) _updateLeadingButtonGroup];
  [*(a1 + 32) _updateCenteredButtonGroup];
  [*(a1 + 32) _updateTrailingButtonGroup];
  v23 = *(a1 + 32);

  return [v23 _updateSubviewLayoutAxis];
}

- (void)_updateReturnKeyButton
{
  v3 = [(PKUCBPaletteView *)self returnKeyType];
  v4 = [(PKUCBPaletteView *)self _returnKeyButton];
  [v4 setReturnKeyType:v3];

  v5 = [(PKUCBPaletteView *)self isReturnKeyEnabled];
  v6 = [(PKUCBPaletteView *)self _returnKeyButton];
  [v6 setEnabled:v5];

  v7 = [(PKUCBPaletteView *)self _shouldHideReturnKeyButtonGroupView];
  v8 = [(PKUCBPaletteView *)self _returnKeyButtonGroupView];
  [v8 setHidden:v7];

  if (![(PKUCBPaletteView *)self _shouldHideReturnKeyButtonGroupView])
  {
    v9 = [(PKUCBPaletteView *)self _returnKeyButtonGroupView];
    [v9 removeAllButtons];

    v11 = [(PKUCBPaletteView *)self _returnKeyButtonGroupView];
    v10 = [(PKUCBPaletteView *)self _returnKeyButton];
    [v11 addButton:v10];
  }
}

- (BOOL)_shouldHideReturnKeyButtonGroupView
{
  if ([(UIView *)self _pk_useCompactLayout])
  {
    return 1;
  }

  else
  {
    return ![(PKUCBPaletteView *)self _shouldShowReturnKey];
  }
}

- (void)_updateLeadingButtonGroup
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(PKUCBPaletteView *)self _shouldHideLeadingButtonGroupView];
  v4 = [(PKUCBPaletteView *)self _leadingButtonGroupView];
  [v4 setHidden:v3];

  if (![(PKUCBPaletteView *)self _shouldHideLeadingButtonGroupView])
  {
    v5 = [(PKUCBPaletteView *)self _leadingButtonGroupView];
    [v5 removeAllButtons];

    v6 = [(PKUCBPaletteView *)self _leadingButtonGroupView];
    v7 = [(PKUCBPaletteView *)self leadingBarButtons];
    [v6 addButtonsFromArray:v7];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [(PKUCBPaletteView *)self _leadingButtonGroupView];
    v9 = [v8 buttons];

    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v14 + 1) + 8 * v13++) setUseCompactLayout:{-[UIView _pk_useCompactLayout](self, "_pk_useCompactLayout")}];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (BOOL)_shouldHideLeadingButtonGroupView
{
  v3 = [(PKUCBPaletteView *)self leadingBarButtons];
  if ([v3 count])
  {
    v4 = [(UIView *)self _pk_useCompactLayout];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)_updateCenteredButtonGroup
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(PKUCBPaletteView *)self _shouldShowCenterButtonGroupView];
  v4 = [(PKUCBPaletteView *)self _centeredButtonGroupView];
  [v4 setHidden:!v3];

  if ([(PKUCBPaletteView *)self _shouldShowCenterButtonGroupView])
  {
    v5 = [(PKUCBPaletteView *)self _centeredButtonGroupView];
    [v5 removeAllButtons];

    v6 = [(PKUCBPaletteView *)self _centeredButtonGroupView];
    v7 = [(PKUCBPaletteView *)self _centeredBarButtons];
    [v6 addButtonsFromArray:v7];

    v8 = [(PKUCBPaletteView *)self _shouldHideLeadingButtonGroupView]|| [(PKUCBPaletteView *)self _shouldHideTrailingButtonGroupView];
    v9 = [(PKUCBPaletteView *)self _centeredButtonGroupView];
    [v9 setUseEqualInterItemSpacing:v8];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = [(PKUCBPaletteView *)self _centeredButtonGroupView];
    v11 = [v10 buttons];

    v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        v15 = 0;
        do
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v16 + 1) + 8 * v15++) setUseCompactLayout:{-[UIView _pk_useCompactLayout](self, "_pk_useCompactLayout")}];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v13);
    }
  }
}

- (BOOL)_shouldShowCenterButtonGroupView
{
  if ([(UIView *)self _pk_useCompactLayout])
  {
    return 1;
  }

  if (![(PKUCBPaletteView *)self _shouldShowInputAssistantItems])
  {
    return 0;
  }

  v4 = [(PKUCBPaletteView *)self _centeredBarButtons];
  v3 = [v4 count] != 0;

  return v3;
}

- (id)_centeredBarButtons
{
  v3 = [MEMORY[0x1E695DEC8] array];
  v4 = [(UIView *)self _pk_useCompactLayout];
  v5 = [(PKUCBPaletteView *)self centeredBarButtons];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 indexesOfObjectsPassingTest:&__block_literal_global_58];

    v8 = [(PKUCBPaletteView *)self leadingBarButtons];
    if ([v8 count])
    {
      v9 = [v7 count];

      if (v9 > 3)
      {
        goto LABEL_6;
      }

      [(PKUCBPaletteView *)self leadingBarButtons];
      v3 = v8 = v3;
    }

LABEL_6:
    if ([(PKUCBPaletteView *)self _shouldShowReturnKey])
    {
      v10 = [(PKUCBPaletteView *)self _returnKeyButton];
      v11 = [v3 arrayByAddingObject:v10];

      v3 = v11;
    }

    if ([v7 count])
    {
      v12 = [(PKUCBPaletteView *)self centeredBarButtons];
      v13 = [v12 objectsAtIndexes:v7];

      v14 = [v13 count];
      if (v14 >= 8)
      {
        v15 = 8;
      }

      else
      {
        v15 = v14;
      }

      v16 = [v13 subarrayWithRange:{0, v15}];
      v17 = [v3 arrayByAddingObjectsFromArray:v16];

      v3 = v17;
    }

    v18 = [(PKUCBPaletteView *)self trailingBarButtons];
    if ([v18 count])
    {
      v19 = [v7 count];

      if (v19 > 5)
      {
LABEL_17:
        v6 = v3;
        goto LABEL_19;
      }

      v18 = [(PKUCBPaletteView *)self trailingBarButtons];
      v20 = [v3 arrayByAddingObjectsFromArray:v18];

      v3 = v20;
    }

    goto LABEL_17;
  }

  v7 = v3;
LABEL_19:

  return v6;
}

- (void)_updateTrailingButtonGroup
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(PKUCBPaletteView *)self _shouldHideTrailingButtonGroupView];
  v4 = [(PKUCBPaletteView *)self _trailingButtonGroupView];
  [v4 setHidden:v3];

  if (![(PKUCBPaletteView *)self _shouldHideTrailingButtonGroupView])
  {
    v5 = [(PKUCBPaletteView *)self _trailingButtonGroupView];
    [v5 removeAllButtons];

    v6 = [(PKUCBPaletteView *)self _trailingButtonGroupView];
    v7 = [(PKUCBPaletteView *)self trailingBarButtons];
    [v6 addButtonsFromArray:v7];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = [(PKUCBPaletteView *)self _trailingButtonGroupView];
    v9 = [v8 buttons];

    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v14 + 1) + 8 * v13++) setUseCompactLayout:{-[UIView _pk_useCompactLayout](self, "_pk_useCompactLayout")}];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (BOOL)_shouldHideTrailingButtonGroupView
{
  v3 = [(PKUCBPaletteView *)self trailingBarButtons];
  if ([v3 count])
  {
    v4 = [(UIView *)self _pk_useCompactLayout];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)_updateSubviewLayoutAxis
{
  v3 = (([(PKPaletteView *)self palettePosition]- 2) & 0xFFFFFFFFFFFFFFFDLL) == 0;
  v4 = [(PKUCBPaletteView *)self _buttonStackView];
  [v4 setAxis:v3];

  v5 = [(PKUCBPaletteView *)self _leadingButtonGroupView];
  [v5 setAxis:v3];

  v6 = [(PKUCBPaletteView *)self _centeredButtonGroupView];
  [v6 setAxis:v3];

  v7 = [(PKUCBPaletteView *)self _trailingButtonGroupView];
  [v7 setAxis:v3];

  v8 = [(PKUCBPaletteView *)self _returnKeyButton];
  [v8 setAxis:v3];
}

- (void)dismissPalettePopoverWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__PKUCBPaletteView_dismissPalettePopoverWithCompletion___block_invoke;
  v7[3] = &unk_1E82D7AE8;
  v7[4] = self;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = PKUCBPaletteView;
  v5 = v4;
  [(PKPaletteView *)&v6 dismissPalettePopoverWithCompletion:v7];
}

void __56__PKUCBPaletteView_dismissPalettePopoverWithCompletion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isPalettePresentingPopover])
  {
    v4 = [*(a1 + 32) palettePopoverPresentingController];
    [v4 dismissViewControllerAnimated:1 completion:*(a1 + 40)];
  }

  else
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      v3 = *(v2 + 16);

      v3();
    }
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKUCBPaletteView;
  [(PKPaletteView *)&v10 traitCollectionDidChange:v4];
  v5 = [(PKUCBPaletteView *)self traitCollection];
  v6 = [v5 verticalSizeClass];
  if (v6 == [v4 verticalSizeClass])
  {
    v7 = [(PKUCBPaletteView *)self traitCollection];
    v8 = [v7 horizontalSizeClass];
    v9 = [v4 horizontalSizeClass];

    if (v8 == v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  [(PKUCBPaletteView *)self _updateUI];
  [(PKUCBPaletteView *)self setNeedsUpdateConstraints];
LABEL_6:
}

@end