@interface GEOComposedWaypoint
- (AddressBookAddress)addressBookAddress;
- (BOOL)needsAdditionalNavData;
- (BOOL)shouldOfferAlternateChargersAtArrival;
- (CNContact)contact;
- (GEOComposedWaypoint)initWithSearchResult:(id)result;
- (MKMapItem)mkMapItem;
- (NSString)arrivingDisplayName;
- (NSString)parkingDisplayName;
- (_TtC4Maps16MapsFindMyHandle)findMyHandle;
- (id)_addressBookAttributes;
- (id)_maps_waypointImageWithScale:(double)scale;
- (id)_maps_waypointName;
- (id)hawkQueryRepresentation;
- (id)shortDescription;
- (void)clearFindMyData;
- (void)setAddressBookContactName:(id)name;
- (void)setAddressBookContactSpokenName:(id)name;
- (void)setUserValuesName:(id)name;
@end

@implementation GEOComposedWaypoint

- (_TtC4Maps16MapsFindMyHandle)findMyHandle
{
  findMyHandleID = [(GEOComposedWaypoint *)self findMyHandleID];

  if (findMyHandleID)
  {
    v5 = objc_getAssociatedObject(self, a2);
    if (!v5)
    {
      v6 = [_TtC4Maps16MapsFindMyHandle alloc];
      findMyHandleID2 = [(GEOComposedWaypoint *)self findMyHandleID];
      v5 = [(MapsFindMyHandle *)v6 initWithIdentifier:findMyHandleID2];

      objc_setAssociatedObject(self, a2, v5, 1);
    }

    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (AddressBookAddress)addressBookAddress
{
  mapItemStorage = [(GEOComposedWaypoint *)self mapItemStorage];
  clientAttributes = [mapItemStorage clientAttributes];
  addressBookAttributes = [clientAttributes addressBookAttributes];
  contactIdentifier = [addressBookAttributes contactIdentifier];

  mapItemStorage2 = [(GEOComposedWaypoint *)self mapItemStorage];
  clientAttributes2 = [mapItemStorage2 clientAttributes];
  addressBookAttributes2 = [clientAttributes2 addressBookAttributes];
  addressIdentifier = [addressBookAttributes2 addressIdentifier];

  v12 = 0;
  if (contactIdentifier && addressIdentifier)
  {
    v13 = objc_getAssociatedObject(self, a2);
    if (!v13)
    {
      v13 = [[AddressBookAddress alloc] initWithCNContactIdentifier:contactIdentifier addressIdentifier:addressIdentifier];
      objc_setAssociatedObject(self, a2, v13, 1);
    }

    v12 = v13;
  }

  return v12;
}

- (GEOComposedWaypoint)initWithSearchResult:(id)result
{
  resultCopy = result;
  if ([resultCopy hasExplicitlyProvidedComposedWaypoint])
  {
    composedWaypoint = [resultCopy composedWaypoint];
    v6 = [composedWaypoint copy];

    self = v6;
  }

  else if ([resultCopy type] == 3)
  {
    [resultCopy coordinate];
    v8 = v7;
    [resultCopy coordinate];
    composedWaypoint = [[GEOLocation alloc] initWithGEOCoordinate:{v8, v9}];
    mapItem = [resultCopy mapItem];

    if (mapItem)
    {
      mapItem2 = [resultCopy mapItem];
      _geoMapItemStorageForPersistence = [mapItem2 _geoMapItemStorageForPersistence];
      self = [(GEOComposedWaypoint *)self initWithMapItem:_geoMapItemStorageForPersistence];
    }

    else
    {
      self = [(GEOComposedWaypoint *)self initWithLocation:composedWaypoint isCurrentLocation:0];
    }

    [(GEOComposedWaypoint *)self setType:1];
    [(GEOComposedWaypoint *)self setLocation:composedWaypoint];
    latLng = [composedWaypoint latLng];
    [(GEOComposedWaypoint *)self setLatLng:latLng];

    v17 = objc_alloc_init(GEOWaypointTyped);
    [v17 setWaypointType:4];
    v18 = objc_alloc_init(GEOWaypointLocation);
    [v17 setWaypointLocation:v18];

    waypointLocation = [v17 waypointLocation];
    [waypointLocation setLocation:composedWaypoint];

    [(GEOComposedWaypoint *)self setWaypoint:v17];
  }

  else
  {
    mapItem3 = [resultCopy mapItem];

    if (mapItem3)
    {
      mapItem4 = [resultCopy mapItem];
      _geoMapItemStorageForPersistence2 = [mapItem4 _geoMapItemStorageForPersistence];
    }

    else
    {
      place = [resultCopy place];

      if (!place)
      {
        goto LABEL_14;
      }

      mapItem4 = [resultCopy place];
      _geoMapItemStorageForPersistence2 = [GEOMapItemStorage mapItemStorageForPlace:mapItem4];
    }

    composedWaypoint = _geoMapItemStorageForPersistence2;

    self = [(GEOComposedWaypoint *)self initWithMapItem:composedWaypoint];
  }

LABEL_14:
  if ([resultCopy type] == 4)
  {
    [(GEOComposedWaypoint *)self setIsCurrentLocation:1];
    [(GEOComposedWaypoint *)self recomputeGeoWaypointTyped];
  }

  return self;
}

- (BOOL)shouldOfferAlternateChargersAtArrival
{
  chargingInfo = [(GEOComposedWaypoint *)self chargingInfo];
  if (chargingInfo)
  {
    v4 = 1;
  }

  else
  {
    geoMapItem = [(GEOComposedWaypoint *)self geoMapItem];
    _poiCategory = [geoMapItem _poiCategory];
    v4 = _poiCategory == GEOPOICategoryEVCharger;
  }

  return v4;
}

- (id)hawkQueryRepresentation
{
  navDisplayAddress = [(GEOComposedWaypoint *)self navDisplayAddress];
  v4 = navDisplayAddress;
  if (navDisplayAddress)
  {
    v5 = navDisplayAddress;
  }

  else
  {
    bestLatLng = [(GEOComposedWaypoint *)self bestLatLng];
    v7 = bestLatLng;
    if (bestLatLng)
    {
      [bestLatLng coordinate];
      v9 = v8;
      v10 = [NSNumber numberWithDouble:?];
      v11 = [NSNumber numberWithDouble:v9];
      v12 = [NSString stringWithFormat:@"%@, %@", v10, v11];
    }

    v5 = @"<invalid>";
  }

  return v5;
}

- (id)shortDescription
{
  v16 = objc_opt_class();
  muid = [(GEOComposedWaypoint *)self muid];
  timezone = [(GEOComposedWaypoint *)self timezone];
  location = [(GEOComposedWaypoint *)self location];
  name = [(GEOComposedWaypoint *)self name];
  navDisplayName = [(GEOComposedWaypoint *)self navDisplayName];
  navDisplayAddress = [(GEOComposedWaypoint *)self navDisplayAddress];
  directionsListAddress = [(GEOComposedWaypoint *)self directionsListAddress];
  waypointCategory = [(GEOComposedWaypoint *)self waypointCategory];
  if (waypointCategory >= 0xE)
  {
    v10 = [NSString stringWithFormat:@"(unknown: %i)", waypointCategory];
  }

  else
  {
    v10 = *(&off_101630940 + waypointCategory);
  }

  type = [(GEOComposedWaypoint *)self type];
  if (type >= 4)
  {
    v12 = [NSString stringWithFormat:@"(unknown: %i)", type];
  }

  else
  {
    v12 = *(&off_1016309B0 + type);
  }

  v13 = [NSString stringWithFormat:@"<%@:%p, muid: %llu, timezone: %@, location: %@, name: %@, navDisplayName: %@, navDisplayAddress: %@, directionsListAddress: %@, waypointCategory: %@, waypointType: %@, isCurrentLocation: %d, isServerProvidedWaypoint: %d>", v16, self, muid, timezone, location, name, navDisplayName, navDisplayAddress, directionsListAddress, v10, v12, [(GEOComposedWaypoint *)self isCurrentLocation], [(GEOComposedWaypoint *)self isServerProvidedWaypoint]];

  return v13;
}

- (id)_maps_waypointImageWithScale:(double)scale
{
  findMyHandleID = [(GEOComposedWaypoint *)self findMyHandleID];

  if (findMyHandleID)
  {
    findMyHandle = [(GEOComposedWaypoint *)self findMyHandle];
    v7 = [findMyHandle thumbnailIconWithScale:scale size:{44.0, 44.0}];
    goto LABEL_12;
  }

  addressBookAddress = [(GEOComposedWaypoint *)self addressBookAddress];

  if (addressBookAddress)
  {
    findMyHandle = [(GEOComposedWaypoint *)self addressBookAddress];
    v7 = [findMyHandle thumbnailIconWithScale:3 size:scale];
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    styleAttributes2 = +[GEOFeatureStyleAttributes customSavedRouteStyleAttributes];
LABEL_11:
    findMyHandle = styleAttributes2;
    v7 = [MKIconManager imageForStyle:styleAttributes2 size:3 forScale:0 format:scale];
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    styleAttributes2 = +[GEOFeatureStyleAttributes evChargerStyleAttributes];
    goto LABEL_11;
  }

  styleAttributes = [(GEOComposedWaypoint *)self styleAttributes];

  if (styleAttributes)
  {
    styleAttributes2 = [(GEOComposedWaypoint *)self styleAttributes];
    goto LABEL_11;
  }

  findMyHandle = [(GEOComposedWaypoint *)self mkMapItem];
  v7 = [MKMapItem _maps_markerImageForMapItem:findMyHandle scale:3 size:1 useMarkerFallback:scale];
LABEL_12:
  v11 = v7;

  return v11;
}

- (id)_maps_waypointName
{
  findMyHandleID = [(GEOComposedWaypoint *)self findMyHandleID];

  if (findMyHandleID)
  {
    findMyHandle = [(GEOComposedWaypoint *)self findMyHandle];
    displayName = [findMyHandle displayName];
LABEL_7:
    v8 = displayName;
    goto LABEL_8;
  }

  addressBookAddress = [(GEOComposedWaypoint *)self addressBookAddress];

  if (addressBookAddress)
  {
    findMyHandle = [(GEOComposedWaypoint *)self addressBookAddress];
    displayName = [findMyHandle waypointCompositeName];
    goto LABEL_7;
  }

  name = [(GEOComposedWaypoint *)self name];
  if (name)
  {
    displayName = name;
    findMyHandle = displayName;
    goto LABEL_7;
  }

  v8 = MKLocalizedStringForUnknownLocation();
  findMyHandle = 0;
LABEL_8:

  return v8;
}

- (BOOL)needsAdditionalNavData
{
  geoMapItem = [(GEOComposedWaypoint *)self geoMapItem];
  _place = [geoMapItem _place];

  address = [_place address];
  structuredAddress = [address structuredAddress];

  if ([structuredAddress hasSubThoroughfare])
  {
    hasFullThoroughfare = 1;
  }

  else
  {
    hasFullThoroughfare = [structuredAddress hasFullThoroughfare];
  }

  geoMapItem2 = [(GEOComposedWaypoint *)self geoMapItem];
  if ([geoMapItem2 _hasMUID])
  {
    v9 = [_place hasSpokenName] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  geoMapItem3 = [(GEOComposedWaypoint *)self geoMapItem];
  [geoMapItem3 coordinate];
  v12 = v11;
  v14 = v13;

  if (hasFullThoroughfare)
  {
    v15 = [_place hasSpokenAddress] ^ 1;
    entryPoints = [_place entryPoints];
    v17 = [entryPoints count];

    if (v17)
    {
      v18 = v15;
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = v9 | (fabs(v14) > 180.0) | (v12 < -90.0 || v12 > 90.0) | v18;

  return v19 & 1;
}

- (id)_addressBookAttributes
{
  mapItemStorage = [(GEOComposedWaypoint *)self mapItemStorage];
  v3 = mapItemStorage;
  if (mapItemStorage)
  {
    clientAttributes = [mapItemStorage clientAttributes];
    v5 = clientAttributes;
    if (clientAttributes)
    {
      v6 = clientAttributes;
    }

    else
    {
      v6 = objc_opt_new();
    }

    v8 = v6;

    addressBookAttributes = [v8 addressBookAttributes];
    v10 = addressBookAttributes;
    if (addressBookAttributes)
    {
      v11 = addressBookAttributes;
    }

    else
    {
      v11 = objc_opt_new();
    }

    v7 = v11;

    [v8 setAddressBookAttributes:v7];
    [v3 setClientAttributes:v8];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setAddressBookContactSpokenName:(id)name
{
  v5 = [name copy];
  _addressBookAttributes = [(GEOComposedWaypoint *)self _addressBookAttributes];
  [_addressBookAttributes setSpokenName:v5];
}

- (void)setAddressBookContactName:(id)name
{
  v5 = [name copy];
  _addressBookAttributes = [(GEOComposedWaypoint *)self _addressBookAttributes];
  [_addressBookAttributes setName:v5];
}

- (void)setUserValuesName:(id)name
{
  nameCopy = name;
  mapItemStorage = [(GEOComposedWaypoint *)self mapItemStorage];
  v5 = mapItemStorage;
  if (mapItemStorage)
  {
    userValues = [mapItemStorage userValues];
    v7 = userValues;
    if (userValues)
    {
      v8 = userValues;
    }

    else
    {
      v8 = objc_opt_new();
    }

    v9 = v8;

    v10 = [nameCopy copy];
    [v9 setName:v10];

    [v5 setUserValues:v9];
  }
}

- (void)clearFindMyData
{
  [(GEOComposedWaypoint *)self setFindMyHandleID:0];
  [(GEOComposedWaypoint *)self setStyleAttributes:0];
  mapItemStorage = [(GEOComposedWaypoint *)self mapItemStorage];
  userValues = [mapItemStorage userValues];
  [userValues setName:0];

  mapItemStorage2 = [(GEOComposedWaypoint *)self mapItemStorage];
  clientAttributes = [mapItemStorage2 clientAttributes];
  [clientAttributes setAddressBookAttributes:0];

  [(GEOComposedWaypoint *)self recomputeGeoWaypointTyped];

  objc_setAssociatedObject(self, "findMyHandle", 0, 1);
}

- (CNContact)contact
{
  addressBookAddress = [(GEOComposedWaypoint *)self addressBookAddress];
  contact = [addressBookAddress contact];

  if (!contact)
  {
    findMyHandle = [(GEOComposedWaypoint *)self findMyHandle];
    contact = [findMyHandle contact];
  }

  return contact;
}

- (MKMapItem)mkMapItem
{
  v4 = objc_getAssociatedObject(self, a2);
  if (!v4)
  {
    isCurrentLocation = [(GEOComposedWaypoint *)self isCurrentLocation];
    v6 = [MKMapItem alloc];
    geoMapItem = [(GEOComposedWaypoint *)self geoMapItem];
    if (isCurrentLocation)
    {
      v8 = [v6 initWithGeoMapItemAsCurrentLocation:geoMapItem];
    }

    else
    {
      v8 = [v6 initWithGeoMapItem:geoMapItem isPlaceHolderPlace:0];
    }

    v4 = v8;

    objc_setAssociatedObject(self, a2, v4, 1);
  }

  v9 = v4;

  return v9;
}

- (NSString)parkingDisplayName
{
  arrivingDisplayName = [(GEOComposedWaypoint *)self arrivingDisplayName];
  v4 = +[MNNavigationService sharedService];
  lastLocation = [v4 lastLocation];

  if (lastLocation)
  {
    [lastLocation coordinate];
    [(GEOComposedWaypoint *)self coordinate];
    GEOCalculateDistance();
    v6 = [NSString _navigation_localizedStringForDistance:1 context:0 extraDetail:?];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"Parking Display Address [Nav Tray Header]" value:@"localized string not found" table:0];
    v9 = [NSString stringWithFormat:v8, v6, arrivingDisplayName];
  }

  else
  {
    v9 = arrivingDisplayName;
  }

  return v9;
}

- (NSString)arrivingDisplayName
{
  navDisplayName = [(GEOComposedWaypoint *)self navDisplayName];
  findMyHandleID = [(GEOComposedWaypoint *)self findMyHandleID];

  if (findMyHandleID)
  {
    findMyHandle = [(GEOComposedWaypoint *)self findMyHandle];
    displayName = [findMyHandle displayName];
LABEL_5:
    v8 = displayName;
    if (displayName)
    {
      v9 = displayName;
    }

    else
    {
      v9 = navDisplayName;
    }

    v10 = v9;

    navDisplayName = v10;
    goto LABEL_9;
  }

  addressBookAddress = [(GEOComposedWaypoint *)self addressBookAddress];

  if (addressBookAddress)
  {
    findMyHandle = [(GEOComposedWaypoint *)self addressBookAddress];
    displayName = [findMyHandle waypointCompositeName];
    goto LABEL_5;
  }

LABEL_9:

  return navDisplayName;
}

@end