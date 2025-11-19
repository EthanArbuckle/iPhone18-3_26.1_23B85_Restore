@interface EKEventDetailLocationDisambiguationContentViewController
- (BOOL)_shouldEnableAddButton;
- (BOOL)searchBarShouldBeginEditing:(id)a3;
- (EKEventDetailLocationDisambiguationContentViewController)initWithLocation:(id)a3 pois:(id)a4 completionBlock:(id)a5;
- (id)_constraintsForParadigm:(unint64_t)a3;
- (id)mapView:(id)a3 rendererForOverlay:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (void)_createConstraints;
- (void)_deselectCircle;
- (void)_selectCircle;
- (void)_selectRow:(unint64_t)a3;
- (void)_updateMapRegion;
- (void)doneTapped:(id)a3;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarSearchButtonClicked:(id)a3;
- (void)searchBarTextDidEndEditing:(id)a3;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5;
- (void)updateViewConstraints;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation EKEventDetailLocationDisambiguationContentViewController

- (EKEventDetailLocationDisambiguationContentViewController)initWithLocation:(id)a3 pois:(id)a4 completionBlock:(id)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v32 = a3;
  v9 = a4;
  v10 = a5;
  v40.receiver = self;
  v40.super_class = EKEventDetailLocationDisambiguationContentViewController;
  v11 = [(EKEventDetailLocationDisambiguationContentViewController *)&v40 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_location, a3);
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count") + 1}];
    pois = v12->_pois;
    v12->_pois = v13;

    v15 = v12->_pois;
    v16 = [v32 copy];
    [(NSMutableArray *)v15 addObject:v16];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v17 = v9;
    v18 = [v17 countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v18)
    {
      v19 = *v37;
      do
      {
        v20 = 0;
        do
        {
          if (*v37 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = v12->_pois;
          v22 = [*(*(&v36 + 1) + 8 * v20) copy];
          [(NSMutableArray *)v21 addObject:v22];

          ++v20;
        }

        while (v18 != v20);
        v18 = [v17 countByEnumeratingWithState:&v36 objects:v42 count:16];
      }

      while (v18);
    }

    v23 = _Block_copy(v10);
    completionBlock = v12->_completionBlock;
    v12->_completionBlock = v23;

    v25 = dispatch_queue_create("LocationDisambiguationVCIconRenderQueue", MEMORY[0x1E69E96A8]);
    iconRenderQueue = v12->_iconRenderQueue;
    v12->_iconRenderQueue = v25;

    v27 = objc_opt_new();
    iconCache = v12->_iconCache;
    v12->_iconCache = v27;

    [(EKEventDetailLocationDisambiguationContentViewController *)v12 setDefinesPresentationContext:1];
    v41[0] = objc_opt_class();
    v41[1] = objc_opt_class();
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
    objc_initWeak(&location, v12);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __98__EKEventDetailLocationDisambiguationContentViewController_initWithLocation_pois_completionBlock___block_invoke;
    v33[3] = &unk_1E843EBE8;
    objc_copyWeak(&v34, &location);
    v30 = [(EKEventDetailLocationDisambiguationContentViewController *)v12 registerForTraitChanges:v29 withHandler:v33];
    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  return v12;
}

void __98__EKEventDetailLocationDisambiguationContentViewController_initWithLocation_pois_completionBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained view];
  [v1 setNeedsUpdateConstraints];
}

- (void)_createConstraints
{
  v88[11] = *MEMORY[0x1E69E9840];
  v3 = [(EKEventDetailLocationDisambiguationContentViewController *)self view];
  v86 = objc_opt_new();
  v85 = objc_opt_new();
  v82 = [(MKMapView *)self->_mapView leadingAnchor];
  v80 = [v3 leadingAnchor];
  v78 = [v82 constraintEqualToAnchor:v80];
  v88[0] = v78;
  v76 = [(MKMapView *)self->_mapView trailingAnchor];
  v74 = [v3 trailingAnchor];
  v71 = [v76 constraintEqualToAnchor:v74];
  v88[1] = v71;
  v69 = [(MKMapView *)self->_mapView topAnchor];
  v67 = [v3 topAnchor];
  v65 = [v69 constraintEqualToAnchor:v67];
  v88[2] = v65;
  v63 = [(UIView *)self->_separatorLine leadingAnchor];
  v61 = [v3 leadingAnchor];
  v59 = [v63 constraintEqualToAnchor:v61];
  v88[3] = v59;
  v57 = [(UIView *)self->_separatorLine trailingAnchor];
  v55 = [v3 trailingAnchor];
  v53 = [v57 constraintEqualToAnchor:v55];
  v88[4] = v53;
  v51 = [(UIView *)self->_separatorLine topAnchor];
  v49 = [(MKMapView *)self->_mapView bottomAnchor];
  v47 = [v51 constraintEqualToAnchor:v49];
  v88[5] = v47;
  v45 = [(UIView *)self->_separatorLine heightAnchor];
  v43 = [v45 constraintEqualToConstant:EKUIPixelSizeInPoints()];
  v88[6] = v43;
  v41 = [(UITableView *)self->_tableView leadingAnchor];
  v39 = [v3 leadingAnchor];
  v37 = [v41 constraintEqualToAnchor:v39];
  v88[7] = v37;
  v35 = [(UITableView *)self->_tableView trailingAnchor];
  v84 = v3;
  v4 = [v3 trailingAnchor];
  v5 = [v35 constraintEqualToAnchor:v4];
  v88[8] = v5;
  v6 = [(UITableView *)self->_tableView topAnchor];
  v7 = [(UIView *)self->_separatorLine bottomAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v88[9] = v8;
  v9 = [(UITableView *)self->_tableView bottomAnchor];
  v10 = [v3 bottomAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v88[10] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:11];
  [v86 addObjectsFromArray:v12];

  v13 = [(MKMapView *)self->_mapView heightAnchor];
  v14 = [(MKMapView *)self->_mapView widthAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v16 = [v86 setByAddingObject:v15];
  tallConstraints = self->_tallConstraints;
  self->_tallConstraints = v16;

  v18 = [(MKMapView *)self->_mapView heightAnchor];
  v19 = [(MKMapView *)self->_mapView widthAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 multiplier:0.5];
  v21 = [v86 setByAddingObject:v20];
  iPadConstraints = self->_iPadConstraints;
  self->_iPadConstraints = v21;

  v83 = [(MKMapView *)self->_mapView leadingAnchor];
  v81 = [v84 leadingAnchor];
  v79 = [v83 constraintEqualToAnchor:v81];
  v87[0] = v79;
  v77 = [(MKMapView *)self->_mapView topAnchor];
  v75 = [v84 topAnchor];
  v72 = [v77 constraintEqualToAnchor:v75];
  v87[1] = v72;
  v70 = [(MKMapView *)self->_mapView bottomAnchor];
  v68 = [v84 bottomAnchor];
  v66 = [v70 constraintEqualToAnchor:v68];
  v87[2] = v66;
  v64 = [(UIView *)self->_separatorLine leadingAnchor];
  v62 = [(MKMapView *)self->_mapView trailingAnchor];
  v60 = [v64 constraintEqualToAnchor:v62];
  v87[3] = v60;
  v58 = [(UIView *)self->_separatorLine widthAnchor];
  v56 = [v58 constraintEqualToConstant:EKUIPixelSizeInPoints()];
  v87[4] = v56;
  v54 = [(UIView *)self->_separatorLine topAnchor];
  v52 = [v84 topAnchor];
  v50 = [v54 constraintEqualToAnchor:v52];
  v87[5] = v50;
  v48 = [(UIView *)self->_separatorLine bottomAnchor];
  v46 = [v84 bottomAnchor];
  v44 = [v48 constraintEqualToAnchor:v46];
  v87[6] = v44;
  v42 = [(UITableView *)self->_tableView leadingAnchor];
  v73 = [(UIView *)self->_separatorLine trailingAnchor];
  v40 = [v42 constraintEqualToAnchor:v73];
  v87[7] = v40;
  v38 = [(UITableView *)self->_tableView trailingAnchor];
  v36 = [v84 trailingAnchor];
  v34 = [v38 constraintEqualToAnchor:v36];
  v87[8] = v34;
  v33 = [(UITableView *)self->_tableView topAnchor];
  v23 = [v84 topAnchor];
  v24 = [v33 constraintEqualToAnchor:v23];
  v87[9] = v24;
  v25 = [(UITableView *)self->_tableView bottomAnchor];
  v26 = [v84 bottomAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  v87[10] = v27;
  v28 = [(UITableView *)self->_tableView widthAnchor];
  v29 = [(MKMapView *)self->_mapView widthAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];
  v87[11] = v30;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:12];
  [(NSSet *)v85 addObjectsFromArray:v31];

  splitConstraints = self->_splitConstraints;
  self->_splitConstraints = v85;
}

- (id)_constraintsForParadigm:(unint64_t)a3
{
  v3 = &OBJC_IVAR___EKEventDetailLocationDisambiguationContentViewController__tallConstraints;
  if (a3 == 8)
  {
    v3 = &OBJC_IVAR___EKEventDetailLocationDisambiguationContentViewController__splitConstraints;
  }

  if (a3 == 16)
  {
    v3 = &OBJC_IVAR___EKEventDetailLocationDisambiguationContentViewController__iPadConstraints;
  }

  return *(&self->super.super.super.isa + *v3);
}

- (void)updateViewConstraints
{
  v3 = [(EKEventDetailLocationDisambiguationContentViewController *)self view];
  v4 = EKUICurrentWindowInterfaceParadigm(v3);

  if (!self->_tallConstraints)
  {
    [(EKEventDetailLocationDisambiguationContentViewController *)self _createConstraints];
    v13 = MEMORY[0x1E696ACD8];
    v5 = [(EKEventDetailLocationDisambiguationContentViewController *)self _constraintsForParadigm:v4];
    v6 = [v5 allObjects];
    [v13 activateConstraints:v6];
    goto LABEL_5;
  }

  if (v4 != self->_currentLayoutParadigm)
  {
    v5 = [(EKEventDetailLocationDisambiguationContentViewController *)self _constraintsForParadigm:?];
    v6 = [(EKEventDetailLocationDisambiguationContentViewController *)self _constraintsForParadigm:v4];
    v7 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:v5];
    [v7 minusSet:v6];
    v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:v6];
    [v8 minusSet:v5];
    v9 = MEMORY[0x1E696ACD8];
    v10 = [v7 allObjects];
    [v9 deactivateConstraints:v10];

    v11 = MEMORY[0x1E696ACD8];
    v12 = [v8 allObjects];
    [v11 activateConstraints:v12];

LABEL_5:
  }

  v14.receiver = self;
  v14.super_class = EKEventDetailLocationDisambiguationContentViewController;
  [(EKEventDetailLocationDisambiguationContentViewController *)&v14 updateViewConstraints];
  self->_currentLayoutParadigm = v4;
}

- (void)viewDidLoad
{
  v47.receiver = self;
  v47.super_class = EKEventDetailLocationDisambiguationContentViewController;
  [(EKEventDetailLocationDisambiguationContentViewController *)&v47 viewDidLoad];
  if (!self->_mapView)
  {
    v3 = EKWeakLinkClass();
    v4 = [objc_alloc(MEMORY[0x1E69DCF10]) initWithSearchResultsController:0];
    [v4 setObscuresBackgroundDuringPresentation:0];
    [v4 setHidesNavigationBarDuringPresentation:0];
    [v4 setAutomaticallyShowsCancelButton:0];
    v5 = [(EKEventDetailLocationDisambiguationContentViewController *)self navigationItem];
    [v5 setSearchController:v4];

    v6 = [(EKEventDetailLocationDisambiguationContentViewController *)self navigationItem];
    [v6 setHidesSearchBarWhenScrolling:0];

    v7 = [v4 searchBar];
    searchBar = self->_searchBar;
    self->_searchBar = v7;

    [(UISearchBar *)self->_searchBar setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UISearchBar *)self->_searchBar setAutocorrectionType:0];
    v9 = EventKitUIBundle();
    v10 = [v9 localizedStringForKey:@"Enter Location" value:&stru_1F4EF6790 table:0];
    [(UISearchBar *)self->_searchBar setPlaceholder:v10];

    [(UISearchBar *)self->_searchBar setReturnKeyType:9];
    [(UISearchBar *)self->_searchBar setEnablesReturnKeyAutomatically:1];
    [(UISearchBar *)self->_searchBar setTextContentType:*MEMORY[0x1E69DE4C0]];
    [(UISearchBar *)self->_searchBar setDelegate:self];
    v11 = [v3 alloc];
    v12 = [v11 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    mapView = self->_mapView;
    self->_mapView = v12;

    [(MKMapView *)self->_mapView setNeedsLayout];
    [(MKMapView *)self->_mapView setZoomEnabled:1];
    [(MKMapView *)self->_mapView setScrollEnabled:1];
    [(MKMapView *)self->_mapView setPitchEnabled:0];
    [(MKMapView *)self->_mapView setRotateEnabled:0];
    [(MKMapView *)self->_mapView setShowsUserLocation:0];
    v14 = objc_alloc(MEMORY[0x1E696F350]);
    v15 = [v14 initExcludingCategories:MEMORY[0x1E695E0F0]];
    [(MKMapView *)self->_mapView setPointOfInterestFilter:v15];

    [(MKMapView *)self->_mapView setShowsBuildings:1];
    [(MKMapView *)self->_mapView setUserInteractionEnabled:1];
    [(MKMapView *)self->_mapView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MKMapView *)self->_mapView setDelegate:self];
    v16 = self->_mapView;
    v17 = objc_alloc(MEMORY[0x1E69DD060]);
    v18 = [(EKEventDetailLocationDisambiguationContentViewController *)self view];
    v19 = [v17 initWithTarget:v18 action:sel_endEditing_];
    [(MKMapView *)v16 addGestureRecognizer:v19];

    v20 = objc_opt_new();
    separatorLine = self->_separatorLine;
    self->_separatorLine = v20;

    [(UIView *)self->_separatorLine setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = [MEMORY[0x1E69DC888] systemMidGrayColor];
    [(UIView *)self->_separatorLine setBackgroundColor:v22];

    v23 = objc_alloc_init(MEMORY[0x1E69DD020]);
    tableView = self->_tableView;
    self->_tableView = v23;

    [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITableView *)self->_tableView setDelegate:self];
    [(UITableView *)self->_tableView setDataSource:self];
    v25 = [(EKEventDetailLocationDisambiguationContentViewController *)self view];
    [v25 addSubview:self->_mapView];

    v26 = [(EKEventDetailLocationDisambiguationContentViewController *)self view];
    [v26 addSubview:self->_tableView];

    v27 = [(EKEventDetailLocationDisambiguationContentViewController *)self view];
    [v27 addSubview:self->_separatorLine];

    v28 = EventKitUIBundle();
    v29 = [v28 localizedStringForKey:@"Add Location" value:&stru_1F4EF6790 table:0];
    v30 = [(EKEventDetailLocationDisambiguationContentViewController *)self navigationItem];
    [v30 setTitle:v29];

    v31 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelTapped_];
    v32 = [(EKEventDetailLocationDisambiguationContentViewController *)self navigationItem];
    [v32 setLeftBarButtonItem:v31];

    v33 = objc_alloc(MEMORY[0x1E69DC708]);
    v34 = EventKitUIBundle();
    v35 = [v34 localizedStringForKey:@"Add" value:&stru_1F4EF6790 table:0];
    v36 = [v33 initWithTitle:v35 style:2 target:self action:sel_doneTapped_];
    v37 = [(EKEventDetailLocationDisambiguationContentViewController *)self navigationItem];
    [v37 setRightBarButtonItem:v36];

    v38 = [(EKEventDetailLocationDisambiguationContentViewController *)self view];
    [v38 setNeedsUpdateConstraints];

    v39 = EKWeakLinkClass();
    v40 = [(EKStructuredLocation *)self->_location geoLocation];
    [v40 coordinate];
    v42 = v41;
    v44 = v43;
    [(EKStructuredLocation *)self->_location radius];
    v46 = [v39 circleWithCenterCoordinate:v42 radius:{v44, v45}];

    [(MKMapView *)self->_mapView addOverlay:v46 level:1];
  }
}

- (void)_selectRow:(unint64_t)a3
{
  v5 = [(EKEventDetailLocationDisambiguationContentViewController *)self navigationItem];
  v6 = [v5 rightBarButtonItem];
  [v6 setEnabled:1];

  v7 = [(UITableView *)self->_tableView indexPathForSelectedRow];
  v8 = [v7 row];

  if (v8 != a3)
  {
    tableView = self->_tableView;
    v10 = [(UITableView *)tableView indexPathForSelectedRow];
    v11 = [(UITableView *)tableView cellForRowAtIndexPath:v10];
    [v11 setAccessoryType:0];
  }

  v28 = [MEMORY[0x1E696AC88] indexPathForRow:a3 inSection:0];
  v12 = [(UITableView *)self->_tableView cellForRowAtIndexPath:v28];
  [v12 setAccessoryType:3];

  [(UITableView *)self->_tableView selectRowAtIndexPath:v28 animated:0 scrollPosition:2];
  v13 = [(NSMutableArray *)self->_pois objectAtIndexedSubscript:a3];
  v14 = v13;
  if (a3)
  {
    v15 = [v13 title];
    p_searchBar = &self->_searchBar;
    [(UISearchBar *)self->_searchBar setText:v15];

    [MEMORY[0x1E69DC888] systemGrayColor];
  }

  else
  {
    v17 = MEMORY[0x1E6992FD8];
    v18 = [v13 title];
    v19 = [v14 address];
    v20 = [v17 fullDisplayStringWithTitle:v18 address:v19];
    p_searchBar = &self->_searchBar;
    [(UISearchBar *)self->_searchBar setText:v20];

    [MEMORY[0x1E69DC888] labelColor];
  }
  v21 = ;
  v22 = [(UISearchBar *)*p_searchBar searchField];
  [v22 setTextColor:v21];

  if ([v14 isImprecise])
  {
    [(MKMapView *)self->_mapView removeAnnotation:self->_pin];
    [(EKEventDetailLocationDisambiguationContentViewController *)self _selectCircle];
  }

  else
  {
    if (self->_pin)
    {
      [(MKMapView *)self->_mapView removeAnnotation:?];
    }

    else
    {
      EKWeakLinkClass();
      v23 = objc_opt_new();
      pin = self->_pin;
      self->_pin = v23;
    }

    v25 = [v14 geoLocation];
    [v25 coordinate];
    [(MKPointAnnotation *)self->_pin setCoordinate:?];

    v26 = [v14 title];
    [(MKPointAnnotation *)self->_pin setTitle:v26];

    v27 = [v14 address];
    [(MKPointAnnotation *)self->_pin setSubtitle:v27];

    [(MKPointAnnotation *)self->_pin setRepresentation:2];
    [(MKMapView *)self->_mapView addAnnotation:self->_pin];
    [(MKMapView *)self->_mapView selectAnnotation:self->_pin animated:0];
    [(EKEventDetailLocationDisambiguationContentViewController *)self _updateMapRegion];
    [(EKEventDetailLocationDisambiguationContentViewController *)self _deselectCircle];
  }

  self->_textChanged = 0;
}

- (void)_updateMapRegion
{
  if (_updateMapRegion_onceToken != -1)
  {
    [EKEventDetailLocationDisambiguationContentViewController _updateMapRegion];
  }

  v3 = [(EKStructuredLocation *)self->_location geoLocation];
  [v3 coordinate];
  v5 = v4;
  v7 = v6;

  v8 = [(EKStructuredLocation *)self->_location radius];
  v10 = fmax(v9 * 3.0, 50.0);
  _updateMapRegion_makeRegionWithDistance(v8, v5, v7, v10, v10);
  [(MKMapView *)self->_mapView regionThatFits:?];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  pin = self->_pin;
  if (pin)
  {
    v20 = (_updateMapRegion_makeRegionWithDistance)([(MKPointAnnotation *)pin coordinate]);
    v24 = v12 - v20;
    if (v12 - v20 < 0.0)
    {
      v24 = -(v12 - v20);
    }

    v25 = v24 * 0.1;
    v26 = v14 - v21;
    if (v14 - v21 < 0.0)
    {
      v26 = -(v14 - v21);
    }

    v27 = v26 * 0.1;
    if (v16 >= v25)
    {
      v28 = v16;
    }

    else
    {
      v28 = v25;
    }

    if (v18 >= v27)
    {
      v29 = v18;
    }

    else
    {
      v29 = v27;
    }

    if (v22 < v25)
    {
      v22 = v25;
    }

    if (v23 < v27)
    {
      v23 = v27;
    }

    v30 = v28 * 0.5;
    v31 = v12 - v30;
    v32 = v29 * 0.5;
    v33 = v14 - v32;
    v34 = v12 + v30;
    v35 = v14 + v32;
    v36 = v22 * 0.5;
    v37 = v20 - v36;
    v38 = v23 * 0.5;
    v39 = v21 - v38;
    v40 = v20 + v36 + v25 * 4.0;
    v41 = v21 + v38;
    if (v31 >= v37)
    {
      v42 = v37;
    }

    else
    {
      v42 = v31;
    }

    if (v33 >= v39)
    {
      v43 = v39;
    }

    else
    {
      v43 = v33;
    }

    if (v34 >= v40)
    {
      v40 = v34;
    }

    if (v35 >= v41)
    {
      v41 = v35;
    }

    [(MKMapView *)self->_mapView regionThatFits:v42 + (v40 - v42) * 0.5, v43 + (v41 - v43) * 0.5];
    v12 = v44;
    v14 = v45;
    v16 = v46;
    v18 = v47;
  }

  mapView = self->_mapView;

  [(MKMapView *)mapView setRegion:1 animated:v12, v14, v16, v18];
}

uint64_t (*__76__EKEventDetailLocationDisambiguationContentViewController__updateMapRegion__block_invoke())(void, double, double, double, double)
{
  result = EKWeakLinkSymbol();
  _updateMapRegion_makeRegionWithDistance = result;
  return result;
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = EKEventDetailLocationDisambiguationContentViewController;
  [(EKEventDetailLocationDisambiguationContentViewController *)&v3 viewDidLayoutSubviews];
  [(EKEventDetailLocationDisambiguationContentViewController *)self _updateMapRegion];
  if (!self->_rowSelectionInitialized)
  {
    [(EKEventDetailLocationDisambiguationContentViewController *)self _selectRow:0];
    self->_rowSelectionInitialized = 1;
  }
}

- (void)doneTapped:(id)a3
{
  self->_done = 1;
  v4 = [(EKEventDetailLocationDisambiguationContentViewController *)self view];
  [v4 endEditing:1];

  if (!self->_geocoding)
  {
    completionBlock = self->_completionBlock;
    pois = self->_pois;
    v8 = [(UITableView *)self->_tableView indexPathForSelectedRow];
    v7 = -[NSMutableArray objectAtIndexedSubscript:](pois, "objectAtIndexedSubscript:", [v8 row]);
    completionBlock[2](completionBlock, 0, v7);
  }
}

- (void)searchBarSearchButtonClicked:(id)a3
{
  v3 = [(EKEventDetailLocationDisambiguationContentViewController *)self view];
  [v3 endEditing:0];
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  self->_textChanged = 1;
  v5 = [(EKEventDetailLocationDisambiguationContentViewController *)self _shouldEnableAddButton:a3];
  v6 = [(EKEventDetailLocationDisambiguationContentViewController *)self navigationItem];
  v7 = [v6 rightBarButtonItem];
  [v7 setEnabled:v5];

  v8 = [(UITableView *)self->_tableView indexPathForSelectedRow];
  [(UITableView *)self->_tableView selectRowAtIndexPath:0 animated:0 scrollPosition:2];
  if (v8)
  {
    tableView = self->_tableView;
    v11[0] = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [(UITableView *)tableView reloadRowsAtIndexPaths:v10 withRowAnimation:100];
  }
}

- (BOOL)searchBarShouldBeginEditing:(id)a3
{
  v3 = [(UITableView *)self->_tableView indexPathForSelectedRow];
  v4 = [v3 row] == 0;

  return v4;
}

- (BOOL)_shouldEnableAddButton
{
  v2 = [(UISearchBar *)self->_searchBar searchField];
  v3 = [v2 text];
  v4 = [v3 length] != 0;

  return v4;
}

- (void)searchBarTextDidEndEditing:(id)a3
{
  if (self->_textChanged)
  {
    v8[9] = v3;
    v8[10] = v4;
    self->_geocoding = 1;
    v6 = MEMORY[0x1E6992FB8];
    v7 = [(UISearchBar *)self->_searchBar text];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __87__EKEventDetailLocationDisambiguationContentViewController_searchBarTextDidEndEditing___block_invoke;
    v8[3] = &unk_1E8442728;
    v8[4] = self;
    [v6 geocodeLocationString:v7 withCompletionBlock:v8];
  }
}

void __87__EKEventDetailLocationDisambiguationContentViewController_searchBarTextDidEndEditing___block_invoke(uint64_t a1, void *a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) navigationItem];
  v5 = [v4 rightBarButtonItem];
  [v5 setEnabled:v3 != 0];

  if (v3)
  {
    v6 = [MEMORY[0x1E6966B08] locationWithMapItem:v3];
    [*(*(a1 + 32) + 1000) setObject:v6 atIndexedSubscript:0];

    v7 = *(a1 + 32);
    if (*(v7 + 1066) == 1)
    {
      (*(*(v7 + 1008) + 16))();
    }

    else
    {
      [*(v7 + 1040) beginUpdates];
      v18 = *(*(a1 + 32) + 1040);
      v19 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
      v21[0] = v19;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
      [v18 reloadRowsAtIndexPaths:v20 withRowAnimation:100];

      [*(*(a1 + 32) + 1040) endUpdates];
      [*(a1 + 32) _selectRow:0];
      *(*(a1 + 32) + 1065) = 0;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69DC650];
    v9 = EventKitUIBundle();
    v10 = [v9 localizedStringForKey:@"Invalid Location" value:&stru_1F4EF6790 table:0];
    v11 = EventKitUIBundle();
    v12 = [v11 localizedStringForKey:@"Please enter a valid address or select a point of interest from the list." value:&stru_1F4EF6790 table:0];
    v13 = [v8 alertControllerWithTitle:v10 message:v12 preferredStyle:1];

    v14 = MEMORY[0x1E69DC648];
    v15 = EventKitUIBundle();
    v16 = [v15 localizedStringForKey:@"Ok" value:&stru_1F4EF6790 table:0];
    v17 = [v14 actionWithTitle:v16 style:0 handler:0];
    [v13 addAction:v17];

    [*(a1 + 32) presentViewController:v13 animated:1 completion:0];
    *(*(a1 + 32) + 1065) = 0;
  }
}

- (void)_selectCircle
{
  v3 = [MEMORY[0x1E69DC888] systemBlueColor];
  v4 = [v3 colorWithAlphaComponent:0.28];
  [(MKCircleRenderer *)self->_circleRenderer setFillColor:v4];

  v5 = [MEMORY[0x1E69DC888] systemBlueColor];
  [(MKCircleRenderer *)self->_circleRenderer setStrokeColor:v5];

  circleRenderer = self->_circleRenderer;

  [(MKCircleRenderer *)circleRenderer setNeedsDisplay];
}

- (void)_deselectCircle
{
  v3 = [(MKCircleRenderer *)self->_circleRenderer fillColor];
  v4 = [v3 colorWithAlphaComponent:0.1];
  [(MKCircleRenderer *)self->_circleRenderer setFillColor:v4];

  [(MKCircleRenderer *)self->_circleRenderer setStrokeColor:0];
  circleRenderer = self->_circleRenderer;

  [(MKCircleRenderer *)circleRenderer setNeedsDisplay];
}

- (id)mapView:(id)a3 rendererForOverlay:(id)a4
{
  circleRenderer = self->_circleRenderer;
  if (!circleRenderer)
  {
    v6 = a4;
    v7 = [objc_alloc(EKWeakLinkClass()) initWithCircle:v6];

    v8 = self->_circleRenderer;
    self->_circleRenderer = v7;

    v9 = CalOnePixelInPoints();
    [(MKCircleRenderer *)self->_circleRenderer setLineWidth:v9 + v9];
    [(EKEventDetailLocationDisambiguationContentViewController *)self _selectCircle];
    circleRenderer = self->_circleRenderer;
  }

  return circleRenderer;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = EventKitUIBundle();
  v5 = [v4 localizedStringForKey:@"Suggestions" value:&stru_1F4EF6790 table:0];

  return v5;
}

- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5
{
  v10 = a3;
  v6 = a4;
  if (EKUICatalyst())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [v10 backgroundColor];
      v9 = [v7 contentView];

      [v9 setBackgroundColor:v8];
    }
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (tableView_cellForRowAtIndexPath__onceToken != -1)
  {
    [EKEventDetailLocationDisambiguationContentViewController tableView:cellForRowAtIndexPath:];
  }

  v8 = [v6 dequeueReusableCellWithIdentifier:@"MapItemCell"];
  if (!v8)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"MapItemCell"];
    [v8 setSelectionStyle:0];
    v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v8 setSelectedBackgroundView:v9];
  }

  v10 = [v6 indexPathForSelectedRow];
  if (v10 && (v11 = v10, [v6 indexPathForSelectedRow], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "row"), v14 = objc_msgSend(v7, "row"), v12, v11, v13 == v14))
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  [v8 setAccessoryType:v15];
  v16 = -[NSMutableArray objectAtIndexedSubscript:](self->_pois, "objectAtIndexedSubscript:", [v7 row]);
  if ([v7 row])
  {
    v17 = [v16 title];
    v18 = [v8 textLabel];
    [v18 setText:v17];

    v19 = [v16 address];
    v20 = [v8 detailTextLabel];
    v21 = v20;
    v22 = v19;
    goto LABEL_11;
  }

  if ([v16 isImprecise])
  {
    v19 = [MEMORY[0x1E6993408] labelForLocation:v16];
    if (v19)
    {
      v28 = [v8 textLabel];
      [v28 setText:v19];

      v21 = [v16 title];
      v29 = [v8 detailTextLabel];
      [v29 setText:v21];

      goto LABEL_12;
    }

    v32 = [v16 title];
    v33 = [v8 textLabel];
    [v33 setText:v32];

    v20 = [v8 detailTextLabel];
    v21 = v20;
    v22 = 0;
LABEL_11:
    [v20 setText:v22];
LABEL_12:

    goto LABEL_13;
  }

  v30 = [v16 title];
  v31 = [v8 textLabel];
  [v31 setText:v30];

  v19 = [v8 detailTextLabel];
  [v19 setText:0];
LABEL_13:

  v23 = [(NSCache *)self->_iconCache objectForKey:v7];
  v24 = [v8 imageView];
  [v24 setImage:v23];

  if (!v23)
  {
    v25 = tableView_cellForRowAtIndexPath__MKMapItemClass;
    v26 = [v16 mapKitHandle];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __92__EKEventDetailLocationDisambiguationContentViewController_tableView_cellForRowAtIndexPath___block_invoke_2;
    v34[3] = &unk_1E8440D18;
    v35 = v6;
    v36 = v7;
    v37 = self;
    [v25 _mapItemFromHandle:v26 completionHandler:v34];
  }

  return v8;
}

uint64_t __92__EKEventDetailLocationDisambiguationContentViewController_tableView_cellForRowAtIndexPath___block_invoke()
{
  result = EKWeakLinkClass();
  tableView_cellForRowAtIndexPath__MKMapItemClass = result;
  return result;
}

void __92__EKEventDetailLocationDisambiguationContentViewController_tableView_cellForRowAtIndexPath___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __92__EKEventDetailLocationDisambiguationContentViewController_tableView_cellForRowAtIndexPath___block_invoke_3;
  v7[3] = &unk_1E8440C00;
  v8 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v9 = v4;
  v10 = v5;
  v11 = v3;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __92__EKEventDetailLocationDisambiguationContentViewController_tableView_cellForRowAtIndexPath___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) cellForRowAtIndexPath:*(a1 + 40)];

  if (v2)
  {
    v3 = *(*(a1 + 48) + 1072);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __92__EKEventDetailLocationDisambiguationContentViewController_tableView_cellForRowAtIndexPath___block_invoke_4;
    v8[3] = &unk_1E8440C00;
    v4 = *(a1 + 56);
    v5 = *(a1 + 32);
    *&v6 = *(a1 + 40);
    *(&v6 + 1) = *(a1 + 48);
    *&v7 = v4;
    *(&v7 + 1) = v5;
    v9 = v7;
    v10 = v6;
    dispatch_async(v3, v8);
  }
}

void __92__EKEventDetailLocationDisambiguationContentViewController_tableView_cellForRowAtIndexPath___block_invoke_4(uint64_t a1)
{
  v2 = ImageForMapItem(*(a1 + 32));
  v12.width = 26.0;
  v12.height = 26.0;
  UIGraphicsBeginImageContextWithOptions(v12, 0, 0.0);
  [v2 drawInRect:{0.0, 0.0, 26.0, 26.0}];
  v3 = UIGraphicsGetImageFromCurrentImageContext();

  UIGraphicsEndImageContext();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __92__EKEventDetailLocationDisambiguationContentViewController_tableView_cellForRowAtIndexPath___block_invoke_5;
  v7[3] = &unk_1E8440C00;
  v8 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v9 = v4;
  v10 = v5;
  v11 = v3;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __92__EKEventDetailLocationDisambiguationContentViewController_tableView_cellForRowAtIndexPath___block_invoke_5(uint64_t a1)
{
  v4 = [*(a1 + 32) cellForRowAtIndexPath:*(a1 + 40)];
  [*(*(a1 + 48) + 1080) setObject:*(a1 + 56) forKey:*(a1 + 40)];
  if (v4)
  {
    v2 = *(a1 + 56);
    v3 = [v4 imageView];
    [v3 setImage:v2];

    [v4 setNeedsLayout];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(EKEventDetailLocationDisambiguationContentViewController *)self view];
  [v6 endEditing:0];

  v7 = [v5 row];

  [(EKEventDetailLocationDisambiguationContentViewController *)self _selectRow:v7];
}

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  v4 = [a3 cellForRowAtIndexPath:a4];
  [v4 setAccessoryType:0];
}

@end