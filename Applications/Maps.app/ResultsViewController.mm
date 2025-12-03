@interface ResultsViewController
+ (BOOL)isReloadingRefinementsWithSearchSession:(id)session;
- (BOOL)hasResults;
- (BOOL)isShowingOmnipresentSearchBar;
- (BOOL)isWaitingForResults;
- (BOOL)shouldQuickActionMenuPresenter:(id)presenter showDirectionsToPlace:(id)place;
- (BOOL)shouldShowSearchOverlay;
- (NSDictionary)searchResultCountInVenue;
- (ResultsViewControllerDelegate)resultsDelegate;
- (VKVenueFeatureMarker)venueWithFocus;
- (double)heightForLayout:(unint64_t)layout;
- (double)topSpaceForScrollPocket;
- (id)_displayMessageForNoInternet;
- (id)_displayMessageFromError;
- (id)contentTableView;
- (id)errorModeView;
- (id)impressionsCalculator;
- (id)initForOmipresentSearchBar:(BOOL)bar;
- (id)loadingModeView;
- (id)loadingString;
- (id)localSearchViewController;
- (id)mapServiceTraitsForQuickActionPresenter:(id)presenter;
- (id)noResultString;
- (id)refineSearchText;
- (int)currentUITargetForAnalytics;
- (int)listForDataSource:(id)source;
- (int)refineSearchSessionType;
- (int64_t)floatingControlsOptions;
- (void)_hideSearchHereControl;
- (void)_showOfflineErrorView;
- (void)_updateHairlineVisibility;
- (void)_updateLoadingErrorFrames;
- (void)_updateResultRefinementBarFromSearchInfo:(id)info;
- (void)allRefinementsApplyViewModel:(id)model selectionSequenceNumber:(id)number;
- (void)applyAlphaToContent:(double)content;
- (void)configureHeader;
- (void)dataSource:(id)source itemFocused:(id)focused;
- (void)dataSource:(id)source itemTapped:(id)tapped;
- (void)dataSourceUpdated:(id)updated;
- (void)didBecomeCurrent;
- (void)didCachePlaceSummaryTemplates;
- (void)didChangeLayout:(unint64_t)layout;
- (void)didMoveToParentViewController:(id)controller;
- (void)didResignCurrent;
- (void)didTapOnAddAPlace;
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
- (void)didTapOnUserLibraryMapItem:(id)item;
- (void)didTapOnWebsiteWithSearchResult:(id)result;
- (void)editSearchButtonTapped;
- (void)handleDismissAction:(id)action;
- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type;
- (void)headerViewTapped:(id)tapped;
- (void)increasResultRefinementsSelectionSequenceNumber;
- (void)localSearchViewControllerDidSelectRefreshSearchHere:(id)here;
- (void)logNoSearchResult;
- (void)mapView:(id)view didChangeUserTrackingMode:(int64_t)mode animated:(BOOL)animated fromTrackingButton:(BOOL)button;
- (void)mapView:(id)view didStopRespondingToGesture:(int64_t)gesture zoomDirection:(int64_t)direction zoomGestureType:(int64_t)type didDecelerate:(BOOL)decelerate tiltDirection:(int64_t)tiltDirection;
- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated;
- (void)mapView:(id)view willStartRespondingToGesture:(int64_t)gesture animated:(BOOL)animated;
- (void)quickActionMenuPresenter:(id)presenter selectedCall:(id)call;
- (void)quickActionMenuPresenter:(id)presenter selectedDirectionsTo:(id)to;
- (void)quickActionMenuPresenter:(id)presenter selectedRemoveDroppedPinOf:(id)of;
- (void)quickActionMenuPresenter:(id)presenter selectedShareLocationOf:(id)of;
- (void)quickActionMenuPresenter:(id)presenter selectedShowPlaceCard:(id)card;
- (void)quickActionMenuPresenter:(id)presenter selectedViewWebsiteFor:(id)for;
- (void)refreshCurrentSearch;
- (void)refreshEVChargers:(id)chargers;
- (void)resultRefinementsBarApplyMultiSelectViewModel:(id)model atIndex:(id)index;
- (void)resultRefinementsBarApplyOpenOptionViewModel:(id)model atIndex:(id)index;
- (void)resultRefinementsBarDidTapOnMultiSelect:(id)select tappedAtIndex:(int64_t)index;
- (void)resultRefinementsBarDidTapOnOpenOptions:(id)options tappedAtIndex:(int64_t)index;
- (void)resultRefinementsBarDidTapOnSeeAllRefinements:(id)refinements;
- (void)resultRefinementsBarDidTapOnToggle:(id)toggle isSelected:(BOOL)selected;
- (void)resultRefinementsBarDidUpdateViewModel:(id)model;
- (void)routeToCuratedCollection:(id)collection;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)searchDidCancel:(BOOL)cancel;
- (void)setDataSource:(id)source;
- (void)setHeaderContentWithSearchSession:(id)session;
- (void)setHideHeader:(BOOL)header;
- (void)setHideRefinementsBar:(BOOL)bar;
- (void)setResultsList:(id)list;
- (void)setupConstraints;
- (void)showError:(id)error hideRefinementsBar:(BOOL)bar;
- (void)showSearchingHereIfNeeded:(BOOL)needed;
- (void)updateRefinementBarAlpha;
- (void)updateSearchSession:(id)session;
- (void)viewControllerDidSelectBrowseVenue:(id)venue;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)waitingData;
- (void)willBecomeCurrent:(BOOL)current;
- (void)willChangeContainerStyle:(unint64_t)style;
@end

@implementation ResultsViewController

- (ResultsViewControllerDelegate)resultsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_resultsDelegate);

  return WeakRetained;
}

- (void)routeToCuratedCollection:(id)collection
{
  collectionCopy = collection;
  resultsDelegate = [(ResultsViewController *)self resultsDelegate];
  [resultsDelegate showCuratedCollection:collectionCopy viewController:self];
}

- (void)_updateHairlineVisibility
{
  _shouldHideHairline = [(ResultsViewController *)self _shouldHideHairline];
  v4 = 1.0;
  if (_shouldHideHairline)
  {
    v4 = 0.0;
  }

  containerHeaderView = self->_containerHeaderView;

  [(ContainerHeaderView *)containerHeaderView setHairLineAlpha:v4];
}

- (void)scrollViewDidScroll:(id)scroll
{
  v4.receiver = self;
  v4.super_class = ResultsViewController;
  [(ContaineeViewController *)&v4 scrollViewDidScroll:scroll];
  [(MUScrollViewImpressionsCalculator *)self->_impressionsCalculator logImpressions];
  [(ResultsViewController *)self _updateHairlineVisibility];
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  v11.receiver = self;
  v11.super_class = ResultsViewController;
  [(ContaineeViewController *)&v11 scrollViewWillEndDragging:dragging withVelocity:offset targetContentOffset:velocity.x];
  v7 = objc_alloc_init(SearchSessionAnalytics);
  [(SearchSessionAnalytics *)v7 setTarget:[(ResultsViewController *)self currentUITargetForAnalytics]];
  if (y <= 0.0)
  {
    v8 = 7;
  }

  else
  {
    v8 = 8;
  }

  [(SearchSessionAnalytics *)v7 setAction:v8];
  v9 = +[MKMapService sharedService];
  [v9 captureUserAction:v8 onTarget:-[ResultsViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

  v10 = +[SearchSessionAnalyticsAggregator sharedAggregator];
  [v10 collectSearchSessionAnalytics:v7];
}

- (void)viewControllerDidSelectBrowseVenue:(id)venue
{
  resultsDelegate = [(ResultsViewController *)self resultsDelegate];
  venuesManagerForSearchResults = [resultsDelegate venuesManagerForSearchResults];
  [venuesManagerForSearchResults presentPlaceCardForVenueWithFocusAndAddToHistory:1 source:7 centeringOnVenue:0];
}

- (void)localSearchViewControllerDidSelectRefreshSearchHere:(id)here
{
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:2011 onTarget:-[ResultsViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

  [(ResultsViewController *)self refreshCurrentSearch];
}

- (VKVenueFeatureMarker)venueWithFocus
{
  resultsDelegate = [(ResultsViewController *)self resultsDelegate];
  venuesManagerForSearchResults = [resultsDelegate venuesManagerForSearchResults];
  venueWithFocus = [venuesManagerForSearchResults venueWithFocus];

  return venueWithFocus;
}

- (void)editSearchButtonTapped
{
  if ([(ResultsViewController *)self isPresentingAddStopResultsFromWaypointEditor])
  {

    [(ResultsViewController *)self handleDismissAction:0];
  }

  else
  {
    [(ResultsViewController *)self setResultsList:0];
    [(ResultsViewController *)self resetRefinementsSequenceNumber];
    v3 = self->_searchSession;
    resultsDelegate = [(ResultsViewController *)self resultsDelegate];
    searchFieldItem = [(SearchSession *)v3 searchFieldItem];

    [resultsDelegate presentSearchResultsRestoringSearchItem:searchFieldItem];
  }
}

- (void)configureHeader
{
  v3 = [ContainerHeaderView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(ContainerHeaderView *)v3 initWithFrame:CGRectZero.origin.x, y, width, height];
  containerHeaderView = self->_containerHeaderView;
  self->_containerHeaderView = height;

  [(ContainerHeaderView *)self->_containerHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ContainerHeaderView *)self->_containerHeaderView setDelegate:self];
  v9 = +[UIColor clearColor];
  [(ContainerHeaderView *)self->_containerHeaderView setBackgroundColor:v9];

  [(ContainerHeaderView *)self->_containerHeaderView setHairLineAlpha:0.0];
  if (![(ResultsViewController *)self isShowingOmnipresentSearchBar])
  {
    height2 = [[ResultsTitleView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    resultsTitleView = self->_resultsTitleView;
    self->_resultsTitleView = height2;

    [(ResultsTitleView *)self->_resultsTitleView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ResultsTitleView *)self->_resultsTitleView setDelegate:self];
  }

  v12 = objc_alloc_init(_TtC4Maps20RefinementsBarUIView);
  refinementsBar = self->_refinementsBar;
  self->_refinementsBar = v12;

  [(RefinementsBarUIView *)self->_refinementsBar setTranslatesAutoresizingMaskIntoConstraints:0];
  heightAnchor = [(RefinementsBarUIView *)self->_refinementsBar heightAnchor];
  v15 = [heightAnchor constraintEqualToConstant:0.0];
  refinementsBarZeroHeight = self->_refinementsBarZeroHeight;
  self->_refinementsBarZeroHeight = v15;

  [(ResultsViewController *)self setHideRefinementsBar:1];
  v17 = objc_alloc_init(NSMutableArray);
  v57 = v17;
  if ([(ResultsViewController *)self isShowingOmnipresentSearchBar])
  {
    v18 = sub_100067540();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      [(ResultsViewController *)self topSpaceForRefinements];
      *buf = 134217984;
      v60 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "[SearchVC] configuring header topSpaceForRefinements: %f", buf, 0xCu);
    }

    [(ContainerHeaderView *)self->_containerHeaderView setButtonHidden:1];
    [(ContainerHeaderView *)self->_containerHeaderView setTitleHidden:1];
    contentView = [(ContaineeViewController *)self contentView];
    [contentView addSubview:self->_refinementsBar];

    trailingAnchor = [(RefinementsBarUIView *)self->_refinementsBar trailingAnchor];
    contentView2 = [(ContaineeViewController *)self contentView];
    trailingAnchor2 = [contentView2 trailingAnchor];
    v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v17 addObject:v24];

    leadingAnchor = [(RefinementsBarUIView *)self->_refinementsBar leadingAnchor];
    contentView3 = [(ContaineeViewController *)self contentView];
    leadingAnchor2 = [contentView3 leadingAnchor];
    v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v17 addObject:v28];

    topAnchor = [(RefinementsBarUIView *)self->_refinementsBar topAnchor];
    contentView4 = [(ContaineeViewController *)self contentView];
    topAnchor2 = [contentView4 topAnchor];
    [(ResultsViewController *)self topSpaceForRefinements];
    v32 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
    [v17 addObject:v32];
  }

  else
  {
    [(ContainerHeaderView *)self->_containerHeaderView setTitleView:self->_resultsTitleView];
    [(ContainerHeaderView *)self->_containerHeaderView setAccessoryView:self->_refinementsBar];
  }

  if ([(ResultsViewController *)self isShowingOmnipresentSearchBar])
  {
    v33 = 1.0;
  }

  else
  {
    v33 = 82.0;
  }

  v34 = +[UIColor clearColor];
  headerView = [(ContaineeViewController *)self headerView];
  [headerView setBackgroundColor:v34];

  headerView2 = [(ContaineeViewController *)self headerView];
  [headerView2 addSubview:self->_containerHeaderView];

  heightAnchor2 = [(ContainerHeaderView *)self->_containerHeaderView heightAnchor];
  v55 = [heightAnchor2 constraintGreaterThanOrEqualToConstant:v33];
  v58[0] = v55;
  leadingAnchor3 = [(ContainerHeaderView *)self->_containerHeaderView leadingAnchor];
  headerView3 = [(ContaineeViewController *)self headerView];
  leadingAnchor4 = [headerView3 leadingAnchor];
  v51 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v58[1] = v51;
  trailingAnchor3 = [(ContainerHeaderView *)self->_containerHeaderView trailingAnchor];
  headerView4 = [(ContaineeViewController *)self headerView];
  trailingAnchor4 = [headerView4 trailingAnchor];
  v47 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v58[2] = v47;
  topAnchor3 = [(ContainerHeaderView *)self->_containerHeaderView topAnchor];
  headerView5 = [(ContaineeViewController *)self headerView];
  topAnchor4 = [headerView5 topAnchor];
  v40 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v58[3] = v40;
  bottomAnchor = [(ContainerHeaderView *)self->_containerHeaderView bottomAnchor];
  headerView6 = [(ContaineeViewController *)self headerView];
  bottomAnchor2 = [headerView6 bottomAnchor];
  v44 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v45 = self->_refinementsBarZeroHeight;
  v58[4] = v44;
  v58[5] = v45;
  v46 = [NSArray arrayWithObjects:v58 count:6];
  [v57 addObjectsFromArray:v46];

  [NSLayoutConstraint activateConstraints:v57];
}

- (void)setHideRefinementsBar:(BOOL)bar
{
  barCopy = bar;
  refinementsBar = self->_refinementsBar;
  if (!refinementsBar)
  {
    v6 = sub_100067540();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromBOOL();
      *buf = 134218498;
      selfCopy = self;
      v16 = 2080;
      v17 = "[ResultsViewController setHideRefinementsBar:]";
      v18 = 2112;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%p] %s setting refinement bar visibility:%@ when we have not configured header", buf, 0x20u);
    }

    v8 = sub_100067540();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = +[NSThread callStackSymbols];
      *buf = 138412290;
      selfCopy = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Call stack: %@", buf, 0xCu);
    }

    [(ResultsViewController *)self configureHeader];
    refinementsBar = self->_refinementsBar;
  }

  [(RefinementsBarUIView *)refinementsBar setHidden:barCopy];
  if (barCopy)
  {
    self->_lastRefinementOriginType = 0;
    [(ResultsViewController *)self resetRefinementsSequenceNumber];
    [(RefinementsBarUIView *)self->_refinementsBar setViewModel:0];
    refinementsBarZeroHeight = self->_refinementsBarZeroHeight;
    v10 = [NSArray arrayWithObjects:&refinementsBarZeroHeight count:1];
    [NSLayoutConstraint activateConstraints:v10];
  }

  else
  {
    v12 = self->_refinementsBarZeroHeight;
    v10 = [NSArray arrayWithObjects:&v12 count:1];
    [NSLayoutConstraint deactivateConstraints:v10];
  }

  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController updateHeightForCurrentLayout];
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
    if ([(ResultsViewController *)self isShowingOmnipresentSearchBar])
    {
      v11 = 0.0;
    }

    else
    {
      v11 = v10;
    }

    [(ContainerHeaderView *)self->_containerHeaderView setHairLineAlpha:v11];
    [(RefinementsBarUIView *)self->_refinementsBar setAlpha:v10];

    [(ResultsViewController *)self _updateLoadingErrorFrames];
  }
}

- (int64_t)floatingControlsOptions
{
  v7.receiver = self;
  v7.super_class = ResultsViewController;
  floatingControlsOptions = [(ControlContaineeViewController *)&v7 floatingControlsOptions];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  containerStyle = [cardPresentationController containerStyle];

  if (containerStyle == 6)
  {
    return floatingControlsOptions | 4;
  }

  else
  {
    return floatingControlsOptions;
  }
}

- (void)mapView:(id)view didChangeUserTrackingMode:(int64_t)mode animated:(BOOL)animated fromTrackingButton:(BOOL)button
{
  buttonCopy = button;
  viewCopy = view;
  if (![(ResultsViewController *)self isShowingOmnipresentSearchBar]&& buttonCopy)
  {
    self->_tappedTrackingButton = 1;
    localSearchViewController = [(ResultsViewController *)self localSearchViewController];
    refreshSearchHereBusinessController = [localSearchViewController refreshSearchHereBusinessController];
    [refreshSearchHereBusinessController didStartRespondingToGesture:viewCopy];
  }
}

- (void)mapView:(id)view didStopRespondingToGesture:(int64_t)gesture zoomDirection:(int64_t)direction zoomGestureType:(int64_t)type didDecelerate:(BOOL)decelerate tiltDirection:(int64_t)tiltDirection
{
  viewCopy = view;
  if (![(ResultsViewController *)self isShowingOmnipresentSearchBar])
  {
    localSearchViewController = [(ResultsViewController *)self localSearchViewController];
    refreshSearchHereBusinessController = [localSearchViewController refreshSearchHereBusinessController];
    v11 = [refreshSearchHereBusinessController didStopRespondingToGesture:viewCopy];

    [(ResultsViewController *)self showSearchingHereIfNeeded:v11];
  }
}

- (void)mapView:(id)view willStartRespondingToGesture:(int64_t)gesture animated:(BOOL)animated
{
  viewCopy = view;
  if (![(ResultsViewController *)self isShowingOmnipresentSearchBar])
  {
    localSearchViewController = [(ResultsViewController *)self localSearchViewController];
    refreshSearchHereBusinessController = [localSearchViewController refreshSearchHereBusinessController];
    [refreshSearchHereBusinessController didStartRespondingToGesture:viewCopy];
  }
}

- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated
{
  if (self->_tappedTrackingButton)
  {
    self->_tappedTrackingButton = 0;
    viewCopy = view;
    localSearchViewController = [(ResultsViewController *)self localSearchViewController];
    refreshSearchHereBusinessController = [localSearchViewController refreshSearchHereBusinessController];
    v9 = [refreshSearchHereBusinessController didStopRespondingToGesture:viewCopy];

    [(ResultsViewController *)self showSearchingHereIfNeeded:v9];
  }
}

- (void)showSearchingHereIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  if ((![(ResultsViewController *)self isPresentingAddStopResultsFromWaypointEditor]|| (GEOConfigGetBOOL() & 1) == 0) && ![(ResultsViewController *)self isShowingOmnipresentSearchBar])
  {
    searchInfo = [(SearchSession *)self->_searchSession searchInfo];
    if (searchInfo)
    {
      resultsDelegate = [(ResultsViewController *)self resultsDelegate];
      searchResultsContainerViewController = [resultsDelegate searchResultsContainerViewController];
      chromeViewController = [searchResultsContainerViewController chromeViewController];

      redoSearchOverlay = [chromeViewController redoSearchOverlay];
      [redoSearchOverlay setHidden:0];

      if (neededCopy)
      {
        v10 = sub_100067540();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          searchSession = self->_searchSession;
          v20 = 138412290;
          v21 = searchSession;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[ResultsVC] Trigerred auto-redo search: %@", &v20, 0xCu);
        }

        [chromeViewController setNeedsUpdateComponent:@"floatingSearchButton" animated:1];
        redoSearchOverlay2 = [chromeViewController redoSearchOverlay];
        [redoSearchOverlay2 updateSearchOverlayWithState:0];

        redoSearchOverlay3 = [chromeViewController redoSearchOverlay];
        [redoSearchOverlay3 shouldHideFloatingControl:0 animated:1];

        self->_didTriggerAutoRedoSearch = 1;
        [(ResultsViewController *)self refreshCurrentSearch];
      }

      else
      {
        localSearchViewController = [(ResultsViewController *)self localSearchViewController];
        refreshSearchHereBusinessController = [localSearchViewController refreshSearchHereBusinessController];
        shouldShowManualRedoButton = [refreshSearchHereBusinessController shouldShowManualRedoButton];

        if (MapsFeature_IsEnabled_SearchAndDiscovery() && shouldShowManualRedoButton)
        {
          v17 = sub_1007991E4();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = self->_searchSession;
            v20 = 138412290;
            v21 = v18;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[SearchVC] Showing search here button as we did not trigger Auto-Redo: %@", &v20, 0xCu);
          }

          [chromeViewController setNeedsUpdateComponent:@"floatingSearchButton" animated:1];
          redoSearchOverlay4 = [chromeViewController redoSearchOverlay];
          [redoSearchOverlay4 updateSearchOverlayWithState:1];
        }
      }
    }
  }
}

- (void)_hideSearchHereControl
{
  if (![(ResultsViewController *)self isPresentingAddStopResultsFromWaypointEditor])
  {
    resultsDelegate = [(ResultsViewController *)self resultsDelegate];
    searchResultsContainerViewController = [resultsDelegate searchResultsContainerViewController];
    chromeViewController = [searchResultsContainerViewController chromeViewController];

    [chromeViewController setNeedsUpdateComponent:@"floatingSearchButton" animated:1];
    redoSearchOverlay = [chromeViewController redoSearchOverlay];
    [redoSearchOverlay shouldHideFloatingControl:1 animated:0];
  }
}

- (double)heightForLayout:(unint64_t)layout
{
  if (layout == 2)
  {

    sub_100068BB8();
  }

  else
  {
    if (layout == 1)
    {
      [(ContaineeViewController *)self headerHeight];
      v4 = 82.0;
      if (v5 > 82.0)
      {
        [(ContaineeViewController *)self headerHeight];
        v4 = v6;
      }

      cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
      [cardPresentationController bottomSafeOffset];
      v9 = v8 + v4;
    }

    else
    {
      cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
      [cardPresentationController availableHeight];
      v9 = v11;
    }

    return v9;
  }

  return result;
}

- (void)didChangeLayout:(unint64_t)layout
{
  v11.receiver = self;
  v11.super_class = ResultsViewController;
  [(ContaineeViewController *)&v11 didChangeLayout:?];
  [(ResultsViewController *)self _updateLoadingErrorFrames];
  if ([(ResultsViewController *)self containeeLayout]!= layout)
  {
    v5 = objc_alloc_init(SearchSessionAnalytics);
    [(SearchSessionAnalytics *)v5 setTarget:[(ResultsViewController *)self currentUITargetForAnalytics]];
    containeeLayout = [(ResultsViewController *)self containeeLayout];
    if (containeeLayout && containeeLayout < layout)
    {
      v7 = 1;
    }

    else
    {
      containeeLayout2 = [(ResultsViewController *)self containeeLayout];
      if (!layout || containeeLayout2 <= layout)
      {
        goto LABEL_9;
      }

      v7 = 2;
    }

    [(SearchSessionAnalytics *)v5 setAction:v7];
    v9 = +[MKMapService sharedService];
    [v9 captureUserAction:-[SearchSessionAnalytics action](v5 onTarget:"action") eventValue:{-[SearchSessionAnalytics target](v5, "target"), 0}];

LABEL_9:
    v10 = +[SearchSessionAnalyticsAggregator sharedAggregator];
    [v10 collectSearchSessionAnalytics:v5];

    [(ResultsViewController *)self setContaineeLayout:layout];
  }

  [(ResultsViewController *)self updateRefinementBarAlpha];
  [(MUScrollViewImpressionsCalculator *)self->_impressionsCalculator logImpressions];
}

- (void)willChangeContainerStyle:(unint64_t)style
{
  v5.receiver = self;
  v5.super_class = ResultsViewController;
  [(ContaineeViewController *)&v5 willChangeContainerStyle:?];
  [(LocalSearchViewController *)self->_localSearchViewController setEnable:style != 6];
}

- (double)topSpaceForScrollPocket
{
  contentTableView = [(ResultsViewController *)self contentTableView];
  v4 = sub_10000FA08(contentTableView);

  if (v4 == 5)
  {
    return 82.0;
  }

  result = 136.0;
  if (!self->_refinementsController)
  {
    return 82.0;
  }

  return result;
}

- (NSDictionary)searchResultCountInVenue
{
  if ([self->_currentDataSource conformsToProtocol:&OBJC_PROTOCOL___VenueItemDataSource]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    itemCountInVenue = [self->_currentDataSource itemCountInVenue];
  }

  else
  {
    itemCountInVenue = 0;
  }

  return itemCountInVenue;
}

- (BOOL)isShowingOmnipresentSearchBar
{
  if (self->_forOmnipresentSearchBar)
  {
    return ![(ResultsViewController *)self isPresentingAddStopResultsFromWaypointEditor:v2];
  }

  else
  {
    return 0;
  }
}

- (void)_updateResultRefinementBarFromSearchInfo:(id)info
{
  infoCopy = info;
  resultRefinementGroup = [infoCopy resultRefinementGroup];

  if (resultRefinementGroup)
  {
    refinementsSelectionSequenceNumber = [(ResultsViewController *)self refinementsSelectionSequenceNumber];

    if (!refinementsSelectionSequenceNumber)
    {
      [(ResultsViewController *)self setRefinementsSelectionSequenceNumber:&off_1016E9D70];
    }

    if (!self->_refinementsController)
    {
      v6 = objc_alloc_init(_TtC4Maps27ResultRefinementsController);
      refinementsController = self->_refinementsController;
      self->_refinementsController = v6;

      [(ResultRefinementsController *)self->_refinementsController setDelegate:self];
      [(RefinementsBarUIView *)self->_refinementsBar setDelegate:self->_refinementsController];
    }

    resultRefinementGroup2 = [infoCopy resultRefinementGroup];
    v9 = [_TtC4Maps27RefinementsViewModelFactory barViewModelWith:resultRefinementGroup2];

    [(RefinementsBarUIView *)self->_refinementsBar setViewModel:v9];
    if (sub_10000FA08(self) == 5)
    {
      v10 = 1;
    }

    else
    {
      v10 = _UISolariumEnabled() ^ 1;
    }

    [(ResultsViewController *)self setHideRefinementsBar:v10];
    if (!self->_lastRefinementOriginType && [(SearchSession *)self->_searchSession source]== 7)
    {
      self->_lastRefinementOriginType = 3;
      [(ResultsViewController *)self setRefinementsSelectionSequenceNumber:&off_1016E9D88];
    }
  }

  else
  {
    [(ResultsViewController *)self setHideRefinementsBar:1];
  }
}

- (void)didCachePlaceSummaryTemplates
{
  originalSearchInfo = [(ResultsViewController *)self originalSearchInfo];
  if (originalSearchInfo)
  {
    v11 = originalSearchInfo;
    searchText = [originalSearchInfo searchText];
    v5 = searchText;
    if (searchText)
    {
      title = searchText;
    }

    else
    {
      searchFieldItem = [v11 searchFieldItem];
      title = [searchFieldItem title];
    }

    searchResultsDataSource = self->_searchResultsDataSource;
    currentUITargetForAnalytics = [(ResultsViewController *)self currentUITargetForAnalytics];
    sessionIdentifier = [(MUScrollViewImpressionsCalculator *)self->_impressionsCalculator sessionIdentifier];
    [SearchResultsAnalyticsManager didShowSearchResultsWithDataSource:searchResultsDataSource target:currentUITargetForAnalytics query:title impressionsSessionIdentifier:sessionIdentifier];

    originalSearchInfo = v11;
  }
}

- (int)currentUITargetForAnalytics
{
  searchFieldItem = [(SearchSession *)self->_searchSession searchFieldItem];
  if ([(ResultsViewController *)self isPresentingAddStopResultsFromWaypointEditor])
  {
    v4 = 58;
  }

  else
  {
    searchCategory = [searchFieldItem searchCategory];

    if (searchCategory)
    {
      v4 = 102;
    }

    else
    {
      v4 = 101;
    }
  }

  return v4;
}

- (BOOL)shouldQuickActionMenuPresenter:(id)presenter showDirectionsToPlace:(id)place
{
  placeCopy = place;
  resultsDelegate = [(ResultsViewController *)self resultsDelegate];
  venuesManagerForSearchResults = [resultsDelegate venuesManagerForSearchResults];
  mapItem = [placeCopy mapItem];

  LOBYTE(placeCopy) = [venuesManagerForSearchResults isUserAtSameVenueAsMapItem:mapItem];
  return placeCopy ^ 1;
}

- (void)quickActionMenuPresenter:(id)presenter selectedRemoveDroppedPinOf:(id)of
{
  ofCopy = of;
  resultsDelegate = [(ResultsViewController *)self resultsDelegate];
  [resultsDelegate removeDroppedPin:ofCopy];
}

- (id)mapServiceTraitsForQuickActionPresenter:(id)presenter
{
  resultsDelegate = [(ResultsViewController *)self resultsDelegate];
  traitsForQuickActionPresenter = [resultsDelegate traitsForQuickActionPresenter];

  return traitsForQuickActionPresenter;
}

- (void)quickActionMenuPresenter:(id)presenter selectedShowPlaceCard:(id)card
{
  v5 = [(SearchResultQuickActionMenuPresenter *)self->_quickActionMenuPresenter indexPath:presenter];
  if (v5)
  {
    v7 = v5;
    v6 = [self->_currentDataSource objectAtIndexPath:v5];
    [(ResultsViewController *)self dataSource:self->_currentDataSource itemTapped:v6];

    v5 = v7;
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

    resultsDelegate = [(ResultsViewController *)self resultsDelegate];
    [resultsDelegate doShareSheetForShareItem:v7];

    searchResult = v9;
  }
}

- (void)quickActionMenuPresenter:(id)presenter selectedViewWebsiteFor:(id)for
{
  searchResult = [for searchResult];
  if (searchResult)
  {
    v7 = searchResult;
    resultsDelegate = [(ResultsViewController *)self resultsDelegate];
    [resultsDelegate openWebsiteForSearchResult:v7];

    searchResult = v7;
  }
}

- (void)quickActionMenuPresenter:(id)presenter selectedCall:(id)call
{
  searchResult = [call searchResult];
  if (searchResult)
  {
    v7 = searchResult;
    resultsDelegate = [(ResultsViewController *)self resultsDelegate];
    [resultsDelegate doAudioCallToSearchResult:v7];

    searchResult = v7;
  }
}

- (void)quickActionMenuPresenter:(id)presenter selectedDirectionsTo:(id)to
{
  searchResult = [to searchResult];
  if (searchResult)
  {
    if ([(ResultsViewController *)self isPresentingAddStopResultsFromWaypointEditor])
    {
      [(ResultsViewController *)self didTapOnAddStopWithSearchResult:searchResult atIndexPath:0];
    }

    else
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
      v15 = &off_1016E9D58;
      v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      resultsDelegate = [(ResultsViewController *)self resultsDelegate];
      [resultsDelegate doDirectionItem:v11 withUserInfo:v12 viewController:0];
    }
  }
}

- (void)didTapOnUserLibraryMapItem:(id)item
{
  if ([item _hasHikeInfo])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100D98090;
    v5[3] = &unk_101653E00;
    v5[4] = self;
    [MapsSavedRoutesManager fetchSavedRoutesWithType:1 completion:v5];
  }

  else
  {
    resultsDelegate = [(ResultsViewController *)self resultsDelegate];
    [resultsDelegate showLibraryPlacesViewFromViewController:self];
  }
}

- (void)didTapOnAddStopWithSearchResult:(id)result atIndexPath:(id)path
{
  v11 = @"DirectionsSessionInitiatorKey";
  v12 = &off_1016E9D58;
  pathCopy = path;
  resultCopy = result;
  v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  resultsDelegate = [(ResultsViewController *)self resultsDelegate];
  [resultsDelegate addStopForSearchResult:resultCopy withUserInfo:v8 viewController:self];

  mapItem = [resultCopy mapItem];

  [SearchResultsAnalyticsManager didTapOnAddStopForSearchResultWithMapItem:mapItem indexPath:pathCopy];
}

- (void)didTapOnTappableEntry:(id)entry
{
  entryCopy = entry;
  v9 = [[SearchResult alloc] initWithMapItem:entryCopy];

  resultsList = [(ResultsViewController *)self resultsList];
  v6 = [resultsList arrayByAddingObject:v9];

  resultsDelegate = [(ResultsViewController *)self resultsDelegate];
  [resultsDelegate setSearchPins:v6 selectedPin:v9 animated:1];

  mapItem = [(SearchResult *)v9 mapItem];
  +[SearchResultsAnalyticsManager tappableEntryUnitTappedWithMuid:](SearchResultsAnalyticsManager, "tappableEntryUnitTappedWithMuid:", [mapItem _muid]);
}

- (void)didTapOnContainmentParentMapItem:(id)item
{
  itemCopy = item;
  v9 = [[SearchResult alloc] initWithMapItem:itemCopy];

  resultsList = [(ResultsViewController *)self resultsList];
  v6 = [resultsList arrayByAddingObject:v9];

  resultsDelegate = [(ResultsViewController *)self resultsDelegate];
  [resultsDelegate setSearchPins:v6 selectedPin:v9 animated:1];

  mapItem = [(SearchResult *)v9 mapItem];
  +[SearchResultsAnalyticsManager containmentParentUnitTappedWithMuid:](SearchResultsAnalyticsManager, "containmentParentUnitTappedWithMuid:", [mapItem _muid]);
}

- (void)didTapOnFlyoverWithSearchResult:(id)result
{
  resultCopy = result;
  resultsDelegate = [(ResultsViewController *)self resultsDelegate];
  mapItem = [resultCopy mapItem];
  [resultsDelegate enterFlyoverForMapItem:mapItem viewController:self];

  mapItem2 = [resultCopy mapItem];

  +[SearchResultsAnalyticsManager flyoverButtonTappedOnSearchResultWithMuid:](SearchResultsAnalyticsManager, "flyoverButtonTappedOnSearchResultWithMuid:", [mapItem2 _muid]);
}

- (void)didTapOnWebsiteWithSearchResult:(id)result
{
  resultCopy = result;
  resultsDelegate = [(ResultsViewController *)self resultsDelegate];
  mapItem = [resultCopy mapItem];
  v7 = [mapItem url];
  [resultsDelegate openSearchResultURL:v7 viewController:self];

  mapItem2 = [resultCopy mapItem];

  +[SearchResultsAnalyticsManager websiteButtonTappedOnSearchResultWithMuid:](SearchResultsAnalyticsManager, "websiteButtonTappedOnSearchResultWithMuid:", [mapItem2 _muid]);
}

- (void)didTapOnCallWithSearchResult:(id)result
{
  resultCopy = result;
  mapItem = [resultCopy mapItem];
  phoneNumber = [mapItem phoneNumber];
  v5 = [phoneNumber length];

  if (v5)
  {
    v6 = +[UIApplication sharedApplication];
    phoneNumber2 = [mapItem phoneNumber];
    [v6 callPhoneNumber:phoneNumber2 completion:0];
  }

  mapItem2 = [resultCopy mapItem];
  +[SearchResultsAnalyticsManager callButtonTappedOnSearchResultWithMuid:](SearchResultsAnalyticsManager, "callButtonTappedOnSearchResultWithMuid:", [mapItem2 _muid]);
}

- (void)didTapOnLookAroundWithSearchResult:(id)result
{
  resultCopy = result;
  mapItem = [resultCopy mapItem];
  if ([mapItem _hasLookAroundStorefront])
  {
    resultsDelegate = [(ResultsViewController *)self resultsDelegate];
    v6 = [MKLookAroundEntryPoint entryPointWithMapItem:mapItem wantsCloseUpView:1];
    [resultsDelegate searchResultEnterLookAroundWithEntryPoint:v6 lookAroundView:0 showsFullScreen:1 originFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  }

  mapItem2 = [resultCopy mapItem];
  +[SearchResultsAnalyticsManager lookAroundButtonTappedOnSearchResultWithMuid:](SearchResultsAnalyticsManager, "lookAroundButtonTappedOnSearchResultWithMuid:", [mapItem2 _muid]);
}

- (void)didTapOnDirectionsWithSearchResult:(id)result
{
  resultCopy = result;
  v5 = objc_alloc_init(SearchFieldItem);
  v6 = +[SearchResult currentLocationSearchResult];
  [(SearchFieldItem *)v5 setSearchResult:v6];

  v7 = [SearchFieldItem searchFieldItemWithObject:resultCopy];
  v8 = [DirectionItem alloc];
  v16[0] = v5;
  v16[1] = v7;
  v9 = [NSArray arrayWithObjects:v16 count:2];
  v10 = [(DirectionItem *)v8 initWithItems:v9 ignoreMapType:0 transportType:0];

  v14 = @"DirectionsSessionInitiatorKey";
  v15 = &off_1016E9D58;
  v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  resultsDelegate = [(ResultsViewController *)self resultsDelegate];
  [resultsDelegate doDirectionItem:v10 withUserInfo:v11 viewController:0];

  mapItem = [resultCopy mapItem];

  +[SearchResultsAnalyticsManager directionsButtonTappedOnSearchResultWithMuid:](SearchResultsAnalyticsManager, "directionsButtonTappedOnSearchResultWithMuid:", [mapItem _muid]);
}

- (void)didTapOnCuratedGuides:(id)guides
{
  guidesCopy = guides;
  resultsDelegate = [(ResultsViewController *)self resultsDelegate];
  [resultsDelegate showCuratedCollectionsList:guidesCopy usingTitle:0 usingCollectionIds:0 completion:0 viewController:self];

  +[SearchResultsAnalyticsManager curatedGuidesUnitTapped];
}

- (void)didTapOnCuratedGuide:(id)guide
{
  guideCopy = guide;
  resultsDelegate = [(ResultsViewController *)self resultsDelegate];
  [resultsDelegate showCuratedCollection:guideCopy viewController:self];

  +[SearchResultsAnalyticsManager curatedGuidesUnitTapped];
}

- (void)didTapOnUserGeneratedGuide:(id)guide
{
  guideCopy = guide;
  resultsDelegate = [(ResultsViewController *)self resultsDelegate];
  [resultsDelegate showCollection:guideCopy viewController:self];

  +[SearchResultsAnalyticsManager userGeneratedGuideUnitTapped];
}

- (int)listForDataSource:(id)source
{
  searchFieldItem = [(SearchSession *)self->_searchSession searchFieldItem];
  searchCategory = [searchFieldItem searchCategory];

  if (searchCategory)
  {
    return 3;
  }

  else
  {
    return 5;
  }
}

- (id)refineSearchText
{
  originalSearchInfo = [(ResultsViewController *)self originalSearchInfo];
  searchText = [originalSearchInfo searchText];

  return searchText;
}

- (int)refineSearchSessionType
{
  searchFieldItem = [(SearchSession *)self->_searchSession searchFieldItem];
  searchCategory = [searchFieldItem searchCategory];

  if (searchCategory)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (void)didTapOnAddAPlace
{
  searchInfo = [(SearchSession *)self->_searchSession searchInfo];
  searchFieldItem = [searchInfo searchFieldItem];
  title = [searchFieldItem title];
  v6 = title;
  if (title)
  {
    title2 = title;
  }

  else
  {
    title2 = [(ResultsTitleView *)self->_resultsTitleView title];
  }

  v12 = title2;

  v8 = [[ReportASearchAutocompleteResult alloc] initWithTitle:v12];
  _maps_mapsSceneDelegate = [(ResultsViewController *)self _maps_mapsSceneDelegate];
  rapPresenter = [_maps_mapsSceneDelegate rapPresenter];
  [rapPresenter presentAddToMapsFromSearchEntryPoint:-[ResultsViewController currentUITargetForAnalytics](self result:"currentUITargetForAnalytics") completion:{v8, 0}];

  currentResults = [(SearchSession *)self->_searchSession currentResults];
  +[SearchResultsAnalyticsManager addAPlaceTappedWithNumberOfResults:target:](SearchResultsAnalyticsManager, "addAPlaceTappedWithNumberOfResults:target:", [currentResults count], -[ResultsViewController currentUITargetForAnalytics](self, "currentUITargetForAnalytics"));
}

- (void)dataSource:(id)source itemTapped:(id)tapped
{
  tappedCopy = tapped;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = tappedCopy;
  if (isKindOfClass)
  {
    v7 = tappedCopy;
    mapItem = [v7 mapItem];
    _hasHikeInfo = [mapItem _hasHikeInfo];

    if (_hasHikeInfo)
    {
      resultsDelegate = [(ResultsViewController *)self resultsDelegate];
      mapItem2 = [v7 mapItem];
      [resultsDelegate enterRouteCreationWithMapItem:mapItem2 completion:0];
    }

    else
    {
      placeCollection = [v7 placeCollection];

      resultsDelegate2 = [(ResultsViewController *)self resultsDelegate];
      resultsDelegate = resultsDelegate2;
      if (!placeCollection)
      {
        [resultsDelegate2 selectSearchResult:v7 animated:1];
        goto LABEL_7;
      }

      mapItem2 = [v7 placeCollection];
      [resultsDelegate showCuratedCollection:mapItem2 viewController:self];
    }

LABEL_7:
    lastItemTapped = self->_lastItemTapped;
    self->_lastItemTapped = v7;

    v6 = tappedCopy;
  }
}

- (void)dataSource:(id)source itemFocused:(id)focused
{
  focusedCopy = focused;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    resultsDelegate = [(ResultsViewController *)self resultsDelegate];
    [resultsDelegate focusSearchResult:focusedCopy viewController:self];

    lastItemTapped = self->_lastItemTapped;
    self->_lastItemTapped = 0;
  }

  else
  {
    if (self->_lastItemTapped)
    {
      goto LABEL_6;
    }

    lastItemTapped = [(ResultsViewController *)self resultsDelegate];
    [lastItemTapped removeSearchResultFocus:self];
  }

LABEL_6:
}

- (void)dataSourceUpdated:(id)updated
{
  if (self->_currentDataSource == updated)
  {
    [(LoadingModeView *)self->_loadingModeView setHidden:1];
    [(UITableView *)self->_contentTableView setHidden:0];
    [(UITableView *)self->_contentTableView reloadData];
    resultsDelegate = [(ResultsViewController *)self resultsDelegate];
    venuesManagerForSearchResults = [resultsDelegate venuesManagerForSearchResults];
    [venuesManagerForSearchResults venuesControlCoordinatingDidChangeSearchResultCount:self];

    resultsDelegate2 = [(ResultsViewController *)self resultsDelegate];
    venuesManagerForSearchResults2 = [resultsDelegate2 venuesManagerForSearchResults];
    [venuesManagerForSearchResults2 updateFocusedVenueFloor];
  }
}

- (void)setHeaderContentWithSearchSession:(id)session
{
  sessionCopy = session;
  v4 = [objc_opt_class() isReloadingRefinementsWithSearchSession:sessionCopy];
  v5 = sessionCopy;
  if ((v4 & 1) == 0)
  {
    searchFieldItem = [sessionCopy searchFieldItem];
    searchInfo = [sessionCopy searchInfo];
    originalSearchString = [searchFieldItem originalSearchString];
    v57 = searchInfo;
    if (!originalSearchString)
    {
      historyItem = [searchFieldItem historyItem];
      v10 = &OBJC_PROTOCOL___MSPHistoryEntrySearch;
      objc_opt_class();
      originalSearchString = historyItem;
      if (objc_opt_isKindOfClass())
      {
        v11 = originalSearchString;
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;

      if (v12 && ([v12 historyEntry], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "conformsToProtocol:", v10), v13, v14))
      {
        v15 = originalSearchString;
      }

      else
      {
        v15 = 0;
      }

      if (!v15)
      {
        completion = [searchFieldItem completion];
        _type = [completion _type];

        if (_type)
        {
          v17 = 1;
          goto LABEL_21;
        }

LABEL_13:
        searchCategory = [searchFieldItem searchCategory];
        if (searchCategory)
        {
          v17 = 1;
        }

        else
        {
          placeCategoryItem = [searchFieldItem placeCategoryItem];
          v17 = placeCategoryItem || [(ResultsViewController *)self isWaitingForResults]|| [(ResultsViewController *)self isShowingOmnipresentSearchBar]|| sub_10000FA08(self) == 5;
        }

LABEL_21:
        [(ResultsTitleView *)self->_resultsTitleView setEditButtonHidden:v17];
        isWaitingForResults = [(ResultsViewController *)self isWaitingForResults];
        v20 = 0.0;
        if ((isWaitingForResults & 1) == 0)
        {
          isShowingOmnipresentSearchBar = [(ResultsViewController *)self isShowingOmnipresentSearchBar];
          v20 = 1.0;
          if (isShowingOmnipresentSearchBar)
          {
            v20 = 0.0;
          }
        }

        [(ContainerHeaderView *)self->_containerHeaderView setHairLineAlpha:v20];
        headerDisplayName = [searchInfo headerDisplayName];
        v23 = headerDisplayName;
        if (headerDisplayName)
        {
          title = headerDisplayName;
        }

        else
        {
          title = [searchFieldItem title];
        }

        v25 = title;

        subHeaderDisplayName = [searchInfo subHeaderDisplayName];
        if (subHeaderDisplayName && (v27 = subHeaderDisplayName, v28 = [sessionCopy isRedoOrAutoRedoSearchType], v27, (v28 & 1) == 0))
        {
          subHeaderDisplayName2 = [searchInfo subHeaderDisplayName];
        }

        else
        {
          currentResults = [sessionCopy currentResults];

          if (currentResults)
          {
            v30 = +[NSBundle mainBundle];
            v31 = [v30 localizedStringForKey:@"[Results] subtitle" value:@"localized string not found" table:0];
            currentResults2 = [sessionCopy currentResults];
            subHeaderDisplayName2 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v31, [currentResults2 count]);
          }

          else
          {
            subHeaderDisplayName2 = &stru_1016631F0;
          }
        }

        if ([(__CFString *)subHeaderDisplayName2 length])
        {
          v34 = v17;
        }

        else
        {
          v34 = 1;
        }

        if ((v34 & 1) == 0)
        {
          v35 = +[NSBundle mainBundle];
          v36 = [v35 localizedStringForKey:@" · [List view details separator]" value:@"localized string not found" table:0];

          v37 = [(__CFString *)subHeaderDisplayName2 stringByAppendingString:v36];

          subHeaderDisplayName2 = v37;
        }

        [(ResultsTitleView *)self->_resultsTitleView setTitle:v25];
        [(ResultsTitleView *)self->_resultsTitleView setSubtitle:subHeaderDisplayName2];
        searchCategory2 = [searchFieldItem searchCategory];
        styleAttributes = [searchCategory2 styleAttributes];
        if (styleAttributes)
        {
          styleAttributes2 = styleAttributes;
        }

        else
        {
          placeCategoryItem2 = [searchFieldItem placeCategoryItem];
          searchCategory3 = [placeCategoryItem2 searchCategory];
          styleAttributes2 = [searchCategory3 styleAttributes];

          if (!styleAttributes2)
          {
            styleAttributes3 = [searchInfo styleAttributes];

            if (!styleAttributes3)
            {
              v44 = 0;
              v50 = 0;
              goto LABEL_43;
            }

            v54 = [GEOFeatureStyleAttributes alloc];
            styleAttributes4 = [searchInfo styleAttributes];
            v43 = [v54 initWithGEOStyleAttributes:styleAttributes4];

            v44 = 0;
            v50 = 0;
            if (!v43)
            {
              goto LABEL_43;
            }

LABEL_42:
            v45 = +[UIScreen mainScreen];
            [v45 nativeScale];
            v47 = v46;
            traitCollection = [(ResultsViewController *)self traitCollection];
            LOBYTE(v56) = [traitCollection userInterfaceStyle] == 2;
            v49 = [MKIconManager imageForStyle:v43 size:4 forScale:1 format:0 transparent:0 transitMode:0 isCarplay:v47 nightMode:v56];

            v50 = v43;
            if (v49)
            {
LABEL_44:
              [(ResultsTitleView *)self->_resultsTitleView setHeaderImage:v49];

              v5 = sessionCopy;
              goto LABEL_45;
            }

LABEL_43:
            v49 = [UIImage imageNamed:@"search"];
            v43 = v50;
            goto LABEL_44;
          }
        }

        v43 = styleAttributes2;
        v44 = v43;
        goto LABEL_42;
      }
    }

    goto LABEL_13;
  }

LABEL_45:
}

- (void)resultRefinementsBarApplyOpenOptionViewModel:(id)model atIndex:(id)index
{
  modelCopy = model;
  indexCopy = index;
  if (MapsFeature_IsEnabled_SearchAndDiscovery())
  {
    refreshSearchHereBusinessController = [(LocalSearchViewController *)self->_localSearchViewController refreshSearchHereBusinessController];
    [refreshSearchHereBusinessController resetRedoSearchController];

    self->_lastRefinementOriginType = 1;
    originalSearchInfo = [(ResultsViewController *)self originalSearchInfo];
    v10 = objc_alloc_init(GEOPDResultRefinementQuery);
    [v10 setResultRefinementOriginType:self->_lastRefinementOriginType];
    resultRefinementGroup = [originalSearchInfo resultRefinementGroup];
    refinementSessionState = [resultRefinementGroup refinementSessionState];
    [v10 setRefinementSessionState:refinementSessionState];

    resultRefinementGroup2 = [originalSearchInfo resultRefinementGroup];
    resultRefinementBar = [resultRefinementGroup2 resultRefinementBar];
    resultRefinements = [resultRefinementBar resultRefinements];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100D997F0;
    v33[3] = &unk_101653DD8;
    v34 = indexCopy;
    v35 = modelCopy;
    v16 = v10;
    v36 = v16;
    [resultRefinements enumerateObjectsUsingBlock:v33];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    resultRefinementGroup3 = [originalSearchInfo resultRefinementGroup];
    resultRefinementView = [resultRefinementGroup3 resultRefinementView];
    sections = [resultRefinementView sections];

    v20 = [sections countByEnumeratingWithState:&v29 objects:v39 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v30;
      do
      {
        v23 = 0;
        do
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(sections);
          }

          convertToGEOPDResultRefinementSection = [*(*(&v29 + 1) + 8 * v23) convertToGEOPDResultRefinementSection];
          [v16 addRefinementSection:convertToGEOPDResultRefinementSection];

          v23 = v23 + 1;
        }

        while (v21 != v23);
        v21 = [sections countByEnumeratingWithState:&v29 objects:v39 count:16];
      }

      while (v21);
    }

    resultsDelegate = [(ResultsViewController *)self resultsDelegate];
    searchFieldItem = [(SearchSession *)self->_searchSession searchFieldItem];
    v37 = @"SearchSessionAddStopFromWaypointEditor";
    v27 = [NSNumber numberWithBool:[(ResultsViewController *)self isPresentingAddStopResultsFromWaypointEditor]];
    v38 = v27;
    v28 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    [resultsDelegate doSearchItem:searchFieldItem withUserInfo:v28 refinementsQuery:v16 viewController:self];
  }
}

- (void)resultRefinementsBarApplyMultiSelectViewModel:(id)model atIndex:(id)index
{
  modelCopy = model;
  indexCopy = index;
  refreshSearchHereBusinessController = [(LocalSearchViewController *)self->_localSearchViewController refreshSearchHereBusinessController];
  [refreshSearchHereBusinessController resetRedoSearchController];

  self->_lastRefinementOriginType = 1;
  originalSearchInfo = [(ResultsViewController *)self originalSearchInfo];
  v10 = objc_alloc_init(GEOPDResultRefinementQuery);
  [v10 setResultRefinementOriginType:self->_lastRefinementOriginType];
  resultRefinementGroup = [originalSearchInfo resultRefinementGroup];
  refinementSessionState = [resultRefinementGroup refinementSessionState];
  [v10 setRefinementSessionState:refinementSessionState];

  resultRefinementGroup2 = [originalSearchInfo resultRefinementGroup];
  resultRefinementBar = [resultRefinementGroup2 resultRefinementBar];
  resultRefinements = [resultRefinementBar resultRefinements];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100D99C08;
  v35[3] = &unk_101653DD8;
  v16 = indexCopy;
  v36 = v16;
  v17 = modelCopy;
  v37 = v17;
  v18 = v10;
  v38 = v18;
  [resultRefinements enumerateObjectsUsingBlock:v35];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  resultRefinementGroup3 = [originalSearchInfo resultRefinementGroup];
  resultRefinementView = [resultRefinementGroup3 resultRefinementView];
  sections = [resultRefinementView sections];

  v22 = [sections countByEnumeratingWithState:&v31 objects:v41 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v32;
    do
    {
      v25 = 0;
      do
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(sections);
        }

        convertToGEOPDResultRefinementSection = [*(*(&v31 + 1) + 8 * v25) convertToGEOPDResultRefinementSection];
        [v18 addRefinementSection:convertToGEOPDResultRefinementSection];

        v25 = v25 + 1;
      }

      while (v23 != v25);
      v23 = [sections countByEnumeratingWithState:&v31 objects:v41 count:16];
    }

    while (v23);
  }

  resultsDelegate = [(ResultsViewController *)self resultsDelegate];
  searchFieldItem = [(SearchSession *)self->_searchSession searchFieldItem];
  v39 = @"SearchSessionAddStopFromWaypointEditor";
  v29 = [NSNumber numberWithBool:[(ResultsViewController *)self isPresentingAddStopResultsFromWaypointEditor]];
  v40 = v29;
  v30 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  [resultsDelegate doSearchItem:searchFieldItem withUserInfo:v30 refinementsQuery:v18 viewController:self];
}

- (void)allRefinementsApplyViewModel:(id)model selectionSequenceNumber:(id)number
{
  modelCopy = model;
  [(ResultsViewController *)self setRefinementsSelectionSequenceNumber:number];
  tappedBarButtonIndex = [modelCopy tappedBarButtonIndex];

  if (!tappedBarButtonIndex)
  {
    goto LABEL_9;
  }

  sections = [modelCopy sections];
  firstObject = [sections firstObject];

  type = [firstObject type];
  if (type)
  {
    if (type == 2)
    {
      v13 = firstObject;
      tappedBarButtonIndex2 = [modelCopy tappedBarButtonIndex];
      [(ResultsViewController *)self resultRefinementsBarApplyOpenOptionViewModel:v13 atIndex:tappedBarButtonIndex2];
      goto LABEL_7;
    }

    if (type == 1)
    {
      v11 = firstObject;
      tappedBarButtonIndex2 = [modelCopy tappedBarButtonIndex];
      [(ResultsViewController *)self resultRefinementsBarApplyMultiSelectViewModel:v11 atIndex:tappedBarButtonIndex2];
LABEL_7:

LABEL_24:
      goto LABEL_25;
    }

LABEL_9:
    refreshSearchHereBusinessController = [(LocalSearchViewController *)self->_localSearchViewController refreshSearchHereBusinessController];
    [refreshSearchHereBusinessController resetRedoSearchController];

    self->_lastRefinementOriginType = 2;
    firstObject = [(ResultsViewController *)self originalSearchInfo];
    tappedBarButtonIndex2 = objc_alloc_init(GEOPDResultRefinementQuery);
    [tappedBarButtonIndex2 setResultRefinementOriginType:self->_lastRefinementOriginType];
    resultRefinementGroup = [firstObject resultRefinementGroup];
    refinementSessionState = [resultRefinementGroup refinementSessionState];
    [tappedBarButtonIndex2 setRefinementSessionState:refinementSessionState];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    resultRefinementGroup2 = [firstObject resultRefinementGroup];
    resultRefinementBar = [resultRefinementGroup2 resultRefinementBar];
    resultRefinements = [resultRefinementBar resultRefinements];

    v20 = [resultRefinements countByEnumeratingWithState:&v39 objects:v46 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v40;
      do
      {
        v23 = 0;
        do
        {
          if (*v40 != v22)
          {
            objc_enumerationMutation(resultRefinements);
          }

          convertToGEOPDResultRefinement = [*(*(&v39 + 1) + 8 * v23) convertToGEOPDResultRefinement];
          [tappedBarButtonIndex2 addRefinement:convertToGEOPDResultRefinement];

          v23 = v23 + 1;
        }

        while (v21 != v23);
        v21 = [resultRefinements countByEnumeratingWithState:&v39 objects:v46 count:16];
      }

      while (v21);
    }

    v25 = [_TtC4Maps21GEORefinementsFactory allRefinementsSectionsWith:modelCopy];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v26 = [v25 countByEnumeratingWithState:&v35 objects:v45 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v36;
      do
      {
        v29 = 0;
        do
        {
          if (*v36 != v28)
          {
            objc_enumerationMutation(v25);
          }

          convertToGEOPDResultRefinementSection = [*(*(&v35 + 1) + 8 * v29) convertToGEOPDResultRefinementSection];
          [tappedBarButtonIndex2 addRefinementSection:convertToGEOPDResultRefinementSection];

          v29 = v29 + 1;
        }

        while (v27 != v29);
        v27 = [v25 countByEnumeratingWithState:&v35 objects:v45 count:16];
      }

      while (v27);
    }

    resultsDelegate = [(ResultsViewController *)self resultsDelegate];
    searchFieldItem = [(SearchSession *)self->_searchSession searchFieldItem];
    v43 = @"SearchSessionAddStopFromWaypointEditor";
    v33 = [NSNumber numberWithBool:[(ResultsViewController *)self isPresentingAddStopResultsFromWaypointEditor]];
    v44 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    [resultsDelegate doSearchItem:searchFieldItem withUserInfo:v34 refinementsQuery:tappedBarButtonIndex2 viewController:self];

    goto LABEL_24;
  }

LABEL_25:
}

- (void)resultRefinementsBarDidTapOnOpenOptions:(id)options tappedAtIndex:(int64_t)index
{
  optionsCopy = options;
  IsEnabled_SearchAndDiscovery = MapsFeature_IsEnabled_SearchAndDiscovery();
  v7 = optionsCopy;
  if (IsEnabled_SearchAndDiscovery)
  {
    v8 = [_TtC4Maps27RefinementsViewModelFactory openOptionsRefinementsViewModelWith:optionsCopy tappedAtIndex:index];
    v9 = [AllRefinementsViewController alloc];
    refinementsSelectionSequenceNumber = [(ResultsViewController *)self refinementsSelectionSequenceNumber];
    v11 = [refinementsSelectionSequenceNumber copy];
    v12 = [(AllRefinementsViewController *)v9 initWithViewModel:v8 selectionSequenceNumber:v11 resultRefinementsAnalyticsDelegate:self->_analyticsManager];

    containeeDelegate = [(ContaineeViewController *)self containeeDelegate];
    [(ContaineeViewController *)v12 setContaineeDelegate:containeeDelegate];

    [(AllRefinementsViewController *)v12 setAllRefinementsDelegate:self];
    if ([(ResultsViewController *)self isPresentingAddStopResultsFromWaypointEditor]&& GEOConfigGetBOOL())
    {
      resultsDelegate = [(ResultsViewController *)self resultsDelegate];
      [resultsDelegate showFiltersUsingViewController:v12];
    }

    else
    {
      resultsDelegate = [(ResultsViewController *)self resultsDelegate];
      searchResultsContainerViewController = [resultsDelegate searchResultsContainerViewController];
      [searchResultsContainerViewController presentController:v12 animated:1];
    }

    [(ResultRefinementsAnalyticsManager *)self->_analyticsManager logRefinementsEvent:3 fromSource:0];
    v7 = optionsCopy;
  }
}

- (void)resultRefinementsBarDidTapOnToggle:(id)toggle isSelected:(BOOL)selected
{
  selectedCopy = selected;
  analyticsManager = self->_analyticsManager;
  refinementKey = [toggle refinementKey];
  [(ResultRefinementsAnalyticsManager *)analyticsManager resultRefinementTappedWithKey:refinementKey source:0 refinementType:0 isSelected:selectedCopy];
}

- (void)resultRefinementsBarDidTapOnMultiSelect:(id)select tappedAtIndex:(int64_t)index
{
  v12 = [_TtC4Maps27RefinementsViewModelFactory multiSelectRefinementsViewModelWith:select tappedAtIndex:index];
  v5 = [AllRefinementsViewController alloc];
  refinementsSelectionSequenceNumber = [(ResultsViewController *)self refinementsSelectionSequenceNumber];
  v7 = [refinementsSelectionSequenceNumber copy];
  v8 = [(AllRefinementsViewController *)v5 initWithViewModel:v12 selectionSequenceNumber:v7 resultRefinementsAnalyticsDelegate:self->_analyticsManager];

  containeeDelegate = [(ContaineeViewController *)self containeeDelegate];
  [(ContaineeViewController *)v8 setContaineeDelegate:containeeDelegate];

  [(AllRefinementsViewController *)v8 setAllRefinementsDelegate:self];
  if ([(ResultsViewController *)self isPresentingAddStopResultsFromWaypointEditor]&& GEOConfigGetBOOL())
  {
    resultsDelegate = [(ResultsViewController *)self resultsDelegate];
    [resultsDelegate showFiltersUsingViewController:v8];
  }

  else
  {
    resultsDelegate = [(ResultsViewController *)self resultsDelegate];
    searchResultsContainerViewController = [resultsDelegate searchResultsContainerViewController];
    [searchResultsContainerViewController presentController:v8 animated:1];
  }

  [(ResultRefinementsAnalyticsManager *)self->_analyticsManager logRefinementsEvent:3 fromSource:0];
}

- (void)resultRefinementsBarDidTapOnSeeAllRefinements:(id)refinements
{
  refinementsCopy = refinements;
  v5 = [AllRefinementsViewController alloc];
  v6 = [refinementsCopy copy];

  refinementsSelectionSequenceNumber = [(ResultsViewController *)self refinementsSelectionSequenceNumber];
  v8 = [refinementsSelectionSequenceNumber copy];
  v12 = [(AllRefinementsViewController *)v5 initWithViewModel:v6 selectionSequenceNumber:v8 resultRefinementsAnalyticsDelegate:self->_analyticsManager];

  containeeDelegate = [(ContaineeViewController *)self containeeDelegate];
  [(ContaineeViewController *)v12 setContaineeDelegate:containeeDelegate];

  [(AllRefinementsViewController *)v12 setAllRefinementsDelegate:self];
  if ([(ResultsViewController *)self isPresentingAddStopResultsFromWaypointEditor]&& GEOConfigGetBOOL())
  {
    resultsDelegate = [(ResultsViewController *)self resultsDelegate];
    [resultsDelegate showFiltersUsingViewController:v12];
  }

  else
  {
    resultsDelegate = [(ResultsViewController *)self resultsDelegate];
    searchResultsContainerViewController = [resultsDelegate searchResultsContainerViewController];
    [searchResultsContainerViewController presentController:v12 animated:1];
  }

  [(ResultRefinementsAnalyticsManager *)self->_analyticsManager logRefinementsEvent:2 fromSource:0];
}

- (void)resultRefinementsBarDidUpdateViewModel:(id)model
{
  modelCopy = model;
  refreshSearchHereBusinessController = [(LocalSearchViewController *)self->_localSearchViewController refreshSearchHereBusinessController];
  [refreshSearchHereBusinessController resetRedoSearchController];

  self->_lastRefinementOriginType = 1;
  originalSearchInfo = [(ResultsViewController *)self originalSearchInfo];
  v7 = objc_alloc_init(GEOPDResultRefinementQuery);
  [v7 setResultRefinementOriginType:self->_lastRefinementOriginType];
  resultRefinementGroup = [originalSearchInfo resultRefinementGroup];
  refinementSessionState = [resultRefinementGroup refinementSessionState];
  [v7 setRefinementSessionState:refinementSessionState];

  v10 = [_TtC4Maps21GEORefinementsFactory barResultRefinementsWith:modelCopy];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v33;
    do
    {
      v14 = 0;
      do
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(v10);
        }

        convertToGEOPDResultRefinement = [*(*(&v32 + 1) + 8 * v14) convertToGEOPDResultRefinement];
        [v7 addRefinement:convertToGEOPDResultRefinement];

        v14 = v14 + 1;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v32 objects:v39 count:16];
    }

    while (v12);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  resultRefinementGroup2 = [originalSearchInfo resultRefinementGroup];
  resultRefinementView = [resultRefinementGroup2 resultRefinementView];
  sections = [resultRefinementView sections];

  v19 = [sections countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v29;
    do
    {
      v22 = 0;
      do
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(sections);
        }

        convertToGEOPDResultRefinementSection = [*(*(&v28 + 1) + 8 * v22) convertToGEOPDResultRefinementSection];
        [v7 addRefinementSection:convertToGEOPDResultRefinementSection];

        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [sections countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v20);
  }

  resultsDelegate = [(ResultsViewController *)self resultsDelegate];
  searchFieldItem = [(SearchSession *)self->_searchSession searchFieldItem];
  v36[0] = @"SearchSessionFromRefinementBar";
  v36[1] = @"SearchSessionAddStopFromWaypointEditor";
  v37[0] = &__kCFBooleanTrue;
  v26 = [NSNumber numberWithBool:[(ResultsViewController *)self isPresentingAddStopResultsFromWaypointEditor]];
  v37[1] = v26;
  v27 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:2];
  [resultsDelegate doSearchItem:searchFieldItem withUserInfo:v27 refinementsQuery:v7 viewController:self];
}

- (void)increasResultRefinementsSelectionSequenceNumber
{
  refinementsSelectionSequenceNumber = [(ResultsViewController *)self refinementsSelectionSequenceNumber];
  v3 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [refinementsSelectionSequenceNumber intValue] + 1);
  [(ResultsViewController *)self setRefinementsSelectionSequenceNumber:v3];
}

- (void)searchDidCancel:(BOOL)cancel
{
  cancelCopy = cancel;
  v5 = sub_100067540();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 134218242;
    selfCopy = self;
    v13 = 2080;
    v14 = "[ResultsViewController searchDidCancel:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%p] %s", &v11, 0x16u);
  }

  [(LoadingModeView *)self->_loadingModeView setHidden:1];
  impressionsCalculator = [(ResultsViewController *)self impressionsCalculator];
  [impressionsCalculator setActive:0];

  resultsDelegate = [(ResultsViewController *)self resultsDelegate];
  [resultsDelegate clearSearchResults];

  [(ResultsViewController *)self setResultsList:0];
  self->hasSetTheContentOffset = 0;
  [(RefinementsBarUIView *)self->_refinementsBar setViewModel:0];
  refinementsController = self->_refinementsController;
  self->_refinementsController = 0;

  refreshSearchHereBusinessController = [(LocalSearchViewController *)self->_localSearchViewController refreshSearchHereBusinessController];
  [refreshSearchHereBusinessController resetRedoSearchController];

  if (cancelCopy)
  {
    resultsDelegate2 = [(ResultsViewController *)self resultsDelegate];
    [resultsDelegate2 closeSearchResultsViewController:self];
  }
}

- (BOOL)isWaitingForResults
{
  v2 = self->_searchSession;
  isSingleResultToShowAsPlacecard = [(SearchSession *)v2 isSingleResultToShowAsPlacecard];
  if (![(SearchSession *)v2 isRedoOrAutoRedoSearchType]&& [(SearchSession *)v2 isLoading])
  {
    isSingleResultToShowAsPlacecard = 1;
  }

  return isSingleResultToShowAsPlacecard;
}

- (id)loadingString
{
  v2 = self->_searchSession;
  stringToDisplay = [(SearchSession *)v2 stringToDisplay];
  searchFieldItem = [(SearchSession *)v2 searchFieldItem];

  searchCategory = [searchFieldItem searchCategory];

  if (searchCategory)
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"Searching for  ... [Search Category]" value:@"localized string not found" table:0];
    [NSString stringWithFormat:v7, stringToDisplay];
  }

  else
  {
    autocompletePerson = [searchFieldItem autocompletePerson];
    handle = [autocompletePerson handle];

    if (!handle)
    {
      completion = [searchFieldItem completion];
      mapItem = [completion mapItem];

      v14 = +[NSBundle mainBundle];
      v6 = v14;
      if (mapItem)
      {
        v15 = @"Loading ...";
      }

      else
      {
        v15 = @"Searching... [Search Query]";
      }

      v10 = [v14 localizedStringForKey:v15 value:@"localized string not found" table:0];
      goto LABEL_6;
    }

    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"[Location Update] Refreshing Location" value:@"localized string not found" table:0];
    [NSString stringWithFormat:v7, v16];
  }
  v10 = ;

LABEL_6:

  return v10;
}

- (void)waitingData
{
  [(ResultsViewController *)self showError:0];
  loadingModeView = self->_loadingModeView;
  loadingString = [(ResultsViewController *)self loadingString];
  [(LoadingModeView *)loadingModeView setTitle:loadingString];

  [(LoadingModeView *)self->_loadingModeView setHidden:0];
  [(UITableView *)self->_contentTableView setHidden:1];
  y = CGPointZero.y;
  contentTableView = self->_contentTableView;

  [(UITableView *)contentTableView setContentOffset:CGPointZero.x, y];
}

- (void)headerViewButtonTapped:(id)tapped buttonType:(unint64_t)type
{
  tappedCopy = tapped;
  v6 = sub_100067540();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10.receiver = self;
    v10.super_class = ResultsViewController;
    v7 = [(ResultsViewController *)&v10 class];
    v8 = v7;
    resultsDelegate = [(ResultsViewController *)self resultsDelegate];
    *buf = 138412802;
    selfCopy = self;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = resultsDelegate;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Header view close button tapped. Self : %@, Super class: %@ delegate: %@", buf, 0x20u);
  }

  [(ResultsViewController *)self handleDismissAction:tappedCopy];
}

- (void)headerViewTapped:(id)tapped
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController wantsExpandLayout];
}

- (void)handleDismissAction:(id)action
{
  actionCopy = action;
  v5 = +[MKMapService sharedService];
  [v5 captureUserAction:4 onTarget:-[ResultsViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

  resultsDelegate = [(ResultsViewController *)self resultsDelegate];
  [resultsDelegate clearSearchResults];

  [(ResultsViewController *)self setResultsList:0];
  self->hasSetTheContentOffset = 0;
  [(ErrorModeView *)self->_errorModeView removeErrorIconImageView];
  refreshSearchHereBusinessController = [(LocalSearchViewController *)self->_localSearchViewController refreshSearchHereBusinessController];
  [refreshSearchHereBusinessController resetRedoSearchController];

  v8.receiver = self;
  v8.super_class = ResultsViewController;
  [(ContaineeViewController *)&v8 handleDismissAction:actionCopy];
}

- (id)impressionsCalculator
{
  if (MapsFeature_IsEnabled_SearchResultsImpressions())
  {
    impressionsCalculator = self->_impressionsCalculator;
    if (impressionsCalculator)
    {
LABEL_9:
      v14 = impressionsCalculator;
      goto LABEL_11;
    }

    v4 = objc_alloc_init(SearchResultsImpressionsLogger);
    objc_initWeak(&location, self);
    v5 = [MUImpressionsCalculatorConfiguration alloc];
    contentTableView = self->_contentTableView;
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_100D9B1DC;
    v19 = &unk_101653DB0;
    objc_copyWeak(&v20, &location);
    v7 = [v5 initWithLogger:v4 contentScrollView:contentTableView containerViewProvider:&v16];
    v8 = [MUScrollViewImpressionsCalculator alloc];
    v9 = [v8 initWithConfiguration:v7 visibleItemsProvider:{self->_searchResultsDataSource, v16, v17, v18, v19}];
    v10 = self->_impressionsCalculator;
    self->_impressionsCalculator = v9;

    v11 = +[GEOPlatform sharedPlatform];
    if ([v11 isInternalInstall])
    {
      v12 = +[NSUserDefaults standardUserDefaults];
      v13 = [v12 BOOLForKey:@"EnableSearchResultsImpressionLoggingVisualization"];

      if (!v13)
      {
LABEL_8:

        objc_destroyWeak(&v20);
        objc_destroyWeak(&location);

        impressionsCalculator = self->_impressionsCalculator;
        goto LABEL_9;
      }

      v11 = +[MapsImpressionsSearchResultsFloatingDebugViewController sharedInstance];
      [v11 setCalculator:self->_impressionsCalculator];
      if (([v11 isAttached] & 1) == 0)
      {
        [v11 attach];
      }
    }

    goto LABEL_8;
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)applyAlphaToContent:(double)content
{
  v8.receiver = self;
  v8.super_class = ResultsViewController;
  [(ContaineeViewController *)&v8 applyAlphaToContent:?];
  contentCopy = 0.0;
  if (![(ResultsViewController *)self _shouldHideHairline])
  {
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    containerStyle = [cardPresentationController containerStyle];

    if (!self->_hideHeader)
    {
      if (containerStyle == 6)
      {
        contentCopy = 1.0;
      }

      else
      {
        contentCopy = content;
      }

      if ([(ResultsViewController *)self isShowingOmnipresentSearchBar])
      {
        contentCopy = 0.0;
      }
    }
  }

  [(ContainerHeaderView *)self->_containerHeaderView setHairLineAlpha:contentCopy];
  [(ErrorModeView *)self->_errorModeView setAlpha:content];
  [(RefinementsBarUIView *)self->_refinementsBar setAlpha:content];
}

- (void)setupConstraints
{
  contentTableView = [(ResultsViewController *)self contentTableView];
  leadingAnchor = [contentTableView leadingAnchor];
  contentView = [(ContaineeViewController *)self contentView];
  leadingAnchor2 = [contentView leadingAnchor];
  v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v25[0] = v20;
  contentTableView2 = [(ResultsViewController *)self contentTableView];
  trailingAnchor = [contentTableView2 trailingAnchor];
  contentView2 = [(ContaineeViewController *)self contentView];
  trailingAnchor2 = [contentView2 trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v25[1] = v15;
  contentTableView3 = [(ResultsViewController *)self contentTableView];
  topAnchor = [contentTableView3 topAnchor];
  contentView3 = [(ContaineeViewController *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v5 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v25[2] = v5;
  contentTableView4 = [(ResultsViewController *)self contentTableView];
  bottomAnchor = [contentTableView4 bottomAnchor];
  contentView4 = [(ContaineeViewController *)self contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  v10 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v25[3] = v10;
  v11 = [NSArray arrayWithObjects:v25 count:4];
  v12 = [v11 mutableCopy];

  [NSLayoutConstraint activateConstraints:v12];
}

- (void)_updateLoadingErrorFrames
{
  if (self->_hideHeader)
  {
    view = [(ResultsViewController *)self view];
    [view bounds];
  }

  else
  {
    view = [(ContaineeViewController *)self contentView];
    [view frame];
  }

  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;

  [(LoadingModeView *)self->_loadingModeView setFrame:v8, v9, v10, v11];
  view2 = [(ResultsViewController *)self view];
  [view2 safeAreaInsets];
  v14 = v13;

  if (_UISolariumEnabled())
  {
    [(ResultsViewController *)self topSpaceForScrollPocket];
    v9 = v15;
  }

  errorModeView = self->_errorModeView;

  [(ErrorModeView *)errorModeView setFrame:v8, v9, v10, v11 - v14];
}

- (void)updateRefinementBarAlpha
{
  sheetPresentationController = [(ResultsViewController *)self sheetPresentationController];
  if (-[ResultsViewController containeeLayout](self, "containeeLayout") != 1 || (v4 = [sheetPresentationController _isDragging], v3 = 0.0, v4))
  {
    [(ResultsViewController *)self heightForLayout:1, v3];
    v6 = v5;
    [sheetPresentationController _currentPresentedViewFrame];
    Height = CGRectGetHeight(v14);
    containerView = [sheetPresentationController containerView];
    [containerView safeAreaInsets];
    v10 = Height - v9;

    if ([(ResultsViewController *)self containeeLayout]== 1 && v10 > v6)
    {
      _isDragging = [sheetPresentationController _isDragging];
      v3 = 1.0;
      if (_isDragging)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v3 = 1.0;
    }

    if (v10 <= v6)
    {
      v3 = 0.0;
    }
  }

LABEL_10:
  [(RefinementsBarUIView *)self->_refinementsBar setAlpha:v3];
}

- (void)viewDidLayoutSubviews
{
  v7.receiver = self;
  v7.super_class = ResultsViewController;
  [(ContaineeViewController *)&v7 viewDidLayoutSubviews];
  [(ResultsViewController *)self _updateLoadingErrorFrames];
  [(ResultsViewController *)self updateRefinementBarAlpha];
  [(MUScrollViewImpressionsCalculator *)self->_impressionsCalculator logImpressions];
  resultsList = [(ResultsViewController *)self resultsList];
  if ([resultsList count])
  {
    hasSetTheContentOffset = self->hasSetTheContentOffset;

    if (!hasSetTheContentOffset)
    {
      contentTableView = [(ResultsViewController *)self contentTableView];
      [(ResultsViewController *)self topSpaceForScrollPocket];
      [contentTableView setContentOffset:{0.0, -v6}];

      self->hasSetTheContentOffset = 1;
    }
  }

  else
  {
  }
}

- (void)didBecomeCurrent
{
  v7.receiver = self;
  v7.super_class = ResultsViewController;
  [(ContaineeViewController *)&v7 didBecomeCurrent];
  v3 = sub_100067540();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218242;
    selfCopy = self;
    v10 = 2080;
    v11 = "[ResultsViewController didBecomeCurrent]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%p] %s", buf, 0x16u);
  }

  self->_hasViewAppeared = 1;
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  -[ResultsViewController setContaineeLayout:](self, "setContaineeLayout:", [cardPresentationController containeeLayout]);

  impressionsCalculator = [(ResultsViewController *)self impressionsCalculator];
  hasImpressionElements = [impressionsCalculator hasImpressionElements];

  if ((hasImpressionElements & 1) == 0)
  {
    [(MUScrollViewImpressionsCalculator *)self->_impressionsCalculator logImpressions];
  }
}

- (void)didResignCurrent
{
  v3 = sub_100067540();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218242;
    selfCopy = self;
    v8 = 2080;
    v9 = "[ResultsViewController didResignCurrent]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%p] %s", buf, 0x16u);
  }

  self->_hasViewAppeared = 0;
  v5.receiver = self;
  v5.super_class = ResultsViewController;
  [(ContaineeViewController *)&v5 didResignCurrent];
  [(ResultsViewController *)self _hideSearchHereControl];
  impressionsCalculator = [(ResultsViewController *)self impressionsCalculator];
  [impressionsCalculator setActive:0];
}

- (void)willBecomeCurrent:(BOOL)current
{
  v15.receiver = self;
  v15.super_class = ResultsViewController;
  [(ContaineeViewController *)&v15 willBecomeCurrent:current];
  v4 = sub_100067540();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218242;
    selfCopy = self;
    v18 = 2080;
    v19 = "[ResultsViewController willBecomeCurrent:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%p] %s", buf, 0x16u);
  }

  if (([(MUScrollViewImpressionsCalculator *)self->_impressionsCalculator isActive]& 1) == 0)
  {
    impressionsCalculator = [(ResultsViewController *)self impressionsCalculator];
    [impressionsCalculator setActive:1];
  }

  currentResults = [(SearchSession *)self->_searchSession currentResults];
  if ([currentResults count] && -[SearchSession isSpotlightPunchInSearch](self->_searchSession, "isSpotlightPunchInSearch"))
  {
    spotlightMatchingResultFound = [(SearchSession *)self->_searchSession spotlightMatchingResultFound];

    if (!spotlightMatchingResultFound)
    {
      goto LABEL_10;
    }

    [(ResultsViewController *)self setHeaderContentWithSearchSession:self->_searchSession];
    [(ResultsViewController *)self setHideHeader:0];
    currentResults = [(SearchSession *)self->_searchSession currentResults];
    [(ResultsViewController *)self setResultsList:currentResults];
  }

LABEL_10:
  resultsList = [(ResultsViewController *)self resultsList];
  if ([resultsList count])
  {
    resultsList2 = [(ResultsViewController *)self resultsList];
    resultsDelegate = [(ResultsViewController *)self resultsDelegate];
    allSearchResultsForCurrentPinsOnMap = [resultsDelegate allSearchResultsForCurrentPinsOnMap];
    v12 = [resultsList2 isEqualToArray:allSearchResultsForCurrentPinsOnMap];

    if (v12)
    {
      return;
    }

    resultsList3 = [(ResultsViewController *)self resultsList];
    resultsList = [SearchInfo searchInfoWithResults:resultsList3];

    resultsDelegate2 = [(ResultsViewController *)self resultsDelegate];
    [resultsDelegate2 setSearchPinsFromSearchInfo:resultsList scrollToResults:0 displayPlaceCardForResult:0 animated:0 completion:0];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = sub_100067540();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218242;
    selfCopy = self;
    v10 = 2080;
    v11 = "[ResultsViewController viewWillDisappear:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%p] %s", buf, 0x16u);
  }

  v7.receiver = self;
  v7.super_class = ResultsViewController;
  [(ContaineeViewController *)&v7 viewWillDisappear:disappearCopy];
  impressionsCalculator = [(ResultsViewController *)self impressionsCalculator];
  [impressionsCalculator setActive:0];
}

- (void)viewWillAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = ResultsViewController;
  [(ContaineeViewController *)&v8 viewWillAppear:appear];
  v4 = sub_100067540();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218242;
    selfCopy = self;
    v11 = 2080;
    v12 = "[ResultsViewController viewWillAppear:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%p] %s", buf, 0x16u);
  }

  if (!self->_quickActionMenuPresenter)
  {
    v5 = [[SearchResultQuickActionMenuPresenter alloc] initWithTableView:self->_contentTableView];
    quickActionMenuPresenter = self->_quickActionMenuPresenter;
    self->_quickActionMenuPresenter = v5;

    [(QuickActionMenuPresenter *)self->_quickActionMenuPresenter setDelegate:self];
  }

  if (([(MUScrollViewImpressionsCalculator *)self->_impressionsCalculator isActive]& 1) == 0)
  {
    impressionsCalculator = [(ResultsViewController *)self impressionsCalculator];
    [impressionsCalculator setActive:1];
  }
}

- (void)didMoveToParentViewController:(id)controller
{
  isShowingOmnipresentSearchBar = [(ResultsViewController *)self isShowingOmnipresentSearchBar];
  if (controller && isShowingOmnipresentSearchBar)
  {
    v6 = sub_100067540();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = 134218242;
      selfCopy = self;
      v9 = 2080;
      v10 = "[ResultsViewController didMoveToParentViewController:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "[%p] %s configuring header", &v7, 0x16u);
    }

    [(ResultsViewController *)self configureHeader];
  }
}

- (void)viewDidLoad
{
  v22.receiver = self;
  v22.super_class = ResultsViewController;
  [(ContaineeViewController *)&v22 viewDidLoad];
  contentView = [(ContaineeViewController *)self contentView];
  contentTableView = [(ResultsViewController *)self contentTableView];
  [contentView addSubview:contentTableView];

  contentTableView2 = [(ResultsViewController *)self contentTableView];
  [(ContaineeViewController *)self setContentScrollView:contentTableView2 forEdge:1];

  if (![(ResultsViewController *)self isShowingOmnipresentSearchBar])
  {
    [(ResultsViewController *)self configureHeader];
  }

  view = [(ResultsViewController *)self view];
  loadingModeView = [(ResultsViewController *)self loadingModeView];
  [view addSubview:loadingModeView];

  view2 = [(ResultsViewController *)self view];
  errorModeView = [(ResultsViewController *)self errorModeView];
  [view2 addSubview:errorModeView];

  view3 = [(ResultsViewController *)self view];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [v12 stringByReplacingOccurrencesOfString:@"Controller" withString:&stru_1016631F0];
  [view3 setAccessibilityIdentifier:v13];

  [(ResultsViewController *)self setupConstraints];
  v14 = [[ResultRefinementsAnalyticsManager alloc] initWithRefinementsFromWaypointEditor:[(ResultsViewController *)self isPresentingAddStopResultsFromWaypointEditor]];
  analyticsManager = self->_analyticsManager;
  self->_analyticsManager = v14;

  v16 = [SearchResultsDataSource alloc];
  contentTableView3 = [(ResultsViewController *)self contentTableView];
  v18 = [(SearchResultsDataSource *)v16 initWithTableView:contentTableView3];
  searchResultsDataSource = self->_searchResultsDataSource;
  self->_searchResultsDataSource = v18;

  [self->_searchResultsDataSource setDelegate:self];
  resultsDelegate = [(ResultsViewController *)self resultsDelegate];
  searchResultsAppCoordinator = [resultsDelegate searchResultsAppCoordinator];
  [(SearchResultsDataSource *)self->_searchResultsDataSource setShareDelegate:searchResultsAppCoordinator];

  [(SearchResultsDataSource *)self->_searchResultsDataSource setCollectionCarouselRoutingDelegate:self];
  [(SearchResultsDataSource *)self->_searchResultsDataSource setIsPresentingAddStopResultsFromWaypointEditor:[(ResultsViewController *)self isPresentingAddStopResultsFromWaypointEditor]];
  [(ResultsViewController *)self setDataSource:self->_searchResultsDataSource];
}

- (void)showError:(id)error hideRefinementsBar:(BOOL)bar
{
  barCopy = bar;
  errorCopy = error;
  if (errorCopy)
  {
    [(UITableView *)self->_contentTableView setHidden:1];
    [(LoadingModeView *)self->_loadingModeView setHidden:1];
    if (barCopy)
    {
      [(ResultsViewController *)self setHideRefinementsBar:1];
    }

    view = [(ResultsViewController *)self view];
    errorModeView = [(ResultsViewController *)self errorModeView];
    contentTableView = [(ResultsViewController *)self contentTableView];
    [view insertSubview:errorModeView belowSubview:contentTableView];

    [(ResultsViewController *)self _updateLoadingErrorFrames];
    [(ErrorModeView *)self->_errorModeView setTitle:errorCopy andMessage:0];
    currentResultsSearchInfo = [(SearchSession *)self->_searchSession currentResultsSearchInfo];
    LODWORD(errorModeView) = [currentResultsSearchInfo enableStructuredRAPAffordance];

    if (errorModeView)
    {
      objc_initWeak(&location, self);
      errorModeView = self->_errorModeView;
      v12 = +[NSBundle mainBundle];
      v13 = [v12 localizedStringForKey:@"Add a Missing Place" value:@"localized string not found" table:0];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100D9C4AC;
      v15[3] = &unk_10165D828;
      objc_copyWeak(&v16, &location);
      [(ErrorModeView *)errorModeView setButtonTitle:v13 handler:v15];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    [(ErrorModeView *)self->_errorModeView removeFromSuperview];
    v14 = self->_errorModeView;
    self->_errorModeView = 0;
  }
}

- (void)_showOfflineErrorView
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"No results found in your offline map. Connect to the internet for more search results." value:@"localized string not found" table:@"Offline"];

  v5 = +[MapsOfflineUIHelper sharedHelper];
  isUsingForcedOfflineMaps = [v5 isUsingForcedOfflineMaps];

  v7 = +[NSBundle mainBundle];
  v8 = v7;
  if (isUsingForcedOfflineMaps)
  {
    v9 = @"Using Offline Maps";
  }

  else
  {
    v9 = @"You’re Offline";
  }

  v10 = [v7 localizedStringForKey:v9 value:@"localized string not found" table:@"Offline"];

  [(ResultsViewController *)self showError:v4 hideRefinementsBar:0];
  [(ErrorModeView *)self->_errorModeView setTitle:v10 andMessage:v4];
  [(ErrorModeView *)self->_errorModeView insertErrorIcon:@"icloud.slash" atIndex:0];
  if (isUsingForcedOfflineMaps)
  {
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"Turn Off" value:@"localized string not found" table:@"Offline"];

    objc_initWeak(&location, self);
    errorModeView = self->_errorModeView;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100D9C6F0;
    v14[3] = &unk_10165D828;
    objc_copyWeak(&v15, &location);
    [(ErrorModeView *)errorModeView setButtonTitle:v12 handler:v14];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

- (void)setDataSource:(id)source
{
  sourceCopy = source;
  currentDataSource = self->_currentDataSource;
  if (currentDataSource != sourceCopy)
  {
    v13 = sourceCopy;
    [currentDataSource setActive:0];
    objc_storeStrong(&self->_currentDataSource, source);
    [(UITableView *)self->_contentTableView setDelegate:v13];
    [(UITableView *)self->_contentTableView setDataSource:v13];
    v7 = +[MapsDragAndDropManager sharedManager];
    deviceSupportsDragAndDrop = [v7 deviceSupportsDragAndDrop];

    if (deviceSupportsDragAndDrop)
    {
      [(UITableView *)self->_contentTableView setDragDelegate:v13];
    }

    [self->_currentDataSource setActive:1];
    [(UITableView *)self->_contentTableView reloadData];
    resultsDelegate = [(ResultsViewController *)self resultsDelegate];
    venuesManagerForSearchResults = [resultsDelegate venuesManagerForSearchResults];
    [venuesManagerForSearchResults venuesControlCoordinatingDidChangeSearchResultCount:self];

    resultsDelegate2 = [(ResultsViewController *)self resultsDelegate];
    venuesManagerForSearchResults2 = [resultsDelegate2 venuesManagerForSearchResults];
    [venuesManagerForSearchResults2 updateFocusedVenueFloor];

    sourceCopy = v13;
  }
}

- (void)setResultsList:(id)list
{
  listCopy = list;
  if (self->_resultsList != listCopy)
  {
    self->_didTriggerAutoRedoSearch = 0;
    objc_storeStrong(&self->_resultsList, list);
    self->hasSetTheContentOffset = 0;
    if (![(ResultsViewController *)self isShowingOmnipresentSearchBar])
    {
      [(ResultsViewController *)self setHideHeader:0];
    }

    v5 = +[NSUUID UUID];
    impressionsCalculator = [(ResultsViewController *)self impressionsCalculator];
    [impressionsCalculator setSessionIdentifier:v5];

    view = [(ResultsViewController *)self view];

    if (view)
    {
      v8 = self->_searchSession;
      currentResultsSearchInfo = [(SearchSession *)v8 currentResultsSearchInfo];
      searchText = [currentResultsSearchInfo searchText];
      if (searchText)
      {
        p_searchResultsDataSource = &self->_searchResultsDataSource;
        [(SearchResultsDataSource *)self->_searchResultsDataSource setSearchQuery:searchText];
      }

      else
      {
        searchFieldItem = [currentResultsSearchInfo searchFieldItem];
        title = [searchFieldItem title];
        p_searchResultsDataSource = &self->_searchResultsDataSource;
        [(SearchResultsDataSource *)self->_searchResultsDataSource setSearchQuery:title];
      }

      -[SearchResultsDataSource setDisplaysAsChainResult:](*p_searchResultsDataSource, "setDisplaysAsChainResult:", [currentResultsSearchInfo isChainResults]);
      -[SearchResultsDataSource setPrefersAddressOverCategory:](*p_searchResultsDataSource, "setPrefersAddressOverCategory:", [currentResultsSearchInfo prefersAddressOverCategory]);
      searchFieldItem2 = [currentResultsSearchInfo searchFieldItem];
      searchCategory = [searchFieldItem2 searchCategory];
      [(SearchResultsDataSource *)*p_searchResultsDataSource setSearchCategory:searchCategory];

      placeSummaryMetadata = [currentResultsSearchInfo placeSummaryMetadata];
      [(SearchResultsDataSource *)*p_searchResultsDataSource setPlaceSummaryMetadata:placeSummaryMetadata];

      -[SearchResultsDataSource setEnableStructuredRAPAffordance:](*p_searchResultsDataSource, "setEnableStructuredRAPAffordance:", [currentResultsSearchInfo enableStructuredRAPAffordance]);
      [(SearchResultsDataSource *)*p_searchResultsDataSource setIsPresentingAddStopResultsFromWaypointEditor:[(ResultsViewController *)self isPresentingAddStopResultsFromWaypointEditor]];
      impressionsCalculator2 = [(ResultsViewController *)self impressionsCalculator];
      sessionIdentifier = [impressionsCalculator2 sessionIdentifier];
      [(SearchResultsDataSource *)*p_searchResultsDataSource setImpressionsSessionIdentifier:sessionIdentifier];

      if ([currentResultsSearchInfo sortOrder] == 1)
      {
        v19 = [[AlphabeticallyOrderedDataSource alloc] initWithAlphabeticallySortableObject:listCopy];
        sectionIndexTitles = [(AlphabeticallyOrderedDataSource *)v19 sectionIndexTitles];
        [(SearchResultsDataSource *)*p_searchResultsDataSource setSectionIndexTitles:sectionIndexTitles];
      }

      else
      {
        searchSectionList = [currentResultsSearchInfo searchSectionList];
        if (searchSectionList)
        {
          resultsList = self->_resultsList;

          if (resultsList)
          {
            v23 = [SearchListOrderedDataSource alloc];
            v24 = self->_resultsList;
            searchSectionList2 = [currentResultsSearchInfo searchSectionList];
            v19 = [(SearchListOrderedDataSource *)v23 initWithObjects:v24 searchSectionList:searchSectionList2];

            [(SearchResultsDataSource *)*p_searchResultsDataSource setSectionIndexTitles:0];
            v26 = [[SearchResultsDataSourceContent alloc] initWithOrderedDataSource:v19];
            v27 = *p_searchResultsDataSource;
            openAt = [currentResultsSearchInfo openAt];
            [(SearchResultsDataSource *)v27 setContent:v26 openAt:openAt];

            goto LABEL_18;
          }
        }

        v29 = [IdenticallyOrderedDataSource alloc];
        if (self->_resultsList)
        {
          v30 = self->_resultsList;
        }

        else
        {
          v30 = &__NSArray0__struct;
        }

        v19 = [(IdenticallyOrderedDataSource *)v29 initWithObjects:v30];
        [(SearchResultsDataSource *)*p_searchResultsDataSource setSectionIndexTitles:0];
      }

      v26 = [[SearchResultsDataSourceContent alloc] initWithOrderedDataSource:v19];
      [(SearchResultsDataSource *)*p_searchResultsDataSource setContent:v26];
LABEL_18:

      resultsDelegate = [(ResultsViewController *)self resultsDelegate];
      venuesManagerForSearchResults = [resultsDelegate venuesManagerForSearchResults];
      [venuesManagerForSearchResults venuesControlCoordinatingDidChangeSearchResultCount:self];

      resultsDelegate2 = [(ResultsViewController *)self resultsDelegate];
      venuesManagerForSearchResults2 = [resultsDelegate2 venuesManagerForSearchResults];
      [venuesManagerForSearchResults2 updateFocusedVenueFloor];

      [(LoadingModeView *)self->_loadingModeView setHidden:1];
      v35 = self->_resultsList;
      if (v35)
      {
        if (-[NSArray count](v35, "count") || ([currentResultsSearchInfo suggestions], v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "count"), v36, v37))
        {
          [(ResultsViewController *)self showError:0];
          [(UITableView *)self->_contentTableView setHidden:0];
        }
      }

      [(ResultsViewController *)self _updateResultRefinementBarFromSearchInfo:currentResultsSearchInfo];
      if ([(NSArray *)self->_resultsList count])
      {
        view2 = [(ResultsViewController *)self view];
        [view2 setNeedsLayout];

        view3 = [(ResultsViewController *)self view];
        [view3 layoutIfNeeded];
      }
    }
  }
}

- (void)logNoSearchResult
{
  if (![(SearchSession *)self->_searchSession isLoading])
  {
    currentResults = [(SearchSession *)self->_searchSession currentResults];
    v4 = [currentResults count];

    if (!v4)
    {
      currentUITargetForAnalytics = [(ResultsViewController *)self currentUITargetForAnalytics];

      [SearchResultsAnalyticsManager logNoSearchResults:currentUITargetForAnalytics];
    }
  }
}

- (void)updateSearchSession:(id)session
{
  sessionCopy = session;
  v6 = sub_100067540();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v44 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "ResultsVC updating search session: %@", buf, 0xCu);
  }

  objc_storeStrong(&self->_searchSession, session);
  originalSearchInfo = [(ResultsViewController *)self originalSearchInfo];
  lastError = [sessionCopy lastError];
  localSearchViewController = [(ResultsViewController *)self localSearchViewController];
  refreshSearchHereBusinessController = [localSearchViewController refreshSearchHereBusinessController];
  [refreshSearchHereBusinessController setSearchSession:sessionCopy];

  view = [(ResultsViewController *)self view];

  if (!view)
  {
    goto LABEL_42;
  }

  isWaitingForResults = [(ResultsViewController *)self isWaitingForResults];
  v13 = [sessionCopy isResultRefinementsBarSearch] ^ 1;
  v14 = v13 & isWaitingForResults;
  if (v13 & 1) == 0 && (isWaitingForResults)
  {
    v14 = [objc_opt_class() isReloadingRefinementsWithSearchSession:sessionCopy] ^ 1;
  }

  if ([sessionCopy isSpotlightPunchInSearch])
  {
    [(ResultsViewController *)self setHideHeader:1];
  }

  else
  {
    [(ResultsViewController *)self setHideHeader:v14];
    [(ResultsViewController *)self setHeaderContentWithSearchSession:sessionCopy];
  }

  isWaitingForResults2 = [(ResultsViewController *)self isWaitingForResults];
  isResultRefinementsBarSearch = [sessionCopy isResultRefinementsBarSearch];
  if (isWaitingForResults2)
  {
    if (isResultRefinementsBarSearch)
    {
      viewModel = [(RefinementsBarUIView *)self->_refinementsBar viewModel];
      [viewModel setTapInteractionEnabled:0];
    }

    [(ResultsViewController *)self waitingData];
    goto LABEL_43;
  }

  if (isResultRefinementsBarSearch)
  {
    viewModel2 = [(RefinementsBarUIView *)self->_refinementsBar viewModel];
    [viewModel2 setTapInteractionEnabled:1];
  }

  if (!lastError || [sessionCopy isRedoOrAutoRedoSearchType] && (objc_msgSend(sessionCopy, "currentResults"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "count"), v19, v20))
  {
    if (!originalSearchInfo)
    {
      [(ResultsViewController *)self setResultsList:0];
      self->hasSetTheContentOffset = 0;
LABEL_42:
      [(ResultsViewController *)self logNoSearchResult];
      goto LABEL_43;
    }

    if ([originalSearchInfo searchResultType] == 1)
    {
      if (![sessionCopy isSpotlightPunchInSearch] || (objc_msgSend(sessionCopy, "spotlightMatchingResultFound") & 1) == 0)
      {
        currentResults = [sessionCopy currentResults];
        [(ResultsViewController *)self setResultsList:currentResults];
      }

      results = [originalSearchInfo results];
      v23 = [results count];

      if (v23)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if ([originalSearchInfo searchResultType] != 2)
      {
        if ([originalSearchInfo searchResultType] == 3)
        {
          currentResults2 = [sessionCopy currentResults];
          [(ResultsViewController *)self setResultsList:currentResults2];
        }

        else
        {
          if ([originalSearchInfo searchResultType] != 4)
          {
            goto LABEL_42;
          }

          currentResults3 = [sessionCopy currentResults];
          [(ResultsViewController *)self setResultsList:currentResults3];

          results2 = [originalSearchInfo results];
          v42 = [results2 count];

          if (v42)
          {
            goto LABEL_42;
          }

          currentResults2 = [(ResultsViewController *)self noResultString];
          [(ResultsViewController *)self showError:currentResults2 hideRefinementsBar:0];
        }

        goto LABEL_41;
      }

      [(ResultsViewController *)self setResultsList:0];
      self->hasSetTheContentOffset = 0;
    }

    resultDisplayHeader = [originalSearchInfo resultDisplayHeader];
    v36 = resultDisplayHeader;
    if (resultDisplayHeader)
    {
      noResultString = resultDisplayHeader;
    }

    else
    {
      noResultString = [(ResultsViewController *)self noResultString];
    }

    currentResults2 = noResultString;

    resultDisplayHeader2 = [originalSearchInfo resultDisplayHeader];
    [(ResultsViewController *)self showError:currentResults2 hideRefinementsBar:resultDisplayHeader2 != 0];

LABEL_41:
    goto LABEL_42;
  }

  noResultString2 = [(ResultsViewController *)self noResultString];
  v25 = +[MapsOfflineUIHelper sharedHelper];
  isUsingOfflineMaps = [v25 isUsingOfflineMaps];

  if (isUsingOfflineMaps)
  {
    [(ResultsViewController *)self _showOfflineErrorView];
  }

  else
  {
    lastError2 = [(SearchSession *)self->_searchSession lastError];
    domain = [lastError2 domain];
    v29 = [domain isEqualToString:@"SearchFindMy"];

    if (v29)
    {
      v30 = +[NSBundle mainBundle];
      v31 = [v30 localizedStringForKey:@"[Location Update] Unable to Refresh for person" value:@"localized string not found" table:0];

      searchFieldItem = [(SearchSession *)self->_searchSession searchFieldItem];
      title = [searchFieldItem title];
      v34 = [NSString stringWithFormat:v31, title];

      [(ResultsViewController *)self setHideHeader:1];
      noResultString2 = v34;
    }

    [(ResultsViewController *)self showError:noResultString2 hideRefinementsBar:0];
    [(LoadingModeView *)self->_loadingModeView setHidden:1];
    [(ResultsViewController *)self _updateResultRefinementBarFromSearchInfo:originalSearchInfo];
  }

  [(ResultsViewController *)self logNoSearchResult];

LABEL_43:
}

- (void)refreshEVChargers:(id)chargers
{
  searchResultsDataSource = self->_searchResultsDataSource;
  if (searchResultsDataSource)
  {
    [(SearchResultsDataSource *)searchResultsDataSource refreshEVChargers:chargers];
  }
}

- (id)noResultString
{
  v4 = MKCurrentNetworkConnectionFailureDiagnosis();
  if (v4 <= 1)
  {
    if (!v4)
    {
LABEL_12:
      _displayMessageFromError = [(ResultsViewController *)self _displayMessageFromError];
      v7 = _displayMessageFromError;
      if (!_displayMessageFromError)
      {
        v11 = +[NSBundle mainBundle];
        _displayMessageForNoInternet = [v11 localizedStringForKey:@"no_result_key" value:@"localized string not found" table:0];

LABEL_25:
        goto LABEL_26;
      }

      v10 = _displayMessageFromError;
LABEL_24:
      _displayMessageForNoInternet = v10;
      goto LABEL_25;
    }

    if (v4 != 1)
    {
      goto LABEL_26;
    }

    v5 = MGGetSInt32Answer();
    v6 = +[NSBundle mainBundle];
    v7 = v6;
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        v8 = @"NoSearchResults_AirplaneMode_iPad";
        goto LABEL_23;
      }

      if (v5 == 6)
      {
        v8 = @"NoSearchResults_AirplaneMode_Watch";
        goto LABEL_23;
      }
    }

    else
    {
      if (v5 == 1)
      {
        v8 = @"NoSearchResults_AirplaneMode_iPhone";
        goto LABEL_23;
      }

      if (v5 == 2)
      {
        v8 = @"NoSearchResults_AirplaneMode_iPod";
LABEL_23:
        v10 = [v6 localizedStringForKey:v8 value:@"localized string not found" table:0];
        goto LABEL_24;
      }
    }

    v8 = @"NoSearchResults_AirplaneMode_Device";
    goto LABEL_23;
  }

  switch(v4)
  {
    case 2:
      v6 = +[NSBundle mainBundle];
      v7 = v6;
      v8 = @"NoSearchResults_CellDataDisabled";
      goto LABEL_23;
    case 3:
      _displayMessageForNoInternet = [(ResultsViewController *)self _displayMessageForNoInternet];
      break;
    case 4:
      goto LABEL_12;
  }

LABEL_26:

  return _displayMessageForNoInternet;
}

- (id)_displayMessageForNoInternet
{
  v2 = MGGetSInt32Answer();
  v3 = +[NSBundle mainBundle];
  v4 = v3;
  if ((v2 - 1) > 5)
  {
    v5 = @"NoSearchResults_NoNetworkConnection_Device";
  }

  else
  {
    v5 = off_101653E20[v2 - 1];
  }

  v6 = [v3 localizedStringForKey:v5 value:@"localized string not found" table:0];

  return v6;
}

- (id)_displayMessageFromError
{
  lastError = [(SearchSession *)self->_searchSession lastError];
  v4 = lastError;
  if (!lastError)
  {
    goto LABEL_6;
  }

  domain = [lastError domain];
  if (([domain isEqualToString:kCFErrorDomainCFNetwork] & 1) == 0)
  {

    goto LABEL_6;
  }

  if ([v4 code] != 310)
  {
    code = [v4 code];

    if (code == -1001)
    {
      goto LABEL_8;
    }

LABEL_6:
    _displayMessageForNoInternet = 0;
    goto LABEL_9;
  }

LABEL_8:
  _displayMessageForNoInternet = [(ResultsViewController *)self _displayMessageForNoInternet];
LABEL_9:

  return _displayMessageForNoInternet;
}

- (id)localSearchViewController
{
  localSearchViewController = self->_localSearchViewController;
  if (!localSearchViewController)
  {
    v4 = [[LocalSearchViewController alloc] initAsButton:0];
    v5 = self->_localSearchViewController;
    self->_localSearchViewController = v4;

    view = [(LocalSearchViewController *)self->_localSearchViewController view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];

    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    -[LocalSearchViewController setEnable:](self->_localSearchViewController, "setEnable:", [cardPresentationController containerStyle] != 6);

    [(LocalSearchViewController *)self->_localSearchViewController setDelegate:self];
    localSearchViewController = self->_localSearchViewController;
  }

  return localSearchViewController;
}

- (id)contentTableView
{
  contentTableView = self->_contentTableView;
  if (!contentTableView)
  {
    v4 = [[MapsThemeTableView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    v5 = self->_contentTableView;
    self->_contentTableView = &v4->super;

    [(UITableView *)self->_contentTableView setAccessibilityIdentifier:@"ResultsViewTable"];
    [(UITableView *)self->_contentTableView setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = +[UIColor clearColor];
    [(UITableView *)self->_contentTableView setBackgroundColor:v6];

    v7 = +[UIColor clearColor];
    [(UITableView *)self->_contentTableView setSectionIndexBackgroundColor:v7];

    [(UITableView *)self->_contentTableView _setHeaderAndFooterViewsFloat:0];
    [(UITableView *)self->_contentTableView setSectionHeaderTopPadding:0.0];
    [(UITableView *)self->_contentTableView setPreservesSuperviewLayoutMargins:1];
    contentTableView = self->_contentTableView;
  }

  return contentTableView;
}

- (id)errorModeView
{
  errorModeView = self->_errorModeView;
  if (!errorModeView)
  {
    v4 = objc_alloc_init(ErrorModeView);
    v5 = self->_errorModeView;
    self->_errorModeView = v4;

    [(ErrorModeView *)self->_errorModeView setSpacing:0.0];
    errorModeView = self->_errorModeView;
  }

  return errorModeView;
}

- (id)loadingModeView
{
  loadingModeView = self->_loadingModeView;
  if (!loadingModeView)
  {
    v4 = [LoadingModeView alloc];
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"Loading ..." value:@"localized string not found" table:0];
    v7 = [(LoadingModeView *)v4 initWithTitle:v6];
    v8 = self->_loadingModeView;
    self->_loadingModeView = v7;

    loadingModeView = self->_loadingModeView;
  }

  return loadingModeView;
}

- (BOOL)shouldShowSearchOverlay
{
  if ([(ResultsViewController *)self isPresentingAddStopResultsFromWaypointEditor]&& (GEOConfigGetBOOL() & 1) != 0)
  {
    return 0;
  }

  if (!MapsFeature_IsEnabled_SearchAndDiscovery())
  {
    return self->_hasViewAppeared;
  }

  return [(ResultsViewController *)self hasResults];
}

- (void)refreshCurrentSearch
{
  v3 = sub_100067540();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    searchFieldItem = [(SearchSession *)self->_searchSession searchFieldItem];
    *buf = 138412290;
    v43 = searchFieldItem;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[ResultsVC] Refreshing current search: %@", buf, 0xCu);
  }

  searchFieldItem2 = [(SearchSession *)self->_searchSession searchFieldItem];
  originalSearchInfo = [(ResultsViewController *)self originalSearchInfo];
  v40 = @"SearchSessionIsAutoRedoSearch";
  v41 = &__kCFBooleanTrue;
  v7 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
  v8 = [NSMutableDictionary dictionaryWithDictionary:v7];

  if ([(ResultsViewController *)self isPresentingAddStopResultsFromWaypointEditor])
  {
    [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:@"SearchSessionAddStopFromWaypointEditor"];
  }

  resultRefinementGroup = [originalSearchInfo resultRefinementGroup];

  if (resultRefinementGroup)
  {
    resultsDelegate2 = objc_alloc_init(GEOPDResultRefinementQuery);
    [resultsDelegate2 setResultRefinementOriginType:self->_lastRefinementOriginType];
    resultRefinementGroup2 = [originalSearchInfo resultRefinementGroup];
    refinementSessionState = [resultRefinementGroup2 refinementSessionState];
    [resultsDelegate2 setRefinementSessionState:refinementSessionState];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    resultRefinementGroup3 = [originalSearchInfo resultRefinementGroup];
    resultRefinementBar = [resultRefinementGroup3 resultRefinementBar];
    resultRefinements = [resultRefinementBar resultRefinements];

    v16 = [resultRefinements countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v35;
      do
      {
        v19 = 0;
        do
        {
          if (*v35 != v18)
          {
            objc_enumerationMutation(resultRefinements);
          }

          convertToGEOPDResultRefinement = [*(*(&v34 + 1) + 8 * v19) convertToGEOPDResultRefinement];
          [resultsDelegate2 addRefinement:convertToGEOPDResultRefinement];

          v19 = v19 + 1;
        }

        while (v17 != v19);
        v17 = [resultRefinements countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v17);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    resultRefinementGroup4 = [originalSearchInfo resultRefinementGroup];
    resultRefinementView = [resultRefinementGroup4 resultRefinementView];
    sections = [resultRefinementView sections];

    v24 = [sections countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v31;
      do
      {
        v27 = 0;
        do
        {
          if (*v31 != v26)
          {
            objc_enumerationMutation(sections);
          }

          convertToGEOPDResultRefinementSection = [*(*(&v30 + 1) + 8 * v27) convertToGEOPDResultRefinementSection];
          [resultsDelegate2 addRefinementSection:convertToGEOPDResultRefinementSection];

          v27 = v27 + 1;
        }

        while (v25 != v27);
        v25 = [sections countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v25);
    }

    resultsDelegate = [(ResultsViewController *)self resultsDelegate];
    [resultsDelegate doSearchItem:searchFieldItem2 withUserInfo:v8 refinementsQuery:resultsDelegate2 viewController:self];
  }

  else
  {
    resultsDelegate2 = [(ResultsViewController *)self resultsDelegate];
    [resultsDelegate2 doSearchItem:searchFieldItem2 withUserInfo:v8 viewController:self];
  }
}

- (BOOL)hasResults
{
  currentResults = [(SearchSession *)self->_searchSession currentResults];
  v3 = [currentResults count] != 0;

  return v3;
}

- (id)initForOmipresentSearchBar:(BOOL)bar
{
  result = [(ResultsViewController *)self init];
  if (result)
  {
    *(result + 200) = bar;
  }

  return result;
}

+ (BOOL)isReloadingRefinementsWithSearchSession:(id)session
{
  sessionCopy = session;
  if ([sessionCopy isResultRefinementsBarSearch])
  {
    currentResults = [sessionCopy currentResults];
    v5 = [currentResults count] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end