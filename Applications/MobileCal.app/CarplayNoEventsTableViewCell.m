@interface CarplayNoEventsTableViewCell
- (CarplayNoEventsTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation CarplayNoEventsTableViewCell

- (CarplayNoEventsTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v27.receiver = self;
  v27.super_class = CarplayNoEventsTableViewCell;
  v4 = [(CarplayNoEventsTableViewCell *)&v27 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = +[UIColor clearColor];
    [(CarplayNoEventsTableViewCell *)v4 setBackgroundColor:v5];

    [(CarplayNoEventsTableViewCell *)v4 setUserInteractionEnabled:0];
    v6 = objc_opt_new();
    label = v4->_label;
    v4->_label = v6;

    [(UILabel *)v4->_label setTextAlignment:1];
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"No More Events Today" value:&stru_1002133B8 table:0];
    [(UILabel *)v4->_label setText:v9];

    v10 = +[UIColor labelColor];
    [(UILabel *)v4->_label setTextColor:v10];

    v11 = [(CarplayNoEventsTableViewCell *)v4 traitCollection];
    v12 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout compatibleWithTraitCollection:v11];
    [(UILabel *)v4->_label setFont:v12];

    [(UILabel *)v4->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CarplayNoEventsTableViewCell *)v4 addSubview:v4->_label];
    v26 = [(UILabel *)v4->_label leadingAnchor];
    v25 = [(CarplayNoEventsTableViewCell *)v4 leadingAnchor];
    v24 = [v26 constraintEqualToAnchor:v25];
    v28[0] = v24;
    v23 = [(UILabel *)v4->_label trailingAnchor];
    v13 = [(CarplayNoEventsTableViewCell *)v4 trailingAnchor];
    v14 = [v23 constraintEqualToAnchor:v13];
    v28[1] = v14;
    v15 = [(UILabel *)v4->_label firstBaselineAnchor];
    v16 = [(CarplayNoEventsTableViewCell *)v4 topAnchor];
    v17 = [v15 constraintEqualToAnchor:v16 constant:38.0];
    v28[2] = v17;
    v18 = [(CarplayNoEventsTableViewCell *)v4 bottomAnchor];
    v19 = [(UILabel *)v4->_label lastBaselineAnchor];
    v20 = [v18 constraintEqualToAnchor:v19 constant:12.0];
    v28[3] = v20;
    v21 = [NSArray arrayWithObjects:v28 count:4];
    [NSLayoutConstraint activateConstraints:v21];
  }

  return v4;
}

@end