@interface ENUIRegionCell
- (ENUIRegionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)commonInit;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation ENUIRegionCell

- (ENUIRegionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = ENUIRegionCell;
  v4 = [(ENUIRegionCell *)&v8 initWithStyle:3 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(ENUIRegionCell *)v4 commonInit];
    v6 = v5;
  }

  return v5;
}

- (void)commonInit
{
  v3 = objc_opt_new();
  [(ENUIRegionCell *)self setSectionLabel:v3];

  v4 = ENUILocalizedString();
  sectionLabel = [(ENUIRegionCell *)self sectionLabel];
  [sectionLabel setText:v4];

  sectionLabel2 = [(ENUIRegionCell *)self sectionLabel];
  [sectionLabel2 setNumberOfLines:0];

  v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout];
  sectionLabel3 = [(ENUIRegionCell *)self sectionLabel];
  [sectionLabel3 setFont:v7];

  v9 = +[UIColor secondaryLabelColor];
  sectionLabel4 = [(ENUIRegionCell *)self sectionLabel];
  [sectionLabel4 setTextColor:v9];

  sectionLabel5 = [(ENUIRegionCell *)self sectionLabel];
  [sectionLabel5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = objc_opt_new();
  [(ENUIRegionCell *)self setTitleLabel:v12];

  titleLabel = [(ENUIRegionCell *)self titleLabel];
  [titleLabel setNumberOfLines:0];

  v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  titleLabel2 = [(ENUIRegionCell *)self titleLabel];
  [titleLabel2 setFont:v14];

  v16 = objc_opt_new();
  [(ENUIRegionCell *)self setRegionCapsuleLabel:v16];

  v17 = [UIStackView alloc];
  sectionLabel6 = [(ENUIRegionCell *)self sectionLabel];
  v54[0] = sectionLabel6;
  titleLabel3 = [(ENUIRegionCell *)self titleLabel];
  v54[1] = titleLabel3;
  regionCapsuleLabel = [(ENUIRegionCell *)self regionCapsuleLabel];
  v54[2] = regionCapsuleLabel;
  v21 = [NSArray arrayWithObjects:v54 count:3];
  v22 = [v17 initWithArrangedSubviews:v21];

  [v22 setSpacing:4.0];
  [v22 setAxis:1];
  [v22 setDistribution:3];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(ENUIRegionCell *)self contentView];
  [contentView addSubview:v22];

  leadingAnchor = [v22 leadingAnchor];
  contentView2 = [(ENUIRegionCell *)self contentView];
  layoutMarginsGuide = [contentView2 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v48 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v53[0] = v48;
  trailingAnchor = [v22 trailingAnchor];
  contentView3 = [(ENUIRegionCell *)self contentView];
  layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v43 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v53[1] = v43;
  topAnchor = [v22 topAnchor];
  contentView4 = [(ENUIRegionCell *)self contentView];
  layoutMarginsGuide3 = [contentView4 layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide3 topAnchor];
  v38 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  v53[2] = v38;
  bottomAnchor = [v22 bottomAnchor];
  contentView5 = [(ENUIRegionCell *)self contentView];
  layoutMarginsGuide4 = [contentView5 layoutMarginsGuide];
  bottomAnchor2 = [layoutMarginsGuide4 bottomAnchor];
  v33 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v53[3] = v33;
  centerYAnchor = [v22 centerYAnchor];
  contentView6 = [(ENUIRegionCell *)self contentView];
  layoutMarginsGuide5 = [contentView6 layoutMarginsGuide];
  centerYAnchor2 = [layoutMarginsGuide5 centerYAnchor];
  v28 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v53[4] = v28;
  contentView7 = [(ENUIRegionCell *)self contentView];
  heightAnchor = [contentView7 heightAnchor];
  v31 = [heightAnchor constraintGreaterThanOrEqualToConstant:UITableViewDefaultRowHeight];
  v53[5] = v31;
  v32 = [NSArray arrayWithObjects:v53 count:6];
  [NSLayoutConstraint activateConstraints:v32];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  userInfo = [specifierCopy userInfo];
  v5 = [specifierCopy objectForKeyedSubscript:PSTitleKey];
  titleLabel = [(ENUIRegionCell *)self titleLabel];
  [titleLabel setText:v5];

  header = [userInfo header];
  subtitle = [header subtitle];
  regionCapsuleLabel = [(ENUIRegionCell *)self regionCapsuleLabel];
  [regionCapsuleLabel setText:subtitle];

  header2 = [userInfo header];
  textColor = [header2 textColor];
  regionCapsuleLabel2 = [(ENUIRegionCell *)self regionCapsuleLabel];
  [regionCapsuleLabel2 setTextColor:textColor];

  header3 = [userInfo header];
  backgroundColor = [header3 backgroundColor];
  regionCapsuleLabel3 = [(ENUIRegionCell *)self regionCapsuleLabel];
  [regionCapsuleLabel3 setCapsuleColor:backgroundColor];

  regionCapsuleLabel4 = [(ENUIRegionCell *)self regionCapsuleLabel];
  regionCapsuleLabel5 = [(ENUIRegionCell *)self regionCapsuleLabel];
  text = [regionCapsuleLabel5 text];
  [regionCapsuleLabel4 setHidden:{objc_msgSend(text, "length") == 0}];

  sectionLabel = [(ENUIRegionCell *)self sectionLabel];
  v20 = [specifierCopy objectForKeyedSubscript:PSValueKey];
  [sectionLabel setHidden:{objc_msgSend(v20, "BOOLValue") ^ 1}];

  cellType = [specifierCopy cellType];
  [(ENUIRegionCell *)self setAccessoryType:cellType == &dword_0 + 1];
}

@end