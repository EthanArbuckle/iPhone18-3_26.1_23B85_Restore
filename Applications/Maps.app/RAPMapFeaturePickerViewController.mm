@interface RAPMapFeaturePickerViewController
- ($873BFAB23BBB6E2F0B0288ED2F935688)selectedMapRect;
- (BOOL)mapView:(id)view shouldSelectLabelMarker:(id)marker;
- (CLLocationCoordinate2D)selectedCoordinate;
- (CLLocationCoordinate2D)tappedCoordinate;
- (RAPMapStateProtocol)mapViewReportContext;
- (id)initForPickingFeatureOfKind:(int64_t)kind withPrompt:(id)prompt title:(id)title inMapRect:(id)rect withCamera:(id)camera analyticsTarget:(int)target preferredMapType:(unint64_t)type selection:(id)self0;
- (id)initForPickingFeatureOfKind:(int64_t)kind withPrompt:(id)prompt title:(id)title inMapRect:(id)rect withCamera:(id)camera analyticsTarget:(int)target selection:(id)selection;
- (id)initForPickingFeatureOfKind:(int64_t)kind withPrompt:(id)prompt title:(id)title initialFeatureCoordinate:(CLLocationCoordinate2D)coordinate inMapRect:(id)rect withCamera:(id)camera analyticsTarget:(int)target selection:(id)self0;
- (id)initForPickingFeatureOfKind:(int64_t)kind withPrompt:(id)prompt title:(id)title initialFeatureCoordinate:(CLLocationCoordinate2D)coordinate inMapRect:(id)rect withCamera:(id)camera analyticsTarget:(int)target selection:(id)self0 textFieldTitle:(id)self1 textFieldText:(id)self2 textFieldWithEditBlock:(id)self3;
- (id)mapView:(id)view viewForAnnotation:(id)annotation;
- (int)_selectionAction;
- (void)_cancel;
- (void)_commit;
- (void)_handleSegmentedControlTap:(id)tap;
- (void)_mapTappedForTransitLineSelection:(id)selection;
- (void)_selectionDidChange;
- (void)_showModeSelector;
- (void)_updateAttributionInsets;
- (void)_updateCommitBarItem;
- (void)displayAnnotationAtCoordinate:(CLLocationCoordinate2D)coordinate withText:(id)text;
- (void)mapView:(id)view didAddAnnotationViews:(id)views;
- (void)mapView:(id)view didDeselectLabelMarker:(id)marker;
- (void)mapView:(id)view didSelectLabelMarker:(id)marker;
- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated;
- (void)mapViewDidFinishRenderingMap:(id)map fullyRendered:(BOOL)rendered;
- (void)mapViewWillStartRenderingMap:(id)map;
- (void)setDidCommit:(BOOL)commit;
- (void)setHandlerBlocksForUserCommittedSelection:(id)selection cancelled:(id)cancelled;
- (void)setHandlerBlocksForUserCommittedSelection:(id)selection withRightBarButtonItemTitle:(id)title;
- (void)setMapViewZoomLevel:(double)level;
- (void)setPrompt:(id)prompt;
- (void)setSelectedLabelMarker:(id)marker;
- (void)setTextFieldPlaceholder:(id)placeholder;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation RAPMapFeaturePickerViewController

- (CLLocationCoordinate2D)tappedCoordinate
{
  latitude = self->_tappedCoordinate.latitude;
  longitude = self->_tappedCoordinate.longitude;
  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- ($873BFAB23BBB6E2F0B0288ED2F935688)selectedMapRect
{
  x = self->_selectedMapRect.origin.x;
  y = self->_selectedMapRect.origin.y;
  width = self->_selectedMapRect.size.width;
  height = self->_selectedMapRect.size.height;
  result.var1.var1 = height;
  result.var1.var0 = width;
  result.var0.var1 = y;
  result.var0.var0 = x;
  return result;
}

- (void)_handleSegmentedControlTap:(id)tap
{
  selectedViewMode = [(MapViewModeSelector *)self->_modeSelector selectedViewMode];
  v5 = 0;
  mapView = self->_mapView;
  if (selectedViewMode == 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = selectedViewMode - 1;
  }

  if (v7 <= 6)
  {
    v5 = qword_101215BC8[v7];
  }

  [(MKMapView *)mapView setMapType:v5];
}

- (void)_updateAttributionInsets
{
  [(UIView *)self->_floatingControlsView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height];
  v4 = v3;
  view = [(RAPMapFeaturePickerViewController *)self view];
  [view safeAreaInsets];
  v7 = v6;

  v8 = +[UIApplication sharedApplication];
  userInterfaceLayoutDirection = [v8 userInterfaceLayoutDirection];

  mapView = self->_mapView;
  view2 = [(RAPMapFeaturePickerViewController *)self view];
  [view2 safeAreaInsets];
  v12 = v11;
  if (userInterfaceLayoutDirection == 1)
  {
    v12 = v11 + 8.0;
    view3 = [(RAPMapFeaturePickerViewController *)self view];
    [view3 safeAreaInsets];
  }

  else
  {
    view3 = [(RAPMapFeaturePickerViewController *)self view];
    [view3 safeAreaInsets];
    v14 = v15 + 8.0;
  }

  [(MKMapView *)mapView _setAttributionInsets:0.0, v12, v4 + v7 + 8.0, v14];
}

- (void)_showModeSelector
{
  userLocationButtonBottomConstraint = [(LocationRefinementViewController *)self->_locationPicker userLocationButtonBottomConstraint];

  if (userLocationButtonBottomConstraint)
  {
    userLocationButtonBottomConstraint2 = [(LocationRefinementViewController *)self->_locationPicker userLocationButtonBottomConstraint];
    v38 = userLocationButtonBottomConstraint2;
    v5 = [NSArray arrayWithObjects:&v38 count:1];
    [NSLayoutConstraint deactivateConstraints:v5];

    snapToUserLocationContainerView = [(LocationRefinementViewController *)self->_locationPicker snapToUserLocationContainerView];
    [snapToUserLocationContainerView removeFromSuperview];
  }

  v7 = [[MapViewModeSelector alloc] initWithDesiredViewModes:&off_1016ED880];
  modeSelector = self->_modeSelector;
  self->_modeSelector = v7;

  mapView = [(LocationRefinementViewController *)self->_locationPicker mapView];
  mapType = [mapView mapType];
  v11 = 3;
  v12 = 7;
  if (mapType != 108)
  {
    v12 = 0;
  }

  if (mapType != 104)
  {
    v11 = v12;
  }

  v13 = 5;
  v14 = -1;
  if (mapType != 103)
  {
    v14 = 0;
  }

  if (mapType != 4)
  {
    v13 = v14;
  }

  if (mapType <= 103)
  {
    v11 = v13;
  }

  v15 = 2;
  v16 = 1;
  v17 = 6;
  if (mapType != 3)
  {
    v17 = 0;
  }

  if (mapType != 2)
  {
    v16 = v17;
  }

  if (mapType != 1)
  {
    v15 = v16;
  }

  if (mapType <= 3)
  {
    v18 = v15;
  }

  else
  {
    v18 = v11;
  }

  [(MapViewModeSelector *)self->_modeSelector addTarget:self action:"_handleSegmentedControlTap:" forControlEvents:4096];
  [(MapViewModeSelector *)self->_modeSelector setSelectedViewMode:v18];
  v19 = sub_1007E68A8(self->_modeSelector);
  floatingControlsView = self->_floatingControlsView;
  self->_floatingControlsView = v19;

  view = [(RAPMapFeaturePickerViewController *)self view];
  [view addSubview:self->_floatingControlsView];

  leadingAnchor = [(UIView *)self->_floatingControlsView leadingAnchor];
  view2 = [(RAPMapFeaturePickerViewController *)self view];
  safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
  leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
  v32 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:8.0];
  v37[0] = v32;
  trailingAnchor = [(UIView *)self->_floatingControlsView trailingAnchor];
  view3 = [(RAPMapFeaturePickerViewController *)self view];
  safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
  trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
  v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-8.0];
  v37[1] = v26;
  bottomAnchor = [(UIView *)self->_floatingControlsView bottomAnchor];
  safeAreaLayoutGuide3 = [(MKMapView *)self->_mapView safeAreaLayoutGuide];
  bottomAnchor2 = [safeAreaLayoutGuide3 bottomAnchor];
  v30 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-8.0];
  v37[2] = v30;
  v31 = [NSArray arrayWithObjects:v37 count:3];
  [NSLayoutConstraint activateConstraints:v31];
}

- (void)mapViewDidFinishRenderingMap:(id)map fullyRendered:(BOOL)rendered
{
  self->_mapViewHasFinishedToRenderMap = 1;
  if ([(RAPMapFeaturePickerViewController *)self requiresRenderedMapToContinue:map])
  {

    [(RAPMapFeaturePickerViewController *)self _updateCommitBarItem];
  }
}

- (void)mapViewWillStartRenderingMap:(id)map
{
  self->_mapViewHasFinishedToRenderMap = 0;
  if ([(RAPMapFeaturePickerViewController *)self requiresRenderedMapToContinue])
  {

    [(RAPMapFeaturePickerViewController *)self _updateCommitBarItem];
  }
}

- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated
{
  viewCopy = view;
  kind = self->_kind;
  if (kind == 2)
  {
    [(MKMapView *)self->_mapView visibleMapRect];
    self->_selectedMapRect.origin.x = v6;
    self->_selectedMapRect.origin.y = v7;
    self->_selectedMapRect.size.width = v8;
    self->_selectedMapRect.size.height = v9;
    [(RAPMapFeaturePickerViewController *)self _selectionDidChange];
    kind = self->_kind;
  }

  if ((kind - 3) <= 2)
  {
    [(LocationRefinementViewController *)self->_locationPicker selectedCoordinate];
    self->_selectedCoordinate.latitude = v10;
    self->_selectedCoordinate.longitude = v11;
    v12 = [[RAPAddressLocation alloc] initWithCoordinate:self->_selectedCoordinate.latitude, self->_selectedCoordinate.longitude];
    selectedAddressLocation = self->_selectedAddressLocation;
    self->_selectedAddressLocation = v12;

    [(RAPAddressLocation *)self->_selectedAddressLocation processWithGeocoderIfNeededWithCompletion:0];
    [(RAPMapFeaturePickerViewController *)self _selectionDidChange];
  }
}

- (id)mapView:(id)view viewForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  if (self->_transitLinesAnnotation == annotationCopy)
  {
    v7 = [view dequeueReusableAnnotationViewWithIdentifier:@"transitLinesAnnotation"];
    if (!v7)
    {
      v7 = [[MKAnnotationView alloc] initWithAnnotation:annotationCopy reuseIdentifier:@"transitLinesAnnotation"];
    }

    [v7 setCanShowCallout:1];
  }

  else
  {
    objc_opt_class();
    objc_opt_isKindOfClass();
    v7 = 0;
  }

  return v7;
}

- (void)mapView:(id)view didSelectLabelMarker:(id)marker
{
  markerCopy = marker;
  if ([(RAPMapFeaturePickerViewController *)self _kindTracksLabelMarkerSelection])
  {
    objc_storeStrong(&self->_selectedLabelMarker, marker);
    [(RAPMapFeaturePickerViewController *)self _selectionDidChange];
  }
}

- (void)mapView:(id)view didDeselectLabelMarker:(id)marker
{
  markerCopy = marker;
  _kindTracksLabelMarkerSelection = [(RAPMapFeaturePickerViewController *)self _kindTracksLabelMarkerSelection];
  v6 = markerCopy;
  if (_kindTracksLabelMarkerSelection)
  {
    selectedLabelMarker = self->_selectedLabelMarker;
    if (!markerCopy || selectedLabelMarker == markerCopy)
    {
      self->_selectedLabelMarker = 0;

      [(RAPMapFeaturePickerViewController *)self _selectionDidChange];
      v6 = markerCopy;
    }
  }
}

- (RAPMapStateProtocol)mapViewReportContext
{
  mapViewReportContext = self->_mapViewReportContext;
  if (!mapViewReportContext)
  {
    if (self->_mapView)
    {
      self->_creatingMapViewReportContext = 1;
      v4 = +[MKMapService sharedService];
      v5 = [v4 mapsDefaultTraitsForMapView:self->_mapView mapViewEnteredForegroundDate:0 mapViewportChangedDate:0];

      v6 = [[RAPMapState alloc] initWithMapView:self->_mapView traits:v5 place:0];
      v7 = self->_mapViewReportContext;
      self->_mapViewReportContext = v6;

      self->_creatingMapViewReportContext = 0;
      mapViewReportContext = self->_mapViewReportContext;
    }

    else
    {
      mapViewReportContext = 0;
    }
  }

  return mapViewReportContext;
}

- (void)setSelectedLabelMarker:(id)marker
{
  objc_storeStrong(&self->_selectedLabelMarker, marker);
  markerCopy = marker;
  [(MKMapView *)self->_mapView _selectLabelMarker:self->_selectedLabelMarker animated:1];
}

- (BOOL)mapView:(id)view shouldSelectLabelMarker:(id)marker
{
  viewCopy = view;
  markerCopy = marker;
  v8 = markerCopy;
  LOBYTE(v9) = 0;
  kind = self->_kind;
  if (kind > 6)
  {
    if (kind == 7)
    {
      if ([markerCopy hasBusinessID])
      {
        v11 = [v8 featureType] == 5;
LABEL_12:
        LOBYTE(v9) = v11;
        goto LABEL_16;
      }
    }

    else
    {
      if (kind != 8)
      {
        goto LABEL_16;
      }

      if ([markerCopy hasBusinessID])
      {
        v11 = [v8 featureType] == 6;
        goto LABEL_12;
      }
    }

    LOBYTE(v9) = 0;
    goto LABEL_16;
  }

  if (kind)
  {
    if (kind == 1)
    {
      LOBYTE(v9) = [markerCopy hasBusinessID];
    }
  }

  else
  {
    v9 = [markerCopy isOneWayArrow] ^ 1;
  }

LABEL_16:

  return v9;
}

- (void)mapView:(id)view didAddAnnotationViews:(id)views
{
  transitLinesAnnotation = self->_transitLinesAnnotation;
  if (transitLinesAnnotation)
  {
    viewsCopy = views;
    v8 = [view viewForAnnotation:transitLinesAnnotation];
    v9 = [viewsCopy containsObject:v8];

    if (v9)
    {
      v10 = dispatch_time(0, 300000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100CB4048;
      block[3] = &unk_101661B18;
      block[4] = self;
      dispatch_after(v10, &_dispatch_main_q, block);
    }
  }
}

- (void)displayAnnotationAtCoordinate:(CLLocationCoordinate2D)coordinate withText:(id)text
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  textCopy = text;
  v11.latitude = latitude;
  v11.longitude = longitude;
  if (CLLocationCoordinate2DIsValid(v11))
  {
    longitude = [[RAPTransitLinesAnnotation alloc] initWithCoordinate:textCopy title:latitude, longitude];
    transitLinesAnnotation = self->_transitLinesAnnotation;
    self->_transitLinesAnnotation = longitude;

    [(MKMapView *)self->_mapView addAnnotation:self->_transitLinesAnnotation];
    [(RAPMapFeaturePickerViewController *)self _updateCommitBarItem];
  }
}

- (void)_mapTappedForTransitLineSelection:(id)selection
{
  [selection locationInView:self->_mapView];
  v5 = v4;
  v7 = v6;
  [(MKMapView *)self->_mapView convertPoint:self->_mapView toCoordinateFromView:?];
  self->_tappedCoordinate.latitude = v8;
  self->_tappedCoordinate.longitude = v9;
  v10 = [(MKMapView *)self->_mapView _transitLineMarkersForSelectionAtPoint:v5, v7];
  v11 = [v10 count];
  if (v11)
  {
    v12 = [v10 copy];
  }

  else
  {
    v12 = 0;
  }

  objc_storeStrong(&self->_selectedTransitLineMarkers, v12);
  if (v11)
  {
  }

  if (self->_transitLinesAnnotation)
  {
    [(MKMapView *)self->_mapView removeAnnotation:?];
    transitLinesAnnotation = self->_transitLinesAnnotation;
    self->_transitLinesAnnotation = 0;
  }

  v14 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v10, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = v10;
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        identifier = [*(*(&v23 + 1) + 8 * i) identifier];
        if (identifier)
        {
          [v14 addObject:identifier];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v17);
  }

  v21 = MKMapItemIdentifiersArrayFromGEOMapItemIdentifiersArray();
  selectedTransitLineIdentifiers = self->_selectedTransitLineIdentifiers;
  self->_selectedTransitLineIdentifiers = v21;

  [(RAPMapFeaturePickerViewController *)self _selectionDidChange];
  [(RAPMapFeaturePickerViewController *)self _updateCommitBarItem];
}

- (CLLocationCoordinate2D)selectedCoordinate
{
  p_selectedCoordinate = &self->_selectedCoordinate;
  if ((self->_kind - 3) >= 3)
  {
    latitude = p_selectedCoordinate->latitude;
    longitude = self->_selectedCoordinate.longitude;
  }

  else
  {
    [(LocationRefinementViewController *)self->_locationPicker selectedCoordinate];
    v5 = v4;
    v7 = v6;
    latitude = p_selectedCoordinate->latitude;
    if (vabdd_f64(p_selectedCoordinate->latitude, v5) >= 0.00000000999999994 || (longitude = p_selectedCoordinate->longitude, vabdd_f64(longitude, v7) >= 0.00000000999999994))
    {
      v10 = [RAPAddressLocation alloc];
      [(LocationRefinementViewController *)self->_locationPicker selectedCoordinate];
      v11 = [(RAPAddressLocation *)v10 initWithCoordinate:?];
      selectedAddressLocation = self->_selectedAddressLocation;
      self->_selectedAddressLocation = v11;

      [(LocationRefinementViewController *)self->_locationPicker selectedCoordinate];
    }
  }

  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = RAPMapFeaturePickerViewController;
  [(RAPMapFeaturePickerViewController *)&v7 viewWillDisappear:disappear];
  [(LocationRefinementViewController *)self->_locationPicker setMapViewDelegate:0];
  navigationController = [(RAPMapFeaturePickerViewController *)self navigationController];
  isToolbarHidden = [navigationController isToolbarHidden];

  if ((isToolbarHidden & 1) == 0)
  {
    navigationController2 = [(RAPMapFeaturePickerViewController *)self navigationController];
    [navigationController2 setToolbarHidden:0 animated:0];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = RAPMapFeaturePickerViewController;
  [(RAPMapFeaturePickerViewController *)&v4 viewWillAppear:appear];
  [(LocationRefinementViewController *)self->_locationPicker setMapViewDelegate:self];
}

- (void)viewDidLoad
{
  v36.receiver = self;
  v36.super_class = RAPMapFeaturePickerViewController;
  [(RAPMapFeaturePickerViewController *)&v36 viewDidLoad];
  view = [(RAPMapFeaturePickerViewController *)self view];
  v4 = self->_kind - 3;
  if (self->_textFieldEditBlock)
  {
    v5 = [[RAPAddAPlaceLocationRefinementViewController alloc] initWithCamera:self->_mapCamera showCrosshair:v4 < 3 textFieldTitle:self->_textFieldTitle textFieldPlaceholder:self->_textFieldPlaceholder textFieldText:self->_textFieldText textFieldEditBlock:self->_textFieldEditBlock];
  }

  else
  {
    v5 = [[RAPLocationRefinementViewController alloc] initWithCamera:self->_mapCamera showCrosshair:v4 < 3];
  }

  locationPicker = self->_locationPicker;
  self->_locationPicker = &v5->super;

  [(RAPMapFeaturePickerViewController *)self mapViewZoomLevel];
  if (v7 >= 0.0)
  {
    v8 = self->_locationPicker;
    [(RAPMapFeaturePickerViewController *)self mapViewZoomLevel];
    [(LocationRefinementViewController *)v8 setInitialMapViewZoomLevel:?];
  }

  [view bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  view2 = [(RAPLocationRefinementViewController *)self->_locationPicker view];
  [view2 setFrame:{v10, v12, v14, v16}];

  [(LocationRefinementViewController *)self->_locationPicker setMapViewDelegate:self];
  mapView = [(LocationRefinementViewController *)self->_locationPicker mapView];
  [mapView setShowsUserLocation:1];

  mapView2 = [(LocationRefinementViewController *)self->_locationPicker mapView];
  [mapView2 _setShowsVenues:1];

  [(LocationRefinementViewController *)self->_locationPicker setInstructionsText:self->_prompt];
  mapView3 = [(LocationRefinementViewController *)self->_locationPicker mapView];
  [mapView3 visibleMapRect];
  self->_selectedMapRect.origin.x = v21;
  self->_selectedMapRect.origin.y = v22;
  self->_selectedMapRect.size.width = v23;
  self->_selectedMapRect.size.height = v24;

  mapView4 = [(LocationRefinementViewController *)self->_locationPicker mapView];
  [mapView4 setBackdropViewQualityChangingDisabled:1];

  mapView5 = [(LocationRefinementViewController *)self->_locationPicker mapView];
  mapView = self->_mapView;
  self->_mapView = mapView5;

  [(RAPMapFeaturePickerViewController *)self addChildViewController:self->_locationPicker];
  view3 = [(RAPLocationRefinementViewController *)self->_locationPicker view];
  [view addSubview:view3];

  [(RAPLocationRefinementViewController *)self->_locationPicker didMoveToParentViewController:self];
  if (self->_rect.origin.x != MKMapRectNull.origin.x || self->_rect.origin.y != MKMapRectNull.origin.y)
  {
    [(MKMapView *)self->_mapView setVisibleMapRect:?];
  }

  kind = self->_kind;
  if (kind > 4)
  {
    if (kind > 6)
    {
      if (kind != 7)
      {
        if (kind != 8)
        {
          goto LABEL_34;
        }

        goto LABEL_21;
      }

      [(MKMapView *)self->_mapView setMapType:104];
      [(MKMapView *)self->_mapView _setCanSelectAllLabels:1];
      v33 = [MKPointOfInterestFilter alloc];
      v37 = MKPointOfInterestCategoryPublicTransport;
      v34 = [NSArray arrayWithObjects:&v37 count:1];
      v31 = [v33 initIncludingCategories:v34];

      [(MKMapView *)self->_mapView setPointOfInterestFilter:v31];
    }

    else
    {
      if (kind == 5)
      {
        goto LABEL_21;
      }

      [(MKMapView *)self->_mapView setMapType:104];
      v31 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_mapTappedForTransitLineSelection:"];
      [(MKMapView *)self->_mapView addGestureRecognizer:v31];
    }

    goto LABEL_34;
  }

  if (kind < 2)
  {
LABEL_21:
    if (self->_hasPreferredMapType)
    {
      if ((self->_preferredMapType & 0xFFFFFFFFFFFFFFFDLL) == 1)
      {
        preferredMapType = 0;
      }

      else
      {
        preferredMapType = self->_preferredMapType;
      }
    }

    else
    {
      preferredMapType = 0;
    }

    [(MKMapView *)self->_mapView setMapType:preferredMapType];
    [(MKMapView *)self->_mapView _setCanSelectAllLabels:1];
    goto LABEL_34;
  }

  if ((kind - 3) >= 2)
  {
    if (kind == 2)
    {
      [(MKMapView *)self->_mapView setMapType:3];
    }
  }

  else
  {
    if (self->_hasPreferredMapType)
    {
      if ((self->_preferredMapType & 0xFFFFFFFFFFFFFFFDLL) == 1)
      {
        v30 = 4;
      }

      else
      {
        v30 = self->_preferredMapType;
      }
    }

    else
    {
      v30 = 4;
    }

    [(MKMapView *)self->_mapView setMapType:v30];
    if (CLLocationCoordinate2DIsValid(self->_initialFeatureCoordinate))
    {
      [(LocationRefinementViewController *)self->_locationPicker setSelectedCoordinate:0 animated:self->_initialFeatureCoordinate.latitude, self->_initialFeatureCoordinate.longitude];
    }
  }

LABEL_34:
  selectedLabelMarker = self->_selectedLabelMarker;
  if (selectedLabelMarker)
  {
    [(MKMapView *)self->_mapView _selectLabelMarker:selectedLabelMarker animated:1];
  }

  if ([(RAPMapFeaturePickerViewController *)self _shouldShowModeSelector])
  {
    [(RAPMapFeaturePickerViewController *)self _showModeSelector];
    [(RAPMapFeaturePickerViewController *)self _updateAttributionInsets];
  }
}

- (void)setTextFieldPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  v4 = [placeholderCopy copy];
  textFieldPlaceholder = self->_textFieldPlaceholder;
  self->_textFieldPlaceholder = v4;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(RAPLocationRefinementViewController *)self->_locationPicker setTextFieldPlaceholder:placeholderCopy];
  }
}

- (void)setMapViewZoomLevel:(double)level
{
  self->_mapViewZoomLevel = level;
  if (level >= 0.0)
  {
    [(LocationRefinementViewController *)self->_locationPicker setInitialMapViewZoomLevel:?];
  }
}

- (void)_updateCommitBarItem
{
  v3 = 0;
  kind = self->_kind;
  if (kind <= 2)
  {
    if (kind >= 2)
    {
      v3 = kind == 2;
      goto LABEL_31;
    }

    goto LABEL_8;
  }

  if ((kind - 3) < 3)
  {
    selectedAddressLocation = [(RAPMapFeaturePickerViewController *)self selectedAddressLocation];
    if (selectedAddressLocation)
    {
      v8 = !self->_didCommit;
    }

    else
    {
      v8 = 0;
    }

    v9 = self->_kind;
    if (v9 == 5 || v9 == 3)
    {
      v11 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3E45798EE0000000uLL), vabdq_f64(self->_initialFeatureCoordinate, kCLLocationCoordinate2DInvalid)));
      v3 = v11.i8[0] & v11.i8[4] & v8;
      if ((v11.i32[0] & v11.i32[1] & 1) == 0 && v8)
      {
        [(RAPMapFeaturePickerViewController *)self selectedCoordinate];
        v3 = (vabdd_f64(v12, self->_initialFeatureCoordinate.latitude) >= 0.00000000999999994) | (vabdd_f64(v13, self->_initialFeatureCoordinate.longitude) >= 0.00000000999999994);
      }
    }

    else
    {
      v3 = v8;
    }

    if (self->_textFieldEditBlock)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        editedValue = [(RAPLocationRefinementViewController *)self->_locationPicker editedValue];
        v15 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
        v16 = [editedValue stringByTrimmingCharactersInSet:v15];

        v3 = (v3 & 1) != 0 && [v16 length] != 0;
      }
    }

    if (!self->_didCommit)
    {
      [(RAPMapFeaturePickerViewController *)self setPrompt:self->_originalPromptMessage];
      goto LABEL_31;
    }

    selectedTransitLineMarkers = +[NSBundle mainBundle];
    v17 = [selectedTransitLineMarkers localizedStringForKey:@"Gathering location data [Report a Problem]" value:@"localized string not found" table:0];
    [(RAPMapFeaturePickerViewController *)self setPrompt:v17];

    goto LABEL_29;
  }

  if ((kind - 7) < 2)
  {
LABEL_8:
    selectedLabelMarker = [(RAPMapFeaturePickerViewController *)self selectedLabelMarker];
    v3 = selectedLabelMarker != 0;

    goto LABEL_31;
  }

  if (kind == 6)
  {
    selectedTransitLineMarkers = [(RAPMapFeaturePickerViewController *)self selectedTransitLineMarkers];
    if ([selectedTransitLineMarkers count])
    {
      v3 = self->_transitLinesAnnotation != 0;
    }

    else
    {
      v3 = 0;
    }

LABEL_29:
  }

LABEL_31:
  requiresRenderedMapToContinue = [(RAPMapFeaturePickerViewController *)self requiresRenderedMapToContinue];
  mapViewHasFinishedToRenderMap = (requiresRenderedMapToContinue ^ 1) & v3;
  if ((requiresRenderedMapToContinue ^ 1) & 1) == 0 && (v3)
  {
    mapViewHasFinishedToRenderMap = self->_mapViewHasFinishedToRenderMap;
  }

  self->_canCommit = mapViewHasFinishedToRenderMap & 1;
  commitBarItem = self->_commitBarItem;

  [(UIBarButtonItem *)commitBarItem setEnabled:?];
}

- (int)_selectionAction
{
  v2 = self->_kind - 6;
  if (v2 > 2)
  {
    return 10141;
  }

  else
  {
    return dword_101215870[v2];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = RAPMapFeaturePickerViewController;
  [(RAPMapFeaturePickerViewController *)&v6 viewDidDisappear:disappear];
  if ([(RAPMapFeaturePickerViewController *)self isMovingFromParentViewController])
  {
    backButtonPressedCallback = [(RAPMapFeaturePickerViewController *)self backButtonPressedCallback];

    if (backButtonPressedCallback)
    {
      backButtonPressedCallback2 = [(RAPMapFeaturePickerViewController *)self backButtonPressedCallback];
      backButtonPressedCallback2[2]();
    }
  }
}

- (void)_cancel
{
  cancel = self->_cancel;
  if (cancel)
  {
    cancel[2](cancel, self);
  }
}

- (void)_commit
{
  commit = self->_commit;
  if (commit)
  {
    commit[2](commit, self);
  }

  if ([(RAPMapFeaturePickerViewController *)self analyticTarget])
  {
    v4 = +[MKMapService sharedService];
    [v4 captureUserAction:10110 onTarget:-[RAPMapFeaturePickerViewController analyticTarget](self eventValue:{"analyticTarget"), 0}];
  }
}

- (void)setHandlerBlocksForUserCommittedSelection:(id)selection withRightBarButtonItemTitle:(id)title
{
  selectionCopy = selection;
  titleCopy = title;
  if (self->_commit != selectionCopy)
  {
    v7 = [selectionCopy copy];
    commit = self->_commit;
    self->_commit = v7;

    if (selectionCopy)
    {
      if (self->_commitBarItem)
      {
        goto LABEL_11;
      }

      v9 = [UIBarButtonItem alloc];
      if (titleCopy)
      {
        v10 = [v9 initWithTitle:titleCopy style:2 target:self action:"_commit"];
      }

      else
      {
        v10 = [v9 initWithBarButtonSystemItem:0 target:self action:"_commit"];
      }

      commitBarItem = self->_commitBarItem;
      self->_commitBarItem = v10;

      [(RAPMapFeaturePickerViewController *)self _updateCommitBarItem];
      v14 = self->_commitBarItem;
    }

    else
    {
      navigationItem = [(RAPMapFeaturePickerViewController *)self navigationItem];
      rightBarButtonItem = [navigationItem rightBarButtonItem];
      v13 = self->_commitBarItem;

      if (rightBarButtonItem != v13)
      {
        goto LABEL_11;
      }

      v14 = 0;
    }

    navigationItem2 = [(RAPMapFeaturePickerViewController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:v14];
  }

LABEL_11:
}

- (void)setHandlerBlocksForUserCommittedSelection:(id)selection cancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  selectionCopy = selection;
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"Next [Report a Problem]" value:@"localized string not found" table:0];
  [(RAPMapFeaturePickerViewController *)self setHandlerBlocksForUserCommittedSelection:selectionCopy withRightBarButtonItemTitle:v8];

  v9 = cancelledCopy;
  if (self->_cancel != cancelledCopy)
  {
    v10 = [cancelledCopy copy];
    cancel = self->_cancel;
    self->_cancel = v10;

    v9 = cancelledCopy;
    if (cancelledCopy)
    {
      if (self->_cancelBarItem)
      {
        goto LABEL_8;
      }

      v12 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancel"];
      cancelBarItem = self->_cancelBarItem;
      self->_cancelBarItem = v12;

      v14 = self->_cancelBarItem;
    }

    else
    {
      navigationItem = [(RAPMapFeaturePickerViewController *)self navigationItem];
      leftBarButtonItem = [navigationItem leftBarButtonItem];
      v17 = self->_cancelBarItem;

      v9 = 0;
      if (leftBarButtonItem != v17)
      {
        goto LABEL_8;
      }

      v14 = 0;
    }

    navigationItem2 = [(RAPMapFeaturePickerViewController *)self navigationItem];
    [navigationItem2 setLeftBarButtonItem:v14];

    v9 = cancelledCopy;
  }

LABEL_8:
}

- (void)setPrompt:(id)prompt
{
  promptCopy = prompt;
  if (self->_prompt != promptCopy)
  {
    v6 = promptCopy;
    objc_storeStrong(&self->_prompt, prompt);
    [(LocationRefinementViewController *)self->_locationPicker setInstructionsText:self->_prompt];
    promptCopy = v6;
  }
}

- (void)setDidCommit:(BOOL)commit
{
  if (self->_didCommit != commit)
  {
    self->_didCommit = commit;
    [(RAPMapFeaturePickerViewController *)self _updateCommitBarItem];
  }
}

- (void)_selectionDidChange
{
  if (!self->_creatingMapViewReportContext)
  {
    mapViewReportContext = self->_mapViewReportContext;
    self->_mapViewReportContext = 0;
  }

  [(RAPMapFeaturePickerViewController *)self _updateCommitBarItem];
  if ([(RAPMapFeaturePickerViewController *)self analyticTarget]&& [(RAPMapFeaturePickerViewController *)self _selectionAction])
  {
    v4 = +[MKMapService sharedService];
    [v4 captureUserAction:-[RAPMapFeaturePickerViewController _selectionAction](self onTarget:"_selectionAction") eventValue:{-[RAPMapFeaturePickerViewController analyticTarget](self, "analyticTarget"), 0}];
  }

  selection = self->_selection;
  if (selection)
  {
    v6 = *(selection + 2);

    v6();
  }
}

- (id)initForPickingFeatureOfKind:(int64_t)kind withPrompt:(id)prompt title:(id)title initialFeatureCoordinate:(CLLocationCoordinate2D)coordinate inMapRect:(id)rect withCamera:(id)camera analyticsTarget:(int)target selection:(id)self0 textFieldTitle:(id)self1 textFieldText:(id)self2 textFieldWithEditBlock:(id)self3
{
  v14 = *&target;
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v20 = rect.var0.var1;
  v21 = rect.var0.var0;
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  fieldTitleCopy = fieldTitle;
  textCopy = text;
  blockCopy = block;
  var1 = [(RAPMapFeaturePickerViewController *)self initForPickingFeatureOfKind:kind withPrompt:prompt title:title initialFeatureCoordinate:camera inMapRect:v14 withCamera:selection analyticsTarget:latitude selection:longitude, v21, v20, var0, var1];
  if (var1)
  {
    v30 = [fieldTitleCopy copy];
    v31 = var1[23];
    var1[23] = v30;

    v32 = [textCopy copy];
    v33 = var1[24];
    var1[24] = v32;

    [var1 _updateCommitBarItem];
    objc_initWeak(&location, var1);
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100CB5580;
    v37[3] = &unk_101650220;
    objc_copyWeak(&v39, &location);
    v38 = blockCopy;
    v34 = objc_retainBlock(v37);
    v35 = var1[22];
    var1[22] = v34;

    objc_destroyWeak(&v39);
    objc_destroyWeak(&location);
  }

  return var1;
}

- (id)initForPickingFeatureOfKind:(int64_t)kind withPrompt:(id)prompt title:(id)title initialFeatureCoordinate:(CLLocationCoordinate2D)coordinate inMapRect:(id)rect withCamera:(id)camera analyticsTarget:(int)target selection:(id)self0
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  result = [(RAPMapFeaturePickerViewController *)self initForPickingFeatureOfKind:kind withPrompt:prompt title:title inMapRect:camera withCamera:*&target analyticsTarget:selection selection:rect.var0.var0, rect.var0.var1, rect.var1.var0, rect.var1.var1];
  if (result)
  {
    *(result + 19) = latitude;
    *(result + 20) = longitude;
  }

  return result;
}

- (id)initForPickingFeatureOfKind:(int64_t)kind withPrompt:(id)prompt title:(id)title inMapRect:(id)rect withCamera:(id)camera analyticsTarget:(int)target preferredMapType:(unint64_t)type selection:(id)self0
{
  result = [(RAPMapFeaturePickerViewController *)self initForPickingFeatureOfKind:kind withPrompt:prompt title:title inMapRect:camera withCamera:*&target analyticsTarget:selection selection:rect.var0.var0, rect.var0.var1, rect.var1.var0, rect.var1.var1];
  if (result)
  {
    *(result + 56) = 1;
    *(result + 8) = type;
  }

  return result;
}

- (id)initForPickingFeatureOfKind:(int64_t)kind withPrompt:(id)prompt title:(id)title inMapRect:(id)rect withCamera:(id)camera analyticsTarget:(int)target selection:(id)selection
{
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v14 = rect.var0.var1;
  v15 = rect.var0.var0;
  promptCopy = prompt;
  titleCopy = title;
  cameraCopy = camera;
  selectionCopy = selection;
  v36.receiver = self;
  v36.super_class = RAPMapFeaturePickerViewController;
  v23 = [(RAPMapFeaturePickerViewController *)&v36 initWithNibName:0 bundle:0];
  v24 = v23;
  if (v23)
  {
    v23->_kind = kind;
    v23->_rect.origin.x = v15;
    v23->_rect.origin.y = v14;
    v23->_rect.size.width = var0;
    v23->_rect.size.height = var1;
    v25 = [selectionCopy copy];
    selection = v24->_selection;
    v24->_selection = v25;

    v27 = [promptCopy copy];
    prompt = v24->_prompt;
    v24->_prompt = v27;

    objc_storeStrong(&v24->_originalPromptMessage, v24->_prompt);
    v29 = [cameraCopy copy];
    mapCamera = v24->_mapCamera;
    v24->_mapCamera = v29;

    v31 = kCLLocationCoordinate2DInvalid;
    v24->_selectedCoordinate = kCLLocationCoordinate2DInvalid;
    v24->_initialFeatureCoordinate = v31;
    v24->_analyticsTarget = target;
    [(RAPMapFeaturePickerViewController *)v24 setTitle:titleCopy];
    v32 = +[NSBundle mainBundle];
    v33 = [v32 localizedStringForKey:@"Back" value:@"localized string not found" table:0];
    navigationItem = [(RAPMapFeaturePickerViewController *)v24 navigationItem];
    [navigationItem setBackButtonTitle:v33];

    v24->_mapViewZoomLevel = -1.0;
  }

  return v24;
}

@end