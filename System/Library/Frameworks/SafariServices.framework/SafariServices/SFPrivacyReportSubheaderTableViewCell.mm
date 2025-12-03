@interface SFPrivacyReportSubheaderTableViewCell
- (SFPrivacyReportSubheaderTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setSubheaderText:(id)text;
@end

@implementation SFPrivacyReportSubheaderTableViewCell

- (SFPrivacyReportSubheaderTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v30[4] = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = SFPrivacyReportSubheaderTableViewCell;
  v4 = [(SFPrivacyReportSubheaderTableViewCell *)&v29 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    subheaderLabel = v4->_subheaderLabel;
    v4->_subheaderLabel = v5;

    [(UILabel *)v4->_subheaderLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v4->_subheaderLabel setAdjustsFontForContentSizeCategory:1];
    v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    [(UILabel *)v4->_subheaderLabel setFont:v7];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v4->_subheaderLabel setTextColor:secondaryLabelColor];

    [(UILabel *)v4->_subheaderLabel setNumberOfLines:0];
    contentView = [(SFPrivacyReportSubheaderTableViewCell *)v4 contentView];
    [contentView addSubview:v4->_subheaderLabel];
    layoutMarginsGuide = [contentView layoutMarginsGuide];
    v22 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UILabel *)v4->_subheaderLabel leadingAnchor];
    v28 = layoutMarginsGuide;
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v30[0] = v25;
    trailingAnchor = [(UILabel *)v4->_subheaderLabel trailingAnchor];
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v30[1] = v11;
    topAnchor = [(UILabel *)v4->_subheaderLabel topAnchor];
    topAnchor2 = [contentView topAnchor];
    v14 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:2.0];
    v30[2] = v14;
    bottomAnchor = [contentView bottomAnchor];
    bottomAnchor2 = [(UILabel *)v4->_subheaderLabel bottomAnchor];
    v17 = [bottomAnchor constraintEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:0.5];
    v30[3] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
    [v22 activateConstraints:v18];

    subheaderText = v4->_subheaderText;
    v4->_subheaderText = &stru_1F4FE9E38;

    v20 = v4;
  }

  return v4;
}

- (void)setSubheaderText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_subheaderText isEqualToString:?])
  {
    v4 = [textCopy copy];
    subheaderText = self->_subheaderText;
    self->_subheaderText = v4;

    localizedUppercaseString = [textCopy localizedUppercaseString];
    [(UILabel *)self->_subheaderLabel setText:localizedUppercaseString];
  }
}

@end