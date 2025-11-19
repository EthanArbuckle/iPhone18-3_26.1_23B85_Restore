@interface MABaseSnippetViewController
- (CLLocationManager)locManager;
- (MABaseSnippetViewController)initWithMapItemSnippet:(id)a3;
- (MABaseSnippetViewController)initWithSnippet:(id)a3;
- (SALocalSearchMapItem)selectedLocalSearchMapItem;
- (SALocalSearchMapItemSnippet)mapItemSnippet;
- (id)generateURLWithSession:(id)a3;
- (void)_updateTitleAndSubtitleWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)donateLocationForMapItem:(id)a3;
- (void)locationManagerDidChangeAuthorization:(id)a3;
- (void)makeReservationAtSelectedRestaurantForSelectedTimeIndex:(unint64_t)a3;
- (void)openURL:(id)a3 completion:(id)a4;
- (void)openURLWithDirectionsFromPlace:(id)a3 toPlace:(id)a4 transportType:(unint64_t)a5;
- (void)openURLWithMapItem:(id)a3;
- (void)openURLWithSnippetMapItemsAndSelectedMapItem;
- (void)setDelegate:(id)a3;
- (void)setSelectedMapItemIndex:(unint64_t)a3;
- (void)siriDidScrollVisible:(BOOL)a3;
@end

@implementation MABaseSnippetViewController

- (MABaseSnippetViewController)initWithSnippet:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MABaseSnippetViewController;
  v5 = [(MABaseSnippetViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MABaseSnippetViewController *)v5 setSnippet:v4];
    [(MABaseSnippetViewController *)v6 setDefaultViewInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    [(MABaseSnippetViewController *)v6 setLoading:1];
  }

  return v6;
}

- (MABaseSnippetViewController)initWithMapItemSnippet:(id)a3
{
  v4 = a3;
  v5 = [(MABaseSnippetViewController *)self initWithSnippet:v4];
  if (v5)
  {
    -[MABaseSnippetViewController setSelectedMapItemIndex:](v5, "setSelectedMapItemIndex:", [v4 selectedItemIndex]);
    [v4 setSelectedItemIndex:0x7FFFFFFFFFFFFFFFLL];
  }

  return v5;
}

- (void)dealloc
{
  [(CLLocationManager *)self->_locManager stopUpdatingLocation];
  [(CLLocationManager *)self->_locManager setDelegate:0];
  v3.receiver = self;
  v3.super_class = MABaseSnippetViewController;
  [(MABaseSnippetViewController *)&v3 dealloc];
}

- (void)setDelegate:(id)a3
{
  v9.receiver = self;
  v9.super_class = MABaseSnippetViewController;
  [(MABaseSnippetViewController *)&v9 setDelegate:?];
  if (a3)
  {
    if (!self->_hasEverStartedLoading)
    {
      self->_hasEverStartedLoading = 1;
      v5 = [(MABaseSnippetViewController *)self delegate];
      v6 = [v5 siriViewControllerEffectiveBundleForCoreLocation:self];

      v7 = +[MKLocationManager sharedLocationManager];
      [v7 setEffectiveBundle:v6];

      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_F598;
      v8[3] = &unk_42380;
      v8[4] = self;
      [(MABaseSnippetViewController *)self _updateTitleAndSubtitleWithCompletionHandler:v8];
    }
  }
}

- (CLLocationManager)locManager
{
  if (!self->_locManager)
  {
    v3 = [(MABaseSnippetViewController *)self mapItemSnippet];
    if ([v3 usesFixedLocation])
    {
      v4 = [(MABaseSnippetViewController *)self needsLocationManager];

      if (!v4)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    v5 = [(MABaseSnippetViewController *)self delegate];
    v6 = [v5 siriViewControllerEffectiveBundleForCoreLocation:self];

    v7 = [CLLocationManager alloc];
    v8 = [v6 bundlePath];
    v9 = [v7 initWithEffectiveBundlePath:v8 delegate:self onQueue:&_dispatch_main_q];
    locManager = self->_locManager;
    self->_locManager = v9;

    [(CLLocationManager *)self->_locManager setDesiredAccuracy:kCLLocationAccuracyHundredMeters];
    [(CLLocationManager *)self->_locManager setDistanceFilter:100.0];
  }

LABEL_7:
  v11 = self->_locManager;

  return v11;
}

- (SALocalSearchMapItemSnippet)mapItemSnippet
{
  v3 = [(MABaseSnippetViewController *)self snippet];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(MABaseSnippetViewController *)self snippet];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setSelectedMapItemIndex:(unint64_t)a3
{
  v5 = [(MABaseSnippetViewController *)self mapItemSnippet];
  v6 = [v5 items];
  v7 = [v6 count];

  if (v7 > a3)
  {
    self->_selectedMapItemIndex = a3;
  }
}

- (SALocalSearchMapItem)selectedLocalSearchMapItem
{
  v3 = [(MABaseSnippetViewController *)self mapItemSnippet];
  v4 = [v3 items];
  v5 = [v4 objectAtIndex:{-[MABaseSnippetViewController selectedMapItemIndex](self, "selectedMapItemIndex")}];

  return v5;
}

- (void)donateLocationForMapItem:(id)a3
{
  v4 = a3;
  if (([v4 isCurrentLocation] & 1) == 0 && (objc_msgSend(v4, "isParkingLocation") & 1) == 0)
  {
    v5 = [v4 donateActivityCommand];
    if (v5)
    {
      v6 = [(MABaseSnippetViewController *)self delegate];
      v8 = v5;
      v7 = [NSArray arrayWithObjects:&v8 count:1];
      [v6 siriViewController:self performAceCommands:v7];
    }
  }
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v6 = a3;
  v3 = [v6 authorizationStatus];
  if (v3 == 2)
  {
    [v6 stopUpdatingLocation];
    goto LABEL_6;
  }

  v4 = v3 == 3;
  v5 = v6;
  if (v4)
  {
    [v6 startUpdatingLocation];
LABEL_6:
    v5 = v6;
  }
}

- (void)siriDidScrollVisible:(BOOL)a3
{
  if (a3)
  {
    v3 = 7;
  }

  else
  {
    v3 = 8;
  }

  [(MABaseSnippetViewController *)self captureUserAction:v3];
}

- (void)makeReservationAtSelectedRestaurantForSelectedTimeIndex:(unint64_t)a3
{
  v5 = [(MABaseSnippetViewController *)self selectedLocalSearchMapItem];
  v6 = [v5 restaurantInfo];

  v7 = [v6 _ma_makeReservationPunchOutForSelectedOpeningIndex:a3];
  if (v7)
  {
    v8 = [(MABaseSnippetViewController *)self delegate];
    v10 = v7;
    v9 = [NSArray arrayWithObjects:&v10 count:1];
    [v8 siriViewController:self performAceCommands:v9];
  }
}

- (void)openURL:(id)a3 completion:(id)a4
{
  if (a3)
  {
    v5 = a3;
    v6 = [(MABaseSnippetViewController *)self delegate];
    [v6 siriViewController:self openURL:v5 completion:0];
  }
}

- (id)generateURLWithSession:(id)a3
{
  if (a3)
  {
    v4 = (*(a3 + 2))(a3, a2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)openURLWithMapItem:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_FC40;
    v7[3] = &unk_42510;
    v8 = v4;
    v6 = [(MABaseSnippetViewController *)self generateURLWithSession:v7];
    [(MABaseSnippetViewController *)self openURL:v6 completion:0];
  }
}

- (void)openURLWithSnippetMapItemsAndSelectedMapItem
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_FD84;
  v4[3] = &unk_42510;
  v4[4] = self;
  v3 = [(MABaseSnippetViewController *)self generateURLWithSession:v4];
  if (v3)
  {
    [(MABaseSnippetViewController *)self openURL:v3 completion:0];
  }
}

- (void)openURLWithDirectionsFromPlace:(id)a3 toPlace:(id)a4 transportType:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8 && v9)
  {
    v11 = MKLaunchOptionsDirectionsModeDriving;
    switch(a5)
    {
      case 2uLL:
        v12 = &MKLaunchOptionsDirectionsModeWalking;
        break;
      case 8uLL:
        v12 = &MKLaunchOptionsDirectionsModeCycling;
        break;
      case 4uLL:
        v12 = &MKLaunchOptionsDirectionsModeTransit;
        break;
      default:
LABEL_10:
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_FFDC;
        v16[3] = &unk_42538;
        v17 = v8;
        v18 = v10;
        v19 = v11;
        v14 = v11;
        v15 = [(MABaseSnippetViewController *)self generateURLWithSession:v16];
        [(MABaseSnippetViewController *)self openURL:v15 completion:0];

        goto LABEL_11;
    }

    v13 = *v12;

    v11 = v13;
    goto LABEL_10;
  }

LABEL_11:
}

- (void)_updateTitleAndSubtitleWithCompletionHandler:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3);
  }
}

@end