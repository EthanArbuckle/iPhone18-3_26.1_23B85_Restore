@interface MacEditShortcutHeaderFooterView
- (MacEditShortcutHeaderFooterView)initWithTitle:(id)a3 reuseIdentifier:(id)a4;
@end

@implementation MacEditShortcutHeaderFooterView

- (MacEditShortcutHeaderFooterView)initWithTitle:(id)a3 reuseIdentifier:(id)a4
{
  v5 = a3;
  v35.receiver = self;
  v35.super_class = MacEditShortcutHeaderFooterView;
  v6 = [(MacEditShortcutHeaderFooterView *)&v35 initWithReuseIdentifier:@"MacEditShortcutHeaderFooterView"];
  v7 = v6;
  if (v6)
  {
    [(MacEditShortcutHeaderFooterView *)v6 setAccessibilityIdentifier:@"MacEditShortcutHeaderFooterView"];
    v8 = [(MacEditShortcutHeaderFooterView *)v7 contentView];
    v9 = [UIView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v13 = [v9 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [(MacEditShortcutHeaderFooterView *)v7 setBackgroundView:v13];

    v14 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v14 setAccessibilityIdentifier:@"MacEditShortcutHeaderFooterLabel"];
    [v8 addSubview:v14];
    v15 = +[UIFont system17Tall];
    [v14 setFont:v15];

    v16 = +[UIColor secondaryLabelColor];
    [v14 setTextColor:v16];

    [v14 setNumberOfLines:0];
    [v14 setText:v5];
    v34 = [v14 leadingAnchor];
    v33 = [v8 leadingAnchor];
    v32 = [v34 constraintEqualToAnchor:v33 constant:17.0];
    v36[0] = v32;
    v31 = [v14 trailingAnchor];
    v30 = [v8 trailingAnchor];
    v28 = [v31 constraintEqualToAnchor:v30 constant:-17.0];
    v36[1] = v28;
    v17 = [v14 topAnchor];
    v18 = v8;
    v29 = v8;
    v19 = [v8 topAnchor];
    v20 = [v17 constraintEqualToAnchor:v19 constant:14.0];
    v36[2] = v20;
    v21 = [v14 bottomAnchor];
    v22 = [v18 bottomAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:-2.0];
    v36[3] = v23;
    [NSArray arrayWithObjects:v36 count:4];
    v24 = v7;
    v26 = v25 = v5;
    [NSLayoutConstraint activateConstraints:v26];

    v5 = v25;
    v7 = v24;
  }

  return v7;
}

@end