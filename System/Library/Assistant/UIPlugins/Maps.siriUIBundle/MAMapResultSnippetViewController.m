@interface MAMapResultSnippetViewController
- (MAMapResultSnippetViewController)initWithMapItemSnippet:(id)a3;
- (double)desiredHeightForWidth:(double)a3;
- (id)_loadMapSnippetView;
- (id)_mapSnippetView;
- (void)_updateTitleAndSubtitleWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)loadView;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
- (void)mapView:(id)a3 didChooseMapItem:(id)a4 headerTapped:(BOOL)a5;
- (void)mapViewDidChooseMapAttribution:(id)a3 mapItem:(id)a4;
@end

@implementation MAMapResultSnippetViewController

- (MAMapResultSnippetViewController)initWithMapItemSnippet:(id)a3
{
  v8.receiver = self;
  v8.super_class = MAMapResultSnippetViewController;
  v3 = [(MABaseSnippetViewController *)&v8 initWithMapItemSnippet:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(MABaseSnippetViewController *)v3 selectedLocalSearchMapItem];
    v9 = v5;
    v6 = [NSArray arrayWithObjects:&v9 count:1];
    [(MAMapResultSnippetViewController *)v4 setRequestContext:v6];
  }

  return v4;
}

- (void)_updateTitleAndSubtitleWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[NSBundle _ma_bundle];
  v6 = [v5 siriUILocalizedStringForKey:@"Details"];

  [(MAMapResultSnippetViewController *)self setNavigationTitle:v6];
  v7 = [(MABaseSnippetViewController *)self selectedLocalSearchMapItem];
  v8 = [v7 label];
  [(MAMapResultSnippetViewController *)self setTitle:v8];

  v9 = [v7 distance];

  if (v9)
  {
    v10 = [v7 distance];
    v11 = [v10 value];
    [v11 doubleValue];
    self->_fallbackDistance = v12;

    v13 = [v7 distance];
    v14 = [v13 localizedDistanceString];
    [(MAMapResultSnippetViewController *)self setSubtitle:v14];

    if (v4)
    {
      v4[2](v4);
    }
  }

  else
  {
    v15 = +[MKLocationManager sharedLocationManager];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1A8C;
    v17[3] = &unk_2C6B0;
    v18 = v7;
    v19 = self;
    v20 = v4;
    v16 = [v15 singleLocationUpdateWithDesiredAccuracy:v17 handler:kCLLocationAccuracyNearestTenMeters timeout:1.0];
    [v16 start];
  }
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = MAMapResultSnippetViewController;
  [(MAMapResultSnippetViewController *)&v4 loadView];
  v3 = [(MAMapResultSnippetViewController *)self _loadMapSnippetView];
  [v3 _ma_updateSemanticContentAttribute];
  [v3 _mapkit_setNeedsLayout];
  [(MAMapResultSnippetViewController *)self setView:v3];
}

- (void)dealloc
{
  if ([(MAMapResultSnippetViewController *)self isViewLoaded])
  {
    v3 = [(MAMapResultSnippetViewController *)self _mapSnippetView];
    [v3 setDelegate:0];
  }

  v4.receiver = self;
  v4.super_class = MAMapResultSnippetViewController;
  [(MABaseSnippetViewController *)&v4 dealloc];
}

- (void)mapView:(id)a3 didChooseMapItem:(id)a4 headerTapped:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  if (v5)
  {
    v8 = 6042;
  }

  else
  {
    v8 = 6007;
  }

  v9 = [(MABaseSnippetViewController *)self selectedLocalSearchMapItem];
  v10 = [v9 placeData2];
  [(MABaseSnippetViewController *)self captureUserAction:v8 mapItemPlaceData:v10];

  v11 = [(MAMapResultSnippetViewController *)self delegate];
  v12 = [v7 commands];
  [v11 siriViewController:self performAceCommands:v12];

  v13 = +[NSMutableDictionary dictionary];
  v14 = [(MABaseSnippetViewController *)self mapItemSnippet];
  v15 = [v14 regionOfInterestRadiusInMiles];
  [v15 doubleValue];
  v17 = v16;

  v18 = [v14 regionOfInterestRadiusInMiles];

  if (v18 && v17 > 0.0)
  {
    v19 = [NSNumber numberWithDouble:v17 * 1609.344];
    [v13 setObject:v19 forKey:MKLaunchOptionsMapRadiusInMetersKey];
  }

  if ([v7 isCurrentLocation])
  {
    v20 = [NSNumber numberWithBool:1];
    [v13 setObject:v20 forKey:MKLaunchOptionsCurrentLocationPlacecardKey];
  }

  if ([v7 isParkingLocation])
  {
    v21 = [NSURL URLWithString:@"x-maps-bulletin://?MapsPushNotificationType=ParkedCar"];
    [(MABaseSnippetViewController *)self openURL:v21 completion:0];

    goto LABEL_18;
  }

  v22 = [v14 items];
  v23 = [v22 indexOfObject:v7];

  if (v23 != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_14;
  }

  v24 = [(MABaseSnippetViewController *)self selectedMapItemIndex];
  if (v24 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v23 = v24;
LABEL_14:
    v25 = [NSNumber numberWithUnsignedInteger:v23];
    [v13 setObject:v25 forKeyedSubscript:MKLaunchOptionsSelectedIndexKey];
  }

  v27 = _NSConcreteStackBlock;
  v28 = 3221225472;
  v29 = sub_20B8;
  v30 = &unk_2C6D8;
  v31 = v14;
  v32 = v13;
  v26 = [(MABaseSnippetViewController *)self generateURLWithSession:&v27];
  if (v26)
  {
    [(MABaseSnippetViewController *)self openURL:v26 completion:0, v27, v28, v29, v30, v31];
  }

LABEL_18:
}

- (void)mapViewDidChooseMapAttribution:(id)a3 mapItem:(id)a4
{
  v7 = a3;
  v6 = [a4 _placeDataAsData];
  [(MABaseSnippetViewController *)self captureUserAction:6041 resultIndex:0xFFFFFFFFLL mapItemPlaceData:v6];

  [(MABaseSnippetViewController *)self openURL:v7 completion:0];
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v6 = [a4 lastObject];
  v5 = [(MAMapResultSnippetViewController *)self _mapSnippetView];
  [v5 updateMapZoom:-[MABaseSnippetViewController appearing](self withLocation:{"appearing") ^ 1, v6}];
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v7.receiver = self;
  v7.super_class = MAMapResultSnippetViewController;
  v4 = a3;
  [(MABaseSnippetViewController *)&v7 locationManagerDidChangeAuthorization:v4];
  v5 = [v4 authorizationStatus];

  if (v5 == 2)
  {
    v6 = [(MAMapResultSnippetViewController *)self _mapSnippetView];
    [v6 updateMapZoom:1 withLocation:0];
  }
}

- (double)desiredHeightForWidth:(double)a3
{
  v4 = [(MAMapResultSnippetViewController *)self _mapSnippetView];
  [v4 desiredHeightForWidth:a3];
  v6 = v5;

  return v6;
}

- (id)_loadMapSnippetView
{
  v3 = [(MABaseSnippetViewController *)self mapItemSnippet];
  v4 = [(MABaseSnippetViewController *)self selectedLocalSearchMapItem];
  v5 = [MAMapSnippetView alloc];
  v6 = [v3 userCurrentLocation];
  v7 = [v6 BOOLValue];
  v8 = [v3 regionOfInterestRadiusInMiles];
  v9 = [(MAMapSnippetView *)v5 initWithFrame:v4 mapItem:v7 itemRepresentsCurrentLocation:v8 regionOfInterest:self fallbackDistance:CGRectZero.origin.x reservationDelegate:CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height, self->_fallbackDistance];

  [(MAMapSnippetView *)v9 setDelegate:self];
  if ([v3 usesFixedLocation])
  {
    v10 = [v3 searchRegionCenter];
    v11 = [v10 clRepresentation];
    [(MAMapSnippetView *)v9 updateMapZoom:0 withLocation:v11];
  }

  return v9;
}

- (id)_mapSnippetView
{
  v3 = [(MAMapResultSnippetViewController *)self view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(MAMapResultSnippetViewController *)self view];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end