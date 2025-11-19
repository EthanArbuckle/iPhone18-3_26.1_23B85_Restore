@interface LookAroundPIPViewController
- (LookAroundActionCoordination)actionCoordinator;
- (LookAroundPIPViewController)initWithDataCoordinator:(id)a3 lookAroundView:(id)a4;
- (void)_captureUserAction:(int)a3 onTarget:(int)a4 eventValue:(id)a5;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)_updateLookAroundAvailability:(int64_t)a3 imageryError:(BOOL)a4;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)a3;
- (void)loadView;
- (void)lookAroundFloatingButtonsViewController:(id)a3 didSelectImageryInfo:(id)a4;
- (void)lookAroundFloatingButtonsViewController:(id)a3 didSelectReportAnIssue:(id)a4;
- (void)lookAroundFloatingButtonsViewController:(id)a3 didSelectToggleLabels:(id)a4;
- (void)lookAroundFloatingButtonsViewController:(id)a3 didTapDoneButton:(id)a4;
- (void)lookAroundFloatingButtonsViewController:(id)a3 didTapMaximizeButton:(id)a4;
- (void)lookAroundFloatingButtonsViewController:(id)a3 didTapMinimizeButton:(id)a4;
- (void)lookAroundPIPDataCoordinatorDidChangeLookAroundAvailability:(id)a3;
- (void)lookAroundPIPDataCoordinatorDidEndMovingLookAroundView:(id)a3;
- (void)lookAroundPIPDataCoordinatorDidEndPanningMapView:(id)a3;
- (void)lookAroundPIPDataCoordinatorDidStartPanningMapView:(id)a3;
- (void)lookAroundPIPDataCoordinatorDidSynchronizeMapView:(id)a3;
- (void)lookAroundPIPDataCoordinatorFailedToEnterLookArounPIP:(id)a3;
- (void)lookAroundPIPDataCoordinatorIsPanningMapView:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation LookAroundPIPViewController

- (LookAroundActionCoordination)actionCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_actionCoordinator);

  return WeakRetained;
}

- (void)_captureUserAction:(int)a3 onTarget:(int)a4 eventValue:(id)a5
{
  v5 = *&a4;
  v6 = *&a3;
  v23 = a5;
  v8 = [(LookAroundPIPViewController *)self dataCoordinator];
  v9 = [v8 mapView];

  v10 = [(LookAroundPIPViewController *)self lookAroundView];
  [v9 centerCoordinate];
  v13 = [[GEOLocation alloc] initWithLatitude:v11 longitude:v12];
  v14 = [v9 camera];
  [v14 heading];
  v16 = v15;
  [v9 _zoomLevel];
  v18 = v17;
  v19 = [v10 visiblePlaceMUIDs];
  v20 = [v19 count];
  if ([v10 showsRoadLabels])
  {
    v21 = 1;
  }

  else
  {
    v21 = [v10 showsPointLabels];
  }

  LOBYTE(v22) = v21;
  [GEOAPPortal captureLookAroundUserAction:v6 onTarget:v5 eventValue:v23 location:v13 heading:v16 zoom:v20 numberPoisInView:v18 labelingShown:v22];
}

- (void)_updateLookAroundAvailability:(int64_t)a3 imageryError:(BOOL)a4
{
  if (a3 == 1 && !a4)
  {
    v5 = +[NSBundle mainBundle];
    v6 = v5;
    v7 = @"LookAround PIP [Area Available]";
LABEL_7:
    v8 = [v5 localizedStringForKey:v7 value:@"localized string not found" table:0];

    goto LABEL_8;
  }

  if (!a3 && !a4)
  {
    v5 = +[NSBundle mainBundle];
    v6 = v5;
    v7 = @"LookAround PIP [Not Available]";
    goto LABEL_7;
  }

  if (a4)
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
  v19 = [(CardView *)self->_cardView contentView];
  v3 = [MKLookAroundContainerView alloc];
  v4 = [(LookAroundPIPViewController *)self lookAroundView];
  v5 = [v3 initWithLookAroundView:v4];
  lookAroundContainerView = self->_lookAroundContainerView;
  self->_lookAroundContainerView = v5;

  [(MKLookAroundContainerView *)self->_lookAroundContainerView setBadgeHidden:0];
  [v19 addSubview:self->_lookAroundContainerView];
  v7 = [(LookAroundPIPViewController *)self lookAroundView];
  [v7 setNavigatingEnabled:1];

  v8 = [(LookAroundPIPViewController *)self lookAroundView];
  [v8 setPanningEnabled:1];

  v9 = [(LookAroundPIPViewController *)self lookAroundView];
  [v9 setZoomingEnabled:1];

  v10 = [(LookAroundPIPViewController *)self lookAroundView];
  [v10 setShowsPointLabels:1];

  v11 = [(LookAroundPIPViewController *)self lookAroundView];
  [v11 setShowsRoadLabels:1];

  v12 = [[LookAroundFloatingButtonsViewController alloc] initWithShowsMinimizeButton:0 groupButtonsIfNeeded:1];
  floatingButtonsViewController = self->_floatingButtonsViewController;
  self->_floatingButtonsViewController = v12;

  [(LookAroundPIPViewController *)self addChildViewController:self->_floatingButtonsViewController];
  [(LookAroundFloatingButtonsViewController *)self->_floatingButtonsViewController setDelegate:self];
  [(LookAroundFloatingButtonsViewController *)self->_floatingButtonsViewController setMaximizedButtonEnabled:0];
  v14 = [(LookAroundFloatingButtonsViewController *)self->_floatingButtonsViewController view];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  v15 = [(LookAroundFloatingButtonsViewController *)self->_floatingButtonsViewController view];
  [v19 addSubview:v15];

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
  [v19 addSubview:self->_statusMessageLabel];
  [(MapsThemeViewController *)self updateTheme];
}

- (void)_setupConstraints
{
  v3 = [(CardView *)self->_cardView contentView];
  v4 = [(LookAroundFloatingButtonsViewController *)self->_floatingButtonsViewController view];
  v5 = [v4 topAnchor];
  v6 = [v3 safeAreaLayoutGuide];
  v7 = [v6 topAnchor];
  v8 = [v5 constraintEqualToAnchor:v7];
  floatingButtonsTopConstraint = self->_floatingButtonsTopConstraint;
  self->_floatingButtonsTopConstraint = v8;

  v10 = [(LookAroundFloatingButtonsViewController *)self->_floatingButtonsViewController view];
  v11 = [v10 leadingAnchor];
  v12 = [v3 safeAreaLayoutGuide];
  v13 = [v12 leadingAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];
  floatingButtonsLeadingConstraint = self->_floatingButtonsLeadingConstraint;
  self->_floatingButtonsLeadingConstraint = v14;

  v16 = [(LookAroundFloatingButtonsViewController *)self->_floatingButtonsViewController view];
  v17 = [v16 trailingAnchor];
  v18 = [v3 safeAreaLayoutGuide];
  v19 = [v18 trailingAnchor];
  v20 = [v17 constraintEqualToAnchor:v19];
  floatingButtonsTrailingConstraint = self->_floatingButtonsTrailingConstraint;
  self->_floatingButtonsTrailingConstraint = v20;

  v22 = self->_floatingButtonsLeadingConstraint;
  v23 = self->_floatingButtonsTrailingConstraint;
  v44[0] = self->_floatingButtonsTopConstraint;
  v44[1] = v22;
  v44[2] = v23;
  v42 = [(UILabel *)self->_statusMessageLabel topAnchor];
  v43 = [(LookAroundFloatingButtonsViewController *)self->_floatingButtonsViewController view];
  v41 = [v43 bottomAnchor];
  v40 = [v42 constraintGreaterThanOrEqualToAnchor:v41];
  v44[3] = v40;
  v39 = [(UILabel *)self->_statusMessageLabel bottomAnchor];
  v38 = [v3 bottomAnchor];
  v37 = [v39 constraintLessThanOrEqualToAnchor:v38];
  v44[4] = v37;
  v36 = [(UILabel *)self->_statusMessageLabel centerXAnchor];
  v35 = [v3 centerXAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v44[5] = v34;
  v33 = [(UILabel *)self->_statusMessageLabel centerYAnchor];
  v24 = [v3 centerYAnchor];
  v25 = [v33 constraintEqualToAnchor:v24];
  v44[6] = v25;
  v26 = [(UILabel *)self->_statusMessageLabel leadingAnchor];
  v27 = [v3 leadingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:16.0];
  v44[7] = v28;
  v29 = [(UILabel *)self->_statusMessageLabel trailingAnchor];
  v30 = [v3 trailingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:-16.0];
  v44[8] = v31;
  v32 = [NSArray arrayWithObjects:v44 count:9];
  [NSLayoutConstraint activateConstraints:v32];
}

- (void)lookAroundPIPDataCoordinatorDidEndMovingLookAroundView:(id)a3
{
  v4 = a3;
  v5 = [v4 isMapViewInSyncWithLookAroundView];
  v6 = v5 & [v4 isLookAroundDataAvailable];
  [(MKLookAroundContainerView *)self->_lookAroundContainerView setDimmingState:v6 ^ 1 animated:1];
  v7 = [v4 mapView];

  -[LookAroundPIPViewController _updateLookAroundAvailability:](self, "_updateLookAroundAvailability:", [v7 _lookAroundAvailability]);

  [(LookAroundPIPViewController *)self _updateEnterLookAroundFullScreenEnabled:v6];
}

- (void)lookAroundPIPDataCoordinatorDidSynchronizeMapView:(id)a3
{
  [(MKLookAroundContainerView *)self->_lookAroundContainerView setDimmingState:2 animated:1];

  [(LookAroundPIPViewController *)self _updateLookAroundAvailability:2];
}

- (void)lookAroundPIPDataCoordinatorDidEndPanningMapView:(id)a3
{
  lookAroundContainerView = self->_lookAroundContainerView;
  v5 = a3;
  [(MKLookAroundContainerView *)lookAroundContainerView setDimmingState:1 animated:1];
  v6 = [v5 mapView];

  -[LookAroundPIPViewController _updateLookAroundAvailability:](self, "_updateLookAroundAvailability:", [v6 _lookAroundAvailability]);
  muninMarker = self->_muninMarker;
  self->_muninMarker = 0;
}

- (void)lookAroundPIPDataCoordinatorIsPanningMapView:(id)a3
{
  v8 = a3;
  v4 = [(LookAroundPIPDataCoordinator *)self->_dataCoordinator muninMarker];
  muninMarker = self->_muninMarker;
  if ((v4 != 0) != (muninMarker != 0))
  {
    v6 = [v8 mapView];
    v7 = [v6 _lookAroundAvailability];

    [(LookAroundPIPViewController *)self _updateLookAroundAvailability:v7];
    muninMarker = self->_muninMarker;
  }

  self->_muninMarker = v4;
}

- (void)lookAroundPIPDataCoordinatorDidStartPanningMapView:(id)a3
{
  v4 = [(LookAroundPIPDataCoordinator *)self->_dataCoordinator muninMarker];
  muninMarker = self->_muninMarker;
  self->_muninMarker = v4;

  [(MKLookAroundContainerView *)self->_lookAroundContainerView setDimmingState:1 animated:1];

  [(LookAroundPIPViewController *)self _updateEnterLookAroundFullScreenEnabled:0];
}

- (void)lookAroundPIPDataCoordinatorDidChangeLookAroundAvailability:(id)a3
{
  v4 = a3;
  v5 = [v4 mapView];
  v6 = [v5 _lookAroundAvailability];

  v7 = [v4 isMapViewInSyncWithLookAroundView];
  v8 = [v4 isPanningMapView];

  [(MKLookAroundContainerView *)self->_lookAroundContainerView setDimmingState:v8 & 1 | (((v6 == 2) & v7) == 0) animated:1];
  [(LookAroundPIPViewController *)self _updateLookAroundAvailability:v6];

  [(LookAroundPIPViewController *)self _updateEnterLookAroundFullScreenEnabled:(v6 == 2) & v7 & (v8 ^ 1)];
}

- (void)lookAroundPIPDataCoordinatorFailedToEnterLookArounPIP:(id)a3
{
  [(MKLookAroundContainerView *)self->_lookAroundContainerView setDimmingState:1 animated:1];
  [(LookAroundPIPViewController *)self _updateLookAroundAvailability:0 imageryError:1];

  [(LookAroundPIPViewController *)self _updateEnterLookAroundFullScreenEnabled:0];
}

- (void)lookAroundFloatingButtonsViewController:(id)a3 didSelectImageryInfo:(id)a4
{
  v5 = [NSBundle mainBundle:a3];
  v20 = [v5 localizedStringForKey:@"Last Updated [LookAround]" value:@"localized string not found" table:0];

  dateFormatter = self->_dateFormatter;
  v7 = +[NSLocale currentLocale];
  v8 = [NSDateFormatter dateFormatFromTemplate:@"MMMMyyyy" options:0 locale:v7];
  [(NSDateFormatter *)dateFormatter setLocalizedDateFormatFromTemplate:v8];

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"Imagery [LookAround]" value:@"localized string not found" table:0];
  v11 = self->_dateFormatter;
  v12 = [(LookAroundPIPViewController *)self lookAroundView];
  v13 = [v12 collectionDate];
  v14 = [(NSDateFormatter *)v11 stringFromDate:v13];
  v15 = [NSString stringWithFormat:v20, v14];
  v16 = [UIAlertController alertControllerWithTitle:v10 message:v15 preferredStyle:1];

  v17 = +[NSBundle mainBundle];
  v18 = [v17 localizedStringForKey:@"Done" value:@"localized string not found" table:0];
  v19 = [UIAlertAction actionWithTitle:v18 style:0 handler:0];

  [v16 addAction:v19];
  [v16 setPreferredAction:v19];
  [(LookAroundPIPViewController *)self presentViewController:v16 animated:1 completion:0];
}

- (void)lookAroundFloatingButtonsViewController:(id)a3 didSelectToggleLabels:(id)a4
{
  v5 = a3;
  v6 = [(LookAroundPIPViewController *)self lookAroundView];
  v7 = [v6 showsPointLabels];

  [v5 setHidingLabels:v7];
  if (v7)
  {
    v8 = 6066;
  }

  else
  {
    v8 = 6067;
  }

  [(LookAroundPIPViewController *)self _captureUserAction:v8 onTarget:1701 eventValue:0];
  v9 = [(LookAroundPIPViewController *)self lookAroundView];
  [v9 setShowsPointLabels:v7 ^ 1];

  v10 = [(LookAroundPIPViewController *)self lookAroundView];
  [v10 setShowsRoadLabels:v7 ^ 1];
}

- (void)lookAroundFloatingButtonsViewController:(id)a3 didSelectReportAnIssue:(id)a4
{
  [(LookAroundPIPViewController *)self _captureUserAction:5013 onTarget:1701 eventValue:0];
  v5 = [RAPLookAroundContextImpl alloc];
  v6 = [(LookAroundPIPViewController *)self lookAroundView];
  v9 = [(RAPLookAroundContextImpl *)v5 initWithLookAroundView:v6];

  v7 = [(LookAroundPIPViewController *)self _maps_mapsSceneDelegate];
  v8 = [v7 rapPresenter];
  [v8 presentLookAroundRAPWithContext:v9 completion:0];
}

- (void)lookAroundFloatingButtonsViewController:(id)a3 didTapDoneButton:(id)a4
{
  if ([(LookAroundPIPViewController *)self showsMinimizedButton:a3])
  {
    v5 = 1702;
  }

  else
  {
    v5 = 1700;
  }

  [(LookAroundPIPViewController *)self _captureUserAction:6063 onTarget:v5 eventValue:0];
  v6 = [(LookAroundPIPViewController *)self actionCoordinator];
  [v6 exitLookAround];
}

- (void)lookAroundFloatingButtonsViewController:(id)a3 didTapMinimizeButton:(id)a4
{
  [(LookAroundFloatingButtonsViewController *)self->_floatingButtonsViewController setShowsMinimizedButton:0, a4];
  v5 = [(LookAroundPIPViewController *)self actionCoordinator];
  [v5 viewControllerPresentLookAround:self showsFullScreen:0];

  [(MKLookAroundView *)self->_lookAroundView recordTriggerAction:6064];

  [(LookAroundPIPViewController *)self _captureUserAction:6064 onTarget:1702 eventValue:0];
}

- (void)lookAroundFloatingButtonsViewController:(id)a3 didTapMaximizeButton:(id)a4
{
  [(LookAroundFloatingButtonsViewController *)self->_floatingButtonsViewController setShowsMinimizedButton:1, a4];
  v5 = [(LookAroundPIPViewController *)self actionCoordinator];
  [v5 viewControllerPresentLookAround:self showsFullScreen:1];

  [(MKLookAroundView *)self->_lookAroundView recordTriggerAction:6062];

  [(LookAroundPIPViewController *)self _captureUserAction:6062 onTarget:1700 eventValue:0];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = LookAroundPIPViewController;
  [(LookAroundPIPViewController *)&v4 viewDidLayoutSubviews];
  v3 = [(LookAroundPIPViewController *)self view];
  [v3 bounds];
  [(MKLookAroundContainerView *)self->_lookAroundContainerView setFrame:?];

  [(NSLayoutConstraint *)self->_floatingButtonsTopConstraint setConstant:16.0];
  [(NSLayoutConstraint *)self->_floatingButtonsLeadingConstraint setConstant:16.0];
  [(NSLayoutConstraint *)self->_floatingButtonsTrailingConstraint setConstant:-16.0];
}

- (void)didMoveToParentViewController:(id)a3
{
  v9.receiver = self;
  v9.super_class = LookAroundPIPViewController;
  [(LookAroundPIPViewController *)&v9 didMoveToParentViewController:?];
  if (a3)
  {
    v5 = [(LookAroundPIPViewController *)self actionCoordinator];
    v6 = [v5 currentMapItem];

    v7 = [(LookAroundPIPViewController *)self dataCoordinator];
    v8 = [(LookAroundPIPViewController *)self lookAroundView];
    [v7 enterLookAroundPIPWithLookAroundView:v8 mapItem:v6];
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

- (LookAroundPIPViewController)initWithDataCoordinator:(id)a3 lookAroundView:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = LookAroundPIPViewController;
  v9 = [(LookAroundPIPViewController *)&v14 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataCoordinator, a3);
    [(LookAroundPIPDataCoordinator *)v10->_dataCoordinator addObserver:v10];
    objc_storeStrong(&v10->_lookAroundView, a4);
    v11 = objc_alloc_init(NSDateFormatter);
    dateFormatter = v10->_dateFormatter;
    v10->_dateFormatter = v11;
  }

  return v10;
}

@end