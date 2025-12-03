@interface VehicleBatteryView
+ (id)colorForBatteryLevel:(unint64_t)level;
- (VehicleBatteryView)initWithVehicle:(id)vehicle configuration:(int64_t)configuration batteryChargeTextAtEdge:(unint64_t)edge;
- (void)_setupConstraints;
- (void)_setupStyling;
- (void)refreshState;
- (void)setReloading:(BOOL)reloading;
- (void)setVehicle:(id)vehicle;
@end

@implementation VehicleBatteryView

- (void)refreshState
{
  if (!-[VehicleBatteryView isReloading](self, "isReloading") || (-[VGVehicle identifier](self->_vehicle, "identifier"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 isEqualToString:self->_identifierOfCurrentlyLoadingVehicle], v3, (v4 & 1) == 0))
  {
    [(VehicleBatteryView *)self setReloading:1];
    objc_initWeak(&location, self);
    v5 = +[VGVirtualGarageService sharedService];
    identifier = [(VGVehicle *)self->_vehicle identifier];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100E587B8;
    v7[3] = &unk_101656398;
    objc_copyWeak(&v8, &location);
    [v5 virtualGarageGetLatestStateOfVehicleWithIdentifier:identifier syncAcrossDevices:1 withReply:v7];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)setReloading:(BOOL)reloading
{
  if (self->_reloading != reloading)
  {
    self->_reloading = reloading;
    batteryStateAgeView = self->_batteryStateAgeView;
    if (reloading)
    {
      [(BatteryStateAgeView *)batteryStateAgeView startAnimating];
      identifier = [(VGVehicle *)self->_vehicle identifier];
    }

    else
    {
      [(BatteryStateAgeView *)batteryStateAgeView stopAnimating];
      identifier = 0;
    }

    identifierOfCurrentlyLoadingVehicle = self->_identifierOfCurrentlyLoadingVehicle;
    self->_identifierOfCurrentlyLoadingVehicle = identifier;
  }
}

- (void)setVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  if (self->_vehicle != vehicleCopy)
  {
    v14 = vehicleCopy;
    objc_storeStrong(&self->_vehicle, vehicle);
    BOOL = GEOConfigGetBOOL();
    if (v14)
    {
      displayedBatteryPercentage = [(VGVehicle *)v14 displayedBatteryPercentage];
      [(BatteryIconView *)self->_batteryView setLevel:displayedBatteryPercentage];
      if (BOOL)
      {
        v8 = +[NSBundle mainBundle];
        v9 = [v8 localizedStringForKey:@"%lu%%" value:@"localized string not found" table:0];
        v10 = [NSString localizedStringWithFormat:v9, displayedBatteryPercentage];
        [(UILabel *)self->_percentLabel setText:v10];

        percentLabel = [VehicleBatteryView colorForBatteryLevel:displayedBatteryPercentage];
        [(UILabel *)self->_percentLabel setTextColor:percentLabel];
      }

      else
      {
        percentLabel = self->_percentLabel;
        self->_percentLabel = 0;
      }

      currentVehicleState = [(VGVehicle *)self->_vehicle currentVehicleState];
      dateOfUpdate = [currentVehicleState dateOfUpdate];
      [(BatteryStateAgeView *)self->_batteryStateAgeView setDateOfLastSync:dateOfUpdate];

      [(BatteryStateAgeView *)self->_batteryStateAgeView setShouldShowSeparator:BOOL];
    }

    else
    {
      [(UILabel *)self->_percentLabel setText:0];
      [(BatteryStateAgeView *)self->_batteryStateAgeView setDateOfLastSync:0];
    }

    vehicleCopy = v14;
  }
}

- (void)_setupConstraints
{
  v50 = +[NSMutableArray array];
  if (self->_batteryChargeTextAtEdge == 8)
  {
    p_batteryView = &self->_batteryView;
    leadingAnchor = [(BatteryIconView *)self->_batteryView leadingAnchor];
    leadingAnchor2 = [(VehicleBatteryView *)self leadingAnchor];
    v48 = leadingAnchor;
    v6 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v55 = v6;
    v7 = 32;
    v8 = &v55;
  }

  else
  {
    p_batteryView = &self->_percentLabel;
    leadingAnchor3 = [(UILabel *)self->_percentLabel leadingAnchor];
    leadingAnchor2 = [(VehicleBatteryView *)self leadingAnchor];
    v48 = leadingAnchor3;
    v6 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor2];
    v54 = v6;
    v7 = 24;
    v8 = &v54;
  }

  leadingAnchor4 = [*(&self->super.super.super.isa + v7) leadingAnchor];
  trailingAnchor = [*p_batteryView trailingAnchor];
  v12 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor constant:4.0];
  v8[1] = v12;
  v13 = [NSArray arrayWithObjects:v8 count:2];
  [v50 addObjectsFromArray:v13];

  v49 = *(&self->super.super.super.isa + v7);
  centerYAnchor = [(BatteryIconView *)self->_batteryView centerYAnchor];
  centerYAnchor2 = [(VehicleBatteryView *)self centerYAnchor];
  v45 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v53[0] = v45;
  topAnchor = [(UILabel *)self->_percentLabel topAnchor];
  topAnchor2 = [(VehicleBatteryView *)self topAnchor];
  v42 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  v53[1] = v42;
  bottomAnchor = [(VehicleBatteryView *)self bottomAnchor];
  bottomAnchor2 = [(UILabel *)self->_percentLabel bottomAnchor];
  v39 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2];
  v53[2] = v39;
  centerYAnchor3 = [(UILabel *)self->_percentLabel centerYAnchor];
  centerYAnchor4 = [(BatteryIconView *)self->_batteryView centerYAnchor];
  v15 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v53[3] = v15;
  topAnchor3 = [(BatteryStateAgeView *)self->_batteryStateAgeView topAnchor];
  topAnchor4 = [(VehicleBatteryView *)self topAnchor];
  v18 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
  v53[4] = v18;
  bottomAnchor3 = [(VehicleBatteryView *)self bottomAnchor];
  bottomAnchor4 = [(BatteryStateAgeView *)self->_batteryStateAgeView bottomAnchor];
  v21 = [bottomAnchor3 constraintGreaterThanOrEqualToAnchor:bottomAnchor4];
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
    effectiveUserInterfaceLayoutDirection = [(VehicleBatteryView *)self effectiveUserInterfaceLayoutDirection];
    batteryStateAgeView = self->_batteryStateAgeView;
    if (effectiveUserInterfaceLayoutDirection == 1)
    {
      rightAnchor = [(BatteryStateAgeView *)batteryStateAgeView rightAnchor];
      leftAnchor = [(BatteryStateAgeView *)v49 leftAnchor];
      v27 = [rightAnchor constraintEqualToAnchor:leftAnchor constant:-4.0];
      v52 = v27;
      v28 = &v52;
    }

    else
    {
      rightAnchor = [(BatteryStateAgeView *)batteryStateAgeView leftAnchor];
      leftAnchor = [(BatteryStateAgeView *)v49 rightAnchor];
      v27 = [rightAnchor constraintEqualToAnchor:leftAnchor];
      v51 = v27;
      v28 = &v51;
    }

    v30 = v50;
    centerYAnchor5 = [(BatteryStateAgeView *)self->_batteryStateAgeView centerYAnchor];
    centerYAnchor6 = [(BatteryIconView *)self->_batteryView centerYAnchor];
    v33 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    v28[1] = v33;
    v34 = [NSArray arrayWithObjects:v28 count:2];
    [v50 addObjectsFromArray:v34];

    v29 = self->_batteryStateAgeView;
  }

  trailingAnchor2 = [(VehicleBatteryView *)self trailingAnchor];
  trailingAnchor3 = [(BatteryStateAgeView *)v29 trailingAnchor];
  v37 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
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

- (VehicleBatteryView)initWithVehicle:(id)vehicle configuration:(int64_t)configuration batteryChargeTextAtEdge:(unint64_t)edge
{
  v29.receiver = self;
  v29.super_class = VehicleBatteryView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(VehicleBatteryView *)&v29 initWithFrame:vehicle, CGRectZero.origin.x, y, width, height];
  if (height)
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [(VehicleBatteryView *)height setAccessibilityIdentifier:v12];

    height->_configuration = configuration;
    height->_batteryChargeTextAtEdge = edge;
    height2 = [[BatteryIconView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    batteryView = height->_batteryView;
    height->_batteryView = height2;

    [(BatteryIconView *)height->_batteryView setAccessibilityIdentifier:@"BatteryIconView"];
    [(BatteryIconView *)height->_batteryView setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v15) = 1148846080;
    [(BatteryIconView *)height->_batteryView setContentCompressionResistancePriority:0 forAxis:v15];
    LODWORD(v16) = 1148846080;
    [(BatteryIconView *)height->_batteryView setContentCompressionResistancePriority:1 forAxis:v16];
    [(VehicleBatteryView *)height addSubview:height->_batteryView];
    v17 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    percentLabel = height->_percentLabel;
    height->_percentLabel = v17;

    [(UILabel *)height->_percentLabel setAccessibilityIdentifier:@"PercentLabel"];
    [(UILabel *)height->_percentLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)height->_percentLabel setAdjustsFontForContentSizeCategory:1];
    LODWORD(v19) = 1148829696;
    [(UILabel *)height->_percentLabel setContentCompressionResistancePriority:0 forAxis:v19];
    LODWORD(v20) = 1148846080;
    [(UILabel *)height->_percentLabel setContentHuggingPriority:0 forAxis:v20];
    LODWORD(v21) = 1144750080;
    [(UILabel *)height->_percentLabel setContentHuggingPriority:1 forAxis:v21];
    [(VehicleBatteryView *)height addSubview:height->_percentLabel];
    configuration = height->_configuration;
    if ((configuration - 1) <= 1)
    {
      v23 = [[BatteryStateAgeView alloc] initWithConfiguration:configuration == 2];
      batteryStateAgeView = height->_batteryStateAgeView;
      height->_batteryStateAgeView = v23;

      [(BatteryStateAgeView *)height->_batteryStateAgeView setTranslatesAutoresizingMaskIntoConstraints:0];
      LODWORD(v25) = 1144750080;
      [(BatteryStateAgeView *)height->_batteryStateAgeView setContentHuggingPriority:0 forAxis:v25];
      LODWORD(v26) = 1144750080;
      [(BatteryStateAgeView *)height->_batteryStateAgeView setContentHuggingPriority:1 forAxis:v26];
      LODWORD(v27) = 1148846080;
      [(BatteryStateAgeView *)height->_batteryStateAgeView setContentCompressionResistancePriority:1 forAxis:v27];
      [(VehicleBatteryView *)height addSubview:height->_batteryStateAgeView];
    }

    [(VehicleBatteryView *)height _setupStyling];
    [(VehicleBatteryView *)height _setupConstraints];
  }

  return height;
}

+ (id)colorForBatteryLevel:(unint64_t)level
{
  if (GEOConfigGetUInteger() >= level)
  {
    v4 = +[UIColor systemRedColor];
  }

  else
  {
    if (GEOConfigGetUInteger() >= level)
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