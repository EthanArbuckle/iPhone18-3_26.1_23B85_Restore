@interface OfflineMapsFeatureDiscoverySource
- (GEOObserverHashTable)observers;
- (OfflineMapsFeatureDiscoveryActionDelegate)actionDelegate;
- (OfflineMapsFeatureDiscoverySource)initWithInsights:(id)insights locationUpdater:(id)updater isActive:(BOOL)active;
- (void)_notifyObservers;
- (void)_showTipFromModelData:(id)data;
- (void)didUpdateLocation:(id)location;
- (void)updateFeatureEligibility;
@end

@implementation OfflineMapsFeatureDiscoverySource

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

- (void)updateFeatureEligibility
{
  if (self->_active)
  {
    v4 = +[UIDevice currentDevice];
    if ([v4 userInterfaceIdiom])
    {
      v5 = +[UIDevice currentDevice];
      userInterfaceIdiom = [v5 userInterfaceIdiom];

      if (userInterfaceIdiom != 1)
      {
        v7 = sub_10003D9F4();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = objc_opt_class();
          v9 = v8;
          v10 = NSStringFromSelector(a2);
          v14 = 138412546;
          v15 = v8;
          v16 = 2112;
          v17 = v10;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%@ %@: Offline Maps tip is only supported on iPhone and iPad.", &v14, 0x16u);
        }

        goto LABEL_13;
      }
    }

    else
    {
    }

    if (([(MapsLocationUpdater *)self->_locationUpdater startLocationUpdatesForDelegate:self]& 1) != 0)
    {
      return;
    }

    v7 = sub_10003D9F4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      v11 = "Could not start location updater for Offline Tip.";
      v12 = v7;
      v13 = OS_LOG_TYPE_ERROR;
      goto LABEL_12;
    }
  }

  else
  {
    v7 = sub_10003D9F4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      v11 = "The Offline Maps feature is NOT active. Is the feature flag on?";
      v12 = v7;
      v13 = OS_LOG_TYPE_INFO;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v12, v13, v11, &v14, 2u);
    }
  }

LABEL_13:
}

- (OfflineMapsFeatureDiscoveryActionDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (void)didUpdateLocation:(id)location
{
  locationCopy = location;
  v5 = sub_10003D9F4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    latLng = [locationCopy latLng];
    [latLng lat];
    v8 = v7;
    latLng2 = [locationCopy latLng];
    [latLng2 lng];
    *buf = 134283777;
    v17 = v8;
    v18 = 2049;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Offline Maps Tip - Received Location Update at %{private}f, %{private}f", buf, 0x16u);
  }

  [(MapsLocationUpdater *)self->_locationUpdater stopLocationUpdates];
  v11 = CLLocationFromGEOLocation();
  MapsSuggestionsSetMostRecentLocation();

  objc_initWeak(buf, self);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1007F4860;
  v13[3] = &unk_101661340;
  objc_copyWeak(&v15, buf);
  v14 = locationCopy;
  v12 = locationCopy;
  dispatch_async(&_dispatch_main_q, v13);

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (void)_showTipFromModelData:(id)data
{
  dataCopy = data;
  objc_initWeak(location, self);
  v5 = [FeatureDiscoveryModel alloc];
  tipImage = [dataCopy tipImage];
  tipTitle = [dataCopy tipTitle];
  tipSubtitle = [dataCopy tipSubtitle];
  tipActionTitle = [dataCopy tipActionTitle];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1007F4CEC;
  v23[3] = &unk_101661340;
  objc_copyWeak(&v25, location);
  v10 = dataCopy;
  v24 = v10;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1007F4E98;
  v20[3] = &unk_101661340;
  objc_copyWeak(&v22, location);
  v21 = v10;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1007F4FC8;
  v17[3] = &unk_101661340;
  v11 = v21;
  v18 = v11;
  objc_copyWeak(&v19, location);
  LOBYTE(v14) = 1;
  v12 = [(FeatureDiscoveryModel *)v5 initWithImage:tipImage title:tipTitle subtitle:tipSubtitle actionTitle:tipActionTitle actionHandler:v23 bodyTapHandler:0 displayedHandler:v20 dismissHandler:v17 disableAffordanceAfterAction:v14];
  model = self->_model;
  self->_model = v12;

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007F50D0;
  block[3] = &unk_101661B98;
  objc_copyWeak(&v16, location);
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v19);

  objc_destroyWeak(&v22);
  objc_destroyWeak(&v25);
  objc_destroyWeak(location);
}

- (void)_notifyObservers
{
  if (self->_active)
  {
    [(GEOObserverHashTable *)self->_observers homeDataProvidingObjectDidUpdate:self];
  }
}

- (OfflineMapsFeatureDiscoverySource)initWithInsights:(id)insights locationUpdater:(id)updater isActive:(BOOL)active
{
  insightsCopy = insights;
  updaterCopy = updater;
  v19.receiver = self;
  v19.super_class = OfflineMapsFeatureDiscoverySource;
  v11 = [(OfflineMapsFeatureDiscoverySource *)&v19 init];
  if (v11)
  {
    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.Maps.Home.OfflineMapsTip", v12);
    queue = v11->_queue;
    v11->_queue = v13;

    objc_storeStrong(&v11->_msgInsights, insights);
    model = v11->_model;
    v11->_model = 0;

    objc_storeStrong(&v11->_locationUpdater, updater);
    v16 = [[OfflineMapsSuggestionsDataProvider alloc] initWithClientType:1 callbackQueue:v11->_queue];
    dataProvider = v11->_dataProvider;
    v11->_dataProvider = v16;

    v11->_active = active;
    v11->_showFeature = 0;
  }

  return v11;
}

@end