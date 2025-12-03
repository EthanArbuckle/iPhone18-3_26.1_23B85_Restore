@interface MABaseSnippetViewController
- (CLLocationManager)locManager;
- (MABaseSnippetViewController)initWithMapItemSnippet:(id)snippet;
- (MABaseSnippetViewController)initWithSnippet:(id)snippet;
- (SALocalSearchMapItem)selectedLocalSearchMapItem;
- (SALocalSearchMapItemSnippet)mapItemSnippet;
- (id)generateURLWithSession:(id)session;
- (void)_updateTitleAndSubtitleWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)donateLocationForMapItem:(id)item;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
- (void)makeReservationAtSelectedRestaurantForSelectedTimeIndex:(unint64_t)index;
- (void)openURL:(id)l completion:(id)completion;
- (void)openURLWithDirectionsFromPlace:(id)place toPlace:(id)toPlace transportType:(unint64_t)type;
- (void)openURLWithMapItem:(id)item;
- (void)openURLWithSnippetMapItemsAndSelectedMapItem;
- (void)setDelegate:(id)delegate;
- (void)setSelectedMapItemIndex:(unint64_t)index;
- (void)siriDidScrollVisible:(BOOL)visible;
@end

@implementation MABaseSnippetViewController

- (MABaseSnippetViewController)initWithSnippet:(id)snippet
{
  snippetCopy = snippet;
  v8.receiver = self;
  v8.super_class = MABaseSnippetViewController;
  v5 = [(MABaseSnippetViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MABaseSnippetViewController *)v5 setSnippet:snippetCopy];
    [(MABaseSnippetViewController *)v6 setDefaultViewInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    [(MABaseSnippetViewController *)v6 setLoading:1];
  }

  return v6;
}

- (MABaseSnippetViewController)initWithMapItemSnippet:(id)snippet
{
  snippetCopy = snippet;
  v5 = [(MABaseSnippetViewController *)self initWithSnippet:snippetCopy];
  if (v5)
  {
    -[MABaseSnippetViewController setSelectedMapItemIndex:](v5, "setSelectedMapItemIndex:", [snippetCopy selectedItemIndex]);
    [snippetCopy setSelectedItemIndex:0x7FFFFFFFFFFFFFFFLL];
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

- (void)setDelegate:(id)delegate
{
  v9.receiver = self;
  v9.super_class = MABaseSnippetViewController;
  [(MABaseSnippetViewController *)&v9 setDelegate:?];
  if (delegate)
  {
    if (!self->_hasEverStartedLoading)
    {
      self->_hasEverStartedLoading = 1;
      delegate = [(MABaseSnippetViewController *)self delegate];
      v6 = [delegate siriViewControllerEffectiveBundleForCoreLocation:self];

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
    mapItemSnippet = [(MABaseSnippetViewController *)self mapItemSnippet];
    if ([mapItemSnippet usesFixedLocation])
    {
      needsLocationManager = [(MABaseSnippetViewController *)self needsLocationManager];

      if (!needsLocationManager)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

    delegate = [(MABaseSnippetViewController *)self delegate];
    v6 = [delegate siriViewControllerEffectiveBundleForCoreLocation:self];

    v7 = [CLLocationManager alloc];
    bundlePath = [v6 bundlePath];
    v9 = [v7 initWithEffectiveBundlePath:bundlePath delegate:self onQueue:&_dispatch_main_q];
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
  snippet = [(MABaseSnippetViewController *)self snippet];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    snippet2 = [(MABaseSnippetViewController *)self snippet];
  }

  else
  {
    snippet2 = 0;
  }

  return snippet2;
}

- (void)setSelectedMapItemIndex:(unint64_t)index
{
  mapItemSnippet = [(MABaseSnippetViewController *)self mapItemSnippet];
  items = [mapItemSnippet items];
  v7 = [items count];

  if (v7 > index)
  {
    self->_selectedMapItemIndex = index;
  }
}

- (SALocalSearchMapItem)selectedLocalSearchMapItem
{
  mapItemSnippet = [(MABaseSnippetViewController *)self mapItemSnippet];
  items = [mapItemSnippet items];
  v5 = [items objectAtIndex:{-[MABaseSnippetViewController selectedMapItemIndex](self, "selectedMapItemIndex")}];

  return v5;
}

- (void)donateLocationForMapItem:(id)item
{
  itemCopy = item;
  if (([itemCopy isCurrentLocation] & 1) == 0 && (objc_msgSend(itemCopy, "isParkingLocation") & 1) == 0)
  {
    donateActivityCommand = [itemCopy donateActivityCommand];
    if (donateActivityCommand)
    {
      delegate = [(MABaseSnippetViewController *)self delegate];
      v8 = donateActivityCommand;
      v7 = [NSArray arrayWithObjects:&v8 count:1];
      [delegate siriViewController:self performAceCommands:v7];
    }
  }
}

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  authorizationStatus = [authorizationCopy authorizationStatus];
  if (authorizationStatus == 2)
  {
    [authorizationCopy stopUpdatingLocation];
    goto LABEL_6;
  }

  v4 = authorizationStatus == 3;
  v5 = authorizationCopy;
  if (v4)
  {
    [authorizationCopy startUpdatingLocation];
LABEL_6:
    v5 = authorizationCopy;
  }
}

- (void)siriDidScrollVisible:(BOOL)visible
{
  if (visible)
  {
    v3 = 7;
  }

  else
  {
    v3 = 8;
  }

  [(MABaseSnippetViewController *)self captureUserAction:v3];
}

- (void)makeReservationAtSelectedRestaurantForSelectedTimeIndex:(unint64_t)index
{
  selectedLocalSearchMapItem = [(MABaseSnippetViewController *)self selectedLocalSearchMapItem];
  restaurantInfo = [selectedLocalSearchMapItem restaurantInfo];

  v7 = [restaurantInfo _ma_makeReservationPunchOutForSelectedOpeningIndex:index];
  if (v7)
  {
    delegate = [(MABaseSnippetViewController *)self delegate];
    v10 = v7;
    v9 = [NSArray arrayWithObjects:&v10 count:1];
    [delegate siriViewController:self performAceCommands:v9];
  }
}

- (void)openURL:(id)l completion:(id)completion
{
  if (l)
  {
    lCopy = l;
    delegate = [(MABaseSnippetViewController *)self delegate];
    [delegate siriViewController:self openURL:lCopy completion:0];
  }
}

- (id)generateURLWithSession:(id)session
{
  if (session)
  {
    v4 = (*(session + 2))(session, a2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)openURLWithMapItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy;
  if (itemCopy)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_FC40;
    v7[3] = &unk_42510;
    v8 = itemCopy;
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

- (void)openURLWithDirectionsFromPlace:(id)place toPlace:(id)toPlace transportType:(unint64_t)type
{
  placeCopy = place;
  toPlaceCopy = toPlace;
  v10 = toPlaceCopy;
  if (placeCopy && toPlaceCopy)
  {
    v11 = MKLaunchOptionsDirectionsModeDriving;
    switch(type)
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
        v17 = placeCopy;
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

- (void)_updateTitleAndSubtitleWithCompletionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler);
  }
}

@end