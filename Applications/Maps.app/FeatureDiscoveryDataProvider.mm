@interface FeatureDiscoveryDataProvider
- (FeatureDiscoveryDataProvider)init;
- (GEOObserverHashTable)observers;
- (OfflineMapsFeatureDiscoveryActionDelegate)offlineMapsDiscoveryActionDelegate;
- (TransitPayActionDelegate)transitPayActionDelegate;
- (UGCPOIEnrichmentActionDelegate)poiEnrichmentActionDelegate;
- (id)_featureDiscoveryModelWithPrecedence;
- (id)_featureTipModelWithPrecedence;
- (id)_modelForNearbyTransit;
- (id)_modelForRatingAndPhotos;
- (void)_addNearbyTransitToFavorites;
- (void)_updateAndNotifyObservers:(BOOL)observers;
- (void)_updateFeatures;
- (void)dealloc;
- (void)homeDataProvidingObjectDidUpdate:(id)update;
- (void)setActive:(BOOL)active;
- (void)setOfflineMapsDiscoveryActionDelegate:(id)delegate;
- (void)setShowEVOnboardingBanner:(BOOL)banner;
- (void)setShowNearbyTransitBanner:(BOOL)banner;
- (void)setShowOfflineDownloadingTip:(BOOL)tip;
- (void)setShowOfflineMapsBanner:(BOOL)banner;
- (void)setShowOfflinePairedDeviceDiskSpaceTip:(BOOL)tip;
- (void)setShowPreferredNetworksBanner:(BOOL)banner;
- (void)setShowRatingsAndPhotosBanner:(BOOL)banner;
- (void)setShowTransitPayBanner:(BOOL)banner;
- (void)setTransitPayActionDelegate:(id)delegate;
- (void)source:(id)source didUpdateAvailability:(BOOL)availability;
- (void)updateFeaturesWithSuggestions:(id)suggestions;
@end

@implementation FeatureDiscoveryDataProvider

- (FeatureDiscoveryDataProvider)init
{
  v31.receiver = self;
  v31.super_class = FeatureDiscoveryDataProvider;
  v2 = [(FeatureDiscoveryDataProvider *)&v31 init];
  if (v2)
  {
    _GEOConfigAddDelegateListenerForKey();
    v3 = objc_alloc_init(NearbyTransitFeatureDiscoverySource);
    nearbyTransitDiscoverySource = v2->_nearbyTransitDiscoverySource;
    v2->_nearbyTransitDiscoverySource = v3;

    observers = [(NearbyTransitFeatureDiscoverySource *)v2->_nearbyTransitDiscoverySource observers];
    [observers registerObserver:v2];

    [(NearbyTransitFeatureDiscoverySource *)v2->_nearbyTransitDiscoverySource updateFeatureAvailabilityIfNecessary];
    v6 = MapsSuggestionsResourceDepotForMapsProcess();
    v7 = objc_alloc_init(RealPaymentPolygonFetcher);
    v8 = objc_alloc_init(MapsRealLocationUpdater);
    v9 = [TransitPayFeatureDiscoverySource alloc];
    oneInsights = [v6 oneInsights];
    v11 = [(TransitPayFeatureDiscoverySource *)v9 initWithInsights:oneInsights paymentPolygonFetcher:v7 locationUpdater:v8 isActive:1];
    transitPayDiscoverySource = v2->_transitPayDiscoverySource;
    v2->_transitPayDiscoverySource = v11;

    observers2 = [(TransitPayFeatureDiscoverySource *)v2->_transitPayDiscoverySource observers];
    [observers2 registerObserver:v2];

    [(TransitPayFeatureDiscoverySource *)v2->_transitPayDiscoverySource updateFeatureEligibility];
    v14 = [OfflineMapsFeatureDiscoverySource alloc];
    oneInsights2 = [v6 oneInsights];
    v16 = [(OfflineMapsFeatureDiscoverySource *)v14 initWithInsights:oneInsights2 locationUpdater:v8 isActive:GEOSupportsOfflineMaps()];
    offlineMapsFeatureDiscoverySource = v2->_offlineMapsFeatureDiscoverySource;
    v2->_offlineMapsFeatureDiscoverySource = v16;

    observers3 = [(OfflineMapsFeatureDiscoverySource *)v2->_offlineMapsFeatureDiscoverySource observers];
    [observers3 registerObserver:v2];

    [(OfflineMapsFeatureDiscoverySource *)v2->_offlineMapsFeatureDiscoverySource updateFeatureEligibility];
    v19 = [[OfflineMapsDownloadFeatureTipSource alloc] initWithIsActive:GEOSupportsOfflineMaps()];
    offlineMapsDownloadFeatureTipSource = v2->_offlineMapsDownloadFeatureTipSource;
    v2->_offlineMapsDownloadFeatureTipSource = v19;

    observers4 = [(OfflineMapsDownloadFeatureTipSource *)v2->_offlineMapsDownloadFeatureTipSource observers];
    [observers4 registerObserver:v2];

    v22 = [[OfflineMapsPairedDeviceDiskSpaceTipSource alloc] initWithIsActive:GEOSupportsOfflineMaps()];
    offlineMapsPairedDeviceDiskSpaceTipSource = v2->_offlineMapsPairedDeviceDiskSpaceTipSource;
    v2->_offlineMapsPairedDeviceDiskSpaceTipSource = v22;

    observers5 = [(OfflineMapsPairedDeviceDiskSpaceTipSource *)v2->_offlineMapsPairedDeviceDiskSpaceTipSource observers];
    [observers5 registerObserver:v2];

    v25 = [[EVRoutingFeatureDiscoverySource alloc] initWithPriority:1 delegate:v2];
    evRoutingFeatureDiscoverySource = v2->_evRoutingFeatureDiscoverySource;
    v2->_evRoutingFeatureDiscoverySource = v25;

    v27 = objc_alloc_init(PreferredNetworksFeatureDiscoverySource);
    preferredNetworkFeatureDiscoverySource = v2->_preferredNetworkFeatureDiscoverySource;
    v2->_preferredNetworkFeatureDiscoverySource = v27;

    observers6 = [(PreferredNetworksFeatureDiscoverySource *)v2->_preferredNetworkFeatureDiscoverySource observers];
    [observers6 registerObserver:v2];

    v2->_showNearbyTransitBanner = [(NearbyTransitFeatureDiscoverySource *)v2->_nearbyTransitDiscoverySource shouldShowFeature];
    v2->_hasInitialData = [(NearbyTransitFeatureDiscoverySource *)v2->_nearbyTransitDiscoverySource hasInitialData];
    [(FeatureDiscoveryDataProvider *)v2 _updateAndNotifyObservers:0];
  }

  return v2;
}

- (void)_updateFeatures
{
  v7 = objc_alloc_init(NSMutableArray);
  _featureTipModelWithPrecedence = [(FeatureDiscoveryDataProvider *)self _featureTipModelWithPrecedence];
  _featureDiscoveryModelWithPrecedence = [(FeatureDiscoveryDataProvider *)self _featureDiscoveryModelWithPrecedence];
  if (_featureTipModelWithPrecedence)
  {
    [v7 addObject:_featureTipModelWithPrecedence];
  }

  if (_featureDiscoveryModelWithPrecedence)
  {
    [v7 addObject:_featureDiscoveryModelWithPrecedence];
  }

  v5 = [v7 copy];
  features = self->_features;
  self->_features = v5;
}

- (id)_featureTipModelWithPrecedence
{
  if ([(FeatureDiscoveryDataProvider *)self showOfflineDownloadingTip])
  {
    offlineMapsDownloadTipModel = [(OfflineMapsDownloadFeatureTipSource *)self->_offlineMapsDownloadFeatureTipSource offlineMapsDownloadTipModel];
  }

  else if ([(FeatureDiscoveryDataProvider *)self showOfflinePairedDeviceDiskSpaceTip])
  {
    offlineMapsDownloadTipModel = [(OfflineMapsPairedDeviceDiskSpaceTipSource *)self->_offlineMapsPairedDeviceDiskSpaceTipSource offlineMapsPairedDeviceDiskSpaceTipModel];
  }

  else
  {
    offlineMapsDownloadTipModel = 0;
  }

  return offlineMapsDownloadTipModel;
}

- (id)_featureDiscoveryModelWithPrecedence
{
  if ([(FeatureDiscoveryDataProvider *)self showEVOnboardingBanner])
  {
    _modelForEVRouting = [(FeatureDiscoveryDataProvider *)self _modelForEVRouting];
  }

  else if ([(FeatureDiscoveryDataProvider *)self showPreferredNetworksBanner])
  {
    _modelForEVRouting = [(FeatureDiscoveryDataProvider *)self _modelForPreferredNetworks];
  }

  else if ([(FeatureDiscoveryDataProvider *)self showOfflineMapsBanner])
  {
    _modelForEVRouting = [(FeatureDiscoveryDataProvider *)self _modelForOfflineMapsTip];
  }

  else if ([(FeatureDiscoveryDataProvider *)self showTransitPayBanner])
  {
    _modelForEVRouting = [(FeatureDiscoveryDataProvider *)self _modelForTransitPay];
  }

  else if ([(FeatureDiscoveryDataProvider *)self showNearbyTransitBanner])
  {
    _modelForEVRouting = [(FeatureDiscoveryDataProvider *)self _modelForNearbyTransit];
  }

  else if ([(FeatureDiscoveryDataProvider *)self showRatingsAndPhotosBanner])
  {
    _modelForEVRouting = [(FeatureDiscoveryDataProvider *)self _modelForRatingAndPhotos];
  }

  else
  {
    _modelForEVRouting = 0;
  }

  return _modelForEVRouting;
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

- (OfflineMapsFeatureDiscoveryActionDelegate)offlineMapsDiscoveryActionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_offlineMapsDiscoveryActionDelegate);

  return WeakRetained;
}

- (TransitPayActionDelegate)transitPayActionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_transitPayActionDelegate);

  return WeakRetained;
}

- (UGCPOIEnrichmentActionDelegate)poiEnrichmentActionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_poiEnrichmentActionDelegate);

  return WeakRetained;
}

- (void)setOfflineMapsDiscoveryActionDelegate:(id)delegate
{
  obj = delegate;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (obj)
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->_offlineMapsDiscoveryActionDelegate);

    if (WeakRetained != obj)
    {
      objc_storeWeak(&selfCopy->_offlineMapsDiscoveryActionDelegate, obj);
      [(OfflineMapsFeatureDiscoverySource *)selfCopy->_offlineMapsFeatureDiscoverySource setActionDelegate:obj];
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)setTransitPayActionDelegate:(id)delegate
{
  obj = delegate;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (obj)
  {
    WeakRetained = objc_loadWeakRetained(&selfCopy->_transitPayActionDelegate);

    if (WeakRetained != obj)
    {
      objc_storeWeak(&selfCopy->_transitPayActionDelegate, obj);
      [(TransitPayFeatureDiscoverySource *)selfCopy->_transitPayDiscoverySource setTransitPayActionDelegate:obj];
    }
  }

  objc_sync_exit(selfCopy);
}

- (id)_modelForNearbyTransit
{
  objc_initWeak(&location, self);
  nearbyTransitDiscoverySource = self->_nearbyTransitDiscoverySource;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1007963D4;
  v8[3] = &unk_101661B98;
  objc_copyWeak(&v9, &location);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100796434;
  v6[3] = &unk_101661B98;
  objc_copyWeak(&v7, &location);
  v4 = [(NearbyTransitFeatureDiscoverySource *)nearbyTransitDiscoverySource discoveryModelWithActionHandler:v8 displayHandler:&stru_1016290F8 cancelHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v4;
}

- (id)_modelForRatingAndPhotos
{
  objc_initWeak(&location, self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1007965F4;
  v6[3] = &unk_101661B98;
  objc_copyWeak(&v7, &location);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100796664;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  v2 = [FeatureDiscoveryModel ratingsAndPhotosDiscoveryModelWithActionHandler:v6 cancelHandler:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v2;
}

- (void)_addNearbyTransitToFavorites
{
  v2 = sub_10005F62C();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Will add Nearby Transit to Favorites via Feature Discovery", v5, 2u);
  }

  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    v3 = objc_alloc_init(_TtC4Maps16MapsFavoriteItem);
    [(MapsFavoriteItem *)v3 setType:6];
    [(MapsFavoriteItem *)v3 setIdentifier:@"NearbyTransit"];
    [(MapsFavoriteItem *)v3 setCustomName:@"NearbyTransit"];
  }

  else
  {
    v3 = [[MapsSuggestionsShortcut alloc] initWithType:6 identifier:@"NearbyTransit" geoMapItem:0 customName:@"NearbyTransit"];
  }

  v4 = [ShortcutEditSession addSessionWithShortcut:v3];

  [v4 setMoveToPreferredIndexInFavorites:1];
  [v4 saveWithCompletion:&stru_1016290D8];
}

- (void)setShowOfflinePairedDeviceDiskSpaceTip:(BOOL)tip
{
  if (self->_showOfflinePairedDeviceDiskSpaceTip != tip)
  {
    self->_showOfflinePairedDeviceDiskSpaceTip = tip;
    [(FeatureDiscoveryDataProvider *)self _updateAndNotifyObservers:1];
  }
}

- (void)setShowOfflineDownloadingTip:(BOOL)tip
{
  if (self->_showOfflineDownloadingTip != tip)
  {
    self->_showOfflineDownloadingTip = tip;
    [(FeatureDiscoveryDataProvider *)self _updateAndNotifyObservers:1];
  }
}

- (void)setShowPreferredNetworksBanner:(BOOL)banner
{
  if (self->_showPreferredNetworksBanner != banner)
  {
    self->_showPreferredNetworksBanner = banner;
    [(FeatureDiscoveryDataProvider *)self _updateAndNotifyObservers:1];
  }
}

- (void)setShowEVOnboardingBanner:(BOOL)banner
{
  if (self->_showEVOnboardingBanner != banner)
  {
    self->_showEVOnboardingBanner = banner;
    [(FeatureDiscoveryDataProvider *)self _updateAndNotifyObservers:1];
  }
}

- (void)setShowRatingsAndPhotosBanner:(BOOL)banner
{
  if (self->_showRatingsAndPhotosBanner != banner)
  {
    self->_showRatingsAndPhotosBanner = banner;
    [(FeatureDiscoveryDataProvider *)self _updateAndNotifyObservers:1];
  }
}

- (void)setShowOfflineMapsBanner:(BOOL)banner
{
  if (self->_showOfflineMapsBanner != banner)
  {
    self->_showOfflineMapsBanner = banner;
    [(FeatureDiscoveryDataProvider *)self _updateAndNotifyObservers:1];
  }
}

- (void)setShowTransitPayBanner:(BOOL)banner
{
  if (self->_showTransitPayBanner != banner)
  {
    self->_showTransitPayBanner = banner;
    [(FeatureDiscoveryDataProvider *)self _updateAndNotifyObservers:1];
  }
}

- (void)setShowNearbyTransitBanner:(BOOL)banner
{
  if (self->_showNearbyTransitBanner != banner)
  {
    self->_showNearbyTransitBanner = banner;
    [(FeatureDiscoveryDataProvider *)self _updateAndNotifyObservers:1];
  }
}

- (void)updateFeaturesWithSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (+[RatingRequestHomeAvailability shouldShowRatingRequestDiscoveryBanner])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100796A4C;
    v5[3] = &unk_1016290B8;
    v5[4] = &v6;
    [suggestionsCopy enumerateObjectsUsingBlock:v5];
  }

  [(FeatureDiscoveryDataProvider *)self setShowRatingsAndPhotosBanner:*(v7 + 24)];
  [(NearbyTransitFeatureDiscoverySource *)self->_nearbyTransitDiscoverySource updateFeatureAvailabilityIfNecessary];
  _Block_object_dispose(&v6, 8);
}

- (void)_updateAndNotifyObservers:(BOOL)observers
{
  if (self->_active)
  {
    observersCopy = observers;
    [(FeatureDiscoveryDataProvider *)self _updateFeatures];
    if (observersCopy)
    {
      observers = self->_observers;

      [(GEOObserverHashTable *)observers homeDataProvidingObjectDidUpdate:self];
    }
  }
}

- (void)dealloc
{
  GEOConfigRemoveDelegateListenerForAllKeys();
  v3.receiver = self;
  v3.super_class = FeatureDiscoveryDataProvider;
  [(FeatureDiscoveryDataProvider *)&v3 dealloc];
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    activeCopy = active;
    self->_active = active;
    [(NearbyTransitFeatureDiscoverySource *)self->_nearbyTransitDiscoverySource setActive:?];
    if (activeCopy)
    {
      [(FeatureDiscoveryDataProvider *)self _updateFeatures];

      [(FeatureDiscoveryDataProvider *)self _updateAndNotifyObservers:0];
    }
  }
}

- (void)source:(id)source didUpdateAvailability:(BOOL)availability
{
  sourceCopy = source;
  if (self->_evRoutingFeatureDiscoverySource == sourceCopy)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100796D70;
    v10[3] = &unk_101661AE0;
    v10[4] = self;
    availabilityCopy = availability;
    dispatch_async(&_dispatch_main_q, v10);
  }

  else
  {
    v7 = sub_10006D178();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v13 = "[FeatureDiscoveryDataProvider source:didUpdateAvailability:]";
      v14 = 2080;
      v15 = "FeatureDiscoveryDataProvider.m";
      v16 = 1024;
      v17 = 166;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", buf, 0x1Cu);
    }

    if (sub_100E03634())
    {
      v8 = sub_10006D178();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = +[NSThread callStackSymbols];
        *buf = 138412290;
        v13 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }
    }
  }
}

- (void)homeDataProvidingObjectDidUpdate:(id)update
{
  updateCopy = update;
  nearbyTransitDiscoverySource = self->_nearbyTransitDiscoverySource;
  v11 = updateCopy;
  if (nearbyTransitDiscoverySource == updateCopy)
  {
    [(FeatureDiscoveryDataProvider *)self setShowNearbyTransitBanner:[(NearbyTransitFeatureDiscoverySource *)nearbyTransitDiscoverySource shouldShowFeature]];
    [(FeatureDiscoveryDataProvider *)self setHasInitialData:[(NearbyTransitFeatureDiscoverySource *)self->_nearbyTransitDiscoverySource hasInitialData]];
    updateCopy = v11;
  }

  transitPayDiscoverySource = self->_transitPayDiscoverySource;
  if (transitPayDiscoverySource == updateCopy)
  {
    [(FeatureDiscoveryDataProvider *)self setShowTransitPayBanner:[(TransitPayFeatureDiscoverySource *)transitPayDiscoverySource showFeature]];
    updateCopy = v11;
  }

  offlineMapsFeatureDiscoverySource = self->_offlineMapsFeatureDiscoverySource;
  if (offlineMapsFeatureDiscoverySource == updateCopy)
  {
    [(FeatureDiscoveryDataProvider *)self setShowOfflineMapsBanner:[(OfflineMapsFeatureDiscoverySource *)offlineMapsFeatureDiscoverySource showFeature]];
    updateCopy = v11;
  }

  preferredNetworkFeatureDiscoverySource = self->_preferredNetworkFeatureDiscoverySource;
  if (preferredNetworkFeatureDiscoverySource == updateCopy)
  {
    [(FeatureDiscoveryDataProvider *)self setShowPreferredNetworksBanner:[(PreferredNetworksFeatureDiscoverySource *)preferredNetworkFeatureDiscoverySource showFeature]];
    updateCopy = v11;
  }

  offlineMapsDownloadFeatureTipSource = self->_offlineMapsDownloadFeatureTipSource;
  if (offlineMapsDownloadFeatureTipSource == updateCopy)
  {
    [(FeatureDiscoveryDataProvider *)self setShowOfflineDownloadingTip:[(OfflineMapsDownloadFeatureTipSource *)offlineMapsDownloadFeatureTipSource showFeature]];
    updateCopy = v11;
  }

  offlineMapsPairedDeviceDiskSpaceTipSource = self->_offlineMapsPairedDeviceDiskSpaceTipSource;
  if (offlineMapsPairedDeviceDiskSpaceTipSource == updateCopy)
  {
    [(FeatureDiscoveryDataProvider *)self setShowOfflinePairedDeviceDiskSpaceTip:[(OfflineMapsPairedDeviceDiskSpaceTipSource *)offlineMapsPairedDeviceDiskSpaceTipSource showFeature]];
    updateCopy = v11;
  }
}

@end