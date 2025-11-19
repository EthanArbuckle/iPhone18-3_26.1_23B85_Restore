@interface RoutePlanningOptionsBar
- (RoutePlanningOptionsBar)initWithFrame:(CGRect)a3;
- (void)_buttonTapped;
- (void)_updateContent;
- (void)setButtonTitle:(id)a3 actionHandler:(id)a4;
- (void)setSummaryText:(id)a3;
- (void)setVehicle:(id)a3;
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
  v3 = [(RoutePlanningOptionsBar *)self vehicle];

  if (v3)
  {
    v4 = [(RoutePlanningOptionsBar *)self vehicle];
    v5 = [v4 isPureElectricVehicle];

    v6 = [(RoutePlanningOptionsBar *)self vehicle];
    v7 = v6;
    if (v5)
    {
      v18 = [v6 displayedBatteryPercentage];

      v8 = [(RoutePlanningOptionsBar *)self vehicle];
      v9 = [v8 combinedDisplayName];
      v10 = +[NSBundle mainBundle];
      v11 = [v10 localizedStringForKey:@"%lu%%" value:@"localized string not found" table:0];
      v12 = [NSString stringWithFormat:v11, v18];
      v13 = [NSString stringWithFormat:@"%@: %@", v9, v12];
      v14 = 16;
      [(UILabel *)self->_summaryLabel setText:v13];

      p_batteryView = &self->_batteryView;
      [(BatteryIconView *)self->_batteryView setLevel:v18];
    }

    else
    {
      v16 = [v6 combinedDisplayName];
      v14 = 16;
      [(UILabel *)self->_summaryLabel setText:v16];

      p_batteryView = &self->_batteryView;
    }

    [(BatteryIconView *)*p_batteryView setHidden:v5 ^ 1];
  }

  else
  {
    [(UILabel *)self->_summaryLabel setText:self->_summaryText];
    [(UILabel *)self->_summaryLabel setHidden:self->_summaryText == 0];
    v14 = 24;
  }

  v17 = *(&self->super.super.super.isa + v14);

  [v17 setHidden:v3 == 0];
}

- (void)setVehicle:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_vehicle, a3);
  v5 = [v6 isPureElectricVehicle];
  [(NSLayoutConstraint *)self->_summaryToTrailingConstraint setActive:v5 ^ 1];
  [(NSLayoutConstraint *)self->_summaryToBatteryConstraint setActive:v5];
  [(NSLayoutConstraint *)self->_batteryToTrailingConstraint setActive:v5];
  [(RoutePlanningOptionsBar *)self _updateContent];
}

- (void)setSummaryText:(id)a3
{
  v4 = [a3 copy];
  summaryText = self->_summaryText;
  self->_summaryText = v4;

  [(RoutePlanningOptionsBar *)self _updateContent];
}

- (void)setButtonTitle:(id)a3 actionHandler:(id)a4
{
  v6 = a3;
  v7 = [a4 copy];
  actionHandler = self->_actionHandler;
  self->_actionHandler = v7;

  [(UIButton *)self->_button setTitle:v6 forState:0];
  button = self->_button;

  [(UIButton *)button setHidden:v6 == 0];
}

- (RoutePlanningOptionsBar)initWithFrame:(CGRect)a3
{
  v58.receiver = self;
  v58.super_class = RoutePlanningOptionsBar;
  v3 = [(RoutePlanningOptionsBar *)&v58 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v9 = [(UIButton *)v3->_button titleLabel];
    [v9 setFont:v8];

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
    v22 = [(RoutePlanningOptionsBar *)v3 trailingAnchor];
    v23 = [(UILabel *)v3->_summaryLabel trailingAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    summaryToTrailingConstraint = v3->_summaryToTrailingConstraint;
    v3->_summaryToTrailingConstraint = v24;

    v26 = [(UILabel *)v3->_summaryLabel trailingAnchor];
    v27 = [(BatteryIconView *)v3->_batteryView leadingAnchor];
    v28 = [v26 constraintEqualToAnchor:v27 constant:-4.0];
    summaryToBatteryConstraint = v3->_summaryToBatteryConstraint;
    v3->_summaryToBatteryConstraint = v28;

    v30 = [(BatteryIconView *)v3->_batteryView trailingAnchor];
    v31 = [(RoutePlanningOptionsBar *)v3 trailingAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];
    batteryToTrailingConstraint = v3->_batteryToTrailingConstraint;
    v3->_batteryToTrailingConstraint = v32;

    v56 = [(UIButton *)v3->_button leadingAnchor];
    v55 = [(RoutePlanningOptionsBar *)v3 leadingAnchor];
    v54 = [v56 constraintEqualToAnchor:v55];
    v59[0] = v54;
    v53 = [(UILabel *)v3->_summaryLabel leadingAnchor];
    v52 = [(UIButton *)v3->_button trailingAnchor];
    v51 = [v53 constraintGreaterThanOrEqualToAnchor:v52 constant:8.0];
    v59[1] = v51;
    v59[2] = v3->_summaryToTrailingConstraint;
    v50 = [(UIButton *)v3->_button topAnchor];
    v49 = [(RoutePlanningOptionsBar *)v3 topAnchor];
    v48 = [v50 constraintEqualToAnchor:v49];
    v59[3] = v48;
    v47 = [(UILabel *)v3->_summaryLabel topAnchor];
    v46 = [(RoutePlanningOptionsBar *)v3 topAnchor];
    v45 = [v47 constraintEqualToAnchor:v46];
    v59[4] = v45;
    v44 = [(RoutePlanningOptionsBar *)v3 bottomAnchor];
    v42 = [(UIButton *)v3->_button bottomAnchor];
    v34 = [v44 constraintEqualToAnchor:v42];
    v59[5] = v34;
    v35 = [(RoutePlanningOptionsBar *)v3 bottomAnchor];
    v36 = [(UILabel *)v3->_summaryLabel bottomAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];
    v59[6] = v37;
    v38 = [(BatteryIconView *)v3->_batteryView centerYAnchor];
    v39 = [(UILabel *)v3->_summaryLabel centerYAnchor];
    v40 = [v38 constraintEqualToAnchor:v39];
    v59[7] = v40;
    v43 = [NSArray arrayWithObjects:v59 count:8];

    [NSLayoutConstraint activateConstraints:v43];
    [(UIButton *)v3->_button setHidden:1];
    [(UILabel *)v3->_summaryLabel setHidden:1];
  }

  return v3;
}

@end