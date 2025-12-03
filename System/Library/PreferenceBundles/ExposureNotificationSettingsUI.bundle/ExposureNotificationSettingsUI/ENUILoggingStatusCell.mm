@interface ENUILoggingStatusCell
- (ENUILoggingStatusCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)commonInit;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation ENUILoggingStatusCell

- (ENUILoggingStatusCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = ENUILoggingStatusCell;
  v4 = [(ENUILoggingStatusCell *)&v7 initWithStyle:3 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(ENUILoggingStatusCell *)v4 commonInit];
  }

  return v5;
}

- (void)commonInit
{
  v3 = objc_opt_new();
  [(ENUILoggingStatusCell *)self setSectionLabel:v3];

  sectionLabel = [(ENUILoggingStatusCell *)self sectionLabel];
  [sectionLabel setNumberOfLines:0];

  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout];
  sectionLabel2 = [(ENUILoggingStatusCell *)self sectionLabel];
  [sectionLabel2 setFont:v5];

  v7 = +[UIColor secondaryLabelColor];
  sectionLabel3 = [(ENUILoggingStatusCell *)self sectionLabel];
  [sectionLabel3 setTextColor:v7];

  v9 = objc_opt_new();
  [(ENUILoggingStatusCell *)self setTitleIconImageView:v9];

  titleIconImageView = [(ENUILoggingStatusCell *)self titleIconImageView];
  [titleIconImageView setContentMode:1];

  v11 = [UIImage systemImageNamed:@"checkmark.circle.fill"];
  v12 = [v11 imageWithRenderingMode:2];
  titleIconImageView2 = [(ENUILoggingStatusCell *)self titleIconImageView];
  [titleIconImageView2 setImage:v12];

  v14 = +[UIColor systemGreenColor];
  titleIconImageView3 = [(ENUILoggingStatusCell *)self titleIconImageView];
  [titleIconImageView3 setTintColor:v14];

  titleIconImageView4 = [(ENUILoggingStatusCell *)self titleIconImageView];
  LODWORD(v17) = 1148846080;
  [titleIconImageView4 setContentCompressionResistancePriority:0 forAxis:v17];

  v18 = objc_opt_new();
  [(ENUILoggingStatusCell *)self setTitleLabel:v18];

  titleLabel = [(ENUILoggingStatusCell *)self titleLabel];
  [titleLabel setNumberOfLines:0];

  v20 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  titleLabel2 = [(ENUILoggingStatusCell *)self titleLabel];
  [titleLabel2 setFont:v20];

  titleLabel3 = [(ENUILoggingStatusCell *)self titleLabel];
  LODWORD(v23) = 1144750080;
  [titleLabel3 setContentCompressionResistancePriority:0 forAxis:v23];

  v24 = objc_opt_new();
  [v24 setContentMode:1];
  v71 = [UIFont _preferredFontForTextStyle:UIFontTextStyleBody variant:1280];
  v70 = [UIImageSymbolConfiguration configurationWithFont:v71 scale:1];
  v69 = [UIImage systemImageNamed:@"chevron.forward" withConfiguration:v70];
  [v24 setImage:v69];
  v25 = +[UIColor tertiaryLabelColor];
  v26 = v24;
  v68 = v24;
  [v24 setTintColor:v25];

  v27 = objc_opt_new();
  [(ENUILoggingStatusCell *)self setSubtitleLabel:v27];

  subtitleLabel = [(ENUILoggingStatusCell *)self subtitleLabel];
  [subtitleLabel setNumberOfLines:0];

  v29 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  subtitleLabel2 = [(ENUILoggingStatusCell *)self subtitleLabel];
  [subtitleLabel2 setFont:v29];

  v31 = +[UIColor secondaryLabelColor];
  subtitleLabel3 = [(ENUILoggingStatusCell *)self subtitleLabel];
  [subtitleLabel3 setTextColor:v31];

  v33 = [UIStackView alloc];
  titleIconImageView5 = [(ENUILoggingStatusCell *)self titleIconImageView];
  v74[0] = titleIconImageView5;
  titleLabel4 = [(ENUILoggingStatusCell *)self titleLabel];
  v74[1] = titleLabel4;
  v36 = objc_opt_new();
  v74[2] = v36;
  v74[3] = v26;
  v37 = [NSArray arrayWithObjects:v74 count:4];
  v38 = [v33 initWithArrangedSubviews:v37];

  [v38 setAxis:0];
  v39 = v38;
  v67 = v38;
  [v38 setSpacing:4.0];
  v40 = [UIStackView alloc];
  sectionLabel4 = [(ENUILoggingStatusCell *)self sectionLabel];
  v73[0] = sectionLabel4;
  v73[1] = v39;
  subtitleLabel4 = [(ENUILoggingStatusCell *)self subtitleLabel];
  v73[2] = subtitleLabel4;
  v43 = [NSArray arrayWithObjects:v73 count:3];
  v44 = [v40 initWithArrangedSubviews:v43];

  [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v44 setAxis:1];
  [v44 setSpacing:4.0];
  contentView = [(ENUILoggingStatusCell *)self contentView];
  [contentView addSubview:v44];

  leadingAnchor = [v44 leadingAnchor];
  contentView2 = [(ENUILoggingStatusCell *)self contentView];
  layoutMarginsGuide = [contentView2 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v62 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v72[0] = v62;
  trailingAnchor = [v44 trailingAnchor];
  contentView3 = [(ENUILoggingStatusCell *)self contentView];
  layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v57 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v72[1] = v57;
  topAnchor = [v44 topAnchor];
  contentView4 = [(ENUILoggingStatusCell *)self contentView];
  layoutMarginsGuide3 = [contentView4 layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide3 topAnchor];
  v48 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v72[2] = v48;
  bottomAnchor = [v44 bottomAnchor];
  contentView5 = [(ENUILoggingStatusCell *)self contentView];
  layoutMarginsGuide4 = [contentView5 layoutMarginsGuide];
  bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
  v53 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v72[3] = v53;
  v54 = [NSArray arrayWithObjects:v72 count:4];
  [NSLayoutConstraint activateConstraints:v54];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  userInfo = [specifier userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"showTitleIconKey"];
  bOOLValue = [v4 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v6 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleFootnote];
    v7 = [UIImage systemImageNamed:@"circle.fill" withConfiguration:v6];
    titleIconImageView = [(ENUILoggingStatusCell *)self titleIconImageView];
    [titleIconImageView setImage:v7];

    v9 = +[UIColor systemGray2Color];
    titleIconImageView2 = [(ENUILoggingStatusCell *)self titleIconImageView];
    [titleIconImageView2 setTintColor:v9];
  }

  v11 = [userInfo objectForKeyedSubscript:@"sectionKey"];
  sectionLabel = [(ENUILoggingStatusCell *)self sectionLabel];
  [sectionLabel setText:v11];

  v13 = [userInfo objectForKeyedSubscript:@"titleKey"];
  titleLabel = [(ENUILoggingStatusCell *)self titleLabel];
  [titleLabel setText:v13];

  v15 = +[UIColor labelColor];
  titleLabel2 = [(ENUILoggingStatusCell *)self titleLabel];
  [titleLabel2 setTextColor:v15];

  v17 = [userInfo objectForKeyedSubscript:@"subtitleKey"];
  subtitleLabel = [(ENUILoggingStatusCell *)self subtitleLabel];
  [subtitleLabel setText:v17];

  [(ENUILoggingStatusCell *)self setAccessoryType:0];
}

@end