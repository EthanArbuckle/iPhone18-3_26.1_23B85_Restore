@interface RidesharingContainerViewController
- (ButtonsContainerViewController)recenterButtonContainer;
- (CGPoint)mapView:(id)a3 focusPointForPoint:(CGPoint)a4 gesture:(int64_t)a5;
- (RidesharingConfirmedRideViewController)confirmedRideViewController;
- (RidesharingDetailsPickingViewController)detailsPickingViewController;
- (id)_topBannerViewHorizontalConstraints;
- (void)_moveMapToNewStartWaypointIfNeededAnimated:(BOOL)a3;
- (void)_moveToCenterCoordinate:(CLLocationCoordinate2D)a3;
- (void)_recenterTapped:(id)a3;
- (void)_setupRecenterButton;
- (void)_updateETACalloutFromDetailsPickingProviderAndMapMoving;
- (void)_updateForShowingDetailsPickingAnimated:(BOOL)a3;
- (void)contentHeightUpdatedWithValue:(double)a3;
- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4;
- (void)mapView:(id)a3 willStartRespondingToGesture:(int64_t)a4 animated:(BOOL)a5;
- (void)requestRideStatusDidChange:(id)a3;
- (void)setNeedsUpdateForShowingDetailsPickingAnimated;
- (void)updateForDismissingDetailsPickingAnimated:(BOOL)a3;
- (void)updateTopBannerViewWithTopBannerItems:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
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

- (CGPoint)mapView:(id)a3 focusPointForPoint:(CGPoint)a4 gesture:(int64_t)a5
{
  if (a5 == 1)
  {
    v5 = a3;
    [v5 centerCoordinate];
    [v5 convertCoordinate:v5 toPointToView:?];
    x = v6;
    y = v8;
  }

  else
  {
    y = a4.y;
    x = a4.x;
  }

  v10 = x;
  v11 = y;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)mapView:(id)a3 willStartRespondingToGesture:(int64_t)a4 animated:(BOOL)a5
{
  v7 = a3;
  v11 = v7;
  if (self->_requestingRide || a4 == 1)
  {
    [v7 setScrollEnabled:0];
  }

  else
  {
    self->_isUserInitiatedMapChange = 1;
    v8 = [(ContainerViewController *)self currentViewController];
    v9 = [(RidesharingContainerViewController *)self detailsPickingViewController];
    v10 = [v8 isEqual:v9];

    if (v10)
    {
      [(RidesharingContainerViewController *)self _updateETACalloutFromDetailsPickingProviderAndMapMoving];
    }
  }
}

- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4
{
  v17 = a3;
  [v17 setScrollEnabled:1];
  v5 = [(ContainerViewController *)self currentViewController];
  v6 = [(RidesharingContainerViewController *)self detailsPickingViewController];
  if ([v5 isEqual:v6])
  {
    isUserInitiatedMapChange = self->_isUserInitiatedMapChange;

    if (!isUserInitiatedMapChange)
    {
      goto LABEL_6;
    }

    [(MKMarkerAnnotationView *)self->_ETACalloutView center];
    v9 = v8;
    v11 = v10;
    v12 = [(MKMarkerAnnotationView *)self->_ETACalloutView superview];
    [v17 convertPoint:v12 toCoordinateFromView:{v9, v11}];
    v14 = v13;
    v16 = v15;

    v5 = [(RidesharingContainerViewController *)self requestRideOptionProxy];
    [v5 updateStartingWaypointCoordinate:{v14, v16}];
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
  v15 = [(OverlayContainerViewController *)self topBannerView];
  v14 = [v15 leadingAnchor];
  v3 = [(OverlayContainerViewController *)self overlayView];
  v4 = [v3 leadingAnchor];
  v5 = [v14 constraintEqualToAnchor:v4 constant:sub_100019A44()];
  v16[0] = v5;
  v6 = [(OverlayContainerViewController *)self topBannerView];
  v7 = [v6 trailingAnchor];
  v8 = [(RidesharingContainerViewController *)self recenterButtonContainer];
  v9 = [v8 view];
  v10 = [v9 leadingAnchor];
  v11 = [v7 constraintEqualToAnchor:v10 constant:-sub_100019A44()];
  v16[1] = v11;
  v12 = [NSArray arrayWithObjects:v16 count:2];

  return v12;
}

- (void)_setupRecenterButton
{
  v3 = [(RidesharingContainerViewController *)self recenterButtonContainer];
  v4 = [v3 view];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(RidesharingContainerViewController *)self recenterButtonContainer];
  [(ContainerViewController *)self addChildViewController:v5];

  v6 = [(OverlayContainerViewController *)self overlayView];
  v7 = [(RidesharingContainerViewController *)self recenterButtonContainer];
  v8 = [v7 view];
  [v6 addSubview:v8];

  v24 = [(RidesharingContainerViewController *)self recenterButtonContainer];
  v23 = [v24 view];
  v21 = [v23 trailingAnchor];
  v22 = [(OverlayContainerViewController *)self innerLayoutGuide];
  v9 = [v22 trailingAnchor];
  v10 = [v21 constraintEqualToAnchor:v9];
  v25[0] = v10;
  v11 = [(RidesharingContainerViewController *)self recenterButtonContainer];
  v12 = [v11 view];
  v13 = [v12 topAnchor];
  v14 = [(OverlayContainerViewController *)self innerLayoutGuide];
  v15 = [v14 topAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  v25[1] = v16;
  v17 = [NSArray arrayWithObjects:v25 count:2];
  [NSLayoutConstraint activateConstraints:v17];

  v18 = [(RidesharingContainerViewController *)self recenterButtonContainer];
  [v18 didMoveToParentViewController:self];

  v19 = [(RidesharingContainerViewController *)self recenterButtonContainer];
  v20 = [v19 view];
  [v20 layoutIfNeeded];
}

- (void)_recenterTapped:(id)a3
{
  v4 = [(ContainerViewController *)self chromeViewController];
  v14 = [v4 mapView];

  v5 = [v14 userLocation];
  [v5 coordinate];
  v7 = v6;
  v9 = v8;

  v16.latitude = v7;
  v16.longitude = v9;
  if (CLLocationCoordinate2DIsValid(v16))
  {
    v10 = [(ContainerViewController *)self currentViewController];
    v11 = [(RidesharingContainerViewController *)self detailsPickingViewController];
    v12 = [v10 isEqual:v11];

    if (v12)
    {
      v13 = [(RidesharingContainerViewController *)self requestRideOptionProxy];
      [v13 updateStartingWaypointCoordinate:{v7, v9}];
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

    v13 = [(ContainerViewController *)self blurGroupName];
    [(ButtonsContainerViewController *)self->_recenterButtonContainer setBlurGroupName:v13];

    recenterButtonContainer = self->_recenterButtonContainer;
  }

  return recenterButtonContainer;
}

- (void)_moveToCenterCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
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

  v9 = [(ContainerViewController *)self chromeViewController];
  v10 = [v9 mapView];
  [v10 setCenterCoordinate:1 animated:{latitude, longitude}];
}

- (void)_moveMapToNewStartWaypointIfNeededAnimated:(BOOL)a3
{
  if (!self->_isUserInitiatedMapChange)
  {
    v4 = a3;
    v8 = [(RidesharingContainerViewController *)self requestRideStatus];
    v6 = [(ContainerViewController *)self chromeViewController];
    v7 = [v6 mapView];
    [v8 startWaypointCoordinate];
    [v7 setCenterCoordinate:v4 animated:?];
  }
}

- (void)_updateETACalloutFromDetailsPickingProviderAndMapMoving
{
  v3 = [(ContainerViewController *)self currentViewController];
  [v3 heightForLayout:2];
  v5 = v4;

  v6 = [(ContainerViewController *)self currentViewController];
  [v6 heightForLayout:3];
  v8 = v7;

  v9 = [(ContainerViewController *)self chromeViewController];
  v10 = [v9 mapView];
  [v10 _edgeInsets];
  v12 = v11;

  v13 = [(ContainerViewController *)self containerStyle];
  v14 = v8 + v5;
  if (((1 << v13) & 0xA3) == 0)
  {
    v14 = v8;
  }

  if (v13 > 7)
  {
    v14 = v8;
  }

  v15 = (v12 - v14) * 0.5;
  ETACalloutView = self->_ETACalloutView;
  if (ETACalloutView)
  {
    v17 = [(MKMarkerAnnotationView *)ETACalloutView superview];
    if (v17)
    {
    }

    else
    {
      v18 = [(ContainerViewController *)self chromeViewController];
      v19 = [v18 mapView];

      if (v19)
      {
        v20 = [(RidesharingContainerViewController *)self view];
        v21 = self->_ETACalloutView;
        v22 = [(OverlayContainerViewController *)self overlayView];
        [v20 insertSubview:v21 belowSubview:v22];

        [(MKMarkerAnnotationView *)self->_ETACalloutView setTranslatesAutoresizingMaskIntoConstraints:0];
        v23 = [(MKMarkerAnnotationView *)self->_ETACalloutView centerXAnchor];
        v24 = [(ContainerViewController *)self chromeViewController];
        v25 = [v24 mapView];
        v26 = [v25 _edgeInsetsLayoutGuide];
        v27 = [v26 centerXAnchor];
        v28 = [v23 constraintEqualToAnchor:v27];

        v29 = [(MKMarkerAnnotationView *)self->_ETACalloutView selectedContentView];
        v30 = [v29 bottomAnchor];
        v31 = [(RidesharingContainerViewController *)self view];
        v32 = [v31 bottomAnchor];
        v33 = [v30 constraintEqualToAnchor:v32 constant:v15];
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
  v37 = [(RidesharingContainerViewController *)self requestRideStatus];
  v38 = [v37 etaMinutesAtStartWaypoint];
  v39 = [v37 loadingRequest];
  v40 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
  {
    v41 = basename("/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Shared/RidesharingContainerViewController.m");
    v42 = [[NSString alloc] initWithFormat:@"Updating ETA callout with minutes: %@, loading?:%d", v38, v39];
    *buf = 136315394;
    v47 = v41;
    v48 = 2112;
    v49 = v42;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "{RBInfo}{%s}: %@", buf, 0x16u);
  }

  if (v39)
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

  if (v38)
  {
    ETAView = self->_ETAView;
    v44 = v38;
    v45 = 0;
    goto LABEL_18;
  }

LABEL_19:
}

- (void)requestRideStatusDidChange:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5 && ![v5 requestRideStatusError] && !self->_isUserInitiatedMapChange)
  {
    objc_storeStrong(&self->_requestRideStatus, a3);
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
      v15 = [(ContainerViewController *)self chromeViewController];
      v16 = [v15 mapView];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10095FB3C;
      v17[3] = &unk_10165FC50;
      objc_copyWeak(&v18, &location);
      v17[4] = self;
      [v16 _setVisibleMapRect:1 animated:v17 completionHandler:{v8, v10, v12, v14}];

      objc_destroyWeak(&v18);
    }

    objc_destroyWeak(&location);
  }
}

- (void)updateForDismissingDetailsPickingAnimated:(BOOL)a3
{
  [(MKMarkerAnnotationView *)self->_ETACalloutView setSelected:0 animated:a3];
  [(MKMarkerAnnotationView *)self->_ETACalloutView removeFromSuperview];
  requestRideOptionProxy = self->_requestRideOptionProxy;
  self->_requestRideOptionProxy = 0;
}

- (void)_updateForShowingDetailsPickingAnimated:(BOOL)a3
{
  v3 = a3;
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

  [(MKMarkerAnnotationView *)v13 setSelected:1 animated:v3];
}

- (void)setNeedsUpdateForShowingDetailsPickingAnimated
{
  self->_needsUpdateForShowingDetailsPicking = 1;
  v2 = [(RidesharingContainerViewController *)self view];
  [v2 setNeedsLayout];
}

- (void)updateTopBannerViewWithTopBannerItems:(id)a3
{
  v5.receiver = self;
  v5.super_class = RidesharingContainerViewController;
  [(OverlayContainerViewController *)&v5 updateTopBannerViewWithTopBannerItems:a3];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10095FF6C;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)contentHeightUpdatedWithValue:(double)a3
{
  v5 = [(ContainerViewController *)self containerStyle];
  v16.receiver = self;
  v16.super_class = RidesharingContainerViewController;
  [(ContainerViewController *)&v16 contentHeightUpdatedWithValue:a3];
  v6 = 1.0;
  if ((v5 | 4) != 5)
  {
    goto LABEL_8;
  }

  if (v5 == 5)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  v8 = [(ContainerViewController *)self currentViewController];
  [v8 heightForLayout:v7];
  v10 = v9;

  v11 = [(ContainerViewController *)self currentViewController];
  [v11 heightForLayout:3];
  v13 = v12;

  if (v13 != v10)
  {
    if (v10 < a3)
    {
      v6 = 1.0 - fmin(fmax((a3 - v10) / (v10 * 0.100000024), 0.0), 1.0);
    }

LABEL_8:
    v14 = [(ButtonsContainerViewController *)self->_recenterButtonContainer view];
    [v14 setAlpha:v6];

    v15 = [(OverlayContainerViewController *)self topBannerView];
    [v15 setAlpha:v6];
  }
}

- (void)viewDidLayoutSubviews
{
  v17.receiver = self;
  v17.super_class = RidesharingContainerViewController;
  [(OverlayContainerViewController *)&v17 viewDidLayoutSubviews];
  v3 = [(ContainerViewController *)self chromeViewController];
  v4 = [v3 mapView];

  [v4 _edgeInsets];
  v6 = v5;
  v7 = [(ButtonsContainerViewController *)self->_recenterButtonContainer view];
  [v7 frame];
  v9 = v8;
  [(ContainerViewController *)self edgePadding];
  v11 = v10;
  [(ContainerViewController *)self edgePadding];
  v13 = v11 + v6 + v12 + v9;
  [(ContainerViewController *)self edgePadding];
  [v4 _setCompassInsets:{v13, 0.0, 0.0, v14}];

  if (self->_needsUpdateForShowingDetailsPicking)
  {
    if ([(ContainerViewController *)self containerStyle])
    {
      self->_needsUpdateForShowingDetailsPicking = 0;
      v15 = [(ContainerViewController *)self currentViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        [(RidesharingContainerViewController *)self _updateForShowingDetailsPickingAnimated:1];
      }
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = RidesharingContainerViewController;
  [(ContainerViewController *)&v12 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8 = [(ContainerViewController *)self currentViewController];
  v9 = [(RidesharingContainerViewController *)self detailsPickingViewController];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100960380;
    v11[3] = &unk_101661710;
    v11[4] = self;
    [v7 animateAlongsideTransition:v11 completion:0];
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