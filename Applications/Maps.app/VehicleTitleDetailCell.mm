@interface VehicleTitleDetailCell
- (VehicleTitleDetailCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (double)cellHeightWithWidth:(double)width;
- (void)_commonInit;
@end

@implementation VehicleTitleDetailCell

- (double)cellHeightWithWidth:(double)width
{
  v4 = width * 0.449999988;
  [(UILabel *)self->_titleLabel sizeThatFits:width * 0.550000012 + -50.0, 1.79769313e308];
  v6 = v5;
  [(UILabel *)self->_detailLabel sizeThatFits:v4, 1.79769313e308];
  return fmax(fmax(v6, v7) + 20.0, 44.0);
}

- (void)_commonInit
{
  v3 = objc_opt_new();
  titleLabel = self->_titleLabel;
  self->_titleLabel = v3;

  [(UILabel *)self->_titleLabel setAccessibilityIdentifier:@"TitleLabel"];
  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_titleLabel setAccessibilityIdentifier:@"TitleLabel"];
  v5 = +[UIColor labelColor];
  [(UILabel *)self->_titleLabel setTextColor:v5];

  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)self->_titleLabel setFont:v6];

  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  v7 = objc_opt_new();
  detailLabel = self->_detailLabel;
  self->_detailLabel = v7;

  [(UILabel *)self->_detailLabel setAccessibilityIdentifier:@"DetailLabel"];
  [(UILabel *)self->_detailLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_detailLabel setAccessibilityIdentifier:@"DetailLabel"];
  v9 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_detailLabel setTextColor:v9];

  v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)self->_detailLabel setFont:v10];

  [(UILabel *)self->_detailLabel setNumberOfLines:0];
  [(UILabel *)self->_detailLabel setTextAlignment:2 * ([(VehicleTitleDetailCell *)self effectiveUserInterfaceLayoutDirection]!= 1)];
  contentView = [(VehicleTitleDetailCell *)self contentView];
  [contentView addSubview:self->_titleLabel];

  contentView2 = [(VehicleTitleDetailCell *)self contentView];
  [contentView2 addSubview:self->_detailLabel];

  leadingAnchor = [(UILabel *)self->_titleLabel leadingAnchor];
  contentView3 = [(VehicleTitleDetailCell *)self contentView];
  leadingAnchor2 = [contentView3 leadingAnchor];
  v33 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
  v37[0] = v33;
  trailingAnchor = [(UILabel *)self->_titleLabel trailingAnchor];
  leadingAnchor3 = [(UILabel *)self->_detailLabel leadingAnchor];
  v30 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3 constant:-10.0];
  v37[1] = v30;
  centerYAnchor = [(UILabel *)self->_titleLabel centerYAnchor];
  contentView4 = [(VehicleTitleDetailCell *)self contentView];
  centerYAnchor2 = [contentView4 centerYAnchor];
  v26 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v37[2] = v26;
  trailingAnchor2 = [(UILabel *)self->_detailLabel trailingAnchor];
  contentView5 = [(VehicleTitleDetailCell *)self contentView];
  trailingAnchor3 = [contentView5 trailingAnchor];
  v13 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-20.0];
  v37[3] = v13;
  widthAnchor = [(UILabel *)self->_detailLabel widthAnchor];
  contentView6 = [(VehicleTitleDetailCell *)self contentView];
  widthAnchor2 = [contentView6 widthAnchor];
  v17 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:0.449999988];
  v37[4] = v17;
  centerYAnchor3 = [(UILabel *)self->_detailLabel centerYAnchor];
  contentView7 = [(VehicleTitleDetailCell *)self contentView];
  centerYAnchor4 = [contentView7 centerYAnchor];
  v21 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v37[5] = v21;
  v22 = [NSArray arrayWithObjects:v37 count:6];
  [NSLayoutConstraint activateConstraints:v22];
}

- (VehicleTitleDetailCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = VehicleTitleDetailCell;
  v4 = [(VehicleTitleDetailCell *)&v7 initWithStyle:0 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(VehicleTitleDetailCell *)v4 _commonInit];
    [(VehicleTitleDetailCell *)v5 setAccessibilityIdentifier:@"VehicleTitleDetailCell"];
  }

  return v5;
}

@end