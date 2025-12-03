@interface CuratedCollectionViewController
- (BOOL)shouldClearSearchPins;
- (CuratedCollectionViewController)initWithCuratedCollectionIdentifier:(id)identifier;
- (CuratedCollectionViewController)initWithFullyClientizedPlaceCollection:(id)collection;
- (CuratedCollectionViewControllerDelegate)actionDelegate;
- (MapModificationDelegate)mapModificationDelegate;
- (NSArray)mapItems;
- (ShareDelegate)shareDelegate;
- (double)heightForLayout:(unint64_t)layout;
- (id)_searchResults;
- (id)_websiteURL;
- (id)keyCommands;
- (id)menuForQuickActionButton;
- (id)targetForAction:(SEL)action withSender:(id)sender;
- (void)_attachLoadingView;
- (void)_commonInitWithCuratedCollectionProvider:(id)provider identifier:(id)identifier;
- (void)_didFinishResolving;
- (void)_insertInHistory;
- (void)_refineMapItem:(id)item completionHandler:(id)handler;
- (void)_setWantsInsertInHistory;
- (void)_updateHeaderAndTableViewValues;
- (void)_updateHeaderTransition;
- (void)addContentToMapView;
- (void)applyAlphaToContent:(double)content;
- (void)dataSource:(id)source addPlaceToLibraryUsingCoordinator:(id)coordinator;
- (void)dataSource:(id)source addToUserCollection:(id)collection forMapItem:(id)item sourceView:(id)view onSaveCompletion:(id)completion;
- (void)dataSource:(id)source didExpandCellAnimated:(BOOL)animated;
- (void)dataSource:(id)source didFailWithErrorState:(unint64_t)state;
- (void)dataSource:(id)source itemFocused:(id)focused;
- (void)dataSource:(id)source itemTapped:(id)tapped;
- (void)dataSource:(id)source openAppClip:(id)clip;
- (void)dataSource:(id)source removePlaceFromLibraryUsingCoordinator:(id)coordinator;
- (void)dataSource:(id)source willPunchOuToPublisherWebpageForPlaceCollectionItem:(id)item;
- (void)dataSourceUpdated:(id)updated;
- (void)didBecomeCurrent;
- (void)didChangeLayout:(unint64_t)layout;
- (void)didSelectOpenHomePage;
- (void)didSelectRemoveFromSavedCollection;
- (void)didSelectSaveCollection;
- (void)didSelectShareFromView:(id)view;
- (void)handleDismissAction:(id)action;
- (void)headerViewBrickTapped;
- (void)headerViewPublisherLogoTapped;
- (void)presentRAPWithSourceView:(id)view;
- (void)removeContentFromMapView;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)seeAllGuidesMenuButtonTapped;
- (void)setCuratedCollection:(id)collection;
- (void)showPublisherView:(id)view;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)websiteMenuButtonTapped;
- (void)willChangeLayout:(unint64_t)layout;
@end

@implementation CuratedCollectionViewController

- (ShareDelegate)shareDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_shareDelegate);

  return WeakRetained;
}

- (MapModificationDelegate)mapModificationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mapModificationDelegate);

  return WeakRetained;
}

- (CuratedCollectionViewControllerDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

- (void)didSelectOpenHomePage
{
  curatedCollection = [(CuratedCollectionViewController *)self curatedCollection];
  publisherCollectionURL = [curatedCollection publisherCollectionURL];

  actionDelegate = [(CuratedCollectionViewController *)self actionDelegate];
  [actionDelegate curatedCollectionViewController:self openURL:publisherCollectionURL];

  [(CuratedCollectionViewAnalyticsController *)self->_analyticsController logOpenWebsite];
}

- (void)didSelectShareFromView:(id)view
{
  viewCopy = view;
  analyticsController = [(CuratedCollectionViewController *)self analyticsController];
  [analyticsController logShareCuratedCollection];

  v6 = [CuratedCollectionShareItemSource alloc];
  curatedCollection = [(CuratedCollectionViewController *)self curatedCollection];
  mapItems = [(CuratedCollectionViewController *)self mapItems];
  v11 = [(CuratedCollectionShareItemSource *)v6 initWithPlaceCollection:curatedCollection refinedMapItems:mapItems];

  v9 = [MUPresentationOptions optionsWithSender:viewCopy];

  shareDelegate = [(CuratedCollectionViewController *)self shareDelegate];
  [shareDelegate shareItem:v11 presentationOptions:v9 completion:0];
}

- (NSArray)mapItems
{
  v3 = objc_alloc_init(NSMutableArray);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  collectionProvider = [(CuratedCollectionViewController *)self collectionProvider];
  collectionItems = [collectionProvider collectionItems];

  v6 = [collectionItems countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(collectionItems);
        }

        mapItem = [*(*(&v13 + 1) + 8 * i) mapItem];
        [v3 addObject:mapItem];
      }

      v7 = [collectionItems countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v3 copy];

  return v11;
}

- (void)didSelectRemoveFromSavedCollection
{
  analyticsController = [(CuratedCollectionViewController *)self analyticsController];
  [analyticsController logRemoveCuratedCollection];

  v5 = +[CuratedCollectionSyncManager sharedManager];
  curatedCollection = [(CuratedCollectionViewController *)self curatedCollection];
  [v5 removeSavedCuratedCollection:curatedCollection completion:0];
}

- (void)didSelectSaveCollection
{
  analyticsController = [(CuratedCollectionViewController *)self analyticsController];
  [analyticsController logSaveCuratedCollection];

  v5 = +[CuratedCollectionSyncManager sharedManager];
  curatedCollection = [(CuratedCollectionViewController *)self curatedCollection];
  [v5 addSavedCuratedCollection:curatedCollection completion:0];
}

- (void)_refineMapItem:(id)item completionHandler:(id)handler
{
  handlerCopy = handler;
  itemCopy = item;
  actionDelegate = [(CuratedCollectionViewController *)self actionDelegate];
  v11 = [actionDelegate traitsForCuratedCollectionViewController:self];

  v9 = +[MKMapService sharedService];
  v10 = [v9 ticketForMapItemToRefine:itemCopy traits:v11];

  [v10 submitWithHandler:handlerCopy networkActivity:0];
}

- (void)dataSource:(id)source openAppClip:(id)clip
{
  clipCopy = clip;
  appClipURL = [clipCopy appClipURL];
  analyticsController = [(CuratedCollectionViewController *)self analyticsController];
  [analyticsController logOpenAppClipWithURL:appClipURL];

  v8 = +[MKClipServices sharedInstance];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100841744;
  v10[3] = &unk_10164D910;
  v11 = appClipURL;
  v9 = appClipURL;
  [v8 requestAppClip:clipCopy completion:v10];
}

- (void)showPublisherView:(id)view
{
  viewCopy = view;
  analyticsController = [(CuratedCollectionViewController *)self analyticsController];
  [analyticsController logDiscoverMoreFromPublisher];

  actionDelegate = [(CuratedCollectionViewController *)self actionDelegate];
  [actionDelegate curatedCollectionViewController:self showPublisher:viewCopy];
}

- (void)presentRAPWithSourceView:(id)view
{
  viewCopy = view;
  v5 = [RAPCuratedCollectionContext alloc];
  curatedCollection = [(CuratedCollectionViewController *)self curatedCollection];
  collectionProvider = [(CuratedCollectionViewController *)self collectionProvider];
  collectionItems = [collectionProvider collectionItems];
  v12 = [(RAPCuratedCollectionContext *)v5 initWithCuratedCollection:curatedCollection placeCollectionMapItems:collectionItems];

  _maps_mapsSceneDelegate = [(CuratedCollectionViewController *)self _maps_mapsSceneDelegate];
  rapPresenter = [_maps_mapsSceneDelegate rapPresenter];
  [rapPresenter presentCuratedCollectionRAPWithContext:v12 sourceView:viewCopy completion:0];

  analyticsController = [(CuratedCollectionViewController *)self analyticsController];
  [analyticsController logReportAProblem];
}

- (void)dataSource:(id)source didExpandCellAnimated:(BOOL)animated
{
  v4 = 0.3;
  if (!animated)
  {
    v4 = 0.0;
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100841AAC;
  v5[3] = &unk_101661B18;
  v5[4] = self;
  [UIView animateWithDuration:v5 animations:v4];
}

- (void)dataSource:(id)source willPunchOuToPublisherWebpageForPlaceCollectionItem:(id)item
{
  itemCopy = item;
  collectionProvider = [(CuratedCollectionViewController *)self collectionProvider];
  collectionItems = [collectionProvider collectionItems];
  v8 = [collectionItems indexOfObject:itemCopy];

  analyticsController = [(CuratedCollectionViewController *)self analyticsController];
  [analyticsController logPunchOutToPublisherReviewWithIndex:v8];
}

- (void)dataSource:(id)source didFailWithErrorState:(unint64_t)state
{
  sourceCopy = source;
  self->_hasFinishedResolving = 1;
  errorView = [(CuratedCollectionViewController *)self errorView];

  if (!errorView)
  {
    v7 = objc_alloc_init(ErrorModeView);
    [(CuratedCollectionViewController *)self setErrorView:v7];

    errorView2 = [(CuratedCollectionViewController *)self errorView];
    [errorView2 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  if (state > 1)
  {
    if (state == 2)
    {
      errorView3 = [(CuratedCollectionViewController *)self errorView];
      v21 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubhead];
      [errorView3 setTitleLabelFont:v21];

      v11 = +[NSBundle mainBundle];
      v55 = [v11 localizedStringForKey:@"[Brooklyn] Suppressed Guide Error" value:@"localized string not found" table:0];
      goto LABEL_12;
    }

    v54 = 0;
    v55 = 0;
    if (state == 3)
    {
      v12 = +[NSBundle mainBundle];
      v54 = [v12 localizedStringForKey:@"[Brooklyn] Unable to Open Guide" value:@"localized string not found" table:0];

      v13 = +[NSBundle mainBundle];
      v55 = [v13 localizedStringForKey:@"[Brooklyn] Internet Guide Error Title" value:@"localized string not found" table:0];

      objc_initWeak(&location, self);
      errorView4 = [(CuratedCollectionViewController *)self errorView];
      v15 = +[NSBundle mainBundle];
      v16 = [v15 localizedStringForKey:@"Try Again [Brooklyn]" value:@"localized string not found" table:0];
      v17 = +[UIColor systemGray5Color];
      v56[0] = _NSConcreteStackBlock;
      v56[1] = 3221225472;
      v56[2] = sub_1008422EC;
      v56[3] = &unk_10165D828;
      objc_copyWeak(&v57, &location);
      [errorView4 setButtonTitle:v16 glyphName:@"arrow.clockwise" backgroundColor:v17 handler:v56];

      objc_destroyWeak(&v57);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    if (!state)
    {
      errorView5 = [(CuratedCollectionViewController *)self errorView];
      v19 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubhead];
      [errorView5 setTitleLabelFont:v19];

      v11 = +[NSBundle mainBundle];
      v55 = [v11 localizedStringForKey:@"[Brooklyn] Generic Guide Error Title" value:@"localized string not found" table:0];
      goto LABEL_12;
    }

    v54 = 0;
    v55 = 0;
    if (state == 1)
    {
      errorView6 = [(CuratedCollectionViewController *)self errorView];
      v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubhead];
      [errorView6 setTitleLabelFont:v10];

      v11 = +[NSBundle mainBundle];
      v55 = [v11 localizedStringForKey:@"[Brooklyn] Blocked Guide Error Title" value:@"localized string not found" table:0];
LABEL_12:

      v54 = 0;
    }
  }

  loadingView = [(CuratedCollectionViewController *)self loadingView];
  [loadingView removeFromSuperview];

  cardHeaderView = [(CuratedCollectionViewController *)self cardHeaderView];
  [cardHeaderView removeFromSuperview];

  contentView = [(ContaineeViewController *)self contentView];
  errorView7 = [(CuratedCollectionViewController *)self errorView];
  [contentView addSubview:errorView7];

  errorView8 = [(CuratedCollectionViewController *)self errorView];
  leadingAnchor = [errorView8 leadingAnchor];
  contentView2 = [(ContaineeViewController *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v49 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v59[0] = v49;
  errorView9 = [(CuratedCollectionViewController *)self errorView];
  trailingAnchor = [errorView9 trailingAnchor];
  contentView3 = [(ContaineeViewController *)self contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v44 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v59[1] = v44;
  errorView10 = [(CuratedCollectionViewController *)self errorView];
  topAnchor = [errorView10 topAnchor];
  contentView4 = [(ContaineeViewController *)self contentView];
  topAnchor2 = [contentView4 topAnchor];
  v39 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v59[2] = v39;
  errorView11 = [(CuratedCollectionViewController *)self errorView];
  bottomAnchor = [errorView11 bottomAnchor];
  contentView5 = [(ContaineeViewController *)self contentView];
  bottomAnchor2 = [contentView5 bottomAnchor];
  v28 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v59[3] = v28;
  errorView12 = [(CuratedCollectionViewController *)self errorView];
  heightAnchor = [errorView12 heightAnchor];
  contentView6 = [(ContaineeViewController *)self contentView];
  heightAnchor2 = [contentView6 heightAnchor];
  v33 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  v59[4] = v33;
  v34 = [NSArray arrayWithObjects:v59 count:5];
  [NSLayoutConstraint activateConstraints:v34];

  errorView13 = [(CuratedCollectionViewController *)self errorView];
  [errorView13 setTitle:v54 andMessage:v55];
}

- (void)dataSource:(id)source addToUserCollection:(id)collection forMapItem:(id)item sourceView:(id)view onSaveCompletion:(id)completion
{
  sourceCopy = source;
  collectionCopy = collection;
  itemCopy = item;
  viewCopy = view;
  completionCopy = completion;
  analyticsController = [(CuratedCollectionViewController *)self analyticsController];
  [analyticsController logSavePlaceItemToCuratedCollectionWithMUID:{objc_msgSend(itemCopy, "_muid")}];

  objc_initWeak(&location, self);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100842534;
  v21[3] = &unk_10162C7A8;
  v18 = collectionCopy;
  v22 = v18;
  v19 = completionCopy;
  v24 = v19;
  objc_copyWeak(&v25, &location);
  v20 = viewCopy;
  v23 = v20;
  [(CuratedCollectionViewController *)self _refineMapItem:itemCopy completionHandler:v21];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

- (void)dataSource:(id)source removePlaceFromLibraryUsingCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  initialMapItem = [coordinatorCopy initialMapItem];
  +[LibraryAnalytics captureAddOrRemoveFromLibraryWithPlaceMUID:captureAdd:target:](_TtC4Maps16LibraryAnalytics, "captureAddOrRemoveFromLibraryWithPlaceMUID:captureAdd:target:", [initialMapItem _muid], 0, 259);

  [coordinatorCopy deletePlaceFromLibraryWithViewControllerForPresentingAlert:self];
}

- (void)dataSource:(id)source addPlaceToLibraryUsingCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  initialMapItem = [coordinatorCopy initialMapItem];
  +[LibraryAnalytics captureAddOrRemoveFromLibraryWithPlaceMUID:captureAdd:target:](_TtC4Maps16LibraryAnalytics, "captureAddOrRemoveFromLibraryWithPlaceMUID:captureAdd:target:", [initialMapItem _muid], 1, 259);

  initialMapItem2 = [coordinatorCopy initialMapItem];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100842B64;
  v9[3] = &unk_101660FB0;
  v10 = coordinatorCopy;
  v8 = coordinatorCopy;
  [(CuratedCollectionViewController *)self _refineMapItem:initialMapItem2 completionHandler:v9];
}

- (void)dataSource:(id)source itemTapped:(id)tapped
{
  tappedCopy = tapped;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = tappedCopy;
    collectionItems = [(CuratedCollectionProvider *)self->_collectionProvider collectionItems];
    v7 = [collectionItems indexOfObject:v5];

    analyticsController = [(CuratedCollectionViewController *)self analyticsController];
    [analyticsController logTapCollectionItem:v5 atIndex:v7];

    v9 = [SearchResult alloc];
    mapItem = [v5 mapItem];
    v11 = [(SearchResult *)v9 initWithMapItem:mapItem];

    actionDelegate = [(CuratedCollectionViewController *)self actionDelegate];
    [actionDelegate curatedCollectionViewController:self selectSearchResult:v11];

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
    v6 = [SearchResult alloc];
    mapItem = [v5 mapItem];

    mapModificationDelegate2 = [(SearchResult *)v6 initWithMapItem:mapItem];
    mapModificationDelegate = [(CuratedCollectionViewController *)self mapModificationDelegate];
    [mapModificationDelegate viewController:self focusSearchResult:mapModificationDelegate2];

    lastItemTapped = self->_lastItemTapped;
    self->_lastItemTapped = 0;
  }

  else
  {
    if (self->_lastItemTapped)
    {
      goto LABEL_6;
    }

    mapModificationDelegate2 = [(CuratedCollectionViewController *)self mapModificationDelegate];
    [(SearchResult *)mapModificationDelegate2 viewControllerRemoveCurrentSearchResultFocus:self];
  }

LABEL_6:
}

- (void)_didFinishResolving
{
  collectionProvider = [(CuratedCollectionViewController *)self collectionProvider];
  curatedCollection = [collectionProvider curatedCollection];
  [(CuratedCollectionViewController *)self setCuratedCollection:curatedCollection];

  updateContentInjection = [(CuratedCollectionViewController *)self updateContentInjection];

  if (updateContentInjection)
  {
    updateContentInjection2 = [(CuratedCollectionViewController *)self updateContentInjection];
    (updateContentInjection2)[2](updateContentInjection2, self);
  }

  loadingView = [(CuratedCollectionViewController *)self loadingView];
  [loadingView removeFromSuperview];

  errorView = [(CuratedCollectionViewController *)self errorView];
  [errorView removeFromSuperview];

  view = [(CuratedCollectionViewController *)self view];
  [view addSubview:self->_tableView];

  view2 = [(CuratedCollectionViewController *)self view];
  cardHeaderView = [(CuratedCollectionViewController *)self cardHeaderView];
  [view2 addSubview:cardHeaderView];

  fakeHeaderView = [(CuratedCollectionViewController *)self fakeHeaderView];
  [fakeHeaderView setAlpha:1.0];

  cardHeaderView2 = [(CuratedCollectionViewController *)self cardHeaderView];
  [cardHeaderView2 setAlpha:0.0];

  [(MapsThemeTableView *)self->_tableView setAlpha:0.0];
  cardHeaderView3 = [(CuratedCollectionViewController *)self cardHeaderView];
  tableViewBackgroundView = [cardHeaderView3 tableViewBackgroundView];
  [(MapsThemeTableView *)self->_tableView setBackgroundView:tableViewBackgroundView];

  [(MapsThemeTableView *)self->_tableView setContentInsetAdjustmentBehavior:2];
  [(MapsThemeTableView *)self->_tableView setAutomaticallyAdjustsScrollIndicatorInsets:0];
  cardHeaderView4 = [(CuratedCollectionViewController *)self cardHeaderView];
  topAnchor = [cardHeaderView4 topAnchor];
  view3 = [(CuratedCollectionViewController *)self view];
  topAnchor2 = [view3 topAnchor];
  v47 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v55[0] = v47;
  cardHeaderView5 = [(CuratedCollectionViewController *)self cardHeaderView];
  leadingAnchor = [cardHeaderView5 leadingAnchor];
  view4 = [(CuratedCollectionViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v42 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v55[1] = v42;
  cardHeaderView6 = [(CuratedCollectionViewController *)self cardHeaderView];
  trailingAnchor = [cardHeaderView6 trailingAnchor];
  view5 = [(CuratedCollectionViewController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v37 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v55[2] = v37;
  topAnchor3 = [(MapsThemeTableView *)self->_tableView topAnchor];
  view6 = [(CuratedCollectionViewController *)self view];
  topAnchor4 = [view6 topAnchor];
  v33 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v55[3] = v33;
  leadingAnchor3 = [(MapsThemeTableView *)self->_tableView leadingAnchor];
  view7 = [(CuratedCollectionViewController *)self view];
  leadingAnchor4 = [view7 leadingAnchor];
  v29 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v55[4] = v29;
  trailingAnchor3 = [(MapsThemeTableView *)self->_tableView trailingAnchor];
  view8 = [(CuratedCollectionViewController *)self view];
  trailingAnchor4 = [view8 trailingAnchor];
  v19 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v55[5] = v19;
  bottomAnchor = [(MapsThemeTableView *)self->_tableView bottomAnchor];
  view9 = [(CuratedCollectionViewController *)self view];
  bottomAnchor2 = [view9 bottomAnchor];
  v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v55[6] = v23;
  v24 = [NSArray arrayWithObjects:v55 count:7];
  [NSLayoutConstraint activateConstraints:v24];

  view10 = [(CuratedCollectionViewController *)self view];
  [view10 layoutIfNeeded];

  curatedCollection = self->_curatedCollection;
  cardHeaderView7 = [(CuratedCollectionViewController *)self cardHeaderView];
  [cardHeaderView7 setCuratedCollection:curatedCollection];

  [(CuratedCollectionViewController *)self _updateHeaderTransition];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController updateHeightForCurrentLayout];

  [(CuratedCollectionViewController *)self _updateHeaderAndTableViewValues];
  v54[0] = _NSConcreteStackBlock;
  v54[1] = 3221225472;
  v54[2] = sub_1008434F8;
  v54[3] = &unk_101661B18;
  v54[4] = self;
  [UIView performWithoutAnimation:v54];
  v52[4] = self;
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_10084354C;
  v53[3] = &unk_101661B18;
  v53[4] = self;
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_1008435C8;
  v52[3] = &unk_101661738;
  [UIView animateWithDuration:2 delay:v53 options:v52 animations:0.3 completion:0.0];
}

- (void)dataSourceUpdated:(id)updated
{
  if (!self->_hasFinishedResolving)
  {
    self->_hasFinishedResolving = 1;
    [(CuratedCollectionViewController *)self _didFinishResolving];
  }
}

- (BOOL)shouldClearSearchPins
{
  mapModificationDelegate = [(CuratedCollectionViewController *)self mapModificationDelegate];
  v4 = [mapModificationDelegate searchResultsForViewController:self];

  _searchResults = [(CuratedCollectionViewController *)self _searchResults];
  LOBYTE(mapModificationDelegate) = [v4 isEqualToArray:_searchResults];

  return mapModificationDelegate;
}

- (void)removeContentFromMapView
{
  if ([(CuratedCollectionViewController *)self shouldClearSearchPins])
  {
    mapModificationDelegate = [(CuratedCollectionViewController *)self mapModificationDelegate];
    [mapModificationDelegate viewControllerClearInjectedSearchPins:self];
  }
}

- (void)addContentToMapView
{
  v3 = sub_100843878();
  v4 = os_signpost_id_generate(v3);

  v5 = sub_100843878();
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "AddingContentToMapView", "", buf, 2u);
  }

  _searchResults = [(CuratedCollectionViewController *)self _searchResults];
  v8 = [SearchInfo searchInfoWithResults:_searchResults];
  mapModificationDelegate = [(CuratedCollectionViewController *)self mapModificationDelegate];
  [mapModificationDelegate injectSearchPinsFromSearchInfo:v8];

  v10 = sub_100843878();
  v11 = v10;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_END, v4, "AddingContentToMapView", "", v12, 2u);
  }
}

- (id)_searchResults
{
  v3 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  collectionProvider = [(CuratedCollectionViewController *)self collectionProvider];
  collectionItems = [collectionProvider collectionItems];

  v6 = [collectionItems countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(collectionItems);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [SearchResult alloc];
        mapItem = [v10 mapItem];
        v13 = [(SearchResult *)v11 initWithMapItem:mapItem];

        [(SearchResultRepr *)v13 setHasIncompleteMetadata:1];
        [v3 addObject:v13];
      }

      v7 = [collectionItems countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = [v3 copy];

  return v14;
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  y = velocity.y;
  x = velocity.x;
  draggingCopy = dragging;
  [(CuratedCollectionHeaderView *)self->_cardHeaderView minimumScrolledHeight];
  if (offset->y < -v10)
  {
    if (y >= 0.0)
    {
      if (y <= 0.0)
      {
        goto LABEL_7;
      }

      v12 = 1.0 - v10;
    }

    else
    {
      [draggingCopy contentInset];
      v12 = -v11;
    }

    offset->y = v12;
  }

LABEL_7:
  v14.receiver = self;
  v14.super_class = CuratedCollectionViewController;
  [(ContaineeViewController *)&v14 scrollViewWillEndDragging:draggingCopy withVelocity:offset targetContentOffset:x, y];
  if (y > 0.0)
  {
    analyticsController = [(CuratedCollectionViewController *)self analyticsController];
    [analyticsController logScrollDown];
LABEL_11:

    goto LABEL_12;
  }

  if (y < 0.0)
  {
    analyticsController = [(CuratedCollectionViewController *)self analyticsController];
    [analyticsController logScrollUp];
    goto LABEL_11;
  }

LABEL_12:
  [(CuratedCollectionViewController *)self _setWantsInsertInHistory];
}

- (void)scrollViewDidScroll:(id)scroll
{
  v6.receiver = self;
  v6.super_class = CuratedCollectionViewController;
  [(ContaineeViewController *)&v6 scrollViewDidScroll:scroll];
  collectionProvider = [(CuratedCollectionViewController *)self collectionProvider];
  isApplyingSnapshot = [collectionProvider isApplyingSnapshot];

  if ((isApplyingSnapshot & 1) == 0)
  {
    [(CuratedCollectionViewController *)self _updateHeaderAndTableViewValues];
  }
}

- (void)seeAllGuidesMenuButtonTapped
{
  actionDelegate = [(CuratedCollectionViewController *)self actionDelegate];
  [actionDelegate curatedCollectionViewControllerShowAllGuides:self];
}

- (void)websiteMenuButtonTapped
{
  _websiteURL = [(CuratedCollectionViewController *)self _websiteURL];
  if (_websiteURL)
  {
    v5 = _websiteURL;
    actionDelegate = [(CuratedCollectionViewController *)self actionDelegate];
    [actionDelegate curatedCollectionViewController:self openURL:v5];

    [(CuratedCollectionViewAnalyticsController *)self->_analyticsController logOpenWebsite];
    _websiteURL = v5;
  }
}

- (void)headerViewPublisherLogoTapped
{
  analyticsController = [(CuratedCollectionViewController *)self analyticsController];
  [analyticsController logDiscoverMoreFromPublisher];

  actionDelegate = [(CuratedCollectionViewController *)self actionDelegate];
  curatedCollection = [(CuratedCollectionViewController *)self curatedCollection];
  publisher = [curatedCollection publisher];
  [actionDelegate curatedCollectionViewController:self showPublisher:publisher];
}

- (void)headerViewBrickTapped
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController wantsExpandLayout];
}

- (id)_websiteURL
{
  curatedCollection = [(CuratedCollectionViewController *)self curatedCollection];
  publisherCollectionURL = [curatedCollection publisherCollectionURL];

  if (publisherCollectionURL)
  {
    websiteURL = publisherCollectionURL;
  }

  else
  {
    curatedCollection2 = [(CuratedCollectionViewController *)self curatedCollection];
    publisher = [curatedCollection2 publisher];
    publisherAttribution = [publisher publisherAttribution];
    websiteURL = [publisherAttribution websiteURL];

    if (websiteURL)
    {
      v9 = websiteURL;
    }
  }

  return websiteURL;
}

- (id)menuForQuickActionButton
{
  v3 = +[NSMutableArray array];
  objc_initWeak(&location, self);
  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    v4 = +[NSBundle mainBundle];
    [v4 localizedStringForKey:@"Save_Curated_Collection_Library_Mac_Menu_Item" value:@"localized string not found" table:0];
  }

  else
  {
    v4 = +[NSBundle mainBundle];
    [v4 localizedStringForKey:@"Save_Curated_Collection_Mac_Menu_Item" value:@"localized string not found" table:0];
  }
  v36 = ;

  v5 = [UIImage systemImageNamed:@"plus"];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_1008446D4;
  v45[3] = &unk_101661900;
  objc_copyWeak(&v46, &location);
  v35 = [UIAction actionWithTitle:v36 image:v5 identifier:0 handler:v45];

  v51 = v35;
  v6 = [NSArray arrayWithObjects:&v51 count:1];
  v7 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:1 children:v6];

  [v3 addObject:v7];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"See_Publishers_Guides_Mac_Menu_Item" value:@"localized string not found" table:0];
  v10 = [UIImage systemImageNamed:@"rectangle.grid.2x2"];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100844714;
  v43[3] = &unk_101661900;
  objc_copyWeak(&v44, &location);
  v11 = [UIAction actionWithTitle:v9 image:v10 identifier:0 handler:v43];

  v12 = +[NSBundle mainBundle];
  v13 = [v12 localizedStringForKey:@"See_All_Guides_Mac_Menu_Item" value:@"localized string not found" table:0];
  v14 = [UIImage systemImageNamed:@"rectangle.grid.2x2"];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100844754;
  v41[3] = &unk_101661900;
  objc_copyWeak(&v42, &location);
  v15 = [UIAction actionWithTitle:v13 image:v14 identifier:0 handler:v41];

  v50[0] = v11;
  v50[1] = v15;
  v16 = [NSArray arrayWithObjects:v50 count:2];
  v17 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:1 children:v16];

  [v3 addObject:v17];
  _websiteURL = [(CuratedCollectionViewController *)self _websiteURL];
  v19 = _websiteURL == 0;

  if (!v19)
  {
    v20 = +[NSBundle mainBundle];
    v21 = [v20 localizedStringForKey:@"Collections_Website_Mac_Menu_Item" value:@"localized string not found" table:0];
    v22 = [UIImage systemImageNamed:@"safari"];
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100844794;
    v39[3] = &unk_101661900;
    objc_copyWeak(&v40, &location);
    v23 = [UIAction actionWithTitle:v21 image:v22 identifier:0 handler:v39];

    v49 = v23;
    v24 = [NSArray arrayWithObjects:&v49 count:1];
    v25 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:1 children:v24];

    [v3 addObject:v25];
    objc_destroyWeak(&v40);
  }

  v26 = [MapsMenuBuilder sendToDeviceAndShareMenuWithSendToDeviceEnabled:1];
  [v3 addObject:v26];

  v27 = +[NSBundle mainBundle];
  v28 = [v27 localizedStringForKey:@"Report_an_Issue_Mac_Menu_Item" value:@"localized string not found" table:0];
  v29 = [UIImage systemImageNamed:@"exclamationmark.bubble"];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1008447D4;
  v37[3] = &unk_101661900;
  objc_copyWeak(&v38, &location);
  v30 = [UIAction actionWithTitle:v28 image:v29 identifier:0 handler:v37];

  v48 = v30;
  v31 = [NSArray arrayWithObjects:&v48 count:1];
  v32 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:1 children:v31];

  [v3 addObject:v32];
  v33 = [UIMenu menuWithChildren:v3];

  objc_destroyWeak(&v38);
  objc_destroyWeak(&v42);

  objc_destroyWeak(&v44);
  objc_destroyWeak(&v46);

  objc_destroyWeak(&location);

  return v33;
}

- (void)_insertInHistory
{
  if (!self->_didInsertInHistory && self->_hasFinishedResolving)
  {
    curatedCollection = [(CuratedCollectionViewController *)self curatedCollection];
    [HistoryEntryRecentsItem saveCuratedCollection:curatedCollection completion:&stru_10162BAC0];

    self->_didInsertInHistory = 1;
  }
}

- (void)_setWantsInsertInHistory
{
  if (sub_10000FA08(self) == 5)
  {
    self->_wantsInsertInHistoryOnDismiss = 1;
  }

  else
  {

    [(CuratedCollectionViewController *)self _insertInHistory];
  }
}

- (void)_updateHeaderTransition
{
  v3 = 1.0;
  v4 = 0.0;
  if (sub_10000FA08(self) == 5 || (-[ContaineeViewController cardPresentationController](self, "cardPresentationController"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 containerStyle], v5, v6 == 6))
  {
    v7 = 4;
  }

  else
  {
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController transitionProgressFromLayout:2 toLayout:3];
    v12 = v11;

    cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController2 transitionProgressFromLayout:1 toLayout:2];
    v4 = v14;

    cardPresentationController3 = [(ContaineeViewController *)self cardPresentationController];
    containerStyle = [cardPresentationController3 containerStyle];

    if (containerStyle == 4)
    {
      cardPresentationController4 = [(ContaineeViewController *)self cardPresentationController];
      [cardPresentationController4 transitionProgressFromLayout:1 toLayout:3];
      v19 = v18;

      if (v19 < 0.5)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = v19 + v19 + -1.0;
      }

      if (v19 < 0.5)
      {
        v4 = v19 + v19;
      }

      else
      {
        v4 = 1.0;
      }
    }

    v3 = 0.0;
    if (v12 == 0.0 && v4 == 0.0)
    {
      v7 = 0;
      v4 = 0.0;
    }

    else if (v12 == 0.0 && v4 < 1.0)
    {
      v7 = 1;
    }

    else if (v4 == 1.0 && v12 < 1.0 && v12 > 0.0)
    {
      v7 = 3;
      v4 = v12;
      v3 = v12;
    }

    else
    {
      v4 = 0.0;
      if (v12 == 1.0)
      {
        v3 = 1.0;
      }

      else
      {
        v3 = 0.0;
      }

      if (v12 == 1.0)
      {
        v7 = 4;
      }

      else
      {
        v7 = 2;
      }
    }
  }

  cardHeaderView = [(CuratedCollectionViewController *)self cardHeaderView];
  [cardHeaderView setLayout:v7 transitionFraction:v4];

  [(CuratedCollectionViewController *)self _updateHeaderAndTableViewValues];
  collectionProvider = self->_collectionProvider;

  [(CuratedCollectionProvider *)collectionProvider setSubheaderTransitionFraction:v3];
}

- (void)handleDismissAction:(id)action
{
  actionCopy = action;
  curatedCollection = [(CuratedCollectionViewController *)self curatedCollection];
  if (![curatedCollection isSuppressed])
  {
    goto LABEL_4;
  }

  v6 = +[CuratedCollectionSyncManager sharedManager];
  curatedCollection2 = [(CuratedCollectionViewController *)self curatedCollection];
  v8 = [v6 collectionIsSaved:curatedCollection2];

  if (v8)
  {
    curatedCollection = +[CuratedCollectionSyncManager sharedManager];
    curatedCollection3 = [(CuratedCollectionViewController *)self curatedCollection];
    [curatedCollection removeSavedCuratedCollection:curatedCollection3 completion:0];

LABEL_4:
  }

  v11.receiver = self;
  v11.super_class = CuratedCollectionViewController;
  [(ContaineeViewController *)&v11 handleDismissAction:actionCopy];
  analyticsController = [(CuratedCollectionViewController *)self analyticsController];
  [analyticsController logClose];
}

- (void)viewDidLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = CuratedCollectionViewController;
  [(ContaineeViewController *)&v6 viewDidLayoutSubviews];
  if (qword_10195DF00 != -1)
  {
    dispatch_once(&qword_10195DF00, &stru_1016303F0);
  }

  if (byte_10195DF08 == 1)
  {
    [(CuratedCollectionViewController *)self _updateHeaderTransition];
  }

  cardHeaderView = [(CuratedCollectionViewController *)self cardHeaderView];
  [cardHeaderView bounds];
  MaxY = CGRectGetMaxY(v7);
  view = [(CuratedCollectionViewController *)self view];
  [view safeAreaInsets];
  [(MapsThemeTableView *)self->_tableView setScrollIndicatorInsets:MaxY, 0.0];
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = CuratedCollectionViewController;
  [(CuratedCollectionViewController *)&v3 viewSafeAreaInsetsDidChange];
  [(CuratedCollectionViewController *)self _updateHeaderAndTableViewValues];
}

- (void)_updateHeaderAndTableViewValues
{
  if (!self->_hasFinishedResolving)
  {
    return;
  }

  [(CuratedCollectionHeaderView *)self->_cardHeaderView unscrolledHeightForCurrentLayout];
  v5 = v4;
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController availableHeight];
  if (v5 >= v7 + -10.0)
  {
    cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController2 availableHeight];
    v5 = v9 + -10.0;
  }

  layout = [(CuratedCollectionHeaderView *)self->_cardHeaderView layout];
  if (layout < 3)
  {
    goto LABEL_11;
  }

  if (layout == 3)
  {
    [(MapsThemeTableView *)self->_tableView isScrollEnabled];
LABEL_11:
    self->_hasBeenInFullLayout = 0;
    v11 = 1;
    goto LABEL_12;
  }

  if (layout == 4)
  {
    v11 = !self->_hasBeenInFullLayout;
    self->_hasBeenInFullLayout = 1;
  }

  else
  {
    v11 = 0;
  }

LABEL_12:
  [(MapsThemeTableView *)self->_tableView setScrollEnabled:?];
  [(CuratedCollectionProvider *)self->_collectionProvider subheaderFrame];
  [(CuratedCollectionHeaderView *)self->_cardHeaderView setTableViewSubheaderContentHeight:CGRectGetMaxY(v16)];
  [(MapsThemeTableView *)self->_tableView contentOffset];
  if (v11)
  {
    v13 = -v5;
  }

  else
  {
    v13 = v12;
  }

  view = [(CuratedCollectionViewController *)self view];
  [view safeAreaInsets];
  [(MapsThemeTableView *)self->_tableView setContentInset:v5, 0.0];

  if (v11)
  {
    [(MapsThemeTableView *)self->_tableView setContentOffset:0.0, v13];
  }

  cardHeaderView = self->_cardHeaderView;

  [(CuratedCollectionHeaderView *)cardHeaderView setTableViewContentOffset:v13];
}

- (void)setCuratedCollection:(id)collection
{
  collectionCopy = collection;
  if (self->_curatedCollection != collectionCopy)
  {
    v9 = collectionCopy;
    objc_storeStrong(&self->_curatedCollection, collection);
    [(CuratedCollectionViewAnalyticsController *)self->_analyticsController updateWithPlaceCollection:self->_curatedCollection];
    if (([(GEOPlaceCollection *)self->_curatedCollection isSuppressed]& 1) != 0 || [(GEOPlaceCollection *)self->_curatedCollection isBlocked])
    {
      cardHeaderView = [(CuratedCollectionViewController *)self cardHeaderView];
      [cardHeaderView removeFromSuperview];

      [(MapsThemeTableView *)self->_tableView removeFromSuperview];
      cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
      [cardPresentationController wantsLayout:2];
    }

    else
    {
      cardPresentationController = [(GEOPlaceCollection *)self->_curatedCollection collectionTitle];
      fakeHeaderView = [(CuratedCollectionViewController *)self fakeHeaderView];
      [fakeHeaderView setTitle:cardPresentationController];
    }

    collectionCopy = v9;
  }
}

- (void)applyAlphaToContent:(double)content
{
  v5.receiver = self;
  v5.super_class = CuratedCollectionViewController;
  [(ContaineeViewController *)&v5 applyAlphaToContent:?];
  [(MapsThemeTableView *)self->_tableView setAlpha:content];
}

- (double)heightForLayout:(unint64_t)layout
{
  if (layout == 3)
  {
    if (sub_10000FA08(self) == 5)
    {
      cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
      [cardPresentationController availableHeight];
      goto LABEL_10;
    }

LABEL_12:
    v11.receiver = self;
    v11.super_class = CuratedCollectionViewController;
    [(ContaineeViewController *)&v11 heightForLayout:layout];
    return v9;
  }

  if (layout == 2)
  {
    if (sub_10000FA08(self) == 5)
    {
      cardPresentationController = [(CuratedCollectionViewController *)self cardHeaderView];
      [cardPresentationController unscrolledHeightForLayout:4 transitionFraction:0.0];
      v5 = v8 + 6.0;
LABEL_11:

      return v5;
    }

    goto LABEL_12;
  }

  if (layout != 1)
  {
    goto LABEL_12;
  }

  v5 = -1.0;
  if (sub_10000FA08(self) != 5)
  {
    cardPresentationController = [(CuratedCollectionViewController *)self cardHeaderView];
    [cardPresentationController unscrolledHeightForLayout:0 transitionFraction:0.0];
LABEL_10:
    v5 = v7;
    goto LABEL_11;
  }

  return v5;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = CuratedCollectionViewController;
  coordinatorCopy = coordinator;
  [(ContaineeViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1008452F0;
  v8[3] = &unk_101661710;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:v8 completion:&stru_10162BAA0];
}

- (void)didChangeLayout:(unint64_t)layout
{
  v4.receiver = self;
  v4.super_class = CuratedCollectionViewController;
  [(ContaineeViewController *)&v4 didChangeLayout:layout];
  self->_isChangingLayout = 0;
}

- (void)willChangeLayout:(unint64_t)layout
{
  if (self->_layout != layout)
  {
    self->_layout = layout;
    self->_isChangingLayout = 1;
  }

  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  containeeLayout = [cardPresentationController containeeLayout];

  v16.receiver = self;
  v16.super_class = CuratedCollectionViewController;
  [(ContaineeViewController *)&v16 willChangeLayout:layout];
  if (layout >= 2)
  {
    cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
    containeeLayout2 = [cardPresentationController2 containeeLayout];

    if (containeeLayout2 < layout)
    {
      [(CuratedCollectionViewAnalyticsController *)self->_analyticsController logPullUpCuratedCollectionView];
    }
  }

  [(CuratedCollectionViewController *)self _updateHeaderTransition];
  errorView = [(CuratedCollectionViewController *)self errorView];
  fakeHeaderView = [(CuratedCollectionViewController *)self fakeHeaderView];
  [fakeHeaderView frame];
  [errorView setVerticalAdjustment:-v11];

  cardPresentationController3 = [(ContaineeViewController *)self cardPresentationController];
  containerStyle = [cardPresentationController3 containerStyle];

  v15 = containerStyle - 1 < 2 || (containerStyle & 0xFFFFFFFFFFFFFFFELL) == 4;
  if (layout - 3 <= 1 && v15)
  {
    if (containeeLayout)
    {
      [(CuratedCollectionViewController *)self _setWantsInsertInHistory];
    }
  }
}

- (void)didBecomeCurrent
{
  v5.receiver = self;
  v5.super_class = CuratedCollectionViewController;
  [(ContaineeViewController *)&v5 didBecomeCurrent];
  updateContentInjection = [(CuratedCollectionViewController *)self updateContentInjection];

  if (updateContentInjection)
  {
    updateContentInjection2 = [(CuratedCollectionViewController *)self updateContentInjection];
    (updateContentInjection2)[2](updateContentInjection2, self);
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CuratedCollectionViewController;
  [(CuratedCollectionViewController *)&v4 viewDidDisappear:disappear];
  if ((([(CuratedCollectionViewController *)self isMovingFromParentViewController]& 1) != 0 || sub_10000FA08(self) == 5) && self->_wantsInsertInHistoryOnDismiss)
  {
    [(CuratedCollectionViewController *)self _insertInHistory];
  }
}

- (void)_attachLoadingView
{
  v3 = dispatch_time(0, 200000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100845640;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (void)viewDidLoad
{
  v42.receiver = self;
  v42.super_class = CuratedCollectionViewController;
  [(ContaineeViewController *)&v42 viewDidLoad];
  view = [(CuratedCollectionViewController *)self view];
  [view setAccessibilityIdentifier:@"CuratedCollectionView"];

  v4 = sub_100843878();
  v5 = os_signpost_id_generate(v4);

  v6 = sub_100843878();
  v7 = v6;
  v40 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "DisplayingCuratedCollectionsView", "", buf, 2u);
  }

  spid = v5;

  [(MapsThemeTableView *)self->_tableView setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = +[UIColor clearColor];
  [(MapsThemeTableView *)self->_tableView setBackgroundColor:v8];

  layer = [(MapsThemeTableView *)self->_tableView layer];
  [layer setAllowsGroupOpacity:0];

  fakeHeaderView = [(CuratedCollectionViewController *)self fakeHeaderView];
  [fakeHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];

  fakeHeaderView2 = [(CuratedCollectionViewController *)self fakeHeaderView];
  [fakeHeaderView2 setDelegate:self];

  fakeHeaderView3 = [(CuratedCollectionViewController *)self fakeHeaderView];
  [fakeHeaderView3 setHairLineAlpha:0.0];

  headerView = [(ContaineeViewController *)self headerView];
  fakeHeaderView4 = [(CuratedCollectionViewController *)self fakeHeaderView];
  [headerView addSubview:fakeHeaderView4];

  cardHeaderView = [(CuratedCollectionViewController *)self cardHeaderView];
  [cardHeaderView setTranslatesAutoresizingMaskIntoConstraints:0];

  fakeHeaderView5 = [(CuratedCollectionViewController *)self fakeHeaderView];
  topAnchor = [fakeHeaderView5 topAnchor];
  headerView2 = [(ContaineeViewController *)self headerView];
  topAnchor2 = [headerView2 topAnchor];
  v35 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v43[0] = v35;
  fakeHeaderView6 = [(CuratedCollectionViewController *)self fakeHeaderView];
  leadingAnchor = [fakeHeaderView6 leadingAnchor];
  headerView3 = [(ContaineeViewController *)self headerView];
  leadingAnchor2 = [headerView3 leadingAnchor];
  v30 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v43[1] = v30;
  fakeHeaderView7 = [(CuratedCollectionViewController *)self fakeHeaderView];
  trailingAnchor = [fakeHeaderView7 trailingAnchor];
  headerView4 = [(ContaineeViewController *)self headerView];
  trailingAnchor2 = [headerView4 trailingAnchor];
  v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v43[2] = v18;
  fakeHeaderView8 = [(CuratedCollectionViewController *)self fakeHeaderView];
  bottomAnchor = [fakeHeaderView8 bottomAnchor];
  headerView5 = [(ContaineeViewController *)self headerView];
  bottomAnchor2 = [headerView5 bottomAnchor];
  v23 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v43[3] = v23;
  v24 = [NSArray arrayWithObjects:v43 count:4];
  [NSLayoutConstraint activateConstraints:v24];

  [(CuratedCollectionViewController *)self _attachLoadingView];
  [(CuratedCollectionProvider *)self->_collectionProvider startResolvingCollection];
  v25 = sub_100843878();
  v26 = v25;
  if (v40 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, OS_SIGNPOST_INTERVAL_END, spid, "DisplayingCuratedCollectionsView", "", buf, 2u);
  }
}

- (id)targetForAction:(SEL)action withSender:(id)sender
{
  senderCopy = sender;
  collectionProvider = [(CuratedCollectionViewController *)self collectionProvider];
  keyCommands = [collectionProvider keyCommands];
  v9 = [keyCommands containsObject:senderCopy];

  if (v9)
  {
    collectionProvider2 = [(CuratedCollectionViewController *)self collectionProvider];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CuratedCollectionViewController;
    collectionProvider2 = [(CuratedCollectionViewController *)&v13 targetForAction:action withSender:senderCopy];
  }

  v11 = collectionProvider2;

  return v11;
}

- (id)keyCommands
{
  v10.receiver = self;
  v10.super_class = CuratedCollectionViewController;
  keyCommands = [(ContaineeViewController *)&v10 keyCommands];
  v4 = [keyCommands mutableCopy];

  presentedViewController = [(CuratedCollectionViewController *)self presentedViewController];

  if (!presentedViewController)
  {
    collectionProvider = [(CuratedCollectionViewController *)self collectionProvider];
    keyCommands2 = [collectionProvider keyCommands];
    [v4 addObjectsFromArray:keyCommands2];
  }

  v8 = [v4 copy];

  return v8;
}

- (void)_commonInitWithCuratedCollectionProvider:(id)provider identifier:(id)identifier
{
  providerCopy = provider;
  objc_storeStrong(&self->_collectionProvider, provider);
  identifierCopy = identifier;
  [(DataSource *)self->_collectionProvider setDelegate:self];
  [(MapsThemeTableView *)self->_tableView setPreservesSuperviewLayoutMargins:1];
  v8 = [[ContainerHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  fakeHeaderView = self->_fakeHeaderView;
  self->_fakeHeaderView = v8;

  v10 = [[CuratedCollectionHeaderView alloc] initWithDelegate:self];
  cardHeaderView = self->_cardHeaderView;
  self->_cardHeaderView = v10;

  v12 = [[CuratedCollectionViewAnalyticsController alloc] initWithCollectionIdentifier:identifierCopy];
  analyticsController = self->_analyticsController;
  self->_analyticsController = v12;

  [(CuratedCollectionViewAnalyticsController *)self->_analyticsController logRevealCuratedCollectionView];
  [(CuratedCollectionProvider *)self->_collectionProvider setAnalyticsController:self->_analyticsController];
  if (sub_10000FA08(self) == 5)
  {
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController setAllowResizeInFloatingStyle:1];

    cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController2 setDefaultContaineeLayout:3];
  }

  cardPresentationController3 = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController3 setGrabberBlurEnabled:1];

  v17 = [LoadingModeView alloc];
  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:@"Loading ..." value:@"localized string not found" table:0];
  v20 = [(LoadingModeView *)v17 initWithTitle:v19];
  loadingView = self->_loadingView;
  self->_loadingView = v20;

  [(LoadingModeView *)self->_loadingView setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (CuratedCollectionViewController)initWithFullyClientizedPlaceCollection:(id)collection
{
  collectionCopy = collection;
  v13.receiver = self;
  v13.super_class = CuratedCollectionViewController;
  v5 = [(CuratedCollectionViewController *)&v13 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [[MapsThemeTableView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    tableView = v5->_tableView;
    v5->_tableView = v6;

    v8 = [[CuratedCollectionProvider alloc] initWithTableView:v5->_tableView fullyClientizedCuratedCollection:collectionCopy];
    v9 = [MKMapItemIdentifier alloc];
    collectionIdentifier = [collectionCopy collectionIdentifier];
    v11 = [v9 initWithGEOMapItemIdentifier:collectionIdentifier];

    [(CuratedCollectionViewController *)v5 _commonInitWithCuratedCollectionProvider:v8 identifier:v11];
    [(CuratedCollectionViewAnalyticsController *)v5->_analyticsController updateWithPlaceCollection:collectionCopy];
  }

  return v5;
}

- (CuratedCollectionViewController)initWithCuratedCollectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = CuratedCollectionViewController;
  v5 = [(CuratedCollectionViewController *)&v10 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [[MapsThemeTableView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    tableView = v5->_tableView;
    v5->_tableView = v6;

    [(MapsThemeTableView *)v5->_tableView setAccessibilityIdentifier:@"CuratedCollectionTableView"];
    v8 = [[CuratedCollectionProvider alloc] initWithTableView:v5->_tableView curatedCollectionIdentifier:identifierCopy];
    [(CuratedCollectionViewController *)v5 _commonInitWithCuratedCollectionProvider:v8 identifier:identifierCopy];
  }

  return v5;
}

@end