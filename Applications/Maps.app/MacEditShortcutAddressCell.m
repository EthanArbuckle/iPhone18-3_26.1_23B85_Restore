@interface MacEditShortcutAddressCell
- (MacEditShortcutAddressCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation MacEditShortcutAddressCell

- (MacEditShortcutAddressCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v26.receiver = self;
  v26.super_class = MacEditShortcutAddressCell;
  v4 = [(MacEditShortcutAddressCell *)&v26 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(MacEditShortcutAddressCell *)v4 setAccessibilityIdentifier:@"MacEditShortcutAddressCell"];
    v6 = [(MacEditShortcutAddressCell *)v5 contentView];
    v7 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(UILabel *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v7 setAccessibilityIdentifier:@"MacEditShortcutAddressLabel"];
    [v6 addSubview:v7];
    v8 = +[UIFont system17Tall];
    [(UILabel *)v7 setFont:v8];

    v9 = +[UIColor labelColor];
    [(UILabel *)v7 setTextColor:v9];

    [(UILabel *)v7 setNumberOfLines:0];
    label = v5->_label;
    v5->_label = v7;
    v11 = v7;

    v25 = [(UILabel *)v11 leadingAnchor];
    v24 = [v6 leadingAnchor];
    v23 = [v25 constraintEqualToAnchor:v24 constant:17.0];
    v27[0] = v23;
    v22 = [(UILabel *)v11 trailingAnchor];
    v21 = [v6 trailingAnchor];
    v20 = [v22 constraintEqualToAnchor:v21 constant:-17.0];
    v27[1] = v20;
    v12 = [(UILabel *)v11 topAnchor];
    v13 = [v6 topAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    v27[2] = v14;
    v15 = [(UILabel *)v11 bottomAnchor];
    v16 = [v6 bottomAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    v27[3] = v17;
    v18 = [NSArray arrayWithObjects:v27 count:4];
    [NSLayoutConstraint activateConstraints:v18];
  }

  return v5;
}

@end