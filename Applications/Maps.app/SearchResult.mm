@interface SearchResult
+ (id)carSearchResultFromDestination:(id)destination;
+ (id)currentLocationSearchResult;
+ (id)customSearchResultWithCoordinate:(CLLocationCoordinate2D)coordinate floorOrdinal:(int)ordinal;
+ (id)searchResultFromFavoriteItem:(id)item;
+ (void)newStartWaypointSearchResult:(id *)result endWaypointSearchResult:(id *)searchResult forRouteHistoryEntry:(id)entry;
- (BOOL)_hasStructuredAddress;
- (BOOL)_hasUID;
- (BOOL)behavesAsAtom;
- (BOOL)isEqualToSearchResult:(id)result forPurpose:(int64_t)purpose;
- (BOOL)isFindMyPerson;
- (BOOL)isFrequentLocation;
- (BOOL)isHomeOrWork;
- (BOOL)isPartiallyClientized;
- (BOOL)needsReverseGeocodeCheck;
- (BOOL)readFrom:(id)from;
- (BOOL)representsIntermediateStop;
- (BOOL)updateFromBookmarkRepresentation:(id)representation;
- (BOOL)updateFromSyncData:(id)data;
- (BOOL)usePlaceSummaryInSearch;
- (CLLocationCoordinate2D)_offsetCoordinate:(double)coordinate;
- (CLLocationCoordinate2D)coordinate;
- (CLLocationCoordinate2D)labelCoordinate;
- (CNContact)contactForSharingToMessages;
- (CNContact)unknownContact;
- (Flyover)_flyover;
- (GEOComposedWaypoint)composedWaypoint;
- (MKMapItem)mapItem;
- (MKMapItemIdentifier)identifier;
- (MSPBookmarkStorage)bookmarkStorage;
- (NSString)_maps_diffableDataSourceIdentifier;
- (NSString)autocompletePersonTitle;
- (NSString)bookmarkTitle;
- (NSString)debugDescription;
- (NSString)defaultName;
- (NSString)description;
- (NSString)findMyHandleName;
- (NSString)infoCardTitle;
- (NSString)locality;
- (NSString)locationTitle;
- (NSString)name;
- (NSString)routableAddress;
- (NSString)singleLineAddress;
- (NSString)subtitle;
- (NSString)title;
- (NSUUID)impressionElementIdentifier;
- (PersonalizedItemKey)personalizedItemKey;
- (SearchResult)init;
- (SearchResult)initWithBookmarkRepresentation:(id)representation;
- (SearchResult)initWithBookmarkStorage:(id)storage;
- (SearchResult)initWithComposedWaypoint:(id)waypoint preserveLocationInfo:(BOOL)info;
- (SearchResult)initWithCuratedGuide:(id)guide;
- (SearchResult)initWithData:(id)data;
- (SearchResult)initWithDroppedPin:(id)pin;
- (SearchResult)initWithGEOMapItem:(id)item;
- (SearchResult)initWithGEOPlace:(id)place;
- (SearchResult)initWithMapItem:(id)item;
- (SearchResult)initWithMapItem:(id)item searchResultType:(unsigned int)type addressBookAddress:(id)address retainedSearchMetadata:(id)metadata resultIndex:(int)index;
- (SearchResult)initWithMapItem:(id)item syncIdentifier:(id)identifier;
- (SearchResult)initWithParkedCar:(id)car;
- (SearchResult)initWithRelatedSection:(id)section;
- (SearchResult)initWithSearchResult:(id)result;
- (SearchResult)initWithSearchResult:(id)result address:(id)address;
- (SearchResult)initWithSearchResultStrippingName:(id)name address:(id)address;
- (SearchResult)initWithSearchSection:(id)section;
- (SearchResult)initWithType:(unsigned int)type;
- (id)_formattedAddress;
- (id)_formattedAddressMultiline;
- (id)_mapsURLfromMapView:(id)view includingSensitiveFields:(BOOL)fields;
- (id)_maps_externalDeviceDictionaryRepresentation;
- (id)bookmarkRepresentation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)syncData;
- (int)localSearchProviderID;
- (int64_t)source;
- (unint64_t)businessID;
- (unint64_t)customizedLocationType;
- (unsigned)appearance;
- (void)_commonInit;
- (void)_syncGEOPlaceWithCoordinate;
- (void)_updateTypeAndOriginalTypeIfNeeded;
- (void)clearAddressCache;
- (void)clearLocationInformation;
- (void)setAddress:(id)address;
- (void)setAutocompletePerson:(id)person;
- (void)setBookmarkTitle:(id)title;
- (void)setCoordinate:(CLLocationCoordinate2D)coordinate;
- (void)setCoordinate:(CLLocationCoordinate2D)coordinate preserveLocationInfo:(BOOL)info;
- (void)setGeoMapServiceTraitSource:(int)source;
- (void)setLocationOfInterestWithGeoMapItem:(id)item;
- (void)setMapItem:(id)item;
- (void)setOriginalType:(unsigned int)type;
- (void)setRepresentsIntermediateStop:(BOOL)stop;
- (void)setRouteData:(id)data;
- (void)setSourceApplication:(id)application;
- (void)setSourceURL:(id)l;
- (void)setType:(unsigned int)type;
- (void)tryUpdatingCurrentLocationSearchResultWithCompletion:(id)completion;
- (void)updateModel:(id)model;
- (void)updateWithGEOMapItem:(id)item;
- (void)updateWithReverseGeocodedMapItem:(id)item;
- (void)writeTo:(id)to;
@end

@implementation SearchResult

- (void)_commonInit
{
  [(SearchResultRepr *)self setZoomLevel:0xFFFFFFFFLL];
  v3 = MKCoordinateInvalid[0];
  v4 = MKCoordinateInvalid[1];
  [(SearchResult *)self setCoordinate:MKCoordinateInvalid[0], v4];
  [(SearchResult *)self setLabelCoordinate:v3, v4];
  [(SearchResultRepr *)self setHasIncompleteMetadata:0];
  [(SearchResultRepr *)self setTimestamp:CFAbsoluteTimeGetCurrent()];
  v5 = objc_alloc_init(GEOPlace);
  [(SearchResultRepr *)self setPlace:v5];
  [(SearchResult *)self _updateTypeAndOriginalTypeIfNeeded];
}

- (void)clearLocationInformation
{
  [(SearchResult *)self setReverseGeocoded:0];
  place = [(SearchResultRepr *)self place];
  [place setAddress:0];

  [(SearchResult *)self clearAddressCache];
  if ([(SearchResultRepr *)self type]== 3)
  {
    mapItem = self->_mapItem;
    self->_mapItem = 0;
  }
}

- (void)clearAddressCache
{
  formattedAddress = self->_formattedAddress;
  self->_formattedAddress = 0;

  formattedAddressMultiline = self->_formattedAddressMultiline;
  self->_formattedAddressMultiline = 0;
}

- (void)_syncGEOPlaceWithCoordinate
{
  [(SearchResult *)self coordinate];
  v4 = v3;
  v6 = v5;
  v9 = [[GEOMapRegion alloc] initWithLatitude:v3 longitude:v5];
  place = [(SearchResultRepr *)self place];
  [place setMapRegion:v9];

  place2 = [(SearchResultRepr *)self place];
  [place2 setCenterCoordinate:{v4, v6}];
}

- (CLLocationCoordinate2D)coordinate
{
  latitude = self->_coordinate.latitude;
  longitude = self->_coordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (void)_updateTypeAndOriginalTypeIfNeeded
{
  [(SearchResult *)self setType:[(SearchResultRepr *)self type]];
  originalType = [(SearchResultRepr *)self originalType];

  [(SearchResult *)self setOriginalType:originalType];
}

- (MKMapItem)mapItem
{
  mapItem = self->_mapItem;
  if (!mapItem)
  {
    v4 = [MKMapItem alloc];
    place = [(SearchResultRepr *)self place];
    v6 = [v4 initWithPlace:place];
    v7 = self->_mapItem;
    self->_mapItem = v6;

    mapItem = self->_mapItem;
  }

  return mapItem;
}

- (NSString)defaultName
{
  originalType = [(SearchResultRepr *)self originalType];
  if (originalType == 3)
  {
    v5 = +[MKAnnotationView droppedPinTitle];
  }

  else if (originalType == 4)
  {
    v3 = +[MKLocationManager sharedLocationManager];
    if ([v3 isLocationServicesApproved] && (objc_msgSend(v3, "isAuthorizedForPreciseLocation") & 1) == 0)
    {
      v4 = MKLocalizedStringForApproximateLocation();
    }

    else
    {
      v4 = MKLocalizedStringForCurrentLocation();
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (MSPBookmarkStorage)bookmarkStorage
{
  bookmarkStorage = self->_bookmarkStorage;
  if (bookmarkStorage)
  {
    v3 = bookmarkStorage;
    goto LABEL_13;
  }

  v3 = objc_alloc_init(MSPBookmarkStorage);
  [(MSPBookmarkStorage *)v3 setType:1];
  v5 = objc_alloc_init(MSPPlaceBookmark);
  [(MSPBookmarkStorage *)v3 setPlaceBookmark:v5];

  mapItem = [(SearchResult *)self mapItem];
  _geoMapItemStorageForPersistence = [mapItem _geoMapItemStorageForPersistence];

  v8 = objc_alloc_init(GEOMapItemStorage);
  placeBookmark = [(MSPBookmarkStorage *)v3 placeBookmark];
  [placeBookmark setMapItemStorage:v8];

  placeData = [_geoMapItemStorageForPersistence placeData];

  if (placeData)
  {
    placeData2 = [_geoMapItemStorageForPersistence placeData];
    placeBookmark2 = [(MSPBookmarkStorage *)v3 placeBookmark];
    mapItemStorage = [placeBookmark2 mapItemStorage];
    [mapItemStorage setPlaceData:placeData2];
LABEL_7:

    goto LABEL_8;
  }

  place = [_geoMapItemStorageForPersistence place];

  if (place)
  {
    placeData2 = [_geoMapItemStorageForPersistence place];
    placeBookmark2 = [(MSPBookmarkStorage *)v3 placeBookmark];
    mapItemStorage = [placeBookmark2 mapItemStorage];
    [mapItemStorage setPlace:placeData2];
    goto LABEL_7;
  }

LABEL_8:
  +[NSDate timeIntervalSinceReferenceDate];
  [(MSPBookmarkStorage *)v3 setTimestamp:?];
  v15 = +[NSUUID UUID];
  uUIDString = [v15 UUIDString];
  [(MSPBookmarkStorage *)v3 setIdentifier:uUIDString];

  if ([(SearchResultRepr *)self originalType]== 3)
  {
    placeBookmark3 = [(MSPBookmarkStorage *)v3 placeBookmark];
    [placeBookmark3 setOrigin:1];

    [(SearchResult *)self coordinate];
    v20 = [[GEOLatLng alloc] initWithLatitude:v18 longitude:v19];
    placeBookmark4 = [(MSPBookmarkStorage *)v3 placeBookmark];
    [placeBookmark4 setDroppedPinCoordinate:v20];

    if ([(SearchResultRepr *)self hasFloorOrdinal])
    {
      floorOrdinal = [(SearchResultRepr *)self floorOrdinal];
      placeBookmark5 = [(MSPBookmarkStorage *)v3 placeBookmark];
      [placeBookmark5 setDroppedPinFloorOrdinal:floorOrdinal];
    }
  }

  title = [(SearchResult *)self title];
  placeBookmark6 = [(MSPBookmarkStorage *)v3 placeBookmark];
  [placeBookmark6 setTitle:title];

  objc_storeStrong(&self->_bookmarkStorage, v3);
LABEL_13:

  return v3;
}

- (SearchResult)initWithBookmarkStorage:(id)storage
{
  storageCopy = storage;
  if ([storageCopy type] == 1)
  {
    v6 = [(SearchResult *)self init];
    if (v6)
    {
      placeBookmark = [storageCopy placeBookmark];
      mapItemStorage = [placeBookmark mapItemStorage];
      [(SearchResult *)v6 updateWithGEOMapItem:mapItemStorage];

      objc_storeStrong(&v6->_bookmarkStorage, storage);
      identifier = [storageCopy identifier];
      [(SearchResultRepr *)v6 setSyncIdentifier:identifier];

      [storageCopy timestamp];
      [(SearchResultRepr *)v6 setTimestamp:?];
      placeBookmark2 = [storageCopy placeBookmark];
      LODWORD(placeBookmark) = [placeBookmark2 origin];

      if (placeBookmark == 1)
      {
        [(SearchResult *)v6 setOriginalType:3];
        placeBookmark3 = [storageCopy placeBookmark];
        hasDroppedPinCoordinate = [placeBookmark3 hasDroppedPinCoordinate];

        if (hasDroppedPinCoordinate)
        {
          placeBookmark4 = [storageCopy placeBookmark];
          droppedPinCoordinate = [placeBookmark4 droppedPinCoordinate];
          [droppedPinCoordinate coordinate];
          CLLocationCoordinate2DFromGEOLocationCoordinate2D();
          [(SearchResult *)v6 setCoordinate:?];
        }
      }

      [(SearchResult *)v6 markAsOriginatingFromBookmarks];
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (SearchResult)initWithDroppedPin:(id)pin
{
  pinCopy = pin;
  if ([pinCopy hasLatLng])
  {
    latLng = [pinCopy latLng];
    [latLng lat];
    v7 = v6;
    latLng2 = [pinCopy latLng];
    [latLng2 lng];
    v10 = v9;

    if (self)
    {
      self = [(SearchResult *)self initWithType:3];
      defaultName = [(SearchResult *)self defaultName];
      place = [(SearchResultRepr *)self place];
      [place setName:defaultName];

      [(SearchResult *)self setCoordinate:v7, v10];
      [pinCopy timestamp];
      [(SearchResultRepr *)self setTimestamp:?];
      if ([pinCopy hasFloorOrdinal])
      {
        -[SearchResultRepr setFloorOrdinal:](self, "setFloorOrdinal:", [pinCopy floorOrdinal]);
      }
    }

    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (CLLocationCoordinate2D)_offsetCoordinate:(double)coordinate
{
  [(SearchResult *)self coordinate];
  v5 = MKMapPointForCoordinate(v11);
  x = v5.x;

  v6 = (v5.y * coordinate + -25.0) / coordinate;
  v9 = MKCoordinateForMapPoint(*&x);
  longitude = v9.longitude;
  latitude = v9.latitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (void)updateModel:(id)model
{
  modelCopy = model;
  composedWaypoint = [(SearchResult *)self composedWaypoint];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    composedWaypoint2 = [(SearchResult *)self composedWaypoint];
    route = [composedWaypoint2 route];
    userProvidedName = [route userProvidedName];
    if ([userProvidedName length])
    {
      [route userProvidedName];
    }

    else
    {
      [route name];
    }
    v9 = ;
    [modelCopy setFirstLine:v9];

    distanceAndElevationString = [route distanceAndElevationString];
    [modelCopy setSecondLine:distanceAndElevationString];

    v11 = [[SearchResult alloc] initWithComposedWaypoint:composedWaypoint2];
    mapItem = [(SearchResult *)v11 mapItem];
    [modelCopy setMapItem:mapItem];
  }

  else
  {
    composedWaypoint2 = [(SearchResult *)self mapItem];
    [composedWaypoint2 updateModel:modelCopy];
  }

  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = [NSString stringWithFormat:@"[%@]", v14];
  [modelCopy setDebugSubtitle:v15];
}

- (id)_maps_externalDeviceDictionaryRepresentation
{
  mapItem = [(SearchResult *)self mapItem];
  _maps_externalDeviceDictionaryRepresentation = [mapItem _maps_externalDeviceDictionaryRepresentation];

  return _maps_externalDeviceDictionaryRepresentation;
}

- (unint64_t)customizedLocationType
{
  if (![(SearchResult *)self isFindMyPerson])
  {
    if ([(SearchResultRepr *)self type]== 12)
    {
      return 5;
    }

    address = [(SearchResult *)self address];
    locationOfInterest = [(SearchResult *)self locationOfInterest];
    if (address | locationOfInterest)
    {
      if ([address addressType] != 1 && (!locationOfInterest || objc_msgSend(locationOfInterest, "type")))
      {
        if ([address addressType] == 2 || locationOfInterest && objc_msgSend(locationOfInterest, "type") == 1)
        {
          v3 = 2;
        }

        else if ([address addressType] == 3 || locationOfInterest && objc_msgSend(locationOfInterest, "type") == 2)
        {
          v3 = 3;
        }

        else
        {
          v3 = 0;
        }

        goto LABEL_12;
      }
    }

    else
    {
      mapItem = [(SearchResult *)self mapItem];
      _maps_isHome = [mapItem _maps_isHome];

      if ((_maps_isHome & 1) == 0)
      {
        mapItem2 = [(SearchResult *)self mapItem];
        _maps_isWork = [mapItem2 _maps_isWork];

        if (_maps_isWork)
        {
          v3 = 2;
        }

        else
        {
          v3 = 0;
        }

        goto LABEL_12;
      }
    }

    v3 = 1;
LABEL_12:

    return v3;
  }

  return 4;
}

+ (id)searchResultFromFavoriteItem:(id)item
{
  itemCopy = item;
  v4 = [[MapsLocationOfInterest alloc] initWithMapsFavoriteItem:itemCopy];

  if (v4)
  {
    v5 = [SearchResult alloc];
    mapItem = [(MapsLocationOfInterest *)v4 mapItem];
    v7 = [(SearchResult *)v5 initWithMapItem:mapItem];

    [(SearchResult *)v7 setLocationOfInterest:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)updateWithReverseGeocodedMapItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(SearchResult *)selfCopy isDynamicCurrentLocation])
  {
    defaultName = [(SearchResult *)selfCopy defaultName];
  }

  else
  {
    mapItem = [(SearchResult *)selfCopy mapItem];
    defaultName = [mapItem name];
  }

  mapItem2 = [(SearchResult *)selfCopy mapItem];
  [mapItem2 _coordinate];
  v9 = v8;
  v11 = v10;

  [(SearchResultRepr *)selfCopy setHasIncompleteNavData:0];
  [(SearchResultRepr *)selfCopy setHasIncompleteMetadata:0];
  [(SearchResult *)selfCopy setMapItem:itemCopy];
  place = [itemCopy place];
  [(SearchResultRepr *)selfCopy setPlace:place];

  mapItem3 = [(SearchResult *)selfCopy mapItem];
  [mapItem3 setName:defaultName];

  place2 = [(SearchResultRepr *)selfCopy place];
  [place2 setCenterCoordinate:{v9, v11}];

  [(SearchResult *)selfCopy setReverseGeocoded:1];
  [(SearchResult *)selfCopy clearAddressCache];

  objc_sync_exit(selfCopy);
}

- (SearchResult)initWithMapItem:(id)item searchResultType:(unsigned int)type addressBookAddress:(id)address retainedSearchMetadata:(id)metadata resultIndex:(int)index
{
  v7 = *&index;
  v10 = *&type;
  itemCopy = item;
  addressCopy = address;
  metadataCopy = metadata;
  v15 = [(SearchResult *)self initWithMapItem:itemCopy];
  v16 = v15;
  if (v15)
  {
    if (addressCopy)
    {
      [(SearchResult *)v15 setAddress:addressCopy];
      address = [(SearchResult *)v16 address];
      compositeName = [address compositeName];
      [itemCopy setName:compositeName];
    }

    [(SearchResult *)v16 setType:v10];
    [(SearchResult *)v16 setOriginalType:v10];
    [(SearchResult *)v16 setRetainedSearchMetadata:metadataCopy];
    if ((v7 & 0x80000000) == 0)
    {
      [(SearchResultRepr *)v16 setResultIndex:v7];
    }

    [(SearchResultRepr *)v16 setHasIncompleteNavData:0];
    mapItem = [(SearchResult *)v16 mapItem];
    _geoMapItem = [mapItem _geoMapItem];
    [(SearchResult *)v16 setLocationOfInterestWithGeoMapItem:_geoMapItem];

    v21 = v16;
  }

  return v16;
}

- (void)tryUpdatingCurrentLocationSearchResultWithCompletion:(id)completion
{
  completionCopy = completion;
  if (-[SearchResult isDynamicCurrentLocation](self, "isDynamicCurrentLocation") && (+[MKLocationManager sharedLocationManager](MKLocationManager, "sharedLocationManager"), v5 = objc_claimAutoreleasedReturnValue(), [v5 lastLocation], v6 = objc_claimAutoreleasedReturnValue(), v5, v6))
  {
    v7 = +[MKMapService sharedService];
    v8 = [v7 ticketForReverseGeocodeLocation:v6];

    objc_initWeak(&location, self);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100BEBAD4;
    v9[3] = &unk_10165E308;
    objc_copyWeak(&v11, &location);
    v10 = completionCopy;
    [v8 submitWithHandler:v9 networkActivity:0];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (MKMapItemIdentifier)identifier
{
  v3 = [MKMapItemIdentifier alloc];
  businessID = [(SearchResult *)self businessID];
  mapItem = [(SearchResult *)self mapItem];
  _resultProviderID = [mapItem _resultProviderID];
  [(SearchResult *)self coordinate];
  v7 = [v3 initWithMUID:businessID resultProviderID:_resultProviderID coordinate:?];

  return v7;
}

- (NSString)findMyHandleName
{
  findMyHandle = [(SearchResult *)self findMyHandle];
  displayName = [findMyHandle displayName];

  return displayName;
}

- (int)localSearchProviderID
{
  place = [(SearchResultRepr *)self place];
  localSearchProviderID = [place localSearchProviderID];

  return localSearchProviderID;
}

- (int64_t)source
{
  if ([(SearchResult *)self hasOriginatedFromBookmarks])
  {
    return 5;
  }

  if ([(SearchResult *)self hasOriginatedFromExternal])
  {
    return 6;
  }

  address = [(SearchResult *)self address];

  if (address)
  {
    address2 = [(SearchResult *)self address];
    addressIdentifier = [address2 addressIdentifier];
    v7 = +[CNContact _mapkit_sharedLocationContactIdentifer];
    v8 = [addressIdentifier isEqualToString:v7];

    v9 = v8 == 0;
    v10 = 3;
    v11 = 9;
    goto LABEL_7;
  }

  if ([(SearchResult *)self geoMapServiceTraitSource])
  {
    if ([(SearchResult *)self geoMapServiceTraitSource]== 1)
    {
      return 6;
    }

    if ([(SearchResult *)self geoMapServiceTraitSource]== 7)
    {
      return 7;
    }
  }

  originalType = [(SearchResultRepr *)self originalType];
  result = 0;
  if (originalType <= 0xD)
  {
    if (((1 << originalType) & 0x3821) != 0)
    {
      return 4;
    }

    if (originalType == 3)
    {
      return 1;
    }

    if (originalType == 9)
    {
      mapItem = [(SearchResult *)self mapItem];
      _isMapItemTypeBrand = [mapItem _isMapItemTypeBrand];

      v9 = _isMapItemTypeBrand == 0;
      v10 = 2;
      v11 = 8;
LABEL_7:
      if (v9)
      {
        return v10;
      }

      else
      {
        return v11;
      }
    }
  }

  return result;
}

- (id)bookmarkRepresentation
{
  v3 = objc_alloc_init(SyncedBookmarkRepr);
  [(SyncedBookmarkRepr *)v3 setType:2 * ([(SearchResultRepr *)self type]== 4)];
  bookmarkTitle = [(SearchResult *)self bookmarkTitle];

  if (bookmarkTitle)
  {
    bookmarkTitle2 = [(SearchResult *)self bookmarkTitle];
    [(SyncedBookmarkRepr *)v3 setTitle:bookmarkTitle2];
  }

  singleLineAddress = [(SearchResult *)self singleLineAddress];

  if (singleLineAddress)
  {
    singleLineAddress2 = [(SearchResult *)self singleLineAddress];
    [(SyncedBookmarkRepr *)v3 setSingleLineAddress:singleLineAddress2];
  }

  mapItem = [(SearchResult *)self mapItem];
  _resultProviderID = [mapItem _resultProviderID];

  if (_resultProviderID)
  {
    mapItem2 = [(SearchResult *)self mapItem];
    -[SyncedBookmarkRepr setProviderID:](v3, "setProviderID:", [mapItem2 _resultProviderID]);
  }

  if ([(SearchResult *)self businessID])
  {
    [(SyncedBookmarkRepr *)v3 setBusinessID:[(SearchResult *)self businessID]];
  }

  [(SearchResult *)self coordinate];
  if (fabs(v12) <= 180.0 && v11 >= -90.0 && v11 <= 90.0)
  {
    [(SearchResult *)self coordinate];
    [(SyncedBookmarkRepr *)v3 setLatitude:?];
    [(SearchResult *)self coordinate];
    [(SyncedBookmarkRepr *)v3 setLongitude:v13];
  }

  return v3;
}

- (NSUUID)impressionElementIdentifier
{
  impressionElementIdentifier = self->_impressionElementIdentifier;
  if (!impressionElementIdentifier)
  {
    v4 = +[NSUUID UUID];
    v5 = self->_impressionElementIdentifier;
    self->_impressionElementIdentifier = v4;

    impressionElementIdentifier = self->_impressionElementIdentifier;
  }

  return impressionElementIdentifier;
}

- (BOOL)isFrequentLocation
{
  mapItem = [(SearchResult *)self mapItem];
  _geoMapItem = [mapItem _geoMapItem];
  _clientAttributes = [_geoMapItem _clientAttributes];
  routineAttributes = [_clientAttributes routineAttributes];
  loiIdentifier = [routineAttributes loiIdentifier];
  v7 = loiIdentifier != 0;

  return v7;
}

- (PersonalizedItemKey)personalizedItemKey
{
  v3 = [PersonalizedMapItemKey alloc];
  mapItem = [(SearchResult *)self mapItem];
  v5 = [(PersonalizedMapItemKey *)v3 initWithMapItem:mapItem];

  return v5;
}

- (BOOL)needsReverseGeocodeCheck
{
  if ([(SearchResultRepr *)self type]== 3 || (v3 = [(SearchResult *)self isDynamicCurrentLocation]))
  {
    LOBYTE(v3) = ![(SearchResult *)self isReverseGeocoded];
  }

  return v3;
}

- (NSString)locality
{
  place = [(SearchResultRepr *)self place];
  address = [place address];
  structuredAddress = [address structuredAddress];
  locality = [structuredAddress locality];

  return locality;
}

- (NSString)singleLineAddress
{
  if ([(SearchResult *)self isAddressBookResult])
  {
    [(AddressBookAddress *)self->_address singleLineAddress];
  }

  else
  {
    [(SearchResult *)self _formattedAddress];
  }
  v3 = ;

  return v3;
}

- (BOOL)_hasStructuredAddress
{
  place = [(SearchResultRepr *)self place];
  address = [place address];
  structuredAddress = [address structuredAddress];
  hasThoroughfare = [structuredAddress hasThoroughfare];

  return hasThoroughfare;
}

- (NSString)subtitle
{
  type = [(SearchResultRepr *)self type];
  if (type == 3)
  {
    if (![(SearchResult *)self isReverseGeocoded])
    {
      goto LABEL_10;
    }

    singleLineAddress = [(SearchResult *)self singleLineAddress];
    if ([singleLineAddress length])
    {
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  if (type == 4 && [(SearchResult *)self isReverseGeocoded])
  {
    mapItem = [(SearchResult *)self mapItem];
    singleLineAddress = [mapItem _addressFormattedAsShortenedAddress];

    if ([singleLineAddress length])
    {
      goto LABEL_17;
    }

    singleLineAddress2 = [(SearchResult *)self singleLineAddress];
    if ([singleLineAddress2 length])
    {
      goto LABEL_16;
    }

LABEL_9:
  }

LABEL_10:
  place = [(SearchResultRepr *)self place];
  singleLineAddress = [place firstBusiness];

  if ([singleLineAddress isClosed])
  {
    v8 = @"Permanently Closed";
  }

  else
  {
    place2 = [(SearchResultRepr *)self place];
    addressGeocodeAccuracy = [place2 addressGeocodeAccuracy];

    if (addressGeocodeAccuracy != 2)
    {
      singleLineAddress2 = 0;
      goto LABEL_16;
    }

    v8 = @"Approximate Location";
  }

  v11 = +[NSBundle mainBundle];
  singleLineAddress2 = [v11 localizedStringForKey:v8 value:@"localized string not found" table:0];

LABEL_16:
  singleLineAddress = singleLineAddress2;
LABEL_17:

  return singleLineAddress;
}

- (NSString)title
{
  name = [(SearchResult *)self name];
  if ([name length])
  {
    defaultName = [(SearchResult *)self defaultName];
    v5 = [name isEqualToString:defaultName] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  type = [(SearchResultRepr *)self type];
  if ((v5 & 1) != 0 || type - 3 <= 1)
  {
    locationTitle = name;
  }

  else
  {
    locationTitle = [(SearchResult *)self locationTitle];
  }

  v8 = locationTitle;

  return v8;
}

- (NSString)bookmarkTitle
{
  placeBookmark = [(MSPBookmarkStorage *)self->_bookmarkStorage placeBookmark];
  hasTitle = [placeBookmark hasTitle];

  if (hasTitle)
  {
    placeBookmark2 = [(MSPBookmarkStorage *)self->_bookmarkStorage placeBookmark];
    title = [placeBookmark2 title];
  }

  else
  {
    title = [(SearchResult *)self name];
  }

  return title;
}

- (void)setBookmarkTitle:(id)title
{
  titleCopy = title;
  bookmarkStorage = [(SearchResult *)self bookmarkStorage];
  placeBookmark = [bookmarkStorage placeBookmark];
  [placeBookmark setTitle:titleCopy];
}

- (NSString)name
{
  mapItem = [(SearchResult *)self mapItem];
  _geoMapItem = [mapItem _geoMapItem];

  if ([_geoMapItem contactIsMe])
  {
    contactAddressType = [_geoMapItem contactAddressType];
    switch(contactAddressType)
    {
      case 3u:
        v6 = +[NSBundle mainBundle];
        userProvidedName = v6;
        v8 = @"School";
        goto LABEL_15;
      case 2u:
        v6 = +[NSBundle mainBundle];
        userProvidedName = v6;
        v8 = @"Work";
        goto LABEL_15;
      case 1u:
        v6 = +[NSBundle mainBundle];
        userProvidedName = v6;
        v8 = @"Home";
LABEL_15:
        v12 = [v6 localizedStringForKey:v8 value:@"localized string not found" table:0];
        goto LABEL_16;
    }
  }

  routeData = self->_routeData;
  if (routeData)
  {
    userProvidedName = [(GEOComposedGeometryRoutePersistentData *)routeData userProvidedName];
    v10 = [userProvidedName length];
    v11 = self->_routeData;
    if (v10)
    {
      [(GEOComposedGeometryRoutePersistentData *)v11 userProvidedName];
    }

    else
    {
      [(GEOComposedGeometryRoutePersistentData *)v11 routeName];
    }
    v12 = ;
    goto LABEL_16;
  }

  autocompletePersonTitle = [(SearchResult *)self autocompletePersonTitle];
  if (autocompletePersonTitle)
  {
    v12 = autocompletePersonTitle;
    userProvidedName = v12;
LABEL_16:
    name2 = v12;
    goto LABEL_17;
  }

  if (![(SearchResult *)self isAddressBookResult]|| ([(AddressBookAddress *)self->_address compositeName], (v16 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    findMyHandleName = [(SearchResult *)self findMyHandleName];
    v18 = findMyHandleName;
    if (findMyHandleName)
    {
      name2 = findMyHandleName;
LABEL_32:

      goto LABEL_33;
    }

    if (-[SearchResult hasOriginatedFromBookmarks](self, "hasOriginatedFromBookmarks") && (-[MSPBookmarkStorage placeBookmark](self->_bookmarkStorage, "placeBookmark"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 hasTitle], v19, v20))
    {
      placeBookmark = [(MSPBookmarkStorage *)self->_bookmarkStorage placeBookmark];
      title = [placeBookmark title];
    }

    else
    {
      locationOfInterest = [(SearchResult *)self locationOfInterest];
      name = [locationOfInterest name];

      if (!name)
      {
        mapItem2 = [(SearchResult *)self mapItem];
        name2 = [mapItem2 name];

        mapItem3 = [(SearchResult *)self mapItem];
        LODWORD(mapItem2) = [mapItem3 isCurrentLocation];

        if (!mapItem2)
        {
          goto LABEL_32;
        }

        placeBookmark = +[MKLocationManager sharedLocationManager];
        isLocationServicesApproved = [placeBookmark isLocationServicesApproved];
        if ([placeBookmark isAuthorizedForPreciseLocation])
        {
          v28 = MKLocalizedStringForApproximateLocation();
          v29 = [name2 isEqualToString:v28];

          if (!v29)
          {
            goto LABEL_31;
          }

          v30 = MKLocalizedStringForCurrentLocation();
        }

        else
        {
          if (!isLocationServicesApproved)
          {
            goto LABEL_31;
          }

          v31 = MKLocalizedStringForCurrentLocation();
          v32 = [name2 isEqualToString:v31];

          if (!v32)
          {
            goto LABEL_31;
          }

          v30 = MKLocalizedStringForApproximateLocation();
        }

        v33 = v30;

        name2 = v33;
        goto LABEL_31;
      }

      placeBookmark = [(SearchResult *)self locationOfInterest];
      title = [placeBookmark name];
    }

    name2 = title;
LABEL_31:

    goto LABEL_32;
  }

  name2 = v16;
LABEL_33:
  userProvidedName = 0;
LABEL_17:

  return name2;
}

- (BOOL)isHomeOrWork
{
  locationOfInterest = [(SearchResult *)self locationOfInterest];
  if (!locationOfInterest)
  {
    goto LABEL_13;
  }

  _geoMapItem = locationOfInterest;
  locationOfInterest2 = [(SearchResult *)self locationOfInterest];
  if (![locationOfInterest2 type])
  {

    contactIsMe = 1;
    goto LABEL_9;
  }

  locationOfInterest3 = [(SearchResult *)self locationOfInterest];
  type = [locationOfInterest3 type];

  if (type != 1)
  {
LABEL_13:
    if ([(SearchResult *)self isAddressBookResult])
    {
      address = [(SearchResult *)self address];
      isMeCard = [address isMeCard];

      if (isMeCard)
      {
        return 1;
      }
    }

    mapItem = [(SearchResult *)self mapItem];
    _geoMapItem = [mapItem _geoMapItem];

    contactIsMe = [_geoMapItem contactIsMe];
LABEL_9:

    return contactIsMe;
  }

  return 1;
}

- (NSString)infoCardTitle
{
  if ([(SearchResultRepr *)self type]== 3)
  {
    [(SearchResult *)self defaultName];
  }

  else
  {
    [(SearchResult *)self title];
  }
  v3 = ;

  return v3;
}

- (NSString)locationTitle
{
  singleLineAddress = [(SearchResult *)self singleLineAddress];
  if ([singleLineAddress length])
  {
    v4 = singleLineAddress;
LABEL_5:
    v7 = v4;
    goto LABEL_6;
  }

  place = [(SearchResultRepr *)self place];
  isDisputed = [place isDisputed];

  if (isDisputed)
  {
    [(SearchResult *)self coordinate];
    v4 = [NSString _mapkit_formattedStringForCoordinate:?];
    goto LABEL_5;
  }

  v9 = +[NSBundle mainBundle];
  v7 = [v9 localizedStringForKey:@"SearchResult_UnknownLocation" value:@"localized string not found" table:0];

LABEL_6:

  return v7;
}

- (unsigned)appearance
{
  appearance = self->_appearance;
  if (!appearance)
  {
    type = [(SearchResultRepr *)self type];
    if (type == 4)
    {
      appearance = 4;
    }

    else
    {
      appearance = 1;
    }

    if (type == 3)
    {
      return 3;
    }
  }

  return appearance;
}

- (void)setMapItem:(id)item
{
  itemCopy = item;
  if (self->_mapItem != itemCopy)
  {
    v9 = itemCopy;
    objc_storeStrong(&self->_mapItem, item);
    v6 = objc_opt_respondsToSelector();
    itemCopy = v9;
    if (v6)
    {
      personalizedCompoundItem = [(MKMapItem *)self->_mapItem personalizedCompoundItem];
      personalizedCompoundItem = self->_personalizedCompoundItem;
      self->_personalizedCompoundItem = personalizedCompoundItem;

      itemCopy = v9;
    }
  }
}

- (CLLocationCoordinate2D)labelCoordinate
{
  p_labelCoordinate = &self->_labelCoordinate;
  longitude = self->_labelCoordinate.longitude;
  latitude = fabs(longitude);
  if (latitude > 180.0 || (latitude = p_labelCoordinate->latitude, p_labelCoordinate->latitude < -90.0) || latitude > 90.0)
  {
    mapItem = [(SearchResult *)self mapItem];
    [mapItem _labelCoordinate];
    p_labelCoordinate->latitude = v6;
    p_labelCoordinate->longitude = v7;

    latitude = p_labelCoordinate->latitude;
    longitude = p_labelCoordinate->longitude;
  }

  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (void)setCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  p_coordinate = &self->_coordinate;
  if (vabdd_f64(coordinate.latitude, self->_coordinate.latitude) >= 0.00000000999999994 || vabdd_f64(coordinate.longitude, self->_coordinate.longitude) >= 0.00000000999999994)
  {
    [(SearchResult *)self clearLocationInformation];
    p_coordinate->latitude = latitude;
    p_coordinate->longitude = longitude;

    [(SearchResult *)self _syncGEOPlaceWithCoordinate];
  }
}

- (void)setCoordinate:(CLLocationCoordinate2D)coordinate preserveLocationInfo:(BOOL)info
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  p_coordinate = &self->_coordinate;
  if (vabdd_f64(coordinate.latitude, self->_coordinate.latitude) >= 0.00000000999999994 || vabdd_f64(coordinate.longitude, self->_coordinate.longitude) >= 0.00000000999999994)
  {
    if (!info)
    {
      [(SearchResult *)self clearLocationInformation];
    }

    v8 = kAnnotationCoordinateKey;
    [(SearchResult *)self willChangeValueForKey:kAnnotationCoordinateKey];
    p_coordinate->latitude = latitude;
    p_coordinate->longitude = longitude;
    [(SearchResult *)self didChangeValueForKey:v8];

    [(SearchResult *)self _syncGEOPlaceWithCoordinate];
  }
}

- (NSString)description
{
  v3 = [NSMutableString alloc];
  v15.receiver = self;
  v15.super_class = SearchResult;
  v4 = [(SearchResultRepr *)&v15 description];
  v5 = [v3 initWithString:v4];

  name = [(SearchResult *)self name];
  if ([name length])
  {
    [v5 appendFormat:@" %@", name];
  }

  mapItem = [(SearchResult *)self mapItem];
  _addressFormattedAsSinglelineAddress = [mapItem _addressFormattedAsSinglelineAddress];

  if ([_addressFormattedAsSinglelineAddress length])
  {
    [v5 appendFormat:@" %@", _addressFormattedAsSinglelineAddress];
  }

  place = [(SearchResultRepr *)self place];
  addressGeocodeAccuracy = [place addressGeocodeAccuracy];

  if (addressGeocodeAccuracy == 2)
  {
    [v5 appendString:@" -- Inexact"];
  }

  title = [(SearchResult *)self title];
  [v5 appendFormat:@"\ntitle: %@", title];

  subtitle = [(SearchResult *)self subtitle];
  [v5 appendFormat:@"\nsubtitle: %@", subtitle];

  [(SearchResultRepr *)self hasIncompleteMetadata];
  v13 = NSStringFromBOOL();
  [v5 appendFormat:@"\npartiallyClientized: %@", v13];

  return v5;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  place = [(SearchResultRepr *)self place];
  name = [place name];
  singleLineAddress = [(SearchResult *)self singleLineAddress];
  [(SearchResultRepr *)self hasIncompleteMetadata];
  v7 = NSStringFromBOOL();
  v8 = [NSString stringWithFormat:@"<%@: %p> %@ %@ - (partiallyClientized: %@)", v3, self, name, singleLineAddress, v7];

  return v8;
}

- (id)_mapsURLfromMapView:(id)view includingSensitiveFields:(BOOL)fields
{
  fieldsCopy = fields;
  viewCopy = view;
  v31.receiver = self;
  v31.super_class = SearchResult;
  if ([(SearchResultRepr *)&v31 hasMapsURL])
  {
    v30.receiver = self;
    v30.super_class = SearchResult;
    mapsURL = [(SearchResultRepr *)&v30 mapsURL];
  }

  else
  {
    mapItem = [(SearchResult *)self mapItem];
    v9 = [mapItem _fullSharingURLIncludingSensitiveFields:fieldsCopy];

    if ([(SearchResultRepr *)self type]== 3 || [(SearchResult *)self isReverseGeocoded])
    {
      v10 = [NSURLComponents componentsWithURL:v9 resolvingAgainstBaseURL:0];
      queryItems = [v10 queryItems];
      v12 = [queryItems mutableCopy];

      v26 = 0;
      v27 = &v26;
      v28 = 0x2020000000;
      v29 = 0;
      queryItems2 = [v10 queryItems];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100CEDAE4;
      v23[3] = &unk_101650D48;
      v14 = v12;
      v24 = v14;
      v25 = &v26;
      [queryItems2 enumerateObjectsUsingBlock:v23];

      if (*(v27 + 24) == 1)
      {
        v15 = [v14 copy];
        [v10 setQueryItems:v15];

        v16 = [v10 URL];

        v9 = v16;
      }

      _Block_object_dispose(&v26, 8);
    }

    mapsURL = [v9 absoluteString];
    if (viewCopy)
    {
      IsEnabled_URLUnification = MapsFeature_IsEnabled_URLUnification();
      v18 = @"&t=%@";
      if (IsEnabled_URLUnification)
      {
        v18 = @"&map=%@";
      }

      v19 = v18;
      v20 = +[MKURLSerializer stringForMapType:](MKURLSerializer, "stringForMapType:", [viewCopy mapType]);
      v21 = [mapsURL stringByAppendingFormat:v19, v20];

      mapsURL = v21;
    }
  }

  return mapsURL;
}

- (unint64_t)businessID
{
  if (self->_businessID)
  {
    return self->_businessID;
  }

  mapItem = [(SearchResult *)self mapItem];
  _muid = [mapItem _muid];

  return _muid;
}

- (BOOL)_hasUID
{
  if (self->_businessID)
  {
    return 1;
  }

  mapItem = [(SearchResult *)self mapItem];
  _hasMUID = [mapItem _hasMUID];

  return _hasMUID;
}

- (id)_formattedAddressMultiline
{
  formattedAddressMultiline = self->_formattedAddressMultiline;
  if (!formattedAddressMultiline)
  {
    mapItem = [(SearchResult *)self mapItem];
    _addressFormattedAsMultilineAddress = [mapItem _addressFormattedAsMultilineAddress];
    v6 = self->_formattedAddressMultiline;
    self->_formattedAddressMultiline = _addressFormattedAsMultilineAddress;

    formattedAddressMultiline = self->_formattedAddressMultiline;
  }

  return formattedAddressMultiline;
}

- (id)_formattedAddress
{
  formattedAddress = self->_formattedAddress;
  if (!formattedAddress)
  {
    mapItem = [(SearchResult *)self mapItem];
    _addressFormattedAsSinglelineAddress = [mapItem _addressFormattedAsSinglelineAddress];
    v6 = self->_formattedAddress;
    self->_formattedAddress = _addressFormattedAsSinglelineAddress;

    formattedAddress = self->_formattedAddress;
  }

  return formattedAddress;
}

- (BOOL)isPartiallyClientized
{
  mapItem = [(SearchResult *)self mapItem];
  _isPartiallyClientized = [mapItem _isPartiallyClientized];

  return _isPartiallyClientized;
}

- (BOOL)behavesAsAtom
{
  type = [(SearchResultRepr *)self type];
  v4 = type;
  if (type > 9 || (isAddressBookResult = 1, ((1 << type) & 0x218) == 0))
  {
    type = [(SearchResult *)self locationOfInterest];
    if (type)
    {
      isAddressBookResult = 1;
    }

    else
    {
      isAddressBookResult = [(SearchResult *)self isAddressBookResult];
      type = 0;
    }
  }

  if (v4 > 9 || ((1 << v4) & 0x218) == 0)
  {
  }

  return isAddressBookResult;
}

- (BOOL)updateFromSyncData:(id)data
{
  dataCopy = data;
  v5 = [[MSPBookmarkStorage alloc] initWithData:dataCopy];

  if (v5 && [v5 type] == 1)
  {
    placeBookmark = [v5 placeBookmark];
    mapItemStorage = [placeBookmark mapItemStorage];

    [(SearchResult *)self updateWithGEOMapItem:mapItemStorage];
    placeBookmark2 = [v5 placeBookmark];
    origin = [placeBookmark2 origin];

    if (origin == 1)
    {
      [(SearchResult *)self setOriginalType:3];
      placeBookmark3 = [v5 placeBookmark];
      hasDroppedPinCoordinate = [placeBookmark3 hasDroppedPinCoordinate];

      if (hasDroppedPinCoordinate)
      {
        placeBookmark4 = [v5 placeBookmark];
        droppedPinCoordinate = [placeBookmark4 droppedPinCoordinate];
        [droppedPinCoordinate coordinate];
        CLLocationCoordinate2DFromGEOLocationCoordinate2D();
        [(SearchResult *)self setCoordinate:?];
      }

      placeBookmark5 = [v5 placeBookmark];
      hasDroppedPinFloorOrdinal = [placeBookmark5 hasDroppedPinFloorOrdinal];

      if (hasDroppedPinFloorOrdinal)
      {
        placeBookmark6 = [v5 placeBookmark];
        -[SearchResultRepr setFloorOrdinal:](self, "setFloorOrdinal:", [placeBookmark6 droppedPinFloorOrdinal]);
      }
    }

    placeBookmark7 = [v5 placeBookmark];
    title = [placeBookmark7 title];
    [(SearchResult *)self setBookmarkTitle:title];
  }

  return 0;
}

- (id)syncData
{
  bookmarkStorage = [(SearchResult *)self bookmarkStorage];
  data = [bookmarkStorage data];

  return data;
}

- (SearchResult)initWithBookmarkRepresentation:(id)representation
{
  v10.receiver = self;
  v10.super_class = SearchResult;
  representationCopy = representation;
  v4 = [(SearchResult *)&v10 init];
  [(SearchResult *)v4 _commonInit:v10.receiver];
  v5 = [(SearchResult *)v4 updateFromBookmarkRepresentation:representationCopy];

  if (v5)
  {
    place = [(SearchResultRepr *)v4 place];
    hasAddress = [place hasAddress];

    if ((hasAddress & 1) == 0)
    {
      [(SearchResultRepr *)v4 setHasIncompleteMetadata:1];
    }

    [(SearchResultRepr *)v4 setHasIncompleteNavData:1];
    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)updateFromBookmarkRepresentation:(id)representation
{
  representationCopy = representation;
  if ([representationCopy hasTitle])
  {
    title = [representationCopy title];
    place = [(SearchResultRepr *)self place];
    [place setName:title];
  }

  if ([representationCopy hasLatitude] && objc_msgSend(representationCopy, "hasLongitude"))
  {
    [representationCopy latitude];
    v8 = v7;
    [representationCopy longitude];
    [(SearchResult *)self setCoordinate:v8, v9];
  }

  if ([representationCopy hasBusinessID])
  {
    self->_businessID = [representationCopy businessID];
  }

  if ([representationCopy hasProviderID])
  {
    if ([representationCopy providerID])
    {
      providerID = [representationCopy providerID];
      place2 = [(SearchResultRepr *)self place];
      [place2 setLocalSearchProviderID:providerID];
    }

    else
    {
      place2 = [(SearchResultRepr *)self place];
      [place2 setHasLocalSearchProviderID:0];
    }
  }

  if ([representationCopy hasRegionLatitude] && objc_msgSend(representationCopy, "hasRegionLatitudeDelta") && objc_msgSend(representationCopy, "hasRegionLongitude") && objc_msgSend(representationCopy, "hasRegionLongitudeDelta"))
  {
    mapRegion = [representationCopy mapRegion];
    place3 = [(SearchResultRepr *)self place];
    [place3 setMapRegion:mapRegion];
  }

  type = [representationCopy type];
  if (type <= 2)
  {
    if (type)
    {
      if (type != 1)
      {
        if (type != 2)
        {
LABEL_32:
          [(SearchResult *)self setOriginalType:[(SearchResultRepr *)self type]];
          v16 = 1;
          goto LABEL_33;
        }

        v15 = 4;
LABEL_31:
        [(SearchResult *)self setType:v15];
        goto LABEL_32;
      }
    }

    else if ([representationCopy hasProviderID] && objc_msgSend(representationCopy, "hasBusinessID"))
    {
      v17 = objc_alloc_init(GEOBusiness);
      [v17 setUID:{objc_msgSend(representationCopy, "businessID")}];
      place4 = [(SearchResultRepr *)self place];
      [place4 addBusiness:v17];

      [(SearchResultRepr *)self setHasIncompleteMetadata:1];
      if ([representationCopy hasProviderID])
      {
        providerID2 = [representationCopy providerID];
        place5 = [(SearchResultRepr *)self place];
        [place5 setLocalSearchProviderID:providerID2];
      }
    }

    v15 = 0;
    goto LABEL_31;
  }

  v16 = 0;
  if ((type - 3) >= 2)
  {
    goto LABEL_32;
  }

LABEL_33:

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithSearchResult:self];
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(SearchResult *)self isAddressBookResult])
  {
    [(SearchResultRepr *)self setAddressID:[(PersistentAddressBookAddress *)self->_address addressID]];
    [(SearchResultRepr *)self setAddressRecordID:[(PersistentAddressBookAddress *)self->_address recordID]];
  }

  else
  {
    [(SearchResultRepr *)self setHasAddressID:0];
    [(SearchResultRepr *)self setHasAddressRecordID:0];
  }

  v5.receiver = self;
  v5.super_class = SearchResult;
  [(SearchResultRepr *)&v5 writeTo:toCopy];
}

- (BOOL)readFrom:(id)from
{
  v47.receiver = self;
  v47.super_class = SearchResult;
  v4 = [(SearchResultRepr *)&v47 readFrom:from];
  if (v4)
  {
    if ([(SearchResultRepr *)self hasAddressRecordID])
    {
      v5 = [[AddressBookAddress alloc] initWithRecordID:[(SearchResultRepr *)self addressRecordID] addressID:[(SearchResultRepr *)self addressID]];
      address = self->_address;
      self->_address = v5;
    }

    hasObsoleteName = [(SearchResultRepr *)self hasObsoleteName];
    if ([(SearchResultRepr *)self hasObsoleteLocality]|| [(SearchResultRepr *)self hasObsoleteRegion]|| [(SearchResultRepr *)self hasObsoletePostalCode]|| [(SearchResultRepr *)self hasObsoleteCountryCode]|| [(SearchResultRepr *)self hasObsoleteCountryName]|| [(SearchResultRepr *)self hasObsoleteDependentLocality])
    {
      hasObsoleteThoroughfare = 1;
    }

    else
    {
      hasObsoleteThoroughfare = [(SearchResultRepr *)self hasObsoleteThoroughfare];
    }

    obsoleteAddressLines = [(SearchResultRepr *)self obsoleteAddressLines];
    v10 = [obsoleteAddressLines count];

    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = hasObsoleteThoroughfare;
    }

    if ([(SearchResultRepr *)self hasObsoleteInexactPosition])
    {
      obsoleteInexactPosition = [(SearchResultRepr *)self obsoleteInexactPosition];
    }

    else
    {
      obsoleteInexactPosition = 0;
    }

    if ([(SearchResultRepr *)self hasObsoletePhone]|| [(SearchResultRepr *)self hasObsoleteReferenceURL]|| [(SearchResultRepr *)self hasObsoleteCid]&& [(SearchResultRepr *)self obsoleteCid]|| [(SearchResultRepr *)self hasObsoleteUnverifiedListing])
    {
      hasObsoleteClosedListing = 1;
    }

    else
    {
      hasObsoleteClosedListing = [(SearchResultRepr *)self hasObsoleteClosedListing];
    }

    if ([(SearchResultRepr *)self hasObsoleteLatitudeE6Value])
    {
      hasObsoleteLongitudeE6Value = [(SearchResultRepr *)self hasObsoleteLongitudeE6Value];
    }

    else
    {
      hasObsoleteLongitudeE6Value = 0;
    }

    if (((hasObsoleteName | hasObsoleteThoroughfare | obsoleteInexactPosition | hasObsoleteClosedListing | v11) & 1) != 0 || hasObsoleteLongitudeE6Value)
    {
      v24 = objc_alloc_init(GEOPlace);
      [(SearchResultRepr *)self setPlace:v24];

      if (!hasObsoleteName)
      {
LABEL_29:
        if (!v11)
        {
          goto LABEL_30;
        }

        goto LABEL_38;
      }
    }

    else if (!hasObsoleteName)
    {
      goto LABEL_29;
    }

    obsoleteName = [(SearchResultRepr *)self obsoleteName];
    place = [(SearchResultRepr *)self place];
    [place setName:obsoleteName];

    if (!v11)
    {
LABEL_30:
      if (!obsoleteInexactPosition)
      {
        goto LABEL_31;
      }

      goto LABEL_57;
    }

LABEL_38:
    v27 = objc_alloc_init(GEOAddress);
    if (v10)
    {
      obsoleteAddressLines2 = [(SearchResultRepr *)self obsoleteAddressLines];
      [v27 setFormattedAddressLines:obsoleteAddressLines2];
    }

    place2 = [(SearchResultRepr *)self place];
    [place2 setAddress:v27];

    if (hasObsoleteThoroughfare)
    {
      v30 = objc_alloc_init(GEOStructuredAddress);
      if ([(SearchResultRepr *)self hasObsoleteLocality])
      {
        obsoleteLocality = [(SearchResultRepr *)self obsoleteLocality];
        [v30 setLocality:obsoleteLocality];
      }

      if ([(SearchResultRepr *)self hasObsoleteRegion])
      {
        obsoleteRegion = [(SearchResultRepr *)self obsoleteRegion];
        [v30 setAdministrativeArea:obsoleteRegion];
      }

      if ([(SearchResultRepr *)self hasObsoletePostalCode])
      {
        obsoletePostalCode = [(SearchResultRepr *)self obsoletePostalCode];
        [v30 setPostCode:obsoletePostalCode];
      }

      if ([(SearchResultRepr *)self hasObsoleteCountryCode])
      {
        obsoleteCountryCode = [(SearchResultRepr *)self obsoleteCountryCode];
        [v30 setCountryCode:obsoleteCountryCode];
      }

      if ([(SearchResultRepr *)self hasObsoleteCountryName])
      {
        obsoleteCountryName = [(SearchResultRepr *)self obsoleteCountryName];
        [v30 setCountry:obsoleteCountryName];
      }

      if ([(SearchResultRepr *)self hasObsoleteDependentLocality])
      {
        obsoleteDependentLocality = [(SearchResultRepr *)self obsoleteDependentLocality];
        [v30 setSubLocality:obsoleteDependentLocality];
      }

      if ([(SearchResultRepr *)self hasObsoleteThoroughfare])
      {
        obsoleteThoroughfare = [(SearchResultRepr *)self obsoleteThoroughfare];
        [v30 setThoroughfare:obsoleteThoroughfare];
      }

      place3 = [(SearchResultRepr *)self place];
      address = [place3 address];
      [address setStructuredAddress:v30];
    }

    if (!obsoleteInexactPosition)
    {
LABEL_31:
      if (!hasObsoleteClosedListing)
      {
        goto LABEL_32;
      }

      goto LABEL_58;
    }

LABEL_57:
    place4 = [(SearchResultRepr *)self place];
    [place4 setAddressGeocodeAccuracy:2];

    if (!hasObsoleteClosedListing)
    {
LABEL_32:
      if (!hasObsoleteLongitudeE6Value)
      {
LABEL_34:
        place5 = [(SearchResultRepr *)self place];
        [place5 mkCoordinate];
        self->_coordinate.latitude = v21;
        self->_coordinate.longitude = v22;

        [(SearchResultRepr *)self setObsoleteName:0];
        [(SearchResultRepr *)self setObsoleteLocality:0];
        [(SearchResultRepr *)self setObsoleteRegion:0];
        [(SearchResultRepr *)self setObsoletePostalCode:0];
        [(SearchResultRepr *)self setObsoleteCountryCode:0];
        [(SearchResultRepr *)self setObsoleteCountryName:0];
        [(SearchResultRepr *)self setObsoletePhone:0];
        [(SearchResultRepr *)self setObsoleteReferenceURL:0];
        [(SearchResultRepr *)self setObsoleteDependentLocality:0];
        [(SearchResultRepr *)self setObsoleteThoroughfare:0];
        [(SearchResultRepr *)self setObsoleteLatitudeE6Value:0];
        [(SearchResultRepr *)self setHasObsoleteLatitudeE6Value:0];
        [(SearchResultRepr *)self setObsoleteLongitudeE6Value:0];
        [(SearchResultRepr *)self setHasObsoleteLongitudeE6Value:0];
        [(SearchResultRepr *)self setObsoleteInexactPosition:0];
        [(SearchResultRepr *)self setHasObsoleteInexactPosition:0];
        [(SearchResultRepr *)self setObsoleteCid:0];
        [(SearchResultRepr *)self setHasObsoleteCid:0];
        [(SearchResultRepr *)self setObsoleteAddressLines:0];
        [(SearchResultRepr *)self setObsoleteUnverifiedListing:0];
        [(SearchResultRepr *)self setHasObsoleteUnverifiedListing:0];
        [(SearchResultRepr *)self setObsoleteClosedListing:0];
        [(SearchResultRepr *)self setHasObsoleteClosedListing:0];
        return v4;
      }

LABEL_33:
      obsoleteLatitudeE6Value = [(SearchResultRepr *)self obsoleteLatitudeE6Value];
      v16 = vshll_n_s32(__PAIR64__([(SearchResultRepr *)self obsoleteLongitudeE6Value], obsoleteLatitudeE6Value), 0x10uLL);
      v16.i64[0] /= 1000000;
      v16.i64[1] /= 1000000;
      v46 = vmulq_f64(vcvtq_f64_s64(v16), vdupq_n_s64(0x3EF0000000000000uLL));
      v17 = [[GEOMapRegion alloc] initWithLatitude:? longitude:?];
      place6 = [(SearchResultRepr *)self place];
      [place6 setMapRegion:v17];

      place7 = [(SearchResultRepr *)self place];
      [place7 setCenterCoordinate:*&v46];

      goto LABEL_34;
    }

LABEL_58:
    v41 = objc_alloc_init(GEOBusiness);
    if ([(SearchResultRepr *)self hasObsoletePhone])
    {
      obsoletePhone = [(SearchResultRepr *)self obsoletePhone];
      [v41 setTelephone:obsoletePhone];
    }

    if ([(SearchResultRepr *)self hasObsoleteReferenceURL])
    {
      obsoleteReferenceURL = [(SearchResultRepr *)self obsoleteReferenceURL];
      [v41 setURL:obsoleteReferenceURL];
    }

    if ([(SearchResultRepr *)self hasObsoleteClosedListing])
    {
      [v41 setIsClosed:{-[SearchResultRepr obsoleteClosedListing](self, "obsoleteClosedListing")}];
    }

    v44 = [[NSMutableArray alloc] initWithCapacity:1];
    [v44 addObject:v41];
    place8 = [(SearchResultRepr *)self place];
    [place8 setBusiness:v44];

    if (!hasObsoleteLongitudeE6Value)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  return v4;
}

- (BOOL)isEqualToSearchResult:(id)result forPurpose:(int64_t)purpose
{
  resultCopy = result;
  v6 = resultCopy;
  if (!resultCopy)
  {
    goto LABEL_9;
  }

  if (self == resultCopy)
  {
    IsEqualToMapItemForPurpose = 1;
    goto LABEL_10;
  }

  autocompletePerson = [(SearchResult *)self autocompletePerson];
  autocompletePerson2 = [(SearchResult *)v6 autocompletePerson];
  _geoMapItem = autocompletePerson2;
  if (autocompletePerson && autocompletePerson2)
  {
    goto LABEL_5;
  }

  if (autocompletePerson | _geoMapItem)
  {
LABEL_9:
    IsEqualToMapItemForPurpose = 0;
    goto LABEL_10;
  }

  autocompletePerson = [(SearchResult *)self findMyHandle];
  findMyHandle = [(SearchResult *)v6 findMyHandle];
  _geoMapItem = findMyHandle;
  if (!autocompletePerson || !findMyHandle)
  {

    if (!(autocompletePerson | _geoMapItem))
    {
      routeData = [(SearchResult *)self routeData];
      if (routeData)
      {
        v14 = routeData;
        routeData2 = [(SearchResult *)v6 routeData];

        if (routeData2)
        {
          routeData3 = [(SearchResult *)self routeData];
          routeData4 = [(SearchResult *)v6 routeData];
          IsEqualToMapItemForPurpose = [routeData3 isEqual:routeData4];

          goto LABEL_10;
        }
      }

      routeData5 = [(SearchResult *)self routeData];
      if (routeData5)
      {
      }

      else
      {
        routeData6 = [(SearchResult *)v6 routeData];

        if (!routeData6)
        {
          if ([(SearchResultRepr *)v6 type]== 4 && [(SearchResultRepr *)self type]== 4 || [(SearchResultRepr *)v6 type]== 3 && [(SearchResultRepr *)self type]== 3)
          {
            [(SearchResult *)self coordinate];
            [(SearchResult *)v6 coordinate];
            GEOCalculateDistance();
            IsEqualToMapItemForPurpose = v20 < 5.0;
            goto LABEL_10;
          }

          autocompletePerson = [(SearchResult *)v6 mapItem];
          _geoMapItem = [autocompletePerson _geoMapItem];
          mapItem = [(SearchResult *)self mapItem];
          _geoMapItem2 = [mapItem _geoMapItem];
          IsEqualToMapItemForPurpose = GEOMapItemIsEqualToMapItemForPurpose();

          goto LABEL_6;
        }
      }
    }

    goto LABEL_9;
  }

LABEL_5:
  IsEqualToMapItemForPurpose = [autocompletePerson isEqual:_geoMapItem];
LABEL_6:

LABEL_10:
  return IsEqualToMapItemForPurpose;
}

- (void)setSourceApplication:(id)application
{
  applicationCopy = application;
  if (![(NSString *)self->_sourceApplication isEqualToString:?])
  {
    objc_storeStrong(&self->_sourceApplication, application);
  }
}

- (void)setSourceURL:(id)l
{
  lCopy = l;
  if (![(NSString *)self->_sourceURL isEqualToString:?])
  {
    objc_storeStrong(&self->_sourceURL, l);
  }
}

- (void)setGeoMapServiceTraitSource:(int)source
{
  if (self->_geoMapServiceTraitSource != source)
  {
    self->_geoMapServiceTraitSource = source;
  }
}

- (void)setOriginalType:(unsigned int)type
{
  if (type == 6)
  {
    v4 = +[MKSystemController sharedInstance];
    isInternalInstall = [v4 isInternalInstall];

    if (isInternalInstall)
    {
      NSLog(@"Migrated a search result automatically to a new original type.");
    }

    *&type = 4;
  }

  v6.receiver = self;
  v6.super_class = SearchResult;
  [(SearchResultRepr *)&v6 setOriginalType:*&type];
}

- (void)setType:(unsigned int)type
{
  if (type == 4)
  {
LABEL_5:
    v6 = [MKMapItem alloc];
    mapItem = [(SearchResult *)self mapItem];
    _geoMapItem = [mapItem _geoMapItem];
    v9 = [v6 initWithGeoMapItemAsCurrentLocation:_geoMapItem];
    [(SearchResult *)self setMapItem:v9];

    *&type = 4;
    goto LABEL_6;
  }

  if (type == 6)
  {
    v4 = +[MKSystemController sharedInstance];
    isInternalInstall = [v4 isInternalInstall];

    if (isInternalInstall)
    {
      NSLog(@"Migrated a search result automatically to a new original type.");
    }

    goto LABEL_5;
  }

LABEL_6:
  v10.receiver = self;
  v10.super_class = SearchResult;
  [(SearchResultRepr *)&v10 setType:*&type];
}

- (SearchResult)initWithType:(unsigned int)type
{
  v3 = *&type;
  v8.receiver = self;
  v8.super_class = SearchResult;
  v4 = [(SearchResult *)&v8 init];
  v5 = v4;
  if (v4)
  {
    [(SearchResult *)v4 _commonInit];
    [(SearchResult *)v5 setType:v3];
    [(SearchResult *)v5 setOriginalType:v3];
    v6 = v5;
  }

  return v5;
}

- (void)updateWithGEOMapItem:(id)item
{
  itemCopy = item;
  mapItem = [(SearchResult *)self mapItem];
  _geoMapItem = [mapItem _geoMapItem];
  _clientAttributes = [_geoMapItem _clientAttributes];

  _clientAttributes2 = [itemCopy _clientAttributes];

  if (_clientAttributes2 || !_clientAttributes)
  {
    v9 = itemCopy;
  }

  else
  {
    v8 = [GEOMapItemStorage mapItemStorageForGEOMapItem:itemCopy clientAttributes:_clientAttributes];

    v9 = v8;
  }

  v15 = v9;
  v10 = [MKMapItem _itemWithGeoMapItem:?];
  [v10 _coordinate];
  [(SearchResult *)self setCoordinate:?];
  [v10 _labelCoordinate];
  [(SearchResult *)self setLabelCoordinate:?];
  place = [v10 place];
  [(SearchResultRepr *)self setPlace:place];

  [(SearchResult *)self setMapItem:v10];
  if ([v10 _hasMUID])
  {
    _muid = [v10 _muid];
  }

  else
  {
    _muid = 0;
  }

  self->_businessID = _muid;
  v13 = ([v10 _hasResolvablePartialInformation] & 1) != 0 || -[SearchResult isPartiallyClientized](self, "isPartiallyClientized");
  [(SearchResultRepr *)self setHasIncompleteMetadata:v13];
  [(SearchResult *)self setLocationOfInterestWithGeoMapItem:v15];
}

- (void)setRouteData:(id)data
{
  selfCopy = self;
  objc_storeStrong(&self->_routeData, data);
  dataCopy = data;
  selfCopy = (selfCopy + 208);
  [dataCopy originCoordinate];
  v7 = v6;
  v9 = v8;

  *selfCopy->super.PBCodable_opaque = v7;
  selfCopy->super._obsoleteCid = v9;
}

- (GEOComposedWaypoint)composedWaypoint
{
  composedWaypoint = self->_composedWaypoint;
  if (!composedWaypoint)
  {
    routeData = [(SearchResult *)self routeData];

    if (routeData)
    {
      v5 = [GEORouteBuilder_PersistentData alloc];
      routeData2 = [(SearchResult *)self routeData];
      v7 = [v5 initWithPersistentData:routeData2];

      buildRoute = [(GEOComposedWaypoint *)v7 buildRoute];
      v9 = [[GEOComposedWaypointToRoute alloc] initWithRoute:buildRoute];
      v10 = self->_composedWaypoint;
      self->_composedWaypoint = v9;
    }

    else
    {
      v11 = [[GEOComposedWaypoint alloc] initWithSearchResult:self];
      v7 = self->_composedWaypoint;
      self->_composedWaypoint = v11;
    }

    composedWaypoint = self->_composedWaypoint;
  }

  return composedWaypoint;
}

- (void)setLocationOfInterestWithGeoMapItem:(id)item
{
  itemCopy = item;
  contactIsMe = [itemCopy contactIsMe];
  v5 = itemCopy;
  if (contactIsMe)
  {
    if ([itemCopy contactAddressType] == 1 || (-[SearchResult address](self, "address"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "addressType"), v6, v7 == 1))
    {
      v8 = 0;
LABEL_5:
      v9 = [MapsLocationOfInterest alloc];
      mapItem = [(SearchResult *)self mapItem];
      v11 = [(MapsLocationOfInterest *)v9 initWithLocationOfInterestType:v8 mapItem:mapItem];
      [(SearchResult *)self setLocationOfInterest:v11];

      v5 = itemCopy;
      goto LABEL_6;
    }

    if ([itemCopy contactAddressType] == 2 || (-[SearchResult address](self, "address"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "addressType"), v12, v13 == 2))
    {
      v8 = 1;
      goto LABEL_5;
    }

    if ([itemCopy contactAddressType] == 3 || (-[SearchResult address](self, "address"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "addressType"), v14, v5 = itemCopy, v15 == 3))
    {
      v8 = 2;
      goto LABEL_5;
    }
  }

LABEL_6:
}

- (SearchResult)initWithComposedWaypoint:(id)waypoint preserveLocationInfo:(BOOL)info
{
  infoCopy = info;
  waypointCopy = waypoint;
  geoMapItem = [waypointCopy geoMapItem];

  if (geoMapItem)
  {
    geoMapItem2 = [waypointCopy geoMapItem];
    v10 = [MKMapItem _itemWithGeoMapItem:geoMapItem2];
    v11 = [(SearchResult *)self initWithMapItem:v10];

    if (!v11)
    {
      goto LABEL_30;
    }

LABEL_10:
    if ([waypointCopy isCurrentLocation])
    {
      v14 = 4;
    }

    else
    {
      if (![waypointCopy isLocationWaypointType])
      {
LABEL_15:
        findMyHandleID = [waypointCopy findMyHandleID];

        if (findMyHandleID)
        {
          findMyHandle = [waypointCopy findMyHandle];
          [(SearchResult *)v11 setFindMyHandle:findMyHandle];

          [(SearchResult *)v11 setLocationType:4];
        }

        addressBookAddress = [waypointCopy addressBookAddress];

        if (addressBookAddress)
        {
          addressBookAddress2 = [waypointCopy addressBookAddress];
          [(SearchResult *)v11 setAddress:addressBookAddress2];

          address = [(SearchResult *)v11 address];
          isMeCard = [address isMeCard];

          if ((isMeCard & 1) == 0)
          {
            address2 = [(SearchResult *)v11 address];
            addressType = [address2 addressType];
            if (addressType - 1 >= 3)
            {
              v23 = 0;
            }

            else
            {
              v23 = addressType;
            }

            [(SearchResult *)v11 setLocationType:v23];
          }
        }

        if (([waypointCopy hasLatLng] & 1) != 0 || objc_msgSend(waypointCopy, "hasLocation"))
        {
          latLng = [waypointCopy latLng];
          v25 = latLng;
          if (latLng)
          {
            latLng2 = latLng;
          }

          else
          {
            location = [waypointCopy location];
            latLng2 = [location latLng];
          }

          [latLng2 lat];
          v29 = v28;
          [latLng2 lng];
          [(SearchResult *)v11 setCoordinate:infoCopy preserveLocationInfo:v29, v30];
        }

        objc_storeStrong(&v11->_composedWaypoint, waypoint);
        v11->_hasExplicitlyProvidedComposedWaypoint = 1;
        goto LABEL_30;
      }

      v14 = 3;
    }

    [(SearchResult *)v11 setType:v14];
    [(SearchResult *)v11 setOriginalType:v14];
    goto LABEL_15;
  }

  if (![waypointCopy isCurrentLocation])
  {
    findMyHandleID2 = [waypointCopy findMyHandleID];
    if (findMyHandleID2)
    {
    }

    else
    {
      addressBookAddress3 = [waypointCopy addressBookAddress];

      if (!addressBookAddress3)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          selfCopy = 0;
          goto LABEL_31;
        }
      }
    }
  }

  v11 = [(SearchResult *)self init];
  if (v11)
  {
    goto LABEL_10;
  }

LABEL_30:
  self = v11;
  selfCopy = self;
LABEL_31:

  return selfCopy;
}

- (SearchResult)initWithParkedCar:(id)car
{
  carCopy = car;
  mapItem = [carCopy mapItem];
  v6 = [(SearchResult *)self initWithMapItem:mapItem];

  if (v6)
  {
    [(SearchResult *)v6 setType:12];
    [(SearchResult *)v6 setOriginalType:12];
    [carCopy coordinate];
    v6->_coordinate.latitude = v7;
    v6->_coordinate.longitude = v8;
  }

  return v6;
}

- (SearchResult)initWithCuratedGuide:(id)guide
{
  guideCopy = guide;
  v6 = [(SearchResult *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_placeCollection, guide);
  }

  return v7;
}

- (SearchResult)initWithSearchSection:(id)section
{
  sectionCopy = section;
  v6 = [(SearchResult *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_searchSection, section);
    [(SearchResult *)v7 setType:11];
    [(SearchResult *)v7 setOriginalType:11];
  }

  return v7;
}

- (SearchResult)initWithRelatedSection:(id)section
{
  sectionCopy = section;
  v6 = [(SearchResult *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_relatedSection, section);
    [(SearchResult *)v7 setType:11];
    [(SearchResult *)v7 setOriginalType:11];
  }

  return v7;
}

- (SearchResult)initWithGEOMapItem:(id)item
{
  itemCopy = item;
  v5 = [[MKMapItem alloc] initWithGeoMapItem:itemCopy isPlaceHolderPlace:0];

  v6 = [(SearchResult *)self initWithMapItem:v5];
  if (v6)
  {
    v7 = v6;
  }

  return v6;
}

- (SearchResult)initWithGEOPlace:(id)place
{
  placeCopy = place;
  v5 = [[MKMapItem alloc] initWithPlace:placeCopy];

  v6 = [(SearchResult *)self initWithMapItem:v5];
  return v6;
}

- (SearchResult)initWithMapItem:(id)item
{
  itemCopy = item;
  v23.receiver = self;
  v23.super_class = SearchResult;
  v5 = [(SearchResult *)&v23 init];
  v6 = v5;
  if (v5)
  {
    [(SearchResult *)v5 _commonInit];
    [itemCopy _coordinate];
    [(SearchResult *)v6 setCoordinate:?];
    [itemCopy _labelCoordinate];
    [(SearchResult *)v6 setLabelCoordinate:?];
    place = [itemCopy place];
    [(SearchResultRepr *)v6 setPlace:place];

    [(SearchResult *)v6 setMapItem:itemCopy];
    if ([itemCopy _hasMUID])
    {
      _muid = [itemCopy _muid];
    }

    else
    {
      _muid = 0;
    }

    v6->_businessID = _muid;
    v9 = ([itemCopy _hasResolvablePartialInformation] & 1) != 0 || -[SearchResult isPartiallyClientized](v6, "isPartiallyClientized");
    [(SearchResultRepr *)v6 setHasIncompleteMetadata:v9];
    [(SearchResult *)v6 setType:0];
    [(SearchResult *)v6 setOriginalType:[(SearchResultRepr *)v6 type]];
    [(SearchResult *)v6 clearAddressCache];
    place2 = [(SearchResultRepr *)v6 place];
    address = [place2 address];
    structuredAddress = [address structuredAddress];

    v13 = 0;
    if (([structuredAddress hasSubThoroughfare] & 1) == 0)
    {
      v13 = [structuredAddress hasFullThoroughfare] ^ 1;
    }

    if (![itemCopy _hasMUID] || objc_msgSend(place2, "hasSpokenName"))
    {
      [(SearchResult *)v6 coordinate];
      v16 = fabs(v14) > 180.0 || v15 < -90.0 || v15 > 90.0;
      if ((v16 | v13))
      {
        if (!v16)
        {
          goto LABEL_18;
        }
      }

      else if ([place2 hasSpokenAddress])
      {
        entryPoints = [place2 entryPoints];
        v18 = [entryPoints count];

        if (v18)
        {
          goto LABEL_18;
        }
      }
    }

    [(SearchResultRepr *)v6 setHasIncompleteNavData:1];
LABEL_18:
    mapItem = [(SearchResult *)v6 mapItem];
    _geoMapItem = [mapItem _geoMapItem];
    [(SearchResult *)v6 setLocationOfInterestWithGeoMapItem:_geoMapItem];

    v21 = v6;
  }

  return v6;
}

- (SearchResult)initWithMapItem:(id)item syncIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [(SearchResult *)self initWithMapItem:item];
  v8 = v7;
  if (v7)
  {
    bookmarkStorage = [(SearchResult *)v7 bookmarkStorage];
    [bookmarkStorage setIdentifier:identifierCopy];

    [(SearchResultRepr *)v8 setSyncIdentifier:identifierCopy];
  }

  return v8;
}

- (SearchResult)initWithSearchResult:(id)result
{
  resultCopy = result;
  v38.receiver = self;
  v38.super_class = SearchResult;
  v5 = [(SearchResult *)&v38 init];
  v6 = v5;
  if (v5)
  {
    [(SearchResult *)v5 _commonInit];
    if ([resultCopy hasTimestamp])
    {
      [resultCopy timestamp];
      [(SearchResultRepr *)v6 setTimestamp:?];
    }

    if ([resultCopy hasResultIndex])
    {
      -[SearchResultRepr setResultIndex:](v6, "setResultIndex:", [resultCopy resultIndex]);
    }

    -[SearchResult setType:](v6, "setType:", [resultCopy type]);
    -[SearchResult setOriginalType:](v6, "setOriginalType:", [resultCopy originalType]);
    -[SearchResultRepr setZoomLevel:](v6, "setZoomLevel:", [resultCopy zoomLevel]);
    [resultCopy coordinate];
    [(SearchResult *)v6 setCoordinate:?];
    [resultCopy labelCoordinate];
    [(SearchResult *)v6 setLabelCoordinate:?];
    place = [resultCopy place];
    v8 = [place copy];

    [(SearchResultRepr *)v6 setPlace:v8];
    if (-[SearchResultRepr type](v6, "type") - 5 <= 0xFFFFFFFD && [resultCopy hasMapsURL])
    {
      mapsURL = [resultCopy mapsURL];
      [(SearchResultRepr *)v6 setMapsURL:mapsURL];
    }

    [(SearchResult *)v6 clearAddressCache];
    -[SearchResult setReverseGeocoded:](v6, "setReverseGeocoded:", [resultCopy isReverseGeocoded]);
    -[SearchResult setOriginatedFromExternal:](v6, "setOriginatedFromExternal:", [resultCopy hasOriginatedFromExternal]);
    -[SearchResult setGeoMapServiceTraitSource:](v6, "setGeoMapServiceTraitSource:", [resultCopy geoMapServiceTraitSource]);
    sourceURL = [resultCopy sourceURL];
    [(SearchResult *)v6 setSourceURL:sourceURL];

    sourceApplication = [resultCopy sourceApplication];
    [(SearchResult *)v6 setSourceApplication:sourceApplication];

    if ([resultCopy hasHasIncompleteNavData])
    {
      -[SearchResultRepr setHasIncompleteNavData:](v6, "setHasIncompleteNavData:", [resultCopy hasIncompleteNavData]);
    }

    if (resultCopy)
    {
      v12 = resultCopy[49];
      if (v12)
      {
        objc_storeStrong(&v6->_address, v12);
      }

      v13 = resultCopy[42];
      if (v13)
      {
        objc_storeStrong(&v6->_autocompletePerson, v13);
      }

      v14 = resultCopy[43];
      if (v14)
      {
        objc_storeStrong(&v6->_findMyHandle, v14);
      }
    }

    locationOfInterest = [resultCopy locationOfInterest];
    [(SearchResult *)v6 setLocationOfInterest:locationOfInterest];

    mapItem = [resultCopy mapItem];
    [(SearchResult *)v6 setMapItem:mapItem];

    syncIdentifier = [resultCopy syncIdentifier];
    if (syncIdentifier)
    {
      syncIdentifier2 = [resultCopy syncIdentifier];
      [(SearchResultRepr *)v6 setSyncIdentifier:syncIdentifier2];
    }

    bookmarkStorage = [resultCopy bookmarkStorage];
    v20 = bookmarkStorage;
    if (bookmarkStorage)
    {
      v21 = [bookmarkStorage copy];
    }

    else
    {
      v21 = objc_alloc_init(MSPBookmarkStorage);
    }

    bookmarkStorage = v6->_bookmarkStorage;
    v6->_bookmarkStorage = v21;

    composedWaypoint = [resultCopy composedWaypoint];
    v24 = [composedWaypoint copy];
    composedWaypoint = v6->_composedWaypoint;
    v6->_composedWaypoint = v24;

    placeInfo = [resultCopy placeInfo];
    v27 = placeInfo;
    if (placeInfo)
    {
      v28 = [placeInfo copy];
      placeInfo = v6->_placeInfo;
      v6->_placeInfo = v28;
    }

    if ([resultCopy hasFloorOrdinal])
    {
      -[SearchResultRepr setFloorOrdinal:](v6, "setFloorOrdinal:", [resultCopy floorOrdinal]);
    }

    v6->_originatedFromBookmarks = [resultCopy hasOriginatedFromBookmarks];
    autocompletePerson = [resultCopy autocompletePerson];
    autocompletePerson = v6->_autocompletePerson;
    v6->_autocompletePerson = autocompletePerson;

    findMyHandle = [resultCopy findMyHandle];
    findMyHandle = v6->_findMyHandle;
    v6->_findMyHandle = findMyHandle;

    routeData = [resultCopy routeData];
    routeData = v6->_routeData;
    v6->_routeData = routeData;

    v36 = v6;
  }

  return v6;
}

- (SearchResult)initWithData:(id)data
{
  v6.receiver = self;
  v6.super_class = SearchResult;
  v3 = [(SearchResult *)&v6 initWithData:data];
  v4 = v3;
  if (v3)
  {
    [(SearchResult *)v3 _updateTypeAndOriginalTypeIfNeeded];
  }

  return v4;
}

- (SearchResult)init
{
  v6.receiver = self;
  v6.super_class = SearchResult;
  v2 = [(SearchResult *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(SearchResult *)v2 _commonInit];
    v4 = v3;
  }

  return v3;
}

- (void)setAutocompletePerson:(id)person
{
  personCopy = person;
  if (self->_autocompletePerson != personCopy)
  {
    v6 = personCopy;
    objc_storeStrong(&self->_autocompletePerson, person);
    personCopy = v6;
  }
}

- (void)setAddress:(id)address
{
  addressCopy = address;
  if (self->_address != addressCopy)
  {
    v6 = addressCopy;
    objc_storeStrong(&self->_address, address);
    addressCopy = v6;
  }
}

- (SearchResult)initWithSearchResultStrippingName:(id)name address:(id)address
{
  v4 = [(SearchResult *)self initWithSearchResult:name address:address];
  v5 = v4;
  if (v4)
  {
    place = [(SearchResultRepr *)v4 place];
    [place setName:0];
  }

  return v5;
}

- (SearchResult)initWithSearchResult:(id)result address:(id)address
{
  addressCopy = address;
  v8 = [(SearchResult *)self initWithSearchResult:result];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_address, address);
  }

  return v9;
}

+ (id)customSearchResultWithCoordinate:(CLLocationCoordinate2D)coordinate floorOrdinal:(int)ordinal
{
  v4 = *&ordinal;
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v7 = [[self alloc] initWithType:3];
  defaultName = [v7 defaultName];
  place = [v7 place];
  [place setName:defaultName];

  [v7 setCoordinate:{latitude, longitude}];
  if (v4 != 0x7FFFFFFF)
  {
    [v7 setFloorOrdinal:v4];
  }

  return v7;
}

+ (id)currentLocationSearchResult
{
  v2 = [[self alloc] initWithType:4];
  defaultName = [v2 defaultName];
  place = [v2 place];
  [place setName:defaultName];

  v5 = +[MKLocationManager sharedLocationManager];
  lastLocation = [v5 lastLocation];

  if (lastLocation)
  {
    [lastLocation coordinate];
    [v2 setCoordinate:?];
  }

  else
  {
    if (qword_10195EF38 != -1)
    {
      dispatch_once(&qword_10195EF38, &stru_101650D68);
    }

    v7 = qword_10195EF30;
    if (os_log_type_enabled(qword_10195EF30, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "No last location available for current location search result", v9, 2u);
    }
  }

  return v2;
}

- (BOOL)usePlaceSummaryInSearch
{
  relatedSection = [(SearchResult *)self relatedSection];
  if (relatedSection)
  {
    v4 = 0;
  }

  else
  {
    searchSection = [(SearchResult *)self searchSection];
    v4 = searchSection == 0;
  }

  placeCollection = [(SearchResult *)self placeCollection];

  personalizedCompoundItem = [(SearchResult *)self personalizedCompoundItem];
  address = [personalizedCompoundItem address];

  mapItem = [(SearchResult *)self mapItem];

  if (address)
  {
    v10 = 1;
  }

  else
  {
    v10 = mapItem == 0;
  }

  v11 = !v10;
  if (placeCollection)
  {
    v11 = 0;
  }

  return v4 && v11;
}

- (BOOL)representsIntermediateStop
{
  v2 = objc_getAssociatedObject(self, &unk_101215B28);
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)setRepresentsIntermediateStop:(BOOL)stop
{
  v4 = [NSNumber numberWithBool:stop];
  objc_setAssociatedObject(self, &unk_101215B28, v4, 1);
}

- (CNContact)contactForSharingToMessages
{
  address = [(SearchResult *)self address];
  contact = [address contact];
  v5 = contact;
  if (contact)
  {
    unknownContact = contact;
  }

  else
  {
    unknownContact = [(SearchResult *)self unknownContact];
  }

  v7 = unknownContact;

  return v7;
}

- (CNContact)unknownContact
{
  mapItem = [(SearchResult *)self mapItem];
  _placeCardContact = [mapItem _placeCardContact];
  if (([mapItem _hasMUID] & 1) == 0)
  {
    if ([(SearchResult *)self isDynamicCurrentLocation])
    {
      infoCardTitle = [(SearchResult *)self infoCardTitle];
    }

    else
    {
      place = [(SearchResultRepr *)self place];
      infoCardTitle = [place name];

      if (![infoCardTitle length])
      {
        infoCardTitle2 = [(SearchResult *)self infoCardTitle];

        infoCardTitle = infoCardTitle2;
      }
    }

    if ([infoCardTitle length])
    {
      v8 = [_placeCardContact mutableCopy];
      [v8 setGivenName:infoCardTitle];

      _placeCardContact = v8;
    }
  }

  return _placeCardContact;
}

- (NSString)autocompletePersonTitle
{
  autocompletePerson = [(SearchResult *)self autocompletePerson];
  title = [autocompletePerson title];

  return title;
}

- (NSString)routableAddress
{
  singleLineAddress = [(SearchResult *)self singleLineAddress];
  originalType = [(SearchResultRepr *)self originalType];
  if (![singleLineAddress length] || originalType - 3 <= 1)
  {
    [(SearchResult *)self coordinate];
    v6 = 0;
    if (fabs(v7) <= 180.0 && v5 >= -90.0 && v5 <= 90.0)
    {
      v6 = [NSString stringWithFormat:@"%f, %f", *&self->_coordinate.latitude, *&self->_coordinate.longitude];
    }

    singleLineAddress = v6;
  }

  return singleLineAddress;
}

+ (void)newStartWaypointSearchResult:(id *)result endWaypointSearchResult:(id *)searchResult forRouteHistoryEntry:(id)entry
{
  entryCopy = entry;
  v20 = entryCopy;
  if (result)
  {
    startWaypoint = [entryCopy startWaypoint];
    if (startWaypoint && (v9 = startWaypoint, [v20 startWaypoint], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isCurrentLocation"), v10, v9, !v11))
    {
      v12 = [SearchResult alloc];
      startWaypoint2 = [v20 startWaypoint];
      *result = [(SearchResult *)v12 initWithComposedWaypoint:startWaypoint2];
    }

    else
    {
      *result = +[SearchResult currentLocationSearchResult];
    }

    entryCopy = v20;
  }

  if (searchResult)
  {
    endWaypoint = [entryCopy endWaypoint];
    if (endWaypoint && (v15 = endWaypoint, [v20 endWaypoint], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isCurrentLocation"), v16, v15, !v17))
    {
      v18 = [SearchResult alloc];
      endWaypoint2 = [v20 endWaypoint];
      *searchResult = [(SearchResult *)v18 initWithComposedWaypoint:endWaypoint2];
    }

    else
    {
      *searchResult = +[SearchResult currentLocationSearchResult];
    }

    entryCopy = v20;
  }
}

+ (id)carSearchResultFromDestination:(id)destination
{
  destinationCopy = destination;
  if (objc_opt_isKindOfClass())
  {
    v5 = destinationCopy;
    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_10:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = destinationCopy;
      mkMapItem = [v6 mkMapItem];

      if (mkMapItem)
      {
        v9 = [[MapsLocationOfInterest alloc] initWithMapsFavoriteItem:v6];
        goto LABEL_13;
      }
    }

    v6 = [MKMapItem carMapItemFromDestination:destinationCopy];
    if (v6)
    {
      v5 = [[self alloc] initWithMapItem:v6];
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_19;
  }

  v6 = destinationCopy;
  if ([v6 type] == 24)
  {
    findMyWaypoint = [v6 findMyWaypoint];
    if (!findMyWaypoint)
    {
      v14 = sub_10006D178();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v17 = 136315906;
        v18 = "+[SearchResult(CarHelpers) carSearchResultFromDestination:]";
        v19 = 2080;
        v20 = "CarDisplayController.m";
        v21 = 1024;
        v22 = 2269;
        v23 = 2080;
        v24 = "waypoint != nil";
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v17, 0x26u);
      }

      if (sub_100E03634())
      {
        v15 = sub_10006D178();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v16 = +[NSThread callStackSymbols];
          v17 = 138412290;
          v18 = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%@", &v17, 0xCu);
        }
      }
    }

    v5 = [[SearchResult alloc] initWithComposedWaypoint:findMyWaypoint];
    goto LABEL_14;
  }

  mKMapItem = [v6 MKMapItem];

  if (!mKMapItem)
  {

    goto LABEL_10;
  }

  v9 = [[MapsLocationOfInterest alloc] initWithMapsSuggestionEntry:v6];
LABEL_13:
  findMyWaypoint = v9;
  v11 = [SearchResult alloc];
  mapItem = [findMyWaypoint mapItem];
  v5 = [(SearchResult *)v11 initWithMapItem:mapItem];

  [(SearchResult *)v5 setLocationOfInterest:findMyWaypoint];
LABEL_14:

LABEL_19:
LABEL_20:

  return v5;
}

- (NSString)_maps_diffableDataSourceIdentifier
{
  type = [(SearchResultRepr *)self type];
  _maps_diffableDataSourceIdentifier = 0;
  if (type > 10)
  {
    if (type == 11)
    {
      _maps_diffableDataSourceIdentifier = @"Section";
      goto LABEL_14;
    }

    if (type == 12)
    {
      goto LABEL_12;
    }

    if (type != 13)
    {
      goto LABEL_14;
    }

LABEL_9:
    if (MapsFeature_IsEnabled_SearchAndDiscovery())
    {
      placeCollection = [(SearchResult *)self placeCollection];

      if (placeCollection)
      {
        placeCollection2 = [(SearchResult *)self placeCollection];
        collectionIdentifier = [placeCollection2 collectionIdentifier];
        _maps_diffableDataSourceIdentifier = [NSString stringWithFormat:@"CuratedGuide-%@", collectionIdentifier];

LABEL_13:
        goto LABEL_14;
      }
    }

LABEL_12:
    placeCollection2 = [(SearchResult *)self mapItem];
    _maps_diffableDataSourceIdentifier = [placeCollection2 _maps_diffableDataSourceIdentifier];
    goto LABEL_13;
  }

  switch(type)
  {
    case 0:
      goto LABEL_9;
    case 3:
      _maps_diffableDataSourceIdentifier = @"DroppedPin";
      break;
    case 5:
      goto LABEL_12;
  }

LABEL_14:

  return _maps_diffableDataSourceIdentifier;
}

- (Flyover)_flyover
{
  mapItem = [(SearchResult *)self mapItem];
  _flyover = [mapItem _flyover];
  if (_flyover)
  {
    title = [(SearchResult *)self title];
    v6 = [mapItem _flyoverAnnouncementMessageWithDefaultTitle:title];

    v7 = v6;
    v8 = +[NSUserDefaults standardUserDefaults];
    v9 = [v8 objectForKey:@"FlyoverSearchNotificationKey"];
    v10 = [v9 mutableCopy];

    if (!v10)
    {
      v10 = objc_alloc_init(NSMutableDictionary);
    }

    v11 = [v10 objectForKeyedSubscript:v7];
    unsignedIntegerValue = [v11 unsignedIntegerValue];

    if (unsignedIntegerValue >= GEOConfigGetInteger())
    {
      v15 = 0;
    }

    else
    {
      v13 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue + 1];
      [v10 setValue:v13 forKey:v7];

      v14 = +[NSUserDefaults standardUserDefaults];
      [v14 setObject:v10 forKey:@"FlyoverSearchNotificationKey"];

      v15 = [[Flyover alloc] initWithAnnouncement:v7 mapItem:mapItem animationID:0];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)isFindMyPerson
{
  autocompletePerson = [(SearchResult *)self autocompletePerson];
  findMyHandle = [(SearchResult *)self findMyHandle];
  handle = [autocompletePerson handle];
  v6 = (handle | findMyHandle) != 0;

  return v6;
}

@end