@interface BatteryStateAgeView
- (BatteryStateAgeView)initWithConfiguration:(int64_t)configuration;
- (void)_setupConstraints;
- (void)_setupStyling;
- (void)_updateContents;
- (void)setDateOfLastSync:(id)sync;
- (void)setShouldShowSeparator:(BOOL)separator;
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

- (void)setShouldShowSeparator:(BOOL)separator
{
  if (self->_shouldShowSeparator != separator)
  {
    self->_shouldShowSeparator = separator;
    [(BatteryStateAgeView *)self _updateContents];
  }
}

- (void)setDateOfLastSync:(id)sync
{
  syncCopy = sync;
  if (self->_dateOfLastSync != syncCopy)
  {
    v6 = syncCopy;
    objc_storeStrong(&self->_dateOfLastSync, sync);
    [(BatteryStateAgeView *)self _updateContents];
    syncCopy = v6;
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

    effectiveUserInterfaceLayoutDirection = [(BatteryStateAgeView *)self effectiveUserInterfaceLayoutDirection];
    if ([(BatteryStateAgeView *)self shouldShowSeparator])
    {
      v28 = +[NSBundle mainBundle];
      v29 = [v28 localizedStringForKey:@" · [List view details separator]" value:@"localized string not found" table:0];
    }

    else
    {
      v29 = &stru_1016631F0;
    }

    if (effectiveUserInterfaceLayoutDirection == 1)
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
  topAnchor = [(UILabel *)self->_stateUpdatedLabel topAnchor];
  topAnchor2 = [(BatteryStateAgeView *)self topAnchor];
  v31 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  v35[0] = v31;
  leadingAnchor = [(UILabel *)self->_stateUpdatedLabel leadingAnchor];
  leadingAnchor2 = [(BatteryStateAgeView *)self leadingAnchor];
  v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v35[1] = v28;
  centerYAnchor = [(UILabel *)self->_stateUpdatedLabel centerYAnchor];
  centerYAnchor2 = [(BatteryStateAgeView *)self centerYAnchor];
  v25 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v35[2] = v25;
  trailingAnchor = [(BatteryStateAgeView *)self trailingAnchor];
  trailingAnchor2 = [(UILabel *)self->_stateUpdatedLabel trailingAnchor];
  v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v35[3] = v22;
  bottomAnchor = [(BatteryStateAgeView *)self bottomAnchor];
  bottomAnchor2 = [(UILabel *)self->_stateUpdatedLabel bottomAnchor];
  v19 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2];
  v35[4] = v19;
  topAnchor3 = [(UIActivityIndicatorView *)self->_activityIndicator topAnchor];
  topAnchor4 = [(BatteryStateAgeView *)self topAnchor];
  v16 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
  v35[5] = v16;
  leadingAnchor3 = [(UIActivityIndicatorView *)self->_activityIndicator leadingAnchor];
  leadingAnchor4 = [(BatteryStateAgeView *)self leadingAnchor];
  v13 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:8.0];
  v35[6] = v13;
  centerYAnchor3 = [(UIActivityIndicatorView *)self->_activityIndicator centerYAnchor];
  centerYAnchor4 = [(BatteryStateAgeView *)self centerYAnchor];
  v5 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v35[7] = v5;
  trailingAnchor3 = [(BatteryStateAgeView *)self trailingAnchor];
  trailingAnchor4 = [(UIActivityIndicatorView *)self->_activityIndicator trailingAnchor];
  v8 = [trailingAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor4];
  v35[8] = v8;
  bottomAnchor3 = [(BatteryStateAgeView *)self bottomAnchor];
  bottomAnchor4 = [(UIActivityIndicatorView *)self->_activityIndicator bottomAnchor];
  v11 = [bottomAnchor3 constraintGreaterThanOrEqualToAnchor:bottomAnchor4];
  v35[9] = v11;
  v12 = [NSArray arrayWithObjects:v35 count:10];
  [v34 addObjectsFromArray:v12];

  [NSLayoutConstraint activateConstraints:v34];
}

- (BatteryStateAgeView)initWithConfiguration:(int64_t)configuration
{
  v17.receiver = self;
  v17.super_class = BatteryStateAgeView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(BatteryStateAgeView *)&v17 initWithFrame:CGRectZero.origin.x, y, width, height];
  if (height)
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [(BatteryStateAgeView *)height setAccessibilityIdentifier:v9];

    height->_configuration = configuration;
    v10 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    stateUpdatedLabel = height->_stateUpdatedLabel;
    height->_stateUpdatedLabel = v10;

    [(UILabel *)height->_stateUpdatedLabel setAccessibilityIdentifier:@"StateUpdatedLabel"];
    [(UILabel *)height->_stateUpdatedLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)height->_stateUpdatedLabel setAdjustsFontForContentSizeCategory:1];
    LODWORD(v12) = 1148846080;
    [(UILabel *)height->_stateUpdatedLabel setContentCompressionResistancePriority:1 forAxis:v12];
    [(BatteryStateAgeView *)height addSubview:height->_stateUpdatedLabel];
    v13 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    activityIndicator = height->_activityIndicator;
    height->_activityIndicator = v13;

    [(UIActivityIndicatorView *)height->_activityIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIActivityIndicatorView *)height->_activityIndicator setAccessibilityIdentifier:@"BatteryStateActivityIndicator"];
    LODWORD(v15) = 1148846080;
    [(UIActivityIndicatorView *)height->_activityIndicator setContentCompressionResistancePriority:1 forAxis:v15];
    [(BatteryStateAgeView *)height addSubview:height->_activityIndicator];
    [(BatteryStateAgeView *)height _setupConstraints];
    [(BatteryStateAgeView *)height _setupStyling];
  }

  return height;
}

@end