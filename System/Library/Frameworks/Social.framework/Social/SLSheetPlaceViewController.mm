@interface SLSheetPlaceViewController
- ($DA0B4FCCDF5A2F6D3EADA3DE312E1039)_regionForPlaces:(SEL)a3;
- (BOOL)_forceSelectPlace:(id)a3 setMapAnnotation:(BOOL)a4;
- (BOOL)searchBarShouldBeginEditing:(id)a3;
- (BOOL)searchDisplayController:(id)a3 shouldReloadTableForSearchString:(id)a4;
- (SLSheetPlaceViewController)initWithPlaceDataSource:(id)a3 effectiveBundle:(id)a4;
- (SLSheetPlaceViewControllerDelegate)selectionDelegate;
- (double)_mapHeightForInterfaceOrientation:(int64_t)a3;
- (double)_preferredViewHeight;
- (id)_placeForRow:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_calculatePreferredContentSize;
- (void)_centerMapForPlaces;
- (void)_centerMapWithSelectedPlace:(id)a3;
- (void)_layoutForSearch;
- (void)_layoutNormal;
- (void)_presentSearch;
- (void)_restoreFromSearch;
- (void)cancelButtonTapped:(id)a3;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)loadView;
- (void)mapView:(id)a3 didSelectAnnotationView:(id)a4;
- (void)placeManager:(id)a3 failedWithError:(id)a4;
- (void)placeManager:(id)a3 updatedPlaces:(id)a4;
- (void)setPlaces:(id)a3;
- (void)setSelectedPlace:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
@end

@implementation SLSheetPlaceViewController

- (SLSheetPlaceViewController)initWithPlaceDataSource:(id)a3 effectiveBundle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SLSheetPlaceViewController;
  v9 = [(SLSheetPlaceViewController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_placeDataSource, a3);
    objc_storeStrong(&v10->_effectiveBundle, a4);
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

- (void)setPlaces:(id)a3
{
  v8 = a3;
  _SLLog(v3, 7, @"SLPlaceViewController setPlaces");
  if (([(SLSheetPlaceViewController *)self isViewLoaded]& 1) != 0)
  {
    [(MKMapView *)self->_mapView removeAnnotations:self->_places];
  }

  objc_storeStrong(&self->_places, a3);
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

- ($DA0B4FCCDF5A2F6D3EADA3DE312E1039)_regionForPlaces:(SEL)a3
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

- (void)setSelectedPlace:(id)a3
{
  objc_storeStrong(&self->_selectedPlace, a3);
  v5 = a3;
  [(UITableView *)self->_tableView reloadData];
}

- (id)_placeForRow:(int64_t)a3
{
  if (a3)
  {
    v4 = [(NSArray *)self->_places objectAtIndexedSubscript:a3 - 1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)cancelButtonTapped:(id)a3
{
  v4 = [(SLSheetPlaceViewController *)self selectionDelegate];
  [v4 placeViewController:self didSelectPlace:self->_selectedPlace];
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

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  if (!self->_searchPresented)
  {
    [(SLSheetPlaceViewController *)self _layoutNormal:a3];
  }
}

- (double)_mapHeightForInterfaceOrientation:(int64_t)a3
{
  if ((a3 - 3) > 1)
  {
    return 125.0;
  }

  v3 = [MEMORY[0x1E69DC938] currentDevice];
  if (objc_opt_respondsToSelector())
  {
    v4 = [MEMORY[0x1E69DC938] currentDevice];
    v5 = [v4 userInterfaceIdiom];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E69DC938] currentDevice];
  if (objc_opt_respondsToSelector())
  {
    v7 = [MEMORY[0x1E69DC938] currentDevice];
    v8 = [v7 userInterfaceIdiom];
  }

  else
  {
    v8 = 0;
  }

  if (v5 == v8)
  {
    return 80.0;
  }

  else
  {
    return 125.0;
  }
}

- (BOOL)searchBarShouldBeginEditing:(id)a3
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
  v3 = [(SLSheetPlaceSearchController *)self->_placeSearchController placeDataSource];
  [v3 stopUpdatingLocation];

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
  v4 = [(SLSheetPlaceViewController *)self view];
  [v4 frame];
  v6 = v5;
  v7 = [(SLSheetPlaceViewController *)self view];
  [v7 frame];
  v9 = v8;
  [(UISearchBar *)self->_searchBar frame];
  v11 = v9 - v10;

  tableView = self->_tableView;

  [(UITableView *)tableView setFrame:0.0, MaxY, v6, v11];
}

- (void)_layoutNormal
{
  v3 = [(SLSheetPlaceViewController *)self view];
  [v3 frame];
  v5 = v4;
  [(SLSheetPlaceViewController *)self _mapHeightForInterfaceOrientation:[(SLSheetPlaceViewController *)self interfaceOrientation]];
  [(MKMapView *)self->_mapView setFrame:0.0, 0.0, v5, v6];

  [(MKMapView *)self->_mapView frame];
  MaxY = CGRectGetMaxY(v17);
  if ([(SLSheetPlaceViewController *)self searchEnabled])
  {
    v8 = [(SLSheetPlaceViewController *)self view];
    [v8 frame];
    [(UISearchBar *)self->_searchBar setFrame:0.0, MaxY];
  }

  else
  {
    [(UISearchBar *)self->_searchBar setFrame:0.0, MaxY, 0.0, 0.0];
  }

  [(UISearchDisplayController *)self->_searchDisplayController set_activationGapHeight:MaxY];
  [(UISearchBar *)self->_searchBar frame];
  v9 = CGRectGetMaxY(v18);
  v15 = [(SLSheetPlaceViewController *)self view];
  [v15 frame];
  v11 = v10;
  v12 = [(SLSheetPlaceViewController *)self view];
  [v12 frame];
  v14 = v13;
  [(UISearchBar *)self->_searchBar frame];
  [(UITableView *)self->_tableView setFrame:0.0, v9, v11, v14 - CGRectGetMaxY(v19)];
}

- (void)_centerMapWithSelectedPlace:(id)a3
{
  v5 = a3;
  selectedPlace = self->_selectedPlace;
  if (!selectedPlace || ![(SLSheetPlaceViewController *)self _forceSelectPlace:selectedPlace setMapAnnotation:1])
  {
    [(SLSheetPlaceViewController *)self _centerMapForPlaces];
  }
}

- (void)_centerMapForPlaces
{
  v3 = [(SLSheetPlaceViewController *)self places];
  v4 = [v3 count];

  if (v4)
  {
    mapView = self->_mapView;
    v6 = [(SLSheetPlaceViewController *)self places];
    [(SLSheetPlaceViewController *)self _regionForPlaces:v6];
    [(MKMapView *)mapView setRegion:?];
  }
}

- (void)mapView:(id)a3 didSelectAnnotationView:(id)a4
{
  v10 = a4;
  v5 = [v10 annotation];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v10 annotation];
    selectedPlace = self->_selectedPlace;
    self->_selectedPlace = v7;
    v9 = v7;

    [(SLSheetPlaceViewController *)self _forceSelectPlace:v9 setMapAnnotation:0];
  }
}

- (BOOL)_forceSelectPlace:(id)a3 setMapAnnotation:(BOOL)a4
{
  v6 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  places = self->_places;
  v15 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__SLSheetPlaceViewController__forceSelectPlace_setMapAnnotation___block_invoke;
  v10[3] = &unk_1E8175DE0;
  v11 = a4;
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

- (void)placeManager:(id)a3 updatedPlaces:(id)a4
{
  v5 = MEMORY[0x1E69DC668];
  v6 = a4;
  [v5 shouldShowNetworkActivityIndicatorInRemoteApplication:0];
  [(SLSheetPlaceViewController *)self setPlaces:v6];
}

- (void)placeManager:(id)a3 failedWithError:(id)a4
{
  v5 = MEMORY[0x1E69DC668];
  v6 = a4;
  [v5 shouldShowNetworkActivityIndicatorInRemoteApplication:0];
  _SLLog(v4, 3, @"Base place manager failed to fetch places with error %{public}@");
}

- (void)loadView
{
  v39.receiver = self;
  v39.super_class = SLSheetPlaceViewController;
  [(SLSheetPlaceViewController *)&v39 loadView];
  v3 = [(SLSheetPlaceViewController *)self view];
  [v3 setOpaque:0];

  v4 = [MEMORY[0x1E69DC888] clearColor];
  v5 = [(SLSheetPlaceViewController *)self view];
  [v5 setBackgroundColor:v4];

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
  v9 = [v7 sharedLocationManager];
  [v9 setEffectiveBundle:effectiveBundle];

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
    v19 = [(SLSheetPlaceViewController *)self placeDataSource];
    v20 = [v19 currentLocation];

    if (v20)
    {
      v21 = self->_mapView;
      v22 = [(SLSheetPlaceViewController *)self placeDataSource];
      v23 = [v22 currentLocation];
      [v23 coordinate];
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
  v30 = [MEMORY[0x1E69DC888] clearColor];
  [(UITableView *)self->_tableView setBackgroundColor:v30];

  v31 = [(UITableView *)self->_tableView backgroundView];
  [v31 setOpaque:0];

  v32 = [MEMORY[0x1E69DC888] clearColor];
  v33 = [(UITableView *)self->_tableView backgroundView];
  [v33 setBackgroundColor:v32];

  [(UITableView *)self->_tableView setRowHeight:*MEMORY[0x1E69DE3D0]];
  v34 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [v34 lineHeight];
  [(UITableView *)self->_tableView setEstimatedRowHeight:v35 + v35];

  [(SLSheetPlaceViewController *)self _layoutNormal];
  v36 = [(SLSheetPlaceViewController *)self view];
  [v36 addSubview:self->_mapView];

  if ([(SLSheetPlaceViewController *)self searchEnabled])
  {
    v37 = [(SLSheetPlaceViewController *)self view];
    [v37 addSubview:self->_searchBar];
  }

  v38 = [(SLSheetPlaceViewController *)self view];
  [v38 addSubview:self->_tableView];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SLSheetPlaceViewController;
  [(SLSheetPlaceViewController *)&v5 viewDidLoad];
  v3 = [(SLSheetPlaceViewController *)self places];
  v4 = [v3 count];

  if (v4)
  {
    [(SLSheetPlaceViewController *)self _centerMapForPlaces];
    [(SLSheetPlaceViewController *)self _centerMapWithSelectedPlace:self->_selectedPlace];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SLSheetPlaceViewController;
  [(SLSheetPlaceViewController *)&v4 viewWillAppear:a3];
  [MEMORY[0x1E69DC668] shouldShowNetworkActivityIndicatorInRemoteApplication:1];
  [(SLPlaceDataSource *)self->_placeDataSource fetchPlaces];
  [(UITableView *)self->_tableView reloadData];
  [(SLSheetPlaceViewController *)self _calculatePreferredContentSize];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SLSheetPlaceViewController;
  [(SLSheetPlaceViewController *)&v4 viewDidAppear:a3];
  [(UITableView *)self->_tableView flashScrollIndicators];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [(SLSheetPlaceViewController *)self placeDataSource];
  [v5 cancelPlaceFetch];

  v6 = [(SLSheetPlaceViewController *)self placeDataSource];
  [v6 stopUpdatingLocation];

  v10.receiver = self;
  v10.super_class = SLSheetPlaceViewController;
  [(SLSheetPlaceViewController *)&v10 viewWillDisappear:v3];
  v7 = [(SLSheetPlaceViewController *)self selectionDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(SLSheetPlaceViewController *)self selectionDelegate];
    [v9 placeViewController:self willDisappear:v3];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3.receiver = self;
  v3.super_class = SLSheetPlaceViewController;
  [(SLSheetPlaceViewController *)&v3 viewDidDisappear:a3];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(SLSheetPlaceViewController *)self places:a3];
  v5 = [v4 count];

  return v5 + 1;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"SLFacebookPlaceCell"];
  if (!v7)
  {
    v7 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"SLFacebookPlaceCell"];
  }

  [v7 setOpaque:0];
  v8 = [MEMORY[0x1E69DC888] clearColor];
  [v7 setBackgroundColor:v8];

  if ([v6 row])
  {
    v9 = -[SLSheetPlaceViewController _placeForRow:](self, "_placeForRow:", [v6 row]);
    v10 = [v9 name];
    v11 = [v7 textLabel];
    [v11 setText:v10];

    v12 = [v9 category];
    v13 = [v7 detailTextLabel];
    [v13 setText:v12];

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
    v20 = [v7 textLabel];
    [v20 setText:v19];

    v21 = [v7 detailTextLabel];
    [v21 setText:&stru_1F41EC300];

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

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v5 = a4;
  [v5 setOpaque:0];
  v6 = [MEMORY[0x1E69DC888] clearColor];
  [v5 setBackgroundColor:v6];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  tableView = self->_tableView;
  v21 = v4;
  if (tableView == v7)
  {
    _SLLog(v4, 6, @"Selection from standard place results");
    v10 = self->_tableView;
    v12 = -[SLSheetPlaceViewController _placeForRow:](self, "_placeForRow:", [v8 row]);
    [(MKMapView *)self->_mapView selectAnnotation:v12 animated:1];
  }

  else
  {
    _SLLog(v4, 6, @"Selection from search results");
    v10 = [(UISearchDisplayController *)self->_searchDisplayController searchResultsTableView];
    v11 = [(SLSheetPlaceSearchController *)self->_placeSearchController searchResults];
    v12 = [v11 objectAtIndexedSubscript:{objc_msgSend(v8, "row")}];
  }

  objc_storeStrong(&self->_selectedPlace, v12);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = [(UITableView *)v10 visibleCells];
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v13);
        }

        [*(*(&v23 + 1) + 8 * i) setAccessoryType:{0, v21}];
      }

      v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v15);
  }

  v18 = [(UITableView *)v10 cellForRowAtIndexPath:v8];
  [v18 setAccessoryType:3];
  [(UITableView *)v10 deselectRowAtIndexPath:v8 animated:1];
  v19 = [(SLSheetPlaceViewController *)self selectionDelegate];
  [v19 placeViewController:self didSelectPlace:v12];

  if (tableView != v7)
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

- (BOOL)searchDisplayController:(id)a3 shouldReloadTableForSearchString:(id)a4
{
  v7 = a4;
  v8 = a3;
  _SLLog(v4, 6, @"User started place search with search string %@");
  [(SLSheetPlaceSearchController *)self->_placeSearchController searchWithSearchString:v7, v7];

  [v8 setNoResultsMessage:&stru_1F41EC300];
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