@interface MapsAstronomicalConditionMonitor
+ (id)sharedMonitor;
- (MapsAstronomicalConditionMonitor)init;
- (int64_t)_computeOnQueueAstronomicalConditionForTime:(double)time currentLocation:(id)location isBeforeSolarTransit:(BOOL *)transit;
- (int64_t)astronomicalCondition;
- (void)_setMonitoring:(BOOL)monitoring;
- (void)computeAstronomicalConditionForTime:(double)time currentLocation:(id)location;
- (void)locationManagerUpdatedLocation:(id)location;
- (void)scheduleTimeCheck;
- (void)setAstronomicalCondition:(int64_t)condition;
- (void)setCurrentLocation:(id)location;
- (void)timeDidChangeSignificantly;
@end

@implementation MapsAstronomicalConditionMonitor

+ (id)sharedMonitor
{
  if (qword_10195EE00 != -1)
  {
    dispatch_once(&qword_10195EE00, &stru_10164FC10);
  }

  v3 = qword_10195EDF8;

  return v3;
}

- (MapsAstronomicalConditionMonitor)init
{
  v11.receiver = self;
  v11.super_class = MapsAstronomicalConditionMonitor;
  v2 = [(MapsBaseLightMonitor *)&v11 init];
  if (v2)
  {
    v3 = objc_opt_new();
    v4 = *(v2 + 17);
    *(v2 + 17) = v3;

    v5 = objc_opt_new();
    v6 = *(v2 + 25);
    *(v2 + 25) = v5;

    *(v2 + 49) = 0;
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.Maps.AstronomicalConditionMonitor.compute", v7);
    v9 = *(v2 + 33);
    *(v2 + 33) = v8;
  }

  return v2;
}

- (void)scheduleTimeCheck
{
  objc_initWeak(&location, self);
  v3 = &_dispatch_main_q;
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_100094D44;
  v8 = &unk_1016616E8;
  objc_copyWeak(&v9, &location);
  v4 = [GCDTimer scheduledTimerWithTimeInterval:&_dispatch_main_q queue:&v5 block:300.0];
  [(MapsAstronomicalConditionMonitor *)self setTimeCheckTimer:v4, v5, v6, v7, v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (int64_t)astronomicalCondition
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 objectForKey:@"MapsDebugAstronomicalLightLevelKey"];

  if (objc_opt_respondsToSelector())
  {
    integerValue = [v4 integerValue];
    v6 = sub_100014EFC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      if (integerValue >= 4)
      {
        v7 = [NSString stringWithFormat:@"<Unknown: %ld>", integerValue];
      }

      else
      {
        v7 = off_10164FC58[integerValue];
      }

      *buf = 138412290;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Using override astronomical condition: %@", buf, 0xCu);
    }
  }

  else
  {
    integerValue = *(&self->_isBeforeSolarTransit + 1);
  }

  return integerValue;
}

- (void)timeDidChangeSignificantly
{
  currentLocation = [(MapsAstronomicalConditionMonitor *)self currentLocation];
  if (currentLocation)
  {
    [(MapsAstronomicalConditionMonitor *)self computeAstronomicalConditionForTime:currentLocation currentLocation:CFAbsoluteTimeGetCurrent()];
  }

  else
  {
    v4 = sub_100014EFC();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "-timeDidChangeSignificantly cannot compute astronomical condition without a current location", v5, 2u);
    }
  }
}

- (int64_t)_computeOnQueueAstronomicalConditionForTime:(double)time currentLocation:(id)location isBeforeSolarTransit:(BOOL *)transit
{
  locationCopy = location;
  [locationCopy coordinate];
  v9 = v8;
  v11 = v10;
  v12 = *(&self->super._monitoring + 1);
  GEOConfigGetDouble();
  [v12 calculateAstronomicalTimeForLocation:v9 time:v11 altitudeInDegrees:{time, v13}];
  v14 = *(&self->_daylightAlmanac + 1);
  GEOConfigGetDouble();
  [v14 calculateAstronomicalTimeForLocation:v9 time:v11 altitudeInDegrees:{time, v15}];
  v16 = [NSDate dateWithTimeIntervalSinceReferenceDate:time];
  v17 = objc_opt_new();
  previousTransit = [*(&self->super._monitoring + 1) previousTransit];

  if (previousTransit)
  {
    previousTransit2 = [*(&self->super._monitoring + 1) previousTransit];
    [v17 addObject:previousTransit2];
  }

  transit = [*(&self->super._monitoring + 1) transit];

  if (transit)
  {
    transit2 = [*(&self->super._monitoring + 1) transit];
    [v17 addObject:transit2];
  }

  nextTransit = [*(&self->super._monitoring + 1) nextTransit];

  if (nextTransit)
  {
    nextTransit2 = [*(&self->super._monitoring + 1) nextTransit];
    [v17 addObject:nextTransit2];
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v24 = v17;
  v25 = [v24 countByEnumeratingWithState:&v46 objects:v66 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = 0;
    v28 = *v47;
    v29 = 1.79769313e308;
    do
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v47 != v28)
        {
          objc_enumerationMutation(v24);
        }

        v31 = *(*(&v46 + 1) + 8 * i);
        [v31 timeIntervalSinceDate:v16];
        v33 = fabs(v32);
        if (v33 < v29)
        {
          v34 = v31;

          v27 = v34;
          v29 = v33;
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v46 objects:v66 count:16];
    }

    while (v26);

    if (v27)
    {
      v35 = [v16 compare:v27] == -1;
      goto LABEL_20;
    }
  }

  else
  {

    v27 = 0;
  }

  v35 = 0;
LABEL_20:
  *transit = v35;
  v36 = sub_100014EFC();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    v37 = *(&self->super._monitoring + 1);
    v43 = *(&self->_daylightAlmanac + 1);
    v44 = *transit;
    previousTransit3 = [v37 previousTransit];
    transit3 = [*(&self->super._monitoring + 1) transit];
    nextTransit3 = [*(&self->super._monitoring + 1) nextTransit];
    *buf = 138414082;
    v51 = locationCopy;
    v52 = 2112;
    v53 = v16;
    v54 = 2112;
    v55 = v37;
    v56 = 2112;
    v57 = v43;
    v58 = 1024;
    v59 = v44;
    v60 = 2112;
    v61 = previousTransit3;
    v62 = 2112;
    v63 = transit3;
    v64 = 2112;
    v65 = nextTransit3;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "computeAstronomicalCondition updated conditions for %@ at %@; daylightAlmanac: %@ twilightAlamanac: %@; isBeforeSolarTransit: %d; transits: %@ %@ %@", buf, 0x4Eu);
  }

  if ([*(&self->super._monitoring + 1) isDayLightForTime:time])
  {
    v41 = 3;
  }

  else if ([*(&self->_daylightAlmanac + 1) isDayLightForTime:time])
  {
    v41 = 2;
  }

  else
  {
    v41 = 1;
  }

  return v41;
}

- (void)computeAstronomicalConditionForTime:(double)time currentLocation:(id)location
{
  locationCopy = location;
  objc_initWeak(&location, self);
  v7 = *(&self->_twilightAlmanac + 1);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100C90BEC;
  v9[3] = &unk_101651D38;
  objc_copyWeak(v11, &location);
  v11[1] = *&time;
  v10 = locationCopy;
  v8 = locationCopy;
  dispatch_async(v7, v9);

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

- (void)locationManagerUpdatedLocation:(id)location
{
  lastLocation = [location lastLocation];
  [(MapsAstronomicalConditionMonitor *)self setCurrentLocation:lastLocation];
}

- (void)setAstronomicalCondition:(int64_t)condition
{
  if (*(&self->_isBeforeSolarTransit + 1) != condition)
  {
    v5 = sub_100014EFC();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(&self->_isBeforeSolarTransit + 1);
      if (v6 >= 4)
      {
        v7 = [NSString stringWithFormat:@"<Unknown: %ld>", *(&self->_isBeforeSolarTransit + 1)];
      }

      else
      {
        v7 = off_10164FC58[v6];
      }

      v8 = v7;
      if (condition >= 4)
      {
        condition = [NSString stringWithFormat:@"<Unknown: %ld>", condition];
      }

      else
      {
        condition = off_10164FC58[condition];
      }

      *buf = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = condition;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Changing condition from %@ to %@", buf, 0x16u);
    }

    *(&self->_isBeforeSolarTransit + 1) = condition;
    [(MapsBaseLightMonitor *)self _notifyDidChange];
  }
}

- (void)_setMonitoring:(BOOL)monitoring
{
  monitoringCopy = monitoring;
  _isMonitoring = [(MapsBaseLightMonitor *)self _isMonitoring];
  v12.receiver = self;
  v12.super_class = MapsAstronomicalConditionMonitor;
  [(MapsBaseLightMonitor *)&v12 _setMonitoring:monitoringCopy];
  if (_isMonitoring != monitoringCopy)
  {
    v6 = +[MKLocationManager sharedLocationManager];
    v7 = v6;
    if (monitoringCopy)
    {
      [v6 listenForLocationUpdates:self];

      v8 = +[NSNotificationCenter defaultCenter];
      [v8 addObserver:self selector:"timeDidChangeSignificantly" name:UIApplicationSignificantTimeChangeNotification object:0];

      v9 = +[MKLocationManager sharedLocationManager];
      lastLocation = [v9 lastLocation];
      [(MapsAstronomicalConditionMonitor *)self setCurrentLocation:lastLocation];

      [(MapsAstronomicalConditionMonitor *)self scheduleTimeCheck];
    }

    else
    {
      [v6 stopListeningForLocationUpdates:self];

      v11 = +[NSNotificationCenter defaultCenter];
      [v11 removeObserver:self name:UIApplicationSignificantTimeChangeNotification object:0];

      [(MapsAstronomicalConditionMonitor *)self setCurrentLocation:0];
      [(MapsAstronomicalConditionMonitor *)self setTimeCheckTimer:0];
      [(MapsAstronomicalConditionMonitor *)self setAstronomicalCondition:0];
    }
  }
}

- (void)setCurrentLocation:(id)location
{
  locationCopy = location;
  v6 = locationCopy;
  v7 = *(&self->_astronomicalCondition + 1);
  if (v7 != locationCopy)
  {
    if (locationCopy)
    {
      if (!v7)
      {
        v9 = sub_100014EFC();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v14 = 138412290;
          v15 = v6;
          v11 = "Calculating condition with first currrentLocation: %@";
          v12 = v9;
          v13 = 12;
          goto LABEL_10;
        }

LABEL_11:

        objc_storeStrong((&self->_astronomicalCondition + 1), location);
        [(MapsAstronomicalConditionMonitor *)self computeAstronomicalConditionForTime:v6 currentLocation:CFAbsoluteTimeGetCurrent()];
        goto LABEL_12;
      }

      [locationCopy distanceFromLocation:?];
      if (v8 > 3000.0)
      {
        v9 = sub_100014EFC();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = *(&self->_astronomicalCondition + 1);
          v14 = 138412546;
          v15 = v10;
          v16 = 2112;
          v17 = v6;
          v11 = "currentLocation moved significantly from %@ to %@";
          v12 = v9;
          v13 = 22;
LABEL_10:
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, v11, &v14, v13);
          goto LABEL_11;
        }

        goto LABEL_11;
      }
    }

    else
    {
      *(&self->_astronomicalCondition + 1) = 0;
    }
  }

LABEL_12:
}

@end