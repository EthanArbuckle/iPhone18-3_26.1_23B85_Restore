@interface MapsOfflineUIHelper
+ (MapsOfflineUIHelper)sharedHelper;
+ (int64_t)idealDisplayAspectRatio:(id)ratio;
- (BOOL)_isRegionDownloaded:(id)downloaded requireFullyDownloaded:(BOOL)fullyDownloaded coverageRequirement:(double)requirement forSubscriptionInfos:(id)infos;
- (BOOL)isRegionDownloaded:(id)downloaded requireFullyDownloaded:(BOOL)fullyDownloaded;
- (BOOL)isRegionDownloaded:(id)downloaded requireFullyDownloaded:(BOOL)fullyDownloaded coverageRequirement:(double)requirement;
- (BOOL)isUsingForcedOfflineMaps;
- (MapsOfflineUIHelper)init;
- (id)_subscriptionInfoForRegion:(id)region requireContainment:(BOOL)containment fromSubscriptionInfos:(id)infos;
- (id)determineEstimatedSizeForSubscriptionWithRegion:(id)region completionHandler:(id)handler;
- (id)subscriptionInfoForRegion:(id)region requireContainment:(BOOL)containment;
- (int64_t)cellularBehaviorForDownloadOfSize:(int64_t)size forForcedDownload:(BOOL)download;
- (void)_commonInit;
- (void)_postSubscriptionsDidChangeNotification;
- (void)_reloadLastUpdatedDates;
- (void)_reloadPairedDeviceSubscriptionInfos;
- (void)_reloadSubscriptionInfosWithCompletion:(id)completion;
- (void)_reloadSubscriptions;
- (void)_startedUpdatingSubscription:(id)subscription;
- (void)_stoppedUpdatingSubscription:(id)subscription;
- (void)_subscriptionsDidChange;
- (void)_updateExpiredSubscriptionsCount;
- (void)_updateTotalDataSize;
- (void)_updateUsingOfflineMaps;
- (void)addKVOForSubscriptionInfo:(id)info;
- (void)addSubscriptionWithRegion:(id)region name:(id)name completion:(id)completion;
- (void)dealloc;
- (void)forceUpdateAllSubscriptionsWithMode:(unint64_t)mode;
- (void)getAvailableDiskSpaceForPairedDeviceWithCompletionHandler:(id)handler;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pauseDownloadForSubscriptionInfo:(id)info;
- (void)removeKVOForSubscriptionInfo:(id)info;
- (void)restoreExpiredSubscription:(id)subscription completionHandler:(id)handler;
- (void)resumeDownloadForSubscriptionInfo:(id)info mode:(unint64_t)mode;
- (void)resumeDownloadForSubscriptionWithIdentifier:(id)identifier mode:(unint64_t)mode;
- (void)setFullyLoadedSubscriptionsCount:(unint64_t)count;
- (void)setOutOfDateSubscriptionsCount:(unint64_t)count;
- (void)setPairedDeviceSubscriptionStatesMonitorCount:(int64_t)count;
- (void)setSubscriptionInfo:(id)info shouldSyncToPairedDevice:(BOOL)device completionHandler:(id)handler;
- (void)setSubscriptionInfos:(id)infos;
- (void)setUpdatingSubscriptions:(id)subscriptions;
- (void)setUsingOfflineMaps:(BOOL)maps;
- (void)startMonitoringPairedDeviceSubscriptionStates;
- (void)stopMonitoringPairedDeviceSubscriptionStates;
- (void)updateName:(id)name forSubscriptionInfo:(id)info completion:(id)completion;
- (void)updateRegion:(id)region forSubscriptionInfo:(id)info completion:(id)completion;
@end

@implementation MapsOfflineUIHelper

+ (int64_t)idealDisplayAspectRatio:(id)ratio
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

- (void)setUsingOfflineMaps:(BOOL)maps
{
  usingOfflineMaps = self->_usingOfflineMaps;
  if (usingOfflineMaps != maps)
  {
    self->_usingOfflineMaps = maps;
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
  isUsingOffline = [v3 isUsingOffline];

  [(MapsOfflineUIHelper *)self setUsingOfflineMaps:isUsingOffline];
}

- (BOOL)isUsingForcedOfflineMaps
{
  v2 = +[GEOOfflineService shared];
  state = [v2 state];
  v4 = state;
  if (state < 2u)
  {
LABEL_10:
    LOBYTE(v6) = 0;
    goto LABEL_11;
  }

  if (state != 2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_3C47C(v4);
    }

    goto LABEL_10;
  }

  v5 = HIBYTE(state);
  if (HIBYTE(state) >= 3u)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_3C3FC(v5);
    }

    goto LABEL_10;
  }

  v6 = 4u >> (HIBYTE(state) & 7);
LABEL_11:

  return v6 & 1;
}

- (void)addSubscriptionWithRegion:(id)region name:(id)name completion:(id)completion
{
  regionCopy = region;
  nameCopy = name;
  completionCopy = completion;
  v32 = nameCopy;
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
  subscriptions = [(MapsOfflineUIHelper *)self subscriptions];
  v14 = [subscriptions countByEnumeratingWithState:&v36 objects:v44 count:16];
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
          objc_enumerationMutation(subscriptions);
        }

        v18 = *(*(&v36 + 1) + 8 * i);
        displayName = [v18 displayName];
        if (displayName)
        {
          v20 = displayName;
          displayName2 = [v18 displayName];
          v22 = [displayName2 isEqualToString:v12];

          if (v22)
          {

            ++v9;
            goto LABEL_2;
          }
        }
      }

      v15 = [subscriptions countByEnumeratingWithState:&v36 objects:v44 count:16];
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
  uUIDString = [v24 UUIDString];
  v26 = [NSString stringWithFormat:@"%@%@", @"com.apple.Maps.offline.", uUIDString];

  subscriptionManager = [(MapsOfflineUIHelper *)self subscriptionManager];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_33AF4;
  v33[3] = &unk_80300;
  v34 = v26;
  v35 = completionCopy;
  v28 = v26;
  v29 = completionCopy;
  [subscriptionManager addSubscriptionWithIdentifier:v28 dataTypes:1024 policy:1 region:regionCopy displayName:v12 expirationDate:0 callbackQueue:&_dispatch_main_q completionHandler:v33];
}

- (void)pauseDownloadForSubscriptionInfo:(id)info
{
  infoCopy = info;
  subscriptionManager = [(MapsOfflineUIHelper *)self subscriptionManager];
  subscription = [infoCopy subscription];

  identifier = [subscription identifier];
  [subscriptionManager cancelDownloadForSubscriptionIdentifier:identifier];
}

- (void)resumeDownloadForSubscriptionInfo:(id)info mode:(unint64_t)mode
{
  infoCopy = info;
  subscriptionManager = [(MapsOfflineUIHelper *)self subscriptionManager];
  subscription = [infoCopy subscription];

  identifier = [subscription identifier];
  [subscriptionManager startDownloadForSubscriptionIdentifier:identifier mode:mode];
}

- (void)resumeDownloadForSubscriptionWithIdentifier:(id)identifier mode:(unint64_t)mode
{
  identifierCopy = identifier;
  subscriptionManager = [(MapsOfflineUIHelper *)self subscriptionManager];
  [subscriptionManager startDownloadForSubscriptionIdentifier:identifierCopy mode:mode];
}

- (void)restoreExpiredSubscription:(id)subscription completionHandler:(id)handler
{
  subscriptionCopy = subscription;
  handlerCopy = handler;
  subscriptionManager = [(MapsOfflineUIHelper *)self subscriptionManager];
  identifier = [subscriptionCopy identifier];
  dataTypes = [subscriptionCopy dataTypes];
  policy = [subscriptionCopy policy];
  region = [subscriptionCopy region];
  displayName = [subscriptionCopy displayName];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_33E18;
  v16[3] = &unk_80328;
  v17 = subscriptionCopy;
  v18 = handlerCopy;
  v14 = handlerCopy;
  v15 = subscriptionCopy;
  [subscriptionManager addSubscriptionWithIdentifier:identifier dataTypes:dataTypes policy:policy region:region displayName:displayName expirationDate:0 callbackQueue:&_dispatch_main_q completionHandler:v16];
}

- (void)updateRegion:(id)region forSubscriptionInfo:(id)info completion:(id)completion
{
  completionCopy = completion;
  regionCopy = region;
  subscription = [info subscription];
  subscriptionManager = [(MapsOfflineUIHelper *)self subscriptionManager];
  identifier = [subscription identifier];
  dataTypes = [subscription dataTypes];
  policy = [subscription policy];
  displayName = [subscription displayName];
  expirationDate = [subscription expirationDate];
  [subscriptionManager addSubscriptionWithIdentifier:identifier dataTypes:dataTypes policy:policy region:regionCopy displayName:displayName expirationDate:expirationDate callbackQueue:&_dispatch_main_q completionHandler:completionCopy];
}

- (void)updateName:(id)name forSubscriptionInfo:(id)info completion:(id)completion
{
  completionCopy = completion;
  nameCopy = name;
  subscription = [info subscription];
  subscriptionManager = [(MapsOfflineUIHelper *)self subscriptionManager];
  identifier = [subscription identifier];
  dataTypes = [subscription dataTypes];
  policy = [subscription policy];
  region = [subscription region];
  expirationDate = [subscription expirationDate];
  [subscriptionManager addSubscriptionWithIdentifier:identifier dataTypes:dataTypes policy:policy region:region displayName:nameCopy expirationDate:expirationDate callbackQueue:&_dispatch_main_q completionHandler:completionCopy];
}

- (id)determineEstimatedSizeForSubscriptionWithRegion:(id)region completionHandler:(id)handler
{
  handlerCopy = handler;
  regionCopy = region;
  subscriptionManager = [(MapsOfflineUIHelper *)self subscriptionManager];
  v9 = [subscriptionManager determineEstimatedSizeForSubscriptionWithRegion:regionCopy dataTypes:1024 queue:&_dispatch_main_q completionHandler:handlerCopy];

  return v9;
}

- (void)getAvailableDiskSpaceForPairedDeviceWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  availableDiskSpaceForPairedDevice = [(MapsOfflineUIHelper *)self availableDiskSpaceForPairedDevice];

  if (availableDiskSpaceForPairedDevice)
  {
    availableDiskSpaceForPairedDevice2 = [(MapsOfflineUIHelper *)self availableDiskSpaceForPairedDevice];
    handlerCopy[2](handlerCopy, [availableDiskSpaceForPairedDevice2 longLongValue], 0);
  }

  else
  {
    objc_initWeak(&location, self);
    subscriptionManager = [(MapsOfflineUIHelper *)self subscriptionManager];
    v8 = &_dispatch_main_q;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_34334;
    v9[3] = &unk_80350;
    v10 = handlerCopy;
    objc_copyWeak(&v11, &location);
    [subscriptionManager fetchAvailableDiskSpaceForPairedDeviceOfflineSubscriptionsWithQueue:&_dispatch_main_q completionHandler:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (void)_subscriptionsDidChange
{
  observers = self->_observers;
  subscriptionInfos = [(MapsOfflineUIHelper *)self subscriptionInfos];
  [(GEOObserverHashTable *)observers subscriptionInfosDidChange:subscriptionInfos];

  [(MapsOfflineUIHelper *)self _postSubscriptionsDidChangeNotification];
}

- (void)_postSubscriptionsDidChangeNotification
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"OfflineMapsSubscriptionsDidChangeNotification" object:self];
}

- (void)setOutOfDateSubscriptionsCount:(unint64_t)count
{
  outOfDateSubscriptionsCount = self->_outOfDateSubscriptionsCount;
  if (outOfDateSubscriptionsCount != count)
  {
    self->_outOfDateSubscriptionsCount = count;
    if ((count != 0) == (outOfDateSubscriptionsCount == 0))
    {
      [(GEOObserverHashTable *)self->_observers subscriptionsNeedUpdatingDidChange:count != 0];
    }
  }
}

- (void)setFullyLoadedSubscriptionsCount:(unint64_t)count
{
  fullyLoadedSubscriptionsCount = self->_fullyLoadedSubscriptionsCount;
  if (fullyLoadedSubscriptionsCount != count)
  {
    self->_fullyLoadedSubscriptionsCount = count;
    if ((count != 0) == (fullyLoadedSubscriptionsCount == 0))
    {
      [(GEOObserverHashTable *)self->_observers hasFullyLoadedSubscriptionsDidChange:count != 0];
    }
  }
}

- (void)forceUpdateAllSubscriptionsWithMode:(unint64_t)mode
{
  subscriptionManager = [(MapsOfflineUIHelper *)self subscriptionManager];
  [subscriptionManager forceUpdateForUserInitiatedSubscriptionsForDataType:1024 mode:mode];
}

- (void)_reloadLastUpdatedDates
{
  objc_initWeak(&location, self);
  subscriptionManager = [(MapsOfflineUIHelper *)self subscriptionManager];
  v4 = &_dispatch_main_q;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_3476C;
  v8[3] = &unk_80378;
  objc_copyWeak(&v9, &location);
  [subscriptionManager fetchLastUpdatedDateForPairedDeviceOfflineSubscriptionsWithQueue:&_dispatch_main_q completionHandler:v8];

  subscriptionManager2 = [(MapsOfflineUIHelper *)self subscriptionManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_3486C;
  v6[3] = &unk_80378;
  objc_copyWeak(&v7, &location);
  [subscriptionManager2 fetchLastUpdatedDateForOfflineSubscriptionsWithQueue:&_dispatch_main_q completionHandler:v6];

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

- (void)_reloadSubscriptionInfosWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v5 = [NSString stringWithFormat:@"%@*", @"com.apple.Maps.offline."];
  subscriptionManager = [(MapsOfflineUIHelper *)self subscriptionManager];
  v14 = v5;
  v7 = [NSArray arrayWithObjects:&v14 count:1];
  v8 = &_dispatch_main_q;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_34B60;
  v10[3] = &unk_80430;
  objc_copyWeak(&v12, &location);
  v9 = completionCopy;
  v11 = v9;
  [subscriptionManager fetchSubscriptionsWithIdentifiers:v7 callbackQueue:&_dispatch_main_q completionHandler:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)_updateExpiredSubscriptionsCount
{
  objc_initWeak(&location, self);
  subscriptionManager = [(MapsOfflineUIHelper *)self subscriptionManager];
  v4 = &_dispatch_main_q;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_3C110;
  v5[3] = &unk_7FD28;
  objc_copyWeak(&v6, &location);
  [subscriptionManager fetchAllExpiredSubscriptionsWithCallbackQueue:&_dispatch_main_q completionHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_updateTotalDataSize
{
  objc_initWeak(&location, self);
  subscriptionManager = [(MapsOfflineUIHelper *)self subscriptionManager];
  v4 = &_dispatch_main_q;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_35714;
  v5[3] = &unk_80458;
  objc_copyWeak(&v6, &location);
  [subscriptionManager _calculateTotalSizeOfOfflineSubscriptionsWithCallbackQueue:&_dispatch_main_q completionHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)setSubscriptionInfos:(id)infos
{
  infosCopy = infos;
  subscriptionInfos = self->_subscriptionInfos;
  if (subscriptionInfos != infosCopy)
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

    v11 = [(NSArray *)infosCopy copy];
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
  subscriptionManager = [(MapsOfflineUIHelper *)self subscriptionManager];
  v4 = &_dispatch_main_q;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_35AA4;
  v5[3] = &unk_7FD28;
  objc_copyWeak(&v6, &location);
  [subscriptionManager fetchSubscriptionIdentifiersToSyncToPairedDeviceWithQueue:&_dispatch_main_q completionHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)setSubscriptionInfo:(id)info shouldSyncToPairedDevice:(BOOL)device completionHandler:(id)handler
{
  deviceCopy = device;
  handlerCopy = handler;
  infoCopy = info;
  subscriptionManager = [(MapsOfflineUIHelper *)self subscriptionManager];
  subscription = [infoCopy subscription];

  identifier = [subscription identifier];
  [subscriptionManager setSubscriptionWithIdentifier:identifier shouldSyncToPairedDevice:deviceCopy callbackQueue:&_dispatch_main_q completionHandler:handlerCopy];
}

- (void)addKVOForSubscriptionInfo:(id)info
{
  infoCopy = info;
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
        state = [infoCopy state];
        [state addObserver:self forKeyPath:v10 options:3 context:off_96490];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)removeKVOForSubscriptionInfo:(id)info
{
  infoCopy = info;
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
        state = [infoCopy state];
        [state removeObserver:self forKeyPath:v10 context:off_96490];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (off_96490 != context)
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

  if ([qword_96D58 containsObject:pathCopy])
  {
    v13 = [changeCopy copy];
    objc_initWeak(&location, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_364DC;
    block[3] = &unk_804A8;
    objc_copyWeak(&v21, &location);
    v17 = objectCopy;
    v18 = pathCopy;
    v19 = changeCopy;
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
    [(MapsOfflineUIHelper *)&v15 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (BOOL)isRegionDownloaded:(id)downloaded requireFullyDownloaded:(BOOL)fullyDownloaded
{
  fullyDownloadedCopy = fullyDownloaded;
  downloadedCopy = downloaded;
  GEOConfigGetDouble();
  LOBYTE(fullyDownloadedCopy) = [(MapsOfflineUIHelper *)self isRegionDownloaded:downloadedCopy requireFullyDownloaded:fullyDownloadedCopy coverageRequirement:?];

  return fullyDownloadedCopy;
}

- (BOOL)isRegionDownloaded:(id)downloaded requireFullyDownloaded:(BOOL)fullyDownloaded coverageRequirement:(double)requirement
{
  fullyDownloadedCopy = fullyDownloaded;
  downloadedCopy = downloaded;
  subscriptionInfos = [(MapsOfflineUIHelper *)self subscriptionInfos];
  LOBYTE(fullyDownloadedCopy) = [(MapsOfflineUIHelper *)self _isRegionDownloaded:downloadedCopy requireFullyDownloaded:fullyDownloadedCopy coverageRequirement:subscriptionInfos forSubscriptionInfos:requirement];

  return fullyDownloadedCopy;
}

- (BOOL)_isRegionDownloaded:(id)downloaded requireFullyDownloaded:(BOOL)fullyDownloaded coverageRequirement:(double)requirement forSubscriptionInfos:(id)infos
{
  fullyDownloadedCopy = fullyDownloaded;
  infosCopy = infos;
  GEOMapRectForMapRegion();
  v9 = +[NSMutableArray array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = infosCopy;
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
        if (!fullyDownloadedCopy || ([*(*(&v31 + 1) + 8 * v14) state], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "loadState"), v16, v17))
        {
          subscription = [v15 subscription];
          region = [subscription region];
          [v9 addObject:region];
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

  return v29 >= requirement;
}

- (id)_subscriptionInfoForRegion:(id)region requireContainment:(BOOL)containment fromSubscriptionInfos:(id)infos
{
  regionCopy = region;
  infosCopy = infos;
  GEOMapRectForMapRegion();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = infosCopy;
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
        subscription = [v14 subscription];
        region = [subscription region];
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

- (int64_t)cellularBehaviorForDownloadOfSize:(int64_t)size forForcedDownload:(BOOL)download
{
  downloadCopy = download;
  v7 = +[GEONetworkObserver sharedNetworkObserver];
  isCellConnection = [v7 isCellConnection];

  if (!isCellConnection)
  {
    return 0;
  }

  if ((GEOConfigGetBOOL() & 1) == 0)
  {
    return downloadCopy;
  }

  hasSubscriptionsNeedingUpdate = [(MapsOfflineUIHelper *)self hasSubscriptionsNeedingUpdate];
  result = 1;
  if ((size & 0x8000000000000000) == 0 && (hasSubscriptionsNeedingUpdate & 1) == 0)
  {
    if (GEOConfigGetUInteger() <= size)
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

- (void)_startedUpdatingSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  if (subscriptionCopy)
  {
    if (!self->_updatingSubscriptions)
    {
      v4 = +[NSMutableSet set];
      updatingSubscriptions = self->_updatingSubscriptions;
      self->_updatingSubscriptions = v4;
    }

    hasSubscriptionsBeingUpdated = [(MapsOfflineUIHelper *)self hasSubscriptionsBeingUpdated];
    [(NSMutableSet *)self->_updatingSubscriptions addObject:subscriptionCopy];
    hasSubscriptionsBeingUpdated2 = [(MapsOfflineUIHelper *)self hasSubscriptionsBeingUpdated];
    if (hasSubscriptionsBeingUpdated != hasSubscriptionsBeingUpdated2)
    {
      [(GEOObserverHashTable *)self->_observers subscriptionsBeingUpdatedDidChange:hasSubscriptionsBeingUpdated2];
    }
  }
}

- (void)_stoppedUpdatingSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  if (subscriptionCopy)
  {
    hasSubscriptionsBeingUpdated = [(MapsOfflineUIHelper *)self hasSubscriptionsBeingUpdated];
    [(NSMutableSet *)self->_updatingSubscriptions removeObject:subscriptionCopy];
    hasSubscriptionsBeingUpdated2 = [(MapsOfflineUIHelper *)self hasSubscriptionsBeingUpdated];
    if (hasSubscriptionsBeingUpdated != hasSubscriptionsBeingUpdated2)
    {
      [(GEOObserverHashTable *)self->_observers subscriptionsBeingUpdatedDidChange:hasSubscriptionsBeingUpdated2];
      [(MapsOfflineUIHelper *)self _updateTotalDataSize];
    }
  }
}

- (void)setUpdatingSubscriptions:(id)subscriptions
{
  subscriptionsCopy = subscriptions;
  if ((MapsEquals(subscriptionsCopy, self->_updatingSubscriptions) & 1) == 0)
  {
    hasSubscriptionsBeingUpdated = [(MapsOfflineUIHelper *)self hasSubscriptionsBeingUpdated];
    objc_storeStrong(&self->_updatingSubscriptions, subscriptions);
    hasSubscriptionsBeingUpdated2 = [(MapsOfflineUIHelper *)self hasSubscriptionsBeingUpdated];
    if (hasSubscriptionsBeingUpdated != hasSubscriptionsBeingUpdated2)
    {
      [(GEOObserverHashTable *)self->_observers subscriptionsBeingUpdatedDidChange:hasSubscriptionsBeingUpdated2];
    }
  }
}

- (void)setPairedDeviceSubscriptionStatesMonitorCount:(int64_t)count
{
  if (count < 0)
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
    if (pairedDeviceSubscriptionStatesMonitorCount != count)
    {
      self->_pairedDeviceSubscriptionStatesMonitorCount = count;
      if ((count != 0) == pairedDeviceSubscriptionStatesMonitorCount < 1)
      {
        v6 = MAPSGetOfflineLog();
        v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
        if (count)
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

- (id)subscriptionInfoForRegion:(id)region requireContainment:(BOOL)containment
{
  containmentCopy = containment;
  regionCopy = region;
  if ([(MapsOfflineUIHelper *)self isRegionDownloaded:regionCopy requireFullyDownloaded:0])
  {
    subscriptionInfos = [(MapsOfflineUIHelper *)self subscriptionInfos];
    v8 = [(MapsOfflineUIHelper *)self _subscriptionInfoForRegion:regionCopy requireContainment:containmentCopy fromSubscriptionInfos:subscriptionInfos];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end