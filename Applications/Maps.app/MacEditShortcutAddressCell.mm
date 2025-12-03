@interface MacEditShortcutAddressCell
- (MacEditShortcutAddressCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation MacEditShortcutAddressCell

- (MacEditShortcutAddressCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v26.receiver = self;
  v26.super_class = MacEditShortcutAddressCell;
  v4 = [(MacEditShortcutAddressCell *)&v26 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(MacEditShortcutAddressCell *)v4 setAccessibilityIdentifier:@"MacEditShortcutAddressCell"];
    contentView = [(MacEditShortcutAddressCell *)v5 contentView];
    v7 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(UILabel *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v7 setAccessibilityIdentifier:@"MacEditShortcutAddressLabel"];
    [contentView addSubview:v7];
    v8 = +[UIFont system17Tall];
    [(UILabel *)v7 setFont:v8];

    v9 = +[UIColor labelColor];
    [(UILabel *)v7 setTextColor:v9];

    [(UILabel *)v7 setNumberOfLines:0];
    label = v5->_label;
    v5->_label = v7;
    v11 = v7;

    leadingAnchor = [(UILabel *)v11 leadingAnchor];
    leadingAnchor2 = [contentView leadingAnchor];
    v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:17.0];
    v27[0] = v23;
    trailingAnchor = [(UILabel *)v11 trailingAnchor];
    trailingAnchor2 = [contentView trailingAnchor];
    v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-17.0];
    v27[1] = v20;
    topAnchor = [(UILabel *)v11 topAnchor];
    topAnchor2 = [contentView topAnchor];
    v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v27[2] = v14;
    bottomAnchor = [(UILabel *)v11 bottomAnchor];
    bottomAnchor2 = [contentView bottomAnchor];
    v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v27[3] = v17;
    v18 = [NSArray arrayWithObjects:v27 count:4];
    [NSLayoutConstraint activateConstraints:v18];
  }

  return v5;
}

@end