@interface ResultsViewController
+ (BOOL)isReloadingRefinementsWithSearchSession:(id)a3;
- (BOOL)hasResults;
- (BOOL)isShowingOmnipresentSearchBar;
- (BOOL)isWaitingForResults;
- (BOOL)shouldQuickActionMenuPresenter:(id)a3 showDirectionsToPlace:(id)a4;
- (BOOL)shouldShowSearchOverlay;
- (NSDictionary)searchResultCountInVenue;
- (ResultsViewControllerDelegate)resultsDelegate;
- (VKVenueFeatureMarker)venueWithFocus;
- (double)heightForLayout:(unint64_t)a3;
- (double)topSpaceForScrollPocket;
- (id)_displayMessageForNoInternet;
- (id)_displayMessageFromError;
- (id)contentTableView;
- (id)errorModeView;
- (id)impressionsCalculator;
- (id)initForOmipresentSearchBar:(BOOL)a3;
- (id)loadingModeView;
- (id)loadingString;
- (id)localSearchViewController;
- (id)mapServiceTraitsForQuickActionPresenter:(id)a3;
- (id)noResultString;
- (id)refineSearchText;
- (int)currentUITargetForAnalytics;
- (int)listForDataSource:(id)a3;
- (int)refineSearchSessionType;
- (int64_t)floatingControlsOptions;
- (void)_hideSearchHereControl;
- (void)_showOfflineErrorView;
- (void)_updateHairlineVisibility;
- (void)_updateLoadingErrorFrames;
- (void)_updateResultRefinementBarFromSearchInfo:(id)a3;
- (void)allRefinementsApplyViewModel:(id)a3 selectionSequenceNumber:(id)a4;
- (void)applyAlphaToContent:(double)a3;
- (void)configureHeader;
- (void)dataSource:(id)a3 itemFocused:(id)a4;
- (void)dataSource:(id)a3 itemTapped:(id)a4;
- (void)dataSourceUpdated:(id)a3;
- (void)didBecomeCurrent;
- (void)didCachePlaceSummaryTemplates;
- (void)didChangeLayout:(unint64_t)a3;
- (void)didMoveToParentViewController:(id)a3;
- (void)didResignCurrent;
- (void)didTapOnAddAPlace;
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
- (void)didTapOnUserLibraryMapItem:(id)a3;
- (void)didTapOnWebsiteWithSearchResult:(id)a3;
- (void)editSearchButtonTapped;
- (void)handleDismissAction:(id)a3;
- (void)headerViewButtonTapped:(id)a3 buttonType:(unint64_t)a4;
- (void)headerViewTapped:(id)a3;
- (void)increasResultRefinementsSelectionSequenceNumber;
- (void)localSearchViewControllerDidSelectRefreshSearchHere:(id)a3;
- (void)logNoSearchResult;
- (void)mapView:(id)a3 didChangeUserTrackingMode:(int64_t)a4 animated:(BOOL)a5 fromTrackingButton:(BOOL)a6;
- (void)mapView:(id)a3 didStopRespondingToGesture:(int64_t)a4 zoomDirection:(int64_t)a5 zoomGestureType:(int64_t)a6 didDecelerate:(BOOL)a7 tiltDirection:(int64_t)a8;
- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4;
- (void)mapView:(id)a3 willStartRespondingToGesture:(int64_t)a4 animated:(BOOL)a5;
- (void)quickActionMenuPresenter:(id)a3 selectedCall:(id)a4;
- (void)quickActionMenuPresenter:(id)a3 selectedDirectionsTo:(id)a4;
- (void)quickActionMenuPresenter:(id)a3 selectedRemoveDroppedPinOf:(id)a4;
- (void)quickActionMenuPresenter:(id)a3 selectedShareLocationOf:(id)a4;
- (void)quickActionMenuPresenter:(id)a3 selectedShowPlaceCard:(id)a4;
- (void)quickActionMenuPresenter:(id)a3 selectedViewWebsiteFor:(id)a4;
- (void)refreshCurrentSearch;
- (void)refreshEVChargers:(id)a3;
- (void)resultRefinementsBarApplyMultiSelectViewModel:(id)a3 atIndex:(id)a4;
- (void)resultRefinementsBarApplyOpenOptionViewModel:(id)a3 atIndex:(id)a4;
- (void)resultRefinementsBarDidTapOnMultiSelect:(id)a3 tappedAtIndex:(int64_t)a4;
- (void)resultRefinementsBarDidTapOnOpenOptions:(id)a3 tappedAtIndex:(int64_t)a4;
- (void)resultRefinementsBarDidTapOnSeeAllRefinements:(id)a3;
- (void)resultRefinementsBarDidTapOnToggle:(id)a3 isSelected:(BOOL)a4;
- (void)resultRefinementsBarDidUpdateViewModel:(id)a3;
- (void)routeToCuratedCollection:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)searchDidCancel:(BOOL)a3;
- (void)setDataSource:(id)a3;
- (void)setHeaderContentWithSearchSession:(id)a3;
- (void)setHideHeader:(BOOL)a3;
- (void)setHideRefinementsBar:(BOOL)a3;
- (void)setResultsList:(id)a3;
- (void)setupConstraints;
- (void)showError:(id)a3 hideRefinementsBar:(BOOL)a4;
- (void)showSearchingHereIfNeeded:(BOOL)a3;
- (void)updateRefinementBarAlpha;
- (void)updateSearchSession:(id)a3;
- (void)viewControllerDidSelectBrowseVenue:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)waitingData;
- (void)willBecomeCurrent:(BOOL)a3;
- (void)willChangeContainerStyle:(unint64_t)a3;
@end

@implementation ResultsViewController

- (ResultsViewControllerDelegate)resultsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_resultsDelegate);

  return WeakRetained;
}

- (void)routeToCuratedCollection:(id)a3
{
  v4 = a3;
  v5 = [(ResultsViewController *)self resultsDelegate];
  [v5 showCuratedCollection:v4 viewController:self];
}

- (void)_updateHairlineVisibility
{
  v3 = [(ResultsViewController *)self _shouldHideHairline];
  v4 = 1.0;
  if (v3)
  {
    v4 = 0.0;
  }

  containerHeaderView = self->_containerHeaderView;

  [(ContainerHeaderView *)containerHeaderView setHairLineAlpha:v4];
}

- (void)scrollViewDidScroll:(id)a3
{
  v4.receiver = self;
  v4.super_class = ResultsViewController;
  [(ContaineeViewController *)&v4 scrollViewDidScroll:a3];
  [(MUScrollViewImpressionsCalculator *)self->_impressionsCalculator logImpressions];
  [(ResultsViewController *)self _updateHairlineVisibility];
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  v11.receiver = self;
  v11.super_class = ResultsViewController;
  [(ContaineeViewController *)&v11 scrollViewWillEndDragging:a3 withVelocity:a5 targetContentOffset:a4.x];
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

- (void)viewControllerDidSelectBrowseVenue:(id)a3
{
  v4 = [(ResultsViewController *)self resultsDelegate];
  v3 = [v4 venuesManagerForSearchResults];
  [v3 presentPlaceCardForVenueWithFocusAndAddToHistory:1 source:7 centeringOnVenue:0];
}

- (void)localSearchViewControllerDidSelectRefreshSearchHere:(id)a3
{
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:2011 onTarget:-[ResultsViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

  [(ResultsViewController *)self refreshCurrentSearch];
}

- (VKVenueFeatureMarker)venueWithFocus
{
  v2 = [(ResultsViewController *)self resultsDelegate];
  v3 = [v2 venuesManagerForSearchResults];
  v4 = [v3 venueWithFocus];

  return v4;
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
    v5 = [(ResultsViewController *)self resultsDelegate];
    v4 = [(SearchSession *)v3 searchFieldItem];

    [v5 presentSearchResultsRestoringSearchItem:v4];
  }
}

- (void)configureHeader
{
  v3 = [ContainerHeaderView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [(ContainerHeaderView *)v3 initWithFrame:CGRectZero.origin.x, y, width, height];
  containerHeaderView = self->_containerHeaderView;
  self->_containerHeaderView = v7;

  [(ContainerHeaderView *)self->_containerHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(ContainerHeaderView *)self->_containerHeaderView setDelegate:self];
  v9 = +[UIColor clearColor];
  [(ContainerHeaderView *)self->_containerHeaderView setBackgroundColor:v9];

  [(ContainerHeaderView *)self->_containerHeaderView setHairLineAlpha:0.0];
  if (![(ResultsViewController *)self isShowingOmnipresentSearchBar])
  {
    v10 = [[ResultsTitleView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
    resultsTitleView = self->_resultsTitleView;
    self->_resultsTitleView = v10;

    [(ResultsTitleView *)self->_resultsTitleView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(ResultsTitleView *)self->_resultsTitleView setDelegate:self];
  }

  v12 = objc_alloc_init(_TtC4Maps20RefinementsBarUIView);
  refinementsBar = self->_refinementsBar;
  self->_refinementsBar = v12;

  [(RefinementsBarUIView *)self->_refinementsBar setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [(RefinementsBarUIView *)self->_refinementsBar heightAnchor];
  v15 = [v14 constraintEqualToConstant:0.0];
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
    v20 = [(ContaineeViewController *)self contentView];
    [v20 addSubview:self->_refinementsBar];

    v21 = [(RefinementsBarUIView *)self->_refinementsBar trailingAnchor];
    v22 = [(ContaineeViewController *)self contentView];
    v23 = [v22 trailingAnchor];
    v24 = [v21 constraintEqualToAnchor:v23];
    [v17 addObject:v24];

    v25 = [(RefinementsBarUIView *)self->_refinementsBar leadingAnchor];
    v26 = [(ContaineeViewController *)self contentView];
    v27 = [v26 leadingAnchor];
    v28 = [v25 constraintEqualToAnchor:v27];
    [v17 addObject:v28];

    v29 = [(RefinementsBarUIView *)self->_refinementsBar topAnchor];
    v30 = [(ContaineeViewController *)self contentView];
    v31 = [v30 topAnchor];
    [(ResultsViewController *)self topSpaceForRefinements];
    v32 = [v29 constraintEqualToAnchor:v31 constant:?];
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
  v35 = [(ContaineeViewController *)self headerView];
  [v35 setBackgroundColor:v34];

  v36 = [(ContaineeViewController *)self headerView];
  [v36 addSubview:self->_containerHeaderView];

  v56 = [(ContainerHeaderView *)self->_containerHeaderView heightAnchor];
  v55 = [v56 constraintGreaterThanOrEqualToConstant:v33];
  v58[0] = v55;
  v53 = [(ContainerHeaderView *)self->_containerHeaderView leadingAnchor];
  v54 = [(ContaineeViewController *)self headerView];
  v52 = [v54 leadingAnchor];
  v51 = [v53 constraintEqualToAnchor:v52];
  v58[1] = v51;
  v49 = [(ContainerHeaderView *)self->_containerHeaderView trailingAnchor];
  v50 = [(ContaineeViewController *)self headerView];
  v48 = [v50 trailingAnchor];
  v47 = [v49 constraintEqualToAnchor:v48];
  v58[2] = v47;
  v37 = [(ContainerHeaderView *)self->_containerHeaderView topAnchor];
  v38 = [(ContaineeViewController *)self headerView];
  v39 = [v38 topAnchor];
  v40 = [v37 constraintEqualToAnchor:v39];
  v58[3] = v40;
  v41 = [(ContainerHeaderView *)self->_containerHeaderView bottomAnchor];
  v42 = [(ContaineeViewController *)self headerView];
  v43 = [v42 bottomAnchor];
  v44 = [v41 constraintEqualToAnchor:v43];
  v45 = self->_refinementsBarZeroHeight;
  v58[4] = v44;
  v58[5] = v45;
  v46 = [NSArray arrayWithObjects:v58 count:6];
  [v57 addObjectsFromArray:v46];

  [NSLayoutConstraint activateConstraints:v57];
}

- (void)setHideRefinementsBar:(BOOL)a3
{
  v3 = a3;
  refinementsBar = self->_refinementsBar;
  if (!refinementsBar)
  {
    v6 = sub_100067540();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = NSStringFromBOOL();
      *buf = 134218498;
      v15 = self;
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
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Call stack: %@", buf, 0xCu);
    }

    [(ResultsViewController *)self configureHeader];
    refinementsBar = self->_refinementsBar;
  }

  [(RefinementsBarUIView *)refinementsBar setHidden:v3];
  if (v3)
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

  v11 = [(ContaineeViewController *)self cardPresentationController];
  [v11 updateHeightForCurrentLayout];
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
  v3 = [(ControlContaineeViewController *)&v7 floatingControlsOptions];
  v4 = [(ContaineeViewController *)self cardPresentationController];
  v5 = [v4 containerStyle];

  if (v5 == 6)
  {
    return v3 | 4;
  }

  else
  {
    return v3;
  }
}

- (void)mapView:(id)a3 didChangeUserTrackingMode:(int64_t)a4 animated:(BOOL)a5 fromTrackingButton:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  if (![(ResultsViewController *)self isShowingOmnipresentSearchBar]&& v6)
  {
    self->_tappedTrackingButton = 1;
    v8 = [(ResultsViewController *)self localSearchViewController];
    v9 = [v8 refreshSearchHereBusinessController];
    [v9 didStartRespondingToGesture:v10];
  }
}

- (void)mapView:(id)a3 didStopRespondingToGesture:(int64_t)a4 zoomDirection:(int64_t)a5 zoomGestureType:(int64_t)a6 didDecelerate:(BOOL)a7 tiltDirection:(int64_t)a8
{
  v12 = a3;
  if (![(ResultsViewController *)self isShowingOmnipresentSearchBar])
  {
    v9 = [(ResultsViewController *)self localSearchViewController];
    v10 = [v9 refreshSearchHereBusinessController];
    v11 = [v10 didStopRespondingToGesture:v12];

    [(ResultsViewController *)self showSearchingHereIfNeeded:v11];
  }
}

- (void)mapView:(id)a3 willStartRespondingToGesture:(int64_t)a4 animated:(BOOL)a5
{
  v8 = a3;
  if (![(ResultsViewController *)self isShowingOmnipresentSearchBar])
  {
    v6 = [(ResultsViewController *)self localSearchViewController];
    v7 = [v6 refreshSearchHereBusinessController];
    [v7 didStartRespondingToGesture:v8];
  }
}

- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4
{
  if (self->_tappedTrackingButton)
  {
    self->_tappedTrackingButton = 0;
    v6 = a3;
    v7 = [(ResultsViewController *)self localSearchViewController];
    v8 = [v7 refreshSearchHereBusinessController];
    v9 = [v8 didStopRespondingToGesture:v6];

    [(ResultsViewController *)self showSearchingHereIfNeeded:v9];
  }
}

- (void)showSearchingHereIfNeeded:(BOOL)a3
{
  v3 = a3;
  if ((![(ResultsViewController *)self isPresentingAddStopResultsFromWaypointEditor]|| (GEOConfigGetBOOL() & 1) == 0) && ![(ResultsViewController *)self isShowingOmnipresentSearchBar])
  {
    v5 = [(SearchSession *)self->_searchSession searchInfo];
    if (v5)
    {
      v6 = [(ResultsViewController *)self resultsDelegate];
      v7 = [v6 searchResultsContainerViewController];
      v8 = [v7 chromeViewController];

      v9 = [v8 redoSearchOverlay];
      [v9 setHidden:0];

      if (v3)
      {
        v10 = sub_100067540();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          searchSession = self->_searchSession;
          v20 = 138412290;
          v21 = searchSession;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[ResultsVC] Trigerred auto-redo search: %@", &v20, 0xCu);
        }

        [v8 setNeedsUpdateComponent:@"floatingSearchButton" animated:1];
        v12 = [v8 redoSearchOverlay];
        [v12 updateSearchOverlayWithState:0];

        v13 = [v8 redoSearchOverlay];
        [v13 shouldHideFloatingControl:0 animated:1];

        self->_didTriggerAutoRedoSearch = 1;
        [(ResultsViewController *)self refreshCurrentSearch];
      }

      else
      {
        v14 = [(ResultsViewController *)self localSearchViewController];
        v15 = [v14 refreshSearchHereBusinessController];
        v16 = [v15 shouldShowManualRedoButton];

        if (MapsFeature_IsEnabled_SearchAndDiscovery() && v16)
        {
          v17 = sub_1007991E4();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = self->_searchSession;
            v20 = 138412290;
            v21 = v18;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[SearchVC] Showing search here button as we did not trigger Auto-Redo: %@", &v20, 0xCu);
          }

          [v8 setNeedsUpdateComponent:@"floatingSearchButton" animated:1];
          v19 = [v8 redoSearchOverlay];
          [v19 updateSearchOverlayWithState:1];
        }
      }
    }
  }
}

- (void)_hideSearchHereControl
{
  if (![(ResultsViewController *)self isPresentingAddStopResultsFromWaypointEditor])
  {
    v3 = [(ResultsViewController *)self resultsDelegate];
    v4 = [v3 searchResultsContainerViewController];
    v6 = [v4 chromeViewController];

    [v6 setNeedsUpdateComponent:@"floatingSearchButton" animated:1];
    v5 = [v6 redoSearchOverlay];
    [v5 shouldHideFloatingControl:1 animated:0];
  }
}

- (double)heightForLayout:(unint64_t)a3
{
  if (a3 == 2)
  {

    sub_100068BB8();
  }

  else
  {
    if (a3 == 1)
    {
      [(ContaineeViewController *)self headerHeight];
      v4 = 82.0;
      if (v5 > 82.0)
      {
        [(ContaineeViewController *)self headerHeight];
        v4 = v6;
      }

      v7 = [(ContaineeViewController *)self cardPresentationController];
      [v7 bottomSafeOffset];
      v9 = v8 + v4;
    }

    else
    {
      v7 = [(ContaineeViewController *)self cardPresentationController];
      [v7 availableHeight];
      v9 = v11;
    }

    return v9;
  }

  return result;
}

- (void)didChangeLayout:(unint64_t)a3
{
  v11.receiver = self;
  v11.super_class = ResultsViewController;
  [(ContaineeViewController *)&v11 didChangeLayout:?];
  [(ResultsViewController *)self _updateLoadingErrorFrames];
  if ([(ResultsViewController *)self containeeLayout]!= a3)
  {
    v5 = objc_alloc_init(SearchSessionAnalytics);
    [(SearchSessionAnalytics *)v5 setTarget:[(ResultsViewController *)self currentUITargetForAnalytics]];
    v6 = [(ResultsViewController *)self containeeLayout];
    if (v6 && v6 < a3)
    {
      v7 = 1;
    }

    else
    {
      v8 = [(ResultsViewController *)self containeeLayout];
      if (!a3 || v8 <= a3)
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

    [(ResultsViewController *)self setContaineeLayout:a3];
  }

  [(ResultsViewController *)self updateRefinementBarAlpha];
  [(MUScrollViewImpressionsCalculator *)self->_impressionsCalculator logImpressions];
}

- (void)willChangeContainerStyle:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = ResultsViewController;
  [(ContaineeViewController *)&v5 willChangeContainerStyle:?];
  [(LocalSearchViewController *)self->_localSearchViewController setEnable:a3 != 6];
}

- (double)topSpaceForScrollPocket
{
  v3 = [(ResultsViewController *)self contentTableView];
  v4 = sub_10000FA08(v3);

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
    v3 = [self->_currentDataSource itemCountInVenue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
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

- (void)_updateResultRefinementBarFromSearchInfo:(id)a3
{
  v11 = a3;
  v4 = [v11 resultRefinementGroup];

  if (v4)
  {
    v5 = [(ResultsViewController *)self refinementsSelectionSequenceNumber];

    if (!v5)
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

    v8 = [v11 resultRefinementGroup];
    v9 = [_TtC4Maps27RefinementsViewModelFactory barViewModelWith:v8];

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
  v3 = [(ResultsViewController *)self originalSearchInfo];
  if (v3)
  {
    v11 = v3;
    v4 = [v3 searchText];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v7 = [v11 searchFieldItem];
      v6 = [v7 title];
    }

    searchResultsDataSource = self->_searchResultsDataSource;
    v9 = [(ResultsViewController *)self currentUITargetForAnalytics];
    v10 = [(MUScrollViewImpressionsCalculator *)self->_impressionsCalculator sessionIdentifier];
    [SearchResultsAnalyticsManager didShowSearchResultsWithDataSource:searchResultsDataSource target:v9 query:v6 impressionsSessionIdentifier:v10];

    v3 = v11;
  }
}

- (int)currentUITargetForAnalytics
{
  v3 = [(SearchSession *)self->_searchSession searchFieldItem];
  if ([(ResultsViewController *)self isPresentingAddStopResultsFromWaypointEditor])
  {
    v4 = 58;
  }

  else
  {
    v5 = [v3 searchCategory];

    if (v5)
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

- (BOOL)shouldQuickActionMenuPresenter:(id)a3 showDirectionsToPlace:(id)a4
{
  v5 = a4;
  v6 = [(ResultsViewController *)self resultsDelegate];
  v7 = [v6 venuesManagerForSearchResults];
  v8 = [v5 mapItem];

  LOBYTE(v5) = [v7 isUserAtSameVenueAsMapItem:v8];
  return v5 ^ 1;
}

- (void)quickActionMenuPresenter:(id)a3 selectedRemoveDroppedPinOf:(id)a4
{
  v5 = a4;
  v6 = [(ResultsViewController *)self resultsDelegate];
  [v6 removeDroppedPin:v5];
}

- (id)mapServiceTraitsForQuickActionPresenter:(id)a3
{
  v3 = [(ResultsViewController *)self resultsDelegate];
  v4 = [v3 traitsForQuickActionPresenter];

  return v4;
}

- (void)quickActionMenuPresenter:(id)a3 selectedShowPlaceCard:(id)a4
{
  v5 = [(SearchResultQuickActionMenuPresenter *)self->_quickActionMenuPresenter indexPath:a3];
  if (v5)
  {
    v7 = v5;
    v6 = [self->_currentDataSource objectAtIndexPath:v5];
    [(ResultsViewController *)self dataSource:self->_currentDataSource itemTapped:v6];

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

    v8 = [(ResultsViewController *)self resultsDelegate];
    [v8 doShareSheetForShareItem:v7];

    v5 = v9;
  }
}

- (void)quickActionMenuPresenter:(id)a3 selectedViewWebsiteFor:(id)a4
{
  v5 = [a4 searchResult];
  if (v5)
  {
    v7 = v5;
    v6 = [(ResultsViewController *)self resultsDelegate];
    [v6 openWebsiteForSearchResult:v7];

    v5 = v7;
  }
}

- (void)quickActionMenuPresenter:(id)a3 selectedCall:(id)a4
{
  v5 = [a4 searchResult];
  if (v5)
  {
    v7 = v5;
    v6 = [(ResultsViewController *)self resultsDelegate];
    [v6 doAudioCallToSearchResult:v7];

    v5 = v7;
  }
}

- (void)quickActionMenuPresenter:(id)a3 selectedDirectionsTo:(id)a4
{
  v5 = [a4 searchResult];
  if (v5)
  {
    if ([(ResultsViewController *)self isPresentingAddStopResultsFromWaypointEditor])
    {
      [(ResultsViewController *)self didTapOnAddStopWithSearchResult:v5 atIndexPath:0];
    }

    else
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
      v15 = &off_1016E9D58;
      v12 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v13 = [(ResultsViewController *)self resultsDelegate];
      [v13 doDirectionItem:v11 withUserInfo:v12 viewController:0];
    }
  }
}

- (void)didTapOnUserLibraryMapItem:(id)a3
{
  if ([a3 _hasHikeInfo])
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
    v4 = [(ResultsViewController *)self resultsDelegate];
    [v4 showLibraryPlacesViewFromViewController:self];
  }
}

- (void)didTapOnAddStopWithSearchResult:(id)a3 atIndexPath:(id)a4
{
  v11 = @"DirectionsSessionInitiatorKey";
  v12 = &off_1016E9D58;
  v6 = a4;
  v7 = a3;
  v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v9 = [(ResultsViewController *)self resultsDelegate];
  [v9 addStopForSearchResult:v7 withUserInfo:v8 viewController:self];

  v10 = [v7 mapItem];

  [SearchResultsAnalyticsManager didTapOnAddStopForSearchResultWithMapItem:v10 indexPath:v6];
}

- (void)didTapOnTappableEntry:(id)a3
{
  v4 = a3;
  v9 = [[SearchResult alloc] initWithMapItem:v4];

  v5 = [(ResultsViewController *)self resultsList];
  v6 = [v5 arrayByAddingObject:v9];

  v7 = [(ResultsViewController *)self resultsDelegate];
  [v7 setSearchPins:v6 selectedPin:v9 animated:1];

  v8 = [(SearchResult *)v9 mapItem];
  +[SearchResultsAnalyticsManager tappableEntryUnitTappedWithMuid:](SearchResultsAnalyticsManager, "tappableEntryUnitTappedWithMuid:", [v8 _muid]);
}

- (void)didTapOnContainmentParentMapItem:(id)a3
{
  v4 = a3;
  v9 = [[SearchResult alloc] initWithMapItem:v4];

  v5 = [(ResultsViewController *)self resultsList];
  v6 = [v5 arrayByAddingObject:v9];

  v7 = [(ResultsViewController *)self resultsDelegate];
  [v7 setSearchPins:v6 selectedPin:v9 animated:1];

  v8 = [(SearchResult *)v9 mapItem];
  +[SearchResultsAnalyticsManager containmentParentUnitTappedWithMuid:](SearchResultsAnalyticsManager, "containmentParentUnitTappedWithMuid:", [v8 _muid]);
}

- (void)didTapOnFlyoverWithSearchResult:(id)a3
{
  v4 = a3;
  v5 = [(ResultsViewController *)self resultsDelegate];
  v6 = [v4 mapItem];
  [v5 enterFlyoverForMapItem:v6 viewController:self];

  v7 = [v4 mapItem];

  +[SearchResultsAnalyticsManager flyoverButtonTappedOnSearchResultWithMuid:](SearchResultsAnalyticsManager, "flyoverButtonTappedOnSearchResultWithMuid:", [v7 _muid]);
}

- (void)didTapOnWebsiteWithSearchResult:(id)a3
{
  v4 = a3;
  v5 = [(ResultsViewController *)self resultsDelegate];
  v6 = [v4 mapItem];
  v7 = [v6 url];
  [v5 openSearchResultURL:v7 viewController:self];

  v8 = [v4 mapItem];

  +[SearchResultsAnalyticsManager websiteButtonTappedOnSearchResultWithMuid:](SearchResultsAnalyticsManager, "websiteButtonTappedOnSearchResultWithMuid:", [v8 _muid]);
}

- (void)didTapOnCallWithSearchResult:(id)a3
{
  v9 = a3;
  v3 = [v9 mapItem];
  v4 = [v3 phoneNumber];
  v5 = [v4 length];

  if (v5)
  {
    v6 = +[UIApplication sharedApplication];
    v7 = [v3 phoneNumber];
    [v6 callPhoneNumber:v7 completion:0];
  }

  v8 = [v9 mapItem];
  +[SearchResultsAnalyticsManager callButtonTappedOnSearchResultWithMuid:](SearchResultsAnalyticsManager, "callButtonTappedOnSearchResultWithMuid:", [v8 _muid]);
}

- (void)didTapOnLookAroundWithSearchResult:(id)a3
{
  v8 = a3;
  v4 = [v8 mapItem];
  if ([v4 _hasLookAroundStorefront])
  {
    v5 = [(ResultsViewController *)self resultsDelegate];
    v6 = [MKLookAroundEntryPoint entryPointWithMapItem:v4 wantsCloseUpView:1];
    [v5 searchResultEnterLookAroundWithEntryPoint:v6 lookAroundView:0 showsFullScreen:1 originFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  }

  v7 = [v8 mapItem];
  +[SearchResultsAnalyticsManager lookAroundButtonTappedOnSearchResultWithMuid:](SearchResultsAnalyticsManager, "lookAroundButtonTappedOnSearchResultWithMuid:", [v7 _muid]);
}

- (void)didTapOnDirectionsWithSearchResult:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(SearchFieldItem);
  v6 = +[SearchResult currentLocationSearchResult];
  [(SearchFieldItem *)v5 setSearchResult:v6];

  v7 = [SearchFieldItem searchFieldItemWithObject:v4];
  v8 = [DirectionItem alloc];
  v16[0] = v5;
  v16[1] = v7;
  v9 = [NSArray arrayWithObjects:v16 count:2];
  v10 = [(DirectionItem *)v8 initWithItems:v9 ignoreMapType:0 transportType:0];

  v14 = @"DirectionsSessionInitiatorKey";
  v15 = &off_1016E9D58;
  v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v12 = [(ResultsViewController *)self resultsDelegate];
  [v12 doDirectionItem:v10 withUserInfo:v11 viewController:0];

  v13 = [v4 mapItem];

  +[SearchResultsAnalyticsManager directionsButtonTappedOnSearchResultWithMuid:](SearchResultsAnalyticsManager, "directionsButtonTappedOnSearchResultWithMuid:", [v13 _muid]);
}

- (void)didTapOnCuratedGuides:(id)a3
{
  v4 = a3;
  v5 = [(ResultsViewController *)self resultsDelegate];
  [v5 showCuratedCollectionsList:v4 usingTitle:0 usingCollectionIds:0 completion:0 viewController:self];

  +[SearchResultsAnalyticsManager curatedGuidesUnitTapped];
}

- (void)didTapOnCuratedGuide:(id)a3
{
  v4 = a3;
  v5 = [(ResultsViewController *)self resultsDelegate];
  [v5 showCuratedCollection:v4 viewController:self];

  +[SearchResultsAnalyticsManager curatedGuidesUnitTapped];
}

- (void)didTapOnUserGeneratedGuide:(id)a3
{
  v4 = a3;
  v5 = [(ResultsViewController *)self resultsDelegate];
  [v5 showCollection:v4 viewController:self];

  +[SearchResultsAnalyticsManager userGeneratedGuideUnitTapped];
}

- (int)listForDataSource:(id)a3
{
  v3 = [(SearchSession *)self->_searchSession searchFieldItem];
  v4 = [v3 searchCategory];

  if (v4)
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
  v2 = [(ResultsViewController *)self originalSearchInfo];
  v3 = [v2 searchText];

  return v3;
}

- (int)refineSearchSessionType
{
  v2 = [(SearchSession *)self->_searchSession searchFieldItem];
  v3 = [v2 searchCategory];

  if (v3)
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
  v3 = [(SearchSession *)self->_searchSession searchInfo];
  v4 = [v3 searchFieldItem];
  v5 = [v4 title];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(ResultsTitleView *)self->_resultsTitleView title];
  }

  v12 = v7;

  v8 = [[ReportASearchAutocompleteResult alloc] initWithTitle:v12];
  v9 = [(ResultsViewController *)self _maps_mapsSceneDelegate];
  v10 = [v9 rapPresenter];
  [v10 presentAddToMapsFromSearchEntryPoint:-[ResultsViewController currentUITargetForAnalytics](self result:"currentUITargetForAnalytics") completion:{v8, 0}];

  v11 = [(SearchSession *)self->_searchSession currentResults];
  +[SearchResultsAnalyticsManager addAPlaceTappedWithNumberOfResults:target:](SearchResultsAnalyticsManager, "addAPlaceTappedWithNumberOfResults:target:", [v11 count], -[ResultsViewController currentUITargetForAnalytics](self, "currentUITargetForAnalytics"));
}

- (void)dataSource:(id)a3 itemTapped:(id)a4
{
  v15 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = v15;
  if (isKindOfClass)
  {
    v7 = v15;
    v8 = [v7 mapItem];
    v9 = [v8 _hasHikeInfo];

    if (v9)
    {
      v10 = [(ResultsViewController *)self resultsDelegate];
      v11 = [v7 mapItem];
      [v10 enterRouteCreationWithMapItem:v11 completion:0];
    }

    else
    {
      v12 = [v7 placeCollection];

      v13 = [(ResultsViewController *)self resultsDelegate];
      v10 = v13;
      if (!v12)
      {
        [v13 selectSearchResult:v7 animated:1];
        goto LABEL_7;
      }

      v11 = [v7 placeCollection];
      [v10 showCuratedCollection:v11 viewController:self];
    }

LABEL_7:
    lastItemTapped = self->_lastItemTapped;
    self->_lastItemTapped = v7;

    v6 = v15;
  }
}

- (void)dataSource:(id)a3 itemFocused:(id)a4
{
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ResultsViewController *)self resultsDelegate];
    [v5 focusSearchResult:v7 viewController:self];

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

- (void)dataSourceUpdated:(id)a3
{
  if (self->_currentDataSource == a3)
  {
    [(LoadingModeView *)self->_loadingModeView setHidden:1];
    [(UITableView *)self->_contentTableView setHidden:0];
    [(UITableView *)self->_contentTableView reloadData];
    v5 = [(ResultsViewController *)self resultsDelegate];
    v6 = [v5 venuesManagerForSearchResults];
    [v6 venuesControlCoordinatingDidChangeSearchResultCount:self];

    v8 = [(ResultsViewController *)self resultsDelegate];
    v7 = [v8 venuesManagerForSearchResults];
    [v7 updateFocusedVenueFloor];
  }
}

- (void)setHeaderContentWithSearchSession:(id)a3
{
  v58 = a3;
  v4 = [objc_opt_class() isReloadingRefinementsWithSearchSession:v58];
  v5 = v58;
  if ((v4 & 1) == 0)
  {
    v6 = [v58 searchFieldItem];
    v7 = [v58 searchInfo];
    v8 = [v6 originalSearchString];
    v57 = v7;
    if (!v8)
    {
      v9 = [v6 historyItem];
      v10 = &OBJC_PROTOCOL___MSPHistoryEntrySearch;
      objc_opt_class();
      v8 = v9;
      if (objc_opt_isKindOfClass())
      {
        v11 = v8;
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;

      if (v12 && ([v12 historyEntry], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "conformsToProtocol:", v10), v13, v14))
      {
        v15 = v8;
      }

      else
      {
        v15 = 0;
      }

      if (!v15)
      {
        v51 = [v6 completion];
        v52 = [v51 _type];

        if (v52)
        {
          v17 = 1;
          goto LABEL_21;
        }

LABEL_13:
        v16 = [v6 searchCategory];
        if (v16)
        {
          v17 = 1;
        }

        else
        {
          v18 = [v6 placeCategoryItem];
          v17 = v18 || [(ResultsViewController *)self isWaitingForResults]|| [(ResultsViewController *)self isShowingOmnipresentSearchBar]|| sub_10000FA08(self) == 5;
        }

LABEL_21:
        [(ResultsTitleView *)self->_resultsTitleView setEditButtonHidden:v17];
        v19 = [(ResultsViewController *)self isWaitingForResults];
        v20 = 0.0;
        if ((v19 & 1) == 0)
        {
          v21 = [(ResultsViewController *)self isShowingOmnipresentSearchBar];
          v20 = 1.0;
          if (v21)
          {
            v20 = 0.0;
          }
        }

        [(ContainerHeaderView *)self->_containerHeaderView setHairLineAlpha:v20];
        v22 = [v7 headerDisplayName];
        v23 = v22;
        if (v22)
        {
          v24 = v22;
        }

        else
        {
          v24 = [v6 title];
        }

        v25 = v24;

        v26 = [v7 subHeaderDisplayName];
        if (v26 && (v27 = v26, v28 = [v58 isRedoOrAutoRedoSearchType], v27, (v28 & 1) == 0))
        {
          v33 = [v7 subHeaderDisplayName];
        }

        else
        {
          v29 = [v58 currentResults];

          if (v29)
          {
            v30 = +[NSBundle mainBundle];
            v31 = [v30 localizedStringForKey:@"[Results] subtitle" value:@"localized string not found" table:0];
            v32 = [v58 currentResults];
            v33 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v31, [v32 count]);
          }

          else
          {
            v33 = &stru_1016631F0;
          }
        }

        if ([(__CFString *)v33 length])
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

          v37 = [(__CFString *)v33 stringByAppendingString:v36];

          v33 = v37;
        }

        [(ResultsTitleView *)self->_resultsTitleView setTitle:v25];
        [(ResultsTitleView *)self->_resultsTitleView setSubtitle:v33];
        v38 = [v6 searchCategory];
        v39 = [v38 styleAttributes];
        if (v39)
        {
          v40 = v39;
        }

        else
        {
          v41 = [v6 placeCategoryItem];
          v42 = [v41 searchCategory];
          v40 = [v42 styleAttributes];

          if (!v40)
          {
            v53 = [v7 styleAttributes];

            if (!v53)
            {
              v44 = 0;
              v50 = 0;
              goto LABEL_43;
            }

            v54 = [GEOFeatureStyleAttributes alloc];
            v55 = [v7 styleAttributes];
            v43 = [v54 initWithGEOStyleAttributes:v55];

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
            v48 = [(ResultsViewController *)self traitCollection];
            LOBYTE(v56) = [v48 userInterfaceStyle] == 2;
            v49 = [MKIconManager imageForStyle:v43 size:4 forScale:1 format:0 transparent:0 transitMode:0 isCarplay:v47 nightMode:v56];

            v50 = v43;
            if (v49)
            {
LABEL_44:
              [(ResultsTitleView *)self->_resultsTitleView setHeaderImage:v49];

              v5 = v58;
              goto LABEL_45;
            }

LABEL_43:
            v49 = [UIImage imageNamed:@"search"];
            v43 = v50;
            goto LABEL_44;
          }
        }

        v43 = v40;
        v44 = v43;
        goto LABEL_42;
      }
    }

    goto LABEL_13;
  }

LABEL_45:
}

- (void)resultRefinementsBarApplyOpenOptionViewModel:(id)a3 atIndex:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (MapsFeature_IsEnabled_SearchAndDiscovery())
  {
    v8 = [(LocalSearchViewController *)self->_localSearchViewController refreshSearchHereBusinessController];
    [v8 resetRedoSearchController];

    self->_lastRefinementOriginType = 1;
    v9 = [(ResultsViewController *)self originalSearchInfo];
    v10 = objc_alloc_init(GEOPDResultRefinementQuery);
    [v10 setResultRefinementOriginType:self->_lastRefinementOriginType];
    v11 = [v9 resultRefinementGroup];
    v12 = [v11 refinementSessionState];
    [v10 setRefinementSessionState:v12];

    v13 = [v9 resultRefinementGroup];
    v14 = [v13 resultRefinementBar];
    v15 = [v14 resultRefinements];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100D997F0;
    v33[3] = &unk_101653DD8;
    v34 = v7;
    v35 = v6;
    v16 = v10;
    v36 = v16;
    [v15 enumerateObjectsUsingBlock:v33];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v17 = [v9 resultRefinementGroup];
    v18 = [v17 resultRefinementView];
    v19 = [v18 sections];

    v20 = [v19 countByEnumeratingWithState:&v29 objects:v39 count:16];
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
            objc_enumerationMutation(v19);
          }

          v24 = [*(*(&v29 + 1) + 8 * v23) convertToGEOPDResultRefinementSection];
          [v16 addRefinementSection:v24];

          v23 = v23 + 1;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v29 objects:v39 count:16];
      }

      while (v21);
    }

    v25 = [(ResultsViewController *)self resultsDelegate];
    v26 = [(SearchSession *)self->_searchSession searchFieldItem];
    v37 = @"SearchSessionAddStopFromWaypointEditor";
    v27 = [NSNumber numberWithBool:[(ResultsViewController *)self isPresentingAddStopResultsFromWaypointEditor]];
    v38 = v27;
    v28 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    [v25 doSearchItem:v26 withUserInfo:v28 refinementsQuery:v16 viewController:self];
  }
}

- (void)resultRefinementsBarApplyMultiSelectViewModel:(id)a3 atIndex:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(LocalSearchViewController *)self->_localSearchViewController refreshSearchHereBusinessController];
  [v8 resetRedoSearchController];

  self->_lastRefinementOriginType = 1;
  v9 = [(ResultsViewController *)self originalSearchInfo];
  v10 = objc_alloc_init(GEOPDResultRefinementQuery);
  [v10 setResultRefinementOriginType:self->_lastRefinementOriginType];
  v11 = [v9 resultRefinementGroup];
  v12 = [v11 refinementSessionState];
  [v10 setRefinementSessionState:v12];

  v13 = [v9 resultRefinementGroup];
  v14 = [v13 resultRefinementBar];
  v15 = [v14 resultRefinements];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100D99C08;
  v35[3] = &unk_101653DD8;
  v16 = v7;
  v36 = v16;
  v17 = v6;
  v37 = v17;
  v18 = v10;
  v38 = v18;
  [v15 enumerateObjectsUsingBlock:v35];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v19 = [v9 resultRefinementGroup];
  v20 = [v19 resultRefinementView];
  v21 = [v20 sections];

  v22 = [v21 countByEnumeratingWithState:&v31 objects:v41 count:16];
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
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v31 + 1) + 8 * v25) convertToGEOPDResultRefinementSection];
        [v18 addRefinementSection:v26];

        v25 = v25 + 1;
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v31 objects:v41 count:16];
    }

    while (v23);
  }

  v27 = [(ResultsViewController *)self resultsDelegate];
  v28 = [(SearchSession *)self->_searchSession searchFieldItem];
  v39 = @"SearchSessionAddStopFromWaypointEditor";
  v29 = [NSNumber numberWithBool:[(ResultsViewController *)self isPresentingAddStopResultsFromWaypointEditor]];
  v40 = v29;
  v30 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  [v27 doSearchItem:v28 withUserInfo:v30 refinementsQuery:v18 viewController:self];
}

- (void)allRefinementsApplyViewModel:(id)a3 selectionSequenceNumber:(id)a4
{
  v6 = a3;
  [(ResultsViewController *)self setRefinementsSelectionSequenceNumber:a4];
  v7 = [v6 tappedBarButtonIndex];

  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = [v6 sections];
  v9 = [v8 firstObject];

  v10 = [v9 type];
  if (v10)
  {
    if (v10 == 2)
    {
      v13 = v9;
      v12 = [v6 tappedBarButtonIndex];
      [(ResultsViewController *)self resultRefinementsBarApplyOpenOptionViewModel:v13 atIndex:v12];
      goto LABEL_7;
    }

    if (v10 == 1)
    {
      v11 = v9;
      v12 = [v6 tappedBarButtonIndex];
      [(ResultsViewController *)self resultRefinementsBarApplyMultiSelectViewModel:v11 atIndex:v12];
LABEL_7:

LABEL_24:
      goto LABEL_25;
    }

LABEL_9:
    v14 = [(LocalSearchViewController *)self->_localSearchViewController refreshSearchHereBusinessController];
    [v14 resetRedoSearchController];

    self->_lastRefinementOriginType = 2;
    v9 = [(ResultsViewController *)self originalSearchInfo];
    v12 = objc_alloc_init(GEOPDResultRefinementQuery);
    [v12 setResultRefinementOriginType:self->_lastRefinementOriginType];
    v15 = [v9 resultRefinementGroup];
    v16 = [v15 refinementSessionState];
    [v12 setRefinementSessionState:v16];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v17 = [v9 resultRefinementGroup];
    v18 = [v17 resultRefinementBar];
    v19 = [v18 resultRefinements];

    v20 = [v19 countByEnumeratingWithState:&v39 objects:v46 count:16];
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
            objc_enumerationMutation(v19);
          }

          v24 = [*(*(&v39 + 1) + 8 * v23) convertToGEOPDResultRefinement];
          [v12 addRefinement:v24];

          v23 = v23 + 1;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v39 objects:v46 count:16];
      }

      while (v21);
    }

    v25 = [_TtC4Maps21GEORefinementsFactory allRefinementsSectionsWith:v6];
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

          v30 = [*(*(&v35 + 1) + 8 * v29) convertToGEOPDResultRefinementSection];
          [v12 addRefinementSection:v30];

          v29 = v29 + 1;
        }

        while (v27 != v29);
        v27 = [v25 countByEnumeratingWithState:&v35 objects:v45 count:16];
      }

      while (v27);
    }

    v31 = [(ResultsViewController *)self resultsDelegate];
    v32 = [(SearchSession *)self->_searchSession searchFieldItem];
    v43 = @"SearchSessionAddStopFromWaypointEditor";
    v33 = [NSNumber numberWithBool:[(ResultsViewController *)self isPresentingAddStopResultsFromWaypointEditor]];
    v44 = v33;
    v34 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    [v31 doSearchItem:v32 withUserInfo:v34 refinementsQuery:v12 viewController:self];

    goto LABEL_24;
  }

LABEL_25:
}

- (void)resultRefinementsBarDidTapOnOpenOptions:(id)a3 tappedAtIndex:(int64_t)a4
{
  v16 = a3;
  IsEnabled_SearchAndDiscovery = MapsFeature_IsEnabled_SearchAndDiscovery();
  v7 = v16;
  if (IsEnabled_SearchAndDiscovery)
  {
    v8 = [_TtC4Maps27RefinementsViewModelFactory openOptionsRefinementsViewModelWith:v16 tappedAtIndex:a4];
    v9 = [AllRefinementsViewController alloc];
    v10 = [(ResultsViewController *)self refinementsSelectionSequenceNumber];
    v11 = [v10 copy];
    v12 = [(AllRefinementsViewController *)v9 initWithViewModel:v8 selectionSequenceNumber:v11 resultRefinementsAnalyticsDelegate:self->_analyticsManager];

    v13 = [(ContaineeViewController *)self containeeDelegate];
    [(ContaineeViewController *)v12 setContaineeDelegate:v13];

    [(AllRefinementsViewController *)v12 setAllRefinementsDelegate:self];
    if ([(ResultsViewController *)self isPresentingAddStopResultsFromWaypointEditor]&& GEOConfigGetBOOL())
    {
      v14 = [(ResultsViewController *)self resultsDelegate];
      [v14 showFiltersUsingViewController:v12];
    }

    else
    {
      v14 = [(ResultsViewController *)self resultsDelegate];
      v15 = [v14 searchResultsContainerViewController];
      [v15 presentController:v12 animated:1];
    }

    [(ResultRefinementsAnalyticsManager *)self->_analyticsManager logRefinementsEvent:3 fromSource:0];
    v7 = v16;
  }
}

- (void)resultRefinementsBarDidTapOnToggle:(id)a3 isSelected:(BOOL)a4
{
  v4 = a4;
  analyticsManager = self->_analyticsManager;
  v6 = [a3 refinementKey];
  [(ResultRefinementsAnalyticsManager *)analyticsManager resultRefinementTappedWithKey:v6 source:0 refinementType:0 isSelected:v4];
}

- (void)resultRefinementsBarDidTapOnMultiSelect:(id)a3 tappedAtIndex:(int64_t)a4
{
  v12 = [_TtC4Maps27RefinementsViewModelFactory multiSelectRefinementsViewModelWith:a3 tappedAtIndex:a4];
  v5 = [AllRefinementsViewController alloc];
  v6 = [(ResultsViewController *)self refinementsSelectionSequenceNumber];
  v7 = [v6 copy];
  v8 = [(AllRefinementsViewController *)v5 initWithViewModel:v12 selectionSequenceNumber:v7 resultRefinementsAnalyticsDelegate:self->_analyticsManager];

  v9 = [(ContaineeViewController *)self containeeDelegate];
  [(ContaineeViewController *)v8 setContaineeDelegate:v9];

  [(AllRefinementsViewController *)v8 setAllRefinementsDelegate:self];
  if ([(ResultsViewController *)self isPresentingAddStopResultsFromWaypointEditor]&& GEOConfigGetBOOL())
  {
    v10 = [(ResultsViewController *)self resultsDelegate];
    [v10 showFiltersUsingViewController:v8];
  }

  else
  {
    v10 = [(ResultsViewController *)self resultsDelegate];
    v11 = [v10 searchResultsContainerViewController];
    [v11 presentController:v8 animated:1];
  }

  [(ResultRefinementsAnalyticsManager *)self->_analyticsManager logRefinementsEvent:3 fromSource:0];
}

- (void)resultRefinementsBarDidTapOnSeeAllRefinements:(id)a3
{
  v4 = a3;
  v5 = [AllRefinementsViewController alloc];
  v6 = [v4 copy];

  v7 = [(ResultsViewController *)self refinementsSelectionSequenceNumber];
  v8 = [v7 copy];
  v12 = [(AllRefinementsViewController *)v5 initWithViewModel:v6 selectionSequenceNumber:v8 resultRefinementsAnalyticsDelegate:self->_analyticsManager];

  v9 = [(ContaineeViewController *)self containeeDelegate];
  [(ContaineeViewController *)v12 setContaineeDelegate:v9];

  [(AllRefinementsViewController *)v12 setAllRefinementsDelegate:self];
  if ([(ResultsViewController *)self isPresentingAddStopResultsFromWaypointEditor]&& GEOConfigGetBOOL())
  {
    v10 = [(ResultsViewController *)self resultsDelegate];
    [v10 showFiltersUsingViewController:v12];
  }

  else
  {
    v10 = [(ResultsViewController *)self resultsDelegate];
    v11 = [v10 searchResultsContainerViewController];
    [v11 presentController:v12 animated:1];
  }

  [(ResultRefinementsAnalyticsManager *)self->_analyticsManager logRefinementsEvent:2 fromSource:0];
}

- (void)resultRefinementsBarDidUpdateViewModel:(id)a3
{
  v4 = a3;
  v5 = [(LocalSearchViewController *)self->_localSearchViewController refreshSearchHereBusinessController];
  [v5 resetRedoSearchController];

  self->_lastRefinementOriginType = 1;
  v6 = [(ResultsViewController *)self originalSearchInfo];
  v7 = objc_alloc_init(GEOPDResultRefinementQuery);
  [v7 setResultRefinementOriginType:self->_lastRefinementOriginType];
  v8 = [v6 resultRefinementGroup];
  v9 = [v8 refinementSessionState];
  [v7 setRefinementSessionState:v9];

  v10 = [_TtC4Maps21GEORefinementsFactory barResultRefinementsWith:v4];
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

        v15 = [*(*(&v32 + 1) + 8 * v14) convertToGEOPDResultRefinement];
        [v7 addRefinement:v15];

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
  v16 = [v6 resultRefinementGroup];
  v17 = [v16 resultRefinementView];
  v18 = [v17 sections];

  v19 = [v18 countByEnumeratingWithState:&v28 objects:v38 count:16];
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
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v28 + 1) + 8 * v22) convertToGEOPDResultRefinementSection];
        [v7 addRefinementSection:v23];

        v22 = v22 + 1;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v20);
  }

  v24 = [(ResultsViewController *)self resultsDelegate];
  v25 = [(SearchSession *)self->_searchSession searchFieldItem];
  v36[0] = @"SearchSessionFromRefinementBar";
  v36[1] = @"SearchSessionAddStopFromWaypointEditor";
  v37[0] = &__kCFBooleanTrue;
  v26 = [NSNumber numberWithBool:[(ResultsViewController *)self isPresentingAddStopResultsFromWaypointEditor]];
  v37[1] = v26;
  v27 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:2];
  [v24 doSearchItem:v25 withUserInfo:v27 refinementsQuery:v7 viewController:self];
}

- (void)increasResultRefinementsSelectionSequenceNumber
{
  v4 = [(ResultsViewController *)self refinementsSelectionSequenceNumber];
  v3 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 intValue] + 1);
  [(ResultsViewController *)self setRefinementsSelectionSequenceNumber:v3];
}

- (void)searchDidCancel:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100067540();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v11 = 134218242;
    v12 = self;
    v13 = 2080;
    v14 = "[ResultsViewController searchDidCancel:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%p] %s", &v11, 0x16u);
  }

  [(LoadingModeView *)self->_loadingModeView setHidden:1];
  v6 = [(ResultsViewController *)self impressionsCalculator];
  [v6 setActive:0];

  v7 = [(ResultsViewController *)self resultsDelegate];
  [v7 clearSearchResults];

  [(ResultsViewController *)self setResultsList:0];
  self->hasSetTheContentOffset = 0;
  [(RefinementsBarUIView *)self->_refinementsBar setViewModel:0];
  refinementsController = self->_refinementsController;
  self->_refinementsController = 0;

  v9 = [(LocalSearchViewController *)self->_localSearchViewController refreshSearchHereBusinessController];
  [v9 resetRedoSearchController];

  if (v3)
  {
    v10 = [(ResultsViewController *)self resultsDelegate];
    [v10 closeSearchResultsViewController:self];
  }
}

- (BOOL)isWaitingForResults
{
  v2 = self->_searchSession;
  v3 = [(SearchSession *)v2 isSingleResultToShowAsPlacecard];
  if (![(SearchSession *)v2 isRedoOrAutoRedoSearchType]&& [(SearchSession *)v2 isLoading])
  {
    v3 = 1;
  }

  return v3;
}

- (id)loadingString
{
  v2 = self->_searchSession;
  v3 = [(SearchSession *)v2 stringToDisplay];
  v4 = [(SearchSession *)v2 searchFieldItem];

  v5 = [v4 searchCategory];

  if (v5)
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"Searching for  ... [Search Category]" value:@"localized string not found" table:0];
    [NSString stringWithFormat:v7, v3];
  }

  else
  {
    v8 = [v4 autocompletePerson];
    v9 = [v8 handle];

    if (!v9)
    {
      v12 = [v4 completion];
      v13 = [v12 mapItem];

      v14 = +[NSBundle mainBundle];
      v6 = v14;
      if (v13)
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
  v4 = [(ResultsViewController *)self loadingString];
  [(LoadingModeView *)loadingModeView setTitle:v4];

  [(LoadingModeView *)self->_loadingModeView setHidden:0];
  [(UITableView *)self->_contentTableView setHidden:1];
  y = CGPointZero.y;
  contentTableView = self->_contentTableView;

  [(UITableView *)contentTableView setContentOffset:CGPointZero.x, y];
}

- (void)headerViewButtonTapped:(id)a3 buttonType:(unint64_t)a4
{
  v5 = a3;
  v6 = sub_100067540();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10.receiver = self;
    v10.super_class = ResultsViewController;
    v7 = [(ResultsViewController *)&v10 class];
    v8 = v7;
    v9 = [(ResultsViewController *)self resultsDelegate];
    *buf = 138412802;
    v12 = self;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Header view close button tapped. Self : %@, Super class: %@ delegate: %@", buf, 0x20u);
  }

  [(ResultsViewController *)self handleDismissAction:v5];
}

- (void)headerViewTapped:(id)a3
{
  v3 = [(ContaineeViewController *)self cardPresentationController];
  [v3 wantsExpandLayout];
}

- (void)handleDismissAction:(id)a3
{
  v4 = a3;
  v5 = +[MKMapService sharedService];
  [v5 captureUserAction:4 onTarget:-[ResultsViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];

  v6 = [(ResultsViewController *)self resultsDelegate];
  [v6 clearSearchResults];

  [(ResultsViewController *)self setResultsList:0];
  self->hasSetTheContentOffset = 0;
  [(ErrorModeView *)self->_errorModeView removeErrorIconImageView];
  v7 = [(LocalSearchViewController *)self->_localSearchViewController refreshSearchHereBusinessController];
  [v7 resetRedoSearchController];

  v8.receiver = self;
  v8.super_class = ResultsViewController;
  [(ContaineeViewController *)&v8 handleDismissAction:v4];
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

- (void)applyAlphaToContent:(double)a3
{
  v8.receiver = self;
  v8.super_class = ResultsViewController;
  [(ContaineeViewController *)&v8 applyAlphaToContent:?];
  v5 = 0.0;
  if (![(ResultsViewController *)self _shouldHideHairline])
  {
    v6 = [(ContaineeViewController *)self cardPresentationController];
    v7 = [v6 containerStyle];

    if (!self->_hideHeader)
    {
      if (v7 == 6)
      {
        v5 = 1.0;
      }

      else
      {
        v5 = a3;
      }

      if ([(ResultsViewController *)self isShowingOmnipresentSearchBar])
      {
        v5 = 0.0;
      }
    }
  }

  [(ContainerHeaderView *)self->_containerHeaderView setHairLineAlpha:v5];
  [(ErrorModeView *)self->_errorModeView setAlpha:a3];
  [(RefinementsBarUIView *)self->_refinementsBar setAlpha:a3];
}

- (void)setupConstraints
{
  v24 = [(ResultsViewController *)self contentTableView];
  v22 = [v24 leadingAnchor];
  v23 = [(ContaineeViewController *)self contentView];
  v21 = [v23 leadingAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v25[0] = v20;
  v19 = [(ResultsViewController *)self contentTableView];
  v17 = [v19 trailingAnchor];
  v18 = [(ContaineeViewController *)self contentView];
  v16 = [v18 trailingAnchor];
  v15 = [v17 constraintEqualToAnchor:v16];
  v25[1] = v15;
  v14 = [(ResultsViewController *)self contentTableView];
  v13 = [v14 topAnchor];
  v3 = [(ContaineeViewController *)self contentView];
  v4 = [v3 topAnchor];
  v5 = [v13 constraintEqualToAnchor:v4];
  v25[2] = v5;
  v6 = [(ResultsViewController *)self contentTableView];
  v7 = [v6 bottomAnchor];
  v8 = [(ContaineeViewController *)self contentView];
  v9 = [v8 bottomAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  v25[3] = v10;
  v11 = [NSArray arrayWithObjects:v25 count:4];
  v12 = [v11 mutableCopy];

  [NSLayoutConstraint activateConstraints:v12];
}

- (void)_updateLoadingErrorFrames
{
  if (self->_hideHeader)
  {
    v3 = [(ResultsViewController *)self view];
    [v3 bounds];
  }

  else
  {
    v3 = [(ContaineeViewController *)self contentView];
    [v3 frame];
  }

  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;

  [(LoadingModeView *)self->_loadingModeView setFrame:v8, v9, v10, v11];
  v12 = [(ResultsViewController *)self view];
  [v12 safeAreaInsets];
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
  v12 = [(ResultsViewController *)self sheetPresentationController];
  if (-[ResultsViewController containeeLayout](self, "containeeLayout") != 1 || (v4 = [v12 _isDragging], v3 = 0.0, v4))
  {
    [(ResultsViewController *)self heightForLayout:1, v3];
    v6 = v5;
    [v12 _currentPresentedViewFrame];
    Height = CGRectGetHeight(v14);
    v8 = [v12 containerView];
    [v8 safeAreaInsets];
    v10 = Height - v9;

    if ([(ResultsViewController *)self containeeLayout]== 1 && v10 > v6)
    {
      v11 = [v12 _isDragging];
      v3 = 1.0;
      if (v11)
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
  v3 = [(ResultsViewController *)self resultsList];
  if ([v3 count])
  {
    hasSetTheContentOffset = self->hasSetTheContentOffset;

    if (!hasSetTheContentOffset)
    {
      v5 = [(ResultsViewController *)self contentTableView];
      [(ResultsViewController *)self topSpaceForScrollPocket];
      [v5 setContentOffset:{0.0, -v6}];

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
    v9 = self;
    v10 = 2080;
    v11 = "[ResultsViewController didBecomeCurrent]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%p] %s", buf, 0x16u);
  }

  self->_hasViewAppeared = 1;
  v4 = [(ContaineeViewController *)self cardPresentationController];
  -[ResultsViewController setContaineeLayout:](self, "setContaineeLayout:", [v4 containeeLayout]);

  v5 = [(ResultsViewController *)self impressionsCalculator];
  v6 = [v5 hasImpressionElements];

  if ((v6 & 1) == 0)
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
    v7 = self;
    v8 = 2080;
    v9 = "[ResultsViewController didResignCurrent]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%p] %s", buf, 0x16u);
  }

  self->_hasViewAppeared = 0;
  v5.receiver = self;
  v5.super_class = ResultsViewController;
  [(ContaineeViewController *)&v5 didResignCurrent];
  [(ResultsViewController *)self _hideSearchHereControl];
  v4 = [(ResultsViewController *)self impressionsCalculator];
  [v4 setActive:0];
}

- (void)willBecomeCurrent:(BOOL)a3
{
  v15.receiver = self;
  v15.super_class = ResultsViewController;
  [(ContaineeViewController *)&v15 willBecomeCurrent:a3];
  v4 = sub_100067540();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218242;
    v17 = self;
    v18 = 2080;
    v19 = "[ResultsViewController willBecomeCurrent:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "[%p] %s", buf, 0x16u);
  }

  if (([(MUScrollViewImpressionsCalculator *)self->_impressionsCalculator isActive]& 1) == 0)
  {
    v5 = [(ResultsViewController *)self impressionsCalculator];
    [v5 setActive:1];
  }

  v6 = [(SearchSession *)self->_searchSession currentResults];
  if ([v6 count] && -[SearchSession isSpotlightPunchInSearch](self->_searchSession, "isSpotlightPunchInSearch"))
  {
    v7 = [(SearchSession *)self->_searchSession spotlightMatchingResultFound];

    if (!v7)
    {
      goto LABEL_10;
    }

    [(ResultsViewController *)self setHeaderContentWithSearchSession:self->_searchSession];
    [(ResultsViewController *)self setHideHeader:0];
    v6 = [(SearchSession *)self->_searchSession currentResults];
    [(ResultsViewController *)self setResultsList:v6];
  }

LABEL_10:
  v8 = [(ResultsViewController *)self resultsList];
  if ([v8 count])
  {
    v9 = [(ResultsViewController *)self resultsList];
    v10 = [(ResultsViewController *)self resultsDelegate];
    v11 = [v10 allSearchResultsForCurrentPinsOnMap];
    v12 = [v9 isEqualToArray:v11];

    if (v12)
    {
      return;
    }

    v13 = [(ResultsViewController *)self resultsList];
    v8 = [SearchInfo searchInfoWithResults:v13];

    v14 = [(ResultsViewController *)self resultsDelegate];
    [v14 setSearchPinsFromSearchInfo:v8 scrollToResults:0 displayPlaceCardForResult:0 animated:0 completion:0];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100067540();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218242;
    v9 = self;
    v10 = 2080;
    v11 = "[ResultsViewController viewWillDisappear:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[%p] %s", buf, 0x16u);
  }

  v7.receiver = self;
  v7.super_class = ResultsViewController;
  [(ContaineeViewController *)&v7 viewWillDisappear:v3];
  v6 = [(ResultsViewController *)self impressionsCalculator];
  [v6 setActive:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = ResultsViewController;
  [(ContaineeViewController *)&v8 viewWillAppear:a3];
  v4 = sub_100067540();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218242;
    v10 = self;
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
    v7 = [(ResultsViewController *)self impressionsCalculator];
    [v7 setActive:1];
  }
}

- (void)didMoveToParentViewController:(id)a3
{
  v5 = [(ResultsViewController *)self isShowingOmnipresentSearchBar];
  if (a3 && v5)
  {
    v6 = sub_100067540();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = 134218242;
      v8 = self;
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
  v3 = [(ContaineeViewController *)self contentView];
  v4 = [(ResultsViewController *)self contentTableView];
  [v3 addSubview:v4];

  v5 = [(ResultsViewController *)self contentTableView];
  [(ContaineeViewController *)self setContentScrollView:v5 forEdge:1];

  if (![(ResultsViewController *)self isShowingOmnipresentSearchBar])
  {
    [(ResultsViewController *)self configureHeader];
  }

  v6 = [(ResultsViewController *)self view];
  v7 = [(ResultsViewController *)self loadingModeView];
  [v6 addSubview:v7];

  v8 = [(ResultsViewController *)self view];
  v9 = [(ResultsViewController *)self errorModeView];
  [v8 addSubview:v9];

  v10 = [(ResultsViewController *)self view];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [v12 stringByReplacingOccurrencesOfString:@"Controller" withString:&stru_1016631F0];
  [v10 setAccessibilityIdentifier:v13];

  [(ResultsViewController *)self setupConstraints];
  v14 = [[ResultRefinementsAnalyticsManager alloc] initWithRefinementsFromWaypointEditor:[(ResultsViewController *)self isPresentingAddStopResultsFromWaypointEditor]];
  analyticsManager = self->_analyticsManager;
  self->_analyticsManager = v14;

  v16 = [SearchResultsDataSource alloc];
  v17 = [(ResultsViewController *)self contentTableView];
  v18 = [(SearchResultsDataSource *)v16 initWithTableView:v17];
  searchResultsDataSource = self->_searchResultsDataSource;
  self->_searchResultsDataSource = v18;

  [self->_searchResultsDataSource setDelegate:self];
  v20 = [(ResultsViewController *)self resultsDelegate];
  v21 = [v20 searchResultsAppCoordinator];
  [(SearchResultsDataSource *)self->_searchResultsDataSource setShareDelegate:v21];

  [(SearchResultsDataSource *)self->_searchResultsDataSource setCollectionCarouselRoutingDelegate:self];
  [(SearchResultsDataSource *)self->_searchResultsDataSource setIsPresentingAddStopResultsFromWaypointEditor:[(ResultsViewController *)self isPresentingAddStopResultsFromWaypointEditor]];
  [(ResultsViewController *)self setDataSource:self->_searchResultsDataSource];
}

- (void)showError:(id)a3 hideRefinementsBar:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    [(UITableView *)self->_contentTableView setHidden:1];
    [(LoadingModeView *)self->_loadingModeView setHidden:1];
    if (v4)
    {
      [(ResultsViewController *)self setHideRefinementsBar:1];
    }

    v7 = [(ResultsViewController *)self view];
    v8 = [(ResultsViewController *)self errorModeView];
    v9 = [(ResultsViewController *)self contentTableView];
    [v7 insertSubview:v8 belowSubview:v9];

    [(ResultsViewController *)self _updateLoadingErrorFrames];
    [(ErrorModeView *)self->_errorModeView setTitle:v6 andMessage:0];
    v10 = [(SearchSession *)self->_searchSession currentResultsSearchInfo];
    LODWORD(v8) = [v10 enableStructuredRAPAffordance];

    if (v8)
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
  v6 = [v5 isUsingForcedOfflineMaps];

  v7 = +[NSBundle mainBundle];
  v8 = v7;
  if (v6)
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
  if (v6)
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

- (void)setDataSource:(id)a3
{
  v5 = a3;
  currentDataSource = self->_currentDataSource;
  if (currentDataSource != v5)
  {
    v13 = v5;
    [currentDataSource setActive:0];
    objc_storeStrong(&self->_currentDataSource, a3);
    [(UITableView *)self->_contentTableView setDelegate:v13];
    [(UITableView *)self->_contentTableView setDataSource:v13];
    v7 = +[MapsDragAndDropManager sharedManager];
    v8 = [v7 deviceSupportsDragAndDrop];

    if (v8)
    {
      [(UITableView *)self->_contentTableView setDragDelegate:v13];
    }

    [self->_currentDataSource setActive:1];
    [(UITableView *)self->_contentTableView reloadData];
    v9 = [(ResultsViewController *)self resultsDelegate];
    v10 = [v9 venuesManagerForSearchResults];
    [v10 venuesControlCoordinatingDidChangeSearchResultCount:self];

    v11 = [(ResultsViewController *)self resultsDelegate];
    v12 = [v11 venuesManagerForSearchResults];
    [v12 updateFocusedVenueFloor];

    v5 = v13;
  }
}

- (void)setResultsList:(id)a3
{
  v40 = a3;
  if (self->_resultsList != v40)
  {
    self->_didTriggerAutoRedoSearch = 0;
    objc_storeStrong(&self->_resultsList, a3);
    self->hasSetTheContentOffset = 0;
    if (![(ResultsViewController *)self isShowingOmnipresentSearchBar])
    {
      [(ResultsViewController *)self setHideHeader:0];
    }

    v5 = +[NSUUID UUID];
    v6 = [(ResultsViewController *)self impressionsCalculator];
    [v6 setSessionIdentifier:v5];

    v7 = [(ResultsViewController *)self view];

    if (v7)
    {
      v8 = self->_searchSession;
      v9 = [(SearchSession *)v8 currentResultsSearchInfo];
      v10 = [v9 searchText];
      if (v10)
      {
        p_searchResultsDataSource = &self->_searchResultsDataSource;
        [(SearchResultsDataSource *)self->_searchResultsDataSource setSearchQuery:v10];
      }

      else
      {
        v12 = [v9 searchFieldItem];
        v13 = [v12 title];
        p_searchResultsDataSource = &self->_searchResultsDataSource;
        [(SearchResultsDataSource *)self->_searchResultsDataSource setSearchQuery:v13];
      }

      -[SearchResultsDataSource setDisplaysAsChainResult:](*p_searchResultsDataSource, "setDisplaysAsChainResult:", [v9 isChainResults]);
      -[SearchResultsDataSource setPrefersAddressOverCategory:](*p_searchResultsDataSource, "setPrefersAddressOverCategory:", [v9 prefersAddressOverCategory]);
      v14 = [v9 searchFieldItem];
      v15 = [v14 searchCategory];
      [(SearchResultsDataSource *)*p_searchResultsDataSource setSearchCategory:v15];

      v16 = [v9 placeSummaryMetadata];
      [(SearchResultsDataSource *)*p_searchResultsDataSource setPlaceSummaryMetadata:v16];

      -[SearchResultsDataSource setEnableStructuredRAPAffordance:](*p_searchResultsDataSource, "setEnableStructuredRAPAffordance:", [v9 enableStructuredRAPAffordance]);
      [(SearchResultsDataSource *)*p_searchResultsDataSource setIsPresentingAddStopResultsFromWaypointEditor:[(ResultsViewController *)self isPresentingAddStopResultsFromWaypointEditor]];
      v17 = [(ResultsViewController *)self impressionsCalculator];
      v18 = [v17 sessionIdentifier];
      [(SearchResultsDataSource *)*p_searchResultsDataSource setImpressionsSessionIdentifier:v18];

      if ([v9 sortOrder] == 1)
      {
        v19 = [[AlphabeticallyOrderedDataSource alloc] initWithAlphabeticallySortableObject:v40];
        v20 = [(AlphabeticallyOrderedDataSource *)v19 sectionIndexTitles];
        [(SearchResultsDataSource *)*p_searchResultsDataSource setSectionIndexTitles:v20];
      }

      else
      {
        v21 = [v9 searchSectionList];
        if (v21)
        {
          resultsList = self->_resultsList;

          if (resultsList)
          {
            v23 = [SearchListOrderedDataSource alloc];
            v24 = self->_resultsList;
            v25 = [v9 searchSectionList];
            v19 = [(SearchListOrderedDataSource *)v23 initWithObjects:v24 searchSectionList:v25];

            [(SearchResultsDataSource *)*p_searchResultsDataSource setSectionIndexTitles:0];
            v26 = [[SearchResultsDataSourceContent alloc] initWithOrderedDataSource:v19];
            v27 = *p_searchResultsDataSource;
            v28 = [v9 openAt];
            [(SearchResultsDataSource *)v27 setContent:v26 openAt:v28];

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

      v31 = [(ResultsViewController *)self resultsDelegate];
      v32 = [v31 venuesManagerForSearchResults];
      [v32 venuesControlCoordinatingDidChangeSearchResultCount:self];

      v33 = [(ResultsViewController *)self resultsDelegate];
      v34 = [v33 venuesManagerForSearchResults];
      [v34 updateFocusedVenueFloor];

      [(LoadingModeView *)self->_loadingModeView setHidden:1];
      v35 = self->_resultsList;
      if (v35)
      {
        if (-[NSArray count](v35, "count") || ([v9 suggestions], v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "count"), v36, v37))
        {
          [(ResultsViewController *)self showError:0];
          [(UITableView *)self->_contentTableView setHidden:0];
        }
      }

      [(ResultsViewController *)self _updateResultRefinementBarFromSearchInfo:v9];
      if ([(NSArray *)self->_resultsList count])
      {
        v38 = [(ResultsViewController *)self view];
        [v38 setNeedsLayout];

        v39 = [(ResultsViewController *)self view];
        [v39 layoutIfNeeded];
      }
    }
  }
}

- (void)logNoSearchResult
{
  if (![(SearchSession *)self->_searchSession isLoading])
  {
    v3 = [(SearchSession *)self->_searchSession currentResults];
    v4 = [v3 count];

    if (!v4)
    {
      v5 = [(ResultsViewController *)self currentUITargetForAnalytics];

      [SearchResultsAnalyticsManager logNoSearchResults:v5];
    }
  }
}

- (void)updateSearchSession:(id)a3
{
  v5 = a3;
  v6 = sub_100067540();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v44 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "ResultsVC updating search session: %@", buf, 0xCu);
  }

  objc_storeStrong(&self->_searchSession, a3);
  v7 = [(ResultsViewController *)self originalSearchInfo];
  v8 = [v5 lastError];
  v9 = [(ResultsViewController *)self localSearchViewController];
  v10 = [v9 refreshSearchHereBusinessController];
  [v10 setSearchSession:v5];

  v11 = [(ResultsViewController *)self view];

  if (!v11)
  {
    goto LABEL_42;
  }

  v12 = [(ResultsViewController *)self isWaitingForResults];
  v13 = [v5 isResultRefinementsBarSearch] ^ 1;
  v14 = v13 & v12;
  if (v13 & 1) == 0 && (v12)
  {
    v14 = [objc_opt_class() isReloadingRefinementsWithSearchSession:v5] ^ 1;
  }

  if ([v5 isSpotlightPunchInSearch])
  {
    [(ResultsViewController *)self setHideHeader:1];
  }

  else
  {
    [(ResultsViewController *)self setHideHeader:v14];
    [(ResultsViewController *)self setHeaderContentWithSearchSession:v5];
  }

  v15 = [(ResultsViewController *)self isWaitingForResults];
  v16 = [v5 isResultRefinementsBarSearch];
  if (v15)
  {
    if (v16)
    {
      v17 = [(RefinementsBarUIView *)self->_refinementsBar viewModel];
      [v17 setTapInteractionEnabled:0];
    }

    [(ResultsViewController *)self waitingData];
    goto LABEL_43;
  }

  if (v16)
  {
    v18 = [(RefinementsBarUIView *)self->_refinementsBar viewModel];
    [v18 setTapInteractionEnabled:1];
  }

  if (!v8 || [v5 isRedoOrAutoRedoSearchType] && (objc_msgSend(v5, "currentResults"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "count"), v19, v20))
  {
    if (!v7)
    {
      [(ResultsViewController *)self setResultsList:0];
      self->hasSetTheContentOffset = 0;
LABEL_42:
      [(ResultsViewController *)self logNoSearchResult];
      goto LABEL_43;
    }

    if ([v7 searchResultType] == 1)
    {
      if (![v5 isSpotlightPunchInSearch] || (objc_msgSend(v5, "spotlightMatchingResultFound") & 1) == 0)
      {
        v21 = [v5 currentResults];
        [(ResultsViewController *)self setResultsList:v21];
      }

      v22 = [v7 results];
      v23 = [v22 count];

      if (v23)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if ([v7 searchResultType] != 2)
      {
        if ([v7 searchResultType] == 3)
        {
          v38 = [v5 currentResults];
          [(ResultsViewController *)self setResultsList:v38];
        }

        else
        {
          if ([v7 searchResultType] != 4)
          {
            goto LABEL_42;
          }

          v40 = [v5 currentResults];
          [(ResultsViewController *)self setResultsList:v40];

          v41 = [v7 results];
          v42 = [v41 count];

          if (v42)
          {
            goto LABEL_42;
          }

          v38 = [(ResultsViewController *)self noResultString];
          [(ResultsViewController *)self showError:v38 hideRefinementsBar:0];
        }

        goto LABEL_41;
      }

      [(ResultsViewController *)self setResultsList:0];
      self->hasSetTheContentOffset = 0;
    }

    v35 = [v7 resultDisplayHeader];
    v36 = v35;
    if (v35)
    {
      v37 = v35;
    }

    else
    {
      v37 = [(ResultsViewController *)self noResultString];
    }

    v38 = v37;

    v39 = [v7 resultDisplayHeader];
    [(ResultsViewController *)self showError:v38 hideRefinementsBar:v39 != 0];

LABEL_41:
    goto LABEL_42;
  }

  v24 = [(ResultsViewController *)self noResultString];
  v25 = +[MapsOfflineUIHelper sharedHelper];
  v26 = [v25 isUsingOfflineMaps];

  if (v26)
  {
    [(ResultsViewController *)self _showOfflineErrorView];
  }

  else
  {
    v27 = [(SearchSession *)self->_searchSession lastError];
    v28 = [v27 domain];
    v29 = [v28 isEqualToString:@"SearchFindMy"];

    if (v29)
    {
      v30 = +[NSBundle mainBundle];
      v31 = [v30 localizedStringForKey:@"[Location Update] Unable to Refresh for person" value:@"localized string not found" table:0];

      v32 = [(SearchSession *)self->_searchSession searchFieldItem];
      v33 = [v32 title];
      v34 = [NSString stringWithFormat:v31, v33];

      [(ResultsViewController *)self setHideHeader:1];
      v24 = v34;
    }

    [(ResultsViewController *)self showError:v24 hideRefinementsBar:0];
    [(LoadingModeView *)self->_loadingModeView setHidden:1];
    [(ResultsViewController *)self _updateResultRefinementBarFromSearchInfo:v7];
  }

  [(ResultsViewController *)self logNoSearchResult];

LABEL_43:
}

- (void)refreshEVChargers:(id)a3
{
  searchResultsDataSource = self->_searchResultsDataSource;
  if (searchResultsDataSource)
  {
    [(SearchResultsDataSource *)searchResultsDataSource refreshEVChargers:a3];
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
      v9 = [(ResultsViewController *)self _displayMessageFromError];
      v7 = v9;
      if (!v9)
      {
        v11 = +[NSBundle mainBundle];
        v2 = [v11 localizedStringForKey:@"no_result_key" value:@"localized string not found" table:0];

LABEL_25:
        goto LABEL_26;
      }

      v10 = v9;
LABEL_24:
      v2 = v10;
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
      v2 = [(ResultsViewController *)self _displayMessageForNoInternet];
      break;
    case 4:
      goto LABEL_12;
  }

LABEL_26:

  return v2;
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
  v3 = [(SearchSession *)self->_searchSession lastError];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_6;
  }

  v5 = [v3 domain];
  if (([v5 isEqualToString:kCFErrorDomainCFNetwork] & 1) == 0)
  {

    goto LABEL_6;
  }

  if ([v4 code] != 310)
  {
    v7 = [v4 code];

    if (v7 == -1001)
    {
      goto LABEL_8;
    }

LABEL_6:
    v6 = 0;
    goto LABEL_9;
  }

LABEL_8:
  v6 = [(ResultsViewController *)self _displayMessageForNoInternet];
LABEL_9:

  return v6;
}

- (id)localSearchViewController
{
  localSearchViewController = self->_localSearchViewController;
  if (!localSearchViewController)
  {
    v4 = [[LocalSearchViewController alloc] initAsButton:0];
    v5 = self->_localSearchViewController;
    self->_localSearchViewController = v4;

    v6 = [(LocalSearchViewController *)self->_localSearchViewController view];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

    v7 = [(ContaineeViewController *)self cardPresentationController];
    -[LocalSearchViewController setEnable:](self->_localSearchViewController, "setEnable:", [v7 containerStyle] != 6);

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
    v4 = [(SearchSession *)self->_searchSession searchFieldItem];
    *buf = 138412290;
    v43 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[ResultsVC] Refreshing current search: %@", buf, 0xCu);
  }

  v5 = [(SearchSession *)self->_searchSession searchFieldItem];
  v6 = [(ResultsViewController *)self originalSearchInfo];
  v40 = @"SearchSessionIsAutoRedoSearch";
  v41 = &__kCFBooleanTrue;
  v7 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
  v8 = [NSMutableDictionary dictionaryWithDictionary:v7];

  if ([(ResultsViewController *)self isPresentingAddStopResultsFromWaypointEditor])
  {
    [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:@"SearchSessionAddStopFromWaypointEditor"];
  }

  v9 = [v6 resultRefinementGroup];

  if (v9)
  {
    v10 = objc_alloc_init(GEOPDResultRefinementQuery);
    [v10 setResultRefinementOriginType:self->_lastRefinementOriginType];
    v11 = [v6 resultRefinementGroup];
    v12 = [v11 refinementSessionState];
    [v10 setRefinementSessionState:v12];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v13 = [v6 resultRefinementGroup];
    v14 = [v13 resultRefinementBar];
    v15 = [v14 resultRefinements];

    v16 = [v15 countByEnumeratingWithState:&v34 objects:v39 count:16];
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
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v34 + 1) + 8 * v19) convertToGEOPDResultRefinement];
          [v10 addRefinement:v20];

          v19 = v19 + 1;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v17);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v21 = [v6 resultRefinementGroup];
    v22 = [v21 resultRefinementView];
    v23 = [v22 sections];

    v24 = [v23 countByEnumeratingWithState:&v30 objects:v38 count:16];
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
            objc_enumerationMutation(v23);
          }

          v28 = [*(*(&v30 + 1) + 8 * v27) convertToGEOPDResultRefinementSection];
          [v10 addRefinementSection:v28];

          v27 = v27 + 1;
        }

        while (v25 != v27);
        v25 = [v23 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v25);
    }

    v29 = [(ResultsViewController *)self resultsDelegate];
    [v29 doSearchItem:v5 withUserInfo:v8 refinementsQuery:v10 viewController:self];
  }

  else
  {
    v10 = [(ResultsViewController *)self resultsDelegate];
    [v10 doSearchItem:v5 withUserInfo:v8 viewController:self];
  }
}

- (BOOL)hasResults
{
  v2 = [(SearchSession *)self->_searchSession currentResults];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)initForOmipresentSearchBar:(BOOL)a3
{
  result = [(ResultsViewController *)self init];
  if (result)
  {
    *(result + 200) = a3;
  }

  return result;
}

+ (BOOL)isReloadingRefinementsWithSearchSession:(id)a3
{
  v3 = a3;
  if ([v3 isResultRefinementsBarSearch])
  {
    v4 = [v3 currentResults];
    v5 = [v4 count] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end