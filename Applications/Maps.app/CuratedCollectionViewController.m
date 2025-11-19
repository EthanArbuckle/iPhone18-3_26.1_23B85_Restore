@interface CuratedCollectionViewController
- (BOOL)shouldClearSearchPins;
- (CuratedCollectionViewController)initWithCuratedCollectionIdentifier:(id)a3;
- (CuratedCollectionViewController)initWithFullyClientizedPlaceCollection:(id)a3;
- (CuratedCollectionViewControllerDelegate)actionDelegate;
- (MapModificationDelegate)mapModificationDelegate;
- (NSArray)mapItems;
- (ShareDelegate)shareDelegate;
- (double)heightForLayout:(unint64_t)a3;
- (id)_searchResults;
- (id)_websiteURL;
- (id)keyCommands;
- (id)menuForQuickActionButton;
- (id)targetForAction:(SEL)a3 withSender:(id)a4;
- (void)_attachLoadingView;
- (void)_commonInitWithCuratedCollectionProvider:(id)a3 identifier:(id)a4;
- (void)_didFinishResolving;
- (void)_insertInHistory;
- (void)_refineMapItem:(id)a3 completionHandler:(id)a4;
- (void)_setWantsInsertInHistory;
- (void)_updateHeaderAndTableViewValues;
- (void)_updateHeaderTransition;
- (void)addContentToMapView;
- (void)applyAlphaToContent:(double)a3;
- (void)dataSource:(id)a3 addPlaceToLibraryUsingCoordinator:(id)a4;
- (void)dataSource:(id)a3 addToUserCollection:(id)a4 forMapItem:(id)a5 sourceView:(id)a6 onSaveCompletion:(id)a7;
- (void)dataSource:(id)a3 didExpandCellAnimated:(BOOL)a4;
- (void)dataSource:(id)a3 didFailWithErrorState:(unint64_t)a4;
- (void)dataSource:(id)a3 itemFocused:(id)a4;
- (void)dataSource:(id)a3 itemTapped:(id)a4;
- (void)dataSource:(id)a3 openAppClip:(id)a4;
- (void)dataSource:(id)a3 removePlaceFromLibraryUsingCoordinator:(id)a4;
- (void)dataSource:(id)a3 willPunchOuToPublisherWebpageForPlaceCollectionItem:(id)a4;
- (void)dataSourceUpdated:(id)a3;
- (void)didBecomeCurrent;
- (void)didChangeLayout:(unint64_t)a3;
- (void)didSelectOpenHomePage;
- (void)didSelectRemoveFromSavedCollection;
- (void)didSelectSaveCollection;
- (void)didSelectShareFromView:(id)a3;
- (void)handleDismissAction:(id)a3;
- (void)headerViewBrickTapped;
- (void)headerViewPublisherLogoTapped;
- (void)presentRAPWithSourceView:(id)a3;
- (void)removeContentFromMapView;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)seeAllGuidesMenuButtonTapped;
- (void)setCuratedCollection:(id)a3;
- (void)showPublisherView:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)websiteMenuButtonTapped;
- (void)willChangeLayout:(unint64_t)a3;
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
  v3 = [(CuratedCollectionViewController *)self curatedCollection];
  v5 = [v3 publisherCollectionURL];

  v4 = [(CuratedCollectionViewController *)self actionDelegate];
  [v4 curatedCollectionViewController:self openURL:v5];

  [(CuratedCollectionViewAnalyticsController *)self->_analyticsController logOpenWebsite];
}

- (void)didSelectShareFromView:(id)a3
{
  v4 = a3;
  v5 = [(CuratedCollectionViewController *)self analyticsController];
  [v5 logShareCuratedCollection];

  v6 = [CuratedCollectionShareItemSource alloc];
  v7 = [(CuratedCollectionViewController *)self curatedCollection];
  v8 = [(CuratedCollectionViewController *)self mapItems];
  v11 = [(CuratedCollectionShareItemSource *)v6 initWithPlaceCollection:v7 refinedMapItems:v8];

  v9 = [MUPresentationOptions optionsWithSender:v4];

  v10 = [(CuratedCollectionViewController *)self shareDelegate];
  [v10 shareItem:v11 presentationOptions:v9 completion:0];
}

- (NSArray)mapItems
{
  v3 = objc_alloc_init(NSMutableArray);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(CuratedCollectionViewController *)self collectionProvider];
  v5 = [v4 collectionItems];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) mapItem];
        [v3 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v3 copy];

  return v11;
}

- (void)didSelectRemoveFromSavedCollection
{
  v3 = [(CuratedCollectionViewController *)self analyticsController];
  [v3 logRemoveCuratedCollection];

  v5 = +[CuratedCollectionSyncManager sharedManager];
  v4 = [(CuratedCollectionViewController *)self curatedCollection];
  [v5 removeSavedCuratedCollection:v4 completion:0];
}

- (void)didSelectSaveCollection
{
  v3 = [(CuratedCollectionViewController *)self analyticsController];
  [v3 logSaveCuratedCollection];

  v5 = +[CuratedCollectionSyncManager sharedManager];
  v4 = [(CuratedCollectionViewController *)self curatedCollection];
  [v5 addSavedCuratedCollection:v4 completion:0];
}

- (void)_refineMapItem:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CuratedCollectionViewController *)self actionDelegate];
  v11 = [v8 traitsForCuratedCollectionViewController:self];

  v9 = +[MKMapService sharedService];
  v10 = [v9 ticketForMapItemToRefine:v7 traits:v11];

  [v10 submitWithHandler:v6 networkActivity:0];
}

- (void)dataSource:(id)a3 openAppClip:(id)a4
{
  v5 = a4;
  v6 = [v5 appClipURL];
  v7 = [(CuratedCollectionViewController *)self analyticsController];
  [v7 logOpenAppClipWithURL:v6];

  v8 = +[MKClipServices sharedInstance];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100841744;
  v10[3] = &unk_10164D910;
  v11 = v6;
  v9 = v6;
  [v8 requestAppClip:v5 completion:v10];
}

- (void)showPublisherView:(id)a3
{
  v4 = a3;
  v5 = [(CuratedCollectionViewController *)self analyticsController];
  [v5 logDiscoverMoreFromPublisher];

  v6 = [(CuratedCollectionViewController *)self actionDelegate];
  [v6 curatedCollectionViewController:self showPublisher:v4];
}

- (void)presentRAPWithSourceView:(id)a3
{
  v4 = a3;
  v5 = [RAPCuratedCollectionContext alloc];
  v6 = [(CuratedCollectionViewController *)self curatedCollection];
  v7 = [(CuratedCollectionViewController *)self collectionProvider];
  v8 = [v7 collectionItems];
  v12 = [(RAPCuratedCollectionContext *)v5 initWithCuratedCollection:v6 placeCollectionMapItems:v8];

  v9 = [(CuratedCollectionViewController *)self _maps_mapsSceneDelegate];
  v10 = [v9 rapPresenter];
  [v10 presentCuratedCollectionRAPWithContext:v12 sourceView:v4 completion:0];

  v11 = [(CuratedCollectionViewController *)self analyticsController];
  [v11 logReportAProblem];
}

- (void)dataSource:(id)a3 didExpandCellAnimated:(BOOL)a4
{
  v4 = 0.3;
  if (!a4)
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

- (void)dataSource:(id)a3 willPunchOuToPublisherWebpageForPlaceCollectionItem:(id)a4
{
  v5 = a4;
  v6 = [(CuratedCollectionViewController *)self collectionProvider];
  v7 = [v6 collectionItems];
  v8 = [v7 indexOfObject:v5];

  v9 = [(CuratedCollectionViewController *)self analyticsController];
  [v9 logPunchOutToPublisherReviewWithIndex:v8];
}

- (void)dataSource:(id)a3 didFailWithErrorState:(unint64_t)a4
{
  v36 = a3;
  self->_hasFinishedResolving = 1;
  v6 = [(CuratedCollectionViewController *)self errorView];

  if (!v6)
  {
    v7 = objc_alloc_init(ErrorModeView);
    [(CuratedCollectionViewController *)self setErrorView:v7];

    v8 = [(CuratedCollectionViewController *)self errorView];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v20 = [(CuratedCollectionViewController *)self errorView];
      v21 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubhead];
      [v20 setTitleLabelFont:v21];

      v11 = +[NSBundle mainBundle];
      v55 = [v11 localizedStringForKey:@"[Brooklyn] Suppressed Guide Error" value:@"localized string not found" table:0];
      goto LABEL_12;
    }

    v54 = 0;
    v55 = 0;
    if (a4 == 3)
    {
      v12 = +[NSBundle mainBundle];
      v54 = [v12 localizedStringForKey:@"[Brooklyn] Unable to Open Guide" value:@"localized string not found" table:0];

      v13 = +[NSBundle mainBundle];
      v55 = [v13 localizedStringForKey:@"[Brooklyn] Internet Guide Error Title" value:@"localized string not found" table:0];

      objc_initWeak(&location, self);
      v14 = [(CuratedCollectionViewController *)self errorView];
      v15 = +[NSBundle mainBundle];
      v16 = [v15 localizedStringForKey:@"Try Again [Brooklyn]" value:@"localized string not found" table:0];
      v17 = +[UIColor systemGray5Color];
      v56[0] = _NSConcreteStackBlock;
      v56[1] = 3221225472;
      v56[2] = sub_1008422EC;
      v56[3] = &unk_10165D828;
      objc_copyWeak(&v57, &location);
      [v14 setButtonTitle:v16 glyphName:@"arrow.clockwise" backgroundColor:v17 handler:v56];

      objc_destroyWeak(&v57);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    if (!a4)
    {
      v18 = [(CuratedCollectionViewController *)self errorView];
      v19 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubhead];
      [v18 setTitleLabelFont:v19];

      v11 = +[NSBundle mainBundle];
      v55 = [v11 localizedStringForKey:@"[Brooklyn] Generic Guide Error Title" value:@"localized string not found" table:0];
      goto LABEL_12;
    }

    v54 = 0;
    v55 = 0;
    if (a4 == 1)
    {
      v9 = [(CuratedCollectionViewController *)self errorView];
      v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubhead];
      [v9 setTitleLabelFont:v10];

      v11 = +[NSBundle mainBundle];
      v55 = [v11 localizedStringForKey:@"[Brooklyn] Blocked Guide Error Title" value:@"localized string not found" table:0];
LABEL_12:

      v54 = 0;
    }
  }

  v22 = [(CuratedCollectionViewController *)self loadingView];
  [v22 removeFromSuperview];

  v23 = [(CuratedCollectionViewController *)self cardHeaderView];
  [v23 removeFromSuperview];

  v24 = [(ContaineeViewController *)self contentView];
  v25 = [(CuratedCollectionViewController *)self errorView];
  [v24 addSubview:v25];

  v53 = [(CuratedCollectionViewController *)self errorView];
  v51 = [v53 leadingAnchor];
  v52 = [(ContaineeViewController *)self contentView];
  v50 = [v52 leadingAnchor];
  v49 = [v51 constraintEqualToAnchor:v50];
  v59[0] = v49;
  v48 = [(CuratedCollectionViewController *)self errorView];
  v46 = [v48 trailingAnchor];
  v47 = [(ContaineeViewController *)self contentView];
  v45 = [v47 trailingAnchor];
  v44 = [v46 constraintEqualToAnchor:v45];
  v59[1] = v44;
  v43 = [(CuratedCollectionViewController *)self errorView];
  v41 = [v43 topAnchor];
  v42 = [(ContaineeViewController *)self contentView];
  v40 = [v42 topAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v59[2] = v39;
  v38 = [(CuratedCollectionViewController *)self errorView];
  v37 = [v38 bottomAnchor];
  v26 = [(ContaineeViewController *)self contentView];
  v27 = [v26 bottomAnchor];
  v28 = [v37 constraintEqualToAnchor:v27];
  v59[3] = v28;
  v29 = [(CuratedCollectionViewController *)self errorView];
  v30 = [v29 heightAnchor];
  v31 = [(ContaineeViewController *)self contentView];
  v32 = [v31 heightAnchor];
  v33 = [v30 constraintEqualToAnchor:v32];
  v59[4] = v33;
  v34 = [NSArray arrayWithObjects:v59 count:5];
  [NSLayoutConstraint activateConstraints:v34];

  v35 = [(CuratedCollectionViewController *)self errorView];
  [v35 setTitle:v54 andMessage:v55];
}

- (void)dataSource:(id)a3 addToUserCollection:(id)a4 forMapItem:(id)a5 sourceView:(id)a6 onSaveCompletion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(CuratedCollectionViewController *)self analyticsController];
  [v17 logSavePlaceItemToCuratedCollectionWithMUID:{objc_msgSend(v14, "_muid")}];

  objc_initWeak(&location, self);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100842534;
  v21[3] = &unk_10162C7A8;
  v18 = v13;
  v22 = v18;
  v19 = v16;
  v24 = v19;
  objc_copyWeak(&v25, &location);
  v20 = v15;
  v23 = v20;
  [(CuratedCollectionViewController *)self _refineMapItem:v14 completionHandler:v21];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

- (void)dataSource:(id)a3 removePlaceFromLibraryUsingCoordinator:(id)a4
{
  v6 = a4;
  v5 = [v6 initialMapItem];
  +[LibraryAnalytics captureAddOrRemoveFromLibraryWithPlaceMUID:captureAdd:target:](_TtC4Maps16LibraryAnalytics, "captureAddOrRemoveFromLibraryWithPlaceMUID:captureAdd:target:", [v5 _muid], 0, 259);

  [v6 deletePlaceFromLibraryWithViewControllerForPresentingAlert:self];
}

- (void)dataSource:(id)a3 addPlaceToLibraryUsingCoordinator:(id)a4
{
  v5 = a4;
  v6 = [v5 initialMapItem];
  +[LibraryAnalytics captureAddOrRemoveFromLibraryWithPlaceMUID:captureAdd:target:](_TtC4Maps16LibraryAnalytics, "captureAddOrRemoveFromLibraryWithPlaceMUID:captureAdd:target:", [v6 _muid], 1, 259);

  v7 = [v5 initialMapItem];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100842B64;
  v9[3] = &unk_101660FB0;
  v10 = v5;
  v8 = v5;
  [(CuratedCollectionViewController *)self _refineMapItem:v7 completionHandler:v9];
}

- (void)dataSource:(id)a3 itemTapped:(id)a4
{
  v14 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v14;
    v6 = [(CuratedCollectionProvider *)self->_collectionProvider collectionItems];
    v7 = [v6 indexOfObject:v5];

    v8 = [(CuratedCollectionViewController *)self analyticsController];
    [v8 logTapCollectionItem:v5 atIndex:v7];

    v9 = [SearchResult alloc];
    v10 = [v5 mapItem];
    v11 = [(SearchResult *)v9 initWithMapItem:v10];

    v12 = [(CuratedCollectionViewController *)self actionDelegate];
    [v12 curatedCollectionViewController:self selectSearchResult:v11];

    lastItemTapped = self->_lastItemTapped;
    self->_lastItemTapped = v5;
  }
}

- (void)dataSource:(id)a3 itemFocused:(id)a4
{
  v11 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v11;
    v6 = [SearchResult alloc];
    v7 = [v5 mapItem];

    v8 = [(SearchResult *)v6 initWithMapItem:v7];
    v9 = [(CuratedCollectionViewController *)self mapModificationDelegate];
    [v9 viewController:self focusSearchResult:v8];

    lastItemTapped = self->_lastItemTapped;
    self->_lastItemTapped = 0;
  }

  else
  {
    if (self->_lastItemTapped)
    {
      goto LABEL_6;
    }

    v8 = [(CuratedCollectionViewController *)self mapModificationDelegate];
    [(SearchResult *)v8 viewControllerRemoveCurrentSearchResultFocus:self];
  }

LABEL_6:
}

- (void)_didFinishResolving
{
  v3 = [(CuratedCollectionViewController *)self collectionProvider];
  v4 = [v3 curatedCollection];
  [(CuratedCollectionViewController *)self setCuratedCollection:v4];

  v5 = [(CuratedCollectionViewController *)self updateContentInjection];

  if (v5)
  {
    v6 = [(CuratedCollectionViewController *)self updateContentInjection];
    (v6)[2](v6, self);
  }

  v7 = [(CuratedCollectionViewController *)self loadingView];
  [v7 removeFromSuperview];

  v8 = [(CuratedCollectionViewController *)self errorView];
  [v8 removeFromSuperview];

  v9 = [(CuratedCollectionViewController *)self view];
  [v9 addSubview:self->_tableView];

  v10 = [(CuratedCollectionViewController *)self view];
  v11 = [(CuratedCollectionViewController *)self cardHeaderView];
  [v10 addSubview:v11];

  v12 = [(CuratedCollectionViewController *)self fakeHeaderView];
  [v12 setAlpha:1.0];

  v13 = [(CuratedCollectionViewController *)self cardHeaderView];
  [v13 setAlpha:0.0];

  [(MapsThemeTableView *)self->_tableView setAlpha:0.0];
  v14 = [(CuratedCollectionViewController *)self cardHeaderView];
  v15 = [v14 tableViewBackgroundView];
  [(MapsThemeTableView *)self->_tableView setBackgroundView:v15];

  [(MapsThemeTableView *)self->_tableView setContentInsetAdjustmentBehavior:2];
  [(MapsThemeTableView *)self->_tableView setAutomaticallyAdjustsScrollIndicatorInsets:0];
  v51 = [(CuratedCollectionViewController *)self cardHeaderView];
  v49 = [v51 topAnchor];
  v50 = [(CuratedCollectionViewController *)self view];
  v48 = [v50 topAnchor];
  v47 = [v49 constraintEqualToAnchor:v48];
  v55[0] = v47;
  v46 = [(CuratedCollectionViewController *)self cardHeaderView];
  v44 = [v46 leadingAnchor];
  v45 = [(CuratedCollectionViewController *)self view];
  v43 = [v45 leadingAnchor];
  v42 = [v44 constraintEqualToAnchor:v43];
  v55[1] = v42;
  v41 = [(CuratedCollectionViewController *)self cardHeaderView];
  v39 = [v41 trailingAnchor];
  v40 = [(CuratedCollectionViewController *)self view];
  v38 = [v40 trailingAnchor];
  v37 = [v39 constraintEqualToAnchor:v38];
  v55[2] = v37;
  v35 = [(MapsThemeTableView *)self->_tableView topAnchor];
  v36 = [(CuratedCollectionViewController *)self view];
  v34 = [v36 topAnchor];
  v33 = [v35 constraintEqualToAnchor:v34];
  v55[3] = v33;
  v31 = [(MapsThemeTableView *)self->_tableView leadingAnchor];
  v32 = [(CuratedCollectionViewController *)self view];
  v30 = [v32 leadingAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v55[4] = v29;
  v16 = [(MapsThemeTableView *)self->_tableView trailingAnchor];
  v17 = [(CuratedCollectionViewController *)self view];
  v18 = [v17 trailingAnchor];
  v19 = [v16 constraintEqualToAnchor:v18];
  v55[5] = v19;
  v20 = [(MapsThemeTableView *)self->_tableView bottomAnchor];
  v21 = [(CuratedCollectionViewController *)self view];
  v22 = [v21 bottomAnchor];
  v23 = [v20 constraintEqualToAnchor:v22];
  v55[6] = v23;
  v24 = [NSArray arrayWithObjects:v55 count:7];
  [NSLayoutConstraint activateConstraints:v24];

  v25 = [(CuratedCollectionViewController *)self view];
  [v25 layoutIfNeeded];

  curatedCollection = self->_curatedCollection;
  v27 = [(CuratedCollectionViewController *)self cardHeaderView];
  [v27 setCuratedCollection:curatedCollection];

  [(CuratedCollectionViewController *)self _updateHeaderTransition];
  v28 = [(ContaineeViewController *)self cardPresentationController];
  [v28 updateHeightForCurrentLayout];

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

- (void)dataSourceUpdated:(id)a3
{
  if (!self->_hasFinishedResolving)
  {
    self->_hasFinishedResolving = 1;
    [(CuratedCollectionViewController *)self _didFinishResolving];
  }
}

- (BOOL)shouldClearSearchPins
{
  v3 = [(CuratedCollectionViewController *)self mapModificationDelegate];
  v4 = [v3 searchResultsForViewController:self];

  v5 = [(CuratedCollectionViewController *)self _searchResults];
  LOBYTE(v3) = [v4 isEqualToArray:v5];

  return v3;
}

- (void)removeContentFromMapView
{
  if ([(CuratedCollectionViewController *)self shouldClearSearchPins])
  {
    v3 = [(CuratedCollectionViewController *)self mapModificationDelegate];
    [v3 viewControllerClearInjectedSearchPins:self];
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

  v7 = [(CuratedCollectionViewController *)self _searchResults];
  v8 = [SearchInfo searchInfoWithResults:v7];
  v9 = [(CuratedCollectionViewController *)self mapModificationDelegate];
  [v9 injectSearchPinsFromSearchInfo:v8];

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
  v4 = [(CuratedCollectionViewController *)self collectionProvider];
  v5 = [v4 collectionItems];

  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [SearchResult alloc];
        v12 = [v10 mapItem];
        v13 = [(SearchResult *)v11 initWithMapItem:v12];

        [(SearchResultRepr *)v13 setHasIncompleteMetadata:1];
        [v3 addObject:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = [v3 copy];

  return v14;
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  [(CuratedCollectionHeaderView *)self->_cardHeaderView minimumScrolledHeight];
  if (a5->y < -v10)
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
      [v9 contentInset];
      v12 = -v11;
    }

    a5->y = v12;
  }

LABEL_7:
  v14.receiver = self;
  v14.super_class = CuratedCollectionViewController;
  [(ContaineeViewController *)&v14 scrollViewWillEndDragging:v9 withVelocity:a5 targetContentOffset:x, y];
  if (y > 0.0)
  {
    v13 = [(CuratedCollectionViewController *)self analyticsController];
    [v13 logScrollDown];
LABEL_11:

    goto LABEL_12;
  }

  if (y < 0.0)
  {
    v13 = [(CuratedCollectionViewController *)self analyticsController];
    [v13 logScrollUp];
    goto LABEL_11;
  }

LABEL_12:
  [(CuratedCollectionViewController *)self _setWantsInsertInHistory];
}

- (void)scrollViewDidScroll:(id)a3
{
  v6.receiver = self;
  v6.super_class = CuratedCollectionViewController;
  [(ContaineeViewController *)&v6 scrollViewDidScroll:a3];
  v4 = [(CuratedCollectionViewController *)self collectionProvider];
  v5 = [v4 isApplyingSnapshot];

  if ((v5 & 1) == 0)
  {
    [(CuratedCollectionViewController *)self _updateHeaderAndTableViewValues];
  }
}

- (void)seeAllGuidesMenuButtonTapped
{
  v3 = [(CuratedCollectionViewController *)self actionDelegate];
  [v3 curatedCollectionViewControllerShowAllGuides:self];
}

- (void)websiteMenuButtonTapped
{
  v3 = [(CuratedCollectionViewController *)self _websiteURL];
  if (v3)
  {
    v5 = v3;
    v4 = [(CuratedCollectionViewController *)self actionDelegate];
    [v4 curatedCollectionViewController:self openURL:v5];

    [(CuratedCollectionViewAnalyticsController *)self->_analyticsController logOpenWebsite];
    v3 = v5;
  }
}

- (void)headerViewPublisherLogoTapped
{
  v3 = [(CuratedCollectionViewController *)self analyticsController];
  [v3 logDiscoverMoreFromPublisher];

  v6 = [(CuratedCollectionViewController *)self actionDelegate];
  v4 = [(CuratedCollectionViewController *)self curatedCollection];
  v5 = [v4 publisher];
  [v6 curatedCollectionViewController:self showPublisher:v5];
}

- (void)headerViewBrickTapped
{
  v2 = [(ContaineeViewController *)self cardPresentationController];
  [v2 wantsExpandLayout];
}

- (id)_websiteURL
{
  v3 = [(CuratedCollectionViewController *)self curatedCollection];
  v4 = [v3 publisherCollectionURL];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = [(CuratedCollectionViewController *)self curatedCollection];
    v7 = [v6 publisher];
    v8 = [v7 publisherAttribution];
    v5 = [v8 websiteURL];

    if (v5)
    {
      v9 = v5;
    }
  }

  return v5;
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
  v18 = [(CuratedCollectionViewController *)self _websiteURL];
  v19 = v18 == 0;

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
    v3 = [(CuratedCollectionViewController *)self curatedCollection];
    [HistoryEntryRecentsItem saveCuratedCollection:v3 completion:&stru_10162BAC0];

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
    v10 = [(ContaineeViewController *)self cardPresentationController];
    [v10 transitionProgressFromLayout:2 toLayout:3];
    v12 = v11;

    v13 = [(ContaineeViewController *)self cardPresentationController];
    [v13 transitionProgressFromLayout:1 toLayout:2];
    v4 = v14;

    v15 = [(ContaineeViewController *)self cardPresentationController];
    v16 = [v15 containerStyle];

    if (v16 == 4)
    {
      v17 = [(ContaineeViewController *)self cardPresentationController];
      [v17 transitionProgressFromLayout:1 toLayout:3];
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

  v8 = [(CuratedCollectionViewController *)self cardHeaderView];
  [v8 setLayout:v7 transitionFraction:v4];

  [(CuratedCollectionViewController *)self _updateHeaderAndTableViewValues];
  collectionProvider = self->_collectionProvider;

  [(CuratedCollectionProvider *)collectionProvider setSubheaderTransitionFraction:v3];
}

- (void)handleDismissAction:(id)a3
{
  v4 = a3;
  v5 = [(CuratedCollectionViewController *)self curatedCollection];
  if (![v5 isSuppressed])
  {
    goto LABEL_4;
  }

  v6 = +[CuratedCollectionSyncManager sharedManager];
  v7 = [(CuratedCollectionViewController *)self curatedCollection];
  v8 = [v6 collectionIsSaved:v7];

  if (v8)
  {
    v5 = +[CuratedCollectionSyncManager sharedManager];
    v9 = [(CuratedCollectionViewController *)self curatedCollection];
    [v5 removeSavedCuratedCollection:v9 completion:0];

LABEL_4:
  }

  v11.receiver = self;
  v11.super_class = CuratedCollectionViewController;
  [(ContaineeViewController *)&v11 handleDismissAction:v4];
  v10 = [(CuratedCollectionViewController *)self analyticsController];
  [v10 logClose];
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

  v3 = [(CuratedCollectionViewController *)self cardHeaderView];
  [v3 bounds];
  MaxY = CGRectGetMaxY(v7);
  v5 = [(CuratedCollectionViewController *)self view];
  [v5 safeAreaInsets];
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
  v6 = [(ContaineeViewController *)self cardPresentationController];
  [v6 availableHeight];
  if (v5 >= v7 + -10.0)
  {
    v8 = [(ContaineeViewController *)self cardPresentationController];
    [v8 availableHeight];
    v5 = v9 + -10.0;
  }

  v10 = [(CuratedCollectionHeaderView *)self->_cardHeaderView layout];
  if (v10 < 3)
  {
    goto LABEL_11;
  }

  if (v10 == 3)
  {
    [(MapsThemeTableView *)self->_tableView isScrollEnabled];
LABEL_11:
    self->_hasBeenInFullLayout = 0;
    v11 = 1;
    goto LABEL_12;
  }

  if (v10 == 4)
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

  v14 = [(CuratedCollectionViewController *)self view];
  [v14 safeAreaInsets];
  [(MapsThemeTableView *)self->_tableView setContentInset:v5, 0.0];

  if (v11)
  {
    [(MapsThemeTableView *)self->_tableView setContentOffset:0.0, v13];
  }

  cardHeaderView = self->_cardHeaderView;

  [(CuratedCollectionHeaderView *)cardHeaderView setTableViewContentOffset:v13];
}

- (void)setCuratedCollection:(id)a3
{
  v5 = a3;
  if (self->_curatedCollection != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_curatedCollection, a3);
    [(CuratedCollectionViewAnalyticsController *)self->_analyticsController updateWithPlaceCollection:self->_curatedCollection];
    if (([(GEOPlaceCollection *)self->_curatedCollection isSuppressed]& 1) != 0 || [(GEOPlaceCollection *)self->_curatedCollection isBlocked])
    {
      v6 = [(CuratedCollectionViewController *)self cardHeaderView];
      [v6 removeFromSuperview];

      [(MapsThemeTableView *)self->_tableView removeFromSuperview];
      v7 = [(ContaineeViewController *)self cardPresentationController];
      [v7 wantsLayout:2];
    }

    else
    {
      v7 = [(GEOPlaceCollection *)self->_curatedCollection collectionTitle];
      v8 = [(CuratedCollectionViewController *)self fakeHeaderView];
      [v8 setTitle:v7];
    }

    v5 = v9;
  }
}

- (void)applyAlphaToContent:(double)a3
{
  v5.receiver = self;
  v5.super_class = CuratedCollectionViewController;
  [(ContaineeViewController *)&v5 applyAlphaToContent:?];
  [(MapsThemeTableView *)self->_tableView setAlpha:a3];
}

- (double)heightForLayout:(unint64_t)a3
{
  if (a3 == 3)
  {
    if (sub_10000FA08(self) == 5)
    {
      v6 = [(ContaineeViewController *)self cardPresentationController];
      [v6 availableHeight];
      goto LABEL_10;
    }

LABEL_12:
    v11.receiver = self;
    v11.super_class = CuratedCollectionViewController;
    [(ContaineeViewController *)&v11 heightForLayout:a3];
    return v9;
  }

  if (a3 == 2)
  {
    if (sub_10000FA08(self) == 5)
    {
      v6 = [(CuratedCollectionViewController *)self cardHeaderView];
      [v6 unscrolledHeightForLayout:4 transitionFraction:0.0];
      v5 = v8 + 6.0;
LABEL_11:

      return v5;
    }

    goto LABEL_12;
  }

  if (a3 != 1)
  {
    goto LABEL_12;
  }

  v5 = -1.0;
  if (sub_10000FA08(self) != 5)
  {
    v6 = [(CuratedCollectionViewController *)self cardHeaderView];
    [v6 unscrolledHeightForLayout:0 transitionFraction:0.0];
LABEL_10:
    v5 = v7;
    goto LABEL_11;
  }

  return v5;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = CuratedCollectionViewController;
  v7 = a4;
  [(ContaineeViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1008452F0;
  v8[3] = &unk_101661710;
  v8[4] = self;
  [v7 animateAlongsideTransition:v8 completion:&stru_10162BAA0];
}

- (void)didChangeLayout:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = CuratedCollectionViewController;
  [(ContaineeViewController *)&v4 didChangeLayout:a3];
  self->_isChangingLayout = 0;
}

- (void)willChangeLayout:(unint64_t)a3
{
  if (self->_layout != a3)
  {
    self->_layout = a3;
    self->_isChangingLayout = 1;
  }

  v5 = [(ContaineeViewController *)self cardPresentationController];
  v6 = [v5 containeeLayout];

  v16.receiver = self;
  v16.super_class = CuratedCollectionViewController;
  [(ContaineeViewController *)&v16 willChangeLayout:a3];
  if (a3 >= 2)
  {
    v7 = [(ContaineeViewController *)self cardPresentationController];
    v8 = [v7 containeeLayout];

    if (v8 < a3)
    {
      [(CuratedCollectionViewAnalyticsController *)self->_analyticsController logPullUpCuratedCollectionView];
    }
  }

  [(CuratedCollectionViewController *)self _updateHeaderTransition];
  v9 = [(CuratedCollectionViewController *)self errorView];
  v10 = [(CuratedCollectionViewController *)self fakeHeaderView];
  [v10 frame];
  [v9 setVerticalAdjustment:-v11];

  v12 = [(ContaineeViewController *)self cardPresentationController];
  v13 = [v12 containerStyle];

  v15 = v13 - 1 < 2 || (v13 & 0xFFFFFFFFFFFFFFFELL) == 4;
  if (a3 - 3 <= 1 && v15)
  {
    if (v6)
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
  v3 = [(CuratedCollectionViewController *)self updateContentInjection];

  if (v3)
  {
    v4 = [(CuratedCollectionViewController *)self updateContentInjection];
    (v4)[2](v4, self);
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CuratedCollectionViewController;
  [(CuratedCollectionViewController *)&v4 viewDidDisappear:a3];
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
  v3 = [(CuratedCollectionViewController *)self view];
  [v3 setAccessibilityIdentifier:@"CuratedCollectionView"];

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

  v9 = [(MapsThemeTableView *)self->_tableView layer];
  [v9 setAllowsGroupOpacity:0];

  v10 = [(CuratedCollectionViewController *)self fakeHeaderView];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [(CuratedCollectionViewController *)self fakeHeaderView];
  [v11 setDelegate:self];

  v12 = [(CuratedCollectionViewController *)self fakeHeaderView];
  [v12 setHairLineAlpha:0.0];

  v13 = [(ContaineeViewController *)self headerView];
  v14 = [(CuratedCollectionViewController *)self fakeHeaderView];
  [v13 addSubview:v14];

  v15 = [(CuratedCollectionViewController *)self cardHeaderView];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v39 = [(CuratedCollectionViewController *)self fakeHeaderView];
  v37 = [v39 topAnchor];
  v38 = [(ContaineeViewController *)self headerView];
  v36 = [v38 topAnchor];
  v35 = [v37 constraintEqualToAnchor:v36];
  v43[0] = v35;
  v34 = [(CuratedCollectionViewController *)self fakeHeaderView];
  v32 = [v34 leadingAnchor];
  v33 = [(ContaineeViewController *)self headerView];
  v31 = [v33 leadingAnchor];
  v30 = [v32 constraintEqualToAnchor:v31];
  v43[1] = v30;
  v29 = [(CuratedCollectionViewController *)self fakeHeaderView];
  v28 = [v29 trailingAnchor];
  v16 = [(ContaineeViewController *)self headerView];
  v17 = [v16 trailingAnchor];
  v18 = [v28 constraintEqualToAnchor:v17];
  v43[2] = v18;
  v19 = [(CuratedCollectionViewController *)self fakeHeaderView];
  v20 = [v19 bottomAnchor];
  v21 = [(ContaineeViewController *)self headerView];
  v22 = [v21 bottomAnchor];
  v23 = [v20 constraintEqualToAnchor:v22];
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

- (id)targetForAction:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v7 = [(CuratedCollectionViewController *)self collectionProvider];
  v8 = [v7 keyCommands];
  v9 = [v8 containsObject:v6];

  if (v9)
  {
    v10 = [(CuratedCollectionViewController *)self collectionProvider];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CuratedCollectionViewController;
    v10 = [(CuratedCollectionViewController *)&v13 targetForAction:a3 withSender:v6];
  }

  v11 = v10;

  return v11;
}

- (id)keyCommands
{
  v10.receiver = self;
  v10.super_class = CuratedCollectionViewController;
  v3 = [(ContaineeViewController *)&v10 keyCommands];
  v4 = [v3 mutableCopy];

  v5 = [(CuratedCollectionViewController *)self presentedViewController];

  if (!v5)
  {
    v6 = [(CuratedCollectionViewController *)self collectionProvider];
    v7 = [v6 keyCommands];
    [v4 addObjectsFromArray:v7];
  }

  v8 = [v4 copy];

  return v8;
}

- (void)_commonInitWithCuratedCollectionProvider:(id)a3 identifier:(id)a4
{
  v22 = a3;
  objc_storeStrong(&self->_collectionProvider, a3);
  v7 = a4;
  [(DataSource *)self->_collectionProvider setDelegate:self];
  [(MapsThemeTableView *)self->_tableView setPreservesSuperviewLayoutMargins:1];
  v8 = [[ContainerHeaderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  fakeHeaderView = self->_fakeHeaderView;
  self->_fakeHeaderView = v8;

  v10 = [[CuratedCollectionHeaderView alloc] initWithDelegate:self];
  cardHeaderView = self->_cardHeaderView;
  self->_cardHeaderView = v10;

  v12 = [[CuratedCollectionViewAnalyticsController alloc] initWithCollectionIdentifier:v7];
  analyticsController = self->_analyticsController;
  self->_analyticsController = v12;

  [(CuratedCollectionViewAnalyticsController *)self->_analyticsController logRevealCuratedCollectionView];
  [(CuratedCollectionProvider *)self->_collectionProvider setAnalyticsController:self->_analyticsController];
  if (sub_10000FA08(self) == 5)
  {
    v14 = [(ContaineeViewController *)self cardPresentationController];
    [v14 setAllowResizeInFloatingStyle:1];

    v15 = [(ContaineeViewController *)self cardPresentationController];
    [v15 setDefaultContaineeLayout:3];
  }

  v16 = [(ContaineeViewController *)self cardPresentationController];
  [v16 setGrabberBlurEnabled:1];

  v17 = [LoadingModeView alloc];
  v18 = +[NSBundle mainBundle];
  v19 = [v18 localizedStringForKey:@"Loading ..." value:@"localized string not found" table:0];
  v20 = [(LoadingModeView *)v17 initWithTitle:v19];
  loadingView = self->_loadingView;
  self->_loadingView = v20;

  [(LoadingModeView *)self->_loadingView setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (CuratedCollectionViewController)initWithFullyClientizedPlaceCollection:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CuratedCollectionViewController;
  v5 = [(CuratedCollectionViewController *)&v13 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [[MapsThemeTableView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    tableView = v5->_tableView;
    v5->_tableView = v6;

    v8 = [[CuratedCollectionProvider alloc] initWithTableView:v5->_tableView fullyClientizedCuratedCollection:v4];
    v9 = [MKMapItemIdentifier alloc];
    v10 = [v4 collectionIdentifier];
    v11 = [v9 initWithGEOMapItemIdentifier:v10];

    [(CuratedCollectionViewController *)v5 _commonInitWithCuratedCollectionProvider:v8 identifier:v11];
    [(CuratedCollectionViewAnalyticsController *)v5->_analyticsController updateWithPlaceCollection:v4];
  }

  return v5;
}

- (CuratedCollectionViewController)initWithCuratedCollectionIdentifier:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CuratedCollectionViewController;
  v5 = [(CuratedCollectionViewController *)&v10 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [[MapsThemeTableView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    tableView = v5->_tableView;
    v5->_tableView = v6;

    [(MapsThemeTableView *)v5->_tableView setAccessibilityIdentifier:@"CuratedCollectionTableView"];
    v8 = [[CuratedCollectionProvider alloc] initWithTableView:v5->_tableView curatedCollectionIdentifier:v4];
    [(CuratedCollectionViewController *)v5 _commonInitWithCuratedCollectionProvider:v8 identifier:v4];
  }

  return v5;
}

@end