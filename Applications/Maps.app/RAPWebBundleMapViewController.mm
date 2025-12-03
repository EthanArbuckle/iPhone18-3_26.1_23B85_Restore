@interface RAPWebBundleMapViewController
- ($873BFAB23BBB6E2F0B0288ED2F935688)_coordinatePickingMapRect;
- (BOOL)_isStreetRAP;
- (RAPWebBundleMapDelegate)delegate;
- (RAPWebBundleMapViewController)initWithReport:(id)report coordinate:(CLLocationCoordinate2D)coordinate;
- (id)_viewAttributes;
- (id)_webBundleQuestion;
- (void)_didChangeCenterCoordinate:(CLLocationCoordinate2D)coordinate fromEditLocationMapView:(id)view;
- (void)_didTapButton;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)editLocationMapView:(id)view didChangeCenterCoordinate:(CLLocationCoordinate2D)coordinate;
- (void)editLocationMapViewFinishedRenderingMap:(id)map;
@end

@implementation RAPWebBundleMapViewController

- (RAPWebBundleMapDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)editLocationMapViewFinishedRenderingMap:(id)map
{
  if (!self->_mapIsInitialized)
  {
    mapCopy = map;
    [mapCopy centerCoordinate];
    [(RAPWebBundleMapViewController *)self _didChangeCenterCoordinate:mapCopy fromEditLocationMapView:?];

    self->_mapIsInitialized = 1;
  }
}

- (void)editLocationMapView:(id)view didChangeCenterCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  viewCopy = view;
  self->_selectedCoordinate.latitude = latitude;
  self->_selectedCoordinate.longitude = longitude;
  if ([(RAPWebBundleMapViewController *)self _isStreetRAP])
  {
    [viewCopy updateAnnotationTitleWithCenterCoordinate:{latitude, longitude}];
  }

  [(RAPWebBundleMapViewController *)self _didChangeCenterCoordinate:self->_editLocationMapView fromEditLocationMapView:latitude, longitude];
}

- (id)_viewAttributes
{
  v2 = [RAPMarkerViewAttributes alloc];
  v3 = +[GEOFeatureStyleAttributes RAPLocationStyleAttributes];
  v4 = [(RAPMarkerViewAttributes *)v2 initWithTitle:0 styleAttributes:v3];

  return v4;
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

  delegate = [(RAPWebBundleMapViewController *)self delegate];
  [delegate rapWebBundleMapViewController:self marker:v16 didUpdateLocationTo:{latitude, longitude}];
}

- (BOOL)_isStreetRAP
{
  _webBundleQuestion = [(RAPWebBundleMapViewController *)self _webBundleQuestion];
  v3 = [_webBundleQuestion questionType] == 21 || objc_msgSend(_webBundleQuestion, "questionType") == 22;

  return v3;
}

- (id)_webBundleQuestion
{
  initialQuestion = [(RAPReport *)self->_report initialQuestion];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    initialQuestion2 = [(RAPReport *)self->_report initialQuestion];
  }

  else
  {
    initialQuestion2 = 0;
  }

  return initialQuestion2;
}

- (void)_didTapButton
{
  _isStreetRAP = [(RAPWebBundleMapViewController *)self _isStreetRAP];
  objc_initWeak(location, self);
  v26 = [RAPWebBundleEditLocationViewController alloc];
  [(RAPWebBundleMapViewController *)self _coordinatePickingMapRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  _context = [(RAPReport *)self->_report _context];
  mapType = [_context mapType];
  _context2 = [(RAPReport *)self->_report _context];
  isShowingTraffic = [_context2 isShowingTraffic];
  _viewAttributes = [(RAPWebBundleMapViewController *)self _viewAttributes];
  if (_isStreetRAP)
  {
    v17 = 1;
  }

  else
  {
    v17 = 7;
  }

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100A7E7EC;
  v29[3] = &unk_101637DB0;
  objc_copyWeak(&v30, location);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100A7E8A4;
  v27[3] = &unk_101661B98;
  objc_copyWeak(&v28, location);
  v18 = [(RAPWebBundleEditLocationViewController *)v26 initWithInitialCoordinates:mapType inMapRect:isShowingTraffic mapType:1158 isShowingTraffic:_viewAttributes analyticsTarget:_isStreetRAP markerViewAttributes:v17 showAnnotationTitle:self->_selectedCoordinate.latitude searchResultTypes:self->_selectedCoordinate.longitude selectionHandler:v5 cancelSelectionHandler:v7, v9, v11, v29, v27];
  editLocationViewController = self->_editLocationViewController;
  self->_editLocationViewController = v18;

  _webBundleQuestion = [(RAPWebBundleMapViewController *)self _webBundleQuestion];
  questionType = [_webBundleQuestion questionType];

  if (questionType > 0x1A)
  {
    goto LABEL_9;
  }

  if (((1 << questionType) & 0x3001200) != 0)
  {
    v22 = +[NSBundle mainBundle];
    v23 = [v22 localizedStringForKey:@"[RAP Web Module] Map Footer Place" value:@"localized string not found" table:0];
    goto LABEL_14;
  }

  if (((1 << questionType) & 0x4000C00) != 0)
  {
    goto LABEL_13;
  }

  if (((1 << questionType) & 0x600000) == 0)
  {
LABEL_9:
    if (questionType - 2 < 7)
    {
      v22 = +[NSBundle mainBundle];
      v23 = [v22 localizedStringForKey:@"[RAP Web Module] Map Footer Add" value:@"localized string not found" table:0];
      goto LABEL_14;
    }

    if (questionType != 1)
    {
      v24 = 0;
      goto LABEL_15;
    }

LABEL_13:
    v22 = +[NSBundle mainBundle];
    v23 = [v22 localizedStringForKey:@"[RAP Web Module] Map Footer Correct Location" value:@"localized string not found" table:0];
    goto LABEL_14;
  }

  v22 = +[NSBundle mainBundle];
  v23 = [v22 localizedStringForKey:@"[RAP Web Module] Map Footer Street" value:@"localized string not found" table:0];
LABEL_14:
  v24 = v23;

LABEL_15:
  v25 = [[UINavigationController alloc] initWithRootViewController:self->_editLocationViewController];
  [v25 setModalPresentationStyle:2];
  [v25 setModalInPresentation:1];
  [(RAPWebBundleEditLocationViewController *)self->_editLocationViewController setPromptText:v24];
  [(RAPWebBundleMapViewController *)self presentViewController:v25 animated:1 completion:0];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&v30);
  objc_destroyWeak(location);
}

- (void)_setupConstraints
{
  leadingAnchor = [(RAPEditLocationMapView *)self->_editLocationMapView leadingAnchor];
  view = [(RAPWebBundleMapViewController *)self view];
  leadingAnchor2 = [view leadingAnchor];
  v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v44[0] = v35;
  trailingAnchor = [(RAPEditLocationMapView *)self->_editLocationMapView trailingAnchor];
  view2 = [(RAPWebBundleMapViewController *)self view];
  trailingAnchor2 = [view2 trailingAnchor];
  v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v44[1] = v27;
  topAnchor = [(RAPEditLocationMapView *)self->_editLocationMapView topAnchor];
  view3 = [(RAPWebBundleMapViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v6 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v44[2] = v6;
  bottomAnchor = [(RAPEditLocationMapView *)self->_editLocationMapView bottomAnchor];
  view4 = [(RAPWebBundleMapViewController *)self view];
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
  [(RAPWebBundleMapViewController *)self _coordinatePickingMapRect];
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
    goto LABEL_18;
  }

  _context2 = [(RAPReport *)self->_report _context];
  mapType = [_context2 mapType];
  if (mapType <= 3)
  {
    if (mapType == 1)
    {
      v15 = 2;
      goto LABEL_18;
    }

    v17 = 1;
    v18 = 6;
    if (mapType != 3)
    {
      v18 = 0;
    }

    v19 = mapType == 2;
  }

  else if (mapType > 103)
  {
    v17 = 3;
    v18 = 7;
    if (mapType != 108)
    {
      v18 = 0;
    }

    v19 = mapType == 104;
  }

  else
  {
    v17 = 5;
    v18 = -1;
    if (mapType != 103)
    {
      v18 = 0;
    }

    v19 = mapType == 4;
  }

  if (v19)
  {
    v15 = v17;
  }

  else
  {
    v15 = v18;
  }

LABEL_18:
  _viewAttributes = [(RAPWebBundleMapViewController *)self _viewAttributes];
  v21 = [(RAPEditLocationMapView *)v3 initWithMapRect:v15 viewMode:_viewAttributes markerViewAttributes:v5, v7, v9, v11];
  editLocationMapView = self->_editLocationMapView;
  self->_editLocationMapView = v21;

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

  view = [(RAPWebBundleMapViewController *)self view];
  [view addSubview:self->_editLocationMapView];

  if (sub_10000FA08(self) != 5)
  {
    v28 = [UIButton buttonWithType:1];
    alternateButton = self->_alternateButton;
    self->_alternateButton = v28;

    v30 = [UIImage systemImageNamed:@"arrow.up.left.and.arrow.down.right"];
    v40 = [v30 imageWithRenderingMode:2];

    [(UIButton *)self->_alternateButton setImage:v40 forState:0];
    [(UIButton *)self->_alternateButton setAdjustsImageWhenHighlighted:0];
    v31 = +[UIColor whiteColor];
    [(UIButton *)self->_alternateButton setTintColor:v31];

    [(UIButton *)self->_alternateButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIButton *)self->_alternateButton setContentEdgeInsets:10.0, 10.0, 10.0, 10.0];
    v32 = self->_alternateButton;
    v33 = [UIImageSymbolConfiguration configurationWithPointSize:15.0];
    [(UIButton *)v32 setPreferredSymbolConfiguration:v33 forImageInState:0];

    [(UIButton *)self->_alternateButton addTarget:self action:"_didTapButton" forControlEvents:64];
    view2 = [(RAPWebBundleMapViewController *)self view];
    [view2 addSubview:self->_alternateButton];

    v35 = [UIVisualEffectView alloc];
    v36 = [UIBlurEffect effectWithStyle:16];
    v37 = [v35 initWithEffect:v36];
    backgroundBlurView = self->_backgroundBlurView;
    self->_backgroundBlurView = v37;

    [(UIVisualEffectView *)self->_backgroundBlurView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIVisualEffectView *)self->_backgroundBlurView _setCornerRadius:6.0];
    view3 = [(RAPWebBundleMapViewController *)self view];
    [view3 insertSubview:self->_backgroundBlurView belowSubview:self->_alternateButton];
  }
}

- ($873BFAB23BBB6E2F0B0288ED2F935688)_coordinatePickingMapRect
{
  longitude = self->_selectedCoordinate.longitude;
  if (fabs(longitude) > 180.0 || (latitude = self->_selectedCoordinate.latitude, latitude < -90.0) || latitude > 90.0)
  {
    initialQuestion = [(RAPReport *)self->_report initialQuestion];
    reportedPlace = [initialQuestion reportedPlace];
    v5 = sub_1007A3A38(reportedPlace);
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

- (RAPWebBundleMapViewController)initWithReport:(id)report coordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  reportCopy = report;
  v12.receiver = self;
  v12.super_class = RAPWebBundleMapViewController;
  v9 = [(RAPWebBundleMapViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_report, report);
    v10->_originalCoordinate.latitude = latitude;
    v10->_originalCoordinate.longitude = longitude;
    v10->_selectedCoordinate.latitude = latitude;
    v10->_selectedCoordinate.longitude = longitude;
    [(RAPWebBundleMapViewController *)v10 _setupSubviews];
    [(RAPWebBundleMapViewController *)v10 _setupConstraints];
  }

  return v10;
}

@end