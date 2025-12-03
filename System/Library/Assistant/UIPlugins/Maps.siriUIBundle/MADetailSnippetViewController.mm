@interface MADetailSnippetViewController
- (MADetailSnippetViewController)initWithMapItemSnippet:(id)snippet;
- (_MKPlaceCardConforming)placeViewController;
- (double)desiredHeightForWidth:(double)width;
- (id)_placeViewControllerWithPlaceItem:(id)item;
- (void)_registerURLDelegate;
- (void)_unregisterURLDelegate;
- (void)_updateTitleAndSubtitleWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)openURL:(id)l bundleIdentifier:(id)identifier completionHandler:(id)handler;
- (void)openURL:(id)l completionHandler:(id)handler;
- (void)placeViewController:(id)controller didSelectParent:(id)parent;
- (void)placeViewController:(id)controller didSelectRouteToCurrentSearchResultWithMode:(unint64_t)mode;
- (void)placeViewController:(id)controller didSelectRouteToCurrentSearchResultWithTransportTypePreference:(id)preference;
- (void)placeViewController:(id)controller requestPasscodeUnlockWithCompletion:(id)completion;
- (void)placeViewControllerDidCloseFullscreenPhotos:(id)photos;
- (void)placeViewControllerDidOpenFullscreenPhotos:(id)photos;
- (void)placeViewControllerDidSelectShareLocation:(id)location;
- (void)placeViewControllerDidUpdateHeight:(id)height;
- (void)updatePlaceItem;
- (void)viewDidLoad;
@end

@implementation MADetailSnippetViewController

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  lastObject = [locations lastObject];
  placeViewController = self->_placeViewController;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = self->_placeViewController;
  if (isKindOfClass)
  {
    v8 = lastObject;
  }

  else
  {
    objc_opt_class();
    v9 = objc_opt_isKindOfClass();
    v8 = lastObject;
    if ((v9 & 1) == 0)
    {
      goto LABEL_6;
    }

    v7 = self->_placeViewController;
  }

  [(_MKPlaceCardConforming *)v7 setLocation:v8];
LABEL_6:

  _objc_release_x1();
}

- (MADetailSnippetViewController)initWithMapItemSnippet:(id)snippet
{
  v9.receiver = self;
  v9.super_class = MADetailSnippetViewController;
  v3 = [(MABaseSnippetViewController *)&v9 initWithMapItemSnippet:snippet];
  v4 = v3;
  if (v3)
  {
    selectedLocalSearchMapItem = [(MABaseSnippetViewController *)v3 selectedLocalSearchMapItem];
    v6 = selectedLocalSearchMapItem;
    if (selectedLocalSearchMapItem)
    {
      v10 = selectedLocalSearchMapItem;
      v7 = [NSArray arrayWithObjects:&v10 count:1];
      [(MADetailSnippetViewController *)v4 setRequestContext:v7];
    }
  }

  return v4;
}

- (_MKPlaceCardConforming)placeViewController
{
  placeViewController = self->_placeViewController;
  if (!placeViewController)
  {
    selectedLocalSearchMapItem = [(MABaseSnippetViewController *)self selectedLocalSearchMapItem];
    v5 = [MKMapItem mapItemWithLocalSearchMapItem:selectedLocalSearchMapItem reservationDelegate:self];

    v6 = [(MADetailSnippetViewController *)self _placeItemFromMapItem:v5 isIntermediate:1];
    placeItem = self->_placeItem;
    self->_placeItem = v6;

    v8 = [(MADetailSnippetViewController *)self _placeViewControllerWithPlaceItem:self->_placeItem];
    v9 = self->_placeViewController;
    self->_placeViewController = v8;

    placeViewController = self->_placeViewController;
  }

  return placeViewController;
}

- (void)_updateTitleAndSubtitleWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[NSBundle _ma_bundle];
  v5 = [v4 siriUILocalizedStringForKey:@"Details"];

  [(MADetailSnippetViewController *)self setNavigationTitle:v5];
  placeViewController = [(MADetailSnippetViewController *)self placeViewController];
  title = [placeViewController title];
  [(MADetailSnippetViewController *)self setTitle:title];

  v8 = handlerCopy;
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy);
    v8 = handlerCopy;
  }
}

- (void)viewDidLoad
{
  v38.receiver = self;
  v38.super_class = MADetailSnippetViewController;
  [(MADetailSnippetViewController *)&v38 viewDidLoad];
  placeViewController = [(MADetailSnippetViewController *)self placeViewController];
  view = [placeViewController view];

  view2 = [(MADetailSnippetViewController *)self view];
  [view2 bounds];
  [view setFrame:?];

  [view setPreservesSuperviewLayoutMargins:0];
  placeViewController2 = [(MADetailSnippetViewController *)self placeViewController];
  [placeViewController2 setIgnoresParentMargins:1];

  v7 = 16.0;
  if (objc_opt_respondsToSelector())
  {
    view3 = [(MADetailSnippetViewController *)self view];
    [UIViewController _horizontalContentMarginForView:view3];
    v7 = v9;
  }

  [view setLayoutMargins:{8.0, v7, 8.0, v7}];
  placeViewController3 = [(MADetailSnippetViewController *)self placeViewController];
  [placeViewController3 willMoveToParentViewController:self];

  placeViewController4 = [(MADetailSnippetViewController *)self placeViewController];
  [(MADetailSnippetViewController *)self addChildViewController:placeViewController4];

  placeViewController5 = [(MADetailSnippetViewController *)self placeViewController];
  [placeViewController5 didMoveToParentViewController:self];

  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  view4 = [(MADetailSnippetViewController *)self view];
  [view4 addSubview:view];

  view5 = [(MADetailSnippetViewController *)self view];
  [view5 _ma_updateSemanticContentAttribute];

  widthAnchor = [view widthAnchor];
  view6 = [(MADetailSnippetViewController *)self view];
  [view6 bounds];
  v17 = [widthAnchor constraintEqualToConstant:CGRectGetWidth(v40)];
  widthConstraint = self->_widthConstraint;
  self->_widthConstraint = v17;

  view7 = [(MADetailSnippetViewController *)self view];
  leftAnchor = [view7 leftAnchor];
  leftAnchor2 = [view leftAnchor];
  v34 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v39[0] = v34;
  view8 = [(MADetailSnippetViewController *)self view];
  rightAnchor = [view8 rightAnchor];
  rightAnchor2 = [view rightAnchor];
  v30 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v39[1] = v30;
  view9 = [(MADetailSnippetViewController *)self view];
  topAnchor = [view9 topAnchor];
  [view topAnchor];
  v21 = v29 = view;
  v22 = [topAnchor constraintEqualToAnchor:v21];
  v39[2] = v22;
  view10 = [(MADetailSnippetViewController *)self view];
  bottomAnchor = [view10 bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v27 = self->_widthConstraint;
  v39[3] = v26;
  v39[4] = v27;
  v28 = [NSArray arrayWithObjects:v39 count:5];
  [NSLayoutConstraint activateConstraints:v28];
}

- (void)_registerURLDelegate
{
  v3 = +[MKSystemController sharedInstance];
  [v3 setOpenURLDelegate:self];
}

- (void)_unregisterURLDelegate
{
  v3 = +[MKSystemController sharedInstance];
  openURLDelegate = [v3 openURLDelegate];

  if (openURLDelegate == self)
  {
    v5 = +[MKSystemController sharedInstance];
    [v5 setOpenURLDelegate:0];
  }
}

- (void)updatePlaceItem
{
  selectedLocalSearchMapItem = [(MABaseSnippetViewController *)self selectedLocalSearchMapItem];
  [(MABaseSnippetViewController *)self donateLocationForMapItem:selectedLocalSearchMapItem];

  if ([(_MKPlaceItem *)self->_placeItem isIntermediateMapItem])
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_B998;
    block[3] = &unk_42380;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)dealloc
{
  [(MADetailSnippetViewController *)self useModernPlacecard];
  [(_MKPlaceCardConforming *)self->_placeViewController setPlaceViewControllerDelegate:0];
  v3.receiver = self;
  v3.super_class = MADetailSnippetViewController;
  [(MABaseSnippetViewController *)&v3 dealloc];
}

- (void)placeViewControllerDidUpdateHeight:(id)height
{
  delegate = [(MADetailSnippetViewController *)self delegate];
  [delegate siriViewControllerHeightDidChange:self pinTopOfSnippet:1];
}

- (void)placeViewControllerDidSelectShareLocation:(id)location
{
  delegate = [(MADetailSnippetViewController *)self delegate];
  [delegate siriSnippetViewController:self setStatusViewHidden:1];
}

- (void)placeViewController:(id)controller didSelectRouteToCurrentSearchResultWithMode:(unint64_t)mode
{
  controllerCopy = controller;
  mapItemSnippet = [(MABaseSnippetViewController *)self mapItemSnippet];
  searchAlongRoute = [mapItemSnippet searchAlongRoute];

  if (searchAlongRoute)
  {
    [(MABaseSnippetViewController *)self openURLWithSnippetMapItemsAndSelectedMapItem];
  }

  else
  {
    v8 = +[MKMapItem mapItemForCurrentLocation];
    mapItem = [controllerCopy mapItem];
    [(MABaseSnippetViewController *)self openURLWithDirectionsFromPlace:v8 toPlace:mapItem transportType:mode];
  }
}

- (void)placeViewController:(id)controller didSelectRouteToCurrentSearchResultWithTransportTypePreference:(id)preference
{
  controllerCopy = controller;
  preferenceCopy = preference;
  mapItemSnippet = [(MABaseSnippetViewController *)self mapItemSnippet];
  searchAlongRoute = [mapItemSnippet searchAlongRoute];

  if (searchAlongRoute)
  {
    [(MABaseSnippetViewController *)self openURLWithSnippetMapItemsAndSelectedMapItem];
  }

  else
  {
    if (preferenceCopy)
    {
      v9 = [preferenceCopy intValue] - 1;
      if (v9 > 3)
      {
        v10 = 1;
      }

      else
      {
        v10 = qword_18890[v9];
      }
    }

    else
    {
      v10 = 0xFFFFFFFLL;
    }

    v11 = +[MKMapItem mapItemForCurrentLocation];
    mapItem = [controllerCopy mapItem];
    [(MABaseSnippetViewController *)self openURLWithDirectionsFromPlace:v11 toPlace:mapItem transportType:v10];
  }
}

- (void)placeViewController:(id)controller requestPasscodeUnlockWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    delegate = [(MADetailSnippetViewController *)self delegate];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_BE30;
    v7[3] = &unk_423D8;
    v8 = completionCopy;
    [delegate siriSnippetViewController:self requestPasscodeUnlockWithCompletion:v7];
  }
}

- (void)placeViewControllerDidOpenFullscreenPhotos:(id)photos
{
  delegate = [(MADetailSnippetViewController *)self delegate];
  [delegate siriSnippetViewController:self setStatusViewHidden:1];
}

- (void)placeViewControllerDidCloseFullscreenPhotos:(id)photos
{
  delegate = [(MADetailSnippetViewController *)self delegate];
  [delegate siriSnippetViewController:self setStatusViewHidden:0];
}

- (void)openURL:(id)l bundleIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  lCopy = l;
  v11 = objc_alloc_init(SAUIAppPunchOut);
  [v11 setAppAvailableInStorefront:1];
  [v11 setBundleId:identifierCopy];

  [v11 setPunchOutUri:lCopy];
  delegate = [(MADetailSnippetViewController *)self delegate];
  v14 = v11;
  v13 = [NSArray arrayWithObjects:&v14 count:1];
  [delegate siriViewController:self performAceCommands:v13];

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 1);
  }
}

- (void)openURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  delegate = [(MADetailSnippetViewController *)self delegate];
  [delegate siriViewController:self openURL:lCopy completion:handlerCopy];
}

- (double)desiredHeightForWidth:(double)width
{
  if (self->_desiredWidth != width)
  {
    if ([(MADetailSnippetViewController *)self useModernPlacecard])
    {
      self->_desiredWidth = width;
      [(NSLayoutConstraint *)self->_widthConstraint setConstant:width];
    }

    else
    {
      placeViewController = [(MADetailSnippetViewController *)self placeViewController];
      [placeViewController setWidthConstraintConstant:width];
    }
  }

  useModernPlacecard = [(MADetailSnippetViewController *)self useModernPlacecard];
  placeViewController2 = [(MADetailSnippetViewController *)self placeViewController];
  v8 = placeViewController2;
  if (useModernPlacecard)
  {
    [placeViewController2 _ma_heightForProposedWidth:width];
  }

  else
  {
    [placeViewController2 currentHeight];
  }

  v10 = v9;

  result = 300.0;
  if (v10 >= 300.0)
  {
    return v10;
  }

  return result;
}

- (id)_placeViewControllerWithPlaceItem:(id)item
{
  v4 = MKPlaceViewControllerOptionsContextDefault;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_C370;
  v11[3] = &unk_42428;
  v11[4] = self;
  v5 = objc_retainBlock(v11);
  if ([(MADetailSnippetViewController *)self useModernPlacecard])
  {
    v6 = objc_alloc_init(MUPlaceViewControllerConfiguration);
    [v6 setOptions:v4 | 0x2000A46];
    v7 = [[MUPlaceViewController alloc] initWithConfiguration:v6];
    [v7 setScrollEnabled:0];
    [v7 setMapsAppDelegate:self];
    [v7 setPlaceViewFeedbackDelegate:self];
    [v7 setPlaceViewControllerDelegate:self];
    [v7 setPlaceViewFeedbackAppLaunchHandler:v5];
    [MUInfoCardStyle setTintColorProvider:&stru_42468];
  }

  else
  {
    v7 = objc_alloc_init(_MKPlaceViewController);
    [v7 setShowTitleBar:0];
    [v7 setScrollEnabled:0];
    [v7 setPlaceViewControllerDelegate:self];
    [v7 setPlaceViewFeedbackDelegate:self];
    [v7 setPlaceViewFeedbackAppLaunchHandler:v5];
  }

  [v7 setOptions:v4 | 0x2000A46];
  [v7 setPlaceItem:self->_placeItem updateOriginalContact:0];
  v8 = +[UIColor clearColor];
  view = [v7 view];
  [view setBackgroundColor:v8];

  return v7;
}

- (void)placeViewController:(id)controller didSelectParent:(id)parent
{
  v5 = [MKMapItem urlForMapItem:parent options:0];
  [(MABaseSnippetViewController *)self openURL:v5 completion:0];
}

@end