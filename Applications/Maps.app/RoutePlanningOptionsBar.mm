@interface RoutePlanningOptionsBar
- (RoutePlanningOptionsBar)initWithFrame:(CGRect)frame;
- (void)_buttonTapped;
- (void)_updateContent;
- (void)setButtonTitle:(id)title actionHandler:(id)handler;
- (void)setSummaryText:(id)text;
- (void)setVehicle:(id)vehicle;
@end

@implementation RoutePlanningOptionsBar

- (void)_buttonTapped
{
  actionHandler = self->_actionHandler;
  if (actionHandler)
  {
    actionHandler[2]();
  }
}

- (void)_updateContent
{
  vehicle = [(RoutePlanningOptionsBar *)self vehicle];

  if (vehicle)
  {
    vehicle2 = [(RoutePlanningOptionsBar *)self vehicle];
    isPureElectricVehicle = [vehicle2 isPureElectricVehicle];

    vehicle3 = [(RoutePlanningOptionsBar *)self vehicle];
    v7 = vehicle3;
    if (isPureElectricVehicle)
    {
      displayedBatteryPercentage = [vehicle3 displayedBatteryPercentage];

      vehicle4 = [(RoutePlanningOptionsBar *)self vehicle];
      combinedDisplayName = [vehicle4 combinedDisplayName];
      v10 = +[NSBundle mainBundle];
      v11 = [v10 localizedStringForKey:@"%lu%%" value:@"localized string not found" table:0];
      v12 = [NSString stringWithFormat:v11, displayedBatteryPercentage];
      v13 = [NSString stringWithFormat:@"%@: %@", combinedDisplayName, v12];
      v14 = 16;
      [(UILabel *)self->_summaryLabel setText:v13];

      p_batteryView = &self->_batteryView;
      [(BatteryIconView *)self->_batteryView setLevel:displayedBatteryPercentage];
    }

    else
    {
      combinedDisplayName2 = [vehicle3 combinedDisplayName];
      v14 = 16;
      [(UILabel *)self->_summaryLabel setText:combinedDisplayName2];

      p_batteryView = &self->_batteryView;
    }

    [(BatteryIconView *)*p_batteryView setHidden:isPureElectricVehicle ^ 1];
  }

  else
  {
    [(UILabel *)self->_summaryLabel setText:self->_summaryText];
    [(UILabel *)self->_summaryLabel setHidden:self->_summaryText == 0];
    v14 = 24;
  }

  v17 = *(&self->super.super.super.isa + v14);

  [v17 setHidden:vehicle == 0];
}

- (void)setVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  objc_storeStrong(&self->_vehicle, vehicle);
  isPureElectricVehicle = [vehicleCopy isPureElectricVehicle];
  [(NSLayoutConstraint *)self->_summaryToTrailingConstraint setActive:isPureElectricVehicle ^ 1];
  [(NSLayoutConstraint *)self->_summaryToBatteryConstraint setActive:isPureElectricVehicle];
  [(NSLayoutConstraint *)self->_batteryToTrailingConstraint setActive:isPureElectricVehicle];
  [(RoutePlanningOptionsBar *)self _updateContent];
}

- (void)setSummaryText:(id)text
{
  v4 = [text copy];
  summaryText = self->_summaryText;
  self->_summaryText = v4;

  [(RoutePlanningOptionsBar *)self _updateContent];
}

- (void)setButtonTitle:(id)title actionHandler:(id)handler
{
  titleCopy = title;
  v7 = [handler copy];
  actionHandler = self->_actionHandler;
  self->_actionHandler = v7;

  [(UIButton *)self->_button setTitle:titleCopy forState:0];
  button = self->_button;

  [(UIButton *)button setHidden:titleCopy == 0];
}

- (RoutePlanningOptionsBar)initWithFrame:(CGRect)frame
{
  v58.receiver = self;
  v58.super_class = RoutePlanningOptionsBar;
  v3 = [(RoutePlanningOptionsBar *)&v58 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    [(RoutePlanningOptionsBar *)v3 setAccessibilityIdentifier:v5];

    v6 = [UIButton buttonWithType:0];
    button = v3->_button;
    v3->_button = v6;

    [(UIButton *)v3->_button setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    titleLabel = [(UIButton *)v3->_button titleLabel];
    [titleLabel setFont:v8];

    [(UIButton *)v3->_button setContentHorizontalAlignment:4];
    v57 = +[UIColor systemBlueColor];
    [(UIButton *)v3->_button setTitleColor:v57 forState:0];
    [(UIButton *)v3->_button addTarget:v3 action:"_buttonTapped" forControlEvents:64];
    LODWORD(v10) = 1148846080;
    [(UIButton *)v3->_button setContentHuggingPriority:0 forAxis:v10];
    LODWORD(v11) = 1144766464;
    [(UIButton *)v3->_button setContentCompressionResistancePriority:0 forAxis:v11];
    LODWORD(v12) = 1148846080;
    [(UIButton *)v3->_button setContentCompressionResistancePriority:1 forAxis:v12];
    [(UIButton *)v3->_button setAccessibilityIdentifier:@"RoutePlanningOptionsBarButton"];
    [(RoutePlanningOptionsBar *)v3 addSubview:v3->_button];
    v13 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    summaryLabel = v3->_summaryLabel;
    v3->_summaryLabel = v13;

    [(UILabel *)v3->_summaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = +[UIColor secondaryLabelColor];
    [(UILabel *)v3->_summaryLabel setTextColor:v15];

    v16 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [(UILabel *)v3->_summaryLabel setFont:v16];

    LODWORD(v17) = 1148846080;
    [(UILabel *)v3->_summaryLabel setContentHuggingPriority:0 forAxis:v17];
    LODWORD(v18) = 1144733696;
    [(UILabel *)v3->_summaryLabel setContentCompressionResistancePriority:0 forAxis:v18];
    LODWORD(v19) = 1148829696;
    [(UILabel *)v3->_summaryLabel setContentCompressionResistancePriority:1 forAxis:v19];
    [(UILabel *)v3->_summaryLabel setAccessibilityIdentifier:@"RoutePlanningOptionsBarSummaryLabel"];
    [(RoutePlanningOptionsBar *)v3 addSubview:v3->_summaryLabel];
    v20 = objc_opt_new();
    batteryView = v3->_batteryView;
    v3->_batteryView = v20;

    [(BatteryIconView *)v3->_batteryView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(BatteryIconView *)v3->_batteryView setAccessibilityIdentifier:@"RoutePlanningOptionsBarBatteryView"];
    [(RoutePlanningOptionsBar *)v3 addSubview:v3->_batteryView];
    trailingAnchor = [(RoutePlanningOptionsBar *)v3 trailingAnchor];
    trailingAnchor2 = [(UILabel *)v3->_summaryLabel trailingAnchor];
    v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    summaryToTrailingConstraint = v3->_summaryToTrailingConstraint;
    v3->_summaryToTrailingConstraint = v24;

    trailingAnchor3 = [(UILabel *)v3->_summaryLabel trailingAnchor];
    leadingAnchor = [(BatteryIconView *)v3->_batteryView leadingAnchor];
    v28 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor constant:-4.0];
    summaryToBatteryConstraint = v3->_summaryToBatteryConstraint;
    v3->_summaryToBatteryConstraint = v28;

    trailingAnchor4 = [(BatteryIconView *)v3->_batteryView trailingAnchor];
    trailingAnchor5 = [(RoutePlanningOptionsBar *)v3 trailingAnchor];
    v32 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    batteryToTrailingConstraint = v3->_batteryToTrailingConstraint;
    v3->_batteryToTrailingConstraint = v32;

    leadingAnchor2 = [(UIButton *)v3->_button leadingAnchor];
    leadingAnchor3 = [(RoutePlanningOptionsBar *)v3 leadingAnchor];
    v54 = [leadingAnchor2 constraintEqualToAnchor:leadingAnchor3];
    v59[0] = v54;
    leadingAnchor4 = [(UILabel *)v3->_summaryLabel leadingAnchor];
    trailingAnchor6 = [(UIButton *)v3->_button trailingAnchor];
    v51 = [leadingAnchor4 constraintGreaterThanOrEqualToAnchor:trailingAnchor6 constant:8.0];
    v59[1] = v51;
    v59[2] = v3->_summaryToTrailingConstraint;
    topAnchor = [(UIButton *)v3->_button topAnchor];
    topAnchor2 = [(RoutePlanningOptionsBar *)v3 topAnchor];
    v48 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v59[3] = v48;
    topAnchor3 = [(UILabel *)v3->_summaryLabel topAnchor];
    topAnchor4 = [(RoutePlanningOptionsBar *)v3 topAnchor];
    v45 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v59[4] = v45;
    bottomAnchor = [(RoutePlanningOptionsBar *)v3 bottomAnchor];
    bottomAnchor2 = [(UIButton *)v3->_button bottomAnchor];
    v34 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v59[5] = v34;
    bottomAnchor3 = [(RoutePlanningOptionsBar *)v3 bottomAnchor];
    bottomAnchor4 = [(UILabel *)v3->_summaryLabel bottomAnchor];
    v37 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v59[6] = v37;
    centerYAnchor = [(BatteryIconView *)v3->_batteryView centerYAnchor];
    centerYAnchor2 = [(UILabel *)v3->_summaryLabel centerYAnchor];
    v40 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v59[7] = v40;
    v43 = [NSArray arrayWithObjects:v59 count:8];

    [NSLayoutConstraint activateConstraints:v43];
    [(UIButton *)v3->_button setHidden:1];
    [(UILabel *)v3->_summaryLabel setHidden:1];
  }

  return v3;
}

@end