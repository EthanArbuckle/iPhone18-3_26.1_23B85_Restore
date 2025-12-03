@interface SLSheetPlaceViewController
- ($DA0B4FCCDF5A2F6D3EADA3DE312E1039)_regionForPlaces:(SEL)places;
- (BOOL)_forceSelectPlace:(id)place setMapAnnotation:(BOOL)annotation;
- (BOOL)searchBarShouldBeginEditing:(id)editing;
- (BOOL)searchDisplayController:(id)controller shouldReloadTableForSearchString:(id)string;
- (SLSheetPlaceViewController)initWithPlaceDataSource:(id)source effectiveBundle:(id)bundle;
- (SLSheetPlaceViewControllerDelegate)selectionDelegate;
- (double)_mapHeightForInterfaceOrientation:(int64_t)orientation;
- (double)_preferredViewHeight;
- (id)_placeForRow:(int64_t)row;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_calculatePreferredContentSize;
- (void)_centerMapForPlaces;
- (void)_centerMapWithSelectedPlace:(id)place;
- (void)_layoutForSearch;
- (void)_layoutNormal;
- (void)_presentSearch;
- (void)_restoreFromSearch;
- (void)cancelButtonTapped:(id)tapped;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)loadView;
- (void)mapView:(id)view didSelectAnnotationView:(id)annotationView;
- (void)placeManager:(id)manager failedWithError:(id)error;
- (void)placeManager:(id)manager updatedPlaces:(id)places;
- (void)setPlaces:(id)places;
- (void)setSelectedPlace:(id)place;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
@end

@implementation SLSheetPlaceViewController

- (SLSheetPlaceViewController)initWithPlaceDataSource:(id)source effectiveBundle:(id)bundle
{
  sourceCopy = source;
  bundleCopy = bundle;
  v14.receiver = self;
  v14.super_class = SLSheetPlaceViewController;
  v9 = [(SLSheetPlaceViewController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_placeDataSource, source);
    objc_storeStrong(&v10->_effectiveBundle, bundle);
    [(SLPlaceDataSource *)v10->_placeDataSource setDelegate:v10];
    v11 = SLSocialFrameworkBundle();
    v12 = [v11 localizedStringForKey:@"CHOOSE_LOCATION" value:&stru_1F41EC300 table:@"Localizable"];
    [(SLSheetPlaceViewController *)v10 setTitle:v12];

    v10->_searchEnabled = 1;
  }

  return v10;
}

- (void)dealloc
{
  [(MKMapView *)self->_mapView setDelegate:0];
  v3.receiver = self;
  v3.super_class = SLSheetPlaceViewController;
  [(SLSheetPlaceViewController *)&v3 dealloc];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = SLSheetPlaceViewController;
  [(SLSheetPlaceViewController *)&v2 didReceiveMemoryWarning];
}

- (void)setPlaces:(id)places
{
  placesCopy = places;
  _SLLog(v3, 7, @"SLPlaceViewController setPlaces");
  if (([(SLSheetPlaceViewController *)self isViewLoaded]& 1) != 0)
  {
    [(MKMapView *)self->_mapView removeAnnotations:self->_places];
  }

  objc_storeStrong(&self->_places, places);
  if ([(SLSheetPlaceViewController *)self isViewLoaded])
  {
    [(UITableView *)self->_tableView beginUpdates];
    tableView = self->_tableView;
    v7 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
    [(UITableView *)tableView reloadSections:v7 withRowAnimation:100];

    [(UITableView *)self->_tableView endUpdates];
    [(MKMapView *)self->_mapView addAnnotations:self->_places];
    [(SLSheetPlaceViewController *)self _centerMapWithSelectedPlace:self->_selectedPlace];
    [(SLSheetPlaceViewController *)self _calculatePreferredContentSize];
  }
}

- ($DA0B4FCCDF5A2F6D3EADA3DE312E1039)_regionForPlaces:(SEL)places
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = a4;
  MKMapRectNull = getMKMapRectNull();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v4;
  v12 = [obj countByEnumeratingWithState:&v42 objects:v55 count:16];
  if (v12)
  {
    v13 = *v43;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v43 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v42 + 1) + 8 * i);
        [v15 latitude];
        v17 = v16;
        [v15 longitude];
        v19 = CLLocationCoordinate2DMake(v17, v18);
        v51 = 0;
        v52 = &v51;
        v53 = 0x2020000000;
        v20 = getMKMapPointForCoordinateSymbolLoc_ptr;
        v54 = getMKMapPointForCoordinateSymbolLoc_ptr;
        if (!getMKMapPointForCoordinateSymbolLoc_ptr)
        {
          v46 = MEMORY[0x1E69E9820];
          v47 = 3221225472;
          v48 = __getMKMapPointForCoordinateSymbolLoc_block_invoke;
          v49 = &unk_1E8175CD8;
          v50 = &v51;
          v21 = MapKitLibrary();
          v22 = dlsym(v21, "MKMapPointForCoordinate");
          *(v50[1] + 24) = v22;
          getMKMapPointForCoordinateSymbolLoc_ptr = *(v50[1] + 24);
          v20 = v52[3];
        }

        _Block_object_dispose(&v51, 8);
        if (!v20)
        {
          [SLSheetPlaceViewController _regionForPlaces:];
        }

        v23 = v20(v19.latitude, v19.longitude);
        v25 = v24;
        v51 = 0;
        v52 = &v51;
        v53 = 0x2020000000;
        v26 = getMKMapRectUnionSymbolLoc_ptr;
        v54 = getMKMapRectUnionSymbolLoc_ptr;
        if (!getMKMapRectUnionSymbolLoc_ptr)
        {
          v46 = MEMORY[0x1E69E9820];
          v47 = 3221225472;
          v48 = __getMKMapRectUnionSymbolLoc_block_invoke;
          v49 = &unk_1E8175CD8;
          v50 = &v51;
          v27 = MapKitLibrary();
          v28 = dlsym(v27, "MKMapRectUnion");
          *(v50[1] + 24) = v28;
          getMKMapRectUnionSymbolLoc_ptr = *(v50[1] + 24);
          v26 = v52[3];
        }

        _Block_object_dispose(&v51, 8);
        if (!v26)
        {
          [SLSheetPlaceViewController _regionForPlaces:];
        }

        MKMapRectNull = v26(MKMapRectNull, v7, v9, v11, v23, v25, 0.0, 0.0);
        v7 = v29;
        v9 = v30;
        v11 = v31;
      }

      v12 = [obj countByEnumeratingWithState:&v42 objects:v55 count:16];
    }

    while (v12);
  }

  v32 = getMKMapRectNull();
  if ((MKMapRectNull == v32 && (v32 = getMKMapRectNull(), v7 == v33) || v9 == 0.0 && v11 == 0.0) && [obj count])
  {
    v34 = [obj objectAtIndexedSubscript:0];
    [v34 coordinate];
    __MKCoordinateRegionMakeWithDistance(v35, v36, 50000.0, 50000.0);
  }

  else
  {
    v51 = 0;
    v52 = &v51;
    v53 = 0x2020000000;
    v37 = getMKCoordinateRegionForMapRectSymbolLoc_ptr;
    v54 = getMKCoordinateRegionForMapRectSymbolLoc_ptr;
    if (!getMKCoordinateRegionForMapRectSymbolLoc_ptr)
    {
      v46 = MEMORY[0x1E69E9820];
      v47 = 3221225472;
      v48 = __getMKCoordinateRegionForMapRectSymbolLoc_block_invoke;
      v49 = &unk_1E8175CD8;
      v50 = &v51;
      v38 = MapKitLibrary();
      v39 = dlsym(v38, "MKCoordinateRegionForMapRect");
      *(v50[1] + 24) = v39;
      getMKCoordinateRegionForMapRectSymbolLoc_ptr = *(v50[1] + 24);
      v37 = v52[3];
    }

    _Block_object_dispose(&v51, 8);
    if (!v37)
    {
      [SLSheetPlaceViewController _regionForPlaces:];
    }

    v37(MKMapRectNull, v7, v9, v11);
  }

  return result;
}

- (void)setSelectedPlace:(id)place
{
  objc_storeStrong(&self->_selectedPlace, place);
  placeCopy = place;
  [(UITableView *)self->_tableView reloadData];
}

- (id)_placeForRow:(int64_t)row
{
  if (row)
  {
    v4 = [(NSArray *)self->_places objectAtIndexedSubscript:row - 1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)cancelButtonTapped:(id)tapped
{
  selectionDelegate = [(SLSheetPlaceViewController *)self selectionDelegate];
  [selectionDelegate placeViewController:self didSelectPlace:self->_selectedPlace];
}

- (double)_preferredViewHeight
{
  [(UITableView *)self->_tableView sizeThatFits:0.0, 1100.0];
  v4 = v3;
  [(SLSheetPlaceViewController *)self _mapHeightForInterfaceOrientation:[(SLSheetPlaceViewController *)self interfaceOrientation]];
  v6 = v5;
  [(UISearchBar *)self->_searchBar bounds];
  return v4 + v6 + v7;
}

- (void)_calculatePreferredContentSize
{
  if ([(NSArray *)self->_places count])
  {
    [(SLSheetPlaceViewController *)self _preferredViewHeight];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  v8.width = 320.0;
  v8.height = v5;
  v6 = NSStringFromCGSize(v8);
  _SLLog(v2, 7, @"Place VC preferredContentSize=%@");

  [(SLSheetPlaceViewController *)self setPreferredContentSize:320.0, v5];
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  if (!self->_searchPresented)
  {
    [(SLSheetPlaceViewController *)self _layoutNormal:orientation];
  }
}

- (double)_mapHeightForInterfaceOrientation:(int64_t)orientation
{
  if ((orientation - 3) > 1)
  {
    return 125.0;
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if (objc_opt_respondsToSelector())
  {
    currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];
  }

  else
  {
    userInterfaceIdiom = 0;
  }

  currentDevice3 = [MEMORY[0x1E69DC938] currentDevice];
  if (objc_opt_respondsToSelector())
  {
    currentDevice4 = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom2 = [currentDevice4 userInterfaceIdiom];
  }

  else
  {
    userInterfaceIdiom2 = 0;
  }

  if (userInterfaceIdiom == userInterfaceIdiom2)
  {
    return 80.0;
  }

  else
  {
    return 125.0;
  }
}

- (BOOL)searchBarShouldBeginEditing:(id)editing
{
  searchAnimationComplete = self->_searchAnimationComplete;
  if (!searchAnimationComplete)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __58__SLSheetPlaceViewController_searchBarShouldBeginEditing___block_invoke;
    v6[3] = &unk_1E81757C8;
    v6[4] = self;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __58__SLSheetPlaceViewController_searchBarShouldBeginEditing___block_invoke_2;
    v5[3] = &unk_1E8175DB8;
    v5[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:v6 animations:v5 completion:0.1];
  }

  return searchAnimationComplete;
}

uint64_t __58__SLSheetPlaceViewController_searchBarShouldBeginEditing___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 1057) = 1;
  [*(a1 + 32) _layoutForSearch];
  v2 = *(a1 + 32);

  return [v2 _presentSearch];
}

- (void)_presentSearch
{
  self->_searchAnimationComplete = 1;
  self->_searchPresented = 1;
  [(UISearchBar *)self->_searchBar becomeFirstResponder];
}

- (void)_restoreFromSearch
{
  placeDataSource = [(SLSheetPlaceSearchController *)self->_placeSearchController placeDataSource];
  [placeDataSource stopUpdatingLocation];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__SLSheetPlaceViewController__restoreFromSearch__block_invoke;
  v5[3] = &unk_1E81757C8;
  v5[4] = self;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__SLSheetPlaceViewController__restoreFromSearch__block_invoke_2;
  v4[3] = &unk_1E8175DB8;
  v4[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v5 animations:v4 completion:0.1];
}

uint64_t __48__SLSheetPlaceViewController__restoreFromSearch__block_invoke_2(uint64_t result)
{
  *(*(result + 32) + 1057) = 0;
  *(*(result + 32) + 1056) = 0;
  return result;
}

- (void)_layoutForSearch
{
  [(MKMapView *)self->_mapView frame];
  [(MKMapView *)self->_mapView setFrame:?];
  [(UISearchBar *)self->_searchBar frame];
  [(UISearchBar *)self->_searchBar setFrame:?];
  [(UISearchBar *)self->_searchBar frame];
  MaxY = CGRectGetMaxY(v14);
  view = [(SLSheetPlaceViewController *)self view];
  [view frame];
  v6 = v5;
  view2 = [(SLSheetPlaceViewController *)self view];
  [view2 frame];
  v9 = v8;
  [(UISearchBar *)self->_searchBar frame];
  v11 = v9 - v10;

  tableView = self->_tableView;

  [(UITableView *)tableView setFrame:0.0, MaxY, v6, v11];
}

- (void)_layoutNormal
{
  view = [(SLSheetPlaceViewController *)self view];
  [view frame];
  v5 = v4;
  [(SLSheetPlaceViewController *)self _mapHeightForInterfaceOrientation:[(SLSheetPlaceViewController *)self interfaceOrientation]];
  [(MKMapView *)self->_mapView setFrame:0.0, 0.0, v5, v6];

  [(MKMapView *)self->_mapView frame];
  MaxY = CGRectGetMaxY(v17);
  if ([(SLSheetPlaceViewController *)self searchEnabled])
  {
    view2 = [(SLSheetPlaceViewController *)self view];
    [view2 frame];
    [(UISearchBar *)self->_searchBar setFrame:0.0, MaxY];
  }

  else
  {
    [(UISearchBar *)self->_searchBar setFrame:0.0, MaxY, 0.0, 0.0];
  }

  [(UISearchDisplayController *)self->_searchDisplayController set_activationGapHeight:MaxY];
  [(UISearchBar *)self->_searchBar frame];
  v9 = CGRectGetMaxY(v18);
  view3 = [(SLSheetPlaceViewController *)self view];
  [view3 frame];
  v11 = v10;
  view4 = [(SLSheetPlaceViewController *)self view];
  [view4 frame];
  v14 = v13;
  [(UISearchBar *)self->_searchBar frame];
  [(UITableView *)self->_tableView setFrame:0.0, v9, v11, v14 - CGRectGetMaxY(v19)];
}

- (void)_centerMapWithSelectedPlace:(id)place
{
  placeCopy = place;
  selectedPlace = self->_selectedPlace;
  if (!selectedPlace || ![(SLSheetPlaceViewController *)self _forceSelectPlace:selectedPlace setMapAnnotation:1])
  {
    [(SLSheetPlaceViewController *)self _centerMapForPlaces];
  }
}

- (void)_centerMapForPlaces
{
  places = [(SLSheetPlaceViewController *)self places];
  v4 = [places count];

  if (v4)
  {
    mapView = self->_mapView;
    places2 = [(SLSheetPlaceViewController *)self places];
    [(SLSheetPlaceViewController *)self _regionForPlaces:places2];
    [(MKMapView *)mapView setRegion:?];
  }
}

- (void)mapView:(id)view didSelectAnnotationView:(id)annotationView
{
  annotationViewCopy = annotationView;
  annotation = [annotationViewCopy annotation];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    annotation2 = [annotationViewCopy annotation];
    selectedPlace = self->_selectedPlace;
    self->_selectedPlace = annotation2;
    v9 = annotation2;

    [(SLSheetPlaceViewController *)self _forceSelectPlace:v9 setMapAnnotation:0];
  }
}

- (BOOL)_forceSelectPlace:(id)place setMapAnnotation:(BOOL)annotation
{
  placeCopy = place;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  places = self->_places;
  v15 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__SLSheetPlaceViewController__forceSelectPlace_setMapAnnotation___block_invoke;
  v10[3] = &unk_1E8175DE0;
  annotationCopy = annotation;
  v10[4] = self;
  v10[5] = &v12;
  [(NSArray *)places enumerateObjectsUsingBlock:v10];
  v8 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return v8;
}

void __65__SLSheetPlaceViewController__forceSelectPlace_setMapAnnotation___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [v7 identifier];
  v9 = [*(*(a1 + 32) + 1000) identifier];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    if (*(a1 + 48) == 1)
    {
      [*(*(a1 + 32) + 1048) selectAnnotation:v7 animated:1];
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = [*(*(a1 + 32) + 1016) visibleCells];
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        v15 = 0;
        do
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v21 + 1) + 8 * v15++) setAccessoryType:0];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

    v16 = *(*(a1 + 32) + 1016);
    v17 = [MEMORY[0x1E696AC88] indexPathForRow:a3 inSection:0];
    v18 = [v16 cellForRowAtIndexPath:v17];

    [v18 setAccessoryType:3];
    v19 = *(*(a1 + 32) + 1016);
    v20 = [MEMORY[0x1E696AC88] indexPathForRow:a3 inSection:0];
    [v19 scrollToRowAtIndexPath:v20 atScrollPosition:*MEMORY[0x1E69DE3A0] animated:1];

    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (void)placeManager:(id)manager updatedPlaces:(id)places
{
  v5 = MEMORY[0x1E69DC668];
  placesCopy = places;
  [v5 shouldShowNetworkActivityIndicatorInRemoteApplication:0];
  [(SLSheetPlaceViewController *)self setPlaces:placesCopy];
}

- (void)placeManager:(id)manager failedWithError:(id)error
{
  v5 = MEMORY[0x1E69DC668];
  errorCopy = error;
  [v5 shouldShowNetworkActivityIndicatorInRemoteApplication:0];
  _SLLog(v4, 3, @"Base place manager failed to fetch places with error %{public}@");
}

- (void)loadView
{
  v39.receiver = self;
  v39.super_class = SLSheetPlaceViewController;
  [(SLSheetPlaceViewController *)&v39 loadView];
  view = [(SLSheetPlaceViewController *)self view];
  [view setOpaque:0];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  view2 = [(SLSheetPlaceViewController *)self view];
  [view2 setBackgroundColor:clearColor];

  effectiveBundle = self->_effectiveBundle;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2050000000;
  v7 = getMKLocationManagerClass_softClass;
  v48 = getMKLocationManagerClass_softClass;
  if (!getMKLocationManagerClass_softClass)
  {
    v40 = MEMORY[0x1E69E9820];
    v41 = 3221225472;
    v42 = __getMKLocationManagerClass_block_invoke;
    v43 = &unk_1E8175CD8;
    v44 = &v45;
    __getMKLocationManagerClass_block_invoke(&v40);
    v7 = v46[3];
  }

  v8 = v7;
  _Block_object_dispose(&v45, 8);
  sharedLocationManager = [v7 sharedLocationManager];
  [sharedLocationManager setEffectiveBundle:effectiveBundle];

  v45 = 0;
  v46 = &v45;
  v47 = 0x2050000000;
  v10 = getMKMapViewClass_softClass;
  v48 = getMKMapViewClass_softClass;
  if (!getMKMapViewClass_softClass)
  {
    v40 = MEMORY[0x1E69E9820];
    v41 = 3221225472;
    v42 = __getMKMapViewClass_block_invoke;
    v43 = &unk_1E8175CD8;
    v44 = &v45;
    __getMKMapViewClass_block_invoke(&v40);
    v10 = v46[3];
  }

  v11 = v10;
  _Block_object_dispose(&v45, 8);
  v12 = [v10 alloc];
  v13 = *MEMORY[0x1E695F058];
  v14 = *(MEMORY[0x1E695F058] + 8);
  v15 = *(MEMORY[0x1E695F058] + 16);
  v16 = *(MEMORY[0x1E695F058] + 24);
  v17 = [v12 initWithFrame:{*MEMORY[0x1E695F058], v14, v15, v16}];
  mapView = self->_mapView;
  self->_mapView = v17;

  [(MKMapView *)self->_mapView setAutoresizingMask:2];
  [(MKMapView *)self->_mapView setRendersInBackground:1];
  [(MKMapView *)self->_mapView setShowsUserLocation:1];
  [(MKMapView *)self->_mapView setUserTrackingMode:0 animated:0];
  [(MKMapView *)self->_mapView setDelegate:self];
  if (![(NSArray *)self->_places count])
  {
    placeDataSource = [(SLSheetPlaceViewController *)self placeDataSource];
    currentLocation = [placeDataSource currentLocation];

    if (currentLocation)
    {
      v21 = self->_mapView;
      placeDataSource2 = [(SLSheetPlaceViewController *)self placeDataSource];
      currentLocation2 = [placeDataSource2 currentLocation];
      [currentLocation2 coordinate];
      __MKCoordinateRegionMakeWithDistance(v24, v25, 3000.0, 3000.0);
      [(MKMapView *)v21 setRegion:?];
    }
  }

  v26 = [objc_alloc(MEMORY[0x1E69DCF08]) initWithFrame:{v13, v14, v15, v16}];
  searchBar = self->_searchBar;
  self->_searchBar = v26;

  [(UISearchBar *)self->_searchBar setAutoresizingMask:2];
  [(UISearchBar *)self->_searchBar setDelegate:self];
  v28 = [objc_alloc(MEMORY[0x1E69DD020]) initWithFrame:0 style:{v13, v14, v15, v16}];
  tableView = self->_tableView;
  self->_tableView = v28;

  [(UITableView *)self->_tableView setAutoresizingMask:18];
  [(UITableView *)self->_tableView setDelegate:self];
  [(UITableView *)self->_tableView setDataSource:self];
  [(UITableView *)self->_tableView setOpaque:0];
  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  [(UITableView *)self->_tableView setBackgroundColor:clearColor2];

  backgroundView = [(UITableView *)self->_tableView backgroundView];
  [backgroundView setOpaque:0];

  clearColor3 = [MEMORY[0x1E69DC888] clearColor];
  backgroundView2 = [(UITableView *)self->_tableView backgroundView];
  [backgroundView2 setBackgroundColor:clearColor3];

  [(UITableView *)self->_tableView setRowHeight:*MEMORY[0x1E69DE3D0]];
  v34 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v34 lineHeight];
  [(UITableView *)self->_tableView setEstimatedRowHeight:v35 + v35];

  [(SLSheetPlaceViewController *)self _layoutNormal];
  view3 = [(SLSheetPlaceViewController *)self view];
  [view3 addSubview:self->_mapView];

  if ([(SLSheetPlaceViewController *)self searchEnabled])
  {
    view4 = [(SLSheetPlaceViewController *)self view];
    [view4 addSubview:self->_searchBar];
  }

  view5 = [(SLSheetPlaceViewController *)self view];
  [view5 addSubview:self->_tableView];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SLSheetPlaceViewController;
  [(SLSheetPlaceViewController *)&v5 viewDidLoad];
  places = [(SLSheetPlaceViewController *)self places];
  v4 = [places count];

  if (v4)
  {
    [(SLSheetPlaceViewController *)self _centerMapForPlaces];
    [(SLSheetPlaceViewController *)self _centerMapWithSelectedPlace:self->_selectedPlace];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SLSheetPlaceViewController;
  [(SLSheetPlaceViewController *)&v4 viewWillAppear:appear];
  [MEMORY[0x1E69DC668] shouldShowNetworkActivityIndicatorInRemoteApplication:1];
  [(SLPlaceDataSource *)self->_placeDataSource fetchPlaces];
  [(UITableView *)self->_tableView reloadData];
  [(SLSheetPlaceViewController *)self _calculatePreferredContentSize];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SLSheetPlaceViewController;
  [(SLSheetPlaceViewController *)&v4 viewDidAppear:appear];
  [(UITableView *)self->_tableView flashScrollIndicators];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  placeDataSource = [(SLSheetPlaceViewController *)self placeDataSource];
  [placeDataSource cancelPlaceFetch];

  placeDataSource2 = [(SLSheetPlaceViewController *)self placeDataSource];
  [placeDataSource2 stopUpdatingLocation];

  v10.receiver = self;
  v10.super_class = SLSheetPlaceViewController;
  [(SLSheetPlaceViewController *)&v10 viewWillDisappear:disappearCopy];
  selectionDelegate = [(SLSheetPlaceViewController *)self selectionDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    selectionDelegate2 = [(SLSheetPlaceViewController *)self selectionDelegate];
    [selectionDelegate2 placeViewController:self willDisappear:disappearCopy];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v3.receiver = self;
  v3.super_class = SLSheetPlaceViewController;
  [(SLSheetPlaceViewController *)&v3 viewDidDisappear:disappear];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(SLSheetPlaceViewController *)self places:view];
  v5 = [v4 count];

  return v5 + 1;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"SLFacebookPlaceCell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"SLFacebookPlaceCell"];
  }

  [v7 setOpaque:0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v7 setBackgroundColor:clearColor];

  if ([pathCopy row])
  {
    v9 = -[SLSheetPlaceViewController _placeForRow:](self, "_placeForRow:", [pathCopy row]);
    name = [v9 name];
    textLabel = [v7 textLabel];
    [textLabel setText:name];

    category = [v9 category];
    detailTextLabel = [v7 detailTextLabel];
    [detailTextLabel setText:category];

    if (self->_selectedPlace && ([v9 identifier], v14 = objc_claimAutoreleasedReturnValue(), -[SLPlace identifier](self->_selectedPlace, "identifier"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "isEqualToString:", v15), v15, v14, (v16 & 1) != 0))
    {
      v17 = 3;
    }

    else
    {
      v17 = 0;
    }

    [v7 setAccessoryType:v17];
  }

  else
  {
    v18 = SLSocialFrameworkBundle();
    v19 = [v18 localizedStringForKey:@"SHEET_LOCATION_NO_VALUE" value:&stru_1F41EC300 table:@"Localizable"];
    textLabel2 = [v7 textLabel];
    [textLabel2 setText:v19];

    detailTextLabel2 = [v7 detailTextLabel];
    [detailTextLabel2 setText:&stru_1F41EC300];

    if (self->_selectedPlace)
    {
      v22 = 0;
    }

    else
    {
      v22 = 3;
    }

    [v7 setAccessoryType:v22];
  }

  return v7;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  [cellCopy setOpaque:0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [cellCopy setBackgroundColor:clearColor];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v28 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  tableView = self->_tableView;
  v21 = v4;
  if (tableView == viewCopy)
  {
    _SLLog(v4, 6, @"Selection from standard place results");
    searchResultsTableView = self->_tableView;
    v12 = -[SLSheetPlaceViewController _placeForRow:](self, "_placeForRow:", [pathCopy row]);
    [(MKMapView *)self->_mapView selectAnnotation:v12 animated:1];
  }

  else
  {
    _SLLog(v4, 6, @"Selection from search results");
    searchResultsTableView = [(UISearchDisplayController *)self->_searchDisplayController searchResultsTableView];
    searchResults = [(SLSheetPlaceSearchController *)self->_placeSearchController searchResults];
    v12 = [searchResults objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  }

  objc_storeStrong(&self->_selectedPlace, v12);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  visibleCells = [(UITableView *)searchResultsTableView visibleCells];
  v14 = [visibleCells countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(visibleCells);
        }

        [*(*(&v23 + 1) + 8 * i) setAccessoryType:{0, v21}];
      }

      v15 = [visibleCells countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v15);
  }

  v18 = [(UITableView *)searchResultsTableView cellForRowAtIndexPath:pathCopy];
  [v18 setAccessoryType:3];
  [(UITableView *)searchResultsTableView deselectRowAtIndexPath:pathCopy animated:1];
  selectionDelegate = [(SLSheetPlaceViewController *)self selectionDelegate];
  [selectionDelegate placeViewController:self didSelectPlace:v12];

  if (tableView != viewCopy)
  {
    _SLLog(v21, 7, @"Popping after delay");
    v20 = dispatch_time(0, 400000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__SLSheetPlaceViewController_tableView_didSelectRowAtIndexPath___block_invoke;
    block[3] = &unk_1E81757C8;
    block[4] = self;
    dispatch_after(v20, MEMORY[0x1E69E96A0], block);
  }
}

void __64__SLSheetPlaceViewController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v1 = [v2 popToRootViewControllerAnimated:1];
}

- (BOOL)searchDisplayController:(id)controller shouldReloadTableForSearchString:(id)string
{
  stringCopy = string;
  controllerCopy = controller;
  _SLLog(v4, 6, @"User started place search with search string %@");
  [(SLSheetPlaceSearchController *)self->_placeSearchController searchWithSearchString:stringCopy, stringCopy];

  [controllerCopy setNoResultsMessage:&stru_1F41EC300];
  return 0;
}

- (SLSheetPlaceViewControllerDelegate)selectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionDelegate);

  return WeakRetained;
}

- (void)_regionForPlaces:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"MKMapRect __MKMapRectUnion(MKMapRect, MKMapRect)"}];
  [v0 handleFailureInFunction:v1 file:@"SLSheetPlaceViewController.m" lineNumber:47 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_regionForPlaces:.cold.2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MKMapPoint __MKMapPointForCoordinate(CLLocationCoordinate2D)"];
  [v0 handleFailureInFunction:v1 file:@"SLSheetPlaceViewController.m" lineNumber:46 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_regionForPlaces:.cold.3()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MKCoordinateRegion __MKCoordinateRegionForMapRect(MKMapRect)"];
  [v0 handleFailureInFunction:v1 file:@"SLSheetPlaceViewController.m" lineNumber:44 description:{@"%s", dlerror()}];

  __break(1u);
}

@end