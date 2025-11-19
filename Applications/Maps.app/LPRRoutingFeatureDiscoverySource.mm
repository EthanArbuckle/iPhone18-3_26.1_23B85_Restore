@interface LPRRoutingFeatureDiscoverySource
- (BOOL)isAvailable;
- (FeatureDiscoveryModel)model;
- (FeatureDiscoverySourceDelegate)delegate;
- (LPRRoutingFeatureDiscoverySource)initWithPriority:(int64_t)a3 delegate:(id)a4;
- (unint64_t)numberOfLPRLVehicles;
- (void)_didSelectModel;
- (void)_didViewModel;
- (void)_dismiss;
- (void)_reloadAvailability;
- (void)dealloc;
- (void)setAvailable:(BOOL)a3;
- (void)setTransportType:(int64_t)a3 routeCollection:(id)a4;
- (void)valueChangedForGEOConfigKey:(id)a3;
- (void)virtualGarageDidUpdate:(id)a3;
@end

@implementation LPRRoutingFeatureDiscoverySource

- (FeatureDiscoverySourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)virtualGarageDidUpdate:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100A220B4;
  block[3] = &unk_101661340;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(isolationQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)valueChangedForGEOConfigKey:(id)a3
{
  if (a3.var0 == MapsFeaturesConfig_EnableAlberta && a3.var1 == *(&MapsFeaturesConfig_EnableAlberta + 1))
  {
    [(LPRRoutingFeatureDiscoverySource *)self _reloadAvailability];
  }
}

- (void)_reloadAvailability
{
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100A221D8;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  dispatch_async(isolationQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (unint64_t)numberOfLPRLVehicles
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(LPRRoutingFeatureDiscoverySource *)self virtualGarage];
  v3 = [v2 vehicles];

  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) licensePlate];

        if (v9)
        {
          ++v6;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_didSelectModel
{
  [GEOAPPortal captureUserAction:2115 target:504 value:0];

  dispatch_async(&_dispatch_main_q, &stru_101631FF0);
}

- (void)_didViewModel
{
  [GEOAPPortal captureUserAction:2186 target:504 value:0];
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100A22744;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  dispatch_async(isolationQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_dismiss
{
  [GEOAPPortal captureUserAction:4 target:671 value:0];
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100A2295C;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  dispatch_async(isolationQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (FeatureDiscoveryModel)model
{
  v3 = [(LPRRoutingFeatureDiscoverySource *)self isAvailable];
  v4 = sub_10006250C();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Will suggest LPR routing.", buf, 2u);
    }

    objc_initWeak(buf, self);
    v15 = [FeatureDiscoveryModel alloc];
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"Try LPR title [Title value:Route Planning table:{Feature Discovery, LPR]", @"localized string not found", 0}];
    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"Try LPR subtitle [Subtitle value:Route Planning table:{Feature Discovery, LPR]", @"localized string not found", 0}];
    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"[LPR Onboarding] Add Plate" value:@"localized string not found" table:0];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100A22CFC;
    v20[3] = &unk_101661B98;
    objc_copyWeak(&v21, buf);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100A22D3C;
    v18[3] = &unk_101661B98;
    objc_copyWeak(&v19, buf);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100A22D7C;
    v16[3] = &unk_101661B98;
    objc_copyWeak(&v17, buf);
    LOBYTE(v14) = 0;
    v12 = [(FeatureDiscoveryModel *)v15 initWithImage:0 title:v7 subtitle:v9 actionTitle:v11 actionHandler:v20 bodyTapHandler:0 displayedHandler:v18 dismissHandler:v16 disableAffordanceAfterAction:v14];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);

    objc_destroyWeak(buf);
  }

  else
  {
    if (v5)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Will not suggest LPR routing: it is not available.", buf, 2u);
    }

    v12 = 0;
  }

  return v12;
}

- (void)setAvailable:(BOOL)a3
{
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100A22E74;
  v6[3] = &unk_101632728;
  objc_copyWeak(&v7, &location);
  v8 = a3;
  v6[4] = self;
  dispatch_async(isolationQueue, v6);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (BOOL)isAvailable
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100A230F8;
  v5[3] = &unk_101661600;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setTransportType:(int64_t)a3 routeCollection:(id)a4
{
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100A231C0;
  block[3] = &unk_10165FBC0;
  objc_copyWeak(v8, &location);
  v8[1] = a3;
  dispatch_async(isolationQueue, block);
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  GEOConfigRemoveDelegateListenerForAllKeys();
  v3.receiver = self;
  v3.super_class = LPRRoutingFeatureDiscoverySource;
  [(LPRRoutingFeatureDiscoverySource *)&v3 dealloc];
}

- (LPRRoutingFeatureDiscoverySource)initWithPriority:(int64_t)a3 delegate:(id)a4
{
  v6 = a4;
  v28.receiver = self;
  v28.super_class = LPRRoutingFeatureDiscoverySource;
  v7 = [(LPRRoutingFeatureDiscoverySource *)&v28 init];
  v8 = v7;
  if (v7)
  {
    v7->_priority = a3;
    objc_storeWeak(&v7->_delegate, v6);
    v9 = [NSString stringWithFormat:@"com.apple.maps.featurediscovery.lprrouting.isolation.%p", v8];
    v10 = [v9 UTF8String];
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create(v10, v11);
    isolationQueue = v8->_isolationQueue;
    v8->_isolationQueue = v12;

    v14 = [NSString stringWithFormat:@"com.apple.maps.featurediscovery.lprrouting.callback.%p", v8];
    v15 = [v14 UTF8String];
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create(v15, v16);
    callbackQueue = v8->_callbackQueue;
    v8->_callbackQueue = v17;

    v19 = +[NSUserDefaults standardUserDefaults];
    v8->_modelViewedTimes = [v19 integerForKey:@"LPRRoutingFeatureDiscoverySourceViewedTimesKey"];

    modelViewedTimes = v8->_modelViewedTimes;
    if (modelViewedTimes < GEOConfigGetUInteger())
    {
      objc_initWeak(&location, v8);
      v21 = +[VGVirtualGarageService sharedService];
      [v21 registerObserver:v8];

      v22 = +[VGVirtualGarageService sharedService];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100A2350C;
      v25[3] = &unk_101655840;
      objc_copyWeak(&v26, &location);
      [v22 virtualGarageGetGarageWithReply:v25];

      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
    }

    _GEOConfigAddDelegateListenerForKey();
    v23 = +[NSNotificationCenter defaultCenter];
    [v23 addObserver:v8 selector:"_reloadAvailability" name:@"UsingOfflineMapsStateChangedNotification" object:0];
  }

  return v8;
}

@end