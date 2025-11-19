@interface EVRoutingFeatureDiscoverySource
- (BOOL)_shouldShowVehicleCombination:(id)a3;
- (BOOL)isAvailable;
- (EVRoutingFeatureDiscoverySource)initWithPriority:(int64_t)a3 delegate:(id)a4;
- (FeatureDiscoveryModel)model;
- (FeatureDiscoverySourceDelegate)delegate;
- (void)_didSelectModel;
- (void)_didViewModel;
- (void)_dismiss;
- (void)_loadUpairedVehicles;
- (void)_markCurrentVehicleCombinationAsViewed;
- (void)_reloadAvailability;
- (void)setAvailable:(BOOL)a3;
- (void)setTransportType:(int64_t)a3 routeCollection:(id)a4;
- (void)setUnpairedVehicles:(id)a3;
- (void)virtualGarage:(id)a3 didUpdateUnpairedVehicles:(id)a4;
@end

@implementation EVRoutingFeatureDiscoverySource

- (void)_loadUpairedVehicles
{
  objc_initWeak(&location, self);
  v2 = +[VGVirtualGarageService sharedService];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100061D34;
  v3[3] = &unk_10165F290;
  objc_copyWeak(&v4, &location);
  [v2 virtualGarageGetListOfUnpairedVehiclesWithReply:v3];

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)_reloadAvailability
{
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100061F94;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  dispatch_async(isolationQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (FeatureDiscoverySourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)virtualGarage:(id)a3 didUpdateUnpairedVehicles:(id)a4
{
  v5 = a4;
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100F5EF58;
  block[3] = &unk_101661340;
  objc_copyWeak(&v10, &location);
  v9 = v5;
  v7 = v5;
  dispatch_async(isolationQueue, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_markCurrentVehicleCombinationAsViewed
{
  v2 = self->_unpairedVehicles;
  if ([(NSArray *)v2 count])
  {
    v3 = sub_100021DB0(v2, &stru_10165E3C0);
    v4 = [v3 sortedArrayUsingComparator:&stru_10165E400];
    v5 = [v4 componentsJoinedByString:@"_"];
  }

  else
  {
    v5 = 0;
  }

  sub_100F359AC(v5);
}

- (BOOL)_shouldShowVehicleCombination:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = sub_100021DB0(v3, &stru_10165E3C0);
    v5 = [v4 sortedArrayUsingComparator:&stru_10165E400];
    v6 = [v5 componentsJoinedByString:@"_"];
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_100F3567C(v6);

  return v7;
}

- (void)_didSelectModel
{
  v3 = +[MKMapService sharedService];
  [v3 captureUserAction:451 onTarget:8 eventValue:0];

  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100F5F2F4;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  dispatch_async(&_dispatch_main_q, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_didViewModel
{
  v3 = +[MKMapService sharedService];
  [v3 captureUserAction:449 onTarget:8 eventValue:0];

  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100F5F49C;
  v5[3] = &unk_101661B98;
  objc_copyWeak(&v6, &location);
  dispatch_async(isolationQueue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_dismiss
{
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100F5F668;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  dispatch_async(isolationQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)setUnpairedVehicles:(id)a3
{
  v5 = a3;
  v6 = self->_unpairedVehicles;
  v7 = v5;
  if (v7 | v6)
  {
    v8 = [v6 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_unpairedVehicles, a3);
      v9 = sub_100022C48();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = v7;
        v11 = v10;
        if (v7)
        {
          if ([v10 count])
          {
            v28 = v9;
            v29 = v7;
            v30 = self;
            v12 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v11 count]);
            v31 = 0u;
            v32 = 0u;
            v33 = 0u;
            v34 = 0u;
            v27 = v11;
            v13 = v11;
            v14 = [v13 countByEnumeratingWithState:&v31 objects:buf count:16];
            if (!v14)
            {
              goto LABEL_23;
            }

            v15 = v14;
            v16 = *v32;
            while (1)
            {
              v17 = 0;
              do
              {
                if (*v32 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v31 + 1) + 8 * v17);
                if (v18)
                {
                  v19 = objc_opt_class();
                  v20 = NSStringFromClass(v19);
                  if ((objc_opt_respondsToSelector() & 1) == 0)
                  {
                    goto LABEL_16;
                  }

                  v21 = [v18 performSelector:"accessibilityIdentifier"];
                  v22 = v21;
                  if (v21 && ![v21 isEqualToString:v20])
                  {
                    v23 = [NSString stringWithFormat:@"%@<%p, %@>", v20, v18, v22];
                  }

                  else
                  {

LABEL_16:
                    v23 = [NSString stringWithFormat:@"%@<%p>", v20, v18];
                  }

                  goto LABEL_19;
                }

                v23 = @"<nil>";
LABEL_19:

                [v12 addObject:v23];
                v17 = v17 + 1;
              }

              while (v15 != v17);
              v24 = [v13 countByEnumeratingWithState:&v31 objects:buf count:16];
              v15 = v24;
              if (!v24)
              {
LABEL_23:

                v25 = [v13 componentsJoinedByString:{@", "}];
                v26 = [NSString stringWithFormat:@"<%p> [%@]", v13, v25];

                v7 = v29;
                self = v30;
                v11 = v27;
                v9 = v28;
                goto LABEL_26;
              }
            }
          }

          v26 = [NSString stringWithFormat:@"<%p> (empty)", v11];
        }

        else
        {
          v26 = @"<nil>";
        }

LABEL_26:

        *buf = 138412290;
        v36 = v26;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "RoutePlanning did update unpaired vehicles: %@", buf, 0xCu);
      }

      [(EVRoutingFeatureDiscoverySource *)self _reloadAvailability];
    }
  }
}

- (FeatureDiscoveryModel)model
{
  v3 = [(EVRoutingFeatureDiscoverySource *)self isAvailable];
  v4 = sub_10006250C();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Will suggest EV routing.", buf, 2u);
    }

    objc_initWeak(buf, self);
    v31 = [FeatureDiscoveryModel alloc];
    v6 = self->_unpairedVehicles;
    if ([(NSArray *)v6 count]== 1)
    {
      v7 = [(NSArray *)v6 firstObject];
      v8 = [v7 pairedAppIdentifier];
      v9 = v8 != 0;
    }

    else
    {
      v9 = 0;
    }

    if ([(NSArray *)v6 count]< 2)
    {
      v11 = 0;
    }

    else
    {
      v11 = sub_100F353B8(v6);
    }

    if ((v9 | v11) == 1)
    {
      v12 = [(NSArray *)v6 firstObject];
      v13 = [v12 pairedAppIdentifier];

      v14 = +[UIScreen mainScreen];
      [v14 scale];
      v15 = [UIImage _applicationIconImageForBundleIdentifier:v13 format:0 scale:?];
    }

    else
    {
      v15 = [UIImage imageNamed:@"greenEV"];
    }

    v16 = sub_100F354F8(self->_unpairedVehicles);
    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"Try EV subtitle [Subtitle value:Route Planning table:{Feature Discovery, EV]", @"localized string not found", 0}];
    v19 = self->_unpairedVehicles;
    if ([(NSArray *)v19 count])
    {
      if ([(NSArray *)v19 count]== 1 || sub_100F353B8(v19))
      {
        v20 = [(NSArray *)v19 firstObject];
        v21 = [v20 iapIdentifier];
        if (v21 && ([v20 siriIntentsIdentifier], v22 = objc_claimAutoreleasedReturnValue(), v22, v21, !v22))
        {
          v28 = +[NSBundle mainBundle];
          v24 = [v28 localizedStringForKey:@"Try EV action button with single vehicle (CarPlay) [Action value:Route Planning table:{Feature Discovery, EV]", @"localized string not found", 0}];

          v25 = [v20 manufacturer];
          v26 = v25;
          if (!v25)
          {
            v26 = [v20 displayName];
          }
        }

        else
        {
          v23 = +[NSBundle mainBundle];
          v24 = [v23 localizedStringForKey:@"Try EV action button with single vehicle (SiriIntents) [Action value:Route Planning table:{Feature Discovery, EV]", @"localized string not found", 0}];

          v25 = [v20 manufacturer];
          v26 = v25;
          if (!v25)
          {
            v26 = [v20 displayName];
          }
        }

        v27 = [NSString stringWithFormat:v24, v26];
        if (!v25)
        {

          v25 = 0;
        }
      }

      else
      {
        v20 = +[NSBundle mainBundle];
        v27 = [v20 localizedStringForKey:@"Try EV action button with multiple vehicles [Action value:Route Planning table:{Feature Discovery, EV]", @"localized string not found", 0}];
      }
    }

    else
    {
      v27 = 0;
    }

    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100F5FFB8;
    v36[3] = &unk_101661B98;
    objc_copyWeak(&v37, buf);
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100F5FFF8;
    v34[3] = &unk_101661B98;
    objc_copyWeak(&v35, buf);
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100F60038;
    v32[3] = &unk_101661B98;
    objc_copyWeak(&v33, buf);
    LOBYTE(v30) = 0;
    v10 = [(FeatureDiscoveryModel *)v31 initWithImage:v15 title:v16 subtitle:v18 actionTitle:v27 actionHandler:v36 bodyTapHandler:0 displayedHandler:v34 dismissHandler:v32 disableAffordanceAfterAction:v30];
    objc_destroyWeak(&v33);
    objc_destroyWeak(&v35);
    objc_destroyWeak(&v37);

    objc_destroyWeak(buf);
  }

  else
  {
    if (v5)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Will not suggest EV routing: it is not available.", buf, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (void)setTransportType:(int64_t)a3 routeCollection:(id)a4
{
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100F6012C;
  block[3] = &unk_10165FBC0;
  objc_copyWeak(v8, &location);
  v8[1] = a3;
  dispatch_async(isolationQueue, block);
  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

- (void)setAvailable:(BOOL)a3
{
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100F60244;
  block[3] = &unk_101661368;
  objc_copyWeak(&v7, &location);
  v8 = a3;
  dispatch_async(isolationQueue, block);
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
  v5[2] = sub_100F604C4;
  v5[3] = &unk_101661600;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (EVRoutingFeatureDiscoverySource)initWithPriority:(int64_t)a3 delegate:(id)a4
{
  v6 = a4;
  v21.receiver = self;
  v21.super_class = EVRoutingFeatureDiscoverySource;
  v7 = [(EVRoutingFeatureDiscoverySource *)&v21 init];
  v8 = v7;
  if (v7)
  {
    v7->_priority = a3;
    objc_storeWeak(&v7->_delegate, v6);
    v9 = [NSString stringWithFormat:@"com.apple.maps.featurediscovery.evrouting.isolation.%p", v8];
    v10 = [v9 UTF8String];
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create(v10, v11);
    isolationQueue = v8->_isolationQueue;
    v8->_isolationQueue = v12;

    v14 = [NSString stringWithFormat:@"com.apple.maps.featurediscovery.evrouting.callback.%p", v8];
    v15 = [v14 UTF8String];
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create(v15, v16);
    callbackQueue = v8->_callbackQueue;
    v8->_callbackQueue = v17;

    v19 = +[VGVirtualGarageService sharedService];
    [v19 registerObserver:v8];

    [(EVRoutingFeatureDiscoverySource *)v8 _loadUpairedVehicles];
  }

  return v8;
}

@end