@interface OfflineMapsSuggestionsDataProvider
- (BOOL)_homeAreaTipWasDismissed;
- (BOOL)_tripTipWasDismissed;
- (BOOL)isTrip:(id)trip nearAtLeastOneShortcut:(id)shortcut;
- (NSString)uniqueName;
- (OfflineMapsSuggestionsDataProvider)initWithClientType:(int)type callbackQueue:(id)queue;
- (id)_filterEntriesWithOverLappingRects:(id)rects;
- (id)fetchHomeLocationsAsShortCuts;
- (void)_buildMapRegionForLatitude:(double)latitude longitude:(double)longitude handler:(id)handler;
- (void)_fetchAirportArrivalModelDataFromFlightEntry:(id)entry usingCurrentLocation:(id)location completion:(id)completion;
- (void)_fetchHomeAreaModelDataFromEntry:(id)entry onQueue:(id)queue completionHandler:(id)handler;
- (void)_firstUpcomingTripOfflineSuggestion:(id)suggestion;
- (void)_offlineSuggestionsUsingLocation:(id)location withCompletion:(id)completion;
- (void)dismissedTipWithType:(int)type;
- (void)displayedTipWithType:(int)type;
- (void)offlineSuggestionsForLocation:(id)location completion:(id)completion;
- (void)showHomeAreaTipInFuture;
@end

@implementation OfflineMapsSuggestionsDataProvider

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (void)_buildMapRegionForLatitude:(double)latitude longitude:(double)longitude handler:(id)handler
{
  handlerCopy = handler;
  GEOConfigGetInteger();
  GEOMapRectMakeWithRadialDistance();
  v11 = [[GEOMapRegion alloc] initWithMapRect:{v7, v8, v9, v10}];
  v12 = +[MapsOfflineUIHelper sharedHelper];
  GEOConfigGetDouble();
  v13 = [v12 isRegionDownloaded:v11 requireFullyDownloaded:0 coverageRequirement:?];

  if (v13)
  {
    v14 = sub_10003D9F4();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Map Region that was built was already added, caling back with nil", buf, 2u);
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

  else
  {
    clientType = self->_clientType;
    if (clientType > 3 || clientType == 2)
    {
      v18 = +[MapsOfflineUIHelper sharedHelper];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_100C58700;
      v20[3] = &unk_10164EFC8;
      v22 = handlerCopy;
      v21 = v11;
      v19 = [v18 determineEstimatedSizeForSubscriptionWithRegion:v21 completionHandler:v20];
    }

    else
    {
      v16 = sub_10003D9F4();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = self->_clientType;
        *buf = 67109120;
        v24 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Purposely not fetching region size for this client type: %d", buf, 8u);
      }

      (*(handlerCopy + 2))(handlerCopy, v11, 0);
    }
  }
}

- (BOOL)_tripTipWasDismissed
{
  if (self->_clientType == 1)
  {
    if (self->_tripTipDismissedThisSession)
    {
      v2 = sub_10003D9F4();
      v3 = 1;
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "The Offline Maps trip tip was already dismissed in this session", &v25, 2u);
      }
    }

    else
    {
      v2 = GEOConfigGetDate();
      v4 = sub_10003D9F4();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v25 = 138412290;
        v26 = v2;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Checking whether Offline Maps trip tip was dismissed, dismissal date is %@", &v25, 0xCu);
      }

      UInteger = GEOConfigGetUInteger();
      if (!v2 || (v6 = v2, v7 = objc_alloc_init(NSDateComponents), [v7 setDay:-UInteger], +[NSCalendar currentCalendar](NSCalendar, "currentCalendar"), v8 = objc_claimAutoreleasedReturnValue(), +[NSDate now](NSDate, "now"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "dateByAddingComponents:toDate:options:", v7, v9, 0), v10 = objc_claimAutoreleasedReturnValue(), v9, v8, v11 = -[NSObject compare:](v6, "compare:", v10), v6, v10, v7, v11 == -1))
      {
        v12 = GEOConfigGetDate();
        v13 = GEOConfigGetUInteger();
        if (v12 && (v14 = v13, v15 = v12, v16 = objc_alloc_init(NSDateComponents), [v16 setDay:-v14], +[NSCalendar currentCalendar](NSCalendar, "currentCalendar"), v17 = objc_claimAutoreleasedReturnValue(), +[NSDate now](NSDate, "now"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "dateByAddingComponents:toDate:options:", v16, v18, 0), v19 = objc_claimAutoreleasedReturnValue(), v18, v17, v20 = -[NSObject compare:](v15, "compare:", v19), v15, v19, v16, v20 == -1))
        {
          v22 = sub_10003D9F4();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            v25 = 134217984;
            v26 = v14;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Automatically dismissing Offline Maps trip tip because user has not interacted with it for %lu days", &v25, 0xCu);
          }

          v23 = +[NSDate now];
          GEOConfigSetDate();

          GEOConfigSetDate();
          v3 = 1;
          v12 = v15;
        }

        else
        {
          v21 = sub_10003D9F4();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v25 = 134217984;
            v26 = UInteger;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Offline Maps trip tip was NOT dismissed in the past %lu days", &v25, 0xCu);
          }

          v3 = 0;
        }
      }

      else
      {
        v12 = sub_10003D9F4();
        v3 = 1;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          LOWORD(v25) = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Not showing Offline Maps trip tip because a trip tip was dismissed in the past six months.", &v25, 2u);
        }
      }
    }
  }

  else
  {
    v2 = sub_10003D9F4();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "This OfflineMapsSuggestionsDataProvider is ignoring dismissal logic, force returning NO in _tripTipWasDismissed.", &v25, 2u);
    }

    v3 = 0;
  }

  return v3;
}

- (BOOL)_homeAreaTipWasDismissed
{
  if (self->_clientType == 1)
  {
    if (self->_homeAreaTipDismissedThisSession)
    {
      v2 = sub_10003D9F4();
      v3 = 1;
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "The Offline Maps Home Area tip was already dismissed in this session", &v17, 2u);
      }
    }

    else
    {
      v2 = GEOConfigGetDate();
      if (v2)
      {
        v4 = sub_10003D9F4();
        v3 = 1;
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          v17 = 138412290;
          v18 = v2;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Not showing Offline Maps Home Area tip because a Home Area tip was dismissed on %@", &v17, 0xCu);
        }
      }

      else
      {
        v4 = GEOConfigGetDate();
        UInteger = GEOConfigGetUInteger();
        if (v4 && (v6 = UInteger, v7 = v4, v8 = objc_alloc_init(NSDateComponents), [v8 setDay:-v6], +[NSCalendar currentCalendar](NSCalendar, "currentCalendar"), v9 = objc_claimAutoreleasedReturnValue(), +[NSDate now](NSDate, "now"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "dateByAddingComponents:toDate:options:", v8, v10, 0), v11 = objc_claimAutoreleasedReturnValue(), v10, v9, v12 = -[NSObject compare:](v7, "compare:", v11), v7, v11, v8, v12 == -1))
        {
          v14 = sub_10003D9F4();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v17 = 134217984;
            v18 = v6;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Automatically dismissing Offline Maps Home Area tip because user has not interacted with it for %lu days", &v17, 0xCu);
          }

          v15 = +[NSDate now];
          GEOConfigSetDate();

          GEOConfigSetDate();
          v3 = 1;
          v4 = v7;
        }

        else
        {
          v13 = sub_10003D9F4();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            LOWORD(v17) = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Offline Maps Home Area tip has never been dismissed.", &v17, 2u);
          }

          v3 = 0;
        }
      }
    }
  }

  else
  {
    v2 = sub_10003D9F4();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "This OfflineMapsSuggestionsDataProvider is ignoring dismissal logic, force returning NO in _homeAreaTipWasDismissed.", &v17, 2u);
    }

    v3 = 0;
  }

  return v3;
}

- (void)_offlineSuggestionsUsingLocation:(id)location withCompletion:(id)completion
{
  locationCopy = location;
  completionCopy = completion;
  objc_initWeak(&location, self);
  LOBYTE(completion) = self->_clientType != 3;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 0;
  engine = self->_engine;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100C5908C;
  v11[3] = &unk_10164EFA0;
  objc_copyWeak(&v15, &location);
  v11[4] = self;
  completionCopy2 = completion;
  v9 = locationCopy;
  v12 = v9;
  v14 = v17;
  v10 = completionCopy;
  v13 = v10;
  [(MapsSuggestionsEngine *)engine oneShotTopSuggestionsForSink:self count:10 transportType:4 callback:v11 onQueue:self->_msgEngineQueue];

  objc_destroyWeak(&v15);
  _Block_object_dispose(v17, 8);
  objc_destroyWeak(&location);
}

- (id)_filterEntriesWithOverLappingRects:(id)rects
{
  rectsCopy = rects;
  v4 = objc_alloc_init(NSMutableArray);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = rectsCopy;
  v23 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v23)
  {
    v22 = *v34;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v33 + 1) + 8 * i);
        v7 = objc_alloc_init(NSMutableArray);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v8 = [v4 copy];
        v9 = [v8 countByEnumeratingWithState:&v29 objects:v38 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v30;
          while (2)
          {
            for (j = 0; j != v10; j = j + 1)
            {
              if (*v30 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v29 + 1) + 8 * j);
              v28 = 0.0;
              MapsSuggestionsDistanceBetweenEntries();
              v14 = v28;
              if (v14 <= GEOConfigGetInteger())
              {
                if ([v13 type] == 1)
                {

                  goto LABEL_26;
                }

                if ([v6 type] == 1)
                {
                  [v7 addObject:v6];
                }
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v29 objects:v38 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v15 = v7;
        v16 = [v15 countByEnumeratingWithState:&v24 objects:v37 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v25;
          do
          {
            for (k = 0; k != v17; k = k + 1)
            {
              if (*v25 != v18)
              {
                objc_enumerationMutation(v15);
              }

              [v4 removeObject:*(*(&v24 + 1) + 8 * k)];
            }

            v17 = [v15 countByEnumeratingWithState:&v24 objects:v37 count:16];
          }

          while (v17);
        }

        [v4 addObject:v6];
LABEL_26:
      }

      v23 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v23);
  }

  return v4;
}

- (void)_fetchHomeAreaModelDataFromEntry:(id)entry onQueue:(id)queue completionHandler:(id)handler
{
  entryCopy = entry;
  queueCopy = queue;
  handlerCopy = handler;
  v11 = GEOConfigGetDate();
  UInteger = GEOConfigGetUInteger();
  if (self->_clientType != 1 || (v13 = UInteger, v11) && (v37 = queueCopy, v14 = v11, v15 = v11, v16 = objc_alloc_init(NSDateComponents), [v16 setDay:-v13], +[NSCalendar currentCalendar](NSCalendar, "currentCalendar"), v17 = objc_claimAutoreleasedReturnValue(), +[NSDate now](NSDate, "now"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "dateByAddingComponents:toDate:options:", v16, v18, 0), v19 = objc_claimAutoreleasedReturnValue(), v18, v17, v20 = objc_msgSend(v15, "compare:", v19), v15, v11 = v14, queueCopy = v37, v19, v16, v20 == -1))
  {
    v24 = sub_10003D9F4();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      geoMapItem = [entryCopy geoMapItem];
      [geoMapItem coordinate];
      v28 = [NSString stringWithFormat:@"%+.8f, %+.8f", v26, v27];
      *buf = 138412290;
      v45 = v28;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Using home entry for the Offline Maps Home Area Tip with lat/long of %@", buf, 0xCu);
    }

    geoMapItem2 = [entryCopy geoMapItem];
    [geoMapItem2 coordinate];
    v31 = v30;
    geoMapItem3 = [entryCopy geoMapItem];
    [geoMapItem3 coordinate];
    v34 = v33;
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100C59D08;
    v38[3] = &unk_10164EF28;
    v22 = v39;
    v35 = queueCopy;
    v41 = handlerCopy;
    v39[0] = v35;
    v39[1] = self;
    v40 = entryCopy;
    v36 = handlerCopy;
    [(OfflineMapsSuggestionsDataProvider *)self _buildMapRegionForLatitude:v38 longitude:v31 handler:v34];
  }

  else
  {
    v21 = sub_10003D9F4();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v45 = v13;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "User has either never tapped Remind Me Later for the Home Area tip or tapped it less than %lu days ago.", buf, 0xCu);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100C59CF4;
    block[3] = &unk_101661760;
    v22 = &v43;
    v43 = handlerCopy;
    v23 = handlerCopy;
    dispatch_async(queueCopy, block);
  }
}

- (void)_fetchAirportArrivalModelDataFromFlightEntry:(id)entry usingCurrentLocation:(id)location completion:(id)completion
{
  entryCopy = entry;
  locationCopy = location;
  completionCopy = completion;
  v11 = +[GEONetworkObserver sharedNetworkObserver];
  isCellConnection = [v11 isCellConnection];

  if (isCellConnection)
  {
    v13 = sub_10003D9F4();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v14 = "Airport Arrival Tip: User has a cellular data connection, not constructing tip.";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, v14, buf, 2u);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v15 = +[GEONetworkObserver sharedNetworkObserver];
  isNetworkReachable = [v15 isNetworkReachable];

  if (isNetworkReachable)
  {
    latLng = [locationCopy latLng];
    [latLng lat];
    latLng2 = [locationCopy latLng];
    [latLng2 lng];

    v19 = CLLocationFromGEOLocationCoordinate2D();
    if (MapsSuggestionsIsValidLocation())
    {
      v20 = v19;
    }

    else
    {
      v20 = MapsSuggestionsCurrentBestLocation();

      IsValidLocation = MapsSuggestionsIsValidLocation();
      v22 = sub_10003D9F4();
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
      if ((IsValidLocation & 1) == 0)
      {
        if (v23)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "The location from DiscoverySource is nil AND MapsSuggestionsCurrentBestLocation() is nil too. Returning and not showing the tip.", buf, 2u);
        }

        completionCopy[2](completionCopy, 0);
        goto LABEL_33;
      }

      if (v23)
      {
        [v20 coordinate];
        v25 = v24;
        [v20 coordinate];
        *buf = 134218240;
        v50 = v25;
        v51 = 2048;
        v52 = v26;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Location from the DiscoverySource is nil. Using MapsSuggestionsCurrentBestLocation(): %f, %f", buf, 0x16u);
      }
    }

    v27 = [entryCopy numberForKey:@"MapsSuggestionsFlightArrivalAirportLatitudeKey"];
    [v27 doubleValue];
    v29 = v28;

    v30 = [entryCopy numberForKey:@"MapsSuggestionsFlightArrivalAirportLongitudeKey"];
    [v30 doubleValue];
    v32 = v31;

    v33 = [[CLLocation alloc] initWithLatitude:v29 longitude:v32];
    v34 = sub_10003D9F4();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v50 = v29;
      v51 = 2048;
      v52 = v32;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Airport Arrival Tip: Arrival airport lat/long is %f, %f", buf, 0x16u);
    }

    [v33 distanceFromLocation:v20];
    v36 = v35;
    GEOConfigGetDouble();
    v38 = v37;
    v39 = sub_10003D9F4();
    v40 = os_log_type_enabled(v39, OS_LOG_TYPE_INFO);
    if (v36 <= v38)
    {
      if (v40)
      {
        *buf = 134217984;
        v50 = v36;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "Airport Arrival Tip: User is considered to be at the arrival airport, because they are %f meters from the airport lat/long.", buf, 0xCu);
      }

      v41 = [entryCopy stringForKey:@"MapsSuggestionsFlightArrivalAirportLocalityKey"];
      if (v41)
      {
        v42 = +[NSBundle mainBundle];
        v43 = [v42 localizedStringForKey:@"MAPS_OFFLINE_TIP_TITLE_FOR_AIRPORT_ARRIVAL" value:@"localized string not found" table:@"Offline"];

        v46[0] = _NSConcreteStackBlock;
        v46[1] = 3221225472;
        v46[2] = sub_100C5A9C0;
        v46[3] = &unk_10164EED8;
        v47 = [[NSString alloc] initWithFormat:v43, v41];
        v48 = completionCopy;
        v44 = v47;
        [(OfflineMapsSuggestionsDataProvider *)self _buildMapRegionForLatitude:v46 longitude:v29 handler:v32];
      }

      else
      {
        v45 = sub_10003D9F4();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "Airport Arrival Tip: MapsSuggestionsFlightArrivalAirportLocalityKey is nil, not showing airport arrival tip.", buf, 2u);
        }

        completionCopy[2](completionCopy, 0);
      }
    }

    else
    {
      if (v40)
      {
        *buf = 134217984;
        v50 = v36;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "Airport Arrival Tip: User is %f meters from the airport lat/long, which is too far for an airport arrival tip.", buf, 0xCu);
      }

      completionCopy[2](completionCopy, 0);
    }

LABEL_33:
    goto LABEL_34;
  }

  v13 = sub_10003D9F4();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    v14 = "Airport Arrival Tip: Network is not reachable (user is not connected to WiFi), not constructing tip.";
    goto LABEL_9;
  }

LABEL_10:

  completionCopy[2](completionCopy, 0);
LABEL_34:
}

- (void)_firstUpcomingTripOfflineSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  objc_initWeak(&location, self);
  insightsQueue = self->_insightsQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C5ACE8;
  block[3] = &unk_101660648;
  objc_copyWeak(&v9, &location);
  v8 = suggestionCopy;
  v6 = suggestionCopy;
  dispatch_async(insightsQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (BOOL)isTrip:(id)trip nearAtLeastOneShortcut:(id)shortcut
{
  tripCopy = trip;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  shortcutCopy = shortcut;
  v7 = [shortcutCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(shortcutCopy);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        placemark = [tripCopy placemark];
        location = [placemark location];
        geoMapItem = [v11 geoMapItem];
        v15 = MapsSuggestionsLocationForMapItem();
        [location distanceFromLocation:v15];
        v17 = v16;

        Integer = GEOConfigGetInteger();
        if (v17 > 0.0 && v17 < Integer)
        {
          v20 = 1;
          goto LABEL_14;
        }
      }

      v8 = [shortcutCopy countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v20 = 0;
LABEL_14:

  return v20;
}

- (id)fetchHomeLocationsAsShortCuts
{
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  dispatch_group_enter(v2);
  v3 = objc_alloc_init(NSMutableArray);
  v4 = MapsSuggestionsResourceDepotForMapsProcess();
  oneFavorites = [v4 oneFavorites];

  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100C5B8E8;
  v17 = &unk_10165FE18;
  v18 = v2;
  v19 = v3;
  v6 = v3;
  v7 = v2;
  v8 = objc_retainBlock(&v14);
  [oneFavorites loadAllShortcutsWithHandler:{v8, v14, v15, v16, v17}];
  v9 = MapsSuggestionsResourceDepotForMapsProcess();
  oneRoutine = [v9 oneRoutine];

  UInteger = GEOConfigGetUInteger();
  [oneRoutine fetchSuggestedShortcutsForType:2 minVisits:UInteger maxAge:v8 handler:GEOConfigGetUInteger()];
  dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v12 = [v6 copy];

  return v12;
}

- (void)showHomeAreaTipInFuture
{
  clientType = self->_clientType;
  v3 = sub_10003D9F4();
  v4 = v3;
  if (clientType == 3)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "User tapped Remind Me Later on Offline Maps welcome screen, home area tip will show after two weeks pass.", v5, 2u);
    }

    v4 = +[NSDate date];
    GEOConfigSetDate();
    GEOConfigSetDate();
    GEOConfigSetDate();
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "This OfflineMapsSuggestionsDataProvider is not being used for the welcome screen, this method should not be called.", buf, 2u);
  }
}

- (void)displayedTipWithType:(int)type
{
  clientType = self->_clientType;
  v5 = sub_10003D9F4();
  v6 = v5;
  if (clientType == 1)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v10[0] = 67109120;
      v10[1] = type;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Offline Maps Tip with type %d was displayed", v10, 8u);
    }

    if (type == 2)
    {
      v6 = GEOConfigGetDate();
      if (v6)
      {
        v8 = sub_10003D9F4();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          LOWORD(v10[0]) = 0;
          v9 = "Trip Tip first display date is already set.";
          goto LABEL_18;
        }

LABEL_20:

        goto LABEL_21;
      }
    }

    else
    {
      if (type != 1)
      {
        if (type)
        {
          return;
        }

        v6 = sub_10003D9F4();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v10[0]) = 0;
          v7 = "Unknown type passed to displayedTipWithType, this should never happen.";
LABEL_11:
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, v7, v10, 2u);
          goto LABEL_21;
        }

        goto LABEL_21;
      }

      v6 = GEOConfigGetDate();
      if (v6)
      {
        v8 = sub_10003D9F4();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          LOWORD(v10[0]) = 0;
          v9 = "Home Area Tip first display date is already set.";
LABEL_18:
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, v9, v10, 2u);
          goto LABEL_20;
        }

        goto LABEL_20;
      }
    }

    v8 = +[NSDate now];
    GEOConfigSetDate();
    goto LABEL_20;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v10[0]) = 0;
    v7 = "This OfflineMapsSuggestionsDataProvider is not being used for tips, this method should not be called.";
    goto LABEL_11;
  }

LABEL_21:
}

- (void)dismissedTipWithType:(int)type
{
  clientType = self->_clientType;
  v6 = sub_10003D9F4();
  v7 = v6;
  if (clientType != 1)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11[0]) = 0;
      v9 = "This OfflineMapsSuggestionsDataProvider is not being used for tips, this method should not be called.";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, v9, v11, 2u);
    }

LABEL_11:

    return;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v11[0] = 67109120;
    v11[1] = type;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Setting dismissal date for Offline Maps tip type: %d", v11, 8u);
  }

  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
      {
        return;
      }

      self->_homeAreaTipDismissedThisSession = 1;
      v8 = +[NSDate now];
      GEOConfigSetSyncDate();

      goto LABEL_19;
    }

    v7 = sub_10003D9F4();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11[0]) = 0;
      v9 = "Unknown type passed to dismissedTipWithType, this should never happen.";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (type == 2)
  {
    self->_tripTipDismissedThisSession = 1;
    goto LABEL_18;
  }

  if (type == 3)
  {
LABEL_18:
    v10 = +[NSDate now];
    GEOConfigSetSyncDate();

LABEL_19:
    GEOConfigSetSyncDate();
  }
}

- (void)offlineSuggestionsForLocation:(id)location completion:(id)completion
{
  locationCopy = location;
  completionCopy = completion;
  if ((GEOSupportsOfflineMaps() & 1) == 0)
  {
    completionCopy[2](completionCopy, 0);
  }

  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  dispatch_group_enter(v8);
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = sub_100C59550;
  v35[4] = sub_100C59560;
  v36 = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = sub_100C59550;
  v33[4] = sub_100C59560;
  v34 = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = sub_100C59550;
  v31[4] = sub_100C59560;
  v32 = 0;
  if ([(OfflineMapsSuggestionsDataProvider *)self _tripTipWasDismissed])
  {
    v9 = sub_10003D9F4();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      v10 = "Future trip tip was dismissed, no reason to look up trips in MSg Insights.";
      v11 = v9;
      v12 = OS_LOG_TYPE_INFO;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v11, v12, v10, &buf, 2u);
    }
  }

  else
  {
    if (self->_clientType != 3)
    {
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_100C5C428;
      v28[3] = &unk_10164EE10;
      v30 = v35;
      v29 = v8;
      [(OfflineMapsSuggestionsDataProvider *)self _firstUpcomingTripOfflineSuggestion:v28];

      goto LABEL_12;
    }

    v9 = sub_10003D9F4();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      v10 = "Client type does not consider trips";
      v11 = v9;
      v12 = OS_LOG_TYPE_DEBUG;
      goto LABEL_9;
    }
  }

  dispatch_group_leave(v8);
LABEL_12:
  if (![(OfflineMapsSuggestionsDataProvider *)self _homeAreaTipWasDismissed])
  {
    goto LABEL_21;
  }

  if ([(OfflineMapsSuggestionsDataProvider *)self _tripTipWasDismissed])
  {
    v13 = sub_10003D9F4();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      v14 = "Both the Offline Maps trip tip and home area tip were dismissed, No reason to run MSg engine.";
LABEL_19:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, v14, &buf, 2u);
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  if (self->_clientType != 3)
  {
LABEL_21:
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100C5C4CC;
    v24[3] = &unk_10164EE38;
    v26 = v31;
    v27 = v33;
    v25 = v8;
    [(OfflineMapsSuggestionsDataProvider *)self _offlineSuggestionsUsingLocation:locationCopy withCompletion:v24];

    goto LABEL_22;
  }

  v13 = sub_10003D9F4();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    v14 = "The Offline Maps home area tip were dismissed, and client type should not consider trips. No reason to run MSg engine.";
    goto LABEL_19;
  }

LABEL_20:

  dispatch_group_leave(v8);
LABEL_22:
  objc_initWeak(&buf, self);
  callbackQueue = self->_callbackQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100C5C560;
  block[3] = &unk_10164EE60;
  objc_copyWeak(&v22, &buf);
  v20 = v35;
  v21 = v31;
  v18 = completionCopy;
  v19 = v33;
  v16 = completionCopy;
  dispatch_group_notify(v8, callbackQueue, block);

  objc_destroyWeak(&v22);
  objc_destroyWeak(&buf);
  _Block_object_dispose(v31, 8);

  _Block_object_dispose(v33, 8);
  _Block_object_dispose(v35, 8);
}

- (OfflineMapsSuggestionsDataProvider)initWithClientType:(int)type callbackQueue:(id)queue
{
  queueCopy = queue;
  v29.receiver = self;
  v29.super_class = OfflineMapsSuggestionsDataProvider;
  v8 = [(OfflineMapsSuggestionsDataProvider *)&v29 init];
  if (v8)
  {
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.Maps.Home.OfflineMapsSuggestionsDataProviderMSgEngineQueue", v9);
    msgEngineQueue = v8->_msgEngineQueue;
    v8->_msgEngineQueue = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.Maps.Home.OfflineMapsSuggestionsDataProviderInsightsQueue", v12);
    insightsQueue = v8->_insightsQueue;
    v8->_insightsQueue = v13;

    v15 = objc_alloc_init(MapsSuggestionsMKLocationManagerAdapter);
    v16 = [NSSet alloc];
    v17 = objc_alloc_init(MapsSuggestionsFlightDeparturesOnlyFilter);
    v18 = objc_alloc_init(MapsSuggestionsFlightTooFarFilter);
    v19 = [v16 initWithObjects:{v17, v18, 0}];

    v20 = +[MapsSuggestionsEngineBuilder forDevice];
    v21 = [[MapsSuggestionsSelfBuildingResourceDepot alloc] initWithName:@"OfflineMSgDataProviderResourceDepot"];
    v22 = [v20 withResourceDepot:v21];

    v23 = [v22 withLocationUpdater:v15];

    withoutTracker = [v23 withoutTracker];

    v25 = [withoutTracker withoutPreFilters:v19];

    build = [v25 build];

    engine = v8->_engine;
    v8->_engine = build;

    objc_storeStrong(&v8->_callbackQueue, queue);
    *&v8->_tripTipDismissedThisSession = 0;
    v8->_clientType = type;
  }

  return v8;
}

@end