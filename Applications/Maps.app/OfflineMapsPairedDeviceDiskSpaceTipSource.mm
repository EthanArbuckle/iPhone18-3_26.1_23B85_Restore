@interface OfflineMapsPairedDeviceDiskSpaceTipSource
+ (id)_actionTitle;
+ (id)_icon;
+ (id)_subtitleWithRequiredDiskSpace:(int64_t)space;
+ (id)_title;
- (GEOObserverHashTable)observers;
- (OfflineMapsPairedDeviceDiskSpaceTipSource)initWithIsActive:(BOOL)active;
- (id)_activePairedDeviceID;
- (void)_hideTip;
- (void)_notifyObservers;
- (void)_showTipWithRequiredDiskSpace:(int64_t)space;
- (void)_updateTipShown;
- (void)dealloc;
- (void)setActive:(BOOL)active;
@end

@implementation OfflineMapsPairedDeviceDiskSpaceTipSource

- (GEOObserverHashTable)observers
{
  observers = self->_observers;
  if (!observers)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v5 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___HomeDataProvidingObserver queue:0];
    v6 = self->_observers;
    self->_observers = v5;

    objc_sync_exit(selfCopy);
    observers = self->_observers;
  }

  return observers;
}

- (id)_activePairedDeviceID
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  getActivePairedDeviceExcludingAltAccount = [v2 getActivePairedDeviceExcludingAltAccount];

  pairingID = [getActivePairedDeviceExcludingAltAccount pairingID];

  return pairingID;
}

- (void)_updateTipShown
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v24 = [v2 objectForKey:@"OfflineMapsPairedDeviceDiskSpaceLastCheckedUUIDKey"];

  _activePairedDeviceID = [(OfflineMapsPairedDeviceDiskSpaceTipSource *)self _activePairedDeviceID];
  uUIDString = [_activePairedDeviceID UUIDString];
  v5 = [v24 isEqual:uUIDString];

  if (v5)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100F771E8;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  else
  {
    v6 = +[NSUserDefaults standardUserDefaults];
    uUIDString2 = [_activePairedDeviceID UUIDString];
    [v6 setObject:uUIDString2 forKey:@"OfflineMapsPairedDeviceDiskSpaceLastCheckedUUIDKey"];

    if (_activePairedDeviceID)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v8 = +[MapsOfflineUIHelper sharedHelper];
      subscriptionInfos = [v8 subscriptionInfos];

      v10 = 0;
      v11 = [subscriptionInfos countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v11)
      {
        v12 = *v29;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v29 != v12)
            {
              objc_enumerationMutation(subscriptionInfos);
            }

            v14 = *(*(&v28 + 1) + 8 * i);
            pairedDeviceState = [v14 pairedDeviceState];
            if (pairedDeviceState)
            {
              pairedDeviceState2 = [v14 pairedDeviceState];
              v17 = [pairedDeviceState2 downloadState] == 0;

              if (!v17)
              {
                state = [v14 state];
                downloadedDataSize = [state downloadedDataSize];

                v10 += downloadedDataSize;
              }
            }
          }

          v11 = [subscriptionInfos countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v11);
      }

      GEOConfigGetDouble();
      v21 = v20;
      objc_initWeak(&location, self);
      v22 = +[MapsOfflineUIHelper sharedHelper];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100F771F0;
      v25[3] = &unk_10165EC70;
      objc_copyWeak(v26, &location);
      v26[1] = (v10 + (v21 * v10));
      [v22 getAvailableDiskSpaceForPairedDeviceWithCompletionHandler:v25];

      objc_destroyWeak(v26);
      objc_destroyWeak(&location);
    }
  }
}

- (void)_showTipWithRequiredDiskSpace:(int64_t)space
{
  self->_showFeature = 1;
  openManageWatchStorageURL = [objc_opt_class() openManageWatchStorageURL];
  objc_initWeak(&location, self);
  v6 = [FeatureDiscoveryModel alloc];
  _icon = [objc_opt_class() _icon];
  _title = [objc_opt_class() _title];
  v9 = [objc_opt_class() _subtitleWithRequiredDiskSpace:space];
  _actionTitle = [objc_opt_class() _actionTitle];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100F77540;
  v17[3] = &unk_101661B18;
  v11 = openManageWatchStorageURL;
  v18 = v11;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100F775A4;
  v15[3] = &unk_101661B98;
  objc_copyWeak(&v16, &location);
  LOBYTE(v14) = 0;
  v12 = [(FeatureDiscoveryModel *)v6 initWithImage:_icon title:_title subtitle:v9 actionTitle:_actionTitle actionHandler:v17 bodyTapHandler:0 displayedHandler:0 dismissHandler:v15 disableAffordanceAfterAction:v14];
  model = self->_model;
  self->_model = v12;

  [(OfflineMapsPairedDeviceDiskSpaceTipSource *)self _notifyObservers];
  objc_destroyWeak(&v16);

  objc_destroyWeak(&location);
}

- (void)_hideTip
{
  self->_showFeature = 0;
  model = self->_model;
  self->_model = 0;

  [(OfflineMapsPairedDeviceDiskSpaceTipSource *)self _notifyObservers];
}

- (void)_notifyObservers
{
  if ([(OfflineMapsPairedDeviceDiskSpaceTipSource *)self active])
  {
    observers = self->_observers;

    [(GEOObserverHashTable *)observers homeDataProvidingObjectDidUpdate:self];
  }
}

- (void)setActive:(BOOL)active
{
  activeCopy = active;
  if (GEOConfigGetBOOL())
  {
    if (self->_active == activeCopy)
    {
      return;
    }

    v5 = sub_10003D8C4();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v11[0] = 67109120;
      v11[1] = activeCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Becoming active: %d", v11, 8u);
    }

    self->_active = activeCopy;
    v6 = +[MapsOfflineUIHelper sharedHelper];
    v7 = v6;
    if (activeCopy)
    {
      [v6 addObserver:self];

      v8 = +[MapsOfflineUIHelper sharedHelper];
      [v8 startMonitoringPairedDeviceSubscriptionStates];

      v9 = +[NSNotificationCenter defaultCenter];
      [v9 addObserver:self selector:"_updateTipShown" name:NRPairedDeviceRegistryDevicesDidUpdateNotification object:0];
    }

    else
    {
      [v6 removeObserver:self];

      v10 = +[MapsOfflineUIHelper sharedHelper];
      [v10 stopMonitoringPairedDeviceSubscriptionStates];

      v9 = +[NSNotificationCenter defaultCenter];
      [v9 removeObserver:self name:NRPairedDeviceRegistryDevicesDidUpdateNotification object:0];
    }
  }

  else
  {
    v9 = sub_10003D8C4();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Maps config has disabled the tip, will not activate.", v11, 2u);
    }
  }
}

- (void)dealloc
{
  v3 = +[MapsOfflineUIHelper sharedHelper];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = OfflineMapsPairedDeviceDiskSpaceTipSource;
  [(OfflineMapsPairedDeviceDiskSpaceTipSource *)&v4 dealloc];
}

- (OfflineMapsPairedDeviceDiskSpaceTipSource)initWithIsActive:(BOOL)active
{
  activeCopy = active;
  v8.receiver = self;
  v8.super_class = OfflineMapsPairedDeviceDiskSpaceTipSource;
  v4 = [(OfflineMapsPairedDeviceDiskSpaceTipSource *)&v8 init];
  if (v4)
  {
    v5 = dispatch_queue_create("com.apple.Maps.Home.OfflineMapsPairedDeviceDiskSpaceTip", 0);
    queue = v4->_queue;
    v4->_queue = v5;

    [(OfflineMapsPairedDeviceDiskSpaceTipSource *)v4 setActive:activeCopy];
  }

  return v4;
}

+ (id)_actionTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"PAIRED_DEVICE_DISK_SPACE_TIP_ACTION_TITLE" value:@"localized string not found" table:@"Offline"];

  return v3;
}

+ (id)_subtitleWithRequiredDiskSpace:(int64_t)space
{
  v3 = [NSByteCountFormatter stringFromByteCount:(llround(space * 0.000001) * 1000000.0) countStyle:2];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"PAIRED_DEVICE_DISK_SPACE_TIP_SUBTITLE" value:@"localized string not found" table:@"Offline"];
  v6 = [NSString localizedStringWithFormat:v5, v3];

  return v6;
}

+ (id)_title
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"PAIRED_DEVICE_DISK_SPACE_TIP_TITLE" value:@"localized string not found" table:@"Offline"];

  return v3;
}

+ (id)_icon
{
  v2 = [UIImageSymbolConfiguration configurationWithPointSize:64.0];
  v3 = [UIImage systemImageNamed:@"arrow.down.applewatch"];
  v4 = [v3 imageByApplyingSymbolConfiguration:v2];

  return v4;
}

@end