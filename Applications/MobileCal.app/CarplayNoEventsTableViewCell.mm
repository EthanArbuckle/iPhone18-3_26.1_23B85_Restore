@interface CarplayNoEventsTableViewCell
- (CarplayNoEventsTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation CarplayNoEventsTableViewCell

- (CarplayNoEventsTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v27.receiver = self;
  v27.super_class = CarplayNoEventsTableViewCell;
  v4 = [(CarplayNoEventsTableViewCell *)&v27 initWithStyle:style reuseIdentifier:identifier];
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

    traitCollection = [(CarplayNoEventsTableViewCell *)v4 traitCollection];
    v12 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout compatibleWithTraitCollection:traitCollection];
    [(UILabel *)v4->_label setFont:v12];

    [(UILabel *)v4->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CarplayNoEventsTableViewCell *)v4 addSubview:v4->_label];
    leadingAnchor = [(UILabel *)v4->_label leadingAnchor];
    leadingAnchor2 = [(CarplayNoEventsTableViewCell *)v4 leadingAnchor];
    v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v28[0] = v24;
    trailingAnchor = [(UILabel *)v4->_label trailingAnchor];
    trailingAnchor2 = [(CarplayNoEventsTableViewCell *)v4 trailingAnchor];
    v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v28[1] = v14;
    firstBaselineAnchor = [(UILabel *)v4->_label firstBaselineAnchor];
    topAnchor = [(CarplayNoEventsTableViewCell *)v4 topAnchor];
    v17 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:38.0];
    v28[2] = v17;
    bottomAnchor = [(CarplayNoEventsTableViewCell *)v4 bottomAnchor];
    lastBaselineAnchor = [(UILabel *)v4->_label lastBaselineAnchor];
    v20 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor constant:12.0];
    v28[3] = v20;
    v21 = [NSArray arrayWithObjects:v28 count:4];
    [NSLayoutConstraint activateConstraints:v21];
  }

  return v4;
}

@end