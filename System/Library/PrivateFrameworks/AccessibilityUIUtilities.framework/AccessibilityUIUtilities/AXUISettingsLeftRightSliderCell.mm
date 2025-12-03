@interface AXUISettingsLeftRightSliderCell
- (AXUISettingsLeftRightSliderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)labelColor;
- (id)newControl;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setAccessibilityLabel:(id)label;
- (void)updateValue;
@end

@implementation AXUISettingsLeftRightSliderCell

- (AXUISettingsLeftRightSliderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v76 = *MEMORY[0x1E69E9840];
  v73.receiver = self;
  v73.super_class = AXUISettingsLeftRightSliderCell;
  v4 = [(PSSliderTableCell *)&v73 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    leftLabel = v4->_leftLabel;
    v4->_leftLabel = v5;

    v7 = *MEMORY[0x1E69DDD80];
    v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    [(UILabel *)v4->_leftLabel setFont:v8];

    v9 = AXUILocalizedStringForKey(@"LeftStereoBalanceIdentifier");
    [(UILabel *)v4->_leftLabel setText:v9];

    [(UILabel *)v4->_leftLabel setAdjustsFontForContentSizeCategory:1];
    labelColor = [(AXUISettingsLeftRightSliderCell *)v4 labelColor];
    [(UILabel *)v4->_leftLabel setTextColor:labelColor];

    contentView = [(AXUISettingsLeftRightSliderCell *)v4 contentView];
    [contentView addSubview:v4->_leftLabel];

    v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    rightLabel = v4->_rightLabel;
    v4->_rightLabel = v12;

    [(UILabel *)v4->_rightLabel setAdjustsFontForContentSizeCategory:1];
    v14 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v7];
    [(UILabel *)v4->_rightLabel setFont:v14];

    [(UILabel *)v4->_rightLabel setAdjustsFontForContentSizeCategory:1];
    v15 = AXUILocalizedStringForKey(@"RightStereoBalanceIdentifier");
    [(UILabel *)v4->_rightLabel setText:v15];

    labelColor2 = [(AXUISettingsLeftRightSliderCell *)v4 labelColor];
    [(UILabel *)v4->_rightLabel setTextColor:labelColor2];

    contentView2 = [(AXUISettingsLeftRightSliderCell *)v4 contentView];
    [contentView2 addSubview:v4->_rightLabel];

    v18 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    valueLabel = v4->_valueLabel;
    v4->_valueLabel = v18;

    [(UILabel *)v4->_valueLabel setAdjustsFontForContentSizeCategory:1];
    v20 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v7];
    [(UILabel *)v4->_valueLabel setFont:v20];

    labelColor3 = [(AXUISettingsLeftRightSliderCell *)v4 labelColor];
    [(UILabel *)v4->_valueLabel setTextColor:labelColor3];

    contentView3 = [(AXUISettingsLeftRightSliderCell *)v4 contentView];
    [contentView3 addSubview:v4->_valueLabel];

    [(UILabel *)v4->_leftLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_rightLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_valueLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = *MEMORY[0x1E69C5798];
    [*(&v4->super.super.super.super.super.super.super.isa + v23) setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView4 = [(AXUISettingsLeftRightSliderCell *)v4 contentView];
    constraints = [contentView4 constraints];
    v26 = [constraints copy];

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    obj = v26;
    v27 = [obj countByEnumeratingWithState:&v69 objects:v75 count:16];
    p_isa = &v4->super.super.super.super.super.super.super.isa;
    if (!v27)
    {
      goto LABEL_15;
    }

    v28 = v27;
    v29 = *v70;
    while (1)
    {
      v30 = 0;
      do
      {
        if (*v70 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v69 + 1) + 8 * v30);
        firstAnchor = [v31 firstAnchor];
        topAnchor = [*(&v4->super.super.super.super.super.super.super.isa + v23) topAnchor];
        v34 = topAnchor;
        if (firstAnchor != topAnchor)
        {

LABEL_9:
          goto LABEL_11;
        }

        secondAnchor = [v31 secondAnchor];
        contentView5 = [(AXUISettingsLeftRightSliderCell *)v4 contentView];
        topAnchor2 = [contentView5 topAnchor];

        v4 = p_isa;
        if (secondAnchor == topAnchor2)
        {
          firstAnchor = [p_isa contentView];
          [firstAnchor removeConstraint:v31];
          goto LABEL_9;
        }

LABEL_11:
        ++v30;
      }

      while (v28 != v30);
      v38 = [obj countByEnumeratingWithState:&v69 objects:v75 count:16];
      v28 = v38;
      if (!v38)
      {
LABEL_15:

        bottomAnchor = [*(&v4->super.super.super.super.super.super.super.isa + v23) bottomAnchor];
        contentView6 = [(AXUISettingsLeftRightSliderCell *)v4 contentView];
        bottomAnchor2 = [contentView6 bottomAnchor];
        v62 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-10.0];
        v74[0] = v62;
        bottomAnchor3 = [(UILabel *)v4->_leftLabel bottomAnchor];
        topAnchor3 = [*(&v4->super.super.super.super.super.super.super.isa + v23) topAnchor];
        v59 = [bottomAnchor3 constraintEqualToAnchor:topAnchor3 constant:-10.0];
        v74[1] = v59;
        bottomAnchor4 = [(UILabel *)v4->_rightLabel bottomAnchor];
        topAnchor4 = [*(&v4->super.super.super.super.super.super.super.isa + v23) topAnchor];
        v56 = [bottomAnchor4 constraintEqualToAnchor:topAnchor4 constant:-10.0];
        v74[2] = v56;
        bottomAnchor5 = [(UILabel *)v4->_valueLabel bottomAnchor];
        topAnchor5 = [*(&v4->super.super.super.super.super.super.super.isa + v23) topAnchor];
        v53 = [bottomAnchor5 constraintEqualToAnchor:topAnchor5 constant:-10.0];
        v74[3] = v53;
        leftAnchor = [(UILabel *)v4->_leftLabel leftAnchor];
        leftAnchor2 = [*(&v4->super.super.super.super.super.super.super.isa + v23) leftAnchor];
        v50 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:5.0];
        v74[4] = v50;
        rightAnchor = [(UILabel *)v4->_rightLabel rightAnchor];
        rightAnchor2 = [*(&v4->super.super.super.super.super.super.super.isa + v23) rightAnchor];
        v40 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-5.0];
        v74[5] = v40;
        centerXAnchor = [(UILabel *)v4->_valueLabel centerXAnchor];
        centerXAnchor2 = [*(&v4->super.super.super.super.super.super.super.isa + v23) centerXAnchor];
        v43 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:0.0];
        v74[6] = v43;
        contentView7 = [p_isa contentView];
        topAnchor6 = [contentView7 topAnchor];
        topAnchor7 = [p_isa[153] topAnchor];
        v47 = [topAnchor6 constraintEqualToAnchor:topAnchor7 constant:-10.0];
        v74[7] = v47;
        v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:8];

        v4 = p_isa;
        [MEMORY[0x1E696ACD8] activateConstraints:v48];

        return v4;
      }
    }
  }

  return v4;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v5.receiver = self;
  v5.super_class = AXUISettingsLeftRightSliderCell;
  [(PSSliderTableCell *)&v5 refreshCellContentsWithSpecifier:specifier];
  control = [(PSControlTableCell *)self control];
  [control setTicks:&unk_1F4051C60];
  [control setSnappingDistance:0.003];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = AXUISettingsLeftRightSliderCell;
  [(PSSliderTableCell *)&v3 prepareForReuse];
  self->_displayValue = 0.0;
  [(UILabel *)self->_valueLabel setText:0];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = AXUISettingsLeftRightSliderCell;
  [(PSTableCell *)&v3 layoutSubviews];
  [(AXUISettingsLeftRightSliderCell *)self updateValue];
}

- (void)updateValue
{
  v3 = MEMORY[0x1E696AEC0];
  [(AXUISettingsLeftRightSliderCell *)self displayValue];
  v5 = [v3 localizedStringWithFormat:@"%.2f", v4];
  [(UILabel *)self->_valueLabel setText:v5];

  v6 = *MEMORY[0x1E69C5798];
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, self);
    v7 = *(&self->super.super.super.super.super.super.super.isa + v6);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __46__AXUISettingsLeftRightSliderCell_updateValue__block_invoke;
    v8[3] = &unk_1E812E120;
    objc_copyWeak(&v9, &location);
    [v7 _setAccessibilityValueBlock:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

id __46__AXUISettingsLeftRightSliderCell_updateValue__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained displayValue];
  v3 = v2;

  if (v3 <= 0.0)
  {
    if (v3 >= 0.0)
    {
      v7 = AXFormatFloatWithPercentage();
      goto LABEL_7;
    }

    v4 = AXFormatFloatWithPercentage();
    v5 = @"LEFT_RIGHT_BALANCE_VALUE_FORMAT_LEFT";
  }

  else
  {
    v4 = AXFormatFloatWithPercentage();
    v5 = @"LEFT_RIGHT_BALANCE_VALUE_FORMAT_RIGHT";
  }

  v6 = AXUILocalizedStringForKey(v5);
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:v6, v4];

LABEL_7:

  return v7;
}

- (void)setAccessibilityLabel:(id)label
{
  v5.receiver = self;
  v5.super_class = AXUISettingsLeftRightSliderCell;
  labelCopy = label;
  [(AXUISettingsLeftRightSliderCell *)&v5 setAccessibilityLabel:labelCopy];
  [*(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x1E69C5798]) setAccessibilityLabel:{labelCopy, v5.receiver, v5.super_class}];
}

- (id)labelColor
{
  appearance = [MEMORY[0x1E69C5710] appearance];
  usesDarkTheme = [appearance usesDarkTheme];

  if (usesDarkTheme)
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v4 = ;

  return v4;
}

- (id)newControl
{
  v2 = [AXUISettingsTickMarkSlider alloc];
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);

  return [(AXUISettingsTickMarkSlider *)v2 initWithFrame:v3, v4, v5, v6];
}

@end