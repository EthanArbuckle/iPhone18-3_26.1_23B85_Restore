@interface VehicleConnectorCell
- (VehicleConnectorCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_setup;
- (void)setActive:(BOOL)a3;
- (void)setConnectorType:(unint64_t)a3;
@end

@implementation VehicleConnectorCell

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    self->_active = a3;
    if (a3)
    {
      v3 = 3;
    }

    else
    {
      v3 = 0;
    }

    [(VehicleConnectorCell *)self setAccessoryType:v3];
  }
}

- (void)setConnectorType:(unint64_t)a3
{
  if (self->_connectorType == a3)
  {
    return;
  }

  self->_connectorType = a3;
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [(VehicleConnectorCell *)self traitCollection];
  v8 = v6;
  v9 = v7;
  if (a3 > 15)
  {
    goto LABEL_10;
  }

  if (a3 > 3)
  {
    if (a3 == 4)
    {
      v10 = @"Plug_CCS2";
      goto LABEL_13;
    }

    if (a3 == 8)
    {
      v10 = @"Plug_CHAdeMO";
      goto LABEL_13;
    }

LABEL_10:
    v11 = objc_opt_new();
    goto LABEL_14;
  }

  if (a3 == 1)
  {
    v10 = @"Plug_J1772";
    goto LABEL_13;
  }

  if (a3 != 2)
  {
    goto LABEL_10;
  }

  v10 = @"Plug_CCS1";
LABEL_13:
  v11 = [UIImage imageNamed:v10 inBundle:v8 compatibleWithTraitCollection:v9];
LABEL_14:
  v12 = v11;

  v13 = [(VehicleConnectorCell *)self iconView];
  [v13 setImage:v12];

  v14 = sub_100A64170(a3);
  v15 = [(VehicleConnectorCell *)self nameLabel];
  [v15 setText:v14];

  v16 = @"EV_Routing_AC_Power";
  v17 = a3 - 1;
  if (a3 - 1 <= 0x3F)
  {
    if (((1 << v17) & 0x8000008ALL) != 0)
    {
      v16 = @"EV_Routing_DC_Fast_Power";
      goto LABEL_22;
    }

    if (((1 << v17) & 0x8001) != 0)
    {
      goto LABEL_22;
    }

    if (a3 == 64)
    {
      v16 = @"EV_Routing_DC_Power";
      goto LABEL_22;
    }
  }

  if (a3 != 128 && a3 != 256)
  {
    v20 = 0;
    goto LABEL_23;
  }

LABEL_22:
  v18 = +[NSBundle mainBundle];
  v20 = [v18 localizedStringForKey:v16 value:@"localized string not found" table:0];

LABEL_23:
  v19 = [(VehicleConnectorCell *)self powerLabel];
  [v19 setText:v20];
}

- (void)_setup
{
  [(VehicleConnectorCell *)self setSelectionStyle:0];
  v3 = objc_opt_new();
  iconView = self->_iconView;
  self->_iconView = v3;

  [(UIImageView *)self->_iconView setAccessibilityIdentifier:@"IconView"];
  [(UIImageView *)self->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = +[UIColor systemGray2Color];
  [(UIImageView *)self->_iconView setTintColor:v5];

  [(UIImageView *)self->_iconView setContentMode:1];
  v6 = objc_opt_new();
  nameLabel = self->_nameLabel;
  self->_nameLabel = v6;

  [(UILabel *)self->_nameLabel setAccessibilityIdentifier:@"NameLabel"];
  [(UILabel *)self->_nameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = +[UIColor labelColor];
  [(UILabel *)self->_nameLabel setTextColor:v8];

  v9 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)self->_nameLabel setFont:v9];

  v10 = objc_opt_new();
  powerLabel = self->_powerLabel;
  self->_powerLabel = v10;

  [(UILabel *)self->_powerLabel setAccessibilityIdentifier:@"PowerLabel"];
  [(UILabel *)self->_powerLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_powerLabel setTextColor:v12];

  v13 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [(UILabel *)self->_powerLabel setFont:v13];

  v14 = [(VehicleConnectorCell *)self contentView];
  [v14 addSubview:self->_iconView];

  v15 = [(VehicleConnectorCell *)self contentView];
  [v15 addSubview:self->_nameLabel];

  v16 = [(VehicleConnectorCell *)self contentView];
  [v16 addSubview:self->_powerLabel];

  v47 = [(UIImageView *)self->_iconView leadingAnchor];
  v48 = [(VehicleConnectorCell *)self contentView];
  v46 = [v48 leadingAnchor];
  v45 = [v47 constraintEqualToAnchor:v46 constant:16.0];
  v49[0] = v45;
  v43 = [(UIImageView *)self->_iconView centerYAnchor];
  v44 = [(VehicleConnectorCell *)self contentView];
  v42 = [v44 centerYAnchor];
  v41 = [v43 constraintEqualToAnchor:v42];
  v49[1] = v41;
  v40 = [(UIImageView *)self->_iconView widthAnchor];
  v39 = [v40 constraintEqualToConstant:30.0];
  v49[2] = v39;
  v38 = [(UILabel *)self->_nameLabel leadingAnchor];
  v37 = [(UIImageView *)self->_iconView trailingAnchor];
  v36 = [v38 constraintEqualToAnchor:v37 constant:10.0];
  v49[3] = v36;
  v34 = [(UILabel *)self->_nameLabel topAnchor];
  v35 = [(VehicleConnectorCell *)self contentView];
  v33 = [v35 topAnchor];
  v32 = [v34 constraintEqualToAnchor:v33 constant:16.0];
  v49[4] = v32;
  v30 = [(UILabel *)self->_nameLabel trailingAnchor];
  v31 = [(VehicleConnectorCell *)self contentView];
  v29 = [v31 trailingAnchor];
  v28 = [v30 constraintEqualToAnchor:v29 constant:-16.0];
  v49[5] = v28;
  v27 = [(UILabel *)self->_powerLabel leadingAnchor];
  v17 = [(UIImageView *)self->_iconView trailingAnchor];
  v18 = [v27 constraintEqualToAnchor:v17 constant:10.0];
  v49[6] = v18;
  v19 = [(UILabel *)self->_powerLabel topAnchor];
  v20 = [(UILabel *)self->_nameLabel bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:3.0];
  v49[7] = v21;
  v22 = [(UILabel *)self->_powerLabel trailingAnchor];
  v23 = [(VehicleConnectorCell *)self contentView];
  v24 = [v23 trailingAnchor];
  v25 = [v22 constraintEqualToAnchor:v24 constant:-16.0];
  v49[8] = v25;
  v26 = [NSArray arrayWithObjects:v49 count:9];
  [NSLayoutConstraint activateConstraints:v26];
}

- (VehicleConnectorCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = VehicleConnectorCell;
  v4 = [(VehicleConnectorCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(VehicleConnectorCell *)v4 _setup];
    [(VehicleConnectorCell *)v5 setAccessibilityIdentifier:@"VehicleConnectorCell"];
  }

  return v5;
}

@end