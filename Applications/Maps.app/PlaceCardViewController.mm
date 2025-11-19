@interface PlaceCardViewController
+ (BOOL)shouldInsertRecentPOIForRouting;
- (BOOL)isContact;
- (BOOL)isMeCard;
- (BOOL)placeViewController:(id)a3 canSelectDepartureSequence:(id)a4 mapItem:(id)a5;
- (BOOL)placeViewController:(id)a3 presentOfflineAlertIfNecessaryForUGC:(int64_t)a4;
- (MKMapItem)mapItem;
- (PlaceCardViewController)initWithVisualEffectDisabled:(BOOL)a3;
- (PlaceCardViewControllerDelegate)placeCardDelegate;
- (double)_mediumLayoutHeightInSAR;
- (double)heightForLayout:(unint64_t)a3;
- (double)placeViewControllerPlaceCardHeaderTitlePaddingConstant:(id)a3;
- (double)placeViewControllerPlaceCardHeaderTitleTrailingConstant:(id)a3;
- (id)_secondaryButtonController;
- (id)_shortcut;
- (id)activityViewControllerForPlaceViewController:(id)a3;
- (id)alternatePrimaryButtonControllerForPlaceViewController:(id)a3;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (id)inlineRatingViewControllerForPlaceViewController:(id)a3;
- (id)menuElementForActionItem:(id)a3;
- (id)placeViewController:(id)a3 collectionViewsForPlaceItem:(id)a4;
- (id)placeViewController:(id)a3 hikingTipViewForTipModel:(id)a4;
- (id)placeViewController:(id)a3 webPlacecardGuidesForPlaceItem:(id)a4;
- (id)placeViewControllerRequestsMapViewAssociatedWithVC:(id)a3;
- (id)placeViewControllerUserIcon:(id)a3;
- (id)shareItemSource;
- (id)suggestionViewController;
- (id)targetedDragPreviewForInteraction:(id)a3;
- (id)traitsForPlaceViewController:(id)a3;
- (int)mapTypeForPlaceViewController:(id)a3;
- (int64_t)_overriddenUserInterfaceStyle;
- (int64_t)overriddenInterfaceStyleForPlaceViewControllerSubviews:(id)a3;
- (unint64_t)_collectionsCount;
- (unint64_t)_numberOfRAPsInReview;
- (void)_addPlaceToCollection:(id)a3 editCollection:(BOOL)a4;
- (void)_carryOverTransitDisplayInformationFromCurrentItemToNewFetchedResult:(id)a3;
- (void)_chromeViewControllerPresent:(id)a3;
- (void)_clearOfflineDownloadTipIfNeeded;
- (void)_initSuggestion;
- (void)_instrumentHeaderButtonAction:(int)a3 withFeedbackType:(int)a4;
- (void)_presentPOIEnrichmentCoordinator:(id)a3 presentingViewController:(id)a4 progressObserver:(id)a5;
- (void)_presentPOIEnrichmentCoordinator:(id)a3 withProgressObserver:(id)a4;
- (void)_routeFromCurrentSearchResult;
- (void)_routeToCurrentSearchResultWithTransportType:(int64_t)a3;
- (void)_searchWithSuggestion:(id)a3;
- (void)_setupConstraintsForSuggestionView:(id)a3;
- (void)_updateCallToActionStateIfNeeded;
- (void)_updateCollectionsAnimated:(BOOL)a3;
- (void)_updateFavoritesGuide;
- (void)_updateOfflineFeatureDiscoveryViewIfNeededWithMapItem:(id)a3;
- (void)_updatePlacecardCallToActionAnimated:(BOOL)a3;
- (void)_updateRAPInReviewStatus;
- (void)_updateShortcut;
- (void)_updateSuggestionVisibility;
- (void)_updateVerifiedBusinessHeaderIfNeeded;
- (void)appStoreAppSelected:(id)a3;
- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4;
- (void)copy:(id)a3;
- (void)dealloc;
- (void)didBecomeCurrent;
- (void)didMoveToParentViewController:(id)a3;
- (void)didResignCurrent;
- (void)didScrollPastTransition;
- (void)didSelectSavePublisherGuide:(id)a3;
- (void)didSelectSharePublisherGuide:(id)a3;
- (void)didSelectShowPublisherForPublisherGuide:(id)a3;
- (void)dismissContactsViewController;
- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5;
- (void)dragInteraction:(id)a3 sessionWillBegin:(id)a4;
- (void)dragInteraction:(id)a3 willAnimateLiftWithAnimator:(id)a4 session:(id)a5;
- (void)generateAttachmentsForRadarDraft:(id)a3 withCompletion:(id)a4;
- (void)handleAddOrRemovePlaceFromLibrary:(BOOL)a3;
- (void)initPlaceCard;
- (void)inlinePOIEnrichmentController:(id)a3 didSelectTermsOfServiceURL:(id)a4;
- (void)inlinePOIEnrichmentControllerPresentPOIEnrichment:(id)a3;
- (void)insertInHistory;
- (void)instrumentDismissAction;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)openFindMy;
- (void)openRequestLocation;
- (void)placeCardItemMapItemDidChangeWithFailedRefinement:(BOOL)a3;
- (void)placeEnrichmentAPIContollerDidFetchEnrichmentData:(id)a3 forMapItem:(id)a4;
- (void)placePhotoViewerSceneWillDisconnect:(id)a3;
- (void)placeViewController:(id)a3 didRequestAddOrRemovePlaceFromLibrary:(BOOL)a4 environment:(id)a5;
- (void)placeViewController:(id)a3 didRequestEditingNoteWithInitialText:(id)a4 libraryAccessProvider:(id)a5 completion:(id)a6;
- (void)placeViewController:(id)a3 didRequestHikingToolTipRegionIDForLocation:(CLLocationCoordinate2D)a4;
- (void)placeViewController:(id)a3 didRequestSceneActivationForPhotoGalleryViewController:(id)a4;
- (void)placeViewController:(id)a3 didSelectAddMissingDataOfType:(int64_t)a4;
- (void)placeViewController:(id)a3 didSelectAddPhotosWithPresentationOptions:(id)a4 entryPoint:(int64_t)a5 originTarget:(id)a6;
- (void)placeViewController:(id)a3 didSelectAddRatingsWithPresentationOptions:(id)a4 overallState:(int64_t)a5 originTarget:(id)a6;
- (void)placeViewController:(id)a3 didSelectAddToCollectionWithPlaceActionEnvironment:(id)a4 showsAddToLibrarySection:(BOOL)a5;
- (void)placeViewController:(id)a3 didSelectDepartureSequence:(id)a4 mapItem:(id)a5;
- (void)placeViewController:(id)a3 didSelectDirectionsForDestinationAddress:(id)a4 contact:(id)a5 transportType:(id)a6;
- (void)placeViewController:(id)a3 didSelectDirectionsForDestinationMapItem:(id)a4 transportType:(id)a5;
- (void)placeViewController:(id)a3 didSelectEditPlaceDetailsOfType:(int64_t)a4;
- (void)placeViewController:(id)a3 didSelectEditSubmissionWithPresentationOptions:(id)a4;
- (void)placeViewController:(id)a3 didSelectMapsExtension:(id)a4 usingAppStoreApp:(id)a5 parameters:(id)a6;
- (void)placeViewController:(id)a3 didSelectParent:(id)a4;
- (void)placeViewController:(id)a3 didSelectPhotoCategoryAtIndex:(unint64_t)a4;
- (void)placeViewController:(id)a3 didSelectPhotoToReport:(id)a4 withPhotoGalleryViewController:(id)a5;
- (void)placeViewController:(id)a3 didSelectRouteToCurrentSearchResultWithTransportTypePreference:(id)a4;
- (void)placeViewController:(id)a3 didSelectSearchCategory:(id)a4;
- (void)placeViewController:(id)a3 didSelectSendToDevice:(id)a4;
- (void)placeViewController:(id)a3 didSelectShareCurrentLocationWithCompletion:(id)a4;
- (void)placeViewController:(id)a3 didSelectTransitConnectionInformation:(id)a4;
- (void)placeViewController:(id)a3 didSelectTransitLine:(id)a4;
- (void)placeViewController:(id)a3 expandCardAnimated:(BOOL)a4;
- (void)placeViewController:(id)a3 launchAttributionURLs:(id)a4 withAttribution:(id)a5 completionHandler:(id)a6;
- (void)placeViewController:(id)a3 openURL:(id)a4;
- (void)placeViewController:(id)a3 photoGalleryDidScroll:(id)a4;
- (void)placeViewController:(id)a3 requestPasscodeUnlockWithCompletion:(id)a4;
- (void)placeViewController:(id)a3 seeAllCollections:(id)a4 usingTitle:(id)a5 usingCollectionIds:(id)a6;
- (void)placeViewController:(id)a3 selectCollectionIdentifier:(id)a4;
- (void)placeViewController:(id)a3 selectCuratedCollection:(id)a4;
- (void)placeViewController:(id)a3 selectCuratedCollectionIdentifier:(id)a4;
- (void)placeViewController:(id)a3 selectExploreGuidesWithGuideLocation:(id)a4;
- (void)placeViewController:(id)a3 showRelatedMapItems:(id)a4 withTitle:(id)a5 originalMapItem:(id)a6 analyticsDelegate:(id)a7;
- (void)placeViewController:(id)a3 showTransitIncidents:(id)a4;
- (void)placeViewControllerDidClose:(id)a3;
- (void)placeViewControllerDidSelectAddAPlace:(id)a3 environment:(id)a4;
- (void)placeViewControllerDidSelectAddOrRemoveFromFavoritesGuide:(id)a3;
- (void)placeViewControllerDidSelectAddShortcut:(id)a3;
- (void)placeViewControllerDidSelectChangeAddress:(id)a3;
- (void)placeViewControllerDidSelectDisplayedAddress:(id)a3;
- (void)placeViewControllerDidSelectDownloadOffline:(id)a3 environment:(id)a4;
- (void)placeViewControllerDidSelectDropPin:(id)a3;
- (void)placeViewControllerDidSelectEditLocationOfMarkedLocation:(id)a3;
- (void)placeViewControllerDidSelectFlyover:(id)a3;
- (void)placeViewControllerDidSelectOfflineManagement:(id)a3;
- (void)placeViewControllerDidSelectPauseOfflineDownload:(id)a3;
- (void)placeViewControllerDidSelectPlaceEnrichmentRAP:(id)a3;
- (void)placeViewControllerDidSelectRAPViewReport:(id)a3;
- (void)placeViewControllerDidSelectRefineLocation:(id)a3;
- (void)placeViewControllerDidSelectRemoveMarker:(id)a3;
- (void)placeViewControllerDidSelectRemoveShortcut:(id)a3;
- (void)placeViewControllerDidSelectReportAProblem:(id)a3 fromView:(id)a4 environment:(id)a5;
- (void)placeViewControllerDidSelectSeeMorePhotos:(id)a3 withStartingIndex:(unint64_t)a4;
- (void)placeViewControllerDidTapHikingTip:(id)a3 originMapItem:(id)a4;
- (void)placeViewControllerDidTapMiniBrowseCategory:(id)a3;
- (void)placeViewControllerDidUpdateHeight:(id)a3;
- (void)poiEnrichmentCoordinator:(id)a3 didFinishSubmissionLookup:(id)a4;
- (void)prepareForPresentationWithExistingPlaceCardItem;
- (void)presentAppClip:(id)a3;
- (void)presentExtensionFlowController:(id)a3;
- (void)presentQuickLink:(id)a3;
- (void)relatedSearchSuggestionViewController:(id)a3 didDismissWithReason:(unint64_t)a4;
- (void)relatedSearchSuggestionViewControllerDidScrollLeft:(id)a3;
- (void)relatedSearchSuggestionViewControllerDidScrollRight:(id)a3;
- (void)relatedSearchSuggestionViewControllerDidTapActionButton:(id)a3;
- (void)resetState;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)searchFindMyFriendDidRemoveHandleWithIdentifier:(id)a3;
- (void)setDraggableContent:(id)a3;
- (void)setExcludedContent:(int64_t)a3;
- (void)setIsAdditionalStop:(BOOL)a3;
- (void)setIsPresentedInSearchAlongTheRoute:(BOOL)a3;
- (void)setNeedsContentUpdate;
- (void)setPlaceCardItem:(id)a3;
- (void)setPlaceCardItem:(id)a3 withHistory:(BOOL)a4;
- (void)suggestionViewProviderDidSelectAddPhotos:(id)a3;
- (void)suggestionViewProviderDidSelectRateThisPlace:(id)a3 overallState:(int64_t)a4;
- (void)suggestionViewProviderDidUpdateView:(id)a3;
- (void)updateContent;
- (void)updateForViewMode:(int64_t)a3;
- (void)updateHeaderTitle:(id)a3;
- (void)updatePreviewDrag;
- (void)viewContact;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)willChangeLayout:(unint64_t)a3;
- (void)willMoveToParentViewController:(id)a3;
- (void)willResignCurrent:(BOOL)a3;
@end

@implementation PlaceCardViewController

- (PlaceCardViewControllerDelegate)placeCardDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_placeCardDelegate);

  return WeakRetained;
}

- (void)generateAttachmentsForRadarDraft:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100B8D294;
  v10[3] = &unk_10165DEA0;
  objc_copyWeak(&v13, &location);
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(&_dispatch_main_q, v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)placeViewController:(id)a3 didSelectSendToDevice:(id)a4
{
  v4 = a4;
  v6 = +[UIApplication sharedMapsDelegate];
  v5 = [v4 deviceID];

  [v6 sendToDeviceWithID:v5];
}

- (void)instrumentDismissAction
{
  v2 = [(MUPlaceViewController *)self->_placeViewController analyticsController];
  [v2 instrumentAction:4 forModuleType:1 usingFeedbackType:0];
}

- (void)suggestionViewProviderDidSelectRateThisPlace:(id)a3 overallState:(int64_t)a4
{
  v12 = a3;
  IsEnabled_LagunaBeach = MapsFeature_IsEnabled_LagunaBeach();
  v7 = v12;
  if (IsEnabled_LagunaBeach)
  {
    v8 = [v12 mapItem];
    v9 = [UGCPOIEnrichmentCoordinator ratingsAndPhotosCoordinatorWithMapItem:v8 initialOverallState:a4 entryPoint:2 originTarget:@"PLACECARD_ARP_SUGGESTION"];

    [(PlaceCardViewController *)self _presentPOIEnrichmentCoordinator:v9 withProgressObserver:0];
    if (a4 > 2)
    {
      v10 = 0;
    }

    else
    {
      v10 = dword_1012154C8[a4];
    }

    v11 = [(MUPlaceViewController *)self->_placeViewController analyticsController];
    [v11 instrumentAction:v10 target:201 eventValue:@"Suggestion" moduleType:3 feedbackType:0];

    v7 = v12;
  }
}

- (void)suggestionViewProviderDidSelectAddPhotos:(id)a3
{
  v7 = a3;
  if (MapsFeature_IsEnabled_LagunaBeach())
  {
    v4 = [v7 mapItem];
    v5 = [UGCPOIEnrichmentCoordinator ratingsAndPhotosCoordinatorWithMapItem:v4 entryPoint:2 originTarget:@"PLACECARD_ARP_SUGGESTION"];

    [v5 setEntryPointRequiresARPPrivacyScreenIfNeeded:1];
    [(PlaceCardViewController *)self _presentPOIEnrichmentCoordinator:v5 withProgressObserver:0];
    v6 = [(MUPlaceViewController *)self->_placeViewController analyticsController];
    [v6 instrumentAction:300 target:201 eventValue:@"Suggestion" moduleType:3 feedbackType:0];
  }
}

- (void)suggestionViewProviderDidUpdateView:(id)a3
{
  if (MapsFeature_IsEnabled_LagunaBeach())
  {
    [(MUPlaceViewController *)self->_placeViewController updateSuggestionView];
    v4 = [(MUPlaceViewController *)self->_placeViewController analyticsController];
    [v4 instrumentAction:339 forModuleType:3 usingFeedbackType:0];
  }
}

- (MKMapItem)mapItem
{
  v2 = [(PlaceCardViewController *)self placeCardItem];
  v3 = [v2 mapItem];

  return v3;
}

- (void)placePhotoViewerSceneWillDisconnect:(id)a3
{
  photoViewerScene = self->_photoViewerScene;
  self->_photoViewerScene = 0;
}

- (void)placeViewController:(id)a3 didSelectPhotoCategoryAtIndex:(unint64_t)a4
{
  v6 = [(PlaceCardViewController *)self placeCardItem];
  v7 = [v6 mapItem];
  v8 = [UGCPOIEnrichmentCoordinator photoThumbnailGalleryCoordinatorWithMapItem:v7 albumIndex:a4];

  [(PlaceCardViewController *)self _presentPOIEnrichmentCoordinator:v8 withProgressObserver:0];
}

- (void)placeViewController:(id)a3 didRequestSceneActivationForPhotoGalleryViewController:(id)a4
{
  v5 = a4;
  v6 = +[MacPlacePhotoViewerScene requestSceneActivation];
  photoViewerScene = self->_photoViewerScene;
  self->_photoViewerScene = v6;

  v8 = [MacPlacePhotoViewerConfiguration alloc];
  v9 = [(PlaceCardViewController *)self placeCardItem];
  v10 = [v9 mapItem];
  v14 = [(MacPlacePhotoViewerConfiguration *)v8 initWithMapItem:v10 photoGalleryViewController:v5];

  v11 = [(UGCCallToActionViewProvider *)self->_callToActionViewProvider lookupResult];
  [(MacPlacePhotoViewerConfiguration *)v14 setUserSubmissionLookupResult:v11];

  v12 = self->_photoViewerScene;
  v13 = [(PlaceCardViewController *)self _maps_mapsSceneDelegate];
  [(MacPlacePhotoViewerScene *)v12 openPhotoGalleryWithConfiguration:v14 sceneDelegate:v13 delegate:self];
}

- (void)placeViewControllerDidClose:(id)a3
{
  v4 = [a3 view];
  v5.receiver = self;
  v5.super_class = PlaceCardViewController;
  [(InfoCardViewController *)&v5 handleDismissAction:v4];
}

- (void)_updateSuggestionVisibility
{
  suggestionViewController = self->_suggestionViewController;
  if (suggestionViewController)
  {
    v5 = suggestionViewController;
    v3 = [(RelatedSearchSuggestionViewController *)v5 suggestion];
    v4 = v3 == 0;

    [(RelatedSearchSuggestionViewController *)v5 setHidden:v4 animated:1];
  }
}

- (void)_setupConstraintsForSuggestionView:(id)a3
{
  v6 = _NSDictionaryOfVariableBindings(@"suggestionView", a3, 0);
  v3 = +[NSMutableArray array];
  v4 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-0-[suggestionView]-0-|", 0, 0, v6);
  [v3 addObjectsFromArray:v4];

  v5 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(>=0)-[suggestionView]-0@250-|", 0, 0, v6);
  [v3 addObjectsFromArray:v5];

  [NSLayoutConstraint activateConstraints:v3];
}

- (void)_searchWithSuggestion:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v9 = objc_alloc_init(SearchFieldItem);
    [(SearchFieldItem *)v9 setSuggestion:v4];
    WeakRetained = objc_loadWeakRetained(&self->_placeCardDelegate);
    [WeakRetained placeCardViewController:self doSearchItem:v9 withUserInfo:0];

    v6 = +[MKMapService sharedService];
    v7 = [(PlaceCardViewController *)self currentUITargetForAnalytics];
    v8 = [v4 displayString];

    [v6 captureUserAction:2020 onTarget:v7 eventValue:v8];
  }
}

- (void)_initSuggestion
{
  v3 = [(PlaceCardViewController *)self placeCardItem];
  v4 = [v3 searchResult];
  v11 = [v4 relatedSearchSuggestion];

  if (v11)
  {
    v5 = [(PlaceCardViewController *)self suggestionViewController];
    [v5 setSuggestion:v11];

    v6 = [(PlaceCardViewController *)self suggestionViewController];
    v7 = [v6 view];
    [v7 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];

    [(PlaceCardViewController *)self _updateSuggestionVisibility];
    v8 = +[MKMapService sharedService];
    v9 = [(PlaceCardViewController *)self currentUITargetForAnalytics];
    v10 = [v11 displayString];
    [v8 captureUserAction:2019 onTarget:v9 eventValue:v10];
  }
}

- (id)suggestionViewController
{
  suggestionViewController = self->_suggestionViewController;
  if (!suggestionViewController)
  {
    v4 = objc_alloc_init(RelatedSearchSuggestionViewController);
    v5 = [(RelatedSearchSuggestionViewController *)v4 view];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(RelatedSearchSuggestionViewController *)v4 setDelegate:self];
    [(RelatedSearchSuggestionViewController *)v4 willMoveToParentViewController:self];
    v6 = [(PlaceCardViewController *)self view];
    [v6 addSubview:v5];

    [(PlaceCardViewController *)self addChildViewController:v4];
    [(RelatedSearchSuggestionViewController *)v4 didMoveToParentViewController:self];
    [(PlaceCardViewController *)self _setupConstraintsForSuggestionView:v5];
    v7 = self->_suggestionViewController;
    self->_suggestionViewController = v4;

    suggestionViewController = self->_suggestionViewController;
  }

  return suggestionViewController;
}

- (void)relatedSearchSuggestionViewController:(id)a3 didDismissWithReason:(unint64_t)a4
{
  v8 = a3;
  if (a4 >= 3)
  {
    v6 = [NSString stringWithFormat:@"(unknown: %lu)", a4];
  }

  else
  {
    v6 = *(&off_10163BEA8 + a4);
  }

  v7 = +[MKMapService sharedService];
  [v7 captureUserAction:2021 onTarget:-[PlaceCardViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), v6}];
}

- (void)relatedSearchSuggestionViewControllerDidTapActionButton:(id)a3
{
  v4 = [a3 pdSuggestion];
  [(PlaceCardViewController *)self _searchWithSuggestion:v4];
}

- (void)relatedSearchSuggestionViewControllerDidScrollRight:(id)a3
{
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:2023 onTarget:-[PlaceCardViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];
}

- (void)relatedSearchSuggestionViewControllerDidScrollLeft:(id)a3
{
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:2022 onTarget:-[PlaceCardViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];
}

- (void)dragInteraction:(id)a3 session:(id)a4 didEndWithOperation:(unint64_t)a5
{
  v7 = [a4 items];
  v18 = [v7 firstObject];

  v8 = [v18 localObject];
  v9 = [v8 analyticsHelper];
  if (a5 == 2)
  {
    v10 = 17003;
  }

  else
  {
    if (a5)
    {
      goto LABEL_6;
    }

    v10 = 17002;
  }

  v11 = +[MKMapService sharedService];
  v12 = [v8 analyticsTarget];
  v13 = [v9 eventValue];
  v14 = [v9 actionDetails];
  [v11 captureUserAction:v10 onTarget:v12 eventValue:v13 placeActionDetails:v14];

LABEL_6:
  currentDragSession = self->_currentDragSession;
  self->_currentDragSession = 0;

  v16 = +[MapsDragAndDropManager sharedManager];
  [v16 setDragSession:0];

  previewView = self->_previewView;
  self->_previewView = 0;
}

- (void)dragInteraction:(id)a3 sessionWillBegin:(id)a4
{
  v5 = a4;
  v6 = [MapsDragLocalContext alloc];
  v7 = [(PlaceCardViewController *)self view];
  v8 = [v7 window];
  v9 = [v8 windowScene];
  v10 = [(MapsDragLocalContext *)v6 initWithWindowScene:v9];
  [v5 setLocalContext:v10];

  currentDragSession = self->_currentDragSession;
  self->_currentDragSession = v5;
  v12 = v5;

  v13 = +[MapsDragAndDropManager sharedManager];
  [v13 setDragSession:v12];

  [(PlaceCardViewController *)self updatePreviewDrag];
  v14 = [v12 items];
  v21 = [v14 firstObject];

  v15 = [v21 localObject];
  v16 = [v15 analyticsHelper];
  v17 = +[MKMapService sharedService];

  v18 = [v15 analyticsTarget];
  v19 = [v16 eventValue];
  v20 = [v16 actionDetails];
  [v17 captureUserAction:17001 onTarget:v18 eventValue:v19 placeActionDetails:v20];
}

- (void)dragInteraction:(id)a3 willAnimateLiftWithAnimator:(id)a4 session:(id)a5
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100B8E360;
  v5[3] = &unk_10165F3A0;
  v5[4] = self;
  [a4 addCompletion:v5];
}

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
{
  v5 = a3;
  v6 = +[MapsDragAndDropManager sharedManager];
  v7 = [v6 canStartNewDrag];

  if (!v7)
  {
    v22 = &__NSArray0__struct;
    goto LABEL_18;
  }

  v8 = [v5 view];
  v9 = [(InfoCardViewController *)self fixedHeaderView];

  if (v8 == v9)
  {
    v23 = [(PlaceCardViewController *)self placeCardItem];
    v11 = [v23 mapItem];

    v12 = [(PlaceCardViewController *)self placeCardItem];
    v14 = 0;
    v13 = 1501;
    if (v11)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v10 = [(NSMapTable *)self->_draggableContentInteractions objectForKey:v5];
    v11 = [v10 draggableContent];
    v12 = v10;
    v13 = [v12 analyticsTarget];
    v14 = [v12 view];

    if (v11)
    {
LABEL_4:
      objc_opt_class();
      v39 = v14;
      if (objc_opt_isKindOfClass())
      {
        v15 = [DragAndDropMapItem dragAndDropItemWithObject:v11];
        v16 = [v15 itemProviderWriting];

        v17 = [DragAndDropPreview alloc];
        v18 = [(PlaceCardViewController *)self view];
        v19 = [v18 traitCollection];
        v20 = [(DragAndDropPreview *)v17 initWithDragAndDropMapItem:v15 traitCollection:v19];
        previewView = self->_previewView;
        self->_previewView = v20;

        [(DragAndDropPreview *)self->_previewView setContentUpdateDelegate:self];
        v38 = [v15 analyticsHelper];
        v11 = v16;
      }

      else
      {
        v24 = [MapsAnalyticsHelper alloc];
        v15 = [(PlaceCardViewController *)self placeCardItem];
        v25 = [v15 mapItem];
        v38 = [(MapsAnalyticsHelper *)v24 initWithMapItem:v25];
      }

      v26 = v13;

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = v11;
        v28 = [(PlaceCardViewController *)self placeCardItem];
        v29 = [v28 mapItem];
        v30 = [v29 name];
        v31 = [NSItemProvider itemProviderWithURL:v27 title:v30];
      }

      else
      {
        v31 = [[NSItemProvider alloc] initWithObject:v11];
      }

      v32 = [(PlaceCardViewController *)self placeCardItem];
      v33 = [v32 mapItem];
      v34 = [v33 name];
      [v31 setSuggestedName:v34];

      v35 = [[UIDragItem alloc] initWithItemProvider:v31];
      v36 = objc_opt_new();
      [v36 setContent:v12];
      [v36 setAnalyticsTarget:v26];
      [v36 setAnalyticsHelper:v38];
      v14 = v39;
      if (sub_10000FA08(self) == 5 && v39)
      {
        v40[0] = _NSConcreteStackBlock;
        v40[1] = 3221225472;
        v40[2] = sub_100B8E810;
        v40[3] = &unk_10164EFF0;
        v41 = v39;
        [v35 setPreviewProvider:v40];
      }

      [v35 setLocalObject:v36];
      v42 = v35;
      v22 = [NSArray arrayWithObjects:&v42 count:1];

      goto LABEL_17;
    }
  }

  v22 = &__NSArray0__struct;
LABEL_17:

LABEL_18:

  return v22;
}

- (id)targetedDragPreviewForInteraction:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  v6 = [(InfoCardViewController *)self fixedHeaderView];

  if (v5 == v6)
  {
    v8 = [(InfoCardViewController *)self fixedHeaderView];
    v9 = 1;
  }

  else
  {
    v7 = [(NSMapTable *)self->_draggableContentInteractions objectForKey:v4];
    v8 = [v7 view];
    v9 = [v7 isHeader];
  }

  v10 = objc_alloc_init(UIDragPreviewParameters);
  v11 = [(PlaceCardViewController *)self theme];
  v12 = [v11 controlBackgroundColor];
  [v10 setBackgroundColor:v12];

  if (v9)
  {
    if ([(InfoCardViewController *)self isShowingFullHeader])
    {
      v13 = [(MUPlaceViewController *)self->_placeViewController draggableHeaderView];

      v14 = [v13 snapshotViewAfterScreenUpdates:0];
    }

    else
    {
      v13 = [(InfoCardViewController *)self fixedHeaderView];

      v15 = [(InfoCardViewController *)self fixedHeaderView];
      [v15 setHideActionButtons:1];

      v14 = [v13 snapshotViewAfterScreenUpdates:1];
      v16 = [(InfoCardViewController *)self fixedHeaderView];
      [v16 setHideActionButtons:0];
    }

    v8 = v13;
    [v14 frame];
    v18 = v17;
    [v14 frame];
    v20 = v19;
    v21 = [(InfoCardViewController *)self fixedHeaderView];
    [v21 _cornerRadius];
    v23 = v22;
    v24 = [(InfoCardViewController *)self fixedHeaderView];
    [v24 _cornerRadius];
    v26 = v25;

    v27 = [UIBezierPath bezierPathWithRoundedRect:3 byRoundingCorners:0.0 cornerRadii:0.0, v18, v20, v23, v26];
    [v10 setVisiblePath:v27];
  }

  else
  {
    v14 = [v8 snapshotViewAfterScreenUpdates:0];
  }

  v28 = v14;
  v29 = [v8 window];
  if (v29)
  {
    [v8 bounds];
    [v8 convertRect:v29 toView:?];
    [v28 setFrame:?];
    v30 = [UIDragPreviewTarget alloc];
    [v28 frame];
    MidX = CGRectGetMidX(v47);
    [v28 frame];
    v32 = [v30 initWithContainer:v29 center:{MidX, CGRectGetMidY(v48)}];
    [v29 frame];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    [v32 center];
    v46.x = v41;
    v46.y = v42;
    v49.origin.x = v34;
    v49.origin.y = v36;
    v49.size.width = v38;
    v49.size.height = v40;
    if (CGRectContainsPoint(v49, v46))
    {
      v43 = [[UITargetedDragPreview alloc] initWithView:v28 parameters:v10 target:v32];
    }

    else
    {
      v43 = 0;
    }
  }

  else
  {
    v43 = 0;
  }

  return v43;
}

- (void)updatePreviewDrag
{
  if (self->_currentDragSession)
  {
    previewView = self->_previewView;
    if (previewView)
    {
      v4 = [(DragAndDropPreview *)previewView renderPreviewImage];
      [v4 dragPreview];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100B8ECC4;
      v10 = v9[3] = &unk_10164EFF0;
      currentDragSession = self->_currentDragSession;
      v6 = v10;
      v7 = [(UIDragSession *)currentDragSession items];
      v8 = [v7 firstObject];
      [v8 setPreviewProvider:v9];
    }
  }
}

- (void)setDraggableContent:(id)a3
{
  v4 = a3;
  v5 = self->_draggableContent;
  v6 = v4;
  if (v6 | v5)
  {
    v7 = [v5 isEqual:v6];

    if ((v7 & 1) == 0)
    {
      draggableContentInteractions = self->_draggableContentInteractions;
      if (draggableContentInteractions)
      {
        v9 = v6;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v10 = [(NSMapTable *)draggableContentInteractions keyEnumerator];
        v11 = [v10 countByEnumeratingWithState:&v50 objects:v56 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v51;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v51 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v50 + 1) + 8 * i);
              v16 = [(NSMapTable *)self->_draggableContentInteractions objectForKey:v15];
              v17 = [v16 view];
              [v17 removeInteraction:v15];
            }

            v12 = [v10 countByEnumeratingWithState:&v50 objects:v56 count:16];
          }

          while (v12);
        }

        [(NSMapTable *)self->_draggableContentInteractions removeAllObjects];
        v18 = self->_draggableContentInteractions;
        self->_draggableContentInteractions = 0;

        v6 = v9;
      }

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v19 = [(InfoCardViewController *)self fixedHeaderView];
      v20 = [v19 interactions];

      v21 = [v20 countByEnumeratingWithState:&v46 objects:v55 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v47;
        do
        {
          for (j = 0; j != v22; j = j + 1)
          {
            if (*v47 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v46 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v26 = [(InfoCardViewController *)self fixedHeaderView];
              [v26 removeInteraction:v25];
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v46 objects:v55 count:16];
        }

        while (v22);
      }

      v27 = [v6 copy];
      draggableContent = self->_draggableContent;
      self->_draggableContent = v27;

      if (self->_draggableContent)
      {
        v41 = v6;
        v29 = +[NSMapTable strongToStrongObjectsMapTable];
        v30 = self->_draggableContentInteractions;
        self->_draggableContentInteractions = v29;

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v31 = self->_draggableContent;
        v32 = [(NSArray *)v31 countByEnumeratingWithState:&v42 objects:v54 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v43;
          do
          {
            for (k = 0; k != v33; k = k + 1)
            {
              if (*v43 != v34)
              {
                objc_enumerationMutation(v31);
              }

              v36 = *(*(&v42 + 1) + 8 * k);
              v37 = [[UIDragInteraction alloc] initWithDelegate:self];
              v38 = [v36 view];
              [v38 addInteraction:v37];

              [(NSMapTable *)self->_draggableContentInteractions setObject:v36 forKey:v37];
            }

            v33 = [(NSArray *)v31 countByEnumeratingWithState:&v42 objects:v54 count:16];
          }

          while (v33);
        }

        v6 = v41;
        if (sub_10000FA08(self) != 5 && [(NSArray *)self->_draggableContent count])
        {
          v39 = [[UIDragInteraction alloc] initWithDelegate:self];
          v40 = [(InfoCardViewController *)self fixedHeaderView];
          [v40 addInteraction:v39];
        }
      }
    }
  }
}

- (void)contactViewController:(id)a3 didCompleteWithContact:(id)a4
{
  v4 = a4;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = [v4 postalAddresses];
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v21 = v4;
    obj = v5;
    v8 = *v25;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v25 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v24 + 1) + 8 * v9);
      v11 = [v10 value];
      v12 = [(PlaceCardViewController *)self placeCardItem];
      v13 = [v12 address];
      v14 = [v13 addressValue];
      v15 = [v14 value];
      v16 = [v11 isEqual:v15];

      if (v16)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        v4 = v21;
        v5 = obj;
        goto LABEL_12;
      }
    }

    v17 = v10;

    v4 = v21;
    if (!v17)
    {
      goto LABEL_13;
    }

    v18 = [[MKMapItem alloc] initWithContact:v21];
    v19 = [[AddressBookAddress alloc] initWithContact:v21 addressValue:v17];
    v20 = [(PlaceCardViewController *)self placeCardDelegate];
    [v20 placeCardViewController:self selectMapItem:v18 address:v19];

    v5 = v17;
  }

LABEL_12:

LABEL_13:
}

- (void)presentExtensionFlowController:(id)a3
{
  v4 = a3;
  [v4 setContentUpdateDelegate:self];
  v5 = [(ContaineeViewController *)self cardPresentationController];
  [v5 presentViewController:v4 animated:1 completion:0];
}

- (void)presentAppClip:(id)a3
{
  v4 = a3;
  v5 = [v4 appClipURL];
  v6 = +[MKClipServices sharedInstance];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100B8F410;
  v8[3] = &unk_10163BE28;
  v9 = v5;
  v10 = self;
  v7 = v5;
  [v6 requestAppClip:v4 completion:v8];
}

- (void)presentQuickLink:(id)a3
{
  v4 = [a3 URLString];
  if ([v4 length])
  {
    v5 = [[NSURL alloc] initWithString:v4];
    if (v5)
    {
      v6 = [(PlaceCardViewController *)self placeCardDelegate];
      [v6 placeCardViewController:self openURL:v5];
    }

    else
    {
      v6 = sub_1007986AC();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = 138412290;
        v8 = self;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "The URL associated with quicklink %@ is nil", &v7, 0xCu);
      }
    }
  }
}

- (void)appStoreAppSelected:(id)a3
{
  v4 = a3;
  v5 = [(PlaceCardViewController *)self placeCardDelegate];
  v6 = [v4 identifier];
  v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v6 integerValue]);
  [v5 placeCardViewController:self displayStoreViewControllerForAppWithiTunesIdentifier:v7];

  if ([(MUPlaceViewController *)self->_placeViewController conformsToProtocol:&OBJC_PROTOCOL____MKInfoCardAnalyticsDelegate])
  {
    v9 = self->_placeViewController;
  }

  else
  {
    v9 = 0;
  }

  v8 = [v4 iOSBundleIdentifier];

  [(MUPlaceViewController *)v9 infoCardAnalyticsDidSelectAction:45 target:733 eventValue:v8 feedbackDelegateSelector:0 actionRichProviderId:0 classification:0];
}

- (BOOL)isMeCard
{
  v3 = [(PlaceCardViewController *)self placeCardItem];
  v4 = [v3 address];
  if ([v4 isMeCard])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(PlaceCardViewController *)self placeCardItem];
    v5 = [v6 isHomeWorkSchoolAddress];
  }

  return v5;
}

- (BOOL)isContact
{
  v2 = [(PlaceCardViewController *)self placeCardItem];
  v3 = [v2 address];
  v4 = v3 != 0;

  return v4;
}

- (void)dismissContactsViewController
{
  v3 = [(PlaceCardViewController *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 5)
  {
    objc_initWeak(&location, self);
    v5 = +[UIApplication sharedMapsDelegate];
    v6 = [v5 appCoordinator];
    v7 = [v6 chromeViewController];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100B8F9E8;
    v8[3] = &unk_101661B98;
    objc_copyWeak(&v9, &location);
    [v7 dismissViewControllerAnimated:1 completion:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else
  {

    [(PlaceCardViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)placeViewControllerDidSelectAddOrRemoveFromFavoritesGuide:(id)a3
{
  v4 = +[CollectionManager sharedManager];
  v5 = [v4 favoriteCollection];

  [(PlaceCardViewController *)self _addPlaceToCollection:v5 editCollection:0];
}

- (void)searchFindMyFriendDidRemoveHandleWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PlaceCardItem *)self->_placeCardItem searchResult];
  v6 = [v5 autocompletePerson];

  if (v6)
  {
    v7 = [(PlaceCardItem *)self->_placeCardItem searchResult];
    v8 = [v7 autocompletePerson];
    v9 = [v8 handle];
    v10 = [v9 handle];
    v11 = [v10 handleIdentifier];

    if ([v4 isEqualToString:v11])
    {
      v12 = sub_1007986AC();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Found a placecard representing the handle that was removed", buf, 2u);
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100B8FC38;
      block[3] = &unk_101661B18;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (void)openRequestLocation
{
  v3 = [(PlaceCardViewController *)self placeCardItem];
  v4 = [v3 searchResult];
  v5 = [v4 autocompletePerson];
  v6 = [v5 requestLocationURL];

  if (v6)
  {
    objc_initWeak(location, self);
    v7 = +[UIApplication sharedApplication];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100B8FEB8;
    v13[3] = &unk_1016619A8;
    objc_copyWeak(&v14, location);
    [v7 _maps_openURL:v6 options:0 completionHandler:v13];

    v8 = [(PlaceCardViewController *)self analyticsDelegate];
    [v8 infoCardAnalyticsDidSelectAction:405 eventValue:0 feedbackDelegateSelector:0 classification:0];

    objc_destroyWeak(&v14);
    objc_destroyWeak(location);
  }

  else
  {
    v9 = sub_1007986AC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [(PlaceCardViewController *)self placeCardItem];
      v11 = [v10 searchResult];
      v12 = [v11 autocompletePerson];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error opening messages app, missing request location Identifier for person: %@", location, 0xCu);
    }
  }
}

- (void)openFindMy
{
  v3 = [(PlaceCardViewController *)self placeCardItem];
  v4 = [v3 searchResult];
  v5 = [v4 autocompletePerson];
  v6 = [v5 openFindMyURL];

  if (v6)
  {
    objc_initWeak(location, self);
    v7 = +[UIApplication sharedApplication];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_100B90200;
    v16 = &unk_10165FC50;
    objc_copyWeak(&v18, location);
    v17 = v6;
    [v7 _maps_openURL:v17 options:0 completionHandler:&v13];

    v8 = [(PlaceCardViewController *)self analyticsDelegate:v13];
    [v8 infoCardAnalyticsDidSelectAction:403 eventValue:0 feedbackDelegateSelector:0 classification:0];

    objc_destroyWeak(&v18);
    objc_destroyWeak(location);
  }

  else
  {
    v9 = sub_1007986AC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [(PlaceCardViewController *)self placeCardItem];
      v11 = [v10 searchResult];
      v12 = [v11 autocompletePerson];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error opening the find my app, missing handle Identifier for person: %@", location, 0xCu);
    }
  }
}

- (void)viewContact
{
  v3 = [(PlaceCardViewController *)self placeCardItem];
  v4 = [v3 address];
  v5 = [v4 contact];

  if (MapsFeature_IsEnabled_MapsWally())
  {
    v6 = [v5 mutableCopy];
    v7 = [v5 postalAddresses];
    v8 = [NSPredicate predicateWithBlock:&stru_10163BE00];
    v9 = [v7 filteredArrayUsingPredicate:v8];
    [v6 setPostalAddresses:v9];

    v10 = [v6 copy];
    v5 = v10;
  }

  v11 = [CNContactViewController viewControllerForContact:v5];
  [v11 setDelegate:self];
  v12 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"dismissContactsViewController"];
  v13 = [v11 navigationItem];
  [v13 setBackBarButtonItem:v12];

  [v11 setModalPresentationStyle:3];
  [v11 setDisplayMode:1];
  v14 = [[UINavigationController alloc] initWithRootViewController:v11];
  if (sub_10000FA08(self) == 5)
  {
    [v14 setModalPresentationStyle:2];
    objc_initWeak(&location, self);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100B9052C;
    v15[3] = &unk_101661340;
    objc_copyWeak(&v17, &location);
    v16 = v14;
    [(PlaceCardViewController *)self dismissViewControllerAnimated:1 completion:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    [(PlaceCardViewController *)self _maps_topMostPresentViewController:v14 animated:1 completion:0];
  }
}

- (void)_chromeViewControllerPresent:(id)a3
{
  v3 = a3;
  v6 = +[UIApplication sharedMapsDelegate];
  v4 = [v6 appCoordinator];
  v5 = [v4 chromeViewController];
  [v5 presentViewController:v3 animated:1 completion:0];
}

- (void)_instrumentHeaderButtonAction:(int)a3 withFeedbackType:(int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  v6 = [(MUPlaceViewController *)self->_placeViewController analyticsController];
  [v6 instrumentAction:v5 forModuleType:2 usingFeedbackType:v4];
}

- (id)_secondaryButtonController
{
  if ([(PlaceCardViewController *)self isPresentedInSearchAlongTheRoute])
  {
    v3 = 0;
    goto LABEL_63;
  }

  objc_initWeak(&location, self);
  excludedContent = self->_excludedContent;
  if ([(PlaceCardViewController *)self isContact])
  {
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"Contacts" value:@"localized string not found" table:0];

    v82[0] = _NSConcreteStackBlock;
    v82[1] = 3221225472;
    v82[2] = sub_100B91220;
    v82[3] = &unk_101656BC8;
    objc_copyWeak(&v83, &location);
    v7 = objc_retainBlock(v82);
    if (MapsFeature_IsEnabled_MapsWally())
    {
      if ([(PlaceCardItem *)self->_placeCardItem canShowOpenFindMyAction])
      {
        v8 = +[NSBundle mainBundle];
        v9 = [v8 localizedStringForKey:@"Find My" value:@"localized string not found" table:0];

        v10 = &v81;
        v11 = v80;
        v80[0] = _NSConcreteStackBlock;
        v80[1] = 3221225472;
        v12 = sub_100B91288;
LABEL_23:
        v6 = v9;
        v11[2] = v12;
        v11[3] = &unk_101656BC8;
        objc_copyWeak(v10, &location);
        v29 = objc_retainBlock(v11);

        objc_destroyWeak(v10);
        v30 = @"findmy";
        v7 = v29;
LABEL_25:
        objc_destroyWeak(&v83);
        v31 = 0;
        v32 = 0;
        goto LABEL_53;
      }

      if ([(PlaceCardItem *)self->_placeCardItem canShowRequestLocation])
      {
        v28 = +[NSBundle mainBundle];
        v9 = [v28 localizedStringForKey:@"Location" value:@"localized string not found" table:0];

        v10 = &v79;
        v11 = v78;
        v78[0] = _NSConcreteStackBlock;
        v78[1] = 3221225472;
        v12 = sub_100B912C8;
        goto LABEL_23;
      }
    }

    v30 = @"person.fill";
    goto LABEL_25;
  }

  if ((excludedContent & 8) == 0)
  {
    v13 = [(PlaceCardViewController *)self placeCardItem];
    v14 = [v13 isDroppedPin];

    if (v14)
    {
      v15 = +[NSBundle mainBundle];
      v6 = [v15 localizedStringForKey:@"Move [Marked Location in Place Card]" value:@"localized string not found" table:0];

      v76[0] = _NSConcreteStackBlock;
      v76[1] = 3221225472;
      v76[2] = sub_100B91308;
      v76[3] = &unk_101656BC8;
      objc_copyWeak(&v77, &location);
      v7 = objc_retainBlock(v76);
      objc_destroyWeak(&v77);
LABEL_32:
      v31 = 0;
      v32 = 0;
      v30 = @"mappin.and.ellipse";
      goto LABEL_53;
    }
  }

  v16 = [(PlaceCardViewController *)self placeCardItem];
  v17 = [v16 mapItem];
  if ([v17 _hasFlyover])
  {
    v18 = (self->_excludedContent & 4) == 0;

    if (v18)
    {
      v19 = +[VKPlatform sharedPlatform];
      v20 = [v19 supportsARMode];

      +[NSBundle mainBundle];
      if (v20)
        v21 = {;
        [v21 localizedStringForKey:@"Flyover" value:@"localized string not found" table:0];
      }

      else
        v21 = {;
        [v21 localizedStringForKey:@"Flyover Tour" value:@"localized string not found" table:0];
      }
      v6 = ;

      v74[0] = _NSConcreteStackBlock;
      v74[1] = 3221225472;
      v74[2] = sub_100B913D8;
      v74[3] = &unk_101656BC8;
      objc_copyWeak(&v75, &location);
      v7 = objc_retainBlock(v74);
      objc_destroyWeak(&v75);
      v31 = 0;
      v32 = 0;
      v30 = @"buildings.3d";
      goto LABEL_53;
    }
  }

  else
  {
  }

  v22 = [(PlaceCardViewController *)self placeCardItem];
  v23 = [v22 isCurrentLocation];

  if (v23)
  {
    if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
    {
      v24 = +[NSBundle mainBundle];
      [v24 localizedStringForKey:@"Mark My Location" value:@"localized string not found" table:0];
    }

    else
    {
      v24 = +[NSBundle mainBundle];
      [v24 localizedStringForKey:@"Drop Pin" value:@"localized string not found" table:0];
    }
    v6 = ;

    v72[0] = _NSConcreteStackBlock;
    v72[1] = 3221225472;
    v72[2] = sub_100B914A8;
    v72[3] = &unk_10165D090;
    objc_copyWeak(&v73, &location);
    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = sub_100B91558;
    v69[3] = &unk_10163BD78;
    v70 = objc_retainBlock(v72);
    v41 = v70;
    objc_copyWeak(&v71, &location);
    v7 = objc_retainBlock(v69);
    objc_destroyWeak(&v71);

    objc_destroyWeak(&v73);
    goto LABEL_32;
  }

  if ((excludedContent & 8) == 0)
  {
    v25 = [(PlaceCardViewController *)self placeCardItem];
    v26 = [v25 isHomeWorkSchoolShortcut];

    if (v26)
    {
      v27 = +[NSBundle mainBundle];
      v6 = [v27 localizedStringForKey:@"Move [Marked Location in Place Card]" value:@"localized string not found" table:0];

      v67[0] = _NSConcreteStackBlock;
      v67[1] = 3221225472;
      v67[2] = sub_100B916C0;
      v67[3] = &unk_101656BC8;
      objc_copyWeak(&v68, &location);
      v7 = objc_retainBlock(v67);
      objc_destroyWeak(&v68);
      goto LABEL_32;
    }
  }

  v33 = [(PlaceCardViewController *)self placeCardItem];
  v34 = [v33 chargeStationWaypointInfo];

  if (!v34)
  {
    v42 = [(PlaceCardViewController *)self placeCardItem];
    if ([v42 isMeCard])
    {
    }

    else
    {
      v45 = [(PlaceCardViewController *)self mapItem];
      v46 = [v45 _quickLinks];
      v47 = [v46 count] == 0;

      if (!v47)
      {
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v48 = [(PlaceCardViewController *)self mapItem];
        v49 = [v48 _quickLinks];

        v50 = [v49 countByEnumeratingWithState:&v63 objects:v85 count:16];
        if (v50)
        {
          v51 = *v64;
LABEL_44:
          v52 = 0;
          while (1)
          {
            if (*v64 != v51)
            {
              objc_enumerationMutation(v49);
            }

            v53 = *(*(&v63 + 1) + 8 * v52);
            if ([v53 type] == 1)
            {
              break;
            }

            if (v50 == ++v52)
            {
              v50 = [v49 countByEnumeratingWithState:&v63 objects:v85 count:16];
              if (v50)
              {
                goto LABEL_44;
              }

              goto LABEL_50;
            }
          }

          v7 = v53;

          if (v7)
          {
            v58 = [(Block_layout *)v7 title];
            v60[0] = _NSConcreteStackBlock;
            v60[1] = 3221225472;
            v60[2] = sub_100B91730;
            v60[3] = &unk_10163BDC0;
            objc_copyWeak(&v62, &location);
            v59 = v7;
            v61 = v59;
            v3 = [_MKPlaceActionButtonController actionButtonControllerWithTitle:v58 subTitle:0 selectedBlock:v60];

            objc_destroyWeak(&v62);
            v7 = 0;
            v32 = 0;
            v6 = 0;
            goto LABEL_62;
          }

          v31 = 0;
          goto LABEL_52;
        }

LABEL_50:
      }
    }

    v31 = 0;
    v7 = 0;
LABEL_52:
    v30 = 0;
    v32 = 0;
    v6 = 0;
    goto LABEL_53;
  }

  v35 = [(PlaceCardViewController *)self placeCardItem];
  v36 = [v35 chargeStationWaypointInfo];
  v37 = [v36 chargeInfo];
  [v37 chargingTime];
  v39 = [NSString _navigation_stringWithSeconds:v38 abbreviated:1];

  v31 = v39 != 0;
  if (v39)
  {
    v40 = +[NSBundle mainBundle];
    v6 = [v40 localizedStringForKey:@"EV_Routing_stop_added" value:@"localized string not found" table:0];

    if (sub_10000FA08(self) == 5)
    {
      v32 = v39;
    }

    else
    {
      v43 = +[NSBundle mainBundle];
      v44 = [v43 localizedStringForKey:@"EV_Routing_charge_duration" value:@"localized string not found" table:0];
      v32 = [NSString stringWithFormat:v44, v39];
    }

    v30 = @"bolt.car.fill";
  }

  else
  {
    v30 = 0;
    v32 = 0;
    v6 = 0;
  }

  v7 = &stru_10163BD98;
LABEL_53:
  if (MapsFeature_IsEnabled_MapsWally() && [(PlaceCardItem *)self->_placeCardItem canShowOpenFindMyAction])
  {
    v54 = [_MKPlaceActionButtonController alloc];
    v55 = 403;
LABEL_59:
    v56 = [v54 initWithTitle:v6 subTitle:v32 analyticsAction:v55 selectedBlock:v7 disabled:v31 symbolName:v30];
    goto LABEL_61;
  }

  if (MapsFeature_IsEnabled_MapsWally() && [(PlaceCardItem *)self->_placeCardItem canShowRequestLocation])
  {
    v54 = [_MKPlaceActionButtonController alloc];
    v55 = 405;
    goto LABEL_59;
  }

  v56 = [_MKPlaceActionButtonController actionButtonControllerWithTitle:v6 subTitle:v32 selectedBlock:v7 disabled:v31 symbolName:v30];
LABEL_61:
  v3 = v56;
LABEL_62:
  objc_destroyWeak(&location);

LABEL_63:

  return v3;
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  suggestionViewController = self->_suggestionViewController;
  v5 = a3;
  [(RelatedSearchSuggestionViewController *)suggestionViewController dismiss];
  v6.receiver = self;
  v6.super_class = PlaceCardViewController;
  [(ContaineeViewController *)&v6 scrollViewWillBeginDragging:v5];
}

- (void)placeViewController:(id)a3 didRequestAddOrRemovePlaceFromLibrary:(BOOL)a4 environment:(id)a5
{
  v5 = a4;
  libraryOperationsCoordinator = self->_libraryOperationsCoordinator;
  v8 = a5;
  v9 = [(PlaceCardLibraryOperationsCoordinator *)libraryOperationsCoordinator mapItem];
  v10 = [v9 _muid];
  v11 = [v8 isActionBar];

  if (v11)
  {
    v12 = 203;
  }

  else
  {
    v12 = 30;
  }

  [_TtC4Maps16LibraryAnalytics captureAddOrRemoveFromLibraryWithPlaceMUID:v10 captureAdd:v5 target:v12];

  [(PlaceCardViewController *)self handleAddOrRemovePlaceFromLibrary:v5];
}

- (void)placeViewController:(id)a3 didSelectTransitConnectionInformation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[UIApplication sharedMapsDelegate];
  v9 = [v8 poiSearchManager];

  v10 = [MKMapItemIdentifier alloc];
  v11 = [v7 itemIdentifier];
  v12 = [v10 initWithGEOMapItemIdentifier:v11];

  v13 = [(PlaceCardViewController *)self placeCardDelegate];
  v14 = [v13 newTraits];

  [v14 useOnlineToOfflineFailoverRequestModeIfAllowed];
  objc_initWeak(&location, self);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100B91C28;
  v15[3] = &unk_10163BD50;
  objc_copyWeak(&v16, &location);
  [v9 searchForIdentifier:v12 allowExpired:0 traits:v14 completionHandler:v15];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)placeViewController:(id)a3 didRequestEditingNoteWithInitialText:(id)a4 libraryAccessProvider:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v13 = [(PlaceCardViewController *)self placeCardDelegate];
  v12 = [(PlaceCardLibraryOperationsCoordinator *)self->_libraryOperationsCoordinator mapItem];
  [v13 placeCardViewController:self didRequestEditingNoteWithInitialText:v11 libraryAccessProvider:v10 placeMUID:objc_msgSend(v12 completion:{"_muid"), v9}];
}

- (void)placeViewController:(id)a3 didSelectMapsExtension:(id)a4 usingAppStoreApp:(id)a5 parameters:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [RestaurantReservationRouter alloc];
  v13 = [(PlaceCardViewController *)self mapItem];
  v14 = [(RestaurantReservationRouter *)v12 initWithExtension:v11 parameters:v9 appStoreApp:v10 mapItem:v13 presenter:self];

  reservationRouter = self->_reservationRouter;
  self->_reservationRouter = v14;

  v16 = self->_reservationRouter;

  [(RestaurantReservationRouter *)v16 resolve];
}

- (void)placeViewController:(id)a3 didSelectShareCurrentLocationWithCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[MKLocationManager sharedLocationManager];
  v9 = [v8 isAuthorizedForPreciseLocation];

  if (v9)
  {
    v7[2](v7, 1);
  }

  else
  {
    v10 = @"AppInfoTemporaryPreciseLocationAuthorizationForShareLocationPurposeKey";
    objc_initWeak(&location, self);
    v11 = +[MKMapService sharedService];
    [v11 captureUserAction:56 onTarget:690 eventValue:0];

    v12 = +[MKLocationManager sharedLocationManager];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100B91FF4;
    v13[3] = &unk_10165DC78;
    objc_copyWeak(&v15, &location);
    v14 = v7;
    [v12 requestTemporaryPreciseLocationAuthorizationWithPurposeKey:@"AppInfoTemporaryPreciseLocationAuthorizationForShareLocationPurposeKey" completion:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

- (void)placeViewControllerDidTapMiniBrowseCategory:(id)a3
{
  v3 = [(ContaineeViewController *)self cardPresentationController];
  [v3 wantsLayout:3];
}

- (void)placeViewController:(id)a3 requestPasscodeUnlockWithCompletion:(id)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100B923E0;
  v5[3] = &unk_1016610B8;
  v6 = a4;
  v4 = v6;
  [UIApplication _maps_unlockApplicationWithCompletion:v5];
}

- (void)placeViewController:(id)a3 didSelectParent:(id)a4
{
  if (a4)
  {
    v5 = a4;
    if (sub_10000FA08(self) != 5)
    {
      v6 = [(ContaineeViewController *)self cardPresentationController];
      v7 = [v6 containerStyle];

      if (v7 == 1)
      {
        v8 = [(ContaineeViewController *)self cardPresentationController];
        [v8 wantsLayout:2];
      }
    }

    v9 = [(PlaceCardViewController *)self placeCardDelegate];
    [v9 placeCardViewController:self didSelectParent:v5];
  }
}

- (void)placeViewController:(id)a3 didSelectSearchCategory:(id)a4
{
  v5 = a4;
  v8 = [(PlaceCardViewController *)self placeCardDelegate];
  v6 = [(PlaceCardViewController *)self placeCardItem];
  v7 = [v6 mapItem];
  [v8 placeCardViewController:self presentCategoryPlacesListForMapItem:v7 searchCategory:v5];
}

- (void)placeViewControllerDidSelectRemoveMarker:(id)a3
{
  v4 = [(PlaceCardViewController *)self placeCardItem];
  v6 = [v4 searchResult];

  v5 = [(PlaceCardViewController *)self placeCardDelegate];
  [v5 placeCardViewController:self removeDroppedPin:v6];
}

- (void)placeViewControllerDidSelectDisplayedAddress:(id)a3
{
  v4 = [(PlaceCardViewController *)self placeCardDelegate];
  v5 = [(PlaceCardViewController *)self placeCardItem];
  [v4 placeCardViewController:self selectDisplayedAddressFromPlaceCardItem:v5];

  v6 = [(ContaineeViewController *)self cardPresentationController];
  [v6 wantsLayout:1];
}

- (void)placeViewControllerDidSelectEditLocationOfMarkedLocation:(id)a3
{
  v6 = [(PlaceCardViewController *)self placeCardDelegate];
  v4 = [(PlaceCardViewController *)self placeCardItem];
  v5 = [v4 searchResult];
  [v6 placeCardViewController:self editLocationOfMarkedLocation:v5];
}

- (void)placeViewControllerDidSelectDropPin:(id)a3
{
  v5 = [(PlaceCardViewController *)self placeCardDelegate];
  v4 = +[SearchResult currentLocationSearchResult];
  [v5 placeCardViewController:self createDroppedPin:v4];
}

- (void)placeViewControllerDidSelectFlyover:(id)a3
{
  v6 = [(PlaceCardViewController *)self placeCardDelegate];
  v4 = [(PlaceCardViewController *)self placeCardItem];
  v5 = [v4 mapItem];
  [v6 placeCardViewController:self enterFlyoverForMapItem:v5];
}

- (void)placeViewControllerDidSelectOfflineManagement:(id)a3
{
  v4 = [(PlaceCardViewController *)self placeCardDelegate];
  [v4 placeCardViewControllerShowOfflineMaps:self];
}

- (void)placeViewControllerDidSelectPauseOfflineDownload:(id)a3
{
  v3 = [(PlaceCardOfflineMapProvider *)self->_offlineMapProvider subscriptionInfo];
  if (v3)
  {
    v5 = v3;
    v4 = +[MapsOfflineUIHelper sharedHelper];
    [v4 pauseDownloadForSubscriptionInfo:v5];

    v3 = v5;
  }
}

- (void)placeViewControllerDidSelectDownloadOffline:(id)a3 environment:(id)a4
{
  v13 = a4;
  v5 = [(PlaceCardOfflineMapProvider *)self->_offlineMapProvider subscriptionInfo];
  if (v5)
  {
    if ([v13 isQuickAction])
    {
      v6 = [(PlaceCardViewController *)self placeCardDelegate];
      [v6 placeCardViewControllerShowOfflineMaps:self];
    }

    else
    {
      v6 = +[MapsOfflineUIHelper sharedHelper];
      [v6 resumeDownloadForSubscriptionInfo:v5 mode:1];
    }
  }

  else
  {
    v7 = [(PlaceCardViewController *)self mapItem];
    v8 = [v7 _geoMapItem];
    v6 = [v8 offlineDownloadRegion];

    v9 = [(PlaceCardViewController *)self mapItem];
    v10 = [v9 name];

    v11 = [(PlaceCardViewController *)self placeCardDelegate];
    v12 = [(PlaceCardViewController *)self mapItem];
    [v11 placeCardViewController:self showOfflineMapRegionSelectorForRegion:v6 name:v10 muid:objc_msgSend(v12 shouldShowDataManagementAfterDownload:{"_muid"), objc_msgSend(v13, "isQuickAction")}];
  }

  [(PlaceCardViewController *)self _clearOfflineDownloadTipIfNeeded];
}

- (void)placeViewControllerDidSelectPlaceEnrichmentRAP:(id)a3
{
  v4 = self->_placeCardItem;
  v5 = [(PlaceCardViewController *)self _maps_mapsSceneDelegate];
  v6 = [v5 rapPresenter];
  v7 = [(PlaceCardViewController *)self currentUITargetForAnalytics];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100B92BB4;
  v9[3] = &unk_10163BCB0;
  v10 = v4;
  v8 = v4;
  [v6 presentPlaceEnrichmentRAPWithTarget:v7 fromPlacecardWithEditingContext:v9 completion:0];
}

- (void)placeViewControllerDidSelectRAPViewReport:(id)a3
{
  v4 = [(PlaceCardViewController *)self _maps_mapsSceneDelegate];
  v3 = [v4 rapPresenter];
  [v3 presentReportAProblemWithCompletion:0];
}

- (void)placeViewController:(id)a3 didSelectEditPlaceDetailsOfType:(int64_t)a4
{
  v6 = self->_placeCardItem;
  v7 = [(PlaceCardViewController *)self _maps_mapsSceneDelegate];
  v8 = [v7 rapPresenter];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100B92D4C;
  v10[3] = &unk_10163BCB0;
  v11 = v6;
  v9 = v6;
  [v8 presentEditPlaceDetailsOfType:a4 fromPlacecardWithEditingContext:v10];
}

- (void)placeViewController:(id)a3 didSelectAddMissingDataOfType:(int64_t)a4
{
  v6 = self->_placeCardItem;
  v7 = [(PlaceCardViewController *)self _maps_mapsSceneDelegate];
  v8 = [v7 rapPresenter];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100B92E88;
  v10[3] = &unk_10163BCB0;
  v11 = v6;
  v9 = v6;
  [v8 presentAddMissingDataOfType:a4 fromPlacecardWithEditingContext:v10];
}

- (void)placeViewControllerDidSelectAddAPlace:(id)a3 environment:(id)a4
{
  v6 = a4;
  placeCardItem = self->_placeCardItem;
  v8 = a3;
  v9 = [(PlaceCardItem *)placeCardItem isDroppedPin]|| [(PlaceCardItem *)self->_placeCardItem isCurrentLocation];
  v10 = self->_placeCardItem;
  if ([v6 isActionBar])
  {
    v11 = 203;
  }

  else if ([v6 isQuickAction])
  {
    v11 = 30;
  }

  else
  {
    v11 = [(PlaceCardViewController *)self currentUITargetForAnalytics];
  }

  v12 = [(PlaceCardViewController *)self _maps_mapsSceneDelegate];
  v13 = [v12 rapPresenter];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100B93094;
  v17[3] = &unk_10163BCB0;
  v18 = v10;
  v14 = v10;
  v15 = [(PlaceCardViewController *)self _overriddenUserInterfaceStyle];
  v16 = [v8 view];

  [v13 presentAddAPlaceFromPlacecardWithEditingContext:v17 overriddenUserInterfaceStyle:v15 shouldShowDetailedFlow:v9 sourceView:v16 entryPoint:v11 completion:0];
  [GEOAPPortal captureUserAction:222 target:v11 value:0];
}

- (int64_t)_overriddenUserInterfaceStyle
{
  v3 = [(PlaceCardViewController *)self placeCardDelegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(PlaceCardViewController *)self placeCardDelegate];
  v6 = [v5 overriddenInterfaceStyleForPlaceViewControllerSubviews:self];

  return v6;
}

- (void)placeViewController:(id)a3 photoGalleryDidScroll:(id)a4
{
  reportImageryController = self->_reportImageryController;
  v5 = a4;
  [(UGCReportImageryController *)reportImageryController cancelPresentation];
  [v5 stopAnimatingActivityIndicatorViewForRAP];
}

- (void)placeViewController:(id)a3 didSelectPhotoToReport:(id)a4 withPhotoGalleryViewController:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [UGCReportImageryController alloc];
  v10 = [(PlaceCardItem *)self->_placeCardItem mapItem];
  v11 = [(UGCReportImageryController *)v9 initWithMapItem:v10 reportedPhoto:v8 presentingViewController:v7];

  reportImageryController = self->_reportImageryController;
  self->_reportImageryController = v11;

  [v7 startAnimatingActivityIndicatorViewForRAP];
  v13 = self->_reportImageryController;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100B932EC;
  v15[3] = &unk_10163BCD8;
  v16 = v7;
  v14 = v7;
  [(UGCReportImageryController *)v13 fetchLayoutAndPresentWithCompletion:v15];
}

- (void)placeViewControllerDidSelectReportAProblem:(id)a3 fromView:(id)a4 environment:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v9 = [v8 view];
  }

  v11 = [(PlaceCardViewController *)self _maps_mapsSceneDelegate];
  v12 = [v11 rapPresenter];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100B9343C;
  v15[3] = &unk_10163BCB0;
  v15[4] = self;
  v13 = [(PlaceCardViewController *)self _overriddenUserInterfaceStyle];
  if ([v10 isActionBar])
  {
    v14 = 203;
  }

  else if ([v10 isQuickAction])
  {
    v14 = 30;
  }

  else
  {
    v14 = [(PlaceCardViewController *)self currentUITargetForAnalytics];
  }

  [v12 presentReportAProblemFromPlaceCardViewController:self editingContext:v15 overriddenUserInterfaceStyle:v13 sourceView:v9 entryPoint:v14 completion:0];
}

- (void)placeViewController:(id)a3 showTransitIncidents:(id)a4
{
  v5 = a4;
  v6 = [(PlaceCardViewController *)self placeCardDelegate];
  [v6 placeCardViewController:self showTransitIncidents:v5];
}

- (void)placeViewController:(id)a3 openURL:(id)a4
{
  v5 = a4;
  v6 = [(PlaceCardViewController *)self placeCardDelegate];
  [v6 placeCardViewController:self openURL:v5];
}

- (void)placeViewController:(id)a3 didSelectTransitLine:(id)a4
{
  v5 = a4;
  v6 = [IncompleteTransitLineItem alloc];
  v7 = [v5 mapItemIdentifier];
  v8 = [v5 labelText];

  v10 = [(IncompleteTransitLineItem *)v6 initWithIdentifier:v7 name:v8];
  v9 = [(PlaceCardViewController *)self placeCardDelegate];
  [v9 placeCardViewController:self selectTransitLineItem:v10];
}

- (BOOL)placeViewController:(id)a3 canSelectDepartureSequence:(id)a4 mapItem:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(PlaceCardViewController *)self placeCardDelegate];
  LOBYTE(self) = [v9 placeCardViewController:self shouldShowTransitScheduleForMapItem:v7 departureSequence:v8];

  return self;
}

- (void)placeViewController:(id)a3 didSelectDepartureSequence:(id)a4 mapItem:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(PlaceCardViewController *)self placeCardDelegate];
  [v9 placeCardViewController:self showTransitScheduleForMapItem:v7 departureSequence:v8];
}

- (void)placeViewController:(id)a3 expandCardAnimated:(BOOL)a4
{
  v4 = a4;
  v5 = [(ContaineeViewController *)self cardPresentationController];
  [v5 wantsLayout:3 animated:v4];
}

- (int)mapTypeForPlaceViewController:(id)a3
{
  v3 = [(PlaceCardViewController *)self placeCardDelegate];
  v4 = [v3 displayedViewMode];
  if (v4 + 1 > 7)
  {
    v5 = 1;
  }

  else
  {
    v5 = dword_101215C80[v4 + 1];
  }

  return v5;
}

- (void)_updateFavoritesGuide
{
  v3 = +[CollectionManager sharedManager];
  v5 = [v3 favoriteCollection];

  v4 = [(PlaceCardViewController *)self mapItem];
  -[MUPlaceViewController setPlaceInFavoritesGuide:](self->_placeViewController, "setPlaceInFavoritesGuide:", [v5 containsItem:v4]);
}

- (void)_updateShortcut
{
  v3 = [(PlaceCardViewController *)self _shortcut];
  v5 = v3;
  if (v3)
  {
    v4 = [v3 isHidden] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  [(MUPlaceViewController *)self->_placeViewController setPlaceInShortcuts:v4];
  [(InfoCardViewController *)self rebuildHeaderMenu];
}

- (void)placeViewControllerDidSelectRefineLocation:(id)a3
{
  v4 = [(PlaceCardViewController *)self _shortcut];
  if (v4)
  {
    v7 = v4;
    v5 = [ShortcutEditSession editSessionWithShortcut:v4];
    [v5 setEditingModeType:3];
    v6 = [(PlaceCardViewController *)self placeCardDelegate];
    [v6 placeCardViewController:self editShortcut:v5];

    v4 = v7;
  }
}

- (void)placeViewControllerDidSelectChangeAddress:(id)a3
{
  v4 = [(PlaceCardViewController *)self _shortcut];
  if (v4)
  {
    v7 = v4;
    v5 = [ShortcutEditSession editSessionWithShortcut:v4];
    [v5 setEditingModeType:2];
    v6 = [(PlaceCardViewController *)self placeCardDelegate];
    [v6 placeCardViewController:self editShortcut:v5];

    v4 = v7;
  }
}

- (void)placeViewControllerDidSelectRemoveShortcut:(id)a3
{
  v4 = a3;
  v5 = [(PlaceCardViewController *)self _shortcut];
  if (v5 && !self->_shortcutEditSession)
  {
    v6 = [ShortcutEditSession editSessionWithShortcut:v5];
    shortcutEditSession = self->_shortcutEditSession;
    self->_shortcutEditSession = v6;

    objc_initWeak(&location, self);
    v8 = self->_shortcutEditSession;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100B93B3C;
    v9[3] = &unk_1016619A8;
    objc_copyWeak(&v10, &location);
    [(ShortcutEditSession *)v8 removeFromShortcutsWithCompletion:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (void)placeViewControllerDidSelectAddShortcut:(id)a3
{
  v4 = a3;
  v5 = [(PlaceCardViewController *)self _shortcut];
  if (!v5 || (v6 = v5, -[PlaceCardViewController _shortcut](self, "_shortcut"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isHidden], v7, v6, v8))
  {
    if (!self->_shortcutEditSession)
    {
      v9 = [(PlaceCardViewController *)self _shortcut];

      if (v9)
      {
        v10 = [(PlaceCardViewController *)self _shortcut];
        v11 = [ShortcutEditSession addSessionWithShortcut:v10];
        v12 = 0;
      }

      else
      {
        if ([(PlaceCardLibraryOperationsCoordinator *)self->_libraryOperationsCoordinator savedStateOfPlace]!= 1 || ([(PlaceCardLibraryOperationsCoordinator *)self->_libraryOperationsCoordinator syncObject], v14 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v14, (isKindOfClass & 1) == 0))
        {
          v16 = [(PlaceCardViewController *)self placeCardItem];
          if ([v16 isHomeWorkSchoolAddress])
          {
            v17 = [(PlaceCardViewController *)self placeCardItem];
            [v17 addressType];
            v18 = shortcutTypeForLOIType();
          }

          else
          {
            v18 = 1;
          }

          v10 = [(PlaceCardViewController *)self placeCardItem];
          v13 = [(MapsFavoriteItem *)v10 mapItem];
          v19 = [ShortcutEditSession addSessionWithType:v18 mapItem:v13];
          shortcutEditSession = self->_shortcutEditSession;
          self->_shortcutEditSession = v19;

          v12 = 0;
          goto LABEL_14;
        }

        v12 = [(PlaceCardLibraryOperationsCoordinator *)self->_libraryOperationsCoordinator syncObject];
        v10 = [[_TtC4Maps16MapsFavoriteItem alloc] initWithCollectionItem:v12];
        v11 = [ShortcutEditSession addSessionWithShortcut:v10];
      }

      v13 = self->_shortcutEditSession;
      self->_shortcutEditSession = v11;
LABEL_14:

      objc_initWeak(&location, self);
      v21 = self->_shortcutEditSession;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100B93E8C;
      v23[3] = &unk_10165FC50;
      objc_copyWeak(&v25, &location);
      v22 = v12;
      v24 = v22;
      [(ShortcutEditSession *)v21 saveWithCompletion:v23];

      objc_destroyWeak(&v25);
      objc_destroyWeak(&location);
    }
  }
}

- (id)_shortcut
{
  v2 = [(PlaceCardViewController *)self placeCardItem];
  v3 = [v2 shortcut];

  return v3;
}

- (void)placeViewControllerDidTapHikingTip:(id)a3 originMapItem:(id)a4
{
  v9 = a4;
  v5 = [(PlaceCardViewController *)self placeCardDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(PlaceCardViewController *)self placeCardDelegate];
    [v7 placeCardViewControllerDidTapHikingTip:self originMapItem:v9];

    v8 = [(PlaceCardViewController *)self analyticsDelegate];
    [v8 infoCardAnalyticsDidSelectAction:465 eventValue:0 feedbackDelegateSelector:0 classification:0];
  }
}

- (id)placeViewController:(id)a3 hikingTipViewForTipModel:(id)a4
{
  v5 = a4;
  v6 = +[GEOFeatureStyleAttributes customSavedRouteDashedStyleAttributes];
  v7 = [(PlaceCardViewController *)self view];
  v8 = [v7 traitCollection];
  [v8 displayScale];
  v9 = [MKIconManager imageForStyle:v6 size:3 forScale:0 format:?];

  v10 = [FeatureDiscoveryModel alloc];
  v11 = [v5 title];
  v12 = [v5 subtitle];

  LOBYTE(v16) = 0;
  v13 = [(FeatureDiscoveryModel *)v10 initWithImage:v9 title:v11 subtitle:v12 actionTitle:0 actionHandler:0 bodyTapHandler:0 displayedHandler:0 dismissHandler:0 disableAffordanceAfterAction:v16];

  v14 = objc_alloc_init(FeatureDiscoveryView);
  [(FeatureDiscoveryView *)v14 setModel:v13];
  [(FeatureDiscoveryView *)v14 setDrawsBackground:0];

  return v14;
}

- (void)placeViewController:(id)a3 didRequestHikingToolTipRegionIDForLocation:(CLLocationCoordinate2D)a4
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v7 = [(PlaceCardViewController *)self placeCardDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(PlaceCardViewController *)self placeCardDelegate];
    [v9 placeCardViewController:self didRequestHikingToolTipRegionIDForLocation:{latitude, longitude}];
  }
}

- (id)placeViewControllerRequestsMapViewAssociatedWithVC:(id)a3
{
  v4 = [(PlaceCardViewController *)self placeCardDelegate];
  v5 = [v4 placeCardViewControllerRequestsMapViewAssociatedWithVC:self];

  return v5;
}

- (void)placeViewController:(id)a3 showRelatedMapItems:(id)a4 withTitle:(id)a5 originalMapItem:(id)a6 analyticsDelegate:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = [(PlaceCardViewController *)self placeCardDelegate];
  [v15 placeCardViewController:self showRelatedMapItems:v14 withTitle:v13 originalMapItem:v12 analyticsDelegate:v11];
}

- (id)inlineRatingViewControllerForPlaceViewController:(id)a3
{
  v4 = [(PlaceCardViewController *)self mapItem];

  if (v4)
  {
    inlineRatingsController = self->_inlineRatingsController;
    if (!inlineRatingsController)
    {
      goto LABEL_6;
    }

    v6 = [(UGCInlinePOIEnrichmentController *)inlineRatingsController mapItem];
    v7 = [(PlaceCardViewController *)self mapItem];

    if (v6 != v7)
    {
      [(PlaceCardViewController *)self _submitInlineRatingsIfNeeded];
      v8 = self->_inlineRatingsController;
      self->_inlineRatingsController = 0;
    }

    v9 = self->_inlineRatingsController;
    if (!v9)
    {
LABEL_6:
      v10 = [UGCInlinePOIEnrichmentController alloc];
      v11 = [(PlaceCardViewController *)self mapItem];
      v12 = [(UGCInlinePOIEnrichmentController *)v10 initWithMapItem:v11];
      v13 = self->_inlineRatingsController;
      self->_inlineRatingsController = v12;

      [(UGCInlinePOIEnrichmentController *)self->_inlineRatingsController setDelegate:self];
      v14 = [(MUPlaceViewController *)self->_placeViewController analyticsController];
      [(UGCInlinePOIEnrichmentController *)self->_inlineRatingsController setAnalyticsController:v14];

      [(UGCInlinePOIEnrichmentController *)self->_inlineRatingsController setPresentingViewController:self];
      [(PlaceCardViewController *)self _updateCallToActionStateIfNeeded];
      [(PlaceCardViewController *)self _updatePlacecardCallToActionAnimated:0];
      v9 = self->_inlineRatingsController;
    }

    v15 = [(UGCInlinePOIEnrichmentController *)v9 contentViewController];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)_updateCallToActionStateIfNeeded
{
  if (MapsFeature_IsEnabled_LagunaBeach())
  {
    if (!self->_callToActionViewProvider)
    {
      v3 = [[UGCCallToActionViewProvider alloc] initWithDelegate:self];
      callToActionViewProvider = self->_callToActionViewProvider;
      self->_callToActionViewProvider = v3;
    }

    v5 = [(PlaceCardViewController *)self placeCardItem];
    v6 = [v5 mapItem];
    v7 = [(UGCCallToActionViewProvider *)self->_callToActionViewProvider mapItem];

    if (v6 != v7)
    {
      v8 = [(PlaceCardViewController *)self placeCardItem];
      v9 = [v8 mapItem];
      [(UGCCallToActionViewProvider *)self->_callToActionViewProvider setMapItem:v9];
    }

    v10 = self->_inlineRatingsController != 0;
    v11 = self->_callToActionViewProvider;

    [(UGCCallToActionViewProvider *)v11 setAlwaysRefinesUserSubmission:v10];
  }
}

- (void)poiEnrichmentCoordinator:(id)a3 didFinishSubmissionLookup:(id)a4
{
  v6 = a4;
  v5 = [v6 status];
  if (v5 == 1)
  {
    [(UGCCallToActionViewProvider *)self->_callToActionViewProvider updateWithFetchedLookupResult:v6];
  }

  else if (v5 == 3)
  {
    [(UGCCallToActionViewProvider *)self->_callToActionViewProvider resolveForUserEdit];
  }
}

- (void)_presentPOIEnrichmentCoordinator:(id)a3 withProgressObserver:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(PlaceCardViewController *)self _maps_mapsSceneDelegate];
  v8 = [v9 topMostPresentedViewController];
  [(PlaceCardViewController *)self _presentPOIEnrichmentCoordinator:v7 presentingViewController:v8 progressObserver:v6];
}

- (void)_presentPOIEnrichmentCoordinator:(id)a3 presentingViewController:(id)a4 progressObserver:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  if (self->_photoViewerScene)
  {
    +[MacPlacePhotoViewerScene teardownCurrentScene];
  }

  [v12 setPresentingViewController:v8];
  [v12 setSubmissionLookupObserver:v9];
  [v12 setSubmissionStatusDelegate:self];
  [v12 setPresentationContext:1];
  v10 = [(UGCCallToActionViewProvider *)self->_callToActionViewProvider lookupResult];
  [v12 setSubmissionLookupResult:v10];

  v11 = [(PlaceCardViewController *)self placeCardDelegate];
  [v11 placeCardViewController:self presentPOIEnrichmentWithCoordinator:v12];
}

- (void)placeViewController:(id)a3 didSelectAddRatingsWithPresentationOptions:(id)a4 overallState:(int64_t)a5 originTarget:(id)a6
{
  v15 = a4;
  v9 = a6;
  if (MapsFeature_IsEnabled_LagunaBeach())
  {
    if (a5 == 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2 * (a5 == 2);
    }

    v11 = [(PlaceCardViewController *)self placeCardItem];
    v12 = [v11 mapItem];
    v13 = [UGCPOIEnrichmentCoordinator ratingsAndPhotosCoordinatorWithMapItem:v12 initialOverallState:v10 entryPoint:0 originTarget:v9];

    v14 = [v15 progressObserver];
    [(PlaceCardViewController *)self _presentPOIEnrichmentCoordinator:v13 withProgressObserver:v14];
  }
}

- (void)placeViewController:(id)a3 didSelectEditSubmissionWithPresentationOptions:(id)a4
{
  v9 = a4;
  if (MapsFeature_IsEnabled_LagunaBeach())
  {
    v5 = [(PlaceCardViewController *)self placeCardItem];
    v6 = [v5 mapItem];
    v7 = [UGCPOIEnrichmentCoordinator ratingsAndPhotosCoordinatorWithMapItem:v6 entryPoint:0 originTarget:0];

    v8 = [v9 progressObserver];
    [(PlaceCardViewController *)self _presentPOIEnrichmentCoordinator:v7 withProgressObserver:v8];
  }
}

- (void)placeViewController:(id)a3 didSelectAddPhotosWithPresentationOptions:(id)a4 entryPoint:(int64_t)a5 originTarget:(id)a6
{
  v16 = a4;
  v9 = a6;
  if (MapsFeature_IsEnabled_LagunaBeach())
  {
    if (a5 == 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2 * (a5 == 2);
    }

    v11 = [(PlaceCardViewController *)self placeCardItem];
    v12 = [v11 mapItem];
    v13 = [UGCPOIEnrichmentCoordinator photoEmphasizedAddCoordinatorWithMapItem:v12 preferredSourceType:v10 originTarget:v9];

    v14 = [v16 sourceView];
    [v13 setAnchoringView:v14];

    v15 = [v16 progressObserver];
    [(PlaceCardViewController *)self _presentPOIEnrichmentCoordinator:v13 withProgressObserver:v15];
  }
}

- (void)placeViewControllerDidSelectSeeMorePhotos:(id)a3 withStartingIndex:(unint64_t)a4
{
  v6 = [a3 mapItem];
  v7 = [UGCPOIEnrichmentCoordinator photoThumbnailGalleryCoordinatorWithMapItem:v6 withStartingIndex:a4];

  [(PlaceCardViewController *)self _presentPOIEnrichmentCoordinator:v7 withProgressObserver:0];
}

- (void)_updatePlacecardCallToActionAnimated:(BOOL)a3
{
  v3 = a3;
  if (MapsFeature_IsEnabled_LagunaBeach())
  {
    v29 = v3;
    v5 = [(UGCCallToActionViewProvider *)self->_callToActionViewProvider submissionStatusAppearance];
    if (MapsFeature_IsEnabled_SydneyARP())
    {
      [(UGCSuggestionViewProvider *)self->_suggestionViewProvider setSubmissionStatus:v5];
      [(UGCInlinePOIEnrichmentController *)self->_inlineRatingsController setSubmissionStatus:v5];
      v6 = [(UGCCallToActionViewProvider *)self->_callToActionViewProvider lookupResult];
      [(UGCInlinePOIEnrichmentController *)self->_inlineRatingsController setLookupResult:v6];
    }

    v30 = v5;
    v28 = self;
    v7 = [(UGCCallToActionViewProvider *)self->_callToActionViewProvider lookupResult];
    v8 = [v7 previousSubmission];

    v27 = v8;
    v9 = [v8 scorecard];
    v10 = [UGCRatingCategory ratingCategoryListForScorecard:v9];

    v11 = objc_alloc_init(NSMutableArray);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v32;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v31 + 1) + 8 * i);
          v18 = objc_alloc_init(NSNumber);
          v19 = [v17 currentState];
          if (v19 <= 2)
          {
            v20 = off_10163BE90[v19];

            v18 = v20;
          }

          v21 = [MUUGCRatingViewModel alloc];
          v22 = [v17 localizedTitle];
          v23 = [v21 initWithCategory:v22 value:v18];

          [v11 addObject:v23];
        }

        v14 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v14);
    }

    v24 = [v5 type] == 4 && objc_msgSend(v5, "ratingState") != 0;
    if ([v5 type] != 5)
    {
      [(MUPlaceViewController *)v28->_placeViewController setPlaceHasRating:v24];
    }

    placeViewController = v28->_placeViewController;
    v26 = [v11 copy];
    [(MUPlaceViewController *)placeViewController updateViewsWithSubmissionStatus:v30 userRatings:v26 animated:v29];
  }
}

- (void)inlinePOIEnrichmentControllerPresentPOIEnrichment:(id)a3
{
  v4 = [(PlaceCardViewController *)self placeCardItem];
  v5 = [v4 mapItem];
  v7 = [UGCPOIEnrichmentCoordinator ratingsAndPhotosCoordinatorWithMapItem:v5 initialOverallState:0 entryPoint:3 originTarget:0];

  v6 = [(PlaceCardViewController *)self placeCardDelegate];
  [v6 placeCardViewController:self presentPOIEnrichmentWithCoordinator:v7];
}

- (void)inlinePOIEnrichmentController:(id)a3 didSelectTermsOfServiceURL:(id)a4
{
  v5 = a4;
  v6 = [(PlaceCardViewController *)self placeCardDelegate];
  [v6 placeCardViewController:self openURL:v5];
}

- (void)didSelectSharePublisherGuide:(id)a3
{
  v4 = a3;
  v5 = [CuratedCollectionShareItemSource alloc];
  v6 = [v4 publisher];

  v8 = [(CuratedCollectionShareItemSource *)v5 initWithPublisher:v6];
  v7 = [(PlaceCardViewController *)self placeCardDelegate];
  [v7 placeCardViewController:self didSelectSharePublisherShareItem:v8];
}

- (void)didSelectSavePublisherGuide:(id)a3
{
  v3 = a3;
  v4 = +[CuratedCollectionSyncManager sharedManager];
  [v4 addSavedCuratedCollection:v3 completion:0];
}

- (void)didSelectShowPublisherForPublisherGuide:(id)a3
{
  v4 = a3;
  v6 = [(PlaceCardViewController *)self placeCardDelegate];
  v5 = [v4 publisher];

  [v6 placeCardViewController:self didSelectShowPublisherForPublisher:v5];
}

- (void)placeViewController:(id)a3 seeAllCollections:(id)a4 usingTitle:(id)a5 usingCollectionIds:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [(PlaceCardViewController *)self placeCardDelegate];
  [v12 placeCardViewController:self seeAllCollections:v11 usingTitle:v10 usingCollectionIds:v9];
}

- (void)placeViewController:(id)a3 selectExploreGuidesWithGuideLocation:(id)a4
{
  v5 = a4;
  v6 = [(PlaceCardViewController *)self placeCardDelegate];
  [v6 placeCardViewController:self selectExploreGuidesWithGuideLocation:v5];
}

- (void)placeViewController:(id)a3 selectCuratedCollectionIdentifier:(id)a4
{
  v5 = a4;
  v6 = [(PlaceCardViewController *)self placeCardDelegate];
  [v6 placeCardViewController:self showCuratedCollectionIdentifier:v5];
}

- (void)placeViewController:(id)a3 selectCuratedCollection:(id)a4
{
  v5 = a4;
  v6 = [(PlaceCardViewController *)self placeCardDelegate];
  [v6 placeCardViewController:self showCuratedCollection:v5];
}

- (id)placeViewControllerUserIcon:(id)a3
{
  v3 = +[UserInformationManager sharedInstance];
  v4 = [v3 userIcon];

  return v4;
}

- (unint64_t)_numberOfRAPsInReview
{
  if (!_MKRAPIsAvailable())
  {
    return 0;
  }

  if (sub_1007413D0())
  {
    return 0;
  }

  if (!MapsFeature_IsEnabled_RAPSydney())
  {
    return 0;
  }

  v3 = [(PlaceCardViewController *)self mapItem];
  v4 = [v3 _identifier];

  if (!v4)
  {
    return 0;
  }

  v5 = +[UserProfileReportHistoryManager sharedInstance];
  v6 = [v5 rapHistory];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100B954C0;
  v10[3] = &unk_10163BC88;
  v10[4] = self;
  v7 = sub_1000282CC(v6, v10);
  v8 = [v7 count];

  return v8;
}

- (void)_updateRAPInReviewStatus
{
  [(MUPlaceViewController *)self->_placeViewController setPlaceNumberOfReportsInReview:[(PlaceCardViewController *)self _numberOfRAPsInReview]];
  placeViewController = self->_placeViewController;

  [(MUPlaceViewController *)placeViewController updatePlaceInfo];
}

- (void)placeEnrichmentAPIContollerDidFetchEnrichmentData:(id)a3 forMapItem:(id)a4
{
  v5 = a4;
  v6 = [(PlaceCardViewController *)self placeCardItem];
  v7 = [v6 mapItem];
  v8 = [v7 isEqual:v5];

  if (v8)
  {
    placeViewController = self->_placeViewController;

    [(MUPlaceViewController *)placeViewController updatePlaceEnrichment];
  }
}

- (void)_updateCollectionsAnimated:(BOOL)a3
{
  [(MUPlaceViewController *)self->_placeViewController updateCollectionViewsAnimated:a3];
  [(MUPlaceViewController *)self->_placeViewController setPlaceInCollections:[(PlaceCardViewController *)self _collectionsCount]!= 0];
  [(MUPlaceViewController *)self->_placeViewController updateActionRowView];

  [(InfoCardViewController *)self rebuildHeaderMenu];
}

- (void)_addPlaceToCollection:(id)a3 editCollection:(BOOL)a4
{
  v6 = a3;
  v7 = [(PlaceCardViewController *)self placeCardItem];
  v8 = [v7 mapItem];

  v9 = [(PlaceCardViewController *)self placeCardDelegate];
  objc_initWeak(&location, self);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100B9596C;
  v20[3] = &unk_10163BC60;
  v10 = v6;
  v21 = v10;
  v11 = v8;
  v22 = v11;
  v25 = a4;
  v12 = v9;
  v23 = v12;
  objc_copyWeak(&v24, &location);
  v13 = objc_retainBlock(v20);
  v14 = [(PlaceCardViewController *)self placeCardItem];
  if ([v14 isDroppedPin])
  {
  }

  else
  {
    v15 = [v11 _maps_canRenameCollectionItem];

    if ((v15 & 1) == 0)
    {
      (v13[2])(v13);
      goto LABEL_6;
    }
  }

  v16 = [(PlaceCardViewController *)self placeCardDelegate];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100B95A80;
  v17[3] = &unk_10165F618;
  v18 = v11;
  v19 = v13;
  [v16 placeCardViewController:self editNameOfMapItem:v18 saveHandler:v17 cancelHandler:0];

LABEL_6:
  objc_destroyWeak(&v24);

  objc_destroyWeak(&location);
}

- (void)placeViewController:(id)a3 selectCollectionIdentifier:(id)a4
{
  v5 = [(PlaceCardCollectionMembershipProvider *)self->_collectionMembershipProvider containingCollectionWithIdentifer:a4];
  if (v5)
  {
    v7 = v5;
    v6 = [(PlaceCardViewController *)self placeCardDelegate];
    [v6 placeCardViewController:self showCollection:v7];

    v5 = v7;
  }
}

- (void)placeViewController:(id)a3 didSelectAddToCollectionWithPlaceActionEnvironment:(id)a4 showsAddToLibrarySection:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(PlaceCardViewController *)self placeCardItem];
  v11 = [v10 mapItem];

  v12 = [(CollectionSaveSession *)[CollectionAddOrRemoveSession alloc] initWithMapItem:v11 showsAddToLibrarySection:v5];
  objc_initWeak(&location, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100B95DC8;
  v16[3] = &unk_10163BC10;
  objc_copyWeak(&v18, &location);
  v13 = v9;
  v17 = v13;
  [(CollectionEditSession *)v12 setAnalyticsHandler:v16];
  v14 = [v13 sourceView];
  v15 = [(PlaceCardViewController *)self placeCardDelegate];
  [v14 bounds];
  [v15 placeCardViewController:self pickCollectionWithSession:v12 sourceView:v14 sourceRect:?];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (id)placeViewController:(id)a3 webPlacecardGuidesForPlaceItem:(id)a4
{
  v5 = [a4 mapItem];
  if (v5)
  {
    v22 = v5;
    v24 = objc_alloc_init(NSMutableArray);
    [(PlaceCardCollectionMembershipProvider *)self->_collectionMembershipProvider containingCollections];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v28 = 0u;
    v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v25 + 1) + 8 * i);
          v11 = [v10 image];
          v12 = UIImagePNGRepresentation(v11);

          v13 = [MUPersonalGuideViewModel alloc];
          v14 = [v10 identifier];
          v15 = [v10 title];
          v16 = [v10 numberOfItems];
          v17 = [v16 unsignedIntegerValue];
          v18 = [v12 base64EncodedStringWithOptions:0];
          v19 = [v13 initWithGuideID:v14 title:v15 numberOfPlaces:v17 image:v18];

          [v24 addObject:v19];
        }

        v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v7);
    }

    v20 = [v24 copy];

    v5 = v22;
  }

  else
  {
    v20 = &__NSArray0__struct;
  }

  return v20;
}

- (id)placeViewController:(id)a3 collectionViewsForPlaceItem:(id)a4
{
  v5 = [a4 mapItem];
  if (v5)
  {
    v21 = v5;
    v6 = +[NSMutableDictionary dictionary];
    v7 = [(PlaceCardCollectionMembershipProvider *)self->_collectionMembershipProvider containingCollections];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      y = CGRectZero.origin.y;
      width = CGRectZero.size.width;
      height = CGRectZero.size.height;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          if (sub_10000FA08(self) == 5)
          {
            v16 = [[TwoLinesContentView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
            v17 = [TwoLinesContentViewModelComposer cellModelForCollection:v15];
            [(TwoLinesContentView *)v16 setViewModel:v17];
          }

          else
          {
            v16 = [[CollectionView alloc] initWithCollectionViewSize:0];
            [(TwoLinesContentView *)v16 setCollectionInfo:v15];
          }

          v18 = [v15 identifier];
          [v6 setObject:v16 forKeyedSubscript:v18];
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    v19 = [v6 copy];

    v5 = v21;
  }

  else
  {
    v19 = &__NSDictionary0__struct;
  }

  return v19;
}

- (unint64_t)_collectionsCount
{
  v2 = [(PlaceCardCollectionMembershipProvider *)self->_collectionMembershipProvider containingCollections];
  v3 = [v2 count];

  return v3;
}

- (id)menuElementForActionItem:(id)a3
{
  v4 = a3;
  v29 = v4;
  if ([v4 type] == 16)
  {
    v5 = [MapsMenuBuilder sendToDeviceAndShareMenuWithSendToDeviceEnabled:1];
LABEL_3:
    v6 = v5;
    goto LABEL_28;
  }

  if ([v4 type] != 21)
  {
    if ([v4 type] == 2)
    {
      objc_initWeak(&location, self);
      if (GEOConfigGetBOOL())
      {
        v24 = +[NSBundle mainBundle];
        [v24 localizedStringForKey:@"[Placecard Menu] Report Something Missing" value:@"localized string not found" table:0];
      }

      else
      {
        v24 = +[NSBundle mainBundle];
        [v24 localizedStringForKey:@"[Menu] Add to Maps" value:@"localized string not found" table:0];
      }
      v26 = ;

      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_100B96B24;
      v33[3] = &unk_101661900;
      objc_copyWeak(&v34, &location);
      v6 = [UIAction actionWithTitle:v26 image:0 identifier:0 handler:v33];
      objc_destroyWeak(&v34);

      objc_destroyWeak(&location);
      goto LABEL_28;
    }

    v32.receiver = self;
    v32.super_class = PlaceCardViewController;
    v5 = [(InfoCardViewController *)&v32 menuElementForActionItem:v4];
    goto LABEL_3;
  }

  v7 = [(PlaceCardViewController *)self placeCardItem];
  v28 = [v7 mapItem];

  if (v28)
  {
    v8 = +[CollectionManager sharedManager];
    v9 = [v8 collectionsNotContainingMapItem:v28];

    v31 = +[NSMutableArray array];
    objc_initWeak(&location, self);
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = v9;
    v10 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v10)
    {
      v11 = *v41;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v41 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v40 + 1) + 8 * i);
          v14 = [v13 title];
          v15 = v14;
          if (v14)
          {
            v16 = v14;
          }

          else
          {
            v16 = &stru_1016631F0;
          }

          v38[0] = _NSConcreteStackBlock;
          v38[1] = 3221225472;
          v38[2] = sub_100B969AC;
          v38[3] = &unk_101660418;
          objc_copyWeak(&v39, &location);
          v38[4] = v13;
          v17 = [UIAction actionWithTitle:v16 image:0 identifier:0 handler:v38];

          [v31 addObject:v17];
          objc_destroyWeak(&v39);
        }

        v10 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v10);
    }

    v18 = +[NSBundle mainBundle];
    v19 = [v18 localizedStringForKey:@"[Place Card] New Guide…" value:@"localized string not found" table:0];

    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100B96A00;
    v35[3] = &unk_101660418;
    objc_copyWeak(&v37, &location);
    v36 = v28;
    v20 = [UIAction actionWithTitle:v19 image:0 identifier:0 handler:v35];
    v45 = v20;
    v21 = [NSArray arrayWithObjects:&v45 count:1];
    v22 = [UIMenu menuWithTitle:&stru_1016631F0 image:0 identifier:0 options:1 children:v21];

    [v31 addObject:v22];
    if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
    {
      v23 = +[NSBundle mainBundle];
      [v23 localizedStringForKey:@"[Library] Add to a Guide" value:@"localized string not found" table:0];
    }

    else
    {
      v23 = +[NSBundle mainBundle];
      [v23 localizedStringForKey:@"[Place Card] Save to Guide" value:@"localized string not found" table:0];
    }
    v25 = ;

    v6 = [UIMenu menuWithTitle:v25 children:v31];

    objc_destroyWeak(&v37);
    objc_destroyWeak(&location);
  }

  else
  {
    v6 = 0;
  }

LABEL_28:

  return v6;
}

- (id)alternatePrimaryButtonControllerForPlaceViewController:(id)a3
{
  v4 = a3;
  if (sub_10000FA08(self) == 5)
  {
    objc_initWeak(&location, self);
    v5 = +[NSBundle mainBundle];
    v6 = [v5 localizedStringForKey:@"Plan Route [Place Card]" value:@"localized string not found" table:0];
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"From Here[Place Card]" value:@"localized string not found" table:0];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100B96D64;
    v11[3] = &unk_101656BC8;
    objc_copyWeak(&v12, &location);
    v9 = [_MKPlaceActionButtonController actionButtonControllerWithTitle:v6 subTitle:v8 selectedBlock:v11];
    objc_destroyWeak(&v12);

    objc_destroyWeak(&location);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)placeViewControllerDidUpdateHeight:(id)a3
{
  if (self->_shouldFetchDraggableViews)
  {
    v4 = [(PlaceCardViewController *)self placeCardItem];
    v5 = [v4 isIntermediateMapItem];

    if ((v5 & 1) == 0)
    {
      v6 = [(MUPlaceViewController *)self->_placeViewController draggableContent];
      [(PlaceCardViewController *)self setDraggableContent:v6];
    }
  }
}

- (void)_routeFromCurrentSearchResult
{
  v3 = sub_100B9707C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Routing from current search result", v15, 2u);
  }

  v4 = objc_alloc_init(SearchFieldItem);
  v5 = [(PlaceCardItem *)self->_placeCardItem searchResult];
  if (v5)
  {
    [(SearchFieldItem *)v4 setSearchResult:v5];
  }

  else
  {
    v6 = [SearchResult alloc];
    v7 = [(PlaceCardItem *)self->_placeCardItem mapItem];
    v8 = [(SearchResult *)v6 initWithMapItem:v7];
    [(SearchFieldItem *)v4 setSearchResult:v8];
  }

  v9 = [DirectionItem alloc];
  v18[0] = v4;
  v10 = objc_opt_new();
  v18[1] = v10;
  v11 = [NSArray arrayWithObjects:v18 count:2];
  v12 = [(DirectionItem *)v9 initWithItems:v11 transportType:0];

  if (+[PlaceCardViewController shouldInsertRecentPOIForRouting])
  {
    [(PlaceCardViewController *)self insertInHistory];
  }

  v16[0] = @"DirectionsRestoreCamera";
  v16[1] = @"DirectionsSessionInitiatorKey";
  v17[0] = &__kCFBooleanTrue;
  v17[1] = &off_1016E8AC8;
  v13 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:2];
  v14 = [(PlaceCardViewController *)self placeCardDelegate];
  [v14 placeCardViewController:self doDirectionItem:v12 userInfo:v13];
}

- (void)_routeToCurrentSearchResultWithTransportType:(int64_t)a3
{
  v5 = sub_100B9707C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    if ((a3 - 1) > 4)
    {
      v6 = @"Undefined";
    }

    else
    {
      v6 = off_10163BE68[a3 - 1];
    }

    *buf = 138412290;
    v29 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Routing to current search result with transport type: %@", buf, 0xCu);
  }

  v7 = [(PlaceCardViewController *)self isAdditionalStop];
  v8 = objc_alloc_init(SearchFieldItem);
  if (v7)
  {
    v9 = [(PlaceCardItem *)self->_placeCardItem searchResult];
    if (v9)
    {
      [(SearchFieldItem *)v8 setSearchResult:v9];
    }

    else
    {
      v13 = [SearchResult alloc];
      v14 = [(PlaceCardItem *)self->_placeCardItem mapItem];
      v15 = [(SearchResult *)v13 initWithMapItem:v14];
      [(SearchFieldItem *)v8 setSearchResult:v15];
    }

    v27 = v8;
    v16 = [NSArray arrayWithObjects:&v27 count:1];
  }

  else
  {
    v10 = +[SearchResult currentLocationSearchResult];
    [(SearchFieldItem *)v8 setSearchResult:v10];

    v11 = objc_alloc_init(SearchFieldItem);
    v12 = [(PlaceCardItem *)self->_placeCardItem searchResult];
    if (v12)
    {
      [(SearchFieldItem *)v11 setSearchResult:v12];
    }

    else
    {
      v17 = [SearchResult alloc];
      v18 = [(PlaceCardItem *)self->_placeCardItem mapItem];
      v19 = [(SearchResult *)v17 initWithMapItem:v18];
      [(SearchFieldItem *)v11 setSearchResult:v19];
    }

    v26[0] = v8;
    v26[1] = v11;
    v16 = [NSArray arrayWithObjects:v26 count:2];
  }

  v20 = [[DirectionItem alloc] initWithItems:v16 transportType:a3];
  if (+[PlaceCardViewController shouldInsertRecentPOIForRouting])
  {
    [(PlaceCardViewController *)self insertInHistory];
  }

  v24[0] = @"DirectionsRestoreCamera";
  v24[1] = @"DirectionsSessionInitiatorKey";
  v25[0] = &__kCFBooleanTrue;
  v25[1] = &off_1016E8AC8;
  v24[2] = @"DirectionsAppendContentsOfItem";
  v21 = [NSNumber numberWithBool:[(PlaceCardViewController *)self isAdditionalStop]];
  v25[2] = v21;
  v22 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:3];

  v23 = [(PlaceCardViewController *)self placeCardDelegate];
  [v23 placeCardViewController:self doDirectionItem:v20 userInfo:v22];
}

- (int64_t)overriddenInterfaceStyleForPlaceViewControllerSubviews:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_placeCardDelegate);
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = objc_loadWeakRetained(&self->_placeCardDelegate);
  v7 = [v6 overriddenInterfaceStyleForPlaceViewControllerSubviews:self];

  return v7;
}

- (id)activityViewControllerForPlaceViewController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_placeCardDelegate);
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0 || (v6 = objc_loadWeakRetained(&self->_placeCardDelegate), [v6 activityViewControllerForPlaceViewController:self], v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    v8 = [MapsActivityViewController alloc];
    v9 = [(PlaceCardViewController *)self shareItemSource];
    v7 = [(MapsActivityViewController *)v8 initWithShareItem:v9];

    v10 = +[UIApplication sharedMapsDelegate];
    v11 = [v10 appCoordinator];
    [(MapsActivityViewController *)v7 setMapsActivityDelegate:v11];
  }

  return v7;
}

- (id)shareItemSource
{
  v3 = [(PlaceCardViewController *)self placeCardItem];
  if ([v3 isCurrentLocation])
  {
    updatedCurrentLocation = self->_updatedCurrentLocation;
    if (updatedCurrentLocation)
    {
      v5 = updatedCurrentLocation;
    }

    else
    {
      v8 = [(PlaceCardViewController *)self placeCardItem];
      v5 = [v8 mapItem];
    }

    v9 = [ShareItem shareItemForCurrentLocationIncludingPrintActivity:1 withBackingMapItem:v5];
  }

  else
  {
    v6 = [v3 searchResult];
    v7 = v6;
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      v10 = [SearchResult alloc];
      v11 = [v3 mapItem];
      v5 = [(SearchResult *)v10 initWithMapItem:v11];
    }

    v12 = [v3 address];

    if (v12)
    {
      v13 = [v3 address];
      [(MKMapItem *)v5 setAddress:v13];
    }

    v14 = [v3 contact];
    if (v14 && (v15 = v14, [v3 address], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v16))
    {
      v17 = objc_alloc_init(CNMutableContact);
      v18 = [v3 contact];
      [v17 setContactType:{objc_msgSend(v18, "contactType")}];

      if (![v17 contactType])
      {
        v19 = [v3 contact];
        v20 = [v19 namePrefix];
        [v17 setNamePrefix:v20];

        v21 = [v3 contact];
        v22 = [v21 givenName];
        [v17 setGivenName:v22];

        v23 = [v3 contact];
        v24 = [v23 familyName];
        [v17 setFamilyName:v24];

        v25 = [v3 contact];
        v26 = [v25 nameSuffix];
        [v17 setNameSuffix:v26];
      }

      v27 = [CNContactFormatter stringFromContact:v17 style:0];
      if ([v17 contactType] == 1 || !objc_msgSend(v27, "length"))
      {
        v28 = [v3 contact];
        v29 = [v28 organizationName];
        [v17 setOrganizationName:v29];
      }

      v30 = [v3 address];
      v31 = [v30 addressValue];

      if (v31)
      {
        v36 = v31;
        v32 = [NSArray arrayWithObjects:&v36 count:1];
        [v17 setPostalAddresses:v32];
      }

      v33 = [v17 copy];
    }

    else
    {
      v33 = [(MKMapItem *)v5 unknownContact];
    }

    if (sub_10000FA08(self) == 5)
    {
      v34 = &__NSArray0__struct;
    }

    else
    {
      v34 = [(MUPlaceViewController *)self->_placeViewController createShareSheetFooterActions];
    }

    v9 = [ShareItem shareItemWithSearchResult:v5 contact:v33 includePrintActivity:1 applicationActivities:v34];
  }

  return v9;
}

- (void)placeViewController:(id)a3 didSelectRouteToCurrentSearchResultWithTransportTypePreference:(id)a4
{
  v5 = a4;
  v6 = sub_100B9707C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "didSelectRouteToCurrentSearchResultWithTransportTypePreference: %@", &v9, 0xCu);
  }

  if (v5)
  {
    v7 = [v5 integerValue];
    if ((v7 - 1) < 4)
    {
      v8 = (v7 + 1);
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  [(PlaceCardViewController *)self _routeToCurrentSearchResultWithTransportType:v8];
}

- (void)placeViewController:(id)a3 didSelectDirectionsForDestinationAddress:(id)a4 contact:(id)a5 transportType:(id)a6
{
  v9 = a4;
  if (v9 && a5)
  {
    v10 = a6;
    v11 = a5;
    v12 = [[AddressBookAddress alloc] initWithContact:v11 addressValue:v9];

    v13 = [SearchResult alloc];
    v14 = [(AddressBookAddress *)v12 generatedMapItem];
    v15 = [(SearchResult *)v13 initWithMapItem:v14];

    v16 = [(PlaceCardViewController *)self isAdditionalStop];
    v17 = objc_alloc_init(SearchFieldItem);
    if (v16)
    {
      v18 = [[SearchResult alloc] initWithSearchResult:v15 address:v12];
      [(SearchFieldItem *)v17 setSearchResult:v18];

      v39 = v17;
      v19 = [NSArray arrayWithObjects:&v39 count:1];
    }

    else
    {
      v20 = +[SearchResult currentLocationSearchResult];
      [(SearchFieldItem *)v17 setSearchResult:v20];

      v21 = objc_alloc_init(SearchFieldItem);
      v35 = v15;
      v22 = [[SearchResult alloc] initWithSearchResult:v15 address:v12];
      v23 = [v9 identifier];
      v24 = +[_TtC4Maps22MapsAutocompletePerson sharedLocationLabelIdentifier];
      v25 = [v23 isEqualToString:v24];

      if (v25)
      {
        v26 = [(PlaceCardItem *)self->_placeCardItem searchResult];
        v27 = [v26 autocompletePerson];
        [(SearchResult *)v22 setAutocompletePerson:v27];
      }

      [(SearchFieldItem *)v21 setSearchResult:v22];
      v38[0] = v17;
      v38[1] = v21;
      v19 = [NSArray arrayWithObjects:v38 count:2];

      v15 = v35;
    }

    v28 = [DirectionItem alloc];
    v29 = [v10 integerValue];

    if ((v29 - 1) < 4)
    {
      v30 = (v29 + 1);
    }

    else
    {
      v30 = 1;
    }

    v31 = [(DirectionItem *)v28 initWithItems:v19 transportType:v30];
    v36[0] = @"DirectionsRestoreCamera";
    v36[1] = @"DirectionsSessionInitiatorKey";
    v37[0] = &__kCFBooleanTrue;
    v37[1] = &off_1016E8AC8;
    v36[2] = @"DirectionsAppendContentsOfItem";
    v32 = [NSNumber numberWithBool:[(PlaceCardViewController *)self isAdditionalStop]];
    v37[2] = v32;
    v33 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:3];

    v34 = [(PlaceCardViewController *)self placeCardDelegate];
    [v34 placeCardViewController:self doDirectionItem:v31 userInfo:v33];
  }
}

- (void)placeViewController:(id)a3 didSelectDirectionsForDestinationMapItem:(id)a4 transportType:(id)a5
{
  v7 = a4;
  if (v7)
  {
    v8 = a5;
    v9 = [(PlaceCardViewController *)self isAdditionalStop];
    v10 = objc_alloc_init(SearchFieldItem);
    if (v9)
    {
      v11 = [[SearchResult alloc] initWithMapItem:v7];
      [(SearchFieldItem *)v10 setSearchResult:v11];

      v26 = v10;
      v12 = [NSArray arrayWithObjects:&v26 count:1];
    }

    else
    {
      v13 = +[SearchResult currentLocationSearchResult];
      [(SearchFieldItem *)v10 setSearchResult:v13];

      v14 = objc_alloc_init(SearchFieldItem);
      v15 = [[SearchResult alloc] initWithMapItem:v7];
      [(SearchFieldItem *)v14 setSearchResult:v15];

      v25[0] = v10;
      v25[1] = v14;
      v12 = [NSArray arrayWithObjects:v25 count:2];
    }

    v16 = [DirectionItem alloc];
    v17 = [v8 integerValue];

    if ((v17 - 1) < 4)
    {
      v18 = (v17 + 1);
    }

    else
    {
      v18 = 1;
    }

    v19 = [(DirectionItem *)v16 initWithItems:v12 transportType:v18];
    v20 = [NSNumber numberWithBool:[(PlaceCardViewController *)self isAdditionalStop:@"DirectionsRestoreCamera"]];
    v24[2] = v20;
    v21 = [NSDictionary dictionaryWithObjects:v24 forKeys:&v23 count:3];

    v22 = [(PlaceCardViewController *)self placeCardDelegate];
    [v22 placeCardViewController:self doDirectionItem:v19 userInfo:v21];
  }
}

- (id)traitsForPlaceViewController:(id)a3
{
  v3 = [(PlaceCardViewController *)self placeCardDelegate];
  v4 = [v3 newTraits];

  return v4;
}

- (double)placeViewControllerPlaceCardHeaderTitlePaddingConstant:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PlaceCardViewController;
  v5 = 0.0;
  if ([(PlaceCardViewController *)&v9 respondsToSelector:"placeViewControllerPlaceCardHeaderTitlePaddingConstant:"])
  {
    v8.receiver = self;
    v8.super_class = PlaceCardViewController;
    [(InfoCardViewController *)&v8 placeViewControllerPlaceCardHeaderTitlePaddingConstant:v4];
    v5 = v6;
  }

  return v5;
}

- (double)placeViewControllerPlaceCardHeaderTitleTrailingConstant:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PlaceCardViewController;
  v5 = 0.0;
  if ([(PlaceCardViewController *)&v9 respondsToSelector:"placeViewControllerPlaceCardHeaderTitleTrailingConstant:"])
  {
    v8.receiver = self;
    v8.super_class = PlaceCardViewController;
    [(InfoCardViewController *)&v8 placeViewControllerPlaceCardHeaderTitleTrailingConstant:v4];
    v5 = v6;
  }

  return v5;
}

- (void)placeViewController:(id)a3 launchAttributionURLs:(id)a4 withAttribution:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v9 = a5;
  v10 = a6;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    v21 = v10;
    v22 = v9;
    while (2)
    {
      v15 = 0;
      do
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [NSURL URLWithString:*(*(&v24 + 1) + 8 * v15)];
        v17 = [v16 scheme];
        if ([v17 isEqualToString:@"http"])
        {

LABEL_12:
          v20 = [(PlaceCardViewController *)self placeCardDelegate];
          [v20 placeCardViewController:self openURL:v16];

          v10 = v21;
          v9 = v22;
          goto LABEL_13;
        }

        v18 = [v16 scheme];
        v19 = [v18 isEqualToString:@"https"];

        if (v19)
        {
          goto LABEL_12;
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      v10 = v21;
      v9 = v22;
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  [MKAppLaunchController launchAttributionURLs:v11 withAttribution:v9 completionHandler:v10];
LABEL_13:
}

- (void)updateForViewMode:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_placeCardDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_placeCardDelegate);
    [v7 placeCardViewController:self didUpdateForViewMode:a3];
  }
}

- (void)initPlaceCard
{
  if (!self->_placeViewController)
  {
    v3 = [[MUPlaceViewController alloc] initWithMapItem:0];
    placeViewController = self->_placeViewController;
    self->_placeViewController = v3;

    [(MUPlaceViewController *)self->_placeViewController setPlaceViewControllerDelegate:self];
    [(MUPlaceViewController *)self->_placeViewController setMapsAppDelegate:self];
    [(InfoCardViewController *)self setContentViewController:self->_placeViewController];
    v5 = +[UIColor clearColor];
    v6 = [(MUPlaceViewController *)self->_placeViewController view];
    [v6 setBackgroundColor:v5];

    v7 = [(MUPlaceViewController *)self->_placeViewController view];
    [v7 _setHostsLayoutEngine:1];

    v8 = objc_alloc_init(_TtC4Maps34MapsSyncPlaceItemMapStorageUpdater);
    mapsSyncPlaceItemMapStorageUpdater = self->_mapsSyncPlaceItemMapStorageUpdater;
    self->_mapsSyncPlaceItemMapStorageUpdater = v8;

    v10 = [[_TtC4Maps24InfoCardTipKitController alloc] initWithHostViewController:self];
    tipKitController = self->_tipKitController;
    self->_tipKitController = v10;

    v15 = +[GEOPlatform sharedPlatform];
    if ([v15 isInternalInstall])
    {
      v12 = +[NSUserDefaults standardUserDefaults];
      v13 = [v12 BOOLForKey:@"EnablePlacecardImpressionLoggingVisualization"];

      if (!v13)
      {
        return;
      }

      v15 = +[MapsImpressionsPlaceCardFloatingDebugViewController sharedInstance];
      v14 = [(MUPlaceViewController *)self->_placeViewController impressionsCalculator];
      [v15 setCalculator:v14];

      if (([v15 isAttached] & 1) == 0)
      {
        [v15 attach];
      }
    }
  }
}

- (BOOL)placeViewController:(id)a3 presentOfflineAlertIfNecessaryForUGC:(int64_t)a4
{
  v6 = +[MapsOfflineUIHelper sharedHelper];
  v7 = [v6 isUsingOfflineMaps];

  if (v7)
  {
    v8 = sub_100B9707C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Attempting to initate a UGC action (Add to Favorites Guide, Rate, etc) while using Offline Maps. Presenting error alert.", v13, 2u);
    }

    v9 = 0;
    if (a4 <= 2)
    {
      switch(a4)
      {
        case 0:
          v10 = +[MapsOfflineUIHelper sharedHelper];
          v11 = [v10 alertControllerForAttemptedAddNote];
          goto LABEL_20;
        case 1:
          v10 = +[MapsOfflineUIHelper sharedHelper];
          v11 = [v10 alertControllerForAttemptedAddToPlaces];
          goto LABEL_20;
        case 2:
          v10 = +[MapsOfflineUIHelper sharedHelper];
          v11 = [v10 alertControllerForAttemptedAddShortcut];
          goto LABEL_20;
      }
    }

    else if (a4 > 5)
    {
      if (a4 == 6)
      {
        v10 = +[MapsOfflineUIHelper sharedHelper];
        v11 = [v10 alertControllerForAttemptedAddPhotos];
        goto LABEL_20;
      }

      if (a4 == 7)
      {
        v10 = +[MapsOfflineUIHelper sharedHelper];
        v11 = [v10 alertControllerForAttemptedReportAnIssue];
        goto LABEL_20;
      }
    }

    else
    {
      if ((a4 - 3) < 2)
      {
        v10 = +[MapsOfflineUIHelper sharedHelper];
        v11 = [v10 alertControllerForAttemptedAddCollection];
LABEL_20:
        v9 = v11;

        goto LABEL_21;
      }

      if (a4 == 5)
      {
        v10 = +[MapsOfflineUIHelper sharedHelper];
        v11 = [v10 alertControllerForAttemptedRate];
        goto LABEL_20;
      }
    }

LABEL_21:
    [(PlaceCardViewController *)self presentViewController:v9 animated:1 completion:0];
  }

  return v7;
}

- (void)_clearOfflineDownloadTipIfNeeded
{
  v3 = [(MUPlaceViewController *)self->_placeViewController offlineFeatureDiscoveryView];

  if (v3)
  {
    placeViewController = self->_placeViewController;

    [(MUPlaceViewController *)placeViewController setOfflineFeatureDiscoveryView:0];
  }
}

- (void)_updateOfflineFeatureDiscoveryViewIfNeededWithMapItem:(id)a3
{
  v4 = a3;
  UInteger = GEOConfigGetUInteger();
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 BOOLForKey:@"OfflineMapsPlaceCardDownloadTipsShownKey"];

  v8 = +[NSUserDefaults standardUserDefaults];
  v9 = [v8 integerForKey:@"OfflineMapsPlaceCardDownloadTipsDisplayedCountKey"];

  if ((v7 & 1) == 0 && v9 < UInteger)
  {
    v10 = +[MapsOfflineUIHelper sharedHelper];
    v11 = [v4 _displayMapRegion];
    v12 = [v10 isRegionDownloaded:v11 requireFullyDownloaded:0];

    if ((v12 & 1) == 0 && (([v4 _maps_isLargeAreaPlace] & 1) != 0 || objc_msgSend(v4, "_isMapItemTypeSettlement")))
    {
      v13 = objc_alloc_init(ImageIconWithBackgroundConfiguration);
      [(ImageIconWithBackgroundConfiguration *)v13 setIconSize:35.0, 35.0];
      v14 = +[UIColor secondaryLabelColor];
      [(ImageIconWithBackgroundConfiguration *)v13 setTintColor:v14];

      v15 = +[UIColor clearColor];
      [(ImageIconWithBackgroundConfiguration *)v13 setBackgroundColor:v15];

      v16 = [UIImageSymbolConfiguration configurationWithPointSize:34.0];
      [UIImage systemImageNamed:@"arrow.down.circle" withConfiguration:v16];
      v17 = v28 = self;
      v29 = [v17 _maps_imageIconWithBackgroundConfiguration:v13];

      v18 = +[NSBundle mainBundle];
      v19 = [v18 localizedStringForKey:@"[Offline] download tip title in placecard" value:@"localized string not found" table:@"Offline"];
      v20 = [v4 name];
      v21 = [NSString stringWithFormat:v19, v20];

      v22 = +[NSBundle mainBundle];
      v23 = [v22 localizedStringForKey:@"[Offline] download tip subtitle in placecard" value:@"localized string not found" table:@"Offline"];

      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100B98CAC;
      v30[3] = &unk_101661B18;
      v30[4] = v28;
      LOBYTE(v27) = 1;
      v24 = [[FeatureDiscoveryModel alloc] initWithImage:v29 title:v21 subtitle:v23 actionTitle:0 actionHandler:0 bodyTapHandler:0 displayedHandler:0 dismissHandler:v30 disableAffordanceAfterAction:v27];
      [(FeatureDiscoveryModel *)v24 setIsTipMode:1];
      v25 = [[FeatureDiscoveryView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
      [(FeatureDiscoveryView *)v25 setModel:v24];
      [(MUPlaceViewController *)v28->_placeViewController setOfflineFeatureDiscoveryView:v25];
      v26 = +[NSUserDefaults standardUserDefaults];
      [v26 setInteger:v9 + 1 forKey:@"OfflineMapsPlaceCardDownloadTipsDisplayedCountKey"];
    }
  }
}

- (void)didScrollPastTransition
{
  v3.receiver = self;
  v3.super_class = PlaceCardViewController;
  [(InfoCardViewController *)&v3 didScrollPastTransition];
  if (sub_10000FA08(self) == 5)
  {
    self->_wantsInsertOnDismiss = 1;
  }

  else
  {
    [(PlaceCardViewController *)self insertInHistory];
  }
}

- (void)insertInHistory
{
  if (!self->_didInsertInHistory && self->_shouldInsertInHistory)
  {
    placeCardItem = self->_placeCardItem;
    if (placeCardItem)
    {
      if ([(PlaceCardItem *)placeCardItem shouldInsertInHistory])
      {
        v4 = [(PlaceCardItem *)self->_placeCardItem mapItem];
        v5 = [(PlaceCardItem *)self->_placeCardItem searchResult];
        v6 = [v5 searchToSupersedeIfRecordedInHistory];
        [HistoryEntryRecentsItem saveMapItem:v4 superseedUUID:v6 tracksRAPReportingOnly:[(PlaceCardItem *)self->_placeCardItem shouldInsertInHistoryForRAPTrackingOnly]];

        self->_didInsertInHistory = 1;
      }
    }
  }
}

- (void)placeCardItemMapItemDidChangeWithFailedRefinement:(BOOL)a3
{
  self->_refinementFailed = a3;
  v4 = [(PlaceCardViewController *)self placeCardDelegate];
  v5 = [(PlaceCardViewController *)self placeCardItem];
  [v4 placeCardViewController:self didUpdateLinkedPlacesFromPlaceCardItem:v5];

  if (!self->_suppressNotifyMapItemDidChange)
  {
    v6 = [(PlaceCardViewController *)self placeCardDelegate];
    v7 = [(PlaceCardViewController *)self placeCardItem];
    v8 = [v7 mapItem];
    [v6 placeCardViewController:self mapItemDidChange:v8];
  }

  [(PlaceCardViewController *)self setNeedsContentUpdate];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (off_101931A80 == a6)
  {
    if ([a3 isEqualToString:{@"mapItem", a4, a5}])
    {

      [(PlaceCardViewController *)self placeCardItemMapItemDidChangeWithFailedRefinement:0];
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PlaceCardViewController;
    [(InfoCardViewController *)&v7 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

- (void)setIsPresentedInSearchAlongTheRoute:(BOOL)a3
{
  if (self->_isPresentedInSearchAlongTheRoute != a3)
  {
    self->_isPresentedInSearchAlongTheRoute = a3;
    [(PlaceCardViewController *)self setNeedsContentUpdate];
  }
}

- (void)setIsAdditionalStop:(BOOL)a3
{
  if (self->_isAdditionalStop != a3)
  {
    self->_isAdditionalStop = a3;
    [(PlaceCardViewController *)self setNeedsContentUpdate];
  }
}

- (void)setExcludedContent:(int64_t)a3
{
  if (self->_excludedContent != a3)
  {
    self->_excludedContent = a3;
    [(PlaceCardViewController *)self setNeedsContentUpdate];
  }
}

- (void)setPlaceCardItem:(id)a3
{
  v10 = a3;
  if (sub_100C73A6C(self->_placeCardItem, v10))
  {
    v5 = [(InfoCardViewController *)self contentViewController];
    [v5 scrollToTopAnimated:0];
  }

  else
  {
    v6 = [(PlaceCardViewController *)self placeCardDelegate];
    [v6 placeCardViewController:self placeCardItemWillChange:v10];

    placeCardItem = self->_placeCardItem;
    if (placeCardItem)
    {
      [(PlaceCardItem *)placeCardItem removeObserver:self forKeyPath:@"mapItem"];
    }

    objc_storeStrong(&self->_placeCardItem, a3);
    self->_shouldPresentSecondaryActionWhenReady = 0;
    v8 = self->_placeCardItem;
    if (v8)
    {
      [(PlaceCardItem *)v8 addObserver:self forKeyPath:@"mapItem" options:0 context:off_101931A80];
      v9 = +[MUPlaceEnrichmentAPIController sharedPlaceEnrichmentAPIController];
      [v9 registerObserver:self];

      [(PlaceCardViewController *)self placeCardItemMapItemDidChangeWithFailedRefinement:0];
      [(PlaceCardViewController *)self _updateCallToActionStateIfNeeded];
    }

    v5 = [(MUPlaceViewController *)self->_placeViewController view];
    [v5 _maps_annotateViewWithPlaceCardViewController:self];
  }
}

- (void)setPlaceCardItem:(id)a3 withHistory:(BOOL)a4
{
  self->_shouldInsertInHistory = a4;
  self->_suppressNotifyMapItemDidChange = 1;
  [(PlaceCardViewController *)self setPlaceCardItem:a3];
  self->_suppressNotifyMapItemDidChange = 0;
}

- (void)updateHeaderTitle:(id)a3
{
  placeViewController = self->_placeViewController;
  v5 = a3;
  [(MUPlaceViewController *)placeViewController updateHeaderTitle];
  [(InfoCardViewController *)self setHeaderTitle:v5];
}

- (void)handleAddOrRemovePlaceFromLibrary:(BOOL)a3
{
  if (a3)
  {
    if (-[PlaceCardItem isDroppedPin](self->_placeCardItem, "isDroppedPin") || (-[PlaceCardLibraryOperationsCoordinator mapItem](self->_libraryOperationsCoordinator, "mapItem"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 _maps_canRenameCollectionItem], v4, v5))
    {
      v6 = [(PlaceCardViewController *)self placeCardDelegate];
      v7 = [(PlaceCardLibraryOperationsCoordinator *)self->_libraryOperationsCoordinator mapItem];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100B99384;
      v10[3] = &unk_10165EF00;
      v10[4] = self;
      [v6 placeCardViewController:self editNameOfMapItem:v7 saveHandler:v10 cancelHandler:0];
    }

    else
    {
      libraryOperationsCoordinator = self->_libraryOperationsCoordinator;

      [(PlaceCardLibraryOperationsCoordinator *)libraryOperationsCoordinator addPlaceToLibraryWithCustomName:0];
    }
  }

  else
  {
    v8 = self->_libraryOperationsCoordinator;

    [(PlaceCardLibraryOperationsCoordinator *)v8 deletePlaceFromLibrary];
  }
}

- (void)_carryOverTransitDisplayInformationFromCurrentItemToNewFetchedResult:(id)a3
{
  v14 = a3;
  v4 = [(PlaceCardViewController *)self placeCardItem];
  v5 = [v4 mapItem];
  v6 = [v5 _geoMapItem];

  v7 = [v14 mapItem];
  v8 = [v7 _geoMapItem];

  v9 = [v6 _identifier];
  v10 = [v8 _identifier];
  v11 = [v9 isEqual:v10];

  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v6 _labelMarker];
      if (objc_opt_respondsToSelector())
      {
        v13 = [v8 _mapItemBySettingIsTransitDisplayFeature:{objc_msgSend(v12, "isTransit")}];
        [v14 updateWithGEOMapItem:v13];
      }
    }
  }
}

- (void)updateContent
{
  v3 = sub_1007986AC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v100 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "PlaceCardViewController: updateContent %@", buf, 0xCu);
  }

  self->_contentNeedsUpdating = 0;
  [(PlaceCardViewController *)self initPlaceCard];
  v4 = [(InfoCardViewController *)self contentViewController];
  [v4 scrollToTopAnimated:0];

  v5 = [(MUPlaceViewController *)self->_placeViewController view];
  [v5 setHidden:0];

  v6 = sub_1007986AC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = [(MUPlaceViewController *)self->_placeViewController view];
    *buf = 138412546;
    v100 = self;
    v101 = 2112;
    v102 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "PlaceCardViewController: %@ updateContent setting _placeViewController's view visible %@", buf, 0x16u);
  }

  v8 = [(PlaceCardViewController *)self placeCardItem];
  v9 = [v8 searchResult];
  v10 = [v9 relatedSearchSuggestion];

  if (v10)
  {
    [(PlaceCardViewController *)self _initSuggestion];
    [(PlaceCardViewController *)self _updateSuggestionVisibility];
  }

  v11 = [(PlaceCardItem *)self->_placeCardItem mapItem];
  if ([v11 _hasMUID] && objc_msgSend(v11, "_muid"))
  {
    v95 = 1;
  }

  else
  {
    if (![(PlaceCardItem *)self->_placeCardItem isDroppedPin]&& [(PlaceCardItem *)self->_placeCardItem isIntermediateMapItem])
    {
      [(PlaceCardItem *)self->_placeCardItem setIsIntermediateMapItem:0];
    }

    v95 = 0;
  }

  v12 = +[UIApplication sharedApplication];
  v13 = [v12 delegate];

  v96 = v13;
  v97 = v11;
  if ([v13 isCoreRoutineEnabled] && (-[PlaceCardViewController placeCardItem](self, "placeCardItem"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isHomeWorkSchoolAddress"), v14, v15))
  {
    excludedContent = self->_excludedContent;
    v17 = ~(excludedContent << 9) & 0x80000;
    if ((excludedContent & 8) != 0)
    {
      v17 = 0;
    }

    v18 = (v17 | ((self->_excludedContent & 8) << 15)) ^ 0x40000;
  }

  else
  {
    v19 = [(PlaceCardViewController *)self placeCardItem];
    v20 = [v19 isDroppedPin];

    excludedContent = self->_excludedContent;
    v18 = ~(excludedContent << 15) & 0x40000;
    if (!v20)
    {
      v18 = 0;
    }
  }

  if ((excludedContent & 0x20) != 0)
  {
    v21 = 0x420001061;
  }

  else
  {
    v21 = 536875041;
  }

  v22 = (excludedContent << 22) & 0x400000000;
  v23 = ~(excludedContent << 7) & 0x100;
  v24 = [(PlaceCardViewController *)self placeCardItem];
  if ([v24 canAddToCollections])
  {
    v25 = 0x8000;
  }

  else
  {
    v25 = 0;
  }

  v26 = [(PlaceCardViewController *)self placeCardItem];
  if ([v26 canAddToLibrary])
  {
    v27 = 0x10000000000;
  }

  else
  {
    v27 = 0;
  }

  v28 = [(PlaceCardViewController *)self placeCardItem];
  if ([v28 canAddNote])
  {
    v29 = 0x20000000000;
  }

  else
  {
    v29 = 0;
  }

  v30 = self->_excludedContent;
  v31 = v94 | v22 | v21 | v23 | v25 | v27 | v29 | (v30 << 18) & 0x4000000 | (v30 << 20) & 0x80000000 | (v30 << 23) & 0x1000000000 | (v30 << 19) & 0x2000000 | ~(v30 << 10) & 0x20000 | ~(v30 << 20) & 0x400000 | ~(v30 << 16) & 0x100000;
  v32 = +[GEOPlatform sharedPlatform];
  v33 = [v32 isInternalInstall];

  if (v33)
  {
    v34 = +[NSUserDefaults standardUserDefaults];
    v35 = [v34 BOOLForKey:@"__internal__PlaceCardLocationSimulation"];
    v36 = 0x2000;
    if (!v35)
    {
      v36 = 0;
    }

    v31 |= v36;
  }

  v37 = +[NSUserDefaults standardUserDefaults];
  if ([v37 BOOLForKey:@"GEOPlaceShowGEOIDKey"])
  {
    v38 = 0x1000000;
  }

  else
  {
    v38 = 0;
  }

  v39 = +[NSUserDefaults standardUserDefaults];
  v40 = [v39 BOOLForKey:@"GEOPlaceShowPlaceIDKey"];
  v41 = 0x4000000000000;
  if (!v40)
  {
    v41 = 0;
  }

  v42 = v38 | v41;

  v43 = [(PlaceCardViewController *)self placeCardItem];
  v44 = [v43 canAddToShortcuts];
  v45 = 0x10000000;
  if (!v44)
  {
    v45 = 0;
  }

  v46 = v42 | v45;

  v47 = 0x200000000;
  if (!self->_isAdditionalStop)
  {
    v47 = 0;
  }

  v48 = v46 | v47;
  v49 = 0x800000000;
  if (!self->_isPresentedInSearchAlongTheRoute)
  {
    v49 = 0;
  }

  v50 = v48 | v49 | v31;
  v51 = v50 | 0x40800000;
  if (MapsFeature_IsEnabled_MapsWally())
  {
    v52 = [(PlaceCardViewController *)self placeCardItem];
    v53 = [v52 canShowOpenFindMyAction];

    if (v53)
    {
      v51 = v50 | 0x2040800000;
    }

    else
    {
      v54 = [(PlaceCardViewController *)self placeCardItem];
      v55 = [v54 canShowRequestLocation];

      if (v55)
      {
        v51 = v50 | 0x4040800000;
      }
    }
  }

  if (GEOConfigGetBOOL())
  {
    v56 = +[MapsOfflineUIHelper sharedHelper];
    v57 = [v56 isUsingOfflineMaps];

    if ((v57 & 1) == 0)
    {
      v51 |= 0x40000000000uLL;
    }
  }

  [(MUPlaceViewController *)self->_placeViewController setOptions:v51];
  if (!v95 || self->_refinementFailed)
  {
    goto LABEL_58;
  }

  if (([v97 _hasResolvablePartialInformation] & 1) == 0)
  {
    v91 = [v97 _geoMapItem];
    if ([v91 hasExpiredComponents] & 1) != 0 || -[PlaceCardItem isIntermediateMapItem](self->_placeCardItem, "isIntermediateMapItem") || (objc_msgSend(v97, "_maps_isIncompleteVenueSearchResult"))
    {

      goto LABEL_74;
    }

    if ([v97 _maps_isVenueOrBuilding])
    {
      v92 = [v97 _browseCategories];
      if (![v92 count])
      {
        originalContent = self->_originalContent;

        if (originalContent)
        {
          goto LABEL_74;
        }

LABEL_58:
        v58 = [(MUPlaceViewController *)self->_placeViewController analyticsController];
        [v58 disableDeferLoggingUntilRefinementWithShouldInvokeReveal:0];
        v59 = 0;
        goto LABEL_59;
      }
    }

    goto LABEL_58;
  }

LABEL_74:
  v59 = 1;
  [(PlaceCardItem *)self->_placeCardItem setIsIntermediateMapItem:1];
  v58 = [(MUPlaceViewController *)self->_placeViewController analyticsController];
  [v58 setDisableDeferLoggingUntilRefinement];
LABEL_59:

  [(InfoCardTipKitController *)self->_tipKitController setNeedsRefinement:v59];
  v60 = [(PlaceCardItem *)self->_placeCardItem placeItem];
  [(MUPlaceViewController *)self->_placeViewController setPlaceItem:v60 updateOriginalContact:!self->_originalContent];
  v61 = [v60 name];
  [(InfoCardViewController *)self setHeaderTitle:v61];
  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    if ([(PlaceCardItem *)self->_placeCardItem isCurrentLocation])
    {
      libraryOperationsCoordinator = self->_libraryOperationsCoordinator;
      self->_libraryOperationsCoordinator = 0;
    }

    else
    {
      v63 = objc_alloc_init(_TtC4Maps37PlaceCardLibraryOperationsCoordinator);
      v64 = self->_libraryOperationsCoordinator;
      self->_libraryOperationsCoordinator = v63;

      [(PlaceCardLibraryOperationsCoordinator *)self->_libraryOperationsCoordinator setViewControllerForPresentingAlert:self];
      [(PlaceCardLibraryOperationsCoordinator *)self->_libraryOperationsCoordinator registerObserver:self];
      libraryOperationsCoordinator = [(PlaceCardViewController *)self mapItem];
      [(PlaceCardLibraryOperationsCoordinator *)self->_libraryOperationsCoordinator setMapItem:libraryOperationsCoordinator];
    }

    [(MUPlaceViewController *)self->_placeViewController setLibraryAccessProvider:self->_libraryOperationsCoordinator];
  }

  [(InfoCardViewController *)self rebuildHeaderMenu];
  v65 = +[ShortcutManager sharedManager];
  [v65 addObserver:self];

  v66 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
  [v66 registerObserver:self];

  v67 = +[CollectionManager sharedManager];
  [v67 addObserver:self];

  [(PlaceCardViewController *)self _updateShortcut];
  v68 = objc_alloc_init(_TtC4Maps37PlaceCardCollectionMembershipProvider);
  collectionMembershipProvider = self->_collectionMembershipProvider;
  self->_collectionMembershipProvider = v68;

  [(PlaceCardCollectionMembershipProvider *)self->_collectionMembershipProvider setDelegate:self];
  v70 = [(PlaceCardViewController *)self placeCardItem];
  v71 = [v70 mapItem];
  [(PlaceCardCollectionMembershipProvider *)self->_collectionMembershipProvider setMapItem:v71];

  v72 = +[CuratedCollectionSyncManager sharedManager];
  [v72 addObserver:self];

  [(PlaceCardViewController *)self _updateCollectionsAnimated:0];
  v73 = +[UserProfileReportHistoryManager sharedInstance];
  v74 = [v73 observers];
  [v74 registerObserver:self];

  [(PlaceCardViewController *)self _updateRAPInReviewStatus];
  v75 = +[MUPlaceEnrichmentAPIController sharedPlaceEnrichmentAPIController];
  [v75 registerObserver:self];

  if (MapsFeature_IsEnabled_SydneyARP())
  {
    v76 = [[UGCSuggestionViewProvider alloc] initWithMapItem:v97];
    suggestionViewProvider = self->_suggestionViewProvider;
    self->_suggestionViewProvider = v76;

    [(UGCSuggestionViewProvider *)self->_suggestionViewProvider setDelegate:self];
  }

  if (v59)
  {
    v78 = +[UIApplication sharedMapsDelegate];
    v79 = [v78 poiSearchManager];

    v80 = [(PlaceCardViewController *)self placeCardDelegate];
    v81 = [v80 newTraits];

    [v81 useOnlineToOfflineFailoverRequestModeIfAllowed];
    v82 = [v97 _identifier];
    v98[0] = _NSConcreteStackBlock;
    v98[1] = 3221225472;
    v98[2] = sub_100B9A04C;
    v98[3] = &unk_10163BBC8;
    v98[4] = self;
    [v79 searchForIdentifier:v82 allowExpired:0 traits:v81 completionHandler:v98];
  }

  v83 = [(PlaceCardViewController *)self _maps_mapsSceneDelegate];
  [v83 setNeedsUserActivityUpdate];

  self->_shouldFetchDraggableViews = !self->_contentNeedsUpdating;
  v84 = [(PlaceCardViewController *)self mapItem];
  v85 = [v84 _businessAssets];
  v86 = [v85 coverPhoto];
  self->_hasCoverPhoto = v86 != 0;

  [(PlaceCardViewController *)self _updateCallToActionStateIfNeeded];
  [(PlaceCardViewController *)self _updateVerifiedBusinessHeaderIfNeeded];
  v87 = [[PlaceCardOfflineMapProvider alloc] initWithMapItem:v97];
  offlineMapProvider = self->_offlineMapProvider;
  self->_offlineMapProvider = v87;

  [(MUPlaceViewController *)self->_placeViewController setOfflineMapProvider:self->_offlineMapProvider];
  [(PlaceCardViewController *)self _updateOfflineFeatureDiscoveryViewIfNeededWithMapItem:v97];
  v89 = objc_alloc_init(_TtC4Maps23PlaceCardDeviceProvider);
  deviceProvider = self->_deviceProvider;
  self->_deviceProvider = v89;

  [(MUPlaceViewController *)self->_placeViewController setDeviceProvider:self->_deviceProvider];
}

- (void)setNeedsContentUpdate
{
  if (!self->_contentNeedsUpdating)
  {
    block[5] = v2;
    block[6] = v3;
    self->_contentNeedsUpdating = 1;
    self->_shouldFetchDraggableViews = 0;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100B9A3C0;
    block[3] = &unk_101661B18;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)prepareForPresentationWithExistingPlaceCardItem
{
  [(MUPlaceViewController *)self->_placeViewController resetAnalyticsState];
  [(MUPlaceViewController *)self->_placeViewController setForceCaptureRevealEventOnNextBecomeActive:1];
  v3 = [(PlaceCardViewController *)self placeCardDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v6 = [(PlaceCardViewController *)self placeCardDelegate];
    v5 = [(PlaceCardViewController *)self placeCardItem];
    [v6 placeCardViewController:self willReusePlaceCardItem:v5];
  }
}

- (void)resetState
{
  v3 = sub_1007986AC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138412290;
    v17 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "PlaceCardViewController: resetState %@", &v16, 0xCu);
  }

  [(PlaceCardViewController *)self setPlaceCardItem:0];
  self->_originalContent = 1;
  self->_shouldPresentSecondaryActionWhenReady = 0;
  self->_didInsertInHistory = 0;
  self->_shouldInsertInHistory = 0;
  self->_contentNeedsUpdating = 0;
  self->_shouldFetchDraggableViews = 0;
  self->_refinementFailed = 0;
  updatedCurrentLocation = self->_updatedCurrentLocation;
  self->_updatedCurrentLocation = 0;

  v5 = [(MUPlaceViewController *)self->_placeViewController view];
  [v5 setHidden:1];

  [(MUPlaceViewController *)self->_placeViewController resetAnalyticsState];
  self->_isAdditionalStop = 0;
  [(RelatedSearchSuggestionViewController *)self->_suggestionViewController resetData];
  suggestionViewProvider = self->_suggestionViewProvider;
  self->_suggestionViewProvider = 0;

  [(PlaceCardViewController *)self setDraggableContent:0];
  v7 = +[ShortcutManager sharedManager];
  [v7 removeObserver:self];

  v8 = +[CuratedCollectionSyncManager sharedManager];
  [v8 removeObserver:self];

  v9 = +[UserProfileReportHistoryManager sharedInstance];
  v10 = [v9 observers];
  [v10 unregisterObserver:self];

  v11 = +[MUPlaceEnrichmentAPIController sharedPlaceEnrichmentAPIController];
  [v11 unregisterObserver:self];

  v12 = +[CollectionManager sharedManager];
  [v12 removeObserver:self];

  offlineMapProvider = self->_offlineMapProvider;
  self->_offlineMapProvider = 0;

  [(PlaceCardLibraryOperationsCoordinator *)self->_libraryOperationsCoordinator unregisterObserver:self];
  libraryOperationsCoordinator = self->_libraryOperationsCoordinator;
  self->_libraryOperationsCoordinator = 0;

  collectionMembershipProvider = self->_collectionMembershipProvider;
  self->_collectionMembershipProvider = 0;

  [(InfoCardTipKitController *)self->_tipKitController reset];
}

- (void)didResignCurrent
{
  [(MUPlaceViewController *)self->_placeViewController resignActive];
  [(PlaceCardViewController *)self _submitInlineRatingsIfNeeded];
  objc_initWeak(&location, self);
  friendshipCoordinator = self->_friendshipCoordinator;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100B9A8D0;
  v6[3] = &unk_101661B98;
  objc_copyWeak(&v7, &location);
  [(SearchFindMyFriendshipCoordinator *)friendshipCoordinator stopMonitoringHandlesWithCompletionHandler:v6];
  v4 = +[MapsRadarController sharedInstance];
  [v4 removeAttachmentProvider:self];

  v5.receiver = self;
  v5.super_class = PlaceCardViewController;
  [(ContaineeViewController *)&v5 didResignCurrent];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)willResignCurrent:(BOOL)a3
{
  v4 = [(PlaceCardViewController *)self placeCardDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(PlaceCardViewController *)self placeCardDelegate];
    [v6 placeCardViewControllerWillResignCurrent:self];
  }
}

- (void)didBecomeCurrent
{
  v19.receiver = self;
  v19.super_class = PlaceCardViewController;
  [(ContaineeViewController *)&v19 didBecomeCurrent];
  v3 = [(PlaceCardViewController *)self placeCardDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(PlaceCardViewController *)self placeCardDelegate];
    [v5 placeCardViewControllerWillBecomeCurrent:self];
  }

  [(MUPlaceViewController *)self->_placeViewController becomeActive];
  v6 = [(PlaceCardItem *)self->_placeCardItem searchResult];
  v7 = [v6 autocompletePerson];

  v8 = [v7 handle];
  v9 = [v8 handle];

  if (v9)
  {
    v10 = [_TtC4Maps33SearchFindMyFriendshipCoordinator alloc];
    v11 = [v7 handle];
    v12 = [v11 handle];
    v13 = [v12 handleIdentifier];
    v14 = [(SearchFindMyFriendshipCoordinator *)v10 initWith:v13];
    friendshipCoordinator = self->_friendshipCoordinator;
    self->_friendshipCoordinator = v14;

    [(SearchFindMyFriendshipCoordinator *)self->_friendshipCoordinator setDelegate:self];
    v16 = sub_1007986AC();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      placeCardItem = self->_placeCardItem;
      *buf = 138412546;
      v21 = placeCardItem;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Started monitoring friendship stream for PlaceCardItem: %@, person: %@", buf, 0x16u);
    }

    [(SearchFindMyFriendshipCoordinator *)self->_friendshipCoordinator startMonitoringHandles];
  }

  v18 = +[MapsRadarController sharedInstance];
  [v18 addAttachmentProvider:self];
}

- (void)willChangeLayout:(unint64_t)a3
{
  v5 = [(ContaineeViewController *)self cardPresentationController];
  v6 = [v5 containeeLayout];

  v17.receiver = self;
  v17.super_class = PlaceCardViewController;
  [(InfoCardViewController *)&v17 willChangeLayout:a3];
  v7 = [(ContaineeViewController *)self cardPresentationController];
  v8 = [v7 containerStyle];

  v10 = v8 - 1 < 2 || (v8 & 0xFFFFFFFFFFFFFFFELL) == 4;
  if (a3 - 3 <= 1 && v10 && v6)
  {
    [(PlaceCardViewController *)self insertInHistory];
  }

  v11 = [(ContaineeViewController *)self cardPresentationController];
  v12 = [v11 containeeLayout];

  previousLayout = self->_previousLayout;
  if (previousLayout)
  {
    v14 = previousLayout >= v12;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    v15 = [(PlaceCardViewController *)self analyticsDelegate];
    [v15 infoCardAnalyticsDidSelectAction:1 eventValue:0 feedbackDelegateSelector:0 classification:0];

    previousLayout = self->_previousLayout;
  }

  if (v12 && previousLayout > v12)
  {
    v16 = [(PlaceCardViewController *)self analyticsDelegate];
    [v16 infoCardAnalyticsDidSelectAction:2 eventValue:0 feedbackDelegateSelector:0 classification:0];
  }

  self->_previousLayout = v12;
}

- (double)heightForLayout:(unint64_t)a3
{
  if (a3 == 2 && [(PlaceCardViewController *)self isPresentedInSearchAlongTheRoute])
  {

    [(PlaceCardViewController *)self _mediumLayoutHeightInSAR];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PlaceCardViewController;
    [(InfoCardViewController *)&v6 heightForLayout:a3];
  }

  return result;
}

- (double)_mediumLayoutHeightInSAR
{
  v2 = [(PlaceCardViewController *)self view];
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

- (void)copy:(id)a3
{
  v4 = a3;
  v5 = [(PlaceCardViewController *)self placeCardDelegate];
  [v5 placeCardViewController:self requestCopyLinkToClipboard:v4];
}

- (void)_updateVerifiedBusinessHeaderIfNeeded
{
  if (sub_10000FA08(self) != 5)
  {
    v3 = [(ContaineeViewController *)self cardPresentationController];
    v4 = [v3 containerStyle];

    v5 = [(ContaineeViewController *)self cardPresentationController];
    v6 = v5;
    if (v4 == 4)
    {
      [v5 transitionProgressFromLayout:1 toLayout:3];
      v8 = v7;

      if (v8 < 0.5)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = v8 * 2.0 + -1.0;
      }
    }

    else
    {
      [v5 transitionProgressFromLayout:2 toLayout:3];
      v9 = v10;
    }

    v11 = v9 > 0.0 && self->_hasCoverPhoto;
    v12 = [(ContaineeViewController *)self cardPresentationController];
    [v12 setGrabberBlurEnabled:v11];

    placeViewController = self->_placeViewController;

    [(MUPlaceViewController *)placeViewController setVerifiedHeaderExpansionProgress:v9];
  }
}

- (void)didMoveToParentViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = PlaceCardViewController;
  [(PlaceCardViewController *)&v5 didMoveToParentViewController:?];
  if (!a3)
  {
    self->_isBeingRemovedFromParentViewController = 0;
  }
}

- (void)willMoveToParentViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = PlaceCardViewController;
  [(PlaceCardViewController *)&v5 willMoveToParentViewController:?];
  if (!a3)
  {
    self->_isBeingRemovedFromParentViewController = 1;
  }
}

- (void)viewWillLayoutSubviews
{
  v6.receiver = self;
  v6.super_class = PlaceCardViewController;
  [(PlaceCardViewController *)&v6 viewWillLayoutSubviews];
  [(PlaceCardViewController *)self headerSecondaryNameLabelPadding];
  v4 = v3;
  v5 = [(ContaineeViewController *)self cardPresentationController];
  [v5 setHeaderTransitionHeight:v4];

  [(PlaceCardViewController *)self _updateVerifiedBusinessHeaderIfNeeded];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PlaceCardViewController;
  [(InfoCardViewController *)&v4 viewDidDisappear:a3];
  if (self->_wantsInsertOnDismiss && (([(PlaceCardViewController *)self isMovingFromParentViewController]& 1) != 0 || sub_10000FA08(self) == 5))
  {
    [(PlaceCardViewController *)self insertInHistory];
  }

  if ([(PlaceCardViewController *)self isMovingFromParentViewController])
  {
    [(PlaceCardViewController *)self resetState];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v20.receiver = self;
  v20.super_class = PlaceCardViewController;
  [(ContaineeViewController *)&v20 viewWillAppear:a3];
  if (self->_placeViewController)
  {
    v4 = [DrivePreferences alloc];
    v5 = +[NSUserDefaults standardUserDefaults];
    v6 = [(DrivePreferences *)v4 initWithDefaults:v5];
    v7 = [(DrivePreferences *)v6 automobileOptions];
    [(MUPlaceViewController *)self->_placeViewController setAutomobileOptions:v7];

    v8 = [WalkPreferences alloc];
    v9 = +[NSUserDefaults standardUserDefaults];
    v10 = [(WalkPreferences *)v8 initWithDefaults:v9];
    v11 = [(WalkPreferences *)v10 walkingOptions];
    [(MUPlaceViewController *)self->_placeViewController setWalkingOptions:v11];

    v12 = [TransitPreferences alloc];
    v13 = +[NSUserDefaults standardUserDefaults];
    v14 = [(WatchSyncedPreferences *)v12 initWithDefaults:v13];
    v15 = [(TransitPreferences *)v14 transitOptions];
    [(MUPlaceViewController *)self->_placeViewController setTransitOptions:v15];

    v16 = [CyclePreferences alloc];
    v17 = +[NSUserDefaults standardUserDefaults];
    v18 = [(CyclePreferences *)v16 initWithDefaults:v17];
    v19 = [(CyclePreferences *)v18 cyclingOptions];
    [(MUPlaceViewController *)self->_placeViewController setCyclingOptions:v19];

    [(PlaceCardViewController *)self _updateVerifiedBusinessHeaderIfNeeded];
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PlaceCardViewController;
  [(InfoCardViewController *)&v3 viewDidLoad];
  [(PlaceCardViewController *)self initPlaceCard];
}

- (void)dealloc
{
  placeCardItem = self->_placeCardItem;
  if (placeCardItem)
  {
    [(PlaceCardItem *)placeCardItem removeObserver:self forKeyPath:@"mapItem"];
  }

  if (self->_currentDragSession)
  {
    v4 = +[MapsDragAndDropManager sharedManager];
    [v4 setDragSession:0];
  }

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = PlaceCardViewController;
  [(InfoCardViewController *)&v6 dealloc];
}

- (PlaceCardViewController)initWithVisualEffectDisabled:(BOOL)a3
{
  v11.receiver = self;
  v11.super_class = PlaceCardViewController;
  v3 = [(PlaceCardViewController *)&v11 initWithNibName:0 bundle:0];
  v4 = v3;
  if (v3)
  {
    v5 = [(ContaineeViewController *)v3 cardPresentationController];
    [v5 setAlwaysUseDefaultContaineeLayout:1];
  }

  v6 = [(PlaceCardViewController *)v4 traitCollection];
  if ([v6 userInterfaceIdiom] == 1)
  {

LABEL_6:
    v9 = [(ContaineeViewController *)v4 cardPresentationController];
    [v9 setDefaultContaineeLayout:3];

    return v4;
  }

  v7 = [(PlaceCardViewController *)v4 traitCollection];
  v8 = [v7 userInterfaceIdiom];

  if (v8 == 6)
  {
    goto LABEL_6;
  }

  return v4;
}

+ (BOOL)shouldInsertRecentPOIForRouting
{
  if (qword_10195E8C0 != -1)
  {
    dispatch_once(&qword_10195E8C0, &stru_10163BBE8);
  }

  return byte_10195E8B8;
}

@end