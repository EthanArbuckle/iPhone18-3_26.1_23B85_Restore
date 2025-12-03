@interface EKUIDetailWithCheckAccessoryTableCell
- (EKUIDetailWithCheckAccessoryTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation EKUIDetailWithCheckAccessoryTableCell

- (EKUIDetailWithCheckAccessoryTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v47.receiver = self;
  v47.super_class = EKUIDetailWithCheckAccessoryTableCell;
  v4 = [(EKUIDetailWithCheckAccessoryTableCell *)&v47 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [[UITableViewCell alloc] initWithStyle:1 reuseIdentifier:&stru_1002133B8];
    [v5 setAccessoryType:3];
    v6 = objc_opt_new();
    detailLabel = v4->_detailLabel;
    v4->_detailLabel = v6;

    [(UILabel *)v4->_detailLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    detailTextLabel = [v5 detailTextLabel];
    font = [detailTextLabel font];
    [(UILabel *)v4->_detailLabel setFont:font];

    v46 = v5;
    detailTextLabel2 = [v5 detailTextLabel];
    textColor = [detailTextLabel2 textColor];
    [(UILabel *)v4->_detailLabel setTextColor:textColor];

    LODWORD(v12) = 1144750080;
    [(UILabel *)v4->_detailLabel setContentHuggingPriority:0 forAxis:v12];
    [(EKUIDetailWithCheckAccessoryTableCell *)v4 addSubview:v4->_detailLabel];
    v13 = objc_opt_new();
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v13;

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    textLabel = [v5 textLabel];
    font2 = [textLabel font];
    [(UILabel *)v4->_titleLabel setFont:font2];

    textLabel2 = [v5 textLabel];
    textColor2 = [textLabel2 textColor];
    [(UILabel *)v4->_titleLabel setTextColor:textColor2];

    contentView = [(EKUIDetailWithCheckAccessoryTableCell *)v4 contentView];
    [contentView addSubview:v4->_titleLabel];

    trailingAnchor = [(EKUIDetailWithCheckAccessoryTableCell *)v4 trailingAnchor];
    trailingAnchor2 = [(UILabel *)v4->_detailLabel trailingAnchor];
    v43 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:46.0];
    v48[0] = v43;
    firstBaselineAnchor = [(UILabel *)v4->_detailLabel firstBaselineAnchor];
    firstBaselineAnchor2 = [(UILabel *)v4->_titleLabel firstBaselineAnchor];
    v40 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
    v48[1] = v40;
    leadingAnchor = [(UILabel *)v4->_titleLabel leadingAnchor];
    contentView2 = [(EKUIDetailWithCheckAccessoryTableCell *)v4 contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v48[2] = v35;
    leadingAnchor3 = [(UILabel *)v4->_detailLabel leadingAnchor];
    trailingAnchor3 = [(UILabel *)v4->_titleLabel trailingAnchor];
    v32 = [leadingAnchor3 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor3 multiplier:1.0];
    v48[3] = v32;
    topAnchor = [(UILabel *)v4->_titleLabel topAnchor];
    contentView3 = [(EKUIDetailWithCheckAccessoryTableCell *)v4 contentView];
    layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide2 topAnchor];
    v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v48[4] = v22;
    bottomAnchor = [(UILabel *)v4->_titleLabel bottomAnchor];
    contentView4 = [(EKUIDetailWithCheckAccessoryTableCell *)v4 contentView];
    layoutMarginsGuide3 = [contentView4 layoutMarginsGuide];
    bottomAnchor2 = [layoutMarginsGuide3 bottomAnchor];
    v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v48[5] = v27;
    v28 = [NSArray arrayWithObjects:v48 count:6];
    [NSLayoutConstraint activateConstraints:v28];
  }

  return v4;
}

@end