@interface MADetailSnippetViewController
- (MADetailSnippetViewController)initWithMapItemSnippet:(id)a3;
- (_MKPlaceCardConforming)placeViewController;
- (double)desiredHeightForWidth:(double)a3;
- (id)_placeViewControllerWithPlaceItem:(id)a3;
- (void)_registerURLDelegate;
- (void)_unregisterURLDelegate;
- (void)_updateTitleAndSubtitleWithCompletionHandler:(id)a3;
- (void)dealloc;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
- (void)openURL:(id)a3 bundleIdentifier:(id)a4 completionHandler:(id)a5;
- (void)openURL:(id)a3 completionHandler:(id)a4;
- (void)placeViewController:(id)a3 didSelectParent:(id)a4;
- (void)placeViewController:(id)a3 didSelectRouteToCurrentSearchResultWithMode:(unint64_t)a4;
- (void)placeViewController:(id)a3 didSelectRouteToCurrentSearchResultWithTransportTypePreference:(id)a4;
- (void)placeViewController:(id)a3 requestPasscodeUnlockWithCompletion:(id)a4;
- (void)placeViewControllerDidCloseFullscreenPhotos:(id)a3;
- (void)placeViewControllerDidOpenFullscreenPhotos:(id)a3;
- (void)placeViewControllerDidSelectShareLocation:(id)a3;
- (void)placeViewControllerDidUpdateHeight:(id)a3;
- (void)updatePlaceItem;
- (void)viewDidLoad;
@end

@implementation MADetailSnippetViewController

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v10 = [a4 lastObject];
  placeViewController = self->_placeViewController;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = self->_placeViewController;
  if (isKindOfClass)
  {
    v8 = v10;
  }

  else
  {
    objc_opt_class();
    v9 = objc_opt_isKindOfClass();
    v8 = v10;
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

- (MADetailSnippetViewController)initWithMapItemSnippet:(id)a3
{
  v9.receiver = self;
  v9.super_class = MADetailSnippetViewController;
  v3 = [(MABaseSnippetViewController *)&v9 initWithMapItemSnippet:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(MABaseSnippetViewController *)v3 selectedLocalSearchMapItem];
    v6 = v5;
    if (v5)
    {
      v10 = v5;
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
    v4 = [(MABaseSnippetViewController *)self selectedLocalSearchMapItem];
    v5 = [MKMapItem mapItemWithLocalSearchMapItem:v4 reservationDelegate:self];

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

- (void)_updateTitleAndSubtitleWithCompletionHandler:(id)a3
{
  v9 = a3;
  v4 = +[NSBundle _ma_bundle];
  v5 = [v4 siriUILocalizedStringForKey:@"Details"];

  [(MADetailSnippetViewController *)self setNavigationTitle:v5];
  v6 = [(MADetailSnippetViewController *)self placeViewController];
  v7 = [v6 title];
  [(MADetailSnippetViewController *)self setTitle:v7];

  v8 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9);
    v8 = v9;
  }
}

- (void)viewDidLoad
{
  v38.receiver = self;
  v38.super_class = MADetailSnippetViewController;
  [(MADetailSnippetViewController *)&v38 viewDidLoad];
  v3 = [(MADetailSnippetViewController *)self placeViewController];
  v4 = [v3 view];

  v5 = [(MADetailSnippetViewController *)self view];
  [v5 bounds];
  [v4 setFrame:?];

  [v4 setPreservesSuperviewLayoutMargins:0];
  v6 = [(MADetailSnippetViewController *)self placeViewController];
  [v6 setIgnoresParentMargins:1];

  v7 = 16.0;
  if (objc_opt_respondsToSelector())
  {
    v8 = [(MADetailSnippetViewController *)self view];
    [UIViewController _horizontalContentMarginForView:v8];
    v7 = v9;
  }

  [v4 setLayoutMargins:{8.0, v7, 8.0, v7}];
  v10 = [(MADetailSnippetViewController *)self placeViewController];
  [v10 willMoveToParentViewController:self];

  v11 = [(MADetailSnippetViewController *)self placeViewController];
  [(MADetailSnippetViewController *)self addChildViewController:v11];

  v12 = [(MADetailSnippetViewController *)self placeViewController];
  [v12 didMoveToParentViewController:self];

  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [(MADetailSnippetViewController *)self view];
  [v13 addSubview:v4];

  v14 = [(MADetailSnippetViewController *)self view];
  [v14 _ma_updateSemanticContentAttribute];

  v15 = [v4 widthAnchor];
  v16 = [(MADetailSnippetViewController *)self view];
  [v16 bounds];
  v17 = [v15 constraintEqualToConstant:CGRectGetWidth(v40)];
  widthConstraint = self->_widthConstraint;
  self->_widthConstraint = v17;

  v37 = [(MADetailSnippetViewController *)self view];
  v36 = [v37 leftAnchor];
  v35 = [v4 leftAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v39[0] = v34;
  v33 = [(MADetailSnippetViewController *)self view];
  v32 = [v33 rightAnchor];
  v31 = [v4 rightAnchor];
  v30 = [v32 constraintEqualToAnchor:v31];
  v39[1] = v30;
  v19 = [(MADetailSnippetViewController *)self view];
  v20 = [v19 topAnchor];
  [v4 topAnchor];
  v21 = v29 = v4;
  v22 = [v20 constraintEqualToAnchor:v21];
  v39[2] = v22;
  v23 = [(MADetailSnippetViewController *)self view];
  v24 = [v23 bottomAnchor];
  v25 = [v4 bottomAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];
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
  v4 = [v3 openURLDelegate];

  if (v4 == self)
  {
    v5 = +[MKSystemController sharedInstance];
    [v5 setOpenURLDelegate:0];
  }
}

- (void)updatePlaceItem
{
  v3 = [(MABaseSnippetViewController *)self selectedLocalSearchMapItem];
  [(MABaseSnippetViewController *)self donateLocationForMapItem:v3];

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

- (void)placeViewControllerDidUpdateHeight:(id)a3
{
  v4 = [(MADetailSnippetViewController *)self delegate];
  [v4 siriViewControllerHeightDidChange:self pinTopOfSnippet:1];
}

- (void)placeViewControllerDidSelectShareLocation:(id)a3
{
  v4 = [(MADetailSnippetViewController *)self delegate];
  [v4 siriSnippetViewController:self setStatusViewHidden:1];
}

- (void)placeViewController:(id)a3 didSelectRouteToCurrentSearchResultWithMode:(unint64_t)a4
{
  v10 = a3;
  v6 = [(MABaseSnippetViewController *)self mapItemSnippet];
  v7 = [v6 searchAlongRoute];

  if (v7)
  {
    [(MABaseSnippetViewController *)self openURLWithSnippetMapItemsAndSelectedMapItem];
  }

  else
  {
    v8 = +[MKMapItem mapItemForCurrentLocation];
    v9 = [v10 mapItem];
    [(MABaseSnippetViewController *)self openURLWithDirectionsFromPlace:v8 toPlace:v9 transportType:a4];
  }
}

- (void)placeViewController:(id)a3 didSelectRouteToCurrentSearchResultWithTransportTypePreference:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(MABaseSnippetViewController *)self mapItemSnippet];
  v8 = [v7 searchAlongRoute];

  if (v8)
  {
    [(MABaseSnippetViewController *)self openURLWithSnippetMapItemsAndSelectedMapItem];
  }

  else
  {
    if (v6)
    {
      v9 = [v6 intValue] - 1;
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
    v12 = [v13 mapItem];
    [(MABaseSnippetViewController *)self openURLWithDirectionsFromPlace:v11 toPlace:v12 transportType:v10];
  }
}

- (void)placeViewController:(id)a3 requestPasscodeUnlockWithCompletion:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v6 = [(MADetailSnippetViewController *)self delegate];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_BE30;
    v7[3] = &unk_423D8;
    v8 = v5;
    [v6 siriSnippetViewController:self requestPasscodeUnlockWithCompletion:v7];
  }
}

- (void)placeViewControllerDidOpenFullscreenPhotos:(id)a3
{
  v4 = [(MADetailSnippetViewController *)self delegate];
  [v4 siriSnippetViewController:self setStatusViewHidden:1];
}

- (void)placeViewControllerDidCloseFullscreenPhotos:(id)a3
{
  v4 = [(MADetailSnippetViewController *)self delegate];
  [v4 siriSnippetViewController:self setStatusViewHidden:0];
}

- (void)openURL:(id)a3 bundleIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(SAUIAppPunchOut);
  [v11 setAppAvailableInStorefront:1];
  [v11 setBundleId:v9];

  [v11 setPunchOutUri:v10];
  v12 = [(MADetailSnippetViewController *)self delegate];
  v14 = v11;
  v13 = [NSArray arrayWithObjects:&v14 count:1];
  [v12 siriViewController:self performAceCommands:v13];

  if (v8)
  {
    v8[2](v8, 1);
  }
}

- (void)openURL:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MADetailSnippetViewController *)self delegate];
  [v8 siriViewController:self openURL:v7 completion:v6];
}

- (double)desiredHeightForWidth:(double)a3
{
  if (self->_desiredWidth != a3)
  {
    if ([(MADetailSnippetViewController *)self useModernPlacecard])
    {
      self->_desiredWidth = a3;
      [(NSLayoutConstraint *)self->_widthConstraint setConstant:a3];
    }

    else
    {
      v5 = [(MADetailSnippetViewController *)self placeViewController];
      [v5 setWidthConstraintConstant:a3];
    }
  }

  v6 = [(MADetailSnippetViewController *)self useModernPlacecard];
  v7 = [(MADetailSnippetViewController *)self placeViewController];
  v8 = v7;
  if (v6)
  {
    [v7 _ma_heightForProposedWidth:a3];
  }

  else
  {
    [v7 currentHeight];
  }

  v10 = v9;

  result = 300.0;
  if (v10 >= 300.0)
  {
    return v10;
  }

  return result;
}

- (id)_placeViewControllerWithPlaceItem:(id)a3
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
  v9 = [v7 view];
  [v9 setBackgroundColor:v8];

  return v7;
}

- (void)placeViewController:(id)a3 didSelectParent:(id)a4
{
  v5 = [MKMapItem urlForMapItem:a4 options:0];
  [(MABaseSnippetViewController *)self openURL:v5 completion:0];
}

@end