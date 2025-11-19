@interface SearchResult
+ (id)carSearchResultFromDestination:(id)a3;
+ (id)currentLocationSearchResult;
+ (id)customSearchResultWithCoordinate:(CLLocationCoordinate2D)a3 floorOrdinal:(int)a4;
+ (id)searchResultFromFavoriteItem:(id)a3;
+ (void)newStartWaypointSearchResult:(id *)a3 endWaypointSearchResult:(id *)a4 forRouteHistoryEntry:(id)a5;
- (BOOL)_hasStructuredAddress;
- (BOOL)_hasUID;
- (BOOL)behavesAsAtom;
- (BOOL)isEqualToSearchResult:(id)a3 forPurpose:(int64_t)a4;
- (BOOL)isFindMyPerson;
- (BOOL)isFrequentLocation;
- (BOOL)isHomeOrWork;
- (BOOL)isPartiallyClientized;
- (BOOL)needsReverseGeocodeCheck;
- (BOOL)readFrom:(id)a3;
- (BOOL)representsIntermediateStop;
- (BOOL)updateFromBookmarkRepresentation:(id)a3;
- (BOOL)updateFromSyncData:(id)a3;
- (BOOL)usePlaceSummaryInSearch;
- (CLLocationCoordinate2D)_offsetCoordinate:(double)a3;
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
- (SearchResult)initWithBookmarkRepresentation:(id)a3;
- (SearchResult)initWithBookmarkStorage:(id)a3;
- (SearchResult)initWithComposedWaypoint:(id)a3 preserveLocationInfo:(BOOL)a4;
- (SearchResult)initWithCuratedGuide:(id)a3;
- (SearchResult)initWithData:(id)a3;
- (SearchResult)initWithDroppedPin:(id)a3;
- (SearchResult)initWithGEOMapItem:(id)a3;
- (SearchResult)initWithGEOPlace:(id)a3;
- (SearchResult)initWithMapItem:(id)a3;
- (SearchResult)initWithMapItem:(id)a3 searchResultType:(unsigned int)a4 addressBookAddress:(id)a5 retainedSearchMetadata:(id)a6 resultIndex:(int)a7;
- (SearchResult)initWithMapItem:(id)a3 syncIdentifier:(id)a4;
- (SearchResult)initWithParkedCar:(id)a3;
- (SearchResult)initWithRelatedSection:(id)a3;
- (SearchResult)initWithSearchResult:(id)a3;
- (SearchResult)initWithSearchResult:(id)a3 address:(id)a4;
- (SearchResult)initWithSearchResultStrippingName:(id)a3 address:(id)a4;
- (SearchResult)initWithSearchSection:(id)a3;
- (SearchResult)initWithType:(unsigned int)a3;
- (id)_formattedAddress;
- (id)_formattedAddressMultiline;
- (id)_mapsURLfromMapView:(id)a3 includingSensitiveFields:(BOOL)a4;
- (id)_maps_externalDeviceDictionaryRepresentation;
- (id)bookmarkRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
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
- (void)setAddress:(id)a3;
- (void)setAutocompletePerson:(id)a3;
- (void)setBookmarkTitle:(id)a3;
- (void)setCoordinate:(CLLocationCoordinate2D)a3;
- (void)setCoordinate:(CLLocationCoordinate2D)a3 preserveLocationInfo:(BOOL)a4;
- (void)setGeoMapServiceTraitSource:(int)a3;
- (void)setLocationOfInterestWithGeoMapItem:(id)a3;
- (void)setMapItem:(id)a3;
- (void)setOriginalType:(unsigned int)a3;
- (void)setRepresentsIntermediateStop:(BOOL)a3;
- (void)setRouteData:(id)a3;
- (void)setSourceApplication:(id)a3;
- (void)setSourceURL:(id)a3;
- (void)setType:(unsigned int)a3;
- (void)tryUpdatingCurrentLocationSearchResultWithCompletion:(id)a3;
- (void)updateModel:(id)a3;
- (void)updateWithGEOMapItem:(id)a3;
- (void)updateWithReverseGeocodedMapItem:(id)a3;
- (void)writeTo:(id)a3;
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
  v3 = [(SearchResultRepr *)self place];
  [v3 setAddress:0];

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
  v7 = [(SearchResultRepr *)self place];
  [v7 setMapRegion:v9];

  v8 = [(SearchResultRepr *)self place];
  [v8 setCenterCoordinate:{v4, v6}];
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
  v3 = [(SearchResultRepr *)self originalType];

  [(SearchResult *)self setOriginalType:v3];
}

- (MKMapItem)mapItem
{
  mapItem = self->_mapItem;
  if (!mapItem)
  {
    v4 = [MKMapItem alloc];
    v5 = [(SearchResultRepr *)self place];
    v6 = [v4 initWithPlace:v5];
    v7 = self->_mapItem;
    self->_mapItem = v6;

    mapItem = self->_mapItem;
  }

  return mapItem;
}

- (NSString)defaultName
{
  v2 = [(SearchResultRepr *)self originalType];
  if (v2 == 3)
  {
    v5 = +[MKAnnotationView droppedPinTitle];
  }

  else if (v2 == 4)
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

  v6 = [(SearchResult *)self mapItem];
  v7 = [v6 _geoMapItemStorageForPersistence];

  v8 = objc_alloc_init(GEOMapItemStorage);
  v9 = [(MSPBookmarkStorage *)v3 placeBookmark];
  [v9 setMapItemStorage:v8];

  v10 = [v7 placeData];

  if (v10)
  {
    v11 = [v7 placeData];
    v12 = [(MSPBookmarkStorage *)v3 placeBookmark];
    v13 = [v12 mapItemStorage];
    [v13 setPlaceData:v11];
LABEL_7:

    goto LABEL_8;
  }

  v14 = [v7 place];

  if (v14)
  {
    v11 = [v7 place];
    v12 = [(MSPBookmarkStorage *)v3 placeBookmark];
    v13 = [v12 mapItemStorage];
    [v13 setPlace:v11];
    goto LABEL_7;
  }

LABEL_8:
  +[NSDate timeIntervalSinceReferenceDate];
  [(MSPBookmarkStorage *)v3 setTimestamp:?];
  v15 = +[NSUUID UUID];
  v16 = [v15 UUIDString];
  [(MSPBookmarkStorage *)v3 setIdentifier:v16];

  if ([(SearchResultRepr *)self originalType]== 3)
  {
    v17 = [(MSPBookmarkStorage *)v3 placeBookmark];
    [v17 setOrigin:1];

    [(SearchResult *)self coordinate];
    v20 = [[GEOLatLng alloc] initWithLatitude:v18 longitude:v19];
    v21 = [(MSPBookmarkStorage *)v3 placeBookmark];
    [v21 setDroppedPinCoordinate:v20];

    if ([(SearchResultRepr *)self hasFloorOrdinal])
    {
      v22 = [(SearchResultRepr *)self floorOrdinal];
      v23 = [(MSPBookmarkStorage *)v3 placeBookmark];
      [v23 setDroppedPinFloorOrdinal:v22];
    }
  }

  v24 = [(SearchResult *)self title];
  v25 = [(MSPBookmarkStorage *)v3 placeBookmark];
  [v25 setTitle:v24];

  objc_storeStrong(&self->_bookmarkStorage, v3);
LABEL_13:

  return v3;
}

- (SearchResult)initWithBookmarkStorage:(id)a3
{
  v5 = a3;
  if ([v5 type] == 1)
  {
    v6 = [(SearchResult *)self init];
    if (v6)
    {
      v7 = [v5 placeBookmark];
      v8 = [v7 mapItemStorage];
      [(SearchResult *)v6 updateWithGEOMapItem:v8];

      objc_storeStrong(&v6->_bookmarkStorage, a3);
      v9 = [v5 identifier];
      [(SearchResultRepr *)v6 setSyncIdentifier:v9];

      [v5 timestamp];
      [(SearchResultRepr *)v6 setTimestamp:?];
      v10 = [v5 placeBookmark];
      LODWORD(v7) = [v10 origin];

      if (v7 == 1)
      {
        [(SearchResult *)v6 setOriginalType:3];
        v11 = [v5 placeBookmark];
        v12 = [v11 hasDroppedPinCoordinate];

        if (v12)
        {
          v13 = [v5 placeBookmark];
          v14 = [v13 droppedPinCoordinate];
          [v14 coordinate];
          CLLocationCoordinate2DFromGEOLocationCoordinate2D();
          [(SearchResult *)v6 setCoordinate:?];
        }
      }

      [(SearchResult *)v6 markAsOriginatingFromBookmarks];
    }

    self = v6;
    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (SearchResult)initWithDroppedPin:(id)a3
{
  v4 = a3;
  if ([v4 hasLatLng])
  {
    v5 = [v4 latLng];
    [v5 lat];
    v7 = v6;
    v8 = [v4 latLng];
    [v8 lng];
    v10 = v9;

    if (self)
    {
      self = [(SearchResult *)self initWithType:3];
      v11 = [(SearchResult *)self defaultName];
      v12 = [(SearchResultRepr *)self place];
      [v12 setName:v11];

      [(SearchResult *)self setCoordinate:v7, v10];
      [v4 timestamp];
      [(SearchResultRepr *)self setTimestamp:?];
      if ([v4 hasFloorOrdinal])
      {
        -[SearchResultRepr setFloorOrdinal:](self, "setFloorOrdinal:", [v4 floorOrdinal]);
      }
    }

    self = self;
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (CLLocationCoordinate2D)_offsetCoordinate:(double)a3
{
  [(SearchResult *)self coordinate];
  v5 = MKMapPointForCoordinate(v11);
  x = v5.x;

  v6 = (v5.y * a3 + -25.0) / a3;
  v9 = MKCoordinateForMapPoint(*&x);
  longitude = v9.longitude;
  latitude = v9.latitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (void)updateModel:(id)a3
{
  v16 = a3;
  v4 = [(SearchResult *)self composedWaypoint];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(SearchResult *)self composedWaypoint];
    v7 = [v6 route];
    v8 = [v7 userProvidedName];
    if ([v8 length])
    {
      [v7 userProvidedName];
    }

    else
    {
      [v7 name];
    }
    v9 = ;
    [v16 setFirstLine:v9];

    v10 = [v7 distanceAndElevationString];
    [v16 setSecondLine:v10];

    v11 = [[SearchResult alloc] initWithComposedWaypoint:v6];
    v12 = [(SearchResult *)v11 mapItem];
    [v16 setMapItem:v12];
  }

  else
  {
    v6 = [(SearchResult *)self mapItem];
    [v6 updateModel:v16];
  }

  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = [NSString stringWithFormat:@"[%@]", v14];
  [v16 setDebugSubtitle:v15];
}

- (id)_maps_externalDeviceDictionaryRepresentation
{
  v2 = [(SearchResult *)self mapItem];
  v3 = [v2 _maps_externalDeviceDictionaryRepresentation];

  return v3;
}

- (unint64_t)customizedLocationType
{
  if (![(SearchResult *)self isFindMyPerson])
  {
    if ([(SearchResultRepr *)self type]== 12)
    {
      return 5;
    }

    v4 = [(SearchResult *)self address];
    v5 = [(SearchResult *)self locationOfInterest];
    if (v4 | v5)
    {
      if ([v4 addressType] != 1 && (!v5 || objc_msgSend(v5, "type")))
      {
        if ([v4 addressType] == 2 || v5 && objc_msgSend(v5, "type") == 1)
        {
          v3 = 2;
        }

        else if ([v4 addressType] == 3 || v5 && objc_msgSend(v5, "type") == 2)
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
      v6 = [(SearchResult *)self mapItem];
      v7 = [v6 _maps_isHome];

      if ((v7 & 1) == 0)
      {
        v8 = [(SearchResult *)self mapItem];
        v9 = [v8 _maps_isWork];

        if (v9)
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

+ (id)searchResultFromFavoriteItem:(id)a3
{
  v3 = a3;
  v4 = [[MapsLocationOfInterest alloc] initWithMapsFavoriteItem:v3];

  if (v4)
  {
    v5 = [SearchResult alloc];
    v6 = [(MapsLocationOfInterest *)v4 mapItem];
    v7 = [(SearchResult *)v5 initWithMapItem:v6];

    [(SearchResult *)v7 setLocationOfInterest:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)updateWithReverseGeocodedMapItem:(id)a3
{
  v15 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if ([(SearchResult *)v4 isDynamicCurrentLocation])
  {
    v5 = [(SearchResult *)v4 defaultName];
  }

  else
  {
    v6 = [(SearchResult *)v4 mapItem];
    v5 = [v6 name];
  }

  v7 = [(SearchResult *)v4 mapItem];
  [v7 _coordinate];
  v9 = v8;
  v11 = v10;

  [(SearchResultRepr *)v4 setHasIncompleteNavData:0];
  [(SearchResultRepr *)v4 setHasIncompleteMetadata:0];
  [(SearchResult *)v4 setMapItem:v15];
  v12 = [v15 place];
  [(SearchResultRepr *)v4 setPlace:v12];

  v13 = [(SearchResult *)v4 mapItem];
  [v13 setName:v5];

  v14 = [(SearchResultRepr *)v4 place];
  [v14 setCenterCoordinate:{v9, v11}];

  [(SearchResult *)v4 setReverseGeocoded:1];
  [(SearchResult *)v4 clearAddressCache];

  objc_sync_exit(v4);
}

- (SearchResult)initWithMapItem:(id)a3 searchResultType:(unsigned int)a4 addressBookAddress:(id)a5 retainedSearchMetadata:(id)a6 resultIndex:(int)a7
{
  v7 = *&a7;
  v10 = *&a4;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = [(SearchResult *)self initWithMapItem:v12];
  v16 = v15;
  if (v15)
  {
    if (v13)
    {
      [(SearchResult *)v15 setAddress:v13];
      v17 = [(SearchResult *)v16 address];
      v18 = [v17 compositeName];
      [v12 setName:v18];
    }

    [(SearchResult *)v16 setType:v10];
    [(SearchResult *)v16 setOriginalType:v10];
    [(SearchResult *)v16 setRetainedSearchMetadata:v14];
    if ((v7 & 0x80000000) == 0)
    {
      [(SearchResultRepr *)v16 setResultIndex:v7];
    }

    [(SearchResultRepr *)v16 setHasIncompleteNavData:0];
    v19 = [(SearchResult *)v16 mapItem];
    v20 = [v19 _geoMapItem];
    [(SearchResult *)v16 setLocationOfInterestWithGeoMapItem:v20];

    v21 = v16;
  }

  return v16;
}

- (void)tryUpdatingCurrentLocationSearchResultWithCompletion:(id)a3
{
  v4 = a3;
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
    v10 = v4;
    [v8 submitWithHandler:v9 networkActivity:0];

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

- (MKMapItemIdentifier)identifier
{
  v3 = [MKMapItemIdentifier alloc];
  v4 = [(SearchResult *)self businessID];
  v5 = [(SearchResult *)self mapItem];
  v6 = [v5 _resultProviderID];
  [(SearchResult *)self coordinate];
  v7 = [v3 initWithMUID:v4 resultProviderID:v6 coordinate:?];

  return v7;
}

- (NSString)findMyHandleName
{
  v2 = [(SearchResult *)self findMyHandle];
  v3 = [v2 displayName];

  return v3;
}

- (int)localSearchProviderID
{
  v2 = [(SearchResultRepr *)self place];
  v3 = [v2 localSearchProviderID];

  return v3;
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

  v4 = [(SearchResult *)self address];

  if (v4)
  {
    v5 = [(SearchResult *)self address];
    v6 = [v5 addressIdentifier];
    v7 = +[CNContact _mapkit_sharedLocationContactIdentifer];
    v8 = [v6 isEqualToString:v7];

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

  v12 = [(SearchResultRepr *)self originalType];
  result = 0;
  if (v12 <= 0xD)
  {
    if (((1 << v12) & 0x3821) != 0)
    {
      return 4;
    }

    if (v12 == 3)
    {
      return 1;
    }

    if (v12 == 9)
    {
      v13 = [(SearchResult *)self mapItem];
      v14 = [v13 _isMapItemTypeBrand];

      v9 = v14 == 0;
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
  v4 = [(SearchResult *)self bookmarkTitle];

  if (v4)
  {
    v5 = [(SearchResult *)self bookmarkTitle];
    [(SyncedBookmarkRepr *)v3 setTitle:v5];
  }

  v6 = [(SearchResult *)self singleLineAddress];

  if (v6)
  {
    v7 = [(SearchResult *)self singleLineAddress];
    [(SyncedBookmarkRepr *)v3 setSingleLineAddress:v7];
  }

  v8 = [(SearchResult *)self mapItem];
  v9 = [v8 _resultProviderID];

  if (v9)
  {
    v10 = [(SearchResult *)self mapItem];
    -[SyncedBookmarkRepr setProviderID:](v3, "setProviderID:", [v10 _resultProviderID]);
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
  v2 = [(SearchResult *)self mapItem];
  v3 = [v2 _geoMapItem];
  v4 = [v3 _clientAttributes];
  v5 = [v4 routineAttributes];
  v6 = [v5 loiIdentifier];
  v7 = v6 != 0;

  return v7;
}

- (PersonalizedItemKey)personalizedItemKey
{
  v3 = [PersonalizedMapItemKey alloc];
  v4 = [(SearchResult *)self mapItem];
  v5 = [(PersonalizedMapItemKey *)v3 initWithMapItem:v4];

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
  v2 = [(SearchResultRepr *)self place];
  v3 = [v2 address];
  v4 = [v3 structuredAddress];
  v5 = [v4 locality];

  return v5;
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
  v2 = [(SearchResultRepr *)self place];
  v3 = [v2 address];
  v4 = [v3 structuredAddress];
  v5 = [v4 hasThoroughfare];

  return v5;
}

- (NSString)subtitle
{
  v3 = [(SearchResultRepr *)self type];
  if (v3 == 3)
  {
    if (![(SearchResult *)self isReverseGeocoded])
    {
      goto LABEL_10;
    }

    v5 = [(SearchResult *)self singleLineAddress];
    if ([v5 length])
    {
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  if (v3 == 4 && [(SearchResult *)self isReverseGeocoded])
  {
    v4 = [(SearchResult *)self mapItem];
    v5 = [v4 _addressFormattedAsShortenedAddress];

    if ([v5 length])
    {
      goto LABEL_17;
    }

    v6 = [(SearchResult *)self singleLineAddress];
    if ([v6 length])
    {
      goto LABEL_16;
    }

LABEL_9:
  }

LABEL_10:
  v7 = [(SearchResultRepr *)self place];
  v5 = [v7 firstBusiness];

  if ([v5 isClosed])
  {
    v8 = @"Permanently Closed";
  }

  else
  {
    v9 = [(SearchResultRepr *)self place];
    v10 = [v9 addressGeocodeAccuracy];

    if (v10 != 2)
    {
      v6 = 0;
      goto LABEL_16;
    }

    v8 = @"Approximate Location";
  }

  v11 = +[NSBundle mainBundle];
  v6 = [v11 localizedStringForKey:v8 value:@"localized string not found" table:0];

LABEL_16:
  v5 = v6;
LABEL_17:

  return v5;
}

- (NSString)title
{
  v3 = [(SearchResult *)self name];
  if ([v3 length])
  {
    v4 = [(SearchResult *)self defaultName];
    v5 = [v3 isEqualToString:v4] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(SearchResultRepr *)self type];
  if ((v5 & 1) != 0 || v6 - 3 <= 1)
  {
    v7 = v3;
  }

  else
  {
    v7 = [(SearchResult *)self locationTitle];
  }

  v8 = v7;

  return v8;
}

- (NSString)bookmarkTitle
{
  v3 = [(MSPBookmarkStorage *)self->_bookmarkStorage placeBookmark];
  v4 = [v3 hasTitle];

  if (v4)
  {
    v5 = [(MSPBookmarkStorage *)self->_bookmarkStorage placeBookmark];
    v6 = [v5 title];
  }

  else
  {
    v6 = [(SearchResult *)self name];
  }

  return v6;
}

- (void)setBookmarkTitle:(id)a3
{
  v4 = a3;
  v6 = [(SearchResult *)self bookmarkStorage];
  v5 = [v6 placeBookmark];
  [v5 setTitle:v4];
}

- (NSString)name
{
  v3 = [(SearchResult *)self mapItem];
  v4 = [v3 _geoMapItem];

  if ([v4 contactIsMe])
  {
    v5 = [v4 contactAddressType];
    switch(v5)
    {
      case 3u:
        v6 = +[NSBundle mainBundle];
        v7 = v6;
        v8 = @"School";
        goto LABEL_15;
      case 2u:
        v6 = +[NSBundle mainBundle];
        v7 = v6;
        v8 = @"Work";
        goto LABEL_15;
      case 1u:
        v6 = +[NSBundle mainBundle];
        v7 = v6;
        v8 = @"Home";
LABEL_15:
        v12 = [v6 localizedStringForKey:v8 value:@"localized string not found" table:0];
        goto LABEL_16;
    }
  }

  routeData = self->_routeData;
  if (routeData)
  {
    v7 = [(GEOComposedGeometryRoutePersistentData *)routeData userProvidedName];
    v10 = [v7 length];
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

  v13 = [(SearchResult *)self autocompletePersonTitle];
  if (v13)
  {
    v12 = v13;
    v7 = v12;
LABEL_16:
    v14 = v12;
    goto LABEL_17;
  }

  if (![(SearchResult *)self isAddressBookResult]|| ([(AddressBookAddress *)self->_address compositeName], (v16 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v17 = [(SearchResult *)self findMyHandleName];
    v18 = v17;
    if (v17)
    {
      v14 = v17;
LABEL_32:

      goto LABEL_33;
    }

    if (-[SearchResult hasOriginatedFromBookmarks](self, "hasOriginatedFromBookmarks") && (-[MSPBookmarkStorage placeBookmark](self->_bookmarkStorage, "placeBookmark"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 hasTitle], v19, v20))
    {
      v21 = [(MSPBookmarkStorage *)self->_bookmarkStorage placeBookmark];
      v22 = [v21 title];
    }

    else
    {
      v23 = [(SearchResult *)self locationOfInterest];
      v24 = [v23 name];

      if (!v24)
      {
        v25 = [(SearchResult *)self mapItem];
        v14 = [v25 name];

        v26 = [(SearchResult *)self mapItem];
        LODWORD(v25) = [v26 isCurrentLocation];

        if (!v25)
        {
          goto LABEL_32;
        }

        v21 = +[MKLocationManager sharedLocationManager];
        v27 = [v21 isLocationServicesApproved];
        if ([v21 isAuthorizedForPreciseLocation])
        {
          v28 = MKLocalizedStringForApproximateLocation();
          v29 = [v14 isEqualToString:v28];

          if (!v29)
          {
            goto LABEL_31;
          }

          v30 = MKLocalizedStringForCurrentLocation();
        }

        else
        {
          if (!v27)
          {
            goto LABEL_31;
          }

          v31 = MKLocalizedStringForCurrentLocation();
          v32 = [v14 isEqualToString:v31];

          if (!v32)
          {
            goto LABEL_31;
          }

          v30 = MKLocalizedStringForApproximateLocation();
        }

        v33 = v30;

        v14 = v33;
        goto LABEL_31;
      }

      v21 = [(SearchResult *)self locationOfInterest];
      v22 = [v21 name];
    }

    v14 = v22;
LABEL_31:

    goto LABEL_32;
  }

  v14 = v16;
LABEL_33:
  v7 = 0;
LABEL_17:

  return v14;
}

- (BOOL)isHomeOrWork
{
  v3 = [(SearchResult *)self locationOfInterest];
  if (!v3)
  {
    goto LABEL_13;
  }

  v4 = v3;
  v5 = [(SearchResult *)self locationOfInterest];
  if (![v5 type])
  {

    v10 = 1;
    goto LABEL_9;
  }

  v6 = [(SearchResult *)self locationOfInterest];
  v7 = [v6 type];

  if (v7 != 1)
  {
LABEL_13:
    if ([(SearchResult *)self isAddressBookResult])
    {
      v8 = [(SearchResult *)self address];
      v9 = [v8 isMeCard];

      if (v9)
      {
        return 1;
      }
    }

    v11 = [(SearchResult *)self mapItem];
    v4 = [v11 _geoMapItem];

    v10 = [v4 contactIsMe];
LABEL_9:

    return v10;
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
  v3 = [(SearchResult *)self singleLineAddress];
  if ([v3 length])
  {
    v4 = v3;
LABEL_5:
    v7 = v4;
    goto LABEL_6;
  }

  v5 = [(SearchResultRepr *)self place];
  v6 = [v5 isDisputed];

  if (v6)
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
    v3 = [(SearchResultRepr *)self type];
    if (v3 == 4)
    {
      appearance = 4;
    }

    else
    {
      appearance = 1;
    }

    if (v3 == 3)
    {
      return 3;
    }
  }

  return appearance;
}

- (void)setMapItem:(id)a3
{
  v5 = a3;
  if (self->_mapItem != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_mapItem, a3);
    v6 = objc_opt_respondsToSelector();
    v5 = v9;
    if (v6)
    {
      v7 = [(MKMapItem *)self->_mapItem personalizedCompoundItem];
      personalizedCompoundItem = self->_personalizedCompoundItem;
      self->_personalizedCompoundItem = v7;

      v5 = v9;
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
    v5 = [(SearchResult *)self mapItem];
    [v5 _labelCoordinate];
    p_labelCoordinate->latitude = v6;
    p_labelCoordinate->longitude = v7;

    latitude = p_labelCoordinate->latitude;
    longitude = p_labelCoordinate->longitude;
  }

  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (void)setCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  p_coordinate = &self->_coordinate;
  if (vabdd_f64(a3.latitude, self->_coordinate.latitude) >= 0.00000000999999994 || vabdd_f64(a3.longitude, self->_coordinate.longitude) >= 0.00000000999999994)
  {
    [(SearchResult *)self clearLocationInformation];
    p_coordinate->latitude = latitude;
    p_coordinate->longitude = longitude;

    [(SearchResult *)self _syncGEOPlaceWithCoordinate];
  }
}

- (void)setCoordinate:(CLLocationCoordinate2D)a3 preserveLocationInfo:(BOOL)a4
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  p_coordinate = &self->_coordinate;
  if (vabdd_f64(a3.latitude, self->_coordinate.latitude) >= 0.00000000999999994 || vabdd_f64(a3.longitude, self->_coordinate.longitude) >= 0.00000000999999994)
  {
    if (!a4)
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

  v6 = [(SearchResult *)self name];
  if ([v6 length])
  {
    [v5 appendFormat:@" %@", v6];
  }

  v7 = [(SearchResult *)self mapItem];
  v8 = [v7 _addressFormattedAsSinglelineAddress];

  if ([v8 length])
  {
    [v5 appendFormat:@" %@", v8];
  }

  v9 = [(SearchResultRepr *)self place];
  v10 = [v9 addressGeocodeAccuracy];

  if (v10 == 2)
  {
    [v5 appendString:@" -- Inexact"];
  }

  v11 = [(SearchResult *)self title];
  [v5 appendFormat:@"\ntitle: %@", v11];

  v12 = [(SearchResult *)self subtitle];
  [v5 appendFormat:@"\nsubtitle: %@", v12];

  [(SearchResultRepr *)self hasIncompleteMetadata];
  v13 = NSStringFromBOOL();
  [v5 appendFormat:@"\npartiallyClientized: %@", v13];

  return v5;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = [(SearchResultRepr *)self place];
  v5 = [v4 name];
  v6 = [(SearchResult *)self singleLineAddress];
  [(SearchResultRepr *)self hasIncompleteMetadata];
  v7 = NSStringFromBOOL();
  v8 = [NSString stringWithFormat:@"<%@: %p> %@ %@ - (partiallyClientized: %@)", v3, self, v5, v6, v7];

  return v8;
}

- (id)_mapsURLfromMapView:(id)a3 includingSensitiveFields:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v31.receiver = self;
  v31.super_class = SearchResult;
  if ([(SearchResultRepr *)&v31 hasMapsURL])
  {
    v30.receiver = self;
    v30.super_class = SearchResult;
    v7 = [(SearchResultRepr *)&v30 mapsURL];
  }

  else
  {
    v8 = [(SearchResult *)self mapItem];
    v9 = [v8 _fullSharingURLIncludingSensitiveFields:v4];

    if ([(SearchResultRepr *)self type]== 3 || [(SearchResult *)self isReverseGeocoded])
    {
      v10 = [NSURLComponents componentsWithURL:v9 resolvingAgainstBaseURL:0];
      v11 = [v10 queryItems];
      v12 = [v11 mutableCopy];

      v26 = 0;
      v27 = &v26;
      v28 = 0x2020000000;
      v29 = 0;
      v13 = [v10 queryItems];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100CEDAE4;
      v23[3] = &unk_101650D48;
      v14 = v12;
      v24 = v14;
      v25 = &v26;
      [v13 enumerateObjectsUsingBlock:v23];

      if (*(v27 + 24) == 1)
      {
        v15 = [v14 copy];
        [v10 setQueryItems:v15];

        v16 = [v10 URL];

        v9 = v16;
      }

      _Block_object_dispose(&v26, 8);
    }

    v7 = [v9 absoluteString];
    if (v6)
    {
      IsEnabled_URLUnification = MapsFeature_IsEnabled_URLUnification();
      v18 = @"&t=%@";
      if (IsEnabled_URLUnification)
      {
        v18 = @"&map=%@";
      }

      v19 = v18;
      v20 = +[MKURLSerializer stringForMapType:](MKURLSerializer, "stringForMapType:", [v6 mapType]);
      v21 = [v7 stringByAppendingFormat:v19, v20];

      v7 = v21;
    }
  }

  return v7;
}

- (unint64_t)businessID
{
  if (self->_businessID)
  {
    return self->_businessID;
  }

  v3 = [(SearchResult *)self mapItem];
  v4 = [v3 _muid];

  return v4;
}

- (BOOL)_hasUID
{
  if (self->_businessID)
  {
    return 1;
  }

  v3 = [(SearchResult *)self mapItem];
  v4 = [v3 _hasMUID];

  return v4;
}

- (id)_formattedAddressMultiline
{
  formattedAddressMultiline = self->_formattedAddressMultiline;
  if (!formattedAddressMultiline)
  {
    v4 = [(SearchResult *)self mapItem];
    v5 = [v4 _addressFormattedAsMultilineAddress];
    v6 = self->_formattedAddressMultiline;
    self->_formattedAddressMultiline = v5;

    formattedAddressMultiline = self->_formattedAddressMultiline;
  }

  return formattedAddressMultiline;
}

- (id)_formattedAddress
{
  formattedAddress = self->_formattedAddress;
  if (!formattedAddress)
  {
    v4 = [(SearchResult *)self mapItem];
    v5 = [v4 _addressFormattedAsSinglelineAddress];
    v6 = self->_formattedAddress;
    self->_formattedAddress = v5;

    formattedAddress = self->_formattedAddress;
  }

  return formattedAddress;
}

- (BOOL)isPartiallyClientized
{
  v2 = [(SearchResult *)self mapItem];
  v3 = [v2 _isPartiallyClientized];

  return v3;
}

- (BOOL)behavesAsAtom
{
  v3 = [(SearchResultRepr *)self type];
  v4 = v3;
  if (v3 > 9 || (v5 = 1, ((1 << v3) & 0x218) == 0))
  {
    v3 = [(SearchResult *)self locationOfInterest];
    if (v3)
    {
      v5 = 1;
    }

    else
    {
      v5 = [(SearchResult *)self isAddressBookResult];
      v3 = 0;
    }
  }

  if (v4 > 9 || ((1 << v4) & 0x218) == 0)
  {
  }

  return v5;
}

- (BOOL)updateFromSyncData:(id)a3
{
  v4 = a3;
  v5 = [[MSPBookmarkStorage alloc] initWithData:v4];

  if (v5 && [v5 type] == 1)
  {
    v6 = [v5 placeBookmark];
    v7 = [v6 mapItemStorage];

    [(SearchResult *)self updateWithGEOMapItem:v7];
    v8 = [v5 placeBookmark];
    v9 = [v8 origin];

    if (v9 == 1)
    {
      [(SearchResult *)self setOriginalType:3];
      v10 = [v5 placeBookmark];
      v11 = [v10 hasDroppedPinCoordinate];

      if (v11)
      {
        v12 = [v5 placeBookmark];
        v13 = [v12 droppedPinCoordinate];
        [v13 coordinate];
        CLLocationCoordinate2DFromGEOLocationCoordinate2D();
        [(SearchResult *)self setCoordinate:?];
      }

      v14 = [v5 placeBookmark];
      v15 = [v14 hasDroppedPinFloorOrdinal];

      if (v15)
      {
        v16 = [v5 placeBookmark];
        -[SearchResultRepr setFloorOrdinal:](self, "setFloorOrdinal:", [v16 droppedPinFloorOrdinal]);
      }
    }

    v17 = [v5 placeBookmark];
    v18 = [v17 title];
    [(SearchResult *)self setBookmarkTitle:v18];
  }

  return 0;
}

- (id)syncData
{
  v2 = [(SearchResult *)self bookmarkStorage];
  v3 = [v2 data];

  return v3;
}

- (SearchResult)initWithBookmarkRepresentation:(id)a3
{
  v10.receiver = self;
  v10.super_class = SearchResult;
  v3 = a3;
  v4 = [(SearchResult *)&v10 init];
  [(SearchResult *)v4 _commonInit:v10.receiver];
  v5 = [(SearchResult *)v4 updateFromBookmarkRepresentation:v3];

  if (v5)
  {
    v6 = [(SearchResultRepr *)v4 place];
    v7 = [v6 hasAddress];

    if ((v7 & 1) == 0)
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

- (BOOL)updateFromBookmarkRepresentation:(id)a3
{
  v4 = a3;
  if ([v4 hasTitle])
  {
    v5 = [v4 title];
    v6 = [(SearchResultRepr *)self place];
    [v6 setName:v5];
  }

  if ([v4 hasLatitude] && objc_msgSend(v4, "hasLongitude"))
  {
    [v4 latitude];
    v8 = v7;
    [v4 longitude];
    [(SearchResult *)self setCoordinate:v8, v9];
  }

  if ([v4 hasBusinessID])
  {
    self->_businessID = [v4 businessID];
  }

  if ([v4 hasProviderID])
  {
    if ([v4 providerID])
    {
      v10 = [v4 providerID];
      v11 = [(SearchResultRepr *)self place];
      [v11 setLocalSearchProviderID:v10];
    }

    else
    {
      v11 = [(SearchResultRepr *)self place];
      [v11 setHasLocalSearchProviderID:0];
    }
  }

  if ([v4 hasRegionLatitude] && objc_msgSend(v4, "hasRegionLatitudeDelta") && objc_msgSend(v4, "hasRegionLongitude") && objc_msgSend(v4, "hasRegionLongitudeDelta"))
  {
    v12 = [v4 mapRegion];
    v13 = [(SearchResultRepr *)self place];
    [v13 setMapRegion:v12];
  }

  v14 = [v4 type];
  if (v14 <= 2)
  {
    if (v14)
    {
      if (v14 != 1)
      {
        if (v14 != 2)
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

    else if ([v4 hasProviderID] && objc_msgSend(v4, "hasBusinessID"))
    {
      v17 = objc_alloc_init(GEOBusiness);
      [v17 setUID:{objc_msgSend(v4, "businessID")}];
      v18 = [(SearchResultRepr *)self place];
      [v18 addBusiness:v17];

      [(SearchResultRepr *)self setHasIncompleteMetadata:1];
      if ([v4 hasProviderID])
      {
        v19 = [v4 providerID];
        v20 = [(SearchResultRepr *)self place];
        [v20 setLocalSearchProviderID:v19];
      }
    }

    v15 = 0;
    goto LABEL_31;
  }

  v16 = 0;
  if ((v14 - 3) >= 2)
  {
    goto LABEL_32;
  }

LABEL_33:

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithSearchResult:self];
}

- (void)writeTo:(id)a3
{
  v4 = a3;
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
  [(SearchResultRepr *)&v5 writeTo:v4];
}

- (BOOL)readFrom:(id)a3
{
  v47.receiver = self;
  v47.super_class = SearchResult;
  v4 = [(SearchResultRepr *)&v47 readFrom:a3];
  if (v4)
  {
    if ([(SearchResultRepr *)self hasAddressRecordID])
    {
      v5 = [[AddressBookAddress alloc] initWithRecordID:[(SearchResultRepr *)self addressRecordID] addressID:[(SearchResultRepr *)self addressID]];
      address = self->_address;
      self->_address = v5;
    }

    v7 = [(SearchResultRepr *)self hasObsoleteName];
    if ([(SearchResultRepr *)self hasObsoleteLocality]|| [(SearchResultRepr *)self hasObsoleteRegion]|| [(SearchResultRepr *)self hasObsoletePostalCode]|| [(SearchResultRepr *)self hasObsoleteCountryCode]|| [(SearchResultRepr *)self hasObsoleteCountryName]|| [(SearchResultRepr *)self hasObsoleteDependentLocality])
    {
      v8 = 1;
    }

    else
    {
      v8 = [(SearchResultRepr *)self hasObsoleteThoroughfare];
    }

    v9 = [(SearchResultRepr *)self obsoleteAddressLines];
    v10 = [v9 count];

    if (v10)
    {
      v11 = 1;
    }

    else
    {
      v11 = v8;
    }

    if ([(SearchResultRepr *)self hasObsoleteInexactPosition])
    {
      v12 = [(SearchResultRepr *)self obsoleteInexactPosition];
    }

    else
    {
      v12 = 0;
    }

    if ([(SearchResultRepr *)self hasObsoletePhone]|| [(SearchResultRepr *)self hasObsoleteReferenceURL]|| [(SearchResultRepr *)self hasObsoleteCid]&& [(SearchResultRepr *)self obsoleteCid]|| [(SearchResultRepr *)self hasObsoleteUnverifiedListing])
    {
      v13 = 1;
    }

    else
    {
      v13 = [(SearchResultRepr *)self hasObsoleteClosedListing];
    }

    if ([(SearchResultRepr *)self hasObsoleteLatitudeE6Value])
    {
      v14 = [(SearchResultRepr *)self hasObsoleteLongitudeE6Value];
    }

    else
    {
      v14 = 0;
    }

    if (((v7 | v8 | v12 | v13 | v11) & 1) != 0 || v14)
    {
      v24 = objc_alloc_init(GEOPlace);
      [(SearchResultRepr *)self setPlace:v24];

      if (!v7)
      {
LABEL_29:
        if (!v11)
        {
          goto LABEL_30;
        }

        goto LABEL_38;
      }
    }

    else if (!v7)
    {
      goto LABEL_29;
    }

    v25 = [(SearchResultRepr *)self obsoleteName];
    v26 = [(SearchResultRepr *)self place];
    [v26 setName:v25];

    if (!v11)
    {
LABEL_30:
      if (!v12)
      {
        goto LABEL_31;
      }

      goto LABEL_57;
    }

LABEL_38:
    v27 = objc_alloc_init(GEOAddress);
    if (v10)
    {
      v28 = [(SearchResultRepr *)self obsoleteAddressLines];
      [v27 setFormattedAddressLines:v28];
    }

    v29 = [(SearchResultRepr *)self place];
    [v29 setAddress:v27];

    if (v8)
    {
      v30 = objc_alloc_init(GEOStructuredAddress);
      if ([(SearchResultRepr *)self hasObsoleteLocality])
      {
        v31 = [(SearchResultRepr *)self obsoleteLocality];
        [v30 setLocality:v31];
      }

      if ([(SearchResultRepr *)self hasObsoleteRegion])
      {
        v32 = [(SearchResultRepr *)self obsoleteRegion];
        [v30 setAdministrativeArea:v32];
      }

      if ([(SearchResultRepr *)self hasObsoletePostalCode])
      {
        v33 = [(SearchResultRepr *)self obsoletePostalCode];
        [v30 setPostCode:v33];
      }

      if ([(SearchResultRepr *)self hasObsoleteCountryCode])
      {
        v34 = [(SearchResultRepr *)self obsoleteCountryCode];
        [v30 setCountryCode:v34];
      }

      if ([(SearchResultRepr *)self hasObsoleteCountryName])
      {
        v35 = [(SearchResultRepr *)self obsoleteCountryName];
        [v30 setCountry:v35];
      }

      if ([(SearchResultRepr *)self hasObsoleteDependentLocality])
      {
        v36 = [(SearchResultRepr *)self obsoleteDependentLocality];
        [v30 setSubLocality:v36];
      }

      if ([(SearchResultRepr *)self hasObsoleteThoroughfare])
      {
        v37 = [(SearchResultRepr *)self obsoleteThoroughfare];
        [v30 setThoroughfare:v37];
      }

      v38 = [(SearchResultRepr *)self place];
      v39 = [v38 address];
      [v39 setStructuredAddress:v30];
    }

    if (!v12)
    {
LABEL_31:
      if (!v13)
      {
        goto LABEL_32;
      }

      goto LABEL_58;
    }

LABEL_57:
    v40 = [(SearchResultRepr *)self place];
    [v40 setAddressGeocodeAccuracy:2];

    if (!v13)
    {
LABEL_32:
      if (!v14)
      {
LABEL_34:
        v20 = [(SearchResultRepr *)self place];
        [v20 mkCoordinate];
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
      v15 = [(SearchResultRepr *)self obsoleteLatitudeE6Value];
      v16 = vshll_n_s32(__PAIR64__([(SearchResultRepr *)self obsoleteLongitudeE6Value], v15), 0x10uLL);
      v16.i64[0] /= 1000000;
      v16.i64[1] /= 1000000;
      v46 = vmulq_f64(vcvtq_f64_s64(v16), vdupq_n_s64(0x3EF0000000000000uLL));
      v17 = [[GEOMapRegion alloc] initWithLatitude:? longitude:?];
      v18 = [(SearchResultRepr *)self place];
      [v18 setMapRegion:v17];

      v19 = [(SearchResultRepr *)self place];
      [v19 setCenterCoordinate:*&v46];

      goto LABEL_34;
    }

LABEL_58:
    v41 = objc_alloc_init(GEOBusiness);
    if ([(SearchResultRepr *)self hasObsoletePhone])
    {
      v42 = [(SearchResultRepr *)self obsoletePhone];
      [v41 setTelephone:v42];
    }

    if ([(SearchResultRepr *)self hasObsoleteReferenceURL])
    {
      v43 = [(SearchResultRepr *)self obsoleteReferenceURL];
      [v41 setURL:v43];
    }

    if ([(SearchResultRepr *)self hasObsoleteClosedListing])
    {
      [v41 setIsClosed:{-[SearchResultRepr obsoleteClosedListing](self, "obsoleteClosedListing")}];
    }

    v44 = [[NSMutableArray alloc] initWithCapacity:1];
    [v44 addObject:v41];
    v45 = [(SearchResultRepr *)self place];
    [v45 setBusiness:v44];

    if (!v14)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  return v4;
}

- (BOOL)isEqualToSearchResult:(id)a3 forPurpose:(int64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  if (self == v5)
  {
    IsEqualToMapItemForPurpose = 1;
    goto LABEL_10;
  }

  v7 = [(SearchResult *)self autocompletePerson];
  v8 = [(SearchResult *)v6 autocompletePerson];
  v9 = v8;
  if (v7 && v8)
  {
    goto LABEL_5;
  }

  if (v7 | v9)
  {
LABEL_9:
    IsEqualToMapItemForPurpose = 0;
    goto LABEL_10;
  }

  v7 = [(SearchResult *)self findMyHandle];
  v12 = [(SearchResult *)v6 findMyHandle];
  v9 = v12;
  if (!v7 || !v12)
  {

    if (!(v7 | v9))
    {
      v13 = [(SearchResult *)self routeData];
      if (v13)
      {
        v14 = v13;
        v15 = [(SearchResult *)v6 routeData];

        if (v15)
        {
          v16 = [(SearchResult *)self routeData];
          v17 = [(SearchResult *)v6 routeData];
          IsEqualToMapItemForPurpose = [v16 isEqual:v17];

          goto LABEL_10;
        }
      }

      v18 = [(SearchResult *)self routeData];
      if (v18)
      {
      }

      else
      {
        v19 = [(SearchResult *)v6 routeData];

        if (!v19)
        {
          if ([(SearchResultRepr *)v6 type]== 4 && [(SearchResultRepr *)self type]== 4 || [(SearchResultRepr *)v6 type]== 3 && [(SearchResultRepr *)self type]== 3)
          {
            [(SearchResult *)self coordinate];
            [(SearchResult *)v6 coordinate];
            GEOCalculateDistance();
            IsEqualToMapItemForPurpose = v20 < 5.0;
            goto LABEL_10;
          }

          v7 = [(SearchResult *)v6 mapItem];
          v9 = [v7 _geoMapItem];
          v21 = [(SearchResult *)self mapItem];
          v22 = [v21 _geoMapItem];
          IsEqualToMapItemForPurpose = GEOMapItemIsEqualToMapItemForPurpose();

          goto LABEL_6;
        }
      }
    }

    goto LABEL_9;
  }

LABEL_5:
  IsEqualToMapItemForPurpose = [v7 isEqual:v9];
LABEL_6:

LABEL_10:
  return IsEqualToMapItemForPurpose;
}

- (void)setSourceApplication:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_sourceApplication isEqualToString:?])
  {
    objc_storeStrong(&self->_sourceApplication, a3);
  }
}

- (void)setSourceURL:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_sourceURL isEqualToString:?])
  {
    objc_storeStrong(&self->_sourceURL, a3);
  }
}

- (void)setGeoMapServiceTraitSource:(int)a3
{
  if (self->_geoMapServiceTraitSource != a3)
  {
    self->_geoMapServiceTraitSource = a3;
  }
}

- (void)setOriginalType:(unsigned int)a3
{
  if (a3 == 6)
  {
    v4 = +[MKSystemController sharedInstance];
    v5 = [v4 isInternalInstall];

    if (v5)
    {
      NSLog(@"Migrated a search result automatically to a new original type.");
    }

    *&a3 = 4;
  }

  v6.receiver = self;
  v6.super_class = SearchResult;
  [(SearchResultRepr *)&v6 setOriginalType:*&a3];
}

- (void)setType:(unsigned int)a3
{
  if (a3 == 4)
  {
LABEL_5:
    v6 = [MKMapItem alloc];
    v7 = [(SearchResult *)self mapItem];
    v8 = [v7 _geoMapItem];
    v9 = [v6 initWithGeoMapItemAsCurrentLocation:v8];
    [(SearchResult *)self setMapItem:v9];

    *&a3 = 4;
    goto LABEL_6;
  }

  if (a3 == 6)
  {
    v4 = +[MKSystemController sharedInstance];
    v5 = [v4 isInternalInstall];

    if (v5)
    {
      NSLog(@"Migrated a search result automatically to a new original type.");
    }

    goto LABEL_5;
  }

LABEL_6:
  v10.receiver = self;
  v10.super_class = SearchResult;
  [(SearchResultRepr *)&v10 setType:*&a3];
}

- (SearchResult)initWithType:(unsigned int)a3
{
  v3 = *&a3;
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

- (void)updateWithGEOMapItem:(id)a3
{
  v14 = a3;
  v4 = [(SearchResult *)self mapItem];
  v5 = [v4 _geoMapItem];
  v6 = [v5 _clientAttributes];

  v7 = [v14 _clientAttributes];

  if (v7 || !v6)
  {
    v9 = v14;
  }

  else
  {
    v8 = [GEOMapItemStorage mapItemStorageForGEOMapItem:v14 clientAttributes:v6];

    v9 = v8;
  }

  v15 = v9;
  v10 = [MKMapItem _itemWithGeoMapItem:?];
  [v10 _coordinate];
  [(SearchResult *)self setCoordinate:?];
  [v10 _labelCoordinate];
  [(SearchResult *)self setLabelCoordinate:?];
  v11 = [v10 place];
  [(SearchResultRepr *)self setPlace:v11];

  [(SearchResult *)self setMapItem:v10];
  if ([v10 _hasMUID])
  {
    v12 = [v10 _muid];
  }

  else
  {
    v12 = 0;
  }

  self->_businessID = v12;
  v13 = ([v10 _hasResolvablePartialInformation] & 1) != 0 || -[SearchResult isPartiallyClientized](self, "isPartiallyClientized");
  [(SearchResultRepr *)self setHasIncompleteMetadata:v13];
  [(SearchResult *)self setLocationOfInterestWithGeoMapItem:v15];
}

- (void)setRouteData:(id)a3
{
  v4 = self;
  objc_storeStrong(&self->_routeData, a3);
  v5 = a3;
  v4 = (v4 + 208);
  [v5 originCoordinate];
  v7 = v6;
  v9 = v8;

  *v4->super.PBCodable_opaque = v7;
  v4->super._obsoleteCid = v9;
}

- (GEOComposedWaypoint)composedWaypoint
{
  composedWaypoint = self->_composedWaypoint;
  if (!composedWaypoint)
  {
    v4 = [(SearchResult *)self routeData];

    if (v4)
    {
      v5 = [GEORouteBuilder_PersistentData alloc];
      v6 = [(SearchResult *)self routeData];
      v7 = [v5 initWithPersistentData:v6];

      v8 = [(GEOComposedWaypoint *)v7 buildRoute];
      v9 = [[GEOComposedWaypointToRoute alloc] initWithRoute:v8];
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

- (void)setLocationOfInterestWithGeoMapItem:(id)a3
{
  v16 = a3;
  v4 = [v16 contactIsMe];
  v5 = v16;
  if (v4)
  {
    if ([v16 contactAddressType] == 1 || (-[SearchResult address](self, "address"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "addressType"), v6, v7 == 1))
    {
      v8 = 0;
LABEL_5:
      v9 = [MapsLocationOfInterest alloc];
      v10 = [(SearchResult *)self mapItem];
      v11 = [(MapsLocationOfInterest *)v9 initWithLocationOfInterestType:v8 mapItem:v10];
      [(SearchResult *)self setLocationOfInterest:v11];

      v5 = v16;
      goto LABEL_6;
    }

    if ([v16 contactAddressType] == 2 || (-[SearchResult address](self, "address"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "addressType"), v12, v13 == 2))
    {
      v8 = 1;
      goto LABEL_5;
    }

    if ([v16 contactAddressType] == 3 || (-[SearchResult address](self, "address"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "addressType"), v14, v5 = v16, v15 == 3))
    {
      v8 = 2;
      goto LABEL_5;
    }
  }

LABEL_6:
}

- (SearchResult)initWithComposedWaypoint:(id)a3 preserveLocationInfo:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v8 = [v7 geoMapItem];

  if (v8)
  {
    v9 = [v7 geoMapItem];
    v10 = [MKMapItem _itemWithGeoMapItem:v9];
    v11 = [(SearchResult *)self initWithMapItem:v10];

    if (!v11)
    {
      goto LABEL_30;
    }

LABEL_10:
    if ([v7 isCurrentLocation])
    {
      v14 = 4;
    }

    else
    {
      if (![v7 isLocationWaypointType])
      {
LABEL_15:
        v15 = [v7 findMyHandleID];

        if (v15)
        {
          v16 = [v7 findMyHandle];
          [(SearchResult *)v11 setFindMyHandle:v16];

          [(SearchResult *)v11 setLocationType:4];
        }

        v17 = [v7 addressBookAddress];

        if (v17)
        {
          v18 = [v7 addressBookAddress];
          [(SearchResult *)v11 setAddress:v18];

          v19 = [(SearchResult *)v11 address];
          v20 = [v19 isMeCard];

          if ((v20 & 1) == 0)
          {
            v21 = [(SearchResult *)v11 address];
            v22 = [v21 addressType];
            if (v22 - 1 >= 3)
            {
              v23 = 0;
            }

            else
            {
              v23 = v22;
            }

            [(SearchResult *)v11 setLocationType:v23];
          }
        }

        if (([v7 hasLatLng] & 1) != 0 || objc_msgSend(v7, "hasLocation"))
        {
          v24 = [v7 latLng];
          v25 = v24;
          if (v24)
          {
            v26 = v24;
          }

          else
          {
            v27 = [v7 location];
            v26 = [v27 latLng];
          }

          [v26 lat];
          v29 = v28;
          [v26 lng];
          [(SearchResult *)v11 setCoordinate:v4 preserveLocationInfo:v29, v30];
        }

        objc_storeStrong(&v11->_composedWaypoint, a3);
        v11->_hasExplicitlyProvidedComposedWaypoint = 1;
        goto LABEL_30;
      }

      v14 = 3;
    }

    [(SearchResult *)v11 setType:v14];
    [(SearchResult *)v11 setOriginalType:v14];
    goto LABEL_15;
  }

  if (![v7 isCurrentLocation])
  {
    v12 = [v7 findMyHandleID];
    if (v12)
    {
    }

    else
    {
      v13 = [v7 addressBookAddress];

      if (!v13)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v31 = 0;
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
  v31 = self;
LABEL_31:

  return v31;
}

- (SearchResult)initWithParkedCar:(id)a3
{
  v4 = a3;
  v5 = [v4 mapItem];
  v6 = [(SearchResult *)self initWithMapItem:v5];

  if (v6)
  {
    [(SearchResult *)v6 setType:12];
    [(SearchResult *)v6 setOriginalType:12];
    [v4 coordinate];
    v6->_coordinate.latitude = v7;
    v6->_coordinate.longitude = v8;
  }

  return v6;
}

- (SearchResult)initWithCuratedGuide:(id)a3
{
  v5 = a3;
  v6 = [(SearchResult *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_placeCollection, a3);
  }

  return v7;
}

- (SearchResult)initWithSearchSection:(id)a3
{
  v5 = a3;
  v6 = [(SearchResult *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_searchSection, a3);
    [(SearchResult *)v7 setType:11];
    [(SearchResult *)v7 setOriginalType:11];
  }

  return v7;
}

- (SearchResult)initWithRelatedSection:(id)a3
{
  v5 = a3;
  v6 = [(SearchResult *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_relatedSection, a3);
    [(SearchResult *)v7 setType:11];
    [(SearchResult *)v7 setOriginalType:11];
  }

  return v7;
}

- (SearchResult)initWithGEOMapItem:(id)a3
{
  v4 = a3;
  v5 = [[MKMapItem alloc] initWithGeoMapItem:v4 isPlaceHolderPlace:0];

  v6 = [(SearchResult *)self initWithMapItem:v5];
  if (v6)
  {
    v7 = v6;
  }

  return v6;
}

- (SearchResult)initWithGEOPlace:(id)a3
{
  v4 = a3;
  v5 = [[MKMapItem alloc] initWithPlace:v4];

  v6 = [(SearchResult *)self initWithMapItem:v5];
  return v6;
}

- (SearchResult)initWithMapItem:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = SearchResult;
  v5 = [(SearchResult *)&v23 init];
  v6 = v5;
  if (v5)
  {
    [(SearchResult *)v5 _commonInit];
    [v4 _coordinate];
    [(SearchResult *)v6 setCoordinate:?];
    [v4 _labelCoordinate];
    [(SearchResult *)v6 setLabelCoordinate:?];
    v7 = [v4 place];
    [(SearchResultRepr *)v6 setPlace:v7];

    [(SearchResult *)v6 setMapItem:v4];
    if ([v4 _hasMUID])
    {
      v8 = [v4 _muid];
    }

    else
    {
      v8 = 0;
    }

    v6->_businessID = v8;
    v9 = ([v4 _hasResolvablePartialInformation] & 1) != 0 || -[SearchResult isPartiallyClientized](v6, "isPartiallyClientized");
    [(SearchResultRepr *)v6 setHasIncompleteMetadata:v9];
    [(SearchResult *)v6 setType:0];
    [(SearchResult *)v6 setOriginalType:[(SearchResultRepr *)v6 type]];
    [(SearchResult *)v6 clearAddressCache];
    v10 = [(SearchResultRepr *)v6 place];
    v11 = [v10 address];
    v12 = [v11 structuredAddress];

    v13 = 0;
    if (([v12 hasSubThoroughfare] & 1) == 0)
    {
      v13 = [v12 hasFullThoroughfare] ^ 1;
    }

    if (![v4 _hasMUID] || objc_msgSend(v10, "hasSpokenName"))
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

      else if ([v10 hasSpokenAddress])
      {
        v17 = [v10 entryPoints];
        v18 = [v17 count];

        if (v18)
        {
          goto LABEL_18;
        }
      }
    }

    [(SearchResultRepr *)v6 setHasIncompleteNavData:1];
LABEL_18:
    v19 = [(SearchResult *)v6 mapItem];
    v20 = [v19 _geoMapItem];
    [(SearchResult *)v6 setLocationOfInterestWithGeoMapItem:v20];

    v21 = v6;
  }

  return v6;
}

- (SearchResult)initWithMapItem:(id)a3 syncIdentifier:(id)a4
{
  v6 = a4;
  v7 = [(SearchResult *)self initWithMapItem:a3];
  v8 = v7;
  if (v7)
  {
    v9 = [(SearchResult *)v7 bookmarkStorage];
    [v9 setIdentifier:v6];

    [(SearchResultRepr *)v8 setSyncIdentifier:v6];
  }

  return v8;
}

- (SearchResult)initWithSearchResult:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = SearchResult;
  v5 = [(SearchResult *)&v38 init];
  v6 = v5;
  if (v5)
  {
    [(SearchResult *)v5 _commonInit];
    if ([v4 hasTimestamp])
    {
      [v4 timestamp];
      [(SearchResultRepr *)v6 setTimestamp:?];
    }

    if ([v4 hasResultIndex])
    {
      -[SearchResultRepr setResultIndex:](v6, "setResultIndex:", [v4 resultIndex]);
    }

    -[SearchResult setType:](v6, "setType:", [v4 type]);
    -[SearchResult setOriginalType:](v6, "setOriginalType:", [v4 originalType]);
    -[SearchResultRepr setZoomLevel:](v6, "setZoomLevel:", [v4 zoomLevel]);
    [v4 coordinate];
    [(SearchResult *)v6 setCoordinate:?];
    [v4 labelCoordinate];
    [(SearchResult *)v6 setLabelCoordinate:?];
    v7 = [v4 place];
    v8 = [v7 copy];

    [(SearchResultRepr *)v6 setPlace:v8];
    if (-[SearchResultRepr type](v6, "type") - 5 <= 0xFFFFFFFD && [v4 hasMapsURL])
    {
      v9 = [v4 mapsURL];
      [(SearchResultRepr *)v6 setMapsURL:v9];
    }

    [(SearchResult *)v6 clearAddressCache];
    -[SearchResult setReverseGeocoded:](v6, "setReverseGeocoded:", [v4 isReverseGeocoded]);
    -[SearchResult setOriginatedFromExternal:](v6, "setOriginatedFromExternal:", [v4 hasOriginatedFromExternal]);
    -[SearchResult setGeoMapServiceTraitSource:](v6, "setGeoMapServiceTraitSource:", [v4 geoMapServiceTraitSource]);
    v10 = [v4 sourceURL];
    [(SearchResult *)v6 setSourceURL:v10];

    v11 = [v4 sourceApplication];
    [(SearchResult *)v6 setSourceApplication:v11];

    if ([v4 hasHasIncompleteNavData])
    {
      -[SearchResultRepr setHasIncompleteNavData:](v6, "setHasIncompleteNavData:", [v4 hasIncompleteNavData]);
    }

    if (v4)
    {
      v12 = v4[49];
      if (v12)
      {
        objc_storeStrong(&v6->_address, v12);
      }

      v13 = v4[42];
      if (v13)
      {
        objc_storeStrong(&v6->_autocompletePerson, v13);
      }

      v14 = v4[43];
      if (v14)
      {
        objc_storeStrong(&v6->_findMyHandle, v14);
      }
    }

    v15 = [v4 locationOfInterest];
    [(SearchResult *)v6 setLocationOfInterest:v15];

    v16 = [v4 mapItem];
    [(SearchResult *)v6 setMapItem:v16];

    v17 = [v4 syncIdentifier];
    if (v17)
    {
      v18 = [v4 syncIdentifier];
      [(SearchResultRepr *)v6 setSyncIdentifier:v18];
    }

    v19 = [v4 bookmarkStorage];
    v20 = v19;
    if (v19)
    {
      v21 = [v19 copy];
    }

    else
    {
      v21 = objc_alloc_init(MSPBookmarkStorage);
    }

    bookmarkStorage = v6->_bookmarkStorage;
    v6->_bookmarkStorage = v21;

    v23 = [v4 composedWaypoint];
    v24 = [v23 copy];
    composedWaypoint = v6->_composedWaypoint;
    v6->_composedWaypoint = v24;

    v26 = [v4 placeInfo];
    v27 = v26;
    if (v26)
    {
      v28 = [v26 copy];
      placeInfo = v6->_placeInfo;
      v6->_placeInfo = v28;
    }

    if ([v4 hasFloorOrdinal])
    {
      -[SearchResultRepr setFloorOrdinal:](v6, "setFloorOrdinal:", [v4 floorOrdinal]);
    }

    v6->_originatedFromBookmarks = [v4 hasOriginatedFromBookmarks];
    v30 = [v4 autocompletePerson];
    autocompletePerson = v6->_autocompletePerson;
    v6->_autocompletePerson = v30;

    v32 = [v4 findMyHandle];
    findMyHandle = v6->_findMyHandle;
    v6->_findMyHandle = v32;

    v34 = [v4 routeData];
    routeData = v6->_routeData;
    v6->_routeData = v34;

    v36 = v6;
  }

  return v6;
}

- (SearchResult)initWithData:(id)a3
{
  v6.receiver = self;
  v6.super_class = SearchResult;
  v3 = [(SearchResult *)&v6 initWithData:a3];
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

- (void)setAutocompletePerson:(id)a3
{
  v5 = a3;
  if (self->_autocompletePerson != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_autocompletePerson, a3);
    v5 = v6;
  }
}

- (void)setAddress:(id)a3
{
  v5 = a3;
  if (self->_address != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_address, a3);
    v5 = v6;
  }
}

- (SearchResult)initWithSearchResultStrippingName:(id)a3 address:(id)a4
{
  v4 = [(SearchResult *)self initWithSearchResult:a3 address:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(SearchResultRepr *)v4 place];
    [v6 setName:0];
  }

  return v5;
}

- (SearchResult)initWithSearchResult:(id)a3 address:(id)a4
{
  v7 = a4;
  v8 = [(SearchResult *)self initWithSearchResult:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_address, a4);
  }

  return v9;
}

+ (id)customSearchResultWithCoordinate:(CLLocationCoordinate2D)a3 floorOrdinal:(int)a4
{
  v4 = *&a4;
  longitude = a3.longitude;
  latitude = a3.latitude;
  v7 = [[a1 alloc] initWithType:3];
  v8 = [v7 defaultName];
  v9 = [v7 place];
  [v9 setName:v8];

  [v7 setCoordinate:{latitude, longitude}];
  if (v4 != 0x7FFFFFFF)
  {
    [v7 setFloorOrdinal:v4];
  }

  return v7;
}

+ (id)currentLocationSearchResult
{
  v2 = [[a1 alloc] initWithType:4];
  v3 = [v2 defaultName];
  v4 = [v2 place];
  [v4 setName:v3];

  v5 = +[MKLocationManager sharedLocationManager];
  v6 = [v5 lastLocation];

  if (v6)
  {
    [v6 coordinate];
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
  v3 = [(SearchResult *)self relatedSection];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(SearchResult *)self searchSection];
    v4 = v5 == 0;
  }

  v6 = [(SearchResult *)self placeCollection];

  v7 = [(SearchResult *)self personalizedCompoundItem];
  v8 = [v7 address];

  v9 = [(SearchResult *)self mapItem];

  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 == 0;
  }

  v11 = !v10;
  if (v6)
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
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setRepresentsIntermediateStop:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  objc_setAssociatedObject(self, &unk_101215B28, v4, 1);
}

- (CNContact)contactForSharingToMessages
{
  v3 = [(SearchResult *)self address];
  v4 = [v3 contact];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(SearchResult *)self unknownContact];
  }

  v7 = v6;

  return v7;
}

- (CNContact)unknownContact
{
  v3 = [(SearchResult *)self mapItem];
  v4 = [v3 _placeCardContact];
  if (([v3 _hasMUID] & 1) == 0)
  {
    if ([(SearchResult *)self isDynamicCurrentLocation])
    {
      v5 = [(SearchResult *)self infoCardTitle];
    }

    else
    {
      v6 = [(SearchResultRepr *)self place];
      v5 = [v6 name];

      if (![v5 length])
      {
        v7 = [(SearchResult *)self infoCardTitle];

        v5 = v7;
      }
    }

    if ([v5 length])
    {
      v8 = [v4 mutableCopy];
      [v8 setGivenName:v5];

      v4 = v8;
    }
  }

  return v4;
}

- (NSString)autocompletePersonTitle
{
  v2 = [(SearchResult *)self autocompletePerson];
  v3 = [v2 title];

  return v3;
}

- (NSString)routableAddress
{
  v3 = [(SearchResult *)self singleLineAddress];
  v4 = [(SearchResultRepr *)self originalType];
  if (![v3 length] || v4 - 3 <= 1)
  {
    [(SearchResult *)self coordinate];
    v6 = 0;
    if (fabs(v7) <= 180.0 && v5 >= -90.0 && v5 <= 90.0)
    {
      v6 = [NSString stringWithFormat:@"%f, %f", *&self->_coordinate.latitude, *&self->_coordinate.longitude];
    }

    v3 = v6;
  }

  return v3;
}

+ (void)newStartWaypointSearchResult:(id *)a3 endWaypointSearchResult:(id *)a4 forRouteHistoryEntry:(id)a5
{
  v7 = a5;
  v20 = v7;
  if (a3)
  {
    v8 = [v7 startWaypoint];
    if (v8 && (v9 = v8, [v20 startWaypoint], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isCurrentLocation"), v10, v9, !v11))
    {
      v12 = [SearchResult alloc];
      v13 = [v20 startWaypoint];
      *a3 = [(SearchResult *)v12 initWithComposedWaypoint:v13];
    }

    else
    {
      *a3 = +[SearchResult currentLocationSearchResult];
    }

    v7 = v20;
  }

  if (a4)
  {
    v14 = [v7 endWaypoint];
    if (v14 && (v15 = v14, [v20 endWaypoint], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isCurrentLocation"), v16, v15, !v17))
    {
      v18 = [SearchResult alloc];
      v19 = [v20 endWaypoint];
      *a4 = [(SearchResult *)v18 initWithComposedWaypoint:v19];
    }

    else
    {
      *a4 = +[SearchResult currentLocationSearchResult];
    }

    v7 = v20;
  }
}

+ (id)carSearchResultFromDestination:(id)a3
{
  v4 = a3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_10:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      v10 = [v6 mkMapItem];

      if (v10)
      {
        v9 = [[MapsLocationOfInterest alloc] initWithMapsFavoriteItem:v6];
        goto LABEL_13;
      }
    }

    v6 = [MKMapItem carMapItemFromDestination:v4];
    if (v6)
    {
      v5 = [[a1 alloc] initWithMapItem:v6];
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_19;
  }

  v6 = v4;
  if ([v6 type] == 24)
  {
    v7 = [v6 findMyWaypoint];
    if (!v7)
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

    v5 = [[SearchResult alloc] initWithComposedWaypoint:v7];
    goto LABEL_14;
  }

  v8 = [v6 MKMapItem];

  if (!v8)
  {

    goto LABEL_10;
  }

  v9 = [[MapsLocationOfInterest alloc] initWithMapsSuggestionEntry:v6];
LABEL_13:
  v7 = v9;
  v11 = [SearchResult alloc];
  v12 = [v7 mapItem];
  v5 = [(SearchResult *)v11 initWithMapItem:v12];

  [(SearchResult *)v5 setLocationOfInterest:v7];
LABEL_14:

LABEL_19:
LABEL_20:

  return v5;
}

- (NSString)_maps_diffableDataSourceIdentifier
{
  v3 = [(SearchResultRepr *)self type];
  v4 = 0;
  if (v3 > 10)
  {
    if (v3 == 11)
    {
      v4 = @"Section";
      goto LABEL_14;
    }

    if (v3 == 12)
    {
      goto LABEL_12;
    }

    if (v3 != 13)
    {
      goto LABEL_14;
    }

LABEL_9:
    if (MapsFeature_IsEnabled_SearchAndDiscovery())
    {
      v5 = [(SearchResult *)self placeCollection];

      if (v5)
      {
        v6 = [(SearchResult *)self placeCollection];
        v7 = [v6 collectionIdentifier];
        v4 = [NSString stringWithFormat:@"CuratedGuide-%@", v7];

LABEL_13:
        goto LABEL_14;
      }
    }

LABEL_12:
    v6 = [(SearchResult *)self mapItem];
    v4 = [v6 _maps_diffableDataSourceIdentifier];
    goto LABEL_13;
  }

  switch(v3)
  {
    case 0:
      goto LABEL_9;
    case 3:
      v4 = @"DroppedPin";
      break;
    case 5:
      goto LABEL_12;
  }

LABEL_14:

  return v4;
}

- (Flyover)_flyover
{
  v3 = [(SearchResult *)self mapItem];
  v4 = [v3 _flyover];
  if (v4)
  {
    v5 = [(SearchResult *)self title];
    v6 = [v3 _flyoverAnnouncementMessageWithDefaultTitle:v5];

    v7 = v6;
    v8 = +[NSUserDefaults standardUserDefaults];
    v9 = [v8 objectForKey:@"FlyoverSearchNotificationKey"];
    v10 = [v9 mutableCopy];

    if (!v10)
    {
      v10 = objc_alloc_init(NSMutableDictionary);
    }

    v11 = [v10 objectForKeyedSubscript:v7];
    v12 = [v11 unsignedIntegerValue];

    if (v12 >= GEOConfigGetInteger())
    {
      v15 = 0;
    }

    else
    {
      v13 = [NSNumber numberWithUnsignedInteger:v12 + 1];
      [v10 setValue:v13 forKey:v7];

      v14 = +[NSUserDefaults standardUserDefaults];
      [v14 setObject:v10 forKey:@"FlyoverSearchNotificationKey"];

      v15 = [[Flyover alloc] initWithAnnouncement:v7 mapItem:v3 animationID:0];
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
  v3 = [(SearchResult *)self autocompletePerson];
  v4 = [(SearchResult *)self findMyHandle];
  v5 = [v3 handle];
  v6 = (v5 | v4) != 0;

  return v6;
}

@end