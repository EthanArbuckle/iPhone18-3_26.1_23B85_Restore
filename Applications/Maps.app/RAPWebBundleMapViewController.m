@interface RAPWebBundleMapViewController
- ($873BFAB23BBB6E2F0B0288ED2F935688)_coordinatePickingMapRect;
- (BOOL)_isStreetRAP;
- (RAPWebBundleMapDelegate)delegate;
- (RAPWebBundleMapViewController)initWithReport:(id)a3 coordinate:(CLLocationCoordinate2D)a4;
- (id)_viewAttributes;
- (id)_webBundleQuestion;
- (void)_didChangeCenterCoordinate:(CLLocationCoordinate2D)a3 fromEditLocationMapView:(id)a4;
- (void)_didTapButton;
- (void)_setupConstraints;
- (void)_setupSubviews;
- (void)editLocationMapView:(id)a3 didChangeCenterCoordinate:(CLLocationCoordinate2D)a4;
- (void)editLocationMapViewFinishedRenderingMap:(id)a3;
@end

@implementation RAPWebBundleMapViewController

- (RAPWebBundleMapDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)editLocationMapViewFinishedRenderingMap:(id)a3
{
  if (!self->_mapIsInitialized)
  {
    v4 = a3;
    [v4 centerCoordinate];
    [(RAPWebBundleMapViewController *)self _didChangeCenterCoordinate:v4 fromEditLocationMapView:?];

    self->_mapIsInitialized = 1;
  }
}

- (void)editLocationMapView:(id)a3 didChangeCenterCoordinate:(CLLocationCoordinate2D)a4
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v7 = a3;
  self->_selectedCoordinate.latitude = latitude;
  self->_selectedCoordinate.longitude = longitude;
  if ([(RAPWebBundleMapViewController *)self _isStreetRAP])
  {
    [v7 updateAnnotationTitleWithCenterCoordinate:{latitude, longitude}];
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

  v15 = [(RAPWebBundleMapViewController *)self delegate];
  [v15 rapWebBundleMapViewController:self marker:v16 didUpdateLocationTo:{latitude, longitude}];
}

- (BOOL)_isStreetRAP
{
  v2 = [(RAPWebBundleMapViewController *)self _webBundleQuestion];
  v3 = [v2 questionType] == 21 || objc_msgSend(v2, "questionType") == 22;

  return v3;
}

- (id)_webBundleQuestion
{
  v3 = [(RAPReport *)self->_report initialQuestion];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(RAPReport *)self->_report initialQuestion];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_didTapButton
{
  v3 = [(RAPWebBundleMapViewController *)self _isStreetRAP];
  objc_initWeak(location, self);
  v26 = [RAPWebBundleEditLocationViewController alloc];
  [(RAPWebBundleMapViewController *)self _coordinatePickingMapRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(RAPReport *)self->_report _context];
  v13 = [v12 mapType];
  v14 = [(RAPReport *)self->_report _context];
  v15 = [v14 isShowingTraffic];
  v16 = [(RAPWebBundleMapViewController *)self _viewAttributes];
  if (v3)
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
  v18 = [(RAPWebBundleEditLocationViewController *)v26 initWithInitialCoordinates:v13 inMapRect:v15 mapType:1158 isShowingTraffic:v16 analyticsTarget:v3 markerViewAttributes:v17 showAnnotationTitle:self->_selectedCoordinate.latitude searchResultTypes:self->_selectedCoordinate.longitude selectionHandler:v5 cancelSelectionHandler:v7, v9, v11, v29, v27];
  editLocationViewController = self->_editLocationViewController;
  self->_editLocationViewController = v18;

  v20 = [(RAPWebBundleMapViewController *)self _webBundleQuestion];
  v21 = [v20 questionType];

  if (v21 > 0x1A)
  {
    goto LABEL_9;
  }

  if (((1 << v21) & 0x3001200) != 0)
  {
    v22 = +[NSBundle mainBundle];
    v23 = [v22 localizedStringForKey:@"[RAP Web Module] Map Footer Place" value:@"localized string not found" table:0];
    goto LABEL_14;
  }

  if (((1 << v21) & 0x4000C00) != 0)
  {
    goto LABEL_13;
  }

  if (((1 << v21) & 0x600000) == 0)
  {
LABEL_9:
    if (v21 - 2 < 7)
    {
      v22 = +[NSBundle mainBundle];
      v23 = [v22 localizedStringForKey:@"[RAP Web Module] Map Footer Add" value:@"localized string not found" table:0];
      goto LABEL_14;
    }

    if (v21 != 1)
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
  v39 = [(RAPEditLocationMapView *)self->_editLocationMapView leadingAnchor];
  v41 = [(RAPWebBundleMapViewController *)self view];
  v37 = [v41 leadingAnchor];
  v35 = [v39 constraintEqualToAnchor:v37];
  v44[0] = v35;
  v31 = [(RAPEditLocationMapView *)self->_editLocationMapView trailingAnchor];
  v33 = [(RAPWebBundleMapViewController *)self view];
  v29 = [v33 trailingAnchor];
  v27 = [v31 constraintEqualToAnchor:v29];
  v44[1] = v27;
  v3 = [(RAPEditLocationMapView *)self->_editLocationMapView topAnchor];
  v4 = [(RAPWebBundleMapViewController *)self view];
  v5 = [v4 topAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];
  v44[2] = v6;
  v7 = [(RAPEditLocationMapView *)self->_editLocationMapView bottomAnchor];
  v8 = [(RAPWebBundleMapViewController *)self view];
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
  [(RAPWebBundleMapViewController *)self _coordinatePickingMapRect];
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
    goto LABEL_18;
  }

  v12 = [(RAPReport *)self->_report _context];
  v16 = [v12 mapType];
  if (v16 <= 3)
  {
    if (v16 == 1)
    {
      v15 = 2;
      goto LABEL_18;
    }

    v17 = 1;
    v18 = 6;
    if (v16 != 3)
    {
      v18 = 0;
    }

    v19 = v16 == 2;
  }

  else if (v16 > 103)
  {
    v17 = 3;
    v18 = 7;
    if (v16 != 108)
    {
      v18 = 0;
    }

    v19 = v16 == 104;
  }

  else
  {
    v17 = 5;
    v18 = -1;
    if (v16 != 103)
    {
      v18 = 0;
    }

    v19 = v16 == 4;
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
  v20 = [(RAPWebBundleMapViewController *)self _viewAttributes];
  v21 = [(RAPEditLocationMapView *)v3 initWithMapRect:v15 viewMode:v20 markerViewAttributes:v5, v7, v9, v11];
  editLocationMapView = self->_editLocationMapView;
  self->_editLocationMapView = v21;

  if ((v14 & 1) == 0)
  {
  }

  [(RAPEditLocationMapView *)self->_editLocationMapView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(RAPEditLocationMapView *)self->_editLocationMapView setDelegate:self];
  [(RAPEditLocationMapView *)self->_editLocationMapView setCrosshairEnabled:1];
  [(RAPEditLocationMapView *)self->_editLocationMapView setHideAllSuplementaryViews:1];
  v23 = [(RAPEditLocationMapView *)self->_editLocationMapView mapView];
  [v23 setPitchEnabled:0];

  v24 = [(RAPEditLocationMapView *)self->_editLocationMapView mapView];
  [v24 setRotateEnabled:0];

  v25 = [(RAPEditLocationMapView *)self->_editLocationMapView layer];
  [v25 setCornerRadius:10.0];

  v26 = [(RAPEditLocationMapView *)self->_editLocationMapView layer];
  [v26 setMasksToBounds:1];

  v27 = [(RAPWebBundleMapViewController *)self view];
  [v27 addSubview:self->_editLocationMapView];

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
    v34 = [(RAPWebBundleMapViewController *)self view];
    [v34 addSubview:self->_alternateButton];

    v35 = [UIVisualEffectView alloc];
    v36 = [UIBlurEffect effectWithStyle:16];
    v37 = [v35 initWithEffect:v36];
    backgroundBlurView = self->_backgroundBlurView;
    self->_backgroundBlurView = v37;

    [(UIVisualEffectView *)self->_backgroundBlurView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIVisualEffectView *)self->_backgroundBlurView _setCornerRadius:6.0];
    v39 = [(RAPWebBundleMapViewController *)self view];
    [v39 insertSubview:self->_backgroundBlurView belowSubview:self->_alternateButton];
  }
}

- ($873BFAB23BBB6E2F0B0288ED2F935688)_coordinatePickingMapRect
{
  longitude = self->_selectedCoordinate.longitude;
  if (fabs(longitude) > 180.0 || (latitude = self->_selectedCoordinate.latitude, latitude < -90.0) || latitude > 90.0)
  {
    v12 = [(RAPReport *)self->_report initialQuestion];
    v13 = [v12 reportedPlace];
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

- (RAPWebBundleMapViewController)initWithReport:(id)a3 coordinate:(CLLocationCoordinate2D)a4
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v8 = a3;
  v12.receiver = self;
  v12.super_class = RAPWebBundleMapViewController;
  v9 = [(RAPWebBundleMapViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_report, a3);
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