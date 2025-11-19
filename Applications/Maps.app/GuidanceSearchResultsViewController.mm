@interface GuidanceSearchResultsViewController
- (BOOL)_isEmpty;
- (GuidanceSearchResultsViewController)init;
- (GuidanceSearchResultsViewController)initWithViewModel:(id)a3;
- (NavActionCoordination)navContaineeDelegate;
- (double)_mediumLayoutHeightInSAR;
- (double)heightForLayout:(unint64_t)a3;
- (void)_updateLayoutWithContainerStyle:(unint64_t)a3 traitCollection:(id)a4;
- (void)applyAlphaToContent:(double)a3;
- (void)configureWithViewModel:(id)a3;
- (void)dataSource:(id)a3 itemTapped:(id)a4;
- (void)dataSourceUpdated:(id)a3;
- (void)didChangePersonalItems:(id)a3;
- (void)didTapOnAddStopAtIndex:(unint64_t)a3;
- (void)headerViewButtonTapped:(id)a3 buttonType:(unint64_t)a4;
- (void)headerViewTapped:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setHideHeader:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewModelDidFinishLoading:(id)a3 error:(id)a4;
- (void)viewModelWillStartLoading:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)willChangeContainerStyle:(unint64_t)a3;
- (void)willChangeLayout:(unint64_t)a3;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation GuidanceSearchResultsViewController

- (NavActionCoordination)navContaineeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_navContaineeDelegate);

  return WeakRetained;
}

- (void)viewModelDidFinishLoading:(id)a3 error:(id)a4
{
  v5 = a3;
  v6 = [v5 results];
  [SARAnalytics captureShowSearchResults:v6];

  [(GuidanceSearchResultsViewController *)self setHideHeader:0];
  v7 = [(GuidanceSearchResultsViewController *)self resultsView];
  [v7 setLoading:0];

  v8 = [(GuidanceSearchResultsViewController *)self viewModel];
  v9 = [v8 title];
  [(ResultsTitleView *)self->_resultsTitleView setTitle:v9];

  v10 = [(GuidanceSearchResultsViewController *)self viewModel];
  v11 = [v10 subtitle];
  [(ResultsTitleView *)self->_resultsTitleView setSubtitle:v11];

  v12 = +[MNNavigationService sharedService];
  v13 = [v12 navigationTransportType];
  if (v13 <= 2)
  {
    if (v13 != 1)
    {
      if (v13 == 2)
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

  if (v13 == 6)
  {
    goto LABEL_12;
  }

  if (v13 != 3)
  {
    goto LABEL_10;
  }

  IsEnabled_Maps182 = MapsFeature_IsEnabled_Maps420();
LABEL_8:
  v15 = IsEnabled_Maps182;

  if (v15)
  {
LABEL_11:
    v12 = [(GuidanceSearchResultsViewController *)self viewModel];
    v17 = [v12 headerImage];
    [(ResultsTitleView *)self->_resultsTitleView setHeaderImage:v17];

    goto LABEL_12;
  }

LABEL_13:
  v18 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v19 = [v5 results];
  v20 = [v19 countByEnumeratingWithState:&v33 objects:v37 count:16];
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
          objc_enumerationMutation(v19);
        }

        v24 = [[SearchResult alloc] initWithMapItem:*(*(&v33 + 1) + 8 * v23)];
        [v18 addObject:v24];

        v23 = v23 + 1;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v21);
  }

  v25 = [[IdenticallyOrderedDataSource alloc] initWithObjects:v18];
  v26 = [v5 placeSummaryMetadata];
  v27 = [(GuidanceSearchResultsViewController *)self dataSource];
  [v27 setPlaceSummaryMetadata:v26];

  v28 = [[SearchResultsDataSourceContent alloc] initWithOrderedDataSource:v25];
  v29 = [(GuidanceSearchResultsViewController *)self dataSource];
  [v29 setContent:v28];

  if ([(GuidanceSearchResultsViewController *)self _isEmpty])
  {
    v30 = +[NSBundle mainBundle];
    v31 = [v30 localizedStringForKey:@"SaR_NoResults" value:@"localized string not found" table:0];
    [(ResultsTitleView *)self->_resultsTitleView setTitle:v31];

    v32 = [(ContaineeViewController *)self cardPresentationController];
    [v32 wantsLayout:2];
  }

  else
  {
    v32 = [(ContaineeViewController *)self cardPresentationController];
    [v32 updateHeightForCurrentLayout];
  }
}

- (void)viewModelWillStartLoading:(id)a3
{
  v3 = [(GuidanceSearchResultsViewController *)self resultsView];
  [v3 setLoading:1];
}

- (void)didTapOnAddStopAtIndex:(unint64_t)a3
{
  v4 = [(GuidanceSearchResultsViewController *)self viewModel];
  [v4 navigateToItemAtIndex:a3];
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  v6.receiver = self;
  v6.super_class = GuidanceSearchResultsViewController;
  [(ContaineeViewController *)&v6 scrollViewWillEndDragging:a3 withVelocity:a5 targetContentOffset:a4.x];
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

- (void)dataSource:(id)a3 itemTapped:(id)a4
{
  v5 = a4;
  v6 = [(GuidanceSearchResultsViewController *)self resultsView];
  v7 = [v6 tableView];
  v8 = [(GuidanceSearchResultsViewController *)self resultsView];
  v9 = [v8 tableView];
  v10 = [v9 indexPathForSelectedRow];
  [v7 deselectRowAtIndexPath:v10 animated:1];

  v16 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v16 mapItem];
    v12 = [(GuidanceSearchResultsViewController *)self viewModel];
    v13 = [v12 results];
    v14 = [v13 indexOfObject:v11];

    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = [(GuidanceSearchResultsViewController *)self viewModel];
      [v15 selectMapItemAtIndex:v14];
    }
  }
}

- (void)dataSourceUpdated:(id)a3
{
  v4 = [(GuidanceSearchResultsViewController *)self resultsView];
  v3 = [v4 tableView];
  [v3 reloadData];
}

- (void)setHideHeader:(BOOL)a3
{
  if (self->_hideHeader != a3)
  {
    v12 = v7;
    v13 = v3;
    self->_hideHeader = a3;
    if (a3)
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

- (void)headerViewTapped:(id)a3
{
  v4 = [(ContaineeViewController *)self cardPresentationController];
  v5 = [v4 containeeLayout];

  if (v5 == 1)
  {
    +[SARAnalytics captureListTapToShowTray];
    v6 = 2;
  }

  else
  {
    v7 = [(ContaineeViewController *)self cardPresentationController];
    v8 = [v7 containeeLayout];

    if (v8 != 2)
    {
      return;
    }

    +[SARAnalytics captureListTapToHideTray];
    v6 = 1;
  }

  v9 = [(ContaineeViewController *)self cardPresentationController];
  [v9 wantsLayout:v6];
}

- (void)headerViewButtonTapped:(id)a3 buttonType:(unint64_t)a4
{
  [SARAnalytics captureCancelSearchResults:a3];
  v5 = [(GuidanceSearchResultsViewController *)self viewModel];
  [v5 cancelResultsView];
}

- (double)heightForLayout:(unint64_t)a3
{
  [(ContainerHeaderView *)self->_containerHeaderView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height];
  v6 = v5;
  if ([(GuidanceSearchResultsViewController *)self _isEmpty])
  {
    if (a3 == 2)
    {
      return v6;
    }

    else
    {
      return -1.0;
    }
  }

  if (a3 - 3 < 2)
  {
    v11 = [(ContaineeViewController *)self cardPresentationController];
    [v11 availableHeight];
    v13 = v12;

    return v13;
  }

  else
  {
    if (a3 != 2)
    {
      v7 = -1.0;
      if (a3 == 1)
      {
        v9 = [(ContaineeViewController *)self cardPresentationController];
        [v9 bottomSafeOffset];
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

- (void)willChangeContainerStyle:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = GuidanceSearchResultsViewController;
  [(ContaineeViewController *)&v6 willChangeContainerStyle:?];
  v5 = [(GuidanceSearchResultsViewController *)self traitCollection];
  [(GuidanceSearchResultsViewController *)self _updateLayoutWithContainerStyle:a3 traitCollection:v5];
}

- (void)willChangeLayout:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = GuidanceSearchResultsViewController;
  [(ContaineeViewController *)&v7 willChangeLayout:?];
  v5 = [(GuidanceSearchResultsViewController *)self navContaineeDelegate];
  v6 = v5;
  if (a3 == 1)
  {
    [v5 showJunctionViewIfNeeded];
  }

  else
  {
    [v5 hideJunctionViewIfNeeded];
  }
}

- (void)applyAlphaToContent:(double)a3
{
  v5.receiver = self;
  v5.super_class = GuidanceSearchResultsViewController;
  [(ContaineeViewController *)&v5 applyAlphaToContent:?];
  if (![(GuidanceSearchResultsViewController *)self isHeaderHidden])
  {
    [(ContainerHeaderView *)self->_containerHeaderView setHairLineAlpha:a3];
  }
}

- (void)_updateLayoutWithContainerStyle:(unint64_t)a3 traitCollection:(id)a4
{
  if (sub_100A5FC54(a3, a4))
  {
    v5 = [(ContaineeViewController *)self cardPresentationController];
    [v5 wantsLayout:1];
  }
}

- (BOOL)_isEmpty
{
  v3 = [(GuidanceSearchResultsViewController *)self resultsView];
  if ([v3 isLoading])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(GuidanceSearchResultsViewController *)self dataSource];
    v6 = [v5 content];
    v4 = [v6 count] == 0;
  }

  return v4;
}

- (double)_mediumLayoutHeightInSAR
{
  v2 = [(GuidanceSearchResultsViewController *)self view];
  v3 = [v2 window];
  v4 = [v3 windowScene];
  v5 = [v4 screen];

  if (!v5)
  {
    v5 = +[UIScreen mainScreen];
  }

  [v5 bounds];
  v7 = v6;
  [v5 bounds];
  if (v7 == 320.0)
  {
    [v5 bounds];
    UIRoundToScreenScale();
    v10 = v9;
  }

  else
  {
    v10 = dbl_101212850[v8 > 750.0];
  }

  return v10;
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v8.receiver = self;
  v8.super_class = GuidanceSearchResultsViewController;
  v6 = a3;
  [(GuidanceSearchResultsViewController *)&v8 willTransitionToTraitCollection:v6 withTransitionCoordinator:a4];
  v7 = [(ContaineeViewController *)self cardPresentationController:v8.receiver];
  -[GuidanceSearchResultsViewController _updateLayoutWithContainerStyle:traitCollection:](self, "_updateLayoutWithContainerStyle:traitCollection:", [v7 containerStyle], v6);
}

- (void)viewWillAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = GuidanceSearchResultsViewController;
  [(ContaineeViewController *)&v8 viewWillAppear:a3];
  v4 = [(GuidanceSearchResultsViewController *)self viewModel];
  [v4 clearSelection];

  v5 = [(ContaineeViewController *)self cardPresentationController];
  v6 = [v5 containerStyle];
  v7 = [(GuidanceSearchResultsViewController *)self traitCollection];
  [(GuidanceSearchResultsViewController *)self _updateLayoutWithContainerStyle:v6 traitCollection:v7];
}

- (void)viewDidLoad
{
  v72.receiver = self;
  v72.super_class = GuidanceSearchResultsViewController;
  [(ContaineeViewController *)&v72 viewDidLoad];
  v3 = [(GuidanceSearchResultsViewController *)self view];
  [v3 setAccessibilityIdentifier:@"GuidanceSearchResults"];

  v4 = [GuidanceSearchResultsView alloc];
  v5 = +[UIScreen mainScreen];
  [v5 bounds];
  v6 = [(GuidanceSearchResultsView *)v4 initWithFrame:?];
  [(GuidanceSearchResultsViewController *)self setResultsView:v6];

  v7 = [(GuidanceSearchResultsViewController *)self resultsView];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(GuidanceSearchResultsViewController *)self resultsView];
  [v8 setPreservesSuperviewLayoutMargins:1];

  v9 = [(GuidanceSearchResultsViewController *)self view];
  v10 = [(GuidanceSearchResultsViewController *)self resultsView];
  [v9 addSubview:v10];

  v11 = [ResultsTitleView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v15 = [(ResultsTitleView *)v11 initWithFrame:CGRectZero.origin.x, y, width, height];
  resultsTitleView = self->_resultsTitleView;
  self->_resultsTitleView = v15;

  [(ResultsTitleView *)self->_resultsTitleView setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = [(GuidanceSearchResultsViewController *)self viewModel];
  v18 = [v17 title];
  [(ResultsTitleView *)self->_resultsTitleView setTitle:v18];

  [(ResultsTitleView *)self->_resultsTitleView setEditButtonHidden:1];
  [(GuidanceSearchResultsViewController *)self setHideHeader:1];
  v19 = [SearchResultsDataSource alloc];
  v20 = [(GuidanceSearchResultsViewController *)self resultsView];
  v21 = [v20 tableView];
  v22 = [(SearchResultsDataSource *)v19 initWithTableView:v21];
  [(GuidanceSearchResultsViewController *)self setDataSource:v22];

  v23 = [(GuidanceSearchResultsViewController *)self dataSource];
  [v23 setDelegate:self];

  v24 = [(GuidanceSearchResultsViewController *)self dataSource];
  [v24 setIsPresentingSearchAlongTheRouteResults:1];

  v25 = [(GuidanceSearchResultsViewController *)self dataSource];
  v26 = [(GuidanceSearchResultsViewController *)self resultsView];
  v27 = [v26 tableView];
  [v27 setDataSource:v25];

  v28 = [(GuidanceSearchResultsViewController *)self dataSource];
  v29 = [(GuidanceSearchResultsViewController *)self resultsView];
  v30 = [v29 tableView];
  [v30 setDelegate:v28];

  v31 = [(GuidanceSearchResultsViewController *)self resultsView];
  v32 = [v31 tableView];
  [v32 setSectionHeaderTopPadding:0.0];

  v33 = [[ContainerHeaderView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  containerHeaderView = self->_containerHeaderView;
  self->_containerHeaderView = v33;

  [(ContainerHeaderView *)self->_containerHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ContainerHeaderView *)self->_containerHeaderView setDelegate:self];
  [(ContainerHeaderView *)self->_containerHeaderView setTitleView:self->_resultsTitleView];
  v35 = [(GuidanceSearchResultsViewController *)self view];
  [v35 addSubview:self->_containerHeaderView];

  v70 = [(ContainerHeaderView *)self->_containerHeaderView leadingAnchor];
  v71 = [(GuidanceSearchResultsViewController *)self view];
  v69 = [v71 leadingAnchor];
  v68 = [v70 constraintEqualToAnchor:v69];
  v73[0] = v68;
  v66 = [(ContainerHeaderView *)self->_containerHeaderView trailingAnchor];
  v67 = [(GuidanceSearchResultsViewController *)self view];
  v65 = [v67 trailingAnchor];
  v64 = [v66 constraintEqualToAnchor:v65];
  v73[1] = v64;
  v62 = [(ContainerHeaderView *)self->_containerHeaderView topAnchor];
  v63 = [(GuidanceSearchResultsViewController *)self view];
  v61 = [v63 topAnchor];
  v60 = [v62 constraintEqualToAnchor:v61];
  v73[2] = v60;
  v59 = [(GuidanceSearchResultsViewController *)self resultsView];
  v57 = [v59 leadingAnchor];
  v58 = [(GuidanceSearchResultsViewController *)self view];
  v56 = [v58 leadingAnchor];
  v55 = [v57 constraintEqualToAnchor:v56];
  v73[3] = v55;
  v54 = [(GuidanceSearchResultsViewController *)self resultsView];
  v52 = [v54 trailingAnchor];
  v53 = [(GuidanceSearchResultsViewController *)self view];
  v51 = [v53 trailingAnchor];
  v50 = [v52 constraintEqualToAnchor:v51];
  v73[4] = v50;
  v49 = [(GuidanceSearchResultsViewController *)self resultsView];
  v36 = [v49 topAnchor];
  v37 = [(ContainerHeaderView *)self->_containerHeaderView bottomAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];
  v73[5] = v38;
  v39 = [(GuidanceSearchResultsViewController *)self resultsView];
  v40 = [v39 bottomAnchor];
  v41 = [(GuidanceSearchResultsViewController *)self view];
  v42 = [v41 bottomAnchor];
  v43 = [v40 constraintEqualToAnchor:v42];
  v73[6] = v43;
  v44 = [NSArray arrayWithObjects:v73 count:7];
  [NSLayoutConstraint activateConstraints:v44];

  v45 = +[MNNavigationService sharedService];
  v46 = [v45 navigationTransportType];
  if (v46 > 2)
  {
    if (v46 == 3)
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

    if (v46 != 6)
    {
LABEL_8:
      IsEnabled_Maps420 = MapsFeature_IsEnabled_DrivingMultiWaypointRoutes();
      goto LABEL_10;
    }
  }

  else if (v46 != 1)
  {
    if (v46 == 2)
    {
      IsEnabled_Maps420 = MapsFeature_IsEnabled_Maps182();
      goto LABEL_10;
    }

    goto LABEL_8;
  }

LABEL_11:
  [(GuidanceSearchResultsViewModel *)self->_viewModel loadDataIfNeeded];
}

- (void)didChangePersonalItems:(id)a3
{
  v5 = [(GuidanceSearchResultsViewController *)self viewModel];
  v6 = [v5 results];
  v7 = [v6 count];

  v8 = [(GuidanceSearchResultsViewController *)self viewModel];
  v9 = [v8 results];
  v10 = v9;
  if (v7 == 1)
  {
    v11 = [v9 firstObject];

    v12 = sub_100067540();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = [v11 name];
      v26 = 138412290;
      v27 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "SAR: didChangePersonalItems. Opening placecard with map Item: %@", &v26, 0xCu);
    }

    v14 = [(GuidanceSearchResultsViewController *)self navContaineeDelegate];
    [v14 selectMapItem:v11 shouldRemoveResults:1];

    goto LABEL_5;
  }

  v15 = [v9 count];

  if (a3 && v15 >= 2)
  {
    v16 = [(GuidanceSearchResultsViewController *)self navContaineeDelegate];
    v11 = [v16 currentSearchInfo];

    if ([v11 selectedIndex] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = [v11 selectedIndex];
      v18 = [(GuidanceSearchResultsViewController *)self viewModel];
      v19 = [v18 results];
      if (v17 >= [v19 count])
      {

LABEL_16:
        goto LABEL_5;
      }

      v20 = [v11 spotlightMapsIdentifier];

      if (v20)
      {
        v21 = [(GuidanceSearchResultsViewController *)self viewModel];
        v22 = [v21 results];
        v18 = [v22 objectAtIndexedSubscript:{objc_msgSend(v11, "selectedIndex")}];

        v23 = sub_100067540();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v24 = [v18 name];
          v26 = 138412290;
          v27 = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "SAR: didChangePersonalItems. Opening placecard with map Item: %@", &v26, 0xCu);
        }

        v25 = [(GuidanceSearchResultsViewController *)self navContaineeDelegate];
        [v25 selectMapItem:v18 shouldRemoveResults:0];

        goto LABEL_16;
      }
    }

LABEL_5:
  }
}

- (void)configureWithViewModel:(id)a3
{
  v5 = a3;
  if (self->_viewModel != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_viewModel, a3);
    [(GuidanceSearchResultsViewModel *)self->_viewModel setDelegate:self];
    [(GuidanceSearchResultsViewModel *)self->_viewModel loadDataIfNeeded];
    v5 = v6;
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
    v4 = [(ContaineeViewController *)v2 cardPresentationController];
    [v4 setBlurInCardView:0];

    v5 = [UIColor colorNamed:@"NavigationMaterialColor"];
    v6 = [(ContaineeViewController *)v3 cardPresentationController];
    [v6 setCardColor:v5];
  }

  return v3;
}

- (GuidanceSearchResultsViewController)initWithViewModel:(id)a3
{
  v5 = a3;
  v6 = [(GuidanceSearchResultsViewController *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, a3);
    [(GuidanceSearchResultsViewModel *)v7->_viewModel setDelegate:v7];
  }

  return v7;
}

@end