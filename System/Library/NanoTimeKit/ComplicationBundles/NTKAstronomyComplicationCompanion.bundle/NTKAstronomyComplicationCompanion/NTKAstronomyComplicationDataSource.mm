@interface NTKAstronomyComplicationDataSource
+ (id)appIdentifier;
+ (id)legacyNTKComplicationType;
+ (unint64_t)vista;
- (BOOL)supportsTapAction;
- (Class)richComplicationDisplayViewClassForDevice:(id)device;
- (NTKAstronomyComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device;
- (id)_currentTimelineEntryWithIdealizedDate:(BOOL)date;
- (id)currentSwitcherTemplate;
- (void)_handleLocationUpdate:(id)update anyLocation:(id)location;
- (void)_invalidate;
- (void)_startObserving;
- (void)_stopObserving;
- (void)becomeActive;
- (void)becomeInactive;
- (void)dealloc;
- (void)getCurrentTimelineEntryWithHandler:(id)handler;
- (void)getLaunchURLForTimelineEntryDate:(id)date timeTravelDate:(id)travelDate withHandler:(id)handler;
- (void)resume;
@end

@implementation NTKAstronomyComplicationDataSource

- (NTKAstronomyComplicationDataSource)initWithComplication:(id)complication family:(int64_t)family forDevice:(id)device
{
  v12.receiver = self;
  v12.super_class = NTKAstronomyComplicationDataSource;
  v5 = [(NTKAstronomyComplicationDataSource *)&v12 initWithComplication:complication family:family forDevice:device];
  if (v5)
  {
    v6 = +[NTKLocationManager sharedLocationManager];
    currentLocation = [v6 currentLocation];
    currentLocation = v5->_currentLocation;
    v5->_currentLocation = currentLocation;

    anyLocation = [v6 anyLocation];
    anyLocation = v5->_anyLocation;
    v5->_anyLocation = anyLocation;

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

- (Class)richComplicationDisplayViewClassForDevice:(id)device
{
  family = [(NTKAstronomyComplicationDataSource *)self family];
  v4 = 0;
  if (family > 9)
  {
    if (family == &dword_C)
    {
      v5 = &off_C228;
    }

    else
    {
      if (family != (&dword_8 + 2))
      {
        goto LABEL_12;
      }

      v5 = off_C218;
    }

    goto LABEL_11;
  }

  if (family != &dword_8)
  {
    if (family != (&dword_8 + 1))
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

- (void)getLaunchURLForTimelineEntryDate:(id)date timeTravelDate:(id)travelDate withHandler:(id)handler
{
  handlerCopy = handler;
  if (_os_feature_enabled_impl() && ![objc_opt_class() vista])
  {
    v6 = [NSURL nwcCurrentLocationURLForLocation:self->_currentLocation];
  }

  else
  {
    v6 = 0;
  }

  handlerCopy[2](handlerCopy, v6);
}

+ (id)legacyNTKComplicationType
{
  vista = [self vista];
  if (vista > 2)
  {
    return 0;
  }

  else
  {
    return off_C448[vista];
  }
}

+ (id)appIdentifier
{
  if (_os_feature_enabled_impl() && ![self vista])
  {
    v3 = NTKWorldClockApplicationBundleIdentifier;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_handleLocationUpdate:(id)update anyLocation:(id)location
{
  updateCopy = update;
  locationCopy = location;
  currentLocation = self->_currentLocation;
  self->_currentLocation = updateCopy;
  v9 = updateCopy;

  anyLocation = self->_anyLocation;
  self->_anyLocation = locationCopy;

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

- (id)_currentTimelineEntryWithIdealizedDate:(BOOL)date
{
  v5 = +[NTKDate complicationDate];
  v6 = v5;
  if (date)
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
  complicationTemplate = [v2 complicationTemplate];

  return complicationTemplate;
}

- (void)getCurrentTimelineEntryWithHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [(NTKAstronomyComplicationDataSource *)self _currentTimelineEntryWithIdealizedDate:0];
  (*(handler + 2))(handlerCopy, v6);
}

- (void)resume
{
  [(NTKAstronomyComplicationDataSource *)self _startObserving];

  [(NTKAstronomyComplicationDataSource *)self _invalidate];
}

- (void)_invalidate
{
  delegate = [(NTKAstronomyComplicationDataSource *)self delegate];
  [delegate invalidateEntries];
}

+ (unint64_t)vista
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end