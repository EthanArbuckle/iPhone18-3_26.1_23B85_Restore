@interface MKMapService
+ (unsigned)searchMaxResults;
- (GEOMapServiceTraits)mapsDefaultTraitsWithCarPlayInfo;
- (id)_mapsDefaultTraits;
- (id)_mapsDefaultTraitsForAnalytics;
- (id)_maps_ticketForSearchHistoryEntry:(id)a3 source:(int)a4 traits:(id)a5 isRedoOrAutoRedoSearch:(BOOL)a6;
- (id)_ticketForSearchQuery:(id)a3 completionItem:(id)a4 retainedSearch:(id)a5 traits:(id)a6 searchSessionData:(id)a7;
- (id)mapsDefaultTraitsForMapRegion:(id)a3 source:(int)a4;
- (id)mapsDefaultTraitsForMapView:(id)a3 mapViewEnteredForegroundDate:(id)a4 mapViewportChangedDate:(id)a5;
- (id)mapsDefaultTraitsForMapView:(id)a3 mapViewEnteredForegroundDate:(id)a4 mapViewportChangedDate:(id)a5 directionsType:(unint64_t)a6 includeCarPlayInfo:(BOOL)a7;
- (id)ticketForMapItemToRefine:(id)a3;
- (id)ticketForQuerySearch:(id)a3 source:(int)a4;
- (id)ticketForReverseGeocodeCoordinate:(CLLocationCoordinate2D)a3;
- (id)ticketForReverseGeocodeLocation:(id)a3;
- (id)ticketForURLQuery:(id)a3 identifier:(id)a4 resultProviderId:(int)a5 contentProvider:(id)a6 traits:(id)a7 source:(int)a8;
- (void)_addCarPlayConnectionToTraits:(id)a3;
- (void)_addCarPlayInfoToTraits:(id)a3;
- (void)captureUserAction:(int)a3 onTarget:(int)a4 eventValue:(id)a5 routeIndex:(unint64_t)a6;
@end

@implementation MKMapService

- (id)_mapsDefaultTraits
{
  v3 = [(MKMapService *)self mapsDefaultTraits];
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

  [v3 addTransportType:v6];
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
  [v3 addTransportType:v8];
LABEL_14:
  v9 = +[CarDisplayController sharedInstance];
  v10 = [v9 isCurrentlyConnectedToAnyCarScene];

  if ((v10 & 1) == 0)
  {
    [v3 addTransportType:2];
  }

  [(MKMapService *)self _addCarPlayConnectionToTraits:v3];
  v11 = +[SearchVirtualGarageManager sharedSearchVirtualGarageManager];
  v12 = [v11 updatedTraitsForCurrentGarageState:v3];

  v13 = +[MNNavigationService sharedService];
  v14 = [v13 currentVoiceLanguage];

  if ([v14 length])
  {
    [v12 setDeviceSpokenLocale:v14];
  }

  v15 = [DrivePreferences alloc];
  v16 = +[NSUserDefaults standardUserDefaults];
  v17 = [(DrivePreferences *)v15 initWithDefaults:v16];
  v18 = [(DrivePreferences *)v17 automobileOptions];
  [v12 setAutomobileOptions:v18];

  v19 = [WalkPreferences alloc];
  v20 = +[NSUserDefaults standardUserDefaults];
  v21 = [(WalkPreferences *)v19 initWithDefaults:v20];
  v22 = [(WalkPreferences *)v21 walkingOptions];
  [v12 setWalkingOptions:v22];

  v23 = [TransitPreferences alloc];
  v24 = +[NSUserDefaults standardUserDefaults];
  v25 = [(WatchSyncedPreferences *)v23 initWithDefaults:v24];
  v26 = [(TransitPreferences *)v25 transitOptions];
  [v12 setTransitOptions:v26];

  v27 = [CyclePreferences alloc];
  v28 = +[NSUserDefaults standardUserDefaults];
  v29 = [(CyclePreferences *)v27 initWithDefaults:v28];
  v30 = [(CyclePreferences *)v29 cyclingOptions];
  [v12 setCyclingOptions:v30];

  [v12 setSupportDymSuggestion:1];

  return v12;
}

- (void)captureUserAction:(int)a3 onTarget:(int)a4 eventValue:(id)a5 routeIndex:(unint64_t)a6
{
  v7 = *&a4;
  v8 = *&a3;
  v11 = a5;
  if (a6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  else
  {
    v10 = [GEORouteDetails routeDetailsWithResultIndex:a6];
  }

  [(MKMapService *)self captureUserAction:v8 onTarget:v7 eventValue:v11 routeDetails:v10];
}

- (id)ticketForURLQuery:(id)a3 identifier:(id)a4 resultProviderId:(int)a5 contentProvider:(id)a6 traits:(id)a7 source:(int)a8
{
  v8 = *&a8;
  v10 = *&a5;
  v14 = a7;
  v15 = a6;
  v16 = a4;
  v17 = a3;
  if (!v14)
  {
    v14 = [(MKMapService *)self _mapsDefaultTraits];
  }

  [v14 setSource:v8];
  v18 = [(MKMapService *)self ticketForURLQuery:v17 identifier:v16 resultProviderId:v10 contentProvider:v15 maxResults:+[MKMapService traits:"searchMaxResults"], v14];

  return v18;
}

- (id)ticketForQuerySearch:(id)a3 source:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [v6 mapRegion];
  v8 = [(MKMapService *)self mapsDefaultTraitsForMapRegion:v7 source:v4];

  if ([v6 hasLanguage])
  {
    if ([v8 deviceDisplayLanguagesCount])
    {
      v9 = [v8 deviceDisplayLanguages];
      v10 = [v9 firstObject];
      v11 = [v6 language];
      v12 = [v10 isEqualToString:v11];

      if ((v12 & 1) == 0)
      {
        v13 = [v8 deviceDisplayLanguages];
        v14 = [v6 language];
        [v13 removeObject:v14];

        v15 = [v8 deviceDisplayLanguages];
        v16 = [v6 language];
        [v15 insertObject:v16 atIndex:0];
      }
    }
  }

  v17 = [v6 query];
  v18 = [(MKMapService *)self _ticketForSearchQuery:v17 completionItem:0 retainedSearch:0 traits:v8 searchSessionData:0];

  return v18;
}

- (id)_ticketForSearchQuery:(id)a3 completionItem:(id)a4 retainedSearch:(id)a5 traits:(id)a6 searchSessionData:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [(MKMapService *)self ticketForSearchQuery:v16 completionItem:v15 retainedSearch:v14 maxResults:+[MKMapService traits:"searchMaxResults"]searchSessionData:v13, v12];

  return v17;
}

- (id)ticketForMapItemToRefine:(id)a3
{
  v4 = a3;
  v5 = [(MKMapService *)self _mapsDefaultTraits];
  v6 = [(MKMapService *)self ticketForMapItemToRefine:v4 traits:v5];

  return v6;
}

- (id)ticketForReverseGeocodeLocation:(id)a3
{
  v4 = a3;
  v5 = [(MKMapService *)self _mapsDefaultTraits];
  v6 = [(MKMapService *)self ticketForReverseGeocodeLocation:v4 traits:v5];

  return v6;
}

- (id)ticketForReverseGeocodeCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v6 = [(MKMapService *)self _mapsDefaultTraits];
  v7 = [(MKMapService *)self ticketForReverseGeocodeCoordinate:v6 traits:latitude, longitude];

  return v7;
}

- (void)_addCarPlayInfoToTraits:(id)a3
{
  v23 = a3;
  v3 = +[CarDisplayController sharedInstance];
  v4 = [v3 isCurrentlyConnectedToAnyCarScene];

  if (v4)
  {
    v5 = +[CarDisplayController sharedInstance];
    v6 = [v5 screen];

    v7 = [v6 _capabilityForKey:_UIScreenCapabilityTouchLevelsKey];
    v8 = [v7 integerValue];

    v9 = 3;
    if (v8 < 3)
    {
      v10 = (v8 + 1);
    }

    else
    {
      v10 = 3;
    }

    [v23 setCarHeadunitInteractionModel:v10];
    [v6 bounds];
    x = v25.origin.x;
    y = v25.origin.y;
    width = v25.size.width;
    height = v25.size.height;
    [v23 setCarHeadunitPixelHeight:CGRectGetHeight(v25)];
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    [v23 setCarHeadunitPixelWidth:CGRectGetWidth(v26)];
    v15 = +[MapsExternalDevice sharedInstance];
    v16 = [v15 manufacturer];
    [v23 setCarHeadunitManufacturer:v16];

    v17 = [v15 model];
    [v23 setCarHeadunitModel:v17];

    v18 = +[NSUserDefaults standardUserDefaults];
    v19 = [v18 BOOLForKey:@"CarEVSearchTestingDebug"];

    if ((v19 & 1) == 0)
    {
      v21 = [v15 hasEngineType];
      v20 = v23;
      if (!v21)
      {
        goto LABEL_15;
      }

      [v23 clearEngineTypes];
      v22 = [v15 engineType];
      if (v22)
      {
        [v23 addEngineType:1];
      }

      if ((v22 & 4) != 0)
      {
        [v23 addEngineType:3];
      }

      v20 = v23;
      if ((v22 & 2) != 0)
      {
        [v23 addEngineType:2];
        v20 = v23;
      }

      if ((v22 & 8) == 0)
      {
        goto LABEL_15;
      }

      v9 = 4;
    }

    [v23 addEngineType:v9];
    v20 = v23;
LABEL_15:
    [v20 setSupportDirectionIntentAutocomplete:0];
    [v23 setSupportDirectionIntentSearch:0];
    [v23 setSupportUnresolvedDirectionIntent:0];
    [v23 setSupportClientRankingFeatureMetadata:0];
    [v23 setSupportClientRankingCompositeFeatures:0];
    [v23 setSupportStructuredRapAffordance:0];
  }
}

- (void)_addCarPlayConnectionToTraits:(id)a3
{
  v8 = a3;
  v3 = +[CarDisplayController sharedInstance];
  v4 = [v3 isCurrentlyConnectedToAnyCarScene];

  if (v4)
  {
    v5 = +[MapsExternalDevice sharedInstance];
    v6 = [v5 connectionType];
    if (v6 == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2 * (v6 == 2);
    }

    [v8 setCarHeadunitConnectionType:v7];
  }
}

- (GEOMapServiceTraits)mapsDefaultTraitsWithCarPlayInfo
{
  v3 = [(MKMapService *)self _mapsDefaultTraits];
  [(MKMapService *)self _addCarPlayInfoToTraits:v3];

  return v3;
}

- (id)mapsDefaultTraitsForMapView:(id)a3 mapViewEnteredForegroundDate:(id)a4 mapViewportChangedDate:(id)a5 directionsType:(unint64_t)a6 includeCarPlayInfo:(BOOL)a7
{
  v7 = a7;
  v10 = [(MKMapService *)self mapsDefaultTraitsForMapView:a3 mapViewEnteredForegroundDate:a4 mapViewportChangedDate:a5];
  v11 = v10;
  if (a6 <= 3)
  {
    if (a6 == 2)
    {
      v12 = 2;
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (a6 == 4)
  {
    v12 = 1;
  }

  else
  {
    if (a6 != 8)
    {
LABEL_7:
      v12 = 0;
      goto LABEL_10;
    }

    v12 = 3;
  }

LABEL_10:
  [v10 addTransportType:v12];
  v13 = [_MKQuickRouteManager counterpartForTransportType:a6];
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
  if (v7)
  {
    [(MKMapService *)self _addCarPlayInfoToTraits:v11];
  }

  return v11;
}

- (id)mapsDefaultTraitsForMapView:(id)a3 mapViewEnteredForegroundDate:(id)a4 mapViewportChangedDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MKMapService *)self _mapsDefaultTraits];
  if (v8)
  {
    [v8 visibleMapRect];
    v16 = [[GEOMapRegion alloc] initWithMapRect:{v12, v13, v14, v15}];
    [v11 setMapRegion:v16];

    v17 = [v8 venueWithFocus];
    if (v17 && sub_10000FA08(v8) != 5)
    {
      v18 = [[GEOVenueIdentifier alloc] initWithVenueID:objc_msgSend(v17 featureID:"venueID") businessID:{objc_msgSend(v17, "featureID"), objc_msgSend(v17, "businessID")}];
      v19 = [v18 placeDataVenueIdentifierForVenue];
      [v11 setVenueIdentifier:v19];
    }
  }

  v20 = +[NSDate date];
  v21 = v20;
  if (v9)
  {
    [v20 timeIntervalSinceDate:v9];
    LODWORD(v23) = vcvtad_u64_f64(v22);
    [v11 setTimeSinceMapEnteredForeground:v23];
  }

  if (v10)
  {
    [v21 timeIntervalSinceDate:v10];
    LODWORD(v25) = vcvtad_u64_f64(v24);
    [v11 setTimeSinceMapViewportChanged:v25];
  }

  v26 = [v8 mapType];
  v27 = 1;
  if (v26 <= 2)
  {
    if (!v26)
    {
LABEL_23:
      [v11 setMode:v27];
      goto LABEL_24;
    }

    if (v26 != 1)
    {
      if (v26 != 2)
      {
        goto LABEL_24;
      }

      goto LABEL_18;
    }

LABEL_22:
    v27 = 2;
    goto LABEL_23;
  }

  if (v26 > 101)
  {
    if (v26 != 102)
    {
      if (v26 != 104)
      {
        goto LABEL_24;
      }

      v27 = 4;
    }

    goto LABEL_23;
  }

  if (v26 == 3)
  {
    goto LABEL_22;
  }

  if (v26 == 4)
  {
LABEL_18:
    v27 = 3;
    goto LABEL_23;
  }

LABEL_24:
  [v8 _zoomLevel];
  if (v28 > 0.0)
  {
    [v11 setMapZoomLevel:?];
  }

  [v11 setPhotosCount:GEOConfigGetUInteger()];
  [v11 setPhotoAlbumCount:GEOConfigGetUInteger()];
  [v11 setWantsRouteCreationTip:1];

  return v11;
}

- (id)mapsDefaultTraitsForMapRegion:(id)a3 source:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [(MKMapService *)self _mapsDefaultTraits];
  v8 = v7;
  if (v6)
  {
    [v7 setMapRegion:v6];
  }

  if (v4)
  {
    [v8 setSource:v4];
  }

  return v8;
}

- (id)_mapsDefaultTraitsForAnalytics
{
  v3 = [(MKMapService *)self _mapsDefaultTraits];
  [(MKMapService *)self _addCarPlayInfoToTraits:v3];
  [(MKMapService *)self _addInVehicleInfoToTraits:v3];
  v4 = [(MKMapService *)self defaultTraitsForAnalyticsWithTraits:v3];

  return v3;
}

+ (unsigned)searchMaxResults
{
  if (qword_10195F570 != -1)
  {
    dispatch_once(&qword_10195F570, &stru_101657CC8);
  }

  return dword_10195F568;
}

- (id)_maps_ticketForSearchHistoryEntry:(id)a3 source:(int)a4 traits:(id)a5 isRedoOrAutoRedoSearch:(BOOL)a6
{
  v8 = *&a4;
  v10 = a3;
  v11 = a5;
  if (!a6)
  {
    v12 = [v10 mapRegion];
    [v11 setMapRegion:v12];
  }

  if (v8)
  {
    [v11 setSource:v8];
  }

  v13 = [v10 languageCode];
  if (v13)
  {
    if ([v11 deviceDisplayLanguagesCount])
    {
      v14 = [v11 deviceDisplayLanguages];
      v15 = [v14 firstObject];
      v16 = [v15 isEqualToString:v13];

      if ((v16 & 1) == 0)
      {
        v17 = [v11 deviceDisplayLanguages];
        [v17 removeObject:v13];

        v18 = [v11 deviceDisplayLanguages];
        [v18 insertObject:v13 atIndex:0];
      }
    }
  }

  v19 = [v10 query];
  v20 = [(MKMapService *)self ticketForSearchQuery:v19 completionItem:0 traits:v11 searchSessionData:0];

  return v20;
}

@end