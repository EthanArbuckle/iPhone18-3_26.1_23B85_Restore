@interface VenueCategoryViewController
- (NSDictionary)searchResultCountInVenue;
- (NSString)refineSearchText;
- (VKVenueFeatureMarker)venueWithFocus;
- (VenueCategoryViewController)initWithAutoCompleteCategoryCardItem:(id)item;
- (VenueCategoryViewController)initWithCategoryCardItem:(id)item;
- (VenueCategoryViewController)initWithSearchCategory:(id)category;
- (id)_buildingAtIndex:(unint64_t)index;
- (id)_headerLabelTextFromMapItem:(id)item searchCategory:(id)category;
- (id)_venueShortNameForMapItem:(id)item;
- (void)applyAlphaToContent:(double)content;
- (void)configureHeader;
- (void)configureTableView;
- (void)contentSizeCategoryDidChange:(id)change;
- (void)dataSource:(id)source itemFocused:(id)focused;
- (void)dataSource:(id)source itemTapped:(id)tapped;
- (void)didUpdateResults;
- (void)displayIndexListIfNecessary;
- (void)filterView:(id)view didSelectBuildingWithIndex:(unint64_t)index;
- (void)filterView:(id)view didSelectSubcategoryWithIndex:(unint64_t)index;
- (void)filterView:(id)view indexSelected:(unint64_t)selected;
- (void)handleDismissAction:(id)action;
- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type;
- (void)headerViewTapped:(id)tapped;
- (void)notifyVenuesManagerAndSwitchToBestFloor:(BOOL)floor;
- (void)performInitialSearchIfNecessary;
- (void)selectSubcategory:(id)subcategory;
- (void)setDelegate:(id)delegate;
- (void)setFilterViewHidden:(BOOL)hidden;
- (void)setHeaderTitle:(id)title;
- (void)setShowsLoading:(BOOL)loading;
- (void)updateFilterBar;
- (void)updateFooterVisibility;
- (void)updateHeaderImageView;
- (void)venueCategoryContentDownloader:(id)downloader didChangeMapItem:(id)item;
- (void)venueCategoryContentDownloader:(id)downloader didFailToFetchMapItemWithError:(id)error;
- (void)venueCategoryContentDownloader:(id)downloader didReceiveAutoCompleteSubcategories:(id)subcategories subcategoriesType:(int)type;
- (void)venueCategoryContentDownloader:(id)downloader didReceiveEVChargerUpdates:(id)updates;
- (void)venueCategoryContentDownloader:(id)downloader didReceiveSearchResults:(id)results shouldSwitchToBestFloor:(BOOL)floor;
- (void)venueCategoryContentDownloaderDidCancel:(id)cancel;
- (void)venueCategoryContentDownloaderDidFail:(id)fail;
- (void)venueCategoryContentDownloaderDidStart:(id)start;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)willChangeContainerStyle:(unint64_t)style;
@end

@implementation VenueCategoryViewController

- (VKVenueFeatureMarker)venueWithFocus
{
  WeakRetained = objc_loadWeakRetained(&self->_venueWithFocus);

  return WeakRetained;
}

- (void)selectSubcategory:(id)subcategory
{
  subcategoryCopy = subcategory;
  dataSource = [(VenueCategoryViewController *)self dataSource];
  subcategories = [dataSource subcategories];
  v7 = [subcategories indexOfObject:subcategoryCopy];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    filterView = +[NSNotificationCenter defaultCenter];
    [filterView postNotificationName:@"VenueBrowseDidFailToSelectSubcategory" object:0];
  }

  else
  {
    filterView = [(VenueCategoryViewController *)self filterView];
    [VenueCategoryViewController filterView:"filterView:indexSelected:" indexSelected:?];
  }
}

- (id)_buildingAtIndex:(unint64_t)index
{
  dataSource = [(VenueCategoryViewController *)self dataSource];
  buildings = [dataSource buildings];

  if (buildings && [buildings count] > index)
  {
    v6 = [buildings objectAtIndexedSubscript:index];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_venueShortNameForMapItem:(id)item
{
  itemCopy = item;
  if ([itemCopy _venueFeatureType] == 1)
  {
    [itemCopy venueLabelWithContext:0];
  }

  else
  {
    [itemCopy name];
  }
  v4 = ;

  return v4;
}

- (void)headerViewTapped:(id)tapped
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController wantsExpandLayout];
}

- (id)_headerLabelTextFromMapItem:(id)item searchCategory:(id)category
{
  itemCopy = item;
  categoryCopy = category;
  v8 = categoryCopy;
  shortDisplayString = &stru_1016631F0;
  if (itemCopy && categoryCopy)
  {
    if (self->_isAutoComplete)
    {
      shortDisplayString = [categoryCopy shortDisplayString];
    }

    else
    {
      v10 = +[NSBundle mainBundle];
      v11 = [v10 localizedStringForKey:@"category_at_venue_format_key" value:@"localized string not found" table:0];

      v12 = [(VenueCategoryViewController *)self _venueShortNameForMapItem:itemCopy];
      shortDisplayString2 = [v8 shortDisplayString];
      shortDisplayString = [NSString stringWithFormat:v11, shortDisplayString2, v12];
    }
  }

  return shortDisplayString;
}

- (void)dataSource:(id)source itemTapped:(id)tapped
{
  tappedCopy = tapped;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = tappedCopy;
    delegate = [(ControlContaineeViewController *)self delegate];
    [delegate viewController:self selectVenueSearchResult:v5 source:2];

    lastItemTapped = self->_lastItemTapped;
    self->_lastItemTapped = v5;
  }
}

- (void)dataSource:(id)source itemFocused:(id)focused
{
  focusedCopy = focused;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = focusedCopy;
    delegate = [(ControlContaineeViewController *)self delegate];
    [delegate viewController:self focusSearchResult:v5];

    lastItemTapped = self->_lastItemTapped;
    self->_lastItemTapped = 0;
  }

  else
  {
    if (self->_lastItemTapped)
    {
      goto LABEL_6;
    }

    lastItemTapped = [(ControlContaineeViewController *)self delegate];
    [lastItemTapped viewControllerRemoveSearchResultFocus:self];
  }

LABEL_6:
}

- (NSString)refineSearchText
{
  filterView = [(VenueCategoryViewController *)self filterView];
  subCategories = [filterView subCategories];
  filterView2 = [(VenueCategoryViewController *)self filterView];
  v6 = [subCategories objectAtIndexedSubscript:{objc_msgSend(filterView2, "selectedIndex")}];

  return v6;
}

- (void)updateFooterVisibility
{
  filterView = [(VenueCategoryViewController *)self filterView];
  subCategories = [filterView subCategories];
  if ([subCategories count])
  {
    shouldDisplayFilterView = [(VenueCategoryViewController *)self shouldDisplayFilterView];

    [(VenueCategoryViewController *)self setFilterViewHidden:shouldDisplayFilterView ^ 1];
    Height = 0.0;
    if (((shouldDisplayFilterView ^ 1) & 1) == 0)
    {
      filterView2 = [(VenueCategoryViewController *)self filterView];
      [filterView2 frame];
      Height = CGRectGetHeight(v18);
    }
  }

  else
  {

    [(VenueCategoryViewController *)self setFilterViewHidden:1];
    Height = 0.0;
  }

  tableView = [(VenueCategoryViewController *)self tableView];
  [tableView contentInset];
  v10 = v9;
  v12 = v11;
  v14 = v13;

  tableView2 = [(VenueCategoryViewController *)self tableView];
  [tableView2 setContentInset:{v10, v12, Height, v14}];

  loadingModeView = [(VenueCategoryViewController *)self loadingModeView];
  [loadingModeView setBottomInset:Height];
}

- (void)filterView:(id)view didSelectBuildingWithIndex:(unint64_t)index
{
  v10 = [(VenueCategoryViewController *)self _buildingAtIndex:index];
  contentDownloader = [(VenueCategoryViewController *)self contentDownloader];
  dataSource = [(VenueCategoryViewController *)self dataSource];
  searchCategory = [dataSource searchCategory];
  describesParentVenue = [v10 describesParentVenue];
  delegate = [(ControlContaineeViewController *)self delegate];
  [contentDownloader performSearchWithSearchCategory:searchCategory subcategoriesType:2 filter:v10 shouldFrameMapViewport:describesParentVenue ^ 1 actionCoordination:delegate];
}

- (void)filterView:(id)view didSelectSubcategoryWithIndex:(unint64_t)index
{
  dataSource = [(VenueCategoryViewController *)self dataSource];
  subcategories = [dataSource subcategories];

  if (subcategories && [subcategories count] > index)
  {
    v11 = [subcategories objectAtIndexedSubscript:index];
  }

  else
  {
    v11 = 0;
  }

  contentDownloader = [(VenueCategoryViewController *)self contentDownloader];
  isSubCategorySameAsTopLevel = [v11 isSubCategorySameAsTopLevel];
  delegate = [(ControlContaineeViewController *)self delegate];
  [contentDownloader performSearchWithSearchCategory:v11 subcategoriesType:1 filter:0 shouldFrameMapViewport:isSubCategorySameAsTopLevel ^ 1 actionCoordination:delegate];
}

- (void)filterView:(id)view indexSelected:(unint64_t)selected
{
  viewCopy = view;
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController wantsLayout:2];

  dataSource = [(VenueCategoryViewController *)self dataSource];
  subcategoriesType = [dataSource subcategoriesType];

  if (subcategoriesType >= 2)
  {
    if (subcategoriesType == 2)
    {
      [(VenueCategoryViewController *)self filterView:viewCopy didSelectBuildingWithIndex:selected];
    }
  }

  else
  {
    [(VenueCategoryViewController *)self filterView:viewCopy didSelectSubcategoryWithIndex:selected];
  }
}

- (void)setFilterViewHidden:(BOOL)hidden
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100FD0188;
  v3[3] = &unk_101661AE0;
  v3[4] = self;
  hiddenCopy = hidden;
  [UIView animateWithDuration:v3 animations:0.25];
}

- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type
{
  tappedCopy = tapped;
  dataSource = self->_dataSource;
  if (dataSource)
  {
    [(VenueCategoryDataSource *)dataSource resetCache];
  }

  [(VenueCategoryViewController *)self handleDismissAction:tappedCopy];
}

- (void)willChangeContainerStyle:(unint64_t)style
{
  v9.receiver = self;
  v9.super_class = VenueCategoryViewController;
  [(ContaineeViewController *)&v9 willChangeContainerStyle:?];
  if (style == 6)
  {
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController setDefaultContaineeLayout:4];
  }

  else
  {
    cardPresentationController = [(VenueCategoryViewController *)self dataSource];
    searchCategory = [cardPresentationController searchCategory];
    if ([searchCategory displayMode] == 2)
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController2 setDefaultContaineeLayout:v7];
  }
}

- (void)handleDismissAction:(id)action
{
  actionCopy = action;
  v5 = +[MKMapService sharedService];
  [v5 captureUserAction:4 onTarget:-[VenueCategoryViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

  v6.receiver = self;
  v6.super_class = VenueCategoryViewController;
  [(ContaineeViewController *)&v6 handleDismissAction:actionCopy];
}

- (void)configureTableView
{
  v3 = +[UIColor clearColor];
  tableView = [(VenueCategoryViewController *)self tableView];
  [tableView setBackgroundColor:v3];

  v5 = +[UIColor clearColor];
  tableView2 = [(VenueCategoryViewController *)self tableView];
  [tableView2 setSectionIndexBackgroundColor:v5];

  contentView = [(ContaineeViewController *)self contentView];
  tableView3 = [(VenueCategoryViewController *)self tableView];
  [contentView addSubview:tableView3];

  tableView4 = [(VenueCategoryViewController *)self tableView];
  [tableView4 setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView5 = [(VenueCategoryViewController *)self tableView];
  [tableView5 setPreservesSuperviewLayoutMargins:1];

  dataSource = [(VenueCategoryViewController *)self dataSource];
  [dataSource setDelegate:self];

  v12 = [[FilterCategoriesView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(VenueCategoryViewController *)self setFilterView:v12];

  filterView = [(VenueCategoryViewController *)self filterView];
  [filterView setTranslatesAutoresizingMaskIntoConstraints:0];

  filterView2 = [(VenueCategoryViewController *)self filterView];
  [filterView2 setDelegate:self];

  filterView3 = [(VenueCategoryViewController *)self filterView];
  [filterView3 setLastButtonTrailingPadding:20.0];

  contentView2 = [(ContaineeViewController *)self contentView];
  filterView4 = [(VenueCategoryViewController *)self filterView];
  [contentView2 addSubview:filterView4];

  v18 = [LoadingModeView alloc];
  v19 = +[NSBundle mainBundle];
  v20 = [v19 localizedStringForKey:@"Loading ..." value:@"localized string not found" table:0];
  v21 = [(LoadingModeView *)v18 initWithTitle:v20];
  [(VenueCategoryViewController *)self setLoadingModeView:v21];

  loadingModeView = [(VenueCategoryViewController *)self loadingModeView];
  [loadingModeView setTranslatesAutoresizingMaskIntoConstraints:0];

  loadingModeView2 = [(VenueCategoryViewController *)self loadingModeView];
  [loadingModeView2 setContentHuggingPriority:1 forAxis:0.0];

  loadingModeView3 = [(VenueCategoryViewController *)self loadingModeView];
  [loadingModeView3 setHidden:1];

  contentView3 = [(ContaineeViewController *)self contentView];
  loadingModeView4 = [(VenueCategoryViewController *)self loadingModeView];
  [contentView3 addSubview:loadingModeView4];

  if (_UISolariumEnabled())
  {
    tableView6 = [(VenueCategoryViewController *)self tableView];
    [(ContaineeViewController *)self setContentScrollView:tableView6 forEdge:1];
  }

  filterView5 = [(VenueCategoryViewController *)self filterView];
  bottomAnchor = [filterView5 bottomAnchor];
  contentView4 = [(ContaineeViewController *)self contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  v32 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

  LODWORD(v33) = 1140457472;
  v76 = v32;
  [v32 setPriority:v33];
  tableView7 = [(VenueCategoryViewController *)self tableView];
  topAnchor = [tableView7 topAnchor];
  contentView5 = [(ContaineeViewController *)self contentView];
  topAnchor2 = [contentView5 topAnchor];
  v86 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v91[0] = v86;
  tableView8 = [(VenueCategoryViewController *)self tableView];
  leadingAnchor = [tableView8 leadingAnchor];
  contentView6 = [(ContaineeViewController *)self contentView];
  leadingAnchor2 = [contentView6 leadingAnchor];
  v81 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v91[1] = v81;
  tableView9 = [(VenueCategoryViewController *)self tableView];
  trailingAnchor = [tableView9 trailingAnchor];
  contentView7 = [(ContaineeViewController *)self contentView];
  trailingAnchor2 = [contentView7 trailingAnchor];
  v75 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v91[2] = v75;
  tableView10 = [(VenueCategoryViewController *)self tableView];
  bottomAnchor3 = [tableView10 bottomAnchor];
  contentView8 = [(ContaineeViewController *)self contentView];
  bottomAnchor4 = [contentView8 bottomAnchor];
  v70 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v91[3] = v70;
  filterView6 = [(VenueCategoryViewController *)self filterView];
  topAnchor3 = [filterView6 topAnchor];
  contentView9 = [(ContaineeViewController *)self contentView];
  topAnchor4 = [contentView9 topAnchor];
  v65 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
  v91[4] = v65;
  v91[5] = v32;
  filterView7 = [(VenueCategoryViewController *)self filterView];
  leadingAnchor3 = [filterView7 leadingAnchor];
  contentView10 = [(ContaineeViewController *)self contentView];
  leadingAnchor4 = [contentView10 leadingAnchor];
  v60 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v91[6] = v60;
  filterView8 = [(VenueCategoryViewController *)self filterView];
  trailingAnchor3 = [filterView8 trailingAnchor];
  contentView11 = [(ContaineeViewController *)self contentView];
  trailingAnchor4 = [contentView11 trailingAnchor];
  v55 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v91[7] = v55;
  loadingModeView5 = [(VenueCategoryViewController *)self loadingModeView];
  topAnchor5 = [loadingModeView5 topAnchor];
  tableView11 = [(VenueCategoryViewController *)self tableView];
  topAnchor6 = [tableView11 topAnchor];
  v50 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v91[8] = v50;
  loadingModeView6 = [(VenueCategoryViewController *)self loadingModeView];
  bottomAnchor5 = [loadingModeView6 bottomAnchor];
  tableView12 = [(VenueCategoryViewController *)self tableView];
  bottomAnchor6 = [tableView12 bottomAnchor];
  v45 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v91[9] = v45;
  loadingModeView7 = [(VenueCategoryViewController *)self loadingModeView];
  leadingAnchor5 = [loadingModeView7 leadingAnchor];
  tableView13 = [(VenueCategoryViewController *)self tableView];
  leadingAnchor6 = [tableView13 leadingAnchor];
  v37 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v91[10] = v37;
  loadingModeView8 = [(VenueCategoryViewController *)self loadingModeView];
  trailingAnchor5 = [loadingModeView8 trailingAnchor];
  tableView14 = [(VenueCategoryViewController *)self tableView];
  trailingAnchor6 = [tableView14 trailingAnchor];
  v42 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v91[11] = v42;
  v43 = [NSArray arrayWithObjects:v91 count:12];
  [NSLayoutConstraint activateConstraints:v43];
}

- (void)notifyVenuesManagerAndSwitchToBestFloor:(BOOL)floor
{
  floorCopy = floor;
  delegate = [(ControlContaineeViewController *)self delegate];
  venuesManager = [delegate venuesManager];
  [venuesManager venuesControlCoordinatingDidChangeSearchResultCount:self];

  if (floorCopy)
  {
    delegate2 = [(ControlContaineeViewController *)self delegate];
    venuesManager2 = [delegate2 venuesManager];
    [venuesManager2 updateFocusedVenueFloor];
  }
}

- (void)didUpdateResults
{
  tableView = [(VenueCategoryViewController *)self tableView];
  [tableView reloadData];

  tableView2 = [(VenueCategoryViewController *)self tableView];
  numberOfSections = [tableView2 numberOfSections];

  if (numberOfSections >= 1)
  {
    tableView3 = [(VenueCategoryViewController *)self tableView];
    v7 = [NSIndexPath indexPathForRow:0x7FFFFFFFFFFFFFFFLL inSection:0];
    [tableView3 scrollToRowAtIndexPath:v7 atScrollPosition:1 animated:0];
  }

  [(VenueCategoryViewController *)self displayIndexListIfNecessary];
}

- (NSDictionary)searchResultCountInVenue
{
  v3 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  dataSource = [(VenueCategoryViewController *)self dataSource];
  content = [dataSource content];
  objects = [content objects];

  v23 = [objects countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v23)
  {
    v22 = *v29;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(objects);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        mapItem = [v8 mapItem];
        venueAreaIdentifiers = [mapItem venueAreaIdentifiers];
        v11 = venueAreaIdentifiers;
        v12 = &__NSArray0__struct;
        if (venueAreaIdentifiers)
        {
          v12 = venueAreaIdentifiers;
        }

        v13 = v12;

        v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v25;
          do
          {
            for (j = 0; j != v15; j = j + 1)
            {
              if (*v25 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v24 + 1) + 8 * j);
              v19 = [v3 objectForKeyedSubscript:v18];
              v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v19 unsignedIntegerValue] + 1);
              [v3 setObject:v20 forKeyedSubscript:v18];
            }

            v15 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v15);
        }
      }

      v23 = [objects countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v23);
  }

  return v3;
}

- (void)updateHeaderImageView
{
  dataSource = [(VenueCategoryViewController *)self dataSource];
  searchCategory = [dataSource searchCategory];
  v5 = searchCategory;
  if (searchCategory)
  {
    firstObject = searchCategory;
  }

  else
  {
    dataSource2 = [(VenueCategoryViewController *)self dataSource];
    subcategories = [dataSource2 subcategories];
    firstObject = [subcategories firstObject];
  }

  styleAttributes = [firstObject styleAttributes];
  v9 = +[UIScreen mainScreen];
  [v9 nativeScale];
  v11 = v10;
  traitCollection = [(VenueCategoryViewController *)self traitCollection];
  LOBYTE(v15) = [traitCollection userInterfaceStyle] == 2;
  v13 = [MKIconManager imageForStyle:styleAttributes size:4 forScale:1 format:0 transparent:0 transitMode:0 isCarplay:v11 nightMode:v15];
  headerImageView = [(VenueCategoryViewController *)self headerImageView];
  [headerImageView setImage:v13];
}

- (void)configureHeader
{
  v3 = objc_alloc_init(UIView);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = objc_alloc_init(UIImageView);
  [(VenueCategoryViewController *)self setHeaderImageView:v4];

  [(VenueCategoryViewController *)self updateHeaderImageView];
  headerImageView = [(VenueCategoryViewController *)self headerImageView];
  [headerImageView setTranslatesAutoresizingMaskIntoConstraints:0];

  headerImageView2 = [(VenueCategoryViewController *)self headerImageView];
  [v3 addSubview:headerImageView2];

  v7 = objc_alloc_init(UILabel);
  [(VenueCategoryViewController *)self setHeaderLabel:v7];

  headerLabel = [(VenueCategoryViewController *)self headerLabel];
  [headerLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = +[UIColor clearColor];
  headerLabel2 = [(VenueCategoryViewController *)self headerLabel];
  [headerLabel2 setBackgroundColor:v9];

  headerLabel3 = [(VenueCategoryViewController *)self headerLabel];
  [headerLabel3 setNumberOfLines:0];

  headerLabelFont = [(VenueCategoryViewController *)self headerLabelFont];
  headerLabel4 = [(VenueCategoryViewController *)self headerLabel];
  [headerLabel4 setFont:headerLabelFont];

  headerTitle = self->_headerTitle;
  headerLabel5 = [(VenueCategoryViewController *)self headerLabel];
  [headerLabel5 setText:headerTitle];

  v16 = +[UIColor labelColor];
  headerLabel6 = [(VenueCategoryViewController *)self headerLabel];
  [headerLabel6 setTextColor:v16];

  headerLabel7 = [(VenueCategoryViewController *)self headerLabel];
  [v3 addSubview:headerLabel7];

  v19 = [[ContainerHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(ContainerHeaderView *)v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ContainerHeaderView *)v19 setTitleView:v3];
  [(ContainerHeaderView *)v19 setDelegate:self];
  [(ContainerHeaderView *)v19 setVerticalAlignmentOffset:11.0];
  containerHeaderView = self->_containerHeaderView;
  self->_containerHeaderView = v19;
  v21 = v19;

  headerView = [(ContaineeViewController *)self headerView];
  [headerView addSubview:v21];

  heightAnchor = [(ContainerHeaderView *)v21 heightAnchor];
  v75 = [heightAnchor constraintGreaterThanOrEqualToConstant:80.0];
  v77[0] = v75;
  headerImageView3 = [(VenueCategoryViewController *)self headerImageView];
  leadingAnchor = [headerImageView3 leadingAnchor];
  leadingAnchor2 = [v3 leadingAnchor];
  v71 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v77[1] = v71;
  headerImageView4 = [(VenueCategoryViewController *)self headerImageView];
  widthAnchor = [headerImageView4 widthAnchor];
  v68 = [widthAnchor constraintEqualToConstant:40.0];
  v77[2] = v68;
  headerImageView5 = [(VenueCategoryViewController *)self headerImageView];
  heightAnchor2 = [headerImageView5 heightAnchor];
  v65 = [heightAnchor2 constraintEqualToConstant:40.0];
  v77[3] = v65;
  headerImageView6 = [(VenueCategoryViewController *)self headerImageView];
  topAnchor = [headerImageView6 topAnchor];
  v63 = v3;
  topAnchor2 = [v3 topAnchor];
  v60 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:20.0];
  v77[4] = v60;
  headerLabel8 = [(VenueCategoryViewController *)self headerLabel];
  leadingAnchor3 = [headerLabel8 leadingAnchor];
  headerImageView7 = [(VenueCategoryViewController *)self headerImageView];
  trailingAnchor = [headerImageView7 trailingAnchor];
  v55 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:10.0];
  v77[5] = v55;
  headerLabel9 = [(VenueCategoryViewController *)self headerLabel];
  trailingAnchor2 = [headerLabel9 trailingAnchor];
  trailingAnchor3 = [v3 trailingAnchor];
  v51 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  v77[6] = v51;
  headerLabel10 = [(VenueCategoryViewController *)self headerLabel];
  centerYAnchor = [headerLabel10 centerYAnchor];
  headerView2 = [(ContaineeViewController *)self headerView];
  centerYAnchor2 = [headerView2 centerYAnchor];
  v46 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v77[7] = v46;
  headerLabel11 = [(VenueCategoryViewController *)self headerLabel];
  topAnchor3 = [headerLabel11 topAnchor];
  headerView3 = [(ContaineeViewController *)self headerView];
  topAnchor4 = [headerView3 topAnchor];
  v41 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:13.0];
  v77[8] = v41;
  headerView4 = [(ContaineeViewController *)self headerView];
  leadingAnchor4 = [headerView4 leadingAnchor];
  leadingAnchor5 = [(ContainerHeaderView *)v21 leadingAnchor];
  v37 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
  v77[9] = v37;
  headerView5 = [(ContaineeViewController *)self headerView];
  trailingAnchor4 = [headerView5 trailingAnchor];
  v23 = v21;
  trailingAnchor5 = [(ContainerHeaderView *)v21 trailingAnchor];
  v33 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
  v77[10] = v33;
  headerView6 = [(ContaineeViewController *)self headerView];
  topAnchor5 = [headerView6 topAnchor];
  topAnchor6 = [(ContainerHeaderView *)v21 topAnchor];
  v27 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v77[11] = v27;
  headerView7 = [(ContaineeViewController *)self headerView];
  bottomAnchor = [headerView7 bottomAnchor];
  bottomAnchor2 = [(ContainerHeaderView *)v23 bottomAnchor];
  v31 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v77[12] = v31;
  v32 = [NSArray arrayWithObjects:v77 count:13];
  [NSLayoutConstraint activateConstraints:v32];
}

- (void)applyAlphaToContent:(double)content
{
  v5.receiver = self;
  v5.super_class = VenueCategoryViewController;
  [(ContaineeViewController *)&v5 applyAlphaToContent:?];
  [(ContainerHeaderView *)self->_containerHeaderView setHairLineAlpha:content];
}

- (void)contentSizeCategoryDidChange:(id)change
{
  headerLabelFont = [(VenueCategoryViewController *)self headerLabelFont];
  headerLabel = [(VenueCategoryViewController *)self headerLabel];
  [headerLabel setFont:headerLabelFont];
}

- (void)displayIndexListIfNecessary
{
  tableView = [(VenueCategoryViewController *)self tableView];
  isIndexHidden = [tableView isIndexHidden];

  view = [(VenueCategoryViewController *)self view];
  [view frame];
  Height = CGRectGetHeight(v17);
  [(ContaineeViewController *)self heightForLayout:3];
  v8 = v7;

  dataSource = [(VenueCategoryViewController *)self dataSource];
  numberOfSectionsNotEmpty = [dataSource numberOfSectionsNotEmpty];
  UInteger = GEOConfigGetUInteger();

  v13 = Height >= v8 && numberOfSectionsNotEmpty >= UInteger;
  tableView2 = [(VenueCategoryViewController *)self tableView];
  [tableView2 setIndexHidden:v13 ^ 1u animated:1];

  if (isIndexHidden == v13)
  {
    tableView3 = [(VenueCategoryViewController *)self tableView];
    [tableView3 reloadData];
  }
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = VenueCategoryViewController;
  [(ContaineeViewController *)&v4 viewDidLayoutSubviews];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  -[VenueCategoryViewController setShouldDisplayFilterView:](self, "setShouldDisplayFilterView:", [cardPresentationController containeeLayout] > 1);
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = VenueCategoryViewController;
  [(VenueCategoryViewController *)&v3 viewWillLayoutSubviews];
  [(VenueCategoryViewController *)self displayIndexListIfNecessary];
}

- (void)setShowsLoading:(BOOL)loading
{
  if (self->_showsLoading != loading)
  {
    loadingCopy = loading;
    self->_showsLoading = loading;
    tableView = [(VenueCategoryViewController *)self tableView];
    [tableView setHidden:loadingCopy];

    loadingModeView = [(VenueCategoryViewController *)self loadingModeView];
    [loadingModeView setHidden:loadingCopy ^ 1];
  }
}

- (void)viewSafeAreaInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = VenueCategoryViewController;
  [(VenueCategoryViewController *)&v4 viewSafeAreaInsetsDidChange];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100FD1DD4;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)updateFilterBar
{
  dataSource = [(VenueCategoryViewController *)self dataSource];
  filterBarTitles = [dataSource filterBarTitles];

  v4 = [filterBarTitles count];
  filterView = [(VenueCategoryViewController *)self filterView];
  v6 = filterView;
  if (v4 > 1)
  {
    v7 = [filterBarTitles copy];
    [v6 setSubCategories:v7 selectedIndex:0];

    [(VenueCategoryViewController *)self updateFooterVisibility];
  }

  else
  {
    [filterView resetData];
  }
}

- (void)performInitialSearchIfNecessary
{
  if (![(VenueCategoryViewController *)self isAutoComplete])
  {
    delegate = [(ControlContaineeViewController *)self delegate];
    if (delegate)
    {
      v4 = delegate;
      dataSource = [(VenueCategoryViewController *)self dataSource];
      mapItem = [dataSource mapItem];

      if (mapItem)
      {
        contentDownloader = [(VenueCategoryViewController *)self contentDownloader];
        dataSource2 = [(VenueCategoryViewController *)self dataSource];
        searchCategory = [dataSource2 searchCategory];
        dataSource3 = [(VenueCategoryViewController *)self dataSource];
        subcategoriesType = [dataSource3 subcategoriesType];
        dataSource4 = [(VenueCategoryViewController *)self dataSource];
        buildings = [dataSource4 buildings];
        firstObject = [buildings firstObject];
        delegate2 = [(ControlContaineeViewController *)self delegate];
        [contentDownloader performSearchWithSearchCategory:searchCategory subcategoriesType:subcategoriesType filter:firstObject shouldFrameMapViewport:0 actionCoordination:delegate2];
      }
    }
  }
}

- (void)setDelegate:(id)delegate
{
  v4.receiver = self;
  v4.super_class = VenueCategoryViewController;
  [(ControlContaineeViewController *)&v4 setDelegate:delegate];
  [(VenueCategoryViewController *)self performInitialSearchIfNecessary];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = VenueCategoryViewController;
  [(ContaineeViewController *)&v4 viewDidLoad];
  [(VenueCategoryViewController *)self configureTableView];
  [(VenueCategoryViewController *)self configureHeader];
  [(VenueCategoryViewController *)self updateFooterVisibility];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
}

- (void)venueCategoryContentDownloader:(id)downloader didReceiveAutoCompleteSubcategories:(id)subcategories subcategoriesType:(int)type
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100FD21E8;
  block[3] = &unk_101660590;
  typeCopy = type;
  block[4] = self;
  subcategoriesCopy = subcategories;
  v5 = subcategoriesCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)venueCategoryContentDownloader:(id)downloader didReceiveSearchResults:(id)results shouldSwitchToBestFloor:(BOOL)floor
{
  resultsCopy = results;
  filterView = [(VenueCategoryViewController *)self filterView];
  v9 = -[VenueCategoryViewController _buildingAtIndex:](self, "_buildingAtIndex:", [filterView selectedIndex]);

  describesParentVenue = [v9 describesParentVenue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100FD2364;
  v13[3] = &unk_101660568;
  v11 = 1;
  if (describesParentVenue)
  {
    v11 = 2;
  }

  v13[4] = self;
  v14 = resultsCopy;
  v15 = v11;
  floorCopy = floor;
  v12 = resultsCopy;
  dispatch_async(&_dispatch_main_q, v13);
}

- (void)venueCategoryContentDownloader:(id)downloader didReceiveEVChargerUpdates:(id)updates
{
  updatesCopy = updates;
  dataSource = [(VenueCategoryViewController *)self dataSource];
  [dataSource refreshEVChargers:updatesCopy];
}

- (void)venueCategoryContentDownloaderDidCancel:(id)cancel
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100FD24E0;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)venueCategoryContentDownloaderDidFail:(id)fail
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100FD2598;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)venueCategoryContentDownloader:(id)downloader didFailToFetchMapItemWithError:(id)error
{
  errorCopy = error;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138543362;
    v7 = errorCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "VenueCategoryContentDownloader failed to download MKMapItem with error: %{public}@", &v6, 0xCu);
  }
}

- (void)venueCategoryContentDownloader:(id)downloader didChangeMapItem:(id)item
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100FD2734;
  v5[3] = &unk_101661A90;
  v5[4] = self;
  itemCopy = item;
  v4 = itemCopy;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)venueCategoryContentDownloaderDidStart:(id)start
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100FD28A8;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = VenueCategoryViewController;
  [(ContaineeViewController *)&v5 viewWillAppear:appear];
  if ([(VenueCategoryViewController *)self isAutoComplete])
  {
    v4 = [(VenueCategoryViewController *)self didFinishAutoCompleteSearchRequest]^ 1;
  }

  else
  {
    v4 = 0;
  }

  [(VenueCategoryViewController *)self setShowsLoading:v4];
}

- (void)setHeaderTitle:(id)title
{
  titleCopy = title;
  v5 = titleCopy;
  if (self->_headerTitle != titleCopy)
  {
    v10 = titleCopy;
    v6 = [(NSString *)titleCopy isEqualToString:?];
    v5 = v10;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSString *)v10 copy];
      headerTitle = self->_headerTitle;
      self->_headerTitle = v7;

      v5 = v10;
      headerLabel = self->_headerLabel;
      if (headerLabel)
      {
        [(UILabel *)headerLabel setText:self->_headerTitle];
        v5 = v10;
      }
    }
  }
}

- (VenueCategoryViewController)initWithAutoCompleteCategoryCardItem:(id)item
{
  itemCopy = item;
  venueSearchCategory = [itemCopy venueSearchCategory];
  v6 = [(VenueCategoryViewController *)self initWithSearchCategory:venueSearchCategory];

  if (v6)
  {
    v6->_isAutoComplete = 1;
    v7 = [[VenueCategoryContentDownloader alloc] initWithDelegate:v6 venueAutoCompleteCategoryCardItem:itemCopy];
    contentDownloader = v6->_contentDownloader;
    v6->_contentDownloader = v7;

    dataSource = [(VenueCategoryViewController *)v6 dataSource];
    searchCategory = [dataSource searchCategory];
    shortDisplayString = [searchCategory shortDisplayString];
    [(VenueCategoryViewController *)v6 setHeaderTitle:shortDisplayString];
  }

  return v6;
}

- (VenueCategoryViewController)initWithCategoryCardItem:(id)item
{
  itemCopy = item;
  venueSearchCategory = [itemCopy venueSearchCategory];
  v6 = [(VenueCategoryViewController *)self initWithSearchCategory:venueSearchCategory];
  v7 = v6;
  if (v6)
  {
    v6->_isAutoComplete = 0;
    subcategories = [venueSearchCategory subcategories];
    [(VenueCategoryDataSource *)v7->_dataSource setSubcategories:subcategories];

    -[VenueCategoryDataSource setSubcategoriesType:](v7->_dataSource, "setSubcategoriesType:", [venueSearchCategory subCategoryType]);
    v9 = [[VenueCategoryContentDownloader alloc] initWithDelegate:v7 venueCategoryCardItem:itemCopy];
    contentDownloader = v7->_contentDownloader;
    v7->_contentDownloader = v9;
  }

  return v7;
}

- (VenueCategoryViewController)initWithSearchCategory:(id)category
{
  categoryCopy = category;
  v15.receiver = self;
  v15.super_class = VenueCategoryViewController;
  v5 = [(VenueCategoryViewController *)&v15 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = objc_alloc_init(UITableView);
    tableView = v5->_tableView;
    v5->_tableView = v6;

    v8 = [[VenueCategoryDataSource alloc] initWithTableView:v5->_tableView searchCategory:categoryCopy];
    dataSource = v5->_dataSource;
    v5->_dataSource = v8;

    dataSource = [(VenueCategoryViewController *)v5 dataSource];
    searchCategory = [dataSource searchCategory];
    if ([searchCategory displayMode] == 2)
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    cardPresentationController = [(ContaineeViewController *)v5 cardPresentationController];
    [cardPresentationController setDefaultContaineeLayout:v12];
  }

  return v5;
}

@end