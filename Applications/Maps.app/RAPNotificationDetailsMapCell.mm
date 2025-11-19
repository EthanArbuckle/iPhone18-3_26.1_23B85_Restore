@interface RAPNotificationDetailsMapCell
+ (id)identifier;
- (BOOL)_showsSingleMarker;
- (RAPNotificationDetailsMapCell)initWithCoder:(id)a3;
- (RAPNotificationDetailsMapCell)initWithFrame:(CGRect)a3;
- (id)mapView:(id)a3 viewForAnnotation:(id)a4;
- (void)_commonInit;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)_updateMapView;
- (void)setViewModel:(id)a3;
@end

@implementation RAPNotificationDetailsMapCell

- (id)mapView:(id)a3 viewForAnnotation:(id)a4
{
  v5 = a4;
  v6 = [a3 dequeueReusableAnnotationViewWithIdentifier:@"RAPNotificationMarker"];
  if (!v6)
  {
    v6 = [[MKMarkerAnnotationView alloc] initWithAnnotation:v5 reuseIdentifier:@"RAPNotificationMarker"];
  }

  [v6 setDraggable:0];
  v7 = [v5 styleAttributes];
  if (!v7)
  {
    v7 = +[GEOFeatureStyleAttributes RAPLocationStyleAttributes];
  }

  [v6 _setStyleAttributes:v7];
  [v6 setAnnotation:v5];

  return v6;
}

- (void)_updateMapView
{
  v3 = [(RAPNotificationDetailsMapCell *)self viewModel];
  v4 = [v3 mapType];
  if (v4 > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_101216058[v4];
  }

  v6 = [(RAPNotificationDetailsMapCell *)self mapView];
  [v6 setMapType:v5];

  v7 = [(RAPNotificationDetailsMapCell *)self viewModel];
  v8 = [v7 mapRegion];

  [v8 southLat];
  v10 = v9;
  [v8 northLat];
  if (v10 == v11)
  {
    [v8 westLng];
    v13 = v12;
    [v8 eastLng];
    if (v13 == v14)
    {
      [v8 southLat];
      [v8 westLng];
      MKMapRectMakeWithRadialDistance();
      v19 = [[GEOMapRegion alloc] initWithMapRect:{v15, v16, v17, v18}];

      v8 = v19;
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

    v29 = [(RAPNotificationDetailsMapCell *)self mapView];
    [v29 setVisibleMapRect:0 edgePadding:v23 animated:{v25, v26, v27, v28, 0.0, 0.0, 0.0}];
  }

  v30 = [(RAPNotificationDetailsMapCell *)self mapView];
  v31 = [(RAPNotificationDetailsMapCell *)self mapView];
  v32 = [v31 annotations];
  [v30 removeAnnotations:v32];

  v33 = [(RAPNotificationDetailsMapCell *)self viewModel];
  v34 = [v33 mapItems];

  LODWORD(v32) = [(RAPNotificationDetailsMapCell *)self _showsSingleMarker];
  v35 = [(RAPNotificationDetailsMapCell *)self viewModel];
  v36 = [v35 displayStyle];

  if (v32)
  {
    if (v36 == 2)
    {
      v37 = [v34 firstObject];
      if (!v37)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    }

    v46 = [(RAPNotificationDetailsMapCell *)self viewModel];
    v47 = [v46 displayStyle];

    if (v47 == 4)
    {
      v48 = [(RAPNotificationDetailsMapCell *)self viewModel];
      v49 = [v48 updatedLabel];

      v50 = [MKPlacemark alloc];
      v51 = [v49 center];
      [v51 lat];
      v53 = v52;
      v54 = [v49 center];
      [v54 lng];
      v56 = CLLocationCoordinate2DMake(v53, v55);
      v57 = [v50 initWithCoordinate:0 addressDictionary:{v56.latitude, v56.longitude}];

      v37 = [[MKMapItem alloc] initWithPlacemark:v57];
      v58 = [v49 localizedText];
      [v37 setName:v58];

      if (v37)
      {
LABEL_29:
        v59 = [[RAPAnnotation alloc] initWithMapItem:v37];
        v60 = [(RAPNotificationDetailsMapCell *)self mapView];
        [v60 addAnnotation:v59];

        v61 = [(RAPNotificationDetailsMapCell *)self mapView];
        [v61 selectAnnotation:v59 animated:0];

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
        v67 = [(RAPNotificationDetailsMapCell *)self mapView];
        [v67 setVisibleMapRect:0 edgePadding:x animated:{y, width, height, v28, 0.0, 0.0, 0.0}];

LABEL_30:
      }
    }
  }

  else if (v36 == 5)
  {
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v37 = v34;
    v38 = [v37 countByEnumeratingWithState:&v68 objects:v72 count:16];
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
            objc_enumerationMutation(v37);
          }

          v42 = *(*(&v68 + 1) + 8 * i);
          v43 = [RAPAnnotation alloc];
          v44 = [(RAPAnnotation *)v43 initWithMapItem:v42, v68];
          v45 = [(RAPNotificationDetailsMapCell *)self mapView];
          [v45 addAnnotation:v44];
        }

        v39 = [v37 countByEnumeratingWithState:&v68 objects:v72 count:16];
      }

      while (v39);
    }

    goto LABEL_30;
  }

LABEL_31:
}

- (BOOL)_showsSingleMarker
{
  v3 = [(RAPNotificationDetailsMapCell *)self viewModel];
  if ([v3 displayStyle] == 2)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(RAPNotificationDetailsMapCell *)self viewModel];
    v4 = [v5 displayStyle] == 4;
  }

  return v4;
}

- (void)setViewModel:(id)a3
{
  v5 = a3;
  if (self->_viewModel != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_viewModel, a3);
    [(RAPNotificationDetailsMapCell *)self _updateMapView];
    v5 = v6;
  }
}

- (void)_setupConstraints
{
  v26 = [(RAPNotificationDetailsMapCell *)self mapView];
  v24 = [v26 topAnchor];
  v25 = [(RAPNotificationDetailsMapCell *)self contentView];
  v23 = [v25 topAnchor];
  v22 = [v24 constraintEqualToAnchor:v23];
  v27[0] = v22;
  v21 = [(RAPNotificationDetailsMapCell *)self mapView];
  v19 = [v21 leadingAnchor];
  v20 = [(RAPNotificationDetailsMapCell *)self contentView];
  v18 = [v20 leadingAnchor];
  v17 = [v19 constraintEqualToAnchor:v18 constant:4.0];
  v27[1] = v17;
  v16 = [(RAPNotificationDetailsMapCell *)self mapView];
  v14 = [v16 trailingAnchor];
  v15 = [(RAPNotificationDetailsMapCell *)self contentView];
  v13 = [v15 trailingAnchor];
  v3 = [v14 constraintEqualToAnchor:v13 constant:-4.0];
  v27[2] = v3;
  v4 = [(RAPNotificationDetailsMapCell *)self mapView];
  v5 = [v4 bottomAnchor];
  v6 = [(RAPNotificationDetailsMapCell *)self contentView];
  v7 = [v6 bottomAnchor];
  v8 = [v5 constraintEqualToAnchor:v7 constant:-4.0];
  v27[3] = v8;
  v9 = [(RAPNotificationDetailsMapCell *)self mapView];
  v10 = [v9 heightAnchor];
  v11 = [v10 constraintEqualToConstant:194.0];
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

  v5 = [(RAPNotificationDetailsMapCell *)self mapView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(RAPNotificationDetailsMapCell *)self mapView];
  [v6 setUserInteractionEnabled:0];

  v7 = [(RAPNotificationDetailsMapCell *)self mapView];
  [v7 setDelegate:self];

  v8 = [(RAPNotificationDetailsMapCell *)self mapView];
  [v8 setShowsUserLocation:0];

  v9 = [(RAPNotificationDetailsMapCell *)self mapView];
  [v9 setCompassEnabled:0];

  v10 = [(RAPNotificationDetailsMapCell *)self mapView];
  [v10 setShowsAttribution:0];

  v11 = [(RAPNotificationDetailsMapCell *)self mapView];
  [v11 setClipsToBounds:1];

  MUPlacePlatterCornerRadius();
  v13 = v12;
  v14 = [(RAPNotificationDetailsMapCell *)self mapView];
  v15 = [v14 layer];
  [v15 setCornerRadius:v13];

  v16 = [(RAPNotificationDetailsMapCell *)self mapView];
  v17 = [v16 layer];
  [v17 setCornerCurve:kCACornerCurveContinuous];

  v18 = [(RAPNotificationDetailsMapCell *)self mapView];
  v19 = [v18 layer];
  [v19 setMaskedCorners:12];

  v21 = [(RAPNotificationDetailsMapCell *)self contentView];
  v20 = [(RAPNotificationDetailsMapCell *)self mapView];
  [v21 addSubview:v20];
}

- (void)_commonInit
{
  [(RAPNotificationDetailsMapCell *)self _setupViews];

  [(RAPNotificationDetailsMapCell *)self _setupConstraints];
}

- (RAPNotificationDetailsMapCell)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = RAPNotificationDetailsMapCell;
  v3 = [(RAPNotificationDetailsMapCell *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(RAPNotificationDetailsMapCell *)v3 _commonInit];
  }

  return v4;
}

- (RAPNotificationDetailsMapCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = RAPNotificationDetailsMapCell;
  v3 = [(RAPNotificationDetailsMapCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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