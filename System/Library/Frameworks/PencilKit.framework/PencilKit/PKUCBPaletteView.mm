@interface PKUCBPaletteView
+ (id)makeBackgroundView;
- (BOOL)_shouldHideLeadingButtonGroupView;
- (BOOL)_shouldHideReturnKeyButtonGroupView;
- (BOOL)_shouldHideTrailingButtonGroupView;
- (BOOL)_shouldShowCenterButtonGroupView;
- (BOOL)isPalettePresentingPopover;
- (CGSize)paletteSizeForEdge:(unint64_t)edge;
- (PKUCBPaletteView)initWithFrame:(CGRect)frame;
- (double)borderWidthForTraitCollection:(id)collection;
- (double)dampingRatioForThrowingFromPosition:(int64_t)position toPosition:(int64_t)toPosition withVelocity:(CGPoint)velocity;
- (double)responseForThrowingFromPosition:(int64_t)position toPosition:(int64_t)toPosition withVelocity:(CGPoint)velocity;
- (double)shadowOpacity;
- (id)_centeredBarButtons;
- (id)borderColorForTraitCollection:(id)collection;
- (void)_flashLanguageIndicatorIfNeeded;
- (void)_handleReturnKey;
- (void)_performUpdateUIBlock:(id)block;
- (void)_updateCenteredButtonGroup;
- (void)_updateLeadingButtonGroup;
- (void)_updateReturnKeyButton;
- (void)_updateSubviewLayoutAxis;
- (void)_updateTrailingButtonGroup;
- (void)_updateUI;
- (void)buttonDidChangeIntrinsicContentSize:(id)size;
- (void)didChangePaletteScaleFactor;
- (void)dismissPalettePopoverWithCompletion:(id)completion;
- (void)setCenteredBarButtons:(id)buttons;
- (void)setLeadingBarButtons:(id)buttons;
- (void)setLocaleIdentifier:(id)identifier;
- (void)setReturnKeyEnabled:(BOOL)enabled;
- (void)setReturnKeyType:(int64_t)type;
- (void)setTrailingBarButtons:(id)buttons;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConstraints;
- (void)willStartAppearanceAnimation:(BOOL)animation;
@end

@implementation PKUCBPaletteView

+ (id)makeBackgroundView
{
  v2 = objc_alloc_init(PKPaletteBackgroundViewFactory);
  v3 = [(PKPaletteBackgroundViewFactory *)v2 makeBackgroundViewWithName:0 backgroundColor:0 shouldUseGlassBackground:?];

  return v3;
}

- (PKUCBPaletteView)initWithFrame:(CGRect)frame
{
  v87[2] = *MEMORY[0x1E69E9840];
  v83.receiver = self;
  v83.super_class = PKUCBPaletteView;
  v3 = [(PKPaletteView *)&v83 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    containerView = [(PKPaletteView *)v4 containerView];
    contentView = [containerView contentView];
    [contentView addSubview:v4->__contentView];

    centerXAnchor = [(UIView *)v4->__contentView centerXAnchor];
    containerView2 = [(PKPaletteView *)v4 containerView];
    contentView2 = [containerView2 contentView];
    centerXAnchor2 = [contentView2 centerXAnchor];
    v13 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v87[0] = v13;
    centerYAnchor = [(UIView *)v4->__contentView centerYAnchor];
    containerView3 = [(PKPaletteView *)v4 containerView];
    contentView3 = [containerView3 contentView];
    centerYAnchor2 = [contentView3 centerYAnchor];
    v18 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v87[1] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:2];
    nonCompactContentViewConstraints = v4->_nonCompactContentViewConstraints;
    v4->_nonCompactContentViewConstraints = v19;

    topAnchor = [(UIView *)v4->__contentView topAnchor];
    containerView4 = [(PKPaletteView *)v4 containerView];
    contentView4 = [containerView4 contentView];
    topAnchor2 = [contentView4 topAnchor];
    v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
    contentViewTopAnchor = v4->__contentViewTopAnchor;
    v4->__contentViewTopAnchor = v25;

    bottomAnchor = [(UIView *)v4->__contentView bottomAnchor];
    containerView5 = [(PKPaletteView *)v4 containerView];
    contentView5 = [containerView5 contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    v31 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    contentViewBottomAnchor = v4->__contentViewBottomAnchor;
    v4->__contentViewBottomAnchor = v31;

    leadingAnchor = [(UIView *)v4->__contentView leadingAnchor];
    containerView6 = [(PKPaletteView *)v4 containerView];
    contentView6 = [containerView6 contentView];
    leadingAnchor2 = [contentView6 leadingAnchor];
    v37 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    contentViewLeadingAnchor = v4->__contentViewLeadingAnchor;
    v4->__contentViewLeadingAnchor = v37;

    trailingAnchor = [(UIView *)v4->__contentView trailingAnchor];
    containerView7 = [(PKPaletteView *)v4 containerView];
    contentView7 = [containerView7 contentView];
    trailingAnchor2 = [contentView7 trailingAnchor];
    v43 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
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
    toolPreview = [(PKPaletteView *)v4 toolPreview];
    [toolPreview showPreviewForTool:v82 animated:0];

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
    bottomAnchor3 = [(UIStackView *)v4->__buttonStackView bottomAnchor];
    bottomAnchor4 = [(UIView *)v4->__contentView bottomAnchor];
    v64 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    buttonStackViewBottomConstraint = v4->__buttonStackViewBottomConstraint;
    v4->__buttonStackViewBottomConstraint = v64;

    heightAnchor = [(UIStackView *)v4->__buttonStackView heightAnchor];
    [(PKUCBPaletteView *)v4 compactPaletteHeight];
    v67 = [heightAnchor constraintEqualToConstant:?];
    buttonStackViewHeightConstraint = v4->__buttonStackViewHeightConstraint;
    v4->__buttonStackViewHeightConstraint = v67;

    v79 = MEMORY[0x1E696ACD8];
    topAnchor3 = [(UIStackView *)v4->__buttonStackView topAnchor];
    topAnchor4 = [(UIView *)v4->__contentView topAnchor];
    v70 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v84[0] = v70;
    v84[1] = v4->__buttonStackViewBottomConstraint;
    leadingAnchor3 = [(UIStackView *)v4->__buttonStackView leadingAnchor];
    leadingAnchor4 = [(UIView *)v4->__contentView leadingAnchor];
    v73 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v84[2] = v73;
    trailingAnchor3 = [(UIStackView *)v4->__buttonStackView trailingAnchor];
    trailingAnchor4 = [(UIView *)v4->__contentView trailingAnchor];
    v76 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
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
    _contentViewLeadingAnchor = [(PKUCBPaletteView *)self _contentViewLeadingAnchor];
    [_contentViewLeadingAnchor setConstant:v4];

    [(PKUCBPaletteView *)self _contentMargin];
    v7 = -v6;
    _contentViewTrailingAnchor = [(PKUCBPaletteView *)self _contentViewTrailingAnchor];
    [_contentViewTrailingAnchor setConstant:v7];

    v9 = MEMORY[0x1E696ACD8];
    nonCompactContentViewConstraints = [(PKUCBPaletteView *)self nonCompactContentViewConstraints];
    [v9 deactivateConstraints:nonCompactContentViewConstraints];

    v11 = MEMORY[0x1E696ACD8];
    [(PKUCBPaletteView *)self compactContentViewConstraints];
  }

  else
  {
    v12 = MEMORY[0x1E696ACD8];
    compactContentViewConstraints = [(PKUCBPaletteView *)self compactContentViewConstraints];
    [v12 deactivateConstraints:compactContentViewConstraints];

    v11 = MEMORY[0x1E696ACD8];
    [(PKUCBPaletteView *)self nonCompactContentViewConstraints];
  }
  v14 = ;
  [v11 activateConstraints:v14];

  v15.receiver = self;
  v15.super_class = PKUCBPaletteView;
  [(PKUCBPaletteView *)&v15 updateConstraints];
}

- (double)responseForThrowingFromPosition:(int64_t)position toPosition:(int64_t)toPosition withVelocity:(CGPoint)velocity
{
  v5 = sqrt(velocity.y * velocity.y + velocity.x * velocity.x);
  if (position <= 2)
  {
    if (position != 1)
    {
      if (position == 2)
      {
        v6 = (toPosition & 0xFFFFFFFFFFFFFFFELL) == 6;
        goto LABEL_14;
      }

LABEL_17:
      v8 = v5 > 2700.0;
      goto LABEL_18;
    }

    v7 = toPosition - 5;
LABEL_12:
    if (v7 < 2)
    {
      v6 = 1;
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  if (position == 3)
  {
    v7 = toPosition - 7;
    goto LABEL_12;
  }

  if (position != 4)
  {
    goto LABEL_17;
  }

  v6 = 1;
  if (toPosition != 5 && toPosition != 8)
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
  if ((position & 0xFFFFFFFFFFFFFFFDLL) != 1 || toPosition != 2 && toPosition != 4)
  {
    v9 = 0;
    if (position > 2)
    {
      if (position == 3)
      {
        goto LABEL_34;
      }

      if (position != 4)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if (position == 1)
      {
LABEL_32:
        v11 = toPosition - 7;
LABEL_35:
        v9 = v11 < 2;
        goto LABEL_36;
      }

      if (position != 2)
      {
        goto LABEL_36;
      }
    }

    v8 &= (toPosition & 0xFFFFFFFFFFFFFFFDLL) == 1;
  }

  if (v8)
  {
    return 0.456;
  }

  if (position > 2)
  {
    if (position != 3)
    {
      goto LABEL_39;
    }

LABEL_34:
    v11 = toPosition - 5;
    goto LABEL_35;
  }

  if (position == 1)
  {
    goto LABEL_32;
  }

LABEL_39:
  if (toPosition == 4 || toPosition == 2)
  {
    window = [(PKUCBPaletteView *)self window];
    windowScene = [window windowScene];
    v14 = dbl_1C801E690[([windowScene interfaceOrientation] - 1) < 2];

    return dbl_1C801E6A0[v5 > v14];
  }

  if (position == 2)
  {
    v15 = toPosition == 5 || toPosition == 8;
  }

  else
  {
    v15 = (toPosition & 0xFFFFFFFFFFFFFFFELL) == 6;
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

- (double)dampingRatioForThrowingFromPosition:(int64_t)position toPosition:(int64_t)toPosition withVelocity:(CGPoint)velocity
{
  v5 = sqrt(velocity.y * velocity.y + velocity.x * velocity.x);
  if (position <= 2)
  {
    if (position != 1)
    {
      if (position != 2)
      {
        goto LABEL_16;
      }

      v6 = (toPosition & 0xFFFFFFFFFFFFFFFELL) == 6;
      goto LABEL_14;
    }

    v7 = toPosition - 5;
    goto LABEL_12;
  }

  if (position == 3)
  {
    v7 = toPosition - 7;
LABEL_12:
    if (v7 >= 2)
    {
      goto LABEL_17;
    }

    v6 = 1;
    goto LABEL_14;
  }

  if (position != 4)
  {
    goto LABEL_16;
  }

  v6 = 1;
  if (toPosition != 5 && toPosition != 8)
  {
LABEL_21:
    v8 = (toPosition & 0xFFFFFFFFFFFFFFFDLL) == 1;
    goto LABEL_22;
  }

LABEL_14:
  if (v6 && v5 > 1900.0)
  {
    return 0.95;
  }

LABEL_16:
  if ((position & 0xFFFFFFFFFFFFFFFDLL) != 1)
  {
    goto LABEL_19;
  }

LABEL_17:
  v8 = 1;
  if (toPosition != 2 && toPosition != 4)
  {
LABEL_19:
    if (position != 4 && position != 2)
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

  if (position == 4 || position == 2)
  {
    v11 = toPosition == 2 || toPosition == 4;
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

- (id)borderColorForTraitCollection:(id)collection
{
  collectionCopy = collection;
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    systemGray4Color = [MEMORY[0x1E69DC888] systemGray4Color];
  }

  else
  {
    userInterfaceStyle = [collectionCopy userInterfaceStyle];
    systemGray4Color2 = [MEMORY[0x1E69DC888] systemGray4Color];
    v7 = systemGray4Color2;
    if (userInterfaceStyle == 2)
    {
      v8 = 0.4;
    }

    else
    {
      v8 = 0.5;
    }

    systemGray4Color = [systemGray4Color2 colorWithAlphaComponent:v8];
  }

  return systemGray4Color;
}

- (double)borderWidthForTraitCollection:(id)collection
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

- (CGSize)paletteSizeForEdge:(unint64_t)edge
{
  _buttonStackView = [(PKUCBPaletteView *)self _buttonStackView];
  [_buttonStackView systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)}];
  v7 = v6;
  v9 = v8;

  palettePosition = [(PKPaletteView *)self palettePosition];
  if (palettePosition == 4 || palettePosition == 2)
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

  v19 = edge == 2 || edge == 8;
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

- (void)willStartAppearanceAnimation:(BOOL)animation
{
  animationCopy = animation;
  v5.receiver = self;
  v5.super_class = PKUCBPaletteView;
  [(PKPaletteView *)&v5 willStartAppearanceAnimation:?];
  if (animationCopy)
  {
    [(PKUCBPaletteView *)self _flashLanguageIndicatorIfNeeded];
  }
}

- (BOOL)isPalettePresentingPopover
{
  palettePopoverPresentingController = [(PKPaletteView *)self palettePopoverPresentingController];
  presentedViewController = [palettePopoverPresentingController presentedViewController];

  if (presentedViewController)
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

- (void)setReturnKeyType:(int64_t)type
{
  if (self->_returnKeyType != type)
  {
    self->_returnKeyType = type;
    [(PKUCBPaletteView *)self _updateUI];
    internalDelegate = [(PKPaletteView *)self internalDelegate];
    [internalDelegate paletteViewContentSizeDidChange:self];

    internalDelegate2 = [(PKPaletteView *)self internalDelegate];
    [internalDelegate2 paletteViewReturnKeyTypeDidChange:self];
  }
}

- (void)setReturnKeyEnabled:(BOOL)enabled
{
  if (self->_returnKeyEnabled != enabled)
  {
    self->_returnKeyEnabled = enabled;
    [(PKUCBPaletteView *)self _updateUI];
  }
}

- (void)setLocaleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (![(NSString *)self->_localeIdentifier isEqualToString:?])
  {
    v4 = [identifierCopy copy];
    localeIdentifier = self->_localeIdentifier;
    self->_localeIdentifier = v4;

    [(PKUCBPaletteView *)self _updateUI];
  }
}

- (void)setLeadingBarButtons:(id)buttons
{
  if (self->_leadingBarButtons != buttons)
  {
    v4 = [buttons copy];
    leadingBarButtons = self->_leadingBarButtons;
    self->_leadingBarButtons = v4;

    [(PKUCBPaletteView *)self _updateUI];
    internalDelegate = [(PKPaletteView *)self internalDelegate];
    [internalDelegate paletteViewContentSizeDidChange:self];
  }
}

- (void)setCenteredBarButtons:(id)buttons
{
  v29 = *MEMORY[0x1E69E9840];
  buttonsCopy = buttons;
  centeredBarButtons = self->_centeredBarButtons;
  if (centeredBarButtons != buttonsCopy)
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

    v11 = [(NSArray *)buttonsCopy copy];
    v12 = self->_centeredBarButtons;
    self->_centeredBarButtons = v11;

    [(PKUCBPaletteView *)self _updateUI];
    internalDelegate = [(PKPaletteView *)self internalDelegate];
    [internalDelegate paletteViewContentSizeDidChange:self];

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

- (void)setTrailingBarButtons:(id)buttons
{
  if (self->_trailingBarButtons != buttons)
  {
    v4 = [buttons copy];
    trailingBarButtons = self->_trailingBarButtons;
    self->_trailingBarButtons = v4;

    [(PKUCBPaletteView *)self _updateUI];
    internalDelegate = [(PKPaletteView *)self internalDelegate];
    [internalDelegate paletteViewContentSizeDidChange:self];
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
      languageIdentificationIcon = [v3 languageIdentificationIcon];
      v5 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:languageIdentificationIcon];
      [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [v5 setTintColor:secondaryLabelColor];

      [languageIdentificationIcon size];
      v7 = 1.0;
      if (v8 > 0.0)
      {
        [languageIdentificationIcon size];
        v10 = v9;
        [languageIdentificationIcon size];
        v7 = v10 / v11;
      }

      v12 = MEMORY[0x1E696ACD8];
      heightAnchor = [v5 heightAnchor];
      v14 = [heightAnchor constraintEqualToConstant:28.0];
      v21[0] = v14;
      widthAnchor = [v5 widthAnchor];
      heightAnchor2 = [v5 heightAnchor];
      v17 = [widthAnchor constraintEqualToAnchor:heightAnchor2 multiplier:v7];
      v21[1] = v17;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
      v18 = v20 = languageIdentificationIcon;
      [v12 activateConstraints:v18];

      toolPreview = [(PKPaletteView *)self toolPreview];
      [toolPreview flashAlternatePreviewView:v5];
    }
  }
}

- (void)buttonDidChangeIntrinsicContentSize:(id)size
{
  if (![(PKUCBPaletteView *)self isUpdatingUI])
  {
    internalDelegate = [(PKPaletteView *)self internalDelegate];
    [internalDelegate paletteViewContentSizeDidChange:self];
  }
}

- (void)_handleReturnKey
{
  returnKeyHandler = [(PKUCBPaletteView *)self returnKeyHandler];

  if (returnKeyHandler)
  {
    returnKeyHandler2 = [(PKUCBPaletteView *)self returnKeyHandler];
    returnKeyHandler2[2](returnKeyHandler2, self);
  }
}

- (void)_performUpdateUIBlock:(id)block
{
  blockCopy = block;
  [(PKUCBPaletteView *)self setUpdatingUI:1];
  blockCopy[2](blockCopy);

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
  returnKeyType = [(PKUCBPaletteView *)self returnKeyType];
  _returnKeyButton = [(PKUCBPaletteView *)self _returnKeyButton];
  [_returnKeyButton setReturnKeyType:returnKeyType];

  isReturnKeyEnabled = [(PKUCBPaletteView *)self isReturnKeyEnabled];
  _returnKeyButton2 = [(PKUCBPaletteView *)self _returnKeyButton];
  [_returnKeyButton2 setEnabled:isReturnKeyEnabled];

  _shouldHideReturnKeyButtonGroupView = [(PKUCBPaletteView *)self _shouldHideReturnKeyButtonGroupView];
  _returnKeyButtonGroupView = [(PKUCBPaletteView *)self _returnKeyButtonGroupView];
  [_returnKeyButtonGroupView setHidden:_shouldHideReturnKeyButtonGroupView];

  if (![(PKUCBPaletteView *)self _shouldHideReturnKeyButtonGroupView])
  {
    _returnKeyButtonGroupView2 = [(PKUCBPaletteView *)self _returnKeyButtonGroupView];
    [_returnKeyButtonGroupView2 removeAllButtons];

    _returnKeyButtonGroupView3 = [(PKUCBPaletteView *)self _returnKeyButtonGroupView];
    _returnKeyButton3 = [(PKUCBPaletteView *)self _returnKeyButton];
    [_returnKeyButtonGroupView3 addButton:_returnKeyButton3];
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
  _shouldHideLeadingButtonGroupView = [(PKUCBPaletteView *)self _shouldHideLeadingButtonGroupView];
  _leadingButtonGroupView = [(PKUCBPaletteView *)self _leadingButtonGroupView];
  [_leadingButtonGroupView setHidden:_shouldHideLeadingButtonGroupView];

  if (![(PKUCBPaletteView *)self _shouldHideLeadingButtonGroupView])
  {
    _leadingButtonGroupView2 = [(PKUCBPaletteView *)self _leadingButtonGroupView];
    [_leadingButtonGroupView2 removeAllButtons];

    _leadingButtonGroupView3 = [(PKUCBPaletteView *)self _leadingButtonGroupView];
    leadingBarButtons = [(PKUCBPaletteView *)self leadingBarButtons];
    [_leadingButtonGroupView3 addButtonsFromArray:leadingBarButtons];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    _leadingButtonGroupView4 = [(PKUCBPaletteView *)self _leadingButtonGroupView];
    buttons = [_leadingButtonGroupView4 buttons];

    v10 = [buttons countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(buttons);
          }

          [*(*(&v14 + 1) + 8 * v13++) setUseCompactLayout:{-[UIView _pk_useCompactLayout](self, "_pk_useCompactLayout")}];
        }

        while (v11 != v13);
        v11 = [buttons countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (BOOL)_shouldHideLeadingButtonGroupView
{
  leadingBarButtons = [(PKUCBPaletteView *)self leadingBarButtons];
  if ([leadingBarButtons count])
  {
    _pk_useCompactLayout = [(UIView *)self _pk_useCompactLayout];
  }

  else
  {
    _pk_useCompactLayout = 1;
  }

  return _pk_useCompactLayout;
}

- (void)_updateCenteredButtonGroup
{
  v21 = *MEMORY[0x1E69E9840];
  _shouldShowCenterButtonGroupView = [(PKUCBPaletteView *)self _shouldShowCenterButtonGroupView];
  _centeredButtonGroupView = [(PKUCBPaletteView *)self _centeredButtonGroupView];
  [_centeredButtonGroupView setHidden:!_shouldShowCenterButtonGroupView];

  if ([(PKUCBPaletteView *)self _shouldShowCenterButtonGroupView])
  {
    _centeredButtonGroupView2 = [(PKUCBPaletteView *)self _centeredButtonGroupView];
    [_centeredButtonGroupView2 removeAllButtons];

    _centeredButtonGroupView3 = [(PKUCBPaletteView *)self _centeredButtonGroupView];
    _centeredBarButtons = [(PKUCBPaletteView *)self _centeredBarButtons];
    [_centeredButtonGroupView3 addButtonsFromArray:_centeredBarButtons];

    _shouldHideTrailingButtonGroupView = [(PKUCBPaletteView *)self _shouldHideLeadingButtonGroupView]|| [(PKUCBPaletteView *)self _shouldHideTrailingButtonGroupView];
    _centeredButtonGroupView4 = [(PKUCBPaletteView *)self _centeredButtonGroupView];
    [_centeredButtonGroupView4 setUseEqualInterItemSpacing:_shouldHideTrailingButtonGroupView];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    _centeredButtonGroupView5 = [(PKUCBPaletteView *)self _centeredButtonGroupView];
    buttons = [_centeredButtonGroupView5 buttons];

    v12 = [buttons countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(buttons);
          }

          [*(*(&v16 + 1) + 8 * v15++) setUseCompactLayout:{-[UIView _pk_useCompactLayout](self, "_pk_useCompactLayout")}];
        }

        while (v13 != v15);
        v13 = [buttons countByEnumeratingWithState:&v16 objects:v20 count:16];
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

  _centeredBarButtons = [(PKUCBPaletteView *)self _centeredBarButtons];
  v3 = [_centeredBarButtons count] != 0;

  return v3;
}

- (id)_centeredBarButtons
{
  array = [MEMORY[0x1E695DEC8] array];
  _pk_useCompactLayout = [(UIView *)self _pk_useCompactLayout];
  centeredBarButtons = [(PKUCBPaletteView *)self centeredBarButtons];
  v6 = centeredBarButtons;
  if (_pk_useCompactLayout)
  {
    v7 = [centeredBarButtons indexesOfObjectsPassingTest:&__block_literal_global_58];

    leadingBarButtons = [(PKUCBPaletteView *)self leadingBarButtons];
    if ([leadingBarButtons count])
    {
      v9 = [v7 count];

      if (v9 > 3)
      {
        goto LABEL_6;
      }

      [(PKUCBPaletteView *)self leadingBarButtons];
      array = leadingBarButtons = array;
    }

LABEL_6:
    if ([(PKUCBPaletteView *)self _shouldShowReturnKey])
    {
      _returnKeyButton = [(PKUCBPaletteView *)self _returnKeyButton];
      v11 = [array arrayByAddingObject:_returnKeyButton];

      array = v11;
    }

    if ([v7 count])
    {
      centeredBarButtons2 = [(PKUCBPaletteView *)self centeredBarButtons];
      v13 = [centeredBarButtons2 objectsAtIndexes:v7];

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
      v17 = [array arrayByAddingObjectsFromArray:v16];

      array = v17;
    }

    trailingBarButtons = [(PKUCBPaletteView *)self trailingBarButtons];
    if ([trailingBarButtons count])
    {
      v19 = [v7 count];

      if (v19 > 5)
      {
LABEL_17:
        v6 = array;
        goto LABEL_19;
      }

      trailingBarButtons = [(PKUCBPaletteView *)self trailingBarButtons];
      v20 = [array arrayByAddingObjectsFromArray:trailingBarButtons];

      array = v20;
    }

    goto LABEL_17;
  }

  v7 = array;
LABEL_19:

  return v6;
}

- (void)_updateTrailingButtonGroup
{
  v19 = *MEMORY[0x1E69E9840];
  _shouldHideTrailingButtonGroupView = [(PKUCBPaletteView *)self _shouldHideTrailingButtonGroupView];
  _trailingButtonGroupView = [(PKUCBPaletteView *)self _trailingButtonGroupView];
  [_trailingButtonGroupView setHidden:_shouldHideTrailingButtonGroupView];

  if (![(PKUCBPaletteView *)self _shouldHideTrailingButtonGroupView])
  {
    _trailingButtonGroupView2 = [(PKUCBPaletteView *)self _trailingButtonGroupView];
    [_trailingButtonGroupView2 removeAllButtons];

    _trailingButtonGroupView3 = [(PKUCBPaletteView *)self _trailingButtonGroupView];
    trailingBarButtons = [(PKUCBPaletteView *)self trailingBarButtons];
    [_trailingButtonGroupView3 addButtonsFromArray:trailingBarButtons];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    _trailingButtonGroupView4 = [(PKUCBPaletteView *)self _trailingButtonGroupView];
    buttons = [_trailingButtonGroupView4 buttons];

    v10 = [buttons countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(buttons);
          }

          [*(*(&v14 + 1) + 8 * v13++) setUseCompactLayout:{-[UIView _pk_useCompactLayout](self, "_pk_useCompactLayout")}];
        }

        while (v11 != v13);
        v11 = [buttons countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (BOOL)_shouldHideTrailingButtonGroupView
{
  trailingBarButtons = [(PKUCBPaletteView *)self trailingBarButtons];
  if ([trailingBarButtons count])
  {
    _pk_useCompactLayout = [(UIView *)self _pk_useCompactLayout];
  }

  else
  {
    _pk_useCompactLayout = 1;
  }

  return _pk_useCompactLayout;
}

- (void)_updateSubviewLayoutAxis
{
  v3 = (([(PKPaletteView *)self palettePosition]- 2) & 0xFFFFFFFFFFFFFFFDLL) == 0;
  _buttonStackView = [(PKUCBPaletteView *)self _buttonStackView];
  [_buttonStackView setAxis:v3];

  _leadingButtonGroupView = [(PKUCBPaletteView *)self _leadingButtonGroupView];
  [_leadingButtonGroupView setAxis:v3];

  _centeredButtonGroupView = [(PKUCBPaletteView *)self _centeredButtonGroupView];
  [_centeredButtonGroupView setAxis:v3];

  _trailingButtonGroupView = [(PKUCBPaletteView *)self _trailingButtonGroupView];
  [_trailingButtonGroupView setAxis:v3];

  _returnKeyButton = [(PKUCBPaletteView *)self _returnKeyButton];
  [_returnKeyButton setAxis:v3];
}

- (void)dismissPalettePopoverWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__PKUCBPaletteView_dismissPalettePopoverWithCompletion___block_invoke;
  v7[3] = &unk_1E82D7AE8;
  v7[4] = self;
  v8 = completionCopy;
  v6.receiver = self;
  v6.super_class = PKUCBPaletteView;
  v5 = completionCopy;
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

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v10.receiver = self;
  v10.super_class = PKUCBPaletteView;
  [(PKPaletteView *)&v10 traitCollectionDidChange:changeCopy];
  traitCollection = [(PKUCBPaletteView *)self traitCollection];
  verticalSizeClass = [traitCollection verticalSizeClass];
  if (verticalSizeClass == [changeCopy verticalSizeClass])
  {
    traitCollection2 = [(PKUCBPaletteView *)self traitCollection];
    horizontalSizeClass = [traitCollection2 horizontalSizeClass];
    horizontalSizeClass2 = [changeCopy horizontalSizeClass];

    if (horizontalSizeClass == horizontalSizeClass2)
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