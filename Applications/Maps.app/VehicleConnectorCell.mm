@interface VehicleConnectorCell
- (VehicleConnectorCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_setup;
- (void)setActive:(BOOL)active;
- (void)setConnectorType:(unint64_t)type;
@end

@implementation VehicleConnectorCell

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    self->_active = active;
    if (active)
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

- (void)setConnectorType:(unint64_t)type
{
  if (self->_connectorType == type)
  {
    return;
  }

  self->_connectorType = type;
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  traitCollection = [(VehicleConnectorCell *)self traitCollection];
  v8 = v6;
  v9 = traitCollection;
  if (type > 15)
  {
    goto LABEL_10;
  }

  if (type > 3)
  {
    if (type == 4)
    {
      v10 = @"Plug_CCS2";
      goto LABEL_13;
    }

    if (type == 8)
    {
      v10 = @"Plug_CHAdeMO";
      goto LABEL_13;
    }

LABEL_10:
    v11 = objc_opt_new();
    goto LABEL_14;
  }

  if (type == 1)
  {
    v10 = @"Plug_J1772";
    goto LABEL_13;
  }

  if (type != 2)
  {
    goto LABEL_10;
  }

  v10 = @"Plug_CCS1";
LABEL_13:
  v11 = [UIImage imageNamed:v10 inBundle:v8 compatibleWithTraitCollection:v9];
LABEL_14:
  v12 = v11;

  iconView = [(VehicleConnectorCell *)self iconView];
  [iconView setImage:v12];

  v14 = sub_100A64170(type);
  nameLabel = [(VehicleConnectorCell *)self nameLabel];
  [nameLabel setText:v14];

  v16 = @"EV_Routing_AC_Power";
  v17 = type - 1;
  if (type - 1 <= 0x3F)
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

    if (type == 64)
    {
      v16 = @"EV_Routing_DC_Power";
      goto LABEL_22;
    }
  }

  if (type != 128 && type != 256)
  {
    v20 = 0;
    goto LABEL_23;
  }

LABEL_22:
  v18 = +[NSBundle mainBundle];
  v20 = [v18 localizedStringForKey:v16 value:@"localized string not found" table:0];

LABEL_23:
  powerLabel = [(VehicleConnectorCell *)self powerLabel];
  [powerLabel setText:v20];
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

  contentView = [(VehicleConnectorCell *)self contentView];
  [contentView addSubview:self->_iconView];

  contentView2 = [(VehicleConnectorCell *)self contentView];
  [contentView2 addSubview:self->_nameLabel];

  contentView3 = [(VehicleConnectorCell *)self contentView];
  [contentView3 addSubview:self->_powerLabel];

  leadingAnchor = [(UIImageView *)self->_iconView leadingAnchor];
  contentView4 = [(VehicleConnectorCell *)self contentView];
  leadingAnchor2 = [contentView4 leadingAnchor];
  v45 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v49[0] = v45;
  centerYAnchor = [(UIImageView *)self->_iconView centerYAnchor];
  contentView5 = [(VehicleConnectorCell *)self contentView];
  centerYAnchor2 = [contentView5 centerYAnchor];
  v41 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v49[1] = v41;
  widthAnchor = [(UIImageView *)self->_iconView widthAnchor];
  v39 = [widthAnchor constraintEqualToConstant:30.0];
  v49[2] = v39;
  leadingAnchor3 = [(UILabel *)self->_nameLabel leadingAnchor];
  trailingAnchor = [(UIImageView *)self->_iconView trailingAnchor];
  v36 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:10.0];
  v49[3] = v36;
  topAnchor = [(UILabel *)self->_nameLabel topAnchor];
  contentView6 = [(VehicleConnectorCell *)self contentView];
  topAnchor2 = [contentView6 topAnchor];
  v32 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:16.0];
  v49[4] = v32;
  trailingAnchor2 = [(UILabel *)self->_nameLabel trailingAnchor];
  contentView7 = [(VehicleConnectorCell *)self contentView];
  trailingAnchor3 = [contentView7 trailingAnchor];
  v28 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-16.0];
  v49[5] = v28;
  leadingAnchor4 = [(UILabel *)self->_powerLabel leadingAnchor];
  trailingAnchor4 = [(UIImageView *)self->_iconView trailingAnchor];
  v18 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor4 constant:10.0];
  v49[6] = v18;
  topAnchor3 = [(UILabel *)self->_powerLabel topAnchor];
  bottomAnchor = [(UILabel *)self->_nameLabel bottomAnchor];
  v21 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:3.0];
  v49[7] = v21;
  trailingAnchor5 = [(UILabel *)self->_powerLabel trailingAnchor];
  contentView8 = [(VehicleConnectorCell *)self contentView];
  trailingAnchor6 = [contentView8 trailingAnchor];
  v25 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-16.0];
  v49[8] = v25;
  v26 = [NSArray arrayWithObjects:v49 count:9];
  [NSLayoutConstraint activateConstraints:v26];
}

- (VehicleConnectorCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = VehicleConnectorCell;
  v4 = [(VehicleConnectorCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(VehicleConnectorCell *)v4 _setup];
    [(VehicleConnectorCell *)v5 setAccessibilityIdentifier:@"VehicleConnectorCell"];
  }

  return v5;
}

@end