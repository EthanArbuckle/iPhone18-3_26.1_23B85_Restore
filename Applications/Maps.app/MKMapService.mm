@interface MKMapService
+ (unsigned)searchMaxResults;
- (GEOMapServiceTraits)mapsDefaultTraitsWithCarPlayInfo;
- (id)_mapsDefaultTraits;
- (id)_mapsDefaultTraitsForAnalytics;
- (id)_maps_ticketForSearchHistoryEntry:(id)entry source:(int)source traits:(id)traits isRedoOrAutoRedoSearch:(BOOL)search;
- (id)_ticketForSearchQuery:(id)query completionItem:(id)item retainedSearch:(id)search traits:(id)traits searchSessionData:(id)data;
- (id)mapsDefaultTraitsForMapRegion:(id)region source:(int)source;
- (id)mapsDefaultTraitsForMapView:(id)view mapViewEnteredForegroundDate:(id)date mapViewportChangedDate:(id)changedDate;
- (id)mapsDefaultTraitsForMapView:(id)view mapViewEnteredForegroundDate:(id)date mapViewportChangedDate:(id)changedDate directionsType:(unint64_t)type includeCarPlayInfo:(BOOL)info;
- (id)ticketForMapItemToRefine:(id)refine;
- (id)ticketForQuerySearch:(id)search source:(int)source;
- (id)ticketForReverseGeocodeCoordinate:(CLLocationCoordinate2D)coordinate;
- (id)ticketForReverseGeocodeLocation:(id)location;
- (id)ticketForURLQuery:(id)query identifier:(id)identifier resultProviderId:(int)id contentProvider:(id)provider traits:(id)traits source:(int)source;
- (void)_addCarPlayConnectionToTraits:(id)traits;
- (void)_addCarPlayInfoToTraits:(id)traits;
- (void)captureUserAction:(int)action onTarget:(int)target eventValue:(id)value routeIndex:(unint64_t)index;
@end

@implementation MKMapService

- (id)_mapsDefaultTraits
{
  mapsDefaultTraits = [(MKMapService *)self mapsDefaultTraits];
  v4 = +[GEOIdealTransportTypeFinder idealTransportType];
  if (v4 > 4)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = qword_101215F40[v4];
    v6 = dword_101215F68[v4];
  }

  [mapsDefaultTraits addTransportType:v6];
  v7 = [_MKQuickRouteManager counterpartForTransportType:v5];
  if (v7 > 3)
  {
    if (v7 == 4)
    {
      v8 = 1;
      goto LABEL_13;
    }

    if (v7 == 8)
    {
      v8 = 3;
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (!v7)
  {
    goto LABEL_14;
  }

  if (v7 != 2)
  {
LABEL_10:
    v8 = 0;
    goto LABEL_13;
  }

  v8 = 2;
LABEL_13:
  [mapsDefaultTraits addTransportType:v8];
LABEL_14:
  v9 = +[CarDisplayController sharedInstance];
  isCurrentlyConnectedToAnyCarScene = [v9 isCurrentlyConnectedToAnyCarScene];

  if ((isCurrentlyConnectedToAnyCarScene & 1) == 0)
  {
    [mapsDefaultTraits addTransportType:2];
  }

  [(MKMapService *)self _addCarPlayConnectionToTraits:mapsDefaultTraits];
  v11 = +[SearchVirtualGarageManager sharedSearchVirtualGarageManager];
  v12 = [v11 updatedTraitsForCurrentGarageState:mapsDefaultTraits];

  v13 = +[MNNavigationService sharedService];
  currentVoiceLanguage = [v13 currentVoiceLanguage];

  if ([currentVoiceLanguage length])
  {
    [v12 setDeviceSpokenLocale:currentVoiceLanguage];
  }

  v15 = [DrivePreferences alloc];
  v16 = +[NSUserDefaults standardUserDefaults];
  v17 = [(DrivePreferences *)v15 initWithDefaults:v16];
  automobileOptions = [(DrivePreferences *)v17 automobileOptions];
  [v12 setAutomobileOptions:automobileOptions];

  v19 = [WalkPreferences alloc];
  v20 = +[NSUserDefaults standardUserDefaults];
  v21 = [(WalkPreferences *)v19 initWithDefaults:v20];
  walkingOptions = [(WalkPreferences *)v21 walkingOptions];
  [v12 setWalkingOptions:walkingOptions];

  v23 = [TransitPreferences alloc];
  v24 = +[NSUserDefaults standardUserDefaults];
  v25 = [(WatchSyncedPreferences *)v23 initWithDefaults:v24];
  transitOptions = [(TransitPreferences *)v25 transitOptions];
  [v12 setTransitOptions:transitOptions];

  v27 = [CyclePreferences alloc];
  v28 = +[NSUserDefaults standardUserDefaults];
  v29 = [(CyclePreferences *)v27 initWithDefaults:v28];
  cyclingOptions = [(CyclePreferences *)v29 cyclingOptions];
  [v12 setCyclingOptions:cyclingOptions];

  [v12 setSupportDymSuggestion:1];

  return v12;
}

- (void)captureUserAction:(int)action onTarget:(int)target eventValue:(id)value routeIndex:(unint64_t)index
{
  v7 = *&target;
  v8 = *&action;
  valueCopy = value;
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  else
  {
    v10 = [GEORouteDetails routeDetailsWithResultIndex:index];
  }

  [(MKMapService *)self captureUserAction:v8 onTarget:v7 eventValue:valueCopy routeDetails:v10];
}

- (id)ticketForURLQuery:(id)query identifier:(id)identifier resultProviderId:(int)id contentProvider:(id)provider traits:(id)traits source:(int)source
{
  v8 = *&source;
  v10 = *&id;
  traitsCopy = traits;
  providerCopy = provider;
  identifierCopy = identifier;
  queryCopy = query;
  if (!traitsCopy)
  {
    traitsCopy = [(MKMapService *)self _mapsDefaultTraits];
  }

  [traitsCopy setSource:v8];
  traitsCopy = [(MKMapService *)self ticketForURLQuery:queryCopy identifier:identifierCopy resultProviderId:v10 contentProvider:providerCopy maxResults:+[MKMapService traits:"searchMaxResults"], traitsCopy];

  return traitsCopy;
}

- (id)ticketForQuerySearch:(id)search source:(int)source
{
  v4 = *&source;
  searchCopy = search;
  mapRegion = [searchCopy mapRegion];
  v8 = [(MKMapService *)self mapsDefaultTraitsForMapRegion:mapRegion source:v4];

  if ([searchCopy hasLanguage])
  {
    if ([v8 deviceDisplayLanguagesCount])
    {
      deviceDisplayLanguages = [v8 deviceDisplayLanguages];
      firstObject = [deviceDisplayLanguages firstObject];
      language = [searchCopy language];
      v12 = [firstObject isEqualToString:language];

      if ((v12 & 1) == 0)
      {
        deviceDisplayLanguages2 = [v8 deviceDisplayLanguages];
        language2 = [searchCopy language];
        [deviceDisplayLanguages2 removeObject:language2];

        deviceDisplayLanguages3 = [v8 deviceDisplayLanguages];
        language3 = [searchCopy language];
        [deviceDisplayLanguages3 insertObject:language3 atIndex:0];
      }
    }
  }

  query = [searchCopy query];
  v18 = [(MKMapService *)self _ticketForSearchQuery:query completionItem:0 retainedSearch:0 traits:v8 searchSessionData:0];

  return v18;
}

- (id)_ticketForSearchQuery:(id)query completionItem:(id)item retainedSearch:(id)search traits:(id)traits searchSessionData:(id)data
{
  dataCopy = data;
  traitsCopy = traits;
  searchCopy = search;
  itemCopy = item;
  queryCopy = query;
  dataCopy = [(MKMapService *)self ticketForSearchQuery:queryCopy completionItem:itemCopy retainedSearch:searchCopy maxResults:+[MKMapService traits:"searchMaxResults"]searchSessionData:traitsCopy, dataCopy];

  return dataCopy;
}

- (id)ticketForMapItemToRefine:(id)refine
{
  refineCopy = refine;
  _mapsDefaultTraits = [(MKMapService *)self _mapsDefaultTraits];
  v6 = [(MKMapService *)self ticketForMapItemToRefine:refineCopy traits:_mapsDefaultTraits];

  return v6;
}

- (id)ticketForReverseGeocodeLocation:(id)location
{
  locationCopy = location;
  _mapsDefaultTraits = [(MKMapService *)self _mapsDefaultTraits];
  v6 = [(MKMapService *)self ticketForReverseGeocodeLocation:locationCopy traits:_mapsDefaultTraits];

  return v6;
}

- (id)ticketForReverseGeocodeCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  _mapsDefaultTraits = [(MKMapService *)self _mapsDefaultTraits];
  longitude = [(MKMapService *)self ticketForReverseGeocodeCoordinate:_mapsDefaultTraits traits:latitude, longitude];

  return longitude;
}

- (void)_addCarPlayInfoToTraits:(id)traits
{
  traitsCopy = traits;
  v3 = +[CarDisplayController sharedInstance];
  isCurrentlyConnectedToAnyCarScene = [v3 isCurrentlyConnectedToAnyCarScene];

  if (isCurrentlyConnectedToAnyCarScene)
  {
    v5 = +[CarDisplayController sharedInstance];
    screen = [v5 screen];

    v7 = [screen _capabilityForKey:_UIScreenCapabilityTouchLevelsKey];
    integerValue = [v7 integerValue];

    v9 = 3;
    if (integerValue < 3)
    {
      v10 = (integerValue + 1);
    }

    else
    {
      v10 = 3;
    }

    [traitsCopy setCarHeadunitInteractionModel:v10];
    [screen bounds];
    x = v25.origin.x;
    y = v25.origin.y;
    width = v25.size.width;
    height = v25.size.height;
    [traitsCopy setCarHeadunitPixelHeight:CGRectGetHeight(v25)];
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    [traitsCopy setCarHeadunitPixelWidth:CGRectGetWidth(v26)];
    v15 = +[MapsExternalDevice sharedInstance];
    manufacturer = [v15 manufacturer];
    [traitsCopy setCarHeadunitManufacturer:manufacturer];

    model = [v15 model];
    [traitsCopy setCarHeadunitModel:model];

    v18 = +[NSUserDefaults standardUserDefaults];
    v19 = [v18 BOOLForKey:@"CarEVSearchTestingDebug"];

    if ((v19 & 1) == 0)
    {
      hasEngineType = [v15 hasEngineType];
      v20 = traitsCopy;
      if (!hasEngineType)
      {
        goto LABEL_15;
      }

      [traitsCopy clearEngineTypes];
      engineType = [v15 engineType];
      if (engineType)
      {
        [traitsCopy addEngineType:1];
      }

      if ((engineType & 4) != 0)
      {
        [traitsCopy addEngineType:3];
      }

      v20 = traitsCopy;
      if ((engineType & 2) != 0)
      {
        [traitsCopy addEngineType:2];
        v20 = traitsCopy;
      }

      if ((engineType & 8) == 0)
      {
        goto LABEL_15;
      }

      v9 = 4;
    }

    [traitsCopy addEngineType:v9];
    v20 = traitsCopy;
LABEL_15:
    [v20 setSupportDirectionIntentAutocomplete:0];
    [traitsCopy setSupportDirectionIntentSearch:0];
    [traitsCopy setSupportUnresolvedDirectionIntent:0];
    [traitsCopy setSupportClientRankingFeatureMetadata:0];
    [traitsCopy setSupportClientRankingCompositeFeatures:0];
    [traitsCopy setSupportStructuredRapAffordance:0];
  }
}

- (void)_addCarPlayConnectionToTraits:(id)traits
{
  traitsCopy = traits;
  v3 = +[CarDisplayController sharedInstance];
  isCurrentlyConnectedToAnyCarScene = [v3 isCurrentlyConnectedToAnyCarScene];

  if (isCurrentlyConnectedToAnyCarScene)
  {
    v5 = +[MapsExternalDevice sharedInstance];
    connectionType = [v5 connectionType];
    if (connectionType == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2 * (connectionType == 2);
    }

    [traitsCopy setCarHeadunitConnectionType:v7];
  }
}

- (GEOMapServiceTraits)mapsDefaultTraitsWithCarPlayInfo
{
  _mapsDefaultTraits = [(MKMapService *)self _mapsDefaultTraits];
  [(MKMapService *)self _addCarPlayInfoToTraits:_mapsDefaultTraits];

  return _mapsDefaultTraits;
}

- (id)mapsDefaultTraitsForMapView:(id)view mapViewEnteredForegroundDate:(id)date mapViewportChangedDate:(id)changedDate directionsType:(unint64_t)type includeCarPlayInfo:(BOOL)info
{
  infoCopy = info;
  v10 = [(MKMapService *)self mapsDefaultTraitsForMapView:view mapViewEnteredForegroundDate:date mapViewportChangedDate:changedDate];
  v11 = v10;
  if (type <= 3)
  {
    if (type == 2)
    {
      v12 = 2;
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (type == 4)
  {
    v12 = 1;
  }

  else
  {
    if (type != 8)
    {
LABEL_7:
      v12 = 0;
      goto LABEL_10;
    }

    v12 = 3;
  }

LABEL_10:
  [v10 addTransportType:v12];
  v13 = [_MKQuickRouteManager counterpartForTransportType:type];
  if (v13 <= 3)
  {
    if (v13 == 2)
    {
      v14 = 2;
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (v13 == 4)
  {
    v14 = 1;
  }

  else
  {
    if (v13 != 8)
    {
LABEL_16:
      v14 = 0;
      goto LABEL_19;
    }

    v14 = 3;
  }

LABEL_19:
  [v11 addTransportType:v14];
  if (infoCopy)
  {
    [(MKMapService *)self _addCarPlayInfoToTraits:v11];
  }

  return v11;
}

- (id)mapsDefaultTraitsForMapView:(id)view mapViewEnteredForegroundDate:(id)date mapViewportChangedDate:(id)changedDate
{
  viewCopy = view;
  dateCopy = date;
  changedDateCopy = changedDate;
  _mapsDefaultTraits = [(MKMapService *)self _mapsDefaultTraits];
  if (viewCopy)
  {
    [viewCopy visibleMapRect];
    v16 = [[GEOMapRegion alloc] initWithMapRect:{v12, v13, v14, v15}];
    [_mapsDefaultTraits setMapRegion:v16];

    venueWithFocus = [viewCopy venueWithFocus];
    if (venueWithFocus && sub_10000FA08(viewCopy) != 5)
    {
      v18 = [[GEOVenueIdentifier alloc] initWithVenueID:objc_msgSend(venueWithFocus featureID:"venueID") businessID:{objc_msgSend(venueWithFocus, "featureID"), objc_msgSend(venueWithFocus, "businessID")}];
      placeDataVenueIdentifierForVenue = [v18 placeDataVenueIdentifierForVenue];
      [_mapsDefaultTraits setVenueIdentifier:placeDataVenueIdentifierForVenue];
    }
  }

  v20 = +[NSDate date];
  v21 = v20;
  if (dateCopy)
  {
    [v20 timeIntervalSinceDate:dateCopy];
    LODWORD(v23) = vcvtad_u64_f64(v22);
    [_mapsDefaultTraits setTimeSinceMapEnteredForeground:v23];
  }

  if (changedDateCopy)
  {
    [v21 timeIntervalSinceDate:changedDateCopy];
    LODWORD(v25) = vcvtad_u64_f64(v24);
    [_mapsDefaultTraits setTimeSinceMapViewportChanged:v25];
  }

  mapType = [viewCopy mapType];
  v27 = 1;
  if (mapType <= 2)
  {
    if (!mapType)
    {
LABEL_23:
      [_mapsDefaultTraits setMode:v27];
      goto LABEL_24;
    }

    if (mapType != 1)
    {
      if (mapType != 2)
      {
        goto LABEL_24;
      }

      goto LABEL_18;
    }

LABEL_22:
    v27 = 2;
    goto LABEL_23;
  }

  if (mapType > 101)
  {
    if (mapType != 102)
    {
      if (mapType != 104)
      {
        goto LABEL_24;
      }

      v27 = 4;
    }

    goto LABEL_23;
  }

  if (mapType == 3)
  {
    goto LABEL_22;
  }

  if (mapType == 4)
  {
LABEL_18:
    v27 = 3;
    goto LABEL_23;
  }

LABEL_24:
  [viewCopy _zoomLevel];
  if (v28 > 0.0)
  {
    [_mapsDefaultTraits setMapZoomLevel:?];
  }

  [_mapsDefaultTraits setPhotosCount:GEOConfigGetUInteger()];
  [_mapsDefaultTraits setPhotoAlbumCount:GEOConfigGetUInteger()];
  [_mapsDefaultTraits setWantsRouteCreationTip:1];

  return _mapsDefaultTraits;
}

- (id)mapsDefaultTraitsForMapRegion:(id)region source:(int)source
{
  v4 = *&source;
  regionCopy = region;
  _mapsDefaultTraits = [(MKMapService *)self _mapsDefaultTraits];
  v8 = _mapsDefaultTraits;
  if (regionCopy)
  {
    [_mapsDefaultTraits setMapRegion:regionCopy];
  }

  if (v4)
  {
    [v8 setSource:v4];
  }

  return v8;
}

- (id)_mapsDefaultTraitsForAnalytics
{
  _mapsDefaultTraits = [(MKMapService *)self _mapsDefaultTraits];
  [(MKMapService *)self _addCarPlayInfoToTraits:_mapsDefaultTraits];
  [(MKMapService *)self _addInVehicleInfoToTraits:_mapsDefaultTraits];
  v4 = [(MKMapService *)self defaultTraitsForAnalyticsWithTraits:_mapsDefaultTraits];

  return _mapsDefaultTraits;
}

+ (unsigned)searchMaxResults
{
  if (qword_10195F570 != -1)
  {
    dispatch_once(&qword_10195F570, &stru_101657CC8);
  }

  return dword_10195F568;
}

- (id)_maps_ticketForSearchHistoryEntry:(id)entry source:(int)source traits:(id)traits isRedoOrAutoRedoSearch:(BOOL)search
{
  v8 = *&source;
  entryCopy = entry;
  traitsCopy = traits;
  if (!search)
  {
    mapRegion = [entryCopy mapRegion];
    [traitsCopy setMapRegion:mapRegion];
  }

  if (v8)
  {
    [traitsCopy setSource:v8];
  }

  languageCode = [entryCopy languageCode];
  if (languageCode)
  {
    if ([traitsCopy deviceDisplayLanguagesCount])
    {
      deviceDisplayLanguages = [traitsCopy deviceDisplayLanguages];
      firstObject = [deviceDisplayLanguages firstObject];
      v16 = [firstObject isEqualToString:languageCode];

      if ((v16 & 1) == 0)
      {
        deviceDisplayLanguages2 = [traitsCopy deviceDisplayLanguages];
        [deviceDisplayLanguages2 removeObject:languageCode];

        deviceDisplayLanguages3 = [traitsCopy deviceDisplayLanguages];
        [deviceDisplayLanguages3 insertObject:languageCode atIndex:0];
      }
    }
  }

  query = [entryCopy query];
  v20 = [(MKMapService *)self ticketForSearchQuery:query completionItem:0 traits:traitsCopy searchSessionData:0];

  return v20;
}

@end