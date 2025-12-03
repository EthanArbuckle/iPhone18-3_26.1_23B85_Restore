@interface ARCoachingButton
- (ARCoachingButton)initWithButton:(id)button buttonStyle:(int64_t)style textStyle:(int64_t)textStyle controlStyle:(int64_t)controlStyle largeImageInsets:(UIEdgeInsets)insets;
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
- (void)setTitle:(id)title;
- (void)traitCollectionDidChange:(id)change;
- (void)updateCurrentAppearanceIfNeeded;
@end

@implementation ARCoachingButton

- (ARCoachingButton)initWithButton:(id)button buttonStyle:(int64_t)style textStyle:(int64_t)textStyle controlStyle:(int64_t)controlStyle largeImageInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v89[4] = *MEMORY[0x277D85DE8];
  buttonCopy = button;
  v87.receiver = self;
  v87.super_class = ARCoachingButton;
  v17 = *MEMORY[0x277CBF3A0];
  v18 = *(MEMORY[0x277CBF3A0] + 8);
  v19 = *(MEMORY[0x277CBF3A0] + 16);
  v20 = *(MEMORY[0x277CBF3A0] + 24);
  v21 = [(ARCoachingButton *)&v87 initWithFrame:*MEMORY[0x277CBF3A0], v18, v19, v20];
  v22 = v21;
  if (v21)
  {
    [(ARCoachingButton *)v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    if ((_UISolariumEnabled() & 1) == 0)
    {
      v23 = [[ARCoachingControlBlurredBackgroundView alloc] initWithFrame:style == 1 backgroundStyle:controlStyle controlStyle:v17, v18, v19, v20];
      blurredBackgroundView = v22->_blurredBackgroundView;
      v22->_blurredBackgroundView = v23;

      [(ARCoachingControlBlurredBackgroundView *)v22->_blurredBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(ARCoachingButton *)v22 addSubview:v22->_blurredBackgroundView];
    }

    objc_storeStrong(&v22->_button, button);
    [(ARCoachingWrappedButton *)v22->_button setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ARCoachingButton *)v22 addSubview:v22->_button];
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

    if (_UISolariumEnabled())
    {
      v45 = MEMORY[0x277CCAAD0];
      leadingAnchor = [(ARCoachingWrappedButton *)v22->_button leadingAnchor];
      leadingAnchor2 = [(ARCoachingButton *)v22 leadingAnchor];
      v48 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v89[0] = v48;
      trailingAnchor = [(ARCoachingWrappedButton *)v22->_button trailingAnchor];
      trailingAnchor2 = [(ARCoachingButton *)v22 trailingAnchor];
      v86 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v89[1] = v86;
      topAnchor = [(ARCoachingWrappedButton *)v22->_button topAnchor];
      topAnchor2 = [(ARCoachingButton *)v22 topAnchor];
      v85 = topAnchor;
      v83 = [topAnchor constraintEqualToAnchor:?];
      v89[2] = v83;
      bottomAnchor = [(ARCoachingWrappedButton *)v22->_button bottomAnchor];
      bottomAnchor2 = [(ARCoachingButton *)v22 bottomAnchor];
      v81 = [bottomAnchor constraintEqualToAnchor:?];
      v89[3] = v81;
      leadingAnchor5 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:4];
      [v45 activateConstraints:leadingAnchor5];
LABEL_12:

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v22 selector:sel__didUpdateDarkenColorsSetting_ name:*MEMORY[0x277D76460] object:0];

      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter2 addObserver:v22 selector:sel__didUpdateContentSizeCategory_ name:*MEMORY[0x277D76810] object:0];

      goto LABEL_13;
    }

    v80 = buttonCopy;
    if (controlStyle == 2)
    {
      v54 = 0.4;
    }

    else
    {
      if (controlStyle != 3)
      {
LABEL_11:
        v77 = MEMORY[0x277CCAAD0];
        leadingAnchor3 = [(ARCoachingControlBlurredBackgroundView *)v22->_blurredBackgroundView leadingAnchor];
        leadingAnchor4 = [(ARCoachingButton *)v22 leadingAnchor];
        v76 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
        v88[0] = v76;
        trailingAnchor3 = [(ARCoachingControlBlurredBackgroundView *)v22->_blurredBackgroundView trailingAnchor];
        trailingAnchor4 = [(ARCoachingButton *)v22 trailingAnchor];
        v86 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
        v88[1] = v86;
        topAnchor3 = [(ARCoachingControlBlurredBackgroundView *)v22->_blurredBackgroundView topAnchor];
        topAnchor2 = [(ARCoachingButton *)v22 topAnchor];
        v85 = topAnchor3;
        v83 = [topAnchor3 constraintEqualToAnchor:?];
        v88[2] = v83;
        bottomAnchor3 = [(ARCoachingControlBlurredBackgroundView *)v22->_blurredBackgroundView bottomAnchor];
        bottomAnchor2 = [(ARCoachingButton *)v22 bottomAnchor];
        v81 = [bottomAnchor3 constraintEqualToAnchor:?];
        v88[3] = v81;
        leadingAnchor5 = [(ARCoachingWrappedButton *)v22->_button leadingAnchor];
        leadingAnchor6 = [(ARCoachingButton *)v22 leadingAnchor];
        v72 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
        v88[4] = v72;
        trailingAnchor5 = [(ARCoachingWrappedButton *)v22->_button trailingAnchor];
        trailingAnchor6 = [(ARCoachingButton *)v22 trailingAnchor];
        v57 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
        v88[5] = v57;
        topAnchor4 = [(ARCoachingWrappedButton *)v22->_button topAnchor];
        topAnchor5 = [(ARCoachingButton *)v22 topAnchor];
        v60 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
        v88[6] = v60;
        bottomAnchor4 = [(ARCoachingWrappedButton *)v22->_button bottomAnchor];
        bottomAnchor5 = [(ARCoachingButton *)v22 bottomAnchor];
        v63 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
        v88[7] = v63;
        v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:8];
        [v77 activateConstraints:v64];

        trailingAnchor = trailingAnchor3;
        trailingAnchor2 = trailingAnchor4;

        v48 = v76;
        bottomAnchor = bottomAnchor3;

        leadingAnchor2 = leadingAnchor4;
        leadingAnchor = leadingAnchor3;

        buttonCopy = v80;
        goto LABEL_12;
      }

      v54 = 0.55;
    }

    v55 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:v54];
    [(ARCoachingWrappedButton *)v22->_button setBackgroundColor:v55];

    goto LABEL_11;
  }

LABEL_13:

  v67 = *MEMORY[0x277D85DE8];
  return v22;
}

- (void)addTarget:(id)target action:(SEL)action forControlEvents:(unint64_t)events
{
  targetCopy = target;
  button = [(ARCoachingButton *)self button];
  [button addTarget:targetCopy action:action forControlEvents:events];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  button = [(ARCoachingButton *)self button];
  if (button)
  {
    button2 = [(ARCoachingButton *)self button];
    [button2 systemLayoutSizeFittingSize:{width, height}];
    v9 = v8;
    v11 = v10;
  }

  else
  {
    [(ARCoachingButton *)self systemLayoutSizeFittingSize:width, height];
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
  button = [(ARCoachingButton *)self button];
  if (button)
  {
    button2 = [(ARCoachingButton *)self button];
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
    [(ARCoachingButton *)self systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v11, v12];
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
  button = [(ARCoachingButton *)self button];
  if (button)
  {
    button2 = [(ARCoachingButton *)self button];
    [button2 intrinsicContentSize];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = ARCoachingButton;
    [(ARCoachingButton *)&v13 intrinsicContentSize];
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
  v8 = _UISolariumEnabled();
  button = [(ARCoachingButton *)self button];
  v13 = button;
  if (v8)
  {
    configuration = [button configuration];

    [configuration setContentInsets:{top, left, bottom, right}];
    button2 = [(ARCoachingButton *)self button];
    [button2 setConfiguration:configuration];

    v12 = configuration;
  }

  else
  {
    [button setContentEdgeInsets:{top, left, bottom, right}];
    v12 = v13;
  }
}

- (UIEdgeInsets)contentEdgeInsets
{
  v3 = _UISolariumEnabled();
  button = [(ARCoachingButton *)self button];
  v5 = button;
  if (v3)
  {
    configuration = [button configuration];
    [configuration contentInsets];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    [button contentEdgeInsets];
    v8 = v15;
    v10 = v16;
    v12 = v17;
    v14 = v18;
  }

  v19 = v8;
  v20 = v10;
  v21 = v12;
  v22 = v14;
  result.right = v22;
  result.bottom = v21;
  result.left = v20;
  result.top = v19;
  return result;
}

- (UIFont)regularFont
{
  if (!self->_regularFont)
  {
    button = [(ARCoachingButton *)self button];
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
    regularFont = [(ARCoachingButton *)self regularFont];
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
  if (self->_controlStyle != style && [(ARCoachingButton *)self currentStyle]!= 2)
  {
    self->_controlStyle = style;
    blurredBackgroundView = [(ARCoachingButton *)self blurredBackgroundView];

    if (blurredBackgroundView)
    {
      blurredBackgroundView2 = [(ARCoachingButton *)self blurredBackgroundView];
      [blurredBackgroundView2 setControlStyle:style];
    }

    button = [(ARCoachingButton *)self button];
    [(ARCoachingButton *)self _updateTitleStyleForButton:button withControlStyle:style];
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
  v56[2] = *MEMORY[0x277D85DE8];
  buttonCopy = button;
  v7 = [buttonCopy titleForState:0];
  if (v7)
  {
    if ([(ARCoachingButton *)self buttonStyle]== 1 || [(ARCoachingButton *)self textStyle]== 1)
    {
      boldFont = [(ARCoachingButton *)self boldFont];
      boldFont2 = [(ARCoachingButton *)self boldFont];
      boldFont3 = [(ARCoachingButton *)self boldFont];
    }

    else
    {
      boldFont = [(ARCoachingButton *)self regularFont];
      boldFont2 = [(ARCoachingButton *)self regularFont];
      boldFont3 = [(ARCoachingButton *)self regularFont];
    }

    v44 = boldFont3;
    boldFont4 = [(ARCoachingButton *)self boldFont];
    if (style == 3)
    {
      white75PercentColor = [(ARCoachingButton *)self white75PercentColor];
      white52PercentColor = [(ARCoachingButton *)self white52PercentColor];
      white26PercentColor = [(ARCoachingButton *)self white26PercentColor];
      blue100PercentColor = [(ARCoachingButton *)self blue100PercentColor];
      white26PercentColor2 = [(ARCoachingButton *)self white26PercentColor];
    }

    else
    {
      if (style == 2)
      {
        white75PercentColor = [(ARCoachingButton *)self white100PercentColor];
        white52PercentColor = [(ARCoachingButton *)self white70PercentColor];
        white26PercentColor = [(ARCoachingButton *)self white35PercentColor];
        blue100PercentColor = [(ARCoachingButton *)self white70PercentColor];
        white35PercentColor = [(ARCoachingButton *)self white35PercentColor];
        white35PercentColor2 = [(ARCoachingButton *)self white35PercentColor];
LABEL_15:
        v37 = white75PercentColor;
        v38 = white35PercentColor2;
        v14 = *MEMORY[0x277D740A8];
        v34 = boldFont;
        v56[0] = boldFont;
        v15 = *MEMORY[0x277D740C0];
        v55[0] = v14;
        v55[1] = v15;
        v16 = [(ARCoachingButton *)self _colorDarkenedIfNeededForColor:white75PercentColor];
        v56[1] = v16;
        v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];

        v35 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7 attributes:v36];
        [buttonCopy setAttributedTitle:v35 forState:0];
        v53[1] = v15;
        v54[0] = boldFont2;
        v53[0] = v14;
        v17 = [(ARCoachingButton *)self _colorDarkenedIfNeededForColor:white52PercentColor];
        v54[1] = v17;
        v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];

        v32 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7 attributes:v33];
        [buttonCopy setAttributedTitle:v32 forState:1];
        v51[1] = v15;
        v52[0] = v44;
        v51[0] = v14;
        v18 = [(ARCoachingButton *)self _colorDarkenedIfNeededForColor:white26PercentColor];
        v52[1] = v18;
        v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:2];

        v30 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7 attributes:v31];
        [buttonCopy setAttributedTitle:v30 forState:2];
        v50[0] = boldFont4;
        v49[0] = v14;
        v49[1] = v15;
        v19 = [(ARCoachingButton *)self _colorDarkenedIfNeededForColor:blue100PercentColor];
        v50[1] = v19;
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];

        v28 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7 attributes:v29];
        [buttonCopy setAttributedTitle:v28 forState:4];
        v47[1] = v15;
        v48[0] = boldFont4;
        v47[0] = v14;
        [(ARCoachingButton *)self _colorDarkenedIfNeededForColor:white35PercentColor];
        v21 = v20 = boldFont4;
        v48[1] = v21;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];

        v23 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7 attributes:v22];
        [buttonCopy setAttributedTitle:v23 forState:5];
        v45[1] = v15;
        v46[0] = v20;
        v45[0] = v14;
        v24 = [(ARCoachingButton *)self _colorDarkenedIfNeededForColor:v38];
        v46[1] = v24;
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];

        v26 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7 attributes:v25];
        [buttonCopy setAttributedTitle:v26 forState:6];

        goto LABEL_16;
      }

      if ([(ARCoachingButton *)self buttonStyle]== 1)
      {
        white75PercentColor = [(ARCoachingButton *)self blue100PercentColor];
        white52PercentColor = [(ARCoachingButton *)self black70PercentColor];
        [(ARCoachingButton *)self blue50PercentColor];
      }

      else
      {
        white75PercentColor = [(ARCoachingButton *)self black70PercentColor];
        white52PercentColor = [(ARCoachingButton *)self black70PercentColor];
        [(ARCoachingButton *)self black35PercentColor];
      }
      white26PercentColor = ;
      blue100PercentColor = [(ARCoachingButton *)self blue100PercentColor];
      white26PercentColor2 = [(ARCoachingButton *)self black70PercentColor];
    }

    white35PercentColor = white26PercentColor2;
    white35PercentColor2 = [(ARCoachingButton *)self blue50PercentColor];
    goto LABEL_15;
  }

LABEL_16:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_didUpdateDarkenColorsSetting:(id)setting
{
  button = [(ARCoachingButton *)self button];
  [(ARCoachingButton *)self _updateTitleStyleForButton:button withControlStyle:[(ARCoachingButton *)self controlStyle]];
}

- (void)_didUpdateContentSizeCategory:(id)category
{
  regularFont = self->_regularFont;
  self->_regularFont = 0;

  boldFont = self->_boldFont;
  self->_boldFont = 0;

  button = [(ARCoachingButton *)self button];
  [(ARCoachingButton *)self _updateTitleStyleForButton:button withControlStyle:[(ARCoachingButton *)self controlStyle]];
}

- (void)setTitle:(id)title
{
  [(ARCoachingWrappedButton *)self->_button setTitle:title forState:0];
  button = self->_button;
  controlStyle = [(ARCoachingButton *)self controlStyle];

  [(ARCoachingButton *)self _updateTitleStyleForButton:button withControlStyle:controlStyle];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = ARCoachingButton;
  [(ARCoachingButton *)&v3 layoutSubviews];
  [(ARCoachingButton *)self updateCurrentAppearanceIfNeeded];
}

- (void)updateCurrentAppearanceIfNeeded
{
  _currentTraitCollection = [MEMORY[0x277D75C80] _currentTraitCollection];
  userInterfaceStyle = [_currentTraitCollection userInterfaceStyle];

  if ([(ARCoachingButton *)self currentStyle]!= userInterfaceStyle)
  {
    blurredBackgroundView = [(ARCoachingButton *)self blurredBackgroundView];

    if (userInterfaceStyle == 2)
    {
      if (blurredBackgroundView)
      {
        blurredBackgroundView2 = [(ARCoachingButton *)self blurredBackgroundView];
        [blurredBackgroundView2 setControlStyle:3];
      }

      button = [(ARCoachingButton *)self button];
      selfCopy2 = self;
      v9 = button;
      controlStyle2 = 3;
    }

    else
    {
      if (blurredBackgroundView)
      {
        controlStyle = [(ARCoachingButton *)self controlStyle];
        blurredBackgroundView3 = [(ARCoachingButton *)self blurredBackgroundView];
        [blurredBackgroundView3 setControlStyle:controlStyle];
      }

      button = [(ARCoachingButton *)self button];
      controlStyle2 = [(ARCoachingButton *)self controlStyle];
      selfCopy2 = self;
      v9 = button;
    }

    [(ARCoachingButton *)selfCopy2 _updateTitleStyleForButton:v9 withControlStyle:controlStyle2];

    [(ARCoachingButton *)self setCurrentStyle:userInterfaceStyle];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = ARCoachingButton;
  [(ARCoachingButton *)&v4 traitCollectionDidChange:change];
  [(ARCoachingButton *)self updateCurrentAppearanceIfNeeded];
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