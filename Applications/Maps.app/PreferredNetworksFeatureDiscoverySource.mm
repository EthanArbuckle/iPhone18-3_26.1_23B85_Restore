@interface PreferredNetworksFeatureDiscoverySource
- (BOOL)_shouldShowForVehicle:(id)vehicle;
- (BOOL)showFeature;
- (FeatureDiscoveryModel)model;
- (PreferredNetworksFeatureDiscoverySource)init;
- (id)_candidateVehicle;
- (void)_consumeUpdatedGarage:(id)garage;
- (void)_didSelectModelWithVehicle:(id)vehicle;
- (void)_didViewModelWithVehicle:(id)vehicle;
- (void)_dismiss;
- (void)_markVehicleAsViewed:(id)viewed;
- (void)_reloadAvailability;
- (void)setShowFeature:(BOOL)feature;
- (void)virtualGarageDidUpdate:(id)update;
@end

@implementation PreferredNetworksFeatureDiscoverySource

- (PreferredNetworksFeatureDiscoverySource)init
{
  v20.receiver = self;
  v20.super_class = PreferredNetworksFeatureDiscoverySource;
  v2 = [(PreferredNetworksFeatureDiscoverySource *)&v20 init];
  if (v2)
  {
    v3 = [NSString stringWithFormat:@"com.apple.maps.featurediscovery.evrouting.isolation.%p", v2];
    uTF8String = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(uTF8String, v5);
    isolationQueue = v2->_isolationQueue;
    v2->_isolationQueue = v6;

    v8 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___HomeDataProvidingObserver queue:&_dispatch_main_q];
    observers = v2->_observers;
    v2->_observers = v8;

    candidateVehicle = v2->_candidateVehicle;
    v2->_candidateVehicle = 0;

    v11 = +[VGVirtualGarageService sharedService];
    [v11 registerObserver:v2];

    objc_initWeak(&location, v2);
    v12 = +[VGVirtualGarageService sharedService];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000623E4;
    v17[3] = &unk_101655840;
    objc_copyWeak(&v18, &location);
    [v12 virtualGarageGetGarageWithReply:v17];

    v13 = v2->_isolationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100060FB0;
    block[3] = &unk_101661B18;
    v16 = v2;
    dispatch_async(v13, block);

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)_reloadAvailability
{
  if (MapsFeature_IsEnabled_EVRouting())
  {
    IsEnabled_EVRoutingEnhancements = MapsFeature_IsEnabled_EVRoutingEnhancements();
  }

  else
  {
    IsEnabled_EVRoutingEnhancements = 0;
  }

  v4 = IsEVRoutingSupported();
  dismissed = self->_dismissed;
  candidateVehicle = self->_candidateVehicle;
  if (candidateVehicle)
  {
    v7 = [(PreferredNetworksFeatureDiscoverySource *)self _shouldShowForVehicle:self->_candidateVehicle];
  }

  else
  {
    v7 = 0;
  }

  v8 = IsEnabled_EVRoutingEnhancements & v4 & v7 & !dismissed;
  [(PreferredNetworksFeatureDiscoverySource *)self setShowFeature:v8];
  v9 = sub_10006250C();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    if (v8)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v11 = v10;
    if (IsEnabled_EVRoutingEnhancements)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v13 = v12;
    if (v4)
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    v15 = v14;
    if (dismissed)
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    v17 = v16;
    if (candidateVehicle)
    {
      v18 = @"YES";
    }

    else
    {
      v18 = @"NO";
    }

    v19 = v18;
    if (v7)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    v21 = v20;
    v22 = 138413570;
    v23 = v11;
    v24 = 2112;
    v25 = v13;
    v26 = 2112;
    v27 = v15;
    v28 = 2112;
    v29 = v17;
    v30 = 2112;
    v31 = v19;
    v32 = 2112;
    v33 = v21;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "_reloadAvailability EVRoutingFeatureDiscoverySource isAvailable: %@\n, featureEnabled: %@, currentCountrySupportsEVRouting: %@, wasDismissed: %@, hasCandidateVehicle: %@, belowMaximumViewCount: %@", &v22, 0x3Eu);
  }
}

- (void)_consumeUpdatedGarage:(id)garage
{
  vehicles = [garage vehicles];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100864374;
  v13[3] = &unk_1016588C0;
  v13[4] = self;
  v5 = sub_100030774(vehicles, v13);

  v6 = self->_candidateVehicle;
  v7 = v5;
  if (v7 | v6 && (v8 = [v6 isEqual:v7], v7, v6, !v8))
  {
    v10 = sub_100063F04();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      displayName = [(VGVehicle *)self->_candidateVehicle displayName];
      displayName2 = [v7 displayName];
      *buf = 138412546;
      v15 = displayName;
      v16 = 2112;
      v17 = displayName2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "vehicle candidate changed from: %@ to: %@.", buf, 0x16u);
    }

    objc_storeStrong(&self->_candidateVehicle, v5);
    [(PreferredNetworksFeatureDiscoverySource *)self _reloadAvailability];
  }

  else
  {
    v9 = sub_100063F04();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "vehicles without networks have not changed.", buf, 2u);
    }
  }
}

- (void)virtualGarageDidUpdate:(id)update
{
  updateCopy = update;
  isolationQueue = self->_isolationQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100864520;
  v7[3] = &unk_101661A90;
  v7[4] = self;
  v8 = updateCopy;
  v6 = updateCopy;
  dispatch_async(isolationQueue, v7);
}

- (void)_markVehicleAsViewed:(id)viewed
{
  viewedCopy = viewed;
  v4 = [NSMutableString stringWithString:@"_preferredNetworksOnboarding_"];
  pairedAppIdentifier = [viewedCopy pairedAppIdentifier];
  v6 = pairedAppIdentifier;
  if (pairedAppIdentifier)
  {
    v7 = pairedAppIdentifier;
  }

  else
  {
    v7 = &stru_1016631F0;
  }

  [v4 appendString:v7];

  year = [viewedCopy year];
  v9 = year;
  if (year)
  {
    v10 = year;
  }

  else
  {
    v10 = &stru_1016631F0;
  }

  [v4 appendString:v10];

  model = [viewedCopy model];
  v12 = model;
  if (model)
  {
    v13 = model;
  }

  else
  {
    v13 = &stru_1016631F0;
  }

  [v4 appendString:v13];

  manufacturer = [viewedCopy manufacturer];

  if (manufacturer)
  {
    v15 = manufacturer;
  }

  else
  {
    v15 = &stru_1016631F0;
  }

  [v4 appendString:v15];

  v16 = [v4 copy];
  sub_100F359AC(v16);
}

- (BOOL)_shouldShowForVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  v4 = [NSMutableString stringWithString:@"_preferredNetworksOnboarding_"];
  pairedAppIdentifier = [vehicleCopy pairedAppIdentifier];
  v6 = pairedAppIdentifier;
  if (pairedAppIdentifier)
  {
    v7 = pairedAppIdentifier;
  }

  else
  {
    v7 = &stru_1016631F0;
  }

  [v4 appendString:v7];

  year = [vehicleCopy year];
  v9 = year;
  if (year)
  {
    v10 = year;
  }

  else
  {
    v10 = &stru_1016631F0;
  }

  [v4 appendString:v10];

  model = [vehicleCopy model];
  v12 = model;
  if (model)
  {
    v13 = model;
  }

  else
  {
    v13 = &stru_1016631F0;
  }

  [v4 appendString:v13];

  manufacturer = [vehicleCopy manufacturer];

  if (manufacturer)
  {
    v15 = manufacturer;
  }

  else
  {
    v15 = &stru_1016631F0;
  }

  [v4 appendString:v15];

  v16 = [v4 copy];
  v17 = sub_100F3567C(v16);

  return v17;
}

- (void)_didSelectModelWithVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  v5 = +[MKMapService sharedService];
  [v5 captureUserAction:451 onTarget:8 eventValue:0];

  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100864848;
  block[3] = &unk_101661340;
  objc_copyWeak(&v9, &location);
  v8 = vehicleCopy;
  v6 = vehicleCopy;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_didViewModelWithVehicle:(id)vehicle
{
  vehicleCopy = vehicle;
  v5 = +[MKMapService sharedService];
  [v5 captureUserAction:449 onTarget:8 eventValue:0];

  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100864B48;
  block[3] = &unk_101661340;
  objc_copyWeak(&v10, &location);
  v9 = vehicleCopy;
  v7 = vehicleCopy;
  dispatch_async(isolationQueue, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_dismiss
{
  objc_initWeak(&location, self);
  isolationQueue = self->_isolationQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100864EB8;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  dispatch_async(isolationQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (id)_candidateVehicle
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10086503C;
  v10 = sub_10086504C;
  v11 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100865054;
  v5[3] = &unk_101661600;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (FeatureDiscoveryModel)model
{
  showFeature = [(PreferredNetworksFeatureDiscoverySource *)self showFeature];
  _candidateVehicle = sub_100063F04();
  v5 = os_log_type_enabled(_candidateVehicle, OS_LOG_TYPE_DEBUG);
  if (showFeature)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, _candidateVehicle, OS_LOG_TYPE_DEBUG, "Will suggest preferred networks onboarding.", buf, 2u);
    }

    _candidateVehicle = [(PreferredNetworksFeatureDiscoverySource *)self _candidateVehicle];
    if (_candidateVehicle)
    {
      v6 = +[NSBundle mainBundle];
      v21 = [v6 localizedStringForKey:@"[Title value:Feature Discovery table:{EV preferred networks]", @"localized string not found", 0}];

      v7 = +[NSBundle mainBundle];
      v8 = [v7 localizedStringForKey:@"[Subtitle value:Feature Discovery table:{EV preferred networks]", @"localized string not found", 0}];

      objc_initWeak(buf, self);
      v9 = [FeatureDiscoveryModel alloc];
      v10 = [UIImage imageNamed:@"greenEV"];
      v11 = +[NSBundle mainBundle];
      v12 = [v11 localizedStringForKey:@"[Action button value:Feature Discovery table:{EV preferred networks]", @"localized string not found", 0}];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100865588;
      v27[3] = &unk_101661340;
      objc_copyWeak(&v29, buf);
      v13 = _candidateVehicle;
      v28 = v13;
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_1008655D8;
      v24[3] = &unk_101661340;
      objc_copyWeak(&v26, buf);
      v25 = v13;
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_100865628;
      v22[3] = &unk_101661B98;
      objc_copyWeak(&v23, buf);
      LOBYTE(v20) = 0;
      v14 = [(FeatureDiscoveryModel *)v9 initWithImage:v10 title:v21 subtitle:v8 actionTitle:v12 actionHandler:v27 bodyTapHandler:0 displayedHandler:v24 dismissHandler:v22 disableAffordanceAfterAction:v20];
      objc_destroyWeak(&v23);

      objc_destroyWeak(&v26);
      objc_destroyWeak(&v29);

      objc_destroyWeak(buf);
      v15 = v21;
    }

    else
    {
      v17 = sub_10006D178();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v31 = "[PreferredNetworksFeatureDiscoverySource model]";
        v32 = 2080;
        v33 = "PreferredNetworksFeatureDiscoverySource.m";
        v34 = 1024;
        v35 = 123;
        v36 = 2080;
        v37 = "vehicle";
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", buf, 0x26u);
      }

      if (sub_100E03634())
      {
        v18 = sub_10006D178();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = +[NSThread callStackSymbols];
          *buf = 138412290;
          v31 = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }
      }

      v15 = sub_100063F04();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Tried to suggest preferred networks but did not have a candidate vehicle.", buf, 2u);
      }

      v14 = 0;
    }
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, _candidateVehicle, OS_LOG_TYPE_DEBUG, "Will not suggest preferred networks: it is not available.", buf, 2u);
    }

    v14 = 0;
  }

  return v14;
}

- (void)setShowFeature:(BOOL)feature
{
  if (self->_showFeature != feature)
  {
    self->_showFeature = feature;
    v4 = sub_100063F04();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      if (self->_showFeature)
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      v6 = v5;
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Did update availability of preferredNetworks source to %@.", &v7, 0xCu);
    }

    [(GEOObserverHashTable *)self->_observers homeDataProvidingObjectDidUpdate:self];
  }
}

- (BOOL)showFeature
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  isolationQueue = self->_isolationQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100865804;
  v5[3] = &unk_101661600;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(isolationQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end