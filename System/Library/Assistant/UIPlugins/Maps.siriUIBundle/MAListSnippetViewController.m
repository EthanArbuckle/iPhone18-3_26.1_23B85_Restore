@interface MAListSnippetViewController
- (double)desiredHeightForWidth:(double)a3;
- (id)_headerLocationForSearchCenter:(id)a3 location:(CLLocationCoordinate2D)a4 forMapItem:(id)a5;
- (id)_listSnippetView;
- (id)_nearCityString:(id)a3;
- (id)_titleForList:(id)a3;
- (void)_updateTitleAndSubtitleWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)listView:(id)a3 didChooseMapItem:(id)a4 accessoryButtonTapped:(BOOL)a5;
- (void)loadView;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
@end

@implementation MAListSnippetViewController

- (void)dealloc
{
  if ([(MAListSnippetViewController *)self isViewLoaded])
  {
    v3 = [(MAListSnippetViewController *)self _listSnippetView];
    [v3 setDelegate:0];
  }

  v4.receiver = self;
  v4.super_class = MAListSnippetViewController;
  [(MABaseSnippetViewController *)&v4 dealloc];
}

- (id)_titleForList:(id)a3
{
  v3 = +[NSNumberFormatter _ma_localizedStringFromInteger:](NSNumberFormatter, "_ma_localizedStringFromInteger:", [a3 count]);
  v4 = +[NSBundle _ma_bundle];
  v5 = [v4 siriUILocalizedStringForKey:@"%@ Results"];

  v6 = [NSString stringWithFormat:v5, v3];

  return v6;
}

- (id)_nearCityString:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = +[NSBundle _ma_bundle];
    v5 = [v4 siriUILocalizedStringForKey:@"Near %@"];

    v6 = [NSString stringWithFormat:v5, v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_headerLocationForSearchCenter:(id)a3 location:(CLLocationCoordinate2D)a4 forMapItem:(id)a5
{
  v7 = a5;
  v8 = [a3 city];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = [v7 location];
    v10 = [v11 city];
  }

  if (a3)
  {
    goto LABEL_7;
  }

  v12 = [v7 location];
  v13 = [v12 latitude];
  [v13 doubleValue];
  v15 = v14;
  v16 = [v7 location];
  v17 = [v16 longitude];
  [v17 doubleValue];
  v19 = CLLocationCoordinate2DMake(v15, v18);
  v24 = v19;

  CLLocationCoordinate2DGetDistanceFrom();
  if (v20 >= 5000.0)
  {
LABEL_7:
    v22 = [(MAListSnippetViewController *)self _nearCityString:v10, v24, *&a4.latitude, *&a4.longitude];
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
  v3 = [(MABaseSnippetViewController *)self mapItemSnippet];
  v4 = [v3 items];

  v5 = [[MAListSnippetView alloc] initWithFrame:v4 mapItems:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v6 = [(MABaseSnippetViewController *)self mapItemSnippet];
  -[MAListSnippetView setDisplayForSAR:](v5, "setDisplayForSAR:", [v6 searchAlongRoute]);

  v7 = [(MABaseSnippetViewController *)self mapItemSnippet];
  -[MAListSnippetView setShouldDisplayLocationDetail:](v5, "setShouldDisplayLocationDetail:", [v7 chainResultSet]);

  [(MAListSnippetView *)v5 setDelegate:self];
  [(MAListSnippetView *)v5 _ma_updateSemanticContentAttribute];
  [(MAListSnippetView *)v5 _mapkit_setNeedsLayout];
  [(MAListSnippetViewController *)self setView:v5];
}

- (void)_updateTitleAndSubtitleWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(MABaseSnippetViewController *)self mapItemSnippet];
  v6 = [v5 items];
  v7 = [(MAListSnippetViewController *)self _titleForList:v6];
  [(MAListSnippetViewController *)self setTitle:v7];

  v8 = +[MKLocationManager sharedLocationManager];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_53E0;
  v12[3] = &unk_2C6B0;
  v12[4] = self;
  v13 = v5;
  v14 = v4;
  v9 = v4;
  v10 = v5;
  v11 = [v8 singleLocationUpdateWithDesiredAccuracy:v12 handler:kCLLocationAccuracyHundredMeters timeout:1.0];
  [v11 start];
}

- (void)listView:(id)a3 didChooseMapItem:(id)a4 accessoryButtonTapped:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = [a3 mapItems];
  v10 = [v9 indexOfObject:v8];

  if (v5)
  {
    v11 = [(MABaseSnippetViewController *)self mapItemSnippet];
    v12 = [v11 searchAlongRoute];
  }

  else
  {
    v12 = 0;
  }

  v13 = [MKMapItem mapItemWithLocalSearchMapItem:v8];
  v14 = [GEOPlaceActionDetails actionDetailsWithMapItem:v13 timestamp:v10 resultIndex:0.0];

  if (v12)
  {
    v15 = 3001;
  }

  else
  {
    v15 = 2007;
  }

  v16 = [v8 placeData2];
  [(MABaseSnippetViewController *)self captureUserAction:v15 details:v14 resultIndex:v10 mapItemPlaceData:v16];

  v17 = [(MAListSnippetViewController *)self delegate];
  v18 = [v8 commands];
  [v17 siriViewController:self performAceCommands:v18];

  if (v12)
  {
    [(MABaseSnippetViewController *)self setSelectedMapItemIndex:v10];
    [(MABaseSnippetViewController *)self openURLWithSnippetMapItemsAndSelectedMapItem];
  }

  else
  {
    v19 = [(MABaseSnippetViewController *)self mapItemSnippet];
    [v19 setSelectedItemIndex:v10];
    v20 = [(MAListSnippetViewController *)self delegate];
    v22 = v19;
    v21 = [NSArray arrayWithObjects:&v22 count:1];
    [v20 siriSnippetViewController:self pushSirilandSnippets:v21];
  }
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v6 = [a4 lastObject];
  v5 = [(MAListSnippetViewController *)self _listSnippetView];
  [v5 setUserLocation:v6];
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v7.receiver = self;
  v7.super_class = MAListSnippetViewController;
  v4 = a3;
  [(MABaseSnippetViewController *)&v7 locationManagerDidChangeAuthorization:v4];
  v5 = [v4 authorizationStatus];

  if (v5 == 2)
  {
    v6 = [(MAListSnippetViewController *)self _listSnippetView];
    [v6 setUserLocation:0];
  }
}

- (double)desiredHeightForWidth:(double)a3
{
  v3 = [(MAListSnippetViewController *)self _listSnippetView];
  [v3 desiredHeight];
  v5 = v4;

  return v5;
}

- (id)_listSnippetView
{
  v3 = [(MAListSnippetViewController *)self view];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(MAListSnippetViewController *)self view];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end