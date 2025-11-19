@interface RAPMapFeaturePickerViewController
- ($873BFAB23BBB6E2F0B0288ED2F935688)selectedMapRect;
- (BOOL)mapView:(id)a3 shouldSelectLabelMarker:(id)a4;
- (CLLocationCoordinate2D)selectedCoordinate;
- (CLLocationCoordinate2D)tappedCoordinate;
- (RAPMapStateProtocol)mapViewReportContext;
- (id)initForPickingFeatureOfKind:(int64_t)a3 withPrompt:(id)a4 title:(id)a5 inMapRect:(id)a6 withCamera:(id)a7 analyticsTarget:(int)a8 preferredMapType:(unint64_t)a9 selection:(id)a10;
- (id)initForPickingFeatureOfKind:(int64_t)a3 withPrompt:(id)a4 title:(id)a5 inMapRect:(id)a6 withCamera:(id)a7 analyticsTarget:(int)a8 selection:(id)a9;
- (id)initForPickingFeatureOfKind:(int64_t)a3 withPrompt:(id)a4 title:(id)a5 initialFeatureCoordinate:(CLLocationCoordinate2D)a6 inMapRect:(id)a7 withCamera:(id)a8 analyticsTarget:(int)a9 selection:(id)a10;
- (id)initForPickingFeatureOfKind:(int64_t)a3 withPrompt:(id)a4 title:(id)a5 initialFeatureCoordinate:(CLLocationCoordinate2D)a6 inMapRect:(id)a7 withCamera:(id)a8 analyticsTarget:(int)a9 selection:(id)a10 textFieldTitle:(id)a11 textFieldText:(id)a12 textFieldWithEditBlock:(id)a13;
- (id)mapView:(id)a3 viewForAnnotation:(id)a4;
- (int)_selectionAction;
- (void)_cancel;
- (void)_commit;
- (void)_handleSegmentedControlTap:(id)a3;
- (void)_mapTappedForTransitLineSelection:(id)a3;
- (void)_selectionDidChange;
- (void)_showModeSelector;
- (void)_updateAttributionInsets;
- (void)_updateCommitBarItem;
- (void)displayAnnotationAtCoordinate:(CLLocationCoordinate2D)a3 withText:(id)a4;
- (void)mapView:(id)a3 didAddAnnotationViews:(id)a4;
- (void)mapView:(id)a3 didDeselectLabelMarker:(id)a4;
- (void)mapView:(id)a3 didSelectLabelMarker:(id)a4;
- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4;
- (void)mapViewDidFinishRenderingMap:(id)a3 fullyRendered:(BOOL)a4;
- (void)mapViewWillStartRenderingMap:(id)a3;
- (void)setDidCommit:(BOOL)a3;
- (void)setHandlerBlocksForUserCommittedSelection:(id)a3 cancelled:(id)a4;
- (void)setHandlerBlocksForUserCommittedSelection:(id)a3 withRightBarButtonItemTitle:(id)a4;
- (void)setMapViewZoomLevel:(double)a3;
- (void)setPrompt:(id)a3;
- (void)setSelectedLabelMarker:(id)a3;
- (void)setTextFieldPlaceholder:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
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

- (void)_handleSegmentedControlTap:(id)a3
{
  v4 = [(MapViewModeSelector *)self->_modeSelector selectedViewMode];
  v5 = 0;
  mapView = self->_mapView;
  if (v4 == 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4 - 1;
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
  v5 = [(RAPMapFeaturePickerViewController *)self view];
  [v5 safeAreaInsets];
  v7 = v6;

  v8 = +[UIApplication sharedApplication];
  v9 = [v8 userInterfaceLayoutDirection];

  mapView = self->_mapView;
  v16 = [(RAPMapFeaturePickerViewController *)self view];
  [v16 safeAreaInsets];
  v12 = v11;
  if (v9 == 1)
  {
    v12 = v11 + 8.0;
    v13 = [(RAPMapFeaturePickerViewController *)self view];
    [v13 safeAreaInsets];
  }

  else
  {
    v13 = [(RAPMapFeaturePickerViewController *)self view];
    [v13 safeAreaInsets];
    v14 = v15 + 8.0;
  }

  [(MKMapView *)mapView _setAttributionInsets:0.0, v12, v4 + v7 + 8.0, v14];
}

- (void)_showModeSelector
{
  v3 = [(LocationRefinementViewController *)self->_locationPicker userLocationButtonBottomConstraint];

  if (v3)
  {
    v4 = [(LocationRefinementViewController *)self->_locationPicker userLocationButtonBottomConstraint];
    v38 = v4;
    v5 = [NSArray arrayWithObjects:&v38 count:1];
    [NSLayoutConstraint deactivateConstraints:v5];

    v6 = [(LocationRefinementViewController *)self->_locationPicker snapToUserLocationContainerView];
    [v6 removeFromSuperview];
  }

  v7 = [[MapViewModeSelector alloc] initWithDesiredViewModes:&off_1016ED880];
  modeSelector = self->_modeSelector;
  self->_modeSelector = v7;

  v9 = [(LocationRefinementViewController *)self->_locationPicker mapView];
  v10 = [v9 mapType];
  v11 = 3;
  v12 = 7;
  if (v10 != 108)
  {
    v12 = 0;
  }

  if (v10 != 104)
  {
    v11 = v12;
  }

  v13 = 5;
  v14 = -1;
  if (v10 != 103)
  {
    v14 = 0;
  }

  if (v10 != 4)
  {
    v13 = v14;
  }

  if (v10 <= 103)
  {
    v11 = v13;
  }

  v15 = 2;
  v16 = 1;
  v17 = 6;
  if (v10 != 3)
  {
    v17 = 0;
  }

  if (v10 != 2)
  {
    v16 = v17;
  }

  if (v10 != 1)
  {
    v15 = v16;
  }

  if (v10 <= 3)
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

  v21 = [(RAPMapFeaturePickerViewController *)self view];
  [v21 addSubview:self->_floatingControlsView];

  v35 = [(UIView *)self->_floatingControlsView leadingAnchor];
  v36 = [(RAPMapFeaturePickerViewController *)self view];
  v34 = [v36 safeAreaLayoutGuide];
  v33 = [v34 leadingAnchor];
  v32 = [v35 constraintEqualToAnchor:v33 constant:8.0];
  v37[0] = v32;
  v22 = [(UIView *)self->_floatingControlsView trailingAnchor];
  v23 = [(RAPMapFeaturePickerViewController *)self view];
  v24 = [v23 safeAreaLayoutGuide];
  v25 = [v24 trailingAnchor];
  v26 = [v22 constraintEqualToAnchor:v25 constant:-8.0];
  v37[1] = v26;
  v27 = [(UIView *)self->_floatingControlsView bottomAnchor];
  v28 = [(MKMapView *)self->_mapView safeAreaLayoutGuide];
  v29 = [v28 bottomAnchor];
  v30 = [v27 constraintEqualToAnchor:v29 constant:-8.0];
  v37[2] = v30;
  v31 = [NSArray arrayWithObjects:v37 count:3];
  [NSLayoutConstraint activateConstraints:v31];
}

- (void)mapViewDidFinishRenderingMap:(id)a3 fullyRendered:(BOOL)a4
{
  self->_mapViewHasFinishedToRenderMap = 1;
  if ([(RAPMapFeaturePickerViewController *)self requiresRenderedMapToContinue:a3])
  {

    [(RAPMapFeaturePickerViewController *)self _updateCommitBarItem];
  }
}

- (void)mapViewWillStartRenderingMap:(id)a3
{
  self->_mapViewHasFinishedToRenderMap = 0;
  if ([(RAPMapFeaturePickerViewController *)self requiresRenderedMapToContinue])
  {

    [(RAPMapFeaturePickerViewController *)self _updateCommitBarItem];
  }
}

- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4
{
  v14 = a3;
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

- (id)mapView:(id)a3 viewForAnnotation:(id)a4
{
  v6 = a4;
  if (self->_transitLinesAnnotation == v6)
  {
    v7 = [a3 dequeueReusableAnnotationViewWithIdentifier:@"transitLinesAnnotation"];
    if (!v7)
    {
      v7 = [[MKAnnotationView alloc] initWithAnnotation:v6 reuseIdentifier:@"transitLinesAnnotation"];
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

- (void)mapView:(id)a3 didSelectLabelMarker:(id)a4
{
  v6 = a4;
  if ([(RAPMapFeaturePickerViewController *)self _kindTracksLabelMarkerSelection])
  {
    objc_storeStrong(&self->_selectedLabelMarker, a4);
    [(RAPMapFeaturePickerViewController *)self _selectionDidChange];
  }
}

- (void)mapView:(id)a3 didDeselectLabelMarker:(id)a4
{
  v8 = a4;
  v5 = [(RAPMapFeaturePickerViewController *)self _kindTracksLabelMarkerSelection];
  v6 = v8;
  if (v5)
  {
    selectedLabelMarker = self->_selectedLabelMarker;
    if (!v8 || selectedLabelMarker == v8)
    {
      self->_selectedLabelMarker = 0;

      [(RAPMapFeaturePickerViewController *)self _selectionDidChange];
      v6 = v8;
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

- (void)setSelectedLabelMarker:(id)a3
{
  objc_storeStrong(&self->_selectedLabelMarker, a3);
  v5 = a3;
  [(MKMapView *)self->_mapView _selectLabelMarker:self->_selectedLabelMarker animated:1];
}

- (BOOL)mapView:(id)a3 shouldSelectLabelMarker:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  LOBYTE(v9) = 0;
  kind = self->_kind;
  if (kind > 6)
  {
    if (kind == 7)
    {
      if ([v7 hasBusinessID])
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

      if ([v7 hasBusinessID])
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
      LOBYTE(v9) = [v7 hasBusinessID];
    }
  }

  else
  {
    v9 = [v7 isOneWayArrow] ^ 1;
  }

LABEL_16:

  return v9;
}

- (void)mapView:(id)a3 didAddAnnotationViews:(id)a4
{
  transitLinesAnnotation = self->_transitLinesAnnotation;
  if (transitLinesAnnotation)
  {
    v7 = a4;
    v8 = [a3 viewForAnnotation:transitLinesAnnotation];
    v9 = [v7 containsObject:v8];

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

- (void)displayAnnotationAtCoordinate:(CLLocationCoordinate2D)a3 withText:(id)a4
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  v9 = a4;
  v11.latitude = latitude;
  v11.longitude = longitude;
  if (CLLocationCoordinate2DIsValid(v11))
  {
    v7 = [[RAPTransitLinesAnnotation alloc] initWithCoordinate:v9 title:latitude, longitude];
    transitLinesAnnotation = self->_transitLinesAnnotation;
    self->_transitLinesAnnotation = v7;

    [(MKMapView *)self->_mapView addAnnotation:self->_transitLinesAnnotation];
    [(RAPMapFeaturePickerViewController *)self _updateCommitBarItem];
  }
}

- (void)_mapTappedForTransitLineSelection:(id)a3
{
  [a3 locationInView:self->_mapView];
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

        v20 = [*(*(&v23 + 1) + 8 * i) identifier];
        if (v20)
        {
          [v14 addObject:v20];
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

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = RAPMapFeaturePickerViewController;
  [(RAPMapFeaturePickerViewController *)&v7 viewWillDisappear:a3];
  [(LocationRefinementViewController *)self->_locationPicker setMapViewDelegate:0];
  v4 = [(RAPMapFeaturePickerViewController *)self navigationController];
  v5 = [v4 isToolbarHidden];

  if ((v5 & 1) == 0)
  {
    v6 = [(RAPMapFeaturePickerViewController *)self navigationController];
    [v6 setToolbarHidden:0 animated:0];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = RAPMapFeaturePickerViewController;
  [(RAPMapFeaturePickerViewController *)&v4 viewWillAppear:a3];
  [(LocationRefinementViewController *)self->_locationPicker setMapViewDelegate:self];
}

- (void)viewDidLoad
{
  v36.receiver = self;
  v36.super_class = RAPMapFeaturePickerViewController;
  [(RAPMapFeaturePickerViewController *)&v36 viewDidLoad];
  v3 = [(RAPMapFeaturePickerViewController *)self view];
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

  [v3 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(RAPLocationRefinementViewController *)self->_locationPicker view];
  [v17 setFrame:{v10, v12, v14, v16}];

  [(LocationRefinementViewController *)self->_locationPicker setMapViewDelegate:self];
  v18 = [(LocationRefinementViewController *)self->_locationPicker mapView];
  [v18 setShowsUserLocation:1];

  v19 = [(LocationRefinementViewController *)self->_locationPicker mapView];
  [v19 _setShowsVenues:1];

  [(LocationRefinementViewController *)self->_locationPicker setInstructionsText:self->_prompt];
  v20 = [(LocationRefinementViewController *)self->_locationPicker mapView];
  [v20 visibleMapRect];
  self->_selectedMapRect.origin.x = v21;
  self->_selectedMapRect.origin.y = v22;
  self->_selectedMapRect.size.width = v23;
  self->_selectedMapRect.size.height = v24;

  v25 = [(LocationRefinementViewController *)self->_locationPicker mapView];
  [v25 setBackdropViewQualityChangingDisabled:1];

  v26 = [(LocationRefinementViewController *)self->_locationPicker mapView];
  mapView = self->_mapView;
  self->_mapView = v26;

  [(RAPMapFeaturePickerViewController *)self addChildViewController:self->_locationPicker];
  v28 = [(RAPLocationRefinementViewController *)self->_locationPicker view];
  [v3 addSubview:v28];

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

- (void)setTextFieldPlaceholder:(id)a3
{
  v6 = a3;
  v4 = [v6 copy];
  textFieldPlaceholder = self->_textFieldPlaceholder;
  self->_textFieldPlaceholder = v4;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(RAPLocationRefinementViewController *)self->_locationPicker setTextFieldPlaceholder:v6];
  }
}

- (void)setMapViewZoomLevel:(double)a3
{
  self->_mapViewZoomLevel = a3;
  if (a3 >= 0.0)
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
    v7 = [(RAPMapFeaturePickerViewController *)self selectedAddressLocation];
    if (v7)
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
        v14 = [(RAPLocationRefinementViewController *)self->_locationPicker editedValue];
        v15 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
        v16 = [v14 stringByTrimmingCharactersInSet:v15];

        v3 = (v3 & 1) != 0 && [v16 length] != 0;
      }
    }

    if (!self->_didCommit)
    {
      [(RAPMapFeaturePickerViewController *)self setPrompt:self->_originalPromptMessage];
      goto LABEL_31;
    }

    v5 = +[NSBundle mainBundle];
    v17 = [v5 localizedStringForKey:@"Gathering location data [Report a Problem]" value:@"localized string not found" table:0];
    [(RAPMapFeaturePickerViewController *)self setPrompt:v17];

    goto LABEL_29;
  }

  if ((kind - 7) < 2)
  {
LABEL_8:
    v6 = [(RAPMapFeaturePickerViewController *)self selectedLabelMarker];
    v3 = v6 != 0;

    goto LABEL_31;
  }

  if (kind == 6)
  {
    v5 = [(RAPMapFeaturePickerViewController *)self selectedTransitLineMarkers];
    if ([v5 count])
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
  v18 = [(RAPMapFeaturePickerViewController *)self requiresRenderedMapToContinue];
  mapViewHasFinishedToRenderMap = (v18 ^ 1) & v3;
  if ((v18 ^ 1) & 1) == 0 && (v3)
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

- (void)viewDidDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = RAPMapFeaturePickerViewController;
  [(RAPMapFeaturePickerViewController *)&v6 viewDidDisappear:a3];
  if ([(RAPMapFeaturePickerViewController *)self isMovingFromParentViewController])
  {
    v4 = [(RAPMapFeaturePickerViewController *)self backButtonPressedCallback];

    if (v4)
    {
      v5 = [(RAPMapFeaturePickerViewController *)self backButtonPressedCallback];
      v5[2]();
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

- (void)setHandlerBlocksForUserCommittedSelection:(id)a3 withRightBarButtonItemTitle:(id)a4
{
  v17 = a3;
  v6 = a4;
  if (self->_commit != v17)
  {
    v7 = [v17 copy];
    commit = self->_commit;
    self->_commit = v7;

    if (v17)
    {
      if (self->_commitBarItem)
      {
        goto LABEL_11;
      }

      v9 = [UIBarButtonItem alloc];
      if (v6)
      {
        v10 = [v9 initWithTitle:v6 style:2 target:self action:"_commit"];
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
      v11 = [(RAPMapFeaturePickerViewController *)self navigationItem];
      v12 = [v11 rightBarButtonItem];
      v13 = self->_commitBarItem;

      if (v12 != v13)
      {
        goto LABEL_11;
      }

      v14 = 0;
    }

    v16 = [(RAPMapFeaturePickerViewController *)self navigationItem];
    [v16 setRightBarButtonItem:v14];
  }

LABEL_11:
}

- (void)setHandlerBlocksForUserCommittedSelection:(id)a3 cancelled:(id)a4
{
  v19 = a4;
  v6 = a3;
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"Next [Report a Problem]" value:@"localized string not found" table:0];
  [(RAPMapFeaturePickerViewController *)self setHandlerBlocksForUserCommittedSelection:v6 withRightBarButtonItemTitle:v8];

  v9 = v19;
  if (self->_cancel != v19)
  {
    v10 = [v19 copy];
    cancel = self->_cancel;
    self->_cancel = v10;

    v9 = v19;
    if (v19)
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
      v15 = [(RAPMapFeaturePickerViewController *)self navigationItem];
      v16 = [v15 leftBarButtonItem];
      v17 = self->_cancelBarItem;

      v9 = 0;
      if (v16 != v17)
      {
        goto LABEL_8;
      }

      v14 = 0;
    }

    v18 = [(RAPMapFeaturePickerViewController *)self navigationItem];
    [v18 setLeftBarButtonItem:v14];

    v9 = v19;
  }

LABEL_8:
}

- (void)setPrompt:(id)a3
{
  v5 = a3;
  if (self->_prompt != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_prompt, a3);
    [(LocationRefinementViewController *)self->_locationPicker setInstructionsText:self->_prompt];
    v5 = v6;
  }
}

- (void)setDidCommit:(BOOL)a3
{
  if (self->_didCommit != a3)
  {
    self->_didCommit = a3;
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

- (id)initForPickingFeatureOfKind:(int64_t)a3 withPrompt:(id)a4 title:(id)a5 initialFeatureCoordinate:(CLLocationCoordinate2D)a6 inMapRect:(id)a7 withCamera:(id)a8 analyticsTarget:(int)a9 selection:(id)a10 textFieldTitle:(id)a11 textFieldText:(id)a12 textFieldWithEditBlock:(id)a13
{
  v14 = *&a9;
  var1 = a7.var1.var1;
  var0 = a7.var1.var0;
  v20 = a7.var0.var1;
  v21 = a7.var0.var0;
  longitude = a6.longitude;
  latitude = a6.latitude;
  v26 = a11;
  v27 = a12;
  v28 = a13;
  v29 = [(RAPMapFeaturePickerViewController *)self initForPickingFeatureOfKind:a3 withPrompt:a4 title:a5 initialFeatureCoordinate:a8 inMapRect:v14 withCamera:a10 analyticsTarget:latitude selection:longitude, v21, v20, var0, var1];
  if (v29)
  {
    v30 = [v26 copy];
    v31 = v29[23];
    v29[23] = v30;

    v32 = [v27 copy];
    v33 = v29[24];
    v29[24] = v32;

    [v29 _updateCommitBarItem];
    objc_initWeak(&location, v29);
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100CB5580;
    v37[3] = &unk_101650220;
    objc_copyWeak(&v39, &location);
    v38 = v28;
    v34 = objc_retainBlock(v37);
    v35 = v29[22];
    v29[22] = v34;

    objc_destroyWeak(&v39);
    objc_destroyWeak(&location);
  }

  return v29;
}

- (id)initForPickingFeatureOfKind:(int64_t)a3 withPrompt:(id)a4 title:(id)a5 initialFeatureCoordinate:(CLLocationCoordinate2D)a6 inMapRect:(id)a7 withCamera:(id)a8 analyticsTarget:(int)a9 selection:(id)a10
{
  longitude = a6.longitude;
  latitude = a6.latitude;
  result = [(RAPMapFeaturePickerViewController *)self initForPickingFeatureOfKind:a3 withPrompt:a4 title:a5 inMapRect:a8 withCamera:*&a9 analyticsTarget:a10 selection:a7.var0.var0, a7.var0.var1, a7.var1.var0, a7.var1.var1];
  if (result)
  {
    *(result + 19) = latitude;
    *(result + 20) = longitude;
  }

  return result;
}

- (id)initForPickingFeatureOfKind:(int64_t)a3 withPrompt:(id)a4 title:(id)a5 inMapRect:(id)a6 withCamera:(id)a7 analyticsTarget:(int)a8 preferredMapType:(unint64_t)a9 selection:(id)a10
{
  result = [(RAPMapFeaturePickerViewController *)self initForPickingFeatureOfKind:a3 withPrompt:a4 title:a5 inMapRect:a7 withCamera:*&a8 analyticsTarget:a10 selection:a6.var0.var0, a6.var0.var1, a6.var1.var0, a6.var1.var1];
  if (result)
  {
    *(result + 56) = 1;
    *(result + 8) = a9;
  }

  return result;
}

- (id)initForPickingFeatureOfKind:(int64_t)a3 withPrompt:(id)a4 title:(id)a5 inMapRect:(id)a6 withCamera:(id)a7 analyticsTarget:(int)a8 selection:(id)a9
{
  var1 = a6.var1.var1;
  var0 = a6.var1.var0;
  v14 = a6.var0.var1;
  v15 = a6.var0.var0;
  v19 = a4;
  v20 = a5;
  v21 = a7;
  v22 = a9;
  v36.receiver = self;
  v36.super_class = RAPMapFeaturePickerViewController;
  v23 = [(RAPMapFeaturePickerViewController *)&v36 initWithNibName:0 bundle:0];
  v24 = v23;
  if (v23)
  {
    v23->_kind = a3;
    v23->_rect.origin.x = v15;
    v23->_rect.origin.y = v14;
    v23->_rect.size.width = var0;
    v23->_rect.size.height = var1;
    v25 = [v22 copy];
    selection = v24->_selection;
    v24->_selection = v25;

    v27 = [v19 copy];
    prompt = v24->_prompt;
    v24->_prompt = v27;

    objc_storeStrong(&v24->_originalPromptMessage, v24->_prompt);
    v29 = [v21 copy];
    mapCamera = v24->_mapCamera;
    v24->_mapCamera = v29;

    v31 = kCLLocationCoordinate2DInvalid;
    v24->_selectedCoordinate = kCLLocationCoordinate2DInvalid;
    v24->_initialFeatureCoordinate = v31;
    v24->_analyticsTarget = a8;
    [(RAPMapFeaturePickerViewController *)v24 setTitle:v20];
    v32 = +[NSBundle mainBundle];
    v33 = [v32 localizedStringForKey:@"Back" value:@"localized string not found" table:0];
    v34 = [(RAPMapFeaturePickerViewController *)v24 navigationItem];
    [v34 setBackButtonTitle:v33];

    v24->_mapViewZoomLevel = -1.0;
  }

  return v24;
}

@end