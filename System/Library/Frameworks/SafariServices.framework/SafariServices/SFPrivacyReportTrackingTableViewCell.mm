@interface SFPrivacyReportTrackingTableViewCell
- (SFPrivacyReportTrackingTableViewCell)initWithDetailLabel:(BOOL)label reuseIdentifier:(id)identifier;
- (void)_updateCountViews;
- (void)setCount:(double)count;
- (void)setMaxCount:(double)count;
@end

@implementation SFPrivacyReportTrackingTableViewCell

- (SFPrivacyReportTrackingTableViewCell)initWithDetailLabel:(BOOL)label reuseIdentifier:(id)identifier
{
  labelCopy = label;
  v87[10] = *MEMORY[0x1E69E9840];
  v85.receiver = self;
  v85.super_class = SFPrivacyReportTrackingTableViewCell;
  v5 = [(SFPrivacyReportTrackingTableViewCell *)&v85 initWithStyle:0 reuseIdentifier:identifier];
  v6 = v5;
  if (v5)
  {
    [(SFPrivacyReportTrackingTableViewCell *)v5 setAccessoryType:1];
    contentView = [(SFPrivacyReportTrackingTableViewCell *)v6 contentView];
    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    domainLabel = v6->_domainLabel;
    v6->_domainLabel = v8;

    v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)v6->_domainLabel setFont:v10];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v6->_domainLabel setTextColor:labelColor];

    [(UILabel *)v6->_domainLabel setNumberOfLines:1];
    [(UILabel *)v6->_domainLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v6->_domainLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:v6->_domainLabel];
    v78 = labelCopy;
    if (labelCopy)
    {
      v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      domainDetailLabel = v6->_domainDetailLabel;
      v6->_domainDetailLabel = v12;

      v14 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
      [(UILabel *)v6->_domainDetailLabel setFont:v14];

      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [(UILabel *)v6->_domainDetailLabel setTextColor:secondaryLabelColor];

      [(UILabel *)v6->_domainDetailLabel setNumberOfLines:0];
      [(UILabel *)v6->_domainDetailLabel setAdjustsFontForContentSizeCategory:1];
      [(UILabel *)v6->_domainDetailLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      [contentView addSubview:v6->_domainDetailLabel];
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __76__SFPrivacyReportTrackingTableViewCell_initWithDetailLabel_reuseIdentifier___block_invoke;
    aBlock[3] = &unk_1E8494A40;
    v16 = contentView;
    v84 = v16;
    v17 = _Block_copy(aBlock);
    v18 = v17[2]();
    countLabel = v6->_countLabel;
    v6->_countLabel = v18;

    secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v6->_countLabel setTextColor:secondaryLabelColor2];

    v80 = v17;
    v21 = (v17[2])(v17);
    maxCountLabel = v6->_maxCountLabel;
    v6->_maxCountLabel = v21;

    systemRedColor = [MEMORY[0x1E69DC888] systemRedColor];
    [(UILabel *)v6->_maxCountLabel setTextColor:systemRedColor];

    [(UILabel *)v6->_maxCountLabel setHidden:1];
    v24 = objc_alloc_init(SFPrivacyReportMeterBar);
    countMeter = v6->_countMeter;
    v6->_countMeter = v24;

    [(SFPrivacyReportMeterBar *)v6->_countMeter setTranslatesAutoresizingMaskIntoConstraints:0];
    [v16 addSubview:v6->_countMeter];
    v26 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    maxCountMeterGuide = v6->_maxCountMeterGuide;
    v6->_maxCountMeterGuide = v26;

    [v16 addLayoutGuide:v6->_maxCountMeterGuide];
    layoutMarginsGuide = [v16 layoutMarginsGuide];
    v61 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UILabel *)v6->_domainLabel leadingAnchor];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v72 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v87[0] = v72;
    trailingAnchor = [(UILabel *)v6->_domainLabel trailingAnchor];
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v68 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v87[1] = v68;
    leadingAnchor3 = [(UILayoutGuide *)v6->_maxCountMeterGuide leadingAnchor];
    leadingAnchor4 = [layoutMarginsGuide leadingAnchor];
    v65 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v87[2] = v65;
    leadingAnchor5 = [(UILabel *)v6->_maxCountLabel leadingAnchor];
    trailingAnchor3 = [(UILayoutGuide *)v6->_maxCountMeterGuide trailingAnchor];
    v62 = [leadingAnchor5 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor3 multiplier:1.0];
    v87[3] = v62;
    trailingAnchor4 = [(UILabel *)v6->_maxCountLabel trailingAnchor];
    trailingAnchor5 = [v16 trailingAnchor];
    v58 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5 constant:-12.0];
    v87[4] = v58;
    leadingAnchor6 = [(UILabel *)v6->_countLabel leadingAnchor];
    trailingAnchor6 = [(SFPrivacyReportMeterBar *)v6->_countMeter trailingAnchor];
    v55 = [leadingAnchor6 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor6 multiplier:1.0];
    v87[5] = v55;
    leadingAnchor7 = [(SFPrivacyReportMeterBar *)v6->_countMeter leadingAnchor];
    v82 = layoutMarginsGuide;
    leadingAnchor8 = [layoutMarginsGuide leadingAnchor];
    v52 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    v87[6] = v52;
    topAnchor = [(UILabel *)v6->_domainLabel topAnchor];
    topAnchor2 = [v16 topAnchor];
    v30 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:1.0];
    v87[7] = v30;
    v81 = v16;
    bottomAnchor = [v16 bottomAnchor];
    bottomAnchor2 = [(UILabel *)v6->_countLabel bottomAnchor];
    v33 = [bottomAnchor constraintEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:1.0];
    v87[8] = v33;
    centerYAnchor = [(SFPrivacyReportMeterBar *)v6->_countMeter centerYAnchor];
    centerYAnchor2 = [(UILabel *)v6->_countLabel centerYAnchor];
    v36 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v87[9] = v36;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:10];
    [v61 activateConstraints:v37];

    if (v78)
    {
      v75 = MEMORY[0x1E696ACD8];
      leadingAnchor9 = [(UILabel *)v6->_domainDetailLabel leadingAnchor];
      leadingAnchor10 = [v82 leadingAnchor];
      v40 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
      v86[0] = v40;
      trailingAnchor7 = [(UILabel *)v6->_domainDetailLabel trailingAnchor];
      trailingAnchor8 = [v82 trailingAnchor];
      v73 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
      v86[1] = v73;
      topAnchor3 = [(UILabel *)v6->_domainDetailLabel topAnchor];
      bottomAnchor3 = [(UILabel *)v6->_domainLabel bottomAnchor];
      v42 = [topAnchor3 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor3 multiplier:0.25];
      v86[2] = v42;
      topAnchor4 = [(UILabel *)v6->_countLabel topAnchor];
      bottomAnchor4 = [(UILabel *)v6->_domainDetailLabel bottomAnchor];
      v45 = [topAnchor4 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor4 multiplier:0.25];
      v86[3] = v45;
      v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:4];
      [v75 activateConstraints:v46];
    }

    else
    {
      leadingAnchor9 = [(UILabel *)v6->_countLabel topAnchor];
      leadingAnchor10 = [(UILabel *)v6->_domainLabel bottomAnchor];
      v40 = [leadingAnchor9 constraintEqualToSystemSpacingBelowAnchor:leadingAnchor10 multiplier:0.25];
      [v40 setActive:1];
    }

    v47 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    countFormatter = v6->_countFormatter;
    v6->_countFormatter = v47;

    [(NSNumberFormatter *)v6->_countFormatter setNumberStyle:1];
    [(SFPrivacyReportTrackingTableViewCell *)v6 _updateCountViews];
    v49 = v6;
  }

  return v6;
}

id __76__SFPrivacyReportTrackingTableViewCell_initWithDetailLabel_reuseIdentifier___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  v3 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD80]];
  v4 = [v3 fontDescriptorWithSymbolicTraits:0x8000];

  v5 = [MEMORY[0x1E69DB878] fontWithDescriptor:v4 size:0.0];
  [v2 setFont:v5];

  [v2 setNumberOfLines:1];
  [v2 setAdjustsFontForContentSizeCategory:1];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(a1 + 32) addSubview:v2];

  return v2;
}

- (void)setCount:(double)count
{
  if (self->_count != count)
  {
    self->_count = count;
    [(SFPrivacyReportTrackingTableViewCell *)self _updateCountViews];
  }
}

- (void)setMaxCount:(double)count
{
  if (self->_maxCount != count)
  {
    self->_maxCount = count;
    [(SFPrivacyReportTrackingTableViewCell *)self _updateCountViews];
  }
}

- (void)_updateCountViews
{
  countFormatter = self->_countFormatter;
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_count];
  v5 = [(NSNumberFormatter *)countFormatter stringFromNumber:v4];
  [(UILabel *)self->_countLabel setText:v5];

  v6 = self->_countFormatter;
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_maxCount];
  v8 = [(NSNumberFormatter *)v6 stringFromNumber:v7];
  [(UILabel *)self->_maxCountLabel setText:v8];

  [(NSLayoutConstraint *)self->_countMeterWidthConstraint setActive:0];
  maxCount = self->_maxCount;
  widthAnchor = [(SFPrivacyReportMeterBar *)self->_countMeter widthAnchor];
  v11 = widthAnchor;
  if (maxCount <= 0.0001)
  {
    v15 = [widthAnchor constraintEqualToConstant:0.0];
    countMeterWidthConstraint = self->_countMeterWidthConstraint;
    self->_countMeterWidthConstraint = v15;
  }

  else
  {
    countMeterWidthConstraint = [(UILayoutGuide *)self->_maxCountMeterGuide widthAnchor];
    v13 = [v11 constraintEqualToAnchor:countMeterWidthConstraint multiplier:self->_count / self->_maxCount];
    v14 = self->_countMeterWidthConstraint;
    self->_countMeterWidthConstraint = v13;
  }

  LODWORD(v16) = 1144586240;
  [(NSLayoutConstraint *)self->_countMeterWidthConstraint setPriority:v16];
  v17 = self->_countMeterWidthConstraint;

  [(NSLayoutConstraint *)v17 setActive:1];
}

@end