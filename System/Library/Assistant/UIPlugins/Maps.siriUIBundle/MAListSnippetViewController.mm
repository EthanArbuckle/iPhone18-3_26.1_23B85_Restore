@interface MAListSnippetViewController
- (double)desiredHeightForWidth:(double)width;
- (id)_headerLocationForSearchCenter:(id)center location:(CLLocationCoordinate2D)location forMapItem:(id)item;
- (id)_listSnippetView;
- (id)_nearCityString:(id)string;
- (id)_titleForList:(id)list;
- (void)_updateTitleAndSubtitleWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)listView:(id)view didChooseMapItem:(id)item accessoryButtonTapped:(BOOL)tapped;
- (void)loadView;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
@end

@implementation MAListSnippetViewController

- (void)dealloc
{
  if ([(MAListSnippetViewController *)self isViewLoaded])
  {
    _listSnippetView = [(MAListSnippetViewController *)self _listSnippetView];
    [_listSnippetView setDelegate:0];
  }

  v4.receiver = self;
  v4.super_class = MAListSnippetViewController;
  [(MABaseSnippetViewController *)&v4 dealloc];
}

- (id)_titleForList:(id)list
{
  v3 = +[NSNumberFormatter _ma_localizedStringFromInteger:](NSNumberFormatter, "_ma_localizedStringFromInteger:", [list count]);
  v4 = +[NSBundle _ma_bundle];
  v5 = [v4 siriUILocalizedStringForKey:@"%@ Results"];

  v6 = [NSString stringWithFormat:v5, v3];

  return v6;
}

- (id)_nearCityString:(id)string
{
  if (string)
  {
    stringCopy = string;
    v4 = +[NSBundle _ma_bundle];
    v5 = [v4 siriUILocalizedStringForKey:@"Near %@"];

    stringCopy = [NSString stringWithFormat:v5, stringCopy];
  }

  else
  {
    stringCopy = 0;
  }

  return stringCopy;
}

- (id)_headerLocationForSearchCenter:(id)center location:(CLLocationCoordinate2D)location forMapItem:(id)item
{
  itemCopy = item;
  city = [center city];
  v9 = city;
  if (city)
  {
    city2 = city;
  }

  else
  {
    location = [itemCopy location];
    city2 = [location city];
  }

  if (center)
  {
    goto LABEL_7;
  }

  location2 = [itemCopy location];
  latitude = [location2 latitude];
  [latitude doubleValue];
  v15 = v14;
  location3 = [itemCopy location];
  longitude = [location3 longitude];
  [longitude doubleValue];
  v19 = CLLocationCoordinate2DMake(v15, v18);
  v24 = v19;

  CLLocationCoordinate2DGetDistanceFrom();
  if (v20 >= 5000.0)
  {
LABEL_7:
    v22 = [(MAListSnippetViewController *)self _nearCityString:city2, v24, *&location.latitude, *&location.longitude];
  }

  else
  {
    v21 = [NSBundle _ma_bundle:*&v19.latitude];
    v22 = [v21 siriUILocalizedStringForKey:@"Nearby"];
  }

  return v22;
}

- (void)loadView
{
  v8.receiver = self;
  v8.super_class = MAListSnippetViewController;
  [(MAListSnippetViewController *)&v8 loadView];
  mapItemSnippet = [(MABaseSnippetViewController *)self mapItemSnippet];
  items = [mapItemSnippet items];

  v5 = [[MAListSnippetView alloc] initWithFrame:items mapItems:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  mapItemSnippet2 = [(MABaseSnippetViewController *)self mapItemSnippet];
  -[MAListSnippetView setDisplayForSAR:](v5, "setDisplayForSAR:", [mapItemSnippet2 searchAlongRoute]);

  mapItemSnippet3 = [(MABaseSnippetViewController *)self mapItemSnippet];
  -[MAListSnippetView setShouldDisplayLocationDetail:](v5, "setShouldDisplayLocationDetail:", [mapItemSnippet3 chainResultSet]);

  [(MAListSnippetView *)v5 setDelegate:self];
  [(MAListSnippetView *)v5 _ma_updateSemanticContentAttribute];
  [(MAListSnippetView *)v5 _mapkit_setNeedsLayout];
  [(MAListSnippetViewController *)self setView:v5];
}

- (void)_updateTitleAndSubtitleWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  mapItemSnippet = [(MABaseSnippetViewController *)self mapItemSnippet];
  items = [mapItemSnippet items];
  v7 = [(MAListSnippetViewController *)self _titleForList:items];
  [(MAListSnippetViewController *)self setTitle:v7];

  v8 = +[MKLocationManager sharedLocationManager];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_53E0;
  v12[3] = &unk_2C6B0;
  v12[4] = self;
  v13 = mapItemSnippet;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = mapItemSnippet;
  v11 = [v8 singleLocationUpdateWithDesiredAccuracy:v12 handler:kCLLocationAccuracyHundredMeters timeout:1.0];
  [v11 start];
}

- (void)listView:(id)view didChooseMapItem:(id)item accessoryButtonTapped:(BOOL)tapped
{
  tappedCopy = tapped;
  itemCopy = item;
  mapItems = [view mapItems];
  v10 = [mapItems indexOfObject:itemCopy];

  if (tappedCopy)
  {
    mapItemSnippet = [(MABaseSnippetViewController *)self mapItemSnippet];
    searchAlongRoute = [mapItemSnippet searchAlongRoute];
  }

  else
  {
    searchAlongRoute = 0;
  }

  v13 = [MKMapItem mapItemWithLocalSearchMapItem:itemCopy];
  v14 = [GEOPlaceActionDetails actionDetailsWithMapItem:v13 timestamp:v10 resultIndex:0.0];

  if (searchAlongRoute)
  {
    v15 = 3001;
  }

  else
  {
    v15 = 2007;
  }

  placeData2 = [itemCopy placeData2];
  [(MABaseSnippetViewController *)self captureUserAction:v15 details:v14 resultIndex:v10 mapItemPlaceData:placeData2];

  delegate = [(MAListSnippetViewController *)self delegate];
  commands = [itemCopy commands];
  [delegate siriViewController:self performAceCommands:commands];

  if (searchAlongRoute)
  {
    [(MABaseSnippetViewController *)self setSelectedMapItemIndex:v10];
    [(MABaseSnippetViewController *)self openURLWithSnippetMapItemsAndSelectedMapItem];
  }

  else
  {
    mapItemSnippet2 = [(MABaseSnippetViewController *)self mapItemSnippet];
    [mapItemSnippet2 setSelectedItemIndex:v10];
    delegate2 = [(MAListSnippetViewController *)self delegate];
    v22 = mapItemSnippet2;
    v21 = [NSArray arrayWithObjects:&v22 count:1];
    [delegate2 siriSnippetViewController:self pushSirilandSnippets:v21];
  }
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  lastObject = [locations lastObject];
  _listSnippetView = [(MAListSnippetViewController *)self _listSnippetView];
  [_listSnippetView setUserLocation:lastObject];
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  v7.receiver = self;
  v7.super_class = MAListSnippetViewController;
  authorizationCopy = authorization;
  [(MABaseSnippetViewController *)&v7 locationManagerDidChangeAuthorization:authorizationCopy];
  authorizationStatus = [authorizationCopy authorizationStatus];

  if (authorizationStatus == 2)
  {
    _listSnippetView = [(MAListSnippetViewController *)self _listSnippetView];
    [_listSnippetView setUserLocation:0];
  }
}

- (double)desiredHeightForWidth:(double)width
{
  _listSnippetView = [(MAListSnippetViewController *)self _listSnippetView];
  [_listSnippetView desiredHeight];
  v5 = v4;

  return v5;
}

- (id)_listSnippetView
{
  view = [(MAListSnippetViewController *)self view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    view2 = [(MAListSnippetViewController *)self view];
  }

  else
  {
    view2 = 0;
  }

  return view2;
}

@end