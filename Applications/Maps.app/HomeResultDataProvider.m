@interface HomeResultDataProvider
- (BOOL)_isNoNetworkError:(id)a3;
- (GEOObserverHashTable)observers;
- (HomeResult)homeResult;
- (HomeResultDataProvider)initWithDelegate:(id)a3;
- (HomeResultDataProviderDelegate)delegate;
- (id)_currentCacheKey;
- (void)_cancelExpirationTimer;
- (void)_cancelTicket;
- (void)_createExpirationTimerIfNeeded;
- (void)_expirationTimerFired;
- (void)_handleResult:(id)a3 error:(id)a4 cacheKey:(id)a5;
- (void)_networkReachabilityDidChange;
- (void)_refreshCachedResultAndNotifyObservers:(BOOL)a3;
- (void)_startTicketWithCacheKey:(id)a3;
- (void)_updateWithResult:(id)a3 cacheKey:(id)a4 notifyObservers:(BOOL)a5;
- (void)countryConfigurationDidChange:(id)a3;
- (void)dealloc;
- (void)setActive:(BOOL)a3;
@end

@implementation HomeResultDataProvider

- (id)_currentCacheKey
{
  v3 = +[GEOCountryConfiguration sharedConfiguration];
  v4 = [v3 countryCode];

  v5 = [(MKLocationManager *)self->_locationManager currentLocation];
  v6 = [[HomeResultCacheKey alloc] initWithCountryCode:v4 location:v5];

  return v6;
}

- (void)_cancelTicket
{
  [(GEOMapServiceMapsHomeTicket *)self->_ticket cancel];
  ticket = self->_ticket;
  self->_ticket = 0;

  ticketCacheKey = self->_ticketCacheKey;
  self->_ticketCacheKey = 0;
}

- (HomeResultDataProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_createExpirationTimerIfNeeded
{
  if (!self->_resultExpirationTimer)
  {
    v3 = [(HomeResult *)self->_result expirationDate];
    if (v3)
    {
      objc_initWeak(&location, self);
      v6 = _NSConcreteStackBlock;
      v7 = 3221225472;
      v8 = sub_100BD0ED4;
      v9 = &unk_101661BC8;
      objc_copyWeak(&v10, &location);
      v4 = [NSTimer _maps_scheduledTimerWithFireDate:v3 block:&v6];
      resultExpirationTimer = self->_resultExpirationTimer;
      self->_resultExpirationTimer = v4;

      [(NSTimer *)self->_resultExpirationTimer setTolerance:1.0, v6, v7, v8, v9];
      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
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

- (void)countryConfigurationDidChange:(id)a3
{
  dispatch_assert_queue_V2(&_dispatch_main_q);

  [(HomeResultDataProvider *)self _refreshCachedResultAndNotifyObservers:1];
}

- (void)_networkReachabilityDidChange
{
  dispatch_assert_queue_V2(&_dispatch_main_q);

  [(HomeResultDataProvider *)self _refreshCachedResultAndNotifyObservers:1];
}

- (void)_expirationTimerFired
{
  v4 = sub_1000410AC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(a2);
    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@ %@", &v8, 0x16u);
  }

  [(HomeResultDataProvider *)self _cancelExpirationTimer];
  [(HomeResultDataProvider *)self _refreshCachedResultAndNotifyObservers:1];
}

- (void)_cancelExpirationTimer
{
  [(NSTimer *)self->_resultExpirationTimer invalidate];
  resultExpirationTimer = self->_resultExpirationTimer;
  self->_resultExpirationTimer = 0;
}

- (BOOL)_isNoNetworkError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:NSURLErrorDomain];

  if (v5)
  {
    if ([v3 code] != -1009)
    {
LABEL_7:
      v9 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v6 = [v3 domain];
    v7 = GEOErrorDomain();
    v8 = [v6 isEqualToString:v7];

    if (!v8 || [v3 code] != -9)
    {
      goto LABEL_7;
    }
  }

  v9 = 1;
LABEL_8:

  return v9;
}

- (void)_handleResult:(id)a3 error:(id)a4 cacheKey:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  ticketCacheKey = self->_ticketCacheKey;
  if (ticketCacheKey == v11 || [(HomeResultCacheKey *)ticketCacheKey isEqual:v11])
  {
    [(HomeResultDataProvider *)self _cancelTicket];
    if (v10)
    {
      if ([(HomeResultDataProvider *)self _isNoNetworkError:v10])
      {
        goto LABEL_11;
      }

      v13 = [Result resultWithError:v10];
    }

    else
    {
      if (!v9)
      {
        v19 = [NSError errorWithDomain:@"HomeResultDataProviderErrorDomain" code:1 userInfo:0];
        v14 = [Result resultWithError:v19];

        if (v14)
        {
          goto LABEL_9;
        }

        goto LABEL_11;
      }

      v13 = [Result resultWithValue:v9];
    }

    v14 = v13;
    if (v13)
    {
LABEL_9:
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_100BD137C;
      v36[3] = &unk_10164CD10;
      v36[4] = self;
      v38 = a2;
      v37 = v11;
      v29 = _NSConcreteStackBlock;
      v30 = 3221225472;
      v31 = sub_100BD146C;
      v32 = &unk_10164CD38;
      v33 = self;
      v35 = a2;
      v15 = v37;
      v34 = v15;
      [v14 withValue:v36 orError:&v29];

      v16 = [HomeResult alloc];
      v17 = [NSDate date:v29];
      v18 = [(HomeResult *)v16 initWithResponseResult:v14 responseDate:v17];

      [(HomeResultCache *)self->_cache setResult:v18 forKey:v15];
      goto LABEL_14;
    }

LABEL_11:
    v20 = sub_1000410AC();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = NSStringFromSelector(a2);
      *buf = 138412546;
      v40 = v22;
      v41 = 2112;
      v42 = v23;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%@ %@, network is offline", buf, 0x16u);
    }

    v14 = 0;
    v18 = 0;
LABEL_14:
    v24 = [(HomeResultDataProvider *)self _currentCacheKey];
    v25 = v24;
    if (v18)
    {
      if ([v24 isEqualivantToKey:v11])
      {
        v26 = self;
        v27 = v18;
        v28 = v11;
LABEL_19:
        [(HomeResultDataProvider *)v26 _updateWithResult:v27 cacheKey:v28 notifyObservers:1];
      }
    }

    else if (![(HomeResultCacheKey *)self->_resultCacheKey isEqualivantToKey:v11])
    {
      v26 = self;
      v27 = 0;
      v28 = 0;
      goto LABEL_19;
    }
  }
}

- (void)_startTicketWithCacheKey:(id)a3
{
  v6 = a3;
  v7 = sub_1000410AC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(a2);
    *buf = 138412802;
    v23 = v9;
    v24 = 2112;
    v25 = v10;
    v26 = 2112;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%@ %@, cacheKey = %@", buf, 0x20u);
  }

  [(HomeResultDataProvider *)self _cancelTicket];
  objc_initWeak(buf, self);
  objc_storeStrong(&self->_ticketCacheKey, a3);
  v11 = +[GEOMapService sharedService];
  v12 = [(HomeResultDataProvider *)self delegate];
  v13 = [v12 newTraits];
  v14 = [v11 ticketForMapsHomeWithTraits:v13];
  ticket = self->_ticket;
  p_ticket = &self->_ticket;
  *p_ticket = v14;

  v17 = *p_ticket;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100BD17A8;
  v19[3] = &unk_10164CCE8;
  objc_copyWeak(&v21, buf);
  v18 = v6;
  v20 = v18;
  [(GEOMapServiceMapsHomeTicket *)v17 submitWithHandler:v19 networkActivity:0];

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
}

- (void)_refreshCachedResultAndNotifyObservers:(BOOL)a3
{
  if (self->_active)
  {
    v4 = a3;
    v10 = +[NSDate date];
    v6 = [(HomeResultDataProvider *)self _currentCacheKey];
    v7 = v6;
    if (!self->_resultCacheKey || ![v6 isEqualivantToKey:?] || -[HomeResult isExpiredAtDate:](self->_result, "isExpiredAtDate:", v10))
    {
      v8 = [(HomeResultCache *)self->_cache resultForKey:v7];
      v9 = v8;
      if (v8 && ([v8 isExpiredAtDate:v10] & 1) == 0)
      {
        [(HomeResultDataProvider *)self _updateWithResult:v9 cacheKey:v7 notifyObservers:v4];
      }

      else if (!self->_ticketCacheKey || ([v7 isEqualivantToKey:?] & 1) == 0)
      {
        [(HomeResultDataProvider *)self _startTicketWithCacheKey:v7];
      }
    }
  }
}

- (void)_updateWithResult:(id)a3 cacheKey:(id)a4 notifyObservers:(BOOL)a5
{
  v5 = a5;
  v10 = a3;
  v11 = a4;
  if (self->_active)
  {
    if (self->_result == v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = [(HomeResult *)v10 isEqual:?];
    }

    v33 = v12;
    aSelector = a2;
    if (self->_resultCacheKey == v11)
    {
      v13 = 1;
    }

    else
    {
      v13 = [(HomeResultCacheKey *)v11 isEqual:?];
    }

    v14 = [(HomeResult *)v10 expirationDate];
    v15 = [(HomeResult *)self->_result expirationDate];
    if (v14 == v15)
    {
      v31 = 1;
    }

    else
    {
      v31 = [v14 isEqual:v15];
    }

    v16 = v33;
    if ((v33 & 1) == 0)
    {
      objc_storeStrong(&self->_result, a3);
    }

    if ((v13 & 1) == 0)
    {
      objc_storeStrong(&self->_resultCacheKey, a4);
    }

    if ((v31 & 1) == 0)
    {
      [(HomeResultDataProvider *)self _cancelExpirationTimer];
      [(HomeResultDataProvider *)self _createExpirationTimerIfNeeded];
    }

    v17 = sub_1000410AC();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = objc_opt_class();
      v29 = NSStringFromClass(v18);
      v19 = NSStringFromSelector(aSelector);
      if (v33)
      {
        v20 = @"NO";
      }

      else
      {
        v20 = @"YES";
      }

      v21 = v20;
      if (v13)
      {
        v22 = @"NO";
      }

      else
      {
        v22 = @"YES";
      }

      v23 = v22;
      if (v31)
      {
        v24 = @"NO";
      }

      else
      {
        v24 = @"YES";
      }

      v32 = v11;
      v25 = v24;
      if (v5)
      {
        v26 = @"YES";
      }

      else
      {
        v26 = @"NO";
      }

      v27 = v26;
      *buf = 138413826;
      v35 = v29;
      v36 = 2112;
      v37 = v19;
      v38 = 2112;
      v39 = v21;
      v40 = 2112;
      v41 = v23;
      v28 = v23;
      v42 = 2112;
      v43 = v25;
      v44 = 2112;
      v45 = v27;
      v46 = 2112;
      v47 = v32;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%@ %@, resultChanged = %@, cacheKeyChanged = %@, expirationDateChanged = %@, notifyObservers = %@, cacheKey = %@", buf, 0x48u);

      v11 = v32;
      v16 = v33;
    }

    if (((v16 | !v5) & 1) == 0)
    {
      [(GEOObserverHashTable *)self->_observers homeDataProvidingObjectDidUpdate:self];
    }
  }
}

- (HomeResult)homeResult
{
  v3 = [(HomeResult *)self->_result responseResult];
  v4 = [v3 isSuccess];

  if (v4)
  {
    v5 = self->_result;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    v3 = a3;
    self->_active = a3;
    v6 = sub_1000410AC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      v10 = @"NO";
      if (v3)
      {
        v10 = @"YES";
      }

      v11 = v10;
      v17 = 138412802;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@ %@%@", &v17, 0x20u);
    }

    locationManager = self->_locationManager;
    if (v3)
    {
      [(MKLocationManager *)locationManager startLocationUpdateWithObserver:self];
      [(GEONetworkObserver *)self->_networkObserver addNetworkReachableObserver:self selector:"_networkReachabilityDidChange"];
      v13 = +[NSNotificationCenter defaultCenter];
      [v13 addObserver:self selector:"countryConfigurationDidChange:" name:GEOCountryConfigurationCountryCodeDidChangeNotification object:0];

      v14 = +[NSNotificationCenter defaultCenter];
      [v14 addObserver:self selector:"countryConfigurationDidChange:" name:GEOCountryConfigurationProvidersDidChangeNotification object:0];

      [(HomeResultDataProvider *)self _refreshCachedResultAndNotifyObservers:0];
      [(HomeResultDataProvider *)self _createExpirationTimerIfNeeded];
    }

    else
    {
      [(MKLocationManager *)locationManager stopLocationUpdateWithObserver:self];
      [(GEONetworkObserver *)self->_networkObserver removeNetworkReachableObserver:self];
      v15 = +[NSNotificationCenter defaultCenter];
      [v15 removeObserver:self name:GEOCountryConfigurationCountryCodeDidChangeNotification object:0];

      v16 = +[NSNotificationCenter defaultCenter];
      [v16 removeObserver:self name:GEOCountryConfigurationProvidersDidChangeNotification object:0];

      [(HomeResultDataProvider *)self _cancelTicket];
      [(HomeResultDataProvider *)self _cancelExpirationTimer];
    }
  }
}

- (void)dealloc
{
  [(HomeResultDataProvider *)self _cancelTicket];
  [(HomeResultDataProvider *)self _cancelExpirationTimer];
  v3.receiver = self;
  v3.super_class = HomeResultDataProvider;
  [(HomeResultDataProvider *)&v3 dealloc];
}

- (HomeResultDataProvider)initWithDelegate:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = HomeResultDataProvider;
  v5 = [(HomeResultDataProvider *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = +[MKLocationManager sharedLocationManager];
    locationManager = v6->_locationManager;
    v6->_locationManager = v7;

    v9 = +[GEONetworkObserver sharedNetworkObserver];
    networkObserver = v6->_networkObserver;
    v6->_networkObserver = v9;

    v11 = objc_alloc_init(HomeResultCache);
    cache = v6->_cache;
    v6->_cache = v11;
  }

  return v6;
}

@end