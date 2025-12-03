@interface CNStarkActionView
+ (id)propertyTransportButtonWithDelegate:(id)delegate;
+ (id)quickActionButtonWithDelegate:(id)delegate;
- (CGSize)intrinsicContentSize;
- (CNStarkActionView)initWithDelegate:(id)delegate;
- (CNStarkActionViewDelegate)delegate;
- (void)_updateLabelStyle;
- (void)clickGestureDidUpdate:(id)update;
- (void)deselect;
- (void)notifyDelegateAboutUserChoice;
- (void)select;
- (void)setActionType:(id)type;
- (void)setTitle:(id)title;
- (void)setupButton;
- (void)setupClickGestureRecognizer;
- (void)setupConstraints;
- (void)setupLabel;
- (void)stateUpdated;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CNStarkActionView

- (void)stateUpdated
{
  title = [(CNStarkActionView *)self title];
  label = [(CNStarkActionView *)self label];
  [label setText:title];

  enabled = [(CNStarkActionView *)self enabled];
  button = [(CNStarkActionView *)self button];
  [button setEnabled:enabled];

  [(CNStarkActionView *)self _updateLabelStyle];
  _currentTraitCollection = [MEMORY[0x1E69DD1B8] _currentTraitCollection];
  traitCollection = [(CNStarkActionView *)self traitCollection];
  [MEMORY[0x1E69DD1B8] _setCurrentTraitCollection:traitCollection];

  if ([(CNStarkActionView *)self enabled]&& ([(CNStarkActionView *)self selected]|| [(CNStarkActionView *)self isFocused]))
  {
    selectedStrokeColor = [(CNStarkActionView *)self selectedStrokeColor];
    button2 = [(CNStarkActionView *)self button];
    [button2 setStrokeColor:selectedStrokeColor];

    selectedFillColor = [(CNStarkActionView *)self selectedFillColor];
    button3 = [(CNStarkActionView *)self button];
    [button3 setFillColor:selectedFillColor];

    selectedGlyphColor = [(CNStarkActionView *)self selectedGlyphColor];
LABEL_7:
    v17 = selectedGlyphColor;
    button4 = [(CNStarkActionView *)self button];
    [button4 setGlyphColor:v17];

    v19 = +[CNUIColorRepository carPlayQuickActionButtonTitleTextColorEnabled];
    goto LABEL_9;
  }

  if ([(CNStarkActionView *)self enabled])
  {
    enabledStrokeColor = [(CNStarkActionView *)self enabledStrokeColor];
    button5 = [(CNStarkActionView *)self button];
    [button5 setStrokeColor:enabledStrokeColor];

    enabledFillColor = [(CNStarkActionView *)self enabledFillColor];
    button6 = [(CNStarkActionView *)self button];
    [button6 setFillColor:enabledFillColor];

    selectedGlyphColor = [(CNStarkActionView *)self enabledGlyphColor];
    goto LABEL_7;
  }

  disabledStrokeColor = [(CNStarkActionView *)self disabledStrokeColor];
  button7 = [(CNStarkActionView *)self button];
  [button7 setStrokeColor:disabledStrokeColor];

  disabledFillColor = [(CNStarkActionView *)self disabledFillColor];
  button8 = [(CNStarkActionView *)self button];
  [button8 setFillColor:disabledFillColor];

  disabledGlyphColor = [(CNStarkActionView *)self disabledGlyphColor];
  button9 = [(CNStarkActionView *)self button];
  [button9 setGlyphColor:disabledGlyphColor];

  v19 = +[CNUIColorRepository carPlayQuickActionButtonTitleTextColorDisabled];
LABEL_9:
  v26 = v19;
  label2 = [(CNStarkActionView *)self label];
  [label2 setTextColor:v26];

  [MEMORY[0x1E69DD1B8] _setCurrentTraitCollection:_currentTraitCollection];
}

- (void)select
{
  if ([(CNStarkActionView *)self enabled])
  {
    [(CNStarkActionView *)self setSelected:1];

    [(CNStarkActionView *)self stateUpdated];
  }
}

- (CNStarkActionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)deselect
{
  [(CNStarkActionView *)self setSelected:0];

  [(CNStarkActionView *)self stateUpdated];
}

- (void)notifyDelegateAboutUserChoice
{
  if ([(CNStarkActionView *)self enabled])
  {
    delegate = [(CNStarkActionView *)self delegate];
    [delegate actionViewTapped:self];
  }
}

- (void)setupLabel
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  label = self->_label;
  self->_label = v3;

  [(UILabel *)self->_label setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_label setTextAlignment:1];
  if (_AXSCarPlayEnhanceTextLegibilityEnabled())
  {
    +[CNUIFontRepository carPlayQuickActionButtonTitleFontBold];
  }

  else
  {
    +[CNUIFontRepository carPlayQuickActionButtonTitleFont];
  }
  v5 = ;
  [(UILabel *)self->_label setFont:v5];

  [(UILabel *)self->_label setIsAccessibilityElement:0];
  [(UILabel *)self->_label setAccessibilityIdentifier:@"CNStarkActionLabel"];
  layer = [(UILabel *)self->_label layer];
  [layer setAllowsGroupBlending:0];

  [(CNStarkActionView *)self addSubview:self->_label];
  [(CNStarkActionView *)self _updateLabelStyle];
  objc_initWeak(&location, self);
  v7 = objc_opt_self();
  v13[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __31__CNStarkActionView_setupLabel__block_invoke;
  v10[3] = &unk_1E74E3D88;
  objc_copyWeak(&v11, &location);
  v9 = [(CNStarkActionView *)self registerForTraitChanges:v8 withHandler:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)setupButton
{
  v3 = objc_opt_new();
  button = self->_button;
  self->_button = v3;

  [(CNStarkActionViewButton *)self->_button setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CNStarkActionView *)self actionPlatterSize];
  [(CNStarkActionViewButton *)self->_button setShapeCornerRadius:v5 * 0.5];
  layer = [(CNStarkActionViewButton *)self->_button layer];
  [layer setMasksToBounds:1];

  [(CNStarkActionViewButton *)self->_button addTarget:self action:sel_actionViewTapped_ forControlEvents:64];
  [(CNStarkActionViewButton *)self->_button addTarget:self action:sel_actionViewTouchDown_ forControlEvents:1];
  [(CNStarkActionViewButton *)self->_button addTarget:self action:sel_actionViewTouchUp_ forControlEvents:192];
  v7 = self->_button;

  [(CNStarkActionView *)self addSubview:v7];
}

- (void)setupConstraints
{
  v33[5] = *MEMORY[0x1E69E9840];
  v31 = objc_opt_new();
  widthAnchor = [(CNStarkActionView *)self widthAnchor];
  [(CNStarkActionView *)self actionPlatterSize];
  v27 = [widthAnchor constraintGreaterThanOrEqualToConstant:?];
  v33[0] = v27;
  topAnchor = [(CNStarkActionViewButton *)self->_button topAnchor];
  topAnchor2 = [(CNStarkActionView *)self topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v33[1] = v22;
  centerXAnchor = [(CNStarkActionViewButton *)self->_button centerXAnchor];
  centerXAnchor2 = [(CNStarkActionView *)self centerXAnchor];
  v4 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v33[2] = v4;
  widthAnchor2 = [(CNStarkActionViewButton *)self->_button widthAnchor];
  [(CNStarkActionView *)self actionPlatterSize];
  v6 = [widthAnchor2 constraintEqualToConstant:?];
  v33[3] = v6;
  heightAnchor = [(CNStarkActionViewButton *)self->_button heightAnchor];
  widthAnchor3 = [(CNStarkActionViewButton *)self->_button widthAnchor];
  v9 = [heightAnchor constraintEqualToAnchor:widthAnchor3];
  v33[4] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:5];
  [v31 addObjectsFromArray:v10];

  label = self->_label;
  if (label)
  {
    leadingAnchor = [(UILabel *)label leadingAnchor];
    leadingAnchor2 = [(CNStarkActionView *)self leadingAnchor];
    v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v32[0] = v26;
    firstBaselineAnchor = [(UILabel *)self->_label firstBaselineAnchor];
    bottomAnchor = [(CNStarkActionViewButton *)self->_button bottomAnchor];
    [(CNStarkActionView *)self actionLabelOffset];
    v13 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:?];
    v32[1] = v13;
    trailingAnchor = [(UILabel *)self->_label trailingAnchor];
    trailingAnchor2 = [(CNStarkActionView *)self trailingAnchor];
    v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v32[2] = v16;
    bottomAnchor2 = [(UILabel *)self->_label bottomAnchor];
    bottomAnchor3 = [(CNStarkActionView *)self bottomAnchor];
    v19 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v32[3] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
    [v31 addObjectsFromArray:v20];
  }

  [(CNStarkActionView *)self addConstraints:v31];
}

- (void)setupClickGestureRecognizer
{
  v3 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_clickGestureDidUpdate_];
  [v3 setAllowedTouchTypes:MEMORY[0x1E695E0F0]];
  [v3 setAllowedPressTypes:&unk_1F0D4B9B8];
  [(CNStarkActionView *)self addGestureRecognizer:v3];
}

- (CGSize)intrinsicContentSize
{
  [(CNStarkActionView *)self actionPlatterSize];
  v4 = v3;
  [(CNStarkActionView *)self actionPlatterSize];
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = CNStarkActionView;
  [(CNStarkActionView *)&v6 traitCollectionDidChange:change];
  if (_AXSCarPlayEnhanceTextLegibilityEnabled())
  {
    +[CNUIFontRepository carPlayQuickActionButtonTitleFontBold];
  }

  else
  {
    +[CNUIFontRepository carPlayQuickActionButtonTitleFont];
  }
  v4 = ;
  label = [(CNStarkActionView *)self label];
  [label setFont:v4];

  [(CNStarkActionView *)self stateUpdated];
}

- (void)setTitle:(id)title
{
  objc_storeStrong(&self->_title, title);

  [(CNStarkActionView *)self stateUpdated];
}

- (void)clickGestureDidUpdate:(id)update
{
  updateCopy = update;
  if ([updateCopy state] == 3)
  {
    [(CNStarkActionView *)self choose];
  }

  else if ([updateCopy state] == 4 || objc_msgSend(updateCopy, "state") == 5)
  {
    [(CNStarkActionView *)self deselect];
  }
}

- (void)_updateLabelStyle
{
  if ([(CNStarkActionView *)self enabled])
  {
    label = [(CNStarkActionView *)self label];
    layer = [label layer];
    [layer setCompositingFilter:0];
  }

  else
  {
    v4 = MEMORY[0x1E6979378];
    label = [(CNStarkActionView *)self traitCollection];
    userInterfaceStyle = [label userInterfaceStyle];
    v6 = MEMORY[0x1E6979CF8];
    if (userInterfaceStyle != 2)
    {
      v6 = MEMORY[0x1E6979CE8];
    }

    layer = [v4 filterWithType:*v6];
    label2 = [(CNStarkActionView *)self label];
    layer2 = [label2 layer];
    [layer2 setCompositingFilter:layer];
  }
}

- (void)setActionType:(id)type
{
  typeCopy = type;
  if (([typeCopy isEqualToString:self->_actionType] & 1) == 0)
  {
    objc_storeStrong(&self->_actionType, type);
    v5 = MEMORY[0x1E69DCAB8];
    v6 = [MEMORY[0x1E6996C08] symbolImageNameForActionType:typeCopy];
    if ([(CNStarkActionView *)self prefersSmallImageScale])
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    v8 = [v5 cnui_symbolImageNamed:v6 scale:v7 withColor:0 useFixedSize:1 compatibleWithTextStyle:*MEMORY[0x1E69DDDC0]];
    button = [(CNStarkActionView *)self button];
    [button setButtonImage:v8];

    typeCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"CNStarkActionView - %@", typeCopy];
    label = [(CNStarkActionView *)self label];
    [label setAccessibilityValue:typeCopy];

    typeCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CNStarkActionButton%@", typeCopy];
    button2 = [(CNStarkActionView *)self button];
    [button2 setAccessibilityIdentifier:typeCopy2];

    [(CNStarkActionView *)self stateUpdated];
  }
}

void __31__CNStarkActionView_setupLabel__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateLabelStyle];
}

- (CNStarkActionView)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = CNStarkActionView;
  v5 = [(CNStarkActionView *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    [(CNStarkActionView *)v6 setAccessibilityIdentifier:@"CNStarkActionView"];
    layer = [(CNStarkActionView *)v6 layer];
    [layer setAllowsGroupBlending:0];

    v8 = v6;
  }

  return v6;
}

+ (id)propertyTransportButtonWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = [objc_alloc(objc_opt_class()) initWithDelegate:delegateCopy];

  [v4 setActionPlatterSize:36.0];
  v5 = +[CNUIColorRepository carPlayTransportButtonBackgroundStrokeColorDisabled];
  [v4 setDisabledStrokeColor:v5];

  v6 = +[CNUIColorRepository carPlayTransportButtonBackgroundFillColorDisabled];
  [v4 setDisabledFillColor:v6];

  v7 = +[CNUIColorRepository carPlayTransportButtonGlyphColorDisabled];
  [v4 setDisabledGlyphColor:v7];

  v8 = +[CNUIColorRepository carPlayTransportButtonBackgroundStrokeColorEnabled];
  [v4 setEnabledStrokeColor:v8];

  v9 = +[CNUIColorRepository carPlayTransportButtonBackgroundFillColorEnabled];
  [v4 setEnabledFillColor:v9];

  v10 = +[CNUIColorRepository carPlayTransportButtonGlyphColorEnabled];
  [v4 setEnabledGlyphColor:v10];

  v11 = +[CNUIColorRepository carPlayTransportButtonBackgroundStrokeColorSelected];
  [v4 setSelectedStrokeColor:v11];

  v12 = +[CNUIColorRepository carPlayTransportButtonBackgroundFillColorSelected];
  [v4 setSelectedFillColor:v12];

  v13 = +[CNUIColorRepository carPlayTransportButtonGlyphColorSelected];
  [v4 setSelectedGlyphColor:v13];

  [v4 setupButton];
  LODWORD(v13) = _UISolariumEnabled();
  button = [v4 button];
  [button setShowsStroke:v13 ^ 1];

  [v4 setupConstraints];
  [v4 setupClickGestureRecognizer];
  [v4 stateUpdated];

  return v4;
}

+ (id)quickActionButtonWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = [objc_alloc(objc_opt_class()) initWithDelegate:delegateCopy];

  [v4 setActionPlatterSize:50.0];
  [v4 setActionLabelOffset:16.0];
  v5 = +[CNUIColorRepository carPlayQuickActionButtonBackgroundStrokeColorDisabled];
  [v4 setDisabledStrokeColor:v5];

  v6 = +[CNUIColorRepository carPlayQuickActionButtonBackgroundFillColorDisabled];
  [v4 setDisabledFillColor:v6];

  v7 = +[CNUIColorRepository carPlayQuickActionButtonGlyphColorDisabled];
  [v4 setDisabledGlyphColor:v7];

  v8 = +[CNUIColorRepository carPlayQuickActionButtonBackgroundStrokeColorEnabled];
  [v4 setEnabledStrokeColor:v8];

  v9 = +[CNUIColorRepository carPlayQuickActionButtonBackgroundFillColorEnabled];
  [v4 setEnabledFillColor:v9];

  v10 = +[CNUIColorRepository carPlayQuickActionButtonGlyphColorEnabled];
  [v4 setEnabledGlyphColor:v10];

  v11 = +[CNUIColorRepository carPlayQuickActionButtonBackgroundStrokeColorSelected];
  [v4 setSelectedStrokeColor:v11];

  v12 = +[CNUIColorRepository carPlayQuickActionButtonBackgroundFillColorSelected];
  [v4 setSelectedFillColor:v12];

  v13 = +[CNUIColorRepository carPlayQuickActionButtonGlyphColorSelected];
  [v4 setSelectedGlyphColor:v13];

  [v4 setupLabel];
  [v4 setupButton];
  [v4 setupConstraints];
  [v4 setupClickGestureRecognizer];
  [v4 stateUpdated];

  return v4;
}

@end