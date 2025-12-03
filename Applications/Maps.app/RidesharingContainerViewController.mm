@interface RidesharingContainerViewController
- (ButtonsContainerViewController)recenterButtonContainer;
- (CGPoint)mapView:(id)view focusPointForPoint:(CGPoint)point gesture:(int64_t)gesture;
- (RidesharingConfirmedRideViewController)confirmedRideViewController;
- (RidesharingDetailsPickingViewController)detailsPickingViewController;
- (id)_topBannerViewHorizontalConstraints;
- (void)_moveMapToNewStartWaypointIfNeededAnimated:(BOOL)animated;
- (void)_moveToCenterCoordinate:(CLLocationCoordinate2D)coordinate;
- (void)_recenterTapped:(id)tapped;
- (void)_setupRecenterButton;
- (void)_updateETACalloutFromDetailsPickingProviderAndMapMoving;
- (void)_updateForShowingDetailsPickingAnimated:(BOOL)animated;
- (void)contentHeightUpdatedWithValue:(double)value;
- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated;
- (void)mapView:(id)view willStartRespondingToGesture:(int64_t)gesture animated:(BOOL)animated;
- (void)requestRideStatusDidChange:(id)change;
- (void)setNeedsUpdateForShowingDetailsPickingAnimated;
- (void)updateForDismissingDetailsPickingAnimated:(BOOL)animated;
- (void)updateTopBannerViewWithTopBannerItems:(id)items;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation RidesharingContainerViewController

- (RidesharingConfirmedRideViewController)confirmedRideViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_confirmedRideViewController);

  return WeakRetained;
}

- (RidesharingDetailsPickingViewController)detailsPickingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_detailsPickingViewController);

  return WeakRetained;
}

- (CGPoint)mapView:(id)view focusPointForPoint:(CGPoint)point gesture:(int64_t)gesture
{
  if (gesture == 1)
  {
    viewCopy = view;
    [viewCopy centerCoordinate];
    [viewCopy convertCoordinate:viewCopy toPointToView:?];
    x = v6;
    y = v8;
  }

  else
  {
    y = point.y;
    x = point.x;
  }

  v10 = x;
  v11 = y;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)mapView:(id)view willStartRespondingToGesture:(int64_t)gesture animated:(BOOL)animated
{
  viewCopy = view;
  v11 = viewCopy;
  if (self->_requestingRide || gesture == 1)
  {
    [viewCopy setScrollEnabled:0];
  }

  else
  {
    self->_isUserInitiatedMapChange = 1;
    currentViewController = [(ContainerViewController *)self currentViewController];
    detailsPickingViewController = [(RidesharingContainerViewController *)self detailsPickingViewController];
    v10 = [currentViewController isEqual:detailsPickingViewController];

    if (v10)
    {
      [(RidesharingContainerViewController *)self _updateETACalloutFromDetailsPickingProviderAndMapMoving];
    }
  }
}

- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated
{
  viewCopy = view;
  [viewCopy setScrollEnabled:1];
  currentViewController = [(ContainerViewController *)self currentViewController];
  detailsPickingViewController = [(RidesharingContainerViewController *)self detailsPickingViewController];
  if ([currentViewController isEqual:detailsPickingViewController])
  {
    isUserInitiatedMapChange = self->_isUserInitiatedMapChange;

    if (!isUserInitiatedMapChange)
    {
      goto LABEL_6;
    }

    [(MKMarkerAnnotationView *)self->_ETACalloutView center];
    v9 = v8;
    v11 = v10;
    superview = [(MKMarkerAnnotationView *)self->_ETACalloutView superview];
    [viewCopy convertPoint:superview toCoordinateFromView:{v9, v11}];
    v14 = v13;
    v16 = v15;

    currentViewController = [(RidesharingContainerViewController *)self requestRideOptionProxy];
    [currentViewController updateStartingWaypointCoordinate:{v14, v16}];
  }

  else
  {
  }

LABEL_6:
  if (self->_loadedFirstRequestRide)
  {
    [(RidesharingContainerViewController *)self _updateETACalloutFromDetailsPickingProviderAndMapMoving];
  }

  self->_isUserInitiatedMapChange = 0;
}

- (id)_topBannerViewHorizontalConstraints
{
  topBannerView = [(OverlayContainerViewController *)self topBannerView];
  leadingAnchor = [topBannerView leadingAnchor];
  overlayView = [(OverlayContainerViewController *)self overlayView];
  leadingAnchor2 = [overlayView leadingAnchor];
  v5 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:sub_100019A44()];
  v16[0] = v5;
  topBannerView2 = [(OverlayContainerViewController *)self topBannerView];
  trailingAnchor = [topBannerView2 trailingAnchor];
  recenterButtonContainer = [(RidesharingContainerViewController *)self recenterButtonContainer];
  view = [recenterButtonContainer view];
  leadingAnchor3 = [view leadingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3 constant:-sub_100019A44()];
  v16[1] = v11;
  v12 = [NSArray arrayWithObjects:v16 count:2];

  return v12;
}

- (void)_setupRecenterButton
{
  recenterButtonContainer = [(RidesharingContainerViewController *)self recenterButtonContainer];
  view = [recenterButtonContainer view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  recenterButtonContainer2 = [(RidesharingContainerViewController *)self recenterButtonContainer];
  [(ContainerViewController *)self addChildViewController:recenterButtonContainer2];

  overlayView = [(OverlayContainerViewController *)self overlayView];
  recenterButtonContainer3 = [(RidesharingContainerViewController *)self recenterButtonContainer];
  view2 = [recenterButtonContainer3 view];
  [overlayView addSubview:view2];

  recenterButtonContainer4 = [(RidesharingContainerViewController *)self recenterButtonContainer];
  view3 = [recenterButtonContainer4 view];
  trailingAnchor = [view3 trailingAnchor];
  innerLayoutGuide = [(OverlayContainerViewController *)self innerLayoutGuide];
  trailingAnchor2 = [innerLayoutGuide trailingAnchor];
  v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v25[0] = v10;
  recenterButtonContainer5 = [(RidesharingContainerViewController *)self recenterButtonContainer];
  view4 = [recenterButtonContainer5 view];
  topAnchor = [view4 topAnchor];
  innerLayoutGuide2 = [(OverlayContainerViewController *)self innerLayoutGuide];
  topAnchor2 = [innerLayoutGuide2 topAnchor];
  v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v25[1] = v16;
  v17 = [NSArray arrayWithObjects:v25 count:2];
  [NSLayoutConstraint activateConstraints:v17];

  recenterButtonContainer6 = [(RidesharingContainerViewController *)self recenterButtonContainer];
  [recenterButtonContainer6 didMoveToParentViewController:self];

  recenterButtonContainer7 = [(RidesharingContainerViewController *)self recenterButtonContainer];
  view5 = [recenterButtonContainer7 view];
  [view5 layoutIfNeeded];
}

- (void)_recenterTapped:(id)tapped
{
  chromeViewController = [(ContainerViewController *)self chromeViewController];
  mapView = [chromeViewController mapView];

  userLocation = [mapView userLocation];
  [userLocation coordinate];
  v7 = v6;
  v9 = v8;

  v16.latitude = v7;
  v16.longitude = v9;
  if (CLLocationCoordinate2DIsValid(v16))
  {
    currentViewController = [(ContainerViewController *)self currentViewController];
    detailsPickingViewController = [(RidesharingContainerViewController *)self detailsPickingViewController];
    v12 = [currentViewController isEqual:detailsPickingViewController];

    if (v12)
    {
      requestRideOptionProxy = [(RidesharingContainerViewController *)self requestRideOptionProxy];
      [requestRideOptionProxy updateStartingWaypointCoordinate:{v7, v9}];
    }

    [(RidesharingContainerViewController *)self _moveToCenterCoordinate:v7, v9];
  }
}

- (ButtonsContainerViewController)recenterButtonContainer
{
  recenterButtonContainer = self->_recenterButtonContainer;
  if (!recenterButtonContainer)
  {
    v4 = [MapsThemeButton buttonWithType:0];
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"Recenter" value:@"localized string not found" table:0];
    [v4 setAccessibilityLabel:v6];

    [v4 addTarget:self action:"_recenterTapped:" forControlEvents:64];
    v7 = +[MapsTheme locationImage];
    [v4 setImage:v7 forState:0];

    v8 = [[FloatingButtonItem alloc] initWithButton:v4 option:1];
    v9 = [ButtonsContainerViewController alloc];
    v15 = v8;
    v10 = [NSArray arrayWithObjects:&v15 count:1];
    v11 = [(ButtonsContainerViewController *)v9 initWithFloatingButtonItems:v10];
    v12 = self->_recenterButtonContainer;
    self->_recenterButtonContainer = v11;

    blurGroupName = [(ContainerViewController *)self blurGroupName];
    [(ButtonsContainerViewController *)self->_recenterButtonContainer setBlurGroupName:blurGroupName];

    recenterButtonContainer = self->_recenterButtonContainer;
  }

  return recenterButtonContainer;
}

- (void)_moveToCenterCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/RidesharingContainerViewController.m");
    v8 = [[NSString alloc] initWithFormat:@"Centering map to coordinate (%f, %f)", *&latitude, *&longitude];
    *buf = 136315394;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  chromeViewController = [(ContainerViewController *)self chromeViewController];
  mapView = [chromeViewController mapView];
  [mapView setCenterCoordinate:1 animated:{latitude, longitude}];
}

- (void)_moveMapToNewStartWaypointIfNeededAnimated:(BOOL)animated
{
  if (!self->_isUserInitiatedMapChange)
  {
    animatedCopy = animated;
    requestRideStatus = [(RidesharingContainerViewController *)self requestRideStatus];
    chromeViewController = [(ContainerViewController *)self chromeViewController];
    mapView = [chromeViewController mapView];
    [requestRideStatus startWaypointCoordinate];
    [mapView setCenterCoordinate:animatedCopy animated:?];
  }
}

- (void)_updateETACalloutFromDetailsPickingProviderAndMapMoving
{
  currentViewController = [(ContainerViewController *)self currentViewController];
  [currentViewController heightForLayout:2];
  v5 = v4;

  currentViewController2 = [(ContainerViewController *)self currentViewController];
  [currentViewController2 heightForLayout:3];
  v8 = v7;

  chromeViewController = [(ContainerViewController *)self chromeViewController];
  mapView = [chromeViewController mapView];
  [mapView _edgeInsets];
  v12 = v11;

  containerStyle = [(ContainerViewController *)self containerStyle];
  v14 = v8 + v5;
  if (((1 << containerStyle) & 0xA3) == 0)
  {
    v14 = v8;
  }

  if (containerStyle > 7)
  {
    v14 = v8;
  }

  v15 = (v12 - v14) * 0.5;
  ETACalloutView = self->_ETACalloutView;
  if (ETACalloutView)
  {
    superview = [(MKMarkerAnnotationView *)ETACalloutView superview];
    if (superview)
    {
    }

    else
    {
      chromeViewController2 = [(ContainerViewController *)self chromeViewController];
      mapView2 = [chromeViewController2 mapView];

      if (mapView2)
      {
        view = [(RidesharingContainerViewController *)self view];
        v21 = self->_ETACalloutView;
        overlayView = [(OverlayContainerViewController *)self overlayView];
        [view insertSubview:v21 belowSubview:overlayView];

        [(MKMarkerAnnotationView *)self->_ETACalloutView setTranslatesAutoresizingMaskIntoConstraints:0];
        centerXAnchor = [(MKMarkerAnnotationView *)self->_ETACalloutView centerXAnchor];
        chromeViewController3 = [(ContainerViewController *)self chromeViewController];
        mapView3 = [chromeViewController3 mapView];
        _edgeInsetsLayoutGuide = [mapView3 _edgeInsetsLayoutGuide];
        centerXAnchor2 = [_edgeInsetsLayoutGuide centerXAnchor];
        v28 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];

        selectedContentView = [(MKMarkerAnnotationView *)self->_ETACalloutView selectedContentView];
        bottomAnchor = [selectedContentView bottomAnchor];
        view2 = [(RidesharingContainerViewController *)self view];
        bottomAnchor2 = [view2 bottomAnchor];
        v33 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v15];
        ETACalloutVerticalConstraint = self->_ETACalloutVerticalConstraint;
        self->_ETACalloutVerticalConstraint = v33;

        v35 = self->_ETACalloutVerticalConstraint;
        v50[0] = v28;
        v50[1] = v35;
        v36 = [NSArray arrayWithObjects:v50 count:2];
        [NSLayoutConstraint activateConstraints:v36];
      }
    }
  }

  [(NSLayoutConstraint *)self->_ETACalloutVerticalConstraint setConstant:v15];
  requestRideStatus = [(RidesharingContainerViewController *)self requestRideStatus];
  etaMinutesAtStartWaypoint = [requestRideStatus etaMinutesAtStartWaypoint];
  loadingRequest = [requestRideStatus loadingRequest];
  v40 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
  {
    v41 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/RidesharingContainerViewController.m");
    v42 = [[NSString alloc] initWithFormat:@"Updating ETA callout with minutes: %@, loading?:%d", etaMinutesAtStartWaypoint, loadingRequest];
    *buf = 136315394;
    v47 = v41;
    v48 = 2112;
    v49 = v42;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  if (loadingRequest)
  {
    ETAView = self->_ETAView;
    v44 = 0;
    v45 = 2;
LABEL_18:
    [(RidesharingBalloonETAView *)ETAView setMinutes:v44 withState:v45];
    goto LABEL_19;
  }

  if (self->_isUserInitiatedMapChange)
  {
    ETAView = self->_ETAView;
    v44 = 0;
    v45 = 1;
    goto LABEL_18;
  }

  if (etaMinutesAtStartWaypoint)
  {
    ETAView = self->_ETAView;
    v44 = etaMinutesAtStartWaypoint;
    v45 = 0;
    goto LABEL_18;
  }

LABEL_19:
}

- (void)requestRideStatusDidChange:(id)change
{
  changeCopy = change;
  v6 = changeCopy;
  if (changeCopy && ![changeCopy requestRideStatusError] && !self->_isUserInitiatedMapChange)
  {
    objc_storeStrong(&self->_requestRideStatus, change);
    [(RideBookingRequestRideStatus *)self->_requestRideStatus startWaypointCoordinate];
    objc_initWeak(&location, self);
    if (self->_loadedFirstRequestRide)
    {
      [(RidesharingContainerViewController *)self _updateETACalloutFromDetailsPickingProviderAndMapMoving];
    }

    else
    {
      GEOConfigGetDouble();
      MKMapRectMakeWithRadialDistance();
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      chromeViewController = [(ContainerViewController *)self chromeViewController];
      mapView = [chromeViewController mapView];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10095FB3C;
      v17[3] = &unk_10165FC50;
      objc_copyWeak(&v18, &location);
      v17[4] = self;
      [mapView _setVisibleMapRect:1 animated:v17 completionHandler:{v8, v10, v12, v14}];

      objc_destroyWeak(&v18);
    }

    objc_destroyWeak(&location);
  }
}

- (void)updateForDismissingDetailsPickingAnimated:(BOOL)animated
{
  [(MKMarkerAnnotationView *)self->_ETACalloutView setSelected:0 animated:animated];
  [(MKMarkerAnnotationView *)self->_ETACalloutView removeFromSuperview];
  requestRideOptionProxy = self->_requestRideOptionProxy;
  self->_requestRideOptionProxy = 0;
}

- (void)_updateForShowingDetailsPickingAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (!self->_ETACalloutView)
  {
    v5 = [[MKMarkerAnnotationView alloc] initWithAnnotation:0 reuseIdentifier:0];
    ETACalloutView = self->_ETACalloutView;
    self->_ETACalloutView = v5;

    v7 = objc_opt_new();
    [(MKMarkerAnnotationView *)self->_ETACalloutView setGlyphImage:v7];

    v8 = +[RidesharingBalloonETAView balloonFillColor];
    [(MKMarkerAnnotationView *)self->_ETACalloutView setMarkerTintColor:v8];

    v9 = objc_alloc_init(RidesharingBalloonETAView);
    ETAView = self->_ETAView;
    self->_ETAView = v9;

    [(MKMarkerAnnotationView *)self->_ETACalloutView setSelectedContentView:self->_ETAView];
  }

  if (!self->_requestRideOptionProxy)
  {
    v11 = [[RideBookingRequestRideOptionProxy alloc] initWithDelegate:self];
    requestRideOptionProxy = self->_requestRideOptionProxy;
    self->_requestRideOptionProxy = v11;
  }

  v13 = self->_ETACalloutView;

  [(MKMarkerAnnotationView *)v13 setSelected:1 animated:animatedCopy];
}

- (void)setNeedsUpdateForShowingDetailsPickingAnimated
{
  self->_needsUpdateForShowingDetailsPicking = 1;
  view = [(RidesharingContainerViewController *)self view];
  [view setNeedsLayout];
}

- (void)updateTopBannerViewWithTopBannerItems:(id)items
{
  v5.receiver = self;
  v5.super_class = RidesharingContainerViewController;
  [(OverlayContainerViewController *)&v5 updateTopBannerViewWithTopBannerItems:items];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10095FF6C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)contentHeightUpdatedWithValue:(double)value
{
  containerStyle = [(ContainerViewController *)self containerStyle];
  v16.receiver = self;
  v16.super_class = RidesharingContainerViewController;
  [(ContainerViewController *)&v16 contentHeightUpdatedWithValue:value];
  v6 = 1.0;
  if ((containerStyle | 4) != 5)
  {
    goto LABEL_8;
  }

  if (containerStyle == 5)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  currentViewController = [(ContainerViewController *)self currentViewController];
  [currentViewController heightForLayout:v7];
  v10 = v9;

  currentViewController2 = [(ContainerViewController *)self currentViewController];
  [currentViewController2 heightForLayout:3];
  v13 = v12;

  if (v13 != v10)
  {
    if (v10 < value)
    {
      v6 = 1.0 - fmin(fmax((value - v10) / (v10 * 0.100000024), 0.0), 1.0);
    }

LABEL_8:
    view = [(ButtonsContainerViewController *)self->_recenterButtonContainer view];
    [view setAlpha:v6];

    topBannerView = [(OverlayContainerViewController *)self topBannerView];
    [topBannerView setAlpha:v6];
  }
}

- (void)viewDidLayoutSubviews
{
  v17.receiver = self;
  v17.super_class = RidesharingContainerViewController;
  [(OverlayContainerViewController *)&v17 viewDidLayoutSubviews];
  chromeViewController = [(ContainerViewController *)self chromeViewController];
  mapView = [chromeViewController mapView];

  [mapView _edgeInsets];
  v6 = v5;
  view = [(ButtonsContainerViewController *)self->_recenterButtonContainer view];
  [view frame];
  v9 = v8;
  [(ContainerViewController *)self edgePadding];
  v11 = v10;
  [(ContainerViewController *)self edgePadding];
  v13 = v11 + v6 + v12 + v9;
  [(ContainerViewController *)self edgePadding];
  [mapView _setCompassInsets:{v13, 0.0, 0.0, v14}];

  if (self->_needsUpdateForShowingDetailsPicking)
  {
    if ([(ContainerViewController *)self containerStyle])
    {
      self->_needsUpdateForShowingDetailsPicking = 0;
      currentViewController = [(ContainerViewController *)self currentViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        [(RidesharingContainerViewController *)self _updateForShowingDetailsPickingAnimated:1];
      }
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  v12.receiver = self;
  v12.super_class = RidesharingContainerViewController;
  [(ContainerViewController *)&v12 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  currentViewController = [(ContainerViewController *)self currentViewController];
  detailsPickingViewController = [(RidesharingContainerViewController *)self detailsPickingViewController];
  v10 = [currentViewController isEqual:detailsPickingViewController];

  if (v10)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100960380;
    v11[3] = &unk_101661710;
    v11[4] = self;
    [coordinatorCopy animateAlongsideTransition:v11 completion:0];
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = RidesharingContainerViewController;
  [(OverlayContainerViewController *)&v3 viewDidLoad];
  [(RidesharingContainerViewController *)self _setupRecenterButton];
}

@end