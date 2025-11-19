@interface AXUISettingsLeftRightSliderCell
- (AXUISettingsLeftRightSliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)labelColor;
- (id)newControl;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setAccessibilityLabel:(id)a3;
- (void)updateValue;
@end

@implementation AXUISettingsLeftRightSliderCell

- (AXUISettingsLeftRightSliderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v76 = *MEMORY[0x1E69E9840];
  v73.receiver = self;
  v73.super_class = AXUISettingsLeftRightSliderCell;
  v4 = [(PSSliderTableCell *)&v73 initWithStyle:a3 reuseIdentifier:a4];
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
    v10 = [(AXUISettingsLeftRightSliderCell *)v4 labelColor];
    [(UILabel *)v4->_leftLabel setTextColor:v10];

    v11 = [(AXUISettingsLeftRightSliderCell *)v4 contentView];
    [v11 addSubview:v4->_leftLabel];

    v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    rightLabel = v4->_rightLabel;
    v4->_rightLabel = v12;

    [(UILabel *)v4->_rightLabel setAdjustsFontForContentSizeCategory:1];
    v14 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v7];
    [(UILabel *)v4->_rightLabel setFont:v14];

    [(UILabel *)v4->_rightLabel setAdjustsFontForContentSizeCategory:1];
    v15 = AXUILocalizedStringForKey(@"RightStereoBalanceIdentifier");
    [(UILabel *)v4->_rightLabel setText:v15];

    v16 = [(AXUISettingsLeftRightSliderCell *)v4 labelColor];
    [(UILabel *)v4->_rightLabel setTextColor:v16];

    v17 = [(AXUISettingsLeftRightSliderCell *)v4 contentView];
    [v17 addSubview:v4->_rightLabel];

    v18 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    valueLabel = v4->_valueLabel;
    v4->_valueLabel = v18;

    [(UILabel *)v4->_valueLabel setAdjustsFontForContentSizeCategory:1];
    v20 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v7];
    [(UILabel *)v4->_valueLabel setFont:v20];

    v21 = [(AXUISettingsLeftRightSliderCell *)v4 labelColor];
    [(UILabel *)v4->_valueLabel setTextColor:v21];

    v22 = [(AXUISettingsLeftRightSliderCell *)v4 contentView];
    [v22 addSubview:v4->_valueLabel];

    [(UILabel *)v4->_leftLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_rightLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_valueLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v23 = *MEMORY[0x1E69C5798];
    [*(&v4->super.super.super.super.super.super.super.isa + v23) setTranslatesAutoresizingMaskIntoConstraints:0];
    v24 = [(AXUISettingsLeftRightSliderCell *)v4 contentView];
    v25 = [v24 constraints];
    v26 = [v25 copy];

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
        v32 = [v31 firstAnchor];
        v33 = [*(&v4->super.super.super.super.super.super.super.isa + v23) topAnchor];
        v34 = v33;
        if (v32 != v33)
        {

LABEL_9:
          goto LABEL_11;
        }

        v35 = [v31 secondAnchor];
        v36 = [(AXUISettingsLeftRightSliderCell *)v4 contentView];
        v37 = [v36 topAnchor];

        v4 = p_isa;
        if (v35 == v37)
        {
          v32 = [p_isa contentView];
          [v32 removeConstraint:v31];
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

        v64 = [*(&v4->super.super.super.super.super.super.super.isa + v23) bottomAnchor];
        v65 = [(AXUISettingsLeftRightSliderCell *)v4 contentView];
        v63 = [v65 bottomAnchor];
        v62 = [v64 constraintEqualToAnchor:v63 constant:-10.0];
        v74[0] = v62;
        v61 = [(UILabel *)v4->_leftLabel bottomAnchor];
        v60 = [*(&v4->super.super.super.super.super.super.super.isa + v23) topAnchor];
        v59 = [v61 constraintEqualToAnchor:v60 constant:-10.0];
        v74[1] = v59;
        v58 = [(UILabel *)v4->_rightLabel bottomAnchor];
        v57 = [*(&v4->super.super.super.super.super.super.super.isa + v23) topAnchor];
        v56 = [v58 constraintEqualToAnchor:v57 constant:-10.0];
        v74[2] = v56;
        v55 = [(UILabel *)v4->_valueLabel bottomAnchor];
        v54 = [*(&v4->super.super.super.super.super.super.super.isa + v23) topAnchor];
        v53 = [v55 constraintEqualToAnchor:v54 constant:-10.0];
        v74[3] = v53;
        v52 = [(UILabel *)v4->_leftLabel leftAnchor];
        v51 = [*(&v4->super.super.super.super.super.super.super.isa + v23) leftAnchor];
        v50 = [v52 constraintEqualToAnchor:v51 constant:5.0];
        v74[4] = v50;
        v39 = [(UILabel *)v4->_rightLabel rightAnchor];
        v66 = [*(&v4->super.super.super.super.super.super.super.isa + v23) rightAnchor];
        v40 = [v39 constraintEqualToAnchor:v66 constant:-5.0];
        v74[5] = v40;
        v41 = [(UILabel *)v4->_valueLabel centerXAnchor];
        v42 = [*(&v4->super.super.super.super.super.super.super.isa + v23) centerXAnchor];
        v43 = [v41 constraintEqualToAnchor:v42 constant:0.0];
        v74[6] = v43;
        v44 = [p_isa contentView];
        v45 = [v44 topAnchor];
        v46 = [p_isa[153] topAnchor];
        v47 = [v45 constraintEqualToAnchor:v46 constant:-10.0];
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

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = AXUISettingsLeftRightSliderCell;
  [(PSSliderTableCell *)&v5 refreshCellContentsWithSpecifier:a3];
  v4 = [(PSControlTableCell *)self control];
  [v4 setTicks:&unk_1F4051C60];
  [v4 setSnappingDistance:0.003];
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

- (void)setAccessibilityLabel:(id)a3
{
  v5.receiver = self;
  v5.super_class = AXUISettingsLeftRightSliderCell;
  v4 = a3;
  [(AXUISettingsLeftRightSliderCell *)&v5 setAccessibilityLabel:v4];
  [*(&self->super.super.super.super.super.super.super.isa + *MEMORY[0x1E69C5798]) setAccessibilityLabel:{v4, v5.receiver, v5.super_class}];
}

- (id)labelColor
{
  v2 = [MEMORY[0x1E69C5710] appearance];
  v3 = [v2 usesDarkTheme];

  if (v3)
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