@interface VehicleBatteryView
+ (id)colorForBatteryLevel:(unint64_t)a3;
- (VehicleBatteryView)initWithVehicle:(id)a3 configuration:(int64_t)a4 batteryChargeTextAtEdge:(unint64_t)a5;
- (void)_setupConstraints;
- (void)_setupStyling;
- (void)refreshState;
- (void)setReloading:(BOOL)a3;
- (void)setVehicle:(id)a3;
@end

@implementation VehicleBatteryView

- (void)refreshState
{
  if (!-[VehicleBatteryView isReloading](self, "isReloading") || (-[VGVehicle identifier](self->_vehicle, "identifier"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isEqualToString:self->_identifierOfCurrentlyLoadingVehicle], v3, (v4 & 1) == 0))
  {
    [(VehicleBatteryView *)self setReloading:1];
    objc_initWeak(&location, self);
    v5 = +[VGVirtualGarageService sharedService];
    v6 = [(VGVehicle *)self->_vehicle identifier];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100E587B8;
    v7[3] = &unk_101656398;
    objc_copyWeak(&v8, &location);
    [v5 virtualGarageGetLatestStateOfVehicleWithIdentifier:v6 syncAcrossDevices:1 withReply:v7];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)setReloading:(BOOL)a3
{
  if (self->_reloading != a3)
  {
    self->_reloading = a3;
    batteryStateAgeView = self->_batteryStateAgeView;
    if (a3)
    {
      [(BatteryStateAgeView *)batteryStateAgeView startAnimating];
      v6 = [(VGVehicle *)self->_vehicle identifier];
    }

    else
    {
      [(BatteryStateAgeView *)batteryStateAgeView stopAnimating];
      v6 = 0;
    }

    identifierOfCurrentlyLoadingVehicle = self->_identifierOfCurrentlyLoadingVehicle;
    self->_identifierOfCurrentlyLoadingVehicle = v6;
  }
}

- (void)setVehicle:(id)a3
{
  v5 = a3;
  if (self->_vehicle != v5)
  {
    v14 = v5;
    objc_storeStrong(&self->_vehicle, a3);
    BOOL = GEOConfigGetBOOL();
    if (v14)
    {
      v7 = [(VGVehicle *)v14 displayedBatteryPercentage];
      [(BatteryIconView *)self->_batteryView setLevel:v7];
      if (BOOL)
      {
        v8 = +[NSBundle mainBundle];
        v9 = [v8 localizedStringForKey:@"%lu%%" value:@"localized string not found" table:0];
        v10 = [NSString localizedStringWithFormat:v9, v7];
        [(UILabel *)self->_percentLabel setText:v10];

        percentLabel = [VehicleBatteryView colorForBatteryLevel:v7];
        [(UILabel *)self->_percentLabel setTextColor:percentLabel];
      }

      else
      {
        percentLabel = self->_percentLabel;
        self->_percentLabel = 0;
      }

      v12 = [(VGVehicle *)self->_vehicle currentVehicleState];
      v13 = [v12 dateOfUpdate];
      [(BatteryStateAgeView *)self->_batteryStateAgeView setDateOfLastSync:v13];

      [(BatteryStateAgeView *)self->_batteryStateAgeView setShouldShowSeparator:BOOL];
    }

    else
    {
      [(UILabel *)self->_percentLabel setText:0];
      [(BatteryStateAgeView *)self->_batteryStateAgeView setDateOfLastSync:0];
    }

    v5 = v14;
  }
}

- (void)_setupConstraints
{
  v50 = +[NSMutableArray array];
  if (self->_batteryChargeTextAtEdge == 8)
  {
    p_batteryView = &self->_batteryView;
    v4 = [(BatteryIconView *)self->_batteryView leadingAnchor];
    v5 = [(VehicleBatteryView *)self leadingAnchor];
    v48 = v4;
    v6 = [v4 constraintEqualToAnchor:v5];
    v55 = v6;
    v7 = 32;
    v8 = &v55;
  }

  else
  {
    p_batteryView = &self->_percentLabel;
    v9 = [(UILabel *)self->_percentLabel leadingAnchor];
    v5 = [(VehicleBatteryView *)self leadingAnchor];
    v48 = v9;
    v6 = [v9 constraintEqualToAnchor:v5];
    v54 = v6;
    v7 = 24;
    v8 = &v54;
  }

  v10 = [*(&self->super.super.super.isa + v7) leadingAnchor];
  v11 = [*p_batteryView trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:4.0];
  v8[1] = v12;
  v13 = [NSArray arrayWithObjects:v8 count:2];
  [v50 addObjectsFromArray:v13];

  v49 = *(&self->super.super.super.isa + v7);
  v47 = [(BatteryIconView *)self->_batteryView centerYAnchor];
  v46 = [(VehicleBatteryView *)self centerYAnchor];
  v45 = [v47 constraintEqualToAnchor:v46];
  v53[0] = v45;
  v44 = [(UILabel *)self->_percentLabel topAnchor];
  v43 = [(VehicleBatteryView *)self topAnchor];
  v42 = [v44 constraintGreaterThanOrEqualToAnchor:v43];
  v53[1] = v42;
  v41 = [(VehicleBatteryView *)self bottomAnchor];
  v40 = [(UILabel *)self->_percentLabel bottomAnchor];
  v39 = [v41 constraintGreaterThanOrEqualToAnchor:v40];
  v53[2] = v39;
  v38 = [(UILabel *)self->_percentLabel centerYAnchor];
  v14 = [(BatteryIconView *)self->_batteryView centerYAnchor];
  v15 = [v38 constraintEqualToAnchor:v14];
  v53[3] = v15;
  v16 = [(BatteryStateAgeView *)self->_batteryStateAgeView topAnchor];
  v17 = [(VehicleBatteryView *)self topAnchor];
  v18 = [v16 constraintGreaterThanOrEqualToAnchor:v17];
  v53[4] = v18;
  v19 = [(VehicleBatteryView *)self bottomAnchor];
  v20 = [(BatteryStateAgeView *)self->_batteryStateAgeView bottomAnchor];
  v21 = [v19 constraintGreaterThanOrEqualToAnchor:v20];
  v53[5] = v21;
  v22 = [NSArray arrayWithObjects:v53 count:6];
  [NSLayoutConstraint activateConstraints:v22];

  if ((self->_configuration - 1) > 1)
  {
    v29 = v49;
    v30 = v50;
  }

  else
  {
    v23 = [(VehicleBatteryView *)self effectiveUserInterfaceLayoutDirection];
    batteryStateAgeView = self->_batteryStateAgeView;
    if (v23 == 1)
    {
      v25 = [(BatteryStateAgeView *)batteryStateAgeView rightAnchor];
      v26 = [(BatteryStateAgeView *)v49 leftAnchor];
      v27 = [v25 constraintEqualToAnchor:v26 constant:-4.0];
      v52 = v27;
      v28 = &v52;
    }

    else
    {
      v25 = [(BatteryStateAgeView *)batteryStateAgeView leftAnchor];
      v26 = [(BatteryStateAgeView *)v49 rightAnchor];
      v27 = [v25 constraintEqualToAnchor:v26];
      v51 = v27;
      v28 = &v51;
    }

    v30 = v50;
    v31 = [(BatteryStateAgeView *)self->_batteryStateAgeView centerYAnchor];
    v32 = [(BatteryIconView *)self->_batteryView centerYAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];
    v28[1] = v33;
    v34 = [NSArray arrayWithObjects:v28 count:2];
    [v50 addObjectsFromArray:v34];

    v29 = self->_batteryStateAgeView;
  }

  v35 = [(VehicleBatteryView *)self trailingAnchor];
  v36 = [(BatteryStateAgeView *)v29 trailingAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];
  [v30 addObject:v37];

  [NSLayoutConstraint activateConstraints:v30];
}

- (void)_setupStyling
{
  v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)self->_percentLabel setFont:v3];

  v4 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_percentLabel setTextColor:v4];
}

- (VehicleBatteryView)initWithVehicle:(id)a3 configuration:(int64_t)a4 batteryChargeTextAtEdge:(unint64_t)a5
{
  v29.receiver = self;
  v29.super_class = VehicleBatteryView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v10 = [(VehicleBatteryView *)&v29 initWithFrame:a3, CGRectZero.origin.x, y, width, height];
  if (v10)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [(VehicleBatteryView *)v10 setAccessibilityIdentifier:v12];

    v10->_configuration = a4;
    v10->_batteryChargeTextAtEdge = a5;
    v13 = [[BatteryIconView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    batteryView = v10->_batteryView;
    v10->_batteryView = v13;

    [(BatteryIconView *)v10->_batteryView setAccessibilityIdentifier:@"BatteryIconView"];
    [(BatteryIconView *)v10->_batteryView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v15) = 1148846080;
    [(BatteryIconView *)v10->_batteryView setContentCompressionResistancePriority:0 forAxis:v15];
    LODWORD(v16) = 1148846080;
    [(BatteryIconView *)v10->_batteryView setContentCompressionResistancePriority:1 forAxis:v16];
    [(VehicleBatteryView *)v10 addSubview:v10->_batteryView];
    v17 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    percentLabel = v10->_percentLabel;
    v10->_percentLabel = v17;

    [(UILabel *)v10->_percentLabel setAccessibilityIdentifier:@"PercentLabel"];
    [(UILabel *)v10->_percentLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v10->_percentLabel setAdjustsFontForContentSizeCategory:1];
    LODWORD(v19) = 1148829696;
    [(UILabel *)v10->_percentLabel setContentCompressionResistancePriority:0 forAxis:v19];
    LODWORD(v20) = 1148846080;
    [(UILabel *)v10->_percentLabel setContentHuggingPriority:0 forAxis:v20];
    LODWORD(v21) = 1144750080;
    [(UILabel *)v10->_percentLabel setContentHuggingPriority:1 forAxis:v21];
    [(VehicleBatteryView *)v10 addSubview:v10->_percentLabel];
    configuration = v10->_configuration;
    if ((configuration - 1) <= 1)
    {
      v23 = [[BatteryStateAgeView alloc] initWithConfiguration:configuration == 2];
      batteryStateAgeView = v10->_batteryStateAgeView;
      v10->_batteryStateAgeView = v23;

      [(BatteryStateAgeView *)v10->_batteryStateAgeView setTranslatesAutoresizingMaskIntoConstraints:0];
      LODWORD(v25) = 1144750080;
      [(BatteryStateAgeView *)v10->_batteryStateAgeView setContentHuggingPriority:0 forAxis:v25];
      LODWORD(v26) = 1144750080;
      [(BatteryStateAgeView *)v10->_batteryStateAgeView setContentHuggingPriority:1 forAxis:v26];
      LODWORD(v27) = 1148846080;
      [(BatteryStateAgeView *)v10->_batteryStateAgeView setContentCompressionResistancePriority:1 forAxis:v27];
      [(VehicleBatteryView *)v10 addSubview:v10->_batteryStateAgeView];
    }

    [(VehicleBatteryView *)v10 _setupStyling];
    [(VehicleBatteryView *)v10 _setupConstraints];
  }

  return v10;
}

+ (id)colorForBatteryLevel:(unint64_t)a3
{
  if (GEOConfigGetUInteger() >= a3)
  {
    v4 = +[UIColor systemRedColor];
  }

  else
  {
    if (GEOConfigGetUInteger() >= a3)
    {
      +[UIColor systemYellowColor];
    }

    else
    {
      +[UIColor systemGreenColor];
    }
    v4 = ;
  }

  return v4;
}

@end