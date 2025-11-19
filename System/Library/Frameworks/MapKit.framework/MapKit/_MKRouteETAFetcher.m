@interface _MKRouteETAFetcher
- (BOOL)isUsingCurrentLocationForOrigin;
- (BOOL)isValidETA:(id)a3;
- (BOOL)shouldUpdateEstimatedTravelTimeForNewOrigin:(CLLocationCoordinate2D)a3;
- (CLLocationCoordinate2D)destinationCoordinate;
- (CLLocationCoordinate2D)originCoordinate;
- (_MKRouteETAFetcher)init;
- (id)routeETAForTransportType:(unint64_t)a3;
- (void)_didUpdateETAResult;
- (void)_resetState;
- (void)dealloc;
- (void)expireETAsIfNoLongerValid;
- (void)invalidateETAForTransportType:(unint64_t)a3;
- (void)requestNewETAForTransportType:(unint64_t)a3 additionalTransportTypes:(id)a4 completion:(id)a5;
- (void)setAutomobileOptions:(id)a3;
- (void)setCyclingOptions:(id)a3;
- (void)setMapItem:(id)a3;
- (void)setOriginMapItem:(id)a3;
- (void)setTransitOptions:(id)a3;
- (void)setWalkingOptions:(id)a3;
@end

@implementation _MKRouteETAFetcher

- (void)_didUpdateETAResult
{
  [(_MKRouteETAFetcher *)self originCoordinate];
  self->_lastUpdatedETAOriginCoordinate.latitude = v3;
  self->_lastUpdatedETAOriginCoordinate.longitude = v4;
  Current = CFAbsoluteTimeGetCurrent();
  self->_lastUpdatedETATime = Current;
  self->_lastRequestTime = Current;
}

- (void)invalidateETAForTransportType:(unint64_t)a3
{
  etaResults = self->_etaResults;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(NSMutableDictionary *)etaResults removeObjectForKey:v4];
}

- (BOOL)isValidETA:(id)a3
{
  v4 = a3;
  Current = CFAbsoluteTimeGetCurrent();
  [v4 responseTime];
  v7 = 0;
  if (Current - v6 <= self->_staleTimeInterval)
  {
    [v4 travelTime];
    if (v8 >= 1.0 || (v9 = CFAbsoluteTimeGetCurrent(), [v4 responseTime], v9 - v10 <= 300.0))
    {
      v7 = 1;
    }
  }

  return v7;
}

- (void)expireETAsIfNoLongerValid
{
  v18 = *MEMORY[0x1E69E9840];
  [(_MKRouteETAFetcher *)self originCoordinate];
  if (fabs(v4) > 180.0 || fabs(v3) > 90.0 || fabs(self->_lastUpdatedETAOriginCoordinate.longitude) > 180.0 || fabs(self->_lastUpdatedETAOriginCoordinate.latitude) > 90.0 || (GEOCalculateDistance(), v5 > self->_staleDistance))
  {
    [(NSMutableDictionary *)self->_etaResults removeAllObjects];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [(NSMutableDictionary *)self->_etaResults allKeys];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_etaResults objectForKeyedSubscript:v11];
        if (![(_MKRouteETAFetcher *)self isValidETA:v12])
        {
          [(NSMutableDictionary *)self->_etaResults removeObjectForKey:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (BOOL)shouldUpdateEstimatedTravelTimeForNewOrigin:(CLLocationCoordinate2D)a3
{
  latitude = a3.latitude;
  result = 1;
  if (self->_lastRequestTime != 0.0 && !self->_optionsHaveChangedSinceLastUpdate)
  {
    longitude = a3.longitude;
    v7 = CFAbsoluteTimeGetCurrent() - self->_lastRequestTime;
    if (!(self->_lastETAUpdateHadError ? v7 >= 300.0 : v7 >= 60.0))
    {
      return 0;
    }

    if (fabs(longitude) <= 180.0 && fabs(latitude) <= 90.0 && fabs(self->_lastUpdatedETAOriginCoordinate.longitude) <= 180.0 && fabs(self->_lastUpdatedETAOriginCoordinate.latitude) <= 90.0)
    {
      GEOCalculateDistance();
      if (v9 < 1.0)
      {
        return 0;
      }
    }
  }

  return result;
}

- (CLLocationCoordinate2D)destinationCoordinate
{
  if ([(MKMapItem *)self->_mapItem isCurrentLocation])
  {
    v3 = +[MKLocationManager sharedLocationManager];
    if ([v3 hasLocation])
    {
      v4 = +[MKLocationManager sharedLocationManager];
      v5 = [v4 lastLocation];
      [v5 coordinate];
      v7 = v6;
      v9 = v8;
    }

    else
    {
      v9 = 0xC066800000000000;
      v7 = 0xC066800000000000;
    }
  }

  else
  {
    [(MKMapItem *)self->_mapItem _coordinate];
    v7 = v10;
    v9 = v11;
  }

  v12 = *&v7;
  v13 = *&v9;
  result.longitude = v13;
  result.latitude = v12;
  return result;
}

- (CLLocationCoordinate2D)originCoordinate
{
  if ([(_MKRouteETAFetcher *)self isUsingCurrentLocationForOrigin])
  {
    v3 = +[MKLocationManager sharedLocationManager];
    if ([v3 hasLocation])
    {
      v4 = +[MKLocationManager sharedLocationManager];
      v5 = [v4 lastLocation];
      [v5 coordinate];
      v7 = v6;
      v9 = v8;
    }

    else
    {
      v9 = 0xC066800000000000;
      v7 = 0xC066800000000000;
    }
  }

  else
  {
    [(MKMapItem *)self->_originMapItem _coordinate];
    v7 = v10;
    v9 = v11;
  }

  v12 = *&v7;
  v13 = *&v9;
  result.longitude = v13;
  result.latitude = v12;
  return result;
}

- (BOOL)isUsingCurrentLocationForOrigin
{
  v2 = [(_MKRouteETAFetcher *)self originMapItem];
  v3 = [v2 isCurrentLocation];

  return v3;
}

- (void)requestNewETAForTransportType:(unint64_t)a3 additionalTransportTypes:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v10 = [MKDirectionsRequest alloc];
    mapItem = self->_mapItem;
    originMapItem = self->_originMapItem;
    v13 = [MEMORY[0x1E695DF00] date];
    LOWORD(v23) = 256;
    v14 = [(MKDirectionsRequest *)v10 _mapkit_initWithSource:originMapItem destination:mapItem transportType:a3 departureDate:v13 includeTravelTimes:1 includeTrafficIncidents:0 includeRoutePoints:v23 resolveExtraAutomobileOptions:?];

    [v14 _setIncludeDistanceInETA:1];
    if ([v8 count])
    {
      [v14 _setAdditionalTransportTypesRequested:v8];
    }

    if (a3 == 1 || [v8 containsObject:&unk_1F1611578])
    {
      v15 = [(_MKRouteETAFetcher *)self automobileOptions];
      [v14 _setAutomobileOptions:v15];
    }

    if (a3 == 4 || [v8 containsObject:&unk_1F1611590])
    {
      v16 = [(_MKRouteETAFetcher *)self transitOptions];
      [v14 _setTransitOptions:v16];
    }

    if (a3 == 8 || [v8 containsObject:&unk_1F16115A8])
    {
      v17 = [(_MKRouteETAFetcher *)self cyclingOptions];
      [v14 _setCyclingOptions:v17];
    }

    v18 = self->_mapItem;
    [(MKDirections *)self->_inProgressETAUpdate cancel];
    v19 = [[MKDirections alloc] initWithRequest:v14];
    inProgressETAUpdate = self->_inProgressETAUpdate;
    self->_inProgressETAUpdate = v19;

    self->_lastRequestTime = CFAbsoluteTimeGetCurrent();
    self->_optionsHaveChangedSinceLastUpdate = 0;
    v21 = self->_inProgressETAUpdate;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __88___MKRouteETAFetcher_requestNewETAForTransportType_additionalTransportTypes_completion___block_invoke;
    v24[3] = &unk_1E76C9BE8;
    v24[4] = self;
    v25 = v18;
    v26 = v9;
    v22 = v18;
    [(MKDirections *)v21 calculateETAWithCompletionHandler:v24];
  }
}

- (id)routeETAForTransportType:(unint64_t)a3
{
  etaResults = self->_etaResults;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v5 = [(NSMutableDictionary *)etaResults objectForKeyedSubscript:v4];

  return v5;
}

- (void)_resetState
{
  self->_lastETAUpdateHadError = 0;
  [(NSMutableDictionary *)self->_etaResults removeAllObjects];
  [(MKDirections *)self->_inProgressETAUpdate cancel];
  inProgressETAUpdate = self->_inProgressETAUpdate;
  self->_inProgressETAUpdate = 0;

  self->_lastUpdatedETATime = 0.0;
  self->_lastRequestTime = 0.0;
  self->_lastUpdatedETAOriginCoordinate = MKCoordinateInvalid;
  self->_optionsHaveChangedSinceLastUpdate = 0;
}

- (void)setOriginMapItem:(id)a3
{
  v5 = a3;
  if (self->_originMapItem != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_originMapItem, a3);
    [(_MKRouteETAFetcher *)self _resetState];
    v5 = v6;
  }
}

- (void)setMapItem:(id)a3
{
  v5 = a3;
  if (self->_mapItem != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_mapItem, a3);
    [(_MKRouteETAFetcher *)self _resetState];
    v5 = v6;
  }
}

- (void)setCyclingOptions:(id)a3
{
  v4 = a3;
  cyclingOptions = self->_cyclingOptions;
  if (cyclingOptions != v4)
  {
    v9 = v4;
    v6 = [(GEOCyclingOptions *)cyclingOptions isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(GEOCyclingOptions *)v9 copy];
      v8 = self->_cyclingOptions;
      self->_cyclingOptions = v7;

      [(_MKRouteETAFetcher *)self invalidateETAForTransportType:8];
      v4 = v9;
      self->_optionsHaveChangedSinceLastUpdate = 1;
    }
  }
}

- (void)setTransitOptions:(id)a3
{
  v4 = a3;
  transitOptions = self->_transitOptions;
  if (transitOptions != v4)
  {
    v9 = v4;
    v6 = [(GEOTransitOptions *)transitOptions isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(GEOTransitOptions *)v9 copy];
      v8 = self->_transitOptions;
      self->_transitOptions = v7;

      [(_MKRouteETAFetcher *)self invalidateETAForTransportType:4];
      v4 = v9;
      self->_optionsHaveChangedSinceLastUpdate = 1;
    }
  }
}

- (void)setWalkingOptions:(id)a3
{
  v4 = a3;
  walkingOptions = self->_walkingOptions;
  if (walkingOptions != v4)
  {
    v9 = v4;
    v6 = [(GEOWalkingOptions *)walkingOptions isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(GEOWalkingOptions *)v9 copy];
      v8 = self->_walkingOptions;
      self->_walkingOptions = v7;

      [(_MKRouteETAFetcher *)self invalidateETAForTransportType:2];
      v4 = v9;
      self->_optionsHaveChangedSinceLastUpdate = 1;
    }
  }
}

- (void)setAutomobileOptions:(id)a3
{
  v4 = a3;
  automobileOptions = self->_automobileOptions;
  if (automobileOptions != v4)
  {
    v9 = v4;
    v6 = [(GEOAutomobileOptions *)automobileOptions isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(GEOAutomobileOptions *)v9 copy];
      v8 = self->_automobileOptions;
      self->_automobileOptions = v7;

      [(_MKRouteETAFetcher *)self invalidateETAForTransportType:1];
      v4 = v9;
      self->_optionsHaveChangedSinceLastUpdate = 1;
    }
  }
}

- (void)dealloc
{
  [(MKDirections *)self->_inProgressETAUpdate cancel];
  inProgressETAUpdate = self->_inProgressETAUpdate;
  self->_inProgressETAUpdate = 0;

  v4.receiver = self;
  v4.super_class = _MKRouteETAFetcher;
  [(_MKRouteETAFetcher *)&v4 dealloc];
}

- (_MKRouteETAFetcher)init
{
  v10.receiver = self;
  v10.super_class = _MKRouteETAFetcher;
  v2 = [(_MKRouteETAFetcher *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    etaResults = v2->_etaResults;
    v2->_etaResults = v3;

    GEOConfigGetDouble();
    v2->_staleDistance = v5;
    GEOConfigGetDouble();
    v2->_staleTimeInterval = v6;
    v7 = +[MKMapItem mapItemForCurrentLocation];
    originMapItem = v2->_originMapItem;
    v2->_originMapItem = v7;

    v2->_lastUpdatedETAOriginCoordinate = MKCoordinateInvalid;
  }

  return v2;
}

@end