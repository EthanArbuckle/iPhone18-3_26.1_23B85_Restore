@interface VehicleLabelCell
- (VehicleLabelCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
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
  v7 = [(VehicleLabelCell *)self contentView];
  [v7 addSubview:self->_label];

  v19 = [(UILabel *)self->_label leadingAnchor];
  v20 = [(VehicleLabelCell *)self contentView];
  v18 = [v20 leadingAnchor];
  v8 = [v19 constraintEqualToAnchor:v18 constant:16.0];
  v21[0] = v8;
  v9 = [(UILabel *)self->_label trailingAnchor];
  v10 = [(VehicleLabelCell *)self contentView];
  v11 = [v10 trailingAnchor];
  v12 = [v9 constraintEqualToAnchor:v11 constant:-16.0];
  v21[1] = v12;
  v13 = [(UILabel *)self->_label centerYAnchor];
  v14 = [(VehicleLabelCell *)self contentView];
  v15 = [v14 centerYAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  v21[2] = v16;
  v17 = [NSArray arrayWithObjects:v21 count:3];
  [NSLayoutConstraint activateConstraints:v17];
}

- (VehicleLabelCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = VehicleLabelCell;
  v4 = [(VehicleLabelCell *)&v7 initWithStyle:0 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(VehicleLabelCell *)v4 _commonInit];
    [(VehicleLabelCell *)v5 setAccessibilityIdentifier:@"VehicleLabelCell"];
  }

  return v5;
}

@end