@interface BuddyLanguageLocaleSafetyAndHandlingTableViewCell
- (BuddyLanguageLocaleSafetyAndHandlingTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_configureViews;
- (void)_layoutViews;
- (void)configureCellWithViewModel:(id)model;
- (void)prepareForReuse;
- (void)setLearnMoreAction:(id)action;
@end

@implementation BuddyLanguageLocaleSafetyAndHandlingTableViewCell

- (BuddyLanguageLocaleSafetyAndHandlingTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  selfCopy = self;
  v11 = a2;
  styleCopy = style;
  location = 0;
  objc_storeStrong(&location, identifier);
  v4 = selfCopy;
  selfCopy = 0;
  v8.receiver = v4;
  v8.super_class = BuddyLanguageLocaleSafetyAndHandlingTableViewCell;
  v5 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)&v8 initWithStyle:styleCopy reuseIdentifier:location];
  selfCopy = v5;
  objc_storeStrong(&selfCopy, v5);
  if (v5)
  {
    [selfCopy _layoutViews];
    [selfCopy _configureViews];
  }

  v6 = selfCopy;
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (void)_layoutViews
{
  v2 = objc_alloc_init(UILabel);
  [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self setTitleLabel:v2];

  titleLabel = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self titleLabel];
  [(UILabel *)titleLabel setClipsToBounds:0];

  v4 = objc_alloc_init(UILabel);
  [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self setDescriptionLabel:v4];

  v5 = objc_alloc_init(UIView);
  [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self setDivider:v5];

  v6 = objc_alloc_init(UIView);
  [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self setDividerContainer:v6];

  v7 = objc_alloc_init(UIImageView);
  [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self setIconView:v7];

  v8 = [UIButton buttonWithType:1];
  [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self setLearnMoreButton:v8];

  v9 = objc_alloc_init(UIStackView);
  [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self setContentStackView:v9];

  iconView = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self iconView];
  [(UIImageView *)iconView setTranslatesAutoresizingMaskIntoConstraints:0];

  contentStackView = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentStackView];
  [(UIStackView *)contentStackView setTranslatesAutoresizingMaskIntoConstraints:0];

  divider = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self divider];
  [(UIView *)divider setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentView];
  iconView2 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self iconView];
  [contentView addSubview:iconView2];

  contentView2 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentView];
  contentStackView2 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentStackView];
  [contentView2 addSubview:contentStackView2];

  dividerContainer = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self dividerContainer];
  divider2 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self divider];
  [(UIView *)dividerContainer addSubview:divider2];

  contentStackView3 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentStackView];
  titleLabel2 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self titleLabel];
  [(UIStackView *)contentStackView3 addArrangedSubview:titleLabel2];

  contentStackView4 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentStackView];
  descriptionLabel = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self descriptionLabel];
  [(UIStackView *)contentStackView4 addArrangedSubview:descriptionLabel];

  contentStackView5 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentStackView];
  dividerContainer2 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self dividerContainer];
  [(UIStackView *)contentStackView5 addArrangedSubview:dividerContainer2];

  contentStackView6 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentStackView];
  learnMoreButton = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self learnMoreButton];
  [(UIStackView *)contentStackView6 addArrangedSubview:learnMoreButton];

  iconView3 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self iconView];
  leadingAnchor = [(UIImageView *)iconView3 leadingAnchor];
  leadingAnchor2 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self leadingAnchor];
  v105 = [leadingAnchor constraintEqualToAnchor:8.0 constant:?];
  v110[0] = v105;
  iconView4 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self iconView];
  widthAnchor = [(UIImageView *)iconView4 widthAnchor];
  v102 = [widthAnchor constraintEqualToConstant:30.0];
  v110[1] = v102;
  iconView5 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self iconView];
  topAnchor = [(UIImageView *)iconView5 topAnchor];
  contentStackView7 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentStackView];
  topAnchor2 = [(UIStackView *)contentStackView7 topAnchor];
  v97 = [topAnchor constraintEqualToAnchor:8.0 constant:?];
  v110[2] = v97;
  contentStackView8 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentStackView];
  leadingAnchor3 = [(UIStackView *)contentStackView8 leadingAnchor];
  iconView6 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self iconView];
  trailingAnchor = [(UIImageView *)iconView6 trailingAnchor];
  v92 = [leadingAnchor3 constraintEqualToAnchor:8.0 constant:?];
  v110[3] = v92;
  contentStackView9 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentStackView];
  topAnchor3 = [(UIStackView *)contentStackView9 topAnchor];
  contentView3 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentView];
  topAnchor4 = [contentView3 topAnchor];
  v87 = [topAnchor3 constraintEqualToAnchor:16.0 constant:?];
  v110[4] = v87;
  contentStackView10 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentStackView];
  bottomAnchor = [(UIStackView *)contentStackView10 bottomAnchor];
  contentView4 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  v82 = [bottomAnchor constraintEqualToAnchor:-8.0 constant:?];
  v110[5] = v82;
  contentStackView11 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentStackView];
  trailingAnchor2 = [(UIStackView *)contentStackView11 trailingAnchor];
  contentView5 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentView];
  trailingAnchor3 = [contentView5 trailingAnchor];
  v77 = [trailingAnchor2 constraintEqualToAnchor:-8.0 constant:?];
  v110[6] = v77;
  dividerContainer3 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self dividerContainer];
  heightAnchor = [(UIView *)dividerContainer3 heightAnchor];
  v74 = [(NSLayoutDimension *)heightAnchor constraintEqualToConstant:0.4];
  v110[7] = v74;
  dividerContainer4 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self dividerContainer];
  leadingAnchor4 = [(UIView *)dividerContainer4 leadingAnchor];
  contentStackView12 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentStackView];
  leadingAnchor5 = [(UIStackView *)contentStackView12 leadingAnchor];
  v69 = [(NSLayoutXAxisAnchor *)leadingAnchor4 constraintEqualToAnchor:?];
  v110[8] = v69;
  dividerContainer5 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self dividerContainer];
  trailingAnchor4 = [(UIView *)dividerContainer5 trailingAnchor];
  contentStackView13 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentStackView];
  trailingAnchor5 = [(UIStackView *)contentStackView13 trailingAnchor];
  v64 = [(NSLayoutXAxisAnchor *)trailingAnchor4 constraintEqualToAnchor:?];
  v110[9] = v64;
  divider3 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self divider];
  topAnchor5 = [(UIView *)divider3 topAnchor];
  dividerContainer6 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self dividerContainer];
  topAnchor6 = [(UIView *)dividerContainer6 topAnchor];
  v59 = [(NSLayoutYAxisAnchor *)topAnchor5 constraintEqualToAnchor:?];
  v110[10] = v59;
  divider4 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self divider];
  bottomAnchor3 = [(UIView *)divider4 bottomAnchor];
  dividerContainer7 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self dividerContainer];
  bottomAnchor4 = [(UIView *)dividerContainer7 bottomAnchor];
  v54 = [(NSLayoutYAxisAnchor *)bottomAnchor3 constraintEqualToAnchor:?];
  v110[11] = v54;
  divider5 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self divider];
  leadingAnchor6 = [(UIView *)divider5 leadingAnchor];
  dividerContainer8 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self dividerContainer];
  leadingAnchor7 = [(UIView *)dividerContainer8 leadingAnchor];
  v49 = [(NSLayoutXAxisAnchor *)leadingAnchor6 constraintEqualToAnchor:?];
  v110[12] = v49;
  divider6 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self divider];
  trailingAnchor6 = [(UIView *)divider6 trailingAnchor];
  dividerContainer9 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self dividerContainer];
  trailingAnchor7 = [(UIView *)dividerContainer9 trailingAnchor];
  v44 = [(NSLayoutXAxisAnchor *)trailingAnchor6 constraintEqualToAnchor:-11.0 constant:?];
  v110[13] = v44;
  contentView6 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentView];
  trailingAnchor8 = [contentView6 trailingAnchor];
  trailingAnchor9 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self trailingAnchor];
  v40 = [trailingAnchor8 constraintEqualToAnchor:?];
  v110[14] = v40;
  contentView7 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentView];
  leadingAnchor8 = [contentView7 leadingAnchor];
  leadingAnchor9 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self leadingAnchor];
  v27 = [leadingAnchor8 constraintEqualToAnchor:?];
  v110[15] = v27;
  contentView8 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentView];
  topAnchor7 = [contentView8 topAnchor];
  topAnchor8 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self topAnchor];
  v31 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
  v110[16] = v31;
  contentView9 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentView];
  bottomAnchor5 = [contentView9 bottomAnchor];
  bottomAnchor6 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self bottomAnchor];
  v35 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v110[17] = v35;
  v36 = [NSArray arrayWithObjects:v110 count:18];
  [NSLayoutConstraint activateConstraints:v36];
}

- (void)_configureViews
{
  v2 = +[UIColor secondarySystemBackgroundColor];
  [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self setBackgroundColor:v2];

  contentStackView = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentStackView];
  [(UIStackView *)contentStackView setSpacing:8.0];

  contentStackView2 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentStackView];
  [(UIStackView *)contentStackView2 setAxis:1];

  contentStackView3 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentStackView];
  [(UIStackView *)contentStackView3 setAlignment:1];

  contentStackView4 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentStackView];
  [(UIStackView *)contentStackView4 setDistribution:0];

  v7 = +[UIColor separatorColor];
  divider = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self divider];
  [(UIView *)divider setBackgroundColor:v7];

  iconView = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self iconView];
  [(UIImageView *)iconView setContentMode:2];

  +[UIFont systemFontSize];
  v10 = [UIFont boldSystemFontOfSize:?];
  titleLabel = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self titleLabel];
  [(UILabel *)titleLabel setFont:v10];

  titleLabel2 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self titleLabel];
  [(UILabel *)titleLabel2 setNumberOfLines:0];

  +[UIFont smallSystemFontSize];
  v13 = [UIFont systemFontOfSize:?];
  descriptionLabel = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self descriptionLabel];
  [(UILabel *)descriptionLabel setFont:v13];

  v15 = +[UIColor secondaryLabelColor];
  descriptionLabel2 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self descriptionLabel];
  [(UILabel *)descriptionLabel2 setTextColor:v15];

  descriptionLabel3 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self descriptionLabel];
  [(UILabel *)descriptionLabel3 setNumberOfLines:0];
}

- (void)configureCellWithViewModel:(id)model
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, model);
  attributedTitleText = [location[0] attributedTitleText];
  titleLabel = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)selfCopy titleLabel];
  [(UILabel *)titleLabel setAttributedText:attributedTitleText];

  attributedDescriptionText = [location[0] attributedDescriptionText];
  descriptionLabel = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)selfCopy descriptionLabel];
  [(UILabel *)descriptionLabel setAttributedText:attributedDescriptionText];

  learnMoreButton = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)selfCopy learnMoreButton];
  attributedButtonText = [location[0] attributedButtonText];
  [(UIButton *)learnMoreButton setAttributedTitle:attributedButtonText forState:0];

  iconName = [location[0] iconName];
  v10 = +[UITraitCollection traitCollectionWithLayoutDirection:](UITraitCollection, "traitCollectionWithLayoutDirection:", ([location[0] isRTL] & 1) != 0);
  v28 = [UIImage systemImageNamed:iconName compatibleWithTraitCollection:v10];

  iconView = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)selfCopy iconView];
  if ([location[0] isRTL])
  {
    v12 = 4;
  }

  else
  {
    v12 = 3;
  }

  [(UIImageView *)iconView setSemanticContentAttribute:v12];

  iconView2 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)selfCopy iconView];
  [(UIImageView *)iconView2 setImage:v28];

  v14 = selfCopy;
  if ([location[0] isRTL])
  {
    v15 = 4;
  }

  else
  {
    v15 = 3;
  }

  [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)v14 setSemanticContentAttribute:v15];
  contentStackView = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)selfCopy contentStackView];
  if ([location[0] isRTL])
  {
    v17 = 4;
  }

  else
  {
    v17 = 3;
  }

  [(UIStackView *)contentStackView setSemanticContentAttribute:v17];

  dividerContainer = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)selfCopy dividerContainer];
  if ([location[0] isRTL])
  {
    v19 = 4;
  }

  else
  {
    v19 = 3;
  }

  [(UIView *)dividerContainer setSemanticContentAttribute:v19];

  isRTL = [location[0] isRTL];
  v21 = 2;
  if ((isRTL & 1) == 0)
  {
    v21 = 0;
  }

  v27 = v21;
  v22 = v21;
  titleLabel2 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)selfCopy titleLabel];
  [(UILabel *)titleLabel2 setTextAlignment:v22];

  descriptionLabel2 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)selfCopy descriptionLabel];
  [(UILabel *)descriptionLabel2 setTextAlignment:v27];

  learnMoreButton2 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)selfCopy learnMoreButton];
  titleLabel3 = [(UIButton *)learnMoreButton2 titleLabel];
  [(UILabel *)titleLabel3 setTextAlignment:v27];

  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

- (void)setLearnMoreAction:(id)action
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, action);
  objc_storeStrong(&selfCopy->_learnMoreAction, location[0]);
  learnMoreButton = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)selfCopy learnMoreButton];
  [(UIButton *)learnMoreButton addAction:location[0] forControlEvents:64];

  objc_storeStrong(location, 0);
}

- (void)prepareForReuse
{
  selfCopy = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = BuddyLanguageLocaleSafetyAndHandlingTableViewCell;
  [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)&v4 prepareForReuse];
  learnMoreButton = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)selfCopy learnMoreButton];
  learnMoreAction = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)selfCopy learnMoreAction];
  [(UIButton *)learnMoreButton removeAction:learnMoreAction forControlEvents:64];

  objc_storeStrong(&selfCopy->_learnMoreAction, 0);
}

@end