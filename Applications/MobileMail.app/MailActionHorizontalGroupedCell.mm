@interface MailActionHorizontalGroupedCell
- (void)configureConstraints;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConstraints;
@end

@implementation MailActionHorizontalGroupedCell

- (void)configureConstraints
{
  contentView = [(MailActionHorizontalGroupedCell *)self contentView];
  v3 = objc_opt_new();
  [(MailActionHorizontalGroupedCell *)self setDisplayMetrics:v3];
  v4 = +[NSMutableArray array];
  imageView = [(MailActionCell *)self imageView];
  centerXAnchor = [imageView centerXAnchor];
  centerXAnchor2 = [contentView centerXAnchor];
  v8 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v4 addObject:v8];

  firstBaselineAnchor = [imageView firstBaselineAnchor];
  topAnchor = [contentView topAnchor];
  [v3 topToGlyphBaselineInMailActionCardHorizontalGroup];
  v11 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
  [(MailActionHorizontalGroupedCell *)self setTopToBaselineConstraint:v11];

  topToBaselineConstraint = [(MailActionHorizontalGroupedCell *)self topToBaselineConstraint];
  [v4 addObject:topToBaselineConstraint];

  titleLabel = [(MailActionCell *)self titleLabel];
  [titleLabel setTextAlignment:1];
  [titleLabel setLineBreakMode:0];
  [titleLabel setAllowsDefaultTighteningForTruncation:1];
  leadingAnchor = [titleLabel leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:5.0];
  [v4 addObject:v16];

  trailingAnchor = [titleLabel trailingAnchor];
  trailingAnchor2 = [contentView trailingAnchor];
  v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-5.0];
  [v4 addObject:v19];

  firstBaselineAnchor2 = [titleLabel firstBaselineAnchor];
  firstBaselineAnchor3 = [imageView firstBaselineAnchor];
  [v3 baselineToBaselineSpacingInMailActionCardHorizontalGroup];
  v22 = [firstBaselineAnchor2 constraintEqualToAnchor:firstBaselineAnchor3 constant:?];
  [(MailActionHorizontalGroupedCell *)self setBaselineToBaselineConstraint:v22];

  baselineToBaselineConstraint = [(MailActionHorizontalGroupedCell *)self baselineToBaselineConstraint];
  [v4 addObject:baselineToBaselineConstraint];

  [NSLayoutConstraint activateConstraints:v4];
}

- (void)updateConstraints
{
  v10.receiver = self;
  v10.super_class = MailActionHorizontalGroupedCell;
  [(MailActionHorizontalGroupedCell *)&v10 updateConstraints];
  displayMetrics = [(MailActionHorizontalGroupedCell *)self displayMetrics];
  [displayMetrics topToGlyphBaselineInMailActionCardHorizontalGroup];
  v5 = v4;
  topToBaselineConstraint = [(MailActionHorizontalGroupedCell *)self topToBaselineConstraint];
  [topToBaselineConstraint setConstant:v5];

  [displayMetrics baselineToBaselineSpacingInMailActionCardHorizontalGroup];
  v8 = v7;
  baselineToBaselineConstraint = [(MailActionHorizontalGroupedCell *)self baselineToBaselineConstraint];
  [baselineToBaselineConstraint setConstant:v8];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v5.receiver = self;
  v5.super_class = MailActionHorizontalGroupedCell;
  [(MailActionCell *)&v5 traitCollectionDidChange:changeCopy];
  [(MailActionHorizontalGroupedCell *)self setNeedsUpdateConstraints];
}

@end