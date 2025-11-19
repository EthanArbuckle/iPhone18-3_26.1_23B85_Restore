@interface SimpleResultsViewController
- (BOOL)containsMapItem:(id)a3;
- (BOOL)shouldQuickActionMenuPresenter:(id)a3 showDirectionsToPlace:(id)a4;
- (MUScrollViewImpressionsCalculator)impressionsCalculator;
- (SimpleResultsViewController)initWithShareDelegate:(id)a3 visualEffectDisabled:(BOOL)a4;
- (SimpleResultsViewControllerDelegate)resultsDelegate;
- (double)_searchAlongRouteHeaderHeightForStyle:(unint64_t)a3 traitCollection:(id)a4;
- (double)heightForLayout:(unint64_t)a3;
- (id)mapServiceTraitsForQuickActionPresenter:(id)a3;
- (void)_updateHeaderWithContainerStyle:(unint64_t)a3 traitCollection:(id)a4;
- (void)applyAlphaToContent:(double)a3;
- (void)dataSource:(id)a3 itemFocused:(id)a4;
- (void)dataSource:(id)a3 itemTapped:(id)a4;
- (void)dataSourceUpdated:(id)a3;
- (void)didBecomeCurrent;
- (void)didChangeLayout:(unint64_t)a3;
- (void)didResignCurrent;
- (void)didTapOnAddStopWithSearchResult:(id)a3 atIndexPath:(id)a4;
- (void)didTapOnCallWithSearchResult:(id)a3;
- (void)didTapOnContainmentParentMapItem:(id)a3;
- (void)didTapOnCuratedGuide:(id)a3;
- (void)didTapOnCuratedGuides:(id)a3;
- (void)didTapOnDirectionsWithSearchResult:(id)a3;
- (void)didTapOnFlyoverWithSearchResult:(id)a3;
- (void)didTapOnLookAroundWithSearchResult:(id)a3;
- (void)didTapOnTappableEntry:(id)a3;
- (void)didTapOnUserGeneratedGuide:(id)a3;
- (void)didTapOnWebsiteWithSearchResult:(id)a3;
- (void)handleDismissAction:(id)a3;
- (void)headerViewButtonTapped:(id)a3 buttonType:(unint64_t)a4;
- (void)quickActionMenuPresenter:(id)a3 selectedCall:(id)a4;
- (void)quickActionMenuPresenter:(id)a3 selectedDirectionsTo:(id)a4;
- (void)quickActionMenuPresenter:(id)a3 selectedRemoveDroppedPinOf:(id)a4;
- (void)quickActionMenuPresenter:(id)a3 selectedShareLocationOf:(id)a4;
- (void)quickActionMenuPresenter:(id)a3 selectedShowPlaceCard:(id)a4;
- (void)quickActionMenuPresenter:(id)a3 selectedViewWebsiteFor:(id)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)setCluster:(id)a3 sortAlphabetically:(BOOL)a4 originalSearchInfo:(id)a5;
- (void)setCluster:(id)a3 sortAlphabetically:(BOOL)a4 originalSearchInfo:(id)a5 searchResults:(id)a6;
- (void)setDisplayDistance:(BOOL)a3;
- (void)setIsPresentingSearchAlongTheRouteResults:(BOOL)a3;
- (void)setSearchResults:(id)a3 sortAlphabetically:(BOOL)a4 originalSearchInfo:(id)a5;
- (void)updatePreferredContentSize;
- (void)updateTitle:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)willBecomeCurrent:(BOOL)a3;
- (void)willChangeContainerStyle:(unint64_t)a3;
- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SimpleResultsViewController

- (SimpleResultsViewControllerDelegate)resultsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_resultsDelegate);

  return WeakRetained;
}

- (MUScrollViewImpressionsCalculator)impressionsCalculator
{
  if (MapsFeature_IsEnabled_SearchResultsImpressions() && self->_resultsDataSource)
  {
    impressionsCalculator = self->_impressionsCalculator;
    if (impressionsCalculator)
    {
LABEL_10:
      v14 = impressionsCalculator;
      goto LABEL_12;
    }

    v4 = objc_alloc_init(SearchResultsImpressionsLogger);
    objc_initWeak(&location, self);
    v5 = [MUImpressionsCalculatorConfiguration alloc];
    tableView = self->_tableView;
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_100A1AE3C;
    v19 = &unk_101653DB0;
    objc_copyWeak(&v20, &location);
    v7 = [v5 initWithLogger:v4 contentScrollView:tableView containerViewProvider:&v16];
    v8 = [MUScrollViewImpressionsCalculator alloc];
    v9 = [v8 initWithConfiguration:v7 visibleItemsProvider:{self->_resultsDataSource, v16, v17, v18, v19}];
    v10 = self->_impressionsCalculator;
    self->_impressionsCalculator = v9;

    v11 = +[GEOPlatform sharedPlatform];
    if ([v11 isInternalInstall])
    {
      v12 = +[NSUserDefaults standardUserDefaults];
      v13 = [v12 BOOLForKey:@"EnableSearchResultsImpressionLoggingVisualization"];

      if (!v13)
      {
LABEL_9:

        objc_destroyWeak(&v20);
        objc_destroyWeak(&location);

        impressionsCalculator = self->_impressionsCalculator;
        goto LABEL_10;
      }

      v11 = +[MapsImpressionsSearchResultsFloatingDebugViewController sharedInstance];
      [v11 setCalculator:self->_impressionsCalculator];
      if (([v11 isAttached] & 1) == 0)
      {
        [v11 attach];
      }
    }

    goto LABEL_9;
  }

  v14 = 0;
LABEL_12:

  return v14;
}

- (BOOL)shouldQuickActionMenuPresenter:(id)a3 showDirectionsToPlace:(id)a4
{
  v5 = a4;
  v6 = [(SimpleResultsViewController *)self resultsDelegate];
  v7 = [v6 venuesManagerForSimpleResults];
  v8 = [v5 mapItem];

  LOBYTE(v5) = [v7 isUserAtSameVenueAsMapItem:v8];
  return v5 ^ 1;
}

- (void)quickActionMenuPresenter:(id)a3 selectedRemoveDroppedPinOf:(id)a4
{
  v5 = a4;
  v6 = [(SimpleResultsViewController *)self resultsDelegate];
  [v6 simpleResultsViewContoller:0 removeDroppedPin:v5];
}

- (id)mapServiceTraitsForQuickActionPresenter:(id)a3
{
  v3 = [(SimpleResultsViewController *)self resultsDelegate];
  v4 = [v3 traits];

  return v4;
}

- (void)quickActionMenuPresenter:(id)a3 selectedShowPlaceCard:(id)a4
{
  v5 = [a4 searchResult];
  if (v5)
  {
    v7 = v5;
    v6 = [(SimpleResultsViewController *)self resultsDelegate];
    [v6 simpleResultsViewContoller:self selectSearchResult:v7];

    v5 = v7;
  }
}

- (void)quickActionMenuPresenter:(id)a3 selectedShareLocationOf:(id)a4
{
  v5 = [a4 searchResult];
  if (v5)
  {
    v9 = v5;
    v6 = [v5 contactForSharingToMessages];
    v7 = [ShareItem shareItemWithSearchResult:v9 contact:v6 includePrintActivity:0];

    v8 = [(SimpleResultsViewController *)self resultsDelegate];
    [v8 simpleResultsViewContoller:0 doShareSheetForShareItem:v7 completion:0];

    v5 = v9;
  }
}

- (void)quickActionMenuPresenter:(id)a3 selectedViewWebsiteFor:(id)a4
{
  v5 = [a4 searchResult];
  if (v5)
  {
    v7 = v5;
    v6 = [(SimpleResultsViewController *)self resultsDelegate];
    [v6 simpleResultsViewContoller:0 openWebsiteForSearchResult:v7];

    v5 = v7;
  }
}

- (void)quickActionMenuPresenter:(id)a3 selectedCall:(id)a4
{
  v5 = [a4 searchResult];
  if (v5)
  {
    v7 = v5;
    v6 = [(SimpleResultsViewController *)self resultsDelegate];
    [v6 simpleResultsViewContoller:self doAudioCallToSearchResult:v7];

    v5 = v7;
  }
}

- (void)quickActionMenuPresenter:(id)a3 selectedDirectionsTo:(id)a4
{
  v5 = [a4 searchResult];
  if (v5)
  {
    v6 = objc_alloc_init(SearchFieldItem);
    v7 = +[SearchResult currentLocationSearchResult];
    [(SearchFieldItem *)v6 setSearchResult:v7];

    v8 = objc_alloc_init(SearchFieldItem);
    [(SearchFieldItem *)v8 setSearchResult:v5];
    v9 = [DirectionItem alloc];
    v16[0] = v6;
    v16[1] = v8;
    v10 = [NSArray arrayWithObjects:v16 count:2];
    v11 = [(DirectionItem *)v9 initWithItems:v10 transportType:0];

    v14 = @"DirectionsSessionInitiatorKey";
    v15 = &off_1016E8030;
    v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v13 = [(SimpleResultsViewController *)self resultsDelegate];
    [v13 simpleResultsViewContoller:self doDirectionItem:v11 withUserInfo:v12];
  }
}

- (void)handleDismissAction:(id)a3
{
  v4.receiver = self;
  v4.super_class = SimpleResultsViewController;
  [(ContaineeViewController *)&v4 handleDismissAction:a3];
  [(SimpleResultsViewController *)self _captureCloseAction];
  +[SearchResultsAnalyticsManager didCloseCluster];
}

- (double)heightForLayout:(unint64_t)a3
{
  if (a3 - 3 < 3)
  {
    v4 = [(ContaineeViewController *)self cardPresentationController];
    [v4 availableHeight];
    v6 = v5;

    return v6;
  }

  if (a3 != 2)
  {
    v6 = -1.0;
    if (a3 == 1)
    {
      v7 = [(ContaineeViewController *)self cardPresentationController];
      [v7 bottomSafeOffset];
      v9 = v8;
      [(ContainerHeaderView *)self->_titleHeaderView frame];
      v6 = CGRectGetHeight(v15) + v9;
    }

    return v6;
  }

  if ([(SimpleResultsViewController *)self isPresentingSearchAlongTheRouteResults])
  {
    return 192.0;
  }

  if (sub_10000FA08(self) == 5)
  {
    [(UITableView *)self->_tableView contentSize];
    v11 = v10;
    [(ContainerHeaderView *)self->_titleHeaderView frame];
    return fmin(v12 + v11, 610.0);
  }

  sub_100068BB8();
  return result;
}

- (void)willChangeContainerStyle:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = SimpleResultsViewController;
  [(ContaineeViewController *)&v6 willChangeContainerStyle:?];
  v5 = [(SimpleResultsViewController *)self traitCollection];
  [(SimpleResultsViewController *)self _updateHeaderWithContainerStyle:a3 traitCollection:v5];
}

- (void)willBecomeCurrent:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SimpleResultsViewController;
  [(ContaineeViewController *)&v5 willBecomeCurrent:a3];
  if (self->_cluster)
  {
    v4 = [(SimpleResultsViewController *)self resultsDelegate];
    [v4 simpleResultsViewContoller:self selectClusteredLabelMarker:self->_cluster];
  }
}

- (void)applyAlphaToContent:(double)a3
{
  v5.receiver = self;
  v5.super_class = SimpleResultsViewController;
  [(ContaineeViewController *)&v5 applyAlphaToContent:?];
  if (sub_10000FA08(self) != 5 && (MapsFeature_IsEnabled_SearchAndDiscovery() & 1) == 0)
  {
    [(ContainerHeaderView *)self->_titleHeaderView setHairLineAlpha:a3];
  }
}

- (void)willTransitionToTraitCollection:(id)a3 withTransitionCoordinator:(id)a4
{
  v8.receiver = self;
  v8.super_class = SimpleResultsViewController;
  v6 = a3;
  [(SimpleResultsViewController *)&v8 willTransitionToTraitCollection:v6 withTransitionCoordinator:a4];
  v7 = [(ContaineeViewController *)self cardPresentationController:v8.receiver];
  -[SimpleResultsViewController _updateHeaderWithContainerStyle:traitCollection:](self, "_updateHeaderWithContainerStyle:traitCollection:", [v7 containerStyle], v6);
}

- (void)viewWillAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = SimpleResultsViewController;
  [(ContaineeViewController *)&v9 viewWillAppear:a3];
  v4 = [(ContaineeViewController *)self cardPresentationController];
  v5 = [v4 containerStyle];
  v6 = [(SimpleResultsViewController *)self traitCollection];
  [(SimpleResultsViewController *)self _updateHeaderWithContainerStyle:v5 traitCollection:v6];

  if (!self->_quickActionMenuPresenter)
  {
    v7 = [[SearchResultQuickActionMenuPresenter alloc] initWithTableView:self->_tableView];
    quickActionMenuPresenter = self->_quickActionMenuPresenter;
    self->_quickActionMenuPresenter = v7;

    [(QuickActionMenuPresenter *)self->_quickActionMenuPresenter setDelegate:self];
  }
}

- (void)viewDidLoad
{
  v60.receiver = self;
  v60.super_class = SimpleResultsViewController;
  [(ContaineeViewController *)&v60 viewDidLoad];
  v3 = [(SimpleResultsViewController *)self view];
  [v3 setAccessibilityIdentifier:@"SimpleResultsView"];
  v4 = [ContainerHeaderView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v8 = [(ContainerHeaderView *)v4 initWithFrame:CGRectZero.origin.x, y, width, height];
  titleHeaderView = self->_titleHeaderView;
  self->_titleHeaderView = v8;

  [(ContainerHeaderView *)self->_titleHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ContainerHeaderView *)self->_titleHeaderView setDelegate:self];
  [v3 addSubview:self->_titleHeaderView];
  if (sub_10000FA08(self) == 5)
  {
    [(ContainerHeaderView *)self->_titleHeaderView setHairLineAlpha:0.0];
    v10 = [[SimpleResultTitleView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    p_macResultsTitleView = &self->_macResultsTitleView;
    macResultsTitleView = self->_macResultsTitleView;
    self->_macResultsTitleView = v10;

    [(SimpleResultTitleView *)self->_macResultsTitleView setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  else
  {
    v13 = [[ResultsTitleView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    p_macResultsTitleView = &self->_resultsTitleView;
    resultsTitleView = self->_resultsTitleView;
    self->_resultsTitleView = v13;

    [(ResultsTitleView *)self->_resultsTitleView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ResultsTitleView *)self->_resultsTitleView setEditButtonHidden:1];
    IsEnabled_SearchAndDiscovery = MapsFeature_IsEnabled_SearchAndDiscovery();
    v16 = 1.0;
    if (IsEnabled_SearchAndDiscovery)
    {
      v16 = 0.0;
    }

    [(ContainerHeaderView *)self->_titleHeaderView setHairLineAlpha:v16];
  }

  [(ContainerHeaderView *)self->_titleHeaderView setTitleView:*p_macResultsTitleView];
  v17 = [[MapsThemeTableView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  tableView = self->_tableView;
  self->_tableView = &v17->super;

  [(UITableView *)self->_tableView setAccessibilityIdentifier:@"SimpleResultsTableView"];
  [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = +[UIColor clearColor];
  [(UITableView *)self->_tableView setBackgroundColor:v19];

  [(UITableView *)self->_tableView setSectionHeaderTopPadding:0.0];
  [v3 addSubview:self->_tableView];
  v20 = sub_10000FA08(self);
  v21 = [(ContainerHeaderView *)self->_titleHeaderView heightAnchor];
  v22 = v21;
  if (v20 == 5)
  {
    [v21 constraintEqualToConstant:54.0];
  }

  else
  {
    [v21 constraintGreaterThanOrEqualToConstant:54.0];
  }
  v23 = ;
  titleHeaderViewHeightConstraint = self->_titleHeaderViewHeightConstraint;
  self->_titleHeaderViewHeightConstraint = v23;

  if (sub_10000FA08(self) == 5)
  {
    v25 = 10.0;
  }

  else
  {
    v25 = 0.0;
  }

  v26 = [(UITableView *)self->_tableView bottomAnchor];
  v27 = [v3 bottomAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:-16.0];
  bottomConstraint = self->_bottomConstraint;
  self->_bottomConstraint = v28;

  v61[0] = self->_titleHeaderViewHeightConstraint;
  v58 = [(ContainerHeaderView *)self->_titleHeaderView topAnchor];
  v57 = [v3 topAnchor];
  v56 = [v58 constraintEqualToAnchor:v57];
  v61[1] = v56;
  v55 = [(ContainerHeaderView *)self->_titleHeaderView leadingAnchor];
  v54 = [v3 leadingAnchor];
  v53 = [v55 constraintEqualToAnchor:v54];
  v61[2] = v53;
  v52 = [(ContainerHeaderView *)self->_titleHeaderView trailingAnchor];
  v51 = [v3 trailingAnchor];
  v50 = [v52 constraintEqualToAnchor:v51];
  v61[3] = v50;
  v49 = [(UITableView *)self->_tableView leadingAnchor];
  v48 = [v3 leadingAnchor];
  v30 = [v49 constraintEqualToAnchor:v48 constant:v25];
  v61[4] = v30;
  v31 = [(UITableView *)self->_tableView trailingAnchor];
  v59 = v3;
  v32 = [v3 trailingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];
  v61[5] = v33;
  v34 = [(UITableView *)self->_tableView topAnchor];
  v35 = [(ContainerHeaderView *)self->_titleHeaderView bottomAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];
  v37 = self->_bottomConstraint;
  v61[6] = v36;
  v61[7] = v37;
  v38 = [NSArray arrayWithObjects:v61 count:8];
  [NSLayoutConstraint activateConstraints:v38];

  v39 = [(SimpleResultsViewController *)self view];
  [v39 layoutIfNeeded];

  v40 = [[SearchResultsDataSource alloc] initWithTableView:self->_tableView];
  resultsDataSource = self->_resultsDataSource;
  self->_resultsDataSource = v40;

  [self->_resultsDataSource setActive:1];
  [self->_resultsDataSource setDelegate:self];
  [(SearchResultsDataSource *)self->_resultsDataSource setDisplayDistance:self->_displayDistance];
  WeakRetained = objc_loadWeakRetained(&self->_shareDelegate);
  [(SearchResultsDataSource *)self->_resultsDataSource setShareDelegate:WeakRetained];

  [(SearchResultsDataSource *)self->_resultsDataSource setIsPresentingSearchAlongTheRouteResults:[(SimpleResultsViewController *)self isPresentingSearchAlongTheRouteResults]];
  [(SearchResultsDataSource *)self->_resultsDataSource setIsPresentingVenueClusterResults:[(SimpleResultsViewController *)self isPresentingVenueClusterResults]];
  if (sub_10000FA08(self) == 5)
  {
    [(SearchResultsDataSource *)self->_resultsDataSource setIsSimpleSearchResults:1];
  }

  [(UITableView *)self->_tableView setDelegate:self->_resultsDataSource];
  [(UITableView *)self->_tableView setDataSource:self->_resultsDataSource];
  v43 = +[MapsDragAndDropManager sharedManager];
  v44 = [v43 deviceSupportsDragAndDrop];

  if (v44)
  {
    [(UITableView *)self->_tableView setDragDelegate:self->_resultsDataSource];
  }

  [(UITableView *)self->_tableView reloadData];
  [(SimpleResultsViewController *)self updateTitle:0];
  [(SimpleResultsViewController *)self updatePreferredContentSize];
  v45 = [(ContaineeViewController *)self cardPresentationController];
  v46 = [v45 containerStyle];
  v47 = [(SimpleResultsViewController *)self traitCollection];
  [(SimpleResultsViewController *)self _updateHeaderWithContainerStyle:v46 traitCollection:v47];
}

- (void)headerViewButtonTapped:(id)a3 buttonType:(unint64_t)a4
{
  v5 = a3;
  v6 = sub_100067540();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9.receiver = self;
    v9.super_class = SimpleResultsViewController;
    v7 = [(SimpleResultsViewController *)&v9 class];
    *buf = 138412546;
    v11 = self;
    v12 = 2112;
    v13 = v7;
    v8 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Header view close button tapped. Self : %@, Super class: %@", buf, 0x16u);
  }

  [(SimpleResultsViewController *)self handleDismissAction:v5];
}

- (void)didTapOnAddStopWithSearchResult:(id)a3 atIndexPath:(id)a4
{
  v8 = a3;
  v5 = [(SimpleResultsViewController *)self resultsDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SimpleResultsViewController *)self resultsDelegate];
    [v7 simpleResultsViewContoller:self didTapOnAddStopWithSearchResult:v8];
  }
}

- (void)didTapOnTappableEntry:(id)a3
{
  v8 = a3;
  v4 = [(SimpleResultsViewController *)self resultsDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SimpleResultsViewController *)self resultsDelegate];
    v7 = [self->_originalSearchInfo results];
    [v6 simpleResultsViewContoller:self selectTappableEntry:v8 resultsList:v7];
  }
}

- (void)didTapOnContainmentParentMapItem:(id)a3
{
  v8 = a3;
  v4 = [(SimpleResultsViewController *)self resultsDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SimpleResultsViewController *)self resultsDelegate];
    v7 = [self->_originalSearchInfo results];
    [v6 simpleResultsViewContoller:self selectContainmentParentMapItem:v8 resultsList:v7];
  }
}

- (void)didTapOnFlyoverWithSearchResult:(id)a3
{
  v7 = a3;
  v4 = [(SimpleResultsViewController *)self resultsDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SimpleResultsViewController *)self resultsDelegate];
    [v6 simpleResultsViewContoller:self didTapOnFlyoverWithSearchResult:v7];
  }
}

- (void)didTapOnWebsiteWithSearchResult:(id)a3
{
  v7 = a3;
  v4 = [(SimpleResultsViewController *)self resultsDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SimpleResultsViewController *)self resultsDelegate];
    [v6 simpleResultsViewContoller:self didTapOnWebsiteWithSearchResult:v7];
  }
}

- (void)didTapOnCallWithSearchResult:(id)a3
{
  v7 = a3;
  v4 = [(SimpleResultsViewController *)self resultsDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SimpleResultsViewController *)self resultsDelegate];
    [v6 simpleResultsViewContoller:self didTapOnCallWithSearchResult:v7];
  }
}

- (void)didTapOnLookAroundWithSearchResult:(id)a3
{
  v7 = a3;
  v4 = [(SimpleResultsViewController *)self resultsDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SimpleResultsViewController *)self resultsDelegate];
    [v6 simpleResultsViewContoller:self didTapOnLookAroundWithSearchResult:v7];
  }
}

- (void)didTapOnDirectionsWithSearchResult:(id)a3
{
  v4 = a3;
  v5 = [(SimpleResultsViewController *)self resultsDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_alloc_init(SearchFieldItem);
    v8 = +[SearchResult currentLocationSearchResult];
    [(SearchFieldItem *)v7 setSearchResult:v8];

    v9 = [SearchFieldItem searchFieldItemWithObject:v4];
    v10 = [DirectionItem alloc];
    v14[0] = v7;
    v14[1] = v9;
    v11 = [NSArray arrayWithObjects:v14 count:2];
    v12 = [(DirectionItem *)v10 initWithItems:v11 ignoreMapType:0 transportType:0];

    v13 = [(SimpleResultsViewController *)self resultsDelegate];
    [v13 simpleResultsViewContoller:self selectDirectionItem:v12];
  }
}

- (void)didTapOnCuratedGuides:(id)a3
{
  v7 = a3;
  v4 = [(SimpleResultsViewController *)self resultsDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SimpleResultsViewController *)self resultsDelegate];
    [v6 simpleResultsViewContoller:self showCuratedCollectionsList:v7 title:0];
  }
}

- (void)didTapOnCuratedGuide:(id)a3
{
  v7 = a3;
  v4 = [(SimpleResultsViewController *)self resultsDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SimpleResultsViewController *)self resultsDelegate];
    [v6 simpleResultsViewContoller:self showCuratedCollection:v7];
  }
}

- (void)didTapOnUserGeneratedGuide:(id)a3
{
  v7 = a3;
  v4 = [(SimpleResultsViewController *)self resultsDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(SimpleResultsViewController *)self resultsDelegate];
    [v6 simpleResultsViewContoller:self showUserGeneratedCollection:v7];
  }
}

- (void)dataSource:(id)a3 itemTapped:(id)a4
{
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(SimpleResultsViewController *)self resultsDelegate];
    [v6 simpleResultsViewContoller:self selectSearchResult:v7];

    [(SimpleResultsViewController *)self _captureTapActionWithSearchResult:v7];
    objc_storeStrong(&self->_lastItemTapped, a4);
  }
}

- (void)dataSource:(id)a3 itemFocused:(id)a4
{
  v7 = a4;
  if (sub_10000FA08(self) != 5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(SimpleResultsViewController *)self resultsDelegate];
      [v5 simpleResultsViewContoller:self focusSearchResult:v7];

      lastItemTapped = self->_lastItemTapped;
      self->_lastItemTapped = 0;
    }

    else
    {
      if (self->_lastItemTapped)
      {
        goto LABEL_7;
      }

      lastItemTapped = [(SimpleResultsViewController *)self resultsDelegate];
      [lastItemTapped simpleResultsViewControllerRemoveSearchResultFocus:self];
    }
  }

LABEL_7:
}

- (void)dataSourceUpdated:(id)a3
{
  [(UITableView *)self->_tableView reloadData];
  [(UITableView *)self->_tableView layoutIfNeeded];
  [(SimpleResultsViewController *)self updateTitle:0];

  [(SimpleResultsViewController *)self updatePreferredContentSize];
}

- (double)_searchAlongRouteHeaderHeightForStyle:(unint64_t)a3 traitCollection:(id)a4
{
  v4 = sub_100A5FC54(a3, a4);
  result = 75.0;
  if (v4)
  {
    return 53.0;
  }

  return result;
}

- (void)_updateHeaderWithContainerStyle:(unint64_t)a3 traitCollection:(id)a4
{
  v8 = a4;
  [(ContainerHeaderView *)self->_titleHeaderView setShouldCenterButtonVertically:[(SimpleResultsViewController *)self isPresentingSearchAlongTheRouteResults]];
  if ([(SimpleResultsViewController *)self isPresentingSearchAlongTheRouteResults])
  {
    [(SimpleResultsViewController *)self _searchAlongRouteHeaderHeightForStyle:a3 traitCollection:v8];
  }

  else
  {
    if (sub_10000FA08(self) == 5)
    {
      [(ContainerHeaderView *)self->_titleHeaderView setHeaderSize:0];
      v7 = 0x4044000000000000;
    }

    else
    {
      v7 = 0x4052000000000000;
    }

    v6 = *&v7;
  }

  [(NSLayoutConstraint *)self->_titleHeaderViewHeightConstraint setConstant:v6];
}

- (void)setIsPresentingSearchAlongTheRouteResults:(BOOL)a3
{
  self->_isPresentingSearchAlongTheRouteResults = a3;
  [(SearchResultsDataSource *)self->_resultsDataSource setIsPresentingSearchAlongTheRouteResults:?];
  v6 = [(ContaineeViewController *)self cardPresentationController];
  v4 = [v6 containerStyle];
  v5 = [(SimpleResultsViewController *)self traitCollection];
  [(SimpleResultsViewController *)self _updateHeaderWithContainerStyle:v4 traitCollection:v5];
}

- (void)setDisplayDistance:(BOOL)a3
{
  if (self->_displayDistance != a3)
  {
    self->_displayDistance = a3;
    [(SearchResultsDataSource *)self->_resultsDataSource setDisplayDistance:?];
  }
}

- (void)setCluster:(id)a3 sortAlphabetically:(BOOL)a4 originalSearchInfo:(id)a5 searchResults:(id)a6
{
  v8 = a4;
  v11 = a3;
  if (self->_cluster != v11)
  {
    v16 = v11;
    objc_storeStrong(&self->_cluster, a3);
    v12 = a6;
    v13 = a5;
    [(SimpleResultsViewController *)self setSearchResults:v12 sortAlphabetically:v8 originalSearchInfo:v13];

    if (v16)
    {
      resultsDataSource = self->_resultsDataSource;
      v15 = [(SearchResultsDataSource *)resultsDataSource impressionsSessionIdentifier];
      [SearchResultsAnalyticsManager didShowClusterWithDataSource:resultsDataSource impressionsSessionIdentifier:v15];
    }

    [(SimpleResultsViewController *)self updateTitle:1];
    v11 = v16;
  }
}

- (void)setCluster:(id)a3 sortAlphabetically:(BOOL)a4 originalSearchInfo:(id)a5
{
  v6 = a4;
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (self->_cluster != v9)
  {
    v24 = v6;
    v25 = v10;
    [(SimpleResultsViewController *)self loadViewIfNeeded];
    objc_storeStrong(&self->_cluster, a3);
    self->_isClusterResult = [(VKLabelMarker *)v9 clusterFeatureCount]!= 0;
    v12 = [(VKLabelMarker *)self->_cluster clusterFeatureAnnotations];
    v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v12 count]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v27;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v27 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v26 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v20 = [v19 searchResult];
            if (v20)
            {
              v21 = v20;
              [v13 addObject:v20];
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v16);
    }

    v11 = v25;
    [(SimpleResultsViewController *)self setSearchResults:v13 sortAlphabetically:v24 originalSearchInfo:v25];
    if (v9)
    {
      resultsDataSource = self->_resultsDataSource;
      v23 = [(SearchResultsDataSource *)resultsDataSource impressionsSessionIdentifier];
      [SearchResultsAnalyticsManager didShowClusterWithDataSource:resultsDataSource impressionsSessionIdentifier:v23];
    }
  }

  if (sub_10000FA08(self) != 5 && self->_isClusterResult && self->_isPresentingSearchAlongTheRouteResults)
  {
    [(NSLayoutConstraint *)self->_bottomConstraint setConstant:0.0];
    [(ContainerHeaderView *)self->_titleHeaderView setHairLineAlpha:1.0];
  }
}

- (void)setSearchResults:(id)a3 sortAlphabetically:(BOOL)a4 originalSearchInfo:(id)a5
{
  v6 = a4;
  v21 = a5;
  v9 = a3;
  v10 = +[NSUUID UUID];
  v11 = [(SimpleResultsViewController *)self impressionsCalculator];
  [v11 setSessionIdentifier:v10];

  objc_storeStrong(&self->_originalSearchInfo, a5);
  v12 = off_1015F60E8;
  if (!v6)
  {
    v12 = off_1015F6278;
  }

  v13 = [objc_alloc(*v12) initWithObjects:v9];

  if (self->_cluster)
  {
    if (self->_isClusterResult)
    {
      [(SearchResultsDataSource *)self->_resultsDataSource setApproxLocation:self->_approxLocation];
      [(SearchResultsDataSource *)self->_resultsDataSource setIsShowingClusterResults:self->_isClusterResult];
      if ([(SimpleResultsViewController *)self isPresentingSearchAlongTheRouteResults])
      {
        v14 = [self->_resultsDataSource currentLocation];

        if (!v14)
        {
          v15 = +[MKLocationManager sharedLocationManager];
          v16 = [v15 currentLocation];
          [(SearchResultsDataSource *)self->_resultsDataSource setApproxLocation:v16];
        }
      }
    }
  }

  v17 = [self->_originalSearchInfo placeSummaryMetadata];
  [(SearchResultsDataSource *)self->_resultsDataSource setPlaceSummaryMetadata:v17];

  v18 = [[SearchResultsDataSourceContent alloc] initWithOrderedDataSource:v13];
  [(SearchResultsDataSource *)self->_resultsDataSource setContent:v18];

  [(SearchResultsDataSource *)self->_resultsDataSource setDisplaysAsChainResult:[self->_originalSearchInfo isChainResults]];
  [(SearchResultsDataSource *)self->_resultsDataSource setPrefersAddressOverCategory:[self->_originalSearchInfo prefersAddressOverCategory]];
  v19 = [(SimpleResultsViewController *)self impressionsCalculator];
  v20 = [v19 sessionIdentifier];
  [(SearchResultsDataSource *)self->_resultsDataSource setImpressionsSessionIdentifier:v20];

  [(SimpleResultsViewController *)self updateTitle:0];
}

- (BOOL)containsMapItem:(id)a3
{
  v4 = a3;
  [(VKLabelMarker *)self->_cluster clusterFeatureAnnotations];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) searchResult];
        v10 = [v9 mapItem];

        if (v10 == v4)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)updatePreferredContentSize
{
  if (sub_10000FA08(self) == 5)
  {
    [(UITableView *)self->_tableView contentSize];
    v4 = v3;
    [(ContainerHeaderView *)self->_titleHeaderView frame];
    fmin(CGRectGetHeight(v6) + v4, 610.0);
    [(ContaineeViewController *)self macContaineeWidth];

    [(SimpleResultsViewController *)self setPreferredContentSize:?];
  }
}

- (void)updateTitle:(BOOL)a3
{
  v3 = a3;
  v5 = [(SearchResultsDataSource *)self->_resultsDataSource content];
  v6 = [v5 objects];
  v7 = [v6 count];

  if (sub_10000FA08(self) == 5)
  {
    title = self->_title;
    if (v3)
    {
      if (!title)
      {
        v9 = +[NSBundle mainBundle];
        v10 = v9;
        v11 = @"Stops [Marzipan Cluster Card]";
LABEL_12:
        v17 = [v9 localizedStringForKey:v11 value:@"localized string not found" table:0];
        v25 = [NSString localizedStringWithFormat:v17, v7];

        v14 = v25;
        goto LABEL_13;
      }
    }

    else if (!title)
    {
      v9 = +[NSBundle mainBundle];
      v10 = v9;
      v11 = @"Places [Marzipan Cluster Card]";
      goto LABEL_12;
    }

    v14 = title;
LABEL_13:
    v26 = v14;
    [(SimpleResultTitleView *)self->_macResultsTitleView setTitle:v14];
    goto LABEL_21;
  }

  if (v3)
  {
    v12 = +[NSBundle mainBundle];
    v13 = [v12 localizedStringForKey:@"Stops [Cluster Card]" value:@"localized string not found" table:0];

    v24 = [NSString localizedStringWithFormat:v13, v7];
  }

  else
  {
    v15 = self->_title;
    if (v15)
    {
      v16 = v15;
      goto LABEL_16;
    }

    v13 = +[NSBundle mainBundle];
    v18 = [v13 localizedStringForKey:@"Places [Cluster Card]" value:@"localized string not found" table:0];
    v24 = [NSString localizedStringWithFormat:v18, v7];
  }

  v16 = v24;
LABEL_16:
  v26 = v16;
  v19 = [NSString stringWithFormat:@"%@", v16];
  v20 = [self->_originalSearchInfo headerDisplayName];
  if ([v20 length] && -[SearchInfo isChainResults](self->_originalSearchInfo, "isChainResults"))
  {
    v21 = 0;
    v22 = v20;
    v23 = v19;
  }

  else
  {
    v23 = 0;
    v21 = 1;
    v22 = v19;
  }

  [(ResultsTitleView *)self->_resultsTitleView setTitle:v22];
  [(ResultsTitleView *)self->_resultsTitleView setSubtitle:v23];
  [(ResultsTitleView *)self->_resultsTitleView centerTitleVertically:v21];

LABEL_21:
}

- (void)scrollViewDidScroll:(id)a3
{
  v5.receiver = self;
  v5.super_class = SimpleResultsViewController;
  [(ContaineeViewController *)&v5 scrollViewDidScroll:a3];
  v4 = [(SimpleResultsViewController *)self impressionsCalculator];
  [v4 logImpressions];
}

- (void)didBecomeCurrent
{
  v7.receiver = self;
  v7.super_class = SimpleResultsViewController;
  [(ContaineeViewController *)&v7 didBecomeCurrent];
  v3 = [(SimpleResultsViewController *)self impressionsCalculator];
  [v3 setActive:1];

  v4 = [(SimpleResultsViewController *)self impressionsCalculator];
  v5 = [v4 hasImpressionElements];

  if ((v5 & 1) == 0)
  {
    v6 = [(SimpleResultsViewController *)self impressionsCalculator];
    [v6 logImpressions];
  }
}

- (void)didResignCurrent
{
  v4.receiver = self;
  v4.super_class = SimpleResultsViewController;
  [(ContaineeViewController *)&v4 didResignCurrent];
  v3 = [(SimpleResultsViewController *)self impressionsCalculator];
  [v3 setActive:0];
}

- (void)didChangeLayout:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = SimpleResultsViewController;
  [(ContaineeViewController *)&v5 didChangeLayout:a3];
  v4 = [(SimpleResultsViewController *)self impressionsCalculator];
  [v4 logImpressions];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = SimpleResultsViewController;
  [(ContaineeViewController *)&v4 viewDidLayoutSubviews];
  v3 = [(SimpleResultsViewController *)self impressionsCalculator];
  [v3 logImpressions];
}

- (SimpleResultsViewController)initWithShareDelegate:(id)a3 visualEffectDisabled:(BOOL)a4
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SimpleResultsViewController;
  v6 = [(SimpleResultsViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_shareDelegate, v5);
    v7->_displayDistance = 1;
  }

  return v7;
}

@end