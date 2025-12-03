@interface LookAroundPIPViewController
- (LookAroundActionCoordination)actionCoordinator;
- (LookAroundPIPViewController)initWithDataCoordinator:(id)coordinator lookAroundView:(id)view;
- (void)_captureUserAction:(int)action onTarget:(int)target eventValue:(id)value;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)_updateLookAroundAvailability:(int64_t)availability imageryError:(BOOL)error;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)controller;
- (void)loadView;
- (void)lookAroundFloatingButtonsViewController:(id)controller didSelectImageryInfo:(id)info;
- (void)lookAroundFloatingButtonsViewController:(id)controller didSelectReportAnIssue:(id)issue;
- (void)lookAroundFloatingButtonsViewController:(id)controller didSelectToggleLabels:(id)labels;
- (void)lookAroundFloatingButtonsViewController:(id)controller didTapDoneButton:(id)button;
- (void)lookAroundFloatingButtonsViewController:(id)controller didTapMaximizeButton:(id)button;
- (void)lookAroundFloatingButtonsViewController:(id)controller didTapMinimizeButton:(id)button;
- (void)lookAroundPIPDataCoordinatorDidChangeLookAroundAvailability:(id)availability;
- (void)lookAroundPIPDataCoordinatorDidEndMovingLookAroundView:(id)view;
- (void)lookAroundPIPDataCoordinatorDidEndPanningMapView:(id)view;
- (void)lookAroundPIPDataCoordinatorDidStartPanningMapView:(id)view;
- (void)lookAroundPIPDataCoordinatorDidSynchronizeMapView:(id)view;
- (void)lookAroundPIPDataCoordinatorFailedToEnterLookArounPIP:(id)p;
- (void)lookAroundPIPDataCoordinatorIsPanningMapView:(id)view;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation LookAroundPIPViewController

- (LookAroundActionCoordination)actionCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_actionCoordinator);

  return WeakRetained;
}

- (void)_captureUserAction:(int)action onTarget:(int)target eventValue:(id)value
{
  v5 = *&target;
  v6 = *&action;
  valueCopy = value;
  dataCoordinator = [(LookAroundPIPViewController *)self dataCoordinator];
  mapView = [dataCoordinator mapView];

  lookAroundView = [(LookAroundPIPViewController *)self lookAroundView];
  [mapView centerCoordinate];
  v13 = [[GEOLocation alloc] initWithLatitude:v11 longitude:v12];
  camera = [mapView camera];
  [camera heading];
  v16 = v15;
  [mapView _zoomLevel];
  v18 = v17;
  visiblePlaceMUIDs = [lookAroundView visiblePlaceMUIDs];
  v20 = [visiblePlaceMUIDs count];
  if ([lookAroundView showsRoadLabels])
  {
    showsPointLabels = 1;
  }

  else
  {
    showsPointLabels = [lookAroundView showsPointLabels];
  }

  LOBYTE(v22) = showsPointLabels;
  [GEOAPPortal captureLookAroundUserAction:v6 onTarget:v5 eventValue:valueCopy location:v13 heading:v16 zoom:v20 numberPoisInView:v18 labelingShown:v22];
}

- (void)_updateLookAroundAvailability:(int64_t)availability imageryError:(BOOL)error
{
  if (availability == 1 && !error)
  {
    v5 = +[NSBundle mainBundle];
    v6 = v5;
    v7 = @"LookAround PIP [Area Available]";
LABEL_7:
    v8 = [v5 localizedStringForKey:v7 value:@"localized string not found" table:0];

    goto LABEL_8;
  }

  if (!availability && !error)
  {
    v5 = +[NSBundle mainBundle];
    v6 = v5;
    v7 = @"LookAround PIP [Not Available]";
    goto LABEL_7;
  }

  if (error)
  {
    v8 = +[LookAroundErrorStringBuilder buildBestErrorStringForCurrentNetworkState];
  }

  else
  {
    v8 = 0;
  }

LABEL_8:
  v9 = self->_statusMessageLabel;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100CF1550;
  v12[3] = &unk_101661A90;
  v13 = v9;
  v14 = v8;
  v10 = v8;
  v11 = v9;
  [UIView animateWithDuration:v12 animations:0.25];
}

- (void)_setupViews
{
  contentView = [(CardView *)self->_cardView contentView];
  v3 = [MKLookAroundContainerView alloc];
  lookAroundView = [(LookAroundPIPViewController *)self lookAroundView];
  v5 = [v3 initWithLookAroundView:lookAroundView];
  lookAroundContainerView = self->_lookAroundContainerView;
  self->_lookAroundContainerView = v5;

  [(MKLookAroundContainerView *)self->_lookAroundContainerView setBadgeHidden:0];
  [contentView addSubview:self->_lookAroundContainerView];
  lookAroundView2 = [(LookAroundPIPViewController *)self lookAroundView];
  [lookAroundView2 setNavigatingEnabled:1];

  lookAroundView3 = [(LookAroundPIPViewController *)self lookAroundView];
  [lookAroundView3 setPanningEnabled:1];

  lookAroundView4 = [(LookAroundPIPViewController *)self lookAroundView];
  [lookAroundView4 setZoomingEnabled:1];

  lookAroundView5 = [(LookAroundPIPViewController *)self lookAroundView];
  [lookAroundView5 setShowsPointLabels:1];

  lookAroundView6 = [(LookAroundPIPViewController *)self lookAroundView];
  [lookAroundView6 setShowsRoadLabels:1];

  v12 = [[LookAroundFloatingButtonsViewController alloc] initWithShowsMinimizeButton:0 groupButtonsIfNeeded:1];
  floatingButtonsViewController = self->_floatingButtonsViewController;
  self->_floatingButtonsViewController = v12;

  [(LookAroundPIPViewController *)self addChildViewController:self->_floatingButtonsViewController];
  [(LookAroundFloatingButtonsViewController *)self->_floatingButtonsViewController setDelegate:self];
  [(LookAroundFloatingButtonsViewController *)self->_floatingButtonsViewController setMaximizedButtonEnabled:0];
  view = [(LookAroundFloatingButtonsViewController *)self->_floatingButtonsViewController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  view2 = [(LookAroundFloatingButtonsViewController *)self->_floatingButtonsViewController view];
  [contentView addSubview:view2];

  [(LookAroundFloatingButtonsViewController *)self->_floatingButtonsViewController didMoveToParentViewController:self];
  v16 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  statusMessageLabel = self->_statusMessageLabel;
  self->_statusMessageLabel = v16;

  [DynamicTypeWizard autorefreshLabel:self->_statusMessageLabel withFontProvider:&stru_101650D88];
  [(UILabel *)self->_statusMessageLabel setAlpha:0.0];
  [(UILabel *)self->_statusMessageLabel setNumberOfLines:0];
  [(UILabel *)self->_statusMessageLabel setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_statusMessageLabel setTextAlignment:1];
  v18 = +[UIColor labelColor];
  [(UILabel *)self->_statusMessageLabel setTextColor:v18];

  [(UILabel *)self->_statusMessageLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [contentView addSubview:self->_statusMessageLabel];
  [(MapsThemeViewController *)self updateTheme];
}

- (void)_setupConstraints
{
  contentView = [(CardView *)self->_cardView contentView];
  view = [(LookAroundFloatingButtonsViewController *)self->_floatingButtonsViewController view];
  topAnchor = [view topAnchor];
  safeAreaLayoutGuide = [contentView safeAreaLayoutGuide];
  topAnchor2 = [safeAreaLayoutGuide topAnchor];
  v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
  floatingButtonsTopConstraint = self->_floatingButtonsTopConstraint;
  self->_floatingButtonsTopConstraint = v8;

  view2 = [(LookAroundFloatingButtonsViewController *)self->_floatingButtonsViewController view];
  leadingAnchor = [view2 leadingAnchor];
  safeAreaLayoutGuide2 = [contentView safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide2 leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  floatingButtonsLeadingConstraint = self->_floatingButtonsLeadingConstraint;
  self->_floatingButtonsLeadingConstraint = v14;

  view3 = [(LookAroundFloatingButtonsViewController *)self->_floatingButtonsViewController view];
  trailingAnchor = [view3 trailingAnchor];
  safeAreaLayoutGuide3 = [contentView safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide3 trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  floatingButtonsTrailingConstraint = self->_floatingButtonsTrailingConstraint;
  self->_floatingButtonsTrailingConstraint = v20;

  v22 = self->_floatingButtonsLeadingConstraint;
  v23 = self->_floatingButtonsTrailingConstraint;
  v44[0] = self->_floatingButtonsTopConstraint;
  v44[1] = v22;
  v44[2] = v23;
  topAnchor3 = [(UILabel *)self->_statusMessageLabel topAnchor];
  view4 = [(LookAroundFloatingButtonsViewController *)self->_floatingButtonsViewController view];
  bottomAnchor = [view4 bottomAnchor];
  v40 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:bottomAnchor];
  v44[3] = v40;
  bottomAnchor2 = [(UILabel *)self->_statusMessageLabel bottomAnchor];
  bottomAnchor3 = [contentView bottomAnchor];
  v37 = [bottomAnchor2 constraintLessThanOrEqualToAnchor:bottomAnchor3];
  v44[4] = v37;
  centerXAnchor = [(UILabel *)self->_statusMessageLabel centerXAnchor];
  centerXAnchor2 = [contentView centerXAnchor];
  v34 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v44[5] = v34;
  centerYAnchor = [(UILabel *)self->_statusMessageLabel centerYAnchor];
  centerYAnchor2 = [contentView centerYAnchor];
  v25 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v44[6] = v25;
  leadingAnchor3 = [(UILabel *)self->_statusMessageLabel leadingAnchor];
  leadingAnchor4 = [contentView leadingAnchor];
  v28 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:16.0];
  v44[7] = v28;
  trailingAnchor3 = [(UILabel *)self->_statusMessageLabel trailingAnchor];
  trailingAnchor4 = [contentView trailingAnchor];
  v31 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-16.0];
  v44[8] = v31;
  v32 = [NSArray arrayWithObjects:v44 count:9];
  [NSLayoutConstraint activateConstraints:v32];
}

- (void)lookAroundPIPDataCoordinatorDidEndMovingLookAroundView:(id)view
{
  viewCopy = view;
  isMapViewInSyncWithLookAroundView = [viewCopy isMapViewInSyncWithLookAroundView];
  v6 = isMapViewInSyncWithLookAroundView & [viewCopy isLookAroundDataAvailable];
  [(MKLookAroundContainerView *)self->_lookAroundContainerView setDimmingState:v6 ^ 1 animated:1];
  mapView = [viewCopy mapView];

  -[LookAroundPIPViewController _updateLookAroundAvailability:](self, "_updateLookAroundAvailability:", [mapView _lookAroundAvailability]);

  [(LookAroundPIPViewController *)self _updateEnterLookAroundFullScreenEnabled:v6];
}

- (void)lookAroundPIPDataCoordinatorDidSynchronizeMapView:(id)view
{
  [(MKLookAroundContainerView *)self->_lookAroundContainerView setDimmingState:2 animated:1];

  [(LookAroundPIPViewController *)self _updateLookAroundAvailability:2];
}

- (void)lookAroundPIPDataCoordinatorDidEndPanningMapView:(id)view
{
  lookAroundContainerView = self->_lookAroundContainerView;
  viewCopy = view;
  [(MKLookAroundContainerView *)lookAroundContainerView setDimmingState:1 animated:1];
  mapView = [viewCopy mapView];

  -[LookAroundPIPViewController _updateLookAroundAvailability:](self, "_updateLookAroundAvailability:", [mapView _lookAroundAvailability]);
  muninMarker = self->_muninMarker;
  self->_muninMarker = 0;
}

- (void)lookAroundPIPDataCoordinatorIsPanningMapView:(id)view
{
  viewCopy = view;
  muninMarker = [(LookAroundPIPDataCoordinator *)self->_dataCoordinator muninMarker];
  muninMarker = self->_muninMarker;
  if ((muninMarker != 0) != (muninMarker != 0))
  {
    mapView = [viewCopy mapView];
    _lookAroundAvailability = [mapView _lookAroundAvailability];

    [(LookAroundPIPViewController *)self _updateLookAroundAvailability:_lookAroundAvailability];
    muninMarker = self->_muninMarker;
  }

  self->_muninMarker = muninMarker;
}

- (void)lookAroundPIPDataCoordinatorDidStartPanningMapView:(id)view
{
  muninMarker = [(LookAroundPIPDataCoordinator *)self->_dataCoordinator muninMarker];
  muninMarker = self->_muninMarker;
  self->_muninMarker = muninMarker;

  [(MKLookAroundContainerView *)self->_lookAroundContainerView setDimmingState:1 animated:1];

  [(LookAroundPIPViewController *)self _updateEnterLookAroundFullScreenEnabled:0];
}

- (void)lookAroundPIPDataCoordinatorDidChangeLookAroundAvailability:(id)availability
{
  availabilityCopy = availability;
  mapView = [availabilityCopy mapView];
  _lookAroundAvailability = [mapView _lookAroundAvailability];

  isMapViewInSyncWithLookAroundView = [availabilityCopy isMapViewInSyncWithLookAroundView];
  isPanningMapView = [availabilityCopy isPanningMapView];

  [(MKLookAroundContainerView *)self->_lookAroundContainerView setDimmingState:isPanningMapView & 1 | (((_lookAroundAvailability == 2) & isMapViewInSyncWithLookAroundView) == 0) animated:1];
  [(LookAroundPIPViewController *)self _updateLookAroundAvailability:_lookAroundAvailability];

  [(LookAroundPIPViewController *)self _updateEnterLookAroundFullScreenEnabled:(_lookAroundAvailability == 2) & isMapViewInSyncWithLookAroundView & (isPanningMapView ^ 1)];
}

- (void)lookAroundPIPDataCoordinatorFailedToEnterLookArounPIP:(id)p
{
  [(MKLookAroundContainerView *)self->_lookAroundContainerView setDimmingState:1 animated:1];
  [(LookAroundPIPViewController *)self _updateLookAroundAvailability:0 imageryError:1];

  [(LookAroundPIPViewController *)self _updateEnterLookAroundFullScreenEnabled:0];
}

- (void)lookAroundFloatingButtonsViewController:(id)controller didSelectImageryInfo:(id)info
{
  v5 = [NSBundle mainBundle:controller];
  v20 = [v5 localizedStringForKey:@"Last Updated [LookAround]" value:@"localized string not found" table:0];

  dateFormatter = self->_dateFormatter;
  v7 = +[NSLocale currentLocale];
  v8 = [NSDateFormatter dateFormatFromTemplate:@"MMMMyyyy" options:0 locale:v7];
  [(NSDateFormatter *)dateFormatter setLocalizedDateFormatFromTemplate:v8];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"Imagery [LookAround]" value:@"localized string not found" table:0];
  v11 = self->_dateFormatter;
  lookAroundView = [(LookAroundPIPViewController *)self lookAroundView];
  collectionDate = [lookAroundView collectionDate];
  v14 = [(NSDateFormatter *)v11 stringFromDate:collectionDate];
  v15 = [NSString stringWithFormat:v20, v14];
  v16 = [UIAlertController alertControllerWithTitle:v10 message:v15 preferredStyle:1];

  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@"Done" value:@"localized string not found" table:0];
  v19 = [UIAlertAction actionWithTitle:v18 style:0 handler:0];

  [v16 addAction:v19];
  [v16 setPreferredAction:v19];
  [(LookAroundPIPViewController *)self presentViewController:v16 animated:1 completion:0];
}

- (void)lookAroundFloatingButtonsViewController:(id)controller didSelectToggleLabels:(id)labels
{
  controllerCopy = controller;
  lookAroundView = [(LookAroundPIPViewController *)self lookAroundView];
  showsPointLabels = [lookAroundView showsPointLabels];

  [controllerCopy setHidingLabels:showsPointLabels];
  if (showsPointLabels)
  {
    v8 = 6066;
  }

  else
  {
    v8 = 6067;
  }

  [(LookAroundPIPViewController *)self _captureUserAction:v8 onTarget:1701 eventValue:0];
  lookAroundView2 = [(LookAroundPIPViewController *)self lookAroundView];
  [lookAroundView2 setShowsPointLabels:showsPointLabels ^ 1];

  lookAroundView3 = [(LookAroundPIPViewController *)self lookAroundView];
  [lookAroundView3 setShowsRoadLabels:showsPointLabels ^ 1];
}

- (void)lookAroundFloatingButtonsViewController:(id)controller didSelectReportAnIssue:(id)issue
{
  [(LookAroundPIPViewController *)self _captureUserAction:5013 onTarget:1701 eventValue:0];
  v5 = [RAPLookAroundContextImpl alloc];
  lookAroundView = [(LookAroundPIPViewController *)self lookAroundView];
  v9 = [(RAPLookAroundContextImpl *)v5 initWithLookAroundView:lookAroundView];

  _maps_mapsSceneDelegate = [(LookAroundPIPViewController *)self _maps_mapsSceneDelegate];
  rapPresenter = [_maps_mapsSceneDelegate rapPresenter];
  [rapPresenter presentLookAroundRAPWithContext:v9 completion:0];
}

- (void)lookAroundFloatingButtonsViewController:(id)controller didTapDoneButton:(id)button
{
  if ([(LookAroundPIPViewController *)self showsMinimizedButton:controller])
  {
    v5 = 1702;
  }

  else
  {
    v5 = 1700;
  }

  [(LookAroundPIPViewController *)self _captureUserAction:6063 onTarget:v5 eventValue:0];
  actionCoordinator = [(LookAroundPIPViewController *)self actionCoordinator];
  [actionCoordinator exitLookAround];
}

- (void)lookAroundFloatingButtonsViewController:(id)controller didTapMinimizeButton:(id)button
{
  [(LookAroundFloatingButtonsViewController *)self->_floatingButtonsViewController setShowsMinimizedButton:0, button];
  actionCoordinator = [(LookAroundPIPViewController *)self actionCoordinator];
  [actionCoordinator viewControllerPresentLookAround:self showsFullScreen:0];

  [(MKLookAroundView *)self->_lookAroundView recordTriggerAction:6064];

  [(LookAroundPIPViewController *)self _captureUserAction:6064 onTarget:1702 eventValue:0];
}

- (void)lookAroundFloatingButtonsViewController:(id)controller didTapMaximizeButton:(id)button
{
  [(LookAroundFloatingButtonsViewController *)self->_floatingButtonsViewController setShowsMinimizedButton:1, button];
  actionCoordinator = [(LookAroundPIPViewController *)self actionCoordinator];
  [actionCoordinator viewControllerPresentLookAround:self showsFullScreen:1];

  [(MKLookAroundView *)self->_lookAroundView recordTriggerAction:6062];

  [(LookAroundPIPViewController *)self _captureUserAction:6062 onTarget:1700 eventValue:0];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = LookAroundPIPViewController;
  [(LookAroundPIPViewController *)&v4 viewDidLayoutSubviews];
  view = [(LookAroundPIPViewController *)self view];
  [view bounds];
  [(MKLookAroundContainerView *)self->_lookAroundContainerView setFrame:?];

  [(NSLayoutConstraint *)self->_floatingButtonsTopConstraint setConstant:16.0];
  [(NSLayoutConstraint *)self->_floatingButtonsLeadingConstraint setConstant:16.0];
  [(NSLayoutConstraint *)self->_floatingButtonsTrailingConstraint setConstant:-16.0];
}

- (void)didMoveToParentViewController:(id)controller
{
  v9.receiver = self;
  v9.super_class = LookAroundPIPViewController;
  [(LookAroundPIPViewController *)&v9 didMoveToParentViewController:?];
  if (controller)
  {
    actionCoordinator = [(LookAroundPIPViewController *)self actionCoordinator];
    currentMapItem = [actionCoordinator currentMapItem];

    dataCoordinator = [(LookAroundPIPViewController *)self dataCoordinator];
    lookAroundView = [(LookAroundPIPViewController *)self lookAroundView];
    [dataCoordinator enterLookAroundPIPWithLookAroundView:lookAroundView mapItem:currentMapItem];
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = LookAroundPIPViewController;
  [(LookAroundPIPViewController *)&v3 viewDidLoad];
  [(LookAroundPIPViewController *)self _setupViews];
  [(LookAroundPIPViewController *)self _setupConstraints];
}

- (void)loadView
{
  v3 = [[CardView alloc] initAllowingBlurred:0];
  [(CardView *)v3 setLayoutStyle:6];
  cardView = self->_cardView;
  self->_cardView = v3;
  v5 = v3;

  [(LookAroundPIPViewController *)self setView:self->_cardView];
}

- (void)dealloc
{
  [(LookAroundPIPDataCoordinator *)self->_dataCoordinator removeObserver:self];
  v3.receiver = self;
  v3.super_class = LookAroundPIPViewController;
  [(LookAroundPIPViewController *)&v3 dealloc];
}

- (LookAroundPIPViewController)initWithDataCoordinator:(id)coordinator lookAroundView:(id)view
{
  coordinatorCopy = coordinator;
  viewCopy = view;
  v14.receiver = self;
  v14.super_class = LookAroundPIPViewController;
  v9 = [(LookAroundPIPViewController *)&v14 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataCoordinator, coordinator);
    [(LookAroundPIPDataCoordinator *)v10->_dataCoordinator addObserver:v10];
    objc_storeStrong(&v10->_lookAroundView, view);
    v11 = objc_alloc_init(NSDateFormatter);
    dateFormatter = v10->_dateFormatter;
    v10->_dateFormatter = v11;
  }

  return v10;
}

@end