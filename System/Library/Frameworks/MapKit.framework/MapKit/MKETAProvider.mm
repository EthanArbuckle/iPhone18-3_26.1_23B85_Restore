@interface MKETAProvider
- (BOOL)_areDistanceAndETAInformationAvailable;
- (BOOL)_shouldUpdateETAForMapView:(id)a3;
- (BOOL)isLikelyToReturnETA;
- (MKETAProvider)initWithLineItem:(id)a3;
- (MKETAProvider)initWithMapItem:(id)a3;
- (MKETAProvider)initWithPlaceItem:(id)a3;
- (MKETAProviderDelegate)delegate;
- (NSHashTable)observers;
- (NSLock)observersLock;
- (NSString)distanceString;
- (NSString)rawDistanceString;
- (double)distance;
- (double)etaTravelTime;
- (id)currentMapItem;
- (unint64_t)etaTransportType;
- (void)_cancelTimer;
- (void)_commonInit;
- (void)_configureETAForMapItem:(id)a3;
- (void)_didEnterBackground;
- (void)_locationManagerApprovalDidChange:(id)a3;
- (void)_notifyETAAllObservers;
- (void)_notifyLocationAllObservers;
- (void)_refreshTimer;
- (void)_startTimer;
- (void)_updateETA;
- (void)_updateETADisplayWithTransportType:(unint64_t)a3 travelTime:(double)a4 distance:(double)a5;
- (void)_updateETAHandler:(id)a3;
- (void)_willEnterForeground;
- (void)addObserver:(id)a3;
- (void)cancel;
- (void)configureWithNearestStationMapItem:(id)a3;
- (void)dealloc;
- (void)findDirectionsTypeForOriginCoordinate:(CLLocationCoordinate2D)a3 destinationCoordinate:(CLLocationCoordinate2D)a4 handler:(id)a5;
- (void)locationManagerUpdatedLocation:(id)a3;
- (void)pause;
- (void)quickRouteManager:(id)a3 didUpdateETA:(id)a4 error:(id)a5 animated:(BOOL)a6;
- (void)removeObserver:(id)a3;
- (void)restart;
- (void)setAutomobileOptions:(id)a3;
- (void)setCyclingOptions:(id)a3;
- (void)setTransitOptions:(id)a3;
- (void)setWalkingOptions:(id)a3;
- (void)start;
@end

@implementation MKETAProvider

- (MKETAProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)findDirectionsTypeForOriginCoordinate:(CLLocationCoordinate2D)a3 destinationCoordinate:(CLLocationCoordinate2D)a4 handler:(id)a5
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v7 = a3.longitude;
  v8 = a3.latitude;
  v10 = a5;
  if (v10)
  {
    v11 = [(MKETAProvider *)self delegate];
    if (v11)
    {
      v12 = [(MKETAProvider *)self delegate];
      v13 = [v12 mapTypeForETAProvider:self];
    }

    else
    {
      v13 = 0;
    }

    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = [MEMORY[0x1E69A1DF8] idealTransportTypeForOrigin:v13 destination:v8 mapType:{v7, latitude, longitude}];
    v14 = [MEMORY[0x1E696AAE8] mainBundle];
    v15 = [v14 bundleIdentifier];
    v16 = [v15 isEqualToString:*MEMORY[0x1E69A1A78]];

    if ((v16 & 1) == 0)
    {
      v24 = v39[3] - 1;
      if (v24 > 3)
      {
        v25 = 1;
      }

      else
      {
        v25 = qword_1A30F7B08[v24];
      }

      v10[2](v10, v25);
      goto LABEL_27;
    }

    objc_initWeak(&location, self);
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v31 = __85__MKETAProvider_findDirectionsTypeForOriginCoordinate_destinationCoordinate_handler___block_invoke;
    v32 = &unk_1E76CCCA8;
    objc_copyWeak(&v36, &location);
    v35 = &v38;
    v33 = self;
    v34 = v10;
    v17 = v30;
    if (GEOConfigGetBOOL())
    {
      v50.latitude = latitude;
      v50.longitude = longitude;
      if (CLLocationCoordinate2DIsValid(v50))
      {
        v51.latitude = v8;
        v51.longitude = v7;
        if (CLLocationCoordinate2DIsValid(v51))
        {
          v18 = [objc_alloc(MEMORY[0x1E69A2348]) initWithLatitude:latitude longitude:longitude];
          v19 = [MEMORY[0x1E69A21E0] mapItemStorageForPlace:v18];
          v20 = v17;
          if (GEOConfigGetBOOL())
          {
            if (v19)
            {
              v48[0] = 0;
              v48[1] = v48;
              v48[2] = 0x2020000000;
              v49 = 4;
              if (MKMapsSuggestionsTransportModeForOriginAndDestinationMapItem_s_onceToken != -1)
              {
                dispatch_once(&MKMapsSuggestionsTransportModeForOriginAndDestinationMapItem_s_onceToken, &__block_literal_global_4014);
              }

              v21 = +[MKMapsSuggestionsPredictor sharedPredictor];
              v22 = [v19 data];
              v23 = NSDataFromCLLocationCoordinates(v8, v7);
              *buf = MEMORY[0x1E69E9820];
              v43 = 3221225472;
              v44 = __MKMapsSuggestionsTransportModeForOriginAndDestinationMapItem_block_invoke_2;
              v45 = &unk_1E76C6D90;
              v46 = v20;
              v47 = v48;
              [v21 transportModeForDestinationMapItemData:v22 originCoordinateData:v23 handler:buf];

              _Block_object_dispose(v48, 8);
              goto LABEL_35;
            }

            v28 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              v29 = "Need a non-nil MapItem for the destination";
              goto LABEL_33;
            }
          }

          else
          {
            v28 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              v29 = "MapsSuggestions Feeler Pipeline is disabled";
LABEL_33:
              _os_log_impl(&dword_1A2EA0000, v28, OS_LOG_TYPE_ERROR, v29, buf, 2u);
            }
          }

          v31(v20, 4);
LABEL_35:

          goto LABEL_26;
        }

        v26 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v27 = "Need a valid origin coordinate";
          goto LABEL_24;
        }

LABEL_25:

        v31(v17, 4);
LABEL_26:

        objc_destroyWeak(&v36);
        objc_destroyWeak(&location);
LABEL_27:
        _Block_object_dispose(&v38, 8);
        goto LABEL_28;
      }

      v26 = GEOFindOrCreateLog();
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 0;
      v27 = "Need a valid destination coordinate";
    }

    else
    {
      v26 = GEOFindOrCreateLog();
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 0;
      v27 = "MapsSuggestions Feeler Pipeline is disabled";
    }

LABEL_24:
    _os_log_impl(&dword_1A2EA0000, v26, OS_LOG_TYPE_ERROR, v27, buf, 2u);
    goto LABEL_25;
  }

LABEL_28:
}

void __85__MKETAProvider_findDirectionsTypeForOriginCoordinate_destinationCoordinate_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = *(*(*(a1 + 48) + 8) + 24) - 1;
  if (v5 > 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = dword_1A30F7350[v5];
  }

  v7 = [*(a1 + 32) currentMapItem];
  v8 = [v7 name];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = v8;
  v12 = v10;
  v13 = GEOFindOrCreateLog();
  v14 = v13;
  if (v6 == a2)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      if (a2 <= 2)
      {
        switch(a2)
        {
          case 0:
            v15 = @"AUTOMOBILE";
            goto LABEL_30;
          case 1:
            v15 = @"TRANSIT";
            goto LABEL_30;
          case 2:
            v15 = @"WALKING";
LABEL_30:
            v17 = v15;
            goto LABEL_31;
        }
      }

      else
      {
        if (a2 <= 4)
        {
          if (a2 == 3)
          {
            v15 = @"BICYCLE";
          }

          else
          {
            v15 = @"UNKNOWN_TRANSPORT_TYPE";
          }

          goto LABEL_30;
        }

        if (a2 == 5)
        {
          v15 = @"FERRY";
          goto LABEL_30;
        }

        if (a2 == 6)
        {
          v15 = @"RIDESHARE";
          goto LABEL_30;
        }
      }

      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a2];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a2];
LABEL_31:
      *buf = 138413058;
      v29 = v12;
      v30 = 2112;
      v31 = v11;
      v32 = 2112;
      v33 = v15;
      v34 = 2112;
      v35 = v17;
      v18 = "PTM in %@, %@, Predicted: %@, Actual: %@";
      v19 = v14;
      v20 = OS_LOG_TYPE_DEBUG;
LABEL_32:
      _os_log_impl(&dword_1A2EA0000, v19, v20, v18, buf, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    if (a2 >= 7)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", a2];
    }

    else
    {
      v16 = off_1E76C6DB0[a2];
    }

    v15 = v16;
    if (v6 >= 7)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    else
    {
      v17 = off_1E76C6DB0[v6];
    }

    *buf = 138413058;
    v29 = v12;
    v30 = 2112;
    v31 = v11;
    v32 = 2112;
    v33 = v15;
    v34 = 2112;
    v35 = v17;
    v18 = "PTM difference in %@, %@, Predicted: %@, Actual: %@";
    v19 = v14;
    v20 = OS_LOG_TYPE_ERROR;
    goto LABEL_32;
  }

  if (a2 != 4 && GEOConfigGetBOOL())
  {
    if ((a2 - 1) > 5)
    {
      v21 = 0;
    }

    else
    {
      v21 = qword_1A30F74F8[(a2 - 1)];
    }

    *(*(*(a1 + 48) + 8) + 24) = v21;
    v22 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v29 = "[MKETAProvider findDirectionsTypeForOriginCoordinate:destinationCoordinate:handler:]_block_invoke";
      _os_log_impl(&dword_1A2EA0000, v22, OS_LOG_TYPE_DEBUG, "Using MSg PTM in %s", buf, 0xCu);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__MKETAProvider_findDirectionsTypeForOriginCoordinate_destinationCoordinate_handler___block_invoke_49;
  block[3] = &unk_1E76CCC80;
  objc_copyWeak(&v27, (a1 + 56));
  v24 = *(a1 + 40);
  v23 = v24;
  v26 = v24;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v27);
}

void __85__MKETAProvider_findDirectionsTypeForOriginCoordinate_destinationCoordinate_handler___block_invoke_49(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v2 = [MEMORY[0x1E696AD98] numberWithInteger:*(*(*(a1 + 40) + 8) + 24)];
    v3 = WeakRetained[2];
    WeakRetained[2] = v2;
  }

  v4 = *(*(*(a1 + 40) + 8) + 24) - 1;
  if (v4 > 3)
  {
    v5 = 1;
  }

  else
  {
    v5 = qword_1A30F7B08[v4];
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v5);
}

- (void)quickRouteManager:(id)a3 didUpdateETA:(id)a4 error:(id)a5 animated:(BOOL)a6
{
  v7 = a4;
  v8 = [v7 transportType];
  [v7 travelTime];
  v10 = v9;
  [v7 distance];
  v12 = v11;

  [(MKETAProvider *)self _updateETADisplayWithTransportType:v8 travelTime:v10 distance:v12];
}

- (void)locationManagerUpdatedLocation:(id)a3
{
  v11 = a3;
  v4 = [v11 lastLocation];
  if (v4)
  {

LABEL_4:
    v6 = [v11 lastLocation];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [v11 lastGoodLocation];
    }

    currentLocation = self->_currentLocation;
    self->_currentLocation = v8;

    v10 = +[MKLocationManager sharedLocationManager];
    [v10 stopLocationUpdateWithObserver:self];

    [(MKETAProvider *)self _notifyLocationAllObservers];
    [(_MKQuickRouteManager *)self->_quickRouteManager updateETA];
    [(MKETAProvider *)self _startTimer];
    goto LABEL_8;
  }

  v5 = [v11 lastGoodLocation];

  if (v5)
  {
    goto LABEL_4;
  }

LABEL_8:
}

- (void)_updateETADisplayWithTransportType:(unint64_t)a3 travelTime:(double)a4 distance:(double)a5
{
  self->_distanceOrETAWasFound = 0;
  if (!self->_active)
  {
    return;
  }

  if (a4 > 30.0)
  {
    self->_etaTransportType = a3;
    self->_etaTravelTime = a4;
    self->_distanceOrETAWasFound = 1;
  }

  v8 = [(MKETAProvider *)self currentMapItem];
  v9 = [_MKQuickRouteManager isLikelyToReturnETAForLocation:v8];

  if (!v9)
  {
    v10 = +[MKLocationManager sharedLocationManager];
    v11 = [v10 currentLocation];

    if (v11)
    {
      [v11 coordinate];
      v12 = [(MKETAProvider *)self currentMapItem];
      [v12 _coordinate];

      GEOCalculateDistance();
      a5 = v13;
      self->_distanceOrETAWasFound = 1;
    }
  }

  obj = [MEMORY[0x1E696AEC0] _navigation_localizedStringForDistance:0 detail:1 unitFormat:0 locale:0 useMetric:0 useYards:a5];
  objc_storeStrong(&self->_rawDistanceString, obj);
  self->_distance = a5;
  nearestStationItem = self->_nearestStationItem;
  if (!nearestStationItem)
  {
    if (a5 >= 3.0)
    {
      objc_storeStrong(&self->_distanceTextItem, obj);
      self->_distanceOrETAWasFound = 1;
    }

    else if (!self->_distanceOrETAWasFound)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v15 = [(MKMapItem *)nearestStationItem name];
  v16 = [v15 length];

  if (a5 < 3.0)
  {
    if (!v16)
    {
      goto LABEL_22;
    }

    v17 = [(MKMapItem *)self->_nearestStationItem name];
    goto LABEL_20;
  }

  if (!v16)
  {
    v17 = obj;
LABEL_20:
    distanceTextItem = self->_distanceTextItem;
    self->_distanceTextItem = v17;
    goto LABEL_21;
  }

  v18 = MEMORY[0x1E696AEC0];
  distanceTextItem = _MKLocalizedStringFromThisBundle(@"line_card_nearest_station_distance_format");
  v20 = [(MKMapItem *)self->_nearestStationItem name];
  v21 = [v18 localizedStringWithFormat:distanceTextItem, v20, obj];
  v22 = self->_distanceTextItem;
  self->_distanceTextItem = v21;

LABEL_21:
LABEL_22:
  v23 = self->_distanceOrETAWasFound || self->_distanceTextItem != 0;
  self->_distanceOrETAWasFound = v23;
  if (v23)
  {
LABEL_23:
    v24 = [MEMORY[0x1E696AD88] defaultCenter];
    [v24 postNotificationName:@"MapsButtonETAUpdatedNotification" object:self userInfo:0];
  }

LABEL_24:
  [(MKETAProvider *)self _notifyETAAllObservers];
}

- (id)currentMapItem
{
  nearestStationItem = self->_nearestStationItem;
  if (nearestStationItem)
  {
    goto LABEL_2;
  }

  if (!self->_placeItem)
  {
    nearestStationItem = self->_mapItem;
LABEL_2:
    v3 = nearestStationItem;
    goto LABEL_5;
  }

  v3 = [(_MKPlaceItem *)self->_placeItem mapItem];
LABEL_5:

  return v3;
}

- (void)_configureETAForMapItem:(id)a3
{
  v4 = a3;
  if (v4 && self->_active)
  {
    quickRouteManager = self->_quickRouteManager;
    v13 = v4;
    if (!quickRouteManager)
    {
      v6 = objc_alloc_init(_MKQuickRouteManager);
      v7 = self->_quickRouteManager;
      self->_quickRouteManager = v6;

      v4 = v13;
      quickRouteManager = self->_quickRouteManager;
    }

    [(_MKQuickRouteManager *)quickRouteManager setMapItem:v4];
    [(_MKQuickRouteManager *)self->_quickRouteManager setDelegate:self];
    [(_MKQuickRouteManager *)self->_quickRouteManager setTransportTypeFinder:self];
    [(_MKQuickRouteManager *)self->_quickRouteManager setView:self];
    [(_MKQuickRouteManager *)self->_quickRouteManager setAutomobileOptions:self->_automobileOptions];
    [(_MKQuickRouteManager *)self->_quickRouteManager setWalkingOptions:self->_walkingOptions];
    [(_MKQuickRouteManager *)self->_quickRouteManager setTransitOptions:self->_transitOptions];
    [(_MKQuickRouteManager *)self->_quickRouteManager setCyclingOptions:self->_cyclingOptions];
    [(_MKQuickRouteManager *)self->_quickRouteManager setAllowsDistantETA:self->_allowsDistantETA];
    v8 = [(MKETAProvider *)self _areDistanceAndETAInformationAvailable];
    v9 = +[MKLocationManager sharedLocationManager];
    v10 = v9;
    if (v8)
    {
      [v9 startLocationUpdateWithObserver:self];
    }

    else
    {
      v11 = [v9 isLocationServicesAuthorizationNeeded];

      v4 = v13;
      if (!v11)
      {
        goto LABEL_10;
      }

      v12 = [MEMORY[0x1E696AD88] defaultCenter];
      [v12 addObserver:self selector:sel__updateETA name:MKLocationManagerApprovalDidChangeNotification object:0];

      v10 = +[MKLocationManager sharedLocationManager];
      [v10 requestWhenInUseAuthorization];
    }

    v4 = v13;
  }

LABEL_10:
}

- (void)_updateETAHandler:(id)a3
{
  v4 = [a3 object];
  v5 = [(MKETAProvider *)self _shouldUpdateETAForMapView:v4];

  if (v5)
  {

    [(MKETAProvider *)self _updateETA];
  }
}

- (BOOL)_shouldUpdateETAForMapView:(id)a3
{
  v3 = a3;
  v4 = v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (![v3 mapType] || objc_msgSend(v3, "mapType") == 105 || objc_msgSend(v3, "mapType") == 104 || objc_msgSend(v3, "mapType") == 108);

  return v4;
}

- (void)_updateETA
{
  if ([(MKETAProvider *)self _areDistanceAndETAInformationAvailable])
  {
    v3 = +[MKLocationManager sharedLocationManager];
    [v3 startLocationUpdateWithObserver:self];

    quickRouteManager = self->_quickRouteManager;

    [(_MKQuickRouteManager *)quickRouteManager updateETA];
  }
}

- (BOOL)_areDistanceAndETAInformationAvailable
{
  v3 = +[MKLocationManager sharedLocationManager];
  if ([v3 isLocationServicesAvailable] && self->_quickRouteManager && self->_active)
  {
    v4 = +[MKLocationManager sharedLocationManager];
    v5 = [v4 isAuthorizedForPreciseLocation];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setCyclingOptions:(id)a3
{
  v5 = a3;
  p_cyclingOptions = &self->_cyclingOptions;
  if (self->_cyclingOptions != v5)
  {
    v7 = v5;
    objc_storeStrong(p_cyclingOptions, a3);
    [(_MKQuickRouteManager *)self->_quickRouteManager setCyclingOptions:v7];
    p_cyclingOptions = [(MKETAProvider *)self _updateETA];
  }

  MEMORY[0x1EEE66BE0](p_cyclingOptions);
}

- (void)setTransitOptions:(id)a3
{
  v5 = a3;
  p_transitOptions = &self->_transitOptions;
  if (self->_transitOptions != v5)
  {
    v7 = v5;
    objc_storeStrong(p_transitOptions, a3);
    [(_MKQuickRouteManager *)self->_quickRouteManager setTransitOptions:v7];
    p_transitOptions = [(MKETAProvider *)self _updateETA];
  }

  MEMORY[0x1EEE66BE0](p_transitOptions);
}

- (void)setWalkingOptions:(id)a3
{
  v5 = a3;
  p_walkingOptions = &self->_walkingOptions;
  if (self->_walkingOptions != v5)
  {
    v7 = v5;
    objc_storeStrong(p_walkingOptions, a3);
    [(_MKQuickRouteManager *)self->_quickRouteManager setWalkingOptions:v7];
    p_walkingOptions = [(MKETAProvider *)self _updateETA];
  }

  MEMORY[0x1EEE66BE0](p_walkingOptions);
}

- (void)setAutomobileOptions:(id)a3
{
  v5 = a3;
  if (self->_automobileOptions != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_automobileOptions, a3);
    [(_MKQuickRouteManager *)self->_quickRouteManager setAutomobileOptions:self->_automobileOptions];
    [(MKETAProvider *)self _updateETA];
    v5 = v6;
  }
}

- (void)configureWithNearestStationMapItem:(id)a3
{
  v5 = a3;
  if (self->_nearestStationItem != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_nearestStationItem, a3);
    [(MKETAProvider *)self start];
    v6 = [(MKMapItem *)v9 _geoMapItem];
    if (v6)
    {
      [(_MKQuickRouteManager *)self->_quickRouteManager updateETA];
    }

    else
    {
      distanceTextItem = self->_distanceTextItem;
      self->_distanceTextItem = 0;

      rawDistanceString = self->_rawDistanceString;
      self->_rawDistanceString = 0;
    }

    v5 = v9;
  }
}

- (BOOL)isLikelyToReturnETA
{
  v2 = [(MKETAProvider *)self currentMapItem];
  v3 = [_MKQuickRouteManager isLikelyToReturnETAForLocation:v2];

  return v3;
}

- (double)distance
{
  result = 0.0;
  if (self->_distanceOrETAWasFound && !self->_distanceOrETAIsSuppressed)
  {
    return self->_distance;
  }

  return result;
}

- (NSString)rawDistanceString
{
  if (self->_distanceOrETAWasFound && !self->_distanceOrETAIsSuppressed)
  {
    v3 = self->_rawDistanceString;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)distanceString
{
  if (self->_distanceOrETAWasFound && !self->_distanceOrETAIsSuppressed)
  {
    v3 = self->_distanceTextItem;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (double)etaTravelTime
{
  result = 0.0;
  if (self->_distanceOrETAWasFound && !self->_distanceOrETAIsSuppressed)
  {
    return self->_etaTravelTime;
  }

  return result;
}

- (unint64_t)etaTransportType
{
  if (self->_distanceOrETAWasFound && !self->_distanceOrETAIsSuppressed)
  {
    return self->_etaTransportType;
  }

  else
  {
    return 0xFFFFFFFLL;
  }
}

- (void)_notifyLocationAllObservers
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(MKETAProvider *)self observersLock];
  [v3 lock];

  v4 = [(MKETAProvider *)self observers];
  v5 = [v4 copy];

  v6 = [(MKETAProvider *)self observersLock];
  [v6 unlock];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 ETAProviderLocationUpdated:{self, v13}];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)_notifyETAAllObservers
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(MKETAProvider *)self observersLock];
  [v3 lock];

  v4 = [(MKETAProvider *)self observers];
  v5 = [v4 copy];

  v6 = [(MKETAProvider *)self observersLock];
  [v6 unlock];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 ETAProviderUpdated:{self, v13}];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)removeObserver:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(MKETAProvider *)self observersLock];
    [v5 lock];

    v6 = [(MKETAProvider *)self observers];
    [v6 removeObject:v4];

    v7 = [(MKETAProvider *)self observersLock];
    [v7 unlock];
  }
}

- (void)addObserver:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(MKETAProvider *)self observersLock];
    [v5 lock];

    v6 = [(MKETAProvider *)self observers];
    [v6 addObject:v4];

    v7 = [(MKETAProvider *)self observersLock];
    [v7 unlock];
  }
}

- (NSLock)observersLock
{
  observersLock = self->_observersLock;
  if (!observersLock)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AD10]);
    v5 = self->_observersLock;
    self->_observersLock = v4;

    observersLock = self->_observersLock;
  }

  return observersLock;
}

- (NSHashTable)observers
{
  observers = self->_observers;
  if (!observers)
  {
    v4 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v5 = self->_observers;
    self->_observers = v4;

    observers = self->_observers;
  }

  return observers;
}

- (void)_cancelTimer
{
  [(NSTimer *)self->_refreshTimer invalidate];
  refreshTimer = self->_refreshTimer;
  self->_refreshTimer = 0;
}

- (void)_startTimer
{
  [(MKETAProvider *)self _cancelTimer];
  v3 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__refreshTimer selector:0 userInfo:0 repeats:60.0];
  refreshTimer = self->_refreshTimer;
  self->_refreshTimer = v3;
}

- (void)_refreshTimer
{
  [(MKETAProvider *)self _cancelTimer];

  [(MKETAProvider *)self _updateETA];
}

- (void)_willEnterForeground
{
  if (self->_inactiveInBackground)
  {
    v7[3] = v2;
    v7[4] = v3;
    self->_inactiveInBackground = 0;
    objc_initWeak(v7, self);
    v4 = dispatch_time(0, 1000000000);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __37__MKETAProvider__willEnterForeground__block_invoke;
    v5[3] = &unk_1E76CD1C0;
    objc_copyWeak(&v6, v7);
    dispatch_after(v4, MEMORY[0x1E69E96A0], v5);
    objc_destroyWeak(&v6);
    objc_destroyWeak(v7);
  }
}

void __37__MKETAProvider__willEnterForeground__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained start];
}

- (void)_didEnterBackground
{
  if (self->_active)
  {
    self->_inactiveInBackground = 1;
    [(MKETAProvider *)self cancel];
  }
}

- (void)_locationManagerApprovalDidChange:(id)a3
{
  v5 = +[MKLocationManager sharedLocationManager];
  if ([v5 isLocationServicesAvailable])
  {
    v4 = [v5 isAuthorizedForPreciseLocation] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  self->_distanceOrETAIsSuppressed = v4;
  [(MKETAProvider *)self _notifyETAAllObservers];
  [(MKETAProvider *)self _updateETA];
}

- (void)cancel
{
  [(MKETAProvider *)self _cancelTimer];
  self->_active = 0;
  v3 = +[MKLocationManager sharedLocationManager];
  [v3 stopLocationUpdateWithObserver:self];
}

- (void)pause
{
  if (self->_active)
  {
    self->_paused = 1;
    [(MKETAProvider *)self cancel];
  }
}

- (void)restart
{
  if (self->_paused)
  {
    [(MKETAProvider *)self start];
  }
}

- (void)start
{
  self->_paused = 0;
  if (!self->_active)
  {
    self->_active = 1;
    v4 = [(MKETAProvider *)self currentMapItem];
    [(MKETAProvider *)self _configureETAForMapItem:v4];
  }
}

- (void)_commonInit
{
  v3 = +[MKLocationManager sharedLocationManager];
  v4 = [v3 lastGoodLocation];
  currentLocation = self->_currentLocation;
  self->_currentLocation = v4;

  v6 = [(_MKPlaceItem *)self->_placeItem mapItem];
  if (v6 || (v6 = self->_mapItem) != 0)
  {
    v11 = v6;
    [(MKETAProvider *)self _configureETAForMapItem:v6];
  }

  else
  {
    v11 = 0;
  }

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 addObserver:self selector:sel__locationManagerApprovalDidChange_ name:MKLocationManagerApprovalDidChangeNotification object:0];

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 addObserver:self selector:sel__updateETAHandler_ name:@"MKMapViewDidChangeMapTypeNotification" object:0];

  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  [v9 addObserver:self selector:sel__willEnterForeground name:@"MKApplicationStateWillEnterForegroundNotification" object:0];

  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  [v10 addObserver:self selector:sel__didEnterBackground name:@"MKApplicationStateDidEnterBackgroundNotification" object:0];
}

- (void)dealloc
{
  [(MKETAProvider *)self _cancelTimer];
  v3.receiver = self;
  v3.super_class = MKETAProvider;
  [(MKETAProvider *)&v3 dealloc];
}

- (MKETAProvider)initWithLineItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MKETAProvider;
  v6 = [(MKETAProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lineItem, a3);
    [(MKETAProvider *)v7 _commonInit];
  }

  return v7;
}

- (MKETAProvider)initWithMapItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MKETAProvider;
  v6 = [(MKETAProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, a3);
    [(MKETAProvider *)v7 _commonInit];
  }

  return v7;
}

- (MKETAProvider)initWithPlaceItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MKETAProvider;
  v6 = [(MKETAProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_placeItem, a3);
    [(MKETAProvider *)v7 _commonInit];
  }

  return v7;
}

@end