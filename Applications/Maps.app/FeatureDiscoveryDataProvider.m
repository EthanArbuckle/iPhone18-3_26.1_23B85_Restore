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
- (void)_updateAndNotifyObservers:(BOOL)a3;
- (void)_updateFeatures;
- (void)dealloc;
- (void)homeDataProvidingObjectDidUpdate:(id)a3;
- (void)setActive:(BOOL)a3;
- (void)setOfflineMapsDiscoveryActionDelegate:(id)a3;
- (void)setShowEVOnboardingBanner:(BOOL)a3;
- (void)setShowNearbyTransitBanner:(BOOL)a3;
- (void)setShowOfflineDownloadingTip:(BOOL)a3;
- (void)setShowOfflineMapsBanner:(BOOL)a3;
- (void)setShowOfflinePairedDeviceDiskSpaceTip:(BOOL)a3;
- (void)setShowPreferredNetworksBanner:(BOOL)a3;
- (void)setShowRatingsAndPhotosBanner:(BOOL)a3;
- (void)setShowTransitPayBanner:(BOOL)a3;
- (void)setTransitPayActionDelegate:(id)a3;
- (void)source:(id)a3 didUpdateAvailability:(BOOL)a4;
- (void)updateFeaturesWithSuggestions:(id)a3;
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

    v5 = [(NearbyTransitFeatureDiscoverySource *)v2->_nearbyTransitDiscoverySource observers];
    [v5 registerObserver:v2];

    [(NearbyTransitFeatureDiscoverySource *)v2->_nearbyTransitDiscoverySource updateFeatureAvailabilityIfNecessary];
    v6 = MapsSuggestionsResourceDepotForMapsProcess();
    v7 = objc_alloc_init(RealPaymentPolygonFetcher);
    v8 = objc_alloc_init(MapsRealLocationUpdater);
    v9 = [TransitPayFeatureDiscoverySource alloc];
    v10 = [v6 oneInsights];
    v11 = [(TransitPayFeatureDiscoverySource *)v9 initWithInsights:v10 paymentPolygonFetcher:v7 locationUpdater:v8 isActive:1];
    transitPayDiscoverySource = v2->_transitPayDiscoverySource;
    v2->_transitPayDiscoverySource = v11;

    v13 = [(TransitPayFeatureDiscoverySource *)v2->_transitPayDiscoverySource observers];
    [v13 registerObserver:v2];

    [(TransitPayFeatureDiscoverySource *)v2->_transitPayDiscoverySource updateFeatureEligibility];
    v14 = [OfflineMapsFeatureDiscoverySource alloc];
    v15 = [v6 oneInsights];
    v16 = [(OfflineMapsFeatureDiscoverySource *)v14 initWithInsights:v15 locationUpdater:v8 isActive:GEOSupportsOfflineMaps()];
    offlineMapsFeatureDiscoverySource = v2->_offlineMapsFeatureDiscoverySource;
    v2->_offlineMapsFeatureDiscoverySource = v16;

    v18 = [(OfflineMapsFeatureDiscoverySource *)v2->_offlineMapsFeatureDiscoverySource observers];
    [v18 registerObserver:v2];

    [(OfflineMapsFeatureDiscoverySource *)v2->_offlineMapsFeatureDiscoverySource updateFeatureEligibility];
    v19 = [[OfflineMapsDownloadFeatureTipSource alloc] initWithIsActive:GEOSupportsOfflineMaps()];
    offlineMapsDownloadFeatureTipSource = v2->_offlineMapsDownloadFeatureTipSource;
    v2->_offlineMapsDownloadFeatureTipSource = v19;

    v21 = [(OfflineMapsDownloadFeatureTipSource *)v2->_offlineMapsDownloadFeatureTipSource observers];
    [v21 registerObserver:v2];

    v22 = [[OfflineMapsPairedDeviceDiskSpaceTipSource alloc] initWithIsActive:GEOSupportsOfflineMaps()];
    offlineMapsPairedDeviceDiskSpaceTipSource = v2->_offlineMapsPairedDeviceDiskSpaceTipSource;
    v2->_offlineMapsPairedDeviceDiskSpaceTipSource = v22;

    v24 = [(OfflineMapsPairedDeviceDiskSpaceTipSource *)v2->_offlineMapsPairedDeviceDiskSpaceTipSource observers];
    [v24 registerObserver:v2];

    v25 = [[EVRoutingFeatureDiscoverySource alloc] initWithPriority:1 delegate:v2];
    evRoutingFeatureDiscoverySource = v2->_evRoutingFeatureDiscoverySource;
    v2->_evRoutingFeatureDiscoverySource = v25;

    v27 = objc_alloc_init(PreferredNetworksFeatureDiscoverySource);
    preferredNetworkFeatureDiscoverySource = v2->_preferredNetworkFeatureDiscoverySource;
    v2->_preferredNetworkFeatureDiscoverySource = v27;

    v29 = [(PreferredNetworksFeatureDiscoverySource *)v2->_preferredNetworkFeatureDiscoverySource observers];
    [v29 registerObserver:v2];

    v2->_showNearbyTransitBanner = [(NearbyTransitFeatureDiscoverySource *)v2->_nearbyTransitDiscoverySource shouldShowFeature];
    v2->_hasInitialData = [(NearbyTransitFeatureDiscoverySource *)v2->_nearbyTransitDiscoverySource hasInitialData];
    [(FeatureDiscoveryDataProvider *)v2 _updateAndNotifyObservers:0];
  }

  return v2;
}

- (void)_updateFeatures
{
  v7 = objc_alloc_init(NSMutableArray);
  v3 = [(FeatureDiscoveryDataProvider *)self _featureTipModelWithPrecedence];
  v4 = [(FeatureDiscoveryDataProvider *)self _featureDiscoveryModelWithPrecedence];
  if (v3)
  {
    [v7 addObject:v3];
  }

  if (v4)
  {
    [v7 addObject:v4];
  }

  v5 = [v7 copy];
  features = self->_features;
  self->_features = v5;
}

- (id)_featureTipModelWithPrecedence
{
  if ([(FeatureDiscoveryDataProvider *)self showOfflineDownloadingTip])
  {
    v3 = [(OfflineMapsDownloadFeatureTipSource *)self->_offlineMapsDownloadFeatureTipSource offlineMapsDownloadTipModel];
  }

  else if ([(FeatureDiscoveryDataProvider *)self showOfflinePairedDeviceDiskSpaceTip])
  {
    v3 = [(OfflineMapsPairedDeviceDiskSpaceTipSource *)self->_offlineMapsPairedDeviceDiskSpaceTipSource offlineMapsPairedDeviceDiskSpaceTipModel];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_featureDiscoveryModelWithPrecedence
{
  if ([(FeatureDiscoveryDataProvider *)self showEVOnboardingBanner])
  {
    v3 = [(FeatureDiscoveryDataProvider *)self _modelForEVRouting];
  }

  else if ([(FeatureDiscoveryDataProvider *)self showPreferredNetworksBanner])
  {
    v3 = [(FeatureDiscoveryDataProvider *)self _modelForPreferredNetworks];
  }

  else if ([(FeatureDiscoveryDataProvider *)self showOfflineMapsBanner])
  {
    v3 = [(FeatureDiscoveryDataProvider *)self _modelForOfflineMapsTip];
  }

  else if ([(FeatureDiscoveryDataProvider *)self showTransitPayBanner])
  {
    v3 = [(FeatureDiscoveryDataProvider *)self _modelForTransitPay];
  }

  else if ([(FeatureDiscoveryDataProvider *)self showNearbyTransitBanner])
  {
    v3 = [(FeatureDiscoveryDataProvider *)self _modelForNearbyTransit];
  }

  else if ([(FeatureDiscoveryDataProvider *)self showRatingsAndPhotosBanner])
  {
    v3 = [(FeatureDiscoveryDataProvider *)self _modelForRatingAndPhotos];
  }

  else
  {
    v3 = 0;
  }

  return v3;
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

- (void)setOfflineMapsDiscoveryActionDelegate:(id)a3
{
  obj = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (obj)
  {
    WeakRetained = objc_loadWeakRetained(&v4->_offlineMapsDiscoveryActionDelegate);

    if (WeakRetained != obj)
    {
      objc_storeWeak(&v4->_offlineMapsDiscoveryActionDelegate, obj);
      [(OfflineMapsFeatureDiscoverySource *)v4->_offlineMapsFeatureDiscoverySource setActionDelegate:obj];
    }
  }

  objc_sync_exit(v4);
}

- (void)setTransitPayActionDelegate:(id)a3
{
  obj = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (obj)
  {
    WeakRetained = objc_loadWeakRetained(&v4->_transitPayActionDelegate);

    if (WeakRetained != obj)
    {
      objc_storeWeak(&v4->_transitPayActionDelegate, obj);
      [(TransitPayFeatureDiscoverySource *)v4->_transitPayDiscoverySource setTransitPayActionDelegate:obj];
    }
  }

  objc_sync_exit(v4);
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

- (void)setShowOfflinePairedDeviceDiskSpaceTip:(BOOL)a3
{
  if (self->_showOfflinePairedDeviceDiskSpaceTip != a3)
  {
    self->_showOfflinePairedDeviceDiskSpaceTip = a3;
    [(FeatureDiscoveryDataProvider *)self _updateAndNotifyObservers:1];
  }
}

- (void)setShowOfflineDownloadingTip:(BOOL)a3
{
  if (self->_showOfflineDownloadingTip != a3)
  {
    self->_showOfflineDownloadingTip = a3;
    [(FeatureDiscoveryDataProvider *)self _updateAndNotifyObservers:1];
  }
}

- (void)setShowPreferredNetworksBanner:(BOOL)a3
{
  if (self->_showPreferredNetworksBanner != a3)
  {
    self->_showPreferredNetworksBanner = a3;
    [(FeatureDiscoveryDataProvider *)self _updateAndNotifyObservers:1];
  }
}

- (void)setShowEVOnboardingBanner:(BOOL)a3
{
  if (self->_showEVOnboardingBanner != a3)
  {
    self->_showEVOnboardingBanner = a3;
    [(FeatureDiscoveryDataProvider *)self _updateAndNotifyObservers:1];
  }
}

- (void)setShowRatingsAndPhotosBanner:(BOOL)a3
{
  if (self->_showRatingsAndPhotosBanner != a3)
  {
    self->_showRatingsAndPhotosBanner = a3;
    [(FeatureDiscoveryDataProvider *)self _updateAndNotifyObservers:1];
  }
}

- (void)setShowOfflineMapsBanner:(BOOL)a3
{
  if (self->_showOfflineMapsBanner != a3)
  {
    self->_showOfflineMapsBanner = a3;
    [(FeatureDiscoveryDataProvider *)self _updateAndNotifyObservers:1];
  }
}

- (void)setShowTransitPayBanner:(BOOL)a3
{
  if (self->_showTransitPayBanner != a3)
  {
    self->_showTransitPayBanner = a3;
    [(FeatureDiscoveryDataProvider *)self _updateAndNotifyObservers:1];
  }
}

- (void)setShowNearbyTransitBanner:(BOOL)a3
{
  if (self->_showNearbyTransitBanner != a3)
  {
    self->_showNearbyTransitBanner = a3;
    [(FeatureDiscoveryDataProvider *)self _updateAndNotifyObservers:1];
  }
}

- (void)updateFeaturesWithSuggestions:(id)a3
{
  v4 = a3;
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
    [v4 enumerateObjectsUsingBlock:v5];
  }

  [(FeatureDiscoveryDataProvider *)self setShowRatingsAndPhotosBanner:*(v7 + 24)];
  [(NearbyTransitFeatureDiscoverySource *)self->_nearbyTransitDiscoverySource updateFeatureAvailabilityIfNecessary];
  _Block_object_dispose(&v6, 8);
}

- (void)_updateAndNotifyObservers:(BOOL)a3
{
  if (self->_active)
  {
    v3 = a3;
    [(FeatureDiscoveryDataProvider *)self _updateFeatures];
    if (v3)
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

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    v3 = a3;
    self->_active = a3;
    [(NearbyTransitFeatureDiscoverySource *)self->_nearbyTransitDiscoverySource setActive:?];
    if (v3)
    {
      [(FeatureDiscoveryDataProvider *)self _updateFeatures];

      [(FeatureDiscoveryDataProvider *)self _updateAndNotifyObservers:0];
    }
  }
}

- (void)source:(id)a3 didUpdateAvailability:(BOOL)a4
{
  v6 = a3;
  if (self->_evRoutingFeatureDiscoverySource == v6)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100796D70;
    v10[3] = &unk_101661AE0;
    v10[4] = self;
    v11 = a4;
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

- (void)homeDataProvidingObjectDidUpdate:(id)a3
{
  v4 = a3;
  nearbyTransitDiscoverySource = self->_nearbyTransitDiscoverySource;
  v11 = v4;
  if (nearbyTransitDiscoverySource == v4)
  {
    [(FeatureDiscoveryDataProvider *)self setShowNearbyTransitBanner:[(NearbyTransitFeatureDiscoverySource *)nearbyTransitDiscoverySource shouldShowFeature]];
    [(FeatureDiscoveryDataProvider *)self setHasInitialData:[(NearbyTransitFeatureDiscoverySource *)self->_nearbyTransitDiscoverySource hasInitialData]];
    v4 = v11;
  }

  transitPayDiscoverySource = self->_transitPayDiscoverySource;
  if (transitPayDiscoverySource == v4)
  {
    [(FeatureDiscoveryDataProvider *)self setShowTransitPayBanner:[(TransitPayFeatureDiscoverySource *)transitPayDiscoverySource showFeature]];
    v4 = v11;
  }

  offlineMapsFeatureDiscoverySource = self->_offlineMapsFeatureDiscoverySource;
  if (offlineMapsFeatureDiscoverySource == v4)
  {
    [(FeatureDiscoveryDataProvider *)self setShowOfflineMapsBanner:[(OfflineMapsFeatureDiscoverySource *)offlineMapsFeatureDiscoverySource showFeature]];
    v4 = v11;
  }

  preferredNetworkFeatureDiscoverySource = self->_preferredNetworkFeatureDiscoverySource;
  if (preferredNetworkFeatureDiscoverySource == v4)
  {
    [(FeatureDiscoveryDataProvider *)self setShowPreferredNetworksBanner:[(PreferredNetworksFeatureDiscoverySource *)preferredNetworkFeatureDiscoverySource showFeature]];
    v4 = v11;
  }

  offlineMapsDownloadFeatureTipSource = self->_offlineMapsDownloadFeatureTipSource;
  if (offlineMapsDownloadFeatureTipSource == v4)
  {
    [(FeatureDiscoveryDataProvider *)self setShowOfflineDownloadingTip:[(OfflineMapsDownloadFeatureTipSource *)offlineMapsDownloadFeatureTipSource showFeature]];
    v4 = v11;
  }

  offlineMapsPairedDeviceDiskSpaceTipSource = self->_offlineMapsPairedDeviceDiskSpaceTipSource;
  if (offlineMapsPairedDeviceDiskSpaceTipSource == v4)
  {
    [(FeatureDiscoveryDataProvider *)self setShowOfflinePairedDeviceDiskSpaceTip:[(OfflineMapsPairedDeviceDiskSpaceTipSource *)offlineMapsPairedDeviceDiskSpaceTipSource showFeature]];
    v4 = v11;
  }
}

@end