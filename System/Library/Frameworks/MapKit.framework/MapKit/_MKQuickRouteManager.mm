@interface _MKQuickRouteManager
+ (BOOL)isLikelyToReturnETAForLocation:(id)location;
+ (unint64_t)counterpartForTransportType:(unint64_t)type;
+ (unint64_t)directionsTypeForMapItem:(id)item delegate:(id)delegate mapType:(unint64_t)type;
- (BOOL)_transportTypeShouldBeSmart;
- (BOOL)haveETAsForPreferredTransportType:(unint64_t)type;
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
- (id)bestETAForPreferredDirectionsType:(unint64_t)type;
- (id)description;
- (id)routeETAForTransportType:(unint64_t)type;
- (unint64_t)directionsTypeForMapType:(unint64_t)type;
- (unint64_t)directionsTypeForOriginCoordinate:(CLLocationCoordinate2D)coordinate destinationCoordinate:(CLLocationCoordinate2D)destinationCoordinate preferredDirectionsType:(unint64_t)type;
- (unint64_t)guessTransportTypeForDistance:(double)distance preferredDirectionsType:(unint64_t)type;
- (void)_performWithTransportType:(id)type;
- (void)_resetState;
- (void)requestNewETAForPreferredTransportType:(unint64_t)type completion:(id)completion;
- (void)setAllowsDistantETA:(BOOL)a;
- (void)setFetchAllTransportTypes:(BOOL)types;
- (void)setMapItem:(id)item;
- (void)setOriginMapItem:(id)item;
- (void)setView:(id)view;
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
  delegate = [(_MKQuickRouteManager *)self delegate];
  quickRouteShouldOnlyUseAutomobile = [delegate quickRouteShouldOnlyUseAutomobile];

  return quickRouteShouldOnlyUseAutomobile;
}

- (BOOL)haveETAsForPreferredTransportType:(unint64_t)type
{
  etaResults = [(_MKRouteETAFetcher *)self->_etaFetcher etaResults];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  v7 = [etaResults objectForKey:v6];

  if (!v7)
  {
    return 0;
  }

  v8 = [objc_opt_class() counterpartForTransportType:type];
  etaResults2 = [(_MKRouteETAFetcher *)self->_etaFetcher etaResults];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
  v11 = [etaResults2 objectForKey:v10];
  v12 = v11 != 0;

  return v12;
}

- (unint64_t)guessTransportTypeForDistance:(double)distance preferredDirectionsType:(unint64_t)type
{
  closeWalkTravelTime = self->_closeWalkTravelTime;
  maxWalkingDistance = self->_maxWalkingDistance;
  if ([(_MKQuickRouteManager *)self isOnlyDriving])
  {
    return 1;
  }

  v9 = closeWalkTravelTime * 1.25;
  if (type == 4)
  {
    if (v9 <= distance)
    {
      return 4;
    }

    return 2;
  }

  if (type != 2)
  {
    if (type != 1)
    {
      return type;
    }

    if (v9 <= distance)
    {
      return 1;
    }

    return 2;
  }

  if (maxWalkingDistance < distance)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (unint64_t)directionsTypeForOriginCoordinate:(CLLocationCoordinate2D)coordinate destinationCoordinate:(CLLocationCoordinate2D)destinationCoordinate preferredDirectionsType:(unint64_t)type
{
  if (fabs(coordinate.longitude) > 180.0 || fabs(coordinate.latitude) > 90.0 || fabs(destinationCoordinate.longitude) > 180.0 || fabs(destinationCoordinate.latitude) > 90.0)
  {
    return type;
  }

  GEOCalculateDistance();

  return [(_MKQuickRouteManager *)self guessTransportTypeForDistance:type preferredDirectionsType:?];
}

- (unint64_t)directionsTypeForMapType:(unint64_t)type
{
  delegate = [(_MKQuickRouteManager *)self delegate];
  preferredDirectionsTypeForQuickRoute = [delegate preferredDirectionsTypeForQuickRoute];

  if (type == 104)
  {
    return 4;
  }

  [(_MKQuickRouteManager *)self originCoordinate];
  v9 = v8;
  v11 = v10;
  [(_MKQuickRouteManager *)self destinationCoordinate];

  return [(_MKQuickRouteManager *)self directionsTypeForOriginCoordinate:preferredDirectionsTypeForQuickRoute destinationCoordinate:v9 preferredDirectionsType:v11, v12, v13];
}

- (id)bestETAForPreferredDirectionsType:(unint64_t)type
{
  etaResults = [(_MKRouteETAFetcher *)self->_etaFetcher etaResults];
  v6 = [etaResults count];

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
  if (type > 3)
  {
    if (type != 4)
    {
      v11 = 0;
      if (type != 8)
      {
        goto LABEL_27;
      }

      etaResults2 = [(_MKRouteETAFetcher *)self->_etaFetcher etaResults];
      v8 = etaResults2;
      v9 = &unk_1F1611620;
      goto LABEL_4;
    }

    etaResults3 = [(_MKRouteETAFetcher *)self->_etaFetcher etaResults];
    v8 = [etaResults3 objectForKeyedSubscript:&unk_1F1611608];

    if (![(_MKQuickRouteManager *)self _transportTypeShouldBeSmart])
    {
      goto LABEL_26;
    }

    etaResults4 = [(_MKRouteETAFetcher *)self->_etaFetcher etaResults];
    v11 = [etaResults4 objectForKeyedSubscript:&unk_1F16115F0];

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

  if (type == 1)
  {
    etaResults5 = [(_MKRouteETAFetcher *)self->_etaFetcher etaResults];
    v8 = [etaResults5 objectForKeyedSubscript:&unk_1F16115D8];

    if (![(_MKQuickRouteManager *)self _transportTypeShouldBeSmart])
    {
      goto LABEL_26;
    }

    etaResults6 = [(_MKRouteETAFetcher *)self->_etaFetcher etaResults];
    v11 = [etaResults6 objectForKeyedSubscript:&unk_1F16115F0];

    if (!v8)
    {
LABEL_33:
      v16 = v11;
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  v11 = 0;
  if (type != 2)
  {
    goto LABEL_27;
  }

  etaResults7 = [(_MKRouteETAFetcher *)self->_etaFetcher etaResults];
  v8 = [etaResults7 objectForKeyedSubscript:&unk_1F16115F0];

  if (![(_MKQuickRouteManager *)self _transportTypeShouldBeSmart])
  {
    goto LABEL_26;
  }

  if (v8)
  {
    [v8 distance];
    if (v13 > self->_maxWalkingDistance)
    {
      etaResults8 = [(_MKRouteETAFetcher *)self->_etaFetcher etaResults];
      v15 = [etaResults8 objectForKeyedSubscript:&unk_1F16115D8];

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
  etaResults2 = [(_MKRouteETAFetcher *)self->_etaFetcher etaResults];
  v8 = etaResults2;
  v9 = &unk_1F16115D8;
LABEL_4:
  v10 = [etaResults2 objectForKeyedSubscript:v9];
  v11 = 0;
LABEL_5:

  v8 = v10;
LABEL_27:

LABEL_28:

  return v8;
}

- (CLLocationCoordinate2D)destinationCoordinate
{
  mapItem = [(_MKQuickRouteManager *)self mapItem];

  if (mapItem)
  {
    mapItem2 = [(_MKQuickRouteManager *)self mapItem];
    [mapItem2 _coordinate];
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
    originMapItem = +[MKLocationManager sharedLocationManager];
    if ([originMapItem hasLocation])
    {
      v4 = +[MKLocationManager sharedLocationManager];
      lastLocation = [v4 lastLocation];
      [lastLocation coordinate];
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
    originMapItem = [(_MKQuickRouteManager *)self originMapItem];
    [originMapItem _coordinate];
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
  originMapItem = [(_MKQuickRouteManager *)self originMapItem];
  isCurrentLocation = [originMapItem isCurrentLocation];

  return isCurrentLocation;
}

- (void)requestNewETAForPreferredTransportType:(unint64_t)type completion:(id)completion
{
  completionCopy = completion;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = v7;
  if (self->_fetchAllTransportTypes)
  {
    if (type != 1)
    {
      [v7 addObject:&unk_1F1611578];
      if (type == 4)
      {
        [v8 addObject:&unk_1F16115C0];
LABEL_14:
        v9 = &unk_1F16115A8;
        goto LABEL_16;
      }
    }

    delegate = [(_MKQuickRouteManager *)self delegate];
    quickRouteShouldIncludeTransitWhenNotPreferredTransportType = [delegate quickRouteShouldIncludeTransitWhenNotPreferredTransportType];

    if (quickRouteShouldIncludeTransitWhenNotPreferredTransportType)
    {
      [v8 addObject:&unk_1F1611590];
    }

    if (type == 2)
    {
      goto LABEL_14;
    }

    [v8 addObject:&unk_1F16115C0];
    if (type != 8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (type == 4)
    {
      goto LABEL_9;
    }

    if (type == 2)
    {
      v9 = &unk_1F1611578;
      goto LABEL_16;
    }

    if (type == 1 && ![(_MKQuickRouteManager *)self isOnlyDriving])
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
  v15 = completionCopy;
  typeCopy = type;
  v14[4] = self;
  v13 = completionCopy;
  [(_MKRouteETAFetcher *)etaFetcher requestNewETAForTransportType:type additionalTransportTypes:v8 completion:v14];
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

- (id)routeETAForTransportType:(unint64_t)type
{
  etaResults = [(_MKRouteETAFetcher *)self->_etaFetcher etaResults];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  v6 = [etaResults objectForKeyedSubscript:v5];

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

- (void)setOriginMapItem:(id)item
{
  itemCopy = item;
  originMapItem = [(_MKRouteETAFetcher *)self->_etaFetcher originMapItem];

  if (originMapItem != itemCopy)
  {
    [(_MKQuickRouteManager *)self willChangeValueForKey:@"usingCurrentLocationForOrigin"];
    [(_MKRouteETAFetcher *)self->_etaFetcher setOriginMapItem:itemCopy];
    [(_MKQuickRouteManager *)self _resetState];
    [(_MKQuickRouteManager *)self didChangeValueForKey:@"usingCurrentLocationForOrigin"];
  }
}

- (void)setView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_view);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_view, obj);
    v5 = obj;
    self->_viewHasChangedSinceLastUpdate = 1;
  }
}

- (void)setAllowsDistantETA:(BOOL)a
{
  if (self->_allowsDistantETA != a)
  {
    self->_allowsDistantETA = a;
    [(_MKQuickRouteManager *)self _resetState];
  }
}

- (void)setFetchAllTransportTypes:(BOOL)types
{
  if (self->_fetchAllTransportTypes != types)
  {
    self->_fetchAllTransportTypes = types;
    [(_MKQuickRouteManager *)self _resetState];
  }
}

- (void)setMapItem:(id)item
{
  itemCopy = item;
  mapItem = [(_MKRouteETAFetcher *)self->_etaFetcher mapItem];

  v5 = itemCopy;
  if (mapItem != itemCopy)
  {
    [(_MKRouteETAFetcher *)self->_etaFetcher setMapItem:itemCopy];
    if (itemCopy)
    {
      [itemCopy _coordinate];
      self->_coordinate.latitude = v6;
      self->_coordinate.longitude = v7;
    }

    else
    {
      self->_coordinate = MKCoordinateInvalid;
    }

    [(_MKQuickRouteManager *)self _resetState];
    v5 = itemCopy;
  }
}

- (BOOL)_transportTypeShouldBeSmart
{
  transportTypeFinder = [(_MKQuickRouteManager *)self transportTypeFinder];
  v3 = transportTypeFinder == 0;

  return v3;
}

- (void)_performWithTransportType:(id)type
{
  typeCopy = type;
  if (typeCopy)
  {
    v16 = typeCopy;
    transportTypeFinder = [(_MKQuickRouteManager *)self transportTypeFinder];

    if (transportTypeFinder)
    {
      transportTypeFinder2 = [(_MKQuickRouteManager *)self transportTypeFinder];
      [(_MKQuickRouteManager *)self originCoordinate];
      v8 = v7;
      v10 = v9;
      [(_MKQuickRouteManager *)self destinationCoordinate];
      [transportTypeFinder2 findDirectionsTypeForOriginCoordinate:v16 destinationCoordinate:v8 handler:{v10, v11, v12}];
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

    typeCopy = v16;
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  mapItem = [(_MKQuickRouteManager *)self mapItem];
  name = [mapItem name];
  v7 = [v3 stringWithFormat:@"<%@ %p: name=%@>", v4, self, name];

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

+ (unint64_t)directionsTypeForMapItem:(id)item delegate:(id)delegate mapType:(unint64_t)type
{
  delegateCopy = delegate;
  itemCopy = item;
  v10 = objc_alloc_init(self);
  [v10 setMapItem:itemCopy];

  [v10 setDelegate:delegateCopy];
  v11 = [v10 directionsTypeForMapType:type];

  return v11;
}

+ (unint64_t)counterpartForTransportType:(unint64_t)type
{
  if ((type - 1) > 7)
  {
    return 1;
  }

  else
  {
    return qword_1A30F7840[(type - 1)];
  }
}

+ (BOOL)isLikelyToReturnETAForLocation:(id)location
{
  locationCopy = location;
  v5 = +[MKLocationManager sharedLocationManager];
  currentLocation = [v5 currentLocation];

  if (currentLocation)
  {
    [self _maxDistanceToRequestLikelyETA];
    v8 = v7;
    [currentLocation coordinate];
    [locationCopy _coordinate];
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