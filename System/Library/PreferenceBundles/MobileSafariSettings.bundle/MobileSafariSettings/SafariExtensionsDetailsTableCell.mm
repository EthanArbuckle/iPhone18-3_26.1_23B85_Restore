@interface SafariExtensionsDetailsTableCell
- (SafariExtensionsDetailsTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)updateConstraints;
@end

@implementation SafariExtensionsDetailsTableCell

- (SafariExtensionsDetailsTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v65.receiver = self;
  v65.super_class = SafariExtensionsDetailsTableCell;
  v4 = [(SafariExtensionsDetailsTableCell *)&v65 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    contentView = [(SafariExtensionsDetailsTableCell *)v4 contentView];
    v7 = objc_alloc_init(UILabel);
    primaryLabel = v5->_primaryLabel;
    v5->_primaryLabel = v7;

    v9 = +[UIColor labelColor];
    [(UILabel *)v5->_primaryLabel setTextColor:v9];

    v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v5->_primaryLabel setFont:v10];

    [(UILabel *)v5->_primaryLabel setNumberOfLines:0];
    [(UILabel *)v5->_primaryLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v5->_primaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:v5->_primaryLabel];
    v11 = objc_alloc_init(UILabel);
    secondaryLabel = v5->_secondaryLabel;
    v5->_secondaryLabel = v11;

    v13 = +[UIColor secondaryLabelColor];
    [(UILabel *)v5->_secondaryLabel setTextColor:v13];

    v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v5->_secondaryLabel setFont:v14];

    [(UILabel *)v5->_secondaryLabel setNumberOfLines:4];
    [(UILabel *)v5->_secondaryLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v5->_secondaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:v5->_secondaryLabel];
    v15 = objc_alloc_init(UIImageView);
    imageView = v5->_imageView;
    v5->_imageView = v15;

    [(UIImageView *)v5->_imageView setAccessibilityIgnoresInvertColors:1];
    [(UIImageView *)v5->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v17) = 1144750080;
    [(UIImageView *)v5->_imageView setContentHuggingPriority:0 forAxis:v17];
    LODWORD(v18) = 1144750080;
    [(UIImageView *)v5->_imageView setContentHuggingPriority:1 forAxis:v18];
    LODWORD(v19) = 1144750080;
    [(UIImageView *)v5->_imageView setContentCompressionResistancePriority:0 forAxis:v19];
    LODWORD(v20) = 1144750080;
    [(UIImageView *)v5->_imageView setContentCompressionResistancePriority:1 forAxis:v20];
    v64 = contentView;
    [contentView addSubview:v5->_imageView];
    layoutMarginsGuide = [contentView layoutMarginsGuide];
    leadingAnchor = [(UILabel *)v5->_primaryLabel leadingAnchor];
    v23 = layoutMarginsGuide;
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
    primaryLabelToContentViewLeadingConstraint = v5->_primaryLabelToContentViewLeadingConstraint;
    v5->_primaryLabelToContentViewLeadingConstraint = v25;

    leadingAnchor3 = [(UILabel *)v5->_primaryLabel leadingAnchor];
    layoutMarginsGuide2 = [(UIImageView *)v5->_imageView layoutMarginsGuide];
    trailingAnchor = [layoutMarginsGuide2 trailingAnchor];
    v30 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor];
    primaryLabelToImageViewLeadingConstraint = v5->_primaryLabelToImageViewLeadingConstraint;
    v5->_primaryLabelToImageViewLeadingConstraint = v30;

    layoutMarginsGuide3 = [(UIImageView *)v5->_imageView layoutMarginsGuide];
    leadingAnchor4 = [layoutMarginsGuide3 leadingAnchor];
    leadingAnchor5 = [v23 leadingAnchor];
    v60 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    v66[0] = v60;
    layoutMarginsGuide4 = [(UIImageView *)v5->_imageView layoutMarginsGuide];
    centerYAnchor = [layoutMarginsGuide4 centerYAnchor];
    centerYAnchor2 = [v23 centerYAnchor];
    v56 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v66[1] = v56;
    trailingAnchor2 = [(UILabel *)v5->_primaryLabel trailingAnchor];
    trailingAnchor3 = [v23 trailingAnchor];
    v53 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    v66[2] = v53;
    topAnchor = [(UILabel *)v5->_primaryLabel topAnchor];
    v32 = v23;
    topAnchor2 = [v23 topAnchor];
    v50 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v66[3] = v50;
    topAnchor3 = [(UILabel *)v5->_secondaryLabel topAnchor];
    lastBaselineAnchor = [(UILabel *)v5->_primaryLabel lastBaselineAnchor];
    v47 = [topAnchor3 constraintEqualToAnchor:lastBaselineAnchor constant:6.0];
    v66[4] = v47;
    leadingAnchor6 = [(UILabel *)v5->_secondaryLabel leadingAnchor];
    leadingAnchor7 = [(UILabel *)v5->_primaryLabel leadingAnchor];
    v33 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
    v66[5] = v33;
    bottomAnchor = [(UILabel *)v5->_secondaryLabel bottomAnchor];
    v35 = v32;
    bottomAnchor2 = [v32 bottomAnchor];
    v37 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v66[6] = v37;
    trailingAnchor4 = [(UILabel *)v5->_secondaryLabel trailingAnchor];
    v39 = v35;
    trailingAnchor5 = [v35 trailingAnchor];
    v41 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    v66[7] = v41;
    v42 = [NSArray arrayWithObjects:v66 count:8];
    [NSLayoutConstraint activateConstraints:v42];

    v43 = v5;
  }

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v17.receiver = self;
  v17.super_class = SafariExtensionsDetailsTableCell;
  specifierCopy = specifier;
  [(SafariExtensionsDetailsTableCell *)&v17 refreshCellContentsWithSpecifier:specifierCopy];
  userInfo = [specifierCopy userInfo];

  v6 = userInfo;
  v7 = [v6 safari_stringForKey:@"title"];
  v8 = [v6 safari_stringForKey:@"subtitle"];
  v9 = [v6 safari_numberForKey:@"subtitleNumberOfLines"];
  [(UILabel *)self->_primaryLabel setText:v7];
  [(UILabel *)self->_secondaryLabel setText:v8];
  if (v9)
  {
    -[UILabel setNumberOfLines:](self->_secondaryLabel, "setNumberOfLines:", [v9 unsignedIntegerValue]);
  }

  v10 = [v6 objectForKeyedSubscript:@"image"];
  [(UIImageView *)self->_imageView setImage:v10];
  if (v10)
  {
    v11 = [v6 objectForKeyedSubscript:@"imageDirectionalMargins"];
    v12 = v11;
    if (v11)
    {
      [v11 directionalEdgeInsetsValue];
    }

    else
    {
      top = NSDirectionalEdgeInsetsZero.top;
      leading = NSDirectionalEdgeInsetsZero.leading;
      bottom = NSDirectionalEdgeInsetsZero.bottom;
      trailing = NSDirectionalEdgeInsetsZero.trailing;
    }

    [(UIImageView *)self->_imageView setDirectionalLayoutMargins:top, leading, bottom, trailing];
  }

  [(SafariExtensionsDetailsTableCell *)self setNeedsUpdateConstraints];
  [(SafariExtensionsDetailsTableCell *)self setNeedsLayout];
}

- (void)updateConstraints
{
  v8.receiver = self;
  v8.super_class = SafariExtensionsDetailsTableCell;
  [(SafariExtensionsDetailsTableCell *)&v8 updateConstraints];
  image = [(UIImageView *)self->_imageView image];
  v4 = image == 0;
  v5 = image != 0;

  primaryLabelToImageViewLeadingConstraint = self->_primaryLabelToImageViewLeadingConstraint;
  v6 = [NSArray arrayWithObjects:&primaryLabelToImageViewLeadingConstraint count:1];
  [NSLayoutConstraint sf_setConstraints:v6 active:v5];

  primaryLabelToContentViewLeadingConstraint = self->_primaryLabelToContentViewLeadingConstraint;
  v7 = [NSArray arrayWithObjects:&primaryLabelToContentViewLeadingConstraint count:1];
  [NSLayoutConstraint sf_setConstraints:v7 active:v4];
}

@end