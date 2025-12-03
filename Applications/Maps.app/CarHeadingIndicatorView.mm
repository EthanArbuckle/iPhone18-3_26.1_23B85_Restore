@interface CarHeadingIndicatorView
- (BOOL)_canStartLocationUpdates;
- (CGSize)intrinsicContentSize;
- (CarHeadingIndicatorView)initWithCarSceneType:(int64_t)type;
- (void)_applyDynamicScaling;
- (void)_setActive:(BOOL)active;
- (void)_setupConstraints;
- (void)_startLocationUpdates;
- (void)_stopLocationUpdates;
- (void)_updateContents;
- (void)_updateDisplayedHeadingWithHeading:(double)heading;
- (void)_updateStyling;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)locationManager:(id)manager didUpdateVehicleHeading:(double)heading timestamp:(id)timestamp;
- (void)locationManagerUpdatedLocation:(id)location;
- (void)setActive:(BOOL)active;
- (void)setCompassPoint:(int)point;
@end

@implementation CarHeadingIndicatorView

- (void)locationManager:(id)manager didUpdateVehicleHeading:(double)heading timestamp:(id)timestamp
{
  [manager vehicleHeadingOrCourse];

  [(CarHeadingIndicatorView *)self _updateDisplayedHeadingWithHeading:?];
}

- (void)locationManagerUpdatedLocation:(id)location
{
  [location vehicleHeadingOrCourse];

  [(CarHeadingIndicatorView *)self _updateDisplayedHeadingWithHeading:?];
}

- (void)setCompassPoint:(int)point
{
  if (self->_compassPoint != point)
  {
    self->_compassPoint = point;
    [(CarHeadingIndicatorView *)self _updateContents];
  }
}

- (void)_updateDisplayedHeadingWithHeading:(double)heading
{
  v4 = MKCompassPointFromLocationDirection();

  [(CarHeadingIndicatorView *)self setCompassPoint:v4];
}

- (CGSize)intrinsicContentSize
{
  if (self->_sceneType == 6)
  {
    [(CarHeadingIndicatorView *)self _car_dynamicPointScaleValue];
    v3 = 34.0;
    v5 = v4 * 34.0;
    if (self->_sceneType == 6)
    {
      [(CarHeadingIndicatorView *)self _car_dynamicPointScaleValue];
      v3 = v6 * 34.0;
    }
  }

  else
  {
    v5 = 34.0;
    v3 = 34.0;
  }

  v7 = v5;
  result.height = v3;
  result.width = v7;
  return result;
}

- (BOOL)_canStartLocationUpdates
{
  window = [(CarHeadingIndicatorView *)self window];
  if (window)
  {
    isActive = 1;
  }

  else
  {
    isActive = [(CarHeadingIndicatorView *)self isActive];
  }

  return isActive;
}

- (void)_stopLocationUpdates
{
  if (self->_monitoringCourse)
  {
    [(MKLocationManager *)self->_locationManager stopLocationUpdateWithObserver:self];
    [(MKLocationManager *)self->_locationManager stopVehicleHeadingUpdate];
    self->_monitoringCourse = 0;
  }
}

- (void)_startLocationUpdates
{
  if (!self->_monitoringCourse && [(MKLocationManager *)self->_locationManager isLocationServicesApproved]&& [(CarHeadingIndicatorView *)self _canStartLocationUpdates])
  {
    self->_monitoringCourse = 1;
    [(MKLocationManager *)self->_locationManager startLocationUpdateWithObserver:self];
    locationManager = self->_locationManager;

    [(MKLocationManager *)locationManager startVehicleHeadingUpdate];
  }
}

- (void)_applyDynamicScaling
{
  if (self->_sceneType == 6)
  {
    [(CarHeadingIndicatorView *)self _car_dynamicPointScaleValue];
    v4 = v3 * 34.0;
  }

  else
  {
    v4 = 34.0;
  }

  widthConstraint = self->_widthConstraint;

  [(NSLayoutConstraint *)widthConstraint setConstant:v4];
}

- (void)_updateContents
{
  contentsHidden = [(CarHeadingIndicatorView *)self contentsHidden];
  compassPoint = self->_compassPoint;
  v5 = MKLocalizedAbbreviationForCompassPoint();
  [(UILabel *)self->_headingLabel setText:v5];

  [(CarHeadingIndicatorView *)self setContentsHidden:compassPoint == 0];
  if (contentsHidden != [(CarHeadingIndicatorView *)self contentsHidden])
  {
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 postNotificationName:@"CarHeadingIndicatorViewDidChangeVisibility" object:self];
  }
}

- (void)_updateStyling
{
  v3 = [UIFont _maps_navHeadingFontWithPreferredSize:15.0 diameter:34.0 desiredPadding:4.0];
  v4 = 1.0;
  if (self->_sceneType == 6)
  {
    [(CarHeadingIndicatorView *)self _car_dynamicPointScaleValue];
  }

  v5 = [v3 _maps_scaledFontForScaleFactor:v4];
  [(UILabel *)self->_headingLabel setFont:v5];

  [(UILabel *)self->_headingLabel setTextAlignment:1];
  [(UILabel *)self->_headingLabel setAdjustsFontSizeToFitWidth:1];
  v6 = +[UIColor labelColor];
  [(UILabel *)self->_headingLabel setTextColor:v6];

  [(UILabel *)self->_headingLabel setMinimumScaleFactor:0.550000012];
  [(UILabel *)self->_headingLabel setBaselineAdjustment:1];
  [(UILabel *)self->_headingLabel setLineBreakMode:2];
  if (self->_sceneType == 6)
  {
    [(CarHeadingIndicatorView *)self _car_dynamicPointScaleValue];
  }

  UIRoundToViewScale();

  [(CarFocusableBlurControl *)self setRoundedCornerRadius:?];
}

- (void)_setupConstraints
{
  widthAnchor = [(CarHeadingIndicatorView *)self widthAnchor];
  if (self->_sceneType == 6)
  {
    [(CarHeadingIndicatorView *)self _car_dynamicPointScaleValue];
    v5 = v4 * 34.0;
  }

  else
  {
    v5 = 34.0;
  }

  v6 = [widthAnchor constraintEqualToConstant:v5];
  widthConstraint = self->_widthConstraint;
  self->_widthConstraint = v6;

  contentView = [(CarFocusableBlurControl *)self contentView];
  widthAnchor2 = [(UILabel *)self->_headingLabel widthAnchor];
  widthAnchor3 = [contentView widthAnchor];
  v23 = [widthAnchor2 constraintLessThanOrEqualToAnchor:widthAnchor3];
  v26[0] = v23;
  heightAnchor = [(UILabel *)self->_headingLabel heightAnchor];
  heightAnchor2 = [contentView heightAnchor];
  v20 = [heightAnchor constraintLessThanOrEqualToAnchor:heightAnchor2];
  v26[1] = v20;
  centerXAnchor = [(UILabel *)self->_headingLabel centerXAnchor];
  centerXAnchor2 = [contentView centerXAnchor];
  v10 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v26[2] = v10;
  centerYAnchor = [(UILabel *)self->_headingLabel centerYAnchor];
  centerYAnchor2 = [contentView centerYAnchor];
  v13 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v14 = self->_widthConstraint;
  v26[3] = v13;
  v26[4] = v14;
  heightAnchor3 = [(CarHeadingIndicatorView *)self heightAnchor];
  widthAnchor4 = [(CarHeadingIndicatorView *)self widthAnchor];
  v17 = [heightAnchor3 constraintEqualToAnchor:widthAnchor4];
  v26[5] = v17;
  v18 = [NSArray arrayWithObjects:v26 count:6];

  [NSLayoutConstraint activateConstraints:v18];
}

- (void)_setActive:(BOOL)active
{
  self->_active = active;
  if (active || ([(CarHeadingIndicatorView *)self window], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {

    [(CarHeadingIndicatorView *)self _startLocationUpdates];
  }

  else
  {

    [(CarHeadingIndicatorView *)self _stopLocationUpdates];
  }
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    [(CarHeadingIndicatorView *)self _setActive:?];
  }
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = CarHeadingIndicatorView;
  [(CarFocusableBlurControl *)&v4 didMoveToWindow];
  window = [(CarHeadingIndicatorView *)self window];

  if (window)
  {
    [(CarHeadingIndicatorView *)self _updateStyling];
    [(CarHeadingIndicatorView *)self _applyDynamicScaling];
  }

  [(CarHeadingIndicatorView *)self _setActive:self->_active];
}

- (void)dealloc
{
  [(CarHeadingIndicatorView *)self _stopLocationUpdates];
  v3.receiver = self;
  v3.super_class = CarHeadingIndicatorView;
  [(CarHeadingIndicatorView *)&v3 dealloc];
}

- (CarHeadingIndicatorView)initWithCarSceneType:(int64_t)type
{
  v17.receiver = self;
  v17.super_class = CarHeadingIndicatorView;
  v4 = [(CarFocusableBlurControl *)&v17 initWithFrame:0.0, 0.0, 34.0, 34.0];
  v5 = v4;
  if (v4)
  {
    v4->_sceneType = type;
    [(CarHeadingIndicatorView *)v4 setAccessibilityIdentifier:@"CarHeadingIndicatorView"];
    UIRoundToViewScale();
    [(CarFocusableBlurControl *)v5 setRoundedCornerRadius:?];
    v6 = +[MKLocationManager sharedLocationManager];
    locationManager = v5->_locationManager;
    v5->_locationManager = v6;

    [(MKLocationManager *)v5->_locationManager vehicleHeadingOrCourse];
    v5->_compassPoint = MKCompassPointFromLocationDirection();
    v8 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    headingLabel = v5->_headingLabel;
    v5->_headingLabel = v8;

    [(UILabel *)v5->_headingLabel setAccessibilityIdentifier:@"HeadingLabel"];
    [(UILabel *)v5->_headingLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v5->_headingLabel setTextAlignment:1];
    LODWORD(v10) = 1148846080;
    [(UILabel *)v5->_headingLabel setContentHuggingPriority:1 forAxis:v10];
    LODWORD(v11) = 1144750080;
    [(UILabel *)v5->_headingLabel setContentHuggingPriority:0 forAxis:v11];
    LODWORD(v12) = 1148829696;
    [(UILabel *)v5->_headingLabel setContentCompressionResistancePriority:0 forAxis:v12];
    LODWORD(v13) = 1148829696;
    [(UILabel *)v5->_headingLabel setContentCompressionResistancePriority:1 forAxis:v13];
    v14 = +[UIColor _carSystemPrimaryColor];
    [(UILabel *)v5->_headingLabel setTextColor:v14];

    contentView = [(CarFocusableBlurControl *)v5 contentView];
    [contentView addSubview:v5->_headingLabel];

    [(CarHeadingIndicatorView *)v5 _setupConstraints];
    [(CarHeadingIndicatorView *)v5 _updateStyling];
    [(CarHeadingIndicatorView *)v5 _updateContents];
  }

  return v5;
}

@end