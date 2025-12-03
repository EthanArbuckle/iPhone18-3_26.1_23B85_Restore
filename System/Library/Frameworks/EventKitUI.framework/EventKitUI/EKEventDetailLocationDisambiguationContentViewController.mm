@interface EKEventDetailLocationDisambiguationContentViewController
- (BOOL)_shouldEnableAddButton;
- (BOOL)searchBarShouldBeginEditing:(id)editing;
- (EKEventDetailLocationDisambiguationContentViewController)initWithLocation:(id)location pois:(id)pois completionBlock:(id)block;
- (id)_constraintsForParadigm:(unint64_t)paradigm;
- (id)mapView:(id)view rendererForOverlay:(id)overlay;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (void)_createConstraints;
- (void)_deselectCircle;
- (void)_selectCircle;
- (void)_selectRow:(unint64_t)row;
- (void)_updateMapRegion;
- (void)doneTapped:(id)tapped;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarSearchButtonClicked:(id)clicked;
- (void)searchBarTextDidEndEditing:(id)editing;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section;
- (void)updateViewConstraints;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation EKEventDetailLocationDisambiguationContentViewController

- (EKEventDetailLocationDisambiguationContentViewController)initWithLocation:(id)location pois:(id)pois completionBlock:(id)block
{
  v43 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  poisCopy = pois;
  blockCopy = block;
  v40.receiver = self;
  v40.super_class = EKEventDetailLocationDisambiguationContentViewController;
  v11 = [(EKEventDetailLocationDisambiguationContentViewController *)&v40 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_location, location);
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(poisCopy, "count") + 1}];
    pois = v12->_pois;
    v12->_pois = v13;

    v15 = v12->_pois;
    v16 = [locationCopy copy];
    [(NSMutableArray *)v15 addObject:v16];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v17 = poisCopy;
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

    v23 = _Block_copy(blockCopy);
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
  view = [(EKEventDetailLocationDisambiguationContentViewController *)self view];
  v86 = objc_opt_new();
  v85 = objc_opt_new();
  leadingAnchor = [(MKMapView *)self->_mapView leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v78 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v88[0] = v78;
  trailingAnchor = [(MKMapView *)self->_mapView trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v71 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v88[1] = v71;
  topAnchor = [(MKMapView *)self->_mapView topAnchor];
  topAnchor2 = [view topAnchor];
  v65 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v88[2] = v65;
  leadingAnchor3 = [(UIView *)self->_separatorLine leadingAnchor];
  leadingAnchor4 = [view leadingAnchor];
  v59 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v88[3] = v59;
  trailingAnchor3 = [(UIView *)self->_separatorLine trailingAnchor];
  trailingAnchor4 = [view trailingAnchor];
  v53 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v88[4] = v53;
  topAnchor3 = [(UIView *)self->_separatorLine topAnchor];
  bottomAnchor = [(MKMapView *)self->_mapView bottomAnchor];
  v47 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  v88[5] = v47;
  heightAnchor = [(UIView *)self->_separatorLine heightAnchor];
  v43 = [heightAnchor constraintEqualToConstant:EKUIPixelSizeInPoints()];
  v88[6] = v43;
  leadingAnchor5 = [(UITableView *)self->_tableView leadingAnchor];
  leadingAnchor6 = [view leadingAnchor];
  v37 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v88[7] = v37;
  trailingAnchor5 = [(UITableView *)self->_tableView trailingAnchor];
  v84 = view;
  trailingAnchor6 = [view trailingAnchor];
  v5 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v88[8] = v5;
  topAnchor4 = [(UITableView *)self->_tableView topAnchor];
  bottomAnchor2 = [(UIView *)self->_separatorLine bottomAnchor];
  v8 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2];
  v88[9] = v8;
  bottomAnchor3 = [(UITableView *)self->_tableView bottomAnchor];
  bottomAnchor4 = [view bottomAnchor];
  v11 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v88[10] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:11];
  [v86 addObjectsFromArray:v12];

  heightAnchor2 = [(MKMapView *)self->_mapView heightAnchor];
  widthAnchor = [(MKMapView *)self->_mapView widthAnchor];
  v15 = [heightAnchor2 constraintEqualToAnchor:widthAnchor];
  v16 = [v86 setByAddingObject:v15];
  tallConstraints = self->_tallConstraints;
  self->_tallConstraints = v16;

  heightAnchor3 = [(MKMapView *)self->_mapView heightAnchor];
  widthAnchor2 = [(MKMapView *)self->_mapView widthAnchor];
  v20 = [heightAnchor3 constraintEqualToAnchor:widthAnchor2 multiplier:0.5];
  v21 = [v86 setByAddingObject:v20];
  iPadConstraints = self->_iPadConstraints;
  self->_iPadConstraints = v21;

  leadingAnchor7 = [(MKMapView *)self->_mapView leadingAnchor];
  leadingAnchor8 = [v84 leadingAnchor];
  v79 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v87[0] = v79;
  topAnchor5 = [(MKMapView *)self->_mapView topAnchor];
  topAnchor6 = [v84 topAnchor];
  v72 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v87[1] = v72;
  bottomAnchor5 = [(MKMapView *)self->_mapView bottomAnchor];
  bottomAnchor6 = [v84 bottomAnchor];
  v66 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v87[2] = v66;
  leadingAnchor9 = [(UIView *)self->_separatorLine leadingAnchor];
  trailingAnchor7 = [(MKMapView *)self->_mapView trailingAnchor];
  v60 = [leadingAnchor9 constraintEqualToAnchor:trailingAnchor7];
  v87[3] = v60;
  widthAnchor3 = [(UIView *)self->_separatorLine widthAnchor];
  v56 = [widthAnchor3 constraintEqualToConstant:EKUIPixelSizeInPoints()];
  v87[4] = v56;
  topAnchor7 = [(UIView *)self->_separatorLine topAnchor];
  topAnchor8 = [v84 topAnchor];
  v50 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
  v87[5] = v50;
  bottomAnchor7 = [(UIView *)self->_separatorLine bottomAnchor];
  bottomAnchor8 = [v84 bottomAnchor];
  v44 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
  v87[6] = v44;
  leadingAnchor10 = [(UITableView *)self->_tableView leadingAnchor];
  trailingAnchor8 = [(UIView *)self->_separatorLine trailingAnchor];
  v40 = [leadingAnchor10 constraintEqualToAnchor:trailingAnchor8];
  v87[7] = v40;
  trailingAnchor9 = [(UITableView *)self->_tableView trailingAnchor];
  trailingAnchor10 = [v84 trailingAnchor];
  v34 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
  v87[8] = v34;
  topAnchor9 = [(UITableView *)self->_tableView topAnchor];
  topAnchor10 = [v84 topAnchor];
  v24 = [topAnchor9 constraintEqualToAnchor:topAnchor10];
  v87[9] = v24;
  bottomAnchor9 = [(UITableView *)self->_tableView bottomAnchor];
  bottomAnchor10 = [v84 bottomAnchor];
  v27 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10];
  v87[10] = v27;
  widthAnchor4 = [(UITableView *)self->_tableView widthAnchor];
  widthAnchor5 = [(MKMapView *)self->_mapView widthAnchor];
  v30 = [widthAnchor4 constraintEqualToAnchor:widthAnchor5];
  v87[11] = v30;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:12];
  [(NSSet *)v85 addObjectsFromArray:v31];

  splitConstraints = self->_splitConstraints;
  self->_splitConstraints = v85;
}

- (id)_constraintsForParadigm:(unint64_t)paradigm
{
  v3 = &OBJC_IVAR___EKEventDetailLocationDisambiguationContentViewController__tallConstraints;
  if (paradigm == 8)
  {
    v3 = &OBJC_IVAR___EKEventDetailLocationDisambiguationContentViewController__splitConstraints;
  }

  if (paradigm == 16)
  {
    v3 = &OBJC_IVAR___EKEventDetailLocationDisambiguationContentViewController__iPadConstraints;
  }

  return *(&self->super.super.super.isa + *v3);
}

- (void)updateViewConstraints
{
  view = [(EKEventDetailLocationDisambiguationContentViewController *)self view];
  v4 = EKUICurrentWindowInterfaceParadigm(view);

  if (!self->_tallConstraints)
  {
    [(EKEventDetailLocationDisambiguationContentViewController *)self _createConstraints];
    v13 = MEMORY[0x1E696ACD8];
    v5 = [(EKEventDetailLocationDisambiguationContentViewController *)self _constraintsForParadigm:v4];
    allObjects = [v5 allObjects];
    [v13 activateConstraints:allObjects];
    goto LABEL_5;
  }

  if (v4 != self->_currentLayoutParadigm)
  {
    v5 = [(EKEventDetailLocationDisambiguationContentViewController *)self _constraintsForParadigm:?];
    allObjects = [(EKEventDetailLocationDisambiguationContentViewController *)self _constraintsForParadigm:v4];
    v7 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:v5];
    [v7 minusSet:allObjects];
    v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:allObjects];
    [v8 minusSet:v5];
    v9 = MEMORY[0x1E696ACD8];
    allObjects2 = [v7 allObjects];
    [v9 deactivateConstraints:allObjects2];

    v11 = MEMORY[0x1E696ACD8];
    allObjects3 = [v8 allObjects];
    [v11 activateConstraints:allObjects3];

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
    navigationItem = [(EKEventDetailLocationDisambiguationContentViewController *)self navigationItem];
    [navigationItem setSearchController:v4];

    navigationItem2 = [(EKEventDetailLocationDisambiguationContentViewController *)self navigationItem];
    [navigationItem2 setHidesSearchBarWhenScrolling:0];

    searchBar = [v4 searchBar];
    searchBar = self->_searchBar;
    self->_searchBar = searchBar;

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
    view = [(EKEventDetailLocationDisambiguationContentViewController *)self view];
    v19 = [v17 initWithTarget:view action:sel_endEditing_];
    [(MKMapView *)v16 addGestureRecognizer:v19];

    v20 = objc_opt_new();
    separatorLine = self->_separatorLine;
    self->_separatorLine = v20;

    [(UIView *)self->_separatorLine setTranslatesAutoresizingMaskIntoConstraints:0];
    systemMidGrayColor = [MEMORY[0x1E69DC888] systemMidGrayColor];
    [(UIView *)self->_separatorLine setBackgroundColor:systemMidGrayColor];

    v23 = objc_alloc_init(MEMORY[0x1E69DD020]);
    tableView = self->_tableView;
    self->_tableView = v23;

    [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITableView *)self->_tableView setDelegate:self];
    [(UITableView *)self->_tableView setDataSource:self];
    view2 = [(EKEventDetailLocationDisambiguationContentViewController *)self view];
    [view2 addSubview:self->_mapView];

    view3 = [(EKEventDetailLocationDisambiguationContentViewController *)self view];
    [view3 addSubview:self->_tableView];

    view4 = [(EKEventDetailLocationDisambiguationContentViewController *)self view];
    [view4 addSubview:self->_separatorLine];

    v28 = EventKitUIBundle();
    v29 = [v28 localizedStringForKey:@"Add Location" value:&stru_1F4EF6790 table:0];
    navigationItem3 = [(EKEventDetailLocationDisambiguationContentViewController *)self navigationItem];
    [navigationItem3 setTitle:v29];

    v31 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelTapped_];
    navigationItem4 = [(EKEventDetailLocationDisambiguationContentViewController *)self navigationItem];
    [navigationItem4 setLeftBarButtonItem:v31];

    v33 = objc_alloc(MEMORY[0x1E69DC708]);
    v34 = EventKitUIBundle();
    v35 = [v34 localizedStringForKey:@"Add" value:&stru_1F4EF6790 table:0];
    v36 = [v33 initWithTitle:v35 style:2 target:self action:sel_doneTapped_];
    navigationItem5 = [(EKEventDetailLocationDisambiguationContentViewController *)self navigationItem];
    [navigationItem5 setRightBarButtonItem:v36];

    view5 = [(EKEventDetailLocationDisambiguationContentViewController *)self view];
    [view5 setNeedsUpdateConstraints];

    v39 = EKWeakLinkClass();
    geoLocation = [(EKStructuredLocation *)self->_location geoLocation];
    [geoLocation coordinate];
    v42 = v41;
    v44 = v43;
    [(EKStructuredLocation *)self->_location radius];
    v46 = [v39 circleWithCenterCoordinate:v42 radius:{v44, v45}];

    [(MKMapView *)self->_mapView addOverlay:v46 level:1];
  }
}

- (void)_selectRow:(unint64_t)row
{
  navigationItem = [(EKEventDetailLocationDisambiguationContentViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:1];

  indexPathForSelectedRow = [(UITableView *)self->_tableView indexPathForSelectedRow];
  v8 = [indexPathForSelectedRow row];

  if (v8 != row)
  {
    tableView = self->_tableView;
    indexPathForSelectedRow2 = [(UITableView *)tableView indexPathForSelectedRow];
    v11 = [(UITableView *)tableView cellForRowAtIndexPath:indexPathForSelectedRow2];
    [v11 setAccessoryType:0];
  }

  v28 = [MEMORY[0x1E696AC88] indexPathForRow:row inSection:0];
  v12 = [(UITableView *)self->_tableView cellForRowAtIndexPath:v28];
  [v12 setAccessoryType:3];

  [(UITableView *)self->_tableView selectRowAtIndexPath:v28 animated:0 scrollPosition:2];
  v13 = [(NSMutableArray *)self->_pois objectAtIndexedSubscript:row];
  v14 = v13;
  if (row)
  {
    title = [v13 title];
    p_searchBar = &self->_searchBar;
    [(UISearchBar *)self->_searchBar setText:title];

    [MEMORY[0x1E69DC888] systemGrayColor];
  }

  else
  {
    v17 = MEMORY[0x1E6992FD8];
    title2 = [v13 title];
    address = [v14 address];
    v20 = [v17 fullDisplayStringWithTitle:title2 address:address];
    p_searchBar = &self->_searchBar;
    [(UISearchBar *)self->_searchBar setText:v20];

    [MEMORY[0x1E69DC888] labelColor];
  }
  v21 = ;
  searchField = [(UISearchBar *)*p_searchBar searchField];
  [searchField setTextColor:v21];

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

    geoLocation = [v14 geoLocation];
    [geoLocation coordinate];
    [(MKPointAnnotation *)self->_pin setCoordinate:?];

    title3 = [v14 title];
    [(MKPointAnnotation *)self->_pin setTitle:title3];

    address2 = [v14 address];
    [(MKPointAnnotation *)self->_pin setSubtitle:address2];

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

  geoLocation = [(EKStructuredLocation *)self->_location geoLocation];
  [geoLocation coordinate];
  v5 = v4;
  v7 = v6;

  radius = [(EKStructuredLocation *)self->_location radius];
  v10 = fmax(v9 * 3.0, 50.0);
  _updateMapRegion_makeRegionWithDistance(radius, v5, v7, v10, v10);
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

- (void)doneTapped:(id)tapped
{
  self->_done = 1;
  view = [(EKEventDetailLocationDisambiguationContentViewController *)self view];
  [view endEditing:1];

  if (!self->_geocoding)
  {
    completionBlock = self->_completionBlock;
    pois = self->_pois;
    indexPathForSelectedRow = [(UITableView *)self->_tableView indexPathForSelectedRow];
    v7 = -[NSMutableArray objectAtIndexedSubscript:](pois, "objectAtIndexedSubscript:", [indexPathForSelectedRow row]);
    completionBlock[2](completionBlock, 0, v7);
  }
}

- (void)searchBarSearchButtonClicked:(id)clicked
{
  view = [(EKEventDetailLocationDisambiguationContentViewController *)self view];
  [view endEditing:0];
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  v11[1] = *MEMORY[0x1E69E9840];
  self->_textChanged = 1;
  v5 = [(EKEventDetailLocationDisambiguationContentViewController *)self _shouldEnableAddButton:bar];
  navigationItem = [(EKEventDetailLocationDisambiguationContentViewController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v5];

  indexPathForSelectedRow = [(UITableView *)self->_tableView indexPathForSelectedRow];
  [(UITableView *)self->_tableView selectRowAtIndexPath:0 animated:0 scrollPosition:2];
  if (indexPathForSelectedRow)
  {
    tableView = self->_tableView;
    v11[0] = indexPathForSelectedRow;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [(UITableView *)tableView reloadRowsAtIndexPaths:v10 withRowAnimation:100];
  }
}

- (BOOL)searchBarShouldBeginEditing:(id)editing
{
  indexPathForSelectedRow = [(UITableView *)self->_tableView indexPathForSelectedRow];
  v4 = [indexPathForSelectedRow row] == 0;

  return v4;
}

- (BOOL)_shouldEnableAddButton
{
  searchField = [(UISearchBar *)self->_searchBar searchField];
  text = [searchField text];
  v4 = [text length] != 0;

  return v4;
}

- (void)searchBarTextDidEndEditing:(id)editing
{
  if (self->_textChanged)
  {
    v8[9] = v3;
    v8[10] = v4;
    self->_geocoding = 1;
    v6 = MEMORY[0x1E6992FB8];
    text = [(UISearchBar *)self->_searchBar text];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __87__EKEventDetailLocationDisambiguationContentViewController_searchBarTextDidEndEditing___block_invoke;
    v8[3] = &unk_1E8442728;
    v8[4] = self;
    [v6 geocodeLocationString:text withCompletionBlock:v8];
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
  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  v4 = [systemBlueColor colorWithAlphaComponent:0.28];
  [(MKCircleRenderer *)self->_circleRenderer setFillColor:v4];

  systemBlueColor2 = [MEMORY[0x1E69DC888] systemBlueColor];
  [(MKCircleRenderer *)self->_circleRenderer setStrokeColor:systemBlueColor2];

  circleRenderer = self->_circleRenderer;

  [(MKCircleRenderer *)circleRenderer setNeedsDisplay];
}

- (void)_deselectCircle
{
  fillColor = [(MKCircleRenderer *)self->_circleRenderer fillColor];
  v4 = [fillColor colorWithAlphaComponent:0.1];
  [(MKCircleRenderer *)self->_circleRenderer setFillColor:v4];

  [(MKCircleRenderer *)self->_circleRenderer setStrokeColor:0];
  circleRenderer = self->_circleRenderer;

  [(MKCircleRenderer *)circleRenderer setNeedsDisplay];
}

- (id)mapView:(id)view rendererForOverlay:(id)overlay
{
  circleRenderer = self->_circleRenderer;
  if (!circleRenderer)
  {
    overlayCopy = overlay;
    v7 = [objc_alloc(EKWeakLinkClass()) initWithCircle:overlayCopy];

    v8 = self->_circleRenderer;
    self->_circleRenderer = v7;

    v9 = CalOnePixelInPoints();
    [(MKCircleRenderer *)self->_circleRenderer setLineWidth:v9 + v9];
    [(EKEventDetailLocationDisambiguationContentViewController *)self _selectCircle];
    circleRenderer = self->_circleRenderer;
  }

  return circleRenderer;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = EventKitUIBundle();
  v5 = [v4 localizedStringForKey:@"Suggestions" value:&stru_1F4EF6790 table:0];

  return v5;
}

- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section
{
  viewCopy = view;
  headerViewCopy = headerView;
  if (EKUICatalyst())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = headerViewCopy;
      backgroundColor = [viewCopy backgroundColor];
      contentView = [v7 contentView];

      [contentView setBackgroundColor:backgroundColor];
    }
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (tableView_cellForRowAtIndexPath__onceToken != -1)
  {
    [EKEventDetailLocationDisambiguationContentViewController tableView:cellForRowAtIndexPath:];
  }

  v8 = [viewCopy dequeueReusableCellWithIdentifier:@"MapItemCell"];
  if (!v8)
  {
    v8 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:3 reuseIdentifier:@"MapItemCell"];
    [v8 setSelectionStyle:0];
    v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v8 setSelectedBackgroundView:v9];
  }

  indexPathForSelectedRow = [viewCopy indexPathForSelectedRow];
  if (indexPathForSelectedRow && (v11 = indexPathForSelectedRow, [viewCopy indexPathForSelectedRow], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "row"), v14 = objc_msgSend(pathCopy, "row"), v12, v11, v13 == v14))
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  [v8 setAccessoryType:v15];
  v16 = -[NSMutableArray objectAtIndexedSubscript:](self->_pois, "objectAtIndexedSubscript:", [pathCopy row]);
  if ([pathCopy row])
  {
    title = [v16 title];
    textLabel = [v8 textLabel];
    [textLabel setText:title];

    address = [v16 address];
    detailTextLabel = [v8 detailTextLabel];
    title2 = detailTextLabel;
    v22 = address;
    goto LABEL_11;
  }

  if ([v16 isImprecise])
  {
    address = [MEMORY[0x1E6993408] labelForLocation:v16];
    if (address)
    {
      textLabel2 = [v8 textLabel];
      [textLabel2 setText:address];

      title2 = [v16 title];
      detailTextLabel2 = [v8 detailTextLabel];
      [detailTextLabel2 setText:title2];

      goto LABEL_12;
    }

    title3 = [v16 title];
    textLabel3 = [v8 textLabel];
    [textLabel3 setText:title3];

    detailTextLabel = [v8 detailTextLabel];
    title2 = detailTextLabel;
    v22 = 0;
LABEL_11:
    [detailTextLabel setText:v22];
LABEL_12:

    goto LABEL_13;
  }

  title4 = [v16 title];
  textLabel4 = [v8 textLabel];
  [textLabel4 setText:title4];

  address = [v8 detailTextLabel];
  [address setText:0];
LABEL_13:

  v23 = [(NSCache *)self->_iconCache objectForKey:pathCopy];
  imageView = [v8 imageView];
  [imageView setImage:v23];

  if (!v23)
  {
    v25 = tableView_cellForRowAtIndexPath__MKMapItemClass;
    mapKitHandle = [v16 mapKitHandle];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __92__EKEventDetailLocationDisambiguationContentViewController_tableView_cellForRowAtIndexPath___block_invoke_2;
    v34[3] = &unk_1E8440D18;
    v35 = viewCopy;
    v36 = pathCopy;
    selfCopy = self;
    [v25 _mapItemFromHandle:mapKitHandle completionHandler:v34];
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  view = [(EKEventDetailLocationDisambiguationContentViewController *)self view];
  [view endEditing:0];

  v7 = [pathCopy row];

  [(EKEventDetailLocationDisambiguationContentViewController *)self _selectRow:v7];
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  v4 = [view cellForRowAtIndexPath:path];
  [v4 setAccessoryType:0];
}

@end