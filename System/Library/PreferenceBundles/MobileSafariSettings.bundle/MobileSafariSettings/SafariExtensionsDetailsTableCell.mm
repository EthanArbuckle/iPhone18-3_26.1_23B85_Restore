@interface SafariExtensionsDetailsTableCell
- (SafariExtensionsDetailsTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)updateConstraints;
@end

@implementation SafariExtensionsDetailsTableCell

- (SafariExtensionsDetailsTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v65.receiver = self;
  v65.super_class = SafariExtensionsDetailsTableCell;
  v4 = [(SafariExtensionsDetailsTableCell *)&v65 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(SafariExtensionsDetailsTableCell *)v4 contentView];
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
    [v6 addSubview:v5->_primaryLabel];
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
    [v6 addSubview:v5->_secondaryLabel];
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
    v64 = v6;
    [v6 addSubview:v5->_imageView];
    v21 = [v6 layoutMarginsGuide];
    v22 = [(UILabel *)v5->_primaryLabel leadingAnchor];
    v23 = v21;
    v24 = [v21 leadingAnchor];
    v25 = [v22 constraintEqualToAnchor:v24 constant:0.0];
    primaryLabelToContentViewLeadingConstraint = v5->_primaryLabelToContentViewLeadingConstraint;
    v5->_primaryLabelToContentViewLeadingConstraint = v25;

    v27 = [(UILabel *)v5->_primaryLabel leadingAnchor];
    v28 = [(UIImageView *)v5->_imageView layoutMarginsGuide];
    v29 = [v28 trailingAnchor];
    v30 = [v27 constraintEqualToAnchor:v29];
    primaryLabelToImageViewLeadingConstraint = v5->_primaryLabelToImageViewLeadingConstraint;
    v5->_primaryLabelToImageViewLeadingConstraint = v30;

    v63 = [(UIImageView *)v5->_imageView layoutMarginsGuide];
    v62 = [v63 leadingAnchor];
    v61 = [v23 leadingAnchor];
    v60 = [v62 constraintEqualToAnchor:v61];
    v66[0] = v60;
    v59 = [(UIImageView *)v5->_imageView layoutMarginsGuide];
    v58 = [v59 centerYAnchor];
    v57 = [v23 centerYAnchor];
    v56 = [v58 constraintEqualToAnchor:v57];
    v66[1] = v56;
    v55 = [(UILabel *)v5->_primaryLabel trailingAnchor];
    v54 = [v23 trailingAnchor];
    v53 = [v55 constraintEqualToAnchor:v54];
    v66[2] = v53;
    v52 = [(UILabel *)v5->_primaryLabel topAnchor];
    v32 = v23;
    v51 = [v23 topAnchor];
    v50 = [v52 constraintEqualToAnchor:v51];
    v66[3] = v50;
    v49 = [(UILabel *)v5->_secondaryLabel topAnchor];
    v48 = [(UILabel *)v5->_primaryLabel lastBaselineAnchor];
    v47 = [v49 constraintEqualToAnchor:v48 constant:6.0];
    v66[4] = v47;
    v46 = [(UILabel *)v5->_secondaryLabel leadingAnchor];
    v45 = [(UILabel *)v5->_primaryLabel leadingAnchor];
    v33 = [v46 constraintEqualToAnchor:v45];
    v66[5] = v33;
    v34 = [(UILabel *)v5->_secondaryLabel bottomAnchor];
    v35 = v32;
    v36 = [v32 bottomAnchor];
    v37 = [v34 constraintEqualToAnchor:v36];
    v66[6] = v37;
    v38 = [(UILabel *)v5->_secondaryLabel trailingAnchor];
    v39 = v35;
    v40 = [v35 trailingAnchor];
    v41 = [v38 constraintEqualToAnchor:v40];
    v66[7] = v41;
    v42 = [NSArray arrayWithObjects:v66 count:8];
    [NSLayoutConstraint activateConstraints:v42];

    v43 = v5;
  }

  return v5;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v17.receiver = self;
  v17.super_class = SafariExtensionsDetailsTableCell;
  v4 = a3;
  [(SafariExtensionsDetailsTableCell *)&v17 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 userInfo];

  v6 = v5;
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
  v3 = [(UIImageView *)self->_imageView image];
  v4 = v3 == 0;
  v5 = v3 != 0;

  primaryLabelToImageViewLeadingConstraint = self->_primaryLabelToImageViewLeadingConstraint;
  v6 = [NSArray arrayWithObjects:&primaryLabelToImageViewLeadingConstraint count:1];
  [NSLayoutConstraint sf_setConstraints:v6 active:v5];

  primaryLabelToContentViewLeadingConstraint = self->_primaryLabelToContentViewLeadingConstraint;
  v7 = [NSArray arrayWithObjects:&primaryLabelToContentViewLeadingConstraint count:1];
  [NSLayoutConstraint sf_setConstraints:v7 active:v4];
}

@end