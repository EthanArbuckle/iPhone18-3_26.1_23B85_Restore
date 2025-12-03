@interface RAPNotificationDetailsMapCell
+ (id)identifier;
- (BOOL)_showsSingleMarker;
- (RAPNotificationDetailsMapCell)initWithCoder:(id)coder;
- (RAPNotificationDetailsMapCell)initWithFrame:(CGRect)frame;
- (id)mapView:(id)view viewForAnnotation:(id)annotation;
- (void)_commonInit;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)_updateMapView;
- (void)setViewModel:(id)model;
@end

@implementation RAPNotificationDetailsMapCell

- (id)mapView:(id)view viewForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  v6 = [view dequeueReusableAnnotationViewWithIdentifier:@"RAPNotificationMarker"];
  if (!v6)
  {
    v6 = [[MKMarkerAnnotationView alloc] initWithAnnotation:annotationCopy reuseIdentifier:@"RAPNotificationMarker"];
  }

  [v6 setDraggable:0];
  styleAttributes = [annotationCopy styleAttributes];
  if (!styleAttributes)
  {
    styleAttributes = +[GEOFeatureStyleAttributes RAPLocationStyleAttributes];
  }

  [v6 _setStyleAttributes:styleAttributes];
  [v6 setAnnotation:annotationCopy];

  return v6;
}

- (void)_updateMapView
{
  viewModel = [(RAPNotificationDetailsMapCell *)self viewModel];
  mapType = [viewModel mapType];
  if (mapType > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_101216058[mapType];
  }

  mapView = [(RAPNotificationDetailsMapCell *)self mapView];
  [mapView setMapType:v5];

  viewModel2 = [(RAPNotificationDetailsMapCell *)self viewModel];
  mapRegion = [viewModel2 mapRegion];

  [mapRegion southLat];
  v10 = v9;
  [mapRegion northLat];
  if (v10 == v11)
  {
    [mapRegion westLng];
    v13 = v12;
    [mapRegion eastLng];
    if (v13 == v14)
    {
      [mapRegion southLat];
      [mapRegion westLng];
      MKMapRectMakeWithRadialDistance();
      v19 = [[GEOMapRegion alloc] initWithMapRect:{v15, v16, v17, v18}];

      mapRegion = v19;
    }
  }

  GEOMapRectForMapRegion();
  v23 = v22;
  v25 = v24;
  v26 = v20;
  v27 = v21;
  v28 = 0.0;
  if ((v22 != MKMapRectNull.origin.x || v24 != MKMapRectNull.origin.y) && v20 != 0.0 && v21 != 0.0)
  {
    if ([(RAPNotificationDetailsMapCell *)self _showsSingleMarker])
    {
      v28 = 48.5;
    }

    else
    {
      v28 = 0.0;
    }

    mapView2 = [(RAPNotificationDetailsMapCell *)self mapView];
    [mapView2 setVisibleMapRect:0 edgePadding:v23 animated:{v25, v26, v27, v28, 0.0, 0.0, 0.0}];
  }

  mapView3 = [(RAPNotificationDetailsMapCell *)self mapView];
  mapView4 = [(RAPNotificationDetailsMapCell *)self mapView];
  annotations = [mapView4 annotations];
  [mapView3 removeAnnotations:annotations];

  viewModel3 = [(RAPNotificationDetailsMapCell *)self viewModel];
  mapItems = [viewModel3 mapItems];

  LODWORD(annotations) = [(RAPNotificationDetailsMapCell *)self _showsSingleMarker];
  viewModel4 = [(RAPNotificationDetailsMapCell *)self viewModel];
  displayStyle = [viewModel4 displayStyle];

  if (annotations)
  {
    if (displayStyle == 2)
    {
      firstObject = [mapItems firstObject];
      if (!firstObject)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    }

    viewModel5 = [(RAPNotificationDetailsMapCell *)self viewModel];
    displayStyle2 = [viewModel5 displayStyle];

    if (displayStyle2 == 4)
    {
      viewModel6 = [(RAPNotificationDetailsMapCell *)self viewModel];
      updatedLabel = [viewModel6 updatedLabel];

      v50 = [MKPlacemark alloc];
      center = [updatedLabel center];
      [center lat];
      v53 = v52;
      center2 = [updatedLabel center];
      [center2 lng];
      v56 = CLLocationCoordinate2DMake(v53, v55);
      v57 = [v50 initWithCoordinate:0 addressDictionary:{v56.latitude, v56.longitude}];

      firstObject = [[MKMapItem alloc] initWithPlacemark:v57];
      localizedText = [updatedLabel localizedText];
      [firstObject setName:localizedText];

      if (firstObject)
      {
LABEL_29:
        v59 = [[RAPAnnotation alloc] initWithMapItem:firstObject];
        mapView5 = [(RAPNotificationDetailsMapCell *)self mapView];
        [mapView5 addAnnotation:v59];

        mapView6 = [(RAPNotificationDetailsMapCell *)self mapView];
        [mapView6 selectAnnotation:v59 animated:0];

        [(RAPAnnotation *)v59 coordinate];
        v62 = MKMapPointForCoordinate(v73);
        v74.origin.x = v23;
        v74.origin.y = v25;
        v74.size.width = v26;
        v74.size.height = v27;
        v75 = MKMapRectOffset(v74, v62.x - (v23 - v26 * -0.5), v62.y - (v25 - v27 * -0.5));
        x = v75.origin.x;
        y = v75.origin.y;
        width = v75.size.width;
        height = v75.size.height;
        mapView7 = [(RAPNotificationDetailsMapCell *)self mapView];
        [mapView7 setVisibleMapRect:0 edgePadding:x animated:{y, width, height, v28, 0.0, 0.0, 0.0}];

LABEL_30:
      }
    }
  }

  else if (displayStyle == 5)
  {
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    firstObject = mapItems;
    v38 = [firstObject countByEnumeratingWithState:&v68 objects:v72 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v69;
      do
      {
        for (i = 0; i != v39; i = i + 1)
        {
          if (*v69 != v40)
          {
            objc_enumerationMutation(firstObject);
          }

          v42 = *(*(&v68 + 1) + 8 * i);
          v43 = [RAPAnnotation alloc];
          v44 = [(RAPAnnotation *)v43 initWithMapItem:v42, v68];
          mapView8 = [(RAPNotificationDetailsMapCell *)self mapView];
          [mapView8 addAnnotation:v44];
        }

        v39 = [firstObject countByEnumeratingWithState:&v68 objects:v72 count:16];
      }

      while (v39);
    }

    goto LABEL_30;
  }

LABEL_31:
}

- (BOOL)_showsSingleMarker
{
  viewModel = [(RAPNotificationDetailsMapCell *)self viewModel];
  if ([viewModel displayStyle] == 2)
  {
    v4 = 1;
  }

  else
  {
    viewModel2 = [(RAPNotificationDetailsMapCell *)self viewModel];
    v4 = [viewModel2 displayStyle] == 4;
  }

  return v4;
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  if (self->_viewModel != modelCopy)
  {
    v6 = modelCopy;
    objc_storeStrong(&self->_viewModel, model);
    [(RAPNotificationDetailsMapCell *)self _updateMapView];
    modelCopy = v6;
  }
}

- (void)_setupConstraints
{
  mapView = [(RAPNotificationDetailsMapCell *)self mapView];
  topAnchor = [mapView topAnchor];
  contentView = [(RAPNotificationDetailsMapCell *)self contentView];
  topAnchor2 = [contentView topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v27[0] = v22;
  mapView2 = [(RAPNotificationDetailsMapCell *)self mapView];
  leadingAnchor = [mapView2 leadingAnchor];
  contentView2 = [(RAPNotificationDetailsMapCell *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v17 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:4.0];
  v27[1] = v17;
  mapView3 = [(RAPNotificationDetailsMapCell *)self mapView];
  trailingAnchor = [mapView3 trailingAnchor];
  contentView3 = [(RAPNotificationDetailsMapCell *)self contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v3 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-4.0];
  v27[2] = v3;
  mapView4 = [(RAPNotificationDetailsMapCell *)self mapView];
  bottomAnchor = [mapView4 bottomAnchor];
  contentView4 = [(RAPNotificationDetailsMapCell *)self contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  v8 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-4.0];
  v27[3] = v8;
  mapView5 = [(RAPNotificationDetailsMapCell *)self mapView];
  heightAnchor = [mapView5 heightAnchor];
  v11 = [heightAnchor constraintEqualToConstant:194.0];
  v27[4] = v11;
  v12 = [NSArray arrayWithObjects:v27 count:5];
  [NSLayoutConstraint activateConstraints:v12];
}

- (void)_setupViews
{
  v3 = +[UIColor secondarySystemGroupedBackgroundColor];
  [(RAPNotificationDetailsMapCell *)self setBackgroundColor:v3];

  v4 = [[MKMapView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(RAPNotificationDetailsMapCell *)self setMapView:v4];

  mapView = [(RAPNotificationDetailsMapCell *)self mapView];
  [mapView setTranslatesAutoresizingMaskIntoConstraints:0];

  mapView2 = [(RAPNotificationDetailsMapCell *)self mapView];
  [mapView2 setUserInteractionEnabled:0];

  mapView3 = [(RAPNotificationDetailsMapCell *)self mapView];
  [mapView3 setDelegate:self];

  mapView4 = [(RAPNotificationDetailsMapCell *)self mapView];
  [mapView4 setShowsUserLocation:0];

  mapView5 = [(RAPNotificationDetailsMapCell *)self mapView];
  [mapView5 setCompassEnabled:0];

  mapView6 = [(RAPNotificationDetailsMapCell *)self mapView];
  [mapView6 setShowsAttribution:0];

  mapView7 = [(RAPNotificationDetailsMapCell *)self mapView];
  [mapView7 setClipsToBounds:1];

  MUPlacePlatterCornerRadius();
  v13 = v12;
  mapView8 = [(RAPNotificationDetailsMapCell *)self mapView];
  layer = [mapView8 layer];
  [layer setCornerRadius:v13];

  mapView9 = [(RAPNotificationDetailsMapCell *)self mapView];
  layer2 = [mapView9 layer];
  [layer2 setCornerCurve:kCACornerCurveContinuous];

  mapView10 = [(RAPNotificationDetailsMapCell *)self mapView];
  layer3 = [mapView10 layer];
  [layer3 setMaskedCorners:12];

  contentView = [(RAPNotificationDetailsMapCell *)self contentView];
  mapView11 = [(RAPNotificationDetailsMapCell *)self mapView];
  [contentView addSubview:mapView11];
}

- (void)_commonInit
{
  [(RAPNotificationDetailsMapCell *)self _setupViews];

  [(RAPNotificationDetailsMapCell *)self _setupConstraints];
}

- (RAPNotificationDetailsMapCell)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = RAPNotificationDetailsMapCell;
  v3 = [(RAPNotificationDetailsMapCell *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(RAPNotificationDetailsMapCell *)v3 _commonInit];
  }

  return v4;
}

- (RAPNotificationDetailsMapCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = RAPNotificationDetailsMapCell;
  v3 = [(RAPNotificationDetailsMapCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(RAPNotificationDetailsMapCell *)v3 _commonInit];
  }

  return v4;
}

+ (id)identifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end