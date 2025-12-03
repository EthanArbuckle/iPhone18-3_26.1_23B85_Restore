@interface MAMapResultSnippetViewController
- (MAMapResultSnippetViewController)initWithMapItemSnippet:(id)snippet;
- (double)desiredHeightForWidth:(double)width;
- (id)_loadMapSnippetView;
- (id)_mapSnippetView;
- (void)_updateTitleAndSubtitleWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)loadView;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)mapView:(id)view didChooseMapItem:(id)item headerTapped:(BOOL)tapped;
- (void)mapViewDidChooseMapAttribution:(id)attribution mapItem:(id)item;
@end

@implementation MAMapResultSnippetViewController

- (MAMapResultSnippetViewController)initWithMapItemSnippet:(id)snippet
{
  v8.receiver = self;
  v8.super_class = MAMapResultSnippetViewController;
  v3 = [(MABaseSnippetViewController *)&v8 initWithMapItemSnippet:snippet];
  v4 = v3;
  if (v3)
  {
    selectedLocalSearchMapItem = [(MABaseSnippetViewController *)v3 selectedLocalSearchMapItem];
    v9 = selectedLocalSearchMapItem;
    v6 = [NSArray arrayWithObjects:&v9 count:1];
    [(MAMapResultSnippetViewController *)v4 setRequestContext:v6];
  }

  return v4;
}

- (void)_updateTitleAndSubtitleWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[NSBundle _ma_bundle];
  v6 = [v5 siriUILocalizedStringForKey:@"Details"];

  [(MAMapResultSnippetViewController *)self setNavigationTitle:v6];
  selectedLocalSearchMapItem = [(MABaseSnippetViewController *)self selectedLocalSearchMapItem];
  label = [selectedLocalSearchMapItem label];
  [(MAMapResultSnippetViewController *)self setTitle:label];

  distance = [selectedLocalSearchMapItem distance];

  if (distance)
  {
    distance2 = [selectedLocalSearchMapItem distance];
    value = [distance2 value];
    [value doubleValue];
    self->_fallbackDistance = v12;

    distance3 = [selectedLocalSearchMapItem distance];
    localizedDistanceString = [distance3 localizedDistanceString];
    [(MAMapResultSnippetViewController *)self setSubtitle:localizedDistanceString];

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }

  else
  {
    v15 = +[MKLocationManager sharedLocationManager];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1A8C;
    v17[3] = &unk_2C6B0;
    v18 = selectedLocalSearchMapItem;
    selfCopy = self;
    v20 = handlerCopy;
    v16 = [v15 singleLocationUpdateWithDesiredAccuracy:v17 handler:kCLLocationAccuracyNearestTenMeters timeout:1.0];
    [v16 start];
  }
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = MAMapResultSnippetViewController;
  [(MAMapResultSnippetViewController *)&v4 loadView];
  _loadMapSnippetView = [(MAMapResultSnippetViewController *)self _loadMapSnippetView];
  [_loadMapSnippetView _ma_updateSemanticContentAttribute];
  [_loadMapSnippetView _mapkit_setNeedsLayout];
  [(MAMapResultSnippetViewController *)self setView:_loadMapSnippetView];
}

- (void)dealloc
{
  if ([(MAMapResultSnippetViewController *)self isViewLoaded])
  {
    _mapSnippetView = [(MAMapResultSnippetViewController *)self _mapSnippetView];
    [_mapSnippetView setDelegate:0];
  }

  v4.receiver = self;
  v4.super_class = MAMapResultSnippetViewController;
  [(MABaseSnippetViewController *)&v4 dealloc];
}

- (void)mapView:(id)view didChooseMapItem:(id)item headerTapped:(BOOL)tapped
{
  tappedCopy = tapped;
  itemCopy = item;
  if (tappedCopy)
  {
    v8 = 6042;
  }

  else
  {
    v8 = 6007;
  }

  selectedLocalSearchMapItem = [(MABaseSnippetViewController *)self selectedLocalSearchMapItem];
  placeData2 = [selectedLocalSearchMapItem placeData2];
  [(MABaseSnippetViewController *)self captureUserAction:v8 mapItemPlaceData:placeData2];

  delegate = [(MAMapResultSnippetViewController *)self delegate];
  commands = [itemCopy commands];
  [delegate siriViewController:self performAceCommands:commands];

  v13 = +[NSMutableDictionary dictionary];
  mapItemSnippet = [(MABaseSnippetViewController *)self mapItemSnippet];
  regionOfInterestRadiusInMiles = [mapItemSnippet regionOfInterestRadiusInMiles];
  [regionOfInterestRadiusInMiles doubleValue];
  v17 = v16;

  regionOfInterestRadiusInMiles2 = [mapItemSnippet regionOfInterestRadiusInMiles];

  if (regionOfInterestRadiusInMiles2 && v17 > 0.0)
  {
    v19 = [NSNumber numberWithDouble:v17 * 1609.344];
    [v13 setObject:v19 forKey:MKLaunchOptionsMapRadiusInMetersKey];
  }

  if ([itemCopy isCurrentLocation])
  {
    v20 = [NSNumber numberWithBool:1];
    [v13 setObject:v20 forKey:MKLaunchOptionsCurrentLocationPlacecardKey];
  }

  if ([itemCopy isParkingLocation])
  {
    v21 = [NSURL URLWithString:@"x-maps-bulletin://?MapsPushNotificationType=ParkedCar"];
    [(MABaseSnippetViewController *)self openURL:v21 completion:0];

    goto LABEL_18;
  }

  items = [mapItemSnippet items];
  v23 = [items indexOfObject:itemCopy];

  if (v23 != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_14;
  }

  selectedMapItemIndex = [(MABaseSnippetViewController *)self selectedMapItemIndex];
  if (selectedMapItemIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v23 = selectedMapItemIndex;
LABEL_14:
    v25 = [NSNumber numberWithUnsignedInteger:v23];
    [v13 setObject:v25 forKeyedSubscript:MKLaunchOptionsSelectedIndexKey];
  }

  v27 = _NSConcreteStackBlock;
  v28 = 3221225472;
  v29 = sub_20B8;
  v30 = &unk_2C6D8;
  v31 = mapItemSnippet;
  v32 = v13;
  v26 = [(MABaseSnippetViewController *)self generateURLWithSession:&v27];
  if (v26)
  {
    [(MABaseSnippetViewController *)self openURL:v26 completion:0, v27, v28, v29, v30, v31];
  }

LABEL_18:
}

- (void)mapViewDidChooseMapAttribution:(id)attribution mapItem:(id)item
{
  attributionCopy = attribution;
  _placeDataAsData = [item _placeDataAsData];
  [(MABaseSnippetViewController *)self captureUserAction:6041 resultIndex:0xFFFFFFFFLL mapItemPlaceData:_placeDataAsData];

  [(MABaseSnippetViewController *)self openURL:attributionCopy completion:0];
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  lastObject = [locations lastObject];
  _mapSnippetView = [(MAMapResultSnippetViewController *)self _mapSnippetView];
  [_mapSnippetView updateMapZoom:-[MABaseSnippetViewController appearing](self withLocation:{"appearing") ^ 1, lastObject}];
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  v7.receiver = self;
  v7.super_class = MAMapResultSnippetViewController;
  authorizationCopy = authorization;
  [(MABaseSnippetViewController *)&v7 locationManagerDidChangeAuthorization:authorizationCopy];
  authorizationStatus = [authorizationCopy authorizationStatus];

  if (authorizationStatus == 2)
  {
    _mapSnippetView = [(MAMapResultSnippetViewController *)self _mapSnippetView];
    [_mapSnippetView updateMapZoom:1 withLocation:0];
  }
}

- (double)desiredHeightForWidth:(double)width
{
  _mapSnippetView = [(MAMapResultSnippetViewController *)self _mapSnippetView];
  [_mapSnippetView desiredHeightForWidth:width];
  v6 = v5;

  return v6;
}

- (id)_loadMapSnippetView
{
  mapItemSnippet = [(MABaseSnippetViewController *)self mapItemSnippet];
  selectedLocalSearchMapItem = [(MABaseSnippetViewController *)self selectedLocalSearchMapItem];
  v5 = [MAMapSnippetView alloc];
  userCurrentLocation = [mapItemSnippet userCurrentLocation];
  bOOLValue = [userCurrentLocation BOOLValue];
  regionOfInterestRadiusInMiles = [mapItemSnippet regionOfInterestRadiusInMiles];
  v9 = [(MAMapSnippetView *)v5 initWithFrame:selectedLocalSearchMapItem mapItem:bOOLValue itemRepresentsCurrentLocation:regionOfInterestRadiusInMiles regionOfInterest:self fallbackDistance:CGRectZero.origin.x reservationDelegate:CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height, self->_fallbackDistance];

  [(MAMapSnippetView *)v9 setDelegate:self];
  if ([mapItemSnippet usesFixedLocation])
  {
    searchRegionCenter = [mapItemSnippet searchRegionCenter];
    clRepresentation = [searchRegionCenter clRepresentation];
    [(MAMapSnippetView *)v9 updateMapZoom:0 withLocation:clRepresentation];
  }

  return v9;
}

- (id)_mapSnippetView
{
  view = [(MAMapResultSnippetViewController *)self view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    view2 = [(MAMapResultSnippetViewController *)self view];
  }

  else
  {
    view2 = 0;
  }

  return view2;
}

@end