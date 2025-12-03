@interface RAPInlineMapViewModel
- (CLLocationCoordinate2D)originalCoordinate;
- (CLLocationCoordinate2D)selectedCoordinate;
- (MKMapView)mapView;
- (NSString)instructionalText;
- (RAPInlineMapViewModelDelegate)delegate;
- (id)initForPickingFeatureOfKind:(int64_t)kind centerCoordinate:(CLLocationCoordinate2D)coordinate markerViewAttributes:(id)attributes accessPointsEnabled:(BOOL)enabled delegate:(id)delegate;
- (id)mapView:(id)view viewForAnnotation:(id)annotation;
- (void)_initMapView;
- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated;
- (void)setMapView:(id)view;
- (void)setSelectedCoordinate:(CLLocationCoordinate2D)coordinate;
- (void)setSelectedViewMode:(int64_t)mode;
- (void)updateCenterCoordinate:(CLLocationCoordinate2D)coordinate;
- (void)updateMapPickingKind:(int64_t)kind;
@end

@implementation RAPInlineMapViewModel

- (RAPInlineMapViewModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CLLocationCoordinate2D)selectedCoordinate
{
  latitude = self->_selectedCoordinate.latitude;
  longitude = self->_selectedCoordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (CLLocationCoordinate2D)originalCoordinate
{
  latitude = self->_originalCoordinate.latitude;
  longitude = self->_originalCoordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (MKMapView)mapView
{
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  return WeakRetained;
}

- (void)setSelectedCoordinate:(CLLocationCoordinate2D)coordinate
{
  self->_selectedCoordinate = coordinate;
  delegate = [(RAPInlineMapViewModel *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(RAPInlineMapViewModel *)self delegate];
    [delegate2 inlineMapViewModelUpdatedSelectedCoordinate:self];
  }
}

- (void)setSelectedViewMode:(int64_t)mode
{
  if (self->_selectedViewMode != mode)
  {
    self->_selectedViewMode = mode;
    WeakRetained = objc_loadWeakRetained(&self->_mapView);
    v6 = self->_selectedViewMode - 1;
    if (v6 > 6)
    {
      v7 = 0;
    }

    else
    {
      v7 = qword_101215BC8[v6];
    }

    v8 = WeakRetained;
    [WeakRetained setMapType:v7];
  }
}

- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated
{
  [view centerCoordinate];

  [(RAPInlineMapViewModel *)self setSelectedCoordinate:?];
}

- (void)updateCenterCoordinate:(CLLocationCoordinate2D)coordinate
{
  if (fabs(coordinate.longitude) <= 180.0 && coordinate.latitude >= -90.0 && coordinate.latitude <= 90.0)
  {
    [(RAPInlineMapViewModel *)self setSelectedCoordinate:?];
    kind = self->_kind;
    WeakRetained = objc_loadWeakRetained(&self->_mapView);
    v7 = WeakRetained;
    if (!kind)
    {
      v8 = WeakRetained;
      [v8 convertCoordinate:v8 toPointToView:{self->_selectedCoordinate.latitude, self->_selectedCoordinate.longitude}];
      v10 = v9;
      v12 = v11;

      v13 = objc_loadWeakRetained(&self->_mapView);
      v14 = [v13 _labelMarkerAtPoint:{v10, v12}];
      selectedLabelMarker = self->_selectedLabelMarker;
      self->_selectedLabelMarker = v14;

      v7 = objc_loadWeakRetained(&self->_mapView);
    }

    [v7 setCenterCoordinate:0 animated:{self->_selectedCoordinate.latitude, self->_selectedCoordinate.longitude}];

    v16 = objc_loadWeakRetained(&self->_mapView);
    [v16 removeAnnotation:self->_centerPointAnnotation];

    [(MKPointAnnotation *)self->_centerPointAnnotation setCoordinate:self->_selectedCoordinate.latitude, self->_selectedCoordinate.longitude];
    v17 = objc_loadWeakRetained(&self->_mapView);
    [v17 addAnnotation:self->_centerPointAnnotation];
  }
}

- (void)updateMapPickingKind:(int64_t)kind
{
  if (self->_kind != kind)
  {
    self->_kind = kind;
    instructionalText = [(RAPInlineMapViewModel *)self instructionalText];
    WeakRetained = objc_loadWeakRetained(&self->_mapView);
    [WeakRetained setAccessibilityLabel:instructionalText];

    viewAttributeObserver = self->_viewAttributeObserver;
    if (viewAttributeObserver)
    {
      v7 = *(viewAttributeObserver + 2);

      v7();
    }
  }
}

- (NSString)instructionalText
{
  v3 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v3 userInterfaceIdiom];

  kind = self->_kind;
  if (kind == 3)
  {
    v6 = +[NSBundle mainBundle];
    if (userInterfaceIdiom == 5)
    {
      v7 = @"Click map to edit entrance. [Report an Issue]";
    }

    else
    {
      v7 = @"Tap map to edit entrance. [Report an Issue]";
    }
  }

  else if (kind == 1)
  {
    accessPointsEnabled = self->_accessPointsEnabled;
    v6 = +[NSBundle mainBundle];
    if (accessPointsEnabled)
    {
      if (userInterfaceIdiom == 5)
      {
        v7 = @"Click map to edit location and entrances [Report an Issue]";
      }

      else
      {
        v7 = @"Tap map to edit location and entrances [Report an Issue]";
      }
    }

    else if (userInterfaceIdiom == 5)
    {
      v7 = @"Click map to edit location [Report an Issue]";
    }

    else
    {
      v7 = @"Tap map to edit location [Report an Issue]";
    }
  }

  else
  {
    if (kind)
    {
      v9 = &stru_1016631F0;
      goto LABEL_19;
    }

    v6 = +[NSBundle mainBundle];
    if (userInterfaceIdiom == 5)
    {
      v7 = @"Click map to select a label [Report an Issue]";
    }

    else
    {
      v7 = @"Tap map to select a label [Report an Issue]";
    }
  }

  v9 = [v6 localizedStringForKey:v7 value:@"localized string not found" table:0];

LABEL_19:

  return v9;
}

- (id)mapView:(id)view viewForAnnotation:(id)annotation
{
  if (self->_centerPointAnnotation == annotation)
  {
    v4 = [[MKMarkerAnnotationView alloc] initWithAnnotation:self->_centerPointAnnotation reuseIdentifier:@"CenterPointAnnotationView"];
    styleAttributes = [(RAPMarkerViewAttributes *)self->_markerViewAttributes styleAttributes];
    [v4 _setStyleAttributes:styleAttributes];

    [v4 setSelected:1];
    LODWORD(v7) = 1148846080;
    [v4 setDisplayPriority:v7];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_initMapView
{
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  if (!WeakRetained)
  {
    return;
  }

  latitude = self->_selectedCoordinate.latitude;
  longitude = self->_selectedCoordinate.longitude;
  v6 = objc_loadWeakRetained(&self->_mapView);
  [v6 setCenterCoordinate:{latitude, longitude}];

  v7 = objc_loadWeakRetained(&self->_mapView);
  [v7 setDelegate:self];

  v8 = objc_loadWeakRetained(&self->_mapView);
  [v8 setShowsUserLocation:0];

  v9 = objc_loadWeakRetained(&self->_mapView);
  [v9 setShowsAttribution:0];

  v10 = +[MKPointOfInterestFilter filterIncludingAllCategories];
  v11 = objc_loadWeakRetained(&self->_mapView);
  [v11 setPointOfInterestFilter:v10];

  v12 = objc_loadWeakRetained(&self->_mapView);
  [v12 _setShowsVenues:1];

  v13 = self->_selectedViewMode - 1;
  if (v13 > 6)
  {
    v14 = 0;
  }

  else
  {
    v14 = qword_101215BC8[v13];
  }

  v15 = objc_loadWeakRetained(&self->_mapView);
  [v15 setMapType:v14];

  allowsEditing = [(RAPInlineMapViewModel *)self allowsEditing];
  v17 = objc_loadWeakRetained(&self->_mapView);
  [v17 setZoomEnabled:allowsEditing];

  allowsEditing2 = [(RAPInlineMapViewModel *)self allowsEditing];
  v19 = objc_loadWeakRetained(&self->_mapView);
  [v19 setScrollEnabled:allowsEditing2];

  allowsEditing3 = [(RAPInlineMapViewModel *)self allowsEditing];
  v21 = objc_loadWeakRetained(&self->_mapView);
  [v21 setPitchEnabled:allowsEditing3];

  allowsEditing4 = [(RAPInlineMapViewModel *)self allowsEditing];
  v23 = objc_loadWeakRetained(&self->_mapView);
  [v23 setRotateEnabled:allowsEditing4];

  allowsEditing5 = [(RAPInlineMapViewModel *)self allowsEditing];
  v25 = objc_loadWeakRetained(&self->_mapView);
  [v25 setUserInteractionEnabled:allowsEditing5];

  kind = self->_kind;
  if (kind)
  {
    if (kind != 1)
    {
      goto LABEL_10;
    }

    v27 = +[MKPointOfInterestFilter filterIncludingAllCategories];
    v28 = objc_loadWeakRetained(&self->_mapView);
    [v28 setPointOfInterestFilter:v27];
  }

  else
  {
    v27 = objc_loadWeakRetained(&self->_mapView);
    [v27 _setCanSelectAllLabels:1];
  }

LABEL_10:
  if (CLLocationCoordinate2DIsValid(self->_selectedCoordinate))
  {
    v29 = [MKPointAnnotation alloc];
    title = [(RAPMarkerViewAttributes *)self->_markerViewAttributes title];
    v31 = [v29 initWithCoordinate:title title:0 subtitle:{self->_selectedCoordinate.latitude, self->_selectedCoordinate.longitude}];
    centerPointAnnotation = self->_centerPointAnnotation;
    self->_centerPointAnnotation = v31;

    v33 = objc_loadWeakRetained(&self->_mapView);
    [v33 addAnnotation:self->_centerPointAnnotation];
  }
}

- (void)setMapView:(id)view
{
  obj = view;
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_mapView, obj);
    [(RAPInlineMapViewModel *)self _initMapView];
    v5 = obj;
  }
}

- (id)initForPickingFeatureOfKind:(int64_t)kind centerCoordinate:(CLLocationCoordinate2D)coordinate markerViewAttributes:(id)attributes accessPointsEnabled:(BOOL)enabled delegate:(id)delegate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  attributesCopy = attributes;
  delegateCopy = delegate;
  v20.receiver = self;
  v20.super_class = RAPInlineMapViewModel;
  v15 = [(RAPInlineMapViewModel *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_delegate, delegateCopy);
    v16->_originalCoordinate.latitude = latitude;
    v16->_originalCoordinate.longitude = longitude;
    v16->_selectedCoordinate.latitude = latitude;
    v16->_selectedCoordinate.longitude = longitude;
    v16->_kind = kind;
    v16->_selectedViewMode = 0;
    v17 = [attributesCopy copy];
    markerViewAttributes = v16->_markerViewAttributes;
    v16->_markerViewAttributes = v17;

    v16->_accessPointsEnabled = enabled;
    [(RAPInlineMapViewModel *)v16 _initMapView];
  }

  return v16;
}

@end