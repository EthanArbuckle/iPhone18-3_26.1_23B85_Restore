@interface ExtensionTextTableCell
- (ExtensionTextTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation ExtensionTextTableCell

- (ExtensionTextTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v42.receiver = self;
  v42.super_class = ExtensionTextTableCell;
  v39 = a4;
  v5 = [(ExtensionTextTableCell *)&v42 initWithStyle:a3 reuseIdentifier:?];
  v6 = v5;
  if (v5)
  {
    v40 = [(ExtensionTextTableCell *)v5 contentView];
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
    [v40 addSubview:v6->_primaryLabel];
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
    [v40 addSubview:v6->_secondaryLabel];
    v41 = [v40 layoutMarginsGuide];
    v38 = [(UILabel *)v6->_primaryLabel leadingAnchor];
    v33 = [v41 leadingAnchor];
    v32 = [v38 constraintEqualToAnchor:0.0 constant:?];
    v43[0] = v32;
    v37 = [(UILabel *)v6->_primaryLabel trailingAnchor];
    v31 = [v41 trailingAnchor];
    v30 = [v37 constraintEqualToAnchor:?];
    v43[1] = v30;
    v36 = [(UILabel *)v6->_primaryLabel topAnchor];
    v29 = [v41 topAnchor];
    v28 = [v36 constraintEqualToAnchor:?];
    v43[2] = v28;
    v35 = [(UILabel *)v6->_secondaryLabel topAnchor];
    v27 = [(UILabel *)v6->_primaryLabel lastBaselineAnchor];
    v26 = [v35 constraintEqualToAnchor:6.0 constant:?];
    v43[3] = v26;
    v34 = [(UILabel *)v6->_secondaryLabel leadingAnchor];
    v25 = [(UILabel *)v6->_primaryLabel leadingAnchor];
    v15 = [v34 constraintEqualToAnchor:?];
    v43[4] = v15;
    v16 = [(UILabel *)v6->_secondaryLabel bottomAnchor];
    v17 = [v41 bottomAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v43[5] = v18;
    v19 = [(UILabel *)v6->_secondaryLabel trailingAnchor];
    v20 = [v41 trailingAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    v43[6] = v21;
    v22 = [NSArray arrayWithObjects:v43 count:7];
    [NSLayoutConstraint activateConstraints:v22];

    v23 = v6;
  }

  return v6;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ExtensionTextTableCell;
  [(ExtensionTextTableCell *)&v11 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:@"title"];
  v7 = [v5 objectForKeyedSubscript:@"subtitle"];
  v8 = [v5 objectForKeyedSubscript:@"subtitleNumberOfLines"];
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