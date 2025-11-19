@interface RoutePlanningWaypointPillView
- (RoutePlanningWaypointPillView)initWithWaypointIndex:(unint64_t)a3 waypointInfoProvider:(id)a4;
- (id)_attributedBatteryChargeStringForBatteryPercentage:(unsigned int)a3;
- (id)_attributedTitleTextForWaypointAtIndex:(unint64_t)a3 withInfoProvider:(id)a4;
- (void)layoutSubviews;
- (void)setBoundsHeight:(double)a3;
@end

@implementation RoutePlanningWaypointPillView

- (id)_attributedBatteryChargeStringForBatteryPercentage:(unsigned int)a3
{
  v4 = [(UILabel *)self->_textLabel font];
  v5 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleCaption1 scale:1];
  v6 = [UIImage systemImageNamed:@"bolt.fill"];
  v7 = [v6 imageWithConfiguration:v5];
  v8 = [v7 imageWithRenderingMode:2];

  v9 = a3;
  v10 = [VehicleBatteryView colorForBatteryLevel:a3];
  v11 = [v8 _flatImageWithColor:v10];
  v12 = [v11 imageWithRenderingMode:1];

  v13 = objc_opt_new();
  [v13 setImage:v12];
  [v4 capHeight];
  v15 = v14;
  [v12 size];
  v17 = (v15 - v16) * 0.5;
  [v12 size];
  v19 = v18;
  [v12 size];
  [v13 setBounds:{0.0, v17, v19, v20}];
  v21 = [NSAttributedString attributedStringWithAttachment:v13];
  v22 = [NSString stringWithFormat:@" %lu%%", v9];
  v23 = [[NSMutableAttributedString alloc] initWithAttributedString:v21];
  v24 = [[NSAttributedString alloc] initWithString:v22];
  [v23 appendAttributedString:v24];

  v25 = [v23 copy];

  return v25;
}

- (id)_attributedTitleTextForWaypointAtIndex:(unint64_t)a3 withInfoProvider:(id)a4
{
  v6 = a4;
  v7 = [v6 chargingInfoForWaypointAtIndex:a3];
  v8 = v7;
  if (v7)
  {
    [v7 chargingTime];
    v10 = [NSString _navigation_stringWithSeconds:v9 andAbbreviationType:1];
    v11 = [[NSAttributedString alloc] initWithString:v10];
LABEL_5:
    v13 = v11;
    goto LABEL_6;
  }

  v12 = [v6 evStepInfoForWaypointAtIndex:a3];
  v10 = v12;
  if (v12)
  {
    v11 = -[RoutePlanningWaypointPillView _attributedBatteryChargeStringForBatteryPercentage:](self, "_attributedBatteryChargeStringForBatteryPercentage:", [v12 remainingBatteryPercentage]);
    goto LABEL_5;
  }

  v15 = sub_10006D178();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v19 = 136315650;
    v20 = "[RoutePlanningWaypointPillView _attributedTitleTextForWaypointAtIndex:withInfoProvider:]";
    v21 = 2080;
    v22 = "RoutePlanningWaypointPillView.m";
    v23 = 1024;
    v24 = 95;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v19, 0x1Cu);
  }

  if (sub_100E03634())
  {
    v16 = sub_10006D178();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = +[NSThread callStackSymbols];
      v19 = 138412290;
      v20 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%@", &v19, 0xCu);
    }
  }

  v18 = sub_100798A3C();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = 134217984;
    v20 = a3;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Didn't get evInfo for waypoint at index: %lu", &v19, 0xCu);
  }

  v13 = 0;
LABEL_6:

  return v13;
}

- (void)setBoundsHeight:(double)a3
{
  if (vabdd_f64(a3, self->_boundsHeight) > 2.22044605e-16)
  {
    self->_boundsHeight = a3;
    [(RoutePlanningWaypointPillView *)self _setContinuousCornerRadius:a3 * 0.5];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = RoutePlanningWaypointPillView;
  [(RoutePlanningWaypointPillView *)&v3 layoutSubviews];
  [(RoutePlanningWaypointPillView *)self bounds];
  [(RoutePlanningWaypointPillView *)self setBoundsHeight:CGRectGetHeight(v4)];
}

- (RoutePlanningWaypointPillView)initWithWaypointIndex:(unint64_t)a3 waypointInfoProvider:(id)a4
{
  v6 = a4;
  v34.receiver = self;
  v34.super_class = RoutePlanningWaypointPillView;
  v7 = [(RoutePlanningWaypointPillView *)&v34 init];
  if (v7)
  {
    v8 = +[UIColor quaternarySystemFillColor];
    [(RoutePlanningWaypointPillView *)v7 setBackgroundColor:v8];

    v9 = objc_opt_new();
    textLabel = v7->_textLabel;
    v7->_textLabel = v9;

    [(UILabel *)v7->_textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v11) = 1148846080;
    [(UILabel *)v7->_textLabel setContentCompressionResistancePriority:0 forAxis:v11];
    LODWORD(v12) = 1148846080;
    [(UILabel *)v7->_textLabel setContentCompressionResistancePriority:1 forAxis:v12];
    v13 = [UIColor colorWithDynamicProvider:&stru_101651CA8];
    [(UILabel *)v7->_textLabel setTextColor:v13];

    v14 = [UIFont _mapkit_preferredFontForTextStyleInTableViewCell:UIFontTextStyleCaption1 weight:UIFontWeightBold];
    [(UILabel *)v7->_textLabel setFont:v14];

    [(RoutePlanningWaypointPillView *)v7 addSubview:v7->_textLabel];
    v15 = [(RoutePlanningWaypointPillView *)v7 _attributedTitleTextForWaypointAtIndex:a3 withInfoProvider:v6];
    [(UILabel *)v7->_textLabel setAttributedText:v15];

    v32 = [(UILabel *)v7->_textLabel leadingAnchor];
    v31 = [(RoutePlanningWaypointPillView *)v7 leadingAnchor];
    v30 = [v32 constraintEqualToAnchor:v31 constant:8.0];
    v35[0] = v30;
    v29 = [(UILabel *)v7->_textLabel trailingAnchor];
    v28 = [(RoutePlanningWaypointPillView *)v7 trailingAnchor];
    v27 = [v29 constraintEqualToAnchor:v28 constant:-8.0];
    v35[1] = v27;
    v26 = [(UILabel *)v7->_textLabel topAnchor];
    v16 = [(RoutePlanningWaypointPillView *)v7 topAnchor];
    v17 = [v26 constraintEqualToAnchor:v16 constant:5.5];
    v35[2] = v17;
    v18 = [(UILabel *)v7->_textLabel centerYAnchor];
    v19 = [(RoutePlanningWaypointPillView *)v7 centerYAnchor];
    [v18 constraintEqualToAnchor:v19];
    v20 = v33 = v6;
    v35[3] = v20;
    v21 = [(UILabel *)v7->_textLabel bottomAnchor];
    v22 = [(RoutePlanningWaypointPillView *)v7 bottomAnchor];
    v23 = [v21 constraintEqualToAnchor:v22 constant:-5.5];
    v35[4] = v23;
    v24 = [NSArray arrayWithObjects:v35 count:5];
    [NSLayoutConstraint activateConstraints:v24];

    v6 = v33;
  }

  return v7;
}

@end