@interface BCAlertActionTableViewCell
+ (double)heightForActionItem:(id)item forWidth:(double)width;
+ (id)reuseIdentifierForItem:(id)item;
- (BCAlertActionTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)activateCenterAlignConstraints;
- (void)loadContentView;
@end

@implementation BCAlertActionTableViewCell

- (BCAlertActionTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = BCAlertActionTableViewCell;
  v4 = [(BCAlertActionTableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(BCAlertActionTableViewCell *)v4 loadContentView];
  }

  return v5;
}

+ (id)reuseIdentifierForItem:(id)item
{
  subTitle = [item subTitle];
  if ([subTitle length])
  {
    v4 = @"CellWithTitleSubTitleAndIcon";
  }

  else
  {
    v4 = @"CellWithTitleAndIcon";
  }

  v5 = v4;

  return v4;
}

+ (double)heightForActionItem:(id)item forWidth:(double)width
{
  itemCopy = item;
  v7 = [self alloc];
  v8 = [objc_opt_class() reuseIdentifierForItem:itemCopy];
  v9 = [v7 initWithStyle:0 reuseIdentifier:v8];

  title = [itemCopy title];
  titleLabel = [v9 titleLabel];
  [titleLabel setText:title];

  subTitle = [itemCopy subTitle];
  subTitleLabel = [v9 subTitleLabel];
  [subTitleLabel setText:subTitle];

  icon = [itemCopy icon];

  mainImageView = [v9 mainImageView];
  [mainImageView setImage:icon];

  LODWORD(v16) = 1148846080;
  LODWORD(v17) = 1112014848;
  [v9 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:0.0 verticalFittingPriority:{v16, v17}];
  v19 = v18;
  [v9 layoutMargins];
  v21 = v19 + v20;
  [v9 layoutMargins];
  v23 = v21 + v22;

  return v23;
}

- (void)loadContentView
{
  contentView = [(BCAlertActionTableViewCell *)self contentView];
  v101 = objc_alloc_init(UILayoutGuide);
  [contentView addLayoutGuide:?];
  v4 = objc_alloc_init(UIImageView);
  objc_storeStrong(&self->_mainImageView, v4);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [contentView addSubview:v4];
  v5 = objc_alloc_init(UILayoutGuide);
  [contentView addLayoutGuide:v5];
  v6 = objc_alloc_init(UIView);
  objc_storeStrong(&self->_titleContainerView, v6);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  layer = [v6 layer];
  [layer setCornerRadius:25.0];

  layer2 = [v6 layer];
  [layer2 setMasksToBounds:1];

  v9 = objc_alloc_init(UILabel);
  objc_storeStrong(&self->_titleLabel, v9);
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 addSubview:v9];
  [contentView addSubview:v6];
  reuseIdentifier = [(BCAlertActionTableViewCell *)self reuseIdentifier];
  v11 = [reuseIdentifier isEqualToString:@"CellWithTitleSubTitleAndIcon"];

  v115 = v5;
  if (v11)
  {
    v12 = objc_alloc_init(UILabel);
    objc_storeStrong(&self->_subTitleLabel, v12);
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:v12];
  }

  else
  {
    v12 = 0;
  }

  v13 = [UIFont systemFontOfSize:20.0];
  v14 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleTitle3];
  v15 = [v14 scaledFontForFont:v13];
  [v9 setFont:v15];

  [v9 setAdjustsFontForContentSizeCategory:1];
  v16 = +[UIColor _systemBlueColor2];
  [v9 setTextColor:v16];

  [v9 setNumberOfLines:2];
  [v9 setLineBreakMode:4];
  v100 = v6;
  v114 = v9;
  v97 = v12;
  if (v12)
  {
    v17 = [UIFont systemFontOfSize:13.0];

    v18 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleCaption1];
    v19 = [v18 scaledFontForFont:v17];
    [v12 setFont:v19];

    [v12 setAdjustsFontForContentSizeCategory:1];
    v20 = +[UIColor secondaryLabelColor];
    [v12 setTextColor:v20];

    [v12 setNumberOfLines:2];
    [v12 setLineBreakMode:4];
    v98 = v17;
  }

  else
  {
    v98 = v13;
  }

  v21 = [UIColor colorNamed:@"AlertActionIconColor"];
  [v4 setTintColor:v21];

  v22 = [UIColor colorNamed:@"CellBackgroundColor"];
  [(BCAlertActionTableViewCell *)self setBackgroundColor:v22];

  v117 = objc_opt_new();
  leadingAnchor = [v101 leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v102 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v123[0] = v102;
  centerYAnchor = [v101 centerYAnchor];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  centerYAnchor2 = [layoutMarginsGuide centerYAnchor];
  v85 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v123[1] = v85;
  topAnchor = [v101 topAnchor];
  topAnchor2 = [contentView topAnchor];
  v80 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  v123[2] = v80;
  bottomAnchor = [v101 bottomAnchor];
  bottomAnchor2 = [contentView bottomAnchor];
  v77 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v123[3] = v77;
  widthAnchor = [v101 widthAnchor];
  v75 = [widthAnchor constraintEqualToConstant:44.0];
  v123[4] = v75;
  heightAnchor = [v101 heightAnchor];
  v73 = [heightAnchor constraintEqualToConstant:44.0];
  v123[5] = v73;
  centerXAnchor = [v4 centerXAnchor];
  centerXAnchor2 = [v101 centerXAnchor];
  v23 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v123[6] = v23;
  [v4 centerYAnchor];
  v24 = v116 = contentView;
  centerYAnchor3 = [v101 centerYAnchor];
  v26 = [v24 constraintEqualToAnchor:centerYAnchor3];
  v123[7] = v26;
  widthAnchor2 = [v4 widthAnchor];
  v28 = [widthAnchor2 constraintEqualToConstant:24.0];
  v123[8] = v28;
  v99 = v4;
  heightAnchor2 = [v4 heightAnchor];
  v30 = [heightAnchor2 constraintEqualToConstant:24.0];
  v123[9] = v30;
  v31 = [NSArray arrayWithObjects:v123 count:10];
  [v117 addObjectsFromArray:v31];

  leadingAnchor3 = [v115 leadingAnchor];
  trailingAnchor = [v101 trailingAnchor];
  v103 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:16.0];
  v122[0] = v103;
  trailingAnchor2 = [v115 trailingAnchor];
  layoutMarginsGuide2 = [v116 layoutMarginsGuide];
  trailingAnchor3 = [layoutMarginsGuide2 trailingAnchor];
  v86 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  v122[1] = v86;
  centerYAnchor4 = [v115 centerYAnchor];
  layoutMarginsGuide3 = [v116 layoutMarginsGuide];
  centerYAnchor5 = [layoutMarginsGuide3 centerYAnchor];
  v33 = [centerYAnchor4 constraintEqualToAnchor:centerYAnchor5];
  v122[2] = v33;
  topAnchor3 = [v115 topAnchor];
  topAnchor4 = [v116 topAnchor];
  v36 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
  v122[3] = v36;
  bottomAnchor3 = [v115 bottomAnchor];
  bottomAnchor4 = [v116 bottomAnchor];
  v39 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4];
  v122[4] = v39;
  v40 = [NSArray arrayWithObjects:v122 count:5];
  [v117 addObjectsFromArray:v40];

  leadingAnchor4 = [v100 leadingAnchor];
  leadingAnchor5 = [v116 leadingAnchor];
  v104 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:12.0];
  v121[0] = v104;
  trailingAnchor4 = [v100 trailingAnchor];
  layoutMarginsGuide4 = [v116 layoutMarginsGuide];
  trailingAnchor5 = [layoutMarginsGuide4 trailingAnchor];
  v42 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
  v121[1] = v42;
  topAnchor5 = [v100 topAnchor];
  topAnchor6 = [v115 topAnchor];
  v45 = [topAnchor5 constraintGreaterThanOrEqualToAnchor:topAnchor6];
  v121[2] = v45;
  bottomAnchor5 = [v100 bottomAnchor];
  bottomAnchor6 = [v115 bottomAnchor];
  v48 = [bottomAnchor5 constraintLessThanOrEqualToAnchor:bottomAnchor6];
  v121[3] = v48;
  v49 = [NSArray arrayWithObjects:v121 count:4];
  [v117 addObjectsFromArray:v49];

  leadingAnchor6 = [v114 leadingAnchor];
  leadingAnchor7 = [v100 leadingAnchor];
  v51 = [leadingAnchor6 constraintEqualToAnchor:?];
  v105 = leadingAnchor6;
  v109 = v51;
  if (v97)
  {
    v120[0] = v51;
    trailingAnchor6 = [v114 trailingAnchor];
    trailingAnchor7 = [v100 trailingAnchor];
    v54 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
    v120[1] = v54;
    topAnchor7 = [v114 topAnchor];
    topAnchor8 = [v100 topAnchor];
    v57 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
    v120[2] = v57;
    v58 = [NSArray arrayWithObjects:v120 count:3];
    [v117 addObjectsFromArray:v58];

    leadingAnchor8 = [v97 leadingAnchor];
    [v100 leadingAnchor];
    leadingAnchor7 = v105 = leadingAnchor8;
    v109 = [leadingAnchor8 constraintEqualToAnchor:?];
    v119[0] = v109;
    trailingAnchor8 = [v97 trailingAnchor];
    trailingAnchor9 = [v100 trailingAnchor];
    v96 = trailingAnchor8;
    v61 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9];
    v119[1] = v61;
    topAnchor9 = [v97 topAnchor];
    bottomAnchor7 = [v114 bottomAnchor];
    v64 = [topAnchor9 constraintEqualToAnchor:bottomAnchor7 constant:0.0];
    v119[2] = v64;
    bottomAnchor8 = [v97 bottomAnchor];
    bottomAnchor9 = [v115 bottomAnchor];
    v67 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9];
    v119[3] = v67;
    v68 = v119;
  }

  else
  {
    v118[0] = v51;
    trailingAnchor10 = [v114 trailingAnchor];
    trailingAnchor9 = [v100 trailingAnchor];
    v96 = trailingAnchor10;
    v61 = [trailingAnchor10 constraintGreaterThanOrEqualToAnchor:trailingAnchor9];
    v118[1] = v61;
    topAnchor9 = [v114 topAnchor];
    bottomAnchor7 = [v100 topAnchor];
    v64 = [topAnchor9 constraintEqualToAnchor:bottomAnchor7 constant:15.0];
    v118[2] = v64;
    bottomAnchor8 = [v114 bottomAnchor];
    bottomAnchor9 = [v100 bottomAnchor];
    v67 = [bottomAnchor8 constraintEqualToAnchor:bottomAnchor9 constant:-15.0];
    v118[3] = v67;
    v68 = v118;
  }

  v70 = [NSArray arrayWithObjects:v68 count:4];
  [v117 addObjectsFromArray:v70];

  [NSLayoutConstraint activateConstraints:v117];
}

- (void)activateCenterAlignConstraints
{
  centerXAnchor = [(UILabel *)self->_titleLabel centerXAnchor];
  contentView = [(BCAlertActionTableViewCell *)self contentView];
  centerXAnchor2 = [contentView centerXAnchor];
  v6 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v8 = v6;
  v7 = [NSArray arrayWithObjects:&v8 count:1];
  [NSLayoutConstraint activateConstraints:v7];

  [(UILabel *)self->_titleLabel setTextAlignment:1];
}

@end