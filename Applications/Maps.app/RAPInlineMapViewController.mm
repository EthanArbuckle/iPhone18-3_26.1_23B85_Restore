@interface RAPInlineMapViewController
- ($873BFAB23BBB6E2F0B0288ED2F935688)_coordinatePickingMapRect;
- (RAPInlineMapViewController)initWithReport:(id)a3 coordinate:(CLLocationCoordinate2D)a4 markerViewAttributes:(id)a5;
- (RAPInlineMapViewControllerDelegate)delegate;
- (void)_didChangeCenterCoordinate:(CLLocationCoordinate2D)a3 fromEditLocationMapView:(id)a4;
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

- (void)_didChangeCenterCoordinate:(CLLocationCoordinate2D)a3 fromEditLocationMapView:(id)a4
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v7 = a4;
  v8 = [v7 mapView];
  v9 = [v8 _mapLayer];
  v10 = [v7 mapView];
  [v10 convertCoordinate:v7 toPointToView:{latitude, longitude}];
  v12 = v11;
  v14 = v13;

  v16 = [v9 rapMarkerAtPoint:{v12, v14}];

  v15 = [(RAPInlineMapViewController *)self delegate];
  [v15 rapInlineMapViewController:self marker:v16 didUpdateLocationTo:{latitude, longitude}];
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
  v12 = [(RAPReport *)self->_report _context];
  v13 = [v12 mapType];
  v14 = [(RAPReport *)self->_report _context];
  v15 = [v14 isShowingTraffic];
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
  v17 = [(RAPWebBundleEditLocationViewController *)v3 initWithInitialCoordinates:v13 inMapRect:v15 mapType:1158 isShowingTraffic:markerViewAttributes analyticsTarget:0 markerViewAttributes:7 showAnnotationTitle:self->_selectedCoordinate.latitude searchResultTypes:self->_selectedCoordinate.longitude selectionHandler:v5 cancelSelectionHandler:v7, v9, v11, v24, v22];
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
  v39 = [(RAPEditLocationMapView *)self->_editLocationMapView leadingAnchor];
  v41 = [(RAPInlineMapViewController *)self view];
  v37 = [v41 leadingAnchor];
  v35 = [v39 constraintEqualToAnchor:v37];
  v44[0] = v35;
  v31 = [(RAPEditLocationMapView *)self->_editLocationMapView trailingAnchor];
  v33 = [(RAPInlineMapViewController *)self view];
  v29 = [v33 trailingAnchor];
  v27 = [v31 constraintEqualToAnchor:v29];
  v44[1] = v27;
  v3 = [(RAPEditLocationMapView *)self->_editLocationMapView topAnchor];
  v4 = [(RAPInlineMapViewController *)self view];
  v5 = [v4 topAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];
  v44[2] = v6;
  v7 = [(RAPEditLocationMapView *)self->_editLocationMapView bottomAnchor];
  v8 = [(RAPInlineMapViewController *)self view];
  v9 = [v8 bottomAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  v44[3] = v10;
  v11 = [NSArray arrayWithObjects:v44 count:4];
  [NSLayoutConstraint activateConstraints:v11];

  if (sub_10000FA08(self) != 5)
  {
    v42 = [(UIButton *)self->_alternateButton topAnchor];
    v40 = [(RAPEditLocationMapView *)self->_editLocationMapView topAnchor];
    v38 = [v42 constraintEqualToAnchor:v40];
    v43[0] = v38;
    v36 = [(UIButton *)self->_alternateButton leadingAnchor];
    v34 = [(RAPEditLocationMapView *)self->_editLocationMapView leadingAnchor];
    v32 = [v36 constraintEqualToAnchor:v34];
    v43[1] = v32;
    v30 = [(UIButton *)self->_alternateButton heightAnchor];
    v28 = [v30 constraintEqualToConstant:40.0];
    v43[2] = v28;
    v26 = [(UIButton *)self->_alternateButton widthAnchor];
    v25 = [(UIButton *)self->_alternateButton heightAnchor];
    v24 = [v26 constraintEqualToAnchor:v25];
    v43[3] = v24;
    v23 = [(UIVisualEffectView *)self->_backgroundBlurView centerXAnchor];
    v22 = [(UIButton *)self->_alternateButton centerXAnchor];
    v12 = [v23 constraintEqualToAnchor:v22];
    v43[4] = v12;
    v13 = [(UIVisualEffectView *)self->_backgroundBlurView centerYAnchor];
    v14 = [(UIButton *)self->_alternateButton centerYAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v43[5] = v15;
    v16 = [(UIVisualEffectView *)self->_backgroundBlurView heightAnchor];
    v17 = [v16 constraintEqualToConstant:30.0];
    v43[6] = v17;
    v18 = [(UIVisualEffectView *)self->_backgroundBlurView widthAnchor];
    v19 = [(UIVisualEffectView *)self->_backgroundBlurView heightAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];
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
  v12 = 32;
  v13 = [(RAPReport *)self->_report _context];
  v14 = [v13 isShowingTraffic];
  if (v14)
  {
    v15 = 7;
  }

  else
  {
    v12 = [(RAPReport *)self->_report _context];
    v16 = [v12 mapType];
    v17 = 3;
    v18 = 7;
    if (v16 != 108)
    {
      v18 = 0;
    }

    if (v16 != 104)
    {
      v17 = v18;
    }

    v19 = 5;
    v20 = -1;
    if (v16 != 103)
    {
      v20 = 0;
    }

    if (v16 != 4)
    {
      v19 = v20;
    }

    if (v16 <= 103)
    {
      v17 = v19;
    }

    v21 = 2;
    v22 = 1;
    v23 = 6;
    if (v16 != 3)
    {
      v23 = 0;
    }

    if (v16 != 2)
    {
      v22 = v23;
    }

    if (v16 != 1)
    {
      v21 = v22;
    }

    if (v16 <= 3)
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

  if ((v14 & 1) == 0)
  {
  }

  [(RAPEditLocationMapView *)self->_editLocationMapView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(RAPEditLocationMapView *)self->_editLocationMapView setDelegate:self];
  [(RAPEditLocationMapView *)self->_editLocationMapView setCrosshairEnabled:1];
  [(RAPEditLocationMapView *)self->_editLocationMapView setHideAllSuplementaryViews:1];
  v26 = [(RAPEditLocationMapView *)self->_editLocationMapView mapView];
  [v26 setPitchEnabled:0];

  v27 = [(RAPEditLocationMapView *)self->_editLocationMapView mapView];
  [v27 setRotateEnabled:0];

  v28 = [(RAPEditLocationMapView *)self->_editLocationMapView layer];
  [v28 setCornerRadius:10.0];

  v29 = [(RAPEditLocationMapView *)self->_editLocationMapView layer];
  [v29 setMasksToBounds:1];

  v30 = [(RAPInlineMapViewController *)self view];
  [v30 addSubview:self->_editLocationMapView];

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
    v37 = [(RAPInlineMapViewController *)self view];
    [v37 addSubview:self->_alternateButton];

    v38 = [UIVisualEffectView alloc];
    v39 = [UIBlurEffect effectWithStyle:16];
    v40 = [v38 initWithEffect:v39];
    backgroundBlurView = self->_backgroundBlurView;
    self->_backgroundBlurView = v40;

    [(UIVisualEffectView *)self->_backgroundBlurView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIVisualEffectView *)self->_backgroundBlurView _setCornerRadius:6.0];
    v42 = [(RAPInlineMapViewController *)self view];
    [v42 insertSubview:self->_backgroundBlurView belowSubview:self->_alternateButton];
  }
}

- ($873BFAB23BBB6E2F0B0288ED2F935688)_coordinatePickingMapRect
{
  longitude = self->_selectedCoordinate.longitude;
  if (fabs(longitude) > 180.0 || (latitude = self->_selectedCoordinate.latitude, latitude < -90.0) || latitude > 90.0)
  {
    v12 = [(RAPReport *)self->_report initialQuestion];
    v13 = [v12 _reportedPlace];
    v5 = sub_1007A3A38(v13);
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

- (RAPInlineMapViewController)initWithReport:(id)a3 coordinate:(CLLocationCoordinate2D)a4 markerViewAttributes:(id)a5
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v10 = a3;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = RAPInlineMapViewController;
  v12 = [(RAPInlineMapViewController *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_report, a3);
    v13->_originalCoordinate.latitude = latitude;
    v13->_originalCoordinate.longitude = longitude;
    v13->_selectedCoordinate.latitude = latitude;
    v13->_selectedCoordinate.longitude = longitude;
    v14 = [v11 copy];
    markerViewAttributes = v13->_markerViewAttributes;
    v13->_markerViewAttributes = v14;

    [(RAPInlineMapViewController *)v13 _setupSubviews];
    [(RAPInlineMapViewController *)v13 _setupConstraints];
  }

  return v13;
}

@end