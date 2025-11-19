@interface ASVButton
- (ASVButton)initWithButton:(id)a3 buttonStyle:(int64_t)a4 textStyle:(int64_t)a5 controlStyle:(int64_t)a6 largeImageInsets:(UIEdgeInsets)a7;
- (ASVButton)initWithImage:(id)a3 buttonStyle:(int64_t)a4 textStyle:(int64_t)a5 controlStyle:(int64_t)a6 largeImageInsets:(UIEdgeInsets)a7;
- (ASVButton)initWithTitle:(id)a3 buttonStyle:(int64_t)a4 textStyle:(int64_t)a5 controlStyle:(int64_t)a6 adjustsFontForContentSizeCategory:(BOOL)a7;
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (UIEdgeInsets)contentEdgeInsets;
- (UIEdgeInsets)largeImageInsets;
- (UIFont)boldFont;
- (UIFont)regularFont;
- (id)_colorDarkenedIfNeededForColor:(id)a3;
- (void)_didUpdateContentSizeCategory:(id)a3;
- (void)_didUpdateDarkenColorsSetting:(id)a3;
- (void)_updateTitleStyleForButton:(id)a3 withControlStyle:(int64_t)a4;
- (void)addTarget:(id)a3 action:(SEL)a4 forControlEvents:(unint64_t)a5;
- (void)layoutSubviews;
- (void)setContentEdgeInsets:(UIEdgeInsets)a3;
- (void)setControlStyle:(int64_t)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setImage:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateCurrentAppearanceIfNeeded;
@end

@implementation ASVButton

- (ASVButton)initWithButton:(id)a3 buttonStyle:(int64_t)a4 textStyle:(int64_t)a5 controlStyle:(int64_t)a6 largeImageInsets:(UIEdgeInsets)a7
{
  right = a7.right;
  bottom = a7.bottom;
  left = a7.left;
  top = a7.top;
  v78[8] = *MEMORY[0x277D85DE8];
  v16 = a3;
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
    v76 = v16;
    [(ASVButton *)v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = [[ASVBlurredBackgroundView alloc] initWithFrame:a4 == 1 backgroundStyle:a6 controlStyle:v17, v18, v19, v20];
    blurredBackgroundView = v22->_blurredBackgroundView;
    v22->_blurredBackgroundView = v23;

    [(ASVBlurredBackgroundView *)v22->_blurredBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ASVButton *)v22 addSubview:v22->_blurredBackgroundView];
    objc_storeStrong(&v22->_button, a3);
    [(ASVWrappedButton *)v22->_button setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ASVButton *)v22 addSubview:v22->_button];
    v22->_buttonStyle = a4;
    v22->_textStyle = a5;
    v22->_controlStyle = a6;
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

    if (a6 == 2)
    {
      v45 = 0.4;
    }

    else
    {
      if (a6 != 3)
      {
LABEL_7:
        v66 = MEMORY[0x277CCAAD0];
        v75 = [(ASVBlurredBackgroundView *)v22->_blurredBackgroundView leadingAnchor];
        v74 = [(ASVButton *)v22 leadingAnchor];
        v73 = [v75 constraintEqualToAnchor:v74];
        v78[0] = v73;
        v72 = [(ASVBlurredBackgroundView *)v22->_blurredBackgroundView trailingAnchor];
        v71 = [(ASVButton *)v22 trailingAnchor];
        v70 = [v72 constraintEqualToAnchor:v71];
        v78[1] = v70;
        v69 = [(ASVBlurredBackgroundView *)v22->_blurredBackgroundView topAnchor];
        v68 = [(ASVButton *)v22 topAnchor];
        v67 = [v69 constraintEqualToAnchor:v68];
        v78[2] = v67;
        v65 = [(ASVBlurredBackgroundView *)v22->_blurredBackgroundView bottomAnchor];
        v64 = [(ASVButton *)v22 bottomAnchor];
        v63 = [v65 constraintEqualToAnchor:v64];
        v78[3] = v63;
        v62 = [(ASVWrappedButton *)v22->_button leadingAnchor];
        v61 = [(ASVButton *)v22 leadingAnchor];
        v60 = [v62 constraintEqualToAnchor:v61];
        v78[4] = v60;
        v59 = [(ASVWrappedButton *)v22->_button trailingAnchor];
        v47 = [(ASVButton *)v22 trailingAnchor];
        v48 = [v59 constraintEqualToAnchor:v47];
        v78[5] = v48;
        v49 = [(ASVWrappedButton *)v22->_button topAnchor];
        v50 = [(ASVButton *)v22 topAnchor];
        v51 = [v49 constraintEqualToAnchor:v50];
        v78[6] = v51;
        v52 = [(ASVWrappedButton *)v22->_button bottomAnchor];
        v53 = [(ASVButton *)v22 bottomAnchor];
        v54 = [v52 constraintEqualToAnchor:v53];
        v78[7] = v54;
        v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:8];
        [v66 activateConstraints:v55];

        v56 = [MEMORY[0x277CCAB98] defaultCenter];
        [v56 addObserver:v22 selector:sel__didUpdateDarkenColorsSetting_ name:*MEMORY[0x277D76460] object:0];

        v57 = [MEMORY[0x277CCAB98] defaultCenter];
        [v57 addObserver:v22 selector:sel__didUpdateContentSizeCategory_ name:*MEMORY[0x277D76810] object:0];

        v16 = v76;
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

- (ASVButton)initWithTitle:(id)a3 buttonStyle:(int64_t)a4 textStyle:(int64_t)a5 controlStyle:(int64_t)a6 adjustsFontForContentSizeCategory:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = [ASVWrappedButton alloc];
  v14 = [(ASVWrappedButton *)v13 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  [(ASVWrappedButton *)v14 setTitle:v12 forState:0];

  v15 = [(ASVWrappedButton *)v14 titleLabel];
  [v15 setAdjustsFontForContentSizeCategory:v7];

  v16 = [(ASVButton *)self initWithButton:v14 buttonStyle:a4 textStyle:a5 controlStyle:a6 largeImageInsets:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
  [(ASVButton *)v16 _updateTitleStyleForButton:v14 withControlStyle:a6];

  return v16;
}

- (ASVButton)initWithImage:(id)a3 buttonStyle:(int64_t)a4 textStyle:(int64_t)a5 controlStyle:(int64_t)a6 largeImageInsets:(UIEdgeInsets)a7
{
  right = a7.right;
  bottom = a7.bottom;
  left = a7.left;
  top = a7.top;
  v15 = a3;
  v16 = [ASVWrappedButton alloc];
  v17 = [(ASVWrappedButton *)v16 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v18 = [MEMORY[0x277D755D0] configurationWithScale:3];
  [(ASVWrappedButton *)v17 setPreferredSymbolConfiguration:v18 forImageInState:0];

  [(ASVWrappedButton *)v17 setImage:v15 forState:0];
  v19 = [(ASVButton *)self initWithButton:v17 buttonStyle:a4 textStyle:a5 controlStyle:a6 largeImageInsets:top, left, bottom, right];
  [(ASVButton *)v19 _updateTitleStyleForButton:v17 withControlStyle:a6];

  return v19;
}

- (void)addTarget:(id)a3 action:(SEL)a4 forControlEvents:(unint64_t)a5
{
  v8 = a3;
  v9 = [(ASVButton *)self button];
  [v9 addTarget:v8 action:a4 forControlEvents:a5];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(ASVButton *)self button];
  if (v6)
  {
    v7 = [(ASVButton *)self button];
    [v7 systemLayoutSizeFittingSize:{width, height}];
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

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v10 = [(ASVButton *)self button];
  if (v10)
  {
    v13 = [(ASVButton *)self button];
    *&v14 = a4;
    *&v15 = a5;
    [v13 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v14, v15}];
    v17 = v16;
    v19 = v18;
  }

  else
  {
    *&v11 = a4;
    *&v12 = a5;
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
  v3 = [(ASVButton *)self button];
  if (v3)
  {
    v4 = [(ASVButton *)self button];
    [v4 intrinsicContentSize];
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

- (void)setContentEdgeInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v7 = [(ASVButton *)self button];
  [v7 setContentEdgeInsets:{top, left, bottom, right}];
}

- (UIEdgeInsets)contentEdgeInsets
{
  v2 = [(ASVButton *)self button];
  [v2 contentEdgeInsets];
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
    v3 = [(ASVButton *)self button];
    v4 = [v3 titleLabel];
    v5 = [v4 adjustsFontForContentSizeCategory];

    if (v5)
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
    v6 = [(ASVButton *)self regularFont];
    [v6 pointSize];
    v7 = [v5 fontWithDescriptor:v4 size:?];
    v8 = self->_boldFont;
    self->_boldFont = v7;

    boldFont = self->_boldFont;
  }

  return boldFont;
}

- (void)setControlStyle:(int64_t)a3
{
  if (self->_controlStyle != a3 && [(ASVButton *)self currentStyle]!= 2)
  {
    self->_controlStyle = a3;
    v5 = [(ASVButton *)self blurredBackgroundView];
    [v5 setControlStyle:a3];

    v6 = [(ASVButton *)self button];
    [(ASVButton *)self _updateTitleStyleForButton:v6 withControlStyle:a3];
  }
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = ASVButton;
  [(ASVButton *)&v9 setEnabled:?];
  v5 = [(ASVButton *)self blurredBackgroundView];
  [v5 setEnabled:v3];

  v6 = [(ASVButton *)self button];
  v7 = [v6 isEnabled];

  if (v7 != v3)
  {
    v8 = [(ASVButton *)self button];
    [v8 setEnabled:v3];
  }
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = ASVButton;
  [(ASVButton *)&v9 setSelected:?];
  v5 = [(ASVButton *)self blurredBackgroundView];
  [v5 setSelected:v3];

  v6 = [(ASVButton *)self button];
  v7 = [v6 isSelected];

  if (v7 != v3)
  {
    v8 = [(ASVButton *)self button];
    [v8 setSelected:v3];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = ASVButton;
  [(ASVButton *)&v9 setHighlighted:?];
  v5 = [(ASVButton *)self blurredBackgroundView];
  [v5 setHighlighted:v3];

  v6 = [(ASVButton *)self button];
  v7 = [v6 isHighlighted];

  if (v7 != v3)
  {
    v8 = [(ASVButton *)self button];
    [v8 setHighlighted:v3];
  }
}

- (id)_colorDarkenedIfNeededForColor:(id)a3
{
  v3 = a3;
  if (UIAccessibilityDarkerSystemColorsEnabled() && (v10 = 0.0, v11 = 0.0, v8 = 0.0, v9 = 0.0, [v3 getHue:&v11 saturation:&v10 brightness:&v9 alpha:&v8]))
  {
    if (v9 == 0.0)
    {
      v4 = [v3 colorWithAlphaComponent:v8 / 0.75];
    }

    else
    {
      v7 = objc_alloc(MEMORY[0x277D75348]);
      v4 = [v7 initWithHue:v11 saturation:v10 brightness:v9 * 0.75 alpha:v8];
    }
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

- (void)_updateTitleStyleForButton:(id)a3 withControlStyle:(int64_t)a4
{
  v55[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 titleForState:0];
  if (v7)
  {
    if ([(ASVButton *)self buttonStyle]== 1 || [(ASVButton *)self textStyle]== 1)
    {
      v8 = [(ASVButton *)self boldFont];
      v42 = [(ASVButton *)self boldFont];
      v9 = [(ASVButton *)self boldFont];
    }

    else
    {
      v8 = [(ASVButton *)self regularFont];
      v42 = [(ASVButton *)self regularFont];
      v9 = [(ASVButton *)self regularFont];
    }

    v43 = v9;
    v10 = [(ASVButton *)self boldFont];
    if (a4 == 3)
    {
      v11 = [(ASVButton *)self white75PercentColor];
      v38 = [(ASVButton *)self white52PercentColor];
      v41 = [(ASVButton *)self white26PercentColor];
      v40 = [(ASVButton *)self blue100PercentColor];
      v13 = [(ASVButton *)self white26PercentColor];
    }

    else
    {
      if (a4 == 2)
      {
        v11 = [(ASVButton *)self white100PercentColor];
        v38 = [(ASVButton *)self white70PercentColor];
        v41 = [(ASVButton *)self white35PercentColor];
        v40 = [(ASVButton *)self white70PercentColor];
        v39 = [(ASVButton *)self white35PercentColor];
        v12 = [(ASVButton *)self white35PercentColor];
LABEL_15:
        v36 = v11;
        v37 = v12;
        v14 = *MEMORY[0x277D740A8];
        v33 = v8;
        v55[0] = v8;
        v15 = *MEMORY[0x277D740C0];
        v54[0] = v14;
        v54[1] = v15;
        v16 = [(ASVButton *)self _colorDarkenedIfNeededForColor:v11];
        v55[1] = v16;
        v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:2];

        v34 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7 attributes:v35];
        [v6 setAttributedTitle:v34 forState:0];
        v52[1] = v15;
        v53[0] = v42;
        v52[0] = v14;
        v17 = [(ASVButton *)self _colorDarkenedIfNeededForColor:v38];
        v53[1] = v17;
        v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];

        v31 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7 attributes:v32];
        [v6 setAttributedTitle:v31 forState:1];
        v50[1] = v15;
        v51[0] = v43;
        v50[0] = v14;
        v18 = [(ASVButton *)self _colorDarkenedIfNeededForColor:v41];
        v51[1] = v18;
        v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];

        v29 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7 attributes:v30];
        [v6 setAttributedTitle:v29 forState:2];
        v49[0] = v10;
        v48[0] = v14;
        v48[1] = v15;
        v19 = [(ASVButton *)self _colorDarkenedIfNeededForColor:v40];
        v49[1] = v19;
        v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];

        v27 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7 attributes:v28];
        [v6 setAttributedTitle:v27 forState:4];
        v46[1] = v15;
        v47[0] = v10;
        v46[0] = v14;
        [(ASVButton *)self _colorDarkenedIfNeededForColor:v39];
        v21 = v20 = v10;
        v47[1] = v21;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];

        v23 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7 attributes:v22];
        [v6 setAttributedTitle:v23 forState:5];
        v44[1] = v15;
        v45[0] = v20;
        v44[0] = v14;
        v24 = [(ASVButton *)self _colorDarkenedIfNeededForColor:v37];
        v45[1] = v24;
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];

        v26 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7 attributes:v25];
        [v6 setAttributedTitle:v26 forState:6];

        goto LABEL_16;
      }

      if ([(ASVButton *)self buttonStyle]== 1)
      {
        v11 = [(ASVButton *)self blue100PercentColor];
        v38 = [(ASVButton *)self black70PercentColor];
        [(ASVButton *)self blue50PercentColor];
      }

      else
      {
        v11 = [(ASVButton *)self black70PercentColor];
        v38 = [(ASVButton *)self black70PercentColor];
        [(ASVButton *)self black35PercentColor];
      }
      v41 = ;
      v40 = [(ASVButton *)self blue100PercentColor];
      v13 = [(ASVButton *)self black70PercentColor];
    }

    v39 = v13;
    v12 = [(ASVButton *)self blue50PercentColor];
    goto LABEL_15;
  }

LABEL_16:
}

- (void)_didUpdateDarkenColorsSetting:(id)a3
{
  v4 = [(ASVButton *)self button];
  [(ASVButton *)self _updateTitleStyleForButton:v4 withControlStyle:[(ASVButton *)self controlStyle]];
}

- (void)_didUpdateContentSizeCategory:(id)a3
{
  regularFont = self->_regularFont;
  self->_regularFont = 0;

  boldFont = self->_boldFont;
  self->_boldFont = 0;

  v6 = [(ASVButton *)self button];
  [(ASVButton *)self _updateTitleStyleForButton:v6 withControlStyle:[(ASVButton *)self controlStyle]];
}

- (void)setTitle:(id)a3
{
  [(ASVWrappedButton *)self->_button setTitle:a3 forState:0];
  button = self->_button;
  v5 = [(ASVButton *)self controlStyle];

  [(ASVButton *)self _updateTitleStyleForButton:button withControlStyle:v5];
}

- (void)setImage:(id)a3
{
  button = self->_button;
  v5 = MEMORY[0x277D755D0];
  v7 = a3;
  v6 = [v5 configurationWithScale:3];
  [(ASVWrappedButton *)button setPreferredSymbolConfiguration:v6 forImageInState:0];

  [(ASVWrappedButton *)self->_button setImage:v7 forState:0];
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
  v3 = [MEMORY[0x277D75C80] _currentTraitCollection];
  v4 = [v3 userInterfaceStyle];

  if ([(ASVButton *)self currentStyle]!= v4)
  {
    if (v4 == 2)
    {
      v5 = [(ASVButton *)self blurredBackgroundView];
      [v5 setControlStyle:3];

      v6 = [(ASVButton *)self button];
      v7 = self;
      v8 = v6;
      v9 = 3;
    }

    else
    {
      v10 = [(ASVButton *)self controlStyle];
      v11 = [(ASVButton *)self blurredBackgroundView];
      [v11 setControlStyle:v10];

      v6 = [(ASVButton *)self button];
      v9 = [(ASVButton *)self controlStyle];
      v7 = self;
      v8 = v6;
    }

    [(ASVButton *)v7 _updateTitleStyleForButton:v8 withControlStyle:v9];

    [(ASVButton *)self setCurrentStyle:v4];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = ASVButton;
  [(ASVButton *)&v4 traitCollectionDidChange:a3];
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