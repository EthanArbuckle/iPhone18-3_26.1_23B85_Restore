@interface _MKHandlerURLHandlingTask
- ($1027FC36A834EF75B245214DFCE45A0D)regionForLaunchOptions:(SEL)a3 andMapItems:(id)a4;
- (BOOL)URLHandler:(id)a3 enterLookAroundWithLocationQueryItem:(id)a4;
- (BOOL)URLHandler:(id)a3 enterLookAroundWithViewState:(id)a4;
- (BOOL)URLHandler:(id)a3 initiateOfflineDownloadForRegion:(id)a4 displayName:(id)a5;
- (BOOL)URLHandler:(id)a3 launchIntoDirectionsWithMapItems:(id)a4 options:(id)a5 context:(id)a6;
- (BOOL)URLHandler:(id)a3 launchIntoPhotoThumbnailGalleryForMapItem:(id)a4 albumIndex:(unint64_t)a5 options:(id)a6 context:(id)a7;
- (BOOL)URLHandler:(id)a3 launchIntoRAPForMapItem:(id)a4 options:(id)a5 context:(id)a6;
- (BOOL)URLHandler:(id)a3 launchIntoSearchWithMapItems:(id)a4 options:(id)a5 context:(id)a6;
- (BOOL)URLHandler:(id)a3 launchIntoShowMapItems:(id)a4 options:(id)a5 context:(id)a6;
- (BOOL)URLHandler:(id)a3 launchIntoTableBookingForMapItem:(id)a4 options:(id)a5 context:(id)a6;
- (BOOL)URLHandler:(id)a3 launchIntoTesterWithParam:(id)a4;
- (BOOL)URLHandler:(id)a3 reportAnIncident:(int)a4;
- (BOOL)URLHandler:(id)a3 search:(id)a4 at:(CLLocationCoordinate2D)a5;
- (BOOL)URLHandler:(id)a3 setContentProvider:(id)a4;
- (BOOL)URLHandler:(id)a3 setMapType:(unint64_t)a4;
- (BOOL)URLHandler:(id)a3 setRegion:(id *)a4;
- (BOOL)URLHandler:(id)a3 setRegionWithCamera:(id *)a4 pitch:(double)a5 yaw:(double)a6;
- (BOOL)URLHandler:(id)a3 setRegionWithCenter:(CLLocationCoordinate2D)a4;
- (BOOL)URLHandler:(id)a3 setRegionWithCenter:(CLLocationCoordinate2D)a4 altitude:(double)a5;
- (BOOL)URLHandler:(id)a3 setRegionWithCenter:(CLLocationCoordinate2D)a4 zoomLevel:(double)a5;
- (BOOL)URLHandler:(id)a3 setRegionWithCenterAndCamera:(CLLocationCoordinate2D)a4 altitude:(double)a5 pitch:(double)a6 yaw:(double)a7;
- (BOOL)URLHandler:(id)a3 setRegionWithCenterAndCamera:(CLLocationCoordinate2D)a4 zoomLevel:(double)a5 pitch:(double)a6 yaw:(double)a7;
- (BOOL)URLHandler:(id)a3 setSchemeForCapture:(id)a4 sourceApplication:(id)a5 isLaunchedFromTTL:(BOOL)a6 ttlEventTime:(id)a7;
- (BOOL)URLHandler:(id)a3 setShowTraffic:(BOOL)a4;
- (BOOL)URLHandler:(id)a3 setUserTrackingMode:(int64_t)a4;
- (BOOL)URLHandler:(id)a3 showAddress:(id)a4 label:(id)a5;
- (BOOL)URLHandler:(id)a3 showAddress:(id)a4 label:(id)a5 at:(CLLocationCoordinate2D)a6;
- (BOOL)URLHandler:(id)a3 showAddressByCNContactIdentifier:(id)a4 addressIdentifier:(id)a5;
- (BOOL)URLHandler:(id)a3 showAddressByRecordID:(id)a4 addressID:(id)a5;
- (BOOL)URLHandler:(id)a3 showCollection:(id)a4;
- (BOOL)URLHandler:(id)a3 showCuratedCollectionWithID:(unint64_t)a4 resultProviderID:(int)a5;
- (BOOL)URLHandler:(id)a3 showDirectionsFrom:(id)a4 to:(id)a5 using:(unint64_t)a6 muid:(unint64_t)a7 providerId:(int)a8 showLabel:(id)a9 directionsOptions:(id)a10;
- (BOOL)URLHandler:(id)a3 showDirectionsFrom:(id)a4 toDestinationItems:(id)a5 using:(unint64_t)a6 directionsOptions:(id)a7;
- (BOOL)URLHandler:(id)a3 showExternalBusinessID:(id)a4 ofContentProvider:(id)a5;
- (BOOL)URLHandler:(id)a3 showFavoritesType:(int64_t)a4;
- (BOOL)URLHandler:(id)a3 showLabel:(id)a4 at:(CLLocationCoordinate2D)a5;
- (BOOL)URLHandler:(id)a3 showLineWithID:(unint64_t)a4 name:(id)a5;
- (BOOL)URLHandler:(id)a3 showMUID:(unint64_t)a4 resultProviderID:(int)a5 coordinate:(CLLocationCoordinate2D)a6 query:(id)a7;
- (BOOL)URLHandler:(id)a3 showMapWithoutPinAt:(CLLocationCoordinate2D)a4;
- (BOOL)URLHandler:(id)a3 showPublisherWithID:(unint64_t)a4 resultProviderID:(int)a5;
- (BOOL)URLHandler:(id)a3 showReportAProblemWithLocationQuery:(id)a4;
- (BOOL)URLHandlerShowAllCuratedCollections:(id)a3;
- (BOOL)URLHandlerShowCarDestinations:(id)a3;
- (BOOL)URLHandlerShowExploreGuides:(id)a3 exploreGuides:(id)a4 cityName:(id)a5;
- (BOOL)URLHandlerShowMyLocationCard:(id)a3;
- (BOOL)URLHandlerShowParkedCar:(id)a3;
- (BOOL)URLHandlerShowReports:(id)a3;
- (BOOL)_URLHandler:(id)a3 addFindMyStopWithHandleIdentifier:(id)a4 coordinate:(id)a5;
- (BOOL)_URLHandler:(id)a3 addStopWithMapItem:(id)a4;
- (BOOL)_shouldAddStopWithLaunchOptions:(id)a3 requireLaunchIntoNavOrDirectionsModeOption:(BOOL)a4 requireSearchAlongRouteOption:(BOOL)a5;
- (BOOL)isCompatibleWithNavigation;
- (BOOL)shouldResetUI;
- (id)displayOptions;
- (id)mapsActivity;
- (void)URLHandler:(id)a3 didFinishAsynchronousHandlingWithError:(id)a4;
- (void)URLHandlerWillStartAsynchronousHandling:(id)a3;
- (void)_createRichMapsActivity;
- (void)_processMKOptions:(id)a3;
- (void)_sendWidgetAnalytics;
- (void)performTask;
- (void)taskFailed;
- (void)taskFinished:(id)a3;
@end

@implementation _MKHandlerURLHandlingTask

- ($1027FC36A834EF75B245214DFCE45A0D)regionForLaunchOptions:(SEL)a3 andMapItems:(id)a4
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 objectForKey:MKLaunchOptionsMapSpanKey];
  v10 = [v7 objectForKey:MKLaunchOptionsMapCenterKey];
  v11 = [v7 objectForKey:MKLaunchOptionsMapRadiusInMetersKey];
  if (v10)
  {
    [v10 MKCoordinateValue];
    if (!(v9 | v11))
    {
      [(URLHandlingTask *)self windowSize];
      MKCoordinateRegionMakeWithZoomLevel();
      goto LABEL_43;
    }

    if (v11)
    {
      goto LABEL_4;
    }

LABEL_42:
    [v9 MKCoordinateSpanValue];
    goto LABEL_43;
  }

  if (![v8 count])
  {
    goto LABEL_43;
  }

  if (!(v9 | v11))
  {
    if ([v8 count] == 1)
    {
      v24 = [v8 objectAtIndex:0];
      [v24 _coordinate];
      [(URLHandlingTask *)self windowSize];
      MKCoordinateRegionMakeWithZoomLevel();

      goto LABEL_43;
    }

    y = MKMapRectNull.origin.y;
    width = MKMapRectNull.size.width;
    height = MKMapRectNull.size.height;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v28 = v8;
    v29 = [v28 countByEnumeratingWithState:&v48 objects:v56 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v49;
      x = MKMapRectNull.origin.x;
      v33 = y;
      v34 = width;
      v35 = height;
      do
      {
        for (i = 0; i != v30; i = i + 1)
        {
          if (*v49 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v37 = *(*(&v48 + 1) + 8 * i);
          if (x == MKMapRectNull.origin.x && v33 == y && v34 == width && v35 == height)
          {
            v41 = [v37 _displayMapRegion];
            GEOMapRectForMapRegion();
          }

          else
          {
            v41 = [v37 _displayMapRegion];
            GEOMapRectForMapRegion();
            v62.origin.x = v42;
            v62.origin.y = v43;
            v62.size.width = v44;
            v62.size.height = v45;
            v60.origin.x = x;
            v60.origin.y = v33;
            v60.size.width = v34;
            v60.size.height = v35;
            v61 = MKMapRectUnion(v60, v62);
          }

          x = v61.origin.x;
          v33 = v61.origin.y;
          v34 = v61.size.width;
          v35 = v61.size.height;
        }

        v30 = [v28 countByEnumeratingWithState:&v48 objects:v56 count:16];
      }

      while (v30);
    }

    else
    {
      x = MKMapRectNull.origin.x;
      v33 = y;
      v34 = width;
      v35 = height;
    }

    v12 = x;
    v13 = v33;
    v14 = v34;
    v15 = v35;
    goto LABEL_5;
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v16 = v8;
  v17 = [v16 countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v53;
    v20 = 0.0;
    v21 = 0.0;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v53 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v52 + 1) + 8 * j) _coordinate];
        v23 = MKMapPointForCoordinate(v58);
        v21 = v23.x + v21;
        v20 = v23.y + v20;
      }

      v18 = [v16 countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v18);
  }

  else
  {
    v20 = 0.0;
    v21 = 0.0;
  }

  v46 = v21 / [v16 count];
  v59.y = v20 / [v16 count];
  v59.x = v46;
  MKCoordinateForMapPoint(v59);
  if (!v11)
  {
    goto LABEL_42;
  }

LABEL_4:
  [v11 doubleValue];
  MKMapRectMakeWithRadialDistance();
LABEL_5:
  MKCoordinateRegionForMapRect(*&v12);
LABEL_43:

  return result;
}

- (BOOL)URLHandler:(id)a3 initiateOfflineDownloadForRegion:(id)a4 displayName:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(URLHandlingTask *)self sourceApplication];
  v10 = [v9 isEqualToString:@"com.apple.Spotlight"];

  if (v10)
  {
    [GEOAPPortal captureUserAction:381 target:702 value:0];
  }

  v11 = objc_alloc_init(OpenOfflineMapsManagementAction);
  [(OpenOfflineMapsManagementAction *)v11 setDownloadRegion:v8];

  [(OpenOfflineMapsManagementAction *)v11 setDownloadRegionName:v7];
  v12 = [[RichMapsActivity alloc] initWithMapsAction:v11];
  [(_MKHandlerURLHandlingTask *)self taskFinished:v12];

  return 1;
}

- (BOOL)URLHandler:(id)a3 reportAnIncident:(int)a4
{
  v5 = [[ReportIncidentAction alloc] initWithIncidentType:*&a4];
  currentAction = self->_currentAction;
  self->_currentAction = &v5->super;

  return 1;
}

- (BOOL)URLHandler:(id)a3 showReportAProblemWithLocationQuery:(id)a4
{
  v5 = a4;
  v6 = [[PresentRAPAction alloc] initWithLocationQueryItem:v5];

  currentAction = self->_currentAction;
  self->_currentAction = &v6->super;

  return 1;
}

- (BOOL)URLHandlerShowExploreGuides:(id)a3 exploreGuides:(id)a4 cityName:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [[ShowExploreGuidesAction alloc] initWithExploreGuides:v8 cityName:v7];

  currentAction = self->_currentAction;
  self->_currentAction = &v9->super;

  return 1;
}

- (BOOL)URLHandlerShowReports:(id)a3
{
  v4 = [[PresentRAPAction alloc] initWithShowReports:1];
  currentAction = self->_currentAction;
  self->_currentAction = &v4->super;

  return 1;
}

- (BOOL)URLHandlerShowAllCuratedCollections:(id)a3
{
  v4 = objc_alloc_init(ShowAllCuratedCollectionsAction);
  currentAction = self->_currentAction;
  self->_currentAction = &v4->super;

  return 1;
}

- (BOOL)URLHandler:(id)a3 showPublisherWithID:(unint64_t)a4 resultProviderID:(int)a5
{
  v6 = [[ShowPublisherAction alloc] initWithPublisherID:a4 resultProviderID:*&a5];
  currentAction = self->_currentAction;
  self->_currentAction = &v6->super;

  return 1;
}

- (BOOL)URLHandler:(id)a3 showCuratedCollectionWithID:(unint64_t)a4 resultProviderID:(int)a5
{
  v6 = [[ShowCuratedCollectionAction alloc] initWithCuratedCollectionID:a4 resultProviderID:*&a5];
  currentAction = self->_currentAction;
  self->_currentAction = &v6->super;

  return 1;
}

- (BOOL)URLHandlerShowMyLocationCard:(id)a3
{
  v4 = objc_alloc_init(ShowMyLocationCardAction);
  currentAction = self->_currentAction;
  self->_currentAction = &v4->super;

  return 1;
}

- (BOOL)URLHandlerShowParkedCar:(id)a3
{
  v4 = [[PresentParkedCarAction alloc] initWithParkedCarAction:0];
  currentAction = self->_currentAction;
  self->_currentAction = &v4->super;

  return 1;
}

- (BOOL)URLHandlerShowCarDestinations:(id)a3
{
  v4 = objc_alloc_init(ShowCarDestinationsAction);
  currentAction = self->_currentAction;
  self->_currentAction = &v4->super;

  return 1;
}

- (BOOL)URLHandler:(id)a3 showCollection:(id)a4
{
  v5 = a4;
  v6 = [[ShowCollectionAction alloc] initWithCollectionStorage:v5];

  currentAction = self->_currentAction;
  self->_currentAction = &v6->super;

  return 1;
}

- (BOOL)URLHandler:(id)a3 launchIntoTesterWithParam:(id)a4
{
  v4 = a4;
  v5 = sub_100005610();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "URLHandlingTask launchIntoTesterWithParam %@", &v8, 0xCu);
  }

  v6 = objc_alloc_init(MapsTester);
  [(MapsTester *)v6 runTestCode];

  return 1;
}

- (BOOL)URLHandler:(id)a3 enterLookAroundWithLocationQueryItem:(id)a4
{
  v5 = a4;
  v6 = sub_100005610();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "URLHandlingTask enterLookAroundWithLocationQueryItem %@", &v10, 0xCu);
  }

  v7 = [[OpenLookAroundAction alloc] initWithLocationQueryItem:v5];
  currentAction = self->_currentAction;
  self->_currentAction = &v7->super;

  return 1;
}

- (BOOL)URLHandler:(id)a3 enterLookAroundWithViewState:(id)a4
{
  v5 = a4;
  v6 = sub_100005610();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "URLHandlingTask enterLookAroundWithViewState %@", &v10, 0xCu);
  }

  v7 = [[OpenLookAroundAction alloc] initWithMuninViewState:v5];
  currentAction = self->_currentAction;
  self->_currentAction = &v7->super;

  return 1;
}

- (BOOL)URLHandler:(id)a3 showFavoritesType:(int64_t)a4
{
  v6 = sub_100005610();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v10 = 134217984;
    v11 = a4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "URLHandlingTask showFavoritesType %ld", &v10, 0xCu);
  }

  v7 = [[OpenFavoritesAction alloc] initWithFavoriteType:a4];
  currentAction = self->_currentAction;
  self->_currentAction = &v7->super;

  return 1;
}

- (BOOL)URLHandler:(id)a3 showLineWithID:(unint64_t)a4 name:(id)a5
{
  v7 = a5;
  v8 = sub_100005610();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v13 = 134218242;
    v14 = a4;
    v15 = 2112;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "URLHandlingTask showLineWithID %llu lineName %@", &v13, 0x16u);
  }

  v9 = [(_MKHandlerURLHandlingTask *)self mapsActivity];
  [v9 setSelectedTransitFeatureID:a4];

  v10 = [(_MKHandlerURLHandlingTask *)self mapsActivity];
  [v10 setSelectedTransitLineName:v7];

  v11 = [(_MKHandlerURLHandlingTask *)self displayOptions];
  [v11 setMapType:3];

  return 1;
}

- (BOOL)URLHandler:(id)a3 search:(id)a4 at:(CLLocationCoordinate2D)a5
{
  longitude = a5.longitude;
  latitude = a5.latitude;
  v8 = a4;
  v9 = sub_100005610();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v17 = 138412290;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "URLHandlingTask search %@ searchCoordinate", &v17, 0xCu);
  }

  v10 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v10 setSearchString:v8];
  v11 = [(MapsActivity *)self->_mapsActivity displayOptions];
  v12 = [v11 camera];

  if (!v12)
  {
    v13 = CLLocationCoordinate2DMake(latitude, longitude);
    [(SearchFieldItem *)v10 setCoordinateHint:v13.latitude, v13.longitude];
  }

  self->_userLocationDesiredAccuracy = kCLLocationAccuracyBest;
  v14 = [[SearchAction alloc] initWithSearchItem:v10 alongRoute:self->_searchAlongRoute];
  currentAction = self->_currentAction;
  self->_currentAction = &v14->super;

  return 1;
}

- (BOOL)URLHandler:(id)a3 showExternalBusinessID:(id)a4 ofContentProvider:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = sub_100005610();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138412546;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "URLHandlingTask showExternalBusinessID %@ contentProvider %@", &v15, 0x16u);
  }

  if (!self->_contentProvider)
  {
    v10 = [v8 copy];
    contentProvider = self->_contentProvider;
    self->_contentProvider = v10;
  }

  v12 = [[ResolveMUIDAction alloc] initWithBusinessID:v7 contentProvider:self->_contentProvider];
  currentAction = self->_currentAction;
  self->_currentAction = &v12->super;

  return 1;
}

- (BOOL)URLHandler:(id)a3 showMUID:(unint64_t)a4 resultProviderID:(int)a5 coordinate:(CLLocationCoordinate2D)a6 query:(id)a7
{
  longitude = a6.longitude;
  latitude = a6.latitude;
  v9 = *&a5;
  v12 = a7;
  v13 = sub_100005610();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v19 = 134218498;
    v20 = a4;
    v21 = 1024;
    v22 = v9;
    v23 = 2112;
    v24 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "URLHandlingTask showMUID %llu  resultProviderID:%d query:%@", &v19, 0x1Cu);
  }

  v14 = [[ExternalURLQuery alloc] initWithQuery:v12 coordinate:a4 muid:v9 resultProviderId:self->_contentProvider contentProvider:latitude, longitude];
  if (v14)
  {
    v15 = objc_alloc_init(SearchFieldItem);
    [(SearchFieldItem *)v15 setExternalURLQuery:v14];
    v16 = [[SearchAction alloc] initWithSearchItem:v15 alongRoute:self->_searchAlongRoute];
    currentAction = self->_currentAction;
    self->_currentAction = &v16->super;

    self->_userLocationDesiredAccuracy = kCLLocationAccuracyBest;
  }

  return 1;
}

- (BOOL)URLHandler:(id)a3 showLabel:(id)a4 at:(CLLocationCoordinate2D)a5
{
  longitude = a5.longitude;
  latitude = a5.latitude;
  v8 = a4;
  v9 = sub_100005610();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412290;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "URLHandlingTask label %@  at coordinate", &v13, 0xCu);
  }

  v10 = [[ReverseGeocodeAction alloc] initWithLabel:v8 atCoordinate:latitude, longitude];
  currentAction = self->_currentAction;
  self->_currentAction = &v10->super;

  self->_userLocationDesiredAccuracy = kCLLocationAccuracyBest;
  return 1;
}

- (BOOL)URLHandler:(id)a3 showAddress:(id)a4 label:(id)a5 at:(CLLocationCoordinate2D)a6
{
  longitude = a6.longitude;
  latitude = a6.latitude;
  v10 = a4;
  v11 = a5;
  v12 = sub_100005610();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138412546;
    v17 = v10;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "URLHandlingTask showAddress %@ addressID %@ at coordinate", &v16, 0x16u);
  }

  v13 = [[PlaceRefinementAction alloc] initWithLabel:v11 atCoordinate:v10 address:latitude, longitude];
  currentAction = self->_currentAction;
  self->_currentAction = &v13->super.super;

  self->_userLocationDesiredAccuracy = kCLLocationAccuracyBest;
  return 1;
}

- (BOOL)URLHandler:(id)a3 showAddress:(id)a4 label:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = sub_100005610();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412546;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "URLHandlingTask showAddress %@ addressID %@", &v14, 0x16u);
  }

  v10 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v10 setAddressString:v7];
  [(SearchFieldItem *)v10 setAddressStringLabel:v8];
  v11 = [[SearchAction alloc] initWithSearchItem:v10 alongRoute:self->_searchAlongRoute];
  currentAction = self->_currentAction;
  self->_currentAction = &v11->super;

  self->_userLocationDesiredAccuracy = kCLLocationAccuracyBest;
  return 1;
}

- (BOOL)URLHandler:(id)a3 showAddressByCNContactIdentifier:(id)a4 addressIdentifier:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = sub_100005610();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v17 = 138412546;
    v18 = v7;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "URLHandlingTask showAddressByCNContactIdentifier %@ addressID %@", &v17, 0x16u);
  }

  if ([v7 length] && objc_msgSend(v8, "length"))
  {
    v10 = [[AddressBookAddress alloc] initWithCNContactIdentifier:v7 addressIdentifier:v8];
    v11 = [(AddressBookAddress *)v10 contact];
    v12 = v11 != 0;

    if (v11)
    {
      v13 = objc_alloc_init(SearchFieldItem);
      [(SearchFieldItem *)v13 setAddress:v10];
      v14 = [[SearchAction alloc] initWithSearchItem:v13 alongRoute:self->_searchAlongRoute];
      currentAction = self->_currentAction;
      self->_currentAction = &v14->super;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)URLHandler:(id)a3 showAddressByRecordID:(id)a4 addressID:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = sub_100005610();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v18 = 138412546;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "URLHandlingTask showAddressByRecordID %@ addressID %@", &v18, 0x16u);
  }

  v10 = 0;
  if (v7 && v8)
  {
    v11 = [v7 intValue];
    if (v11 == -1)
    {
      v10 = 0;
    }

    else
    {
      v12 = -[AddressBookAddress initWithRecordID:addressID:]([AddressBookAddress alloc], "initWithRecordID:addressID:", v11, [v8 intValue]);
      v13 = [(AddressBookAddress *)v12 contact];
      v10 = v13 != 0;

      if (v13)
      {
        v14 = objc_alloc_init(SearchFieldItem);
        [(SearchFieldItem *)v14 setAddress:v12];
        v15 = [[SearchAction alloc] initWithSearchItem:v14 alongRoute:self->_searchAlongRoute];
        currentAction = self->_currentAction;
        self->_currentAction = &v15->super;
      }
    }
  }

  return v10;
}

- (BOOL)URLHandler:(id)a3 launchIntoTableBookingForMapItem:(id)a4 options:(id)a5 context:(id)a6
{
  v8 = a4;
  v9 = a5;
  v10 = sub_100005610();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412546;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "URLHandlingTask launchIntoTableBookingForMapItem %@ options %@", &v14, 0x16u);
  }

  v11 = [[PresentTableBookingAction alloc] initWithMapItem:v8];
  currentAction = self->_currentAction;
  self->_currentAction = &v11->super;

  return 1;
}

- (BOOL)URLHandler:(id)a3 launchIntoPhotoThumbnailGalleryForMapItem:(id)a4 albumIndex:(unint64_t)a5 options:(id)a6 context:(id)a7
{
  v10 = a4;
  v11 = a6;
  v12 = sub_100005610();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v16 = 134218498;
    v17 = a5;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "URLHandlingTask launchIntoPhotoThumbnailGalleryForMapItem %lu albumIndex %@ options %@", &v16, 0x20u);
  }

  v13 = [[PresentPhotoThumbnailGalleryAction alloc] initWithMapItem:v10 albumIndex:a5];
  currentAction = self->_currentAction;
  self->_currentAction = &v13->super;

  return 1;
}

- (BOOL)URLHandler:(id)a3 launchIntoRAPForMapItem:(id)a4 options:(id)a5 context:(id)a6
{
  v8 = a4;
  v9 = a5;
  v10 = sub_100005610();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412546;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "URLHandlingTask launchIntoRAPForMapItem %@ options %@", &v14, 0x16u);
  }

  v11 = [[PresentRAPAction alloc] initWithMapItem:v8];
  currentAction = self->_currentAction;
  self->_currentAction = &v11->super;

  return 1;
}

- (BOOL)URLHandler:(id)a3 showDirectionsFrom:(id)a4 toDestinationItems:(id)a5 using:(unint64_t)a6 directionsOptions:(id)a7
{
  v85 = a3;
  v10 = a4;
  v11 = a5;
  v88 = a7;
  v12 = sub_100005610();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = [v10 resolvedLocation];
    *buf = 138412290;
    v102 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "URLHandlingTask showDirectionsFrom %@...", buf, 0xCu);
  }

  v87 = v10;

  v14 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v11, "count")}];
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  obj = v11;
  v15 = [obj countByEnumeratingWithState:&v97 objects:v107 count:16];
  p_cache = &OBJC_METACLASS___MapsAppTestTileData.cache;
  if (v15)
  {
    v17 = v15;
    v93 = MKURLDestinationAddressKey;
    v94 = *v98;
    v91 = MKURLDestinationProviderIDKey;
    v92 = MKURLDestinationMUIDKey;
    v90 = MKURLDestinationLabelKey;
    v18 = GEOURLCurrentLocationKey;
    longitude = kCLLocationCoordinate2DInvalid.longitude;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v98 != v94)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v97 + 1) + 8 * i);
        v22 = [v21 objectForKeyedSubscript:v93];
        v23 = [v21 objectForKeyedSubscript:v92];
        v24 = [v23 unsignedLongValue];

        v25 = [v21 objectForKeyedSubscript:v91];
        v26 = [v25 intValue];

        v27 = [v21 objectForKeyedSubscript:v90];
        v28 = objc_alloc_init((p_cache + 88));
        if ([v22 isEqualToString:v18])
        {
          v29 = +[SearchResult currentLocationSearchResult];
          [v28 setSearchResult:v29];
        }

        else if (v24)
        {
          v30 = v14;
          v31 = sub_100005610();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            v102 = v27;
            v103 = 2048;
            v104 = v24;
            v105 = 1024;
            v106 = v26;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "\t-> %@ (ID=%llu, providerID=%d)", buf, 0x1Cu);
          }

          v32 = [[ExternalURLQuery alloc] initWithQuery:v27 coordinate:v24 muid:v26 resultProviderId:0 contentProvider:kCLLocationCoordinate2DInvalid.latitude, longitude];
          [v28 setExternalURLQuery:v32];

          if (v27)
          {
            v33 = v27;
          }

          else
          {
            v33 = v22;
          }

          [v28 setExternalQueryName:v33];
          v14 = v30;
          p_cache = (&OBJC_METACLASS___MapsAppTestTileData + 16);
        }

        else if ([v22 length])
        {
          v34 = sub_100005610();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v102 = v22;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "\t-> %@", buf, 0xCu);
          }

          [v28 setSearchString:v22];
        }

        [v14 addObject:v28];
      }

      v17 = [obj countByEnumeratingWithState:&v97 objects:v107 count:16];
    }

    while (v17);
  }

  v35 = objc_alloc_init((p_cache + 88));
  v36 = v87;
  if ([v87 isValid])
  {
    v37 = v88;
    if ([v87 isCurrentLocation])
    {
      v38 = +[SearchResult currentLocationSearchResult];
      [v35 setSearchResult:v38];
    }

    else if ([v87 hasMapItemIdentifier])
    {
      v48 = [ExternalURLQuery alloc];
      v49 = [v87 mapItemIdentifier];
      v50 = [v49 muid];
      v51 = [v87 mapItemIdentifier];
      v52 = -[ExternalURLQuery initWithQuery:coordinate:muid:resultProviderId:contentProvider:](v48, "initWithQuery:coordinate:muid:resultProviderId:contentProvider:", 0, v50, [v51 resultProviderID], 0, kCLLocationCoordinate2DInvalid.latitude, kCLLocationCoordinate2DInvalid.longitude);
      [v35 setExternalURLQuery:v52];

      v37 = v88;
      p_cache = (&OBJC_METACLASS___MapsAppTestTileData + 16);
      v38 = [v87 name];
      [v35 setExternalQueryName:v38];
    }

    else
    {
      v38 = [v87 resolvedLocation];
      [v35 setSearchString:v38];
    }
  }

  else
  {
    v38 = +[SearchResult currentLocationSearchResult];
    [v35 setSearchResult:v38];
    v37 = v88;
  }

  [v14 insertObject:v35 atIndex:0];
  if ([v14 count] == 1)
  {
    v39 = objc_alloc_init((p_cache + 88));
    [v14 addObject:v39];
  }

  v40 = +[MNNavigationService sharedService];
  [v40 state];
  IsNavigating = MNNavigationServiceStateIsNavigating();

  v42 = [v14 lastObject];
  v43 = [v42 searchString];

  if (IsNavigating && [v43 length])
  {
    v44 = v85;
    [(_MKHandlerURLHandlingTask *)self URLHandlerWillStartAsynchronousHandling:v85];
    v45 = +[MKMapService sharedService];
    v46 = [v45 ticketForForwardGeocodeString:v43 traits:0];

    v95[0] = _NSConcreteStackBlock;
    v95[1] = 3221225472;
    v95[2] = sub_1007F993C;
    v95[3] = &unk_10165FE18;
    v95[4] = self;
    v96 = v85;
    [(DirectionItem *)v46 submitWithHandler:v95 networkActivity:0];

    goto LABEL_57;
  }

  v47 = a6;
  if (a6 <= 7)
  {
    if (a6 - 1 < 2)
    {
      goto LABEL_42;
    }

    if (a6 == 4)
    {
      v47 = 3;
      goto LABEL_42;
    }

    goto LABEL_37;
  }

  if (a6 != 8)
  {
LABEL_37:
    v47 = 0;
    goto LABEL_42;
  }

  v47 = 5;
LABEL_42:
  v46 = [[DirectionItem alloc] initWithItems:v14 transportType:v47];
  if (v37)
  {
    if ([v37 hasDrivingPreferences])
    {
      v53 = [DrivePreferences alloc];
      v54 = [v37 avoidTolls];
      v55 = [v37 avoidHighways];
      v56 = +[NSUserDefaults standardUserDefaults];
      v57 = [(DrivePreferences *)v53 initWithAvoidTolls:v54 avoidHighways:v55 ignoreLiveTraffic:0 defaults:v56];

      v37 = v88;
      [(DirectionItem *)v46 setDrivePreferences:v57];
    }

    if ([v37 hasWalkingOrCyclingPreferences])
    {
      v58 = [WalkPreferences alloc];
      v59 = [v37 avoidHills];
      v60 = [v37 avoidBusyRoads];
      v61 = [v37 avoidBusyRoads];
      v62 = +[NSUserDefaults standardUserDefaults];
      v63 = [(WalkPreferences *)v58 initWithAvoidHills:v59 avoidBusyRoads:v60 avoidStairs:v61 defaults:v62];

      v64 = [CyclePreferences alloc];
      v65 = [v88 avoidHills];
      v66 = [v88 avoidBusyRoads];
      v67 = +[NSUserDefaults standardUserDefaults];
      v68 = v66;
      v37 = v88;
      v69 = [(CyclePreferences *)v64 initWithAvoidHills:v65 avoidBusyRoads:v68 ebike:0 defaults:v67];

      [(DirectionItem *)v46 setWalkPreferences:v63];
      [(DirectionItem *)v46 setCyclePreferences:v69];
    }

    if (![v37 hasTransitPreferences])
    {
      goto LABEL_53;
    }

    v70 = [TransitMutablePreferences alloc];
    v71 = +[NSUserDefaults standardUserDefaults];
    v72 = [(WatchSyncedPreferences *)v70 initWithDefaults:v71];

    -[TransitMutablePreferences setMode:disabled:](v72, "setMode:disabled:", 1, [v37 transitPreferBus] ^ 1);
    -[TransitMutablePreferences setMode:disabled:](v72, "setMode:disabled:", 2, [v37 transitPreferSubway] ^ 1);
    -[TransitMutablePreferences setMode:disabled:](v72, "setMode:disabled:", 4, [v37 transitPreferCommuter] ^ 1);
    -[TransitMutablePreferences setMode:disabled:](v72, "setMode:disabled:", 8, [v37 transitPreferFerry] ^ 1);
    [(DirectionItem *)v46 setTransitPreferences:v72];
    goto LABEL_52;
  }

  if (self->_routeAvoidTolls || self->_routeAvoidHighways)
  {
    v73 = [DrivePreferences alloc];
    v74 = [(NSNumber *)self->_routeAvoidTolls BOOLValue];
    v75 = [(NSNumber *)self->_routeAvoidHighways BOOLValue];
    v76 = +[NSUserDefaults standardUserDefaults];
    v72 = [(DrivePreferences *)v73 initWithAvoidTolls:v74 avoidHighways:v75 ignoreLiveTraffic:0 defaults:v76];

    v37 = v88;
    [(DirectionItem *)v46 setDrivePreferences:v72];
LABEL_52:
  }

LABEL_53:
  if ([(MKURLContext *)self->_urlContext originatedFromWatch])
  {
    v77 = 1;
  }

  else
  {
    v77 = 2;
  }

  v78 = [DirectionAction alloc];
  timePoint = self->_timePoint;
  v80 = [v37 navigationAutoLaunchDelay];
  v81 = [(DirectionAction *)v78 initWithDirectionItem:v46 timePoint:timePoint source:v77 navigationAutoLaunchDelay:v80];

  v37 = v88;
  [(MapsAction *)v81 setUserLocationAccuracy:kCLLocationAccuracyBestForNavigation];
  currentAction = self->_currentAction;
  self->_currentAction = v81;

  self->_needsUserLocation = 1;
  self->_userLocationDesiredAccuracy = kCLLocationAccuracyBestForNavigation;
  v44 = v85;
  v36 = v87;
LABEL_57:

  return 1;
}

- (BOOL)URLHandler:(id)a3 showDirectionsFrom:(id)a4 to:(id)a5 using:(unint64_t)a6 muid:(unint64_t)a7 providerId:(int)a8 showLabel:(id)a9 directionsOptions:(id)a10
{
  v10 = *&a8;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a9;
  v19 = a10;
  if (v17 | v18)
  {
    v34 = a6;
    v20 = objc_alloc_init(NSMutableDictionary);
    if (v17)
    {
      v21 = [v17 resolvedLocation];
      [v20 setObject:v21 forKeyedSubscript:MKURLDestinationAddressKey];

      if ([v17 hasMapItemIdentifier])
      {
        v22 = [v17 mapItemIdentifier];
        v23 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v22 muid]);
        [v20 setObject:v23 forKeyedSubscript:MKURLDestinationMUIDKey];

        v24 = [v17 mapItemIdentifier];
        v25 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v24 resultProviderID]);
        [v20 setObject:v25 forKeyedSubscript:MKURLDestinationProviderIDKey];
      }
    }

    if (a7 && v10 >= 1)
    {
      v26 = [NSNumber numberWithUnsignedLongLong:a7];
      [v20 setObject:v26 forKeyedSubscript:MKURLDestinationMUIDKey];

      v27 = [NSNumber numberWithInt:v10];
      [v20 setObject:v27 forKeyedSubscript:MKURLDestinationProviderIDKey];
    }

    if (v18 || ([v17 name], v28 = objc_claimAutoreleasedReturnValue(), v28, v28))
    {
      [v20 setObject:v18 forKeyedSubscript:{MKURLDestinationLabelKey, v34}];
    }

    v29 = [v20 copy];
    v37 = v29;
    v30 = [NSArray arrayWithObjects:&v37 count:1];

    a6 = v35;
  }

  else
  {
    v30 = 0;
  }

  v31 = [v30 copy];
  v32 = [(_MKHandlerURLHandlingTask *)self URLHandler:v15 showDirectionsFrom:v16 toDestinationItems:v31 using:a6 directionsOptions:v19];

  return v32;
}

- (BOOL)URLHandler:(id)a3 showMapWithoutPinAt:(CLLocationCoordinate2D)a4
{
  v4 = sub_100005610();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "URLHandlingTask showMapWithoutPinAt", v6, 2u);
  }

  return 1;
}

- (BOOL)URLHandler:(id)a3 setShowTraffic:(BOOL)a4
{
  v4 = a4;
  v6 = sub_100005610();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = @"NO";
    if (v4)
    {
      v7 = @"YES";
    }

    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "URLHandlingTask setShowTraffic %@", &v10, 0xCu);
  }

  v8 = [(_MKHandlerURLHandlingTask *)self displayOptions];
  [v8 setEnableTraffic:v4];

  return 1;
}

- (BOOL)URLHandler:(id)a3 setMapType:(unint64_t)a4
{
  v6 = +[MNNavigationService sharedService];
  [v6 state];
  IsNavigating = MNNavigationServiceStateIsNavigating();

  v8 = sub_100005610();
  v9 = v8;
  if (IsNavigating)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v19 = 134217984;
      v20 = a4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "URLHandlingTask ignoring setMapType %lu", &v19, 0xCu);
    }

    goto LABEL_26;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v19 = 134217984;
    v20 = a4;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "URLHandlingTask setMapType %lu", &v19, 0xCu);
  }

  if (a4 == 108)
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  if (a4 == 104)
  {
    v11 = 3;
  }

  else
  {
    v11 = v10;
  }

  if (a4 == 4)
  {
    v12 = 2;
  }

  else
  {
    v12 = v11;
  }

  if (a4 == 2)
  {
    v13 = 2;
  }

  else
  {
    v13 = a4 == 3;
  }

  if (a4 == 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  if (a4 <= 3)
  {
    v15 = v14;
  }

  else
  {
    v15 = v12;
  }

  v16 = [(_MKHandlerURLHandlingTask *)self displayOptions];
  [v16 setMapType:v15];

  v17 = [(_MKHandlerURLHandlingTask *)self displayOptions];
  LODWORD(v16) = [v17 hasMapType];

  if (v16)
  {
    v9 = [(_MKHandlerURLHandlingTask *)self displayOptions];
    [v9 setIgnoreLabelPreference:1];
LABEL_26:
  }

  return IsNavigating ^ 1;
}

- (BOOL)URLHandler:(id)a3 setUserTrackingMode:(int64_t)a4
{
  v6 = sub_100005610();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v10 = 134217984;
    v11 = a4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "URLHandlingTask setUserTrackingMode %lu", &v10, 0xCu);
  }

  if (a4 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2 * (a4 == 2);
  }

  v8 = [(_MKHandlerURLHandlingTask *)self displayOptions];
  [v8 setUserTrackingMode:v7];

  return 1;
}

- (BOOL)URLHandler:(id)a3 setRegionWithCenter:(CLLocationCoordinate2D)a4
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v7 = a3;
  v8 = sub_100005610();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "URLHandlingTask setRegionWithCenter", v11, 2u);
  }

  v9 = [(_MKHandlerURLHandlingTask *)self URLHandler:v7 setRegionWithCenter:latitude zoomLevel:longitude, GEOConfigGetUInteger()];
  return v9;
}

- (BOOL)URLHandler:(id)a3 setRegionWithCenter:(CLLocationCoordinate2D)a4 zoomLevel:(double)a5
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v8 = a3;
  v9 = sub_100005610();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "URLHandlingTask setRegionWithCenter/zoomLevel", v12, 2u);
  }

  v10 = 0;
  if (fabs(longitude) <= 180.0 && latitude >= -90.0 && latitude <= 90.0)
  {
    CLLocationCoordinate2DMake(latitude, longitude);
    [(URLHandlingTask *)self windowSize];
    MKCoordinateRegionMakeWithZoomLevel();
    v10 = [(_MKHandlerURLHandlingTask *)self URLHandler:v8 setRegion:?];
  }

  return v10;
}

- (BOOL)URLHandler:(id)a3 setRegionWithCenterAndCamera:(CLLocationCoordinate2D)a4 zoomLevel:(double)a5 pitch:(double)a6 yaw:(double)a7
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v10 = a3;
  v11 = sub_100005610();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "URLHandlingTask setRegionWithCenter/zoomLevel", v14, 2u);
  }

  v12 = 0;
  if (fabs(longitude) <= 180.0 && latitude >= -90.0 && latitude <= 90.0)
  {
    CLLocationCoordinate2DMake(latitude, longitude);
    [(URLHandlingTask *)self windowSize];
    MKCoordinateRegionMakeWithZoomLevel();
    v12 = [_MKHandlerURLHandlingTask URLHandler:"URLHandler:setRegionWithCamera:pitch:yaw:" setRegionWithCamera:v10 pitch:? yaw:?];
  }

  return v12;
}

- (BOOL)URLHandler:(id)a3 setRegionWithCenterAndCamera:(CLLocationCoordinate2D)a4 altitude:(double)a5 pitch:(double)a6 yaw:(double)a7
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v13 = sub_100005610();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "URLHandlingTask setRegionWithCenterAndCamera", v18, 2u);
  }

  v14 = [MKMapCamera cameraLookingAtCenterCoordinate:latitude fromDistance:longitude pitch:(a5 / cos(a6 * 0.0174532925)) heading:a6, a7];
  v15 = [v14 geoCamera];
  v16 = [(_MKHandlerURLHandlingTask *)self displayOptions];
  [v16 setCamera:v15];

  return 1;
}

- (BOOL)URLHandler:(id)a3 setRegionWithCenter:(CLLocationCoordinate2D)a4 altitude:(double)a5
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v9 = sub_100005610();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "URLHandlingTask setRegionWithCenterAndCamera", v14, 2u);
  }

  v10 = [MKMapCamera cameraLookingAtCenterCoordinate:latitude fromDistance:longitude pitch:a5 heading:0.0, 0.0];
  v11 = [v10 geoCamera];
  v12 = [(_MKHandlerURLHandlingTask *)self displayOptions];
  [v12 setCamera:v11];

  return 1;
}

- (BOOL)URLHandler:(id)a3 setRegionWithCamera:(id *)a4 pitch:(double)a5 yaw:(double)a6
{
  v10 = v9;
  v11 = v8;
  v12 = v7;
  v13 = v6;
  v17 = sub_100005610();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "URLHandlingTask setRegionWithCamera", v32, 2u);
  }

  result = 0;
  if (fabs(a6) <= 180.0 && a5 >= -90.0 && a5 <= 90.0)
  {
    result = 0;
    if (v13 >= 0.0 && v13 <= 180.0 && v12 >= 0.0 && v12 <= 360.0)
    {
      MKMapRectForCoordinateRegion();
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      [(URLHandlingTask *)self windowSize];
      v29 = [MKMapCamera _cameraLookingAtMapRect:v20 forViewSize:v22, v24, v26, v27, v28];
      [v29 setPitch:v11];
      [v29 setHeading:v10];
      v30 = [v29 geoCamera];
      v31 = [(_MKHandlerURLHandlingTask *)self displayOptions];
      [v31 setCamera:v30];

      return 1;
    }
  }

  return result;
}

- (BOOL)URLHandler:(id)a3 setRegion:(id *)a4
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  v13 = sub_100005610();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "URLHandlingTask setRegion", v28, 2u);
  }

  result = 0;
  if (fabs(v10) <= 180.0 && v11 >= -90.0 && v11 <= 90.0)
  {
    result = 0;
    if (v9 >= 0.0 && v9 <= 180.0 && v8 >= 0.0 && v8 <= 360.0)
    {
      MKMapRectForCoordinateRegion();
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      [(URLHandlingTask *)self windowSize];
      v25 = [MKMapCamera _cameraLookingAtMapRect:v16 forViewSize:v18, v20, v22, v23, v24];
      v26 = [v25 geoCamera];
      v27 = [(_MKHandlerURLHandlingTask *)self displayOptions];
      [v27 setCamera:v26];

      return 1;
    }
  }

  return result;
}

- (BOOL)URLHandler:(id)a3 launchIntoSearchWithMapItems:(id)a4 options:(id)a5 context:(id)a6
{
  v8 = a4;
  v9 = a5;
  v10 = sub_100005610();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v67 = v8;
    v68 = 2112;
    v69 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "URLHandlingTask launchIntoSearchWithMapItems %@ %@", buf, 0x16u);
  }

  [(_MKHandlerURLHandlingTask *)self _processMKOptions:v9];
  v11 = [v9 objectForKeyedSubscript:_MKLaunchOptionsPreserveSearchResultsKey];
  v12 = [v11 BOOLValue];

  v13 = MKLaunchOptionsSelectedIndexKey;
  v14 = [v9 objectForKeyedSubscript:MKLaunchOptionsSelectedIndexKey];
  v15 = v14;
  if (!v8 && v12 && v14 != 0)
  {
    v17 = [SearchSelectionAction alloc];
    v18 = [v9 objectForKeyedSubscript:v13];
    v19 = -[SearchSelectionAction initWithSelectedIndex:](v17, "initWithSelectedIndex:", [v18 unsignedIntegerValue]);

    currentAction = self->_currentAction;
    self->_currentAction = v19;
    goto LABEL_58;
  }

  if ([v8 count] == 1)
  {
    currentAction = [v8 objectAtIndexedSubscript:0];
    if ([currentAction isCurrentLocation])
    {
      v21 = [v9 objectForKey:MKLaunchOptionsMapSpanKey];
      v22 = [v9 objectForKey:MKLaunchOptionsMapCenterKey];
      if (!(v21 | v22))
      {
        v25 = [(_MKHandlerURLHandlingTask *)self displayOptions];
        [v25 setUserTrackingMode:1];
        goto LABEL_48;
      }
    }

    if ([currentAction _hasMuninViewState])
    {
      v23 = OpenLookAroundAction;
LABEL_15:
      v24 = [[v23 alloc] initWithMapItem:currentAction];
      v25 = self->_currentAction;
      self->_currentAction = v24;
LABEL_48:

      goto LABEL_58;
    }

    if (([currentAction _hasMUID] & 1) == 0 && objc_msgSend(currentAction, "_hasResolvablePartialInformation"))
    {
      v23 = ForwardGeocodeAction;
      goto LABEL_15;
    }

    v26 = [currentAction _geoAddress];
    v27 = [v26 structuredAddress];
    if (v27)
    {
    }

    else
    {
      v56 = [currentAction _geoAddress];
      v57 = [v56 formattedAddressLinesCount];

      if (v57)
      {
        v23 = RefineMapItemAction;
        goto LABEL_15;
      }
    }
  }

  v58 = v12;
  v60 = self;
  [(_MKHandlerURLHandlingTask *)self regionForLaunchOptions:v9 andMapItems:v8];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v8 count]);
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v37 = v8;
  v38 = [v37 countByEnumeratingWithState:&v61 objects:v65 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v62;
    do
    {
      for (i = 0; i != v39; i = i + 1)
      {
        if (*v62 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v61 + 1) + 8 * i);
        v43 = [[SearchResult alloc] initWithMapItem:v42];
        if (([v42 isCurrentLocation] & 1) == 0)
        {
          if (!v43)
          {
            continue;
          }

          [v36 addObject:v43];
        }
      }

      v39 = [v37 countByEnumeratingWithState:&v61 objects:v65 count:16];
    }

    while (v39);
  }

  if (fabs(v31) > 180.0 || v29 < -90.0 || v29 > 90.0 || v33 < 0.0 || v33 > 180.0 || v35 < 0.0 || v35 > 360.0)
  {
    v44 = [SearchInfo searchInfoWithResults:v36];
  }

  else
  {
    v44 = [SearchInfo searchInfoWithResults:v36 mapRegion:v29, v31, v33, v35];
  }

  currentAction = v44;
  if (v15)
  {
    [v44 setSelectedIndex:{objc_msgSend(v15, "unsignedIntegerValue")}];
  }

  v45 = v60->_searchTerm;
  if (![(NSString *)v45 length])
  {
    v46 = [currentAction selectedResult];
    v47 = v46;
    if (v46)
    {
      v48 = v46;
    }

    else
    {
      v59 = [currentAction results];
      v48 = [v59 firstObject];
    }

    v49 = [v48 name];

    v45 = v49;
  }

  [currentAction setShouldPreserveResults:v58];
  v50 = +[MNNavigationService sharedService];
  [v50 state];
  IsNavigating = MNNavigationServiceStateIsNavigating();

  if (IsNavigating)
  {
    if (v60->_searchAlongRoute || (MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0 || (MapsFeature_IsEnabled_Maps420() & 1) != 0)
    {
      IsEnabled_Maps182 = 1;
    }

    else
    {
      IsEnabled_Maps182 = MapsFeature_IsEnabled_Maps182();
    }
  }

  else
  {
    IsEnabled_Maps182 = 0;
  }

  [currentAction setSearchAlongRoute:IsEnabled_Maps182];
  [currentAction setSearchText:v45];
  v53 = [[ShowSearchInfoAction alloc] initWithSearchInfo:currentAction];
  v54 = v60->_currentAction;
  v60->_currentAction = &v53->super;

LABEL_58:
  return 1;
}

- (BOOL)URLHandler:(id)a3 launchIntoShowMapItems:(id)a4 options:(id)a5 context:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = sub_100005610();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v21 = 138412546;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "URLHandlingTask launchIntoShowMapItems %@ %@", &v21, 0x16u);
  }

  [(_MKHandlerURLHandlingTask *)self _processMKOptions:v12];
  v15 = +[CarDisplayController sharedInstance];
  v16 = [v15 isCarAppSceneHostingNavigation];

  if (-[_MKHandlerURLHandlingTask _shouldAddStopWithLaunchOptions:requireLaunchIntoNavOrDirectionsModeOption:requireSearchAlongRouteOption:](self, "_shouldAddStopWithLaunchOptions:requireLaunchIntoNavOrDirectionsModeOption:requireSearchAlongRouteOption:", v12, v16, 1) && [v11 count] == 1)
  {
    v17 = +[MKMapService sharedService];
    [v17 captureUserAction:356 onTarget:505 eventValue:0];

    v18 = [v11 firstObject];
    v19 = [(_MKHandlerURLHandlingTask *)self _URLHandler:v10 addStopWithMapItem:v18];
  }

  else
  {
    v19 = [(_MKHandlerURLHandlingTask *)self URLHandler:v10 launchIntoSearchWithMapItems:v11 options:v12 context:v13];
  }

  return v19;
}

- (BOOL)_URLHandler:(id)a3 addFindMyStopWithHandleIdentifier:(id)a4 coordinate:(id)a5
{
  var1 = a5.var1;
  var0 = a5.var0;
  v8 = a4;
  v9 = sub_100005610();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v13 = 138412803;
    v14 = v8;
    v15 = 2049;
    v16 = var0;
    v17 = 2049;
    v18 = var1;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "URLHandlingTask addFindMyStopWithHandleIdentifier %@ coordinate: {%{private}f, %{private}f}", &v13, 0x20u);
  }

  v10 = [[FindMyAction alloc] initWithFindMyHandleIdentifier:v8 coordinate:var0, var1];
  currentAction = self->_currentAction;
  self->_currentAction = &v10->super;

  return 1;
}

- (BOOL)_URLHandler:(id)a3 addStopWithMapItem:(id)a4
{
  v5 = a4;
  v6 = sub_100005610();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "URLHandlingTask addStopWithMapItem %@", &v10, 0xCu);
  }

  v7 = [[AddAStopAction alloc] initWithMapItem:v5];
  currentAction = self->_currentAction;
  self->_currentAction = &v7->super;

  return 1;
}

- (BOOL)_shouldAddStopWithLaunchOptions:(id)a3 requireLaunchIntoNavOrDirectionsModeOption:(BOOL)a4 requireSearchAlongRouteOption:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v41 = +[MNNavigationService sharedService];
  [v41 state];
  v8 = MNNavigationServiceStateIsNavigating() && [v41 navigationState] != 6 && objc_msgSend(v41, "navigationType") == 3;
  v9 = [v7 objectForKeyedSubscript:_MKLaunchOptionsRoutingAvoidTollsKey];
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v11 = [v7 objectForKeyedSubscript:_MKLaunchOptionsRoutingAvoidHighwaysKey];
    v10 = v11 != 0;
  }

  v12 = [v41 navigationTransportType];
  v13 = 0;
  v14 = @"NO";
  if (v12 <= 2)
  {
    if (v12 == 1)
    {
      goto LABEL_19;
    }

    if (v12 == 2)
    {
      if (MapsFeature_IsEnabled_Maps182())
      {
        goto LABEL_18;
      }

LABEL_16:
      v13 = 0;
      v14 = @"NO";
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v12 == 6)
  {
    goto LABEL_19;
  }

  if (v12 != 3)
  {
LABEL_17:
    if (!MapsFeature_IsEnabled_DrivingMultiWaypointRoutes())
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

  if ((MapsFeature_IsEnabled_Maps420() & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_18:
  v13 = v8 && !v10;
  v14 = @"YES";
LABEL_19:
  v38 = v14;
  v39 = v10;
  v15 = [v7 objectForKeyedSubscript:MKLaunchOptionsLaunchIntoNavKey];
  v16 = [v15 BOOLValue];

  v17 = [v7 objectForKey:MKLaunchOptionsDirectionsModeKey];

  if (v6)
  {
    v13 &= v16 | (v17 != 0);
  }

  v18 = [v7 objectForKeyedSubscript:_MKLaunchOptionsSearchAlongRouteKey];
  v19 = [v18 BOOLValue];

  if (v5)
  {
    v20 = v13 & v19;
  }

  else
  {
    v20 = v13;
  }

  v21 = sub_100005610();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = @"NO";
    if (v6)
    {
      v22 = @"YES";
    }

    v37 = v22;
    if (v5)
    {
      v23 = @"YES";
    }

    else
    {
      v23 = @"NO";
    }

    v36 = v23;
    if (v8)
    {
      v24 = @"YES";
    }

    else
    {
      v24 = @"NO";
    }

    v35 = v24;
    if (v16)
    {
      v25 = @"YES";
    }

    else
    {
      v25 = @"NO";
    }

    v26 = v25;
    if (v17)
    {
      v27 = @"YES";
    }

    else
    {
      v27 = @"NO";
    }

    v28 = v27;
    if (v39)
    {
      v29 = @"YES";
    }

    else
    {
      v29 = @"NO";
    }

    v40 = v29;
    if (v19)
    {
      v30 = @"YES";
    }

    else
    {
      v30 = @"NO";
    }

    v31 = v30;
    if (v20)
    {
      v32 = @"YES";
    }

    else
    {
      v32 = @"NO";
    }

    v33 = v32;
    *buf = 138545410;
    v43 = v37;
    v44 = 2114;
    v45 = v36;
    v46 = 2114;
    v47 = v35;
    v48 = 2114;
    v49 = v26;
    v50 = 2114;
    v51 = v28;
    v52 = 2114;
    v53 = v40;
    v54 = 2114;
    v55 = v31;
    v56 = 2114;
    v57 = v38;
    v58 = 2114;
    v59 = v33;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "_shouldAddStopWithLaunchOptions: requireLaunchIntoNavOrDirectionsModeOption: %{public}@ requireSearchAlongRouteOption: %{public}@ isNavigating %{public}@, launchIntoNav %{public}@, hasLaunchIntoDirectionsKey %{public}@, hasCustomLaunchOptions %{public}@, searchAlongRoute %{public}@, IsMPREnabled %{public}@, shouldAddStop %{public}@", buf, 0x5Cu);
  }

  return v20;
}

- (BOOL)URLHandler:(id)a3 launchIntoDirectionsWithMapItems:(id)a4 options:(id)a5 context:(id)a6
{
  v75 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  [(_MKHandlerURLHandlingTask *)self _processMKOptions:v11];
  if ([v10 count])
  {
    v13 = [(URLHandlingTask *)self sourceApplication];
    if ([v13 isEqualToString:@"com.apple.AssistantServices"])
    {
      v14 = 1;
    }

    else
    {
      v16 = [(URLHandlingTask *)self sourceApplication];
      if ([v16 isEqualToString:@"com.apple.siri"])
      {
        v14 = 1;
      }

      else
      {
        v17 = [(URLHandlingTask *)self sourceApplication];
        v14 = [v17 isEqualToString:@"com.apple.WorkflowKit.BackgroundShortcutRunner"];
      }
    }

    v18 = [v10 indexOfObjectPassingTest:&stru_10162ADF8];
    v76 = [v11 objectForKey:_MKLaunchOptionsFindMyHandleIdentifiersKey];
    if (MapsFeature_IsEnabled_MapsWally())
    {
      v19 = [v76 count];
      v20 = v19 == 0;
      if ((v19 != 0) | v14 & 1)
      {
        goto LABEL_15;
      }
    }

    else if (v14)
    {
      v20 = 1;
LABEL_15:
      if (v18 != 0x7FFFFFFFFFFFFFFFLL || ![(_MKHandlerURLHandlingTask *)self _shouldAddStopWithLaunchOptions:v11 requireLaunchIntoNavOrDirectionsModeOption:1 requireSearchAlongRouteOption:v20])
      {
        v30 = sub_100005610();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          *&buf[4] = v10;
          *&buf[12] = 2112;
          *&buf[14] = v11;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "URLHandlingTask launchIntoDirectionsWithMapItems %@ %@", buf, 0x16u);
        }

        v31 = objc_alloc_init(NSMutableArray);
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        LOBYTE(v82) = 0;
        if ([v10 count] == 1)
        {
          *(*&buf[8] + 24) = 1;
          v32 = [[GEOComposedWaypoint alloc] initWithLocation:0 isCurrentLocation:1];
          [v31 addObject:v32];
        }

        v77[0] = _NSConcreteStackBlock;
        v77[1] = 3221225472;
        v77[2] = sub_1007FC14C;
        v77[3] = &unk_10162AE20;
        v33 = v31;
        v78 = v33;
        v80 = buf;
        v79 = v76;
        [v10 enumerateObjectsUsingBlock:v77];
        v34 = objc_alloc_init(DirectionsPlan);
        v35 = objc_alloc_init(GEOStorageRouteRequestStorage);
        [(DirectionsPlan *)v34 setRouteRequestStorage:v35];

        v36 = [(DirectionsPlan *)v34 routeRequestStorage];
        [v36 setWaypoints:v33];

        v37 = [v33 lastObject];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v39 = [v33 lastObject];
          v40 = [v39 route];
          v41 = [v40 persistentData];
          v42 = [(DirectionsPlan *)v34 routeRequestStorage];
          [v42 setDestinationRouteData:v41];
        }

        v43 = [v11 objectForKeyedSubscript:MKLaunchOptionsDirectionsModeKey];

        if (v43)
        {
          v44 = [v11 objectForKeyedSubscript:MKLaunchOptionsDirectionsModeKey];
          if (([v44 isEqualToString:MKLaunchOptionsDirectionsModeDefault] & 1) == 0)
          {
            if ([v44 isEqualToString:MKLaunchOptionsDirectionsModeWalking] & 1) != 0 || (objc_msgSend(v44, "isEqualToString:", MKLaunchOptionsDirectionsModeRoutingApps))
            {
              v45 = 2;
            }

            else if ([v44 isEqualToString:MKLaunchOptionsDirectionsModeTransit])
            {
              v45 = 1;
            }

            else if ([v44 isEqualToString:MKLaunchOptionsDirectionsModeDriving])
            {
              v45 = 0;
            }

            else if ([v44 isEqualToString:MKLaunchOptionsDirectionsModeCycling])
            {
              v45 = 3;
            }

            else
            {
              v45 = 0;
            }

            v46 = [(DirectionsPlan *)v34 routeRequestStorage];
            [v46 setTransportType:v45];
          }
        }

        v47 = [v11 objectForKeyedSubscript:MKLaunchOptionsLaunchIntoNavKey];
        v48 = [v47 BOOLValue];

        if (v48)
        {
          v49 = 2;
        }

        else
        {
          v49 = 1;
        }

        [(DirectionsPlan *)v34 setDisplayMethod:v49];
        v50 = [v11 objectForKeyedSubscript:_MKLaunchOptionsRoutingAvoidTollsKey];
        v51 = [v50 BOOLValue];

        if (v51)
        {
          [(DirectionsPlan *)v34 setAvoidTolls:1];
        }

        v52 = [v11 objectForKeyedSubscript:_MKLaunchOptionsRoutingAvoidHighwaysKey];
        v53 = [v52 BOOLValue];

        if (v53)
        {
          [(DirectionsPlan *)v34 setAvoidHighways:1];
        }

        v54 = [v11 objectForKey:MKLaunchOptionsRouteHandleKey];
        if (v54)
        {
          v55 = [(DirectionsPlan *)v34 routeRequestStorage];
          v56 = [v55 transportType] == 1;

          if (v56)
          {
            v57 = [(DirectionsPlan *)v34 routeRequestStorage];
            [v57 setRouteHandle:v54];
          }
        }

        timePoint = self->_timePoint;
        if (timePoint)
        {
          v59 = timePoint;
          if ([(GEOURLTimePoint *)v59 hasTime])
          {
            [(GEOURLTimePoint *)v59 time];
            v61 = v60;
            if ([(GEOURLTimePoint *)v59 hasType])
            {
              v62 = [(GEOURLTimePoint *)v59 type];
              if (v62)
              {
                if (v62 == 1)
                {
                  [(DirectionsPlan *)v34 setArrivalTime:v61];
                }
              }

              else
              {
                [(DirectionsPlan *)v34 setDepartureTime:v61];
              }
            }
          }
        }

        v64 = [v12 companionRouteContext];

        if (v64)
        {
          v65 = [v12 companionRouteContext];
          v66 = [v65 data];
          [(DirectionsPlan *)v34 setCompanionRouteContextData:v66];
        }

        v67 = [(_MKHandlerURLHandlingTask *)self mapsActivity];
        [v67 setDirectionsPlan:v34];

        if (*(*&buf[8] + 24) == 1)
        {
          self->_needsUserLocation = 1;
          self->_userLocationDesiredAccuracy = kCLLocationAccuracyBestForNavigation;
        }

        _Block_object_dispose(buf, 8);
        v15 = 1;
        goto LABEL_64;
      }

      v21 = +[MKMapService sharedService];
      [v21 captureUserAction:356 onTarget:505 eventValue:0];

      if (![v76 count] || !MapsFeature_IsEnabled_MapsWally())
      {
        v63 = [v10 lastObject];
        v15 = [(_MKHandlerURLHandlingTask *)self _URLHandler:v75 addStopWithMapItem:v63];

LABEL_64:
        goto LABEL_65;
      }

      v22 = [v76 lastObject];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v69 = sub_10006D178();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          v70 = objc_opt_class();
          v71 = NSStringFromClass(v70);
          v72 = [NSString stringWithFormat:@"Find My handle identifier is wrong type: %@", v71];
          *buf = 136316162;
          *&buf[4] = "[_MKHandlerURLHandlingTask URLHandler:launchIntoDirectionsWithMapItems:options:context:]";
          *&buf[12] = 2080;
          *&buf[14] = "URLHandlingTask.m";
          *&buf[22] = 1024;
          v82 = 996;
          v83 = 2080;
          v84 = "[findMyHandleIdentifier isKindOfClass:NSString.class]";
          v85 = 2112;
          v86 = v72;
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s) '%@'", buf, 0x30u);
        }

        if (sub_100E03634())
        {
          v73 = sub_10006D178();
          if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
          {
            v74 = +[NSThread callStackSymbols];
            *buf = 138412290;
            *&buf[4] = v74;
            _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }
      }

      v23 = [v10 lastObject];
      v24 = [v23 _geoMapItemStorageForPersistence];

      if (v24)
      {
        [v24 coordinate];
        v26 = v25;
        v28 = -180.0;
        if (fabs(v27) <= 180.0 && v26 >= -90.0)
        {
          v29 = -180.0;
          if (v26 <= 90.0)
          {
            [v24 coordinate];
          }

          goto LABEL_68;
        }
      }

      else
      {
        v28 = -180.0;
      }

      v29 = -180.0;
LABEL_68:
      v15 = [(_MKHandlerURLHandlingTask *)self _URLHandler:v75 addFindMyStopWithHandleIdentifier:v22 coordinate:v28, v29];

      goto LABEL_64;
    }

    v20 = [v10 count] != 1;
    goto LABEL_15;
  }

  v15 = 0;
LABEL_65:

  return v15;
}

- (BOOL)URLHandler:(id)a3 setContentProvider:(id)a4
{
  v5 = a4;
  v6 = sub_100005610();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "URLHandlingTask setContentProvider", v10, 2u);
  }

  v7 = [v5 copy];
  contentProvider = self->_contentProvider;
  self->_contentProvider = v7;

  return 1;
}

- (BOOL)URLHandler:(id)a3 setSchemeForCapture:(id)a4 sourceApplication:(id)a5 isLaunchedFromTTL:(BOOL)a6 ttlEventTime:(id)a7
{
  v7 = a6;
  v9 = a7;
  v10 = sub_100005610();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "URLHandlingTask setSchemeForCapture", v12, 2u);
  }

  [(URLHandlingTask *)self setLaunchedFromTTL:v7];
  [(URLHandlingTask *)self setTtlEventTime:v9];

  return 1;
}

- (void)URLHandler:(id)a3 didFinishAsynchronousHandlingWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = sub_100005610();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412546;
      v11 = self;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "URLHandlingTask %@ error %@", &v10, 0x16u);
    }

    objc_storeStrong(&self->_currentError, a4);
  }

  v9 = sub_100005610();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = self;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "URLHandlingTask URLHandlerFinishedAsynchonousTask %@", &v10, 0xCu);
  }

  self->_asyncTaskInProgress = 0;
  [(_MKHandlerURLHandlingTask *)self _createRichMapsActivity];
}

- (void)URLHandlerWillStartAsynchronousHandling:(id)a3
{
  v4 = sub_100005610();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "URLHandlingTask URLHandlerStartAsynchonousTask %@", &v5, 0xCu);
  }

  self->_asyncTaskInProgress = 1;
}

- (void)_processMKOptions:(id)a3
{
  v4 = a3;
  v5 = sub_100005610();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v91 = 138412290;
    v92 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "URLHandlingTask mkOptions %@", &v91, 0xCu);
  }

  self->_mkOptionsParsed = 1;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"MKURLContext"];

    if (v6)
    {
      v7 = [v4 objectForKeyedSubscript:@"MKURLContext"];
      urlContext = self->_urlContext;
      self->_urlContext = v7;
    }

    v9 = [v4 objectForKeyedSubscript:MKLaunchOptionsLaunchIntoSearchHomeKey];

    if (v9)
    {
      v10 = objc_alloc_init(PresentNearbySearchAction);
      currentAction = self->_currentAction;
      self->_currentAction = &v10->super;
    }

    v12 = [v4 objectForKeyedSubscript:MKLaunchOptionsLaunchIntoNavOverviewKey];
    if (v12)
    {

      v13 = MKLaunchOptionsLaunchIntoNavDetailKey;
    }

    else
    {
      v13 = MKLaunchOptionsLaunchIntoNavDetailKey;
      v14 = [v4 objectForKeyedSubscript:MKLaunchOptionsLaunchIntoNavDetailKey];

      if (!v14)
      {
LABEL_12:
        v19 = [v4 objectForKeyedSubscript:MKLaunchOptionsLaunchIntoNavShareETAKey];

        if (v19)
        {
          v20 = objc_alloc_init(PresentNavShareETAAction);
          v21 = self->_currentAction;
          self->_currentAction = &v20->super;
        }

        v22 = MKLaunchOptionsCameraAltitudeMultiplierKey;
        v23 = [v4 objectForKeyedSubscript:MKLaunchOptionsCameraAltitudeMultiplierKey];

        if (v23)
        {
          v24 = [ZoomMapAction alloc];
          v25 = [v4 objectForKeyedSubscript:v22];
          [v25 doubleValue];
          v26 = [(ZoomMapAction *)v24 initWithZoomFactor:?];
          v27 = self->_currentAction;
          self->_currentAction = v26;
        }

        v28 = MKLaunchOptionsLaunchIntoKeyboardKey;
        v29 = [v4 objectForKeyedSubscript:MKLaunchOptionsLaunchIntoKeyboardKey];

        if (v29)
        {
          v30 = [ShowKeyboardAction alloc];
          v31 = [v4 objectForKeyedSubscript:v28];
          v32 = -[ShowKeyboardAction initWithInteractionModel:](v30, "initWithInteractionModel:", [v31 unsignedIntegerValue]);
          v33 = self->_currentAction;
          self->_currentAction = v32;
        }

        v34 = MKLaunchOptionsLaunchIntoNavTraceKey;
        v35 = [v4 objectForKeyedSubscript:MKLaunchOptionsLaunchIntoNavTraceKey];

        if (v35)
        {
          v36 = [v4 objectForKeyedSubscript:v34];
          v37 = +[MNFilePaths navTracesDirectoryPath];
          v38 = [v37 stringByAppendingPathComponent:v36];
          v39 = +[MNFilePaths navTraceExtension];
          v40 = [v38 stringByAppendingPathExtension:v39];

          v41 = MKLaunchOptionsLaunchIntoNavTraceStartNavKey;
          v42 = [v4 objectForKeyedSubscript:MKLaunchOptionsLaunchIntoNavTraceStartNavKey];

          if (v42)
          {
            v43 = [v4 objectForKeyedSubscript:v41];
            v44 = v43 != 0;
          }

          else
          {
            v44 = 0;
          }

          v45 = sub_100005610();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
          {
            v91 = 138412290;
            v92 = v40;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "URLHandlingTask OpenTraceAction: %@", &v91, 0xCu);
          }

          v46 = [[OpenTraceAction alloc] initWithFilePath:v40 shouldStartNav:v44];
          v47 = self->_currentAction;
          self->_currentAction = &v46->super;
        }

        v48 = [v4 objectForKeyedSubscript:MKLaunchOptionsCameraKey];

        if (v48)
        {
          v49 = [v4 objectForKeyedSubscript:MKLaunchOptionsCameraKey];
          v50 = [v49 geoCamera];
          v51 = [(_MKHandlerURLHandlingTask *)self displayOptions];
          [v51 setCamera:v50];
        }

        v52 = +[MNNavigationService sharedService];
        [v52 state];
        IsNavigating = MNNavigationServiceStateIsNavigating();

        if (IsNavigating)
        {
          if (MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0 || (MapsFeature_IsEnabled_Maps420())
          {
            IsEnabled_Maps182 = 1;
          }

          else
          {
            IsEnabled_Maps182 = MapsFeature_IsEnabled_Maps182();
          }
        }

        else
        {
          IsEnabled_Maps182 = 0;
        }

        self->_searchAlongRoute = IsEnabled_Maps182;
        v55 = _MKLaunchOptionsSearchAlongRouteKey;
        v56 = [v4 objectForKeyedSubscript:_MKLaunchOptionsSearchAlongRouteKey];

        if (v56)
        {
          if (self->_searchAlongRoute)
          {
            self->_searchAlongRoute = 1;
          }

          else
          {
            v57 = [v4 objectForKeyedSubscript:v55];
            self->_searchAlongRoute = [v57 BOOLValue];
          }
        }

        v58 = _MKLaunchOptionsRoutingAvoidHighwaysKey;
        v59 = [v4 objectForKeyedSubscript:_MKLaunchOptionsRoutingAvoidHighwaysKey];

        if (v59)
        {
          v60 = [v4 objectForKeyedSubscript:v58];
          routeAvoidHighways = self->_routeAvoidHighways;
          self->_routeAvoidHighways = v60;
        }

        v62 = _MKLaunchOptionsRoutingAvoidTollsKey;
        v63 = [v4 objectForKeyedSubscript:_MKLaunchOptionsRoutingAvoidTollsKey];

        if (v63)
        {
          v64 = [v4 objectForKeyedSubscript:v62];
          routeAvoidTolls = self->_routeAvoidTolls;
          self->_routeAvoidTolls = v64;
        }

        v66 = MKLaunchOptionsTimePointKey;
        v67 = [v4 objectForKeyedSubscript:MKLaunchOptionsTimePointKey];

        if (v67)
        {
          v68 = [v4 objectForKeyedSubscript:v66];
          timePoint = self->_timePoint;
          self->_timePoint = v68;
        }

        v70 = MKLaunchOptionsMapRadiusInMetersKey;
        v71 = [v4 objectForKeyedSubscript:MKLaunchOptionsMapRadiusInMetersKey];

        if (v71)
        {
          v72 = [v4 objectForKeyedSubscript:v70];
          radiusInMeter = self->_radiusInMeter;
          self->_radiusInMeter = v72;
        }

        v74 = MKLaunchOptionsSearchTermsKey;
        v75 = [v4 objectForKeyedSubscript:MKLaunchOptionsSearchTermsKey];

        if (v75)
        {
          v76 = [v4 objectForKeyedSubscript:v74];
          searchTerm = self->_searchTerm;
          self->_searchTerm = v76;
        }

        v78 = MKLaunchOptionsReferralIdentifierKey;
        v79 = [v4 objectForKeyedSubscript:MKLaunchOptionsReferralIdentifierKey];

        if (v79)
        {
          v80 = [v4 objectForKeyedSubscript:v78];
          [(URLHandlingTask *)self setSourceApplication:v80];
        }

        v81 = MKLaunchOptionsAnalyticsActionKey;
        v82 = [v4 objectForKeyedSubscript:MKLaunchOptionsAnalyticsActionKey];

        if (v82)
        {
          v83 = [v4 objectForKeyedSubscript:v81];
          self->_analyticsAction = [v83 unsignedIntegerValue];
        }

        v84 = MKLaunchOptionsAnalyticsTargetKey;
        v85 = [v4 objectForKeyedSubscript:MKLaunchOptionsAnalyticsTargetKey];

        if (v85)
        {
          v86 = [v4 objectForKeyedSubscript:v84];
          self->_analyticsTarget = [v86 unsignedIntegerValue];
        }

        v87 = MKLaunchOptionsAnalyticsValueKey;
        v88 = [v4 objectForKeyedSubscript:MKLaunchOptionsAnalyticsValueKey];

        if (v88)
        {
          v89 = [v4 objectForKeyedSubscript:v87];
          analyticsValue = self->_analyticsValue;
          self->_analyticsValue = v89;
        }

        goto LABEL_54;
      }
    }

    v15 = [DisplayModeNavAction alloc];
    v16 = [v4 objectForKeyedSubscript:v13];
    v17 = [(DisplayModeNavAction *)v15 initWithShowDetails:v16 != 0];
    v18 = self->_currentAction;
    self->_currentAction = v17;

    goto LABEL_12;
  }

LABEL_54:
}

- (void)_sendWidgetAnalytics
{
  v3 = [(URLHandlingTask *)self sourceApplication];
  v4 = [v3 isEqualToString:@"com.apple.Maps.GeneralMapsWidget"];

  if (v4)
  {
    analyticsAction = self->_analyticsAction;
    analyticsTarget = self->_analyticsTarget;
    analyticsValue = self->_analyticsValue;

    [GEOAPPortal captureUserAction:analyticsAction target:analyticsTarget value:analyticsValue];
  }
}

- (BOOL)isCompatibleWithNavigation
{
  mapsActivity = self->_mapsActivity;
  if (mapsActivity)
  {
    v4 = [(MapsActivity *)mapsActivity dictionaryRepresentation];
    v5 = [v4 allKeys];
    if ([v5 count])
    {
      v6 = [v4 objectForKeyedSubscript:@"displayOptions"];

      if (!v6)
      {
        goto LABEL_10;
      }

      v5 = [(MapsActivity *)self->_mapsActivity displayOptions];
      v7 = [v5 dictionaryRepresentation];
      v8 = [v7 allKeys];
      if ([v8 count])
      {
        v9 = [v7 objectForKeyedSubscript:@"userTrackingMode"];

        if (v9)
        {
          v10 = 1;
LABEL_11:

          return v10;
        }

LABEL_10:
        v10 = 0;
        goto LABEL_11;
      }
    }

    goto LABEL_10;
  }

  return 0;
}

- (BOOL)shouldResetUI
{
  mapsActivity = self->_mapsActivity;
  if (mapsActivity && !self->_currentAction && !self->_needsUserLocation && !self->_currentError)
  {
    v6 = [(MapsActivity *)mapsActivity dictionaryRepresentation];
    v7 = [v6 allKeys];
    if ([v7 count] == 1)
    {
      v8 = [v6 objectForKeyedSubscript:@"displayOptions"];

      if (!v8)
      {
        goto LABEL_14;
      }

      v7 = [(MapsActivity *)self->_mapsActivity displayOptions];
      v9 = [v7 dictionaryRepresentation];
      v10 = [v9 allKeys];
      if ([v10 count] == 1)
      {
        v11 = [v9 objectForKeyedSubscript:@"enableTraffic"];
        if (v11)
        {

LABEL_17:
          v4 = 0;
          goto LABEL_15;
        }

        v12 = [v9 objectForKeyedSubscript:@"mapType"];

        if (v12)
        {
          goto LABEL_17;
        }

LABEL_14:
        v4 = 1;
LABEL_15:

        return v4;
      }
    }

    goto LABEL_14;
  }

  return 1;
}

- (void)_createRichMapsActivity
{
  if (self->_asyncTaskInProgress || self->_taskFinished)
  {
    return;
  }

  v3 = sub_100005610();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v22 = 138412290;
    v23 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "URLHandlingTask _createRichMapsActivity %@", &v22, 0xCu);
  }

  currentError = self->_currentError;
  if (currentError)
  {
    if ([(NSError *)currentError code]== 101)
    {
      v5 = @"Error Message URL Network";
      v6 = @"Error Title URL Network";
    }

    else
    {
      v5 = @"Error Message URL Other";
      v6 = @"Error Title URL Other";
      if ([(NSError *)self->_currentError code]!= 100 && [(NSError *)self->_currentError code]!= 102)
      {
        v6 = @"Error Title URL";
        v5 = @"Error Message URL";
      }
    }

    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:v6 value:@"localized string not found" table:0];

    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:v5 value:@"localized string not found" table:0];

    v11 = [[ErrorAction alloc] initWithTitle:v8 message:v10 options:0];
    currentAction = self->_currentAction;
    self->_currentAction = &v11->super;
  }

  if (!self->_currentAction)
  {
    if (!self->_mapsActivity)
    {
      [(_MKHandlerURLHandlingTask *)self taskFailed];
      return;
    }

    v13 = [(URLHandlingTask *)self sourceApplication];
    if (([v13 isEqualToString:@"com.apple.AssistantServices"] & 1) == 0)
    {
      v14 = [(URLHandlingTask *)self sourceApplication];
      if (![v14 isEqualToString:@"com.apple.siri"])
      {
        v16 = [(URLHandlingTask *)self sourceApplication];
        v17 = [v16 isEqualToString:@"com.apple.WorkflowKit.BackgroundShortcutRunner"];

        v15 = off_1015F66A0;
        if (v17)
        {
          v15 = off_1015F6628;
        }

        goto LABEL_22;
      }
    }

    v15 = off_1015F6628;
LABEL_22:
    v18 = [objc_alloc(*v15) initWithResetUI:-[_MKHandlerURLHandlingTask shouldResetUI](self compatibleWithNavigation:{"shouldResetUI"), -[_MKHandlerURLHandlingTask isCompatibleWithNavigation](self, "isCompatibleWithNavigation")}];
    v19 = self->_currentAction;
    self->_currentAction = v18;
  }

  if (self->_needsUserLocation)
  {
    [(MapsAction *)self->_currentAction setUserLocationAccuracy:self->_userLocationDesiredAccuracy];
  }

  v20 = [[RichMapsActivity alloc] initWithMapsActivity:self->_mapsActivity mapsAction:self->_currentAction];
  mapsActivity = self->_mapsActivity;
  self->_mapsActivity = 0;

  [(_MKHandlerURLHandlingTask *)self taskFinished:v20];
  self->_taskFinished = 1;
}

- (void)taskFailed
{
  v3.receiver = self;
  v3.super_class = _MKHandlerURLHandlingTask;
  [(RichMapsActivityCreatingTaskImpl *)&v3 taskFailed];
  [(_MKHandlerURLHandlingTask *)self _sendWidgetAnalytics];
}

- (void)taskFinished:(id)a3
{
  v4.receiver = self;
  v4.super_class = _MKHandlerURLHandlingTask;
  [(RichMapsActivityCreatingTaskImpl *)&v4 taskFinished:a3];
  [(_MKHandlerURLHandlingTask *)self _sendWidgetAnalytics];
}

- (void)performTask
{
  [(RichMapsActivityCreatingTaskImpl *)self taskStarted];
  v3 = [(URLHandlingTask *)self url];
  if (v3)
  {
    v4 = v3;
    v5 = [(URLHandlingTask *)self url];
    if (([GEOURLBackedMapItem urlContainsExtraStorage:v5]& 1) != 0)
    {
      v6 = [(URLHandlingTask *)self url];
      v7 = [MKMapItem _mapItemBackedByURL:v6];

      if (v7)
      {
        v16 = v7;
        v8 = [NSArray arrayWithObjects:&v16 count:1];
        v9 = [(URLHandlingTask *)self mkOptions];
        [(_MKHandlerURLHandlingTask *)self URLHandler:0 launchIntoSearchWithMapItems:v8 options:v9 context:self->_urlContext];

        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v10 = objc_alloc_init(_MKURLHandler);
  urlHandler = self->_urlHandler;
  self->_urlHandler = v10;

  [(_MKURLHandler *)self->_urlHandler setDelegate:self];
  v12 = [(URLHandlingTask *)self mkOptions];
  [(_MKHandlerURLHandlingTask *)self URLHandler:0 launchWithOptions:v12];

  v13 = self->_urlHandler;
  v14 = [(URLHandlingTask *)self url];
  v15 = [(URLHandlingTask *)self sourceApplication];
  [(_MKURLHandler *)v13 handleURL:v14 sourceApplication:v15 context:self->_urlContext];

LABEL_7:
  if (!self->_asyncTaskInProgress)
  {
    [(_MKHandlerURLHandlingTask *)self _createRichMapsActivity];
  }
}

- (id)displayOptions
{
  v3 = [(_MKHandlerURLHandlingTask *)self mapsActivity];
  v4 = [v3 hasDisplayOptions];

  if ((v4 & 1) == 0)
  {
    v5 = objc_alloc_init(GEOURLOptions);
    v6 = [(_MKHandlerURLHandlingTask *)self mapsActivity];
    [v6 setDisplayOptions:v5];
  }

  v7 = [(_MKHandlerURLHandlingTask *)self mapsActivity];
  v8 = [v7 displayOptions];

  return v8;
}

- (id)mapsActivity
{
  mapsActivity = self->_mapsActivity;
  if (!mapsActivity)
  {
    v4 = objc_alloc_init(MapsActivity);
    v5 = self->_mapsActivity;
    self->_mapsActivity = v4;

    mapsActivity = self->_mapsActivity;
  }

  return mapsActivity;
}

@end