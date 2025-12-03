@interface MKCatalystButton
+ (CGColor)extraShadowLayerBackgroundColorWithDarkMode:(BOOL)mode isbuttonEnabled:(BOOL)enabled;
+ (id)buttonWithType:(int64_t)type;
+ (id)catalystButton;
- (CAGradientLayer)gradientLayer;
- (CALayer)extraShadowLayer;
- (CGSize)_maps_intrinsicContentSize;
- (CGSize)intrinsicContentSize;
- (_MKPlaceActionButtonController)buttonController;
- (id)_attributedStringForSubTitle:(id)title controlState:(unint64_t)state;
- (id)_attributedStringForTitle:(id)title controlState:(unint64_t)state;
- (id)_attributedStringWithTitle:(id)title subtitle:(id)subtitle controlState:(unint64_t)state;
- (void)_updateColors;
- (void)applyBorder:(BOOL)border;
- (void)buttonSelected:(id)selected;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)placeActionButtonControllerTextDidChange:(id)change;
- (void)setButtonController:(id)controller;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setPrimaryTitle:(id)title;
- (void)setPrimaryTitle:(id)title subtitle:(id)subtitle;
@end

@implementation MKCatalystButton

+ (CGColor)extraShadowLayerBackgroundColorWithDarkMode:(BOOL)mode isbuttonEnabled:(BOOL)enabled
{
  if (mode)
  {
    if (enabled)
    {
      v4 = 0.2;
    }

    else
    {
      v4 = 0.02;
    }

    v5 = 1.0;
  }

  else if (enabled)
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
  cGColor = [v6 CGColor];

  return cGColor;
}

+ (id)catalystButton
{
  v2 = [MKCatalystButton buttonWithType:0];
  [v2 setContentHorizontalAlignment:4];
  [v2 setContentEdgeInsets:{5.0, 10.0, 7.0, 10.0}];
  titleLabel = [v2 titleLabel];
  [titleLabel setLineBreakMode:0];

  systemTraitsAffectingColorAppearance = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
  v5 = [v2 registerForTraitChanges:systemTraitsAffectingColorAppearance withAction:sel_traitEnvironment_didChangeTraitCollection_];

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
  disableActions = [MEMORY[0x1E6979518] disableActions];
  [MEMORY[0x1E6979518] setDisableActions:1];
  systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
  if (([(MKCatalystButton *)self isHighlighted]& 1) != 0)
  {
    v47[0] = [systemRedColor CGColor];
    v47[1] = [systemRedColor CGColor];
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
    gradientLayer = [(MKCatalystButton *)self gradientLayer];
    [gradientLayer setColors:v5];
  }

  else
  {
    v44 = 0.0;
    v45 = 0.0;
    v42 = 0;
    v43 = 0.0;
    [systemRedColor getHue:&v45 saturation:&v44 brightness:&v43 alpha:&v42];
    v5 = [MEMORY[0x1E69DC888] colorWithHue:v45 saturation:v44 brightness:v43 + 0.1 alpha:1.0];
    v48[0] = [v5 CGColor];
    v48[1] = [systemRedColor CGColor];
    gradientLayer = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
    gradientLayer2 = [(MKCatalystButton *)self gradientLayer];
    [gradientLayer2 setColors:gradientLayer];
  }

  traitCollection = [(MKCatalystButton *)self traitCollection];
  if ([traitCollection activeAppearance])
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

  gradientLayer3 = [(MKCatalystButton *)self gradientLayer];
  [gradientLayer3 setHidden:v9];

  v11 = objc_opt_class();
  traitCollection2 = [(MKCatalystButton *)self traitCollection];
  v13 = [v11 extraShadowLayerBackgroundColorWithDarkMode:objc_msgSend(traitCollection2 isbuttonEnabled:{"userInterfaceStyle") == 2, -[MKCatalystButton isEnabled](self, "isEnabled")}];
  extraShadowLayer = [(MKCatalystButton *)self extraShadowLayer];
  [extraShadowLayer setBackgroundColor:v13];

  [MEMORY[0x1E6979518] setDisableActions:disableActions];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v16 = [labelColor colorWithAlphaComponent:0.07];
  cGColor = [v16 CGColor];
  extraShadowLayer2 = [(MKCatalystButton *)self extraShadowLayer];
  [extraShadowLayer2 setBorderColor:cGColor];

  blackColor = [MEMORY[0x1E69DC888] blackColor];
  cGColor2 = [blackColor CGColor];
  extraShadowLayer3 = [(MKCatalystButton *)self extraShadowLayer];
  [extraShadowLayer3 setShadowColor:cGColor2];

  blackColor2 = [MEMORY[0x1E69DC888] blackColor];
  cGColor3 = [blackColor2 CGColor];
  layer = [(MKCatalystButton *)self layer];
  [layer setShadowColor:cGColor3];

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

        unsignedIntegerValue = [*(*(&v38 + 1) + 8 * i) unsignedIntegerValue];
        title = [(MKCatalystButton *)self title];
        subTitle = [(MKCatalystButton *)self subTitle];
        v32 = [(MKCatalystButton *)self _attributedStringWithTitle:title subtitle:subTitle controlState:unsignedIntegerValue];
        [(MKCatalystButton *)self setAttributedTitle:v32 forState:unsignedIntegerValue];
      }

      v26 = [&unk_1F16122E8 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v26);
  }

  subTitle2 = [(MKCatalystButton *)self subTitle];
  titleLabel = [(MKCatalystButton *)self titleLabel];
  [titleLabel setLineBreakMode:4 * (subTitle2 == 0)];

  subTitle3 = [(MKCatalystButton *)self subTitle];
  if (subTitle3)
  {
    v36 = 2;
  }

  else
  {
    v36 = 1;
  }

  titleLabel2 = [(MKCatalystButton *)self titleLabel];
  [titleLabel2 setNumberOfLines:v36];
}

- (id)_attributedStringForSubTitle:(id)title controlState:(unint64_t)state
{
  v24[2] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E69DC888];
  titleCopy = title;
  secondaryLabelColor = [v6 secondaryLabelColor];
  v9 = secondaryLabelColor;
  if (state <= 1)
  {
    if (!state)
    {
      traitCollection = [(MKCatalystButton *)self traitCollection];
      if (![traitCollection activeAppearance])
      {
LABEL_14:

        goto LABEL_15;
      }

      isPrimaryButton = [(MKCatalystButton *)self isPrimaryButton];

      if (isPrimaryButton)
      {
        whiteColor = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.850000024];
        goto LABEL_13;
      }

      goto LABEL_15;
    }

    if (state != 1)
    {
      goto LABEL_15;
    }

LABEL_8:
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    goto LABEL_13;
  }

  switch(state)
  {
    case 0xFF0000uLL:
      whiteColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
      goto LABEL_13;
    case 4uLL:
      goto LABEL_8;
    case 2uLL:
      whiteColor = [secondaryLabelColor colorWithAlphaComponent:0.3];
LABEL_13:
      traitCollection = v9;
      v9 = whiteColor;
      goto LABEL_14;
  }

LABEL_15:
  v13 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:titleCopy];

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

- (id)_attributedStringForTitle:(id)title controlState:(unint64_t)state
{
  v19[2] = *MEMORY[0x1E69E9840];
  if (!title)
  {
    v11 = 0;
    goto LABEL_17;
  }

  v6 = MEMORY[0x1E69DC888];
  titleCopy = title;
  labelColor = [v6 labelColor];
  v9 = labelColor;
  if (state <= 3)
  {
    if (state != 1)
    {
      if (state != 2)
      {
        goto LABEL_12;
      }

      whiteColor = [labelColor colorWithAlphaComponent:0.3];
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (state == 4)
  {
LABEL_10:
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    goto LABEL_11;
  }

  if (state != 16711680)
  {
    goto LABEL_12;
  }

  whiteColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
LABEL_11:
  v12 = whiteColor;

  v9 = v12;
LABEL_12:
  traitCollection = [(MKCatalystButton *)self traitCollection];
  if (![traitCollection activeAppearance])
  {
LABEL_15:

    goto LABEL_16;
  }

  isPrimaryButton = [(MKCatalystButton *)self isPrimaryButton];

  if (isPrimaryButton)
  {
    [MEMORY[0x1E69DC888] whiteColor];
    v9 = traitCollection = v9;
    goto LABEL_15;
  }

LABEL_16:
  v11 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:titleCopy];

  [v11 removeAttribute:*MEMORY[0x1E69DB688] range:{0, objc_msgSend(v11, "length")}];
  v18[0] = *MEMORY[0x1E69DB648];
  titleFont = [objc_opt_class() titleFont];
  v18[1] = *MEMORY[0x1E69DB650];
  v19[0] = titleFont;
  v19[1] = v9;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  [v11 addAttributes:v16 range:{0, objc_msgSend(v11, "length")}];

LABEL_17:

  return v11;
}

- (id)_attributedStringWithTitle:(id)title subtitle:(id)subtitle controlState:(unint64_t)state
{
  subtitleCopy = subtitle;
  if (subtitleCopy)
  {
    v9 = MEMORY[0x1E696AD40];
    titleCopy = title;
    titleCopy2 = objc_alloc_init(v9);
    v12 = [(MKCatalystButton *)self _attributedStringForTitle:titleCopy controlState:state];

    [titleCopy2 appendAttributedString:v12];
    v13 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
    [titleCopy2 appendAttributedString:v13];

    v14 = [(MKCatalystButton *)self _attributedStringForSubTitle:subtitleCopy controlState:state];
    [titleCopy2 appendAttributedString:v14];

    v15 = [titleCopy2 copy];
  }

  else
  {
    titleCopy2 = title;
    v15 = [(MKCatalystButton *)self _attributedStringForTitle:titleCopy2 controlState:state];
  }

  v16 = v15;

  return v16;
}

- (void)placeActionButtonControllerTextDidChange:(id)change
{
  changeCopy = change;
  WeakRetained = objc_loadWeakRetained(&self->_buttonController);

  if (WeakRetained == changeCopy)
  {
    v9 = objc_loadWeakRetained(&self->_buttonController);
    buttonTitle = [v9 buttonTitle];
    v7 = objc_loadWeakRetained(&self->_buttonController);
    buttonSubTitle = [v7 buttonSubTitle];
    [(MKCatalystButton *)self setPrimaryTitle:buttonTitle subtitle:buttonSubTitle];
  }
}

- (void)setPrimaryTitle:(id)title subtitle:(id)subtitle
{
  titleCopy = title;
  subtitleCopy = subtitle;
  if (titleCopy)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:titleCopy];
    [(MKCatalystButton *)self setTitle:v7];

    if (subtitleCopy)
    {
LABEL_3:
      v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:subtitleCopy];
      [(MKCatalystButton *)self setSubTitle:v8];

      goto LABEL_6;
    }
  }

  else
  {
    [(MKCatalystButton *)self setTitle:0];
    if (subtitleCopy)
    {
      goto LABEL_3;
    }
  }

  [(MKCatalystButton *)self setSubTitle:0];
LABEL_6:
  [(MKCatalystButton *)self _updateColors];
}

- (void)setPrimaryTitle:(id)title
{
  v26 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  v5 = titleCopy;
  if (titleCopy)
  {
    selfCopy = self;
    string = [titleCopy string];
    v7 = [string componentsSeparatedByString:@"\n"];

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

      self = selfCopy;
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
      self = selfCopy;
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

- (void)setEnabled:(BOOL)enabled
{
  v4.receiver = self;
  v4.super_class = MKCatalystButton;
  [(MKCatalystButton *)&v4 setEnabled:enabled];
  [(MKCatalystButton *)self _updateColors];
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = MKCatalystButton;
  [(MKCatalystButton *)&v4 setHighlighted:highlighted];
  [(MKCatalystButton *)self _updateColors];
}

- (CAGradientLayer)gradientLayer
{
  gradientLayer = self->_gradientLayer;
  if (!gradientLayer)
  {
    layer = [MEMORY[0x1E6979380] layer];
    v5 = self->_gradientLayer;
    self->_gradientLayer = layer;

    [(CAGradientLayer *)self->_gradientLayer setHidden:1];
    layer2 = [(MKCatalystButton *)self layer];
    v7 = self->_gradientLayer;
    extraShadowLayer = [(MKCatalystButton *)self extraShadowLayer];
    [layer2 insertSublayer:v7 above:extraShadowLayer];

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
    layer = [MEMORY[0x1E6979398] layer];
    v5 = self->_extraShadowLayer;
    self->_extraShadowLayer = layer;

    layer2 = [(MKCatalystButton *)self layer];
    [layer2 insertSublayer:self->_extraShadowLayer atIndex:0];

    [(CALayer *)self->_extraShadowLayer setActions:0];
    extraShadowLayer = self->_extraShadowLayer;
  }

  return extraShadowLayer;
}

- (void)setButtonController:(id)controller
{
  obj = controller;
  WeakRetained = objc_loadWeakRetained(&self->_buttonController);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_buttonController, obj);
    [obj setDelegate:self];

    v6 = objc_loadWeakRetained(&self->_buttonController);
    buttonTitle = [v6 buttonTitle];
    v8 = objc_loadWeakRetained(&self->_buttonController);
    buttonSubTitle = [v8 buttonSubTitle];
    [(MKCatalystButton *)self setPrimaryTitle:buttonTitle subtitle:buttonSubTitle];

    [(MKCatalystButton *)self addTarget:self action:sel_buttonSelected_ forControlEvents:64];
    v10 = objc_loadWeakRetained(&self->_buttonController);
    -[MKCatalystButton setEnabled:](self, "setEnabled:", [v10 disabled] ^ 1);
  }
}

- (void)applyBorder:(BOOL)border
{
  borderCopy = border;
  if (border)
  {
    titleLabel = [(MKCatalystButton *)self titleLabel];
    textColor = [titleLabel textColor];
    cGColor = [textColor CGColor];
  }

  else
  {
    cGColor = 0;
  }

  extraShadowLayer = [(MKCatalystButton *)self extraShadowLayer];
  [extraShadowLayer setBorderColor:cGColor];

  v9 = 0.0;
  if (borderCopy)
  {

    v9 = 1.0;
  }

  extraShadowLayer2 = [(MKCatalystButton *)self extraShadowLayer];
  [extraShadowLayer2 setBorderWidth:v9];

  if (borderCopy)
  {
    extraShadowLayer2 = [(MKCatalystButton *)self titleLabel];
    textColor = [extraShadowLayer2 textColor];
    cGColor2 = [textColor CGColor];
  }

  else
  {
    cGColor2 = 0;
  }

  gradientLayer = [(MKCatalystButton *)self gradientLayer];
  [gradientLayer setBorderColor:cGColor2];

  if (borderCopy)
  {
  }

  gradientLayer2 = [(MKCatalystButton *)self gradientLayer];
  [gradientLayer2 setBorderWidth:v9];
}

- (void)buttonSelected:(id)selected
{
  selectedCopy = selected;
  buttonController = [(MKCatalystButton *)self buttonController];

  if (buttonController)
  {
    WeakRetained = objc_loadWeakRetained(&self->_buttonController);
    buttonSelectedBlock = [WeakRetained buttonSelectedBlock];

    if (buttonSelectedBlock)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = selectedCopy;
      }

      else
      {
        v7 = 0;
      }

      (buttonSelectedBlock)[2](buttonSelectedBlock, v7);
    }
  }
}

- (void)layoutSubviews
{
  v33.receiver = self;
  v33.super_class = MKCatalystButton;
  [(MKCatalystButton *)&v33 layoutSubviews];
  disableActions = [MEMORY[0x1E6979518] disableActions];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(MKCatalystButton *)self bounds];
  v4 = round(CGRectGetHeight(v34) * 0.189999998);
  layer = [(MKCatalystButton *)self layer];
  [layer setMasksToBounds:0];

  layer2 = [(MKCatalystButton *)self layer];
  [layer2 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  extraShadowLayer = [(MKCatalystButton *)self extraShadowLayer];
  [extraShadowLayer setFrame:{v8, v10, v12, v14}];

  extraShadowLayer2 = [(MKCatalystButton *)self extraShadowLayer];
  [extraShadowLayer2 setMasksToBounds:0];

  extraShadowLayer3 = [(MKCatalystButton *)self extraShadowLayer];
  [extraShadowLayer3 setCornerRadius:v4];

  v18 = *MEMORY[0x1E69796E8];
  extraShadowLayer4 = [(MKCatalystButton *)self extraShadowLayer];
  [extraShadowLayer4 setCornerCurve:v18];

  layer3 = [(MKCatalystButton *)self layer];
  [layer3 bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  gradientLayer = [(MKCatalystButton *)self gradientLayer];
  [gradientLayer setFrame:{v22, v24, v26, v28}];

  gradientLayer2 = [(MKCatalystButton *)self gradientLayer];
  [gradientLayer2 setCornerRadius:v4];

  gradientLayer3 = [(MKCatalystButton *)self gradientLayer];
  [gradientLayer3 setCornerCurve:v18];

  gradientLayer4 = [(MKCatalystButton *)self gradientLayer];
  [gradientLayer4 setMasksToBounds:1];

  [MEMORY[0x1E6979518] setDisableActions:disableActions];
}

- (CGSize)_maps_intrinsicContentSize
{
  v10.receiver = self;
  v10.super_class = MKCatalystButton;
  [(MKCatalystButton *)&v10 intrinsicContentSize];
  v4 = v3;
  subTitle = [(MKCatalystButton *)self subTitle];
  if (subTitle)
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
  subTitle = [(MKCatalystButton *)self subTitle];

  v4 = *MEMORY[0x1E69DE788];
  if (subTitle)
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

+ (id)buttonWithType:(int64_t)type
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___MKCatalystButton;
  v3 = objc_msgSendSuper2(&v6, sel_buttonWithType_, type);
  v4 = v3;
  if (v3)
  {
    [v3 setTallHeight:42.0];
    [v4 setShortHeight:22.0];
  }

  return v4;
}

@end