@interface MAMapSnippetView
- (MAMapSnippetView)initWithFrame:(CGRect)frame mapItem:(id)item itemRepresentsCurrentLocation:(BOOL)location regionOfInterest:(id)interest fallbackDistance:(double)distance reservationDelegate:(id)delegate;
- (MAMapSnippetViewDelegate)delegate;
- (_MKPlaceReservationDelegate)reservationDelegate;
- (double)desiredHeightForWidth:(double)width;
- (id)_newMapOverlayView;
- (id)_newMapView;
- (id)_newReservationView;
- (id)_newResultView;
- (id)mapView:(id)view viewForAnnotation:(id)annotation;
- (id)nameForMapItem:(id)item;
- (void)_handleTapOnMap:(id)map;
- (void)_setupConstraints;
- (void)_setupCustomFeatureForMapItem;
- (void)_setupCustomFeatureForParkedCar;
- (void)_setupCustomFeatureStore;
- (void)_tap;
- (void)dealloc;
@end

@implementation MAMapSnippetView

- (MAMapSnippetView)initWithFrame:(CGRect)frame mapItem:(id)item itemRepresentsCurrentLocation:(BOOL)location regionOfInterest:(id)interest fallbackDistance:(double)distance reservationDelegate:(id)delegate
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  itemCopy = item;
  interestCopy = interest;
  delegateCopy = delegate;
  v35.receiver = self;
  v35.super_class = MAMapSnippetView;
  height = [(MAMapSnippetView *)&v35 initWithFrame:x, y, width, height];
  v22 = height;
  if (height)
  {
    objc_storeStrong(&height->_mapItem, item);
    v22->_itemRepresentsCurrentLocation = location;
    objc_storeStrong(&v22->_regionOfInterestRadiusInMiles, interest);
    v22->_fallbackDistance = distance;
    objc_storeWeak(&v22->_reservationDelegate, delegateCopy);
    location = [(SALocalSearchMapItem *)v22->_mapItem location];
    if (([location isRegionCity] & 1) == 0 && (objc_msgSend(location, "isRegionCounty") & 1) == 0 && (objc_msgSend(location, "isRegionState") & 1) == 0 && (objc_msgSend(location, "isRegionCountry") & 1) == 0)
    {
      _newResultView = [(MAMapSnippetView *)v22 _newResultView];
      resultView = v22->_resultView;
      v22->_resultView = _newResultView;

      [(MAMapSnippetView *)v22 addSubview:v22->_resultView];
    }

    _newMapView = [(MAMapSnippetView *)v22 _newMapView];
    snippetMapView = v22->_snippetMapView;
    v22->_snippetMapView = _newMapView;

    [(MAMapSnippetView *)v22 addSubview:v22->_snippetMapView];
    _newMapOverlayView = [(MAMapSnippetView *)v22 _newMapOverlayView];
    mapOverlayView = v22->_mapOverlayView;
    v22->_mapOverlayView = _newMapOverlayView;

    [(MAMapSnippetView *)v22 addSubview:v22->_mapOverlayView];
    _newReservationView = [(MAMapSnippetView *)v22 _newReservationView];
    reservationView = v22->_reservationView;
    v22->_reservationView = _newReservationView;

    if (v22->_reservationView)
    {
      [(MAMapSnippetView *)v22 addSubview:?];
    }

    if ([itemCopy isParkingLocation])
    {
      [(MAMapSnippetView *)v22 _setupCustomFeatureStore];
      [(MAMapSnippetView *)v22 _setupCustomFeatureForParkedCar];
      v32 = 1;
    }

    else
    {
      if (v22->_itemRepresentsCurrentLocation)
      {
        goto LABEL_17;
      }

      [(MAMapSnippetView *)v22 _setupCustomFeatureStore];
      [(MAMapSnippetView *)v22 _setupCustomFeatureForMapItem];
      customFeatureAnnotation = v22->_customFeatureAnnotation;
      if (!customFeatureAnnotation)
      {
        goto LABEL_17;
      }

      if ([(_MAMapSnippetCustomFeature *)customFeatureAnnotation showsBalloonCallout])
      {
        v32 = 1;
      }

      else
      {
        v32 = 2;
      }
    }

    [(MKMapView *)v22->_snippetMapView _setDisplayedSearchResultsType:v32];
LABEL_17:
    [(MAMapSnippetView *)v22 updateMapZoom:0 withLocation:0];
    [(MAMapSnippetView *)v22 _setupConstraints];
  }

  return v22;
}

- (void)_setupCustomFeatureStore
{
  v3 = [[_MKCustomFeatureStore alloc] initWithClustering:0];
  customFeatureStore = self->_customFeatureStore;
  self->_customFeatureStore = v3;

  snippetMapView = self->_snippetMapView;
  v6 = self->_customFeatureStore;

  [(MKMapView *)snippetMapView _addCustomFeatureDataSource:v6];
}

- (id)_newReservationView
{
  mapItem = [(MAMapSnippetView *)self mapItem];
  restaurantInfo = [mapItem restaurantInfo];
  reservationDelegate = [(MAMapSnippetView *)self reservationDelegate];
  v6 = [restaurantInfo _ma_reservationInfoWithDelegate:reservationDelegate];

  if (v6)
  {
    v7 = [[MKPlaceReservationRowView alloc] initWithReservationInfo:v6];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v7 setTopHairlineHidden:0];
    [v7 setBottomHairlineHidden:1];
    LODWORD(v8) = 1148829696;
    [v7 _mapkit_setContentHuggingPriority:1 forAxis:v8];
    [v7 _ma_updateSemanticContentAttribute];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_newResultView
{
  v3 = [[MAResultView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(MAResultView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v4) = 1148829696;
  [(MAResultView *)v3 _mapkit_setContentHuggingPriority:1 forAxis:v4];
  [(MAResultView *)v3 _ma_updateSemanticContentAttribute];
  [(MAResultView *)v3 setMapItem:self->_mapItem];
  [(MAResultView *)v3 setFallbackDistance:self->_fallbackDistance];
  [(MAResultView *)v3 setHideBottomKeyline:1];
  [(MAResultView *)v3 setDisplayFormat:2];
  [(MAResultView *)v3 _mapkit_setTarget:self action:"_tap"];
  return v3;
}

- (id)_newMapView
{
  v3 = objc_alloc_init(MKMapView);
  [v3 setDelegate:self];
  [v3 setZoomEnabled:0];
  [v3 setScrollEnabled:0];
  [v3 setShowsUserLocation:0];
  [v3 _setUseBalloonCalloutsForLabels:1];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setUserInteractionEnabled:0];
  v4 = +[UIColor systemBlueColor];
  [v3 setTintColor:v4];

  [v3 _ma_updateSemanticContentAttribute];
  layer = [v3 layer];
  [layer setCornerRadius:10.0];

  return v3;
}

- (id)_newMapOverlayView
{
  v3 = [[MAMapSnippetOverlayView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(MAMapSnippetOverlayView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleTapOnMap:"];
  [(MAMapSnippetOverlayView *)v3 addGestureRecognizer:v4];
  layer = [(MAMapSnippetOverlayView *)v3 layer];
  [layer setCornerRadius:10.0];

  return v3;
}

- (void)_setupCustomFeatureForParkedCar
{
  mapItem = [(MAMapSnippetView *)self mapItem];
  location = [mapItem location];

  latitude = [location latitude];
  [latitude doubleValue];
  v7 = v6;
  longitude = [location longitude];
  [longitude doubleValue];
  v10 = v9;

  v11 = [[VKCustomFeature alloc] initWithCoordinate:{v7, v10}];
  v12 = +[NSBundle _ma_bundle];
  v13 = [v12 siriUILocalizedStringForKey:@"Parked Car [Siri Snippet]" value:@"Parked Car" table:0];
  [v11 setText:v13 locale:0];

  v14 = [[GEOFeatureStyleAttributes alloc] initWithAttributes:{5, 3, 6, 349, 10, 2, 0}];
  v20 = xmmword_18870;
  v21 = 0x100010024;
  [v14 replaceAttributes:&v20 count:3];
  [v11 setStyleAttributes:v14];
  v15 = [[_MAMapSnippetCustomFeature alloc] initWithCustomFeature:v11 coordinate:v7, v10];
  customFeatureAnnotation = self->_customFeatureAnnotation;
  self->_customFeatureAnnotation = v15;

  customFeatureStore = self->_customFeatureStore;
  v19 = self->_customFeatureAnnotation;
  v18 = [NSArray arrayWithObjects:&v19 count:1];
  [(_MKCustomFeatureStore *)customFeatureStore addAnnotations:v18];
}

- (id)nameForMapItem:(id)item
{
  itemCopy = item;
  if ([itemCopy _hasTransitDisplayName])
  {
    _transitDisplayName = [itemCopy _transitDisplayName];
  }

  else
  {
    _geoMapItem = [itemCopy _geoMapItem];

    _transitDisplayName = [_geoMapItem name];
    itemCopy = _geoMapItem;
  }

  return _transitDisplayName;
}

- (void)_setupCustomFeatureForMapItem
{
  mapItem = [(MAMapSnippetView *)self mapItem];
  v4 = [MKMapItem mapItemWithLocalSearchMapItem:mapItem];

  [v4 _coordinate];
  v6 = v5;
  [v4 _coordinate];
  v8 = v7;
  v9 = [[VKCustomFeature alloc] initWithCoordinate:{v6, v7}];
  _styleAttributes = [v4 _styleAttributes];
  if (([_styleAttributes hasAttributes] & 1) == 0)
  {
    v11 = +[GEOFeatureStyleAttributes markerStyleAttributes];

    _styleAttributes = v11;
  }

  v12 = [_styleAttributes copy];

  v19 = xmmword_18870;
  v20 = 0x100010024;
  [v12 replaceAttributes:&v19 count:3];
  [v9 setStyleAttributes:v12];
  v13 = [(MAMapSnippetView *)self nameForMapItem:v4];
  [v9 setText:v13 locale:0];

  v14 = [[_MAMapSnippetCustomFeature alloc] initWithCustomFeature:v9 coordinate:v6, v8];
  customFeatureAnnotation = self->_customFeatureAnnotation;
  self->_customFeatureAnnotation = v14;

  -[_MAMapSnippetCustomFeature setShowsBalloonCallout:](self->_customFeatureAnnotation, "setShowsBalloonCallout:", [v12 isLabelPOI] ^ 1);
  customFeatureStore = self->_customFeatureStore;
  v18 = self->_customFeatureAnnotation;
  v17 = [NSArray arrayWithObjects:&v18 count:1];
  [(_MKCustomFeatureStore *)customFeatureStore addAnnotations:v17];
}

- (void)_setupConstraints
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = _NSDictionaryOfVariableBindings(@"_snippetMapView", self->_snippetMapView, 0);
  v6 = [NSMutableDictionary dictionaryWithDictionary:v5];

  resultView = self->_resultView;
  if (resultView)
  {
    v8 = _NSDictionaryOfVariableBindings(@"_resultView", resultView, 0);
    [v6 addEntriesFromDictionary:v8];

    [v4 addObjectsFromArray:&off_49CE0];
    heightAnchor = [(MAResultView *)self->_resultView heightAnchor];
    [(MAResultView *)self->_resultView preferredHeight];
    v10 = [heightAnchor constraintEqualToConstant:?];
    [v3 addObject:v10];
  }

  else
  {
    [v4 addObject:@"V:|-(margin@999)-[_snippetMapView]"];
  }

  reservationView = self->_reservationView;
  if (reservationView)
  {
    v12 = _NSDictionaryOfVariableBindings(@"_reservationView", reservationView, 0);
    [v6 addEntriesFromDictionary:v12];

    [v4 addObjectsFromArray:&off_49CF8];
  }

  else
  {
    [v4 addObject:@"V:[_snippetMapView]-(margin@998)-|"];
  }

  [v4 addObject:@"H:|-(margin)-[_snippetMapView]-(margin)-|"];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v13 = v4;
  v14 = [v13 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v38;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v38 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [NSLayoutConstraint constraintsWithVisualFormat:*(*(&v37 + 1) + 8 * i) options:0 metrics:&off_4A810 views:v6];
        [v3 addObjectsFromArray:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v15);
  }

  heightAnchor2 = [(MKMapView *)self->_snippetMapView heightAnchor];
  v20 = [heightAnchor2 constraintEqualToConstant:0.0];
  mapViewHeightConstraint = self->_mapViewHeightConstraint;
  self->_mapViewHeightConstraint = v20;

  v22 = +[UIScreen mainScreen];
  [v22 bounds];
  [(NSLayoutConstraint *)self->_mapViewHeightConstraint setConstant:round(v23 * 0.381965995)];

  [v3 addObject:self->_mapViewHeightConstraint];
  heightAnchor3 = [(MAMapSnippetOverlayView *)self->_mapOverlayView heightAnchor];
  heightAnchor4 = [(MKMapView *)self->_snippetMapView heightAnchor];
  v34 = [heightAnchor3 constraintEqualToAnchor:heightAnchor4];
  v41[0] = v34;
  widthAnchor = [(MAMapSnippetOverlayView *)self->_mapOverlayView widthAnchor];
  widthAnchor2 = [(MKMapView *)self->_snippetMapView widthAnchor];
  v31 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v41[1] = v31;
  centerXAnchor = [(MAMapSnippetOverlayView *)self->_mapOverlayView centerXAnchor];
  centerXAnchor2 = [(MKMapView *)self->_snippetMapView centerXAnchor];
  v25 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v41[2] = v25;
  centerYAnchor = [(MAMapSnippetOverlayView *)self->_mapOverlayView centerYAnchor];
  centerYAnchor2 = [(MKMapView *)self->_snippetMapView centerYAnchor];
  v28 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v41[3] = v28;
  v29 = [NSArray arrayWithObjects:v41 count:4];
  [v3 addObjectsFromArray:v29];

  [NSLayoutConstraint activateConstraints:v3];
}

- (void)dealloc
{
  [(MKMapView *)self->_snippetMapView setDelegate:0];
  v3.receiver = self;
  v3.super_class = MAMapSnippetView;
  [(MAMapSnippetView *)&v3 dealloc];
}

- (double)desiredHeightForWidth:(double)width
{
  [(MAResultView *)self->_resultView preferredHeight];
  v5 = v4;
  [(NSLayoutConstraint *)self->_mapViewHeightConstraint constant];
  v7 = v6;
  reservationView = self->_reservationView;
  if (reservationView)
  {
    [(MKPlaceReservationRowView *)reservationView _mapkit_fittingSize];
    v10 = 12.0;
  }

  else
  {
    v9 = 0.0;
    v10 = 15.0;
  }

  if (v5 <= 0.0)
  {
    v11 = 15.0;
  }

  else
  {
    v11 = v5;
  }

  return v11 + v7 + v10 + v9;
}

- (void)_tap
{
  delegate = [(MAMapSnippetView *)self delegate];
  mapItem = [(MAMapSnippetView *)self mapItem];
  [delegate mapView:self didChooseMapItem:mapItem headerTapped:1];
}

- (void)_handleTapOnMap:(id)map
{
  snippetMapView = self->_snippetMapView;
  mapCopy = map;
  [(MKMapView *)snippetMapView attributionFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [mapCopy locationInView:self->_snippetMapView];
  v15 = v14;
  v17 = v16;

  v25.origin.x = v7;
  v25.origin.y = v9;
  v25.size.width = v11;
  v25.size.height = v13;
  v24.x = v15;
  v24.y = v17;
  if (CGRectContainsPoint(v25, v24) && ([(MKMapView *)self->_snippetMapView urlForMapAttribution], (delegate2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    delegate = [(MAMapSnippetView *)self delegate];
    mapItem = [(MAMapSnippetView *)self mapItem];
    placeData2 = [mapItem placeData2];
    v21 = [MKMapItem mapItemWithSerializedPlaceData:placeData2];
    [delegate mapViewDidChooseMapAttribution:delegate2 mapItem:v21];
  }

  else
  {
    delegate2 = [(MAMapSnippetView *)self delegate];
    delegate = [(MAMapSnippetView *)self mapItem];
    [delegate2 mapView:self didChooseMapItem:delegate headerTapped:0];
  }
}

- (id)mapView:(id)view viewForAnnotation:(id)annotation
{
  viewCopy = view;
  annotationCopy = annotation;
  userLocation = [viewCopy userLocation];

  if (userLocation == annotationCopy)
  {
    v8 = 0;
  }

  else
  {
    v8 = [viewCopy dequeueReusableAnnotationViewWithIdentifier:@"searchResult"];
    if (!v8)
    {
      v8 = [[MKPinAnnotationView alloc] initWithAnnotation:annotationCopy reuseIdentifier:@"searchResult"];
      [v8 setCanShowCallout:0];
    }
  }

  return v8;
}

- (MAMapSnippetViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_MKPlaceReservationDelegate)reservationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_reservationDelegate);

  return WeakRetained;
}

@end