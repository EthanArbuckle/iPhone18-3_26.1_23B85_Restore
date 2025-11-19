@interface RidesharingDetailsPickingViewController
- (BOOL)_isPresented;
- (BannerContainerProtocol)bannerContainer;
- (NSArray)topBannerItems;
- (RidesharingCoordinator)coordinator;
- (RidesharingDetailsPickingViewController)init;
- (double)headerAndRouteFromToViewHeight;
- (double)heightForLayout:(unint64_t)a3;
- (id)stackedViews;
- (void)_openApp;
- (void)_request;
- (void)_requestRide;
- (void)_selectPaymentType;
- (void)_showExpirationAlert;
- (void)_updateFromRequestRideStatus:(id)a3;
- (void)headerViewButtonTapped:(id)a3 buttonType:(unint64_t)a4;
- (void)requestRideStatusDidChange:(id)a3;
- (void)setRequestingRide:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation RidesharingDetailsPickingViewController

- (RidesharingCoordinator)coordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);

  return WeakRetained;
}

- (void)_openApp
{
  v3 = +[MKMapService sharedService];
  [v3 captureUserAction:6020 onTarget:1402 eventValue:0];

  v4 = [(RidesharingDetailsPickingViewController *)self requestRideOptionProxy];
  v5 = [v4 analyticsBookingSession];
  [v5 endSessionOnView:2 state:4];

  v9 = [(RidesharingDetailsPickingViewController *)self requestRideStatus];
  v6 = [v9 application];
  v7 = [(RidesharingDetailsPickingViewController *)self requestRideStatus];
  v8 = [v7 userActivity];
  [v6 openWithActivity:v8];
}

- (void)_requestRide
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"RidesharingDidRequestRideNotificationKey" object:0];

  [(RidesharingDetailsPickingViewController *)self setRequestingRide:1];
  v4 = [(RidesharingDetailsPickingViewController *)self requestRideStatus];
  v5 = [v4 origin];
  v6 = [v5 location];
  v7 = +[MKLocationManager sharedLocationManager];
  v8 = [v7 lastLocation];
  [v6 distanceFromLocation:v8];
  v10 = v9;
  v11 = [(RidesharingDetailsPickingViewController *)self requestRideOptionProxy];
  v12 = [v11 analyticsBookingSession];
  [v12 setDistanceToPickup:v10];

  v13 = objc_alloc_init(NSDate);
  v14 = [(RidesharingDetailsPickingViewController *)self requestRideOptionProxy];
  v15 = [v14 analyticsBookingSession];
  [v15 setBookingDate:v13];

  v16 = [(RidesharingDetailsPickingViewController *)self requestRideStatus];
  v17 = [v16 destination];
  v18 = [v17 _geoMapItem];

  v19 = [(RidesharingDetailsPickingViewController *)self requestRideStatus];
  v20 = [v19 origin];
  v21 = [v20 _geoMapItem];

  if (v18)
  {
    if (v21)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v22 = [(RidesharingDetailsPickingViewController *)self requestRideStatus];
  v23 = [v22 destination];
  v24 = [v23 location];
  [v24 coordinate];
  v26 = v25;
  v28 = v27;
  v29 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "Constructing a minimalMapItem for the BaR destination for analytics", buf, 2u);
  }

  v30 = [[GEOPlace alloc] initWithLatitude:v26 longitude:v28];
  v18 = [GEOMapItemStorage mapItemStorageForPlace:v30];

  if (!v21)
  {
LABEL_7:
    v31 = [(RidesharingDetailsPickingViewController *)self requestRideStatus];
    v32 = [v31 origin];
    v33 = [v32 location];
    [v33 coordinate];
    v35 = v34;
    v37 = v36;
    v38 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "Constructing a minimalMapItem for the BaR destination for analytics", buf, 2u);
    }

    v39 = [[GEOPlace alloc] initWithLatitude:v35 longitude:v37];
    v21 = [GEOMapItemStorage mapItemStorageForPlace:v39];
  }

LABEL_10:
  v40 = +[MapsSuggestionsPredictor sharedPredictor];
  [v40 captureActualTransportationMode:6 originMapItem:v21 destinationMapItem:v18];

  objc_initWeak(buf, self);
  v41 = [(RidesharingDetailsPickingViewController *)self requestRideOptionProxy];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1005A4088;
  v42[3] = &unk_101622938;
  objc_copyWeak(&v43, buf);
  [v41 requestRideWithCompletion:v42];

  objc_destroyWeak(&v43);
  objc_destroyWeak(buf);
}

- (void)setRequestingRide:(BOOL)a3
{
  v3 = a3;
  v5 = [(RidesharingDetailsPickingViewController *)self coordinator];
  v6 = [v5 containerViewController];
  [v6 setRequestingRide:v3];

  [(ProminentActionButton *)self->_requestButton setSpinnerHidden:v3 ^ 1];
  [(ProminentActionButton *)self->_requestButton setUserInteractionEnabled:v3 ^ 1];
  v7 = [(ExtensionsPayView *)self->_payView changePaymentMethodButton];
  [v7 setUserInteractionEnabled:v3 ^ 1];
}

- (void)_request
{
  v3 = +[MKMapService sharedService];
  [v3 captureUserAction:14004 onTarget:1402 eventValue:0];

  self->_finishedPickingDetails = 1;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1005A47C8;
  v29[3] = &unk_101661B18;
  v29[4] = self;
  v4 = objc_retainBlock(v29);
  [(RideBookingRequestRideStatus *)self->_requestRideStatus startWaypointCoordinate];
  v6 = v5;
  v8 = v7;
  v9 = +[MKLocationManager sharedLocationManager];
  v10 = [v9 lastLocation];
  v11 = [[CLLocation alloc] initWithLatitude:v6 longitude:v8];
  [v10 distanceFromLocation:v11];
  v13 = v12;

  GEOConfigGetDouble();
  if (v13 <= v14)
  {
    (v4[2])(v4);
  }

  else
  {
    v15 = +[NSBundle mainBundle];
    v25 = [v15 localizedStringForKey:@"[Ridesharing] pickup location distance confirmation title" value:@"localized string not found" table:0];

    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"[Ridesharing] pickup location distance confirmation message" value:@"localized string not found" table:0];

    v18 = [UIAlertController alertControllerWithTitle:v25 message:v17 preferredStyle:1];
    v19 = +[NSBundle mainBundle];
    v20 = [v19 localizedStringForKey:@"Cancel" value:@"localized string not found" table:0];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1005A498C;
    v28[3] = &unk_10165F220;
    v28[4] = self;
    v21 = [UIAlertAction actionWithTitle:v20 style:1 handler:v28];

    v22 = +[NSBundle mainBundle];
    v23 = [v22 localizedStringForKey:@"Confirm" value:@"localized string not found" table:0];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1005A49A0;
    v26[3] = &unk_101660728;
    v27 = v4;
    v24 = [UIAlertAction actionWithTitle:v23 style:0 handler:v26];

    [v18 addAction:v21];
    [v18 addAction:v24];
    [(RidesharingDetailsPickingViewController *)self presentViewController:v18 animated:1 completion:0];
  }
}

- (void)_selectPaymentType
{
  v3 = +[MKMapService sharedService];
  [v3 captureUserAction:14006 onTarget:1402 eventValue:0];

  v4 = [(RidesharingDetailsPickingViewController *)self requestRideStatus];
  v5 = [(RidesharingDetailsPickingViewController *)self requestRideOptionProxy];
  v8 = [RidesharingPaymentSelectionAlertController ridesharingPaymentSelectionAlertControllerWithRequestRideStatus:v4 requestRideOptionProxy:v5];

  v6 = [(ExtensionsPayView *)self->_payView changePaymentMethodButton];
  v7 = [v8 popoverPresentationController];
  [v7 setSourceView:v6];

  [(RidesharingDetailsPickingViewController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)headerViewButtonTapped:(id)a3 buttonType:(unint64_t)a4
{
  v5 = [MKMapService sharedService:a3];
  [v5 captureUserAction:4 onTarget:1402 eventValue:0];

  if (!self->_finishedPickingDetails)
  {
    [(RidesharingDetailsPickingViewController *)self setRequestRideOptionProxy:0];
    v6 = [(RidesharingDetailsPickingViewController *)self coordinator];
    v7 = [v6 appCoordinator];
    [v7 dismissRidesharingSessionAndReturnToRoutePlanning:1];

    self->_finishedPickingDetails = 1;
  }
}

- (void)_showExpirationAlert
{
  if (!self->_finishedPickingDetails)
  {
    v3 = [(RidesharingDetailsPickingViewController *)self coordinator];
    v4 = [(RidesharingDetailsPickingViewController *)self requestRideStatus];
    [v3 presentExpirationAlertControllerWithRequestRideStatus:v4];

    self->_finishedPickingDetails = 1;
  }
}

- (void)requestRideStatusDidChange:(id)a3
{
  v4 = a3;
  [(RidesharingDetailsPickingViewController *)self setRequestRideStatus:v4];
  [(RidesharingDetailsPickingViewController *)self _updateFromRequestRideStatus:v4];

  v5 = [(ContaineeViewController *)self cardPresentationController];
  v6 = [v5 containeeLayout];

  if (v6 == 2)
  {
    v7 = [(ContaineeViewController *)self cardPresentationController];
    [v7 updateHeightForCurrentLayout];
  }
}

- (void)_updateFromRequestRideStatus:(id)a3
{
  v4 = a3;
  [(RidesharingDetailsPickingViewController *)self loadViewIfNeeded];
  if ([v4 requestRideStatusError])
  {
    v5 = [RidesharingErrorAlertProvider alloc];
    v6 = [v4 application];
    v7 = [v4 userActivity];
    v8 = [(RidesharingErrorAlertProvider *)v5 _initWithCause:2 application:v6 activity:v7];

    v9 = [(RidesharingDetailsPickingViewController *)self requestRideOptionProxy];
    v10 = [v9 analyticsBookingSession];
    v11 = [v8 title];
    [v10 captureErrorMessage:v11];

    v12 = [(RidesharingDetailsPickingViewController *)self coordinator];
    [v12 viewController:self presentErrorAlertIfNeeded:v8];
  }

  else if (-[RidesharingDetailsPickingViewController _isPresented](self, "_isPresented") && [v4 requestExpired])
  {
    [(RidesharingDetailsPickingViewController *)self _showExpirationAlert];
  }

  else
  {
    [ExtensionsViewComposer composeCustomHeaderView:self->_routeFromToView forRideBookingRequestRideStatus:v4];
    [ExtensionsViewComposer composePrimaryDetailsView:self->_primaryDetailsView forRideBookingRequestRideStatus:v4];
    v13 = [v4 loadingRequest];
    if (v13)
    {
      v14 = 0.5;
    }

    else
    {
      v14 = 1.0;
    }

    [(ProminentActionButton *)self->_requestButton setEnabled:v13 ^ 1];
    [(ProminentActionButton *)self->_requestButton setAlpha:v14];
    requestButton = self->_requestButton;
    v16 = [v4 requestCommandTitle];
    [(ProminentActionButton *)requestButton setTitle:v16 forState:0];

    primaryDetailsView = self->_primaryDetailsView;
    v21 = self->_requestButton;
    v18 = [NSArray arrayWithObjects:&v21 count:1];
    [(ExtensionsPrimaryDetailsView *)primaryDetailsView configureWithActionButtons:v18];

    v19 = [v4 rideOption];
    v20 = [v19 paymentMethods];
    -[ExtensionsPayView setHidden:](self->_payView, "setHidden:", [v20 count] == 0);

    [ExtensionsViewComposer composeSecondaryDetailsView:self->_secondaryDetailsView forRideBookingRequestRideStatus:v4];
    [ExtensionsViewComposer composePayView:self->_payView forRideBookingRequestRideStatus:v4];
    [ExtensionsViewComposer composeOpenAppView:self->_openAppView forRideBookingRequestRideStatus:v4];
  }
}

- (BOOL)_isPresented
{
  v3 = [(RidesharingDetailsPickingViewController *)self presentingViewController];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(RidesharingDetailsPickingViewController *)self parentViewController];
    v4 = v5 != 0;
  }

  return v4;
}

- (double)headerAndRouteFromToViewHeight
{
  [(ContaineeViewController *)self headerHeight];
  v4 = v3;
  [(RouteOverviewFieldsView *)self->_routeFromToView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height];
  if (v5 == 0.0)
  {
    [(RouteOverviewFieldsView *)self->_routeFromToView intrinsicContentSize];
  }

  return v5 + v4;
}

- (double)heightForLayout:(unint64_t)a3
{
  if (a3 - 3 < 2)
  {
    v9 = [(ContaineeViewController *)self cardPresentationController];
    [v9 availableHeight];
    v4 = v10;
  }

  else if (a3 == 2)
  {
    [(RidesharingDetailsPickingViewController *)self headerAndRouteFromToViewHeight];
    v12 = v11;
    [(ExtensionsPrimaryDetailsView *)self->_primaryDetailsView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height];
    return v13 + v12;
  }

  else
  {
    v4 = -1.0;
    if (a3 == 1)
    {
      v5 = [(ContaineeViewController *)self cardPresentationController];
      [v5 bottomSafeOffset];
      v7 = v6;
      [(RidesharingDetailsPickingViewController *)self headerAndRouteFromToViewHeight];
      v4 = v8 + v7;
    }
  }

  return v4;
}

- (id)stackedViews
{
  primaryDetailsView = self->_primaryDetailsView;
  v6[0] = self->_routeFromToView;
  v6[1] = primaryDetailsView;
  secondaryDetailsView = self->_secondaryDetailsView;
  v6[2] = self->_payView;
  v6[3] = secondaryDetailsView;
  v6[4] = self->_openAppView;
  v4 = [NSArray arrayWithObjects:v6 count:5];

  return v4;
}

- (BannerContainerProtocol)bannerContainer
{
  WeakRetained = objc_loadWeakRetained(&self->_bannerContainer);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_bannerContainer);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)topBannerItems
{
  topBannerItems = self->_topBannerItems;
  if (!topBannerItems)
  {
    v4 = [TopBannerItem alloc];
    v5 = [NSAttributedString alloc];
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"Move the map to set your pickup location" value:@"localized string not found" table:0];
    v8 = [v5 initWithString:v7];
    v9 = [(TopBannerItem *)v4 initWithType:0 layout:0 userInfo:0 attributedString:v8 icon:0 buttonText:0 buttonAction:0];
    moveMapPromptItem = self->_moveMapPromptItem;
    self->_moveMapPromptItem = v9;

    v14 = self->_moveMapPromptItem;
    v11 = [NSArray arrayWithObjects:&v14 count:1];
    v12 = self->_topBannerItems;
    self->_topBannerItems = v11;

    topBannerItems = self->_topBannerItems;
  }

  return topBannerItems;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = RidesharingDetailsPickingViewController;
  [(ContaineeViewController *)&v9 viewWillDisappear:?];
  v5 = [(RidesharingDetailsPickingViewController *)self coordinator];
  v6 = [v5 containerViewController];
  [v6 updateForDismissingDetailsPickingAnimated:v3];

  v7 = [(RidesharingDetailsPickingViewController *)self coordinator];
  v8 = [v7 containerViewController];
  [v8 setRequestingRide:0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = RidesharingDetailsPickingViewController;
  [(RidesharingDetailsPickingViewController *)&v10 viewDidAppear:a3];
  v4 = [(RidesharingDetailsPickingViewController *)self coordinator];
  v5 = [v4 containerViewController];
  [v5 setNeedsUpdateForShowingDetailsPickingAnimated];

  v6 = [(RidesharingDetailsPickingViewController *)self coordinator];
  v7 = [v6 containerViewController];
  [v7 setRequestingRide:0];

  v8 = [(RidesharingDetailsPickingViewController *)self requestRideOptionProxy];
  v9 = [v8 analyticsBookingSession];
  [v9 captureView:2];
}

- (void)viewDidLoad
{
  v39.receiver = self;
  v39.super_class = RidesharingDetailsPickingViewController;
  [(ExtensionsStackViewController *)&v39 viewDidLoad];
  v3 = objc_alloc_init(ContainerHeaderView);
  containerHeaderView = self->_containerHeaderView;
  self->_containerHeaderView = v3;

  [(ContainerHeaderView *)self->_containerHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ContainerHeaderView *)self->_containerHeaderView setDelegate:self];
  [(ContainerHeaderView *)self->_containerHeaderView setHairLineAlpha:0.0];
  v5 = [(ExtensionsStackViewController *)self headerView];
  [v5 addSubview:self->_containerHeaderView];

  v6 = self->_containerHeaderView;
  v7 = [(ExtensionsStackViewController *)self headerView];
  v8 = [(ContainerHeaderView *)v6 _maps_constraintsForCenteringInView:v7];
  [NSLayoutConstraint activateConstraints:v8];

  v9 = [[RouteOverviewFieldsView alloc] initWithDelegate:self waypointInfoProvider:0 editingMode:0];
  routeFromToView = self->_routeFromToView;
  self->_routeFromToView = v9;

  [(RouteOverviewFieldsView *)self->_routeFromToView setHasRefinementsBar:0];
  [(RouteOverviewFieldsView *)self->_routeFromToView setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"[Route Planning] Ride Share Title" value:@"localized string not found" table:0];
  [v11 setText:v13];

  [DynamicTypeWizard autorefreshLabel:v11 withFontProvider:&stru_10165D868];
  [(ContainerHeaderView *)self->_containerHeaderView setTitleView:v11];
  [(ContainerHeaderView *)self->_containerHeaderView setAccessoryView:0];
  v14 = objc_alloc_init(ExtensionsPrimaryDetailsView);
  primaryDetailsView = self->_primaryDetailsView;
  self->_primaryDetailsView = v14;

  [(ExtensionsPrimaryDetailsView *)self->_primaryDetailsView setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = +[ProminentActionButton button];
  requestButton = self->_requestButton;
  self->_requestButton = v16;

  [(ProminentActionButton *)self->_requestButton addTarget:self action:"_request" forControlEvents:0x2000];
  v18 = [(RidesharingDetailsPickingViewController *)self theme];
  v19 = [v18 keyColor];
  [(ProminentActionButton *)self->_requestButton setTintColor:v19];

  v20 = [(ProminentActionButton *)self->_requestButton titleLabel];
  [v20 setLineBreakMode:0];

  v21 = [(ProminentActionButton *)self->_requestButton titleLabel];
  [v21 setNumberOfLines:0];

  v22 = [(ProminentActionButton *)self->_requestButton titleLabel];
  [v22 setTextAlignment:1];

  v23 = self->_primaryDetailsView;
  v40 = self->_requestButton;
  v24 = [NSArray arrayWithObjects:&v40 count:1];
  [(ExtensionsPrimaryDetailsView *)v23 configureWithActionButtons:v24];

  v25 = objc_alloc_init(ExtensionsSecondaryDetailsView);
  secondaryDetailsView = self->_secondaryDetailsView;
  self->_secondaryDetailsView = v25;

  [(ExtensionsSecondaryDetailsView *)self->_secondaryDetailsView setTranslatesAutoresizingMaskIntoConstraints:0];
  objc_initWeak(&location, self);
  v27 = objc_alloc_init(ExtensionsPayView);
  payView = self->_payView;
  self->_payView = v27;

  [(ExtensionsPayView *)self->_payView setTranslatesAutoresizingMaskIntoConstraints:0];
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_1005A5B60;
  v36[3] = &unk_1016228E8;
  objc_copyWeak(&v37, &location);
  [(ExtensionsPayView *)self->_payView setPerformChangeCommand:v36];
  v29 = objc_alloc_init(ExtensionsActionsFooterView);
  openAppView = self->_openAppView;
  self->_openAppView = v29;

  [(ExtensionsActionsFooterView *)self->_openAppView setTranslatesAutoresizingMaskIntoConstraints:0];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1005A5C80;
  v34[3] = &unk_101661B98;
  objc_copyWeak(&v35, &location);
  [(ExtensionsActionsFooterView *)self->_openAppView setDidTapOpenAppButton:v34];
  v31 = [(RidesharingDetailsPickingViewController *)self requestRideStatus];
  [(RidesharingDetailsPickingViewController *)self _updateFromRequestRideStatus:v31];

  v32 = [(ExtensionsStackViewController *)self stackView];
  v33 = [(RidesharingDetailsPickingViewController *)self stackedViews];
  [v32 _maps_setArrangedSubviews:v33];

  objc_destroyWeak(&v35);
  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);
}

- (RidesharingDetailsPickingViewController)init
{
  v6.receiver = self;
  v6.super_class = RidesharingDetailsPickingViewController;
  v2 = [(RidesharingDetailsPickingViewController *)&v6 initWithNibName:0 bundle:0];
  if (v2)
  {
    v3 = [[RideBookingRequestRideOptionProxy alloc] initWithDelegate:v2];
    requestRideOptionProxy = v2->_requestRideOptionProxy;
    v2->_requestRideOptionProxy = v3;
  }

  return v2;
}

@end