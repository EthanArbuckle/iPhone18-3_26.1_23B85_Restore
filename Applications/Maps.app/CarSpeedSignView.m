@interface CarSpeedSignView
- (CarSpeedSignView)initWithCarSceneType:(int64_t)a3;
- (double)dynamicScale;
- (void)_activate;
- (void)_deactivate;
- (void)_setLocation:(id)a3;
- (void)_updateLocationSource;
- (void)dealloc;
- (void)locationManagerUpdatedLocation:(id)a3;
- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)refreshSpeedLimit;
- (void)setActive:(BOOL)a3;
- (void)setContentsHidden:(BOOL)a3;
- (void)setDimmed:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation CarSpeedSignView

- (void)_deactivate
{
  self->_active = 0;
  v3 = sub_100006E1C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Will deactivate speed sign view", v5, 2u);
  }

  v4 = +[MNNavigationService sharedService];
  [v4 unregisterObserver:self];

  [(SpeedLimitView *)self setSpeedLimit:0 shieldType:0];
  [(CarSpeedSignView *)self _updateLocationSource];
}

- (void)_updateLocationSource
{
  if (!self->_active || self->_isNavigating || (GEOConfigGetBOOL() & 1) == 0 && (sub_10008B2E8() & 1) == 0)
  {
    if (!self->_roadMatcher)
    {
      return;
    }

    v3 = sub_100006E1C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[SpeedSign] Stopping road matcher", buf, 2u);
    }

    roadMatcher = self->_roadMatcher;
    self->_roadMatcher = 0;

    v5 = +[MKLocationManager sharedLocationManager];
    [v5 stopListeningForLocationUpdates:self];
    goto LABEL_7;
  }

  if (!self->_roadMatcher)
  {
    v6 = sub_100006E1C();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[SpeedSign] Starting road mather", v9, 2u);
    }

    v7 = [[GEORoadMatcher alloc] initWithAuditToken:0];
    v8 = self->_roadMatcher;
    self->_roadMatcher = v7;

    GEOConfigGetDouble();
    [(GEORoadMatcher *)self->_roadMatcher setSearchRadius:?];
    v5 = +[MKLocationManager sharedLocationManager];
    [v5 listenForLocationUpdates:self];
LABEL_7:
  }
}

- (void)_activate
{
  self->_active = 1;
  v3 = sub_100006E1C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Will activate speed sign view", v5, 2u);
  }

  [(CarSpeedSignView *)self refreshSpeedLimit];
  v4 = +[MNNavigationService sharedService];
  [v4 registerObserver:self];

  [(CarSpeedSignView *)self _updateLocationSource];
}

- (void)locationManagerUpdatedLocation:(id)a3
{
  roadMatcher = self->_roadMatcher;
  v5 = a3;
  v6 = [v5 currentLocation];
  v7 = [(GEORoadMatcher *)roadMatcher matchLocation:v6 forTransportType:0];

  v8 = [MNLocation alloc];
  v9 = [v5 lastLocation];

  v10 = [v8 initWithRoadMatch:v7 rawLocation:v9 locationFixType:2];
  v11 = sub_100006E1C();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = [v10 locationUnreliable];
    v13 = @"NO";
    if (v12)
    {
      v13 = @"YES";
    }

    v14 = v13;
    v15 = 138478083;
    v16 = v10;
    v17 = 2112;
    v18 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "[SpeedSign] matched location: %{private}@ (unreliable: %@)", &v15, 0x16u);
  }

  [(CarSpeedSignView *)self _setLocation:v10];
}

- (void)_setLocation:(id)a3
{
  v4 = a3;
  v5 = [v4 speedLimit];
  v6 = [v4 speedLimitShieldType];

  [(SpeedLimitView *)self setSpeedLimit:v5 shieldType:v6];
  v7 = [(SpeedLimitView *)self hasContent]^ 1;

  [(CarSpeedSignView *)self setContentsHidden:v7];
}

- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  self->_isNavigating = MNNavigationServiceStateIsNavigating();
  [(CarSpeedSignView *)self _updateLocationSource];

  [(CarSpeedSignView *)self refreshSpeedLimit];
}

- (void)setDimmed:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_dimmed != a3)
  {
    v4 = a3;
    self->_dimmed = a3;
    if (a4)
    {
      v6 = !+[UIView _maps_shouldAdoptImplicitAnimationParameters];
    }

    else
    {
      v6 = 0;
    }

    v7 = sub_100006E1C();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (v4)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v9 = v8;
      if (v6)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      v11 = v10;
      *buf = 138412546;
      v16 = v9;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[SpeedSign] (dimmed: %@, animated: %@)", buf, 0x16u);
    }

    v12 = 0.0;
    v13[1] = 3221225472;
    v13[0] = _NSConcreteStackBlock;
    v13[2] = sub_100EE0C94;
    v13[3] = &unk_101661AE0;
    if (v6)
    {
      v12 = 0.25;
    }

    v13[4] = self;
    v14 = v4;
    [UIView animateWithDuration:v13 animations:v12];
  }
}

- (double)dynamicScale
{
  v3 = [(CarSpeedSignView *)self window];
  v4 = [v3 screen];
  if (v4)
  {
    carSceneType = self->_carSceneType;

    if (carSceneType == 6)
    {
      v6 = [(CarSpeedSignView *)self window];
      v7 = [v6 screen];
      [v7 _car_dynamicPointScaleValue];
      v9 = v8;

      return v9;
    }
  }

  else
  {
  }

  v11.receiver = self;
  v11.super_class = CarSpeedSignView;
  [(SpeedLimitView *)&v11 dynamicScale];
  return result;
}

- (void)setContentsHidden:(BOOL)a3
{
  if (self->_contentsHidden != a3)
  {
    self->_contentsHidden = a3;
    v4 = sub_100006E1C();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [(CarSpeedSignView *)self contentsHidden];
      v6 = @"NO";
      if (v5)
      {
        v6 = @"YES";
      }

      v7 = v6;
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[SpeedSign] Will post visibility changed notification (contentsHidden: %@)", &v9, 0xCu);
    }

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:@"CarSpeedSignViewDidChangeVisibility" object:self];
  }
}

- (void)refreshSpeedLimit
{
  if (self->_isNavigating)
  {
    v3 = +[MNNavigationService sharedService];
    v4 = [v3 lastLocation];
  }

  else
  {
    v4 = 0;
  }

  [(CarSpeedSignView *)self _setLocation:v4];
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    if (a3)
    {
      [(CarSpeedSignView *)self _activate];
    }

    else
    {
      [(CarSpeedSignView *)self _deactivate];
    }
  }
}

- (CarSpeedSignView)initWithCarSceneType:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = CarSpeedSignView;
  v4 = [(SpeedLimitView *)&v8 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v5 = v4;
  if (v4)
  {
    v4->_carSceneType = a3;
    v4->_active = 0;
    v4->_contentsHidden = 1;
    v6 = +[MNNavigationService sharedService];
    v5->_isNavigating = [v6 isInNavigatingState];

    [(CarSpeedSignView *)v5 setAccessibilityIdentifier:@"CarSpeedSignView"];
  }

  return v5;
}

- (void)dealloc
{
  [(CarSpeedSignView *)self _deactivate];
  v3.receiver = self;
  v3.super_class = CarSpeedSignView;
  [(CarSpeedSignView *)&v3 dealloc];
}

@end