@interface MapsDistanceUnitUpdater
- (MapsDistanceUnitUpdater)init;
- (MapsDistanceUnitUpdater)initWithKeyBagNotification:(id)notification;
- (void)_localeDidChange:(id)change;
- (void)_updateDistanceUnit;
- (void)dealloc;
- (void)protectedDataDidBecomeAvailable:(id)available;
- (void)start;
- (void)stop;
@end

@implementation MapsDistanceUnitUpdater

- (void)_updateDistanceUnit
{
  keybagNotification = [(MapsDistanceUnitUpdater *)self keybagNotification];
  v4 = [keybagNotification canAccessFilesWithProtection:3];

  if (v4)
  {
    v5 = +[NSUserDefaults __maps_groupUserDefaults];
    v6 = [v5 stringForKey:@"DistanceUnits"];

    v7 = +[MSPMapsPaths mapsApplicationContainerPaths];
    homeDirectory = [v7 homeDirectory];
    v9 = _CFPreferencesCopyAppValueWithContainer();

    if (v6)
    {
      v10 = @"group container";
      v11 = v6;
    }

    else
    {
      if (!v9)
      {
        v15 = 0;
        v10 = 0;
        goto LABEL_11;
      }

      v10 = @"app container";
      v11 = v9;
    }

    v15 = v11;
LABEL_11:
    if (([v15 isEqualToString:@"Imperial"]& 1) != 0)
    {
      v16 = 0;
      v17 = 2;
    }

    else
    {
      v18 = [v15 isEqualToString:@"Metric"];
      v16 = v18 ^ 1;
      v17 = v18;
    }

    v19 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v21 = 138413314;
      v22 = v6;
      v23 = 2112;
      v24 = v9;
      v25 = 2112;
      v26 = v10;
      v27 = 2112;
      v28 = v15;
      v29 = 2048;
      v30 = v17;
    }

    if (v6 && v9 && ([v6 isEqualToString:v9]& 1) == 0)
    {
      v20 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = 138412546;
        v22 = v9;
        v23 = 2112;
        v24 = v6;
      }
    }

    if ((v16 & 1) == 0)
    {
      [NSLocale _navigation_overrideDistanceUnit:v17];
    }

    goto LABEL_25;
  }

  keybagNotification2 = [(MapsDistanceUnitUpdater *)self keybagNotification];
  v13 = [keybagNotification2 addDataDidBecomeAvailableAfterFirstUnlockObserver:self];

  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v14 = @"NO";
    if (v13)
    {
      v14 = @"YES";
    }

    v21 = 138412290;
    v22 = v14;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "unable to read user defaults because the user has not authenticated yet since boot, observer added %@", &v21, 0xCu);
  }

LABEL_25:
}

- (void)protectedDataDidBecomeAvailable:(id)available
{
  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "protected data did become available", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100B6E8E4;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_localeDidChange:(id)change
{
  changeCopy = change;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v8 = changeCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "locale did change - %@", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100B6EA10;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)stop
{
  if (self->_unitChangedToken)
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "unregistering for changes", v5, 2u);
    }

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:self];

    notify_cancel(self->_unitChangedToken);
    self->_unitChangedToken = 0;
  }
}

- (void)start
{
  p_unitChangedToken = &self->_unitChangedToken;
  if (self->_unitChangedToken < 1)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "registering for changes", buf, 2u);
    }

    objc_initWeak(buf, self);
    v5 = &_dispatch_main_q;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100B6EC8C;
    handler[3] = &unk_101658C08;
    objc_copyWeak(&v8, buf);
    notify_register_dispatch("com.apple.Maps.DistanceUnitsChanged", p_unitChangedToken, &_dispatch_main_q, handler);

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:self selector:"_localeDidChange:" name:NSCurrentLocaleDidChangeNotification object:0];

    [(MapsDistanceUnitUpdater *)self _updateDistanceUnit];
    objc_destroyWeak(&v8);
    objc_destroyWeak(buf);
  }

  else
  {

    [(MapsDistanceUnitUpdater *)self _updateDistanceUnit];
  }
}

- (void)dealloc
{
  [(MapsDistanceUnitUpdater *)self stop];
  v3.receiver = self;
  v3.super_class = MapsDistanceUnitUpdater;
  [(MapsDistanceUnitUpdater *)&v3 dealloc];
}

- (MapsDistanceUnitUpdater)initWithKeyBagNotification:(id)notification
{
  notificationCopy = notification;
  v9.receiver = self;
  v9.super_class = MapsDistanceUnitUpdater;
  v6 = [(MapsDistanceUnitUpdater *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keybagNotification, notification);
  }

  return v7;
}

- (MapsDistanceUnitUpdater)init
{
  v3 = +[GEOKeyBagNotification sharedObject];
  v4 = [(MapsDistanceUnitUpdater *)self initWithKeyBagNotification:v3];

  return v4;
}

@end