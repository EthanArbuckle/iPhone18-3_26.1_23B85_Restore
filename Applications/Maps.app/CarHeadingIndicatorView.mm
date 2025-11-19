@interface CarHeadingIndicatorView
- (BOOL)_canStartLocationUpdates;
- (CGSize)intrinsicContentSize;
- (CarHeadingIndicatorView)initWithCarSceneType:(int64_t)a3;
- (void)_applyDynamicScaling;
- (void)_setActive:(BOOL)a3;
- (void)_setupConstraints;
- (void)_startLocationUpdates;
- (void)_stopLocationUpdates;
- (void)_updateContents;
- (void)_updateDisplayedHeadingWithHeading:(double)a3;
- (void)_updateStyling;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)locationManager:(id)a3 didUpdateVehicleHeading:(double)a4 timestamp:(id)a5;
- (void)locationManagerUpdatedLocation:(id)a3;
- (void)setActive:(BOOL)a3;
- (void)setCompassPoint:(int)a3;
@end

@implementation CarHeadingIndicatorView

- (void)locationManager:(id)a3 didUpdateVehicleHeading:(double)a4 timestamp:(id)a5
{
  [a3 vehicleHeadingOrCourse];

  [(CarHeadingIndicatorView *)self _updateDisplayedHeadingWithHeading:?];
}

- (void)locationManagerUpdatedLocation:(id)a3
{
  [a3 vehicleHeadingOrCourse];

  [(CarHeadingIndicatorView *)self _updateDisplayedHeadingWithHeading:?];
}

- (void)setCompassPoint:(int)a3
{
  if (self->_compassPoint != a3)
  {
    self->_compassPoint = a3;
    [(CarHeadingIndicatorView *)self _updateContents];
  }
}

- (void)_updateDisplayedHeadingWithHeading:(double)a3
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
  v3 = [(CarHeadingIndicatorView *)self window];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = [(CarHeadingIndicatorView *)self isActive];
  }

  return v4;
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
  v3 = [(CarHeadingIndicatorView *)self contentsHidden];
  compassPoint = self->_compassPoint;
  v5 = MKLocalizedAbbreviationForCompassPoint();
  [(UILabel *)self->_headingLabel setText:v5];

  [(CarHeadingIndicatorView *)self setContentsHidden:compassPoint == 0];
  if (v3 != [(CarHeadingIndicatorView *)self contentsHidden])
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
  v3 = [(CarHeadingIndicatorView *)self widthAnchor];
  if (self->_sceneType == 6)
  {
    [(CarHeadingIndicatorView *)self _car_dynamicPointScaleValue];
    v5 = v4 * 34.0;
  }

  else
  {
    v5 = 34.0;
  }

  v6 = [v3 constraintEqualToConstant:v5];
  widthConstraint = self->_widthConstraint;
  self->_widthConstraint = v6;

  v8 = [(CarFocusableBlurControl *)self contentView];
  v25 = [(UILabel *)self->_headingLabel widthAnchor];
  v24 = [v8 widthAnchor];
  v23 = [v25 constraintLessThanOrEqualToAnchor:v24];
  v26[0] = v23;
  v22 = [(UILabel *)self->_headingLabel heightAnchor];
  v21 = [v8 heightAnchor];
  v20 = [v22 constraintLessThanOrEqualToAnchor:v21];
  v26[1] = v20;
  v19 = [(UILabel *)self->_headingLabel centerXAnchor];
  v9 = [v8 centerXAnchor];
  v10 = [v19 constraintEqualToAnchor:v9];
  v26[2] = v10;
  v11 = [(UILabel *)self->_headingLabel centerYAnchor];
  v12 = [v8 centerYAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v14 = self->_widthConstraint;
  v26[3] = v13;
  v26[4] = v14;
  v15 = [(CarHeadingIndicatorView *)self heightAnchor];
  v16 = [(CarHeadingIndicatorView *)self widthAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];
  v26[5] = v17;
  v18 = [NSArray arrayWithObjects:v26 count:6];

  [NSLayoutConstraint activateConstraints:v18];
}

- (void)_setActive:(BOOL)a3
{
  self->_active = a3;
  if (a3 || ([(CarHeadingIndicatorView *)self window], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {

    [(CarHeadingIndicatorView *)self _startLocationUpdates];
  }

  else
  {

    [(CarHeadingIndicatorView *)self _stopLocationUpdates];
  }
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    [(CarHeadingIndicatorView *)self _setActive:?];
  }
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = CarHeadingIndicatorView;
  [(CarFocusableBlurControl *)&v4 didMoveToWindow];
  v3 = [(CarHeadingIndicatorView *)self window];

  if (v3)
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

- (CarHeadingIndicatorView)initWithCarSceneType:(int64_t)a3
{
  v17.receiver = self;
  v17.super_class = CarHeadingIndicatorView;
  v4 = [(CarFocusableBlurControl *)&v17 initWithFrame:0.0, 0.0, 34.0, 34.0];
  v5 = v4;
  if (v4)
  {
    v4->_sceneType = a3;
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

    v15 = [(CarFocusableBlurControl *)v5 contentView];
    [v15 addSubview:v5->_headingLabel];

    [(CarHeadingIndicatorView *)v5 _setupConstraints];
    [(CarHeadingIndicatorView *)v5 _updateStyling];
    [(CarHeadingIndicatorView *)v5 _updateContents];
  }

  return v5;
}

@end