@interface MPVoicemailMailboxTableViewCell
+ (UIEdgeInsets)separatorInsetForContentSizeCategory:(id)category;
- (double)subtitleLabelLastBaselineLayoutConstraintConstant;
- (double)titleLabelFirstBaselineLayoutConstraintConstant;
- (void)_updateTextColor;
- (void)commonInit;
- (void)loadConstraints;
- (void)loadContentView;
- (void)tintColorDidChange;
- (void)unloadConstraints;
- (void)updateConstraints;
- (void)updateFonts;
@end

@implementation MPVoicemailMailboxTableViewCell

+ (UIEdgeInsets)separatorInsetForContentSizeCategory:(id)category
{
  [self titleLabelLeadingAnchorLayoutConstraintConstantForContentCategorySize:category];
  v4 = v3;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  result.right = v7;
  result.bottom = v6;
  result.left = v4;
  result.top = v5;
  return result;
}

- (void)commonInit
{
  v3.receiver = self;
  v3.super_class = MPVoicemailMailboxTableViewCell;
  [(MPVoicemailMailboxTableViewCell *)&v3 commonInit];
  [(MPVoicemailMailboxTableViewCell *)self setAccessoryType:1];
}

- (void)loadContentView
{
  v13.receiver = self;
  v13.super_class = MPVoicemailMailboxTableViewCell;
  [(MPVoicemailMailboxTableViewCell *)&v13 loadContentView];
  v3 = objc_alloc_init(UILabel);
  [(MPVoicemailMailboxTableViewCell *)self setTitleLabel:v3];

  titleLabel = [(MPVoicemailMailboxTableViewCell *)self titleLabel];
  [titleLabel setTextAlignment:4];

  titleLabel2 = [(MPVoicemailMailboxTableViewCell *)self titleLabel];
  [titleLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(MPVoicemailMailboxTableViewCell *)self contentView];
  titleLabel3 = [(MPVoicemailMailboxTableViewCell *)self titleLabel];
  [contentView addSubview:titleLabel3];

  v8 = objc_alloc_init(UILabel);
  [(MPVoicemailMailboxTableViewCell *)self setCountLabel:v8];

  countLabel = [(MPVoicemailMailboxTableViewCell *)self countLabel];
  [countLabel setTextAlignment:4];

  countLabel2 = [(MPVoicemailMailboxTableViewCell *)self countLabel];
  [countLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView2 = [(MPVoicemailMailboxTableViewCell *)self contentView];
  countLabel3 = [(MPVoicemailMailboxTableViewCell *)self countLabel];
  [contentView2 addSubview:countLabel3];

  [(MPVoicemailMailboxTableViewCell *)self _updateTextColor];
}

- (void)loadConstraints
{
  v35.receiver = self;
  v35.super_class = MPVoicemailMailboxTableViewCell;
  [(MPVoicemailMailboxTableViewCell *)&v35 loadConstraints];
  titleLabel = [(MPVoicemailMailboxTableViewCell *)self titleLabel];
  leadingAnchor = [titleLabel leadingAnchor];
  contentView = [(MPVoicemailMailboxTableViewCell *)self contentView];
  leadingAnchor2 = [contentView leadingAnchor];
  v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:34.0];
  v36[0] = v30;
  titleLabel2 = [(MPVoicemailMailboxTableViewCell *)self titleLabel];
  trailingAnchor = [titleLabel2 trailingAnchor];
  countLabel = [(MPVoicemailMailboxTableViewCell *)self countLabel];
  leadingAnchor3 = [countLabel leadingAnchor];
  v25 = [trailingAnchor constraintLessThanOrEqualToAnchor:leadingAnchor3];
  v36[1] = v25;
  titleLabel3 = [(MPVoicemailMailboxTableViewCell *)self titleLabel];
  centerYAnchor = [titleLabel3 centerYAnchor];
  contentView2 = [(MPVoicemailMailboxTableViewCell *)self contentView];
  centerYAnchor2 = [contentView2 centerYAnchor];
  v20 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v36[2] = v20;
  titleLabel4 = [(MPVoicemailMailboxTableViewCell *)self titleLabel];
  firstBaselineAnchor = [titleLabel4 firstBaselineAnchor];
  contentView3 = [(MPVoicemailMailboxTableViewCell *)self contentView];
  topAnchor = [contentView3 topAnchor];
  [(MPVoicemailMailboxTableViewCell *)self titleLabelFirstBaselineLayoutConstraintConstant];
  v15 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
  v36[3] = v15;
  countLabel2 = [(MPVoicemailMailboxTableViewCell *)self countLabel];
  trailingAnchor2 = [countLabel2 trailingAnchor];
  contentView4 = [(MPVoicemailMailboxTableViewCell *)self contentView];
  trailingAnchor3 = [contentView4 trailingAnchor];
  v5 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-16.0];
  v36[4] = v5;
  countLabel3 = [(MPVoicemailMailboxTableViewCell *)self countLabel];
  centerYAnchor3 = [countLabel3 centerYAnchor];
  contentView5 = [(MPVoicemailMailboxTableViewCell *)self contentView];
  centerYAnchor4 = [contentView5 centerYAnchor];
  v10 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v36[5] = v10;
  v11 = [NSArray arrayWithObjects:v36 count:6];
  [(MPVoicemailMailboxTableViewCell *)self setAllConstraints:v11];

  allConstraints = [(MPVoicemailMailboxTableViewCell *)self allConstraints];
  [NSLayoutConstraint activateConstraints:allConstraints];
}

- (void)unloadConstraints
{
  v4.receiver = self;
  v4.super_class = MPVoicemailMailboxTableViewCell;
  [(MPVoicemailMailboxTableViewCell *)&v4 unloadConstraints];
  allConstraints = [(MPVoicemailMailboxTableViewCell *)self allConstraints];
  [NSLayoutConstraint deactivateConstraints:allConstraints];
}

- (void)updateFonts
{
  v9.receiver = self;
  v9.super_class = MPVoicemailMailboxTableViewCell;
  [(MPVoicemailMailboxTableViewCell *)&v9 updateFonts];
  if ([(MPVoicemailMailboxTableViewCell *)self isAccessiblityConstraintsEnabled])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  titleLabel = [(MPVoicemailMailboxTableViewCell *)self titleLabel];
  [titleLabel setNumberOfLines:v3];

  v5 = +[UIFont telephonyUISubheadlineShortFont];
  titleLabel2 = [(MPVoicemailMailboxTableViewCell *)self titleLabel];
  [titleLabel2 setFont:v5];

  v7 = +[UIFont telephonyUISubheadlineShortFont];
  countLabel = [(MPVoicemailMailboxTableViewCell *)self countLabel];
  [countLabel setFont:v7];
}

- (void)updateConstraints
{
  v3.receiver = self;
  v3.super_class = MPVoicemailMailboxTableViewCell;
  [(MPVoicemailMailboxTableViewCell *)&v3 updateConstraints];
  [(MPVoicemailMailboxTableViewCell *)self updateFonts];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = MPVoicemailMailboxTableViewCell;
  [(MPVoicemailMailboxTableViewCell *)&v3 tintColorDidChange];
  [(MPVoicemailMailboxTableViewCell *)self _updateTextColor];
}

- (void)_updateTextColor
{
  v5 = +[UIColor systemGrayColor];
  v3 = [(MPVoicemailMailboxTableViewCell *)self _accessibilityHigherContrastTintColorForColor:v5];
  countLabel = [(MPVoicemailMailboxTableViewCell *)self countLabel];
  [countLabel setTextColor:v3];
}

- (double)titleLabelFirstBaselineLayoutConstraintConstant
{
  v2 = +[UIFont telephonyUIBodyShortEmphasizedFont];
  [v2 _scaledValueForValue:27.0];
  v4 = ceil(v3);

  return v4;
}

- (double)subtitleLabelLastBaselineLayoutConstraintConstant
{
  v2 = +[UIFont telephonyUISubheadlineShortFont];
  [v2 _scaledValueForValue:13.0];
  v4 = ceil(v3);

  return v4;
}

@end