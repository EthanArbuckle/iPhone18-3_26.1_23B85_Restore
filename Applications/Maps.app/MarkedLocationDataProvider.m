@interface MarkedLocationDataProvider
- (GEOObserverHashTable)observers;
- (void)_updateAndNotifyObservers:(BOOL)a3;
- (void)setActive:(BOOL)a3;
@end

@implementation MarkedLocationDataProvider

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

- (void)_updateAndNotifyObservers:(BOOL)a3
{
  if (self->_active)
  {
    v3 = a3;
    v6 = +[CustomSearchManager sharedManager];
    v7 = [v6 customSearchResult];

    if ([v7 type] == 3)
    {
      v8 = +[CustomSearchManager sharedManager];
      v9 = [v8 customSearchResult];
      markedLocation = self->_markedLocation;
      self->_markedLocation = v9;

      v11 = +[CustomLocationManager sharedManager];
      [v11 processSearchResult:self->_markedLocation traits:0];
    }

    else
    {
      v11 = self->_markedLocation;
      self->_markedLocation = 0;
    }

    v12 = sub_1000410AC();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(a2);
      v16 = self->_markedLocation;
      if (v16)
      {
        [(SearchResult *)self->_markedLocation coordinate];
        v19 = [NSString stringWithFormat:@"%+.8f, %+.8f", v17, v18];
      }

      else
      {
        v19 = 0;
      }

      v20 = @"NO";
      if (v3)
      {
        v20 = @"YES";
      }

      v21 = v20;
      *buf = 138413058;
      v23 = v14;
      v24 = 2112;
      v25 = v15;
      v26 = 2112;
      v27 = v19;
      v28 = 2112;
      v29 = v21;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%@ %@, markedLocation = %@, notifyObservers = %@", buf, 0x2Au);
      if (v16)
      {
      }
    }

    if (v3)
    {
      [(GEOObserverHashTable *)self->_observers homeDataProvidingObjectDidUpdate:self];
    }
  }
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    v3 = a3;
    self->_active = a3;
    v5 = +[CustomSearchManager sharedManager];
    v6 = v5;
    if (v3)
    {
      [v5 addObserver:self];

      [(MarkedLocationDataProvider *)self _updateAndNotifyObservers:0];
    }

    else
    {
      [v5 removeObserver:self];
    }
  }
}

@end