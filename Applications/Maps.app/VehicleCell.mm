@interface VehicleCell
- (VehicleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_setupConstraints;
- (void)_setupStyling;
- (void)setupWithVehicle:(id)vehicle cellStyle:(int64_t)style isSelected:(BOOL)selected;
@end

@implementation VehicleCell

- (void)setupWithVehicle:(id)vehicle cellStyle:(int64_t)style isSelected:(BOOL)selected
{
  selectedCopy = selected;
  vehicleCopy = vehicle;
  isPureElectricVehicle = [vehicleCopy isPureElectricVehicle];
  v9 = [UIImageSymbolConfiguration configurationWithPointSize:28.0];
  if (isPureElectricVehicle)
  {
    v10 = @"bolt.car.fill";
  }

  else
  {
    v10 = @"car.fill";
  }

  v11 = [UIImage systemImageNamed:v10 withConfiguration:v9];
  imageWithoutBaseline = [v11 imageWithoutBaseline];

  v13 = [imageWithoutBaseline imageWithRenderingMode:2];
  [(UIImageView *)self->_iconImageView setImage:v13];

  colorHex = [vehicleCopy colorHex];
  v15 = [UIColor _maps_colorFromHexRepresentation:colorHex];
  if (v15)
  {
    p_iconImageContainerView = &self->_iconImageContainerView;
    [(UIView *)self->_iconImageContainerView setBackgroundColor:v15];
  }

  else
  {
    v17 = +[UIColor systemBlueColor];
    p_iconImageContainerView = &self->_iconImageContainerView;
    [(UIView *)self->_iconImageContainerView setBackgroundColor:v17];
  }

  backgroundColor = [(UIView *)*p_iconImageContainerView backgroundColor];
  v19 = +[UIColor whiteColor];
  [backgroundColor _maps_euclideanDistanceFromColor:v19];
  v21 = v20;

  if (v21 >= 0.1)
  {
    v22 = +[UIColor systemWhiteColor];
    [(UIImageView *)self->_iconImageView setTintColor:v22];
  }

  else
  {
    v22 = [NSBundle bundleForClass:objc_opt_class()];
    traitCollection = [(VehicleCell *)self traitCollection];
    v24 = [UIColor colorNamed:@"TertiaryVehicleTint" inBundle:v22 compatibleWithTraitCollection:traitCollection];
    [(UIImageView *)self->_iconImageView setTintColor:v24];
  }

  combinedDisplayName = [vehicleCopy combinedDisplayName];
  if (combinedDisplayName)
  {
    [(UILabel *)self->_titleLabel setText:combinedDisplayName];
  }

  else
  {
    v26 = +[NSBundle mainBundle];
    v27 = [v26 localizedStringForKey:@"[Vehicle Selection] My Vehicle" value:@"localized string not found" table:0];
    [(UILabel *)self->_titleLabel setText:v27];
  }

  isPureElectricVehicle2 = [vehicleCopy isPureElectricVehicle];
  batteryChargeView = self->_batteryChargeView;
  if (isPureElectricVehicle2)
  {
    [(VehicleBatteryView *)batteryChargeView setVehicle:vehicleCopy];
    [(VehicleBatteryView *)self->_batteryChargeView setHidden:0];
    applicationRecord = [vehicleCopy applicationRecord];
    if (applicationRecord)
    {
      v31 = applicationRecord;
      currentVehicleState = [vehicleCopy currentVehicleState];
      dateOfUpdate = [currentVehicleState dateOfUpdate];
      [dateOfUpdate timeIntervalSinceNow];
      v35 = v34;

      if (v35 < -60.0)
      {
        [(VehicleBatteryView *)self->_batteryChargeView refreshState];
      }
    }
  }

  else
  {
    [(VehicleBatteryView *)batteryChargeView setHidden:1];
  }

  if (style == 1)
  {
    [(VehicleCell *)self setAccessoryType:1];
    v37 = +[UIColor tableCellGroupedBackgroundColor];
  }

  else
  {
    if (style)
    {
      goto LABEL_26;
    }

    if (selectedCopy)
    {
      v36 = 3;
    }

    else
    {
      v36 = 0;
    }

    [(VehicleCell *)self setAccessoryType:v36];
    v37 = +[UIColor tertiarySystemFillColor];
  }

  v38 = v37;
  [(VehicleCell *)self setBackgroundColor:v37];

LABEL_26:
}

- (void)_setupStyling
{
  layer = [(UIView *)self->_iconImageContainerView layer];
  [layer setCornerRadius:20.0];

  layer2 = [(UIView *)self->_iconImageContainerView layer];
  [layer2 setCornerCurve:kCACornerCurveCircular];

  layer3 = [(UIView *)self->_iconImageContainerView layer];
  [layer3 setMaskedCorners:15];

  v6 = +[UIColor labelColor];
  [(UILabel *)self->_titleLabel setTextColor:v6];

  [(UILabel *)self->_titleLabel setAllowsDefaultTighteningForTruncation:1];
  v7 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleBody weight:UIFontWeightMedium];
  [(UILabel *)self->_titleLabel setFont:v7];
}

- (void)_setupConstraints
{
  contentView = [(VehicleCell *)self contentView];
  heightAnchor = [contentView heightAnchor];
  v44 = [heightAnchor constraintGreaterThanOrEqualToConstant:80.0];
  v47[0] = v44;
  heightAnchor2 = [(UIView *)self->_iconImageContainerView heightAnchor];
  v42 = [heightAnchor2 constraintEqualToConstant:40.0];
  v47[1] = v42;
  widthAnchor = [(UIView *)self->_iconImageContainerView widthAnchor];
  v40 = [widthAnchor constraintEqualToConstant:40.0];
  v47[2] = v40;
  leadingAnchor = [(UIView *)self->_iconImageContainerView leadingAnchor];
  contentView2 = [(VehicleCell *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v47[3] = v36;
  centerYAnchor = [(UIView *)self->_iconImageContainerView centerYAnchor];
  contentView3 = [(VehicleCell *)self contentView];
  centerYAnchor2 = [contentView3 centerYAnchor];
  v32 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v47[4] = v32;
  centerXAnchor = [(UIImageView *)self->_iconImageView centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_iconImageContainerView centerXAnchor];
  v29 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v47[5] = v29;
  centerYAnchor3 = [(UIImageView *)self->_iconImageView centerYAnchor];
  centerYAnchor4 = [(UIView *)self->_iconImageContainerView centerYAnchor];
  v26 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v47[6] = v26;
  widthAnchor2 = [(UIImageView *)self->_iconImageView widthAnchor];
  v24 = [widthAnchor2 constraintLessThanOrEqualToConstant:28.0];
  v47[7] = v24;
  heightAnchor3 = [(UIImageView *)self->_iconImageView heightAnchor];
  v22 = [heightAnchor3 constraintLessThanOrEqualToConstant:28.0];
  v47[8] = v22;
  centerYAnchor5 = [(UIStackView *)self->_stackView centerYAnchor];
  centerYAnchor6 = [(UIImageView *)self->_iconImageView centerYAnchor];
  v19 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  v47[9] = v19;
  leadingAnchor3 = [(UIStackView *)self->_stackView leadingAnchor];
  trailingAnchor = [(UIView *)self->_iconImageContainerView trailingAnchor];
  v16 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:12.0];
  v47[10] = v16;
  contentView4 = [(VehicleCell *)self contentView];
  trailingAnchor2 = [contentView4 trailingAnchor];
  trailingAnchor3 = [(UIStackView *)self->_stackView trailingAnchor];
  v3 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:16.0];
  v47[11] = v3;
  topAnchor = [(UIStackView *)self->_stackView topAnchor];
  contentView5 = [(VehicleCell *)self contentView];
  topAnchor2 = [contentView5 topAnchor];
  v7 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:20.0];
  v47[12] = v7;
  contentView6 = [(VehicleCell *)self contentView];
  bottomAnchor = [contentView6 bottomAnchor];
  bottomAnchor2 = [(UIStackView *)self->_stackView bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:20.0];
  v47[13] = v11;
  v12 = [NSArray arrayWithObjects:v47 count:14];
  [NSLayoutConstraint activateConstraints:v12];
}

- (VehicleCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v34.receiver = self;
  v34.super_class = VehicleCell;
  v4 = [(VehicleCell *)&v34 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [(VehicleCell *)v4 setAccessibilityIdentifier:v6];

    [(VehicleCell *)v4 setSelectionStyle:0];
    v7 = [UIView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v11 = [v7 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    iconImageContainerView = v4->_iconImageContainerView;
    v4->_iconImageContainerView = v11;

    [(UIView *)v4->_iconImageContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(VehicleCell *)v4 contentView];
    [contentView addSubview:v4->_iconImageContainerView];

    v14 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    iconImageView = v4->_iconImageView;
    v4->_iconImageView = v14;

    [(UIImageView *)v4->_iconImageView setAccessibilityIdentifier:@"IconImageView"];
    [(UIImageView *)v4->_iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_iconImageView setContentMode:1];
    LODWORD(v16) = 1144750080;
    [(UIImageView *)v4->_iconImageView setContentCompressionResistancePriority:1 forAxis:v16];
    LODWORD(v17) = 1144750080;
    [(UIImageView *)v4->_iconImageView setContentCompressionResistancePriority:0 forAxis:v17];
    [(UIView *)v4->_iconImageContainerView addSubview:v4->_iconImageView];
    v18 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    stackView = v4->_stackView;
    v4->_stackView = v18;

    [(UIStackView *)v4->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v4->_stackView setAxis:1];
    contentView2 = [(VehicleCell *)v4 contentView];
    [contentView2 addSubview:v4->_stackView];

    v21 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v21;

    [(UILabel *)v4->_titleLabel setAccessibilityIdentifier:@"TitleLabel"];
    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v23) = 1148846080;
    [(UILabel *)v4->_titleLabel setContentCompressionResistancePriority:1 forAxis:v23];
    LODWORD(v24) = 1144750080;
    [(UILabel *)v4->_titleLabel setContentCompressionResistancePriority:0 forAxis:v24];
    LODWORD(v25) = 1148846080;
    [(UILabel *)v4->_titleLabel setContentHuggingPriority:1 forAxis:v25];
    v26 = [[VehicleBatteryView alloc] initWithVehicle:0 configuration:1 batteryChargeTextAtEdge:8];
    batteryChargeView = v4->_batteryChargeView;
    v4->_batteryChargeView = v26;

    [(VehicleBatteryView *)v4->_batteryChargeView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v28) = 1148846080;
    [(VehicleBatteryView *)v4->_batteryChargeView setContentCompressionResistancePriority:1 forAxis:v28];
    LODWORD(v29) = 1144750080;
    [(VehicleBatteryView *)v4->_batteryChargeView setContentCompressionResistancePriority:0 forAxis:v29];
    LODWORD(v30) = 1148846080;
    [(VehicleBatteryView *)v4->_batteryChargeView setContentHuggingPriority:1 forAxis:v30];
    v31 = v4->_stackView;
    v35[0] = v4->_titleLabel;
    v35[1] = v4->_batteryChargeView;
    v32 = [NSArray arrayWithObjects:v35 count:2];
    [(UIStackView *)v31 _maps_setArrangedSubviews:v32];

    [(VehicleCell *)v4 _setupConstraints];
    [(VehicleCell *)v4 _setupStyling];
  }

  return v4;
}

@end