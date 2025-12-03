@interface RoutePlanningVehicleSelectionCollectionViewCell
- (RoutePlanningVehicleSelectionCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)_setupConstraints;
- (void)setupWithVehicle:(id)vehicle;
@end

@implementation RoutePlanningVehicleSelectionCollectionViewCell

- (void)setupWithVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  combinedDisplayName = [vehicleCopy combinedDisplayName];
  [(UILabel *)self->_titleLabel setText:combinedDisplayName];

  isPureElectricVehicle = [vehicleCopy isPureElectricVehicle];
  if (isPureElectricVehicle)
  {
    v6 = vehicleCopy;
  }

  else
  {
    v6 = 0;
  }

  if (isPureElectricVehicle)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  [(VehicleBatteryView *)self->_vehicleBatteryView setVehicle:v6];
  [(VehicleBatteryView *)self->_vehicleBatteryView setHidden:isPureElectricVehicle ^ 1];
  [(VehicleBatteryView *)self->_vehicleBatteryView setAlpha:v7];
}

- (void)_setupConstraints
{
  if (sub_10000FA08(self) == 5)
  {
    v3 = 12.0;
  }

  else
  {
    v3 = 18.0;
  }

  stackView = self->_stackView;
  contentView = [(RoutePlanningVehicleSelectionCollectionViewCell *)self contentView];
  LODWORD(v5) = 1148846080;
  v6 = [(UIStackView *)stackView _maps_constraintsEqualToEdgesOfView:contentView insets:v3 priority:16.0, v3, 16.0, v5];
  allConstraints = [v6 allConstraints];
  [NSLayoutConstraint activateConstraints:allConstraints];
}

- (RoutePlanningVehicleSelectionCollectionViewCell)initWithFrame:(CGRect)frame
{
  v16.receiver = self;
  v16.super_class = RoutePlanningVehicleSelectionCollectionViewCell;
  v3 = [(MapsDebugCollectionViewCell *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor redColor];
    [(RoutePlanningVehicleSelectionCollectionViewCell *)v3 setBackgroundColor:v4];

    v5 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v5;

    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    if (sub_10000FA08(v3) == 5)
    {
      [UIFont systemFontOfSize:15.0];
    }

    else
    {
      [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    }
    v7 = ;
    [(UILabel *)v3->_titleLabel setFont:v7];

    [(UILabel *)v3->_titleLabel setAdjustsFontForContentSizeCategory:1];
    v8 = [[VehicleBatteryView alloc] initWithVehicle:0 configuration:1 batteryChargeTextAtEdge:8];
    vehicleBatteryView = v3->_vehicleBatteryView;
    v3->_vehicleBatteryView = v8;

    [(VehicleBatteryView *)v3->_vehicleBatteryView setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = [UIStackView alloc];
    v17[0] = v3->_titleLabel;
    v17[1] = v3->_vehicleBatteryView;
    v11 = [NSArray arrayWithObjects:v17 count:2];
    v12 = [v10 initWithArrangedSubviews:v11];

    [(UIStackView *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v12 setAlignment:0];
    [(UIStackView *)v12 setDistribution:0];
    [(UIStackView *)v12 setAxis:1];
    [(UIStackView *)v12 setSpacing:4.0];
    contentView = [(RoutePlanningVehicleSelectionCollectionViewCell *)v3 contentView];
    [contentView addSubview:v12];

    stackView = v3->_stackView;
    v3->_stackView = v12;

    [(RoutePlanningVehicleSelectionCollectionViewCell *)v3 _setupConstraints];
  }

  return v3;
}

@end