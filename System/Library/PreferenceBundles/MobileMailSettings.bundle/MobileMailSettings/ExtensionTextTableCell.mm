@interface ExtensionTextTableCell
- (ExtensionTextTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation ExtensionTextTableCell

- (ExtensionTextTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v42.receiver = self;
  v42.super_class = ExtensionTextTableCell;
  identifierCopy = identifier;
  v5 = [(ExtensionTextTableCell *)&v42 initWithStyle:style reuseIdentifier:?];
  v6 = v5;
  if (v5)
  {
    contentView = [(ExtensionTextTableCell *)v5 contentView];
    v7 = objc_alloc_init(UILabel);
    primaryLabel = v6->_primaryLabel;
    v6->_primaryLabel = v7;

    v9 = +[ExtensionsDetailSettingsPane primaryLabelColor];
    [(UILabel *)v6->_primaryLabel setTextColor:v9];

    v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v6->_primaryLabel setFont:v10];

    [(UILabel *)v6->_primaryLabel setNumberOfLines:0];
    [(UILabel *)v6->_primaryLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v6->_primaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:v6->_primaryLabel];
    v11 = objc_alloc_init(UILabel);
    secondaryLabel = v6->_secondaryLabel;
    v6->_secondaryLabel = v11;

    v13 = +[ExtensionsDetailSettingsPane secondaryLabelColor];
    [(UILabel *)v6->_secondaryLabel setTextColor:v13];

    v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v6->_secondaryLabel setFont:v14];

    [(UILabel *)v6->_secondaryLabel setNumberOfLines:4];
    [(UILabel *)v6->_secondaryLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v6->_secondaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:v6->_secondaryLabel];
    layoutMarginsGuide = [contentView layoutMarginsGuide];
    leadingAnchor = [(UILabel *)v6->_primaryLabel leadingAnchor];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v32 = [leadingAnchor constraintEqualToAnchor:0.0 constant:?];
    v43[0] = v32;
    trailingAnchor = [(UILabel *)v6->_primaryLabel trailingAnchor];
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v30 = [trailingAnchor constraintEqualToAnchor:?];
    v43[1] = v30;
    topAnchor = [(UILabel *)v6->_primaryLabel topAnchor];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    v28 = [topAnchor constraintEqualToAnchor:?];
    v43[2] = v28;
    topAnchor3 = [(UILabel *)v6->_secondaryLabel topAnchor];
    lastBaselineAnchor = [(UILabel *)v6->_primaryLabel lastBaselineAnchor];
    v26 = [topAnchor3 constraintEqualToAnchor:6.0 constant:?];
    v43[3] = v26;
    leadingAnchor3 = [(UILabel *)v6->_secondaryLabel leadingAnchor];
    leadingAnchor4 = [(UILabel *)v6->_primaryLabel leadingAnchor];
    v15 = [leadingAnchor3 constraintEqualToAnchor:?];
    v43[4] = v15;
    bottomAnchor = [(UILabel *)v6->_secondaryLabel bottomAnchor];
    bottomAnchor2 = [layoutMarginsGuide bottomAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v43[5] = v18;
    trailingAnchor3 = [(UILabel *)v6->_secondaryLabel trailingAnchor];
    trailingAnchor4 = [layoutMarginsGuide trailingAnchor];
    v21 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v43[6] = v21;
    v22 = [NSArray arrayWithObjects:v43 count:7];
    [NSLayoutConstraint activateConstraints:v22];

    v23 = v6;
  }

  return v6;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v11.receiver = self;
  v11.super_class = ExtensionTextTableCell;
  [(ExtensionTextTableCell *)&v11 refreshCellContentsWithSpecifier:specifierCopy];
  userInfo = [specifierCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"title"];
  v7 = [userInfo objectForKeyedSubscript:@"subtitle"];
  v8 = [userInfo objectForKeyedSubscript:@"subtitleNumberOfLines"];
  primaryLabel = self->_primaryLabel;
  if (v6)
  {
    [(UILabel *)primaryLabel setText:v6];
  }

  else
  {
    [(UILabel *)primaryLabel setHidden:1];
  }

  secondaryLabel = self->_secondaryLabel;
  if (v7)
  {
    [(UILabel *)secondaryLabel setAttributedText:v7];
  }

  else
  {
    [(UILabel *)secondaryLabel setHidden:1];
  }

  if (v8)
  {
    -[UILabel setNumberOfLines:](self->_secondaryLabel, "setNumberOfLines:", [v8 integerValue]);
  }

  [(ExtensionTextTableCell *)self setNeedsUpdateConstraints];
  [(ExtensionTextTableCell *)self setNeedsLayout];
}

@end