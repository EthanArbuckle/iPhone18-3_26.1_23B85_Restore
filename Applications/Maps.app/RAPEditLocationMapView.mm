@interface RAPEditLocationMapView
- (CGPoint)mapView:(id)view focusPointForPoint:(CGPoint)point gesture:(int64_t)gesture;
- (CLLocationCoordinate2D)centerCoordinate;
- (NSLayoutAnchor)leadingContentGuide;
- (NSLayoutAnchor)trailingContentGuide;
- (NSLayoutYAxisAnchor)bottomContentGuide;
- (RAPEditLocationMapView)initWithMapRect:(id)rect viewMode:(int64_t)mode markerViewAttributes:(id)attributes;
- (RAPEditLocationMapViewDelegate)delegate;
- (id)mapView:(id)view viewForAnnotation:(id)annotation;
- (int64_t)viewMode;
- (void)layoutSubviews;
- (void)mapView:(id)view didSelectAnnotationView:(id)annotationView;
- (void)mapView:(id)view didStopRespondingToGesture:(int64_t)gesture zoomDirection:(int64_t)direction zoomGestureType:(int64_t)type didDecelerate:(BOOL)decelerate tiltDirection:(int64_t)tiltDirection;
- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated;
- (void)mapViewDidFinishRenderingMap:(id)map fullyRendered:(BOOL)rendered;
- (void)selectedMapModeDidChange:(id)change;
- (void)setAnnotationTitle:(id)title;
- (void)setCenterCoordinate:(CLLocationCoordinate2D)coordinate;
- (void)setCrosshairEnabled:(BOOL)enabled;
- (void)setHideAllSuplementaryViews:(BOOL)views;
- (void)setPrompt:(id)prompt;
- (void)setViewMode:(int64_t)mode;
- (void)setupConstraints;
- (void)setupDescriptionViewAndAdditionalConstraints;
- (void)updateAnnotationTitleWithCenterCoordinate:(CLLocationCoordinate2D)coordinate;
- (void)updateAttributionInsets;
- (void)updateCrosshairPosition;
@end

@implementation RAPEditLocationMapView

- (RAPEditLocationMapViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updateAnnotationTitleWithCenterCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  mapView = [(RAPEditLocationMapView *)self mapView];
  _mapLayer = [mapView _mapLayer];
  mapView2 = [(RAPEditLocationMapView *)self mapView];
  [mapView2 convertCoordinate:self toPointToView:{latitude, longitude}];
  v9 = [_mapLayer rapMarkerAtPoint:?];

  [(RAPEditLocationMapView *)self setAnnotationTitle:0];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  featureHandles = [v9 featureHandles];
  v11 = [featureHandles countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(featureHandles);
        }

        if ([*(*(&v16 + 1) + 8 * i) featureType] == 1)
        {
          name = [v9 name];
          [(RAPEditLocationMapView *)self setAnnotationTitle:name];

          goto LABEL_11;
        }
      }

      v12 = [featureHandles countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)setHideAllSuplementaryViews:(BOOL)views
{
  viewsCopy = views;
  self->_hideAllSuplementaryViews = views;
  floatingControlsView = [(RAPEditLocationMapView *)self floatingControlsView];
  [floatingControlsView setHidden:viewsCopy];

  descriptionView = [(RAPEditLocationMapView *)self descriptionView];
  [descriptionView setHidden:viewsCopy];
}

- (NSLayoutAnchor)trailingContentGuide
{
  floatingControlsView = [(RAPEditLocationMapView *)self floatingControlsView];
  trailingAnchor = [floatingControlsView trailingAnchor];

  return trailingAnchor;
}

- (NSLayoutAnchor)leadingContentGuide
{
  floatingControlsView = [(RAPEditLocationMapView *)self floatingControlsView];
  leadingAnchor = [floatingControlsView leadingAnchor];

  return leadingAnchor;
}

- (NSLayoutYAxisAnchor)bottomContentGuide
{
  floatingControlsView = [(RAPEditLocationMapView *)self floatingControlsView];
  topAnchor = [floatingControlsView topAnchor];

  return topAnchor;
}

- (void)mapView:(id)view didStopRespondingToGesture:(int64_t)gesture zoomDirection:(int64_t)direction zoomGestureType:(int64_t)type didDecelerate:(BOOL)decelerate tiltDirection:(int64_t)tiltDirection
{
  viewCopy = view;
  if (gesture == 1)
  {
    v14 = viewCopy;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v12 = WeakRetained;
    if (direction == 1)
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
    if (gesture)
    {
      goto LABEL_8;
    }

    v14 = viewCopy;
    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 editLocationMapViewFinishedPanning:self];
  }

  viewCopy = v14;
LABEL_8:
}

- (CGPoint)mapView:(id)view focusPointForPoint:(CGPoint)point gesture:(int64_t)gesture
{
  if (gesture == 1)
  {
    v6 = [(RAPEditLocationMapView *)self mapView:view];
    mapView = [(RAPEditLocationMapView *)self mapView];
    [mapView centerCoordinate];
    v9 = v8;
    v11 = v10;
    mapView2 = [(RAPEditLocationMapView *)self mapView];
    [v6 convertCoordinate:mapView2 toPointToView:{v9, v11}];
    x = v13;
    y = v15;
  }

  else
  {
    y = point.y;
    x = point.x;
  }

  v17 = x;
  v18 = y;
  result.y = v18;
  result.x = v17;
  return result;
}

- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated
{
  if (self->_userInteracted)
  {
    viewCopy = view;
    delegate = [(RAPEditLocationMapView *)self delegate];
    [viewCopy centerCoordinate];
    v8 = v7;
    v10 = v9;

    [delegate editLocationMapView:self didChangeCenterCoordinate:{v8, v10}];
  }
}

- (void)mapView:(id)view didSelectAnnotationView:(id)annotationView
{
  annotationViewCopy = annotationView;
  viewCopy = view;
  annotation = [annotationViewCopy annotation];
  [viewCopy deselectAnnotation:annotation animated:0];

  annotation2 = [annotationViewCopy annotation];
  objc_opt_class();
  LOBYTE(annotation) = objc_opt_isKindOfClass();

  if (annotation)
  {
    delegate = [(RAPEditLocationMapView *)self delegate];
    [delegate editLocationMapView:self didSelectAnnotationView:annotationViewCopy];
  }
}

- (id)mapView:(id)view viewForAnnotation:(id)annotation
{
  viewCopy = view;
  annotationCopy = annotation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [viewCopy dequeueReusableAnnotationViewWithIdentifier:v9];

    [v10 setAnnotation:annotationCopy];
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
    v10 = [viewCopy dequeueReusableAnnotationViewWithIdentifier:v15];

    [v10 setAnnotation:annotationCopy];
    LODWORD(v16) = 1148846080;
    [v10 setDisplayPriority:v16];
    crosshairAnnotationView = [(RAPEditLocationMapView *)self crosshairAnnotationView];
    _styleAttributes = [crosshairAnnotationView _styleAttributes];
    v19 = [_styleAttributes copy];
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
  mapModeSegmentedControl = [(RAPEditLocationMapView *)self mapModeSegmentedControl];
  selectedViewMode = [mapModeSegmentedControl selectedViewMode];

  return selectedViewMode;
}

- (void)setViewMode:(int64_t)mode
{
  mapModeSegmentedControl = [(RAPEditLocationMapView *)self mapModeSegmentedControl];
  selectedViewMode = [mapModeSegmentedControl selectedViewMode];

  if (selectedViewMode != mode)
  {
    if ((mode - 1) > 6)
    {
      v7 = 0;
    }

    else
    {
      v7 = qword_101215BC8[mode - 1];
    }

    mapView = [(RAPEditLocationMapView *)self mapView];
    [mapView setMapType:v7];

    mapModeSegmentedControl2 = [(RAPEditLocationMapView *)self mapModeSegmentedControl];
    [mapModeSegmentedControl2 setSelectedViewMode:mode];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained editLocationMapView:self didChangeViewMode:mode];
  }
}

- (void)setAnnotationTitle:(id)title
{
  titleCopy = title;
  if (([(NSString *)self->_annotationTitle isEqual:?]& 1) == 0)
  {
    v4 = [titleCopy copy];
    annotationTitle = self->_annotationTitle;
    self->_annotationTitle = v4;

    crosshairAnnotationView = [(RAPEditLocationMapView *)self crosshairAnnotationView];
    [crosshairAnnotationView setAnnotationTitle:titleCopy];
  }
}

- (void)setPrompt:(id)prompt
{
  promptCopy = prompt;
  -[BlurredBackgroundLabel setHidden:](self->_descriptionView, "setHidden:", [promptCopy length] == 0);
  if (![(NSString *)self->_prompt isEqualToString:promptCopy])
  {
    v4 = [promptCopy copy];
    prompt = self->_prompt;
    self->_prompt = v4;

    [(BlurredBackgroundLabel *)self->_descriptionView setText:promptCopy];
  }
}

- (CLLocationCoordinate2D)centerCoordinate
{
  mapView = [(RAPEditLocationMapView *)self mapView];
  [mapView centerCoordinate];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.longitude = v8;
  result.latitude = v7;
  return result;
}

- (void)setCenterCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  mapView = [(RAPEditLocationMapView *)self mapView];
  [mapView setCenterCoordinate:{latitude, longitude}];
}

- (void)mapViewDidFinishRenderingMap:(id)map fullyRendered:(BOOL)rendered
{
  v5 = [(RAPEditLocationMapView *)self crosshairAnnotationView:map];
  [v5 setAlpha:1.0];

  [(RAPEditLocationMapView *)self updateCrosshairPosition];
  delegate = [(RAPEditLocationMapView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(RAPEditLocationMapView *)self delegate];
    [delegate2 editLocationMapViewFinishedRenderingMap:self];
  }
}

- (void)setCrosshairEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->_crosshairEnabled = enabled;
  crosshairAnnotationView = [(RAPEditLocationMapView *)self crosshairAnnotationView];
  [crosshairAnnotationView setHidden:!enabledCopy];
}

- (void)selectedMapModeDidChange:(id)change
{
  mapModeSegmentedControl = [(RAPEditLocationMapView *)self mapModeSegmentedControl];
  selectedViewMode = [mapModeSegmentedControl selectedViewMode];

  if (selectedViewMode == 2)
  {
    v6 = 1;
  }

  else
  {
    v6 = selectedViewMode;
  }

  mapView = [(RAPEditLocationMapView *)self mapView];
  v8 = mapView;
  if ((v6 - 1) > 6)
  {
    v9 = 0;
  }

  else
  {
    v9 = qword_101215BC8[v6 - 1];
  }

  [mapView setMapType:v9];

  mapView2 = [(RAPEditLocationMapView *)self mapView];
  [mapView2 setShowsTraffic:v6 == 7];

  delegate = [(RAPEditLocationMapView *)self delegate];
  [delegate editLocationMapView:self didChangeViewMode:v6];
}

- (void)updateAttributionInsets
{
  [(UIView *)self->_floatingControlsView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height];
  v4 = v3;
  superview = [(RAPEditLocationMapView *)self superview];
  [superview safeAreaInsets];
  v7 = v4 + v6 + 8.0;

  v8 = +[UIApplication sharedApplication];
  userInterfaceLayoutDirection = [v8 userInterfaceLayoutDirection];

  mapView = self->_mapView;
  superview2 = [(RAPEditLocationMapView *)self superview];
  [superview2 safeAreaInsets];
  v13 = v12 + 8.0;
  if (userInterfaceLayoutDirection == 1)
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
  crosshairAnnotationView = [(RAPEditLocationMapView *)self crosshairAnnotationView];

  if (crosshairAnnotationView)
  {
    mapView = [(RAPEditLocationMapView *)self mapView];
    mapView2 = [(RAPEditLocationMapView *)self mapView];
    [mapView2 centerCoordinate];
    v7 = v6;
    v9 = v8;
    mapView3 = [(RAPEditLocationMapView *)self mapView];
    [mapView convertCoordinate:mapView3 toPointToView:{v7, v9}];
    v12 = v11;
    v14 = v13;

    mapView4 = [(RAPEditLocationMapView *)self mapView];
    mapView5 = [(RAPEditLocationMapView *)self mapView];
    [mapView5 center];
    v18 = v17;
    v20 = v19;
    mapView6 = [(RAPEditLocationMapView *)self mapView];
    superview = [mapView6 superview];
    [mapView4 convertPoint:superview fromView:{v18, v20}];
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
  mapView = [(RAPEditLocationMapView *)self mapView];
  leadingAnchor = [mapView leadingAnchor];
  leadingAnchor2 = [(RAPEditLocationMapView *)self leadingAnchor];
  v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v40[0] = v36;
  mapView2 = [(RAPEditLocationMapView *)self mapView];
  trailingAnchor = [mapView2 trailingAnchor];
  trailingAnchor2 = [(RAPEditLocationMapView *)self trailingAnchor];
  v32 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v40[1] = v32;
  mapView3 = [(RAPEditLocationMapView *)self mapView];
  topAnchor = [mapView3 topAnchor];
  topAnchor2 = [(RAPEditLocationMapView *)self topAnchor];
  v28 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v40[2] = v28;
  mapView4 = [(RAPEditLocationMapView *)self mapView];
  bottomAnchor = [mapView4 bottomAnchor];
  bottomAnchor2 = [(RAPEditLocationMapView *)self bottomAnchor];
  v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v40[3] = v24;
  floatingControlsView = [(RAPEditLocationMapView *)self floatingControlsView];
  leadingAnchor3 = [floatingControlsView leadingAnchor];
  layoutMarginsGuide = [(RAPEditLocationMapView *)self layoutMarginsGuide];
  leadingAnchor4 = [layoutMarginsGuide leadingAnchor];
  v19 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v40[4] = v19;
  floatingControlsView2 = [(RAPEditLocationMapView *)self floatingControlsView];
  trailingAnchor3 = [floatingControlsView2 trailingAnchor];
  layoutMarginsGuide2 = [(RAPEditLocationMapView *)self layoutMarginsGuide];
  trailingAnchor4 = [layoutMarginsGuide2 trailingAnchor];
  v4 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v40[5] = v4;
  floatingControlsView3 = [(RAPEditLocationMapView *)self floatingControlsView];
  bottomAnchor3 = [floatingControlsView3 bottomAnchor];
  mapView5 = [(RAPEditLocationMapView *)self mapView];
  safeAreaLayoutGuide = [mapView5 safeAreaLayoutGuide];
  bottomAnchor4 = [safeAreaLayoutGuide bottomAnchor];
  v10 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-8.0];
  v40[6] = v10;
  v11 = [NSArray arrayWithObjects:v40 count:7];
  [NSLayoutConstraint activateConstraints:v11];

  v12 = +[GEOPlatform sharedPlatform];
  LODWORD(mapView5) = [v12 isInternalInstall];

  if (mapView5)
  {
    LODWORD(v13) = 1148846080;
    v14 = [(WatermarkView *)self->_watermarkView _maps_constraintsEqualToEdgesOfView:self priority:v13];
    allConstraints = [v14 allConstraints];
    [NSLayoutConstraint activateConstraints:allConstraints];
  }

  [(RAPEditLocationMapView *)self setupDescriptionViewAndAdditionalConstraints];
  [(RAPEditLocationMapView *)self updateCrosshairPosition];
}

- (void)setupDescriptionViewAndAdditionalConstraints
{
  descriptionView = [(RAPEditLocationMapView *)self descriptionView];
  topAnchor = [descriptionView topAnchor];
  mapView = [(RAPEditLocationMapView *)self mapView];
  topAnchor2 = [mapView topAnchor];
  v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v19[0] = v14;
  descriptionView2 = [(RAPEditLocationMapView *)self descriptionView];
  leadingAnchor = [descriptionView2 leadingAnchor];
  mapView2 = [(RAPEditLocationMapView *)self mapView];
  leadingAnchor2 = [mapView2 leadingAnchor];
  v6 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v19[1] = v6;
  descriptionView3 = [(RAPEditLocationMapView *)self descriptionView];
  trailingAnchor = [descriptionView3 trailingAnchor];
  mapView3 = [(RAPEditLocationMapView *)self mapView];
  trailingAnchor2 = [mapView3 trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v19[2] = v11;
  v12 = [NSArray arrayWithObjects:v19 count:3];
  [NSLayoutConstraint activateConstraints:v12];
}

- (RAPEditLocationMapView)initWithMapRect:(id)rect viewMode:(int64_t)mode markerViewAttributes:(id)attributes
{
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v8 = rect.var0.var1;
  v9 = rect.var0.var0;
  attributesCopy = attributes;
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

  [(MapViewModeSelector *)v12->_mapModeSegmentedControl setSelectedViewMode:mode];
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
  _mapLayer = [(MKMapView *)v12->_mapView _mapLayer];
  [_mapLayer setStaysCenteredDuringPinch:1];

  _mapLayer2 = [(MKMapView *)v12->_mapView _mapLayer];
  [_mapLayer2 setStaysCenteredDuringRotation:1];

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
  if ((mode - 1) > 6)
  {
    v30 = 0;
  }

  else
  {
    v30 = qword_101215BC8[mode - 1];
  }

  [(MKMapView *)v12->_mapView setMapType:v30];
  [(MKMapView *)v12->_mapView setShowsTraffic:mode == 7];
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
  if (mode > 4)
  {
    if (mode == 5)
    {
      v32 = vdupq_n_s64(1uLL);
    }

    else
    {
      if (mode != 6)
      {
        if (mode == 7)
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
    switch(mode)
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
  isInternalInstall = [v33 isInternalInstall];

  if (isInternalInstall)
  {
    height = [[WatermarkView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    watermarkView = v12->_watermarkView;
    v12->_watermarkView = height;

    [(WatermarkView *)v12->_watermarkView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(RAPEditLocationMapView *)v12 addSubview:v12->_watermarkView];
  }

  [(RAPEditLocationMapView *)v12 addSubview:v12->_floatingControlsView];
  v37 = objc_alloc_init(RAPMKMarkerAnnotationView);
  crosshairAnnotationView = v12->_crosshairAnnotationView;
  v12->_crosshairAnnotationView = v37;

  [(RAPMKMarkerAnnotationView *)v12->_crosshairAnnotationView setSelected:1];
  styleAttributes = [attributesCopy styleAttributes];
  [(RAPMKMarkerAnnotationView *)v12->_crosshairAnnotationView _setStyleAttributes:styleAttributes];

  [(RAPMKMarkerAnnotationView *)v12->_crosshairAnnotationView setAlpha:0.0];
  [(RAPMKMarkerAnnotationView *)v12->_crosshairAnnotationView setHidden:1];
  mapView = [(RAPEditLocationMapView *)v12 mapView];
  [mapView addSubview:v12->_crosshairAnnotationView];

  height2 = [[BlurredBackgroundLabel alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  descriptionView = v12->_descriptionView;
  v12->_descriptionView = height2;

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