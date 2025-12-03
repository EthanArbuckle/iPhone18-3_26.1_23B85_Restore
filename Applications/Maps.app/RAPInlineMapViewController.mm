@interface RAPInlineMapViewController
- ($873BFAB23BBB6E2F0B0288ED2F935688)_coordinatePickingMapRect;
- (RAPInlineMapViewController)initWithReport:(id)report coordinate:(CLLocationCoordinate2D)coordinate markerViewAttributes:(id)attributes;
- (RAPInlineMapViewControllerDelegate)delegate;
- (void)_didChangeCenterCoordinate:(CLLocationCoordinate2D)coordinate fromEditLocationMapView:(id)view;
- (void)_didTapButton;
- (void)_setupConstraints;
- (void)_setupSubviews;
@end

@implementation RAPInlineMapViewController

- (RAPInlineMapViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_didChangeCenterCoordinate:(CLLocationCoordinate2D)coordinate fromEditLocationMapView:(id)view
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  viewCopy = view;
  mapView = [viewCopy mapView];
  _mapLayer = [mapView _mapLayer];
  mapView2 = [viewCopy mapView];
  [mapView2 convertCoordinate:viewCopy toPointToView:{latitude, longitude}];
  v12 = v11;
  v14 = v13;

  v16 = [_mapLayer rapMarkerAtPoint:{v12, v14}];

  delegate = [(RAPInlineMapViewController *)self delegate];
  [delegate rapInlineMapViewController:self marker:v16 didUpdateLocationTo:{latitude, longitude}];
}

- (void)_didTapButton
{
  objc_initWeak(location, self);
  v3 = [RAPWebBundleEditLocationViewController alloc];
  [(RAPInlineMapViewController *)self _coordinatePickingMapRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  _context = [(RAPReport *)self->_report _context];
  mapType = [_context mapType];
  _context2 = [(RAPReport *)self->_report _context];
  isShowingTraffic = [_context2 isShowingTraffic];
  markerViewAttributes = self->_markerViewAttributes;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_1005BEC20;
  v24[3] = &unk_101637DB0;
  objc_copyWeak(&v25, location);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1005BECD8;
  v22[3] = &unk_101661B98;
  objc_copyWeak(&v23, location);
  v17 = [(RAPWebBundleEditLocationViewController *)v3 initWithInitialCoordinates:mapType inMapRect:isShowingTraffic mapType:1158 isShowingTraffic:markerViewAttributes analyticsTarget:0 markerViewAttributes:7 showAnnotationTitle:self->_selectedCoordinate.latitude searchResultTypes:self->_selectedCoordinate.longitude selectionHandler:v5 cancelSelectionHandler:v7, v9, v11, v24, v22];
  editLocationViewController = self->_editLocationViewController;
  self->_editLocationViewController = v17;

  v19 = [[UINavigationController alloc] initWithRootViewController:self->_editLocationViewController];
  [v19 setModalPresentationStyle:2];
  [v19 setModalInPresentation:1];
  v20 = +[NSBundle mainBundle];
  v21 = [v20 localizedStringForKey:@"[RAP Incidents] Map Footer Place" value:@"localized string not found" table:0];
  [(RAPWebBundleEditLocationViewController *)self->_editLocationViewController setPromptText:v21];

  [(RAPInlineMapViewController *)self presentViewController:v19 animated:1 completion:0];
  objc_destroyWeak(&v23);
  objc_destroyWeak(&v25);
  objc_destroyWeak(location);
}

- (void)_setupConstraints
{
  leadingAnchor = [(RAPEditLocationMapView *)self->_editLocationMapView leadingAnchor];
  view = [(RAPInlineMapViewController *)self view];
  leadingAnchor2 = [view leadingAnchor];
  v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v44[0] = v35;
  trailingAnchor = [(RAPEditLocationMapView *)self->_editLocationMapView trailingAnchor];
  view2 = [(RAPInlineMapViewController *)self view];
  trailingAnchor2 = [view2 trailingAnchor];
  v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v44[1] = v27;
  topAnchor = [(RAPEditLocationMapView *)self->_editLocationMapView topAnchor];
  view3 = [(RAPInlineMapViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v6 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v44[2] = v6;
  bottomAnchor = [(RAPEditLocationMapView *)self->_editLocationMapView bottomAnchor];
  view4 = [(RAPInlineMapViewController *)self view];
  bottomAnchor2 = [view4 bottomAnchor];
  v10 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v44[3] = v10;
  v11 = [NSArray arrayWithObjects:v44 count:4];
  [NSLayoutConstraint activateConstraints:v11];

  if (sub_10000FA08(self) != 5)
  {
    topAnchor3 = [(UIButton *)self->_alternateButton topAnchor];
    topAnchor4 = [(RAPEditLocationMapView *)self->_editLocationMapView topAnchor];
    v38 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v43[0] = v38;
    leadingAnchor3 = [(UIButton *)self->_alternateButton leadingAnchor];
    leadingAnchor4 = [(RAPEditLocationMapView *)self->_editLocationMapView leadingAnchor];
    v32 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v43[1] = v32;
    heightAnchor = [(UIButton *)self->_alternateButton heightAnchor];
    v28 = [heightAnchor constraintEqualToConstant:40.0];
    v43[2] = v28;
    widthAnchor = [(UIButton *)self->_alternateButton widthAnchor];
    heightAnchor2 = [(UIButton *)self->_alternateButton heightAnchor];
    v24 = [widthAnchor constraintEqualToAnchor:heightAnchor2];
    v43[3] = v24;
    centerXAnchor = [(UIVisualEffectView *)self->_backgroundBlurView centerXAnchor];
    centerXAnchor2 = [(UIButton *)self->_alternateButton centerXAnchor];
    v12 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v43[4] = v12;
    centerYAnchor = [(UIVisualEffectView *)self->_backgroundBlurView centerYAnchor];
    centerYAnchor2 = [(UIButton *)self->_alternateButton centerYAnchor];
    v15 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v43[5] = v15;
    heightAnchor3 = [(UIVisualEffectView *)self->_backgroundBlurView heightAnchor];
    v17 = [heightAnchor3 constraintEqualToConstant:30.0];
    v43[6] = v17;
    widthAnchor2 = [(UIVisualEffectView *)self->_backgroundBlurView widthAnchor];
    heightAnchor4 = [(UIVisualEffectView *)self->_backgroundBlurView heightAnchor];
    v20 = [widthAnchor2 constraintEqualToAnchor:heightAnchor4];
    v43[7] = v20;
    v21 = [NSArray arrayWithObjects:v43 count:8];
    [NSLayoutConstraint activateConstraints:v21];
  }
}

- (void)_setupSubviews
{
  v3 = [RAPEditLocationMapView alloc];
  [(RAPInlineMapViewController *)self _coordinatePickingMapRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  _context2 = 32;
  _context = [(RAPReport *)self->_report _context];
  isShowingTraffic = [_context isShowingTraffic];
  if (isShowingTraffic)
  {
    v15 = 7;
  }

  else
  {
    _context2 = [(RAPReport *)self->_report _context];
    mapType = [_context2 mapType];
    v17 = 3;
    v18 = 7;
    if (mapType != 108)
    {
      v18 = 0;
    }

    if (mapType != 104)
    {
      v17 = v18;
    }

    v19 = 5;
    v20 = -1;
    if (mapType != 103)
    {
      v20 = 0;
    }

    if (mapType != 4)
    {
      v19 = v20;
    }

    if (mapType <= 103)
    {
      v17 = v19;
    }

    v21 = 2;
    v22 = 1;
    v23 = 6;
    if (mapType != 3)
    {
      v23 = 0;
    }

    if (mapType != 2)
    {
      v22 = v23;
    }

    if (mapType != 1)
    {
      v21 = v22;
    }

    if (mapType <= 3)
    {
      v15 = v21;
    }

    else
    {
      v15 = v17;
    }
  }

  v24 = [(RAPEditLocationMapView *)v3 initWithMapRect:v15 viewMode:self->_markerViewAttributes markerViewAttributes:v5, v7, v9, v11];
  editLocationMapView = self->_editLocationMapView;
  self->_editLocationMapView = v24;

  if ((isShowingTraffic & 1) == 0)
  {
  }

  [(RAPEditLocationMapView *)self->_editLocationMapView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(RAPEditLocationMapView *)self->_editLocationMapView setDelegate:self];
  [(RAPEditLocationMapView *)self->_editLocationMapView setCrosshairEnabled:1];
  [(RAPEditLocationMapView *)self->_editLocationMapView setHideAllSuplementaryViews:1];
  mapView = [(RAPEditLocationMapView *)self->_editLocationMapView mapView];
  [mapView setPitchEnabled:0];

  mapView2 = [(RAPEditLocationMapView *)self->_editLocationMapView mapView];
  [mapView2 setRotateEnabled:0];

  layer = [(RAPEditLocationMapView *)self->_editLocationMapView layer];
  [layer setCornerRadius:10.0];

  layer2 = [(RAPEditLocationMapView *)self->_editLocationMapView layer];
  [layer2 setMasksToBounds:1];

  view = [(RAPInlineMapViewController *)self view];
  [view addSubview:self->_editLocationMapView];

  if (sub_10000FA08(self) != 5)
  {
    v31 = [UIButton buttonWithType:1];
    alternateButton = self->_alternateButton;
    self->_alternateButton = v31;

    v33 = [UIImage systemImageNamed:@"arrow.up.left.and.arrow.down.right"];
    v43 = [v33 imageWithRenderingMode:2];

    [(UIButton *)self->_alternateButton setImage:v43 forState:0];
    [(UIButton *)self->_alternateButton setAdjustsImageWhenHighlighted:0];
    v34 = +[UIColor whiteColor];
    [(UIButton *)self->_alternateButton setTintColor:v34];

    [(UIButton *)self->_alternateButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)self->_alternateButton setContentEdgeInsets:10.0, 10.0, 10.0, 10.0];
    v35 = self->_alternateButton;
    v36 = [UIImageSymbolConfiguration configurationWithPointSize:15.0];
    [(UIButton *)v35 setPreferredSymbolConfiguration:v36 forImageInState:0];

    [(UIButton *)self->_alternateButton addTarget:self action:"_didTapButton" forControlEvents:64];
    view2 = [(RAPInlineMapViewController *)self view];
    [view2 addSubview:self->_alternateButton];

    v38 = [UIVisualEffectView alloc];
    v39 = [UIBlurEffect effectWithStyle:16];
    v40 = [v38 initWithEffect:v39];
    backgroundBlurView = self->_backgroundBlurView;
    self->_backgroundBlurView = v40;

    [(UIVisualEffectView *)self->_backgroundBlurView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIVisualEffectView *)self->_backgroundBlurView _setCornerRadius:6.0];
    view3 = [(RAPInlineMapViewController *)self view];
    [view3 insertSubview:self->_backgroundBlurView belowSubview:self->_alternateButton];
  }
}

- ($873BFAB23BBB6E2F0B0288ED2F935688)_coordinatePickingMapRect
{
  longitude = self->_selectedCoordinate.longitude;
  if (fabs(longitude) > 180.0 || (latitude = self->_selectedCoordinate.latitude, latitude < -90.0) || latitude > 90.0)
  {
    initialQuestion = [(RAPReport *)self->_report initialQuestion];
    _reportedPlace = [initialQuestion _reportedPlace];
    v5 = sub_1007A3A38(_reportedPlace);
    v7 = v14;
    v9 = v15;
    v11 = v16;
  }

  else
  {
    MKCoordinateRegionMakeWithDistance(*(&longitude - 1), 200.0, 200.0);
    MKMapRectForCoordinateRegion();
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  v17 = v5;
  v18 = v7;
  v19 = v9;
  v20 = v11;
  result.var1.var1 = v20;
  result.var1.var0 = v19;
  result.var0.var1 = v18;
  result.var0.var0 = v17;
  return result;
}

- (RAPInlineMapViewController)initWithReport:(id)report coordinate:(CLLocationCoordinate2D)coordinate markerViewAttributes:(id)attributes
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  reportCopy = report;
  attributesCopy = attributes;
  v17.receiver = self;
  v17.super_class = RAPInlineMapViewController;
  v12 = [(RAPInlineMapViewController *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_report, report);
    v13->_originalCoordinate.latitude = latitude;
    v13->_originalCoordinate.longitude = longitude;
    v13->_selectedCoordinate.latitude = latitude;
    v13->_selectedCoordinate.longitude = longitude;
    v14 = [attributesCopy copy];
    markerViewAttributes = v13->_markerViewAttributes;
    v13->_markerViewAttributes = v14;

    [(RAPInlineMapViewController *)v13 _setupSubviews];
    [(RAPInlineMapViewController *)v13 _setupConstraints];
  }

  return v13;
}

@end