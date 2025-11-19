@interface MKCatalystButton
+ (CGColor)extraShadowLayerBackgroundColorWithDarkMode:(BOOL)a3 isbuttonEnabled:(BOOL)a4;
+ (id)buttonWithType:(int64_t)a3;
+ (id)catalystButton;
- (CAGradientLayer)gradientLayer;
- (CALayer)extraShadowLayer;
- (CGSize)_maps_intrinsicContentSize;
- (CGSize)intrinsicContentSize;
- (_MKPlaceActionButtonController)buttonController;
- (id)_attributedStringForSubTitle:(id)a3 controlState:(unint64_t)a4;
- (id)_attributedStringForTitle:(id)a3 controlState:(unint64_t)a4;
- (id)_attributedStringWithTitle:(id)a3 subtitle:(id)a4 controlState:(unint64_t)a5;
- (void)_updateColors;
- (void)applyBorder:(BOOL)a3;
- (void)buttonSelected:(id)a3;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)placeActionButtonControllerTextDidChange:(id)a3;
- (void)setButtonController:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setPrimaryTitle:(id)a3;
- (void)setPrimaryTitle:(id)a3 subtitle:(id)a4;
@end

@implementation MKCatalystButton

+ (CGColor)extraShadowLayerBackgroundColorWithDarkMode:(BOOL)a3 isbuttonEnabled:(BOOL)a4
{
  if (a3)
  {
    if (a4)
    {
      v4 = 0.2;
    }

    else
    {
      v4 = 0.02;
    }

    v5 = 1.0;
  }

  else if (a4)
  {
    v5 = 1.0;
    v4 = 0.5;
  }

  else
  {
    v4 = 0.02;
    v5 = 0.0;
  }

  v6 = [MEMORY[0x1E69DC888] colorWithWhite:v5 alpha:v4];
  v7 = [v6 CGColor];

  return v7;
}

+ (id)catalystButton
{
  v2 = [MKCatalystButton buttonWithType:0];
  [v2 setContentHorizontalAlignment:4];
  [v2 setContentEdgeInsets:{5.0, 10.0, 7.0, 10.0}];
  v3 = [v2 titleLabel];
  [v3 setLineBreakMode:0];

  v4 = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
  v5 = [v2 registerForTraitChanges:v4 withAction:sel_traitEnvironment_didChangeTraitCollection_];

  return v2;
}

- (_MKPlaceActionButtonController)buttonController
{
  WeakRetained = objc_loadWeakRetained(&self->_buttonController);

  return WeakRetained;
}

- (void)_updateColors
{
  v48[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E6979518] disableActions];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v4 = [MEMORY[0x1E69DC888] systemRedColor];
  if (([(MKCatalystButton *)self isHighlighted]& 1) != 0)
  {
    v47[0] = [v4 CGColor];
    v47[1] = [v4 CGColor];
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
    v6 = [(MKCatalystButton *)self gradientLayer];
    [v6 setColors:v5];
  }

  else
  {
    v44 = 0.0;
    v45 = 0.0;
    v42 = 0;
    v43 = 0.0;
    [v4 getHue:&v45 saturation:&v44 brightness:&v43 alpha:&v42];
    v5 = [MEMORY[0x1E69DC888] colorWithHue:v45 saturation:v44 brightness:v43 + 0.1 alpha:1.0];
    v48[0] = [v5 CGColor];
    v48[1] = [v4 CGColor];
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
    v7 = [(MKCatalystButton *)self gradientLayer];
    [v7 setColors:v6];
  }

  v8 = [(MKCatalystButton *)self traitCollection];
  if ([v8 activeAppearance])
  {
    if ([(MKCatalystButton *)self isPrimaryButton])
    {
      v9 = 0;
    }

    else
    {
      v9 = [(MKCatalystButton *)self isHighlighted]^ 1;
    }
  }

  else
  {
    v9 = 1;
  }

  v10 = [(MKCatalystButton *)self gradientLayer];
  [v10 setHidden:v9];

  v11 = objc_opt_class();
  v12 = [(MKCatalystButton *)self traitCollection];
  v13 = [v11 extraShadowLayerBackgroundColorWithDarkMode:objc_msgSend(v12 isbuttonEnabled:{"userInterfaceStyle") == 2, -[MKCatalystButton isEnabled](self, "isEnabled")}];
  v14 = [(MKCatalystButton *)self extraShadowLayer];
  [v14 setBackgroundColor:v13];

  [MEMORY[0x1E6979518] setDisableActions:v3];
  v15 = [MEMORY[0x1E69DC888] labelColor];
  v16 = [v15 colorWithAlphaComponent:0.07];
  v17 = [v16 CGColor];
  v18 = [(MKCatalystButton *)self extraShadowLayer];
  [v18 setBorderColor:v17];

  v19 = [MEMORY[0x1E69DC888] blackColor];
  v20 = [v19 CGColor];
  v21 = [(MKCatalystButton *)self extraShadowLayer];
  [v21 setShadowColor:v20];

  v22 = [MEMORY[0x1E69DC888] blackColor];
  v23 = [v22 CGColor];
  v24 = [(MKCatalystButton *)self layer];
  [v24 setShadowColor:v23];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v25 = [&unk_1F16122E8 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v39;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v39 != v27)
        {
          objc_enumerationMutation(&unk_1F16122E8);
        }

        v29 = [*(*(&v38 + 1) + 8 * i) unsignedIntegerValue];
        v30 = [(MKCatalystButton *)self title];
        v31 = [(MKCatalystButton *)self subTitle];
        v32 = [(MKCatalystButton *)self _attributedStringWithTitle:v30 subtitle:v31 controlState:v29];
        [(MKCatalystButton *)self setAttributedTitle:v32 forState:v29];
      }

      v26 = [&unk_1F16122E8 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v26);
  }

  v33 = [(MKCatalystButton *)self subTitle];
  v34 = [(MKCatalystButton *)self titleLabel];
  [v34 setLineBreakMode:4 * (v33 == 0)];

  v35 = [(MKCatalystButton *)self subTitle];
  if (v35)
  {
    v36 = 2;
  }

  else
  {
    v36 = 1;
  }

  v37 = [(MKCatalystButton *)self titleLabel];
  [v37 setNumberOfLines:v36];
}

- (id)_attributedStringForSubTitle:(id)a3 controlState:(unint64_t)a4
{
  v24[2] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69DC888];
  v7 = a3;
  v8 = [v6 secondaryLabelColor];
  v9 = v8;
  if (a4 <= 1)
  {
    if (!a4)
    {
      v11 = [(MKCatalystButton *)self traitCollection];
      if (![v11 activeAppearance])
      {
LABEL_14:

        goto LABEL_15;
      }

      v12 = [(MKCatalystButton *)self isPrimaryButton];

      if (v12)
      {
        v10 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.850000024];
        goto LABEL_13;
      }

      goto LABEL_15;
    }

    if (a4 != 1)
    {
      goto LABEL_15;
    }

LABEL_8:
    v10 = [MEMORY[0x1E69DC888] whiteColor];
    goto LABEL_13;
  }

  switch(a4)
  {
    case 0xFF0000uLL:
      v10 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
      goto LABEL_13;
    case 4uLL:
      goto LABEL_8;
    case 2uLL:
      v10 = [v8 colorWithAlphaComponent:0.3];
LABEL_13:
      v11 = v9;
      v9 = v10;
      goto LABEL_14;
  }

LABEL_15:
  v13 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v7];

  [v13 removeAttribute:*MEMORY[0x1E69DB688] range:{0, objc_msgSend(v13, "length")}];
  v14 = *MEMORY[0x1E69DB650];
  v24[0] = v9;
  v15 = *MEMORY[0x1E69DB648];
  v23[0] = v14;
  v23[1] = v15;
  v16 = [MEMORY[0x1E69DB878] _mapkit_preferredFontForTextStyleInTableViewCell:*MEMORY[0x1E69DDCF8]];
  v24[1] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
  [v13 addAttributes:v17 range:{0, objc_msgSend(v13, "length")}];

  if (-[MKCatalystButton isPrimaryButton](self, "isPrimaryButton") && [v13 length])
  {
    v21 = v15;
    v18 = [MEMORY[0x1E69DB878] _mapkit_preferredFontForTextStyleInTableViewCell:*MEMORY[0x1E69DDD00]];
    v22 = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    [v13 addAttributes:v19 range:{0, 1}];
  }

  return v13;
}

- (id)_attributedStringForTitle:(id)a3 controlState:(unint64_t)a4
{
  v19[2] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v11 = 0;
    goto LABEL_17;
  }

  v6 = MEMORY[0x1E69DC888];
  v7 = a3;
  v8 = [v6 labelColor];
  v9 = v8;
  if (a4 <= 3)
  {
    if (a4 != 1)
    {
      if (a4 != 2)
      {
        goto LABEL_12;
      }

      v10 = [v8 colorWithAlphaComponent:0.3];
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (a4 == 4)
  {
LABEL_10:
    v10 = [MEMORY[0x1E69DC888] whiteColor];
    goto LABEL_11;
  }

  if (a4 != 16711680)
  {
    goto LABEL_12;
  }

  v10 = [MEMORY[0x1E69DC888] secondaryLabelColor];
LABEL_11:
  v12 = v10;

  v9 = v12;
LABEL_12:
  v13 = [(MKCatalystButton *)self traitCollection];
  if (![v13 activeAppearance])
  {
LABEL_15:

    goto LABEL_16;
  }

  v14 = [(MKCatalystButton *)self isPrimaryButton];

  if (v14)
  {
    [MEMORY[0x1E69DC888] whiteColor];
    v9 = v13 = v9;
    goto LABEL_15;
  }

LABEL_16:
  v11 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v7];

  [v11 removeAttribute:*MEMORY[0x1E69DB688] range:{0, objc_msgSend(v11, "length")}];
  v18[0] = *MEMORY[0x1E69DB648];
  v15 = [objc_opt_class() titleFont];
  v18[1] = *MEMORY[0x1E69DB650];
  v19[0] = v15;
  v19[1] = v9;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  [v11 addAttributes:v16 range:{0, objc_msgSend(v11, "length")}];

LABEL_17:

  return v11;
}

- (id)_attributedStringWithTitle:(id)a3 subtitle:(id)a4 controlState:(unint64_t)a5
{
  v8 = a4;
  if (v8)
  {
    v9 = MEMORY[0x1E696AD40];
    v10 = a3;
    v11 = objc_alloc_init(v9);
    v12 = [(MKCatalystButton *)self _attributedStringForTitle:v10 controlState:a5];

    [v11 appendAttributedString:v12];
    v13 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
    [v11 appendAttributedString:v13];

    v14 = [(MKCatalystButton *)self _attributedStringForSubTitle:v8 controlState:a5];
    [v11 appendAttributedString:v14];

    v15 = [v11 copy];
  }

  else
  {
    v11 = a3;
    v15 = [(MKCatalystButton *)self _attributedStringForTitle:v11 controlState:a5];
  }

  v16 = v15;

  return v16;
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
    [(MKCatalystButton *)self setPrimaryTitle:v6 subtitle:v8];
  }
}

- (void)setPrimaryTitle:(id)a3 subtitle:(id)a4
{
  v9 = a3;
  v6 = a4;
  if (v9)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v9];
    [(MKCatalystButton *)self setTitle:v7];

    if (v6)
    {
LABEL_3:
      v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v6];
      [(MKCatalystButton *)self setSubTitle:v8];

      goto LABEL_6;
    }
  }

  else
  {
    [(MKCatalystButton *)self setTitle:0];
    if (v6)
    {
      goto LABEL_3;
    }
  }

  [(MKCatalystButton *)self setSubTitle:0];
LABEL_6:
  [(MKCatalystButton *)self _updateColors];
}

- (void)setPrimaryTitle:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v20 = self;
    v6 = [v4 string];
    v7 = [v6 componentsSeparatedByString:@"\n"];

    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = [*(*(&v21 + 1) + 8 * i) length];
          v16 = [v5 attributedSubstringFromRange:{v12, v15}];
          [v8 addObject:v16];
          v12 += v15 + [@"\n" length];
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    if ([v9 count])
    {
      v17 = [v8 objectAtIndexedSubscript:0];
      v18 = 0;
      if ([v9 count] >= 2)
      {
        v18 = [v8 objectAtIndexedSubscript:1];
      }

      self = v20;
      if (![v18 length])
      {
        v19 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];

        v18 = v19;
      }
    }

    else
    {
      v18 = 0;
      v17 = 0;
      self = v20;
    }
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  [(MKCatalystButton *)self setTitle:v17];
  [(MKCatalystButton *)self setSubTitle:v18];
  [(MKCatalystButton *)self _updateColors];
}

- (void)setEnabled:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MKCatalystButton;
  [(MKCatalystButton *)&v4 setEnabled:a3];
  [(MKCatalystButton *)self _updateColors];
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MKCatalystButton;
  [(MKCatalystButton *)&v4 setHighlighted:a3];
  [(MKCatalystButton *)self _updateColors];
}

- (CAGradientLayer)gradientLayer
{
  gradientLayer = self->_gradientLayer;
  if (!gradientLayer)
  {
    v4 = [MEMORY[0x1E6979380] layer];
    v5 = self->_gradientLayer;
    self->_gradientLayer = v4;

    [(CAGradientLayer *)self->_gradientLayer setHidden:1];
    v6 = [(MKCatalystButton *)self layer];
    v7 = self->_gradientLayer;
    v8 = [(MKCatalystButton *)self extraShadowLayer];
    [v6 insertSublayer:v7 above:v8];

    [(CAGradientLayer *)self->_gradientLayer setActions:0];
    gradientLayer = self->_gradientLayer;
  }

  return gradientLayer;
}

- (CALayer)extraShadowLayer
{
  extraShadowLayer = self->_extraShadowLayer;
  if (!extraShadowLayer)
  {
    v4 = [MEMORY[0x1E6979398] layer];
    v5 = self->_extraShadowLayer;
    self->_extraShadowLayer = v4;

    v6 = [(MKCatalystButton *)self layer];
    [v6 insertSublayer:self->_extraShadowLayer atIndex:0];

    [(CALayer *)self->_extraShadowLayer setActions:0];
    extraShadowLayer = self->_extraShadowLayer;
  }

  return extraShadowLayer;
}

- (void)setButtonController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_buttonController);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_buttonController, obj);
    [obj setDelegate:self];

    v6 = objc_loadWeakRetained(&self->_buttonController);
    v7 = [v6 buttonTitle];
    v8 = objc_loadWeakRetained(&self->_buttonController);
    v9 = [v8 buttonSubTitle];
    [(MKCatalystButton *)self setPrimaryTitle:v7 subtitle:v9];

    [(MKCatalystButton *)self addTarget:self action:sel_buttonSelected_ forControlEvents:64];
    v10 = objc_loadWeakRetained(&self->_buttonController);
    -[MKCatalystButton setEnabled:](self, "setEnabled:", [v10 disabled] ^ 1);
  }
}

- (void)applyBorder:(BOOL)a3
{
  v5 = a3;
  if (a3)
  {
    v3 = [(MKCatalystButton *)self titleLabel];
    v4 = [v3 textColor];
    v7 = [v4 CGColor];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(MKCatalystButton *)self extraShadowLayer];
  [v8 setBorderColor:v7];

  v9 = 0.0;
  if (v5)
  {

    v9 = 1.0;
  }

  v10 = [(MKCatalystButton *)self extraShadowLayer];
  [v10 setBorderWidth:v9];

  if (v5)
  {
    v10 = [(MKCatalystButton *)self titleLabel];
    v4 = [v10 textColor];
    v11 = [v4 CGColor];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(MKCatalystButton *)self gradientLayer];
  [v12 setBorderColor:v11];

  if (v5)
  {
  }

  v13 = [(MKCatalystButton *)self gradientLayer];
  [v13 setBorderWidth:v9];
}

- (void)buttonSelected:(id)a3
{
  v8 = a3;
  v4 = [(MKCatalystButton *)self buttonController];

  if (v4)
  {
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
  }
}

- (void)layoutSubviews
{
  v33.receiver = self;
  v33.super_class = MKCatalystButton;
  [(MKCatalystButton *)&v33 layoutSubviews];
  v3 = [MEMORY[0x1E6979518] disableActions];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(MKCatalystButton *)self bounds];
  v4 = round(CGRectGetHeight(v34) * 0.189999998);
  v5 = [(MKCatalystButton *)self layer];
  [v5 setMasksToBounds:0];

  v6 = [(MKCatalystButton *)self layer];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(MKCatalystButton *)self extraShadowLayer];
  [v15 setFrame:{v8, v10, v12, v14}];

  v16 = [(MKCatalystButton *)self extraShadowLayer];
  [v16 setMasksToBounds:0];

  v17 = [(MKCatalystButton *)self extraShadowLayer];
  [v17 setCornerRadius:v4];

  v18 = *MEMORY[0x1E69796E8];
  v19 = [(MKCatalystButton *)self extraShadowLayer];
  [v19 setCornerCurve:v18];

  v20 = [(MKCatalystButton *)self layer];
  [v20 bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = [(MKCatalystButton *)self gradientLayer];
  [v29 setFrame:{v22, v24, v26, v28}];

  v30 = [(MKCatalystButton *)self gradientLayer];
  [v30 setCornerRadius:v4];

  v31 = [(MKCatalystButton *)self gradientLayer];
  [v31 setCornerCurve:v18];

  v32 = [(MKCatalystButton *)self gradientLayer];
  [v32 setMasksToBounds:1];

  [MEMORY[0x1E6979518] setDisableActions:v3];
}

- (CGSize)_maps_intrinsicContentSize
{
  v10.receiver = self;
  v10.super_class = MKCatalystButton;
  [(MKCatalystButton *)&v10 intrinsicContentSize];
  v4 = v3;
  v5 = [(MKCatalystButton *)self subTitle];
  if (v5)
  {
    [(MKCatalystButton *)self tallHeight];
  }

  else
  {
    [(MKCatalystButton *)self shortHeight];
  }

  v7 = v6;

  v8 = v4;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v3 = [(MKCatalystButton *)self subTitle];

  v4 = *MEMORY[0x1E69DE788];
  if (v3)
  {
    [(MKCatalystButton *)self tallHeight];
  }

  else
  {
    [(MKCatalystButton *)self shortHeight];
  }

  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = MKCatalystButton;
  [(MKCatalystButton *)&v3 didMoveToSuperview];
  [(MKCatalystButton *)self _updateColors];
}

+ (id)buttonWithType:(int64_t)a3
{
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___MKCatalystButton;
  v3 = objc_msgSendSuper2(&v6, sel_buttonWithType_, a3);
  v4 = v3;
  if (v3)
  {
    [v3 setTallHeight:42.0];
    [v4 setShortHeight:22.0];
  }

  return v4;
}

@end