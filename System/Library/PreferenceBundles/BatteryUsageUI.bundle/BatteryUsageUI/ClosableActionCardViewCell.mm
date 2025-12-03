@interface ClosableActionCardViewCell
- (ClosableActionCardViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
@end

@implementation ClosableActionCardViewCell

- (ClosableActionCardViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v44.receiver = self;
  v44.super_class = ClosableActionCardViewCell;
  v9 = [(ClosableActionCardViewCell *)&v44 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  if (v9)
  {
    v10 = [specifierCopy objectForKeyedSubscript:@"ClosableActionCardViewCellTitleKey"];
    v11 = [specifierCopy objectForKeyedSubscript:@"ClosableActionCardViewCellSubtitleKey"];
    v12 = [specifierCopy objectForKeyedSubscript:@"ClosableActionCardViewCellActionTitleKey"];
    v13 = [specifierCopy objectForKeyedSubscript:@"ClosableActionCardViewCellActionKey"];
    v14 = [specifierCopy objectForKeyedSubscript:@"ClosableActionCardViewCellCloseKey"];
    v15 = [_TtC14BatteryUsageUI29ClosableActionCardViewFactory createWithTitle:v10 subtitle:v11 actionTitle:v12 action:v13 close:v14];
    [(ClosableActionCardViewCell *)v9 setChild:v15];

    contentView = [(ClosableActionCardViewCell *)v9 contentView];
    child = [(ClosableActionCardViewCell *)v9 child];
    view = [child view];
    [(ClosableActionCardViewCell *)v9 setCardView:view];

    cardView = [(ClosableActionCardViewCell *)v9 cardView];
    [cardView setTranslatesAutoresizingMaskIntoConstraints:0];

    cardView2 = [(ClosableActionCardViewCell *)v9 cardView];
    [contentView addSubview:cardView2];

    cardView3 = [(ClosableActionCardViewCell *)v9 cardView];
    topAnchor = [cardView3 topAnchor];
    contentView2 = [(ClosableActionCardViewCell *)v9 contentView];
    topAnchor2 = [contentView2 topAnchor];
    v38 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v45[0] = v38;
    cardView4 = [(ClosableActionCardViewCell *)v9 cardView];
    leadingAnchor = [cardView4 leadingAnchor];
    contentView3 = [(ClosableActionCardViewCell *)v9 contentView];
    leadingAnchor2 = [contentView3 leadingAnchor];
    v33 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v45[1] = v33;
    cardView5 = [(ClosableActionCardViewCell *)v9 cardView];
    trailingAnchor = [cardView5 trailingAnchor];
    contentView4 = [(ClosableActionCardViewCell *)v9 contentView];
    trailingAnchor2 = [contentView4 trailingAnchor];
    v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v45[2] = v22;
    cardView6 = [(ClosableActionCardViewCell *)v9 cardView];
    bottomAnchor = [cardView6 bottomAnchor];
    contentView5 = [(ClosableActionCardViewCell *)v9 contentView];
    [contentView5 bottomAnchor];
    v27 = v26 = specifierCopy;
    v28 = [bottomAnchor constraintEqualToAnchor:v27];
    v45[3] = v28;
    v31 = [NSArray arrayWithObjects:v45 count:4];

    specifierCopy = v26;
    [NSLayoutConstraint activateConstraints:v31];
    [(ClosableActionCardViewCell *)v9 setNeedsLayout];
  }

  return v9;
}

@end