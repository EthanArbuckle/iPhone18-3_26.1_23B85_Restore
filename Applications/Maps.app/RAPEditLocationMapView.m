@interface RAPEditLocationMapView
- (CGPoint)mapView:(id)a3 focusPointForPoint:(CGPoint)a4 gesture:(int64_t)a5;
- (CLLocationCoordinate2D)centerCoordinate;
- (NSLayoutAnchor)leadingContentGuide;
- (NSLayoutAnchor)trailingContentGuide;
- (NSLayoutYAxisAnchor)bottomContentGuide;
- (RAPEditLocationMapView)initWithMapRect:(id)a3 viewMode:(int64_t)a4 markerViewAttributes:(id)a5;
- (RAPEditLocationMapViewDelegate)delegate;
- (id)mapView:(id)a3 viewForAnnotation:(id)a4;
- (int64_t)viewMode;
- (void)layoutSubviews;
- (void)mapView:(id)a3 didSelectAnnotationView:(id)a4;
- (void)mapView:(id)a3 didStopRespondingToGesture:(int64_t)a4 zoomDirection:(int64_t)a5 zoomGestureType:(int64_t)a6 didDecelerate:(BOOL)a7 tiltDirection:(int64_t)a8;
- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4;
- (void)mapViewDidFinishRenderingMap:(id)a3 fullyRendered:(BOOL)a4;
- (void)selectedMapModeDidChange:(id)a3;
- (void)setAnnotationTitle:(id)a3;
- (void)setCenterCoordinate:(CLLocationCoordinate2D)a3;
- (void)setCrosshairEnabled:(BOOL)a3;
- (void)setHideAllSuplementaryViews:(BOOL)a3;
- (void)setPrompt:(id)a3;
- (void)setViewMode:(int64_t)a3;
- (void)setupConstraints;
- (void)setupDescriptionViewAndAdditionalConstraints;
- (void)updateAnnotationTitleWithCenterCoordinate:(CLLocationCoordinate2D)a3;
- (void)updateAttributionInsets;
- (void)updateCrosshairPosition;
@end

@implementation RAPEditLocationMapView

- (RAPEditLocationMapViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateAnnotationTitleWithCenterCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v6 = [(RAPEditLocationMapView *)self mapView];
  v7 = [v6 _mapLayer];
  v8 = [(RAPEditLocationMapView *)self mapView];
  [v8 convertCoordinate:self toPointToView:{latitude, longitude}];
  v9 = [v7 rapMarkerAtPoint:?];

  [(RAPEditLocationMapView *)self setAnnotationTitle:0];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [v9 featureHandles];
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        if ([*(*(&v16 + 1) + 8 * i) featureType] == 1)
        {
          v15 = [v9 name];
          [(RAPEditLocationMapView *)self setAnnotationTitle:v15];

          goto LABEL_11;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)setHideAllSuplementaryViews:(BOOL)a3
{
  v3 = a3;
  self->_hideAllSuplementaryViews = a3;
  v5 = [(RAPEditLocationMapView *)self floatingControlsView];
  [v5 setHidden:v3];

  v6 = [(RAPEditLocationMapView *)self descriptionView];
  [v6 setHidden:v3];
}

- (NSLayoutAnchor)trailingContentGuide
{
  v2 = [(RAPEditLocationMapView *)self floatingControlsView];
  v3 = [v2 trailingAnchor];

  return v3;
}

- (NSLayoutAnchor)leadingContentGuide
{
  v2 = [(RAPEditLocationMapView *)self floatingControlsView];
  v3 = [v2 leadingAnchor];

  return v3;
}

- (NSLayoutYAxisAnchor)bottomContentGuide
{
  v2 = [(RAPEditLocationMapView *)self floatingControlsView];
  v3 = [v2 topAnchor];

  return v3;
}

- (void)mapView:(id)a3 didStopRespondingToGesture:(int64_t)a4 zoomDirection:(int64_t)a5 zoomGestureType:(int64_t)a6 didDecelerate:(BOOL)a7 tiltDirection:(int64_t)a8
{
  v11 = a3;
  if (a4 == 1)
  {
    v14 = v11;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = WeakRetained;
    if (a5 == 1)
    {
      [WeakRetained editLocationMapViewFinishedZoomingIn:self];
    }

    else
    {
      [WeakRetained editLocationMapViewFinishedZoomingOut:self];
    }
  }

  else
  {
    if (a4)
    {
      goto LABEL_8;
    }

    v14 = v11;
    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 editLocationMapViewFinishedPanning:self];
  }

  v11 = v14;
LABEL_8:
}

- (CGPoint)mapView:(id)a3 focusPointForPoint:(CGPoint)a4 gesture:(int64_t)a5
{
  if (a5 == 1)
  {
    v6 = [(RAPEditLocationMapView *)self mapView:a3];
    v7 = [(RAPEditLocationMapView *)self mapView];
    [v7 centerCoordinate];
    v9 = v8;
    v11 = v10;
    v12 = [(RAPEditLocationMapView *)self mapView];
    [v6 convertCoordinate:v12 toPointToView:{v9, v11}];
    x = v13;
    y = v15;
  }

  else
  {
    y = a4.y;
    x = a4.x;
  }

  v17 = x;
  v18 = y;
  result.y = v18;
  result.x = v17;
  return result;
}

- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4
{
  if (self->_userInteracted)
  {
    v6 = a3;
    v11 = [(RAPEditLocationMapView *)self delegate];
    [v6 centerCoordinate];
    v8 = v7;
    v10 = v9;

    [v11 editLocationMapView:self didChangeCenterCoordinate:{v8, v10}];
  }
}

- (void)mapView:(id)a3 didSelectAnnotationView:(id)a4
{
  v10 = a4;
  v6 = a3;
  v7 = [v10 annotation];
  [v6 deselectAnnotation:v7 animated:0];

  v8 = [v10 annotation];
  objc_opt_class();
  LOBYTE(v7) = objc_opt_isKindOfClass();

  if (v7)
  {
    v9 = [(RAPEditLocationMapView *)self delegate];
    [v9 editLocationMapView:self didSelectAnnotationView:v10];
  }
}

- (id)mapView:(id)a3 viewForAnnotation:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v6 dequeueReusableAnnotationViewWithIdentifier:v9];

    [v10 setAnnotation:v7];
    LODWORD(v11) = 1148846080;
    [v10 setDisplayPriority:v11];
    v12 = +[RAPEntryPoint entryPointStyleAttributes];
    v13 = [v12 copy];
    [v10 _setStyleAttributes:v13];

LABEL_5:
    [v10 setSubtitleVisibility:2];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v10 = [v6 dequeueReusableAnnotationViewWithIdentifier:v15];

    [v10 setAnnotation:v7];
    LODWORD(v16) = 1148846080;
    [v10 setDisplayPriority:v16];
    v17 = [(RAPEditLocationMapView *)self crosshairAnnotationView];
    v18 = [v17 _styleAttributes];
    v19 = [v18 copy];
    [v10 _setStyleAttributes:v19];

    [v10 setSelected:0];
    goto LABEL_5;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (int64_t)viewMode
{
  v2 = [(RAPEditLocationMapView *)self mapModeSegmentedControl];
  v3 = [v2 selectedViewMode];

  return v3;
}

- (void)setViewMode:(int64_t)a3
{
  v5 = [(RAPEditLocationMapView *)self mapModeSegmentedControl];
  v6 = [v5 selectedViewMode];

  if (v6 != a3)
  {
    if ((a3 - 1) > 6)
    {
      v7 = 0;
    }

    else
    {
      v7 = qword_101215BC8[a3 - 1];
    }

    v8 = [(RAPEditLocationMapView *)self mapView];
    [v8 setMapType:v7];

    v9 = [(RAPEditLocationMapView *)self mapModeSegmentedControl];
    [v9 setSelectedViewMode:a3];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained editLocationMapView:self didChangeViewMode:a3];
  }
}

- (void)setAnnotationTitle:(id)a3
{
  v7 = a3;
  if (([(NSString *)self->_annotationTitle isEqual:?]& 1) == 0)
  {
    v4 = [v7 copy];
    annotationTitle = self->_annotationTitle;
    self->_annotationTitle = v4;

    v6 = [(RAPEditLocationMapView *)self crosshairAnnotationView];
    [v6 setAnnotationTitle:v7];
  }
}

- (void)setPrompt:(id)a3
{
  v6 = a3;
  -[BlurredBackgroundLabel setHidden:](self->_descriptionView, "setHidden:", [v6 length] == 0);
  if (![(NSString *)self->_prompt isEqualToString:v6])
  {
    v4 = [v6 copy];
    prompt = self->_prompt;
    self->_prompt = v4;

    [(BlurredBackgroundLabel *)self->_descriptionView setText:v6];
  }
}

- (CLLocationCoordinate2D)centerCoordinate
{
  v2 = [(RAPEditLocationMapView *)self mapView];
  [v2 centerCoordinate];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.longitude = v8;
  result.latitude = v7;
  return result;
}

- (void)setCenterCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v5 = [(RAPEditLocationMapView *)self mapView];
  [v5 setCenterCoordinate:{latitude, longitude}];
}

- (void)mapViewDidFinishRenderingMap:(id)a3 fullyRendered:(BOOL)a4
{
  v5 = [(RAPEditLocationMapView *)self crosshairAnnotationView:a3];
  [v5 setAlpha:1.0];

  [(RAPEditLocationMapView *)self updateCrosshairPosition];
  v6 = [(RAPEditLocationMapView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(RAPEditLocationMapView *)self delegate];
    [v8 editLocationMapViewFinishedRenderingMap:self];
  }
}

- (void)setCrosshairEnabled:(BOOL)a3
{
  v3 = a3;
  self->_crosshairEnabled = a3;
  v4 = [(RAPEditLocationMapView *)self crosshairAnnotationView];
  [v4 setHidden:!v3];
}

- (void)selectedMapModeDidChange:(id)a3
{
  v4 = [(RAPEditLocationMapView *)self mapModeSegmentedControl];
  v5 = [v4 selectedViewMode];

  if (v5 == 2)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  v7 = [(RAPEditLocationMapView *)self mapView];
  v8 = v7;
  if ((v6 - 1) > 6)
  {
    v9 = 0;
  }

  else
  {
    v9 = qword_101215BC8[v6 - 1];
  }

  [v7 setMapType:v9];

  v10 = [(RAPEditLocationMapView *)self mapView];
  [v10 setShowsTraffic:v6 == 7];

  v11 = [(RAPEditLocationMapView *)self delegate];
  [v11 editLocationMapView:self didChangeViewMode:v6];
}

- (void)updateAttributionInsets
{
  [(UIView *)self->_floatingControlsView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height];
  v4 = v3;
  v5 = [(RAPEditLocationMapView *)self superview];
  [v5 safeAreaInsets];
  v7 = v4 + v6 + 8.0;

  v8 = +[UIApplication sharedApplication];
  v9 = [v8 userInterfaceLayoutDirection];

  mapView = self->_mapView;
  v15 = [(RAPEditLocationMapView *)self superview];
  [v15 safeAreaInsets];
  v13 = v12 + 8.0;
  if (v9 == 1)
  {
    v14 = 0.0;
  }

  else
  {
    v13 = 0.0;
    v14 = v11 + 8.0;
  }

  [(MKMapView *)mapView _setAttributionInsets:0.0, v13, v7, v14];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = RAPEditLocationMapView;
  [(RAPEditLocationMapView *)&v3 layoutSubviews];
  [(RAPEditLocationMapView *)self updateCrosshairPosition];
  [(RAPEditLocationMapView *)self updateAttributionInsets];
}

- (void)updateCrosshairPosition
{
  v3 = [(RAPEditLocationMapView *)self crosshairAnnotationView];

  if (v3)
  {
    v4 = [(RAPEditLocationMapView *)self mapView];
    v5 = [(RAPEditLocationMapView *)self mapView];
    [v5 centerCoordinate];
    v7 = v6;
    v9 = v8;
    v10 = [(RAPEditLocationMapView *)self mapView];
    [v4 convertCoordinate:v10 toPointToView:{v7, v9}];
    v12 = v11;
    v14 = v13;

    v15 = [(RAPEditLocationMapView *)self mapView];
    v16 = [(RAPEditLocationMapView *)self mapView];
    [v16 center];
    v18 = v17;
    v20 = v19;
    v21 = [(RAPEditLocationMapView *)self mapView];
    v22 = [v21 superview];
    [v15 convertPoint:v22 fromView:{v18, v20}];
    v24 = v23;

    [(RAPMKMarkerAnnotationView *)self->_crosshairAnnotationView centerOffset];
    v26 = v25;
    if (__isfinited())
    {
      v27 = v14 - v24 + 1.5 + v26;
      if (__isfinited())
      {
        crosshairAnnotationView = self->_crosshairAnnotationView;

        [(RAPMKMarkerAnnotationView *)crosshairAnnotationView setCenter:v12, v27 + v24];
      }
    }
  }
}

- (void)setupConstraints
{
  v39 = [(RAPEditLocationMapView *)self mapView];
  v38 = [v39 leadingAnchor];
  v37 = [(RAPEditLocationMapView *)self leadingAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  v40[0] = v36;
  v35 = [(RAPEditLocationMapView *)self mapView];
  v34 = [v35 trailingAnchor];
  v33 = [(RAPEditLocationMapView *)self trailingAnchor];
  v32 = [v34 constraintEqualToAnchor:v33];
  v40[1] = v32;
  v31 = [(RAPEditLocationMapView *)self mapView];
  v30 = [v31 topAnchor];
  v29 = [(RAPEditLocationMapView *)self topAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v40[2] = v28;
  v27 = [(RAPEditLocationMapView *)self mapView];
  v26 = [v27 bottomAnchor];
  v25 = [(RAPEditLocationMapView *)self bottomAnchor];
  v24 = [v26 constraintEqualToAnchor:v25];
  v40[3] = v24;
  v23 = [(RAPEditLocationMapView *)self floatingControlsView];
  v21 = [v23 leadingAnchor];
  v22 = [(RAPEditLocationMapView *)self layoutMarginsGuide];
  v20 = [v22 leadingAnchor];
  v19 = [v21 constraintEqualToAnchor:v20];
  v40[4] = v19;
  v18 = [(RAPEditLocationMapView *)self floatingControlsView];
  v16 = [v18 trailingAnchor];
  v17 = [(RAPEditLocationMapView *)self layoutMarginsGuide];
  v3 = [v17 trailingAnchor];
  v4 = [v16 constraintEqualToAnchor:v3];
  v40[5] = v4;
  v5 = [(RAPEditLocationMapView *)self floatingControlsView];
  v6 = [v5 bottomAnchor];
  v7 = [(RAPEditLocationMapView *)self mapView];
  v8 = [v7 safeAreaLayoutGuide];
  v9 = [v8 bottomAnchor];
  v10 = [v6 constraintEqualToAnchor:v9 constant:-8.0];
  v40[6] = v10;
  v11 = [NSArray arrayWithObjects:v40 count:7];
  [NSLayoutConstraint activateConstraints:v11];

  v12 = +[GEOPlatform sharedPlatform];
  LODWORD(v7) = [v12 isInternalInstall];

  if (v7)
  {
    LODWORD(v13) = 1148846080;
    v14 = [(WatermarkView *)self->_watermarkView _maps_constraintsEqualToEdgesOfView:self priority:v13];
    v15 = [v14 allConstraints];
    [NSLayoutConstraint activateConstraints:v15];
  }

  [(RAPEditLocationMapView *)self setupDescriptionViewAndAdditionalConstraints];
  [(RAPEditLocationMapView *)self updateCrosshairPosition];
}

- (void)setupDescriptionViewAndAdditionalConstraints
{
  v18 = [(RAPEditLocationMapView *)self descriptionView];
  v16 = [v18 topAnchor];
  v17 = [(RAPEditLocationMapView *)self mapView];
  v15 = [v17 topAnchor];
  v14 = [v16 constraintEqualToAnchor:v15];
  v19[0] = v14;
  v13 = [(RAPEditLocationMapView *)self descriptionView];
  v3 = [v13 leadingAnchor];
  v4 = [(RAPEditLocationMapView *)self mapView];
  v5 = [v4 leadingAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];
  v19[1] = v6;
  v7 = [(RAPEditLocationMapView *)self descriptionView];
  v8 = [v7 trailingAnchor];
  v9 = [(RAPEditLocationMapView *)self mapView];
  v10 = [v9 trailingAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v19[2] = v11;
  v12 = [NSArray arrayWithObjects:v19 count:3];
  [NSLayoutConstraint activateConstraints:v12];
}

- (RAPEditLocationMapView)initWithMapRect:(id)a3 viewMode:(int64_t)a4 markerViewAttributes:(id)a5
{
  var1 = a3.var1.var1;
  var0 = a3.var1.var0;
  v8 = a3.var0.var1;
  v9 = a3.var0.var0;
  v11 = a5;
  v50.receiver = self;
  v50.super_class = RAPEditLocationMapView;
  v12 = [(RAPEditLocationMapView *)&v50 init];
  if (!v12)
  {
    goto LABEL_27;
  }

  v13 = [[MapViewModeSelector alloc] initWithDesiredViewModes:&off_1016ECBC0];
  mapModeSegmentedControl = v12->_mapModeSegmentedControl;
  v12->_mapModeSegmentedControl = v13;

  [(MapViewModeSelector *)v12->_mapModeSegmentedControl setSelectedViewMode:a4];
  [(MapViewModeSelector *)v12->_mapModeSegmentedControl addTarget:v12 action:"selectedMapModeDidChange:" forControlEvents:4096];
  v15 = sub_1007E68A8(v12->_mapModeSegmentedControl);
  floatingControlsView = v12->_floatingControlsView;
  v12->_floatingControlsView = v15;

  v17 = [MKMapView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v21 = [v17 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  mapView = v12->_mapView;
  v12->_mapView = v21;

  [(MKMapView *)v12->_mapView setShowsUserLocation:1];
  [(MKMapView *)v12->_mapView _setShowsVenues:1];
  [(MKMapView *)v12->_mapView setShowsAttribution:0];
  [(MKMapView *)v12->_mapView setShowsCompass:0];
  [(MKMapView *)v12->_mapView _setEdgeInsets:40.0, 0.0, 0.0, 0.0];
  [(MKMapView *)v12->_mapView setDelegate:v12];
  v23 = [(MKMapView *)v12->_mapView _mapLayer];
  [v23 setStaysCenteredDuringPinch:1];

  v24 = [(MKMapView *)v12->_mapView _mapLayer];
  [v24 setStaysCenteredDuringRotation:1];

  if (sub_10000FA08(v12) == 5)
  {
    v25 = +[UIColor systemBlueColor];
    [(MKMapView *)v12->_mapView setTintColor:v25];
  }

  v26 = v12->_mapView;
  v27 = objc_opt_class();
  v28 = objc_opt_class();
  v29 = NSStringFromClass(v28);
  [(MKMapView *)v26 registerClass:v27 forAnnotationViewWithReuseIdentifier:v29];

  [(MKMapView *)v12->_mapView setBackdropViewQualityChangingDisabled:1];
  if ((a4 - 1) > 6)
  {
    v30 = 0;
  }

  else
  {
    v30 = qword_101215BC8[a4 - 1];
  }

  [(MKMapView *)v12->_mapView setMapType:v30];
  [(MKMapView *)v12->_mapView setShowsTraffic:a4 == 7];
  if (v9 != MKMapRectNull.origin.x || v8 != MKMapRectNull.origin.y)
  {
    [(MKMapView *)v12->_mapView setVisibleMapRect:v9, v8, var0, var1];
  }

  v31 = v12->_mapView;
  v49 = 0;
  v48 = 0u;
  v46 = 0u;
  _MKCartographicConfigurationDefault();
  v47 = vdupq_n_s64(1uLL);
  *&v48 = 0;
  if (a4 > 4)
  {
    if (a4 == 5)
    {
      v32 = vdupq_n_s64(1uLL);
    }

    else
    {
      if (a4 != 6)
      {
        if (a4 == 7)
        {
          v46.i64[1] = 2;
        }

        goto LABEL_24;
      }

      v32 = xmmword_1011FDDA0;
    }

    v46 = v32;
  }

  else
  {
    switch(a4)
    {
      case 1:
        v46 = vdupq_n_s64(1uLL);
        v47.i64[0] = 0;
        break;
      case 2:
        v47.i64[0] = 0;
        v46 = 1uLL;
        break;
      case 3:
        v46.i64[1] = 4;
        v47.i64[1] = 3;
        break;
    }
  }

LABEL_24:
  [(MKMapView *)v31 _setCartographicConfiguration:&v46 animated:0];
  [(MKMapView *)v12->_mapView setTranslatesAutoresizingMaskIntoConstraints:0, *&v46, *&v47, v48, v49];
  [(RAPEditLocationMapView *)v12 addSubview:v12->_mapView];
  v33 = +[GEOPlatform sharedPlatform];
  v34 = [v33 isInternalInstall];

  if (v34)
  {
    v35 = [[WatermarkView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    watermarkView = v12->_watermarkView;
    v12->_watermarkView = v35;

    [(WatermarkView *)v12->_watermarkView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(RAPEditLocationMapView *)v12 addSubview:v12->_watermarkView];
  }

  [(RAPEditLocationMapView *)v12 addSubview:v12->_floatingControlsView];
  v37 = objc_alloc_init(RAPMKMarkerAnnotationView);
  crosshairAnnotationView = v12->_crosshairAnnotationView;
  v12->_crosshairAnnotationView = v37;

  [(RAPMKMarkerAnnotationView *)v12->_crosshairAnnotationView setSelected:1];
  v39 = [v11 styleAttributes];
  [(RAPMKMarkerAnnotationView *)v12->_crosshairAnnotationView _setStyleAttributes:v39];

  [(RAPMKMarkerAnnotationView *)v12->_crosshairAnnotationView setAlpha:0.0];
  [(RAPMKMarkerAnnotationView *)v12->_crosshairAnnotationView setHidden:1];
  v40 = [(RAPEditLocationMapView *)v12 mapView];
  [v40 addSubview:v12->_crosshairAnnotationView];

  v41 = [[BlurredBackgroundLabel alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  descriptionView = v12->_descriptionView;
  v12->_descriptionView = v41;

  v43 = objc_opt_class();
  v44 = NSStringFromClass(v43);
  [(BlurredBackgroundLabel *)v12->_descriptionView setGroupName:v44];

  [(BlurredBackgroundLabel *)v12->_descriptionView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MKMapView *)v12->_mapView addSubview:v12->_descriptionView];
  [(RAPEditLocationMapView *)v12 setupConstraints];
LABEL_27:

  return v12;
}

@end