@interface ASVButton
- (ASVButton)initWithButton:(id)button buttonStyle:(int64_t)style textStyle:(int64_t)textStyle controlStyle:(int64_t)controlStyle largeImageInsets:(UIEdgeInsets)insets;
- (ASVButton)initWithImage:(id)image buttonStyle:(int64_t)style textStyle:(int64_t)textStyle controlStyle:(int64_t)controlStyle largeImageInsets:(UIEdgeInsets)insets;
- (ASVButton)initWithTitle:(id)title buttonStyle:(int64_t)style textStyle:(int64_t)textStyle controlStyle:(int64_t)controlStyle adjustsFontForContentSizeCategory:(BOOL)category;
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (UIEdgeInsets)contentEdgeInsets;
- (UIEdgeInsets)largeImageInsets;
- (UIFont)boldFont;
- (UIFont)regularFont;
- (id)_colorDarkenedIfNeededForColor:(id)color;
- (void)_didUpdateContentSizeCategory:(id)category;
- (void)_didUpdateDarkenColorsSetting:(id)setting;
- (void)_updateTitleStyleForButton:(id)button withControlStyle:(int64_t)style;
- (void)addTarget:(id)target action:(SEL)action forControlEvents:(unint64_t)events;
- (void)layoutSubviews;
- (void)setContentEdgeInsets:(UIEdgeInsets)insets;
- (void)setControlStyle:(int64_t)style;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImage:(id)image;
- (void)setSelected:(BOOL)selected;
- (void)setTitle:(id)title;
- (void)traitCollectionDidChange:(id)change;
- (void)updateCurrentAppearanceIfNeeded;
@end

@implementation ASVButton

- (ASVButton)initWithButton:(id)button buttonStyle:(int64_t)style textStyle:(int64_t)textStyle controlStyle:(int64_t)controlStyle largeImageInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v78[8] = *MEMORY[0x277D85DE8];
  buttonCopy = button;
  v77.receiver = self;
  v77.super_class = ASVButton;
  v17 = *MEMORY[0x277CBF3A0];
  v18 = *(MEMORY[0x277CBF3A0] + 8);
  v19 = *(MEMORY[0x277CBF3A0] + 16);
  v20 = *(MEMORY[0x277CBF3A0] + 24);
  v21 = [(ASVButton *)&v77 initWithFrame:*MEMORY[0x277CBF3A0], v18, v19, v20];
  v22 = v21;
  if (v21)
  {
    v76 = buttonCopy;
    [(ASVButton *)v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = [[ASVBlurredBackgroundView alloc] initWithFrame:style == 1 backgroundStyle:controlStyle controlStyle:v17, v18, v19, v20];
    blurredBackgroundView = v22->_blurredBackgroundView;
    v22->_blurredBackgroundView = v23;

    [(ASVBlurredBackgroundView *)v22->_blurredBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ASVButton *)v22 addSubview:v22->_blurredBackgroundView];
    objc_storeStrong(&v22->_button, button);
    [(ASVWrappedButton *)v22->_button setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ASVButton *)v22 addSubview:v22->_button];
    v22->_buttonStyle = style;
    v22->_textStyle = textStyle;
    v22->_controlStyle = controlStyle;
    v22->_largeImageInsets.top = top;
    v22->_largeImageInsets.left = left;
    v22->_largeImageInsets.bottom = bottom;
    v22->_largeImageInsets.right = right;
    v25 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.35];
    white35PercentColor = v22->_white35PercentColor;
    v22->_white35PercentColor = v25;

    v27 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:1.0];
    white100PercentColor = v22->_white100PercentColor;
    v22->_white100PercentColor = v27;

    v29 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.7];
    white70PercentColor = v22->_white70PercentColor;
    v22->_white70PercentColor = v29;

    v31 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.35];
    black35PercentColor = v22->_black35PercentColor;
    v22->_black35PercentColor = v31;

    v33 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.7];
    black70PercentColor = v22->_black70PercentColor;
    v22->_black70PercentColor = v33;

    v35 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.478431373 blue:1.0 alpha:1.0];
    blue100PercentColor = v22->_blue100PercentColor;
    v22->_blue100PercentColor = v35;

    v37 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.478431373 blue:1.0 alpha:0.5];
    blue50PercentColor = v22->_blue50PercentColor;
    v22->_blue50PercentColor = v37;

    v39 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.75];
    white75PercentColor = v22->_white75PercentColor;
    v22->_white75PercentColor = v39;

    v41 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.52];
    white52PercentColor = v22->_white52PercentColor;
    v22->_white52PercentColor = v41;

    v43 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.26];
    white26PercentColor = v22->_white26PercentColor;
    v22->_white26PercentColor = v43;

    if (controlStyle == 2)
    {
      v45 = 0.4;
    }

    else
    {
      if (controlStyle != 3)
      {
LABEL_7:
        v66 = MEMORY[0x277CCAAD0];
        leadingAnchor = [(ASVBlurredBackgroundView *)v22->_blurredBackgroundView leadingAnchor];
        leadingAnchor2 = [(ASVButton *)v22 leadingAnchor];
        v73 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
        v78[0] = v73;
        trailingAnchor = [(ASVBlurredBackgroundView *)v22->_blurredBackgroundView trailingAnchor];
        trailingAnchor2 = [(ASVButton *)v22 trailingAnchor];
        v70 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
        v78[1] = v70;
        topAnchor = [(ASVBlurredBackgroundView *)v22->_blurredBackgroundView topAnchor];
        topAnchor2 = [(ASVButton *)v22 topAnchor];
        v67 = [topAnchor constraintEqualToAnchor:topAnchor2];
        v78[2] = v67;
        bottomAnchor = [(ASVBlurredBackgroundView *)v22->_blurredBackgroundView bottomAnchor];
        bottomAnchor2 = [(ASVButton *)v22 bottomAnchor];
        v63 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        v78[3] = v63;
        leadingAnchor3 = [(ASVWrappedButton *)v22->_button leadingAnchor];
        leadingAnchor4 = [(ASVButton *)v22 leadingAnchor];
        v60 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
        v78[4] = v60;
        trailingAnchor3 = [(ASVWrappedButton *)v22->_button trailingAnchor];
        trailingAnchor4 = [(ASVButton *)v22 trailingAnchor];
        v48 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
        v78[5] = v48;
        topAnchor3 = [(ASVWrappedButton *)v22->_button topAnchor];
        topAnchor4 = [(ASVButton *)v22 topAnchor];
        v51 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
        v78[6] = v51;
        bottomAnchor3 = [(ASVWrappedButton *)v22->_button bottomAnchor];
        bottomAnchor4 = [(ASVButton *)v22 bottomAnchor];
        v54 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
        v78[7] = v54;
        v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:8];
        [v66 activateConstraints:v55];

        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter addObserver:v22 selector:sel__didUpdateDarkenColorsSetting_ name:*MEMORY[0x277D76460] object:0];

        defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter2 addObserver:v22 selector:sel__didUpdateContentSizeCategory_ name:*MEMORY[0x277D76810] object:0];

        buttonCopy = v76;
        goto LABEL_8;
      }

      v45 = 0.55;
    }

    v46 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:v45];
    [(ASVWrappedButton *)v22->_button setBackgroundColor:v46];

    goto LABEL_7;
  }

LABEL_8:

  return v22;
}

- (ASVButton)initWithTitle:(id)title buttonStyle:(int64_t)style textStyle:(int64_t)textStyle controlStyle:(int64_t)controlStyle adjustsFontForContentSizeCategory:(BOOL)category
{
  categoryCopy = category;
  titleCopy = title;
  v13 = [ASVWrappedButton alloc];
  v14 = [(ASVWrappedButton *)v13 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(ASVWrappedButton *)v14 setTitle:titleCopy forState:0];

  titleLabel = [(ASVWrappedButton *)v14 titleLabel];
  [titleLabel setAdjustsFontForContentSizeCategory:categoryCopy];

  v16 = [(ASVButton *)self initWithButton:v14 buttonStyle:style textStyle:textStyle controlStyle:controlStyle largeImageInsets:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
  [(ASVButton *)v16 _updateTitleStyleForButton:v14 withControlStyle:controlStyle];

  return v16;
}

- (ASVButton)initWithImage:(id)image buttonStyle:(int64_t)style textStyle:(int64_t)textStyle controlStyle:(int64_t)controlStyle largeImageInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  imageCopy = image;
  v16 = [ASVWrappedButton alloc];
  v17 = [(ASVWrappedButton *)v16 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v18 = [MEMORY[0x277D755D0] configurationWithScale:3];
  [(ASVWrappedButton *)v17 setPreferredSymbolConfiguration:v18 forImageInState:0];

  [(ASVWrappedButton *)v17 setImage:imageCopy forState:0];
  right = [(ASVButton *)self initWithButton:v17 buttonStyle:style textStyle:textStyle controlStyle:controlStyle largeImageInsets:top, left, bottom, right];
  [(ASVButton *)right _updateTitleStyleForButton:v17 withControlStyle:controlStyle];

  return right;
}

- (void)addTarget:(id)target action:(SEL)action forControlEvents:(unint64_t)events
{
  targetCopy = target;
  button = [(ASVButton *)self button];
  [button addTarget:targetCopy action:action forControlEvents:events];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  button = [(ASVButton *)self button];
  if (button)
  {
    button2 = [(ASVButton *)self button];
    [button2 systemLayoutSizeFittingSize:{width, height}];
    v9 = v8;
    v11 = v10;
  }

  else
  {
    [(ASVButton *)self systemLayoutSizeFittingSize:width, height];
    v9 = v12;
    v11 = v13;
  }

  v14 = v9;
  v15 = v11;
  result.height = v15;
  result.width = v14;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  button = [(ASVButton *)self button];
  if (button)
  {
    button2 = [(ASVButton *)self button];
    *&v14 = priority;
    *&v15 = fittingPriority;
    [button2 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v14, v15}];
    v17 = v16;
    v19 = v18;
  }

  else
  {
    *&v11 = priority;
    *&v12 = fittingPriority;
    [(ASVButton *)self systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v11, v12];
    v17 = v20;
    v19 = v21;
  }

  v22 = v17;
  v23 = v19;
  result.height = v23;
  result.width = v22;
  return result;
}

- (CGSize)intrinsicContentSize
{
  button = [(ASVButton *)self button];
  if (button)
  {
    button2 = [(ASVButton *)self button];
    [button2 intrinsicContentSize];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = ASVButton;
    [(ASVButton *)&v13 intrinsicContentSize];
    v6 = v9;
    v8 = v10;
  }

  v11 = v6;
  v12 = v8;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)setContentEdgeInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  button = [(ASVButton *)self button];
  [button setContentEdgeInsets:{top, left, bottom, right}];
}

- (UIEdgeInsets)contentEdgeInsets
{
  button = [(ASVButton *)self button];
  [button contentEdgeInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (UIFont)regularFont
{
  if (!self->_regularFont)
  {
    button = [(ASVButton *)self button];
    titleLabel = [button titleLabel];
    adjustsFontForContentSizeCategory = [titleLabel adjustsFontForContentSizeCategory];

    if (adjustsFontForContentSizeCategory)
    {
      [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769C0]];
    }

    else
    {
      [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D769D0] maximumContentSizeCategory:*MEMORY[0x277D76818]];
    }
    v6 = ;
    regularFont = self->_regularFont;
    self->_regularFont = v6;
  }

  v8 = self->_regularFont;

  return v8;
}

- (UIFont)boldFont
{
  boldFont = self->_boldFont;
  if (!boldFont)
  {
    v4 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0] addingSymbolicTraits:2 options:0];
    v5 = MEMORY[0x277D74300];
    regularFont = [(ASVButton *)self regularFont];
    [regularFont pointSize];
    v7 = [v5 fontWithDescriptor:v4 size:?];
    v8 = self->_boldFont;
    self->_boldFont = v7;

    boldFont = self->_boldFont;
  }

  return boldFont;
}

- (void)setControlStyle:(int64_t)style
{
  if (self->_controlStyle != style && [(ASVButton *)self currentStyle]!= 2)
  {
    self->_controlStyle = style;
    blurredBackgroundView = [(ASVButton *)self blurredBackgroundView];
    [blurredBackgroundView setControlStyle:style];

    button = [(ASVButton *)self button];
    [(ASVButton *)self _updateTitleStyleForButton:button withControlStyle:style];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v9.receiver = self;
  v9.super_class = ASVButton;
  [(ASVButton *)&v9 setEnabled:?];
  blurredBackgroundView = [(ASVButton *)self blurredBackgroundView];
  [blurredBackgroundView setEnabled:enabledCopy];

  button = [(ASVButton *)self button];
  isEnabled = [button isEnabled];

  if (isEnabled != enabledCopy)
  {
    button2 = [(ASVButton *)self button];
    [button2 setEnabled:enabledCopy];
  }
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v9.receiver = self;
  v9.super_class = ASVButton;
  [(ASVButton *)&v9 setSelected:?];
  blurredBackgroundView = [(ASVButton *)self blurredBackgroundView];
  [blurredBackgroundView setSelected:selectedCopy];

  button = [(ASVButton *)self button];
  isSelected = [button isSelected];

  if (isSelected != selectedCopy)
  {
    button2 = [(ASVButton *)self button];
    [button2 setSelected:selectedCopy];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v9.receiver = self;
  v9.super_class = ASVButton;
  [(ASVButton *)&v9 setHighlighted:?];
  blurredBackgroundView = [(ASVButton *)self blurredBackgroundView];
  [blurredBackgroundView setHighlighted:highlightedCopy];

  button = [(ASVButton *)self button];
  isHighlighted = [button isHighlighted];

  if (isHighlighted != highlightedCopy)
  {
    button2 = [(ASVButton *)self button];
    [button2 setHighlighted:highlightedCopy];
  }
}

- (id)_colorDarkenedIfNeededForColor:(id)color
{
  colorCopy = color;
  if (UIAccessibilityDarkerSystemColorsEnabled() && (v10 = 0.0, v11 = 0.0, v8 = 0.0, v9 = 0.0, [colorCopy getHue:&v11 saturation:&v10 brightness:&v9 alpha:&v8]))
  {
    if (v9 == 0.0)
    {
      v4 = [colorCopy colorWithAlphaComponent:v8 / 0.75];
    }

    else
    {
      v7 = objc_alloc(MEMORY[0x277D75348]);
      v4 = [v7 initWithHue:v11 saturation:v10 brightness:v9 * 0.75 alpha:v8];
    }
  }

  else
  {
    v4 = colorCopy;
  }

  v5 = v4;

  return v5;
}

- (void)_updateTitleStyleForButton:(id)button withControlStyle:(int64_t)style
{
  v55[2] = *MEMORY[0x277D85DE8];
  buttonCopy = button;
  v7 = [buttonCopy titleForState:0];
  if (v7)
  {
    if ([(ASVButton *)self buttonStyle]== 1 || [(ASVButton *)self textStyle]== 1)
    {
      boldFont = [(ASVButton *)self boldFont];
      boldFont2 = [(ASVButton *)self boldFont];
      boldFont3 = [(ASVButton *)self boldFont];
    }

    else
    {
      boldFont = [(ASVButton *)self regularFont];
      boldFont2 = [(ASVButton *)self regularFont];
      boldFont3 = [(ASVButton *)self regularFont];
    }

    v43 = boldFont3;
    boldFont4 = [(ASVButton *)self boldFont];
    if (style == 3)
    {
      white75PercentColor = [(ASVButton *)self white75PercentColor];
      white52PercentColor = [(ASVButton *)self white52PercentColor];
      white26PercentColor = [(ASVButton *)self white26PercentColor];
      blue100PercentColor = [(ASVButton *)self blue100PercentColor];
      white26PercentColor2 = [(ASVButton *)self white26PercentColor];
    }

    else
    {
      if (style == 2)
      {
        white75PercentColor = [(ASVButton *)self white100PercentColor];
        white52PercentColor = [(ASVButton *)self white70PercentColor];
        white26PercentColor = [(ASVButton *)self white35PercentColor];
        blue100PercentColor = [(ASVButton *)self white70PercentColor];
        white35PercentColor = [(ASVButton *)self white35PercentColor];
        white35PercentColor2 = [(ASVButton *)self white35PercentColor];
LABEL_15:
        v36 = white75PercentColor;
        v37 = white35PercentColor2;
        v14 = *MEMORY[0x277D740A8];
        v33 = boldFont;
        v55[0] = boldFont;
        v15 = *MEMORY[0x277D740C0];
        v54[0] = v14;
        v54[1] = v15;
        v16 = [(ASVButton *)self _colorDarkenedIfNeededForColor:white75PercentColor];
        v55[1] = v16;
        v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:2];

        v34 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7 attributes:v35];
        [buttonCopy setAttributedTitle:v34 forState:0];
        v52[1] = v15;
        v53[0] = boldFont2;
        v52[0] = v14;
        v17 = [(ASVButton *)self _colorDarkenedIfNeededForColor:white52PercentColor];
        v53[1] = v17;
        v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];

        v31 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7 attributes:v32];
        [buttonCopy setAttributedTitle:v31 forState:1];
        v50[1] = v15;
        v51[0] = v43;
        v50[0] = v14;
        v18 = [(ASVButton *)self _colorDarkenedIfNeededForColor:white26PercentColor];
        v51[1] = v18;
        v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];

        v29 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7 attributes:v30];
        [buttonCopy setAttributedTitle:v29 forState:2];
        v49[0] = boldFont4;
        v48[0] = v14;
        v48[1] = v15;
        v19 = [(ASVButton *)self _colorDarkenedIfNeededForColor:blue100PercentColor];
        v49[1] = v19;
        v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];

        v27 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7 attributes:v28];
        [buttonCopy setAttributedTitle:v27 forState:4];
        v46[1] = v15;
        v47[0] = boldFont4;
        v46[0] = v14;
        [(ASVButton *)self _colorDarkenedIfNeededForColor:white35PercentColor];
        v21 = v20 = boldFont4;
        v47[1] = v21;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];

        v23 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7 attributes:v22];
        [buttonCopy setAttributedTitle:v23 forState:5];
        v44[1] = v15;
        v45[0] = v20;
        v44[0] = v14;
        v24 = [(ASVButton *)self _colorDarkenedIfNeededForColor:v37];
        v45[1] = v24;
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];

        v26 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7 attributes:v25];
        [buttonCopy setAttributedTitle:v26 forState:6];

        goto LABEL_16;
      }

      if ([(ASVButton *)self buttonStyle]== 1)
      {
        white75PercentColor = [(ASVButton *)self blue100PercentColor];
        white52PercentColor = [(ASVButton *)self black70PercentColor];
        [(ASVButton *)self blue50PercentColor];
      }

      else
      {
        white75PercentColor = [(ASVButton *)self black70PercentColor];
        white52PercentColor = [(ASVButton *)self black70PercentColor];
        [(ASVButton *)self black35PercentColor];
      }
      white26PercentColor = ;
      blue100PercentColor = [(ASVButton *)self blue100PercentColor];
      white26PercentColor2 = [(ASVButton *)self black70PercentColor];
    }

    white35PercentColor = white26PercentColor2;
    white35PercentColor2 = [(ASVButton *)self blue50PercentColor];
    goto LABEL_15;
  }

LABEL_16:
}

- (void)_didUpdateDarkenColorsSetting:(id)setting
{
  button = [(ASVButton *)self button];
  [(ASVButton *)self _updateTitleStyleForButton:button withControlStyle:[(ASVButton *)self controlStyle]];
}

- (void)_didUpdateContentSizeCategory:(id)category
{
  regularFont = self->_regularFont;
  self->_regularFont = 0;

  boldFont = self->_boldFont;
  self->_boldFont = 0;

  button = [(ASVButton *)self button];
  [(ASVButton *)self _updateTitleStyleForButton:button withControlStyle:[(ASVButton *)self controlStyle]];
}

- (void)setTitle:(id)title
{
  [(ASVWrappedButton *)self->_button setTitle:title forState:0];
  button = self->_button;
  controlStyle = [(ASVButton *)self controlStyle];

  [(ASVButton *)self _updateTitleStyleForButton:button withControlStyle:controlStyle];
}

- (void)setImage:(id)image
{
  button = self->_button;
  v5 = MEMORY[0x277D755D0];
  imageCopy = image;
  v6 = [v5 configurationWithScale:3];
  [(ASVWrappedButton *)button setPreferredSymbolConfiguration:v6 forImageInState:0];

  [(ASVWrappedButton *)self->_button setImage:imageCopy forState:0];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = ASVButton;
  [(ASVButton *)&v3 layoutSubviews];
  [(ASVButton *)self updateCurrentAppearanceIfNeeded];
}

- (void)updateCurrentAppearanceIfNeeded
{
  _currentTraitCollection = [MEMORY[0x277D75C80] _currentTraitCollection];
  userInterfaceStyle = [_currentTraitCollection userInterfaceStyle];

  if ([(ASVButton *)self currentStyle]!= userInterfaceStyle)
  {
    if (userInterfaceStyle == 2)
    {
      blurredBackgroundView = [(ASVButton *)self blurredBackgroundView];
      [blurredBackgroundView setControlStyle:3];

      button = [(ASVButton *)self button];
      selfCopy2 = self;
      v8 = button;
      controlStyle2 = 3;
    }

    else
    {
      controlStyle = [(ASVButton *)self controlStyle];
      blurredBackgroundView2 = [(ASVButton *)self blurredBackgroundView];
      [blurredBackgroundView2 setControlStyle:controlStyle];

      button = [(ASVButton *)self button];
      controlStyle2 = [(ASVButton *)self controlStyle];
      selfCopy2 = self;
      v8 = button;
    }

    [(ASVButton *)selfCopy2 _updateTitleStyleForButton:v8 withControlStyle:controlStyle2];

    [(ASVButton *)self setCurrentStyle:userInterfaceStyle];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = ASVButton;
  [(ASVButton *)&v4 traitCollectionDidChange:change];
  [(ASVButton *)self updateCurrentAppearanceIfNeeded];
}

- (UIEdgeInsets)largeImageInsets
{
  top = self->_largeImageInsets.top;
  left = self->_largeImageInsets.left;
  bottom = self->_largeImageInsets.bottom;
  right = self->_largeImageInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end