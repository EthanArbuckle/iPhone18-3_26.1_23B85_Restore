@interface MacEditShortcutHeaderFooterView
- (MacEditShortcutHeaderFooterView)initWithTitle:(id)title reuseIdentifier:(id)identifier;
@end

@implementation MacEditShortcutHeaderFooterView

- (MacEditShortcutHeaderFooterView)initWithTitle:(id)title reuseIdentifier:(id)identifier
{
  titleCopy = title;
  v35.receiver = self;
  v35.super_class = MacEditShortcutHeaderFooterView;
  v6 = [(MacEditShortcutHeaderFooterView *)&v35 initWithReuseIdentifier:@"MacEditShortcutHeaderFooterView"];
  v7 = v6;
  if (v6)
  {
    [(MacEditShortcutHeaderFooterView *)v6 setAccessibilityIdentifier:@"MacEditShortcutHeaderFooterView"];
    contentView = [(MacEditShortcutHeaderFooterView *)v7 contentView];
    v9 = [UIView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v13 = [v9 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(MacEditShortcutHeaderFooterView *)v7 setBackgroundView:v13];

    v14 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v14 setAccessibilityIdentifier:@"MacEditShortcutHeaderFooterLabel"];
    [contentView addSubview:v14];
    v15 = +[UIFont system17Tall];
    [v14 setFont:v15];

    v16 = +[UIColor secondaryLabelColor];
    [v14 setTextColor:v16];

    [v14 setNumberOfLines:0];
    [v14 setText:titleCopy];
    leadingAnchor = [v14 leadingAnchor];
    leadingAnchor2 = [contentView leadingAnchor];
    v32 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:17.0];
    v36[0] = v32;
    trailingAnchor = [v14 trailingAnchor];
    trailingAnchor2 = [contentView trailingAnchor];
    v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-17.0];
    v36[1] = v28;
    topAnchor = [v14 topAnchor];
    v18 = contentView;
    v29 = contentView;
    topAnchor2 = [contentView topAnchor];
    v20 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:14.0];
    v36[2] = v20;
    bottomAnchor = [v14 bottomAnchor];
    bottomAnchor2 = [v18 bottomAnchor];
    v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-2.0];
    v36[3] = v23;
    [NSArray arrayWithObjects:v36 count:4];
    v24 = v7;
    v26 = v25 = titleCopy;
    [NSLayoutConstraint activateConstraints:v26];

    titleCopy = v25;
    v7 = v24;
  }

  return v7;
}

@end