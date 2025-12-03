@interface ENUIExposureCheckCell
- (ENUIExposureCheckCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)commonInit;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation ENUIExposureCheckCell

- (ENUIExposureCheckCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = ENUIExposureCheckCell;
  v4 = [(ENUIExposureCheckCell *)&v7 initWithStyle:3 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(ENUIExposureCheckCell *)v4 commonInit];
  }

  return v5;
}

- (void)commonInit
{
  v3 = objc_opt_new();
  [(ENUIExposureCheckCell *)self setSectionLabel:v3];

  sectionLabel = [(ENUIExposureCheckCell *)self sectionLabel];
  [sectionLabel setNumberOfLines:0];

  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout];
  sectionLabel2 = [(ENUIExposureCheckCell *)self sectionLabel];
  [sectionLabel2 setFont:v5];

  v7 = +[UIColor secondaryLabelColor];
  sectionLabel3 = [(ENUIExposureCheckCell *)self sectionLabel];
  [sectionLabel3 setTextColor:v7];

  v9 = objc_opt_new();
  [(ENUIExposureCheckCell *)self setTitleIconImageView:v9];

  titleIconImageView = [(ENUIExposureCheckCell *)self titleIconImageView];
  [titleIconImageView setContentMode:1];

  titleIconImageView2 = [(ENUIExposureCheckCell *)self titleIconImageView];
  LODWORD(v12) = 1148846080;
  [titleIconImageView2 setContentCompressionResistancePriority:0 forAxis:v12];

  v13 = objc_opt_new();
  [(ENUIExposureCheckCell *)self setTitleLabel:v13];

  titleLabel = [(ENUIExposureCheckCell *)self titleLabel];
  [titleLabel setNumberOfLines:0];

  v15 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  titleLabel2 = [(ENUIExposureCheckCell *)self titleLabel];
  [titleLabel2 setFont:v15];

  titleLabel3 = [(ENUIExposureCheckCell *)self titleLabel];
  LODWORD(v18) = 1144750080;
  [titleLabel3 setContentCompressionResistancePriority:0 forAxis:v18];

  v19 = objc_opt_new();
  [(ENUIExposureCheckCell *)self setSubtitleLabel:v19];

  subtitleLabel = [(ENUIExposureCheckCell *)self subtitleLabel];
  [subtitleLabel setNumberOfLines:0];

  v21 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  subtitleLabel2 = [(ENUIExposureCheckCell *)self subtitleLabel];
  [subtitleLabel2 setFont:v21];

  v23 = +[UIColor secondaryLabelColor];
  subtitleLabel3 = [(ENUIExposureCheckCell *)self subtitleLabel];
  [subtitleLabel3 setTextColor:v23];

  v25 = [UIStackView alloc];
  titleIconImageView3 = [(ENUIExposureCheckCell *)self titleIconImageView];
  v62[0] = titleIconImageView3;
  titleLabel4 = [(ENUIExposureCheckCell *)self titleLabel];
  v62[1] = titleLabel4;
  v28 = objc_opt_new();
  v62[2] = v28;
  v29 = [NSArray arrayWithObjects:v62 count:3];
  v30 = [v25 initWithArrangedSubviews:v29];

  [v30 setAxis:0];
  v31 = v30;
  v59 = v30;
  [v30 setSpacing:4.0];
  v32 = [UIStackView alloc];
  sectionLabel4 = [(ENUIExposureCheckCell *)self sectionLabel];
  v61[0] = sectionLabel4;
  v61[1] = v31;
  subtitleLabel4 = [(ENUIExposureCheckCell *)self subtitleLabel];
  v61[2] = subtitleLabel4;
  v35 = [NSArray arrayWithObjects:v61 count:3];
  v36 = [v32 initWithArrangedSubviews:v35];

  [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v36 setAxis:1];
  [v36 setSpacing:4.0];
  contentView = [(ENUIExposureCheckCell *)self contentView];
  [contentView addSubview:v36];

  leadingAnchor = [v36 leadingAnchor];
  contentView2 = [(ENUIExposureCheckCell *)self contentView];
  layoutMarginsGuide = [contentView2 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v54 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v60[0] = v54;
  trailingAnchor = [v36 trailingAnchor];
  contentView3 = [(ENUIExposureCheckCell *)self contentView];
  layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v49 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v60[1] = v49;
  topAnchor = [v36 topAnchor];
  contentView4 = [(ENUIExposureCheckCell *)self contentView];
  layoutMarginsGuide3 = [contentView4 layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide3 topAnchor];
  v40 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v60[2] = v40;
  bottomAnchor = [v36 bottomAnchor];
  contentView5 = [(ENUIExposureCheckCell *)self contentView];
  layoutMarginsGuide4 = [contentView5 layoutMarginsGuide];
  bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
  v45 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v60[3] = v45;
  v46 = [NSArray arrayWithObjects:v60 count:4];
  [NSLayoutConstraint activateConstraints:v46];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  userInfo = [specifier userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"notificationAvailable"];
  bOOLValue = [v4 BOOLValue];

  v6 = [userInfo objectForKeyedSubscript:@"status"];
  integerValue = [v6 integerValue];

  v8 = [userInfo objectForKeyedSubscript:@"sectionKey"];
  sectionLabel = [(ENUIExposureCheckCell *)self sectionLabel];
  [sectionLabel setText:v8];

  v10 = [userInfo objectForKeyedSubscript:@"titleKey"];
  titleLabel = [(ENUIExposureCheckCell *)self titleLabel];
  [titleLabel setText:v10];

  v12 = +[UIColor labelColor];
  titleLabel2 = [(ENUIExposureCheckCell *)self titleLabel];
  [titleLabel2 setTextColor:v12];

  v14 = [userInfo objectForKeyedSubscript:@"subtitleKey"];
  subtitleLabel = [(ENUIExposureCheckCell *)self subtitleLabel];
  [subtitleLabel setText:v14];

  if (bOOLValue)
  {
    titleLabel3 = [(ENUIExposureCheckCell *)self titleLabel];
    font = [titleLabel3 font];
    [font pointSize];
    v18 = [UIFont boldSystemFontOfSize:?];
    titleLabel4 = [(ENUIExposureCheckCell *)self titleLabel];
    [titleLabel4 setFont:v18];

    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  [(ENUIExposureCheckCell *)self setAccessoryType:v20];
  if (integerValue == &dword_0 + 2)
  {
    v30 = [UIImage systemImageNamed:@"exclamationmark.circle.fill"];
    v31 = [v30 imageWithRenderingMode:2];
    titleIconImageView = [(ENUIExposureCheckCell *)self titleIconImageView];
    [titleIconImageView setImage:v31];

    v29 = +[UIColor systemRedColor];
  }

  else
  {
    if (!integerValue)
    {
      v21 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleFootnote];
      v22 = [UIImage systemImageNamed:@"circle.fill" withConfiguration:v21];
      titleIconImageView2 = [(ENUIExposureCheckCell *)self titleIconImageView];
      [titleIconImageView2 setImage:v22];

      titleIconImageView5 = +[UIColor systemGray2Color];
      titleIconImageView3 = [(ENUIExposureCheckCell *)self titleIconImageView];
      [titleIconImageView3 setTintColor:titleIconImageView5];

      goto LABEL_10;
    }

    v26 = [UIImage systemImageNamed:@"checkmark.circle.fill"];
    v27 = [v26 imageWithRenderingMode:2];
    titleIconImageView4 = [(ENUIExposureCheckCell *)self titleIconImageView];
    [titleIconImageView4 setImage:v27];

    v29 = +[UIColor systemGreenColor];
  }

  v21 = v29;
  titleIconImageView5 = [(ENUIExposureCheckCell *)self titleIconImageView];
  [titleIconImageView5 setTintColor:v21];
LABEL_10:
}

@end