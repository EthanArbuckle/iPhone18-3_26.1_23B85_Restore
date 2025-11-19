@interface VenueCategoryViewController
- (NSDictionary)searchResultCountInVenue;
- (NSString)refineSearchText;
- (VKVenueFeatureMarker)venueWithFocus;
- (VenueCategoryViewController)initWithAutoCompleteCategoryCardItem:(id)a3;
- (VenueCategoryViewController)initWithCategoryCardItem:(id)a3;
- (VenueCategoryViewController)initWithSearchCategory:(id)a3;
- (id)_buildingAtIndex:(unint64_t)a3;
- (id)_headerLabelTextFromMapItem:(id)a3 searchCategory:(id)a4;
- (id)_venueShortNameForMapItem:(id)a3;
- (void)applyAlphaToContent:(double)a3;
- (void)configureHeader;
- (void)configureTableView;
- (void)contentSizeCategoryDidChange:(id)a3;
- (void)dataSource:(id)a3 itemFocused:(id)a4;
- (void)dataSource:(id)a3 itemTapped:(id)a4;
- (void)didUpdateResults;
- (void)displayIndexListIfNecessary;
- (void)filterView:(id)a3 didSelectBuildingWithIndex:(unint64_t)a4;
- (void)filterView:(id)a3 didSelectSubcategoryWithIndex:(unint64_t)a4;
- (void)filterView:(id)a3 indexSelected:(unint64_t)a4;
- (void)handleDismissAction:(id)a3;
- (void)headerViewButtonTapped:(id)a3 buttonType:(unint64_t)a4;
- (void)headerViewTapped:(id)a3;
- (void)notifyVenuesManagerAndSwitchToBestFloor:(BOOL)a3;
- (void)performInitialSearchIfNecessary;
- (void)selectSubcategory:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setFilterViewHidden:(BOOL)a3;
- (void)setHeaderTitle:(id)a3;
- (void)setShowsLoading:(BOOL)a3;
- (void)updateFilterBar;
- (void)updateFooterVisibility;
- (void)updateHeaderImageView;
- (void)venueCategoryContentDownloader:(id)a3 didChangeMapItem:(id)a4;
- (void)venueCategoryContentDownloader:(id)a3 didFailToFetchMapItemWithError:(id)a4;
- (void)venueCategoryContentDownloader:(id)a3 didReceiveAutoCompleteSubcategories:(id)a4 subcategoriesType:(int)a5;
- (void)venueCategoryContentDownloader:(id)a3 didReceiveEVChargerUpdates:(id)a4;
- (void)venueCategoryContentDownloader:(id)a3 didReceiveSearchResults:(id)a4 shouldSwitchToBestFloor:(BOOL)a5;
- (void)venueCategoryContentDownloaderDidCancel:(id)a3;
- (void)venueCategoryContentDownloaderDidFail:(id)a3;
- (void)venueCategoryContentDownloaderDidStart:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)willChangeContainerStyle:(unint64_t)a3;
@end

@implementation VenueCategoryViewController

- (VKVenueFeatureMarker)venueWithFocus
{
  WeakRetained = objc_loadWeakRetained(&self->_venueWithFocus);

  return WeakRetained;
}

- (void)selectSubcategory:(id)a3
{
  v4 = a3;
  v5 = [(VenueCategoryViewController *)self dataSource];
  v6 = [v5 subcategories];
  v7 = [v6 indexOfObject:v4];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:@"VenueBrowseDidFailToSelectSubcategory" object:0];
  }

  else
  {
    v8 = [(VenueCategoryViewController *)self filterView];
    [VenueCategoryViewController filterView:"filterView:indexSelected:" indexSelected:?];
  }
}

- (id)_buildingAtIndex:(unint64_t)a3
{
  v4 = [(VenueCategoryViewController *)self dataSource];
  v5 = [v4 buildings];

  if (v5 && [v5 count] > a3)
  {
    v6 = [v5 objectAtIndexedSubscript:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_venueShortNameForMapItem:(id)a3
{
  v3 = a3;
  if ([v3 _venueFeatureType] == 1)
  {
    [v3 venueLabelWithContext:0];
  }

  else
  {
    [v3 name];
  }
  v4 = ;

  return v4;
}

- (void)headerViewTapped:(id)a3
{
  v3 = [(ContaineeViewController *)self cardPresentationController];
  [v3 wantsExpandLayout];
}

- (id)_headerLabelTextFromMapItem:(id)a3 searchCategory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = &stru_1016631F0;
  if (v6 && v7)
  {
    if (self->_isAutoComplete)
    {
      v9 = [v7 shortDisplayString];
    }

    else
    {
      v10 = +[NSBundle mainBundle];
      v11 = [v10 localizedStringForKey:@"category_at_venue_format_key" value:@"localized string not found" table:0];

      v12 = [(VenueCategoryViewController *)self _venueShortNameForMapItem:v6];
      v13 = [v8 shortDisplayString];
      v9 = [NSString stringWithFormat:v11, v13, v12];
    }
  }

  return v9;
}

- (void)dataSource:(id)a3 itemTapped:(id)a4
{
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v8;
    v6 = [(ControlContaineeViewController *)self delegate];
    [v6 viewController:self selectVenueSearchResult:v5 source:2];

    lastItemTapped = self->_lastItemTapped;
    self->_lastItemTapped = v5;
  }
}

- (void)dataSource:(id)a3 itemFocused:(id)a4
{
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v8;
    v6 = [(ControlContaineeViewController *)self delegate];
    [v6 viewController:self focusSearchResult:v5];

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
  v3 = [(VenueCategoryViewController *)self filterView];
  v4 = [v3 subCategories];
  v5 = [(VenueCategoryViewController *)self filterView];
  v6 = [v4 objectAtIndexedSubscript:{objc_msgSend(v5, "selectedIndex")}];

  return v6;
}

- (void)updateFooterVisibility
{
  v3 = [(VenueCategoryViewController *)self filterView];
  v4 = [v3 subCategories];
  if ([v4 count])
  {
    v5 = [(VenueCategoryViewController *)self shouldDisplayFilterView];

    [(VenueCategoryViewController *)self setFilterViewHidden:v5 ^ 1];
    Height = 0.0;
    if (((v5 ^ 1) & 1) == 0)
    {
      v7 = [(VenueCategoryViewController *)self filterView];
      [v7 frame];
      Height = CGRectGetHeight(v18);
    }
  }

  else
  {

    [(VenueCategoryViewController *)self setFilterViewHidden:1];
    Height = 0.0;
  }

  v8 = [(VenueCategoryViewController *)self tableView];
  [v8 contentInset];
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [(VenueCategoryViewController *)self tableView];
  [v15 setContentInset:{v10, v12, Height, v14}];

  v16 = [(VenueCategoryViewController *)self loadingModeView];
  [v16 setBottomInset:Height];
}

- (void)filterView:(id)a3 didSelectBuildingWithIndex:(unint64_t)a4
{
  v10 = [(VenueCategoryViewController *)self _buildingAtIndex:a4];
  v5 = [(VenueCategoryViewController *)self contentDownloader];
  v6 = [(VenueCategoryViewController *)self dataSource];
  v7 = [v6 searchCategory];
  v8 = [v10 describesParentVenue];
  v9 = [(ControlContaineeViewController *)self delegate];
  [v5 performSearchWithSearchCategory:v7 subcategoriesType:2 filter:v10 shouldFrameMapViewport:v8 ^ 1 actionCoordination:v9];
}

- (void)filterView:(id)a3 didSelectSubcategoryWithIndex:(unint64_t)a4
{
  v6 = [(VenueCategoryViewController *)self dataSource];
  v7 = [v6 subcategories];

  if (v7 && [v7 count] > a4)
  {
    v11 = [v7 objectAtIndexedSubscript:a4];
  }

  else
  {
    v11 = 0;
  }

  v8 = [(VenueCategoryViewController *)self contentDownloader];
  v9 = [v11 isSubCategorySameAsTopLevel];
  v10 = [(ControlContaineeViewController *)self delegate];
  [v8 performSearchWithSearchCategory:v11 subcategoriesType:1 filter:0 shouldFrameMapViewport:v9 ^ 1 actionCoordination:v10];
}

- (void)filterView:(id)a3 indexSelected:(unint64_t)a4
{
  v9 = a3;
  v6 = [(ContaineeViewController *)self cardPresentationController];
  [v6 wantsLayout:2];

  v7 = [(VenueCategoryViewController *)self dataSource];
  v8 = [v7 subcategoriesType];

  if (v8 >= 2)
  {
    if (v8 == 2)
    {
      [(VenueCategoryViewController *)self filterView:v9 didSelectBuildingWithIndex:a4];
    }
  }

  else
  {
    [(VenueCategoryViewController *)self filterView:v9 didSelectSubcategoryWithIndex:a4];
  }
}

- (void)setFilterViewHidden:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100FD0188;
  v3[3] = &unk_101661AE0;
  v3[4] = self;
  v4 = a3;
  [UIView animateWithDuration:v3 animations:0.25];
}

- (void)headerViewButtonTapped:(id)a3 buttonType:(unint64_t)a4
{
  v6 = a3;
  dataSource = self->_dataSource;
  if (dataSource)
  {
    [(VenueCategoryDataSource *)dataSource resetCache];
  }

  [(VenueCategoryViewController *)self handleDismissAction:v6];
}

- (void)willChangeContainerStyle:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = VenueCategoryViewController;
  [(ContaineeViewController *)&v9 willChangeContainerStyle:?];
  if (a3 == 6)
  {
    v5 = [(ContaineeViewController *)self cardPresentationController];
    [v5 setDefaultContaineeLayout:4];
  }

  else
  {
    v5 = [(VenueCategoryViewController *)self dataSource];
    v6 = [v5 searchCategory];
    if ([v6 displayMode] == 2)
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v8 = [(ContaineeViewController *)self cardPresentationController];
    [v8 setDefaultContaineeLayout:v7];
  }
}

- (void)handleDismissAction:(id)a3
{
  v4 = a3;
  v5 = +[MKMapService sharedService];
  [v5 captureUserAction:4 onTarget:-[VenueCategoryViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

  v6.receiver = self;
  v6.super_class = VenueCategoryViewController;
  [(ContaineeViewController *)&v6 handleDismissAction:v4];
}

- (void)configureTableView
{
  v3 = +[UIColor clearColor];
  v4 = [(VenueCategoryViewController *)self tableView];
  [v4 setBackgroundColor:v3];

  v5 = +[UIColor clearColor];
  v6 = [(VenueCategoryViewController *)self tableView];
  [v6 setSectionIndexBackgroundColor:v5];

  v7 = [(ContaineeViewController *)self contentView];
  v8 = [(VenueCategoryViewController *)self tableView];
  [v7 addSubview:v8];

  v9 = [(VenueCategoryViewController *)self tableView];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  v10 = [(VenueCategoryViewController *)self tableView];
  [v10 setPreservesSuperviewLayoutMargins:1];

  v11 = [(VenueCategoryViewController *)self dataSource];
  [v11 setDelegate:self];

  v12 = [[FilterCategoriesView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(VenueCategoryViewController *)self setFilterView:v12];

  v13 = [(VenueCategoryViewController *)self filterView];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];

  v14 = [(VenueCategoryViewController *)self filterView];
  [v14 setDelegate:self];

  v15 = [(VenueCategoryViewController *)self filterView];
  [v15 setLastButtonTrailingPadding:20.0];

  v16 = [(ContaineeViewController *)self contentView];
  v17 = [(VenueCategoryViewController *)self filterView];
  [v16 addSubview:v17];

  v18 = [LoadingModeView alloc];
  v19 = +[NSBundle mainBundle];
  v20 = [v19 localizedStringForKey:@"Loading ..." value:@"localized string not found" table:0];
  v21 = [(LoadingModeView *)v18 initWithTitle:v20];
  [(VenueCategoryViewController *)self setLoadingModeView:v21];

  v22 = [(VenueCategoryViewController *)self loadingModeView];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];

  v23 = [(VenueCategoryViewController *)self loadingModeView];
  [v23 setContentHuggingPriority:1 forAxis:0.0];

  v24 = [(VenueCategoryViewController *)self loadingModeView];
  [v24 setHidden:1];

  v25 = [(ContaineeViewController *)self contentView];
  v26 = [(VenueCategoryViewController *)self loadingModeView];
  [v25 addSubview:v26];

  if (_UISolariumEnabled())
  {
    v27 = [(VenueCategoryViewController *)self tableView];
    [(ContaineeViewController *)self setContentScrollView:v27 forEdge:1];
  }

  v28 = [(VenueCategoryViewController *)self filterView];
  v29 = [v28 bottomAnchor];
  v30 = [(ContaineeViewController *)self contentView];
  v31 = [v30 bottomAnchor];
  v32 = [v29 constraintEqualToAnchor:v31];

  LODWORD(v33) = 1140457472;
  v76 = v32;
  [v32 setPriority:v33];
  v90 = [(VenueCategoryViewController *)self tableView];
  v88 = [v90 topAnchor];
  v89 = [(ContaineeViewController *)self contentView];
  v87 = [v89 topAnchor];
  v86 = [v88 constraintEqualToAnchor:v87];
  v91[0] = v86;
  v85 = [(VenueCategoryViewController *)self tableView];
  v83 = [v85 leadingAnchor];
  v84 = [(ContaineeViewController *)self contentView];
  v82 = [v84 leadingAnchor];
  v81 = [v83 constraintEqualToAnchor:v82];
  v91[1] = v81;
  v80 = [(VenueCategoryViewController *)self tableView];
  v78 = [v80 trailingAnchor];
  v79 = [(ContaineeViewController *)self contentView];
  v77 = [v79 trailingAnchor];
  v75 = [v78 constraintEqualToAnchor:v77];
  v91[2] = v75;
  v74 = [(VenueCategoryViewController *)self tableView];
  v72 = [v74 bottomAnchor];
  v73 = [(ContaineeViewController *)self contentView];
  v71 = [v73 bottomAnchor];
  v70 = [v72 constraintEqualToAnchor:v71];
  v91[3] = v70;
  v69 = [(VenueCategoryViewController *)self filterView];
  v67 = [v69 topAnchor];
  v68 = [(ContaineeViewController *)self contentView];
  v66 = [v68 topAnchor];
  v65 = [v67 constraintGreaterThanOrEqualToAnchor:v66];
  v91[4] = v65;
  v91[5] = v32;
  v64 = [(VenueCategoryViewController *)self filterView];
  v62 = [v64 leadingAnchor];
  v63 = [(ContaineeViewController *)self contentView];
  v61 = [v63 leadingAnchor];
  v60 = [v62 constraintEqualToAnchor:v61];
  v91[6] = v60;
  v59 = [(VenueCategoryViewController *)self filterView];
  v57 = [v59 trailingAnchor];
  v58 = [(ContaineeViewController *)self contentView];
  v56 = [v58 trailingAnchor];
  v55 = [v57 constraintEqualToAnchor:v56];
  v91[7] = v55;
  v54 = [(VenueCategoryViewController *)self loadingModeView];
  v52 = [v54 topAnchor];
  v53 = [(VenueCategoryViewController *)self tableView];
  v51 = [v53 topAnchor];
  v50 = [v52 constraintEqualToAnchor:v51];
  v91[8] = v50;
  v49 = [(VenueCategoryViewController *)self loadingModeView];
  v47 = [v49 bottomAnchor];
  v48 = [(VenueCategoryViewController *)self tableView];
  v46 = [v48 bottomAnchor];
  v45 = [v47 constraintEqualToAnchor:v46];
  v91[9] = v45;
  v44 = [(VenueCategoryViewController *)self loadingModeView];
  v34 = [v44 leadingAnchor];
  v35 = [(VenueCategoryViewController *)self tableView];
  v36 = [v35 leadingAnchor];
  v37 = [v34 constraintEqualToAnchor:v36];
  v91[10] = v37;
  v38 = [(VenueCategoryViewController *)self loadingModeView];
  v39 = [v38 trailingAnchor];
  v40 = [(VenueCategoryViewController *)self tableView];
  v41 = [v40 trailingAnchor];
  v42 = [v39 constraintEqualToAnchor:v41];
  v91[11] = v42;
  v43 = [NSArray arrayWithObjects:v91 count:12];
  [NSLayoutConstraint activateConstraints:v43];
}

- (void)notifyVenuesManagerAndSwitchToBestFloor:(BOOL)a3
{
  v3 = a3;
  v5 = [(ControlContaineeViewController *)self delegate];
  v6 = [v5 venuesManager];
  [v6 venuesControlCoordinatingDidChangeSearchResultCount:self];

  if (v3)
  {
    v8 = [(ControlContaineeViewController *)self delegate];
    v7 = [v8 venuesManager];
    [v7 updateFocusedVenueFloor];
  }
}

- (void)didUpdateResults
{
  v3 = [(VenueCategoryViewController *)self tableView];
  [v3 reloadData];

  v4 = [(VenueCategoryViewController *)self tableView];
  v5 = [v4 numberOfSections];

  if (v5 >= 1)
  {
    v6 = [(VenueCategoryViewController *)self tableView];
    v7 = [NSIndexPath indexPathForRow:0x7FFFFFFFFFFFFFFFLL inSection:0];
    [v6 scrollToRowAtIndexPath:v7 atScrollPosition:1 animated:0];
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
  v4 = [(VenueCategoryViewController *)self dataSource];
  v5 = [v4 content];
  v6 = [v5 objects];

  v23 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v23)
  {
    v22 = *v29;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(v6);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v9 = [v8 mapItem];
        v10 = [v9 venueAreaIdentifiers];
        v11 = v10;
        v12 = &__NSArray0__struct;
        if (v10)
        {
          v12 = v10;
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

      v23 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v23);
  }

  return v3;
}

- (void)updateHeaderImageView
{
  v3 = [(VenueCategoryViewController *)self dataSource];
  v4 = [v3 searchCategory];
  v5 = v4;
  if (v4)
  {
    v16 = v4;
  }

  else
  {
    v6 = [(VenueCategoryViewController *)self dataSource];
    v7 = [v6 subcategories];
    v16 = [v7 firstObject];
  }

  v8 = [v16 styleAttributes];
  v9 = +[UIScreen mainScreen];
  [v9 nativeScale];
  v11 = v10;
  v12 = [(VenueCategoryViewController *)self traitCollection];
  LOBYTE(v15) = [v12 userInterfaceStyle] == 2;
  v13 = [MKIconManager imageForStyle:v8 size:4 forScale:1 format:0 transparent:0 transitMode:0 isCarplay:v11 nightMode:v15];
  v14 = [(VenueCategoryViewController *)self headerImageView];
  [v14 setImage:v13];
}

- (void)configureHeader
{
  v3 = objc_alloc_init(UIView);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = objc_alloc_init(UIImageView);
  [(VenueCategoryViewController *)self setHeaderImageView:v4];

  [(VenueCategoryViewController *)self updateHeaderImageView];
  v5 = [(VenueCategoryViewController *)self headerImageView];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(VenueCategoryViewController *)self headerImageView];
  [v3 addSubview:v6];

  v7 = objc_alloc_init(UILabel);
  [(VenueCategoryViewController *)self setHeaderLabel:v7];

  v8 = [(VenueCategoryViewController *)self headerLabel];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = +[UIColor clearColor];
  v10 = [(VenueCategoryViewController *)self headerLabel];
  [v10 setBackgroundColor:v9];

  v11 = [(VenueCategoryViewController *)self headerLabel];
  [v11 setNumberOfLines:0];

  v12 = [(VenueCategoryViewController *)self headerLabelFont];
  v13 = [(VenueCategoryViewController *)self headerLabel];
  [v13 setFont:v12];

  headerTitle = self->_headerTitle;
  v15 = [(VenueCategoryViewController *)self headerLabel];
  [v15 setText:headerTitle];

  v16 = +[UIColor labelColor];
  v17 = [(VenueCategoryViewController *)self headerLabel];
  [v17 setTextColor:v16];

  v18 = [(VenueCategoryViewController *)self headerLabel];
  [v3 addSubview:v18];

  v19 = [[ContainerHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(ContainerHeaderView *)v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ContainerHeaderView *)v19 setTitleView:v3];
  [(ContainerHeaderView *)v19 setDelegate:self];
  [(ContainerHeaderView *)v19 setVerticalAlignmentOffset:11.0];
  containerHeaderView = self->_containerHeaderView;
  self->_containerHeaderView = v19;
  v21 = v19;

  v22 = [(ContaineeViewController *)self headerView];
  [v22 addSubview:v21];

  v76 = [(ContainerHeaderView *)v21 heightAnchor];
  v75 = [v76 constraintGreaterThanOrEqualToConstant:80.0];
  v77[0] = v75;
  v74 = [(VenueCategoryViewController *)self headerImageView];
  v73 = [v74 leadingAnchor];
  v72 = [v3 leadingAnchor];
  v71 = [v73 constraintEqualToAnchor:v72 constant:16.0];
  v77[1] = v71;
  v70 = [(VenueCategoryViewController *)self headerImageView];
  v69 = [v70 widthAnchor];
  v68 = [v69 constraintEqualToConstant:40.0];
  v77[2] = v68;
  v67 = [(VenueCategoryViewController *)self headerImageView];
  v66 = [v67 heightAnchor];
  v65 = [v66 constraintEqualToConstant:40.0];
  v77[3] = v65;
  v64 = [(VenueCategoryViewController *)self headerImageView];
  v62 = [v64 topAnchor];
  v63 = v3;
  v61 = [v3 topAnchor];
  v60 = [v62 constraintEqualToAnchor:v61 constant:20.0];
  v77[4] = v60;
  v59 = [(VenueCategoryViewController *)self headerLabel];
  v57 = [v59 leadingAnchor];
  v58 = [(VenueCategoryViewController *)self headerImageView];
  v56 = [v58 trailingAnchor];
  v55 = [v57 constraintEqualToAnchor:v56 constant:10.0];
  v77[5] = v55;
  v54 = [(VenueCategoryViewController *)self headerLabel];
  v53 = [v54 trailingAnchor];
  v52 = [v3 trailingAnchor];
  v51 = [v53 constraintEqualToAnchor:v52];
  v77[6] = v51;
  v50 = [(VenueCategoryViewController *)self headerLabel];
  v48 = [v50 centerYAnchor];
  v49 = [(ContaineeViewController *)self headerView];
  v47 = [v49 centerYAnchor];
  v46 = [v48 constraintEqualToAnchor:v47];
  v77[7] = v46;
  v45 = [(VenueCategoryViewController *)self headerLabel];
  v43 = [v45 topAnchor];
  v44 = [(ContaineeViewController *)self headerView];
  v42 = [v44 topAnchor];
  v41 = [v43 constraintEqualToAnchor:v42 constant:13.0];
  v77[8] = v41;
  v40 = [(ContaineeViewController *)self headerView];
  v39 = [v40 leadingAnchor];
  v38 = [(ContainerHeaderView *)v21 leadingAnchor];
  v37 = [v39 constraintEqualToAnchor:v38];
  v77[9] = v37;
  v36 = [(ContaineeViewController *)self headerView];
  v35 = [v36 trailingAnchor];
  v23 = v21;
  v34 = [(ContainerHeaderView *)v21 trailingAnchor];
  v33 = [v35 constraintEqualToAnchor:v34];
  v77[10] = v33;
  v24 = [(ContaineeViewController *)self headerView];
  v25 = [v24 topAnchor];
  v26 = [(ContainerHeaderView *)v21 topAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];
  v77[11] = v27;
  v28 = [(ContaineeViewController *)self headerView];
  v29 = [v28 bottomAnchor];
  v30 = [(ContainerHeaderView *)v23 bottomAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];
  v77[12] = v31;
  v32 = [NSArray arrayWithObjects:v77 count:13];
  [NSLayoutConstraint activateConstraints:v32];
}

- (void)applyAlphaToContent:(double)a3
{
  v5.receiver = self;
  v5.super_class = VenueCategoryViewController;
  [(ContaineeViewController *)&v5 applyAlphaToContent:?];
  [(ContainerHeaderView *)self->_containerHeaderView setHairLineAlpha:a3];
}

- (void)contentSizeCategoryDidChange:(id)a3
{
  v5 = [(VenueCategoryViewController *)self headerLabelFont];
  v4 = [(VenueCategoryViewController *)self headerLabel];
  [v4 setFont:v5];
}

- (void)displayIndexListIfNecessary
{
  v3 = [(VenueCategoryViewController *)self tableView];
  v4 = [v3 isIndexHidden];

  v5 = [(VenueCategoryViewController *)self view];
  [v5 frame];
  Height = CGRectGetHeight(v17);
  [(ContaineeViewController *)self heightForLayout:3];
  v8 = v7;

  v9 = [(VenueCategoryViewController *)self dataSource];
  v10 = [v9 numberOfSectionsNotEmpty];
  UInteger = GEOConfigGetUInteger();

  v13 = Height >= v8 && v10 >= UInteger;
  v14 = [(VenueCategoryViewController *)self tableView];
  [v14 setIndexHidden:v13 ^ 1u animated:1];

  if (v4 == v13)
  {
    v15 = [(VenueCategoryViewController *)self tableView];
    [v15 reloadData];
  }
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = VenueCategoryViewController;
  [(ContaineeViewController *)&v4 viewDidLayoutSubviews];
  v3 = [(ContaineeViewController *)self cardPresentationController];
  -[VenueCategoryViewController setShouldDisplayFilterView:](self, "setShouldDisplayFilterView:", [v3 containeeLayout] > 1);
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = VenueCategoryViewController;
  [(VenueCategoryViewController *)&v3 viewWillLayoutSubviews];
  [(VenueCategoryViewController *)self displayIndexListIfNecessary];
}

- (void)setShowsLoading:(BOOL)a3
{
  if (self->_showsLoading != a3)
  {
    v4 = a3;
    self->_showsLoading = a3;
    v6 = [(VenueCategoryViewController *)self tableView];
    [v6 setHidden:v4];

    v7 = [(VenueCategoryViewController *)self loadingModeView];
    [v7 setHidden:v4 ^ 1];
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
  v3 = [(VenueCategoryViewController *)self dataSource];
  v8 = [v3 filterBarTitles];

  v4 = [v8 count];
  v5 = [(VenueCategoryViewController *)self filterView];
  v6 = v5;
  if (v4 > 1)
  {
    v7 = [v8 copy];
    [v6 setSubCategories:v7 selectedIndex:0];

    [(VenueCategoryViewController *)self updateFooterVisibility];
  }

  else
  {
    [v5 resetData];
  }
}

- (void)performInitialSearchIfNecessary
{
  if (![(VenueCategoryViewController *)self isAutoComplete])
  {
    v3 = [(ControlContaineeViewController *)self delegate];
    if (v3)
    {
      v4 = v3;
      v5 = [(VenueCategoryViewController *)self dataSource];
      v6 = [v5 mapItem];

      if (v6)
      {
        v15 = [(VenueCategoryViewController *)self contentDownloader];
        v7 = [(VenueCategoryViewController *)self dataSource];
        v8 = [v7 searchCategory];
        v9 = [(VenueCategoryViewController *)self dataSource];
        v10 = [v9 subcategoriesType];
        v11 = [(VenueCategoryViewController *)self dataSource];
        v12 = [v11 buildings];
        v13 = [v12 firstObject];
        v14 = [(ControlContaineeViewController *)self delegate];
        [v15 performSearchWithSearchCategory:v8 subcategoriesType:v10 filter:v13 shouldFrameMapViewport:0 actionCoordination:v14];
      }
    }
  }
}

- (void)setDelegate:(id)a3
{
  v4.receiver = self;
  v4.super_class = VenueCategoryViewController;
  [(ControlContaineeViewController *)&v4 setDelegate:a3];
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

- (void)venueCategoryContentDownloader:(id)a3 didReceiveAutoCompleteSubcategories:(id)a4 subcategoriesType:(int)a5
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100FD21E8;
  block[3] = &unk_101660590;
  v8 = a5;
  block[4] = self;
  v7 = a4;
  v5 = v7;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)venueCategoryContentDownloader:(id)a3 didReceiveSearchResults:(id)a4 shouldSwitchToBestFloor:(BOOL)a5
{
  v7 = a4;
  v8 = [(VenueCategoryViewController *)self filterView];
  v9 = -[VenueCategoryViewController _buildingAtIndex:](self, "_buildingAtIndex:", [v8 selectedIndex]);

  v10 = [v9 describesParentVenue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100FD2364;
  v13[3] = &unk_101660568;
  v11 = 1;
  if (v10)
  {
    v11 = 2;
  }

  v13[4] = self;
  v14 = v7;
  v15 = v11;
  v16 = a5;
  v12 = v7;
  dispatch_async(&_dispatch_main_q, v13);
}

- (void)venueCategoryContentDownloader:(id)a3 didReceiveEVChargerUpdates:(id)a4
{
  v5 = a4;
  v6 = [(VenueCategoryViewController *)self dataSource];
  [v6 refreshEVChargers:v5];
}

- (void)venueCategoryContentDownloaderDidCancel:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100FD24E0;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)venueCategoryContentDownloaderDidFail:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100FD2598;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)venueCategoryContentDownloader:(id)a3 didFailToFetchMapItemWithError:(id)a4
{
  v4 = a4;
  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "VenueCategoryContentDownloader failed to download MKMapItem with error: %{public}@", &v6, 0xCu);
  }
}

- (void)venueCategoryContentDownloader:(id)a3 didChangeMapItem:(id)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100FD2734;
  v5[3] = &unk_101661A90;
  v5[4] = self;
  v6 = a4;
  v4 = v6;
  dispatch_async(&_dispatch_main_q, v5);
}

- (void)venueCategoryContentDownloaderDidStart:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100FD28A8;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = VenueCategoryViewController;
  [(ContaineeViewController *)&v5 viewWillAppear:a3];
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

- (void)setHeaderTitle:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_headerTitle != v4)
  {
    v10 = v4;
    v6 = [(NSString *)v4 isEqualToString:?];
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

- (VenueCategoryViewController)initWithAutoCompleteCategoryCardItem:(id)a3
{
  v4 = a3;
  v5 = [v4 venueSearchCategory];
  v6 = [(VenueCategoryViewController *)self initWithSearchCategory:v5];

  if (v6)
  {
    v6->_isAutoComplete = 1;
    v7 = [[VenueCategoryContentDownloader alloc] initWithDelegate:v6 venueAutoCompleteCategoryCardItem:v4];
    contentDownloader = v6->_contentDownloader;
    v6->_contentDownloader = v7;

    v9 = [(VenueCategoryViewController *)v6 dataSource];
    v10 = [v9 searchCategory];
    v11 = [v10 shortDisplayString];
    [(VenueCategoryViewController *)v6 setHeaderTitle:v11];
  }

  return v6;
}

- (VenueCategoryViewController)initWithCategoryCardItem:(id)a3
{
  v4 = a3;
  v5 = [v4 venueSearchCategory];
  v6 = [(VenueCategoryViewController *)self initWithSearchCategory:v5];
  v7 = v6;
  if (v6)
  {
    v6->_isAutoComplete = 0;
    v8 = [v5 subcategories];
    [(VenueCategoryDataSource *)v7->_dataSource setSubcategories:v8];

    -[VenueCategoryDataSource setSubcategoriesType:](v7->_dataSource, "setSubcategoriesType:", [v5 subCategoryType]);
    v9 = [[VenueCategoryContentDownloader alloc] initWithDelegate:v7 venueCategoryCardItem:v4];
    contentDownloader = v7->_contentDownloader;
    v7->_contentDownloader = v9;
  }

  return v7;
}

- (VenueCategoryViewController)initWithSearchCategory:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = VenueCategoryViewController;
  v5 = [(VenueCategoryViewController *)&v15 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = objc_alloc_init(UITableView);
    tableView = v5->_tableView;
    v5->_tableView = v6;

    v8 = [[VenueCategoryDataSource alloc] initWithTableView:v5->_tableView searchCategory:v4];
    dataSource = v5->_dataSource;
    v5->_dataSource = v8;

    v10 = [(VenueCategoryViewController *)v5 dataSource];
    v11 = [v10 searchCategory];
    if ([v11 displayMode] == 2)
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    v13 = [(ContaineeViewController *)v5 cardPresentationController];
    [v13 setDefaultContaineeLayout:v12];
  }

  return v5;
}

@end