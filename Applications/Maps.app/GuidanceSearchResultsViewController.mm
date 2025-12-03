@interface GuidanceSearchResultsViewController
- (BOOL)_isEmpty;
- (GuidanceSearchResultsViewController)init;
- (GuidanceSearchResultsViewController)initWithViewModel:(id)model;
- (NavActionCoordination)navContaineeDelegate;
- (double)_mediumLayoutHeightInSAR;
- (double)heightForLayout:(unint64_t)layout;
- (void)_updateLayoutWithContainerStyle:(unint64_t)style traitCollection:(id)collection;
- (void)applyAlphaToContent:(double)content;
- (void)configureWithViewModel:(id)model;
- (void)dataSource:(id)source itemTapped:(id)tapped;
- (void)dataSourceUpdated:(id)updated;
- (void)didChangePersonalItems:(id)items;
- (void)didTapOnAddStopAtIndex:(unint64_t)index;
- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type;
- (void)headerViewTapped:(id)tapped;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setHideHeader:(BOOL)header;
- (void)viewDidLoad;
- (void)viewModelDidFinishLoading:(id)loading error:(id)error;
- (void)viewModelWillStartLoading:(id)loading;
- (void)viewWillAppear:(BOOL)appear;
- (void)willChangeContainerStyle:(unint64_t)style;
- (void)willChangeLayout:(unint64_t)layout;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation GuidanceSearchResultsViewController

- (NavActionCoordination)navContaineeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_navContaineeDelegate);

  return WeakRetained;
}

- (void)viewModelDidFinishLoading:(id)loading error:(id)error
{
  loadingCopy = loading;
  results = [loadingCopy results];
  [SARAnalytics captureShowSearchResults:results];

  [(GuidanceSearchResultsViewController *)self setHideHeader:0];
  resultsView = [(GuidanceSearchResultsViewController *)self resultsView];
  [resultsView setLoading:0];

  viewModel = [(GuidanceSearchResultsViewController *)self viewModel];
  title = [viewModel title];
  [(ResultsTitleView *)self->_resultsTitleView setTitle:title];

  viewModel2 = [(GuidanceSearchResultsViewController *)self viewModel];
  subtitle = [viewModel2 subtitle];
  [(ResultsTitleView *)self->_resultsTitleView setSubtitle:subtitle];

  viewModel3 = +[MNNavigationService sharedService];
  navigationTransportType = [viewModel3 navigationTransportType];
  if (navigationTransportType <= 2)
  {
    if (navigationTransportType != 1)
    {
      if (navigationTransportType == 2)
      {
        IsEnabled_Maps182 = MapsFeature_IsEnabled_Maps182();
        goto LABEL_8;
      }

LABEL_10:
      IsEnabled_DrivingMultiWaypointRoutes = MapsFeature_IsEnabled_DrivingMultiWaypointRoutes();

      if (!IsEnabled_DrivingMultiWaypointRoutes)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (navigationTransportType == 6)
  {
    goto LABEL_12;
  }

  if (navigationTransportType != 3)
  {
    goto LABEL_10;
  }

  IsEnabled_Maps182 = MapsFeature_IsEnabled_Maps420();
LABEL_8:
  v15 = IsEnabled_Maps182;

  if (v15)
  {
LABEL_11:
    viewModel3 = [(GuidanceSearchResultsViewController *)self viewModel];
    headerImage = [viewModel3 headerImage];
    [(ResultsTitleView *)self->_resultsTitleView setHeaderImage:headerImage];

    goto LABEL_12;
  }

LABEL_13:
  v18 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  results2 = [loadingCopy results];
  v20 = [results2 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v34;
    do
    {
      v23 = 0;
      do
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(results2);
        }

        v24 = [[SearchResult alloc] initWithMapItem:*(*(&v33 + 1) + 8 * v23)];
        [v18 addObject:v24];

        v23 = v23 + 1;
      }

      while (v21 != v23);
      v21 = [results2 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v21);
  }

  v25 = [[IdenticallyOrderedDataSource alloc] initWithObjects:v18];
  placeSummaryMetadata = [loadingCopy placeSummaryMetadata];
  dataSource = [(GuidanceSearchResultsViewController *)self dataSource];
  [dataSource setPlaceSummaryMetadata:placeSummaryMetadata];

  v28 = [[SearchResultsDataSourceContent alloc] initWithOrderedDataSource:v25];
  dataSource2 = [(GuidanceSearchResultsViewController *)self dataSource];
  [dataSource2 setContent:v28];

  if ([(GuidanceSearchResultsViewController *)self _isEmpty])
  {
    v30 = +[NSBundle mainBundle];
    v31 = [v30 localizedStringForKey:@"SaR_NoResults" value:@"localized string not found" table:0];
    [(ResultsTitleView *)self->_resultsTitleView setTitle:v31];

    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController wantsLayout:2];
  }

  else
  {
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController updateHeightForCurrentLayout];
  }
}

- (void)viewModelWillStartLoading:(id)loading
{
  resultsView = [(GuidanceSearchResultsViewController *)self resultsView];
  [resultsView setLoading:1];
}

- (void)didTapOnAddStopAtIndex:(unint64_t)index
{
  viewModel = [(GuidanceSearchResultsViewController *)self viewModel];
  [viewModel navigateToItemAtIndex:index];
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  v6.receiver = self;
  v6.super_class = GuidanceSearchResultsViewController;
  [(ContaineeViewController *)&v6 scrollViewWillEndDragging:dragging withVelocity:offset targetContentOffset:velocity.x];
  if (y <= 0.0)
  {
    if (y < 0.0)
    {
      +[SARAnalytics captureListScrollUp];
    }
  }

  else
  {
    +[SARAnalytics captureListScrollDown];
  }
}

- (void)dataSource:(id)source itemTapped:(id)tapped
{
  tappedCopy = tapped;
  resultsView = [(GuidanceSearchResultsViewController *)self resultsView];
  tableView = [resultsView tableView];
  resultsView2 = [(GuidanceSearchResultsViewController *)self resultsView];
  tableView2 = [resultsView2 tableView];
  indexPathForSelectedRow = [tableView2 indexPathForSelectedRow];
  [tableView deselectRowAtIndexPath:indexPathForSelectedRow animated:1];

  v16 = tappedCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mapItem = [v16 mapItem];
    viewModel = [(GuidanceSearchResultsViewController *)self viewModel];
    results = [viewModel results];
    v14 = [results indexOfObject:mapItem];

    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      viewModel2 = [(GuidanceSearchResultsViewController *)self viewModel];
      [viewModel2 selectMapItemAtIndex:v14];
    }
  }
}

- (void)dataSourceUpdated:(id)updated
{
  resultsView = [(GuidanceSearchResultsViewController *)self resultsView];
  tableView = [resultsView tableView];
  [tableView reloadData];
}

- (void)setHideHeader:(BOOL)header
{
  if (self->_hideHeader != header)
  {
    v12 = v7;
    v13 = v3;
    self->_hideHeader = header;
    if (header)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = 1.0;
    }

    [(ResultsTitleView *)self->_resultsTitleView setAlpha:v10, v8, v12, v4, v13, v5];
    containerHeaderView = self->_containerHeaderView;

    [(ContainerHeaderView *)containerHeaderView setHairLineAlpha:v10];
  }
}

- (void)headerViewTapped:(id)tapped
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  containeeLayout = [cardPresentationController containeeLayout];

  if (containeeLayout == 1)
  {
    +[SARAnalytics captureListTapToShowTray];
    v6 = 2;
  }

  else
  {
    cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
    containeeLayout2 = [cardPresentationController2 containeeLayout];

    if (containeeLayout2 != 2)
    {
      return;
    }

    +[SARAnalytics captureListTapToHideTray];
    v6 = 1;
  }

  cardPresentationController3 = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController3 wantsLayout:v6];
}

- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type
{
  [SARAnalytics captureCancelSearchResults:tapped];
  viewModel = [(GuidanceSearchResultsViewController *)self viewModel];
  [viewModel cancelResultsView];
}

- (double)heightForLayout:(unint64_t)layout
{
  [(ContainerHeaderView *)self->_containerHeaderView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height];
  v6 = v5;
  if ([(GuidanceSearchResultsViewController *)self _isEmpty])
  {
    if (layout == 2)
    {
      return v6;
    }

    else
    {
      return -1.0;
    }
  }

  if (layout - 3 < 2)
  {
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController availableHeight];
    v13 = v12;

    return v13;
  }

  else
  {
    if (layout != 2)
    {
      v7 = -1.0;
      if (layout == 1)
      {
        cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
        [cardPresentationController2 bottomSafeOffset];
        v7 = v10 + v6;
      }

      return v7;
    }

    if (!MapsFeature_IsEnabled_SearchAndDiscovery())
    {
      v15.receiver = self;
      v15.super_class = GuidanceSearchResultsViewController;
      [(ContaineeViewController *)&v15 heightForLayout:2];
      return v14;
    }

    [(GuidanceSearchResultsViewController *)self _mediumLayoutHeightInSAR];
  }

  return result;
}

- (void)willChangeContainerStyle:(unint64_t)style
{
  v6.receiver = self;
  v6.super_class = GuidanceSearchResultsViewController;
  [(ContaineeViewController *)&v6 willChangeContainerStyle:?];
  traitCollection = [(GuidanceSearchResultsViewController *)self traitCollection];
  [(GuidanceSearchResultsViewController *)self _updateLayoutWithContainerStyle:style traitCollection:traitCollection];
}

- (void)willChangeLayout:(unint64_t)layout
{
  v7.receiver = self;
  v7.super_class = GuidanceSearchResultsViewController;
  [(ContaineeViewController *)&v7 willChangeLayout:?];
  navContaineeDelegate = [(GuidanceSearchResultsViewController *)self navContaineeDelegate];
  v6 = navContaineeDelegate;
  if (layout == 1)
  {
    [navContaineeDelegate showJunctionViewIfNeeded];
  }

  else
  {
    [navContaineeDelegate hideJunctionViewIfNeeded];
  }
}

- (void)applyAlphaToContent:(double)content
{
  v5.receiver = self;
  v5.super_class = GuidanceSearchResultsViewController;
  [(ContaineeViewController *)&v5 applyAlphaToContent:?];
  if (![(GuidanceSearchResultsViewController *)self isHeaderHidden])
  {
    [(ContainerHeaderView *)self->_containerHeaderView setHairLineAlpha:content];
  }
}

- (void)_updateLayoutWithContainerStyle:(unint64_t)style traitCollection:(id)collection
{
  if (sub_100A5FC54(style, collection))
  {
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController wantsLayout:1];
  }
}

- (BOOL)_isEmpty
{
  resultsView = [(GuidanceSearchResultsViewController *)self resultsView];
  if ([resultsView isLoading])
  {
    v4 = 0;
  }

  else
  {
    dataSource = [(GuidanceSearchResultsViewController *)self dataSource];
    content = [dataSource content];
    v4 = [content count] == 0;
  }

  return v4;
}

- (double)_mediumLayoutHeightInSAR
{
  view = [(GuidanceSearchResultsViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  screen = [windowScene screen];

  if (!screen)
  {
    screen = +[UIScreen mainScreen];
  }

  [screen bounds];
  v7 = v6;
  [screen bounds];
  if (v7 == 320.0)
  {
    [screen bounds];
    UIRoundToScreenScale();
    v10 = v9;
  }

  else
  {
    v10 = dbl_101212850[v8 > 750.0];
  }

  return v10;
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  v8.receiver = self;
  v8.super_class = GuidanceSearchResultsViewController;
  collectionCopy = collection;
  [(GuidanceSearchResultsViewController *)&v8 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinator];
  v7 = [(ContaineeViewController *)self cardPresentationController:v8.receiver];
  -[GuidanceSearchResultsViewController _updateLayoutWithContainerStyle:traitCollection:](self, "_updateLayoutWithContainerStyle:traitCollection:", [v7 containerStyle], collectionCopy);
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = GuidanceSearchResultsViewController;
  [(ContaineeViewController *)&v8 viewWillAppear:appear];
  viewModel = [(GuidanceSearchResultsViewController *)self viewModel];
  [viewModel clearSelection];

  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  containerStyle = [cardPresentationController containerStyle];
  traitCollection = [(GuidanceSearchResultsViewController *)self traitCollection];
  [(GuidanceSearchResultsViewController *)self _updateLayoutWithContainerStyle:containerStyle traitCollection:traitCollection];
}

- (void)viewDidLoad
{
  v72.receiver = self;
  v72.super_class = GuidanceSearchResultsViewController;
  [(ContaineeViewController *)&v72 viewDidLoad];
  view = [(GuidanceSearchResultsViewController *)self view];
  [view setAccessibilityIdentifier:@"GuidanceSearchResults"];

  v4 = [GuidanceSearchResultsView alloc];
  v5 = +[UIScreen mainScreen];
  [v5 bounds];
  v6 = [(GuidanceSearchResultsView *)v4 initWithFrame:?];
  [(GuidanceSearchResultsViewController *)self setResultsView:v6];

  resultsView = [(GuidanceSearchResultsViewController *)self resultsView];
  [resultsView setTranslatesAutoresizingMaskIntoConstraints:0];

  resultsView2 = [(GuidanceSearchResultsViewController *)self resultsView];
  [resultsView2 setPreservesSuperviewLayoutMargins:1];

  view2 = [(GuidanceSearchResultsViewController *)self view];
  resultsView3 = [(GuidanceSearchResultsViewController *)self resultsView];
  [view2 addSubview:resultsView3];

  v11 = [ResultsTitleView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(ResultsTitleView *)v11 initWithFrame:CGRectZero.origin.x, y, width, height];
  resultsTitleView = self->_resultsTitleView;
  self->_resultsTitleView = height;

  [(ResultsTitleView *)self->_resultsTitleView setTranslatesAutoresizingMaskIntoConstraints:0];
  viewModel = [(GuidanceSearchResultsViewController *)self viewModel];
  title = [viewModel title];
  [(ResultsTitleView *)self->_resultsTitleView setTitle:title];

  [(ResultsTitleView *)self->_resultsTitleView setEditButtonHidden:1];
  [(GuidanceSearchResultsViewController *)self setHideHeader:1];
  v19 = [SearchResultsDataSource alloc];
  resultsView4 = [(GuidanceSearchResultsViewController *)self resultsView];
  tableView = [resultsView4 tableView];
  v22 = [(SearchResultsDataSource *)v19 initWithTableView:tableView];
  [(GuidanceSearchResultsViewController *)self setDataSource:v22];

  dataSource = [(GuidanceSearchResultsViewController *)self dataSource];
  [dataSource setDelegate:self];

  dataSource2 = [(GuidanceSearchResultsViewController *)self dataSource];
  [dataSource2 setIsPresentingSearchAlongTheRouteResults:1];

  dataSource3 = [(GuidanceSearchResultsViewController *)self dataSource];
  resultsView5 = [(GuidanceSearchResultsViewController *)self resultsView];
  tableView2 = [resultsView5 tableView];
  [tableView2 setDataSource:dataSource3];

  dataSource4 = [(GuidanceSearchResultsViewController *)self dataSource];
  resultsView6 = [(GuidanceSearchResultsViewController *)self resultsView];
  tableView3 = [resultsView6 tableView];
  [tableView3 setDelegate:dataSource4];

  resultsView7 = [(GuidanceSearchResultsViewController *)self resultsView];
  tableView4 = [resultsView7 tableView];
  [tableView4 setSectionHeaderTopPadding:0.0];

  height2 = [[ContainerHeaderView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  containerHeaderView = self->_containerHeaderView;
  self->_containerHeaderView = height2;

  [(ContainerHeaderView *)self->_containerHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ContainerHeaderView *)self->_containerHeaderView setDelegate:self];
  [(ContainerHeaderView *)self->_containerHeaderView setTitleView:self->_resultsTitleView];
  view3 = [(GuidanceSearchResultsViewController *)self view];
  [view3 addSubview:self->_containerHeaderView];

  leadingAnchor = [(ContainerHeaderView *)self->_containerHeaderView leadingAnchor];
  view4 = [(GuidanceSearchResultsViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v68 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v73[0] = v68;
  trailingAnchor = [(ContainerHeaderView *)self->_containerHeaderView trailingAnchor];
  view5 = [(GuidanceSearchResultsViewController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v64 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v73[1] = v64;
  topAnchor = [(ContainerHeaderView *)self->_containerHeaderView topAnchor];
  view6 = [(GuidanceSearchResultsViewController *)self view];
  topAnchor2 = [view6 topAnchor];
  v60 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v73[2] = v60;
  resultsView8 = [(GuidanceSearchResultsViewController *)self resultsView];
  leadingAnchor3 = [resultsView8 leadingAnchor];
  view7 = [(GuidanceSearchResultsViewController *)self view];
  leadingAnchor4 = [view7 leadingAnchor];
  v55 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v73[3] = v55;
  resultsView9 = [(GuidanceSearchResultsViewController *)self resultsView];
  trailingAnchor3 = [resultsView9 trailingAnchor];
  view8 = [(GuidanceSearchResultsViewController *)self view];
  trailingAnchor4 = [view8 trailingAnchor];
  v50 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v73[4] = v50;
  resultsView10 = [(GuidanceSearchResultsViewController *)self resultsView];
  topAnchor3 = [resultsView10 topAnchor];
  bottomAnchor = [(ContainerHeaderView *)self->_containerHeaderView bottomAnchor];
  v38 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  v73[5] = v38;
  resultsView11 = [(GuidanceSearchResultsViewController *)self resultsView];
  bottomAnchor2 = [resultsView11 bottomAnchor];
  view9 = [(GuidanceSearchResultsViewController *)self view];
  bottomAnchor3 = [view9 bottomAnchor];
  v43 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v73[6] = v43;
  v44 = [NSArray arrayWithObjects:v73 count:7];
  [NSLayoutConstraint activateConstraints:v44];

  v45 = +[MNNavigationService sharedService];
  navigationTransportType = [v45 navigationTransportType];
  if (navigationTransportType > 2)
  {
    if (navigationTransportType == 3)
    {
      IsEnabled_Maps420 = MapsFeature_IsEnabled_Maps420();
LABEL_10:
      v48 = IsEnabled_Maps420;

      if (v48)
      {
        return;
      }

      goto LABEL_11;
    }

    if (navigationTransportType != 6)
    {
LABEL_8:
      IsEnabled_Maps420 = MapsFeature_IsEnabled_DrivingMultiWaypointRoutes();
      goto LABEL_10;
    }
  }

  else if (navigationTransportType != 1)
  {
    if (navigationTransportType == 2)
    {
      IsEnabled_Maps420 = MapsFeature_IsEnabled_Maps182();
      goto LABEL_10;
    }

    goto LABEL_8;
  }

LABEL_11:
  [(GuidanceSearchResultsViewModel *)self->_viewModel loadDataIfNeeded];
}

- (void)didChangePersonalItems:(id)items
{
  viewModel = [(GuidanceSearchResultsViewController *)self viewModel];
  results = [viewModel results];
  v7 = [results count];

  viewModel2 = [(GuidanceSearchResultsViewController *)self viewModel];
  results2 = [viewModel2 results];
  v10 = results2;
  if (v7 == 1)
  {
    firstObject = [results2 firstObject];

    v12 = sub_100067540();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      name = [firstObject name];
      v26 = 138412290;
      v27 = name;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "SAR: didChangePersonalItems. Opening placecard with map Item: %@", &v26, 0xCu);
    }

    navContaineeDelegate = [(GuidanceSearchResultsViewController *)self navContaineeDelegate];
    [navContaineeDelegate selectMapItem:firstObject shouldRemoveResults:1];

    goto LABEL_5;
  }

  v15 = [results2 count];

  if (items && v15 >= 2)
  {
    navContaineeDelegate2 = [(GuidanceSearchResultsViewController *)self navContaineeDelegate];
    firstObject = [navContaineeDelegate2 currentSearchInfo];

    if ([firstObject selectedIndex] != 0x7FFFFFFFFFFFFFFFLL)
    {
      selectedIndex = [firstObject selectedIndex];
      viewModel3 = [(GuidanceSearchResultsViewController *)self viewModel];
      results3 = [viewModel3 results];
      if (selectedIndex >= [results3 count])
      {

LABEL_16:
        goto LABEL_5;
      }

      spotlightMapsIdentifier = [firstObject spotlightMapsIdentifier];

      if (spotlightMapsIdentifier)
      {
        viewModel4 = [(GuidanceSearchResultsViewController *)self viewModel];
        results4 = [viewModel4 results];
        viewModel3 = [results4 objectAtIndexedSubscript:{objc_msgSend(firstObject, "selectedIndex")}];

        v23 = sub_100067540();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          name2 = [viewModel3 name];
          v26 = 138412290;
          v27 = name2;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "SAR: didChangePersonalItems. Opening placecard with map Item: %@", &v26, 0xCu);
        }

        navContaineeDelegate3 = [(GuidanceSearchResultsViewController *)self navContaineeDelegate];
        [navContaineeDelegate3 selectMapItem:viewModel3 shouldRemoveResults:0];

        goto LABEL_16;
      }
    }

LABEL_5:
  }
}

- (void)configureWithViewModel:(id)model
{
  modelCopy = model;
  if (self->_viewModel != modelCopy)
  {
    v6 = modelCopy;
    objc_storeStrong(&self->_viewModel, model);
    [(GuidanceSearchResultsViewModel *)self->_viewModel setDelegate:self];
    [(GuidanceSearchResultsViewModel *)self->_viewModel loadDataIfNeeded];
    modelCopy = v6;
  }
}

- (GuidanceSearchResultsViewController)init
{
  v8.receiver = self;
  v8.super_class = GuidanceSearchResultsViewController;
  v2 = [(GuidanceSearchResultsViewController *)&v8 initWithNibName:0 bundle:0];
  v3 = v2;
  if (v2)
  {
    cardPresentationController = [(ContaineeViewController *)v2 cardPresentationController];
    [cardPresentationController setBlurInCardView:0];

    v5 = [UIColor colorNamed:@"NavigationMaterialColor"];
    cardPresentationController2 = [(ContaineeViewController *)v3 cardPresentationController];
    [cardPresentationController2 setCardColor:v5];
  }

  return v3;
}

- (GuidanceSearchResultsViewController)initWithViewModel:(id)model
{
  modelCopy = model;
  v6 = [(GuidanceSearchResultsViewController *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, model);
    [(GuidanceSearchResultsViewModel *)v7->_viewModel setDelegate:v7];
  }

  return v7;
}

@end