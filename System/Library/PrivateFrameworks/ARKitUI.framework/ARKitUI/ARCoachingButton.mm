@interface ARCoachingButton
- (ARCoachingButton)initWithButton:(id)a3 buttonStyle:(int64_t)a4 textStyle:(int64_t)a5 controlStyle:(int64_t)a6 largeImageInsets:(UIEdgeInsets)a7;
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
- (void)setTitle:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateCurrentAppearanceIfNeeded;
@end

@implementation ARCoachingButton

- (ARCoachingButton)initWithButton:(id)a3 buttonStyle:(int64_t)a4 textStyle:(int64_t)a5 controlStyle:(int64_t)a6 largeImageInsets:(UIEdgeInsets)a7
{
  right = a7.right;
  bottom = a7.bottom;
  left = a7.left;
  top = a7.top;
  v89[4] = *MEMORY[0x277D85DE8];
  v16 = a3;
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
      v23 = [[ARCoachingControlBlurredBackgroundView alloc] initWithFrame:a4 == 1 backgroundStyle:a6 controlStyle:v17, v18, v19, v20];
      blurredBackgroundView = v22->_blurredBackgroundView;
      v22->_blurredBackgroundView = v23;

      [(ARCoachingControlBlurredBackgroundView *)v22->_blurredBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(ARCoachingButton *)v22 addSubview:v22->_blurredBackgroundView];
    }

    objc_storeStrong(&v22->_button, a3);
    [(ARCoachingWrappedButton *)v22->_button setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ARCoachingButton *)v22 addSubview:v22->_button];
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

    if (_UISolariumEnabled())
    {
      v45 = MEMORY[0x277CCAAD0];
      v46 = [(ARCoachingWrappedButton *)v22->_button leadingAnchor];
      v47 = [(ARCoachingButton *)v22 leadingAnchor];
      v48 = [v46 constraintEqualToAnchor:v47];
      v89[0] = v48;
      v49 = [(ARCoachingWrappedButton *)v22->_button trailingAnchor];
      v50 = [(ARCoachingButton *)v22 trailingAnchor];
      v86 = [v49 constraintEqualToAnchor:v50];
      v89[1] = v86;
      v51 = [(ARCoachingWrappedButton *)v22->_button topAnchor];
      v84 = [(ARCoachingButton *)v22 topAnchor];
      v85 = v51;
      v83 = [v51 constraintEqualToAnchor:?];
      v89[2] = v83;
      v52 = [(ARCoachingWrappedButton *)v22->_button bottomAnchor];
      v82 = [(ARCoachingButton *)v22 bottomAnchor];
      v81 = [v52 constraintEqualToAnchor:?];
      v89[3] = v81;
      v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:4];
      [v45 activateConstraints:v53];
LABEL_12:

      v65 = [MEMORY[0x277CCAB98] defaultCenter];
      [v65 addObserver:v22 selector:sel__didUpdateDarkenColorsSetting_ name:*MEMORY[0x277D76460] object:0];

      v66 = [MEMORY[0x277CCAB98] defaultCenter];
      [v66 addObserver:v22 selector:sel__didUpdateContentSizeCategory_ name:*MEMORY[0x277D76810] object:0];

      goto LABEL_13;
    }

    v80 = v16;
    if (a6 == 2)
    {
      v54 = 0.4;
    }

    else
    {
      if (a6 != 3)
      {
LABEL_11:
        v77 = MEMORY[0x277CCAAD0];
        v79 = [(ARCoachingControlBlurredBackgroundView *)v22->_blurredBackgroundView leadingAnchor];
        v78 = [(ARCoachingButton *)v22 leadingAnchor];
        v76 = [v79 constraintEqualToAnchor:v78];
        v88[0] = v76;
        v74 = [(ARCoachingControlBlurredBackgroundView *)v22->_blurredBackgroundView trailingAnchor];
        v75 = [(ARCoachingButton *)v22 trailingAnchor];
        v86 = [v74 constraintEqualToAnchor:v75];
        v88[1] = v86;
        v56 = [(ARCoachingControlBlurredBackgroundView *)v22->_blurredBackgroundView topAnchor];
        v84 = [(ARCoachingButton *)v22 topAnchor];
        v85 = v56;
        v83 = [v56 constraintEqualToAnchor:?];
        v88[2] = v83;
        v71 = [(ARCoachingControlBlurredBackgroundView *)v22->_blurredBackgroundView bottomAnchor];
        v82 = [(ARCoachingButton *)v22 bottomAnchor];
        v81 = [v71 constraintEqualToAnchor:?];
        v88[3] = v81;
        v53 = [(ARCoachingWrappedButton *)v22->_button leadingAnchor];
        v73 = [(ARCoachingButton *)v22 leadingAnchor];
        v72 = [v53 constraintEqualToAnchor:v73];
        v88[4] = v72;
        v70 = [(ARCoachingWrappedButton *)v22->_button trailingAnchor];
        v69 = [(ARCoachingButton *)v22 trailingAnchor];
        v57 = [v70 constraintEqualToAnchor:v69];
        v88[5] = v57;
        v58 = [(ARCoachingWrappedButton *)v22->_button topAnchor];
        v59 = [(ARCoachingButton *)v22 topAnchor];
        v60 = [v58 constraintEqualToAnchor:v59];
        v88[6] = v60;
        v61 = [(ARCoachingWrappedButton *)v22->_button bottomAnchor];
        v62 = [(ARCoachingButton *)v22 bottomAnchor];
        v63 = [v61 constraintEqualToAnchor:v62];
        v88[7] = v63;
        v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:8];
        [v77 activateConstraints:v64];

        v49 = v74;
        v50 = v75;

        v48 = v76;
        v52 = v71;

        v47 = v78;
        v46 = v79;

        v16 = v80;
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

- (void)addTarget:(id)a3 action:(SEL)a4 forControlEvents:(unint64_t)a5
{
  v8 = a3;
  v9 = [(ARCoachingButton *)self button];
  [v9 addTarget:v8 action:a4 forControlEvents:a5];
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(ARCoachingButton *)self button];
  if (v6)
  {
    v7 = [(ARCoachingButton *)self button];
    [v7 systemLayoutSizeFittingSize:{width, height}];
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

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v10 = [(ARCoachingButton *)self button];
  if (v10)
  {
    v13 = [(ARCoachingButton *)self button];
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
  v3 = [(ARCoachingButton *)self button];
  if (v3)
  {
    v4 = [(ARCoachingButton *)self button];
    [v4 intrinsicContentSize];
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

- (void)setContentEdgeInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v8 = _UISolariumEnabled();
  v9 = [(ARCoachingButton *)self button];
  v13 = v9;
  if (v8)
  {
    v10 = [v9 configuration];

    [v10 setContentInsets:{top, left, bottom, right}];
    v11 = [(ARCoachingButton *)self button];
    [v11 setConfiguration:v10];

    v12 = v10;
  }

  else
  {
    [v9 setContentEdgeInsets:{top, left, bottom, right}];
    v12 = v13;
  }
}

- (UIEdgeInsets)contentEdgeInsets
{
  v3 = _UISolariumEnabled();
  v4 = [(ARCoachingButton *)self button];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 configuration];
    [v6 contentInsets];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    [v4 contentEdgeInsets];
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
    v3 = [(ARCoachingButton *)self button];
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
    v6 = [(ARCoachingButton *)self regularFont];
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
  if (self->_controlStyle != a3 && [(ARCoachingButton *)self currentStyle]!= 2)
  {
    self->_controlStyle = a3;
    v5 = [(ARCoachingButton *)self blurredBackgroundView];

    if (v5)
    {
      v6 = [(ARCoachingButton *)self blurredBackgroundView];
      [v6 setControlStyle:a3];
    }

    v7 = [(ARCoachingButton *)self button];
    [(ARCoachingButton *)self _updateTitleStyleForButton:v7 withControlStyle:a3];
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
  v56[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 titleForState:0];
  if (v7)
  {
    if ([(ARCoachingButton *)self buttonStyle]== 1 || [(ARCoachingButton *)self textStyle]== 1)
    {
      v8 = [(ARCoachingButton *)self boldFont];
      v43 = [(ARCoachingButton *)self boldFont];
      v9 = [(ARCoachingButton *)self boldFont];
    }

    else
    {
      v8 = [(ARCoachingButton *)self regularFont];
      v43 = [(ARCoachingButton *)self regularFont];
      v9 = [(ARCoachingButton *)self regularFont];
    }

    v44 = v9;
    v10 = [(ARCoachingButton *)self boldFont];
    if (a4 == 3)
    {
      v11 = [(ARCoachingButton *)self white75PercentColor];
      v39 = [(ARCoachingButton *)self white52PercentColor];
      v42 = [(ARCoachingButton *)self white26PercentColor];
      v41 = [(ARCoachingButton *)self blue100PercentColor];
      v13 = [(ARCoachingButton *)self white26PercentColor];
    }

    else
    {
      if (a4 == 2)
      {
        v11 = [(ARCoachingButton *)self white100PercentColor];
        v39 = [(ARCoachingButton *)self white70PercentColor];
        v42 = [(ARCoachingButton *)self white35PercentColor];
        v41 = [(ARCoachingButton *)self white70PercentColor];
        v40 = [(ARCoachingButton *)self white35PercentColor];
        v12 = [(ARCoachingButton *)self white35PercentColor];
LABEL_15:
        v37 = v11;
        v38 = v12;
        v14 = *MEMORY[0x277D740A8];
        v34 = v8;
        v56[0] = v8;
        v15 = *MEMORY[0x277D740C0];
        v55[0] = v14;
        v55[1] = v15;
        v16 = [(ARCoachingButton *)self _colorDarkenedIfNeededForColor:v11];
        v56[1] = v16;
        v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];

        v35 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7 attributes:v36];
        [v6 setAttributedTitle:v35 forState:0];
        v53[1] = v15;
        v54[0] = v43;
        v53[0] = v14;
        v17 = [(ARCoachingButton *)self _colorDarkenedIfNeededForColor:v39];
        v54[1] = v17;
        v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];

        v32 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7 attributes:v33];
        [v6 setAttributedTitle:v32 forState:1];
        v51[1] = v15;
        v52[0] = v44;
        v51[0] = v14;
        v18 = [(ARCoachingButton *)self _colorDarkenedIfNeededForColor:v42];
        v52[1] = v18;
        v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:2];

        v30 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7 attributes:v31];
        [v6 setAttributedTitle:v30 forState:2];
        v50[0] = v10;
        v49[0] = v14;
        v49[1] = v15;
        v19 = [(ARCoachingButton *)self _colorDarkenedIfNeededForColor:v41];
        v50[1] = v19;
        v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];

        v28 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7 attributes:v29];
        [v6 setAttributedTitle:v28 forState:4];
        v47[1] = v15;
        v48[0] = v10;
        v47[0] = v14;
        [(ARCoachingButton *)self _colorDarkenedIfNeededForColor:v40];
        v21 = v20 = v10;
        v48[1] = v21;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];

        v23 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7 attributes:v22];
        [v6 setAttributedTitle:v23 forState:5];
        v45[1] = v15;
        v46[0] = v20;
        v45[0] = v14;
        v24 = [(ARCoachingButton *)self _colorDarkenedIfNeededForColor:v38];
        v46[1] = v24;
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];

        v26 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v7 attributes:v25];
        [v6 setAttributedTitle:v26 forState:6];

        goto LABEL_16;
      }

      if ([(ARCoachingButton *)self buttonStyle]== 1)
      {
        v11 = [(ARCoachingButton *)self blue100PercentColor];
        v39 = [(ARCoachingButton *)self black70PercentColor];
        [(ARCoachingButton *)self blue50PercentColor];
      }

      else
      {
        v11 = [(ARCoachingButton *)self black70PercentColor];
        v39 = [(ARCoachingButton *)self black70PercentColor];
        [(ARCoachingButton *)self black35PercentColor];
      }
      v42 = ;
      v41 = [(ARCoachingButton *)self blue100PercentColor];
      v13 = [(ARCoachingButton *)self black70PercentColor];
    }

    v40 = v13;
    v12 = [(ARCoachingButton *)self blue50PercentColor];
    goto LABEL_15;
  }

LABEL_16:

  v27 = *MEMORY[0x277D85DE8];
}

- (void)_didUpdateDarkenColorsSetting:(id)a3
{
  v4 = [(ARCoachingButton *)self button];
  [(ARCoachingButton *)self _updateTitleStyleForButton:v4 withControlStyle:[(ARCoachingButton *)self controlStyle]];
}

- (void)_didUpdateContentSizeCategory:(id)a3
{
  regularFont = self->_regularFont;
  self->_regularFont = 0;

  boldFont = self->_boldFont;
  self->_boldFont = 0;

  v6 = [(ARCoachingButton *)self button];
  [(ARCoachingButton *)self _updateTitleStyleForButton:v6 withControlStyle:[(ARCoachingButton *)self controlStyle]];
}

- (void)setTitle:(id)a3
{
  [(ARCoachingWrappedButton *)self->_button setTitle:a3 forState:0];
  button = self->_button;
  v5 = [(ARCoachingButton *)self controlStyle];

  [(ARCoachingButton *)self _updateTitleStyleForButton:button withControlStyle:v5];
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
  v3 = [MEMORY[0x277D75C80] _currentTraitCollection];
  v4 = [v3 userInterfaceStyle];

  if ([(ARCoachingButton *)self currentStyle]!= v4)
  {
    v5 = [(ARCoachingButton *)self blurredBackgroundView];

    if (v4 == 2)
    {
      if (v5)
      {
        v6 = [(ARCoachingButton *)self blurredBackgroundView];
        [v6 setControlStyle:3];
      }

      v7 = [(ARCoachingButton *)self button];
      v8 = self;
      v9 = v7;
      v10 = 3;
    }

    else
    {
      if (v5)
      {
        v11 = [(ARCoachingButton *)self controlStyle];
        v12 = [(ARCoachingButton *)self blurredBackgroundView];
        [v12 setControlStyle:v11];
      }

      v7 = [(ARCoachingButton *)self button];
      v10 = [(ARCoachingButton *)self controlStyle];
      v8 = self;
      v9 = v7;
    }

    [(ARCoachingButton *)v8 _updateTitleStyleForButton:v9 withControlStyle:v10];

    [(ARCoachingButton *)self setCurrentStyle:v4];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = ARCoachingButton;
  [(ARCoachingButton *)&v4 traitCollectionDidChange:a3];
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