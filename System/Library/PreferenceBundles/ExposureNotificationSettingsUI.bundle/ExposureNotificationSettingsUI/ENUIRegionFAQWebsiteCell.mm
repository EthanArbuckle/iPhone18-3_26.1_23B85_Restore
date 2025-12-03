@interface ENUIRegionFAQWebsiteCell
- (ENUIRegionFAQWebsiteCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)commonInit;
@end

@implementation ENUIRegionFAQWebsiteCell

- (ENUIRegionFAQWebsiteCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = ENUIRegionFAQWebsiteCell;
  v4 = [(ENUIRegionFAQWebsiteCell *)&v7 initWithStyle:3 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(ENUIRegionFAQWebsiteCell *)v4 commonInit];
  }

  return v5;
}

- (void)commonInit
{
  v3 = objc_opt_new();
  [(ENUIRegionFAQWebsiteCell *)self setTitleLabel:v3];

  titleLabel = [(ENUIRegionFAQWebsiteCell *)self titleLabel];
  [titleLabel setNumberOfLines:0];

  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  titleLabel2 = [(ENUIRegionFAQWebsiteCell *)self titleLabel];
  [titleLabel2 setFont:v5];

  v7 = +[UIColor systemBlueColor];
  titleLabel3 = [(ENUIRegionFAQWebsiteCell *)self titleLabel];
  [titleLabel3 setTextColor:v7];

  v9 = ENUILocalizedString();
  titleLabel4 = [(ENUIRegionFAQWebsiteCell *)self titleLabel];
  [titleLabel4 setText:v9];

  titleLabel5 = [(ENUIRegionFAQWebsiteCell *)self titleLabel];
  LODWORD(v12) = 1148846080;
  [titleLabel5 setContentCompressionResistancePriority:0 forAxis:v12];

  v13 = objc_opt_new();
  [(ENUIRegionFAQWebsiteCell *)self setLinkArrowImageView:v13];

  linkArrowImageView = [(ENUIRegionFAQWebsiteCell *)self linkArrowImageView];
  [linkArrowImageView setContentMode:1];

  v15 = +[UIColor systemBlueColor];
  linkArrowImageView2 = [(ENUIRegionFAQWebsiteCell *)self linkArrowImageView];
  [linkArrowImageView2 setTintColor:v15];

  v17 = [UIImage systemImageNamed:@"arrow.up.forward.app.fill"];
  v18 = [v17 imageWithRenderingMode:2];
  linkArrowImageView3 = [(ENUIRegionFAQWebsiteCell *)self linkArrowImageView];
  [linkArrowImageView3 setImage:v18];

  v20 = [UIStackView alloc];
  titleLabel6 = [(ENUIRegionFAQWebsiteCell *)self titleLabel];
  v49[0] = titleLabel6;
  linkArrowImageView4 = [(ENUIRegionFAQWebsiteCell *)self linkArrowImageView];
  v49[1] = linkArrowImageView4;
  v23 = objc_opt_new();
  v49[2] = v23;
  v24 = [NSArray arrayWithObjects:v49 count:3];
  v25 = [v20 initWithArrangedSubviews:v24];

  [v25 setAxis:0];
  [v25 setSpacing:4.0];
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(ENUIRegionFAQWebsiteCell *)self contentView];
  [contentView addSubview:v25];

  leadingAnchor = [v25 leadingAnchor];
  contentView2 = [(ENUIRegionFAQWebsiteCell *)self contentView];
  layoutMarginsGuide = [contentView2 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v43 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v48[0] = v43;
  trailingAnchor = [v25 trailingAnchor];
  contentView3 = [(ENUIRegionFAQWebsiteCell *)self contentView];
  layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v38 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v48[1] = v38;
  topAnchor = [v25 topAnchor];
  contentView4 = [(ENUIRegionFAQWebsiteCell *)self contentView];
  layoutMarginsGuide3 = [contentView4 layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide3 topAnchor];
  v29 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:4.0];
  v48[2] = v29;
  bottomAnchor = [v25 bottomAnchor];
  contentView5 = [(ENUIRegionFAQWebsiteCell *)self contentView];
  layoutMarginsGuide4 = [contentView5 layoutMarginsGuide];
  bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
  v34 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-4.0];
  v48[3] = v34;
  v35 = [NSArray arrayWithObjects:v48 count:4];
  [NSLayoutConstraint activateConstraints:v35];
}

@end