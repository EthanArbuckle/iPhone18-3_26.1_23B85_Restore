@interface MKPlaceHeaderButton
- (BOOL)_isTintColorWhite;
- (MKPlaceHeaderButton)init;
- (MKPlaceHeaderButton)initWithPrimaryType:(unint64_t)a3;
- (_MKPlaceActionButtonController)buttonController;
- (id)_primaryButtonColor;
- (void)_contentSizeDidChange;
- (void)_setVibrantView;
- (void)_updateStyleNonPrimaryButton;
- (void)_updateStylePrimaryButton;
- (void)applyButtonDefaultConfiguration;
- (void)buttonSelected:(id)a3;
- (void)infoCardThemeChanged;
- (void)placeActionButtonControllerTextDidChange:(id)a3;
- (void)setButtonController:(id)a3;
- (void)setPrimaryTitle:(id)a3;
- (void)setPrimaryTitle:(id)a3 subtitle:(id)a4;
- (void)updateButtonWithHighlighted:(BOOL)a3;
@end

@implementation MKPlaceHeaderButton

- (_MKPlaceActionButtonController)buttonController
{
  WeakRetained = objc_loadWeakRetained(&self->_buttonController);

  return WeakRetained;
}

- (void)placeActionButtonControllerTextDidChange:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_buttonController);

  if (WeakRetained == v4)
  {
    v9 = objc_loadWeakRetained(&self->_buttonController);
    v6 = [v9 buttonTitle];
    v7 = objc_loadWeakRetained(&self->_buttonController);
    v8 = [v7 buttonSubTitle];
    [(MKPlaceHeaderButton *)self setPrimaryTitle:v6 subtitle:v8];
  }
}

- (void)setPrimaryTitle:(id)a3 subtitle:(id)a4
{
  v47[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = &stru_1F15B23C0;
  }

  if ([v7 length])
  {
    v10 = 0.0;
    v11 = -1.0;
    v12 = 0.0;
    v13 = 0.0;
  }

  else
  {
    v11 = *MEMORY[0x1E69DDCE0];
    v10 = *(MEMORY[0x1E69DDCE0] + 8);
    v12 = *(MEMORY[0x1E69DDCE0] + 16);
    v13 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  [(MKPlaceHeaderButton *)self setContentEdgeInsets:v11, v10, v12, v13];
  v14 = [v8 length];
  v15 = objc_alloc(MEMORY[0x1E696AD40]);
  v16 = *MEMORY[0x1E69DB648];
  if (v14)
  {
    v44 = *MEMORY[0x1E69DB648];
    v17 = MEMORY[0x1E69DB878];
    v18 = MEMORY[0x1E69DB880];
    if (_MKPlaceCardUseSmallerFont_onceToken != -1)
    {
      dispatch_once(&_MKPlaceCardUseSmallerFont_onceToken, &__block_literal_global_12747);
    }

    v19 = *MEMORY[0x1E69DDD28];
    v20 = *MEMORY[0x1E69DDD78];
    if (_MKPlaceCardUseSmallerFont_smallerFont)
    {
      v21 = *MEMORY[0x1E69DDD28];
    }

    else
    {
      v21 = *MEMORY[0x1E69DDD78];
    }

    v22 = [v18 preferredFontDescriptorWithTextStyle:v21 addingSymbolicTraits:2 options:0];
    v23 = [v17 fontWithDescriptor:v22 size:0.0];
    v45 = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
    v25 = [v15 initWithString:v9 attributes:v24];

    v26 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
    [v25 appendAttributedString:v26];

    v27 = objc_alloc(MEMORY[0x1E696AAB0]);
    v42 = v16;
    v28 = MEMORY[0x1E69DB878];
    if (_MKPlaceCardUseSmallerFont_onceToken != -1)
    {
      dispatch_once(&_MKPlaceCardUseSmallerFont_onceToken, &__block_literal_global_12747);
    }

    if (_MKPlaceCardUseSmallerFont_smallerFont)
    {
      v29 = v19;
    }

    else
    {
      v29 = v20;
    }

    v30 = [v28 preferredFontForTextStyle:v29];
    [v30 pointSize];
    v31 = [v28 systemFontOfSize:? weight:?];
    v43 = v31;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v33 = [v27 initWithString:v8 attributes:v32];
    [v25 appendAttributedString:v33];
  }

  else
  {
    v46 = *MEMORY[0x1E69DB648];
    v34 = MEMORY[0x1E69DB878];
    v35 = MEMORY[0x1E69DB880];
    if (_MKPlaceCardUseSmallerFont_onceToken != -1)
    {
      dispatch_once(&_MKPlaceCardUseSmallerFont_onceToken, &__block_literal_global_12747);
    }

    if (_MKPlaceCardUseSmallerFont_smallerFont)
    {
      v36 = MEMORY[0x1E69DDD28];
    }

    else
    {
      v36 = MEMORY[0x1E69DDD78];
    }

    v30 = [v35 preferredFontDescriptorWithTextStyle:*v36 addingSymbolicTraits:2 options:0];
    v31 = [v34 fontWithDescriptor:v30 size:0.0];
    v47[0] = v31;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1];
    v25 = [v15 initWithString:v9 attributes:v32];
  }

  v37 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v38 = [v37 mutableCopy];

  [v38 setAlignment:1];
  [v38 setParagraphSpacing:-3.0];
  [v38 setLineBreakMode:5];
  v39 = [v25 length];
  [v25 addAttribute:*MEMORY[0x1E69DB688] value:v38 range:{0, v39}];
  if (([(MKPlaceHeaderButton *)self isEnabled]& 1) != 0)
  {
    v40 = [(UIView *)self mk_theme];
    [v40 tintColor];
  }

  else
  {
    v40 = [MEMORY[0x1E69DC888] labelColor];
    [v40 colorWithAlphaComponent:0.3];
  }
  v41 = ;

  [v25 addAttribute:*MEMORY[0x1E69DB650] value:v41 range:{0, v39}];
  [(MKPlaceHeaderButton *)self setAttributedTitle:v25 forState:0];
}

- (void)updateButtonWithHighlighted:(BOOL)a3
{
  if (a3)
  {
    if (self->_primary && ![(MKPlaceHeaderButton *)self _isTintColorWhite])
    {
      v7 = [(UIView *)self mk_theme];
      v5 = [v7 headerPrimaryButtonHighlightedColor];
      [(MKPlaceHeaderButton *)self setTintColor:v5];
      goto LABEL_9;
    }

    v7 = [(UIView *)self mk_theme];
    v4 = [v7 buttonHighlightedColor];
LABEL_8:
    v5 = v4;
    v6 = [(MKVibrantView *)self->_vibrantView contentView];
    [v6 setBackgroundColor:v5];

LABEL_9:
    goto LABEL_10;
  }

  if (!self->_primary || [(MKPlaceHeaderButton *)self _isTintColorWhite])
  {
    v7 = [(UIView *)self mk_theme];
    v4 = [v7 buttonNormalColor];
    goto LABEL_8;
  }

  v7 = [(MKPlaceHeaderButton *)self _primaryButtonColor];
  [(MKPlaceHeaderButton *)self setTintColor:?];
LABEL_10:
}

- (void)_updateStyleNonPrimaryButton
{
  if (!self->_primary)
  {
    [(MKPlaceHeaderButton *)self updateButtonWithHighlighted:self->_buttonHighlighted];
  }
}

- (void)_updateStylePrimaryButton
{
  if (self->_primary)
  {
    [(MKPlaceHeaderButton *)self updateButtonWithHighlighted:self->_buttonHighlighted];
    if (![(MKPlaceHeaderButton *)self _isTintColorWhite])
    {
      v3 = [MEMORY[0x1E69DCAB8] _mapkit_imageNamed:@"Button"];
      [(MKPlaceHeaderButton *)self setBackgroundImage:v3 forState:0];
    }
  }
}

- (void)setPrimaryTitle:(id)a3
{
  v4 = a3;
  v5 = [v4 length];
  v10 = [(MKPlaceHeaderButton *)self _primaryButtonTextColor];
  v6 = [v4 mutableCopy];
  v7 = *MEMORY[0x1E69DB650];
  [v6 addAttribute:*MEMORY[0x1E69DB650] value:v10 range:{0, v5}];
  [(MKPlaceHeaderButton *)self setAttributedTitle:v6 forState:0];
  v8 = [v10 colorWithAlphaComponent:0.25];
  v9 = [v4 mutableCopy];

  [v9 addAttribute:v7 value:v8 range:{0, v5}];
  [(MKPlaceHeaderButton *)self setAttributedTitle:v9 forState:1];
}

- (id)_primaryButtonColor
{
  buttonType = self->_buttonType;
  if (buttonType <= 4)
  {
    if (buttonType == 2)
    {
      v4 = [(UIView *)self mk_theme];
      if ([v4 isDarkTheme])
      {
        v7 = 0.243137255;
        v8 = 0.776470602;
        v9 = 0.333333343;
      }

      else
      {
        v7 = 0.270000011;
        v8 = 0.860000014;
        v9 = 0.370000005;
      }

      v5 = [MEMORY[0x1E69DC888] colorWithRed:v7 green:v8 blue:v9 alpha:1.0];
    }

    else
    {
      v4 = [(UIView *)self mk_theme];
      v5 = [v4 tintColor];
    }

    v2 = v5;
  }

  return v2;
}

- (BOOL)_isTintColorWhite
{
  v2 = [(UIView *)self mk_theme];
  v3 = [v2 tintColor];
  v4 = [MEMORY[0x1E69DC888] whiteColor];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (void)buttonSelected:(id)a3
{
  v4 = a3;
  if (!self->_primary)
  {
    v8 = v4;
    WeakRetained = objc_loadWeakRetained(&self->_buttonController);
    v6 = [WeakRetained buttonSelectedBlock];

    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v8;
      }

      else
      {
        v7 = 0;
      }

      (v6)[2](v6, v7);
    }

    v4 = v8;
  }
}

- (void)applyButtonDefaultConfiguration
{
  [(MKPlaceHeaderButton *)self _accessibilitySetInterfaceStyleIntent:1];
  [(MKPlaceHeaderButton *)self setTitleEdgeInsets:5.0, 10.0, 5.0, 10.0];
  WeakRetained = objc_loadWeakRetained(&self->_buttonController);

  if (WeakRetained)
  {
    [(MKPlaceHeaderButton *)self addTarget:self action:sel_buttonSelected_ forControlEvents:0x2000];
  }

  [(MKPlaceHeaderButton *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [(MKPlaceHeaderButton *)self heightAnchor];
  v5 = MEMORY[0x1E69DB878];
  v6 = MEMORY[0x1E69DB880];
  if (_MKPlaceCardUseSmallerFont_onceToken != -1)
  {
    dispatch_once(&_MKPlaceCardUseSmallerFont_onceToken, &__block_literal_global_12747);
  }

  if (_MKPlaceCardUseSmallerFont_smallerFont)
  {
    v7 = MEMORY[0x1E69DDD28];
  }

  else
  {
    v7 = MEMORY[0x1E69DDD78];
  }

  v8 = [v6 preferredFontDescriptorWithTextStyle:*v7 addingSymbolicTraits:2 options:0];
  v9 = [v5 fontWithDescriptor:v8 size:0.0];
  [v9 _mapkit_scaledValueForValue:52.0];
  v10 = [v4 constraintEqualToConstant:?];
  heightConstraint = self->_heightConstraint;
  self->_heightConstraint = v10;

  [(NSLayoutConstraint *)self->_heightConstraint setActive:1];
  v12 = [MEMORY[0x1E696AD88] defaultCenter];
  [v12 addObserver:self selector:sel__contentSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];
}

- (void)infoCardThemeChanged
{
  v7.receiver = self;
  v7.super_class = MKPlaceHeaderButton;
  [(UIView *)&v7 infoCardThemeChanged];
  if (self->_primary)
  {
    [(MKPlaceHeaderButton *)self _updateStylePrimaryButton];
  }

  else
  {
    [(MKPlaceHeaderButton *)self _updateStyleNonPrimaryButton];
    WeakRetained = objc_loadWeakRetained(&self->_buttonController);
    v4 = [WeakRetained buttonTitle];
    v5 = objc_loadWeakRetained(&self->_buttonController);
    v6 = [v5 buttonSubTitle];
    [(MKPlaceHeaderButton *)self setPrimaryTitle:v4 subtitle:v6];
  }
}

- (void)_contentSizeDidChange
{
  v3 = MEMORY[0x1E69DB878];
  v4 = MEMORY[0x1E69DB880];
  if (_MKPlaceCardUseSmallerFont_onceToken != -1)
  {
    dispatch_once(&_MKPlaceCardUseSmallerFont_onceToken, &__block_literal_global_12747);
  }

  if (_MKPlaceCardUseSmallerFont_smallerFont)
  {
    v5 = MEMORY[0x1E69DDD28];
  }

  else
  {
    v5 = MEMORY[0x1E69DDD78];
  }

  v6 = [v4 preferredFontDescriptorWithTextStyle:*v5 addingSymbolicTraits:2 options:0];
  v7 = [v3 fontWithDescriptor:v6 size:0.0];
  [v7 _mapkit_scaledValueForValue:52.0];
  [(NSLayoutConstraint *)self->_heightConstraint setConstant:?];

  if (self->_primary)
  {
    WeakRetained = [(MKPlaceHeaderButton *)self titleLabel];
    v8 = [WeakRetained attributedText];
    [(MKPlaceHeaderButton *)self setPrimaryTitle:v8];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_buttonController);
    v8 = [WeakRetained buttonTitle];
    v9 = objc_loadWeakRetained(&self->_buttonController);
    v10 = [v9 buttonSubTitle];
    [(MKPlaceHeaderButton *)self setPrimaryTitle:v8 subtitle:v10];
  }
}

- (void)_setVibrantView
{
  v28[4] = *MEMORY[0x1E69E9840];
  if (self->_primary)
  {
    goto LABEL_14;
  }

  if (![(MKPlaceHeaderButton *)self _isTintColorWhite])
  {
    goto LABEL_11;
  }

  if (self->_primary)
  {
LABEL_14:
    if (![(MKPlaceHeaderButton *)self _isTintColorWhite])
    {
      if (self->_primary)
      {
        return;
      }

      goto LABEL_7;
    }

LABEL_11:
    v9 = [MKVibrantView alloc];
    v10 = [(MKVibrantView *)v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    vibrantView = self->_vibrantView;
    self->_vibrantView = v10;

    [(MKVibrantView *)self->_vibrantView setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [MEMORY[0x1E69DC888] clearColor];
    [(MKVibrantView *)self->_vibrantView setBackgroundColor:v12];

    [(MKVibrantView *)self->_vibrantView setUserInteractionEnabled:0];
    [(MKVibrantView *)self->_vibrantView setContinuousCornerRadius:8.0];
    [(MKPlaceHeaderButton *)self insertSubview:self->_vibrantView atIndex:0];
    v23 = MEMORY[0x1E696ACD8];
    v27 = [(MKVibrantView *)self->_vibrantView topAnchor];
    v25 = [(MKPlaceHeaderButton *)self topAnchor];
    v24 = [v27 constraintEqualToAnchor:v25];
    v28[0] = v24;
    v13 = [(MKVibrantView *)self->_vibrantView bottomAnchor];
    v14 = [(MKPlaceHeaderButton *)self bottomAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v28[1] = v15;
    v16 = [(MKVibrantView *)self->_vibrantView leadingAnchor];
    v17 = [(MKPlaceHeaderButton *)self leadingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v28[2] = v18;
    v19 = [(MKVibrantView *)self->_vibrantView trailingAnchor];
    v20 = [(MKPlaceHeaderButton *)self trailingAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    v28[3] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];
    [v23 activateConstraints:v22];

    return;
  }

LABEL_7:
  if ([(MKPlaceHeaderButton *)self _isTintColorWhite])
  {
    v3 = [(MKPlaceHeaderButton *)self layer];
    [v3 setCornerRadius:8.0];

    v4 = *MEMORY[0x1E69796E8];
    v5 = [(MKPlaceHeaderButton *)self layer];
    [v5 setCornerCurve:v4];

    v6 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.200000003];
    v7 = [v6 CGColor];
    v8 = [(MKPlaceHeaderButton *)self layer];
    [v8 setBorderColor:v7];

    v26 = [(MKPlaceHeaderButton *)self layer];
    [v26 setBorderWidth:1.0];
  }
}

- (void)setButtonController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_buttonController);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_buttonController, obj);
    [obj setDelegate:self];

    -[MKPlaceHeaderButton setEnabled:](self, "setEnabled:", [obj disabled] ^ 1);
    [(MKPlaceHeaderButton *)self applyButtonDefaultConfiguration];
    [(MKPlaceHeaderButton *)self _updateStyleNonPrimaryButton];
    v6 = objc_loadWeakRetained(&self->_buttonController);
    v7 = [v6 buttonTitle];
    v8 = objc_loadWeakRetained(&self->_buttonController);
    v9 = [v8 buttonSubTitle];
    [(MKPlaceHeaderButton *)self setPrimaryTitle:v7 subtitle:v9];

    [(MKPlaceHeaderButton *)self _setVibrantView];
  }
}

- (MKPlaceHeaderButton)initWithPrimaryType:(unint64_t)a3
{
  v4 = [(MKPlaceHeaderButton *)self init];
  v5 = v4;
  if (v4)
  {
    v4->_primary = 1;
    v4->_buttonType = a3;
    [(MKPlaceHeaderButton *)v4 applyButtonDefaultConfiguration];
    [(MKPlaceHeaderButton *)v5 _setVibrantView];
    [(MKPlaceHeaderButton *)v5 _updateStylePrimaryButton];
  }

  return v5;
}

- (MKPlaceHeaderButton)init
{
  v8.receiver = self;
  v8.super_class = MKPlaceHeaderButton;
  v2 = [(MKPlaceHeaderButton *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(MKPlaceHeaderButton *)v2 titleLabel];
    [v4 setNumberOfLines:3];

    v5 = [(MKPlaceHeaderButton *)v3 titleLabel];
    [v5 setMinimumScaleFactor:0.699999988];

    v6 = [(MKPlaceHeaderButton *)v3 titleLabel];
    [v6 setAdjustsFontSizeToFitWidth:1];
  }

  return v3;
}

@end