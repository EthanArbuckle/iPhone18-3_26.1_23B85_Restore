@interface DistanceUnitDataProvider
- (DistanceUnitDataProvider)init;
- (GEOObserverHashTable)observers;
- (void)_updateAndNotifyObservers:(BOOL)a3;
- (void)setActive:(BOOL)a3;
@end

@implementation DistanceUnitDataProvider

- (void)_updateAndNotifyObservers:(BOOL)a3
{
  if (self->_active)
  {
    v3 = a3;
    v6 = +[NSLocale currentLocale];
    v7 = [v6 _navigation_distanceUsesMetricSystem];
    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    distanceUnit = self->_distanceUnit;
    v10 = sub_1000410AC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = NSStringFromSelector(a2);
      v14 = v13;
      v15 = @"Imperial";
      v16 = 138412802;
      v17 = v12;
      v18 = 2112;
      if (v7)
      {
        v15 = @"Metric";
      }

      v19 = v13;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%@ %@, distance unit = %@", &v16, 0x20u);
    }

    if (v8 != distanceUnit)
    {
      self->_distanceUnit = v8;
      if (v3)
      {
        [(GEOObserverHashTable *)self->_observers homeDataProvidingObjectDidUpdate:self];
      }
    }
  }
}

- (GEOObserverHashTable)observers
{
  observers = self->_observers;
  if (!observers)
  {
    v4 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___HomeDataProvidingObserver queue:0];
    v5 = self->_observers;
    self->_observers = v4;

    observers = self->_observers;
  }

  return observers;
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    v3 = a3;
    self->_active = a3;
    v7 = +[NSNotificationCenter defaultCenter];
    if (v3)
    {
      v5 = MNLocaleDidChangeNotification();
      [v7 addObserver:self selector:"_localeDidChange:" name:v5 object:0];

      [(DistanceUnitDataProvider *)self _updateAndNotifyObservers:0];
    }

    else
    {
      v6 = MNLocaleDidChangeNotification();
      [v7 removeObserver:self name:v6 object:0];
    }
  }
}

- (DistanceUnitDataProvider)init
{
  v5.receiver = self;
  v5.super_class = DistanceUnitDataProvider;
  v2 = [(DistanceUnitDataProvider *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(DistanceUnitDataProvider *)v2 _updateAndNotifyObservers:0];
  }

  return v3;
}

@end