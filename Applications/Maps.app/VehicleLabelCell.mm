@interface VehicleLabelCell
- (VehicleLabelCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_commonInit;
@end

@implementation VehicleLabelCell

- (void)_commonInit
{
  v3 = objc_opt_new();
  label = self->_label;
  self->_label = v3;

  [(UILabel *)self->_label setAccessibilityIdentifier:@"TitleLabel"];
  [(UILabel *)self->_label setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = +[UIColor labelColor];
  [(UILabel *)self->_label setTextColor:v5];

  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)self->_label setFont:v6];

  [(UILabel *)self->_label setNumberOfLines:0];
  contentView = [(VehicleLabelCell *)self contentView];
  [contentView addSubview:self->_label];

  leadingAnchor = [(UILabel *)self->_label leadingAnchor];
  contentView2 = [(VehicleLabelCell *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v21[0] = v8;
  trailingAnchor = [(UILabel *)self->_label trailingAnchor];
  contentView3 = [(VehicleLabelCell *)self contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
  v21[1] = v12;
  centerYAnchor = [(UILabel *)self->_label centerYAnchor];
  contentView4 = [(VehicleLabelCell *)self contentView];
  centerYAnchor2 = [contentView4 centerYAnchor];
  v16 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v21[2] = v16;
  v17 = [NSArray arrayWithObjects:v21 count:3];
  [NSLayoutConstraint activateConstraints:v17];
}

- (VehicleLabelCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = VehicleLabelCell;
  v4 = [(VehicleLabelCell *)&v7 initWithStyle:0 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(VehicleLabelCell *)v4 _commonInit];
    [(VehicleLabelCell *)v5 setAccessibilityIdentifier:@"VehicleLabelCell"];
  }

  return v5;
}

@end