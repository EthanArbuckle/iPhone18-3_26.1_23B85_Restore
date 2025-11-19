@interface BatteryStateAgeView
- (BatteryStateAgeView)initWithConfiguration:(int64_t)a3;
- (void)_setupConstraints;
- (void)_setupStyling;
- (void)_updateContents;
- (void)setDateOfLastSync:(id)a3;
- (void)setShouldShowSeparator:(BOOL)a3;
- (void)startAnimating;
- (void)stopAnimating;
@end

@implementation BatteryStateAgeView

- (void)stopAnimating
{
  [(UIActivityIndicatorView *)self->_activityIndicator setAlpha:0.0];
  [(UILabel *)self->_stateUpdatedLabel setAlpha:1.0];
  activityIndicator = self->_activityIndicator;

  [(UIActivityIndicatorView *)activityIndicator stopAnimating];
}

- (void)startAnimating
{
  [(UIActivityIndicatorView *)self->_activityIndicator setAlpha:1.0];
  [(UILabel *)self->_stateUpdatedLabel setAlpha:0.0];
  activityIndicator = self->_activityIndicator;

  [(UIActivityIndicatorView *)activityIndicator startAnimating];
}

- (void)setShouldShowSeparator:(BOOL)a3
{
  if (self->_shouldShowSeparator != a3)
  {
    self->_shouldShowSeparator = a3;
    [(BatteryStateAgeView *)self _updateContents];
  }
}

- (void)setDateOfLastSync:(id)a3
{
  v5 = a3;
  if (self->_dateOfLastSync != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_dateOfLastSync, a3);
    [(BatteryStateAgeView *)self _updateContents];
    v5 = v6;
  }
}

- (void)_updateContents
{
  [(NSDate *)self->_dateOfLastSync timeIntervalSinceNow];
  v4 = v3;
  GEOConfigGetDouble();
  v6 = v5;
  BOOL = GEOConfigGetBOOL();
  configuration = self->_configuration;
  v9 = configuration == 1 || v4 <= -v6;
  if (v9 || (BOOL & 1) != 0)
  {
    if (configuration)
    {
      dateOfLastSync = self->_dateOfLastSync;
      v12 = +[NSDate date];
      v13 = dateOfLastSync;
      [(NSDate *)v13 timeIntervalSinceDate:v12];
      v15 = v14;
      [(NSDate *)v13 timeIntervalSinceDate:v12];
      if (v15 >= 0.0)
      {
        v17 = v16;
      }

      else
      {
        v17 = -v16;
      }

      if (v17 >= 60.0)
      {
        if (v17 >= 3600.0)
        {
          v19 = +[NSBundle mainBundle];
          v20 = v19;
          if (v17 >= 86400.0)
          {
            v18 = vcvtmd_u64_f64(v17 * 0.0000115740741);
            v21 = @"VehicleBattery_Date_relative_time_days_ago";
          }

          else
          {
            v18 = vcvtmd_u64_f64(v17 * 0.000277777778);
            v21 = @"VehicleBattery_Date_relative_time_hours_ago";
          }
        }

        else
        {
          v18 = vcvtmd_u64_f64(v17 * 0.0166666667);
          v19 = +[NSBundle mainBundle];
          v20 = v19;
          v21 = @"VehicleBattery_Date_relative_time_minutes_ago";
        }
      }

      else
      {
        v18 = vcvtmd_u64_f64(v17);
        v19 = +[NSBundle mainBundle];
        v20 = v19;
        v21 = @"VehicleBattery_Date_relative_time_seconds_ago";
      }

      v25 = [v19 localizedStringForKey:v21 value:@"localized string not found" table:0];

      v31 = 0;
      v24 = [NSString localizedStringWithValidatedFormat:v25 validFormatSpecifiers:@"%d" error:&v31, v18];
      v26 = v31;
    }

    else
    {
      v22 = self->_dateOfLastSync;
      v23 = +[NSDate date];
      v24 = [NSDateComponentsFormatter _mapkit_descriptionForTimeSinceDate:v22 referenceDate:v23 smallestUnit:128];
    }

    v27 = [(BatteryStateAgeView *)self effectiveUserInterfaceLayoutDirection];
    if ([(BatteryStateAgeView *)self shouldShowSeparator])
    {
      v28 = +[NSBundle mainBundle];
      v29 = [v28 localizedStringForKey:@" · [List view details separator]" value:@"localized string not found" table:0];
    }

    else
    {
      v29 = &stru_1016631F0;
    }

    if (v27 == 1)
    {
      [NSString stringWithFormat:@"%@%@", v24, v29];
    }

    else
    {
      [NSString stringWithFormat:@"%@%@", v29, v24];
    }
    v30 = ;
    [(UILabel *)self->_stateUpdatedLabel setText:v30];
  }

  else
  {
    stateUpdatedLabel = self->_stateUpdatedLabel;

    [(UILabel *)stateUpdatedLabel setText:&stru_1016631F0];
  }
}

- (void)_setupStyling
{
  v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)self->_stateUpdatedLabel setFont:v3];

  v4 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_stateUpdatedLabel setTextColor:v4];

  stateUpdatedLabel = self->_stateUpdatedLabel;

  [(UILabel *)stateUpdatedLabel setNumberOfLines:2];
}

- (void)_setupConstraints
{
  v34 = +[NSMutableArray array];
  v33 = [(UILabel *)self->_stateUpdatedLabel topAnchor];
  v32 = [(BatteryStateAgeView *)self topAnchor];
  v31 = [v33 constraintGreaterThanOrEqualToAnchor:v32];
  v35[0] = v31;
  v30 = [(UILabel *)self->_stateUpdatedLabel leadingAnchor];
  v29 = [(BatteryStateAgeView *)self leadingAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v35[1] = v28;
  v27 = [(UILabel *)self->_stateUpdatedLabel centerYAnchor];
  v26 = [(BatteryStateAgeView *)self centerYAnchor];
  v25 = [v27 constraintEqualToAnchor:v26];
  v35[2] = v25;
  v24 = [(BatteryStateAgeView *)self trailingAnchor];
  v23 = [(UILabel *)self->_stateUpdatedLabel trailingAnchor];
  v22 = [v24 constraintEqualToAnchor:v23];
  v35[3] = v22;
  v21 = [(BatteryStateAgeView *)self bottomAnchor];
  v20 = [(UILabel *)self->_stateUpdatedLabel bottomAnchor];
  v19 = [v21 constraintGreaterThanOrEqualToAnchor:v20];
  v35[4] = v19;
  v18 = [(UIActivityIndicatorView *)self->_activityIndicator topAnchor];
  v17 = [(BatteryStateAgeView *)self topAnchor];
  v16 = [v18 constraintGreaterThanOrEqualToAnchor:v17];
  v35[5] = v16;
  v15 = [(UIActivityIndicatorView *)self->_activityIndicator leadingAnchor];
  v14 = [(BatteryStateAgeView *)self leadingAnchor];
  v13 = [v15 constraintEqualToAnchor:v14 constant:8.0];
  v35[6] = v13;
  v3 = [(UIActivityIndicatorView *)self->_activityIndicator centerYAnchor];
  v4 = [(BatteryStateAgeView *)self centerYAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];
  v35[7] = v5;
  v6 = [(BatteryStateAgeView *)self trailingAnchor];
  v7 = [(UIActivityIndicatorView *)self->_activityIndicator trailingAnchor];
  v8 = [v6 constraintGreaterThanOrEqualToAnchor:v7];
  v35[8] = v8;
  v9 = [(BatteryStateAgeView *)self bottomAnchor];
  v10 = [(UIActivityIndicatorView *)self->_activityIndicator bottomAnchor];
  v11 = [v9 constraintGreaterThanOrEqualToAnchor:v10];
  v35[9] = v11;
  v12 = [NSArray arrayWithObjects:v35 count:10];
  [v34 addObjectsFromArray:v12];

  [NSLayoutConstraint activateConstraints:v34];
}

- (BatteryStateAgeView)initWithConfiguration:(int64_t)a3
{
  v17.receiver = self;
  v17.super_class = BatteryStateAgeView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [(BatteryStateAgeView *)&v17 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (v7)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [(BatteryStateAgeView *)v7 setAccessibilityIdentifier:v9];

    v7->_configuration = a3;
    v10 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    stateUpdatedLabel = v7->_stateUpdatedLabel;
    v7->_stateUpdatedLabel = v10;

    [(UILabel *)v7->_stateUpdatedLabel setAccessibilityIdentifier:@"StateUpdatedLabel"];
    [(UILabel *)v7->_stateUpdatedLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v7->_stateUpdatedLabel setAdjustsFontForContentSizeCategory:1];
    LODWORD(v12) = 1148846080;
    [(UILabel *)v7->_stateUpdatedLabel setContentCompressionResistancePriority:1 forAxis:v12];
    [(BatteryStateAgeView *)v7 addSubview:v7->_stateUpdatedLabel];
    v13 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    activityIndicator = v7->_activityIndicator;
    v7->_activityIndicator = v13;

    [(UIActivityIndicatorView *)v7->_activityIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIActivityIndicatorView *)v7->_activityIndicator setAccessibilityIdentifier:@"BatteryStateActivityIndicator"];
    LODWORD(v15) = 1148846080;
    [(UIActivityIndicatorView *)v7->_activityIndicator setContentCompressionResistancePriority:1 forAxis:v15];
    [(BatteryStateAgeView *)v7 addSubview:v7->_activityIndicator];
    [(BatteryStateAgeView *)v7 _setupConstraints];
    [(BatteryStateAgeView *)v7 _setupStyling];
  }

  return v7;
}

@end