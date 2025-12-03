@interface TransitPayFeatureDiscoverySource
- (BOOL)_hasPaymentAndSuggestionsData:(id)data error:(id)error;
- (GEOObserverHashTable)observers;
- (TransitPayActionDelegate)transitPayActionDelegate;
- (TransitPayFeatureDiscoverySource)initWithInsights:(id)insights paymentPolygonFetcher:(id)fetcher locationUpdater:(id)updater isActive:(BOOL)active;
- (id)transitPayDiscoveryModel;
- (void)_fetchInsightsWithCompletion:(id)completion;
- (void)_notifyObservers;
- (void)dealloc;
- (void)didUpdateLocation:(id)location;
- (void)fetchTransitMessageFromPassManagerUsingPolygon:(id)polygon;
- (void)paymentSetupViewController:(id)controller didFinishAddingPaymentPasses:(id)passes error:(id)error;
- (void)transitPassManagerDidChange:(id)change;
- (void)transitPayTipDismissedInRoutePlanning:(id)planning;
- (void)updateFeatureEligibility;
@end

@implementation TransitPayFeatureDiscoverySource

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
    userInterfaceIdiom = [v4 userInterfaceIdiom];

    if (userInterfaceIdiom)
    {
      v6 = sub_10003D020();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = objc_opt_class();
        v8 = v7;
        v9 = NSStringFromSelector(a2);
        *buf = 138412546;
        v14 = v7;
        v15 = 2112;
        v16 = v9;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%@ %@: User is not using an iPhone", buf, 0x16u);
      }
    }

    else
    {
      objc_initWeak(buf, self);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100069284;
      v11[3] = &unk_101654F00;
      objc_copyWeak(&v12, buf);
      [(TransitPayFeatureDiscoverySource *)self _fetchInsightsWithCompletion:v11];
      objc_destroyWeak(&v12);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v10 = sub_10003D020();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "The feature is NOT active. Returning. Is the feature flag on?", buf, 2u);
    }
  }
}

- (TransitPayActionDelegate)transitPayActionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_transitPayActionDelegate);

  return WeakRetained;
}

- (void)paymentSetupViewController:(id)controller didFinishAddingPaymentPasses:(id)passes error:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v7 = sub_10003D020();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      localizedDescription = [errorCopy localizedDescription];
      *buf = 138412290;
      v12 = localizedDescription;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Maps Home - Failed to provision transit card: %@", buf, 0xCu);
    }

    [(FeatureDiscoveryModel *)self->_model markActionExecuted:0];
  }

  else
  {
    objc_initWeak(buf, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100640D0C;
    block[3] = &unk_101661B98;
    objc_copyWeak(&v10, buf);
    dispatch_async(&_dispatch_main_q, block);
    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }
}

- (void)fetchTransitMessageFromPassManagerUsingPolygon:(id)polygon
{
  polygonCopy = polygon;
  transitPaymentMethodSuggestions = [polygonCopy transitPaymentMethodSuggestions];
  firstObject = [transitPaymentMethodSuggestions firstObject];
  self->_currentMarketMUID = [firstObject marketMUID];

  passManager = self->_passManager;
  supportedTransitPaymentMethods = [polygonCopy supportedTransitPaymentMethods];
  transitPaymentMethodSuggestions2 = [polygonCopy transitPaymentMethodSuggestions];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100640E70;
  v10[3] = &unk_101624930;
  v10[4] = self;
  [(TransitPassManager *)passManager fetchTransitMessageForRoute:0 paymentMethods:supportedTransitPaymentMethods suggestions:transitPaymentMethodSuggestions2 completion:v10];
}

- (void)transitPayTipDismissedInRoutePlanning:(id)planning
{
  userInfo = [planning userInfo];
  v5 = [userInfo objectForKey:@"TransitPayTipDismissedInRoutePlanningNotificationMarketMUIDKey"];
  v6 = v5;
  if (v5)
  {
    unsignedLongLongValue = [v5 unsignedLongLongValue];
    currentMarketMUID = self->_currentMarketMUID;
    v9 = sub_10003D020();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
    if (currentMarketMUID == unsignedLongLongValue)
    {
      if (v10)
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Hiding tip in Maps Home as it was dismissed in route planning.", buf, 2u);
      }

      objc_initWeak(buf, self);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10064126C;
      block[3] = &unk_101661B98;
      objc_copyWeak(&v13, buf);
      dispatch_async(&_dispatch_main_q, block);
      objc_destroyWeak(&v13);
      objc_destroyWeak(buf);
    }

    else
    {
      if (v10)
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "NOT hiding tip in Maps Home as it had different MUID than the one dismissed in route planning.", buf, 2u);
      }
    }
  }

  else
  {
    v11 = sub_10003D020();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "No market MUID was passed with the route planning tip dismissal", buf, 2u);
    }
  }
}

- (void)didUpdateLocation:(id)location
{
  locationCopy = location;
  v5 = sub_10003D020();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    latLng = [locationCopy latLng];
    [latLng lat];
    v8 = v7;
    latLng2 = [locationCopy latLng];
    [latLng2 lng];
    *buf = 134283777;
    v18 = v8;
    v19 = 2049;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Maps Home - Received Location Update at %{private}f, %{private}f", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v11 = CLLocationFromGEOLocation();
  MapsSuggestionsSetMostRecentLocation();

  queue = self->_queue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100641488;
  v14[3] = &unk_101661340;
  objc_copyWeak(&v16, buf);
  v15 = locationCopy;
  v13 = locationCopy;
  dispatch_async(queue, v14);

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);
}

- (BOOL)_hasPaymentAndSuggestionsData:(id)data error:(id)error
{
  dataCopy = data;
  errorCopy = error;
  if (!errorCopy && [dataCopy count])
  {
    firstObject = [dataCopy firstObject];
    supportedTransitPaymentMethods = [firstObject supportedTransitPaymentMethods];
    v10 = supportedTransitPaymentMethods;
    if (supportedTransitPaymentMethods && [supportedTransitPaymentMethods count])
    {
      transitPaymentMethodSuggestions = [firstObject transitPaymentMethodSuggestions];
      v12 = transitPaymentMethodSuggestions;
      if (transitPaymentMethodSuggestions && [transitPaymentMethodSuggestions count])
      {
        v8 = 1;
LABEL_17:

        goto LABEL_18;
      }

      v13 = sub_10003D020();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = firstObject;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "GEOMapItem %@ does not contain any transit payment method suggestions", &v15, 0xCu);
      }
    }

    else
    {
      v12 = sub_10003D020();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "The map item does not support any transit payment methods", &v15, 2u);
      }
    }

    v8 = 0;
    goto LABEL_17;
  }

  firstObject = sub_10003D020();
  if (os_log_type_enabled(firstObject, OS_LOG_TYPE_INFO))
  {
    v15 = 138412290;
    v16 = errorCopy;
    _os_log_impl(&_mh_execute_header, firstObject, OS_LOG_TYPE_INFO, "Unable to get GEOMapItems (either error or 0 were returned). Error: %@", &v15, 0xCu);
  }

  v8 = 0;
LABEL_18:

  return v8;
}

- (void)_notifyObservers
{
  if (self->_active)
  {
    [(GEOObserverHashTable *)self->_observers homeDataProvidingObjectDidUpdate:self];
  }
}

- (void)_fetchInsightsWithCompletion:(id)completion
{
  completionCopy = completion;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 0;
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  objc_initWeak(&location, self);
  queue = self->_queue;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100641E70;
  v9[3] = &unk_101661458;
  objc_copyWeak(&v14, &location);
  v12 = v18;
  v13 = v16;
  v10 = v5;
  v11 = completionCopy;
  v7 = completionCopy;
  v8 = v5;
  dispatch_async(queue, v9);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v18, 8);
}

- (void)transitPassManagerDidChange:(id)change
{
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1006423CC;
  v3[3] = &unk_101661B98;
  objc_copyWeak(&v4, &location);
  dispatch_async(&_dispatch_main_q, v3);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (id)transitPayDiscoveryModel
{
  if (self->_modelData)
  {
    objc_initWeak(location, self);
    v3 = [FeatureDiscoveryModel alloc];
    image = [(TransitPayModelData *)self->_modelData image];
    title = [(TransitPayModelData *)self->_modelData title];
    subtitle = [(TransitPayModelData *)self->_modelData subtitle];
    actionTitle = [(TransitPayModelData *)self->_modelData actionTitle];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1006426A8;
    v18[3] = &unk_101661340;
    objc_copyWeak(&v19, location);
    v18[4] = self;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100642920;
    v16[3] = &unk_101661340;
    v16[4] = self;
    objc_copyWeak(&v17, location);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100642A68;
    v14[3] = &unk_101661340;
    v14[4] = self;
    objc_copyWeak(&v15, location);
    LOBYTE(v13) = 1;
    v8 = [(FeatureDiscoveryModel *)v3 initWithImage:image title:title subtitle:subtitle actionTitle:actionTitle actionHandler:v18 bodyTapHandler:0 displayedHandler:v16 dismissHandler:v14 disableAffordanceAfterAction:v13];
    model = self->_model;
    self->_model = v8;

    v10 = self->_model;
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(location);
  }

  else
  {
    v11 = sub_10003D020();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "_modelData is not populated. Returning.", location, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(MapsLocationUpdater *)self->_locationUpdater stopLocationUpdates];
  v4.receiver = self;
  v4.super_class = TransitPayFeatureDiscoverySource;
  [(TransitPayFeatureDiscoverySource *)&v4 dealloc];
}

- (TransitPayFeatureDiscoverySource)initWithInsights:(id)insights paymentPolygonFetcher:(id)fetcher locationUpdater:(id)updater isActive:(BOOL)active
{
  insightsCopy = insights;
  fetcherCopy = fetcher;
  updaterCopy = updater;
  v22.receiver = self;
  v22.super_class = TransitPayFeatureDiscoverySource;
  v14 = [(TransitPayFeatureDiscoverySource *)&v22 init];
  if (v14)
  {
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("com.apple.Maps.Home.TransitPay", v15);
    queue = v14->_queue;
    v14->_queue = v16;

    objc_storeStrong(&v14->_msgInsights, insights);
    objc_storeStrong(&v14->_paymentPolygonFetcher, fetcher);
    objc_storeStrong(&v14->_locationUpdater, updater);
    v14->_active = active;
    v14->_showFeature = 0;
    v18 = objc_alloc_init(PaymentPolygonCache);
    polygonCache = v14->_polygonCache;
    v14->_polygonCache = v18;

    v20 = +[NSNotificationCenter defaultCenter];
    [v20 addObserver:v14 selector:"transitPayTipDismissedInRoutePlanning:" name:@"TransitPayTipDismissedInRoutePlanningNotification" object:0];
  }

  return v14;
}

@end