@interface MapsOfflineUIHelper
+ (MapsOfflineUIHelper)sharedHelper;
+ (int64_t)idealDisplayAspectRatio:(id)a3;
- (BOOL)_isRegionDownloaded:(id)a3 requireFullyDownloaded:(BOOL)a4 coverageRequirement:(double)a5 forSubscriptionInfos:(id)a6;
- (BOOL)isRegionDownloaded:(id)a3 requireFullyDownloaded:(BOOL)a4;
- (BOOL)isRegionDownloaded:(id)a3 requireFullyDownloaded:(BOOL)a4 coverageRequirement:(double)a5;
- (BOOL)isUsingForcedOfflineMaps;
- (MapsOfflineUIHelper)init;
- (id)_subscriptionInfoForRegion:(id)a3 requireContainment:(BOOL)a4 fromSubscriptionInfos:(id)a5;
- (id)determineEstimatedSizeForSubscriptionWithRegion:(id)a3 completionHandler:(id)a4;
- (id)subscriptionInfoForRegion:(id)a3 requireContainment:(BOOL)a4;
- (int64_t)cellularBehaviorForDownloadOfSize:(int64_t)a3 forForcedDownload:(BOOL)a4;
- (void)_commonInit;
- (void)_postSubscriptionsDidChangeNotification;
- (void)_reloadLastUpdatedDates;
- (void)_reloadPairedDeviceSubscriptionInfos;
- (void)_reloadSubscriptionInfosWithCompletion:(id)a3;
- (void)_reloadSubscriptions;
- (void)_startedUpdatingSubscription:(id)a3;
- (void)_stoppedUpdatingSubscription:(id)a3;
- (void)_subscriptionsDidChange;
- (void)_updateExpiredSubscriptionsCount;
- (void)_updateTotalDataSize;
- (void)_updateUsingOfflineMaps;
- (void)addKVOForSubscriptionInfo:(id)a3;
- (void)addSubscriptionWithRegion:(id)a3 name:(id)a4 completion:(id)a5;
- (void)dealloc;
- (void)forceUpdateAllSubscriptionsWithMode:(unint64_t)a3;
- (void)getAvailableDiskSpaceForPairedDeviceWithCompletionHandler:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pauseDownloadForSubscriptionInfo:(id)a3;
- (void)removeKVOForSubscriptionInfo:(id)a3;
- (void)restoreExpiredSubscription:(id)a3 completionHandler:(id)a4;
- (void)resumeDownloadForSubscriptionInfo:(id)a3 mode:(unint64_t)a4;
- (void)resumeDownloadForSubscriptionWithIdentifier:(id)a3 mode:(unint64_t)a4;
- (void)setFullyLoadedSubscriptionsCount:(unint64_t)a3;
- (void)setOutOfDateSubscriptionsCount:(unint64_t)a3;
- (void)setPairedDeviceSubscriptionStatesMonitorCount:(int64_t)a3;
- (void)setSubscriptionInfo:(id)a3 shouldSyncToPairedDevice:(BOOL)a4 completionHandler:(id)a5;
- (void)setSubscriptionInfos:(id)a3;
- (void)setUpdatingSubscriptions:(id)a3;
- (void)setUsingOfflineMaps:(BOOL)a3;
- (void)startMonitoringPairedDeviceSubscriptionStates;
- (void)stopMonitoringPairedDeviceSubscriptionStates;
- (void)updateName:(id)a3 forSubscriptionInfo:(id)a4 completion:(id)a5;
- (void)updateRegion:(id)a3 forSubscriptionInfo:(id)a4 completion:(id)a5;
@end

@implementation MapsOfflineUIHelper

+ (int64_t)idealDisplayAspectRatio:(id)a3
{
  GEOMapRectForMapRegion();
  v5 = v3 / v4;
  GEOConfigGetDouble();
  if (v5 > v6)
  {
    return 2;
  }

  GEOConfigGetDouble();
  return v5 < v8;
}

+ (MapsOfflineUIHelper)sharedHelper
{
  if (qword_96D48 != -1)
  {
    sub_3C3E8();
  }

  v3 = qword_96D40;

  return v3;
}

- (MapsOfflineUIHelper)init
{
  v5.receiver = self;
  v5.super_class = MapsOfflineUIHelper;
  v2 = [(MapsOfflineUIHelper *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MapsOfflineUIHelper *)v2 _commonInit];
  }

  return v3;
}

- (void)_commonInit
{
  v3 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___MapsOfflineUIObserver queue:&_dispatch_main_q];
  observers = self->_observers;
  self->_observers = v3;

  v5 = +[GEOOfflineService shared];
  self->_usingOfflineMaps = [v5 isUsingOffline];

  v6 = objc_alloc_init(GEOMapDataSubscriptionManager);
  [(MapsOfflineUIHelper *)self setSubscriptionManager:v6];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"_offlineServiceStateChanged" name:GEOOfflineStateChangedNotification object:0];

  objc_initWeak(&location, self);
  v8 = GEOMapDataSubscriptionManagerSubscriptionsDidChangeDarwinNotification;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_33368;
  handler[3] = &unk_802D8;
  objc_copyWeak(&v19, &location);
  notify_register_dispatch(v8, &self->_subscriptionsChangedNotifyToken, &_dispatch_main_q, handler);

  [(MapsOfflineUIHelper *)self _reloadSubscriptions];
  v9 = GEOOfflineDataActiveVersionsDidChangeDarwinNotification;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_333AC;
  v16[3] = &unk_802D8;
  objc_copyWeak(&v17, &location);
  notify_register_dispatch(v9, &self->_activeVersionsChangedNotifyToken, &_dispatch_main_q, v16);

  v10 = GEOMapDataSubscriptionManagerPairedDeviceOfflineLastUpdatedDateDidChangeDarwinNotification;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_333F0;
  v14[3] = &unk_802D8;
  objc_copyWeak(&v15, &location);
  notify_register_dispatch(v10, &self->_pairedDeviceLastUpdatedChangedNotifyToken, &_dispatch_main_q, v14);

  [(MapsOfflineUIHelper *)self _reloadLastUpdatedDates];
  v11 = GEOMapDataSubscriptionManagerPairedDeviceSubscriptionsDidChangeDarwinNotification;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_33434;
  v12[3] = &unk_802D8;
  objc_copyWeak(&v13, &location);
  notify_register_dispatch(v11, &self->_pairedDeviceSubscriptionsChangedNotifyToken, &_dispatch_main_q, v12);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  notify_cancel(self->_subscriptionsChangedNotifyToken);
  self->_subscriptionsChangedNotifyToken = -1;
  notify_cancel(self->_activeVersionsChangedNotifyToken);
  self->_activeVersionsChangedNotifyToken = -1;
  notify_cancel(self->_pairedDeviceLastUpdatedChangedNotifyToken);
  self->_pairedDeviceLastUpdatedChangedNotifyToken = -1;
  notify_cancel(self->_pairedDeviceSubscriptionsChangedNotifyToken);
  self->_pairedDeviceSubscriptionsChangedNotifyToken = -1;
  v3.receiver = self;
  v3.super_class = MapsOfflineUIHelper;
  [(MapsOfflineUIHelper *)&v3 dealloc];
}

- (void)setUsingOfflineMaps:(BOOL)a3
{
  usingOfflineMaps = self->_usingOfflineMaps;
  if (usingOfflineMaps != a3)
  {
    self->_usingOfflineMaps = a3;
    v5 = MAPSGetOfflineLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      if (usingOfflineMaps)
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      v7 = v6;
      if (self->_usingOfflineMaps)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v9 = v8;
      v11 = 138543618;
      v12 = v7;
      v13 = 2114;
      v14 = v9;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "[MapsOfflineUIHelper] posting UsingOfflineMapsStateChangedNotification, wasUsingOfflineMaps: %{public}@, isUsingOfflineMaps: %{public}@", &v11, 0x16u);
    }

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 postNotificationName:@"UsingOfflineMapsStateChangedNotification" object:self];
  }
}

- (void)_updateUsingOfflineMaps
{
  v3 = +[GEOOfflineService shared];
  v4 = [v3 isUsingOffline];

  [(MapsOfflineUIHelper *)self setUsingOfflineMaps:v4];
}

- (BOOL)isUsingForcedOfflineMaps
{
  v2 = +[GEOOfflineService shared];
  v3 = [v2 state];
  v4 = v3;
  if (v3 < 2u)
  {
LABEL_10:
    LOBYTE(v6) = 0;
    goto LABEL_11;
  }

  if (v3 != 2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_3C47C(v4);
    }

    goto LABEL_10;
  }

  v5 = HIBYTE(v3);
  if (HIBYTE(v3) >= 3u)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_3C3FC(v5);
    }

    goto LABEL_10;
  }

  v6 = 4u >> (HIBYTE(v3) & 7);
LABEL_11:

  return v6 & 1;
}

- (void)addSubscriptionWithRegion:(id)a3 name:(id)a4 completion:(id)a5
{
  v31 = a3;
  v8 = a4;
  v30 = a5;
  v32 = v8;
  v9 = 1;
LABEL_2:
  if (v9 <= 1)
  {
    v12 = v32;
  }

  else
  {
    v10 = [NSBundle bundleForClass:NSClassFromString(@"MapsSettingsController")];
    v11 = [v10 localizedStringForKey:@"OFFLINE_REGION_NAME_DUPLICATE_FORMAT" value:@"localized string not found" table:@"Offline"];
    v12 = [NSString localizedStringWithFormat:v11, v32, v9];
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v13 = [(MapsOfflineUIHelper *)self subscriptions];
  v14 = [v13 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v37;
    while (2)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v37 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v36 + 1) + 8 * i);
        v19 = [v18 displayName];
        if (v19)
        {
          v20 = v19;
          v21 = [v18 displayName];
          v22 = [v21 isEqualToString:v12];

          if (v22)
          {

            ++v9;
            goto LABEL_2;
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v36 objects:v44 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  if (([v12 isEqualToString:v32] & 1) == 0)
  {
    v23 = MAPSGetOfflineLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138478083;
      v41 = v32;
      v42 = 2113;
      v43 = v12;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "A region already exists with the name '%{private}@'. Using '%{private}@' instead", buf, 0x16u);
    }
  }

  v24 = +[NSUUID UUID];
  v25 = [v24 UUIDString];
  v26 = [NSString stringWithFormat:@"%@%@", @"com.apple.Maps.offline.", v25];

  v27 = [(MapsOfflineUIHelper *)self subscriptionManager];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_33AF4;
  v33[3] = &unk_80300;
  v34 = v26;
  v35 = v30;
  v28 = v26;
  v29 = v30;
  [v27 addSubscriptionWithIdentifier:v28 dataTypes:1024 policy:1 region:v31 displayName:v12 expirationDate:0 callbackQueue:&_dispatch_main_q completionHandler:v33];
}

- (void)pauseDownloadForSubscriptionInfo:(id)a3
{
  v4 = a3;
  v7 = [(MapsOfflineUIHelper *)self subscriptionManager];
  v5 = [v4 subscription];

  v6 = [v5 identifier];
  [v7 cancelDownloadForSubscriptionIdentifier:v6];
}

- (void)resumeDownloadForSubscriptionInfo:(id)a3 mode:(unint64_t)a4
{
  v6 = a3;
  v9 = [(MapsOfflineUIHelper *)self subscriptionManager];
  v7 = [v6 subscription];

  v8 = [v7 identifier];
  [v9 startDownloadForSubscriptionIdentifier:v8 mode:a4];
}

- (void)resumeDownloadForSubscriptionWithIdentifier:(id)a3 mode:(unint64_t)a4
{
  v6 = a3;
  v7 = [(MapsOfflineUIHelper *)self subscriptionManager];
  [v7 startDownloadForSubscriptionIdentifier:v6 mode:a4];
}

- (void)restoreExpiredSubscription:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MapsOfflineUIHelper *)self subscriptionManager];
  v9 = [v6 identifier];
  v10 = [v6 dataTypes];
  v11 = [v6 policy];
  v12 = [v6 region];
  v13 = [v6 displayName];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_33E18;
  v16[3] = &unk_80328;
  v17 = v6;
  v18 = v7;
  v14 = v7;
  v15 = v6;
  [v8 addSubscriptionWithIdentifier:v9 dataTypes:v10 policy:v11 region:v12 displayName:v13 expirationDate:0 callbackQueue:&_dispatch_main_q completionHandler:v16];
}

- (void)updateRegion:(id)a3 forSubscriptionInfo:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v16 = [a4 subscription];
  v10 = [(MapsOfflineUIHelper *)self subscriptionManager];
  v11 = [v16 identifier];
  v12 = [v16 dataTypes];
  v13 = [v16 policy];
  v14 = [v16 displayName];
  v15 = [v16 expirationDate];
  [v10 addSubscriptionWithIdentifier:v11 dataTypes:v12 policy:v13 region:v9 displayName:v14 expirationDate:v15 callbackQueue:&_dispatch_main_q completionHandler:v8];
}

- (void)updateName:(id)a3 forSubscriptionInfo:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v16 = [a4 subscription];
  v10 = [(MapsOfflineUIHelper *)self subscriptionManager];
  v11 = [v16 identifier];
  v12 = [v16 dataTypes];
  v13 = [v16 policy];
  v14 = [v16 region];
  v15 = [v16 expirationDate];
  [v10 addSubscriptionWithIdentifier:v11 dataTypes:v12 policy:v13 region:v14 displayName:v9 expirationDate:v15 callbackQueue:&_dispatch_main_q completionHandler:v8];
}

- (id)determineEstimatedSizeForSubscriptionWithRegion:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MapsOfflineUIHelper *)self subscriptionManager];
  v9 = [v8 determineEstimatedSizeForSubscriptionWithRegion:v7 dataTypes:1024 queue:&_dispatch_main_q completionHandler:v6];

  return v9;
}

- (void)getAvailableDiskSpaceForPairedDeviceWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(MapsOfflineUIHelper *)self availableDiskSpaceForPairedDevice];

  if (v5)
  {
    v6 = [(MapsOfflineUIHelper *)self availableDiskSpaceForPairedDevice];
    v4[2](v4, [v6 longLongValue], 0);
  }

  else
  {
    objc_initWeak(&location, self);
    v7 = [(MapsOfflineUIHelper *)self subscriptionManager];
    v8 = &_dispatch_main_q;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_34334;
    v9[3] = &unk_80350;
    v10 = v4;
    objc_copyWeak(&v11, &location);
    [v7 fetchAvailableDiskSpaceForPairedDeviceOfflineSubscriptionsWithQueue:&_dispatch_main_q completionHandler:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (void)_subscriptionsDidChange
{
  observers = self->_observers;
  v4 = [(MapsOfflineUIHelper *)self subscriptionInfos];
  [(GEOObserverHashTable *)observers subscriptionInfosDidChange:v4];

  [(MapsOfflineUIHelper *)self _postSubscriptionsDidChangeNotification];
}

- (void)_postSubscriptionsDidChangeNotification
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"OfflineMapsSubscriptionsDidChangeNotification" object:self];
}

- (void)setOutOfDateSubscriptionsCount:(unint64_t)a3
{
  outOfDateSubscriptionsCount = self->_outOfDateSubscriptionsCount;
  if (outOfDateSubscriptionsCount != a3)
  {
    self->_outOfDateSubscriptionsCount = a3;
    if ((a3 != 0) == (outOfDateSubscriptionsCount == 0))
    {
      [(GEOObserverHashTable *)self->_observers subscriptionsNeedUpdatingDidChange:a3 != 0];
    }
  }
}

- (void)setFullyLoadedSubscriptionsCount:(unint64_t)a3
{
  fullyLoadedSubscriptionsCount = self->_fullyLoadedSubscriptionsCount;
  if (fullyLoadedSubscriptionsCount != a3)
  {
    self->_fullyLoadedSubscriptionsCount = a3;
    if ((a3 != 0) == (fullyLoadedSubscriptionsCount == 0))
    {
      [(GEOObserverHashTable *)self->_observers hasFullyLoadedSubscriptionsDidChange:a3 != 0];
    }
  }
}

- (void)forceUpdateAllSubscriptionsWithMode:(unint64_t)a3
{
  v4 = [(MapsOfflineUIHelper *)self subscriptionManager];
  [v4 forceUpdateForUserInitiatedSubscriptionsForDataType:1024 mode:a3];
}

- (void)_reloadLastUpdatedDates
{
  objc_initWeak(&location, self);
  v3 = [(MapsOfflineUIHelper *)self subscriptionManager];
  v4 = &_dispatch_main_q;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_3476C;
  v8[3] = &unk_80378;
  objc_copyWeak(&v9, &location);
  [v3 fetchLastUpdatedDateForPairedDeviceOfflineSubscriptionsWithQueue:&_dispatch_main_q completionHandler:v8];

  v5 = [(MapsOfflineUIHelper *)self subscriptionManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_3486C;
  v6[3] = &unk_80378;
  objc_copyWeak(&v7, &location);
  [v5 fetchLastUpdatedDateForOfflineSubscriptionsWithQueue:&_dispatch_main_q completionHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_reloadSubscriptions
{
  [(MapsOfflineUIHelper *)self _reloadSubscriptionInfosWithCompletion:0];
  [(MapsOfflineUIHelper *)self _updateExpiredSubscriptionsCount];

  [(MapsOfflineUIHelper *)self _updateTotalDataSize];
}

- (void)_reloadSubscriptionInfosWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [NSString stringWithFormat:@"%@*", @"com.apple.Maps.offline."];
  v6 = [(MapsOfflineUIHelper *)self subscriptionManager];
  v14 = v5;
  v7 = [NSArray arrayWithObjects:&v14 count:1];
  v8 = &_dispatch_main_q;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_34B60;
  v10[3] = &unk_80430;
  objc_copyWeak(&v12, &location);
  v9 = v4;
  v11 = v9;
  [v6 fetchSubscriptionsWithIdentifiers:v7 callbackQueue:&_dispatch_main_q completionHandler:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)_updateExpiredSubscriptionsCount
{
  objc_initWeak(&location, self);
  v3 = [(MapsOfflineUIHelper *)self subscriptionManager];
  v4 = &_dispatch_main_q;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_3C110;
  v5[3] = &unk_7FD28;
  objc_copyWeak(&v6, &location);
  [v3 fetchAllExpiredSubscriptionsWithCallbackQueue:&_dispatch_main_q completionHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_updateTotalDataSize
{
  objc_initWeak(&location, self);
  v3 = [(MapsOfflineUIHelper *)self subscriptionManager];
  v4 = &_dispatch_main_q;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_35714;
  v5[3] = &unk_80458;
  objc_copyWeak(&v6, &location);
  [v3 _calculateTotalSizeOfOfflineSubscriptionsWithCallbackQueue:&_dispatch_main_q completionHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)setSubscriptionInfos:(id)a3
{
  v4 = a3;
  subscriptionInfos = self->_subscriptionInfos;
  if (subscriptionInfos != v4)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = subscriptionInfos;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        v10 = 0;
        do
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [(MapsOfflineUIHelper *)self removeKVOForSubscriptionInfo:*(*(&v22 + 1) + 8 * v10)];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v8);
    }

    v11 = [(NSArray *)v4 copy];
    v12 = self->_subscriptionInfos;
    self->_subscriptionInfos = v11;

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v13 = self->_subscriptionInfos;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v19;
      do
      {
        v17 = 0;
        do
        {
          if (*v19 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [(MapsOfflineUIHelper *)self addKVOForSubscriptionInfo:*(*(&v18 + 1) + 8 * v17), v18];
          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v15);
    }
  }
}

- (void)startMonitoringPairedDeviceSubscriptionStates
{
  v3 = [(MapsOfflineUIHelper *)self pairedDeviceSubscriptionStatesMonitorCount]+ 1;

  [(MapsOfflineUIHelper *)self setPairedDeviceSubscriptionStatesMonitorCount:v3];
}

- (void)stopMonitoringPairedDeviceSubscriptionStates
{
  v3 = [(MapsOfflineUIHelper *)self pairedDeviceSubscriptionStatesMonitorCount]- 1;

  [(MapsOfflineUIHelper *)self setPairedDeviceSubscriptionStatesMonitorCount:v3];
}

- (void)_reloadPairedDeviceSubscriptionInfos
{
  objc_initWeak(&location, self);
  v3 = [(MapsOfflineUIHelper *)self subscriptionManager];
  v4 = &_dispatch_main_q;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_35AA4;
  v5[3] = &unk_7FD28;
  objc_copyWeak(&v6, &location);
  [v3 fetchSubscriptionIdentifiersToSyncToPairedDeviceWithQueue:&_dispatch_main_q completionHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)setSubscriptionInfo:(id)a3 shouldSyncToPairedDevice:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v12 = [(MapsOfflineUIHelper *)self subscriptionManager];
  v10 = [v9 subscription];

  v11 = [v10 identifier];
  [v12 setSubscriptionWithIdentifier:v11 shouldSyncToPairedDevice:v5 callbackQueue:&_dispatch_main_q completionHandler:v8];
}

- (void)addKVOForSubscriptionInfo:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  if (qword_96D50 != -1)
  {
    sub_3C4FC();
  }

  v5 = qword_96D58;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [v4 state];
        [v11 addObserver:self forKeyPath:v10 options:3 context:off_96490];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)removeKVOForSubscriptionInfo:(id)a3
{
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  if (qword_96D50 != -1)
  {
    sub_3C4FC();
  }

  v5 = qword_96D58;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [v4 state];
        [v11 removeObserver:self forKeyPath:v10 context:off_96490];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (off_96490 != a6)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  if (qword_96D50 != -1)
  {
    sub_3C4FC();
  }

  if ([qword_96D58 containsObject:v10])
  {
    v13 = [v12 copy];
    objc_initWeak(&location, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_364DC;
    block[3] = &unk_804A8;
    objc_copyWeak(&v21, &location);
    v17 = v11;
    v18 = v10;
    v19 = v12;
    v20 = v13;
    v14 = v13;
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  else
  {
LABEL_7:
    v15.receiver = self;
    v15.super_class = MapsOfflineUIHelper;
    [(MapsOfflineUIHelper *)&v15 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (BOOL)isRegionDownloaded:(id)a3 requireFullyDownloaded:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  GEOConfigGetDouble();
  LOBYTE(v4) = [(MapsOfflineUIHelper *)self isRegionDownloaded:v6 requireFullyDownloaded:v4 coverageRequirement:?];

  return v4;
}

- (BOOL)isRegionDownloaded:(id)a3 requireFullyDownloaded:(BOOL)a4 coverageRequirement:(double)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [(MapsOfflineUIHelper *)self subscriptionInfos];
  LOBYTE(v6) = [(MapsOfflineUIHelper *)self _isRegionDownloaded:v8 requireFullyDownloaded:v6 coverageRequirement:v9 forSubscriptionInfos:a5];

  return v6;
}

- (BOOL)_isRegionDownloaded:(id)a3 requireFullyDownloaded:(BOOL)a4 coverageRequirement:(double)a5 forSubscriptionInfos:(id)a6
{
  v7 = a4;
  v8 = a6;
  GEOMapRectForMapRegion();
  v9 = +[NSMutableArray array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v32;
    do
    {
      v14 = 0;
      do
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v31 + 1) + 8 * v14);
        if (!v7 || ([*(*(&v31 + 1) + 8 * v14) state], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "loadState"), v16, v17))
        {
          v18 = [v15 subscription];
          v19 = [v18 region];
          [v9 addObject:v19];
        }

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v12);
  }

  v20 = malloc_type_malloc(32 * [v9 count], 0x1000040E0EAB150uLL);
  if ([v9 count])
  {
    v21 = 0;
    v22 = v20 + 2;
    do
    {
      v23 = [v9 objectAtIndexedSubscript:{v21, v31}];
      GEOMapRectForMapRegion();
      *(v22 - 2) = v24;
      *(v22 - 1) = v25;
      *v22 = v26;
      v22[1] = v27;
      v22 += 4;

      ++v21;
    }

    while (v21 < [v9 count]);
  }

  [v9 count];
  GEOMapRectFractionCoveredByMapRects();
  v29 = v28;
  free(v20);

  return v29 >= a5;
}

- (id)_subscriptionInfoForRegion:(id)a3 requireContainment:(BOOL)a4 fromSubscriptionInfos:(id)a5
{
  v6 = a3;
  v7 = a5;
  GEOMapRectForMapRegion();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v26;
    v24 = 0.0;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        v15 = [v14 subscription];
        v16 = [v15 region];
        GEOMapRectForMapRegion();

        GEOMapRectIntersection();
        v18 = v17;
        v20 = v19;
        if ((GEOMapRectIsNull() & 1) == 0)
        {
          v21 = GEOMapRectIsEmpty() ? 1.0 : v18 * v20;
          if (v21 > v24)
          {
            v22 = v14;

            v11 = v22;
            v24 = v21;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (int64_t)cellularBehaviorForDownloadOfSize:(int64_t)a3 forForcedDownload:(BOOL)a4
{
  v4 = a4;
  v7 = +[GEONetworkObserver sharedNetworkObserver];
  v8 = [v7 isCellConnection];

  if (!v8)
  {
    return 0;
  }

  if ((GEOConfigGetBOOL() & 1) == 0)
  {
    return v4;
  }

  v9 = [(MapsOfflineUIHelper *)self hasSubscriptionsNeedingUpdate];
  result = 1;
  if ((a3 & 0x8000000000000000) == 0 && (v9 & 1) == 0)
  {
    if (GEOConfigGetUInteger() <= a3)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

- (void)_startedUpdatingSubscription:(id)a3
{
  v8 = a3;
  if (v8)
  {
    if (!self->_updatingSubscriptions)
    {
      v4 = +[NSMutableSet set];
      updatingSubscriptions = self->_updatingSubscriptions;
      self->_updatingSubscriptions = v4;
    }

    v6 = [(MapsOfflineUIHelper *)self hasSubscriptionsBeingUpdated];
    [(NSMutableSet *)self->_updatingSubscriptions addObject:v8];
    v7 = [(MapsOfflineUIHelper *)self hasSubscriptionsBeingUpdated];
    if (v6 != v7)
    {
      [(GEOObserverHashTable *)self->_observers subscriptionsBeingUpdatedDidChange:v7];
    }
  }
}

- (void)_stoppedUpdatingSubscription:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v4 = [(MapsOfflineUIHelper *)self hasSubscriptionsBeingUpdated];
    [(NSMutableSet *)self->_updatingSubscriptions removeObject:v6];
    v5 = [(MapsOfflineUIHelper *)self hasSubscriptionsBeingUpdated];
    if (v4 != v5)
    {
      [(GEOObserverHashTable *)self->_observers subscriptionsBeingUpdatedDidChange:v5];
      [(MapsOfflineUIHelper *)self _updateTotalDataSize];
    }
  }
}

- (void)setUpdatingSubscriptions:(id)a3
{
  v7 = a3;
  if ((MapsEquals(v7, self->_updatingSubscriptions) & 1) == 0)
  {
    v5 = [(MapsOfflineUIHelper *)self hasSubscriptionsBeingUpdated];
    objc_storeStrong(&self->_updatingSubscriptions, a3);
    v6 = [(MapsOfflineUIHelper *)self hasSubscriptionsBeingUpdated];
    if (v5 != v6)
    {
      [(GEOObserverHashTable *)self->_observers subscriptionsBeingUpdatedDidChange:v6];
    }
  }
}

- (void)setPairedDeviceSubscriptionStatesMonitorCount:(int64_t)a3
{
  if (a3 < 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: count >= 0", buf, 2u);
    }
  }

  else
  {
    pairedDeviceSubscriptionStatesMonitorCount = self->_pairedDeviceSubscriptionStatesMonitorCount;
    if (pairedDeviceSubscriptionStatesMonitorCount != a3)
    {
      self->_pairedDeviceSubscriptionStatesMonitorCount = a3;
      if ((a3 != 0) == pairedDeviceSubscriptionStatesMonitorCount < 1)
      {
        v6 = MAPSGetOfflineLog();
        v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
        if (a3)
        {
          if (v7)
          {
            sub_37054(&dword_0, v8, v9, "[MapsOfflineUIHelper] start monitoring paired device subscription states", v10, v11, v12, v13, v19, *(&v19 + 1), v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), 0);
          }

          [(MapsOfflineUIHelper *)self _reloadPairedDeviceSubscriptionInfos];
        }

        else
        {
          if (v7)
          {
            sub_37054(&dword_0, v8, v9, "[MapsOfflineUIHelper] stop monitoring paired device subscription states", v10, v11, v12, v13, v19, *(&v19 + 1), v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1), 0);
          }

          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          v14 = self->_subscriptionInfos;
          v15 = [(NSArray *)v14 countByEnumeratingWithState:&v19 objects:v24 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v20;
            do
            {
              v18 = 0;
              do
              {
                if (*v20 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                [*(*(&v19 + 1) + 8 * v18) setPairedDeviceState:{0, v19}];
                v18 = v18 + 1;
              }

              while (v16 != v18);
              v16 = [(NSArray *)v14 countByEnumeratingWithState:&v19 objects:v24 count:16];
            }

            while (v16);
          }
        }
      }
    }
  }
}

- (id)subscriptionInfoForRegion:(id)a3 requireContainment:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if ([(MapsOfflineUIHelper *)self isRegionDownloaded:v6 requireFullyDownloaded:0])
  {
    v7 = [(MapsOfflineUIHelper *)self subscriptionInfos];
    v8 = [(MapsOfflineUIHelper *)self _subscriptionInfoForRegion:v6 requireContainment:v4 fromSubscriptionInfos:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end