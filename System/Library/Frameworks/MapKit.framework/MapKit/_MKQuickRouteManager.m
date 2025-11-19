@interface _MKQuickRouteManager
+ (BOOL)isLikelyToReturnETAForLocation:(id)a3;
+ (unint64_t)counterpartForTransportType:(unint64_t)a3;
+ (unint64_t)directionsTypeForMapItem:(id)a3 delegate:(id)a4 mapType:(unint64_t)a5;
- (BOOL)_transportTypeShouldBeSmart;
- (BOOL)haveETAsForPreferredTransportType:(unint64_t)a3;
- (BOOL)isOnlyDriving;
- (BOOL)isUsingCurrentLocationForOrigin;
- (CLLocationCoordinate2D)coordinate;
- (CLLocationCoordinate2D)destinationCoordinate;
- (CLLocationCoordinate2D)originCoordinate;
- (MKQuickRouteConfigurableView)view;
- (MKQuickRouteManagerDelegate)delegate;
- (MKQuickRouteTransportTypeFinding)transportTypeFinder;
- (_MKQuickRouteManager)init;
- (double)_maxDistanceToRequestETA;
- (id)bestETAForPreferredDirectionsType:(unint64_t)a3;
- (id)description;
- (id)routeETAForTransportType:(unint64_t)a3;
- (unint64_t)directionsTypeForMapType:(unint64_t)a3;
- (unint64_t)directionsTypeForOriginCoordinate:(CLLocationCoordinate2D)a3 destinationCoordinate:(CLLocationCoordinate2D)a4 preferredDirectionsType:(unint64_t)a5;
- (unint64_t)guessTransportTypeForDistance:(double)a3 preferredDirectionsType:(unint64_t)a4;
- (void)_performWithTransportType:(id)a3;
- (void)_resetState;
- (void)requestNewETAForPreferredTransportType:(unint64_t)a3 completion:(id)a4;
- (void)setAllowsDistantETA:(BOOL)a3;
- (void)setFetchAllTransportTypes:(BOOL)a3;
- (void)setMapItem:(id)a3;
- (void)setOriginMapItem:(id)a3;
- (void)setView:(id)a3;
- (void)updateETA;
@end

@implementation _MKQuickRouteManager

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (MKQuickRouteConfigurableView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (MKQuickRouteTransportTypeFinding)transportTypeFinder
{
  WeakRetained = objc_loadWeakRetained(&self->_transportTypeFinder);

  return WeakRetained;
}

- (MKQuickRouteManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)isOnlyDriving
{
  v2 = [(_MKQuickRouteManager *)self delegate];
  v3 = [v2 quickRouteShouldOnlyUseAutomobile];

  return v3;
}

- (BOOL)haveETAsForPreferredTransportType:(unint64_t)a3
{
  v5 = [(_MKRouteETAFetcher *)self->_etaFetcher etaResults];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v7 = [v5 objectForKey:v6];

  if (!v7)
  {
    return 0;
  }

  v8 = [objc_opt_class() counterpartForTransportType:a3];
  v9 = [(_MKRouteETAFetcher *)self->_etaFetcher etaResults];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
  v11 = [v9 objectForKey:v10];
  v12 = v11 != 0;

  return v12;
}

- (unint64_t)guessTransportTypeForDistance:(double)a3 preferredDirectionsType:(unint64_t)a4
{
  closeWalkTravelTime = self->_closeWalkTravelTime;
  maxWalkingDistance = self->_maxWalkingDistance;
  if ([(_MKQuickRouteManager *)self isOnlyDriving])
  {
    return 1;
  }

  v9 = closeWalkTravelTime * 1.25;
  if (a4 == 4)
  {
    if (v9 <= a3)
    {
      return 4;
    }

    return 2;
  }

  if (a4 != 2)
  {
    if (a4 != 1)
    {
      return a4;
    }

    if (v9 <= a3)
    {
      return 1;
    }

    return 2;
  }

  if (maxWalkingDistance < a3)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (unint64_t)directionsTypeForOriginCoordinate:(CLLocationCoordinate2D)a3 destinationCoordinate:(CLLocationCoordinate2D)a4 preferredDirectionsType:(unint64_t)a5
{
  if (fabs(a3.longitude) > 180.0 || fabs(a3.latitude) > 90.0 || fabs(a4.longitude) > 180.0 || fabs(a4.latitude) > 90.0)
  {
    return a5;
  }

  GEOCalculateDistance();

  return [(_MKQuickRouteManager *)self guessTransportTypeForDistance:a5 preferredDirectionsType:?];
}

- (unint64_t)directionsTypeForMapType:(unint64_t)a3
{
  v5 = [(_MKQuickRouteManager *)self delegate];
  v6 = [v5 preferredDirectionsTypeForQuickRoute];

  if (a3 == 104)
  {
    return 4;
  }

  [(_MKQuickRouteManager *)self originCoordinate];
  v9 = v8;
  v11 = v10;
  [(_MKQuickRouteManager *)self destinationCoordinate];

  return [(_MKQuickRouteManager *)self directionsTypeForOriginCoordinate:v6 destinationCoordinate:v9 preferredDirectionsType:v11, v12, v13];
}

- (id)bestETAForPreferredDirectionsType:(unint64_t)a3
{
  v5 = [(_MKRouteETAFetcher *)self->_etaFetcher etaResults];
  v6 = [v5 count];

  if (!v6)
  {
    v8 = 0;
    goto LABEL_28;
  }

  if ([(_MKQuickRouteManager *)self isOnlyDriving])
  {
    goto LABEL_3;
  }

  v8 = 0;
  if (a3 > 3)
  {
    if (a3 != 4)
    {
      v11 = 0;
      if (a3 != 8)
      {
        goto LABEL_27;
      }

      v7 = [(_MKRouteETAFetcher *)self->_etaFetcher etaResults];
      v8 = v7;
      v9 = &unk_1F1611620;
      goto LABEL_4;
    }

    v19 = [(_MKRouteETAFetcher *)self->_etaFetcher etaResults];
    v8 = [v19 objectForKeyedSubscript:&unk_1F1611608];

    if (![(_MKQuickRouteManager *)self _transportTypeShouldBeSmart])
    {
      goto LABEL_26;
    }

    v20 = [(_MKRouteETAFetcher *)self->_etaFetcher etaResults];
    v11 = [v20 objectForKeyedSubscript:&unk_1F16115F0];

    if (!v8 && v11)
    {
      [v11 distance];
      if (v21 <= self->_maxWalkingDistance)
      {
        goto LABEL_33;
      }

LABEL_32:
      [v11 travelTime];
      if (v23 >= self->_closeWalkTravelTime)
      {
        goto LABEL_27;
      }

      goto LABEL_33;
    }

LABEL_31:
    if (!v11)
    {
      goto LABEL_27;
    }

    goto LABEL_32;
  }

  if (a3 == 1)
  {
    v17 = [(_MKRouteETAFetcher *)self->_etaFetcher etaResults];
    v8 = [v17 objectForKeyedSubscript:&unk_1F16115D8];

    if (![(_MKQuickRouteManager *)self _transportTypeShouldBeSmart])
    {
      goto LABEL_26;
    }

    v18 = [(_MKRouteETAFetcher *)self->_etaFetcher etaResults];
    v11 = [v18 objectForKeyedSubscript:&unk_1F16115F0];

    if (!v8)
    {
LABEL_33:
      v16 = v11;
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  v11 = 0;
  if (a3 != 2)
  {
    goto LABEL_27;
  }

  v12 = [(_MKRouteETAFetcher *)self->_etaFetcher etaResults];
  v8 = [v12 objectForKeyedSubscript:&unk_1F16115F0];

  if (![(_MKQuickRouteManager *)self _transportTypeShouldBeSmart])
  {
    goto LABEL_26;
  }

  if (v8)
  {
    [v8 distance];
    if (v13 > self->_maxWalkingDistance)
    {
      v14 = [(_MKRouteETAFetcher *)self->_etaFetcher etaResults];
      v15 = [v14 objectForKeyedSubscript:&unk_1F16115D8];

      if (v15)
      {
        v16 = v15;
LABEL_34:
        v10 = v16;
        v11 = v16;
        goto LABEL_5;
      }
    }

LABEL_26:
    v11 = 0;
    goto LABEL_27;
  }

LABEL_3:
  v7 = [(_MKRouteETAFetcher *)self->_etaFetcher etaResults];
  v8 = v7;
  v9 = &unk_1F16115D8;
LABEL_4:
  v10 = [v7 objectForKeyedSubscript:v9];
  v11 = 0;
LABEL_5:

  v8 = v10;
LABEL_27:

LABEL_28:

  return v8;
}

- (CLLocationCoordinate2D)destinationCoordinate
{
  v3 = [(_MKQuickRouteManager *)self mapItem];

  if (v3)
  {
    v4 = [(_MKQuickRouteManager *)self mapItem];
    [v4 _coordinate];
    latitude = v5;
    longitude = v7;
  }

  else
  {
    latitude = self->_coordinate.latitude;
    longitude = self->_coordinate.longitude;
  }

  v9 = latitude;
  v10 = longitude;
  result.longitude = v10;
  result.latitude = v9;
  return result;
}

- (CLLocationCoordinate2D)originCoordinate
{
  if ([(_MKQuickRouteManager *)self isUsingCurrentLocationForOrigin])
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
    v3 = [(_MKQuickRouteManager *)self originMapItem];
    [v3 _coordinate];
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
  v2 = [(_MKQuickRouteManager *)self originMapItem];
  v3 = [v2 isCurrentLocation];

  return v3;
}

- (void)requestNewETAForPreferredTransportType:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = v7;
  if (self->_fetchAllTransportTypes)
  {
    if (a3 != 1)
    {
      [v7 addObject:&unk_1F1611578];
      if (a3 == 4)
      {
        [v8 addObject:&unk_1F16115C0];
LABEL_14:
        v9 = &unk_1F16115A8;
        goto LABEL_16;
      }
    }

    v10 = [(_MKQuickRouteManager *)self delegate];
    v11 = [v10 quickRouteShouldIncludeTransitWhenNotPreferredTransportType];

    if (v11)
    {
      [v8 addObject:&unk_1F1611590];
    }

    if (a3 == 2)
    {
      goto LABEL_14;
    }

    [v8 addObject:&unk_1F16115C0];
    if (a3 != 8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (a3 == 4)
    {
      goto LABEL_9;
    }

    if (a3 == 2)
    {
      v9 = &unk_1F1611578;
      goto LABEL_16;
    }

    if (a3 == 1 && ![(_MKQuickRouteManager *)self isOnlyDriving])
    {
LABEL_9:
      v9 = &unk_1F16115C0;
LABEL_16:
      [v8 addObject:v9];
    }
  }

  etaFetcher = self->_etaFetcher;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74___MKQuickRouteManager_requestNewETAForPreferredTransportType_completion___block_invoke;
  v14[3] = &unk_1E76C9C60;
  v15 = v6;
  v16 = a3;
  v14[4] = self;
  v13 = v6;
  [(_MKRouteETAFetcher *)etaFetcher requestNewETAForTransportType:a3 additionalTransportTypes:v8 completion:v14];
}

- (void)updateETA
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __33___MKQuickRouteManager_updateETA__block_invoke;
  v2[3] = &unk_1E76C9C38;
  v2[4] = self;
  [(_MKQuickRouteManager *)self _performWithTransportType:v2];
}

- (id)routeETAForTransportType:(unint64_t)a3
{
  v4 = [(_MKRouteETAFetcher *)self->_etaFetcher etaResults];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

- (void)_resetState
{
  lastETA = self->_lastETA;
  self->_lastETA = 0;

  self->_lastPreferredDirectionsType = 0;
  etaFetcher = self->_etaFetcher;

  [(_MKRouteETAFetcher *)etaFetcher _resetState];
}

- (void)setOriginMapItem:(id)a3
{
  v5 = a3;
  v4 = [(_MKRouteETAFetcher *)self->_etaFetcher originMapItem];

  if (v4 != v5)
  {
    [(_MKQuickRouteManager *)self willChangeValueForKey:@"usingCurrentLocationForOrigin"];
    [(_MKRouteETAFetcher *)self->_etaFetcher setOriginMapItem:v5];
    [(_MKQuickRouteManager *)self _resetState];
    [(_MKQuickRouteManager *)self didChangeValueForKey:@"usingCurrentLocationForOrigin"];
  }
}

- (void)setView:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_view);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_view, obj);
    v5 = obj;
    self->_viewHasChangedSinceLastUpdate = 1;
  }
}

- (void)setAllowsDistantETA:(BOOL)a3
{
  if (self->_allowsDistantETA != a3)
  {
    self->_allowsDistantETA = a3;
    [(_MKQuickRouteManager *)self _resetState];
  }
}

- (void)setFetchAllTransportTypes:(BOOL)a3
{
  if (self->_fetchAllTransportTypes != a3)
  {
    self->_fetchAllTransportTypes = a3;
    [(_MKQuickRouteManager *)self _resetState];
  }
}

- (void)setMapItem:(id)a3
{
  v8 = a3;
  v4 = [(_MKRouteETAFetcher *)self->_etaFetcher mapItem];

  v5 = v8;
  if (v4 != v8)
  {
    [(_MKRouteETAFetcher *)self->_etaFetcher setMapItem:v8];
    if (v8)
    {
      [v8 _coordinate];
      self->_coordinate.latitude = v6;
      self->_coordinate.longitude = v7;
    }

    else
    {
      self->_coordinate = MKCoordinateInvalid;
    }

    [(_MKQuickRouteManager *)self _resetState];
    v5 = v8;
  }
}

- (BOOL)_transportTypeShouldBeSmart
{
  v2 = [(_MKQuickRouteManager *)self transportTypeFinder];
  v3 = v2 == 0;

  return v3;
}

- (void)_performWithTransportType:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v16 = v4;
    v5 = [(_MKQuickRouteManager *)self transportTypeFinder];

    if (v5)
    {
      v6 = [(_MKQuickRouteManager *)self transportTypeFinder];
      [(_MKQuickRouteManager *)self originCoordinate];
      v8 = v7;
      v10 = v9;
      [(_MKQuickRouteManager *)self destinationCoordinate];
      [v6 findDirectionsTypeForOriginCoordinate:v16 destinationCoordinate:v8 handler:{v10, v11, v12}];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v14 = objc_opt_respondsToSelector();

      if (v14)
      {
        v15 = objc_loadWeakRetained(&self->_delegate);
        v16[2](v16, [v15 preferredDirectionsTypeForQuickRoute]);
      }

      else
      {
        v16[2](v16, 1);
      }
    }

    v4 = v16;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(_MKQuickRouteManager *)self mapItem];
  v6 = [v5 name];
  v7 = [v3 stringWithFormat:@"<%@ %p: name=%@>", v4, self, v6];

  return v7;
}

- (double)_maxDistanceToRequestETA
{
  if (self->_allowsDistantETA)
  {
    return 0.0;
  }

  v4 = objc_opt_class();

  [v4 _maxDistanceToRequestLikelyETA];
  return result;
}

- (_MKQuickRouteManager)init
{
  v8.receiver = self;
  v8.super_class = _MKQuickRouteManager;
  v2 = [(_MKQuickRouteManager *)&v8 init];
  if (v2)
  {
    GEOConfigGetDouble();
    *(v2 + 5) = v3;
    GEOConfigGetDouble();
    *(v2 + 6) = v4;
    *(v2 + 88) = MKCoordinateInvalid;
    v5 = objc_alloc_init(_MKRouteETAFetcher);
    v6 = *(v2 + 1);
    *(v2 + 1) = v5;
  }

  return v2;
}

+ (unint64_t)directionsTypeForMapItem:(id)a3 delegate:(id)a4 mapType:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(a1);
  [v10 setMapItem:v9];

  [v10 setDelegate:v8];
  v11 = [v10 directionsTypeForMapType:a5];

  return v11;
}

+ (unint64_t)counterpartForTransportType:(unint64_t)a3
{
  if ((a3 - 1) > 7)
  {
    return 1;
  }

  else
  {
    return qword_1A30F7840[(a3 - 1)];
  }
}

+ (BOOL)isLikelyToReturnETAForLocation:(id)a3
{
  v4 = a3;
  v5 = +[MKLocationManager sharedLocationManager];
  v6 = [v5 currentLocation];

  if (v6)
  {
    [a1 _maxDistanceToRequestLikelyETA];
    v8 = v7;
    [v6 coordinate];
    [v4 _coordinate];
    GEOCalculateDistance();
    v10 = v9 < v8 && v9 > 1.0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end