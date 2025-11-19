@interface CNStarkActionView
+ (id)propertyTransportButtonWithDelegate:(id)a3;
+ (id)quickActionButtonWithDelegate:(id)a3;
- (CGSize)intrinsicContentSize;
- (CNStarkActionView)initWithDelegate:(id)a3;
- (CNStarkActionViewDelegate)delegate;
- (void)_updateLabelStyle;
- (void)clickGestureDidUpdate:(id)a3;
- (void)deselect;
- (void)notifyDelegateAboutUserChoice;
- (void)select;
- (void)setActionType:(id)a3;
- (void)setTitle:(id)a3;
- (void)setupButton;
- (void)setupClickGestureRecognizer;
- (void)setupConstraints;
- (void)setupLabel;
- (void)stateUpdated;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CNStarkActionView

- (void)stateUpdated
{
  v3 = [(CNStarkActionView *)self title];
  v4 = [(CNStarkActionView *)self label];
  [v4 setText:v3];

  v5 = [(CNStarkActionView *)self enabled];
  v6 = [(CNStarkActionView *)self button];
  [v6 setEnabled:v5];

  [(CNStarkActionView *)self _updateLabelStyle];
  v28 = [MEMORY[0x1E69DD1B8] _currentTraitCollection];
  v7 = [(CNStarkActionView *)self traitCollection];
  [MEMORY[0x1E69DD1B8] _setCurrentTraitCollection:v7];

  if ([(CNStarkActionView *)self enabled]&& ([(CNStarkActionView *)self selected]|| [(CNStarkActionView *)self isFocused]))
  {
    v8 = [(CNStarkActionView *)self selectedStrokeColor];
    v9 = [(CNStarkActionView *)self button];
    [v9 setStrokeColor:v8];

    v10 = [(CNStarkActionView *)self selectedFillColor];
    v11 = [(CNStarkActionView *)self button];
    [v11 setFillColor:v10];

    v12 = [(CNStarkActionView *)self selectedGlyphColor];
LABEL_7:
    v17 = v12;
    v18 = [(CNStarkActionView *)self button];
    [v18 setGlyphColor:v17];

    v19 = +[CNUIColorRepository carPlayQuickActionButtonTitleTextColorEnabled];
    goto LABEL_9;
  }

  if ([(CNStarkActionView *)self enabled])
  {
    v13 = [(CNStarkActionView *)self enabledStrokeColor];
    v14 = [(CNStarkActionView *)self button];
    [v14 setStrokeColor:v13];

    v15 = [(CNStarkActionView *)self enabledFillColor];
    v16 = [(CNStarkActionView *)self button];
    [v16 setFillColor:v15];

    v12 = [(CNStarkActionView *)self enabledGlyphColor];
    goto LABEL_7;
  }

  v20 = [(CNStarkActionView *)self disabledStrokeColor];
  v21 = [(CNStarkActionView *)self button];
  [v21 setStrokeColor:v20];

  v22 = [(CNStarkActionView *)self disabledFillColor];
  v23 = [(CNStarkActionView *)self button];
  [v23 setFillColor:v22];

  v24 = [(CNStarkActionView *)self disabledGlyphColor];
  v25 = [(CNStarkActionView *)self button];
  [v25 setGlyphColor:v24];

  v19 = +[CNUIColorRepository carPlayQuickActionButtonTitleTextColorDisabled];
LABEL_9:
  v26 = v19;
  v27 = [(CNStarkActionView *)self label];
  [v27 setTextColor:v26];

  [MEMORY[0x1E69DD1B8] _setCurrentTraitCollection:v28];
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
    v3 = [(CNStarkActionView *)self delegate];
    [v3 actionViewTapped:self];
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
  v6 = [(UILabel *)self->_label layer];
  [v6 setAllowsGroupBlending:0];

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
  v6 = [(CNStarkActionViewButton *)self->_button layer];
  [v6 setMasksToBounds:1];

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
  v29 = [(CNStarkActionView *)self widthAnchor];
  [(CNStarkActionView *)self actionPlatterSize];
  v27 = [v29 constraintGreaterThanOrEqualToConstant:?];
  v33[0] = v27;
  v25 = [(CNStarkActionViewButton *)self->_button topAnchor];
  v23 = [(CNStarkActionView *)self topAnchor];
  v22 = [v25 constraintEqualToAnchor:v23];
  v33[1] = v22;
  v21 = [(CNStarkActionViewButton *)self->_button centerXAnchor];
  v3 = [(CNStarkActionView *)self centerXAnchor];
  v4 = [v21 constraintEqualToAnchor:v3];
  v33[2] = v4;
  v5 = [(CNStarkActionViewButton *)self->_button widthAnchor];
  [(CNStarkActionView *)self actionPlatterSize];
  v6 = [v5 constraintEqualToConstant:?];
  v33[3] = v6;
  v7 = [(CNStarkActionViewButton *)self->_button heightAnchor];
  v8 = [(CNStarkActionViewButton *)self->_button widthAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  v33[4] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:5];
  [v31 addObjectsFromArray:v10];

  label = self->_label;
  if (label)
  {
    v30 = [(UILabel *)label leadingAnchor];
    v28 = [(CNStarkActionView *)self leadingAnchor];
    v26 = [v30 constraintEqualToAnchor:v28];
    v32[0] = v26;
    v24 = [(UILabel *)self->_label firstBaselineAnchor];
    v12 = [(CNStarkActionViewButton *)self->_button bottomAnchor];
    [(CNStarkActionView *)self actionLabelOffset];
    v13 = [v24 constraintEqualToAnchor:v12 constant:?];
    v32[1] = v13;
    v14 = [(UILabel *)self->_label trailingAnchor];
    v15 = [(CNStarkActionView *)self trailingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v32[2] = v16;
    v17 = [(UILabel *)self->_label bottomAnchor];
    v18 = [(CNStarkActionView *)self bottomAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
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

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = CNStarkActionView;
  [(CNStarkActionView *)&v6 traitCollectionDidChange:a3];
  if (_AXSCarPlayEnhanceTextLegibilityEnabled())
  {
    +[CNUIFontRepository carPlayQuickActionButtonTitleFontBold];
  }

  else
  {
    +[CNUIFontRepository carPlayQuickActionButtonTitleFont];
  }
  v4 = ;
  v5 = [(CNStarkActionView *)self label];
  [v5 setFont:v4];

  [(CNStarkActionView *)self stateUpdated];
}

- (void)setTitle:(id)a3
{
  objc_storeStrong(&self->_title, a3);

  [(CNStarkActionView *)self stateUpdated];
}

- (void)clickGestureDidUpdate:(id)a3
{
  v4 = a3;
  if ([v4 state] == 3)
  {
    [(CNStarkActionView *)self choose];
  }

  else if ([v4 state] == 4 || objc_msgSend(v4, "state") == 5)
  {
    [(CNStarkActionView *)self deselect];
  }
}

- (void)_updateLabelStyle
{
  if ([(CNStarkActionView *)self enabled])
  {
    v9 = [(CNStarkActionView *)self label];
    v3 = [v9 layer];
    [v3 setCompositingFilter:0];
  }

  else
  {
    v4 = MEMORY[0x1E6979378];
    v9 = [(CNStarkActionView *)self traitCollection];
    v5 = [v9 userInterfaceStyle];
    v6 = MEMORY[0x1E6979CF8];
    if (v5 != 2)
    {
      v6 = MEMORY[0x1E6979CE8];
    }

    v3 = [v4 filterWithType:*v6];
    v7 = [(CNStarkActionView *)self label];
    v8 = [v7 layer];
    [v8 setCompositingFilter:v3];
  }
}

- (void)setActionType:(id)a3
{
  v14 = a3;
  if (([v14 isEqualToString:self->_actionType] & 1) == 0)
  {
    objc_storeStrong(&self->_actionType, a3);
    v5 = MEMORY[0x1E69DCAB8];
    v6 = [MEMORY[0x1E6996C08] symbolImageNameForActionType:v14];
    if ([(CNStarkActionView *)self prefersSmallImageScale])
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    v8 = [v5 cnui_symbolImageNamed:v6 scale:v7 withColor:0 useFixedSize:1 compatibleWithTextStyle:*MEMORY[0x1E69DDDC0]];
    v9 = [(CNStarkActionView *)self button];
    [v9 setButtonImage:v8];

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CNStarkActionView - %@", v14];
    v11 = [(CNStarkActionView *)self label];
    [v11 setAccessibilityValue:v10];

    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CNStarkActionButton%@", v14];
    v13 = [(CNStarkActionView *)self button];
    [v13 setAccessibilityIdentifier:v12];

    [(CNStarkActionView *)self stateUpdated];
  }
}

void __31__CNStarkActionView_setupLabel__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateLabelStyle];
}

- (CNStarkActionView)initWithDelegate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CNStarkActionView;
  v5 = [(CNStarkActionView *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    [(CNStarkActionView *)v6 setAccessibilityIdentifier:@"CNStarkActionView"];
    v7 = [(CNStarkActionView *)v6 layer];
    [v7 setAllowsGroupBlending:0];

    v8 = v6;
  }

  return v6;
}

+ (id)propertyTransportButtonWithDelegate:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithDelegate:v3];

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
  v14 = [v4 button];
  [v14 setShowsStroke:v13 ^ 1];

  [v4 setupConstraints];
  [v4 setupClickGestureRecognizer];
  [v4 stateUpdated];

  return v4;
}

+ (id)quickActionButtonWithDelegate:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithDelegate:v3];

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