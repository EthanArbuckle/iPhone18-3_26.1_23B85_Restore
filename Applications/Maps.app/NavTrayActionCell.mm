@interface NavTrayActionCell
- (NavTrayActionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation NavTrayActionCell

- (void)updateConfigurationUsingState:(id)state
{
  stateCopy = state;
  backgroundConfiguration = [(NavTrayActionCell *)self backgroundConfiguration];
  v5 = [backgroundConfiguration updatedConfigurationForState:stateCopy];

  traitCollection = [(NavTrayActionCell *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (([stateCopy isHighlighted] & 1) != 0 || objc_msgSend(stateCopy, "isSelected"))
  {
    if (userInterfaceStyle == 2)
    {
      +[UIColor tertiarySystemGroupedBackgroundColor];
    }

    else
    {
      +[UIColor systemLightMidGrayColor];
    }
    v8 = ;
  }

  else
  {
    v8 = +[UIColor secondarySystemGroupedBackgroundColor];
  }

  v9 = v8;
  [v5 setBackgroundColor:v8];

  [(NavTrayActionCell *)self setBackgroundConfiguration:v5];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = NavTrayActionCell;
  changeCopy = change;
  [(NavTrayActionCell *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(NavTrayActionCell *)self traitCollection:v8.receiver];
  userInterfaceStyle = [v5 userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    [(NavTrayActionCell *)self setNeedsUpdateConfiguration];
  }
}

- (NavTrayActionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v70.receiver = self;
  v70.super_class = NavTrayActionCell;
  v4 = [(NavTrayActionCell *)&v70 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [(NavTrayActionCell *)v4 setAccessibilityIdentifier:v6];

    v69 = +[UIBackgroundConfiguration listCellConfiguration];
    [v69 setCornerRadius:10.0];
    [(NavTrayActionCell *)v4 setBackgroundConfiguration:v69];
    v7 = objc_opt_new();
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v7 setAccessibilityIdentifier:@"ImageViewContainer"];
    contentView = [(NavTrayActionCell *)v4 contentView];
    [contentView addSubview:v7];

    v9 = objc_opt_new();
    leadingImageBackgroundView = v4->_leadingImageBackgroundView;
    v4->_leadingImageBackgroundView = v9;

    [(UIView *)v4->_leadingImageBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v4->_leadingImageBackgroundView setAccessibilityIdentifier:@"LeadingImageBackground"];
    layer = [(UIView *)v4->_leadingImageBackgroundView layer];
    [layer setCornerRadius:23.0];

    [v7 addSubview:v4->_leadingImageBackgroundView];
    v12 = objc_opt_new();
    leadingImageView = v4->_leadingImageView;
    v4->_leadingImageView = v12;

    [(UIImageView *)v4->_leadingImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_leadingImageView setContentMode:1];
    [(UIImageView *)v4->_leadingImageView setAccessibilityIdentifier:@"LeadingImageView"];
    [v7 addSubview:v4->_leadingImageView];
    v14 = objc_opt_new();
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v14;

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle2];
    [(UILabel *)v4->_titleLabel setFont:v16];

    [(UILabel *)v4->_titleLabel setNumberOfLines:2];
    [(UILabel *)v4->_titleLabel setAccessibilityIdentifier:@"TitleLabel"];
    contentView2 = [(NavTrayActionCell *)v4 contentView];
    [contentView2 addSubview:v4->_titleLabel];

    leadingAnchor = [v7 leadingAnchor];
    contentView3 = [(NavTrayActionCell *)v4 contentView];
    leadingAnchor2 = [contentView3 leadingAnchor];
    v65 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v71[0] = v65;
    widthAnchor = [v7 widthAnchor];
    v63 = [widthAnchor constraintEqualToConstant:70.0];
    v71[1] = v63;
    centerYAnchor = [v7 centerYAnchor];
    contentView4 = [(NavTrayActionCell *)v4 contentView];
    centerYAnchor2 = [contentView4 centerYAnchor];
    v59 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v71[2] = v59;
    centerXAnchor = [(UIView *)v4->_leadingImageBackgroundView centerXAnchor];
    centerXAnchor2 = [v7 centerXAnchor];
    v56 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v71[3] = v56;
    centerYAnchor3 = [(UIView *)v4->_leadingImageBackgroundView centerYAnchor];
    centerYAnchor4 = [v7 centerYAnchor];
    v53 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v71[4] = v53;
    heightAnchor = [(UIView *)v4->_leadingImageBackgroundView heightAnchor];
    v51 = [heightAnchor constraintEqualToConstant:46.0];
    v71[5] = v51;
    widthAnchor2 = [(UIView *)v4->_leadingImageBackgroundView widthAnchor];
    v48 = [widthAnchor2 constraintEqualToConstant:46.0];
    v71[6] = v48;
    centerXAnchor3 = [(UIImageView *)v4->_leadingImageView centerXAnchor];
    centerXAnchor4 = [v7 centerXAnchor];
    v45 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v71[7] = v45;
    centerYAnchor5 = [(UIImageView *)v4->_leadingImageView centerYAnchor];
    v50 = v7;
    centerYAnchor6 = [v7 centerYAnchor];
    v42 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    v71[8] = v42;
    heightAnchor2 = [(UIImageView *)v4->_leadingImageView heightAnchor];
    heightAnchor3 = [(UIView *)v4->_leadingImageBackgroundView heightAnchor];
    v39 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3 multiplier:0.657142857];
    v71[9] = v39;
    leadingAnchor3 = [(UILabel *)v4->_titleLabel leadingAnchor];
    trailingAnchor = [v7 trailingAnchor];
    v36 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor];
    v71[10] = v36;
    trailingAnchor2 = [(UILabel *)v4->_titleLabel trailingAnchor];
    contentView5 = [(NavTrayActionCell *)v4 contentView];
    trailingAnchor3 = [contentView5 trailingAnchor];
    v32 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-16.0];
    v71[11] = v32;
    centerYAnchor7 = [(UILabel *)v4->_titleLabel centerYAnchor];
    contentView6 = [(NavTrayActionCell *)v4 contentView];
    centerYAnchor8 = [contentView6 centerYAnchor];
    v28 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
    v71[12] = v28;
    topAnchor = [(UILabel *)v4->_titleLabel topAnchor];
    contentView7 = [(NavTrayActionCell *)v4 contentView];
    topAnchor2 = [contentView7 topAnchor];
    v21 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:25.0];
    v71[13] = v21;
    bottomAnchor = [(UILabel *)v4->_titleLabel bottomAnchor];
    contentView8 = [(NavTrayActionCell *)v4 contentView];
    bottomAnchor2 = [contentView8 bottomAnchor];
    v25 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:-25.0];
    v71[14] = v25;
    v26 = [NSArray arrayWithObjects:v71 count:15];
    [NSLayoutConstraint activateConstraints:v26];
  }

  return v4;
}

@end