@interface OverrideCardViewCell
- (OverrideCardViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)setSeparatorStyle:(int64_t)style;
@end

@implementation OverrideCardViewCell

- (OverrideCardViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v41.receiver = self;
  v41.super_class = OverrideCardViewCell;
  v9 = [(OverrideCardViewCell *)&v41 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  if (v9)
  {
    v10 = [specifierCopy objectForKeyedSubscript:@"OverrideCardViewCellSubTitleKey"];
    v11 = [specifierCopy objectForKeyedSubscript:@"OverrideCardViewCellActionTitleKey"];
    v12 = [specifierCopy objectForKeyedSubscript:@"OverrideCardViewCellActionKey"];
    v13 = [_TtC14BatteryUsageUI26OverrideCardViewController createWithSubtitle:v10 actionTitle:v11 action:v12];

    view = [v13 view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];

    contentView = [(OverrideCardViewCell *)v9 contentView];
    view2 = [v13 view];
    [contentView addSubview:view2];

    view3 = [v13 view];
    topAnchor = [view3 topAnchor];
    contentView2 = [(OverrideCardViewCell *)v9 contentView];
    topAnchor2 = [contentView2 topAnchor];
    v36 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v42[0] = v36;
    view4 = [v13 view];
    leadingAnchor = [view4 leadingAnchor];
    contentView3 = [(OverrideCardViewCell *)v9 contentView];
    leadingAnchor2 = [contentView3 leadingAnchor];
    v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v42[1] = v30;
    v34 = v13;
    view5 = [v13 view];
    trailingAnchor = [view5 trailingAnchor];
    contentView4 = [(OverrideCardViewCell *)v9 contentView];
    trailingAnchor2 = [contentView4 trailingAnchor];
    v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v42[2] = v19;
    view6 = [v13 view];
    [view6 bottomAnchor];
    v22 = v21 = specifierCopy;
    contentView5 = [(OverrideCardViewCell *)v9 contentView];
    bottomAnchor = [contentView5 bottomAnchor];
    v25 = [v22 constraintEqualToAnchor:bottomAnchor];
    v42[3] = v25;
    v28 = [NSArray arrayWithObjects:v42 count:4];

    specifierCopy = v21;
    [NSLayoutConstraint activateConstraints:v28];
    [(OverrideCardViewCell *)v9 setNeedsLayout];
  }

  return v9;
}

- (void)setSeparatorStyle:(int64_t)style
{
  v3.receiver = self;
  v3.super_class = OverrideCardViewCell;
  [(OverrideCardViewCell *)&v3 setSeparatorStyle:0];
}

@end