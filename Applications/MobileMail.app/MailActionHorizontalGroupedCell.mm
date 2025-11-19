@interface MailActionHorizontalGroupedCell
- (void)configureConstraints;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateConstraints;
@end

@implementation MailActionHorizontalGroupedCell

- (void)configureConstraints
{
  v24 = [(MailActionHorizontalGroupedCell *)self contentView];
  v3 = objc_opt_new();
  [(MailActionHorizontalGroupedCell *)self setDisplayMetrics:v3];
  v4 = +[NSMutableArray array];
  v5 = [(MailActionCell *)self imageView];
  v6 = [v5 centerXAnchor];
  v7 = [v24 centerXAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  [v4 addObject:v8];

  v9 = [v5 firstBaselineAnchor];
  v10 = [v24 topAnchor];
  [v3 topToGlyphBaselineInMailActionCardHorizontalGroup];
  v11 = [v9 constraintEqualToAnchor:v10 constant:?];
  [(MailActionHorizontalGroupedCell *)self setTopToBaselineConstraint:v11];

  v12 = [(MailActionHorizontalGroupedCell *)self topToBaselineConstraint];
  [v4 addObject:v12];

  v13 = [(MailActionCell *)self titleLabel];
  [v13 setTextAlignment:1];
  [v13 setLineBreakMode:0];
  [v13 setAllowsDefaultTighteningForTruncation:1];
  v14 = [v13 leadingAnchor];
  v15 = [v24 leadingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:5.0];
  [v4 addObject:v16];

  v17 = [v13 trailingAnchor];
  v18 = [v24 trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:-5.0];
  [v4 addObject:v19];

  v20 = [v13 firstBaselineAnchor];
  v21 = [v5 firstBaselineAnchor];
  [v3 baselineToBaselineSpacingInMailActionCardHorizontalGroup];
  v22 = [v20 constraintEqualToAnchor:v21 constant:?];
  [(MailActionHorizontalGroupedCell *)self setBaselineToBaselineConstraint:v22];

  v23 = [(MailActionHorizontalGroupedCell *)self baselineToBaselineConstraint];
  [v4 addObject:v23];

  [NSLayoutConstraint activateConstraints:v4];
}

- (void)updateConstraints
{
  v10.receiver = self;
  v10.super_class = MailActionHorizontalGroupedCell;
  [(MailActionHorizontalGroupedCell *)&v10 updateConstraints];
  v3 = [(MailActionHorizontalGroupedCell *)self displayMetrics];
  [v3 topToGlyphBaselineInMailActionCardHorizontalGroup];
  v5 = v4;
  v6 = [(MailActionHorizontalGroupedCell *)self topToBaselineConstraint];
  [v6 setConstant:v5];

  [v3 baselineToBaselineSpacingInMailActionCardHorizontalGroup];
  v8 = v7;
  v9 = [(MailActionHorizontalGroupedCell *)self baselineToBaselineConstraint];
  [v9 setConstant:v8];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = MailActionHorizontalGroupedCell;
  [(MailActionCell *)&v5 traitCollectionDidChange:v4];
  [(MailActionHorizontalGroupedCell *)self setNeedsUpdateConstraints];
}

@end