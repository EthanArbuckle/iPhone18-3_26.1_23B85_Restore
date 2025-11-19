@interface NTKAstronomyComplicationDataSource
+ (id)appIdentifier;
+ (id)legacyNTKComplicationType;
+ (unint64_t)vista;
- (BOOL)supportsTapAction;
- (Class)richComplicationDisplayViewClassForDevice:(id)a3;
- (NTKAstronomyComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5;
- (id)_currentTimelineEntryWithIdealizedDate:(BOOL)a3;
- (id)currentSwitcherTemplate;
- (void)_handleLocationUpdate:(id)a3 anyLocation:(id)a4;
- (void)_invalidate;
- (void)_startObserving;
- (void)_stopObserving;
- (void)becomeActive;
- (void)becomeInactive;
- (void)dealloc;
- (void)getCurrentTimelineEntryWithHandler:(id)a3;
- (void)getLaunchURLForTimelineEntryDate:(id)a3 timeTravelDate:(id)a4 withHandler:(id)a5;
- (void)resume;
@end

@implementation NTKAstronomyComplicationDataSource

- (NTKAstronomyComplicationDataSource)initWithComplication:(id)a3 family:(int64_t)a4 forDevice:(id)a5
{
  v12.receiver = self;
  v12.super_class = NTKAstronomyComplicationDataSource;
  v5 = [(NTKAstronomyComplicationDataSource *)&v12 initWithComplication:a3 family:a4 forDevice:a5];
  if (v5)
  {
    v6 = +[NTKLocationManager sharedLocationManager];
    v7 = [v6 currentLocation];
    currentLocation = v5->_currentLocation;
    v5->_currentLocation = v7;

    v9 = [v6 anyLocation];
    anyLocation = v5->_anyLocation;
    v5->_anyLocation = v9;

    [(NTKAstronomyComplicationDataSource *)v5 _startObserving];
  }

  return v5;
}

- (void)dealloc
{
  [(NTKAstronomyComplicationDataSource *)self _stopObserving];
  v3.receiver = self;
  v3.super_class = NTKAstronomyComplicationDataSource;
  [(NTKAstronomyComplicationDataSource *)&v3 dealloc];
}

- (void)_startObserving
{
  if (!self->_listeningForNotifications)
  {
    self->_listeningForNotifications = 1;
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:self selector:"_invalidate" name:UIApplicationSignificantTimeChangeNotification object:0];
    [v4 addObserver:self selector:"_invalidate" name:NSCalendarDayChangedNotification object:0];
    [v4 addObserver:self selector:"_invalidate" name:NSCurrentLocaleDidChangeNotification object:0];
  }
}

- (void)_stopObserving
{
  self->_listeningForNotifications = 0;
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIApplicationSignificantTimeChangeNotification object:0];
  [v3 removeObserver:self name:NSCalendarDayChangedNotification object:0];
  [v3 removeObserver:self name:NSCurrentLocaleDidChangeNotification object:0];
}

- (Class)richComplicationDisplayViewClassForDevice:(id)a3
{
  v3 = [(NTKAstronomyComplicationDataSource *)self family];
  v4 = 0;
  if (v3 > 9)
  {
    if (v3 == &dword_C)
    {
      v5 = &off_C228;
    }

    else
    {
      if (v3 != (&dword_8 + 2))
      {
        goto LABEL_12;
      }

      v5 = off_C218;
    }

    goto LABEL_11;
  }

  if (v3 != &dword_8)
  {
    if (v3 != (&dword_8 + 1))
    {
      goto LABEL_12;
    }

    v5 = off_C210;
    goto LABEL_11;
  }

  if ([objc_opt_class() vista] == &dword_0 + 1)
  {
    v5 = off_C220;
LABEL_11:
    v6 = *v5;
    v4 = objc_opt_class();
    goto LABEL_12;
  }

  v4 = 0;
LABEL_12:

  return v4;
}

- (BOOL)supportsTapAction
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {
    LOBYTE(v2) = [objc_opt_class() vista] == 0;
  }

  return v2;
}

- (void)getLaunchURLForTimelineEntryDate:(id)a3 timeTravelDate:(id)a4 withHandler:(id)a5
{
  v7 = a5;
  if (_os_feature_enabled_impl() && ![objc_opt_class() vista])
  {
    v6 = [NSURL nwcCurrentLocationURLForLocation:self->_currentLocation];
  }

  else
  {
    v6 = 0;
  }

  v7[2](v7, v6);
}

+ (id)legacyNTKComplicationType
{
  v2 = [a1 vista];
  if (v2 > 2)
  {
    return 0;
  }

  else
  {
    return off_C448[v2];
  }
}

+ (id)appIdentifier
{
  if (_os_feature_enabled_impl() && ![a1 vista])
  {
    v3 = NTKWorldClockApplicationBundleIdentifier;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_handleLocationUpdate:(id)a3 anyLocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  currentLocation = self->_currentLocation;
  self->_currentLocation = v6;
  v9 = v6;

  anyLocation = self->_anyLocation;
  self->_anyLocation = v7;

  [(NTKAstronomyComplicationDataSource *)self _invalidate];
}

- (void)becomeActive
{
  v3 = +[NTKLocationManager sharedLocationManager];
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1C40;
  v6[3] = &unk_C428;
  objc_copyWeak(&v7, &location);
  v4 = [v3 startLocationUpdatesWithIdentifier:@"ntk.astronomyComplicationDataSource" handler:v6];
  token = self->_token;
  self->_token = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)becomeInactive
{
  if (self->_token)
  {
    v3 = +[NTKLocationManager sharedLocationManager];
    [v3 stopLocationUpdatesForToken:self->_token];

    token = self->_token;
    self->_token = 0;
  }
}

- (id)_currentTimelineEntryWithIdealizedDate:(BOOL)a3
{
  v5 = +[NTKDate complicationDate];
  v6 = v5;
  if (a3)
  {
    v7 = NTKIdealizedDate();
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;
  v9 = -[NTKAstronomyTimelineEntryModel initWithVista:entryDate:currentDate:currentLocation:anyLocation:]([NTKAstronomyTimelineEntryModel alloc], "initWithVista:entryDate:currentDate:currentLocation:anyLocation:", [objc_opt_class() vista], v7, v6, self->_currentLocation, self->_anyLocation);
  v10 = [(NTKAstronomyTimelineEntryModel *)v9 entryForComplicationFamily:[(NTKAstronomyComplicationDataSource *)self family]];

  return v10;
}

- (id)currentSwitcherTemplate
{
  v2 = [(NTKAstronomyComplicationDataSource *)self _currentTimelineEntryWithIdealizedDate:1];
  v3 = [v2 complicationTemplate];

  return v3;
}

- (void)getCurrentTimelineEntryWithHandler:(id)a3
{
  v5 = a3;
  v6 = [(NTKAstronomyComplicationDataSource *)self _currentTimelineEntryWithIdealizedDate:0];
  (*(a3 + 2))(v5, v6);
}

- (void)resume
{
  [(NTKAstronomyComplicationDataSource *)self _startObserving];

  [(NTKAstronomyComplicationDataSource *)self _invalidate];
}

- (void)_invalidate
{
  v2 = [(NTKAstronomyComplicationDataSource *)self delegate];
  [v2 invalidateEntries];
}

+ (unint64_t)vista
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end