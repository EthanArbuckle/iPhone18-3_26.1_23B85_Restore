@interface MAMapSnippetView
- (MAMapSnippetView)initWithFrame:(CGRect)a3 mapItem:(id)a4 itemRepresentsCurrentLocation:(BOOL)a5 regionOfInterest:(id)a6 fallbackDistance:(double)a7 reservationDelegate:(id)a8;
- (MAMapSnippetViewDelegate)delegate;
- (_MKPlaceReservationDelegate)reservationDelegate;
- (double)desiredHeightForWidth:(double)a3;
- (id)_newMapOverlayView;
- (id)_newMapView;
- (id)_newReservationView;
- (id)_newResultView;
- (id)mapView:(id)a3 viewForAnnotation:(id)a4;
- (id)nameForMapItem:(id)a3;
- (void)_handleTapOnMap:(id)a3;
- (void)_setupConstraints;
- (void)_setupCustomFeatureForMapItem;
- (void)_setupCustomFeatureForParkedCar;
- (void)_setupCustomFeatureStore;
- (void)_tap;
- (void)dealloc;
@end

@implementation MAMapSnippetView

- (MAMapSnippetView)initWithFrame:(CGRect)a3 mapItem:(id)a4 itemRepresentsCurrentLocation:(BOOL)a5 regionOfInterest:(id)a6 fallbackDistance:(double)a7 reservationDelegate:(id)a8
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v18 = a4;
  v19 = a6;
  v20 = a8;
  v35.receiver = self;
  v35.super_class = MAMapSnippetView;
  v21 = [(MAMapSnippetView *)&v35 initWithFrame:x, y, width, height];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_mapItem, a4);
    v22->_itemRepresentsCurrentLocation = a5;
    objc_storeStrong(&v22->_regionOfInterestRadiusInMiles, a6);
    v22->_fallbackDistance = a7;
    objc_storeWeak(&v22->_reservationDelegate, v20);
    v23 = [(SALocalSearchMapItem *)v22->_mapItem location];
    if (([v23 isRegionCity] & 1) == 0 && (objc_msgSend(v23, "isRegionCounty") & 1) == 0 && (objc_msgSend(v23, "isRegionState") & 1) == 0 && (objc_msgSend(v23, "isRegionCountry") & 1) == 0)
    {
      v24 = [(MAMapSnippetView *)v22 _newResultView];
      resultView = v22->_resultView;
      v22->_resultView = v24;

      [(MAMapSnippetView *)v22 addSubview:v22->_resultView];
    }

    v26 = [(MAMapSnippetView *)v22 _newMapView];
    snippetMapView = v22->_snippetMapView;
    v22->_snippetMapView = v26;

    [(MAMapSnippetView *)v22 addSubview:v22->_snippetMapView];
    v28 = [(MAMapSnippetView *)v22 _newMapOverlayView];
    mapOverlayView = v22->_mapOverlayView;
    v22->_mapOverlayView = v28;

    [(MAMapSnippetView *)v22 addSubview:v22->_mapOverlayView];
    v30 = [(MAMapSnippetView *)v22 _newReservationView];
    reservationView = v22->_reservationView;
    v22->_reservationView = v30;

    if (v22->_reservationView)
    {
      [(MAMapSnippetView *)v22 addSubview:?];
    }

    if ([v18 isParkingLocation])
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
  v3 = [(MAMapSnippetView *)self mapItem];
  v4 = [v3 restaurantInfo];
  v5 = [(MAMapSnippetView *)self reservationDelegate];
  v6 = [v4 _ma_reservationInfoWithDelegate:v5];

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
  v5 = [v3 layer];
  [v5 setCornerRadius:10.0];

  return v3;
}

- (id)_newMapOverlayView
{
  v3 = [[MAMapSnippetOverlayView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(MAMapSnippetOverlayView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_handleTapOnMap:"];
  [(MAMapSnippetOverlayView *)v3 addGestureRecognizer:v4];
  v5 = [(MAMapSnippetOverlayView *)v3 layer];
  [v5 setCornerRadius:10.0];

  return v3;
}

- (void)_setupCustomFeatureForParkedCar
{
  v3 = [(MAMapSnippetView *)self mapItem];
  v4 = [v3 location];

  v5 = [v4 latitude];
  [v5 doubleValue];
  v7 = v6;
  v8 = [v4 longitude];
  [v8 doubleValue];
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

- (id)nameForMapItem:(id)a3
{
  v3 = a3;
  if ([v3 _hasTransitDisplayName])
  {
    v4 = [v3 _transitDisplayName];
  }

  else
  {
    v5 = [v3 _geoMapItem];

    v4 = [v5 name];
    v3 = v5;
  }

  return v4;
}

- (void)_setupCustomFeatureForMapItem
{
  v3 = [(MAMapSnippetView *)self mapItem];
  v4 = [MKMapItem mapItemWithLocalSearchMapItem:v3];

  [v4 _coordinate];
  v6 = v5;
  [v4 _coordinate];
  v8 = v7;
  v9 = [[VKCustomFeature alloc] initWithCoordinate:{v6, v7}];
  v10 = [v4 _styleAttributes];
  if (([v10 hasAttributes] & 1) == 0)
  {
    v11 = +[GEOFeatureStyleAttributes markerStyleAttributes];

    v10 = v11;
  }

  v12 = [v10 copy];

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
    v9 = [(MAResultView *)self->_resultView heightAnchor];
    [(MAResultView *)self->_resultView preferredHeight];
    v10 = [v9 constraintEqualToConstant:?];
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

  v19 = [(MKMapView *)self->_snippetMapView heightAnchor];
  v20 = [v19 constraintEqualToConstant:0.0];
  mapViewHeightConstraint = self->_mapViewHeightConstraint;
  self->_mapViewHeightConstraint = v20;

  v22 = +[UIScreen mainScreen];
  [v22 bounds];
  [(NSLayoutConstraint *)self->_mapViewHeightConstraint setConstant:round(v23 * 0.381965995)];

  [v3 addObject:self->_mapViewHeightConstraint];
  v36 = [(MAMapSnippetOverlayView *)self->_mapOverlayView heightAnchor];
  v35 = [(MKMapView *)self->_snippetMapView heightAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v41[0] = v34;
  v33 = [(MAMapSnippetOverlayView *)self->_mapOverlayView widthAnchor];
  v32 = [(MKMapView *)self->_snippetMapView widthAnchor];
  v31 = [v33 constraintEqualToAnchor:v32];
  v41[1] = v31;
  v30 = [(MAMapSnippetOverlayView *)self->_mapOverlayView centerXAnchor];
  v24 = [(MKMapView *)self->_snippetMapView centerXAnchor];
  v25 = [v30 constraintEqualToAnchor:v24];
  v41[2] = v25;
  v26 = [(MAMapSnippetOverlayView *)self->_mapOverlayView centerYAnchor];
  v27 = [(MKMapView *)self->_snippetMapView centerYAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
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

- (double)desiredHeightForWidth:(double)a3
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
  v4 = [(MAMapSnippetView *)self delegate];
  v3 = [(MAMapSnippetView *)self mapItem];
  [v4 mapView:self didChooseMapItem:v3 headerTapped:1];
}

- (void)_handleTapOnMap:(id)a3
{
  snippetMapView = self->_snippetMapView;
  v5 = a3;
  [(MKMapView *)snippetMapView attributionFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [v5 locationInView:self->_snippetMapView];
  v15 = v14;
  v17 = v16;

  v25.origin.x = v7;
  v25.origin.y = v9;
  v25.size.width = v11;
  v25.size.height = v13;
  v24.x = v15;
  v24.y = v17;
  if (CGRectContainsPoint(v25, v24) && ([(MKMapView *)self->_snippetMapView urlForMapAttribution], (v22 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v18 = [(MAMapSnippetView *)self delegate];
    v19 = [(MAMapSnippetView *)self mapItem];
    v20 = [v19 placeData2];
    v21 = [MKMapItem mapItemWithSerializedPlaceData:v20];
    [v18 mapViewDidChooseMapAttribution:v22 mapItem:v21];
  }

  else
  {
    v22 = [(MAMapSnippetView *)self delegate];
    v18 = [(MAMapSnippetView *)self mapItem];
    [v22 mapView:self didChooseMapItem:v18 headerTapped:0];
  }
}

- (id)mapView:(id)a3 viewForAnnotation:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 userLocation];

  if (v7 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v5 dequeueReusableAnnotationViewWithIdentifier:@"searchResult"];
    if (!v8)
    {
      v8 = [[MKPinAnnotationView alloc] initWithAnnotation:v6 reuseIdentifier:@"searchResult"];
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