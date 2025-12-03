@interface _MKHandlerURLHandlingTask
- ($1027FC36A834EF75B245214DFCE45A0D)regionForLaunchOptions:(SEL)options andMapItems:(id)items;
- (BOOL)URLHandler:(id)handler enterLookAroundWithLocationQueryItem:(id)item;
- (BOOL)URLHandler:(id)handler enterLookAroundWithViewState:(id)state;
- (BOOL)URLHandler:(id)handler initiateOfflineDownloadForRegion:(id)region displayName:(id)name;
- (BOOL)URLHandler:(id)handler launchIntoDirectionsWithMapItems:(id)items options:(id)options context:(id)context;
- (BOOL)URLHandler:(id)handler launchIntoPhotoThumbnailGalleryForMapItem:(id)item albumIndex:(unint64_t)index options:(id)options context:(id)context;
- (BOOL)URLHandler:(id)handler launchIntoRAPForMapItem:(id)item options:(id)options context:(id)context;
- (BOOL)URLHandler:(id)handler launchIntoSearchWithMapItems:(id)items options:(id)options context:(id)context;
- (BOOL)URLHandler:(id)handler launchIntoShowMapItems:(id)items options:(id)options context:(id)context;
- (BOOL)URLHandler:(id)handler launchIntoTableBookingForMapItem:(id)item options:(id)options context:(id)context;
- (BOOL)URLHandler:(id)handler launchIntoTesterWithParam:(id)param;
- (BOOL)URLHandler:(id)handler reportAnIncident:(int)incident;
- (BOOL)URLHandler:(id)handler search:(id)search at:(CLLocationCoordinate2D)at;
- (BOOL)URLHandler:(id)handler setContentProvider:(id)provider;
- (BOOL)URLHandler:(id)handler setMapType:(unint64_t)type;
- (BOOL)URLHandler:(id)handler setRegion:(id *)region;
- (BOOL)URLHandler:(id)handler setRegionWithCamera:(id *)camera pitch:(double)pitch yaw:(double)yaw;
- (BOOL)URLHandler:(id)handler setRegionWithCenter:(CLLocationCoordinate2D)center;
- (BOOL)URLHandler:(id)handler setRegionWithCenter:(CLLocationCoordinate2D)center altitude:(double)altitude;
- (BOOL)URLHandler:(id)handler setRegionWithCenter:(CLLocationCoordinate2D)center zoomLevel:(double)level;
- (BOOL)URLHandler:(id)handler setRegionWithCenterAndCamera:(CLLocationCoordinate2D)camera altitude:(double)altitude pitch:(double)pitch yaw:(double)yaw;
- (BOOL)URLHandler:(id)handler setRegionWithCenterAndCamera:(CLLocationCoordinate2D)camera zoomLevel:(double)level pitch:(double)pitch yaw:(double)yaw;
- (BOOL)URLHandler:(id)handler setSchemeForCapture:(id)capture sourceApplication:(id)application isLaunchedFromTTL:(BOOL)l ttlEventTime:(id)time;
- (BOOL)URLHandler:(id)handler setShowTraffic:(BOOL)traffic;
- (BOOL)URLHandler:(id)handler setUserTrackingMode:(int64_t)mode;
- (BOOL)URLHandler:(id)handler showAddress:(id)address label:(id)label;
- (BOOL)URLHandler:(id)handler showAddress:(id)address label:(id)label at:(CLLocationCoordinate2D)at;
- (BOOL)URLHandler:(id)handler showAddressByCNContactIdentifier:(id)identifier addressIdentifier:(id)addressIdentifier;
- (BOOL)URLHandler:(id)handler showAddressByRecordID:(id)d addressID:(id)iD;
- (BOOL)URLHandler:(id)handler showCollection:(id)collection;
- (BOOL)URLHandler:(id)handler showCuratedCollectionWithID:(unint64_t)d resultProviderID:(int)iD;
- (BOOL)URLHandler:(id)handler showDirectionsFrom:(id)from to:(id)to using:(unint64_t)using muid:(unint64_t)muid providerId:(int)id showLabel:(id)label directionsOptions:(id)self0;
- (BOOL)URLHandler:(id)handler showDirectionsFrom:(id)from toDestinationItems:(id)items using:(unint64_t)using directionsOptions:(id)options;
- (BOOL)URLHandler:(id)handler showExternalBusinessID:(id)d ofContentProvider:(id)provider;
- (BOOL)URLHandler:(id)handler showFavoritesType:(int64_t)type;
- (BOOL)URLHandler:(id)handler showLabel:(id)label at:(CLLocationCoordinate2D)at;
- (BOOL)URLHandler:(id)handler showLineWithID:(unint64_t)d name:(id)name;
- (BOOL)URLHandler:(id)handler showMUID:(unint64_t)d resultProviderID:(int)iD coordinate:(CLLocationCoordinate2D)coordinate query:(id)query;
- (BOOL)URLHandler:(id)handler showMapWithoutPinAt:(CLLocationCoordinate2D)at;
- (BOOL)URLHandler:(id)handler showPublisherWithID:(unint64_t)d resultProviderID:(int)iD;
- (BOOL)URLHandler:(id)handler showReportAProblemWithLocationQuery:(id)query;
- (BOOL)URLHandlerShowAllCuratedCollections:(id)collections;
- (BOOL)URLHandlerShowCarDestinations:(id)destinations;
- (BOOL)URLHandlerShowExploreGuides:(id)guides exploreGuides:(id)exploreGuides cityName:(id)name;
- (BOOL)URLHandlerShowMyLocationCard:(id)card;
- (BOOL)URLHandlerShowParkedCar:(id)car;
- (BOOL)URLHandlerShowReports:(id)reports;
- (BOOL)_URLHandler:(id)handler addFindMyStopWithHandleIdentifier:(id)identifier coordinate:(id)coordinate;
- (BOOL)_URLHandler:(id)handler addStopWithMapItem:(id)item;
- (BOOL)_shouldAddStopWithLaunchOptions:(id)options requireLaunchIntoNavOrDirectionsModeOption:(BOOL)option requireSearchAlongRouteOption:(BOOL)routeOption;
- (BOOL)isCompatibleWithNavigation;
- (BOOL)shouldResetUI;
- (id)displayOptions;
- (id)mapsActivity;
- (void)URLHandler:(id)handler didFinishAsynchronousHandlingWithError:(id)error;
- (void)URLHandlerWillStartAsynchronousHandling:(id)handling;
- (void)_createRichMapsActivity;
- (void)_processMKOptions:(id)options;
- (void)_sendWidgetAnalytics;
- (void)performTask;
- (void)taskFailed;
- (void)taskFinished:(id)finished;
@end

@implementation _MKHandlerURLHandlingTask

- ($1027FC36A834EF75B245214DFCE45A0D)regionForLaunchOptions:(SEL)options andMapItems:(id)items
{
  itemsCopy = items;
  v8 = a5;
  v9 = [itemsCopy objectForKey:MKLaunchOptionsMapSpanKey];
  v10 = [itemsCopy objectForKey:MKLaunchOptionsMapCenterKey];
  v11 = [itemsCopy objectForKey:MKLaunchOptionsMapRadiusInMetersKey];
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
            _displayMapRegion = [v37 _displayMapRegion];
            GEOMapRectForMapRegion();
          }

          else
          {
            _displayMapRegion = [v37 _displayMapRegion];
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

- (BOOL)URLHandler:(id)handler initiateOfflineDownloadForRegion:(id)region displayName:(id)name
{
  nameCopy = name;
  regionCopy = region;
  sourceApplication = [(URLHandlingTask *)self sourceApplication];
  v10 = [sourceApplication isEqualToString:@"com.apple.Spotlight"];

  if (v10)
  {
    [GEOAPPortal captureUserAction:381 target:702 value:0];
  }

  v11 = objc_alloc_init(OpenOfflineMapsManagementAction);
  [(OpenOfflineMapsManagementAction *)v11 setDownloadRegion:regionCopy];

  [(OpenOfflineMapsManagementAction *)v11 setDownloadRegionName:nameCopy];
  v12 = [[RichMapsActivity alloc] initWithMapsAction:v11];
  [(_MKHandlerURLHandlingTask *)self taskFinished:v12];

  return 1;
}

- (BOOL)URLHandler:(id)handler reportAnIncident:(int)incident
{
  v5 = [[ReportIncidentAction alloc] initWithIncidentType:*&incident];
  currentAction = self->_currentAction;
  self->_currentAction = &v5->super;

  return 1;
}

- (BOOL)URLHandler:(id)handler showReportAProblemWithLocationQuery:(id)query
{
  queryCopy = query;
  v6 = [[PresentRAPAction alloc] initWithLocationQueryItem:queryCopy];

  currentAction = self->_currentAction;
  self->_currentAction = &v6->super;

  return 1;
}

- (BOOL)URLHandlerShowExploreGuides:(id)guides exploreGuides:(id)exploreGuides cityName:(id)name
{
  nameCopy = name;
  exploreGuidesCopy = exploreGuides;
  v9 = [[ShowExploreGuidesAction alloc] initWithExploreGuides:exploreGuidesCopy cityName:nameCopy];

  currentAction = self->_currentAction;
  self->_currentAction = &v9->super;

  return 1;
}

- (BOOL)URLHandlerShowReports:(id)reports
{
  v4 = [[PresentRAPAction alloc] initWithShowReports:1];
  currentAction = self->_currentAction;
  self->_currentAction = &v4->super;

  return 1;
}

- (BOOL)URLHandlerShowAllCuratedCollections:(id)collections
{
  v4 = objc_alloc_init(ShowAllCuratedCollectionsAction);
  currentAction = self->_currentAction;
  self->_currentAction = &v4->super;

  return 1;
}

- (BOOL)URLHandler:(id)handler showPublisherWithID:(unint64_t)d resultProviderID:(int)iD
{
  v6 = [[ShowPublisherAction alloc] initWithPublisherID:d resultProviderID:*&iD];
  currentAction = self->_currentAction;
  self->_currentAction = &v6->super;

  return 1;
}

- (BOOL)URLHandler:(id)handler showCuratedCollectionWithID:(unint64_t)d resultProviderID:(int)iD
{
  v6 = [[ShowCuratedCollectionAction alloc] initWithCuratedCollectionID:d resultProviderID:*&iD];
  currentAction = self->_currentAction;
  self->_currentAction = &v6->super;

  return 1;
}

- (BOOL)URLHandlerShowMyLocationCard:(id)card
{
  v4 = objc_alloc_init(ShowMyLocationCardAction);
  currentAction = self->_currentAction;
  self->_currentAction = &v4->super;

  return 1;
}

- (BOOL)URLHandlerShowParkedCar:(id)car
{
  v4 = [[PresentParkedCarAction alloc] initWithParkedCarAction:0];
  currentAction = self->_currentAction;
  self->_currentAction = &v4->super;

  return 1;
}

- (BOOL)URLHandlerShowCarDestinations:(id)destinations
{
  v4 = objc_alloc_init(ShowCarDestinationsAction);
  currentAction = self->_currentAction;
  self->_currentAction = &v4->super;

  return 1;
}

- (BOOL)URLHandler:(id)handler showCollection:(id)collection
{
  collectionCopy = collection;
  v6 = [[ShowCollectionAction alloc] initWithCollectionStorage:collectionCopy];

  currentAction = self->_currentAction;
  self->_currentAction = &v6->super;

  return 1;
}

- (BOOL)URLHandler:(id)handler launchIntoTesterWithParam:(id)param
{
  paramCopy = param;
  v5 = sub_100005610();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = paramCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "URLHandlingTask launchIntoTesterWithParam %@", &v8, 0xCu);
  }

  v6 = objc_alloc_init(MapsTester);
  [(MapsTester *)v6 runTestCode];

  return 1;
}

- (BOOL)URLHandler:(id)handler enterLookAroundWithLocationQueryItem:(id)item
{
  itemCopy = item;
  v6 = sub_100005610();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = itemCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "URLHandlingTask enterLookAroundWithLocationQueryItem %@", &v10, 0xCu);
  }

  v7 = [[OpenLookAroundAction alloc] initWithLocationQueryItem:itemCopy];
  currentAction = self->_currentAction;
  self->_currentAction = &v7->super;

  return 1;
}

- (BOOL)URLHandler:(id)handler enterLookAroundWithViewState:(id)state
{
  stateCopy = state;
  v6 = sub_100005610();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = stateCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "URLHandlingTask enterLookAroundWithViewState %@", &v10, 0xCu);
  }

  v7 = [[OpenLookAroundAction alloc] initWithMuninViewState:stateCopy];
  currentAction = self->_currentAction;
  self->_currentAction = &v7->super;

  return 1;
}

- (BOOL)URLHandler:(id)handler showFavoritesType:(int64_t)type
{
  v6 = sub_100005610();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v10 = 134217984;
    typeCopy = type;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "URLHandlingTask showFavoritesType %ld", &v10, 0xCu);
  }

  v7 = [[OpenFavoritesAction alloc] initWithFavoriteType:type];
  currentAction = self->_currentAction;
  self->_currentAction = &v7->super;

  return 1;
}

- (BOOL)URLHandler:(id)handler showLineWithID:(unint64_t)d name:(id)name
{
  nameCopy = name;
  v8 = sub_100005610();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v13 = 134218242;
    dCopy = d;
    v15 = 2112;
    v16 = nameCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "URLHandlingTask showLineWithID %llu lineName %@", &v13, 0x16u);
  }

  mapsActivity = [(_MKHandlerURLHandlingTask *)self mapsActivity];
  [mapsActivity setSelectedTransitFeatureID:d];

  mapsActivity2 = [(_MKHandlerURLHandlingTask *)self mapsActivity];
  [mapsActivity2 setSelectedTransitLineName:nameCopy];

  displayOptions = [(_MKHandlerURLHandlingTask *)self displayOptions];
  [displayOptions setMapType:3];

  return 1;
}

- (BOOL)URLHandler:(id)handler search:(id)search at:(CLLocationCoordinate2D)at
{
  longitude = at.longitude;
  latitude = at.latitude;
  searchCopy = search;
  v9 = sub_100005610();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v17 = 138412290;
    v18 = searchCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "URLHandlingTask search %@ searchCoordinate", &v17, 0xCu);
  }

  v10 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v10 setSearchString:searchCopy];
  displayOptions = [(MapsActivity *)self->_mapsActivity displayOptions];
  camera = [displayOptions camera];

  if (!camera)
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

- (BOOL)URLHandler:(id)handler showExternalBusinessID:(id)d ofContentProvider:(id)provider
{
  dCopy = d;
  providerCopy = provider;
  v9 = sub_100005610();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138412546;
    v16 = dCopy;
    v17 = 2112;
    v18 = providerCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "URLHandlingTask showExternalBusinessID %@ contentProvider %@", &v15, 0x16u);
  }

  if (!self->_contentProvider)
  {
    v10 = [providerCopy copy];
    contentProvider = self->_contentProvider;
    self->_contentProvider = v10;
  }

  v12 = [[ResolveMUIDAction alloc] initWithBusinessID:dCopy contentProvider:self->_contentProvider];
  currentAction = self->_currentAction;
  self->_currentAction = &v12->super;

  return 1;
}

- (BOOL)URLHandler:(id)handler showMUID:(unint64_t)d resultProviderID:(int)iD coordinate:(CLLocationCoordinate2D)coordinate query:(id)query
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v9 = *&iD;
  queryCopy = query;
  v13 = sub_100005610();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v19 = 134218498;
    dCopy = d;
    v21 = 1024;
    v22 = v9;
    v23 = 2112;
    v24 = queryCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "URLHandlingTask showMUID %llu  resultProviderID:%d query:%@", &v19, 0x1Cu);
  }

  longitude = [[ExternalURLQuery alloc] initWithQuery:queryCopy coordinate:d muid:v9 resultProviderId:self->_contentProvider contentProvider:latitude, longitude];
  if (longitude)
  {
    v15 = objc_alloc_init(SearchFieldItem);
    [(SearchFieldItem *)v15 setExternalURLQuery:longitude];
    v16 = [[SearchAction alloc] initWithSearchItem:v15 alongRoute:self->_searchAlongRoute];
    currentAction = self->_currentAction;
    self->_currentAction = &v16->super;

    self->_userLocationDesiredAccuracy = kCLLocationAccuracyBest;
  }

  return 1;
}

- (BOOL)URLHandler:(id)handler showLabel:(id)label at:(CLLocationCoordinate2D)at
{
  longitude = at.longitude;
  latitude = at.latitude;
  labelCopy = label;
  v9 = sub_100005610();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412290;
    v14 = labelCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "URLHandlingTask label %@  at coordinate", &v13, 0xCu);
  }

  longitude = [[ReverseGeocodeAction alloc] initWithLabel:labelCopy atCoordinate:latitude, longitude];
  currentAction = self->_currentAction;
  self->_currentAction = &longitude->super;

  self->_userLocationDesiredAccuracy = kCLLocationAccuracyBest;
  return 1;
}

- (BOOL)URLHandler:(id)handler showAddress:(id)address label:(id)label at:(CLLocationCoordinate2D)at
{
  longitude = at.longitude;
  latitude = at.latitude;
  addressCopy = address;
  labelCopy = label;
  v12 = sub_100005610();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138412546;
    v17 = addressCopy;
    v18 = 2112;
    v19 = labelCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "URLHandlingTask showAddress %@ addressID %@ at coordinate", &v16, 0x16u);
  }

  longitude = [[PlaceRefinementAction alloc] initWithLabel:labelCopy atCoordinate:addressCopy address:latitude, longitude];
  currentAction = self->_currentAction;
  self->_currentAction = &longitude->super.super;

  self->_userLocationDesiredAccuracy = kCLLocationAccuracyBest;
  return 1;
}

- (BOOL)URLHandler:(id)handler showAddress:(id)address label:(id)label
{
  addressCopy = address;
  labelCopy = label;
  v9 = sub_100005610();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412546;
    v15 = addressCopy;
    v16 = 2112;
    v17 = labelCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "URLHandlingTask showAddress %@ addressID %@", &v14, 0x16u);
  }

  v10 = objc_alloc_init(SearchFieldItem);
  [(SearchFieldItem *)v10 setAddressString:addressCopy];
  [(SearchFieldItem *)v10 setAddressStringLabel:labelCopy];
  v11 = [[SearchAction alloc] initWithSearchItem:v10 alongRoute:self->_searchAlongRoute];
  currentAction = self->_currentAction;
  self->_currentAction = &v11->super;

  self->_userLocationDesiredAccuracy = kCLLocationAccuracyBest;
  return 1;
}

- (BOOL)URLHandler:(id)handler showAddressByCNContactIdentifier:(id)identifier addressIdentifier:(id)addressIdentifier
{
  identifierCopy = identifier;
  addressIdentifierCopy = addressIdentifier;
  v9 = sub_100005610();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v17 = 138412546;
    v18 = identifierCopy;
    v19 = 2112;
    v20 = addressIdentifierCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "URLHandlingTask showAddressByCNContactIdentifier %@ addressID %@", &v17, 0x16u);
  }

  if ([identifierCopy length] && objc_msgSend(addressIdentifierCopy, "length"))
  {
    v10 = [[AddressBookAddress alloc] initWithCNContactIdentifier:identifierCopy addressIdentifier:addressIdentifierCopy];
    contact = [(AddressBookAddress *)v10 contact];
    v12 = contact != 0;

    if (contact)
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

- (BOOL)URLHandler:(id)handler showAddressByRecordID:(id)d addressID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v9 = sub_100005610();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v18 = 138412546;
    v19 = dCopy;
    v20 = 2112;
    v21 = iDCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "URLHandlingTask showAddressByRecordID %@ addressID %@", &v18, 0x16u);
  }

  v10 = 0;
  if (dCopy && iDCopy)
  {
    intValue = [dCopy intValue];
    if (intValue == -1)
    {
      v10 = 0;
    }

    else
    {
      v12 = -[AddressBookAddress initWithRecordID:addressID:]([AddressBookAddress alloc], "initWithRecordID:addressID:", intValue, [iDCopy intValue]);
      contact = [(AddressBookAddress *)v12 contact];
      v10 = contact != 0;

      if (contact)
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

- (BOOL)URLHandler:(id)handler launchIntoTableBookingForMapItem:(id)item options:(id)options context:(id)context
{
  itemCopy = item;
  optionsCopy = options;
  v10 = sub_100005610();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412546;
    v15 = itemCopy;
    v16 = 2112;
    v17 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "URLHandlingTask launchIntoTableBookingForMapItem %@ options %@", &v14, 0x16u);
  }

  v11 = [[PresentTableBookingAction alloc] initWithMapItem:itemCopy];
  currentAction = self->_currentAction;
  self->_currentAction = &v11->super;

  return 1;
}

- (BOOL)URLHandler:(id)handler launchIntoPhotoThumbnailGalleryForMapItem:(id)item albumIndex:(unint64_t)index options:(id)options context:(id)context
{
  itemCopy = item;
  optionsCopy = options;
  v12 = sub_100005610();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v16 = 134218498;
    indexCopy = index;
    v18 = 2112;
    v19 = itemCopy;
    v20 = 2112;
    v21 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "URLHandlingTask launchIntoPhotoThumbnailGalleryForMapItem %lu albumIndex %@ options %@", &v16, 0x20u);
  }

  v13 = [[PresentPhotoThumbnailGalleryAction alloc] initWithMapItem:itemCopy albumIndex:index];
  currentAction = self->_currentAction;
  self->_currentAction = &v13->super;

  return 1;
}

- (BOOL)URLHandler:(id)handler launchIntoRAPForMapItem:(id)item options:(id)options context:(id)context
{
  itemCopy = item;
  optionsCopy = options;
  v10 = sub_100005610();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412546;
    v15 = itemCopy;
    v16 = 2112;
    v17 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "URLHandlingTask launchIntoRAPForMapItem %@ options %@", &v14, 0x16u);
  }

  v11 = [[PresentRAPAction alloc] initWithMapItem:itemCopy];
  currentAction = self->_currentAction;
  self->_currentAction = &v11->super;

  return 1;
}

- (BOOL)URLHandler:(id)handler showDirectionsFrom:(id)from toDestinationItems:(id)items using:(unint64_t)using directionsOptions:(id)options
{
  handlerCopy = handler;
  fromCopy = from;
  itemsCopy = items;
  optionsCopy = options;
  v12 = sub_100005610();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    resolvedLocation = [fromCopy resolvedLocation];
    *buf = 138412290;
    v102 = resolvedLocation;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "URLHandlingTask showDirectionsFrom %@...", buf, 0xCu);
  }

  v87 = fromCopy;

  v14 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  obj = itemsCopy;
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
        unsignedLongValue = [v23 unsignedLongValue];

        v25 = [v21 objectForKeyedSubscript:v91];
        intValue = [v25 intValue];

        v27 = [v21 objectForKeyedSubscript:v90];
        v28 = objc_alloc_init((p_cache + 88));
        if ([v22 isEqualToString:v18])
        {
          v29 = +[SearchResult currentLocationSearchResult];
          [v28 setSearchResult:v29];
        }

        else if (unsignedLongValue)
        {
          v30 = v14;
          v31 = sub_100005610();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            v102 = v27;
            v103 = 2048;
            v104 = unsignedLongValue;
            v105 = 1024;
            v106 = intValue;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "\t-> %@ (ID=%llu, providerID=%d)", buf, 0x1Cu);
          }

          longitude = [[ExternalURLQuery alloc] initWithQuery:v27 coordinate:unsignedLongValue muid:intValue resultProviderId:0 contentProvider:kCLLocationCoordinate2DInvalid.latitude, longitude];
          [v28 setExternalURLQuery:longitude];

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
    v37 = optionsCopy;
    if ([v87 isCurrentLocation])
    {
      name = +[SearchResult currentLocationSearchResult];
      [v35 setSearchResult:name];
    }

    else if ([v87 hasMapItemIdentifier])
    {
      v48 = [ExternalURLQuery alloc];
      mapItemIdentifier = [v87 mapItemIdentifier];
      muid = [mapItemIdentifier muid];
      mapItemIdentifier2 = [v87 mapItemIdentifier];
      v52 = -[ExternalURLQuery initWithQuery:coordinate:muid:resultProviderId:contentProvider:](v48, "initWithQuery:coordinate:muid:resultProviderId:contentProvider:", 0, muid, [mapItemIdentifier2 resultProviderID], 0, kCLLocationCoordinate2DInvalid.latitude, kCLLocationCoordinate2DInvalid.longitude);
      [v35 setExternalURLQuery:v52];

      v37 = optionsCopy;
      p_cache = (&OBJC_METACLASS___MapsAppTestTileData + 16);
      name = [v87 name];
      [v35 setExternalQueryName:name];
    }

    else
    {
      name = [v87 resolvedLocation];
      [v35 setSearchString:name];
    }
  }

  else
  {
    name = +[SearchResult currentLocationSearchResult];
    [v35 setSearchResult:name];
    v37 = optionsCopy;
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

  lastObject = [v14 lastObject];
  searchString = [lastObject searchString];

  if (IsNavigating && [searchString length])
  {
    v44 = handlerCopy;
    [(_MKHandlerURLHandlingTask *)self URLHandlerWillStartAsynchronousHandling:handlerCopy];
    v45 = +[MKMapService sharedService];
    v46 = [v45 ticketForForwardGeocodeString:searchString traits:0];

    v95[0] = _NSConcreteStackBlock;
    v95[1] = 3221225472;
    v95[2] = sub_1007F993C;
    v95[3] = &unk_10165FE18;
    v95[4] = self;
    v96 = handlerCopy;
    [(DirectionItem *)v46 submitWithHandler:v95 networkActivity:0];

    goto LABEL_57;
  }

  usingCopy = using;
  if (using <= 7)
  {
    if (using - 1 < 2)
    {
      goto LABEL_42;
    }

    if (using == 4)
    {
      usingCopy = 3;
      goto LABEL_42;
    }

    goto LABEL_37;
  }

  if (using != 8)
  {
LABEL_37:
    usingCopy = 0;
    goto LABEL_42;
  }

  usingCopy = 5;
LABEL_42:
  v46 = [[DirectionItem alloc] initWithItems:v14 transportType:usingCopy];
  if (v37)
  {
    if ([v37 hasDrivingPreferences])
    {
      v53 = [DrivePreferences alloc];
      avoidTolls = [v37 avoidTolls];
      avoidHighways = [v37 avoidHighways];
      v56 = +[NSUserDefaults standardUserDefaults];
      v57 = [(DrivePreferences *)v53 initWithAvoidTolls:avoidTolls avoidHighways:avoidHighways ignoreLiveTraffic:0 defaults:v56];

      v37 = optionsCopy;
      [(DirectionItem *)v46 setDrivePreferences:v57];
    }

    if ([v37 hasWalkingOrCyclingPreferences])
    {
      v58 = [WalkPreferences alloc];
      avoidHills = [v37 avoidHills];
      avoidBusyRoads = [v37 avoidBusyRoads];
      avoidBusyRoads2 = [v37 avoidBusyRoads];
      v62 = +[NSUserDefaults standardUserDefaults];
      v63 = [(WalkPreferences *)v58 initWithAvoidHills:avoidHills avoidBusyRoads:avoidBusyRoads avoidStairs:avoidBusyRoads2 defaults:v62];

      v64 = [CyclePreferences alloc];
      avoidHills2 = [optionsCopy avoidHills];
      avoidBusyRoads3 = [optionsCopy avoidBusyRoads];
      v67 = +[NSUserDefaults standardUserDefaults];
      v68 = avoidBusyRoads3;
      v37 = optionsCopy;
      v69 = [(CyclePreferences *)v64 initWithAvoidHills:avoidHills2 avoidBusyRoads:v68 ebike:0 defaults:v67];

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
    bOOLValue = [(NSNumber *)self->_routeAvoidTolls BOOLValue];
    bOOLValue2 = [(NSNumber *)self->_routeAvoidHighways BOOLValue];
    v76 = +[NSUserDefaults standardUserDefaults];
    v72 = [(DrivePreferences *)v73 initWithAvoidTolls:bOOLValue avoidHighways:bOOLValue2 ignoreLiveTraffic:0 defaults:v76];

    v37 = optionsCopy;
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
  navigationAutoLaunchDelay = [v37 navigationAutoLaunchDelay];
  v81 = [(DirectionAction *)v78 initWithDirectionItem:v46 timePoint:timePoint source:v77 navigationAutoLaunchDelay:navigationAutoLaunchDelay];

  v37 = optionsCopy;
  [(MapsAction *)v81 setUserLocationAccuracy:kCLLocationAccuracyBestForNavigation];
  currentAction = self->_currentAction;
  self->_currentAction = v81;

  self->_needsUserLocation = 1;
  self->_userLocationDesiredAccuracy = kCLLocationAccuracyBestForNavigation;
  v44 = handlerCopy;
  v36 = v87;
LABEL_57:

  return 1;
}

- (BOOL)URLHandler:(id)handler showDirectionsFrom:(id)from to:(id)to using:(unint64_t)using muid:(unint64_t)muid providerId:(int)id showLabel:(id)label directionsOptions:(id)self0
{
  v10 = *&id;
  handlerCopy = handler;
  fromCopy = from;
  toCopy = to;
  labelCopy = label;
  optionsCopy = options;
  if (toCopy | labelCopy)
  {
    usingCopy = using;
    v20 = objc_alloc_init(NSMutableDictionary);
    if (toCopy)
    {
      resolvedLocation = [toCopy resolvedLocation];
      [v20 setObject:resolvedLocation forKeyedSubscript:MKURLDestinationAddressKey];

      if ([toCopy hasMapItemIdentifier])
      {
        mapItemIdentifier = [toCopy mapItemIdentifier];
        v23 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [mapItemIdentifier muid]);
        [v20 setObject:v23 forKeyedSubscript:MKURLDestinationMUIDKey];

        mapItemIdentifier2 = [toCopy mapItemIdentifier];
        v25 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [mapItemIdentifier2 resultProviderID]);
        [v20 setObject:v25 forKeyedSubscript:MKURLDestinationProviderIDKey];
      }
    }

    if (muid && v10 >= 1)
    {
      v26 = [NSNumber numberWithUnsignedLongLong:muid];
      [v20 setObject:v26 forKeyedSubscript:MKURLDestinationMUIDKey];

      v27 = [NSNumber numberWithInt:v10];
      [v20 setObject:v27 forKeyedSubscript:MKURLDestinationProviderIDKey];
    }

    if (labelCopy || ([toCopy name], v28 = objc_claimAutoreleasedReturnValue(), v28, v28))
    {
      [v20 setObject:labelCopy forKeyedSubscript:{MKURLDestinationLabelKey, usingCopy}];
    }

    v29 = [v20 copy];
    v37 = v29;
    v30 = [NSArray arrayWithObjects:&v37 count:1];

    using = v35;
  }

  else
  {
    v30 = 0;
  }

  v31 = [v30 copy];
  v32 = [(_MKHandlerURLHandlingTask *)self URLHandler:handlerCopy showDirectionsFrom:fromCopy toDestinationItems:v31 using:using directionsOptions:optionsCopy];

  return v32;
}

- (BOOL)URLHandler:(id)handler showMapWithoutPinAt:(CLLocationCoordinate2D)at
{
  v4 = sub_100005610();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "URLHandlingTask showMapWithoutPinAt", v6, 2u);
  }

  return 1;
}

- (BOOL)URLHandler:(id)handler setShowTraffic:(BOOL)traffic
{
  trafficCopy = traffic;
  v6 = sub_100005610();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = @"NO";
    if (trafficCopy)
    {
      v7 = @"YES";
    }

    v10 = 138412290;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "URLHandlingTask setShowTraffic %@", &v10, 0xCu);
  }

  displayOptions = [(_MKHandlerURLHandlingTask *)self displayOptions];
  [displayOptions setEnableTraffic:trafficCopy];

  return 1;
}

- (BOOL)URLHandler:(id)handler setMapType:(unint64_t)type
{
  v6 = +[MNNavigationService sharedService];
  [v6 state];
  IsNavigating = MNNavigationServiceStateIsNavigating();

  v8 = sub_100005610();
  displayOptions3 = v8;
  if (IsNavigating)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v19 = 134217984;
      typeCopy2 = type;
      _os_log_impl(&_mh_execute_header, displayOptions3, OS_LOG_TYPE_ERROR, "URLHandlingTask ignoring setMapType %lu", &v19, 0xCu);
    }

    goto LABEL_26;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v19 = 134217984;
    typeCopy2 = type;
    _os_log_impl(&_mh_execute_header, displayOptions3, OS_LOG_TYPE_DEBUG, "URLHandlingTask setMapType %lu", &v19, 0xCu);
  }

  if (type == 108)
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  if (type == 104)
  {
    v11 = 3;
  }

  else
  {
    v11 = v10;
  }

  if (type == 4)
  {
    v12 = 2;
  }

  else
  {
    v12 = v11;
  }

  if (type == 2)
  {
    v13 = 2;
  }

  else
  {
    v13 = type == 3;
  }

  if (type == 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  if (type <= 3)
  {
    v15 = v14;
  }

  else
  {
    v15 = v12;
  }

  displayOptions = [(_MKHandlerURLHandlingTask *)self displayOptions];
  [displayOptions setMapType:v15];

  displayOptions2 = [(_MKHandlerURLHandlingTask *)self displayOptions];
  LODWORD(displayOptions) = [displayOptions2 hasMapType];

  if (displayOptions)
  {
    displayOptions3 = [(_MKHandlerURLHandlingTask *)self displayOptions];
    [displayOptions3 setIgnoreLabelPreference:1];
LABEL_26:
  }

  return IsNavigating ^ 1;
}

- (BOOL)URLHandler:(id)handler setUserTrackingMode:(int64_t)mode
{
  v6 = sub_100005610();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v10 = 134217984;
    modeCopy = mode;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "URLHandlingTask setUserTrackingMode %lu", &v10, 0xCu);
  }

  if (mode == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2 * (mode == 2);
  }

  displayOptions = [(_MKHandlerURLHandlingTask *)self displayOptions];
  [displayOptions setUserTrackingMode:v7];

  return 1;
}

- (BOOL)URLHandler:(id)handler setRegionWithCenter:(CLLocationCoordinate2D)center
{
  longitude = center.longitude;
  latitude = center.latitude;
  handlerCopy = handler;
  v8 = sub_100005610();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "URLHandlingTask setRegionWithCenter", v11, 2u);
  }

  v9 = [(_MKHandlerURLHandlingTask *)self URLHandler:handlerCopy setRegionWithCenter:latitude zoomLevel:longitude, GEOConfigGetUInteger()];
  return v9;
}

- (BOOL)URLHandler:(id)handler setRegionWithCenter:(CLLocationCoordinate2D)center zoomLevel:(double)level
{
  longitude = center.longitude;
  latitude = center.latitude;
  handlerCopy = handler;
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
    v10 = [(_MKHandlerURLHandlingTask *)self URLHandler:handlerCopy setRegion:?];
  }

  return v10;
}

- (BOOL)URLHandler:(id)handler setRegionWithCenterAndCamera:(CLLocationCoordinate2D)camera zoomLevel:(double)level pitch:(double)pitch yaw:(double)yaw
{
  longitude = camera.longitude;
  latitude = camera.latitude;
  handlerCopy = handler;
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
    v12 = [_MKHandlerURLHandlingTask URLHandler:"URLHandler:setRegionWithCamera:pitch:yaw:" setRegionWithCamera:handlerCopy pitch:? yaw:?];
  }

  return v12;
}

- (BOOL)URLHandler:(id)handler setRegionWithCenterAndCamera:(CLLocationCoordinate2D)camera altitude:(double)altitude pitch:(double)pitch yaw:(double)yaw
{
  longitude = camera.longitude;
  latitude = camera.latitude;
  v13 = sub_100005610();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "URLHandlingTask setRegionWithCenterAndCamera", v18, 2u);
  }

  v14 = [MKMapCamera cameraLookingAtCenterCoordinate:latitude fromDistance:longitude pitch:(altitude / cos(pitch * 0.0174532925)) heading:pitch, yaw];
  geoCamera = [v14 geoCamera];
  displayOptions = [(_MKHandlerURLHandlingTask *)self displayOptions];
  [displayOptions setCamera:geoCamera];

  return 1;
}

- (BOOL)URLHandler:(id)handler setRegionWithCenter:(CLLocationCoordinate2D)center altitude:(double)altitude
{
  longitude = center.longitude;
  latitude = center.latitude;
  v9 = sub_100005610();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "URLHandlingTask setRegionWithCenterAndCamera", v14, 2u);
  }

  v10 = [MKMapCamera cameraLookingAtCenterCoordinate:latitude fromDistance:longitude pitch:altitude heading:0.0, 0.0];
  geoCamera = [v10 geoCamera];
  displayOptions = [(_MKHandlerURLHandlingTask *)self displayOptions];
  [displayOptions setCamera:geoCamera];

  return 1;
}

- (BOOL)URLHandler:(id)handler setRegionWithCamera:(id *)camera pitch:(double)pitch yaw:(double)yaw
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
  if (fabs(yaw) <= 180.0 && pitch >= -90.0 && pitch <= 90.0)
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
      geoCamera = [v29 geoCamera];
      displayOptions = [(_MKHandlerURLHandlingTask *)self displayOptions];
      [displayOptions setCamera:geoCamera];

      return 1;
    }
  }

  return result;
}

- (BOOL)URLHandler:(id)handler setRegion:(id *)region
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
      geoCamera = [v25 geoCamera];
      displayOptions = [(_MKHandlerURLHandlingTask *)self displayOptions];
      [displayOptions setCamera:geoCamera];

      return 1;
    }
  }

  return result;
}

- (BOOL)URLHandler:(id)handler launchIntoSearchWithMapItems:(id)items options:(id)options context:(id)context
{
  itemsCopy = items;
  optionsCopy = options;
  v10 = sub_100005610();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v67 = itemsCopy;
    v68 = 2112;
    v69 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "URLHandlingTask launchIntoSearchWithMapItems %@ %@", buf, 0x16u);
  }

  [(_MKHandlerURLHandlingTask *)self _processMKOptions:optionsCopy];
  v11 = [optionsCopy objectForKeyedSubscript:_MKLaunchOptionsPreserveSearchResultsKey];
  bOOLValue = [v11 BOOLValue];

  v13 = MKLaunchOptionsSelectedIndexKey;
  v14 = [optionsCopy objectForKeyedSubscript:MKLaunchOptionsSelectedIndexKey];
  v15 = v14;
  if (!itemsCopy && bOOLValue && v14 != 0)
  {
    v17 = [SearchSelectionAction alloc];
    v18 = [optionsCopy objectForKeyedSubscript:v13];
    v19 = -[SearchSelectionAction initWithSelectedIndex:](v17, "initWithSelectedIndex:", [v18 unsignedIntegerValue]);

    currentAction = self->_currentAction;
    self->_currentAction = v19;
    goto LABEL_58;
  }

  if ([itemsCopy count] == 1)
  {
    currentAction = [itemsCopy objectAtIndexedSubscript:0];
    if ([currentAction isCurrentLocation])
    {
      v21 = [optionsCopy objectForKey:MKLaunchOptionsMapSpanKey];
      v22 = [optionsCopy objectForKey:MKLaunchOptionsMapCenterKey];
      if (!(v21 | v22))
      {
        displayOptions = [(_MKHandlerURLHandlingTask *)self displayOptions];
        [displayOptions setUserTrackingMode:1];
        goto LABEL_48;
      }
    }

    if ([currentAction _hasMuninViewState])
    {
      v23 = OpenLookAroundAction;
LABEL_15:
      v24 = [[v23 alloc] initWithMapItem:currentAction];
      displayOptions = self->_currentAction;
      self->_currentAction = v24;
LABEL_48:

      goto LABEL_58;
    }

    if (([currentAction _hasMUID] & 1) == 0 && objc_msgSend(currentAction, "_hasResolvablePartialInformation"))
    {
      v23 = ForwardGeocodeAction;
      goto LABEL_15;
    }

    _geoAddress = [currentAction _geoAddress];
    structuredAddress = [_geoAddress structuredAddress];
    if (structuredAddress)
    {
    }

    else
    {
      _geoAddress2 = [currentAction _geoAddress];
      formattedAddressLinesCount = [_geoAddress2 formattedAddressLinesCount];

      if (formattedAddressLinesCount)
      {
        v23 = RefineMapItemAction;
        goto LABEL_15;
      }
    }
  }

  v58 = bOOLValue;
  selfCopy = self;
  [(_MKHandlerURLHandlingTask *)self regionForLaunchOptions:optionsCopy andMapItems:itemsCopy];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [itemsCopy count]);
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v37 = itemsCopy;
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

  v45 = selfCopy->_searchTerm;
  if (![(NSString *)v45 length])
  {
    selectedResult = [currentAction selectedResult];
    v47 = selectedResult;
    if (selectedResult)
    {
      firstObject = selectedResult;
    }

    else
    {
      results = [currentAction results];
      firstObject = [results firstObject];
    }

    name = [firstObject name];

    v45 = name;
  }

  [currentAction setShouldPreserveResults:v58];
  v50 = +[MNNavigationService sharedService];
  [v50 state];
  IsNavigating = MNNavigationServiceStateIsNavigating();

  if (IsNavigating)
  {
    if (selfCopy->_searchAlongRoute || (MapsFeature_IsEnabled_DrivingMultiWaypointRoutes() & 1) != 0 || (MapsFeature_IsEnabled_Maps420() & 1) != 0)
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
  v54 = selfCopy->_currentAction;
  selfCopy->_currentAction = &v53->super;

LABEL_58:
  return 1;
}

- (BOOL)URLHandler:(id)handler launchIntoShowMapItems:(id)items options:(id)options context:(id)context
{
  handlerCopy = handler;
  itemsCopy = items;
  optionsCopy = options;
  contextCopy = context;
  v14 = sub_100005610();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v21 = 138412546;
    v22 = itemsCopy;
    v23 = 2112;
    v24 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "URLHandlingTask launchIntoShowMapItems %@ %@", &v21, 0x16u);
  }

  [(_MKHandlerURLHandlingTask *)self _processMKOptions:optionsCopy];
  v15 = +[CarDisplayController sharedInstance];
  isCarAppSceneHostingNavigation = [v15 isCarAppSceneHostingNavigation];

  if (-[_MKHandlerURLHandlingTask _shouldAddStopWithLaunchOptions:requireLaunchIntoNavOrDirectionsModeOption:requireSearchAlongRouteOption:](self, "_shouldAddStopWithLaunchOptions:requireLaunchIntoNavOrDirectionsModeOption:requireSearchAlongRouteOption:", optionsCopy, isCarAppSceneHostingNavigation, 1) && [itemsCopy count] == 1)
  {
    v17 = +[MKMapService sharedService];
    [v17 captureUserAction:356 onTarget:505 eventValue:0];

    firstObject = [itemsCopy firstObject];
    v19 = [(_MKHandlerURLHandlingTask *)self _URLHandler:handlerCopy addStopWithMapItem:firstObject];
  }

  else
  {
    v19 = [(_MKHandlerURLHandlingTask *)self URLHandler:handlerCopy launchIntoSearchWithMapItems:itemsCopy options:optionsCopy context:contextCopy];
  }

  return v19;
}

- (BOOL)_URLHandler:(id)handler addFindMyStopWithHandleIdentifier:(id)identifier coordinate:(id)coordinate
{
  var1 = coordinate.var1;
  var0 = coordinate.var0;
  identifierCopy = identifier;
  v9 = sub_100005610();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v13 = 138412803;
    v14 = identifierCopy;
    v15 = 2049;
    v16 = var0;
    v17 = 2049;
    v18 = var1;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "URLHandlingTask addFindMyStopWithHandleIdentifier %@ coordinate: {%{private}f, %{private}f}", &v13, 0x20u);
  }

  var1 = [[FindMyAction alloc] initWithFindMyHandleIdentifier:identifierCopy coordinate:var0, var1];
  currentAction = self->_currentAction;
  self->_currentAction = &var1->super;

  return 1;
}

- (BOOL)_URLHandler:(id)handler addStopWithMapItem:(id)item
{
  itemCopy = item;
  v6 = sub_100005610();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    v11 = itemCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "URLHandlingTask addStopWithMapItem %@", &v10, 0xCu);
  }

  v7 = [[AddAStopAction alloc] initWithMapItem:itemCopy];
  currentAction = self->_currentAction;
  self->_currentAction = &v7->super;

  return 1;
}

- (BOOL)_shouldAddStopWithLaunchOptions:(id)options requireLaunchIntoNavOrDirectionsModeOption:(BOOL)option requireSearchAlongRouteOption:(BOOL)routeOption
{
  routeOptionCopy = routeOption;
  optionCopy = option;
  optionsCopy = options;
  v41 = +[MNNavigationService sharedService];
  [v41 state];
  v8 = MNNavigationServiceStateIsNavigating() && [v41 navigationState] != 6 && objc_msgSend(v41, "navigationType") == 3;
  v9 = [optionsCopy objectForKeyedSubscript:_MKLaunchOptionsRoutingAvoidTollsKey];
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v11 = [optionsCopy objectForKeyedSubscript:_MKLaunchOptionsRoutingAvoidHighwaysKey];
    v10 = v11 != 0;
  }

  navigationTransportType = [v41 navigationTransportType];
  v13 = 0;
  v14 = @"NO";
  if (navigationTransportType <= 2)
  {
    if (navigationTransportType == 1)
    {
      goto LABEL_19;
    }

    if (navigationTransportType == 2)
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

  if (navigationTransportType == 6)
  {
    goto LABEL_19;
  }

  if (navigationTransportType != 3)
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
  v15 = [optionsCopy objectForKeyedSubscript:MKLaunchOptionsLaunchIntoNavKey];
  bOOLValue = [v15 BOOLValue];

  v17 = [optionsCopy objectForKey:MKLaunchOptionsDirectionsModeKey];

  if (optionCopy)
  {
    v13 &= bOOLValue | (v17 != 0);
  }

  v18 = [optionsCopy objectForKeyedSubscript:_MKLaunchOptionsSearchAlongRouteKey];
  bOOLValue2 = [v18 BOOLValue];

  if (routeOptionCopy)
  {
    v20 = v13 & bOOLValue2;
  }

  else
  {
    v20 = v13;
  }

  v21 = sub_100005610();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = @"NO";
    if (optionCopy)
    {
      v22 = @"YES";
    }

    v37 = v22;
    if (routeOptionCopy)
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
    if (bOOLValue)
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
    if (bOOLValue2)
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

- (BOOL)URLHandler:(id)handler launchIntoDirectionsWithMapItems:(id)items options:(id)options context:(id)context
{
  handlerCopy = handler;
  itemsCopy = items;
  optionsCopy = options;
  contextCopy = context;
  [(_MKHandlerURLHandlingTask *)self _processMKOptions:optionsCopy];
  if ([itemsCopy count])
  {
    sourceApplication = [(URLHandlingTask *)self sourceApplication];
    if ([sourceApplication isEqualToString:@"com.apple.AssistantServices"])
    {
      v14 = 1;
    }

    else
    {
      sourceApplication2 = [(URLHandlingTask *)self sourceApplication];
      if ([sourceApplication2 isEqualToString:@"com.apple.siri"])
      {
        v14 = 1;
      }

      else
      {
        sourceApplication3 = [(URLHandlingTask *)self sourceApplication];
        v14 = [sourceApplication3 isEqualToString:@"com.apple.WorkflowKit.BackgroundShortcutRunner"];
      }
    }

    v18 = [itemsCopy indexOfObjectPassingTest:&stru_10162ADF8];
    v76 = [optionsCopy objectForKey:_MKLaunchOptionsFindMyHandleIdentifiersKey];
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
      if (v18 != 0x7FFFFFFFFFFFFFFFLL || ![(_MKHandlerURLHandlingTask *)self _shouldAddStopWithLaunchOptions:optionsCopy requireLaunchIntoNavOrDirectionsModeOption:1 requireSearchAlongRouteOption:v20])
      {
        v30 = sub_100005610();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          *&buf[4] = itemsCopy;
          *&buf[12] = 2112;
          *&buf[14] = optionsCopy;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "URLHandlingTask launchIntoDirectionsWithMapItems %@ %@", buf, 0x16u);
        }

        v31 = objc_alloc_init(NSMutableArray);
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        LOBYTE(v82) = 0;
        if ([itemsCopy count] == 1)
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
        [itemsCopy enumerateObjectsUsingBlock:v77];
        v34 = objc_alloc_init(DirectionsPlan);
        v35 = objc_alloc_init(GEOStorageRouteRequestStorage);
        [(DirectionsPlan *)v34 setRouteRequestStorage:v35];

        routeRequestStorage = [(DirectionsPlan *)v34 routeRequestStorage];
        [routeRequestStorage setWaypoints:v33];

        lastObject = [v33 lastObject];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          lastObject2 = [v33 lastObject];
          route = [lastObject2 route];
          persistentData = [route persistentData];
          routeRequestStorage2 = [(DirectionsPlan *)v34 routeRequestStorage];
          [routeRequestStorage2 setDestinationRouteData:persistentData];
        }

        v43 = [optionsCopy objectForKeyedSubscript:MKLaunchOptionsDirectionsModeKey];

        if (v43)
        {
          v44 = [optionsCopy objectForKeyedSubscript:MKLaunchOptionsDirectionsModeKey];
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

            routeRequestStorage3 = [(DirectionsPlan *)v34 routeRequestStorage];
            [routeRequestStorage3 setTransportType:v45];
          }
        }

        v47 = [optionsCopy objectForKeyedSubscript:MKLaunchOptionsLaunchIntoNavKey];
        bOOLValue = [v47 BOOLValue];

        if (bOOLValue)
        {
          v49 = 2;
        }

        else
        {
          v49 = 1;
        }

        [(DirectionsPlan *)v34 setDisplayMethod:v49];
        v50 = [optionsCopy objectForKeyedSubscript:_MKLaunchOptionsRoutingAvoidTollsKey];
        bOOLValue2 = [v50 BOOLValue];

        if (bOOLValue2)
        {
          [(DirectionsPlan *)v34 setAvoidTolls:1];
        }

        v52 = [optionsCopy objectForKeyedSubscript:_MKLaunchOptionsRoutingAvoidHighwaysKey];
        bOOLValue3 = [v52 BOOLValue];

        if (bOOLValue3)
        {
          [(DirectionsPlan *)v34 setAvoidHighways:1];
        }

        v54 = [optionsCopy objectForKey:MKLaunchOptionsRouteHandleKey];
        if (v54)
        {
          routeRequestStorage4 = [(DirectionsPlan *)v34 routeRequestStorage];
          v56 = [routeRequestStorage4 transportType] == 1;

          if (v56)
          {
            routeRequestStorage5 = [(DirectionsPlan *)v34 routeRequestStorage];
            [routeRequestStorage5 setRouteHandle:v54];
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
              type = [(GEOURLTimePoint *)v59 type];
              if (type)
              {
                if (type == 1)
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

        companionRouteContext = [contextCopy companionRouteContext];

        if (companionRouteContext)
        {
          companionRouteContext2 = [contextCopy companionRouteContext];
          data = [companionRouteContext2 data];
          [(DirectionsPlan *)v34 setCompanionRouteContextData:data];
        }

        mapsActivity = [(_MKHandlerURLHandlingTask *)self mapsActivity];
        [mapsActivity setDirectionsPlan:v34];

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
        lastObject3 = [itemsCopy lastObject];
        v15 = [(_MKHandlerURLHandlingTask *)self _URLHandler:handlerCopy addStopWithMapItem:lastObject3];

LABEL_64:
        goto LABEL_65;
      }

      lastObject4 = [v76 lastObject];
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

      lastObject5 = [itemsCopy lastObject];
      _geoMapItemStorageForPersistence = [lastObject5 _geoMapItemStorageForPersistence];

      if (_geoMapItemStorageForPersistence)
      {
        [_geoMapItemStorageForPersistence coordinate];
        v26 = v25;
        v28 = -180.0;
        if (fabs(v27) <= 180.0 && v26 >= -90.0)
        {
          v29 = -180.0;
          if (v26 <= 90.0)
          {
            [_geoMapItemStorageForPersistence coordinate];
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
      v15 = [(_MKHandlerURLHandlingTask *)self _URLHandler:handlerCopy addFindMyStopWithHandleIdentifier:lastObject4 coordinate:v28, v29];

      goto LABEL_64;
    }

    v20 = [itemsCopy count] != 1;
    goto LABEL_15;
  }

  v15 = 0;
LABEL_65:

  return v15;
}

- (BOOL)URLHandler:(id)handler setContentProvider:(id)provider
{
  providerCopy = provider;
  v6 = sub_100005610();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "URLHandlingTask setContentProvider", v10, 2u);
  }

  v7 = [providerCopy copy];
  contentProvider = self->_contentProvider;
  self->_contentProvider = v7;

  return 1;
}

- (BOOL)URLHandler:(id)handler setSchemeForCapture:(id)capture sourceApplication:(id)application isLaunchedFromTTL:(BOOL)l ttlEventTime:(id)time
{
  lCopy = l;
  timeCopy = time;
  v10 = sub_100005610();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "URLHandlingTask setSchemeForCapture", v12, 2u);
  }

  [(URLHandlingTask *)self setLaunchedFromTTL:lCopy];
  [(URLHandlingTask *)self setTtlEventTime:timeCopy];

  return 1;
}

- (void)URLHandler:(id)handler didFinishAsynchronousHandlingWithError:(id)error
{
  handlerCopy = handler;
  errorCopy = error;
  if (errorCopy)
  {
    v8 = sub_100005610();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412546;
      selfCopy2 = self;
      v12 = 2112;
      v13 = errorCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "URLHandlingTask %@ error %@", &v10, 0x16u);
    }

    objc_storeStrong(&self->_currentError, error);
  }

  v9 = sub_100005610();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = 138412290;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "URLHandlingTask URLHandlerFinishedAsynchonousTask %@", &v10, 0xCu);
  }

  self->_asyncTaskInProgress = 0;
  [(_MKHandlerURLHandlingTask *)self _createRichMapsActivity];
}

- (void)URLHandlerWillStartAsynchronousHandling:(id)handling
{
  v4 = sub_100005610();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "URLHandlingTask URLHandlerStartAsynchonousTask %@", &v5, 0xCu);
  }

  self->_asyncTaskInProgress = 1;
}

- (void)_processMKOptions:(id)options
{
  optionsCopy = options;
  v5 = sub_100005610();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v91 = 138412290;
    v92 = optionsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "URLHandlingTask mkOptions %@", &v91, 0xCu);
  }

  self->_mkOptionsParsed = 1;
  if (optionsCopy)
  {
    v6 = [optionsCopy objectForKeyedSubscript:@"MKURLContext"];

    if (v6)
    {
      v7 = [optionsCopy objectForKeyedSubscript:@"MKURLContext"];
      urlContext = self->_urlContext;
      self->_urlContext = v7;
    }

    v9 = [optionsCopy objectForKeyedSubscript:MKLaunchOptionsLaunchIntoSearchHomeKey];

    if (v9)
    {
      v10 = objc_alloc_init(PresentNearbySearchAction);
      currentAction = self->_currentAction;
      self->_currentAction = &v10->super;
    }

    v12 = [optionsCopy objectForKeyedSubscript:MKLaunchOptionsLaunchIntoNavOverviewKey];
    if (v12)
    {

      v13 = MKLaunchOptionsLaunchIntoNavDetailKey;
    }

    else
    {
      v13 = MKLaunchOptionsLaunchIntoNavDetailKey;
      v14 = [optionsCopy objectForKeyedSubscript:MKLaunchOptionsLaunchIntoNavDetailKey];

      if (!v14)
      {
LABEL_12:
        v19 = [optionsCopy objectForKeyedSubscript:MKLaunchOptionsLaunchIntoNavShareETAKey];

        if (v19)
        {
          v20 = objc_alloc_init(PresentNavShareETAAction);
          v21 = self->_currentAction;
          self->_currentAction = &v20->super;
        }

        v22 = MKLaunchOptionsCameraAltitudeMultiplierKey;
        v23 = [optionsCopy objectForKeyedSubscript:MKLaunchOptionsCameraAltitudeMultiplierKey];

        if (v23)
        {
          v24 = [ZoomMapAction alloc];
          v25 = [optionsCopy objectForKeyedSubscript:v22];
          [v25 doubleValue];
          v26 = [(ZoomMapAction *)v24 initWithZoomFactor:?];
          v27 = self->_currentAction;
          self->_currentAction = v26;
        }

        v28 = MKLaunchOptionsLaunchIntoKeyboardKey;
        v29 = [optionsCopy objectForKeyedSubscript:MKLaunchOptionsLaunchIntoKeyboardKey];

        if (v29)
        {
          v30 = [ShowKeyboardAction alloc];
          v31 = [optionsCopy objectForKeyedSubscript:v28];
          v32 = -[ShowKeyboardAction initWithInteractionModel:](v30, "initWithInteractionModel:", [v31 unsignedIntegerValue]);
          v33 = self->_currentAction;
          self->_currentAction = v32;
        }

        v34 = MKLaunchOptionsLaunchIntoNavTraceKey;
        v35 = [optionsCopy objectForKeyedSubscript:MKLaunchOptionsLaunchIntoNavTraceKey];

        if (v35)
        {
          v36 = [optionsCopy objectForKeyedSubscript:v34];
          v37 = +[MNFilePaths navTracesDirectoryPath];
          v38 = [v37 stringByAppendingPathComponent:v36];
          v39 = +[MNFilePaths navTraceExtension];
          v40 = [v38 stringByAppendingPathExtension:v39];

          v41 = MKLaunchOptionsLaunchIntoNavTraceStartNavKey;
          v42 = [optionsCopy objectForKeyedSubscript:MKLaunchOptionsLaunchIntoNavTraceStartNavKey];

          if (v42)
          {
            v43 = [optionsCopy objectForKeyedSubscript:v41];
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

        v48 = [optionsCopy objectForKeyedSubscript:MKLaunchOptionsCameraKey];

        if (v48)
        {
          v49 = [optionsCopy objectForKeyedSubscript:MKLaunchOptionsCameraKey];
          geoCamera = [v49 geoCamera];
          displayOptions = [(_MKHandlerURLHandlingTask *)self displayOptions];
          [displayOptions setCamera:geoCamera];
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
        v56 = [optionsCopy objectForKeyedSubscript:_MKLaunchOptionsSearchAlongRouteKey];

        if (v56)
        {
          if (self->_searchAlongRoute)
          {
            self->_searchAlongRoute = 1;
          }

          else
          {
            v57 = [optionsCopy objectForKeyedSubscript:v55];
            self->_searchAlongRoute = [v57 BOOLValue];
          }
        }

        v58 = _MKLaunchOptionsRoutingAvoidHighwaysKey;
        v59 = [optionsCopy objectForKeyedSubscript:_MKLaunchOptionsRoutingAvoidHighwaysKey];

        if (v59)
        {
          v60 = [optionsCopy objectForKeyedSubscript:v58];
          routeAvoidHighways = self->_routeAvoidHighways;
          self->_routeAvoidHighways = v60;
        }

        v62 = _MKLaunchOptionsRoutingAvoidTollsKey;
        v63 = [optionsCopy objectForKeyedSubscript:_MKLaunchOptionsRoutingAvoidTollsKey];

        if (v63)
        {
          v64 = [optionsCopy objectForKeyedSubscript:v62];
          routeAvoidTolls = self->_routeAvoidTolls;
          self->_routeAvoidTolls = v64;
        }

        v66 = MKLaunchOptionsTimePointKey;
        v67 = [optionsCopy objectForKeyedSubscript:MKLaunchOptionsTimePointKey];

        if (v67)
        {
          v68 = [optionsCopy objectForKeyedSubscript:v66];
          timePoint = self->_timePoint;
          self->_timePoint = v68;
        }

        v70 = MKLaunchOptionsMapRadiusInMetersKey;
        v71 = [optionsCopy objectForKeyedSubscript:MKLaunchOptionsMapRadiusInMetersKey];

        if (v71)
        {
          v72 = [optionsCopy objectForKeyedSubscript:v70];
          radiusInMeter = self->_radiusInMeter;
          self->_radiusInMeter = v72;
        }

        v74 = MKLaunchOptionsSearchTermsKey;
        v75 = [optionsCopy objectForKeyedSubscript:MKLaunchOptionsSearchTermsKey];

        if (v75)
        {
          v76 = [optionsCopy objectForKeyedSubscript:v74];
          searchTerm = self->_searchTerm;
          self->_searchTerm = v76;
        }

        v78 = MKLaunchOptionsReferralIdentifierKey;
        v79 = [optionsCopy objectForKeyedSubscript:MKLaunchOptionsReferralIdentifierKey];

        if (v79)
        {
          v80 = [optionsCopy objectForKeyedSubscript:v78];
          [(URLHandlingTask *)self setSourceApplication:v80];
        }

        v81 = MKLaunchOptionsAnalyticsActionKey;
        v82 = [optionsCopy objectForKeyedSubscript:MKLaunchOptionsAnalyticsActionKey];

        if (v82)
        {
          v83 = [optionsCopy objectForKeyedSubscript:v81];
          self->_analyticsAction = [v83 unsignedIntegerValue];
        }

        v84 = MKLaunchOptionsAnalyticsTargetKey;
        v85 = [optionsCopy objectForKeyedSubscript:MKLaunchOptionsAnalyticsTargetKey];

        if (v85)
        {
          v86 = [optionsCopy objectForKeyedSubscript:v84];
          self->_analyticsTarget = [v86 unsignedIntegerValue];
        }

        v87 = MKLaunchOptionsAnalyticsValueKey;
        v88 = [optionsCopy objectForKeyedSubscript:MKLaunchOptionsAnalyticsValueKey];

        if (v88)
        {
          v89 = [optionsCopy objectForKeyedSubscript:v87];
          analyticsValue = self->_analyticsValue;
          self->_analyticsValue = v89;
        }

        goto LABEL_54;
      }
    }

    v15 = [DisplayModeNavAction alloc];
    v16 = [optionsCopy objectForKeyedSubscript:v13];
    v17 = [(DisplayModeNavAction *)v15 initWithShowDetails:v16 != 0];
    v18 = self->_currentAction;
    self->_currentAction = v17;

    goto LABEL_12;
  }

LABEL_54:
}

- (void)_sendWidgetAnalytics
{
  sourceApplication = [(URLHandlingTask *)self sourceApplication];
  v4 = [sourceApplication isEqualToString:@"com.apple.Maps.GeneralMapsWidget"];

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
    dictionaryRepresentation = [(MapsActivity *)mapsActivity dictionaryRepresentation];
    allKeys = [dictionaryRepresentation allKeys];
    if ([allKeys count])
    {
      v6 = [dictionaryRepresentation objectForKeyedSubscript:@"displayOptions"];

      if (!v6)
      {
        goto LABEL_10;
      }

      allKeys = [(MapsActivity *)self->_mapsActivity displayOptions];
      dictionaryRepresentation2 = [allKeys dictionaryRepresentation];
      allKeys2 = [dictionaryRepresentation2 allKeys];
      if ([allKeys2 count])
      {
        v9 = [dictionaryRepresentation2 objectForKeyedSubscript:@"userTrackingMode"];

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
    dictionaryRepresentation = [(MapsActivity *)mapsActivity dictionaryRepresentation];
    allKeys = [dictionaryRepresentation allKeys];
    if ([allKeys count] == 1)
    {
      v8 = [dictionaryRepresentation objectForKeyedSubscript:@"displayOptions"];

      if (!v8)
      {
        goto LABEL_14;
      }

      allKeys = [(MapsActivity *)self->_mapsActivity displayOptions];
      dictionaryRepresentation2 = [allKeys dictionaryRepresentation];
      allKeys2 = [dictionaryRepresentation2 allKeys];
      if ([allKeys2 count] == 1)
      {
        v11 = [dictionaryRepresentation2 objectForKeyedSubscript:@"enableTraffic"];
        if (v11)
        {

LABEL_17:
          v4 = 0;
          goto LABEL_15;
        }

        v12 = [dictionaryRepresentation2 objectForKeyedSubscript:@"mapType"];

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
    selfCopy = self;
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

    sourceApplication = [(URLHandlingTask *)self sourceApplication];
    if (([sourceApplication isEqualToString:@"com.apple.AssistantServices"] & 1) == 0)
    {
      sourceApplication2 = [(URLHandlingTask *)self sourceApplication];
      if (![sourceApplication2 isEqualToString:@"com.apple.siri"])
      {
        sourceApplication3 = [(URLHandlingTask *)self sourceApplication];
        v17 = [sourceApplication3 isEqualToString:@"com.apple.WorkflowKit.BackgroundShortcutRunner"];

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

- (void)taskFinished:(id)finished
{
  v4.receiver = self;
  v4.super_class = _MKHandlerURLHandlingTask;
  [(RichMapsActivityCreatingTaskImpl *)&v4 taskFinished:finished];
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
        mkOptions = [(URLHandlingTask *)self mkOptions];
        [(_MKHandlerURLHandlingTask *)self URLHandler:0 launchIntoSearchWithMapItems:v8 options:mkOptions context:self->_urlContext];

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
  mkOptions2 = [(URLHandlingTask *)self mkOptions];
  [(_MKHandlerURLHandlingTask *)self URLHandler:0 launchWithOptions:mkOptions2];

  v13 = self->_urlHandler;
  v14 = [(URLHandlingTask *)self url];
  sourceApplication = [(URLHandlingTask *)self sourceApplication];
  [(_MKURLHandler *)v13 handleURL:v14 sourceApplication:sourceApplication context:self->_urlContext];

LABEL_7:
  if (!self->_asyncTaskInProgress)
  {
    [(_MKHandlerURLHandlingTask *)self _createRichMapsActivity];
  }
}

- (id)displayOptions
{
  mapsActivity = [(_MKHandlerURLHandlingTask *)self mapsActivity];
  hasDisplayOptions = [mapsActivity hasDisplayOptions];

  if ((hasDisplayOptions & 1) == 0)
  {
    v5 = objc_alloc_init(GEOURLOptions);
    mapsActivity2 = [(_MKHandlerURLHandlingTask *)self mapsActivity];
    [mapsActivity2 setDisplayOptions:v5];
  }

  mapsActivity3 = [(_MKHandlerURLHandlingTask *)self mapsActivity];
  displayOptions = [mapsActivity3 displayOptions];

  return displayOptions;
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