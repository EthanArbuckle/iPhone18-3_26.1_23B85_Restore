@interface SimpleResultsViewController
- (BOOL)containsMapItem:(id)item;
- (BOOL)shouldQuickActionMenuPresenter:(id)presenter showDirectionsToPlace:(id)place;
- (MUScrollViewImpressionsCalculator)impressionsCalculator;
- (SimpleResultsViewController)initWithShareDelegate:(id)delegate visualEffectDisabled:(BOOL)disabled;
- (SimpleResultsViewControllerDelegate)resultsDelegate;
- (double)_searchAlongRouteHeaderHeightForStyle:(unint64_t)style traitCollection:(id)collection;
- (double)heightForLayout:(unint64_t)layout;
- (id)mapServiceTraitsForQuickActionPresenter:(id)presenter;
- (void)_updateHeaderWithContainerStyle:(unint64_t)style traitCollection:(id)collection;
- (void)applyAlphaToContent:(double)content;
- (void)dataSource:(id)source itemFocused:(id)focused;
- (void)dataSource:(id)source itemTapped:(id)tapped;
- (void)dataSourceUpdated:(id)updated;
- (void)didBecomeCurrent;
- (void)didChangeLayout:(unint64_t)layout;
- (void)didResignCurrent;
- (void)didTapOnAddStopWithSearchResult:(id)result atIndexPath:(id)path;
- (void)didTapOnCallWithSearchResult:(id)result;
- (void)didTapOnContainmentParentMapItem:(id)item;
- (void)didTapOnCuratedGuide:(id)guide;
- (void)didTapOnCuratedGuides:(id)guides;
- (void)didTapOnDirectionsWithSearchResult:(id)result;
- (void)didTapOnFlyoverWithSearchResult:(id)result;
- (void)didTapOnLookAroundWithSearchResult:(id)result;
- (void)didTapOnTappableEntry:(id)entry;
- (void)didTapOnUserGeneratedGuide:(id)guide;
- (void)didTapOnWebsiteWithSearchResult:(id)result;
- (void)handleDismissAction:(id)action;
- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type;
- (void)quickActionMenuPresenter:(id)presenter selectedCall:(id)call;
- (void)quickActionMenuPresenter:(id)presenter selectedDirectionsTo:(id)to;
- (void)quickActionMenuPresenter:(id)presenter selectedRemoveDroppedPinOf:(id)of;
- (void)quickActionMenuPresenter:(id)presenter selectedShareLocationOf:(id)of;
- (void)quickActionMenuPresenter:(id)presenter selectedShowPlaceCard:(id)card;
- (void)quickActionMenuPresenter:(id)presenter selectedViewWebsiteFor:(id)for;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setCluster:(id)cluster sortAlphabetically:(BOOL)alphabetically originalSearchInfo:(id)info;
- (void)setCluster:(id)cluster sortAlphabetically:(BOOL)alphabetically originalSearchInfo:(id)info searchResults:(id)results;
- (void)setDisplayDistance:(BOOL)distance;
- (void)setIsPresentingSearchAlongTheRouteResults:(BOOL)results;
- (void)setSearchResults:(id)results sortAlphabetically:(BOOL)alphabetically originalSearchInfo:(id)info;
- (void)updatePreferredContentSize;
- (void)updateTitle:(BOOL)title;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)willBecomeCurrent:(BOOL)current;
- (void)willChangeContainerStyle:(unint64_t)style;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
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

- (BOOL)shouldQuickActionMenuPresenter:(id)presenter showDirectionsToPlace:(id)place
{
  placeCopy = place;
  resultsDelegate = [(SimpleResultsViewController *)self resultsDelegate];
  venuesManagerForSimpleResults = [resultsDelegate venuesManagerForSimpleResults];
  mapItem = [placeCopy mapItem];

  LOBYTE(placeCopy) = [venuesManagerForSimpleResults isUserAtSameVenueAsMapItem:mapItem];
  return placeCopy ^ 1;
}

- (void)quickActionMenuPresenter:(id)presenter selectedRemoveDroppedPinOf:(id)of
{
  ofCopy = of;
  resultsDelegate = [(SimpleResultsViewController *)self resultsDelegate];
  [resultsDelegate simpleResultsViewContoller:0 removeDroppedPin:ofCopy];
}

- (id)mapServiceTraitsForQuickActionPresenter:(id)presenter
{
  resultsDelegate = [(SimpleResultsViewController *)self resultsDelegate];
  traits = [resultsDelegate traits];

  return traits;
}

- (void)quickActionMenuPresenter:(id)presenter selectedShowPlaceCard:(id)card
{
  searchResult = [card searchResult];
  if (searchResult)
  {
    v7 = searchResult;
    resultsDelegate = [(SimpleResultsViewController *)self resultsDelegate];
    [resultsDelegate simpleResultsViewContoller:self selectSearchResult:v7];

    searchResult = v7;
  }
}

- (void)quickActionMenuPresenter:(id)presenter selectedShareLocationOf:(id)of
{
  searchResult = [of searchResult];
  if (searchResult)
  {
    v9 = searchResult;
    contactForSharingToMessages = [searchResult contactForSharingToMessages];
    v7 = [ShareItem shareItemWithSearchResult:v9 contact:contactForSharingToMessages includePrintActivity:0];

    resultsDelegate = [(SimpleResultsViewController *)self resultsDelegate];
    [resultsDelegate simpleResultsViewContoller:0 doShareSheetForShareItem:v7 completion:0];

    searchResult = v9;
  }
}

- (void)quickActionMenuPresenter:(id)presenter selectedViewWebsiteFor:(id)for
{
  searchResult = [for searchResult];
  if (searchResult)
  {
    v7 = searchResult;
    resultsDelegate = [(SimpleResultsViewController *)self resultsDelegate];
    [resultsDelegate simpleResultsViewContoller:0 openWebsiteForSearchResult:v7];

    searchResult = v7;
  }
}

- (void)quickActionMenuPresenter:(id)presenter selectedCall:(id)call
{
  searchResult = [call searchResult];
  if (searchResult)
  {
    v7 = searchResult;
    resultsDelegate = [(SimpleResultsViewController *)self resultsDelegate];
    [resultsDelegate simpleResultsViewContoller:self doAudioCallToSearchResult:v7];

    searchResult = v7;
  }
}

- (void)quickActionMenuPresenter:(id)presenter selectedDirectionsTo:(id)to
{
  searchResult = [to searchResult];
  if (searchResult)
  {
    v6 = objc_alloc_init(SearchFieldItem);
    v7 = +[SearchResult currentLocationSearchResult];
    [(SearchFieldItem *)v6 setSearchResult:v7];

    v8 = objc_alloc_init(SearchFieldItem);
    [(SearchFieldItem *)v8 setSearchResult:searchResult];
    v9 = [DirectionItem alloc];
    v16[0] = v6;
    v16[1] = v8;
    v10 = [NSArray arrayWithObjects:v16 count:2];
    v11 = [(DirectionItem *)v9 initWithItems:v10 transportType:0];

    v14 = @"DirectionsSessionInitiatorKey";
    v15 = &off_1016E8030;
    v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    resultsDelegate = [(SimpleResultsViewController *)self resultsDelegate];
    [resultsDelegate simpleResultsViewContoller:self doDirectionItem:v11 withUserInfo:v12];
  }
}

- (void)handleDismissAction:(id)action
{
  v4.receiver = self;
  v4.super_class = SimpleResultsViewController;
  [(ContaineeViewController *)&v4 handleDismissAction:action];
  [(SimpleResultsViewController *)self _captureCloseAction];
  +[SearchResultsAnalyticsManager didCloseCluster];
}

- (double)heightForLayout:(unint64_t)layout
{
  if (layout - 3 < 3)
  {
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController availableHeight];
    v6 = v5;

    return v6;
  }

  if (layout != 2)
  {
    v6 = -1.0;
    if (layout == 1)
    {
      cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
      [cardPresentationController2 bottomSafeOffset];
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

- (void)willChangeContainerStyle:(unint64_t)style
{
  v6.receiver = self;
  v6.super_class = SimpleResultsViewController;
  [(ContaineeViewController *)&v6 willChangeContainerStyle:?];
  traitCollection = [(SimpleResultsViewController *)self traitCollection];
  [(SimpleResultsViewController *)self _updateHeaderWithContainerStyle:style traitCollection:traitCollection];
}

- (void)willBecomeCurrent:(BOOL)current
{
  v5.receiver = self;
  v5.super_class = SimpleResultsViewController;
  [(ContaineeViewController *)&v5 willBecomeCurrent:current];
  if (self->_cluster)
  {
    resultsDelegate = [(SimpleResultsViewController *)self resultsDelegate];
    [resultsDelegate simpleResultsViewContoller:self selectClusteredLabelMarker:self->_cluster];
  }
}

- (void)applyAlphaToContent:(double)content
{
  v5.receiver = self;
  v5.super_class = SimpleResultsViewController;
  [(ContaineeViewController *)&v5 applyAlphaToContent:?];
  if (sub_10000FA08(self) != 5 && (MapsFeature_IsEnabled_SearchAndDiscovery() & 1) == 0)
  {
    [(ContainerHeaderView *)self->_titleHeaderView setHairLineAlpha:content];
  }
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  v8.receiver = self;
  v8.super_class = SimpleResultsViewController;
  collectionCopy = collection;
  [(SimpleResultsViewController *)&v8 willTransitionToTraitCollection:collectionCopy withTransitionCoordinator:coordinator];
  v7 = [(ContaineeViewController *)self cardPresentationController:v8.receiver];
  -[SimpleResultsViewController _updateHeaderWithContainerStyle:traitCollection:](self, "_updateHeaderWithContainerStyle:traitCollection:", [v7 containerStyle], collectionCopy);
}

- (void)viewWillAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = SimpleResultsViewController;
  [(ContaineeViewController *)&v9 viewWillAppear:appear];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  containerStyle = [cardPresentationController containerStyle];
  traitCollection = [(SimpleResultsViewController *)self traitCollection];
  [(SimpleResultsViewController *)self _updateHeaderWithContainerStyle:containerStyle traitCollection:traitCollection];

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
  view = [(SimpleResultsViewController *)self view];
  [view setAccessibilityIdentifier:@"SimpleResultsView"];
  v4 = [ContainerHeaderView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(ContainerHeaderView *)v4 initWithFrame:CGRectZero.origin.x, y, width, height];
  titleHeaderView = self->_titleHeaderView;
  self->_titleHeaderView = height;

  [(ContainerHeaderView *)self->_titleHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ContainerHeaderView *)self->_titleHeaderView setDelegate:self];
  [view addSubview:self->_titleHeaderView];
  if (sub_10000FA08(self) == 5)
  {
    [(ContainerHeaderView *)self->_titleHeaderView setHairLineAlpha:0.0];
    height2 = [[SimpleResultTitleView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    p_macResultsTitleView = &self->_macResultsTitleView;
    macResultsTitleView = self->_macResultsTitleView;
    self->_macResultsTitleView = height2;

    [(SimpleResultTitleView *)self->_macResultsTitleView setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  else
  {
    height3 = [[ResultsTitleView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    p_macResultsTitleView = &self->_resultsTitleView;
    resultsTitleView = self->_resultsTitleView;
    self->_resultsTitleView = height3;

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
  height4 = [[MapsThemeTableView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  tableView = self->_tableView;
  self->_tableView = &height4->super;

  [(UITableView *)self->_tableView setAccessibilityIdentifier:@"SimpleResultsTableView"];
  [(UITableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = +[UIColor clearColor];
  [(UITableView *)self->_tableView setBackgroundColor:v19];

  [(UITableView *)self->_tableView setSectionHeaderTopPadding:0.0];
  [view addSubview:self->_tableView];
  v20 = sub_10000FA08(self);
  heightAnchor = [(ContainerHeaderView *)self->_titleHeaderView heightAnchor];
  v22 = heightAnchor;
  if (v20 == 5)
  {
    [heightAnchor constraintEqualToConstant:54.0];
  }

  else
  {
    [heightAnchor constraintGreaterThanOrEqualToConstant:54.0];
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

  bottomAnchor = [(UITableView *)self->_tableView bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v28 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-16.0];
  bottomConstraint = self->_bottomConstraint;
  self->_bottomConstraint = v28;

  v61[0] = self->_titleHeaderViewHeightConstraint;
  topAnchor = [(ContainerHeaderView *)self->_titleHeaderView topAnchor];
  topAnchor2 = [view topAnchor];
  v56 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v61[1] = v56;
  leadingAnchor = [(ContainerHeaderView *)self->_titleHeaderView leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  v53 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v61[2] = v53;
  trailingAnchor = [(ContainerHeaderView *)self->_titleHeaderView trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  v50 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v61[3] = v50;
  leadingAnchor3 = [(UITableView *)self->_tableView leadingAnchor];
  leadingAnchor4 = [view leadingAnchor];
  v30 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v25];
  v61[4] = v30;
  trailingAnchor3 = [(UITableView *)self->_tableView trailingAnchor];
  v59 = view;
  trailingAnchor4 = [view trailingAnchor];
  v33 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v61[5] = v33;
  topAnchor3 = [(UITableView *)self->_tableView topAnchor];
  bottomAnchor3 = [(ContainerHeaderView *)self->_titleHeaderView bottomAnchor];
  v36 = [topAnchor3 constraintEqualToAnchor:bottomAnchor3];
  v37 = self->_bottomConstraint;
  v61[6] = v36;
  v61[7] = v37;
  v38 = [NSArray arrayWithObjects:v61 count:8];
  [NSLayoutConstraint activateConstraints:v38];

  view2 = [(SimpleResultsViewController *)self view];
  [view2 layoutIfNeeded];

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
  deviceSupportsDragAndDrop = [v43 deviceSupportsDragAndDrop];

  if (deviceSupportsDragAndDrop)
  {
    [(UITableView *)self->_tableView setDragDelegate:self->_resultsDataSource];
  }

  [(UITableView *)self->_tableView reloadData];
  [(SimpleResultsViewController *)self updateTitle:0];
  [(SimpleResultsViewController *)self updatePreferredContentSize];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  containerStyle = [cardPresentationController containerStyle];
  traitCollection = [(SimpleResultsViewController *)self traitCollection];
  [(SimpleResultsViewController *)self _updateHeaderWithContainerStyle:containerStyle traitCollection:traitCollection];
}

- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type
{
  tappedCopy = tapped;
  v6 = sub_100067540();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9.receiver = self;
    v9.super_class = SimpleResultsViewController;
    v7 = [(SimpleResultsViewController *)&v9 class];
    *buf = 138412546;
    selfCopy = self;
    v12 = 2112;
    v13 = v7;
    v8 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Header view close button tapped. Self : %@, Super class: %@", buf, 0x16u);
  }

  [(SimpleResultsViewController *)self handleDismissAction:tappedCopy];
}

- (void)didTapOnAddStopWithSearchResult:(id)result atIndexPath:(id)path
{
  resultCopy = result;
  resultsDelegate = [(SimpleResultsViewController *)self resultsDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    resultsDelegate2 = [(SimpleResultsViewController *)self resultsDelegate];
    [resultsDelegate2 simpleResultsViewContoller:self didTapOnAddStopWithSearchResult:resultCopy];
  }
}

- (void)didTapOnTappableEntry:(id)entry
{
  entryCopy = entry;
  resultsDelegate = [(SimpleResultsViewController *)self resultsDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    resultsDelegate2 = [(SimpleResultsViewController *)self resultsDelegate];
    results = [self->_originalSearchInfo results];
    [resultsDelegate2 simpleResultsViewContoller:self selectTappableEntry:entryCopy resultsList:results];
  }
}

- (void)didTapOnContainmentParentMapItem:(id)item
{
  itemCopy = item;
  resultsDelegate = [(SimpleResultsViewController *)self resultsDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    resultsDelegate2 = [(SimpleResultsViewController *)self resultsDelegate];
    results = [self->_originalSearchInfo results];
    [resultsDelegate2 simpleResultsViewContoller:self selectContainmentParentMapItem:itemCopy resultsList:results];
  }
}

- (void)didTapOnFlyoverWithSearchResult:(id)result
{
  resultCopy = result;
  resultsDelegate = [(SimpleResultsViewController *)self resultsDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    resultsDelegate2 = [(SimpleResultsViewController *)self resultsDelegate];
    [resultsDelegate2 simpleResultsViewContoller:self didTapOnFlyoverWithSearchResult:resultCopy];
  }
}

- (void)didTapOnWebsiteWithSearchResult:(id)result
{
  resultCopy = result;
  resultsDelegate = [(SimpleResultsViewController *)self resultsDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    resultsDelegate2 = [(SimpleResultsViewController *)self resultsDelegate];
    [resultsDelegate2 simpleResultsViewContoller:self didTapOnWebsiteWithSearchResult:resultCopy];
  }
}

- (void)didTapOnCallWithSearchResult:(id)result
{
  resultCopy = result;
  resultsDelegate = [(SimpleResultsViewController *)self resultsDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    resultsDelegate2 = [(SimpleResultsViewController *)self resultsDelegate];
    [resultsDelegate2 simpleResultsViewContoller:self didTapOnCallWithSearchResult:resultCopy];
  }
}

- (void)didTapOnLookAroundWithSearchResult:(id)result
{
  resultCopy = result;
  resultsDelegate = [(SimpleResultsViewController *)self resultsDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    resultsDelegate2 = [(SimpleResultsViewController *)self resultsDelegate];
    [resultsDelegate2 simpleResultsViewContoller:self didTapOnLookAroundWithSearchResult:resultCopy];
  }
}

- (void)didTapOnDirectionsWithSearchResult:(id)result
{
  resultCopy = result;
  resultsDelegate = [(SimpleResultsViewController *)self resultsDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_alloc_init(SearchFieldItem);
    v8 = +[SearchResult currentLocationSearchResult];
    [(SearchFieldItem *)v7 setSearchResult:v8];

    v9 = [SearchFieldItem searchFieldItemWithObject:resultCopy];
    v10 = [DirectionItem alloc];
    v14[0] = v7;
    v14[1] = v9;
    v11 = [NSArray arrayWithObjects:v14 count:2];
    v12 = [(DirectionItem *)v10 initWithItems:v11 ignoreMapType:0 transportType:0];

    resultsDelegate2 = [(SimpleResultsViewController *)self resultsDelegate];
    [resultsDelegate2 simpleResultsViewContoller:self selectDirectionItem:v12];
  }
}

- (void)didTapOnCuratedGuides:(id)guides
{
  guidesCopy = guides;
  resultsDelegate = [(SimpleResultsViewController *)self resultsDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    resultsDelegate2 = [(SimpleResultsViewController *)self resultsDelegate];
    [resultsDelegate2 simpleResultsViewContoller:self showCuratedCollectionsList:guidesCopy title:0];
  }
}

- (void)didTapOnCuratedGuide:(id)guide
{
  guideCopy = guide;
  resultsDelegate = [(SimpleResultsViewController *)self resultsDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    resultsDelegate2 = [(SimpleResultsViewController *)self resultsDelegate];
    [resultsDelegate2 simpleResultsViewContoller:self showCuratedCollection:guideCopy];
  }
}

- (void)didTapOnUserGeneratedGuide:(id)guide
{
  guideCopy = guide;
  resultsDelegate = [(SimpleResultsViewController *)self resultsDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    resultsDelegate2 = [(SimpleResultsViewController *)self resultsDelegate];
    [resultsDelegate2 simpleResultsViewContoller:self showUserGeneratedCollection:guideCopy];
  }
}

- (void)dataSource:(id)source itemTapped:(id)tapped
{
  tappedCopy = tapped;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    resultsDelegate = [(SimpleResultsViewController *)self resultsDelegate];
    [resultsDelegate simpleResultsViewContoller:self selectSearchResult:tappedCopy];

    [(SimpleResultsViewController *)self _captureTapActionWithSearchResult:tappedCopy];
    objc_storeStrong(&self->_lastItemTapped, tapped);
  }
}

- (void)dataSource:(id)source itemFocused:(id)focused
{
  focusedCopy = focused;
  if (sub_10000FA08(self) != 5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      resultsDelegate = [(SimpleResultsViewController *)self resultsDelegate];
      [resultsDelegate simpleResultsViewContoller:self focusSearchResult:focusedCopy];

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

- (void)dataSourceUpdated:(id)updated
{
  [(UITableView *)self->_tableView reloadData];
  [(UITableView *)self->_tableView layoutIfNeeded];
  [(SimpleResultsViewController *)self updateTitle:0];

  [(SimpleResultsViewController *)self updatePreferredContentSize];
}

- (double)_searchAlongRouteHeaderHeightForStyle:(unint64_t)style traitCollection:(id)collection
{
  v4 = sub_100A5FC54(style, collection);
  result = 75.0;
  if (v4)
  {
    return 53.0;
  }

  return result;
}

- (void)_updateHeaderWithContainerStyle:(unint64_t)style traitCollection:(id)collection
{
  collectionCopy = collection;
  [(ContainerHeaderView *)self->_titleHeaderView setShouldCenterButtonVertically:[(SimpleResultsViewController *)self isPresentingSearchAlongTheRouteResults]];
  if ([(SimpleResultsViewController *)self isPresentingSearchAlongTheRouteResults])
  {
    [(SimpleResultsViewController *)self _searchAlongRouteHeaderHeightForStyle:style traitCollection:collectionCopy];
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

- (void)setIsPresentingSearchAlongTheRouteResults:(BOOL)results
{
  self->_isPresentingSearchAlongTheRouteResults = results;
  [(SearchResultsDataSource *)self->_resultsDataSource setIsPresentingSearchAlongTheRouteResults:?];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  containerStyle = [cardPresentationController containerStyle];
  traitCollection = [(SimpleResultsViewController *)self traitCollection];
  [(SimpleResultsViewController *)self _updateHeaderWithContainerStyle:containerStyle traitCollection:traitCollection];
}

- (void)setDisplayDistance:(BOOL)distance
{
  if (self->_displayDistance != distance)
  {
    self->_displayDistance = distance;
    [(SearchResultsDataSource *)self->_resultsDataSource setDisplayDistance:?];
  }
}

- (void)setCluster:(id)cluster sortAlphabetically:(BOOL)alphabetically originalSearchInfo:(id)info searchResults:(id)results
{
  alphabeticallyCopy = alphabetically;
  clusterCopy = cluster;
  if (self->_cluster != clusterCopy)
  {
    v16 = clusterCopy;
    objc_storeStrong(&self->_cluster, cluster);
    resultsCopy = results;
    infoCopy = info;
    [(SimpleResultsViewController *)self setSearchResults:resultsCopy sortAlphabetically:alphabeticallyCopy originalSearchInfo:infoCopy];

    if (v16)
    {
      resultsDataSource = self->_resultsDataSource;
      impressionsSessionIdentifier = [(SearchResultsDataSource *)resultsDataSource impressionsSessionIdentifier];
      [SearchResultsAnalyticsManager didShowClusterWithDataSource:resultsDataSource impressionsSessionIdentifier:impressionsSessionIdentifier];
    }

    [(SimpleResultsViewController *)self updateTitle:1];
    clusterCopy = v16;
  }
}

- (void)setCluster:(id)cluster sortAlphabetically:(BOOL)alphabetically originalSearchInfo:(id)info
{
  alphabeticallyCopy = alphabetically;
  clusterCopy = cluster;
  infoCopy = info;
  v11 = infoCopy;
  if (self->_cluster != clusterCopy)
  {
    v24 = alphabeticallyCopy;
    v25 = infoCopy;
    [(SimpleResultsViewController *)self loadViewIfNeeded];
    objc_storeStrong(&self->_cluster, cluster);
    self->_isClusterResult = [(VKLabelMarker *)clusterCopy clusterFeatureCount]!= 0;
    clusterFeatureAnnotations = [(VKLabelMarker *)self->_cluster clusterFeatureAnnotations];
    v13 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [clusterFeatureAnnotations count]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v14 = clusterFeatureAnnotations;
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
            searchResult = [v19 searchResult];
            if (searchResult)
            {
              v21 = searchResult;
              [v13 addObject:searchResult];
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v16);
    }

    v11 = v25;
    [(SimpleResultsViewController *)self setSearchResults:v13 sortAlphabetically:v24 originalSearchInfo:v25];
    if (clusterCopy)
    {
      resultsDataSource = self->_resultsDataSource;
      impressionsSessionIdentifier = [(SearchResultsDataSource *)resultsDataSource impressionsSessionIdentifier];
      [SearchResultsAnalyticsManager didShowClusterWithDataSource:resultsDataSource impressionsSessionIdentifier:impressionsSessionIdentifier];
    }
  }

  if (sub_10000FA08(self) != 5 && self->_isClusterResult && self->_isPresentingSearchAlongTheRouteResults)
  {
    [(NSLayoutConstraint *)self->_bottomConstraint setConstant:0.0];
    [(ContainerHeaderView *)self->_titleHeaderView setHairLineAlpha:1.0];
  }
}

- (void)setSearchResults:(id)results sortAlphabetically:(BOOL)alphabetically originalSearchInfo:(id)info
{
  alphabeticallyCopy = alphabetically;
  infoCopy = info;
  resultsCopy = results;
  v10 = +[NSUUID UUID];
  impressionsCalculator = [(SimpleResultsViewController *)self impressionsCalculator];
  [impressionsCalculator setSessionIdentifier:v10];

  objc_storeStrong(&self->_originalSearchInfo, info);
  v12 = off_1015F60E8;
  if (!alphabeticallyCopy)
  {
    v12 = off_1015F6278;
  }

  v13 = [objc_alloc(*v12) initWithObjects:resultsCopy];

  if (self->_cluster)
  {
    if (self->_isClusterResult)
    {
      [(SearchResultsDataSource *)self->_resultsDataSource setApproxLocation:self->_approxLocation];
      [(SearchResultsDataSource *)self->_resultsDataSource setIsShowingClusterResults:self->_isClusterResult];
      if ([(SimpleResultsViewController *)self isPresentingSearchAlongTheRouteResults])
      {
        currentLocation = [self->_resultsDataSource currentLocation];

        if (!currentLocation)
        {
          v15 = +[MKLocationManager sharedLocationManager];
          currentLocation2 = [v15 currentLocation];
          [(SearchResultsDataSource *)self->_resultsDataSource setApproxLocation:currentLocation2];
        }
      }
    }
  }

  placeSummaryMetadata = [self->_originalSearchInfo placeSummaryMetadata];
  [(SearchResultsDataSource *)self->_resultsDataSource setPlaceSummaryMetadata:placeSummaryMetadata];

  v18 = [[SearchResultsDataSourceContent alloc] initWithOrderedDataSource:v13];
  [(SearchResultsDataSource *)self->_resultsDataSource setContent:v18];

  [(SearchResultsDataSource *)self->_resultsDataSource setDisplaysAsChainResult:[self->_originalSearchInfo isChainResults]];
  [(SearchResultsDataSource *)self->_resultsDataSource setPrefersAddressOverCategory:[self->_originalSearchInfo prefersAddressOverCategory]];
  impressionsCalculator2 = [(SimpleResultsViewController *)self impressionsCalculator];
  sessionIdentifier = [impressionsCalculator2 sessionIdentifier];
  [(SearchResultsDataSource *)self->_resultsDataSource setImpressionsSessionIdentifier:sessionIdentifier];

  [(SimpleResultsViewController *)self updateTitle:0];
}

- (BOOL)containsMapItem:(id)item
{
  itemCopy = item;
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

        searchResult = [*(*(&v12 + 1) + 8 * i) searchResult];
        mapItem = [searchResult mapItem];

        if (mapItem == itemCopy)
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

- (void)updateTitle:(BOOL)title
{
  titleCopy = title;
  content = [(SearchResultsDataSource *)self->_resultsDataSource content];
  objects = [content objects];
  v7 = [objects count];

  if (sub_10000FA08(self) == 5)
  {
    title = self->_title;
    if (titleCopy)
    {
      if (!title)
      {
        v9 = +[NSBundle mainBundle];
        v10 = v9;
        v11 = @"Stops [Marzipan Cluster Card]";
LABEL_12:
        v17 = [v9 localizedStringForKey:v11 value:@"localized string not found" table:0];
        v25 = [NSString localizedStringWithFormat:v17, v7];

        titleCopy2 = v25;
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

    titleCopy2 = title;
LABEL_13:
    v26 = titleCopy2;
    [(SimpleResultTitleView *)self->_macResultsTitleView setTitle:titleCopy2];
    goto LABEL_21;
  }

  if (titleCopy)
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
  headerDisplayName = [self->_originalSearchInfo headerDisplayName];
  if ([headerDisplayName length] && -[SearchInfo isChainResults](self->_originalSearchInfo, "isChainResults"))
  {
    v21 = 0;
    v22 = headerDisplayName;
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

- (void)scrollViewDidScroll:(id)scroll
{
  v5.receiver = self;
  v5.super_class = SimpleResultsViewController;
  [(ContaineeViewController *)&v5 scrollViewDidScroll:scroll];
  impressionsCalculator = [(SimpleResultsViewController *)self impressionsCalculator];
  [impressionsCalculator logImpressions];
}

- (void)didBecomeCurrent
{
  v7.receiver = self;
  v7.super_class = SimpleResultsViewController;
  [(ContaineeViewController *)&v7 didBecomeCurrent];
  impressionsCalculator = [(SimpleResultsViewController *)self impressionsCalculator];
  [impressionsCalculator setActive:1];

  impressionsCalculator2 = [(SimpleResultsViewController *)self impressionsCalculator];
  hasImpressionElements = [impressionsCalculator2 hasImpressionElements];

  if ((hasImpressionElements & 1) == 0)
  {
    impressionsCalculator3 = [(SimpleResultsViewController *)self impressionsCalculator];
    [impressionsCalculator3 logImpressions];
  }
}

- (void)didResignCurrent
{
  v4.receiver = self;
  v4.super_class = SimpleResultsViewController;
  [(ContaineeViewController *)&v4 didResignCurrent];
  impressionsCalculator = [(SimpleResultsViewController *)self impressionsCalculator];
  [impressionsCalculator setActive:0];
}

- (void)didChangeLayout:(unint64_t)layout
{
  v5.receiver = self;
  v5.super_class = SimpleResultsViewController;
  [(ContaineeViewController *)&v5 didChangeLayout:layout];
  impressionsCalculator = [(SimpleResultsViewController *)self impressionsCalculator];
  [impressionsCalculator logImpressions];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = SimpleResultsViewController;
  [(ContaineeViewController *)&v4 viewDidLayoutSubviews];
  impressionsCalculator = [(SimpleResultsViewController *)self impressionsCalculator];
  [impressionsCalculator logImpressions];
}

- (SimpleResultsViewController)initWithShareDelegate:(id)delegate visualEffectDisabled:(BOOL)disabled
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = SimpleResultsViewController;
  v6 = [(SimpleResultsViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_shareDelegate, delegateCopy);
    v7->_displayDistance = 1;
  }

  return v7;
}

@end