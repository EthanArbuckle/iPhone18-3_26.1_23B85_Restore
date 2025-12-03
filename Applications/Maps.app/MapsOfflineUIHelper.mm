@interface MapsOfflineUIHelper
+ (MapsOfflineUIHelper)sharedHelper;
+ (int64_t)idealDisplayAspectRatio:(id)ratio;
- (BOOL)_isRegionDownloaded:(id)downloaded requireFullyDownloaded:(BOOL)fullyDownloaded coverageRequirement:(double)requirement forSubscriptionInfos:(id)infos;
- (BOOL)isRegionDownloaded:(id)downloaded requireFullyDownloaded:(BOOL)fullyDownloaded;
- (BOOL)isRegionDownloaded:(id)downloaded requireFullyDownloaded:(BOOL)fullyDownloaded coverageRequirement:(double)requirement;
- (BOOL)isUsingForcedOfflineMaps;
- (MapsOfflineUIHelper)init;
- (id)_osUpdateRequiredAlert;
- (id)_subscriptionInfoForRegion:(id)region requireContainment:(BOOL)containment fromSubscriptionInfos:(id)infos;
- (id)alertControllerForAttemptedAddCollection;
- (id)alertControllerForAttemptedAddNote;
- (id)alertControllerForAttemptedAddPhotos;
- (id)alertControllerForAttemptedAddShortcut;
- (id)alertControllerForAttemptedAddToPlaces;
- (id)alertControllerForAttemptedDataManagementDisplay;
- (id)alertControllerForAttemptedRate;
- (id)alertControllerForAttemptedRegionDownload;
- (id)alertControllerForAttemptedReportAnIssue;
- (id)alertControllerForAttemptedShowMyShortcut;
- (id)alertControllerForAttemptedUpdateAll;
- (id)alertControllerForCellularDownloadConfirmationForRegionName:(id)name size:(int64_t)size actionHandler:(id)handler;
- (id)alertControllerForCellularUpdateConfirmationForSize:(int64_t)size actionHandler:(id)handler;
- (id)alertControllerForDisableAutomaticUpdatesWithActionHandler:(id)handler;
- (id)alertControllerForDisableSyncToWatchWithActionHandler:(id)handler;
- (id)alertControllerForInsufficientDiskSpaceForDownloadSize:(int64_t)size;
- (id)alertControllerForInsufficientDiskSpaceOnPairedDeviceForDownloadSize:(int64_t)size;
- (id)determineEstimatedSizeForSubscriptionWithRegion:(id)region completionHandler:(id)handler;
- (id)subscriptionInfoForRegion:(id)region requireContainment:(BOOL)containment;
- (int64_t)cellularBehaviorForDownloadOfSize:(int64_t)size forForcedDownload:(BOOL)download;
- (void)_captureDisplayDownloadMapsAlertWithType:(int64_t)type;
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

+ (MapsOfflineUIHelper)sharedHelper
{
  if (qword_10195E7E8 != -1)
  {
    dispatch_once(&qword_10195E7E8, &stru_10163AEA8);
  }

  v3 = qword_10195E7E0;

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

- (void)_reloadSubscriptions
{
  [(MapsOfflineUIHelper *)self _reloadSubscriptionInfosWithCompletion:0];
  [(MapsOfflineUIHelper *)self _updateExpiredSubscriptionsCount];

  [(MapsOfflineUIHelper *)self _updateTotalDataSize];
}

- (BOOL)isUsingForcedOfflineMaps
{
  v2 = +[GEOOfflineService shared];
  state = [v2 state];
  v4 = state;
  if (state < 2u)
  {
    goto LABEL_9;
  }

  if (state != 2)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_9;
    }

    v10 = 67109120;
    v11 = v4;
    v8 = "Unreachable reached: invalid offline mode value %x";
    goto LABEL_12;
  }

  v5 = HIBYTE(state);
  if (HIBYTE(state) >= 3u)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
LABEL_9:
      LOBYTE(v6) = 0;
      goto LABEL_10;
    }

    v10 = 67109120;
    v11 = v5;
    v8 = "Unreachable reached: invalid offline reason value %x";
LABEL_12:
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, v8, &v10, 8u);
    goto LABEL_9;
  }

  v6 = 4u >> (HIBYTE(state) & 7);
LABEL_10:

  return v6 & 1;
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
  handler[2] = sub_100B67F5C;
  handler[3] = &unk_101658C08;
  objc_copyWeak(&v19, &location);
  notify_register_dispatch(v8, &self->_subscriptionsChangedNotifyToken, &_dispatch_main_q, handler);

  [(MapsOfflineUIHelper *)self _reloadSubscriptions];
  v9 = GEOOfflineDataActiveVersionsDidChangeDarwinNotification;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100B67FA0;
  v16[3] = &unk_101658C08;
  objc_copyWeak(&v17, &location);
  notify_register_dispatch(v9, &self->_activeVersionsChangedNotifyToken, &_dispatch_main_q, v16);

  v10 = GEOMapDataSubscriptionManagerPairedDeviceOfflineLastUpdatedDateDidChangeDarwinNotification;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100B67FE4;
  v14[3] = &unk_101658C08;
  objc_copyWeak(&v15, &location);
  notify_register_dispatch(v10, &self->_pairedDeviceLastUpdatedChangedNotifyToken, &_dispatch_main_q, v14);

  [(MapsOfflineUIHelper *)self _reloadLastUpdatedDates];
  v11 = GEOMapDataSubscriptionManagerPairedDeviceSubscriptionsDidChangeDarwinNotification;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100B68028;
  v12[3] = &unk_101658C08;
  objc_copyWeak(&v13, &location);
  notify_register_dispatch(v11, &self->_pairedDeviceSubscriptionsChangedNotifyToken, &_dispatch_main_q, v12);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)_updateExpiredSubscriptionsCount
{
  objc_initWeak(&location, self);
  subscriptionManager = [(MapsOfflineUIHelper *)self subscriptionManager];
  v4 = &_dispatch_main_q;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100029640;
  v5[3] = &unk_10165F290;
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
  v5[2] = sub_1000296B4;
  v5[3] = &unk_10163B558;
  objc_copyWeak(&v6, &location);
  [subscriptionManager _calculateTotalSizeOfOfflineSubscriptionsWithCallbackQueue:&_dispatch_main_q completionHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_reloadLastUpdatedDates
{
  objc_initWeak(&location, self);
  subscriptionManager = [(MapsOfflineUIHelper *)self subscriptionManager];
  v4 = &_dispatch_main_q;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000287C8;
  v8[3] = &unk_10163AF20;
  objc_copyWeak(&v9, &location);
  [subscriptionManager fetchLastUpdatedDateForPairedDeviceOfflineSubscriptionsWithQueue:&_dispatch_main_q completionHandler:v8];

  subscriptionManager2 = [(MapsOfflineUIHelper *)self subscriptionManager];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100028958;
  v6[3] = &unk_10163AF20;
  objc_copyWeak(&v7, &location);
  [subscriptionManager2 fetchLastUpdatedDateForOfflineSubscriptionsWithQueue:&_dispatch_main_q completionHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
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

- (void)startMonitoringPairedDeviceSubscriptionStates
{
  v3 = [(MapsOfflineUIHelper *)self pairedDeviceSubscriptionStatesMonitorCount]+ 1;

  [(MapsOfflineUIHelper *)self setPairedDeviceSubscriptionStatesMonitorCount:v3];
}

- (void)_reloadPairedDeviceSubscriptionInfos
{
  objc_initWeak(&location, self);
  subscriptionManager = [(MapsOfflineUIHelper *)self subscriptionManager];
  v4 = &_dispatch_main_q;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100B6597C;
  v5[3] = &unk_10165F290;
  objc_copyWeak(&v6, &location);
  [subscriptionManager fetchSubscriptionIdentifiersToSyncToPairedDeviceWithQueue:&_dispatch_main_q completionHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
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

- (BOOL)isRegionDownloaded:(id)downloaded requireFullyDownloaded:(BOOL)fullyDownloaded coverageRequirement:(double)requirement
{
  fullyDownloadedCopy = fullyDownloaded;
  downloadedCopy = downloaded;
  subscriptionInfos = [(MapsOfflineUIHelper *)self subscriptionInfos];
  LOBYTE(fullyDownloadedCopy) = [(MapsOfflineUIHelper *)self _isRegionDownloaded:downloadedCopy requireFullyDownloaded:fullyDownloadedCopy coverageRequirement:subscriptionInfos forSubscriptionInfos:requirement];

  return fullyDownloadedCopy;
}

- (BOOL)isRegionDownloaded:(id)downloaded requireFullyDownloaded:(BOOL)fullyDownloaded
{
  fullyDownloadedCopy = fullyDownloaded;
  downloadedCopy = downloaded;
  GEOConfigGetDouble();
  LOBYTE(fullyDownloadedCopy) = [(MapsOfflineUIHelper *)self isRegionDownloaded:downloadedCopy requireFullyDownloaded:fullyDownloadedCopy coverageRequirement:?];

  return fullyDownloadedCopy;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (off_101931340 != context)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  if (qword_10195E7F0 != -1)
  {
    dispatch_once(&qword_10195E7F0, &stru_10163AFD0);
  }

  if ([qword_10195E7F8 containsObject:pathCopy])
  {
    v13 = [changeCopy copy];
    objc_initWeak(&location, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100B651CC;
    block[3] = &unk_10164DFE0;
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

- (void)removeKVOForSubscriptionInfo:(id)info
{
  infoCopy = info;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  if (qword_10195E7F0 != -1)
  {
    dispatch_once(&qword_10195E7F0, &stru_10163AFD0);
  }

  v5 = qword_10195E7F8;
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
        [state removeObserver:self forKeyPath:v10 context:off_101931340];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)addKVOForSubscriptionInfo:(id)info
{
  infoCopy = info;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  if (qword_10195E7F0 != -1)
  {
    dispatch_once(&qword_10195E7F0, &stru_10163AFD0);
  }

  v5 = qword_10195E7F8;
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
        [state addObserver:self forKeyPath:v10 options:3 context:off_101931340];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
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

- (void)setPairedDeviceSubscriptionStatesMonitorCount:(int64_t)count
{
  if (count < 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: count >= 0", buf, 2u);
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
        v6 = sub_10003D9F4();
        v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
        if (count)
        {
          if (v7)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[MapsOfflineUIHelper] start monitoring paired device subscription states", buf, 2u);
          }

          [(MapsOfflineUIHelper *)self _reloadPairedDeviceSubscriptionInfos];
        }

        else
        {
          if (v7)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[MapsOfflineUIHelper] stop monitoring paired device subscription states", buf, 2u);
          }

          v15 = 0u;
          v16 = 0u;
          v13 = 0u;
          v14 = 0u;
          v8 = self->_subscriptionInfos;
          v9 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v14;
            do
            {
              v12 = 0;
              do
              {
                if (*v14 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                [*(*(&v13 + 1) + 8 * v12) setPairedDeviceState:{0, v13}];
                v12 = v12 + 1;
              }

              while (v10 != v12);
              v10 = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v18 count:16];
            }

            while (v10);
          }
        }
      }
    }
  }
}

- (void)stopMonitoringPairedDeviceSubscriptionStates
{
  v3 = [(MapsOfflineUIHelper *)self pairedDeviceSubscriptionStatesMonitorCount]- 1;

  [(MapsOfflineUIHelper *)self setPairedDeviceSubscriptionStatesMonitorCount:v3];
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
  v10[2] = sub_100B66450;
  v10[3] = &unk_10165E308;
  objc_copyWeak(&v12, &location);
  v9 = completionCopy;
  v11 = v9;
  [subscriptionManager fetchSubscriptionsWithIdentifiers:v7 callbackQueue:&_dispatch_main_q completionHandler:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)forceUpdateAllSubscriptionsWithMode:(unint64_t)mode
{
  subscriptionManager = [(MapsOfflineUIHelper *)self subscriptionManager];
  [subscriptionManager forceUpdateForUserInitiatedSubscriptionsForDataType:1024 mode:mode];
}

- (void)setUpdatingSubscriptions:(id)subscriptions
{
  subscriptionsCopy = subscriptions;
  if (self->_updatingSubscriptions != subscriptionsCopy && ([(NSMutableSet *)subscriptionsCopy isEqual:?]& 1) == 0)
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
    v9[2] = sub_100B67200;
    v9[3] = &unk_10163AEF8;
    v10 = handlerCopy;
    objc_copyWeak(&v11, &location);
    [subscriptionManager fetchAvailableDiskSpaceForPairedDeviceOfflineSubscriptionsWithQueue:&_dispatch_main_q completionHandler:v9];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (id)determineEstimatedSizeForSubscriptionWithRegion:(id)region completionHandler:(id)handler
{
  handlerCopy = handler;
  regionCopy = region;
  subscriptionManager = [(MapsOfflineUIHelper *)self subscriptionManager];
  v9 = [subscriptionManager determineEstimatedSizeForSubscriptionWithRegion:regionCopy dataTypes:1024 queue:&_dispatch_main_q completionHandler:handlerCopy];

  return v9;
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
  v16[2] = sub_100B676EC;
  v16[3] = &unk_10163AED0;
  v17 = subscriptionCopy;
  v18 = handlerCopy;
  v14 = handlerCopy;
  v15 = subscriptionCopy;
  [subscriptionManager addSubscriptionWithIdentifier:identifier dataTypes:dataTypes policy:policy region:region displayName:displayName expirationDate:0 callbackQueue:&_dispatch_main_q completionHandler:v16];
}

- (void)resumeDownloadForSubscriptionWithIdentifier:(id)identifier mode:(unint64_t)mode
{
  identifierCopy = identifier;
  subscriptionManager = [(MapsOfflineUIHelper *)self subscriptionManager];
  [subscriptionManager startDownloadForSubscriptionIdentifier:identifierCopy mode:mode];
}

- (void)resumeDownloadForSubscriptionInfo:(id)info mode:(unint64_t)mode
{
  infoCopy = info;
  subscriptionManager = [(MapsOfflineUIHelper *)self subscriptionManager];
  subscription = [infoCopy subscription];

  identifier = [subscription identifier];
  [subscriptionManager startDownloadForSubscriptionIdentifier:identifier mode:mode];
}

- (void)pauseDownloadForSubscriptionInfo:(id)info
{
  infoCopy = info;
  subscriptionManager = [(MapsOfflineUIHelper *)self subscriptionManager];
  subscription = [infoCopy subscription];

  identifier = [subscription identifier];
  [subscriptionManager cancelDownloadForSubscriptionIdentifier:identifier];
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
    v10 = +[NSBundle mainBundle];
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
    v23 = sub_10003D9F4();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138478083;
      v41 = v32;
      v42 = 2113;
      v43 = v12;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "A region already exists with the name '%{private}@'. Using '%{private}@' instead", buf, 0x16u);
    }
  }

  v24 = +[NSUUID UUID];
  uUIDString = [v24 UUIDString];
  v26 = [NSString stringWithFormat:@"%@%@", @"com.apple.Maps.offline.", uUIDString];

  subscriptionManager = [(MapsOfflineUIHelper *)self subscriptionManager];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100B67D0C;
  v33[3] = &unk_10163AED0;
  v34 = v26;
  v35 = completionCopy;
  v28 = v26;
  v29 = completionCopy;
  [subscriptionManager addSubscriptionWithIdentifier:v28 dataTypes:1024 policy:1 region:regionCopy displayName:v12 expirationDate:0 callbackQueue:&_dispatch_main_q completionHandler:v33];
}

- (void)_updateUsingOfflineMaps
{
  v3 = +[GEOOfflineService shared];
  isUsingOffline = [v3 isUsingOffline];

  [(MapsOfflineUIHelper *)self setUsingOfflineMaps:isUsingOffline];
}

- (void)setUsingOfflineMaps:(BOOL)maps
{
  usingOfflineMaps = self->_usingOfflineMaps;
  if (usingOfflineMaps != maps)
  {
    self->_usingOfflineMaps = maps;
    v5 = sub_10003D9F4();
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
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[MapsOfflineUIHelper] posting UsingOfflineMapsStateChangedNotification, wasUsingOfflineMaps: %{public}@, isUsingOfflineMaps: %{public}@", &v11, 0x16u);
    }

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 postNotificationName:@"UsingOfflineMapsStateChangedNotification" object:self];
  }
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

- (void)_captureDisplayDownloadMapsAlertWithType:(int64_t)type
{
  if (type == 1)
  {
    v3 = @"maps is offline";
  }

  else
  {
    v3 = @"use cellular data";
  }

  [GEOAPPortal captureUserAction:369 target:0 value:v3];
}

- (id)alertControllerForDisableAutomaticUpdatesWithActionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[NSBundle mainBundle];
  v17 = [v4 localizedStringForKey:@"DISABLE_AUTOMATIC_UPDATES_ALERT_TITLE" value:@"localized string not found" table:@"Offline"];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"DISABLE_AUTOMATIC_UPDATES_ALERT_MESSAGE" value:@"localized string not found" table:@"Offline"];

  v7 = [UIAlertController alertControllerWithTitle:v17 message:v6 preferredStyle:1];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"DISABLE_AUTOMATIC_UPDATES_ACTION_TURN_OFF" value:@"localized string not found" table:@"Offline"];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100E63CFC;
  v20[3] = &unk_101660728;
  v10 = handlerCopy;
  v21 = v10;
  v11 = [UIAlertAction actionWithTitle:v9 style:0 handler:v20];
  [v7 addAction:v11];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"DISABLE_AUTOMATIC_UPDATES_ACTION_KEEP_ON" value:@"localized string not found" table:@"Offline"];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100E63D10;
  v18[3] = &unk_101660728;
  v19 = v10;
  v14 = v10;
  v15 = [UIAlertAction actionWithTitle:v13 style:0 handler:v18];
  [v7 addAction:v15];

  return v7;
}

- (id)alertControllerForInsufficientDiskSpaceOnPairedDeviceForDownloadSize:(int64_t)size
{
  v3 = [NSByteCountFormatter stringFromByteCount:(llround(size * 0.000001) * 1000000.0) countStyle:2];
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"OFFLINE_MANAGEMENT_PAIRED_DEVICE_DISK_SPACE_ALERT_TITLE" value:@"localized string not found" table:@"Offline"];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"OFFLINE_MANAGEMENT_PAIRED_DEVICE_DISK_SPACE_ALERT_BODY" value:@"localized string not found" table:@"Offline"];
  v8 = [NSString localizedStringWithFormat:v7, v3];
  v9 = [UIAlertController alertControllerWithTitle:v5 message:v8 preferredStyle:1];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"MANAGE_WATCH_STORAGE" value:@"localized string not found" table:@"Offline"];
  v12 = [UIAlertAction actionWithTitle:v11 style:0 handler:&stru_101656718];
  [v9 addAction:v12];

  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"NOT_NOW" value:@"localized string not found" table:@"Offline"];
  v15 = [UIAlertAction actionWithTitle:v14 style:1 handler:&stru_101656738];
  [v9 addAction:v15];

  return v9;
}

- (id)alertControllerForDisableSyncToWatchWithActionHandler:(id)handler
{
  handlerCopy = handler;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  subscriptionInfos = [(MapsOfflineUIHelper *)self subscriptionInfos];
  v6 = [subscriptionInfos countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (!v6)
  {
    goto LABEL_12;
  }

  v7 = 0;
  v8 = *v33;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v33 != v8)
      {
        objc_enumerationMutation(subscriptionInfos);
      }

      pairedDeviceState = [*(*(&v32 + 1) + 8 * i) pairedDeviceState];

      if (pairedDeviceState)
      {
        ++v7;
      }
    }

    v6 = [subscriptionInfos countByEnumeratingWithState:&v32 objects:v36 count:16];
  }

  while (v6);

  if (v7)
  {
    v11 = +[NSBundle mainBundle];
    subscriptionInfos = [v11 localizedStringForKey:@"DISABLE_SYNC_TO_WATCH_ALERT_TITLE" value:@"localized string not found" table:@"Offline"];

    v12 = +[NSBundle mainBundle];
    v25 = [v12 localizedStringForKey:@"DISABLE_SYNC_TO_WATCH_ALERT_MESSAGE" value:@"localized string not found" table:@"Offline"];

    v6 = [UIAlertController alertControllerWithTitle:subscriptionInfos message:v25 preferredStyle:0];
    v13 = +[NSBundle mainBundle];
    v14 = [v13 localizedStringForKey:@"DISABLE_SYNC_TO_WATCH_ALERT_ACTION_KEEP" value:@"localized string not found" table:@"Offline"];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100E64410;
    v30[3] = &unk_101660728;
    v15 = handlerCopy;
    v31 = v15;
    v16 = [UIAlertAction actionWithTitle:v14 style:0 handler:v30];
    [v6 addAction:v16];

    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"DISABLE_SYNC_TO_WATCH_ALERT_ACTION_REMOVE" value:@"localized string not found" table:@"Offline"];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100E64428;
    v28[3] = &unk_101660728;
    v19 = v15;
    v29 = v19;
    v20 = [UIAlertAction actionWithTitle:v18 style:2 handler:v28];
    [v6 addAction:v20];

    v21 = +[NSBundle mainBundle];
    v22 = [v21 localizedStringForKey:@"DISABLE_SYNC_TO_WATCH_ALERT_ACTION_CANCEL" value:@"localized string not found" table:@"Offline"];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100E64440;
    v26[3] = &unk_101660728;
    v27 = v19;
    v23 = [UIAlertAction actionWithTitle:v22 style:1 handler:v26];
    [v6 addAction:v23];

LABEL_12:
    goto LABEL_14;
  }

  v6 = 0;
LABEL_14:

  return v6;
}

- (id)alertControllerForAttemptedUpdateAll
{
  if (!GEOConfigGetBOOL())
  {
    if ([(MapsOfflineUIHelper *)self isUsingForcedOfflineMaps])
    {
      v6 = @"UPDATE_ALL_MAP_FORCED_OFFLINE_ALERT_MESSAGE";
      v7 = @"UPDATE_ALL_MAP_FORCED_OFFLINE_ALERT_TITLE";
    }

    else
    {
      v8 = +[GEONetworkObserver sharedNetworkObserver];
      isNetworkReachable = [v8 isNetworkReachable];

      if (isNetworkReachable)
      {
        v4 = 0;
        v5 = 0;
LABEL_9:
        if ([v4 length] && objc_msgSend(v5, "length"))
        {
          _osUpdateRequiredAlert = [UIAlertController alertControllerWithTitle:v4 message:v5 preferredStyle:1];
          v12 = +[NSBundle mainBundle];
          v13 = [v12 localizedStringForKey:@"UPDATE_ALL_MAP_OFFLINE_ALERT_ACTION" value:@"localized string not found" table:@"Offline"];
          v14 = [UIAlertAction actionWithTitle:v13 style:1 handler:0];
          [_osUpdateRequiredAlert addAction:v14];
        }

        else
        {
          _osUpdateRequiredAlert = 0;
        }

        goto LABEL_13;
      }

      v6 = @"UPDATE_ALL_MAP_OFFLINE_ALERT_MESSAGE";
      v7 = @"UPDATE_ALL_MAP_OFFLINE_ALERT_TITLE";
    }

    v10 = +[NSBundle mainBundle];
    v4 = [v10 localizedStringForKey:v7 value:@"localized string not found" table:@"Offline"];

    v11 = +[NSBundle mainBundle];
    v5 = [v11 localizedStringForKey:v6 value:@"localized string not found" table:@"Offline"];

    goto LABEL_9;
  }

  _osUpdateRequiredAlert = [(MapsOfflineUIHelper *)self _osUpdateRequiredAlert];
  v4 = 0;
  v5 = 0;
LABEL_13:

  return _osUpdateRequiredAlert;
}

- (id)alertControllerForInsufficientDiskSpaceForDownloadSize:(int64_t)size
{
  v4 = +[MSPMapsPaths mapsApplicationContainerPaths];
  homeDirectory = [v4 homeDirectory];
  v6 = [NSURL fileURLWithPath:homeDirectory];

  v35 = 0;
  LOBYTE(homeDirectory) = [v6 getResourceValue:&v35 forKey:NSURLVolumeURLKey error:0];
  v7 = v35;
  if (homeDirectory)
  {
    v36 = NSURLVolumeAvailableCapacityForImportantUsageKey;
    v8 = [NSArray arrayWithObjects:&v36 count:1];
    v33 = 0;
    v9 = [v7 resourceValuesForKeys:v8 error:&v33];

    v10 = [v9 objectForKeyedSubscript:NSURLVolumeAvailableCapacityForImportantUsageKey];
    v11 = v10;
    if (!v10)
    {
      goto LABEL_12;
    }

    longLongValue = [v10 longLongValue];
    sizeCopy = size;
    GEOConfigGetDouble();
    if (size + 1000000 * GEOConfigGetUInteger() >= (sizeCopy + v14 * sizeCopy))
    {
      v16 = size + 1000000 * GEOConfigGetUInteger();
    }

    else
    {
      GEOConfigGetDouble();
      v16 = (sizeCopy + v15 * sizeCopy);
    }

    if (v16 > size)
    {
      GEOConfigGetDouble();
      if (size + 1000000 * GEOConfigGetUInteger() >= (sizeCopy + v17 * sizeCopy))
      {
        size += 1000000 * GEOConfigGetUInteger();
      }

      else
      {
        GEOConfigGetDouble();
        size = (sizeCopy + v18 * sizeCopy);
      }
    }

    if (size > longLongValue)
    {
      v32 = [MKRoundingByteCountFormatter stringFromByteCountWithRoundingTo10MB:size - longLongValue];
      v19 = +[NSBundle mainBundle];
      v20 = [v19 localizedStringForKey:@"OFFLINE_MAPS_INSUFFICIENT_DISK_SPACE_ALERT_TITLE" value:@"localized string not found" table:@"Offline"];
      v31 = [NSString localizedStringWithFormat:v20, v32];

      v21 = +[NSBundle mainBundle];
      v22 = [v21 localizedStringForKey:@"OFFLINE_MAPS_INSUFFICIENT_DISK_SPACE_ALERT_MESSAGE" value:@"localized string not found" table:@"Offline"];

      v23 = [UIAlertController alertControllerWithTitle:v31 message:v22 preferredStyle:1];
      v24 = +[NSBundle mainBundle];
      v25 = [v24 localizedStringForKey:@"OFFLINE_MAPS_INSUFFICIENT_DISK_SPACE_NOT_NOW_ALERT_ACTION" value:@"localized string not found" table:@"Offline"];
      v26 = [UIAlertAction actionWithTitle:v25 style:1 handler:0];
      [v23 addAction:v26];

      v27 = +[NSBundle mainBundle];
      v28 = [v27 localizedStringForKey:@"OFFLINE_MAPS_INSUFFICIENT_DISK_SPACE_MANAGE_ALERT_ACTION" value:@"localized string not found" table:@"Offline"];
      v29 = [UIAlertAction actionWithTitle:v28 style:0 handler:&stru_1016566F8];

      [v23 addAction:v29];
      [v23 setPreferredAction:v29];
    }

    else
    {
LABEL_12:
      v23 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: [homeDirectoryURL getResourceValue:&volumeURL forKey:NSURLVolumeURLKey error:((void*)0)]", buf, 2u);
    }

    v23 = 0;
  }

  return v23;
}

- (id)alertControllerForCellularUpdateConfirmationForSize:(int64_t)size actionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = [MKRoundingByteCountFormatter stringFromByteCountWithRoundingTo1MB:size];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"UPDATE_OFFLINE_MAPS_CELLULAR_CONFIRMATION_ALERT_TITLE" value:@"localized string not found" table:@"Offline"];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"UPDATE_OFFLINE_MAPS_CELLULAR_CONFIRMATION_ALERT_MESSAGE" value:@"localized string not found" table:@"Offline"];
  v11 = [NSString localizedStringWithFormat:v10, v6];

  LODWORD(v9) = MGGetBoolAnswer();
  v12 = +[NSBundle mainBundle];
  v13 = v12;
  if (v9)
  {
    v14 = @"DOWNLOAD_MAP_CELLULAR_CONFIRMATION_ALERT_ACTION_LATER_WLAN";
  }

  else
  {
    v14 = @"DOWNLOAD_MAP_CELLULAR_CONFIRMATION_ALERT_ACTION_LATER";
  }

  v15 = [v12 localizedStringForKey:v14 value:@"localized string not found" table:@"Offline"];

  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"DOWNLOAD_MAP_CELLULAR_CONFIRMATION_ALERT_ACTION_DOWNLOAD" value:@"localized string not found" table:@"Offline"];

  v18 = [UIAlertController alertControllerWithTitle:v8 message:v11 preferredStyle:1];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100E64E60;
  v27[3] = &unk_101660728;
  v19 = handlerCopy;
  v28 = v19;
  v20 = [UIAlertAction actionWithTitle:v15 style:1 handler:v27];
  [v18 addAction:v20];

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100E64E74;
  v25[3] = &unk_101660728;
  v26 = v19;
  v21 = v19;
  v22 = [UIAlertAction actionWithTitle:v17 style:0 handler:v25];
  [v18 addAction:v22];
  [v18 setPreferredAction:v22];
  [(MapsOfflineUIHelper *)self _captureDisplayDownloadMapsAlertWithType:2];

  return v18;
}

- (id)alertControllerForCellularDownloadConfirmationForRegionName:(id)name size:(int64_t)size actionHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  selfCopy = self;
  hasSubscriptionsNeedingUpdate = [(MapsOfflineUIHelper *)self hasSubscriptionsNeedingUpdate];
  sizeCopy5 = size;
  v49 = nameCopy;
  if (size < 0)
  {
    goto LABEL_19;
  }

  sizeCopy5 = size;
  if (!hasSubscriptionsNeedingUpdate)
  {
    goto LABEL_19;
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  subscriptionInfos = [(MapsOfflineUIHelper *)self subscriptionInfos];
  v11 = [subscriptionInfos countByEnumeratingWithState:&v55 objects:v59 count:16];
  sizeCopy3 = size;
  sizeCopy5 = size;
  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = v11;
  v13 = *v56;
  sizeCopy5 = size;
  do
  {
    v14 = 0;
    do
    {
      if (*v56 != v13)
      {
        objc_enumerationMutation(subscriptionInfos);
      }

      v15 = *(*(&v55 + 1) + 8 * v14);
      state = [v15 state];
      if ([state loadState] == 1)
      {
        goto LABEL_11;
      }

      state2 = [v15 state];
      if ([state2 loadState] == 2)
      {

LABEL_11:
LABEL_12:
        state3 = [v15 state];
        sizeCopy5 += [state3 downloadedDataSize];

        goto LABEL_13;
      }

      state4 = [v15 state];
      loadState = [state4 loadState];

      if (loadState == 3)
      {
        goto LABEL_12;
      }

LABEL_13:
      v14 = v14 + 1;
    }

    while (v12 != v14);
    v21 = [subscriptionInfos countByEnumeratingWithState:&v55 objects:v59 count:16];
    v12 = v21;
  }

  while (v21);
LABEL_18:

  nameCopy = v49;
  size = sizeCopy3;
LABEL_19:
  if (size < 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = [MKRoundingByteCountFormatter stringFromByteCountWithRoundingTo1MB:sizeCopy5];
  }

  v23 = +[NSBundle mainBundle];
  v24 = v23;
  if (hasSubscriptionsNeedingUpdate)
  {
    v25 = [v23 localizedStringForKey:@"DOWNLOAD_AND_UPDATE_MAP_CELLULAR_CONFIRMATION_ALERT_TITLE" value:@"localized string not found" table:@"Offline"];
    nameCopy = [NSString localizedStringWithFormat:v25, nameCopy];

    if (size >= 1)
    {
      v27 = +[NSBundle mainBundle];
      v28 = v27;
      v29 = @"DOWNLOAD_AND_UPDATE_MAP_CELLULAR_CONFIRMATION_ALERT_MESSAGE";
      goto LABEL_27;
    }

    v33 = +[NSBundle mainBundle];
    v28 = v33;
    v34 = @"DOWNLOAD_AND_UPDATE_MAP_CELLULAR_CONFIRMATION_ALERT_MESSAGE_NO_SIZE";
LABEL_30:
    v32 = [v33 localizedStringForKey:v34 value:@"localized string not found" table:@"Offline"];
  }

  else
  {
    v30 = [v23 localizedStringForKey:@"DOWNLOAD_MAP_CELLULAR_CONFIRMATION_ALERT_TITLE" value:@"localized string not found" table:@"Offline"];
    nameCopy = [NSString localizedStringWithFormat:v30, nameCopy];

    if (size < 1)
    {
      v33 = +[NSBundle mainBundle];
      v28 = v33;
      v34 = @"DOWNLOAD_MAP_CELLULAR_CONFIRMATION_ALERT_MESSAGE_NO_SIZE";
      goto LABEL_30;
    }

    v27 = +[NSBundle mainBundle];
    v28 = v27;
    v29 = @"DOWNLOAD_MAP_CELLULAR_CONFIRMATION_ALERT_MESSAGE";
LABEL_27:
    v31 = [v27 localizedStringForKey:v29 value:@"localized string not found" table:@"Offline"];
    v32 = [NSString localizedStringWithFormat:v31, v22];
  }

  if (MGGetBoolAnswer())
  {
    v35 = @"DOWNLOAD_MAP_CELLULAR_CONFIRMATION_ALERT_ACTION_LATER_WLAN";
  }

  else
  {
    v35 = @"DOWNLOAD_MAP_CELLULAR_CONFIRMATION_ALERT_ACTION_LATER";
  }

  v36 = +[NSBundle mainBundle];
  v37 = [v36 localizedStringForKey:v35 value:@"localized string not found" table:@"Offline"];

  v38 = +[NSBundle mainBundle];
  v39 = [v38 localizedStringForKey:@"DOWNLOAD_MAP_CELLULAR_CONFIRMATION_ALERT_ACTION_DOWNLOAD" value:@"localized string not found" table:@"Offline"];

  v40 = [UIAlertController alertControllerWithTitle:nameCopy message:v32 preferredStyle:1];
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_100E6542C;
  v53[3] = &unk_101660728;
  v41 = handlerCopy;
  v54 = v41;
  v42 = [UIAlertAction actionWithTitle:v37 style:1 handler:v53];
  [v40 addAction:v42];

  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_100E65440;
  v51[3] = &unk_101660728;
  v52 = v41;
  v43 = v41;
  v44 = [UIAlertAction actionWithTitle:v39 style:0 handler:v51];
  [v40 addAction:v44];
  [v40 setPreferredAction:v44];
  [(MapsOfflineUIHelper *)selfCopy _captureDisplayDownloadMapsAlertWithType:2];

  return v40;
}

- (id)alertControllerForAttemptedReportAnIssue
{
  v3 = +[GEONetworkObserver sharedNetworkObserver];
  isNetworkReachable = [v3 isNetworkReachable];

  if (isNetworkReachable)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = +[NSBundle mainBundle];
    v5 = [v7 localizedStringForKey:@"REPORT_ISSUE_OFFLINE_ALERT_TITLE" value:@"localized string not found" table:@"Offline"];

    v8 = +[NSBundle mainBundle];
    v6 = [v8 localizedStringForKey:@"REPORT_ISSUE_OFFLINE_ALERT_MESSAGE" value:@"localized string not found" table:@"Offline"];
  }

  if ([(MapsOfflineUIHelper *)self isUsingForcedOfflineMaps])
  {
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"REPORT_ISSUE_FORCED_OFFLINE_ALERT_TITLE" value:@"localized string not found" table:@"Offline"];

    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"REPORT_ISSUE_FORCED_OFFLINE_ALERT_MESSAGE" value:@"localized string not found" table:@"Offline"];

    v5 = v10;
    v6 = v12;
  }

  if ([v5 length] && objc_msgSend(v6, "length"))
  {
    v13 = [UIAlertController alertControllerWithTitle:v5 message:v6 preferredStyle:1];
    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"REPORT_ISSUE_OFFLINE_ALERT_ACTION" value:@"localized string not found" table:@"Offline"];
    v16 = [UIAlertAction actionWithTitle:v15 style:1 handler:0];
    [v13 addAction:v16];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)alertControllerForAttemptedAddPhotos
{
  v3 = +[GEONetworkObserver sharedNetworkObserver];
  isNetworkReachable = [v3 isNetworkReachable];

  if (isNetworkReachable)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = +[NSBundle mainBundle];
    v5 = [v7 localizedStringForKey:@"ADD_PHOTOS_OFFLINE_ALERT_TITLE" value:@"localized string not found" table:@"Offline"];

    v8 = +[NSBundle mainBundle];
    v6 = [v8 localizedStringForKey:@"ADD_PHOTOS_OFFLINE_ALERT_MESSAGE" value:@"localized string not found" table:@"Offline"];
  }

  if ([(MapsOfflineUIHelper *)self isUsingForcedOfflineMaps])
  {
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"ADD_PHOTOS_FORCED_OFFLINE_ALERT_TITLE" value:@"localized string not found" table:@"Offline"];

    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"ADD_PHOTOS_FORCED_OFFLINE_ALERT_MESSAGE" value:@"localized string not found" table:@"Offline"];

    v5 = v10;
    v6 = v12;
  }

  if ([v5 length] && objc_msgSend(v6, "length"))
  {
    v13 = [UIAlertController alertControllerWithTitle:v5 message:v6 preferredStyle:1];
    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"ADD_PHOTOS_OFFLINE_ALERT_ACTION" value:@"localized string not found" table:@"Offline"];
    v16 = [UIAlertAction actionWithTitle:v15 style:1 handler:0];
    [v13 addAction:v16];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)alertControllerForAttemptedRate
{
  v3 = +[GEONetworkObserver sharedNetworkObserver];
  isNetworkReachable = [v3 isNetworkReachable];

  if (isNetworkReachable)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = +[NSBundle mainBundle];
    v5 = [v7 localizedStringForKey:@"RATE_OFFLINE_ALERT_TITLE" value:@"localized string not found" table:@"Offline"];

    v8 = +[NSBundle mainBundle];
    v6 = [v8 localizedStringForKey:@"RATE_OFFLINE_ALERT_MESSAGE" value:@"localized string not found" table:@"Offline"];
  }

  if ([(MapsOfflineUIHelper *)self isUsingForcedOfflineMaps])
  {
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"RATE_FORCED_OFFLINE_ALERT_TITLE" value:@"localized string not found" table:@"Offline"];

    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"RATE_FORCED_OFFLINE_ALERT_MESSAGE" value:@"localized string not found" table:@"Offline"];

    v5 = v10;
    v6 = v12;
  }

  if ([v5 length] && objc_msgSend(v6, "length"))
  {
    v13 = [UIAlertController alertControllerWithTitle:v5 message:v6 preferredStyle:1];
    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"RATE_OFFLINE_ALERT_ACTION" value:@"localized string not found" table:@"Offline"];
    v16 = [UIAlertAction actionWithTitle:v15 style:1 handler:0];
    [v13 addAction:v16];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)alertControllerForAttemptedAddToPlaces
{
  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    v3 = +[GEONetworkObserver sharedNetworkObserver];
    isNetworkReachable = [v3 isNetworkReachable];

    if (isNetworkReachable)
    {
      v5 = 0;
      v6 = 0;
    }

    else
    {
      v8 = +[NSBundle mainBundle];
      v5 = [v8 localizedStringForKey:@"ADD_TO_PLACES_OFFLINE_ALERT_TITLE" value:@"localized string not found" table:@"Offline"];

      v9 = +[NSBundle mainBundle];
      v6 = [v9 localizedStringForKey:@"ADD_TO_PLACES_OFFLINE_ALERT_MESSAGE" value:@"localized string not found" table:@"Offline"];
    }

    if ([(MapsOfflineUIHelper *)self isUsingForcedOfflineMaps])
    {
      v10 = +[NSBundle mainBundle];
      v11 = [v10 localizedStringForKey:@"ADD_TO_PLACES_FORCED_OFFLINE_ALERT_TITLE" value:@"localized string not found" table:@"Offline"];

      v12 = +[NSBundle mainBundle];
      v13 = [v12 localizedStringForKey:@"ADD_TO_PLACES_FORCED_OFFLINE_ALERT_MESSAGE" value:@"localized string not found" table:@"Offline"];

      v5 = v11;
      v6 = v13;
    }

    if ([v5 length] && objc_msgSend(v6, "length"))
    {
      v7 = [UIAlertController alertControllerWithTitle:v5 message:v6 preferredStyle:1];
      v14 = +[NSBundle mainBundle];
      v15 = [v14 localizedStringForKey:@"ADD_TO_PLACES_OFFLINE_ALERT_ACTION" value:@"localized string not found" table:@"Offline"];
      v16 = [UIAlertAction actionWithTitle:v15 style:1 handler:0];
      [v7 addAction:v16];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)alertControllerForAttemptedAddNote
{
  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    v3 = +[GEONetworkObserver sharedNetworkObserver];
    isNetworkReachable = [v3 isNetworkReachable];

    if (isNetworkReachable)
    {
      v5 = 0;
      v6 = 0;
    }

    else
    {
      v8 = +[NSBundle mainBundle];
      v5 = [v8 localizedStringForKey:@"ADD_NOTE_OFFLINE_ALERT_TITLE" value:@"localized string not found" table:@"Offline"];

      v9 = +[NSBundle mainBundle];
      v6 = [v9 localizedStringForKey:@"ADD_NOTE_OFFLINE_ALERT_MESSAGE" value:@"localized string not found" table:@"Offline"];
    }

    if ([(MapsOfflineUIHelper *)self isUsingForcedOfflineMaps])
    {
      v10 = +[NSBundle mainBundle];
      v11 = [v10 localizedStringForKey:@"ADD_NOTE_FORCED_OFFLINE_ALERT_TITLE" value:@"localized string not found" table:@"Offline"];

      v12 = +[NSBundle mainBundle];
      v13 = [v12 localizedStringForKey:@"ADD_NOTE_FORCED_OFFLINE_ALERT_MESSAGE" value:@"localized string not found" table:@"Offline"];

      v5 = v11;
      v6 = v13;
    }

    if ([v5 length] && objc_msgSend(v6, "length"))
    {
      v7 = [UIAlertController alertControllerWithTitle:v5 message:v6 preferredStyle:1];
      v14 = +[NSBundle mainBundle];
      v15 = [v14 localizedStringForKey:@"ADD_NOTE_OFFLINE_ALERT_ACTION" value:@"localized string not found" table:@"Offline"];
      v16 = [UIAlertAction actionWithTitle:v15 style:1 handler:0];
      [v7 addAction:v16];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)alertControllerForAttemptedAddCollection
{
  v3 = +[GEONetworkObserver sharedNetworkObserver];
  isNetworkReachable = [v3 isNetworkReachable];

  if (isNetworkReachable)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = +[NSBundle mainBundle];
    v5 = [v7 localizedStringForKey:@"ADD_COLLECTION_OFFLINE_ALERT_TITLE" value:@"localized string not found" table:@"Offline"];

    v8 = +[NSBundle mainBundle];
    v6 = [v8 localizedStringForKey:@"ADD_COLLECTION_OFFLINE_ALERT_MESSAGE" value:@"localized string not found" table:@"Offline"];
  }

  if ([(MapsOfflineUIHelper *)self isUsingForcedOfflineMaps])
  {
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"ADD_COLLECTION_FORCED_OFFLINE_ALERT_TITLE" value:@"localized string not found" table:@"Offline"];

    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"ADD_COLLECTION_FORCED_OFFLINE_ALERT_MESSAGE" value:@"localized string not found" table:@"Offline"];

    v5 = v10;
    v6 = v12;
  }

  if ([v5 length] && objc_msgSend(v6, "length"))
  {
    v13 = [UIAlertController alertControllerWithTitle:v5 message:v6 preferredStyle:1];
    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"ADD_COLLECTION_OFFLINE_ALERT_ACTION" value:@"localized string not found" table:@"Offline"];
    v16 = [UIAlertAction actionWithTitle:v15 style:1 handler:0];
    [v13 addAction:v16];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)alertControllerForAttemptedAddShortcut
{
  v3 = +[GEONetworkObserver sharedNetworkObserver];
  isNetworkReachable = [v3 isNetworkReachable];

  if (isNetworkReachable)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = +[NSBundle mainBundle];
    v5 = [v7 localizedStringForKey:@"ADD_SHORTCUT_OFFLINE_ALERT_TITLE" value:@"localized string not found" table:@"Offline"];

    LODWORD(v7) = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
    v8 = +[NSBundle mainBundle];
    v9 = v8;
    if (v7)
    {
      v10 = @"ADD_PIN_OFFLINE_ALERT_MESSAGE";
    }

    else
    {
      v10 = @"ADD_SHORTCUT_OFFLINE_ALERT_MESSAGE";
    }

    v6 = [v8 localizedStringForKey:v10 value:@"localized string not found" table:@"Offline"];
  }

  if ([(MapsOfflineUIHelper *)self isUsingForcedOfflineMaps])
  {
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"ADD_SHORTCUT_FORCED_OFFLINE_ALERT_TITLE" value:@"localized string not found" table:@"Offline"];

    v13 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
    v14 = +[NSBundle mainBundle];
    v15 = v14;
    if (v13)
    {
      v16 = @"ADD_PIN_FORCED_OFFLINE_ALERT_MESSAGE";
    }

    else
    {
      v16 = @"ADD_SHORTCUT_FORCED_OFFLINE_ALERT_MESSAGE";
    }

    v17 = [v14 localizedStringForKey:v16 value:@"localized string not found" table:@"Offline"];

    v5 = v12;
    v6 = v17;
  }

  if ([v5 length] && objc_msgSend(v6, "length"))
  {
    v18 = [UIAlertController alertControllerWithTitle:v5 message:v6 preferredStyle:1];
    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"ADD_SHORTCUT_OFFLINE_ALERT_ACTION" value:@"localized string not found" table:@"Offline"];
    v21 = [UIAlertAction actionWithTitle:v20 style:1 handler:0];
    [v18 addAction:v21];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)alertControllerForAttemptedShowMyShortcut
{
  v3 = +[GEONetworkObserver sharedNetworkObserver];
  isNetworkReachable = [v3 isNetworkReachable];

  if (isNetworkReachable)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = +[NSBundle mainBundle];
    v5 = [v7 localizedStringForKey:@"EDIT_SHORTCUT_OFFLINE_ALERT_TITLE" value:@"localized string not found" table:@"Offline"];

    LODWORD(v7) = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
    v8 = +[NSBundle mainBundle];
    v9 = v8;
    if (v7)
    {
      v10 = @"EDIT_PIN_OFFLINE_ALERT_MESSAGE";
    }

    else
    {
      v10 = @"EDIT_SHORTCUT_OFFLINE_ALERT_MESSAGE";
    }

    v6 = [v8 localizedStringForKey:v10 value:@"localized string not found" table:@"Offline"];
  }

  if ([(MapsOfflineUIHelper *)self isUsingForcedOfflineMaps])
  {
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"EDIT_SHORTCUT_FORCED_OFFLINE_ALERT_TITLE" value:@"localized string not found" table:@"Offline"];

    v13 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
    v14 = +[NSBundle mainBundle];
    v15 = v14;
    if (v13)
    {
      v16 = @"EDIT_PIN_FORCED_OFFLINE_ALERT_MESSAGE";
    }

    else
    {
      v16 = @"EDIT_SHORTCUT_FORCED_OFFLINE_ALERT_MESSAGE";
    }

    v17 = [v14 localizedStringForKey:v16 value:@"localized string not found" table:@"Offline"];

    v5 = v12;
    v6 = v17;
  }

  if ([v5 length] && objc_msgSend(v6, "length"))
  {
    v18 = [UIAlertController alertControllerWithTitle:v5 message:v6 preferredStyle:1];
    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"EDIT_SHORTCUT_OFFLINE_ALERT_ACTION" value:@"localized string not found" table:@"Offline"];
    v21 = [UIAlertAction actionWithTitle:v20 style:1 handler:0];
    [v18 addAction:v21];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)alertControllerForAttemptedRegionDownload
{
  if (GEOConfigGetBOOL())
  {
    _osUpdateRequiredAlert = [(MapsOfflineUIHelper *)self _osUpdateRequiredAlert];
    goto LABEL_9;
  }

  if ([(MapsOfflineUIHelper *)self isUsingForcedOfflineMaps])
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"DOWNLOAD_MAP_FORCED_OFFLINE_ALERT_TITLE" value:@"localized string not found" table:@"Offline"];

    v6 = +[NSBundle mainBundle];
    v7 = v6;
    v8 = @"DOWNLOAD_MAP_FORCED_OFFLINE_ALERT_MESSAGE";
  }

  else
  {
    v9 = +[GEONetworkObserver sharedNetworkObserver];
    isNetworkReachable = [v9 isNetworkReachable];

    if (isNetworkReachable)
    {
      _osUpdateRequiredAlert = 0;
      goto LABEL_9;
    }

    v11 = +[NSBundle mainBundle];
    v5 = [v11 localizedStringForKey:@"DOWNLOAD_MAP_OFFLINE_ALERT_TITLE" value:@"localized string not found" table:@"Offline"];

    v6 = +[NSBundle mainBundle];
    v7 = v6;
    v8 = @"DOWNLOAD_MAP_OFFLINE_ALERT_MESSAGE";
  }

  v12 = [v6 localizedStringForKey:v8 value:@"localized string not found" table:@"Offline"];

  _osUpdateRequiredAlert = [UIAlertController alertControllerWithTitle:v5 message:v12 preferredStyle:1];
  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:@"DOWNLOAD_MAP_OFFLINE_ALERT_ACTION" value:@"localized string not found" table:@"Offline"];
  v15 = [UIAlertAction actionWithTitle:v14 style:1 handler:0];
  [_osUpdateRequiredAlert addAction:v15];

  [(MapsOfflineUIHelper *)self _captureDisplayDownloadMapsAlertWithType:1];
LABEL_9:

  return _osUpdateRequiredAlert;
}

- (id)alertControllerForAttemptedDataManagementDisplay
{
  if ((GEOSupportsOfflineMaps() & 1) != 0 || [(MapsOfflineUIHelper *)self hasExpiredSubscriptions])
  {
    _osUpdateRequiredAlert = 0;
  }

  else if (GEOConfigGetBOOL())
  {
    _osUpdateRequiredAlert = [(MapsOfflineUIHelper *)self _osUpdateRequiredAlert];
  }

  else
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"OFFLINE_MAPS_NOT_AVAILABLE_ALERT_TITLE" value:@"localized string not found" table:@"Offline"];

    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"OFFLINE_MAPS_NOT_AVAILABLE_ALERT_MESSAGE" value:@"localized string not found" table:@"Offline"];

    _osUpdateRequiredAlert = [UIAlertController alertControllerWithTitle:v6 message:v8 preferredStyle:1];
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"OFFLINE_MAPS_NOT_AVAILABLE_ALERT_ACTION" value:@"localized string not found" table:@"Offline"];
    v11 = [UIAlertAction actionWithTitle:v10 style:1 handler:0];
    [_osUpdateRequiredAlert addAction:v11];
  }

  return _osUpdateRequiredAlert;
}

- (id)_osUpdateRequiredAlert
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"OFFLINE_MAPS_SOFTWARE_UPDATE_REQUIRED_ALERT_TITLE" value:@"localized string not found" table:@"Offline"];

  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"OFFLINE_MAPS_SOFTWARE_UPDATE_REQUIRED_ALERT_MESSAGE" value:@"localized string not found" table:@"Offline"];

  v6 = [UIAlertController alertControllerWithTitle:v3 message:v5 preferredStyle:1];
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"OFFLINE_MAPS_SOFTWARE_UPDATE_REQUIRED_NOT_NOW_ALERT_ACTION" value:@"localized string not found" table:@"Offline"];
  v9 = [UIAlertAction actionWithTitle:v8 style:1 handler:0];
  [v6 addAction:v9];

  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:@"OFFLINE_MAPS_SOFTWARE_UPDATE_REQUIRED_UPDATE_ALERT_ACTION" value:@"localized string not found" table:@"Offline"];
  v12 = [UIAlertAction actionWithTitle:v11 style:0 handler:&stru_1016566D8];

  [v6 addAction:v12];
  [v6 setPreferredAction:v12];

  return v6;
}

@end