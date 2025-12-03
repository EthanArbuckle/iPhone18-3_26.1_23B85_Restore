@interface PlaceCardViewController
+ (BOOL)shouldInsertRecentPOIForRouting;
- (BOOL)isContact;
- (BOOL)isMeCard;
- (BOOL)placeViewController:(id)controller canSelectDepartureSequence:(id)sequence mapItem:(id)item;
- (BOOL)placeViewController:(id)controller presentOfflineAlertIfNecessaryForUGC:(int64_t)c;
- (MKMapItem)mapItem;
- (PlaceCardViewController)initWithVisualEffectDisabled:(BOOL)disabled;
- (PlaceCardViewControllerDelegate)placeCardDelegate;
- (double)_mediumLayoutHeightInSAR;
- (double)heightForLayout:(unint64_t)layout;
- (double)placeViewControllerPlaceCardHeaderTitlePaddingConstant:(id)constant;
- (double)placeViewControllerPlaceCardHeaderTitleTrailingConstant:(id)constant;
- (id)_secondaryButtonController;
- (id)_shortcut;
- (id)activityViewControllerForPlaceViewController:(id)controller;
- (id)alternatePrimaryButtonControllerForPlaceViewController:(id)controller;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (id)inlineRatingViewControllerForPlaceViewController:(id)controller;
- (id)menuElementForActionItem:(id)item;
- (id)placeViewController:(id)controller collectionViewsForPlaceItem:(id)item;
- (id)placeViewController:(id)controller hikingTipViewForTipModel:(id)model;
- (id)placeViewController:(id)controller webPlacecardGuidesForPlaceItem:(id)item;
- (id)placeViewControllerRequestsMapViewAssociatedWithVC:(id)c;
- (id)placeViewControllerUserIcon:(id)icon;
- (id)shareItemSource;
- (id)suggestionViewController;
- (id)targetedDragPreviewForInteraction:(id)interaction;
- (id)traitsForPlaceViewController:(id)controller;
- (int)mapTypeForPlaceViewController:(id)controller;
- (int64_t)_overriddenUserInterfaceStyle;
- (int64_t)overriddenInterfaceStyleForPlaceViewControllerSubviews:(id)subviews;
- (unint64_t)_collectionsCount;
- (unint64_t)_numberOfRAPsInReview;
- (void)_addPlaceToCollection:(id)collection editCollection:(BOOL)editCollection;
- (void)_carryOverTransitDisplayInformationFromCurrentItemToNewFetchedResult:(id)result;
- (void)_chromeViewControllerPresent:(id)present;
- (void)_clearOfflineDownloadTipIfNeeded;
- (void)_initSuggestion;
- (void)_instrumentHeaderButtonAction:(int)action withFeedbackType:(int)type;
- (void)_presentPOIEnrichmentCoordinator:(id)coordinator presentingViewController:(id)controller progressObserver:(id)observer;
- (void)_presentPOIEnrichmentCoordinator:(id)coordinator withProgressObserver:(id)observer;
- (void)_routeFromCurrentSearchResult;
- (void)_routeToCurrentSearchResultWithTransportType:(int64_t)type;
- (void)_searchWithSuggestion:(id)suggestion;
- (void)_setupConstraintsForSuggestionView:(id)view;
- (void)_updateCallToActionStateIfNeeded;
- (void)_updateCollectionsAnimated:(BOOL)animated;
- (void)_updateFavoritesGuide;
- (void)_updateOfflineFeatureDiscoveryViewIfNeededWithMapItem:(id)item;
- (void)_updatePlacecardCallToActionAnimated:(BOOL)animated;
- (void)_updateRAPInReviewStatus;
- (void)_updateShortcut;
- (void)_updateSuggestionVisibility;
- (void)_updateVerifiedBusinessHeaderIfNeeded;
- (void)appStoreAppSelected:(id)selected;
- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact;
- (void)copy:(id)copy;
- (void)dealloc;
- (void)didBecomeCurrent;
- (void)didMoveToParentViewController:(id)controller;
- (void)didResignCurrent;
- (void)didScrollPastTransition;
- (void)didSelectSavePublisherGuide:(id)guide;
- (void)didSelectSharePublisherGuide:(id)guide;
- (void)didSelectShowPublisherForPublisherGuide:(id)guide;
- (void)dismissContactsViewController;
- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation;
- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin;
- (void)dragInteraction:(id)interaction willAnimateLiftWithAnimator:(id)animator session:(id)session;
- (void)generateAttachmentsForRadarDraft:(id)draft withCompletion:(id)completion;
- (void)handleAddOrRemovePlaceFromLibrary:(BOOL)library;
- (void)initPlaceCard;
- (void)inlinePOIEnrichmentController:(id)controller didSelectTermsOfServiceURL:(id)l;
- (void)inlinePOIEnrichmentControllerPresentPOIEnrichment:(id)enrichment;
- (void)insertInHistory;
- (void)instrumentDismissAction;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)openFindMy;
- (void)openRequestLocation;
- (void)placeCardItemMapItemDidChangeWithFailedRefinement:(BOOL)refinement;
- (void)placeEnrichmentAPIContollerDidFetchEnrichmentData:(id)data forMapItem:(id)item;
- (void)placePhotoViewerSceneWillDisconnect:(id)disconnect;
- (void)placeViewController:(id)controller didRequestAddOrRemovePlaceFromLibrary:(BOOL)library environment:(id)environment;
- (void)placeViewController:(id)controller didRequestEditingNoteWithInitialText:(id)text libraryAccessProvider:(id)provider completion:(id)completion;
- (void)placeViewController:(id)controller didRequestHikingToolTipRegionIDForLocation:(CLLocationCoordinate2D)location;
- (void)placeViewController:(id)controller didRequestSceneActivationForPhotoGalleryViewController:(id)viewController;
- (void)placeViewController:(id)controller didSelectAddMissingDataOfType:(int64_t)type;
- (void)placeViewController:(id)controller didSelectAddPhotosWithPresentationOptions:(id)options entryPoint:(int64_t)point originTarget:(id)target;
- (void)placeViewController:(id)controller didSelectAddRatingsWithPresentationOptions:(id)options overallState:(int64_t)state originTarget:(id)target;
- (void)placeViewController:(id)controller didSelectAddToCollectionWithPlaceActionEnvironment:(id)environment showsAddToLibrarySection:(BOOL)section;
- (void)placeViewController:(id)controller didSelectDepartureSequence:(id)sequence mapItem:(id)item;
- (void)placeViewController:(id)controller didSelectDirectionsForDestinationAddress:(id)address contact:(id)contact transportType:(id)type;
- (void)placeViewController:(id)controller didSelectDirectionsForDestinationMapItem:(id)item transportType:(id)type;
- (void)placeViewController:(id)controller didSelectEditPlaceDetailsOfType:(int64_t)type;
- (void)placeViewController:(id)controller didSelectEditSubmissionWithPresentationOptions:(id)options;
- (void)placeViewController:(id)controller didSelectMapsExtension:(id)extension usingAppStoreApp:(id)app parameters:(id)parameters;
- (void)placeViewController:(id)controller didSelectParent:(id)parent;
- (void)placeViewController:(id)controller didSelectPhotoCategoryAtIndex:(unint64_t)index;
- (void)placeViewController:(id)controller didSelectPhotoToReport:(id)report withPhotoGalleryViewController:(id)viewController;
- (void)placeViewController:(id)controller didSelectRouteToCurrentSearchResultWithTransportTypePreference:(id)preference;
- (void)placeViewController:(id)controller didSelectSearchCategory:(id)category;
- (void)placeViewController:(id)controller didSelectSendToDevice:(id)device;
- (void)placeViewController:(id)controller didSelectShareCurrentLocationWithCompletion:(id)completion;
- (void)placeViewController:(id)controller didSelectTransitConnectionInformation:(id)information;
- (void)placeViewController:(id)controller didSelectTransitLine:(id)line;
- (void)placeViewController:(id)controller expandCardAnimated:(BOOL)animated;
- (void)placeViewController:(id)controller launchAttributionURLs:(id)ls withAttribution:(id)attribution completionHandler:(id)handler;
- (void)placeViewController:(id)controller openURL:(id)l;
- (void)placeViewController:(id)controller photoGalleryDidScroll:(id)scroll;
- (void)placeViewController:(id)controller requestPasscodeUnlockWithCompletion:(id)completion;
- (void)placeViewController:(id)controller seeAllCollections:(id)collections usingTitle:(id)title usingCollectionIds:(id)ids;
- (void)placeViewController:(id)controller selectCollectionIdentifier:(id)identifier;
- (void)placeViewController:(id)controller selectCuratedCollection:(id)collection;
- (void)placeViewController:(id)controller selectCuratedCollectionIdentifier:(id)identifier;
- (void)placeViewController:(id)controller selectExploreGuidesWithGuideLocation:(id)location;
- (void)placeViewController:(id)controller showRelatedMapItems:(id)items withTitle:(id)title originalMapItem:(id)item analyticsDelegate:(id)delegate;
- (void)placeViewController:(id)controller showTransitIncidents:(id)incidents;
- (void)placeViewControllerDidClose:(id)close;
- (void)placeViewControllerDidSelectAddAPlace:(id)place environment:(id)environment;
- (void)placeViewControllerDidSelectAddOrRemoveFromFavoritesGuide:(id)guide;
- (void)placeViewControllerDidSelectAddShortcut:(id)shortcut;
- (void)placeViewControllerDidSelectChangeAddress:(id)address;
- (void)placeViewControllerDidSelectDisplayedAddress:(id)address;
- (void)placeViewControllerDidSelectDownloadOffline:(id)offline environment:(id)environment;
- (void)placeViewControllerDidSelectDropPin:(id)pin;
- (void)placeViewControllerDidSelectEditLocationOfMarkedLocation:(id)location;
- (void)placeViewControllerDidSelectFlyover:(id)flyover;
- (void)placeViewControllerDidSelectOfflineManagement:(id)management;
- (void)placeViewControllerDidSelectPauseOfflineDownload:(id)download;
- (void)placeViewControllerDidSelectPlaceEnrichmentRAP:(id)p;
- (void)placeViewControllerDidSelectRAPViewReport:(id)report;
- (void)placeViewControllerDidSelectRefineLocation:(id)location;
- (void)placeViewControllerDidSelectRemoveMarker:(id)marker;
- (void)placeViewControllerDidSelectRemoveShortcut:(id)shortcut;
- (void)placeViewControllerDidSelectReportAProblem:(id)problem fromView:(id)view environment:(id)environment;
- (void)placeViewControllerDidSelectSeeMorePhotos:(id)photos withStartingIndex:(unint64_t)index;
- (void)placeViewControllerDidTapHikingTip:(id)tip originMapItem:(id)item;
- (void)placeViewControllerDidTapMiniBrowseCategory:(id)category;
- (void)placeViewControllerDidUpdateHeight:(id)height;
- (void)poiEnrichmentCoordinator:(id)coordinator didFinishSubmissionLookup:(id)lookup;
- (void)prepareForPresentationWithExistingPlaceCardItem;
- (void)presentAppClip:(id)clip;
- (void)presentExtensionFlowController:(id)controller;
- (void)presentQuickLink:(id)link;
- (void)relatedSearchSuggestionViewController:(id)controller didDismissWithReason:(unint64_t)reason;
- (void)relatedSearchSuggestionViewControllerDidScrollLeft:(id)left;
- (void)relatedSearchSuggestionViewControllerDidScrollRight:(id)right;
- (void)relatedSearchSuggestionViewControllerDidTapActionButton:(id)button;
- (void)resetState;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)searchFindMyFriendDidRemoveHandleWithIdentifier:(id)identifier;
- (void)setDraggableContent:(id)content;
- (void)setExcludedContent:(int64_t)content;
- (void)setIsAdditionalStop:(BOOL)stop;
- (void)setIsPresentedInSearchAlongTheRoute:(BOOL)route;
- (void)setNeedsContentUpdate;
- (void)setPlaceCardItem:(id)item;
- (void)setPlaceCardItem:(id)item withHistory:(BOOL)history;
- (void)suggestionViewProviderDidSelectAddPhotos:(id)photos;
- (void)suggestionViewProviderDidSelectRateThisPlace:(id)place overallState:(int64_t)state;
- (void)suggestionViewProviderDidUpdateView:(id)view;
- (void)updateContent;
- (void)updateForViewMode:(int64_t)mode;
- (void)updateHeaderTitle:(id)title;
- (void)updatePreviewDrag;
- (void)viewContact;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)willChangeLayout:(unint64_t)layout;
- (void)willMoveToParentViewController:(id)controller;
- (void)willResignCurrent:(BOOL)current;
@end

@implementation PlaceCardViewController

- (PlaceCardViewControllerDelegate)placeCardDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_placeCardDelegate);

  return WeakRetained;
}

- (void)generateAttachmentsForRadarDraft:(id)draft withCompletion:(id)completion
{
  draftCopy = draft;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100B8D294;
  v10[3] = &unk_10165DEA0;
  objc_copyWeak(&v13, &location);
  v11 = draftCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = draftCopy;
  dispatch_async(&_dispatch_main_q, v10);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)placeViewController:(id)controller didSelectSendToDevice:(id)device
{
  deviceCopy = device;
  v6 = +[UIApplication sharedMapsDelegate];
  deviceID = [deviceCopy deviceID];

  [v6 sendToDeviceWithID:deviceID];
}

- (void)instrumentDismissAction
{
  analyticsController = [(MUPlaceViewController *)self->_placeViewController analyticsController];
  [analyticsController instrumentAction:4 forModuleType:1 usingFeedbackType:0];
}

- (void)suggestionViewProviderDidSelectRateThisPlace:(id)place overallState:(int64_t)state
{
  placeCopy = place;
  IsEnabled_LagunaBeach = MapsFeature_IsEnabled_LagunaBeach();
  v7 = placeCopy;
  if (IsEnabled_LagunaBeach)
  {
    mapItem = [placeCopy mapItem];
    v9 = [UGCPOIEnrichmentCoordinator ratingsAndPhotosCoordinatorWithMapItem:mapItem initialOverallState:state entryPoint:2 originTarget:@"PLACECARD_ARP_SUGGESTION"];

    [(PlaceCardViewController *)self _presentPOIEnrichmentCoordinator:v9 withProgressObserver:0];
    if (state > 2)
    {
      v10 = 0;
    }

    else
    {
      v10 = dword_1012154C8[state];
    }

    analyticsController = [(MUPlaceViewController *)self->_placeViewController analyticsController];
    [analyticsController instrumentAction:v10 target:201 eventValue:@"Suggestion" moduleType:3 feedbackType:0];

    v7 = placeCopy;
  }
}

- (void)suggestionViewProviderDidSelectAddPhotos:(id)photos
{
  photosCopy = photos;
  if (MapsFeature_IsEnabled_LagunaBeach())
  {
    mapItem = [photosCopy mapItem];
    v5 = [UGCPOIEnrichmentCoordinator ratingsAndPhotosCoordinatorWithMapItem:mapItem entryPoint:2 originTarget:@"PLACECARD_ARP_SUGGESTION"];

    [v5 setEntryPointRequiresARPPrivacyScreenIfNeeded:1];
    [(PlaceCardViewController *)self _presentPOIEnrichmentCoordinator:v5 withProgressObserver:0];
    analyticsController = [(MUPlaceViewController *)self->_placeViewController analyticsController];
    [analyticsController instrumentAction:300 target:201 eventValue:@"Suggestion" moduleType:3 feedbackType:0];
  }
}

- (void)suggestionViewProviderDidUpdateView:(id)view
{
  if (MapsFeature_IsEnabled_LagunaBeach())
  {
    [(MUPlaceViewController *)self->_placeViewController updateSuggestionView];
    analyticsController = [(MUPlaceViewController *)self->_placeViewController analyticsController];
    [analyticsController instrumentAction:339 forModuleType:3 usingFeedbackType:0];
  }
}

- (MKMapItem)mapItem
{
  placeCardItem = [(PlaceCardViewController *)self placeCardItem];
  mapItem = [placeCardItem mapItem];

  return mapItem;
}

- (void)placePhotoViewerSceneWillDisconnect:(id)disconnect
{
  photoViewerScene = self->_photoViewerScene;
  self->_photoViewerScene = 0;
}

- (void)placeViewController:(id)controller didSelectPhotoCategoryAtIndex:(unint64_t)index
{
  placeCardItem = [(PlaceCardViewController *)self placeCardItem];
  mapItem = [placeCardItem mapItem];
  v8 = [UGCPOIEnrichmentCoordinator photoThumbnailGalleryCoordinatorWithMapItem:mapItem albumIndex:index];

  [(PlaceCardViewController *)self _presentPOIEnrichmentCoordinator:v8 withProgressObserver:0];
}

- (void)placeViewController:(id)controller didRequestSceneActivationForPhotoGalleryViewController:(id)viewController
{
  viewControllerCopy = viewController;
  v6 = +[MacPlacePhotoViewerScene requestSceneActivation];
  photoViewerScene = self->_photoViewerScene;
  self->_photoViewerScene = v6;

  v8 = [MacPlacePhotoViewerConfiguration alloc];
  placeCardItem = [(PlaceCardViewController *)self placeCardItem];
  mapItem = [placeCardItem mapItem];
  v14 = [(MacPlacePhotoViewerConfiguration *)v8 initWithMapItem:mapItem photoGalleryViewController:viewControllerCopy];

  lookupResult = [(UGCCallToActionViewProvider *)self->_callToActionViewProvider lookupResult];
  [(MacPlacePhotoViewerConfiguration *)v14 setUserSubmissionLookupResult:lookupResult];

  v12 = self->_photoViewerScene;
  _maps_mapsSceneDelegate = [(PlaceCardViewController *)self _maps_mapsSceneDelegate];
  [(MacPlacePhotoViewerScene *)v12 openPhotoGalleryWithConfiguration:v14 sceneDelegate:_maps_mapsSceneDelegate delegate:self];
}

- (void)placeViewControllerDidClose:(id)close
{
  view = [close view];
  v5.receiver = self;
  v5.super_class = PlaceCardViewController;
  [(InfoCardViewController *)&v5 handleDismissAction:view];
}

- (void)_updateSuggestionVisibility
{
  suggestionViewController = self->_suggestionViewController;
  if (suggestionViewController)
  {
    v5 = suggestionViewController;
    suggestion = [(RelatedSearchSuggestionViewController *)v5 suggestion];
    v4 = suggestion == 0;

    [(RelatedSearchSuggestionViewController *)v5 setHidden:v4 animated:1];
  }
}

- (void)_setupConstraintsForSuggestionView:(id)view
{
  v6 = _NSDictionaryOfVariableBindings(@"suggestionView", view, 0);
  v3 = +[NSMutableArray array];
  v4 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-0-[suggestionView]-0-|", 0, 0, v6);
  [v3 addObjectsFromArray:v4];

  v5 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-(>=0)-[suggestionView]-0@250-|", 0, 0, v6);
  [v3 addObjectsFromArray:v5];

  [NSLayoutConstraint activateConstraints:v3];
}

- (void)_searchWithSuggestion:(id)suggestion
{
  if (suggestion)
  {
    suggestionCopy = suggestion;
    v9 = objc_alloc_init(SearchFieldItem);
    [(SearchFieldItem *)v9 setSuggestion:suggestionCopy];
    WeakRetained = objc_loadWeakRetained(&self->_placeCardDelegate);
    [WeakRetained placeCardViewController:self doSearchItem:v9 withUserInfo:0];

    v6 = +[MKMapService sharedService];
    currentUITargetForAnalytics = [(PlaceCardViewController *)self currentUITargetForAnalytics];
    displayString = [suggestionCopy displayString];

    [v6 captureUserAction:2020 onTarget:currentUITargetForAnalytics eventValue:displayString];
  }
}

- (void)_initSuggestion
{
  placeCardItem = [(PlaceCardViewController *)self placeCardItem];
  searchResult = [placeCardItem searchResult];
  relatedSearchSuggestion = [searchResult relatedSearchSuggestion];

  if (relatedSearchSuggestion)
  {
    suggestionViewController = [(PlaceCardViewController *)self suggestionViewController];
    [suggestionViewController setSuggestion:relatedSearchSuggestion];

    suggestionViewController2 = [(PlaceCardViewController *)self suggestionViewController];
    view = [suggestionViewController2 view];
    [view systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];

    [(PlaceCardViewController *)self _updateSuggestionVisibility];
    v8 = +[MKMapService sharedService];
    currentUITargetForAnalytics = [(PlaceCardViewController *)self currentUITargetForAnalytics];
    displayString = [relatedSearchSuggestion displayString];
    [v8 captureUserAction:2019 onTarget:currentUITargetForAnalytics eventValue:displayString];
  }
}

- (id)suggestionViewController
{
  suggestionViewController = self->_suggestionViewController;
  if (!suggestionViewController)
  {
    v4 = objc_alloc_init(RelatedSearchSuggestionViewController);
    view = [(RelatedSearchSuggestionViewController *)v4 view];
    [view setTranslatesAutoresizingMaskIntoConstraints:0];
    [(RelatedSearchSuggestionViewController *)v4 setDelegate:self];
    [(RelatedSearchSuggestionViewController *)v4 willMoveToParentViewController:self];
    view2 = [(PlaceCardViewController *)self view];
    [view2 addSubview:view];

    [(PlaceCardViewController *)self addChildViewController:v4];
    [(RelatedSearchSuggestionViewController *)v4 didMoveToParentViewController:self];
    [(PlaceCardViewController *)self _setupConstraintsForSuggestionView:view];
    v7 = self->_suggestionViewController;
    self->_suggestionViewController = v4;

    suggestionViewController = self->_suggestionViewController;
  }

  return suggestionViewController;
}

- (void)relatedSearchSuggestionViewController:(id)controller didDismissWithReason:(unint64_t)reason
{
  controllerCopy = controller;
  if (reason >= 3)
  {
    reason = [NSString stringWithFormat:@"(unknown: %lu)", reason];
  }

  else
  {
    reason = *(&off_10163BEA8 + reason);
  }

  v7 = +[MKMapService sharedService];
  [v7 captureUserAction:2021 onTarget:-[PlaceCardViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), reason}];
}

- (void)relatedSearchSuggestionViewControllerDidTapActionButton:(id)button
{
  pdSuggestion = [button pdSuggestion];
  [(PlaceCardViewController *)self _searchWithSuggestion:pdSuggestion];
}

- (void)relatedSearchSuggestionViewControllerDidScrollRight:(id)right
{
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:2023 onTarget:-[PlaceCardViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];
}

- (void)relatedSearchSuggestionViewControllerDidScrollLeft:(id)left
{
  v4 = +[MKMapService sharedService];
  [v4 captureUserAction:2022 onTarget:-[PlaceCardViewController currentUITargetForAnalytics](self eventValue:{"currentUITargetForAnalytics"), 0}];
}

- (void)dragInteraction:(id)interaction session:(id)session didEndWithOperation:(unint64_t)operation
{
  items = [session items];
  firstObject = [items firstObject];

  localObject = [firstObject localObject];
  analyticsHelper = [localObject analyticsHelper];
  if (operation == 2)
  {
    v10 = 17003;
  }

  else
  {
    if (operation)
    {
      goto LABEL_6;
    }

    v10 = 17002;
  }

  v11 = +[MKMapService sharedService];
  analyticsTarget = [localObject analyticsTarget];
  eventValue = [analyticsHelper eventValue];
  actionDetails = [analyticsHelper actionDetails];
  [v11 captureUserAction:v10 onTarget:analyticsTarget eventValue:eventValue placeActionDetails:actionDetails];

LABEL_6:
  currentDragSession = self->_currentDragSession;
  self->_currentDragSession = 0;

  v16 = +[MapsDragAndDropManager sharedManager];
  [v16 setDragSession:0];

  previewView = self->_previewView;
  self->_previewView = 0;
}

- (void)dragInteraction:(id)interaction sessionWillBegin:(id)begin
{
  beginCopy = begin;
  v6 = [MapsDragLocalContext alloc];
  view = [(PlaceCardViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  v10 = [(MapsDragLocalContext *)v6 initWithWindowScene:windowScene];
  [beginCopy setLocalContext:v10];

  currentDragSession = self->_currentDragSession;
  self->_currentDragSession = beginCopy;
  v12 = beginCopy;

  v13 = +[MapsDragAndDropManager sharedManager];
  [v13 setDragSession:v12];

  [(PlaceCardViewController *)self updatePreviewDrag];
  items = [v12 items];
  firstObject = [items firstObject];

  localObject = [firstObject localObject];
  analyticsHelper = [localObject analyticsHelper];
  v17 = +[MKMapService sharedService];

  analyticsTarget = [localObject analyticsTarget];
  eventValue = [analyticsHelper eventValue];
  actionDetails = [analyticsHelper actionDetails];
  [v17 captureUserAction:17001 onTarget:analyticsTarget eventValue:eventValue placeActionDetails:actionDetails];
}

- (void)dragInteraction:(id)interaction willAnimateLiftWithAnimator:(id)animator session:(id)session
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100B8E360;
  v5[3] = &unk_10165F3A0;
  v5[4] = self;
  [animator addCompletion:v5];
}

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  interactionCopy = interaction;
  v6 = +[MapsDragAndDropManager sharedManager];
  canStartNewDrag = [v6 canStartNewDrag];

  if (!canStartNewDrag)
  {
    v22 = &__NSArray0__struct;
    goto LABEL_18;
  }

  view = [interactionCopy view];
  fixedHeaderView = [(InfoCardViewController *)self fixedHeaderView];

  if (view == fixedHeaderView)
  {
    placeCardItem = [(PlaceCardViewController *)self placeCardItem];
    mapItem = [placeCardItem mapItem];

    placeCardItem2 = [(PlaceCardViewController *)self placeCardItem];
    view2 = 0;
    analyticsTarget = 1501;
    if (mapItem)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v10 = [(NSMapTable *)self->_draggableContentInteractions objectForKey:interactionCopy];
    mapItem = [v10 draggableContent];
    placeCardItem2 = v10;
    analyticsTarget = [placeCardItem2 analyticsTarget];
    view2 = [placeCardItem2 view];

    if (mapItem)
    {
LABEL_4:
      objc_opt_class();
      v39 = view2;
      if (objc_opt_isKindOfClass())
      {
        placeCardItem3 = [DragAndDropMapItem dragAndDropItemWithObject:mapItem];
        itemProviderWriting = [placeCardItem3 itemProviderWriting];

        v17 = [DragAndDropPreview alloc];
        view3 = [(PlaceCardViewController *)self view];
        traitCollection = [view3 traitCollection];
        v20 = [(DragAndDropPreview *)v17 initWithDragAndDropMapItem:placeCardItem3 traitCollection:traitCollection];
        previewView = self->_previewView;
        self->_previewView = v20;

        [(DragAndDropPreview *)self->_previewView setContentUpdateDelegate:self];
        analyticsHelper = [placeCardItem3 analyticsHelper];
        mapItem = itemProviderWriting;
      }

      else
      {
        v24 = [MapsAnalyticsHelper alloc];
        placeCardItem3 = [(PlaceCardViewController *)self placeCardItem];
        mapItem2 = [placeCardItem3 mapItem];
        analyticsHelper = [(MapsAnalyticsHelper *)v24 initWithMapItem:mapItem2];
      }

      v26 = analyticsTarget;

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = mapItem;
        placeCardItem4 = [(PlaceCardViewController *)self placeCardItem];
        mapItem3 = [placeCardItem4 mapItem];
        name = [mapItem3 name];
        v31 = [NSItemProvider itemProviderWithURL:v27 title:name];
      }

      else
      {
        v31 = [[NSItemProvider alloc] initWithObject:mapItem];
      }

      placeCardItem5 = [(PlaceCardViewController *)self placeCardItem];
      mapItem4 = [placeCardItem5 mapItem];
      name2 = [mapItem4 name];
      [v31 setSuggestedName:name2];

      v35 = [[UIDragItem alloc] initWithItemProvider:v31];
      v36 = objc_opt_new();
      [v36 setContent:placeCardItem2];
      [v36 setAnalyticsTarget:v26];
      [v36 setAnalyticsHelper:analyticsHelper];
      view2 = v39;
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

- (id)targetedDragPreviewForInteraction:(id)interaction
{
  interactionCopy = interaction;
  view = [interactionCopy view];
  fixedHeaderView = [(InfoCardViewController *)self fixedHeaderView];

  if (view == fixedHeaderView)
  {
    fixedHeaderView2 = [(InfoCardViewController *)self fixedHeaderView];
    isHeader = 1;
  }

  else
  {
    v7 = [(NSMapTable *)self->_draggableContentInteractions objectForKey:interactionCopy];
    fixedHeaderView2 = [v7 view];
    isHeader = [v7 isHeader];
  }

  v10 = objc_alloc_init(UIDragPreviewParameters);
  theme = [(PlaceCardViewController *)self theme];
  controlBackgroundColor = [theme controlBackgroundColor];
  [v10 setBackgroundColor:controlBackgroundColor];

  if (isHeader)
  {
    if ([(InfoCardViewController *)self isShowingFullHeader])
    {
      draggableHeaderView = [(MUPlaceViewController *)self->_placeViewController draggableHeaderView];

      v14 = [draggableHeaderView snapshotViewAfterScreenUpdates:0];
    }

    else
    {
      draggableHeaderView = [(InfoCardViewController *)self fixedHeaderView];

      fixedHeaderView3 = [(InfoCardViewController *)self fixedHeaderView];
      [fixedHeaderView3 setHideActionButtons:1];

      v14 = [draggableHeaderView snapshotViewAfterScreenUpdates:1];
      fixedHeaderView4 = [(InfoCardViewController *)self fixedHeaderView];
      [fixedHeaderView4 setHideActionButtons:0];
    }

    fixedHeaderView2 = draggableHeaderView;
    [v14 frame];
    v18 = v17;
    [v14 frame];
    v20 = v19;
    fixedHeaderView5 = [(InfoCardViewController *)self fixedHeaderView];
    [fixedHeaderView5 _cornerRadius];
    v23 = v22;
    fixedHeaderView6 = [(InfoCardViewController *)self fixedHeaderView];
    [fixedHeaderView6 _cornerRadius];
    v26 = v25;

    v27 = [UIBezierPath bezierPathWithRoundedRect:3 byRoundingCorners:0.0 cornerRadii:0.0, v18, v20, v23, v26];
    [v10 setVisiblePath:v27];
  }

  else
  {
    v14 = [fixedHeaderView2 snapshotViewAfterScreenUpdates:0];
  }

  v28 = v14;
  window = [fixedHeaderView2 window];
  if (window)
  {
    [fixedHeaderView2 bounds];
    [fixedHeaderView2 convertRect:window toView:?];
    [v28 setFrame:?];
    v30 = [UIDragPreviewTarget alloc];
    [v28 frame];
    MidX = CGRectGetMidX(v47);
    [v28 frame];
    v32 = [v30 initWithContainer:window center:{MidX, CGRectGetMidY(v48)}];
    [window frame];
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
      renderPreviewImage = [(DragAndDropPreview *)previewView renderPreviewImage];
      [renderPreviewImage dragPreview];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100B8ECC4;
      v10 = v9[3] = &unk_10164EFF0;
      currentDragSession = self->_currentDragSession;
      v6 = v10;
      items = [(UIDragSession *)currentDragSession items];
      firstObject = [items firstObject];
      [firstObject setPreviewProvider:v9];
    }
  }
}

- (void)setDraggableContent:(id)content
{
  contentCopy = content;
  v5 = self->_draggableContent;
  v6 = contentCopy;
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
        keyEnumerator = [(NSMapTable *)draggableContentInteractions keyEnumerator];
        v11 = [keyEnumerator countByEnumeratingWithState:&v50 objects:v56 count:16];
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
                objc_enumerationMutation(keyEnumerator);
              }

              v15 = *(*(&v50 + 1) + 8 * i);
              v16 = [(NSMapTable *)self->_draggableContentInteractions objectForKey:v15];
              view = [v16 view];
              [view removeInteraction:v15];
            }

            v12 = [keyEnumerator countByEnumeratingWithState:&v50 objects:v56 count:16];
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
      fixedHeaderView = [(InfoCardViewController *)self fixedHeaderView];
      interactions = [fixedHeaderView interactions];

      v21 = [interactions countByEnumeratingWithState:&v46 objects:v55 count:16];
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
              objc_enumerationMutation(interactions);
            }

            v25 = *(*(&v46 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              fixedHeaderView2 = [(InfoCardViewController *)self fixedHeaderView];
              [fixedHeaderView2 removeInteraction:v25];
            }
          }

          v22 = [interactions countByEnumeratingWithState:&v46 objects:v55 count:16];
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
              view2 = [v36 view];
              [view2 addInteraction:v37];

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
          fixedHeaderView3 = [(InfoCardViewController *)self fixedHeaderView];
          [fixedHeaderView3 addInteraction:v39];
        }
      }
    }
  }
}

- (void)contactViewController:(id)controller didCompleteWithContact:(id)contact
{
  contactCopy = contact;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  postalAddresses = [contactCopy postalAddresses];
  v6 = [postalAddresses countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v21 = contactCopy;
    obj = postalAddresses;
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
      value = [v10 value];
      placeCardItem = [(PlaceCardViewController *)self placeCardItem];
      address = [placeCardItem address];
      addressValue = [address addressValue];
      value2 = [addressValue value];
      v16 = [value isEqual:value2];

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

        contactCopy = v21;
        postalAddresses = obj;
        goto LABEL_12;
      }
    }

    v17 = v10;

    contactCopy = v21;
    if (!v17)
    {
      goto LABEL_13;
    }

    v18 = [[MKMapItem alloc] initWithContact:v21];
    v19 = [[AddressBookAddress alloc] initWithContact:v21 addressValue:v17];
    placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
    [placeCardDelegate placeCardViewController:self selectMapItem:v18 address:v19];

    postalAddresses = v17;
  }

LABEL_12:

LABEL_13:
}

- (void)presentExtensionFlowController:(id)controller
{
  controllerCopy = controller;
  [controllerCopy setContentUpdateDelegate:self];
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController presentViewController:controllerCopy animated:1 completion:0];
}

- (void)presentAppClip:(id)clip
{
  clipCopy = clip;
  appClipURL = [clipCopy appClipURL];
  v6 = +[MKClipServices sharedInstance];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100B8F410;
  v8[3] = &unk_10163BE28;
  v9 = appClipURL;
  selfCopy = self;
  v7 = appClipURL;
  [v6 requestAppClip:clipCopy completion:v8];
}

- (void)presentQuickLink:(id)link
{
  uRLString = [link URLString];
  if ([uRLString length])
  {
    v5 = [[NSURL alloc] initWithString:uRLString];
    if (v5)
    {
      placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
      [placeCardDelegate placeCardViewController:self openURL:v5];
    }

    else
    {
      placeCardDelegate = sub_1007986AC();
      if (os_log_type_enabled(placeCardDelegate, OS_LOG_TYPE_ERROR))
      {
        v7 = 138412290;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, placeCardDelegate, OS_LOG_TYPE_ERROR, "The URL associated with quicklink %@ is nil", &v7, 0xCu);
      }
    }
  }
}

- (void)appStoreAppSelected:(id)selected
{
  selectedCopy = selected;
  placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
  identifier = [selectedCopy identifier];
  v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [identifier integerValue]);
  [placeCardDelegate placeCardViewController:self displayStoreViewControllerForAppWithiTunesIdentifier:v7];

  if ([(MUPlaceViewController *)self->_placeViewController conformsToProtocol:&OBJC_PROTOCOL____MKInfoCardAnalyticsDelegate])
  {
    v9 = self->_placeViewController;
  }

  else
  {
    v9 = 0;
  }

  iOSBundleIdentifier = [selectedCopy iOSBundleIdentifier];

  [(MUPlaceViewController *)v9 infoCardAnalyticsDidSelectAction:45 target:733 eventValue:iOSBundleIdentifier feedbackDelegateSelector:0 actionRichProviderId:0 classification:0];
}

- (BOOL)isMeCard
{
  placeCardItem = [(PlaceCardViewController *)self placeCardItem];
  address = [placeCardItem address];
  if ([address isMeCard])
  {
    isHomeWorkSchoolAddress = 1;
  }

  else
  {
    placeCardItem2 = [(PlaceCardViewController *)self placeCardItem];
    isHomeWorkSchoolAddress = [placeCardItem2 isHomeWorkSchoolAddress];
  }

  return isHomeWorkSchoolAddress;
}

- (BOOL)isContact
{
  placeCardItem = [(PlaceCardViewController *)self placeCardItem];
  address = [placeCardItem address];
  v4 = address != 0;

  return v4;
}

- (void)dismissContactsViewController
{
  traitCollection = [(PlaceCardViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
    objc_initWeak(&location, self);
    v5 = +[UIApplication sharedMapsDelegate];
    appCoordinator = [v5 appCoordinator];
    chromeViewController = [appCoordinator chromeViewController];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100B8F9E8;
    v8[3] = &unk_101661B98;
    objc_copyWeak(&v9, &location);
    [chromeViewController dismissViewControllerAnimated:1 completion:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else
  {

    [(PlaceCardViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)placeViewControllerDidSelectAddOrRemoveFromFavoritesGuide:(id)guide
{
  v4 = +[CollectionManager sharedManager];
  favoriteCollection = [v4 favoriteCollection];

  [(PlaceCardViewController *)self _addPlaceToCollection:favoriteCollection editCollection:0];
}

- (void)searchFindMyFriendDidRemoveHandleWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  searchResult = [(PlaceCardItem *)self->_placeCardItem searchResult];
  autocompletePerson = [searchResult autocompletePerson];

  if (autocompletePerson)
  {
    searchResult2 = [(PlaceCardItem *)self->_placeCardItem searchResult];
    autocompletePerson2 = [searchResult2 autocompletePerson];
    handle = [autocompletePerson2 handle];
    v9Handle = [handle handle];
    handleIdentifier = [v9Handle handleIdentifier];

    if ([identifierCopy isEqualToString:handleIdentifier])
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
  placeCardItem = [(PlaceCardViewController *)self placeCardItem];
  searchResult = [placeCardItem searchResult];
  autocompletePerson = [searchResult autocompletePerson];
  requestLocationURL = [autocompletePerson requestLocationURL];

  if (requestLocationURL)
  {
    objc_initWeak(location, self);
    v7 = +[UIApplication sharedApplication];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100B8FEB8;
    v13[3] = &unk_1016619A8;
    objc_copyWeak(&v14, location);
    [v7 _maps_openURL:requestLocationURL options:0 completionHandler:v13];

    analyticsDelegate = [(PlaceCardViewController *)self analyticsDelegate];
    [analyticsDelegate infoCardAnalyticsDidSelectAction:405 eventValue:0 feedbackDelegateSelector:0 classification:0];

    objc_destroyWeak(&v14);
    objc_destroyWeak(location);
  }

  else
  {
    v9 = sub_1007986AC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      placeCardItem2 = [(PlaceCardViewController *)self placeCardItem];
      searchResult2 = [placeCardItem2 searchResult];
      autocompletePerson2 = [searchResult2 autocompletePerson];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = autocompletePerson2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error opening messages app, missing request location Identifier for person: %@", location, 0xCu);
    }
  }
}

- (void)openFindMy
{
  placeCardItem = [(PlaceCardViewController *)self placeCardItem];
  searchResult = [placeCardItem searchResult];
  autocompletePerson = [searchResult autocompletePerson];
  openFindMyURL = [autocompletePerson openFindMyURL];

  if (openFindMyURL)
  {
    objc_initWeak(location, self);
    v7 = +[UIApplication sharedApplication];
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_100B90200;
    v16 = &unk_10165FC50;
    objc_copyWeak(&v18, location);
    v17 = openFindMyURL;
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
      placeCardItem2 = [(PlaceCardViewController *)self placeCardItem];
      searchResult2 = [placeCardItem2 searchResult];
      autocompletePerson2 = [searchResult2 autocompletePerson];
      LODWORD(location[0]) = 138412290;
      *(location + 4) = autocompletePerson2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Error opening the find my app, missing handle Identifier for person: %@", location, 0xCu);
    }
  }
}

- (void)viewContact
{
  placeCardItem = [(PlaceCardViewController *)self placeCardItem];
  address = [placeCardItem address];
  contact = [address contact];

  if (MapsFeature_IsEnabled_MapsWally())
  {
    v6 = [contact mutableCopy];
    postalAddresses = [contact postalAddresses];
    v8 = [NSPredicate predicateWithBlock:&stru_10163BE00];
    v9 = [postalAddresses filteredArrayUsingPredicate:v8];
    [v6 setPostalAddresses:v9];

    v10 = [v6 copy];
    contact = v10;
  }

  v11 = [CNContactViewController viewControllerForContact:contact];
  [v11 setDelegate:self];
  v12 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"dismissContactsViewController"];
  navigationItem = [v11 navigationItem];
  [navigationItem setBackBarButtonItem:v12];

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

- (void)_chromeViewControllerPresent:(id)present
{
  presentCopy = present;
  v6 = +[UIApplication sharedMapsDelegate];
  appCoordinator = [v6 appCoordinator];
  chromeViewController = [appCoordinator chromeViewController];
  [chromeViewController presentViewController:presentCopy animated:1 completion:0];
}

- (void)_instrumentHeaderButtonAction:(int)action withFeedbackType:(int)type
{
  v4 = *&type;
  v5 = *&action;
  analyticsController = [(MUPlaceViewController *)self->_placeViewController analyticsController];
  [analyticsController instrumentAction:v5 forModuleType:2 usingFeedbackType:v4];
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
    placeCardItem = [(PlaceCardViewController *)self placeCardItem];
    isDroppedPin = [placeCardItem isDroppedPin];

    if (isDroppedPin)
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

  placeCardItem2 = [(PlaceCardViewController *)self placeCardItem];
  mapItem = [placeCardItem2 mapItem];
  if ([mapItem _hasFlyover])
  {
    v18 = (self->_excludedContent & 4) == 0;

    if (v18)
    {
      v19 = +[VKPlatform sharedPlatform];
      supportsARMode = [v19 supportsARMode];

      +[NSBundle mainBundle];
      if (supportsARMode)
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

  placeCardItem3 = [(PlaceCardViewController *)self placeCardItem];
  isCurrentLocation = [placeCardItem3 isCurrentLocation];

  if (isCurrentLocation)
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
    placeCardItem4 = [(PlaceCardViewController *)self placeCardItem];
    isHomeWorkSchoolShortcut = [placeCardItem4 isHomeWorkSchoolShortcut];

    if (isHomeWorkSchoolShortcut)
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

  placeCardItem5 = [(PlaceCardViewController *)self placeCardItem];
  chargeStationWaypointInfo = [placeCardItem5 chargeStationWaypointInfo];

  if (!chargeStationWaypointInfo)
  {
    placeCardItem6 = [(PlaceCardViewController *)self placeCardItem];
    if ([placeCardItem6 isMeCard])
    {
    }

    else
    {
      mapItem2 = [(PlaceCardViewController *)self mapItem];
      _quickLinks = [mapItem2 _quickLinks];
      v47 = [_quickLinks count] == 0;

      if (!v47)
      {
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        mapItem3 = [(PlaceCardViewController *)self mapItem];
        _quickLinks2 = [mapItem3 _quickLinks];

        v50 = [_quickLinks2 countByEnumeratingWithState:&v63 objects:v85 count:16];
        if (v50)
        {
          v51 = *v64;
LABEL_44:
          v52 = 0;
          while (1)
          {
            if (*v64 != v51)
            {
              objc_enumerationMutation(_quickLinks2);
            }

            v53 = *(*(&v63 + 1) + 8 * v52);
            if ([v53 type] == 1)
            {
              break;
            }

            if (v50 == ++v52)
            {
              v50 = [_quickLinks2 countByEnumeratingWithState:&v63 objects:v85 count:16];
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
            title = [(Block_layout *)v7 title];
            v60[0] = _NSConcreteStackBlock;
            v60[1] = 3221225472;
            v60[2] = sub_100B91730;
            v60[3] = &unk_10163BDC0;
            objc_copyWeak(&v62, &location);
            v59 = v7;
            v61 = v59;
            v3 = [_MKPlaceActionButtonController actionButtonControllerWithTitle:title subTitle:0 selectedBlock:v60];

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

  placeCardItem7 = [(PlaceCardViewController *)self placeCardItem];
  chargeStationWaypointInfo2 = [placeCardItem7 chargeStationWaypointInfo];
  chargeInfo = [chargeStationWaypointInfo2 chargeInfo];
  [chargeInfo chargingTime];
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

- (void)scrollViewWillBeginDragging:(id)dragging
{
  suggestionViewController = self->_suggestionViewController;
  draggingCopy = dragging;
  [(RelatedSearchSuggestionViewController *)suggestionViewController dismiss];
  v6.receiver = self;
  v6.super_class = PlaceCardViewController;
  [(ContaineeViewController *)&v6 scrollViewWillBeginDragging:draggingCopy];
}

- (void)placeViewController:(id)controller didRequestAddOrRemovePlaceFromLibrary:(BOOL)library environment:(id)environment
{
  libraryCopy = library;
  libraryOperationsCoordinator = self->_libraryOperationsCoordinator;
  environmentCopy = environment;
  mapItem = [(PlaceCardLibraryOperationsCoordinator *)libraryOperationsCoordinator mapItem];
  _muid = [mapItem _muid];
  isActionBar = [environmentCopy isActionBar];

  if (isActionBar)
  {
    v12 = 203;
  }

  else
  {
    v12 = 30;
  }

  [_TtC4Maps16LibraryAnalytics captureAddOrRemoveFromLibraryWithPlaceMUID:_muid captureAdd:libraryCopy target:v12];

  [(PlaceCardViewController *)self handleAddOrRemovePlaceFromLibrary:libraryCopy];
}

- (void)placeViewController:(id)controller didSelectTransitConnectionInformation:(id)information
{
  controllerCopy = controller;
  informationCopy = information;
  v8 = +[UIApplication sharedMapsDelegate];
  poiSearchManager = [v8 poiSearchManager];

  v10 = [MKMapItemIdentifier alloc];
  itemIdentifier = [informationCopy itemIdentifier];
  v12 = [v10 initWithGEOMapItemIdentifier:itemIdentifier];

  placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
  newTraits = [placeCardDelegate newTraits];

  [newTraits useOnlineToOfflineFailoverRequestModeIfAllowed];
  objc_initWeak(&location, self);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100B91C28;
  v15[3] = &unk_10163BD50;
  objc_copyWeak(&v16, &location);
  [poiSearchManager searchForIdentifier:v12 allowExpired:0 traits:newTraits completionHandler:v15];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)placeViewController:(id)controller didRequestEditingNoteWithInitialText:(id)text libraryAccessProvider:(id)provider completion:(id)completion
{
  completionCopy = completion;
  providerCopy = provider;
  textCopy = text;
  placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
  mapItem = [(PlaceCardLibraryOperationsCoordinator *)self->_libraryOperationsCoordinator mapItem];
  [placeCardDelegate placeCardViewController:self didRequestEditingNoteWithInitialText:textCopy libraryAccessProvider:providerCopy placeMUID:objc_msgSend(mapItem completion:{"_muid"), completionCopy}];
}

- (void)placeViewController:(id)controller didSelectMapsExtension:(id)extension usingAppStoreApp:(id)app parameters:(id)parameters
{
  parametersCopy = parameters;
  appCopy = app;
  extensionCopy = extension;
  v12 = [RestaurantReservationRouter alloc];
  mapItem = [(PlaceCardViewController *)self mapItem];
  v14 = [(RestaurantReservationRouter *)v12 initWithExtension:extensionCopy parameters:parametersCopy appStoreApp:appCopy mapItem:mapItem presenter:self];

  reservationRouter = self->_reservationRouter;
  self->_reservationRouter = v14;

  v16 = self->_reservationRouter;

  [(RestaurantReservationRouter *)v16 resolve];
}

- (void)placeViewController:(id)controller didSelectShareCurrentLocationWithCompletion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  v8 = +[MKLocationManager sharedLocationManager];
  isAuthorizedForPreciseLocation = [v8 isAuthorizedForPreciseLocation];

  if (isAuthorizedForPreciseLocation)
  {
    completionCopy[2](completionCopy, 1);
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
    v14 = completionCopy;
    [v12 requestTemporaryPreciseLocationAuthorizationWithPurposeKey:@"AppInfoTemporaryPreciseLocationAuthorizationForShareLocationPurposeKey" completion:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

- (void)placeViewControllerDidTapMiniBrowseCategory:(id)category
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController wantsLayout:3];
}

- (void)placeViewController:(id)controller requestPasscodeUnlockWithCompletion:(id)completion
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100B923E0;
  v5[3] = &unk_1016610B8;
  completionCopy = completion;
  v4 = completionCopy;
  [UIApplication _maps_unlockApplicationWithCompletion:v5];
}

- (void)placeViewController:(id)controller didSelectParent:(id)parent
{
  if (parent)
  {
    parentCopy = parent;
    if (sub_10000FA08(self) != 5)
    {
      cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
      containerStyle = [cardPresentationController containerStyle];

      if (containerStyle == 1)
      {
        cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
        [cardPresentationController2 wantsLayout:2];
      }
    }

    placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
    [placeCardDelegate placeCardViewController:self didSelectParent:parentCopy];
  }
}

- (void)placeViewController:(id)controller didSelectSearchCategory:(id)category
{
  categoryCopy = category;
  placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
  placeCardItem = [(PlaceCardViewController *)self placeCardItem];
  mapItem = [placeCardItem mapItem];
  [placeCardDelegate placeCardViewController:self presentCategoryPlacesListForMapItem:mapItem searchCategory:categoryCopy];
}

- (void)placeViewControllerDidSelectRemoveMarker:(id)marker
{
  placeCardItem = [(PlaceCardViewController *)self placeCardItem];
  searchResult = [placeCardItem searchResult];

  placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
  [placeCardDelegate placeCardViewController:self removeDroppedPin:searchResult];
}

- (void)placeViewControllerDidSelectDisplayedAddress:(id)address
{
  placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
  placeCardItem = [(PlaceCardViewController *)self placeCardItem];
  [placeCardDelegate placeCardViewController:self selectDisplayedAddressFromPlaceCardItem:placeCardItem];

  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController wantsLayout:1];
}

- (void)placeViewControllerDidSelectEditLocationOfMarkedLocation:(id)location
{
  placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
  placeCardItem = [(PlaceCardViewController *)self placeCardItem];
  searchResult = [placeCardItem searchResult];
  [placeCardDelegate placeCardViewController:self editLocationOfMarkedLocation:searchResult];
}

- (void)placeViewControllerDidSelectDropPin:(id)pin
{
  placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
  v4 = +[SearchResult currentLocationSearchResult];
  [placeCardDelegate placeCardViewController:self createDroppedPin:v4];
}

- (void)placeViewControllerDidSelectFlyover:(id)flyover
{
  placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
  placeCardItem = [(PlaceCardViewController *)self placeCardItem];
  mapItem = [placeCardItem mapItem];
  [placeCardDelegate placeCardViewController:self enterFlyoverForMapItem:mapItem];
}

- (void)placeViewControllerDidSelectOfflineManagement:(id)management
{
  placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
  [placeCardDelegate placeCardViewControllerShowOfflineMaps:self];
}

- (void)placeViewControllerDidSelectPauseOfflineDownload:(id)download
{
  subscriptionInfo = [(PlaceCardOfflineMapProvider *)self->_offlineMapProvider subscriptionInfo];
  if (subscriptionInfo)
  {
    v5 = subscriptionInfo;
    v4 = +[MapsOfflineUIHelper sharedHelper];
    [v4 pauseDownloadForSubscriptionInfo:v5];

    subscriptionInfo = v5;
  }
}

- (void)placeViewControllerDidSelectDownloadOffline:(id)offline environment:(id)environment
{
  environmentCopy = environment;
  subscriptionInfo = [(PlaceCardOfflineMapProvider *)self->_offlineMapProvider subscriptionInfo];
  if (subscriptionInfo)
  {
    if ([environmentCopy isQuickAction])
    {
      placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
      [placeCardDelegate placeCardViewControllerShowOfflineMaps:self];
    }

    else
    {
      placeCardDelegate = +[MapsOfflineUIHelper sharedHelper];
      [placeCardDelegate resumeDownloadForSubscriptionInfo:subscriptionInfo mode:1];
    }
  }

  else
  {
    mapItem = [(PlaceCardViewController *)self mapItem];
    _geoMapItem = [mapItem _geoMapItem];
    placeCardDelegate = [_geoMapItem offlineDownloadRegion];

    mapItem2 = [(PlaceCardViewController *)self mapItem];
    name = [mapItem2 name];

    placeCardDelegate2 = [(PlaceCardViewController *)self placeCardDelegate];
    mapItem3 = [(PlaceCardViewController *)self mapItem];
    [placeCardDelegate2 placeCardViewController:self showOfflineMapRegionSelectorForRegion:placeCardDelegate name:name muid:objc_msgSend(mapItem3 shouldShowDataManagementAfterDownload:{"_muid"), objc_msgSend(environmentCopy, "isQuickAction")}];
  }

  [(PlaceCardViewController *)self _clearOfflineDownloadTipIfNeeded];
}

- (void)placeViewControllerDidSelectPlaceEnrichmentRAP:(id)p
{
  v4 = self->_placeCardItem;
  _maps_mapsSceneDelegate = [(PlaceCardViewController *)self _maps_mapsSceneDelegate];
  rapPresenter = [_maps_mapsSceneDelegate rapPresenter];
  currentUITargetForAnalytics = [(PlaceCardViewController *)self currentUITargetForAnalytics];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100B92BB4;
  v9[3] = &unk_10163BCB0;
  v10 = v4;
  v8 = v4;
  [rapPresenter presentPlaceEnrichmentRAPWithTarget:currentUITargetForAnalytics fromPlacecardWithEditingContext:v9 completion:0];
}

- (void)placeViewControllerDidSelectRAPViewReport:(id)report
{
  _maps_mapsSceneDelegate = [(PlaceCardViewController *)self _maps_mapsSceneDelegate];
  rapPresenter = [_maps_mapsSceneDelegate rapPresenter];
  [rapPresenter presentReportAProblemWithCompletion:0];
}

- (void)placeViewController:(id)controller didSelectEditPlaceDetailsOfType:(int64_t)type
{
  v6 = self->_placeCardItem;
  _maps_mapsSceneDelegate = [(PlaceCardViewController *)self _maps_mapsSceneDelegate];
  rapPresenter = [_maps_mapsSceneDelegate rapPresenter];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100B92D4C;
  v10[3] = &unk_10163BCB0;
  v11 = v6;
  v9 = v6;
  [rapPresenter presentEditPlaceDetailsOfType:type fromPlacecardWithEditingContext:v10];
}

- (void)placeViewController:(id)controller didSelectAddMissingDataOfType:(int64_t)type
{
  v6 = self->_placeCardItem;
  _maps_mapsSceneDelegate = [(PlaceCardViewController *)self _maps_mapsSceneDelegate];
  rapPresenter = [_maps_mapsSceneDelegate rapPresenter];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100B92E88;
  v10[3] = &unk_10163BCB0;
  v11 = v6;
  v9 = v6;
  [rapPresenter presentAddMissingDataOfType:type fromPlacecardWithEditingContext:v10];
}

- (void)placeViewControllerDidSelectAddAPlace:(id)place environment:(id)environment
{
  environmentCopy = environment;
  placeCardItem = self->_placeCardItem;
  placeCopy = place;
  isCurrentLocation = [(PlaceCardItem *)placeCardItem isDroppedPin]|| [(PlaceCardItem *)self->_placeCardItem isCurrentLocation];
  v10 = self->_placeCardItem;
  if ([environmentCopy isActionBar])
  {
    currentUITargetForAnalytics = 203;
  }

  else if ([environmentCopy isQuickAction])
  {
    currentUITargetForAnalytics = 30;
  }

  else
  {
    currentUITargetForAnalytics = [(PlaceCardViewController *)self currentUITargetForAnalytics];
  }

  _maps_mapsSceneDelegate = [(PlaceCardViewController *)self _maps_mapsSceneDelegate];
  rapPresenter = [_maps_mapsSceneDelegate rapPresenter];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100B93094;
  v17[3] = &unk_10163BCB0;
  v18 = v10;
  v14 = v10;
  _overriddenUserInterfaceStyle = [(PlaceCardViewController *)self _overriddenUserInterfaceStyle];
  view = [placeCopy view];

  [rapPresenter presentAddAPlaceFromPlacecardWithEditingContext:v17 overriddenUserInterfaceStyle:_overriddenUserInterfaceStyle shouldShowDetailedFlow:isCurrentLocation sourceView:view entryPoint:currentUITargetForAnalytics completion:0];
  [GEOAPPortal captureUserAction:222 target:currentUITargetForAnalytics value:0];
}

- (int64_t)_overriddenUserInterfaceStyle
{
  placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  placeCardDelegate2 = [(PlaceCardViewController *)self placeCardDelegate];
  v6 = [placeCardDelegate2 overriddenInterfaceStyleForPlaceViewControllerSubviews:self];

  return v6;
}

- (void)placeViewController:(id)controller photoGalleryDidScroll:(id)scroll
{
  reportImageryController = self->_reportImageryController;
  scrollCopy = scroll;
  [(UGCReportImageryController *)reportImageryController cancelPresentation];
  [scrollCopy stopAnimatingActivityIndicatorViewForRAP];
}

- (void)placeViewController:(id)controller didSelectPhotoToReport:(id)report withPhotoGalleryViewController:(id)viewController
{
  viewControllerCopy = viewController;
  reportCopy = report;
  v9 = [UGCReportImageryController alloc];
  mapItem = [(PlaceCardItem *)self->_placeCardItem mapItem];
  v11 = [(UGCReportImageryController *)v9 initWithMapItem:mapItem reportedPhoto:reportCopy presentingViewController:viewControllerCopy];

  reportImageryController = self->_reportImageryController;
  self->_reportImageryController = v11;

  [viewControllerCopy startAnimatingActivityIndicatorViewForRAP];
  v13 = self->_reportImageryController;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100B932EC;
  v15[3] = &unk_10163BCD8;
  v16 = viewControllerCopy;
  v14 = viewControllerCopy;
  [(UGCReportImageryController *)v13 fetchLayoutAndPresentWithCompletion:v15];
}

- (void)placeViewControllerDidSelectReportAProblem:(id)problem fromView:(id)view environment:(id)environment
{
  problemCopy = problem;
  viewCopy = view;
  environmentCopy = environment;
  if (!viewCopy)
  {
    viewCopy = [problemCopy view];
  }

  _maps_mapsSceneDelegate = [(PlaceCardViewController *)self _maps_mapsSceneDelegate];
  rapPresenter = [_maps_mapsSceneDelegate rapPresenter];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100B9343C;
  v15[3] = &unk_10163BCB0;
  v15[4] = self;
  _overriddenUserInterfaceStyle = [(PlaceCardViewController *)self _overriddenUserInterfaceStyle];
  if ([environmentCopy isActionBar])
  {
    currentUITargetForAnalytics = 203;
  }

  else if ([environmentCopy isQuickAction])
  {
    currentUITargetForAnalytics = 30;
  }

  else
  {
    currentUITargetForAnalytics = [(PlaceCardViewController *)self currentUITargetForAnalytics];
  }

  [rapPresenter presentReportAProblemFromPlaceCardViewController:self editingContext:v15 overriddenUserInterfaceStyle:_overriddenUserInterfaceStyle sourceView:viewCopy entryPoint:currentUITargetForAnalytics completion:0];
}

- (void)placeViewController:(id)controller showTransitIncidents:(id)incidents
{
  incidentsCopy = incidents;
  placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
  [placeCardDelegate placeCardViewController:self showTransitIncidents:incidentsCopy];
}

- (void)placeViewController:(id)controller openURL:(id)l
{
  lCopy = l;
  placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
  [placeCardDelegate placeCardViewController:self openURL:lCopy];
}

- (void)placeViewController:(id)controller didSelectTransitLine:(id)line
{
  lineCopy = line;
  v6 = [IncompleteTransitLineItem alloc];
  mapItemIdentifier = [lineCopy mapItemIdentifier];
  labelText = [lineCopy labelText];

  v10 = [(IncompleteTransitLineItem *)v6 initWithIdentifier:mapItemIdentifier name:labelText];
  placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
  [placeCardDelegate placeCardViewController:self selectTransitLineItem:v10];
}

- (BOOL)placeViewController:(id)controller canSelectDepartureSequence:(id)sequence mapItem:(id)item
{
  itemCopy = item;
  sequenceCopy = sequence;
  placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
  LOBYTE(self) = [placeCardDelegate placeCardViewController:self shouldShowTransitScheduleForMapItem:itemCopy departureSequence:sequenceCopy];

  return self;
}

- (void)placeViewController:(id)controller didSelectDepartureSequence:(id)sequence mapItem:(id)item
{
  itemCopy = item;
  sequenceCopy = sequence;
  placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
  [placeCardDelegate placeCardViewController:self showTransitScheduleForMapItem:itemCopy departureSequence:sequenceCopy];
}

- (void)placeViewController:(id)controller expandCardAnimated:(BOOL)animated
{
  animatedCopy = animated;
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController wantsLayout:3 animated:animatedCopy];
}

- (int)mapTypeForPlaceViewController:(id)controller
{
  placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
  displayedViewMode = [placeCardDelegate displayedViewMode];
  if (displayedViewMode + 1 > 7)
  {
    v5 = 1;
  }

  else
  {
    v5 = dword_101215C80[displayedViewMode + 1];
  }

  return v5;
}

- (void)_updateFavoritesGuide
{
  v3 = +[CollectionManager sharedManager];
  favoriteCollection = [v3 favoriteCollection];

  mapItem = [(PlaceCardViewController *)self mapItem];
  -[MUPlaceViewController setPlaceInFavoritesGuide:](self->_placeViewController, "setPlaceInFavoritesGuide:", [favoriteCollection containsItem:mapItem]);
}

- (void)_updateShortcut
{
  _shortcut = [(PlaceCardViewController *)self _shortcut];
  v5 = _shortcut;
  if (_shortcut)
  {
    v4 = [_shortcut isHidden] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  [(MUPlaceViewController *)self->_placeViewController setPlaceInShortcuts:v4];
  [(InfoCardViewController *)self rebuildHeaderMenu];
}

- (void)placeViewControllerDidSelectRefineLocation:(id)location
{
  _shortcut = [(PlaceCardViewController *)self _shortcut];
  if (_shortcut)
  {
    v7 = _shortcut;
    v5 = [ShortcutEditSession editSessionWithShortcut:_shortcut];
    [v5 setEditingModeType:3];
    placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
    [placeCardDelegate placeCardViewController:self editShortcut:v5];

    _shortcut = v7;
  }
}

- (void)placeViewControllerDidSelectChangeAddress:(id)address
{
  _shortcut = [(PlaceCardViewController *)self _shortcut];
  if (_shortcut)
  {
    v7 = _shortcut;
    v5 = [ShortcutEditSession editSessionWithShortcut:_shortcut];
    [v5 setEditingModeType:2];
    placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
    [placeCardDelegate placeCardViewController:self editShortcut:v5];

    _shortcut = v7;
  }
}

- (void)placeViewControllerDidSelectRemoveShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  _shortcut = [(PlaceCardViewController *)self _shortcut];
  if (_shortcut && !self->_shortcutEditSession)
  {
    v6 = [ShortcutEditSession editSessionWithShortcut:_shortcut];
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

- (void)placeViewControllerDidSelectAddShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  _shortcut = [(PlaceCardViewController *)self _shortcut];
  if (!_shortcut || (v6 = _shortcut, -[PlaceCardViewController _shortcut](self, "_shortcut"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isHidden], v7, v6, v8))
  {
    if (!self->_shortcutEditSession)
    {
      _shortcut2 = [(PlaceCardViewController *)self _shortcut];

      if (_shortcut2)
      {
        _shortcut3 = [(PlaceCardViewController *)self _shortcut];
        v11 = [ShortcutEditSession addSessionWithShortcut:_shortcut3];
        syncObject = 0;
      }

      else
      {
        if ([(PlaceCardLibraryOperationsCoordinator *)self->_libraryOperationsCoordinator savedStateOfPlace]!= 1 || ([(PlaceCardLibraryOperationsCoordinator *)self->_libraryOperationsCoordinator syncObject], v14 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v14, (isKindOfClass & 1) == 0))
        {
          placeCardItem = [(PlaceCardViewController *)self placeCardItem];
          if ([placeCardItem isHomeWorkSchoolAddress])
          {
            placeCardItem2 = [(PlaceCardViewController *)self placeCardItem];
            [placeCardItem2 addressType];
            v18 = shortcutTypeForLOIType();
          }

          else
          {
            v18 = 1;
          }

          _shortcut3 = [(PlaceCardViewController *)self placeCardItem];
          mapItem = [(MapsFavoriteItem *)_shortcut3 mapItem];
          v19 = [ShortcutEditSession addSessionWithType:v18 mapItem:mapItem];
          shortcutEditSession = self->_shortcutEditSession;
          self->_shortcutEditSession = v19;

          syncObject = 0;
          goto LABEL_14;
        }

        syncObject = [(PlaceCardLibraryOperationsCoordinator *)self->_libraryOperationsCoordinator syncObject];
        _shortcut3 = [[_TtC4Maps16MapsFavoriteItem alloc] initWithCollectionItem:syncObject];
        v11 = [ShortcutEditSession addSessionWithShortcut:_shortcut3];
      }

      mapItem = self->_shortcutEditSession;
      self->_shortcutEditSession = v11;
LABEL_14:

      objc_initWeak(&location, self);
      v21 = self->_shortcutEditSession;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100B93E8C;
      v23[3] = &unk_10165FC50;
      objc_copyWeak(&v25, &location);
      v22 = syncObject;
      v24 = v22;
      [(ShortcutEditSession *)v21 saveWithCompletion:v23];

      objc_destroyWeak(&v25);
      objc_destroyWeak(&location);
    }
  }
}

- (id)_shortcut
{
  placeCardItem = [(PlaceCardViewController *)self placeCardItem];
  shortcut = [placeCardItem shortcut];

  return shortcut;
}

- (void)placeViewControllerDidTapHikingTip:(id)tip originMapItem:(id)item
{
  itemCopy = item;
  placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    placeCardDelegate2 = [(PlaceCardViewController *)self placeCardDelegate];
    [placeCardDelegate2 placeCardViewControllerDidTapHikingTip:self originMapItem:itemCopy];

    analyticsDelegate = [(PlaceCardViewController *)self analyticsDelegate];
    [analyticsDelegate infoCardAnalyticsDidSelectAction:465 eventValue:0 feedbackDelegateSelector:0 classification:0];
  }
}

- (id)placeViewController:(id)controller hikingTipViewForTipModel:(id)model
{
  modelCopy = model;
  v6 = +[GEOFeatureStyleAttributes customSavedRouteDashedStyleAttributes];
  view = [(PlaceCardViewController *)self view];
  traitCollection = [view traitCollection];
  [traitCollection displayScale];
  v9 = [MKIconManager imageForStyle:v6 size:3 forScale:0 format:?];

  v10 = [FeatureDiscoveryModel alloc];
  title = [modelCopy title];
  subtitle = [modelCopy subtitle];

  LOBYTE(v16) = 0;
  v13 = [(FeatureDiscoveryModel *)v10 initWithImage:v9 title:title subtitle:subtitle actionTitle:0 actionHandler:0 bodyTapHandler:0 displayedHandler:0 dismissHandler:0 disableAffordanceAfterAction:v16];

  v14 = objc_alloc_init(FeatureDiscoveryView);
  [(FeatureDiscoveryView *)v14 setModel:v13];
  [(FeatureDiscoveryView *)v14 setDrawsBackground:0];

  return v14;
}

- (void)placeViewController:(id)controller didRequestHikingToolTipRegionIDForLocation:(CLLocationCoordinate2D)location
{
  longitude = location.longitude;
  latitude = location.latitude;
  placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    placeCardDelegate2 = [(PlaceCardViewController *)self placeCardDelegate];
    [placeCardDelegate2 placeCardViewController:self didRequestHikingToolTipRegionIDForLocation:{latitude, longitude}];
  }
}

- (id)placeViewControllerRequestsMapViewAssociatedWithVC:(id)c
{
  placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
  v5 = [placeCardDelegate placeCardViewControllerRequestsMapViewAssociatedWithVC:self];

  return v5;
}

- (void)placeViewController:(id)controller showRelatedMapItems:(id)items withTitle:(id)title originalMapItem:(id)item analyticsDelegate:(id)delegate
{
  delegateCopy = delegate;
  itemCopy = item;
  titleCopy = title;
  itemsCopy = items;
  placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
  [placeCardDelegate placeCardViewController:self showRelatedMapItems:itemsCopy withTitle:titleCopy originalMapItem:itemCopy analyticsDelegate:delegateCopy];
}

- (id)inlineRatingViewControllerForPlaceViewController:(id)controller
{
  mapItem = [(PlaceCardViewController *)self mapItem];

  if (mapItem)
  {
    inlineRatingsController = self->_inlineRatingsController;
    if (!inlineRatingsController)
    {
      goto LABEL_6;
    }

    mapItem2 = [(UGCInlinePOIEnrichmentController *)inlineRatingsController mapItem];
    mapItem3 = [(PlaceCardViewController *)self mapItem];

    if (mapItem2 != mapItem3)
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
      mapItem4 = [(PlaceCardViewController *)self mapItem];
      v12 = [(UGCInlinePOIEnrichmentController *)v10 initWithMapItem:mapItem4];
      v13 = self->_inlineRatingsController;
      self->_inlineRatingsController = v12;

      [(UGCInlinePOIEnrichmentController *)self->_inlineRatingsController setDelegate:self];
      analyticsController = [(MUPlaceViewController *)self->_placeViewController analyticsController];
      [(UGCInlinePOIEnrichmentController *)self->_inlineRatingsController setAnalyticsController:analyticsController];

      [(UGCInlinePOIEnrichmentController *)self->_inlineRatingsController setPresentingViewController:self];
      [(PlaceCardViewController *)self _updateCallToActionStateIfNeeded];
      [(PlaceCardViewController *)self _updatePlacecardCallToActionAnimated:0];
      v9 = self->_inlineRatingsController;
    }

    contentViewController = [(UGCInlinePOIEnrichmentController *)v9 contentViewController];
  }

  else
  {
    contentViewController = 0;
  }

  return contentViewController;
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

    placeCardItem = [(PlaceCardViewController *)self placeCardItem];
    mapItem = [placeCardItem mapItem];
    mapItem2 = [(UGCCallToActionViewProvider *)self->_callToActionViewProvider mapItem];

    if (mapItem != mapItem2)
    {
      placeCardItem2 = [(PlaceCardViewController *)self placeCardItem];
      mapItem3 = [placeCardItem2 mapItem];
      [(UGCCallToActionViewProvider *)self->_callToActionViewProvider setMapItem:mapItem3];
    }

    v10 = self->_inlineRatingsController != 0;
    v11 = self->_callToActionViewProvider;

    [(UGCCallToActionViewProvider *)v11 setAlwaysRefinesUserSubmission:v10];
  }
}

- (void)poiEnrichmentCoordinator:(id)coordinator didFinishSubmissionLookup:(id)lookup
{
  lookupCopy = lookup;
  status = [lookupCopy status];
  if (status == 1)
  {
    [(UGCCallToActionViewProvider *)self->_callToActionViewProvider updateWithFetchedLookupResult:lookupCopy];
  }

  else if (status == 3)
  {
    [(UGCCallToActionViewProvider *)self->_callToActionViewProvider resolveForUserEdit];
  }
}

- (void)_presentPOIEnrichmentCoordinator:(id)coordinator withProgressObserver:(id)observer
{
  observerCopy = observer;
  coordinatorCopy = coordinator;
  _maps_mapsSceneDelegate = [(PlaceCardViewController *)self _maps_mapsSceneDelegate];
  topMostPresentedViewController = [_maps_mapsSceneDelegate topMostPresentedViewController];
  [(PlaceCardViewController *)self _presentPOIEnrichmentCoordinator:coordinatorCopy presentingViewController:topMostPresentedViewController progressObserver:observerCopy];
}

- (void)_presentPOIEnrichmentCoordinator:(id)coordinator presentingViewController:(id)controller progressObserver:(id)observer
{
  coordinatorCopy = coordinator;
  controllerCopy = controller;
  observerCopy = observer;
  if (self->_photoViewerScene)
  {
    +[MacPlacePhotoViewerScene teardownCurrentScene];
  }

  [coordinatorCopy setPresentingViewController:controllerCopy];
  [coordinatorCopy setSubmissionLookupObserver:observerCopy];
  [coordinatorCopy setSubmissionStatusDelegate:self];
  [coordinatorCopy setPresentationContext:1];
  lookupResult = [(UGCCallToActionViewProvider *)self->_callToActionViewProvider lookupResult];
  [coordinatorCopy setSubmissionLookupResult:lookupResult];

  placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
  [placeCardDelegate placeCardViewController:self presentPOIEnrichmentWithCoordinator:coordinatorCopy];
}

- (void)placeViewController:(id)controller didSelectAddRatingsWithPresentationOptions:(id)options overallState:(int64_t)state originTarget:(id)target
{
  optionsCopy = options;
  targetCopy = target;
  if (MapsFeature_IsEnabled_LagunaBeach())
  {
    if (state == 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2 * (state == 2);
    }

    placeCardItem = [(PlaceCardViewController *)self placeCardItem];
    mapItem = [placeCardItem mapItem];
    v13 = [UGCPOIEnrichmentCoordinator ratingsAndPhotosCoordinatorWithMapItem:mapItem initialOverallState:v10 entryPoint:0 originTarget:targetCopy];

    progressObserver = [optionsCopy progressObserver];
    [(PlaceCardViewController *)self _presentPOIEnrichmentCoordinator:v13 withProgressObserver:progressObserver];
  }
}

- (void)placeViewController:(id)controller didSelectEditSubmissionWithPresentationOptions:(id)options
{
  optionsCopy = options;
  if (MapsFeature_IsEnabled_LagunaBeach())
  {
    placeCardItem = [(PlaceCardViewController *)self placeCardItem];
    mapItem = [placeCardItem mapItem];
    v7 = [UGCPOIEnrichmentCoordinator ratingsAndPhotosCoordinatorWithMapItem:mapItem entryPoint:0 originTarget:0];

    progressObserver = [optionsCopy progressObserver];
    [(PlaceCardViewController *)self _presentPOIEnrichmentCoordinator:v7 withProgressObserver:progressObserver];
  }
}

- (void)placeViewController:(id)controller didSelectAddPhotosWithPresentationOptions:(id)options entryPoint:(int64_t)point originTarget:(id)target
{
  optionsCopy = options;
  targetCopy = target;
  if (MapsFeature_IsEnabled_LagunaBeach())
  {
    if (point == 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2 * (point == 2);
    }

    placeCardItem = [(PlaceCardViewController *)self placeCardItem];
    mapItem = [placeCardItem mapItem];
    v13 = [UGCPOIEnrichmentCoordinator photoEmphasizedAddCoordinatorWithMapItem:mapItem preferredSourceType:v10 originTarget:targetCopy];

    sourceView = [optionsCopy sourceView];
    [v13 setAnchoringView:sourceView];

    progressObserver = [optionsCopy progressObserver];
    [(PlaceCardViewController *)self _presentPOIEnrichmentCoordinator:v13 withProgressObserver:progressObserver];
  }
}

- (void)placeViewControllerDidSelectSeeMorePhotos:(id)photos withStartingIndex:(unint64_t)index
{
  mapItem = [photos mapItem];
  v7 = [UGCPOIEnrichmentCoordinator photoThumbnailGalleryCoordinatorWithMapItem:mapItem withStartingIndex:index];

  [(PlaceCardViewController *)self _presentPOIEnrichmentCoordinator:v7 withProgressObserver:0];
}

- (void)_updatePlacecardCallToActionAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (MapsFeature_IsEnabled_LagunaBeach())
  {
    v29 = animatedCopy;
    submissionStatusAppearance = [(UGCCallToActionViewProvider *)self->_callToActionViewProvider submissionStatusAppearance];
    if (MapsFeature_IsEnabled_SydneyARP())
    {
      [(UGCSuggestionViewProvider *)self->_suggestionViewProvider setSubmissionStatus:submissionStatusAppearance];
      [(UGCInlinePOIEnrichmentController *)self->_inlineRatingsController setSubmissionStatus:submissionStatusAppearance];
      lookupResult = [(UGCCallToActionViewProvider *)self->_callToActionViewProvider lookupResult];
      [(UGCInlinePOIEnrichmentController *)self->_inlineRatingsController setLookupResult:lookupResult];
    }

    v30 = submissionStatusAppearance;
    selfCopy = self;
    lookupResult2 = [(UGCCallToActionViewProvider *)self->_callToActionViewProvider lookupResult];
    previousSubmission = [lookupResult2 previousSubmission];

    v27 = previousSubmission;
    scorecard = [previousSubmission scorecard];
    v10 = [UGCRatingCategory ratingCategoryListForScorecard:scorecard];

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
          currentState = [v17 currentState];
          if (currentState <= 2)
          {
            v20 = off_10163BE90[currentState];

            v18 = v20;
          }

          v21 = [MUUGCRatingViewModel alloc];
          localizedTitle = [v17 localizedTitle];
          v23 = [v21 initWithCategory:localizedTitle value:v18];

          [v11 addObject:v23];
        }

        v14 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v14);
    }

    v24 = [submissionStatusAppearance type] == 4 && objc_msgSend(submissionStatusAppearance, "ratingState") != 0;
    if ([submissionStatusAppearance type] != 5)
    {
      [(MUPlaceViewController *)selfCopy->_placeViewController setPlaceHasRating:v24];
    }

    placeViewController = selfCopy->_placeViewController;
    v26 = [v11 copy];
    [(MUPlaceViewController *)placeViewController updateViewsWithSubmissionStatus:v30 userRatings:v26 animated:v29];
  }
}

- (void)inlinePOIEnrichmentControllerPresentPOIEnrichment:(id)enrichment
{
  placeCardItem = [(PlaceCardViewController *)self placeCardItem];
  mapItem = [placeCardItem mapItem];
  v7 = [UGCPOIEnrichmentCoordinator ratingsAndPhotosCoordinatorWithMapItem:mapItem initialOverallState:0 entryPoint:3 originTarget:0];

  placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
  [placeCardDelegate placeCardViewController:self presentPOIEnrichmentWithCoordinator:v7];
}

- (void)inlinePOIEnrichmentController:(id)controller didSelectTermsOfServiceURL:(id)l
{
  lCopy = l;
  placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
  [placeCardDelegate placeCardViewController:self openURL:lCopy];
}

- (void)didSelectSharePublisherGuide:(id)guide
{
  guideCopy = guide;
  v5 = [CuratedCollectionShareItemSource alloc];
  publisher = [guideCopy publisher];

  v8 = [(CuratedCollectionShareItemSource *)v5 initWithPublisher:publisher];
  placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
  [placeCardDelegate placeCardViewController:self didSelectSharePublisherShareItem:v8];
}

- (void)didSelectSavePublisherGuide:(id)guide
{
  guideCopy = guide;
  v4 = +[CuratedCollectionSyncManager sharedManager];
  [v4 addSavedCuratedCollection:guideCopy completion:0];
}

- (void)didSelectShowPublisherForPublisherGuide:(id)guide
{
  guideCopy = guide;
  placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
  publisher = [guideCopy publisher];

  [placeCardDelegate placeCardViewController:self didSelectShowPublisherForPublisher:publisher];
}

- (void)placeViewController:(id)controller seeAllCollections:(id)collections usingTitle:(id)title usingCollectionIds:(id)ids
{
  idsCopy = ids;
  titleCopy = title;
  collectionsCopy = collections;
  placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
  [placeCardDelegate placeCardViewController:self seeAllCollections:collectionsCopy usingTitle:titleCopy usingCollectionIds:idsCopy];
}

- (void)placeViewController:(id)controller selectExploreGuidesWithGuideLocation:(id)location
{
  locationCopy = location;
  placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
  [placeCardDelegate placeCardViewController:self selectExploreGuidesWithGuideLocation:locationCopy];
}

- (void)placeViewController:(id)controller selectCuratedCollectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
  [placeCardDelegate placeCardViewController:self showCuratedCollectionIdentifier:identifierCopy];
}

- (void)placeViewController:(id)controller selectCuratedCollection:(id)collection
{
  collectionCopy = collection;
  placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
  [placeCardDelegate placeCardViewController:self showCuratedCollection:collectionCopy];
}

- (id)placeViewControllerUserIcon:(id)icon
{
  v3 = +[UserInformationManager sharedInstance];
  userIcon = [v3 userIcon];

  return userIcon;
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

  mapItem = [(PlaceCardViewController *)self mapItem];
  _identifier = [mapItem _identifier];

  if (!_identifier)
  {
    return 0;
  }

  v5 = +[UserProfileReportHistoryManager sharedInstance];
  rapHistory = [v5 rapHistory];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100B954C0;
  v10[3] = &unk_10163BC88;
  v10[4] = self;
  v7 = sub_1000282CC(rapHistory, v10);
  v8 = [v7 count];

  return v8;
}

- (void)_updateRAPInReviewStatus
{
  [(MUPlaceViewController *)self->_placeViewController setPlaceNumberOfReportsInReview:[(PlaceCardViewController *)self _numberOfRAPsInReview]];
  placeViewController = self->_placeViewController;

  [(MUPlaceViewController *)placeViewController updatePlaceInfo];
}

- (void)placeEnrichmentAPIContollerDidFetchEnrichmentData:(id)data forMapItem:(id)item
{
  itemCopy = item;
  placeCardItem = [(PlaceCardViewController *)self placeCardItem];
  mapItem = [placeCardItem mapItem];
  v8 = [mapItem isEqual:itemCopy];

  if (v8)
  {
    placeViewController = self->_placeViewController;

    [(MUPlaceViewController *)placeViewController updatePlaceEnrichment];
  }
}

- (void)_updateCollectionsAnimated:(BOOL)animated
{
  [(MUPlaceViewController *)self->_placeViewController updateCollectionViewsAnimated:animated];
  [(MUPlaceViewController *)self->_placeViewController setPlaceInCollections:[(PlaceCardViewController *)self _collectionsCount]!= 0];
  [(MUPlaceViewController *)self->_placeViewController updateActionRowView];

  [(InfoCardViewController *)self rebuildHeaderMenu];
}

- (void)_addPlaceToCollection:(id)collection editCollection:(BOOL)editCollection
{
  collectionCopy = collection;
  placeCardItem = [(PlaceCardViewController *)self placeCardItem];
  mapItem = [placeCardItem mapItem];

  placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
  objc_initWeak(&location, self);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100B9596C;
  v20[3] = &unk_10163BC60;
  v10 = collectionCopy;
  v21 = v10;
  v11 = mapItem;
  v22 = v11;
  editCollectionCopy = editCollection;
  v12 = placeCardDelegate;
  v23 = v12;
  objc_copyWeak(&v24, &location);
  v13 = objc_retainBlock(v20);
  placeCardItem2 = [(PlaceCardViewController *)self placeCardItem];
  if ([placeCardItem2 isDroppedPin])
  {
  }

  else
  {
    _maps_canRenameCollectionItem = [v11 _maps_canRenameCollectionItem];

    if ((_maps_canRenameCollectionItem & 1) == 0)
    {
      (v13[2])(v13);
      goto LABEL_6;
    }
  }

  placeCardDelegate2 = [(PlaceCardViewController *)self placeCardDelegate];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100B95A80;
  v17[3] = &unk_10165F618;
  v18 = v11;
  v19 = v13;
  [placeCardDelegate2 placeCardViewController:self editNameOfMapItem:v18 saveHandler:v17 cancelHandler:0];

LABEL_6:
  objc_destroyWeak(&v24);

  objc_destroyWeak(&location);
}

- (void)placeViewController:(id)controller selectCollectionIdentifier:(id)identifier
{
  v5 = [(PlaceCardCollectionMembershipProvider *)self->_collectionMembershipProvider containingCollectionWithIdentifer:identifier];
  if (v5)
  {
    v7 = v5;
    placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
    [placeCardDelegate placeCardViewController:self showCollection:v7];

    v5 = v7;
  }
}

- (void)placeViewController:(id)controller didSelectAddToCollectionWithPlaceActionEnvironment:(id)environment showsAddToLibrarySection:(BOOL)section
{
  sectionCopy = section;
  controllerCopy = controller;
  environmentCopy = environment;
  placeCardItem = [(PlaceCardViewController *)self placeCardItem];
  mapItem = [placeCardItem mapItem];

  v12 = [(CollectionSaveSession *)[CollectionAddOrRemoveSession alloc] initWithMapItem:mapItem showsAddToLibrarySection:sectionCopy];
  objc_initWeak(&location, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100B95DC8;
  v16[3] = &unk_10163BC10;
  objc_copyWeak(&v18, &location);
  v13 = environmentCopy;
  v17 = v13;
  [(CollectionEditSession *)v12 setAnalyticsHandler:v16];
  sourceView = [v13 sourceView];
  placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
  [sourceView bounds];
  [placeCardDelegate placeCardViewController:self pickCollectionWithSession:v12 sourceView:sourceView sourceRect:?];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (id)placeViewController:(id)controller webPlacecardGuidesForPlaceItem:(id)item
{
  mapItem = [item mapItem];
  if (mapItem)
  {
    v22 = mapItem;
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
          image = [v10 image];
          v12 = UIImagePNGRepresentation(image);

          v13 = [MUPersonalGuideViewModel alloc];
          identifier = [v10 identifier];
          title = [v10 title];
          numberOfItems = [v10 numberOfItems];
          unsignedIntegerValue = [numberOfItems unsignedIntegerValue];
          v18 = [v12 base64EncodedStringWithOptions:0];
          v19 = [v13 initWithGuideID:identifier title:title numberOfPlaces:unsignedIntegerValue image:v18];

          [v24 addObject:v19];
        }

        v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v7);
    }

    v20 = [v24 copy];

    mapItem = v22;
  }

  else
  {
    v20 = &__NSArray0__struct;
  }

  return v20;
}

- (id)placeViewController:(id)controller collectionViewsForPlaceItem:(id)item
{
  mapItem = [item mapItem];
  if (mapItem)
  {
    v21 = mapItem;
    v6 = +[NSMutableDictionary dictionary];
    containingCollections = [(PlaceCardCollectionMembershipProvider *)self->_collectionMembershipProvider containingCollections];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = [containingCollections countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(containingCollections);
          }

          v15 = *(*(&v22 + 1) + 8 * i);
          if (sub_10000FA08(self) == 5)
          {
            height = [[TwoLinesContentView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
            v17 = [TwoLinesContentViewModelComposer cellModelForCollection:v15];
            [(TwoLinesContentView *)height setViewModel:v17];
          }

          else
          {
            height = [[CollectionView alloc] initWithCollectionViewSize:0];
            [(TwoLinesContentView *)height setCollectionInfo:v15];
          }

          identifier = [v15 identifier];
          [v6 setObject:height forKeyedSubscript:identifier];
        }

        v9 = [containingCollections countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    v19 = [v6 copy];

    mapItem = v21;
  }

  else
  {
    v19 = &__NSDictionary0__struct;
  }

  return v19;
}

- (unint64_t)_collectionsCount
{
  containingCollections = [(PlaceCardCollectionMembershipProvider *)self->_collectionMembershipProvider containingCollections];
  v3 = [containingCollections count];

  return v3;
}

- (id)menuElementForActionItem:(id)item
{
  itemCopy = item;
  v29 = itemCopy;
  if ([itemCopy type] == 16)
  {
    v5 = [MapsMenuBuilder sendToDeviceAndShareMenuWithSendToDeviceEnabled:1];
LABEL_3:
    v6 = v5;
    goto LABEL_28;
  }

  if ([itemCopy type] != 21)
  {
    if ([itemCopy type] == 2)
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
    v5 = [(InfoCardViewController *)&v32 menuElementForActionItem:itemCopy];
    goto LABEL_3;
  }

  placeCardItem = [(PlaceCardViewController *)self placeCardItem];
  mapItem = [placeCardItem mapItem];

  if (mapItem)
  {
    v8 = +[CollectionManager sharedManager];
    v9 = [v8 collectionsNotContainingMapItem:mapItem];

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
          title = [v13 title];
          v15 = title;
          if (title)
          {
            v16 = title;
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
    v36 = mapItem;
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

- (id)alternatePrimaryButtonControllerForPlaceViewController:(id)controller
{
  controllerCopy = controller;
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

- (void)placeViewControllerDidUpdateHeight:(id)height
{
  if (self->_shouldFetchDraggableViews)
  {
    placeCardItem = [(PlaceCardViewController *)self placeCardItem];
    isIntermediateMapItem = [placeCardItem isIntermediateMapItem];

    if ((isIntermediateMapItem & 1) == 0)
    {
      draggableContent = [(MUPlaceViewController *)self->_placeViewController draggableContent];
      [(PlaceCardViewController *)self setDraggableContent:draggableContent];
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
  searchResult = [(PlaceCardItem *)self->_placeCardItem searchResult];
  if (searchResult)
  {
    [(SearchFieldItem *)v4 setSearchResult:searchResult];
  }

  else
  {
    v6 = [SearchResult alloc];
    mapItem = [(PlaceCardItem *)self->_placeCardItem mapItem];
    v8 = [(SearchResult *)v6 initWithMapItem:mapItem];
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
  placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
  [placeCardDelegate placeCardViewController:self doDirectionItem:v12 userInfo:v13];
}

- (void)_routeToCurrentSearchResultWithTransportType:(int64_t)type
{
  v5 = sub_100B9707C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    if ((type - 1) > 4)
    {
      v6 = @"Undefined";
    }

    else
    {
      v6 = off_10163BE68[type - 1];
    }

    *buf = 138412290;
    v29 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Routing to current search result with transport type: %@", buf, 0xCu);
  }

  isAdditionalStop = [(PlaceCardViewController *)self isAdditionalStop];
  v8 = objc_alloc_init(SearchFieldItem);
  if (isAdditionalStop)
  {
    searchResult = [(PlaceCardItem *)self->_placeCardItem searchResult];
    if (searchResult)
    {
      [(SearchFieldItem *)v8 setSearchResult:searchResult];
    }

    else
    {
      v13 = [SearchResult alloc];
      mapItem = [(PlaceCardItem *)self->_placeCardItem mapItem];
      v15 = [(SearchResult *)v13 initWithMapItem:mapItem];
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
    searchResult2 = [(PlaceCardItem *)self->_placeCardItem searchResult];
    if (searchResult2)
    {
      [(SearchFieldItem *)v11 setSearchResult:searchResult2];
    }

    else
    {
      v17 = [SearchResult alloc];
      mapItem2 = [(PlaceCardItem *)self->_placeCardItem mapItem];
      v19 = [(SearchResult *)v17 initWithMapItem:mapItem2];
      [(SearchFieldItem *)v11 setSearchResult:v19];
    }

    v26[0] = v8;
    v26[1] = v11;
    v16 = [NSArray arrayWithObjects:v26 count:2];
  }

  v20 = [[DirectionItem alloc] initWithItems:v16 transportType:type];
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

  placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
  [placeCardDelegate placeCardViewController:self doDirectionItem:v20 userInfo:v22];
}

- (int64_t)overriddenInterfaceStyleForPlaceViewControllerSubviews:(id)subviews
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

- (id)activityViewControllerForPlaceViewController:(id)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_placeCardDelegate);
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0 || (v6 = objc_loadWeakRetained(&self->_placeCardDelegate), [v6 activityViewControllerForPlaceViewController:self], v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    v8 = [MapsActivityViewController alloc];
    shareItemSource = [(PlaceCardViewController *)self shareItemSource];
    v7 = [(MapsActivityViewController *)v8 initWithShareItem:shareItemSource];

    v10 = +[UIApplication sharedMapsDelegate];
    appCoordinator = [v10 appCoordinator];
    [(MapsActivityViewController *)v7 setMapsActivityDelegate:appCoordinator];
  }

  return v7;
}

- (id)shareItemSource
{
  placeCardItem = [(PlaceCardViewController *)self placeCardItem];
  if ([placeCardItem isCurrentLocation])
  {
    updatedCurrentLocation = self->_updatedCurrentLocation;
    if (updatedCurrentLocation)
    {
      mapItem = updatedCurrentLocation;
    }

    else
    {
      placeCardItem2 = [(PlaceCardViewController *)self placeCardItem];
      mapItem = [placeCardItem2 mapItem];
    }

    v9 = [ShareItem shareItemForCurrentLocationIncludingPrintActivity:1 withBackingMapItem:mapItem];
  }

  else
  {
    searchResult = [placeCardItem searchResult];
    v7 = searchResult;
    if (searchResult)
    {
      mapItem = searchResult;
    }

    else
    {
      v10 = [SearchResult alloc];
      mapItem2 = [placeCardItem mapItem];
      mapItem = [(SearchResult *)v10 initWithMapItem:mapItem2];
    }

    address = [placeCardItem address];

    if (address)
    {
      address2 = [placeCardItem address];
      [(MKMapItem *)mapItem setAddress:address2];
    }

    contact = [placeCardItem contact];
    if (contact && (v15 = contact, [placeCardItem address], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v16))
    {
      v17 = objc_alloc_init(CNMutableContact);
      contact2 = [placeCardItem contact];
      [v17 setContactType:{objc_msgSend(contact2, "contactType")}];

      if (![v17 contactType])
      {
        contact3 = [placeCardItem contact];
        namePrefix = [contact3 namePrefix];
        [v17 setNamePrefix:namePrefix];

        contact4 = [placeCardItem contact];
        givenName = [contact4 givenName];
        [v17 setGivenName:givenName];

        contact5 = [placeCardItem contact];
        familyName = [contact5 familyName];
        [v17 setFamilyName:familyName];

        contact6 = [placeCardItem contact];
        nameSuffix = [contact6 nameSuffix];
        [v17 setNameSuffix:nameSuffix];
      }

      v27 = [CNContactFormatter stringFromContact:v17 style:0];
      if ([v17 contactType] == 1 || !objc_msgSend(v27, "length"))
      {
        contact7 = [placeCardItem contact];
        organizationName = [contact7 organizationName];
        [v17 setOrganizationName:organizationName];
      }

      address3 = [placeCardItem address];
      addressValue = [address3 addressValue];

      if (addressValue)
      {
        v36 = addressValue;
        v32 = [NSArray arrayWithObjects:&v36 count:1];
        [v17 setPostalAddresses:v32];
      }

      unknownContact = [v17 copy];
    }

    else
    {
      unknownContact = [(MKMapItem *)mapItem unknownContact];
    }

    if (sub_10000FA08(self) == 5)
    {
      createShareSheetFooterActions = &__NSArray0__struct;
    }

    else
    {
      createShareSheetFooterActions = [(MUPlaceViewController *)self->_placeViewController createShareSheetFooterActions];
    }

    v9 = [ShareItem shareItemWithSearchResult:mapItem contact:unknownContact includePrintActivity:1 applicationActivities:createShareSheetFooterActions];
  }

  return v9;
}

- (void)placeViewController:(id)controller didSelectRouteToCurrentSearchResultWithTransportTypePreference:(id)preference
{
  preferenceCopy = preference;
  v6 = sub_100B9707C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = preferenceCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "didSelectRouteToCurrentSearchResultWithTransportTypePreference: %@", &v9, 0xCu);
  }

  if (preferenceCopy)
  {
    integerValue = [preferenceCopy integerValue];
    if ((integerValue - 1) < 4)
    {
      v8 = (integerValue + 1);
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

- (void)placeViewController:(id)controller didSelectDirectionsForDestinationAddress:(id)address contact:(id)contact transportType:(id)type
{
  addressCopy = address;
  if (addressCopy && contact)
  {
    typeCopy = type;
    contactCopy = contact;
    v12 = [[AddressBookAddress alloc] initWithContact:contactCopy addressValue:addressCopy];

    v13 = [SearchResult alloc];
    generatedMapItem = [(AddressBookAddress *)v12 generatedMapItem];
    v15 = [(SearchResult *)v13 initWithMapItem:generatedMapItem];

    isAdditionalStop = [(PlaceCardViewController *)self isAdditionalStop];
    v17 = objc_alloc_init(SearchFieldItem);
    if (isAdditionalStop)
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
      identifier = [addressCopy identifier];
      v24 = +[_TtC4Maps22MapsAutocompletePerson sharedLocationLabelIdentifier];
      v25 = [identifier isEqualToString:v24];

      if (v25)
      {
        searchResult = [(PlaceCardItem *)self->_placeCardItem searchResult];
        autocompletePerson = [searchResult autocompletePerson];
        [(SearchResult *)v22 setAutocompletePerson:autocompletePerson];
      }

      [(SearchFieldItem *)v21 setSearchResult:v22];
      v38[0] = v17;
      v38[1] = v21;
      v19 = [NSArray arrayWithObjects:v38 count:2];

      v15 = v35;
    }

    v28 = [DirectionItem alloc];
    integerValue = [typeCopy integerValue];

    if ((integerValue - 1) < 4)
    {
      v30 = (integerValue + 1);
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

    placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
    [placeCardDelegate placeCardViewController:self doDirectionItem:v31 userInfo:v33];
  }
}

- (void)placeViewController:(id)controller didSelectDirectionsForDestinationMapItem:(id)item transportType:(id)type
{
  itemCopy = item;
  if (itemCopy)
  {
    typeCopy = type;
    isAdditionalStop = [(PlaceCardViewController *)self isAdditionalStop];
    v10 = objc_alloc_init(SearchFieldItem);
    if (isAdditionalStop)
    {
      v11 = [[SearchResult alloc] initWithMapItem:itemCopy];
      [(SearchFieldItem *)v10 setSearchResult:v11];

      v26 = v10;
      v12 = [NSArray arrayWithObjects:&v26 count:1];
    }

    else
    {
      v13 = +[SearchResult currentLocationSearchResult];
      [(SearchFieldItem *)v10 setSearchResult:v13];

      v14 = objc_alloc_init(SearchFieldItem);
      v15 = [[SearchResult alloc] initWithMapItem:itemCopy];
      [(SearchFieldItem *)v14 setSearchResult:v15];

      v25[0] = v10;
      v25[1] = v14;
      v12 = [NSArray arrayWithObjects:v25 count:2];
    }

    v16 = [DirectionItem alloc];
    integerValue = [typeCopy integerValue];

    if ((integerValue - 1) < 4)
    {
      v18 = (integerValue + 1);
    }

    else
    {
      v18 = 1;
    }

    v19 = [(DirectionItem *)v16 initWithItems:v12 transportType:v18];
    v20 = [NSNumber numberWithBool:[(PlaceCardViewController *)self isAdditionalStop:@"DirectionsRestoreCamera"]];
    v24[2] = v20;
    v21 = [NSDictionary dictionaryWithObjects:v24 forKeys:&v23 count:3];

    placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
    [placeCardDelegate placeCardViewController:self doDirectionItem:v19 userInfo:v21];
  }
}

- (id)traitsForPlaceViewController:(id)controller
{
  placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
  newTraits = [placeCardDelegate newTraits];

  return newTraits;
}

- (double)placeViewControllerPlaceCardHeaderTitlePaddingConstant:(id)constant
{
  constantCopy = constant;
  v9.receiver = self;
  v9.super_class = PlaceCardViewController;
  v5 = 0.0;
  if ([(PlaceCardViewController *)&v9 respondsToSelector:"placeViewControllerPlaceCardHeaderTitlePaddingConstant:"])
  {
    v8.receiver = self;
    v8.super_class = PlaceCardViewController;
    [(InfoCardViewController *)&v8 placeViewControllerPlaceCardHeaderTitlePaddingConstant:constantCopy];
    v5 = v6;
  }

  return v5;
}

- (double)placeViewControllerPlaceCardHeaderTitleTrailingConstant:(id)constant
{
  constantCopy = constant;
  v9.receiver = self;
  v9.super_class = PlaceCardViewController;
  v5 = 0.0;
  if ([(PlaceCardViewController *)&v9 respondsToSelector:"placeViewControllerPlaceCardHeaderTitleTrailingConstant:"])
  {
    v8.receiver = self;
    v8.super_class = PlaceCardViewController;
    [(InfoCardViewController *)&v8 placeViewControllerPlaceCardHeaderTitleTrailingConstant:constantCopy];
    v5 = v6;
  }

  return v5;
}

- (void)placeViewController:(id)controller launchAttributionURLs:(id)ls withAttribution:(id)attribution completionHandler:(id)handler
{
  lsCopy = ls;
  attributionCopy = attribution;
  handlerCopy = handler;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = lsCopy;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    v21 = handlerCopy;
    v22 = attributionCopy;
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
        scheme = [v16 scheme];
        if ([scheme isEqualToString:@"http"])
        {

LABEL_12:
          placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
          [placeCardDelegate placeCardViewController:self openURL:v16];

          handlerCopy = v21;
          attributionCopy = v22;
          goto LABEL_13;
        }

        scheme2 = [v16 scheme];
        v19 = [scheme2 isEqualToString:@"https"];

        if (v19)
        {
          goto LABEL_12;
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      handlerCopy = v21;
      attributionCopy = v22;
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  [MKAppLaunchController launchAttributionURLs:v11 withAttribution:attributionCopy completionHandler:handlerCopy];
LABEL_13:
}

- (void)updateForViewMode:(int64_t)mode
{
  WeakRetained = objc_loadWeakRetained(&self->_placeCardDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_placeCardDelegate);
    [v7 placeCardViewController:self didUpdateForViewMode:mode];
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
    view = [(MUPlaceViewController *)self->_placeViewController view];
    [view setBackgroundColor:v5];

    view2 = [(MUPlaceViewController *)self->_placeViewController view];
    [view2 _setHostsLayoutEngine:1];

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
      impressionsCalculator = [(MUPlaceViewController *)self->_placeViewController impressionsCalculator];
      [v15 setCalculator:impressionsCalculator];

      if (([v15 isAttached] & 1) == 0)
      {
        [v15 attach];
      }
    }
  }
}

- (BOOL)placeViewController:(id)controller presentOfflineAlertIfNecessaryForUGC:(int64_t)c
{
  v6 = +[MapsOfflineUIHelper sharedHelper];
  isUsingOfflineMaps = [v6 isUsingOfflineMaps];

  if (isUsingOfflineMaps)
  {
    v8 = sub_100B9707C();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Attempting to initate a UGC action (Add to Favorites Guide, Rate, etc) while using Offline Maps. Presenting error alert.", v13, 2u);
    }

    v9 = 0;
    if (c <= 2)
    {
      switch(c)
      {
        case 0:
          v10 = +[MapsOfflineUIHelper sharedHelper];
          alertControllerForAttemptedAddNote = [v10 alertControllerForAttemptedAddNote];
          goto LABEL_20;
        case 1:
          v10 = +[MapsOfflineUIHelper sharedHelper];
          alertControllerForAttemptedAddNote = [v10 alertControllerForAttemptedAddToPlaces];
          goto LABEL_20;
        case 2:
          v10 = +[MapsOfflineUIHelper sharedHelper];
          alertControllerForAttemptedAddNote = [v10 alertControllerForAttemptedAddShortcut];
          goto LABEL_20;
      }
    }

    else if (c > 5)
    {
      if (c == 6)
      {
        v10 = +[MapsOfflineUIHelper sharedHelper];
        alertControllerForAttemptedAddNote = [v10 alertControllerForAttemptedAddPhotos];
        goto LABEL_20;
      }

      if (c == 7)
      {
        v10 = +[MapsOfflineUIHelper sharedHelper];
        alertControllerForAttemptedAddNote = [v10 alertControllerForAttemptedReportAnIssue];
        goto LABEL_20;
      }
    }

    else
    {
      if ((c - 3) < 2)
      {
        v10 = +[MapsOfflineUIHelper sharedHelper];
        alertControllerForAttemptedAddNote = [v10 alertControllerForAttemptedAddCollection];
LABEL_20:
        v9 = alertControllerForAttemptedAddNote;

        goto LABEL_21;
      }

      if (c == 5)
      {
        v10 = +[MapsOfflineUIHelper sharedHelper];
        alertControllerForAttemptedAddNote = [v10 alertControllerForAttemptedRate];
        goto LABEL_20;
      }
    }

LABEL_21:
    [(PlaceCardViewController *)self presentViewController:v9 animated:1 completion:0];
  }

  return isUsingOfflineMaps;
}

- (void)_clearOfflineDownloadTipIfNeeded
{
  offlineFeatureDiscoveryView = [(MUPlaceViewController *)self->_placeViewController offlineFeatureDiscoveryView];

  if (offlineFeatureDiscoveryView)
  {
    placeViewController = self->_placeViewController;

    [(MUPlaceViewController *)placeViewController setOfflineFeatureDiscoveryView:0];
  }
}

- (void)_updateOfflineFeatureDiscoveryViewIfNeededWithMapItem:(id)item
{
  itemCopy = item;
  UInteger = GEOConfigGetUInteger();
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 BOOLForKey:@"OfflineMapsPlaceCardDownloadTipsShownKey"];

  v8 = +[NSUserDefaults standardUserDefaults];
  v9 = [v8 integerForKey:@"OfflineMapsPlaceCardDownloadTipsDisplayedCountKey"];

  if ((v7 & 1) == 0 && v9 < UInteger)
  {
    v10 = +[MapsOfflineUIHelper sharedHelper];
    _displayMapRegion = [itemCopy _displayMapRegion];
    v12 = [v10 isRegionDownloaded:_displayMapRegion requireFullyDownloaded:0];

    if ((v12 & 1) == 0 && (([itemCopy _maps_isLargeAreaPlace] & 1) != 0 || objc_msgSend(itemCopy, "_isMapItemTypeSettlement")))
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
      name = [itemCopy name];
      v21 = [NSString stringWithFormat:v19, name];

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
        mapItem = [(PlaceCardItem *)self->_placeCardItem mapItem];
        searchResult = [(PlaceCardItem *)self->_placeCardItem searchResult];
        searchToSupersedeIfRecordedInHistory = [searchResult searchToSupersedeIfRecordedInHistory];
        [HistoryEntryRecentsItem saveMapItem:mapItem superseedUUID:searchToSupersedeIfRecordedInHistory tracksRAPReportingOnly:[(PlaceCardItem *)self->_placeCardItem shouldInsertInHistoryForRAPTrackingOnly]];

        self->_didInsertInHistory = 1;
      }
    }
  }
}

- (void)placeCardItemMapItemDidChangeWithFailedRefinement:(BOOL)refinement
{
  self->_refinementFailed = refinement;
  placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
  placeCardItem = [(PlaceCardViewController *)self placeCardItem];
  [placeCardDelegate placeCardViewController:self didUpdateLinkedPlacesFromPlaceCardItem:placeCardItem];

  if (!self->_suppressNotifyMapItemDidChange)
  {
    placeCardDelegate2 = [(PlaceCardViewController *)self placeCardDelegate];
    placeCardItem2 = [(PlaceCardViewController *)self placeCardItem];
    mapItem = [placeCardItem2 mapItem];
    [placeCardDelegate2 placeCardViewController:self mapItemDidChange:mapItem];
  }

  [(PlaceCardViewController *)self setNeedsContentUpdate];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (off_101931A80 == context)
  {
    if ([path isEqualToString:{@"mapItem", object, change}])
    {

      [(PlaceCardViewController *)self placeCardItemMapItemDidChangeWithFailedRefinement:0];
    }
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PlaceCardViewController;
    [(InfoCardViewController *)&v7 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)setIsPresentedInSearchAlongTheRoute:(BOOL)route
{
  if (self->_isPresentedInSearchAlongTheRoute != route)
  {
    self->_isPresentedInSearchAlongTheRoute = route;
    [(PlaceCardViewController *)self setNeedsContentUpdate];
  }
}

- (void)setIsAdditionalStop:(BOOL)stop
{
  if (self->_isAdditionalStop != stop)
  {
    self->_isAdditionalStop = stop;
    [(PlaceCardViewController *)self setNeedsContentUpdate];
  }
}

- (void)setExcludedContent:(int64_t)content
{
  if (self->_excludedContent != content)
  {
    self->_excludedContent = content;
    [(PlaceCardViewController *)self setNeedsContentUpdate];
  }
}

- (void)setPlaceCardItem:(id)item
{
  itemCopy = item;
  if (sub_100C73A6C(self->_placeCardItem, itemCopy))
  {
    contentViewController = [(InfoCardViewController *)self contentViewController];
    [contentViewController scrollToTopAnimated:0];
  }

  else
  {
    placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
    [placeCardDelegate placeCardViewController:self placeCardItemWillChange:itemCopy];

    placeCardItem = self->_placeCardItem;
    if (placeCardItem)
    {
      [(PlaceCardItem *)placeCardItem removeObserver:self forKeyPath:@"mapItem"];
    }

    objc_storeStrong(&self->_placeCardItem, item);
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

    contentViewController = [(MUPlaceViewController *)self->_placeViewController view];
    [contentViewController _maps_annotateViewWithPlaceCardViewController:self];
  }
}

- (void)setPlaceCardItem:(id)item withHistory:(BOOL)history
{
  self->_shouldInsertInHistory = history;
  self->_suppressNotifyMapItemDidChange = 1;
  [(PlaceCardViewController *)self setPlaceCardItem:item];
  self->_suppressNotifyMapItemDidChange = 0;
}

- (void)updateHeaderTitle:(id)title
{
  placeViewController = self->_placeViewController;
  titleCopy = title;
  [(MUPlaceViewController *)placeViewController updateHeaderTitle];
  [(InfoCardViewController *)self setHeaderTitle:titleCopy];
}

- (void)handleAddOrRemovePlaceFromLibrary:(BOOL)library
{
  if (library)
  {
    if (-[PlaceCardItem isDroppedPin](self->_placeCardItem, "isDroppedPin") || (-[PlaceCardLibraryOperationsCoordinator mapItem](self->_libraryOperationsCoordinator, "mapItem"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 _maps_canRenameCollectionItem], v4, v5))
    {
      placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
      mapItem = [(PlaceCardLibraryOperationsCoordinator *)self->_libraryOperationsCoordinator mapItem];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100B99384;
      v10[3] = &unk_10165EF00;
      v10[4] = self;
      [placeCardDelegate placeCardViewController:self editNameOfMapItem:mapItem saveHandler:v10 cancelHandler:0];
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

- (void)_carryOverTransitDisplayInformationFromCurrentItemToNewFetchedResult:(id)result
{
  resultCopy = result;
  placeCardItem = [(PlaceCardViewController *)self placeCardItem];
  mapItem = [placeCardItem mapItem];
  _geoMapItem = [mapItem _geoMapItem];

  mapItem2 = [resultCopy mapItem];
  _geoMapItem2 = [mapItem2 _geoMapItem];

  _identifier = [_geoMapItem _identifier];
  _identifier2 = [_geoMapItem2 _identifier];
  v11 = [_identifier isEqual:_identifier2];

  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _labelMarker = [_geoMapItem _labelMarker];
      if (objc_opt_respondsToSelector())
      {
        v13 = [_geoMapItem2 _mapItemBySettingIsTransitDisplayFeature:{objc_msgSend(_labelMarker, "isTransit")}];
        [resultCopy updateWithGEOMapItem:v13];
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
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "PlaceCardViewController: updateContent %@", buf, 0xCu);
  }

  self->_contentNeedsUpdating = 0;
  [(PlaceCardViewController *)self initPlaceCard];
  contentViewController = [(InfoCardViewController *)self contentViewController];
  [contentViewController scrollToTopAnimated:0];

  view = [(MUPlaceViewController *)self->_placeViewController view];
  [view setHidden:0];

  v6 = sub_1007986AC();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    view2 = [(MUPlaceViewController *)self->_placeViewController view];
    *buf = 138412546;
    selfCopy2 = self;
    v101 = 2112;
    v102 = view2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "PlaceCardViewController: %@ updateContent setting _placeViewController's view visible %@", buf, 0x16u);
  }

  placeCardItem = [(PlaceCardViewController *)self placeCardItem];
  searchResult = [placeCardItem searchResult];
  relatedSearchSuggestion = [searchResult relatedSearchSuggestion];

  if (relatedSearchSuggestion)
  {
    [(PlaceCardViewController *)self _initSuggestion];
    [(PlaceCardViewController *)self _updateSuggestionVisibility];
  }

  mapItem = [(PlaceCardItem *)self->_placeCardItem mapItem];
  if ([mapItem _hasMUID] && objc_msgSend(mapItem, "_muid"))
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
  delegate = [v12 delegate];

  v96 = delegate;
  v97 = mapItem;
  if ([delegate isCoreRoutineEnabled] && (-[PlaceCardViewController placeCardItem](self, "placeCardItem"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isHomeWorkSchoolAddress"), v14, v15))
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
    placeCardItem2 = [(PlaceCardViewController *)self placeCardItem];
    isDroppedPin = [placeCardItem2 isDroppedPin];

    excludedContent = self->_excludedContent;
    v18 = ~(excludedContent << 15) & 0x40000;
    if (!isDroppedPin)
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
  placeCardItem3 = [(PlaceCardViewController *)self placeCardItem];
  if ([placeCardItem3 canAddToCollections])
  {
    v25 = 0x8000;
  }

  else
  {
    v25 = 0;
  }

  placeCardItem4 = [(PlaceCardViewController *)self placeCardItem];
  if ([placeCardItem4 canAddToLibrary])
  {
    v27 = 0x10000000000;
  }

  else
  {
    v27 = 0;
  }

  placeCardItem5 = [(PlaceCardViewController *)self placeCardItem];
  if ([placeCardItem5 canAddNote])
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
  isInternalInstall = [v32 isInternalInstall];

  if (isInternalInstall)
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

  placeCardItem6 = [(PlaceCardViewController *)self placeCardItem];
  canAddToShortcuts = [placeCardItem6 canAddToShortcuts];
  v45 = 0x10000000;
  if (!canAddToShortcuts)
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
    placeCardItem7 = [(PlaceCardViewController *)self placeCardItem];
    canShowOpenFindMyAction = [placeCardItem7 canShowOpenFindMyAction];

    if (canShowOpenFindMyAction)
    {
      v51 = v50 | 0x2040800000;
    }

    else
    {
      placeCardItem8 = [(PlaceCardViewController *)self placeCardItem];
      canShowRequestLocation = [placeCardItem8 canShowRequestLocation];

      if (canShowRequestLocation)
      {
        v51 = v50 | 0x4040800000;
      }
    }
  }

  if (GEOConfigGetBOOL())
  {
    v56 = +[MapsOfflineUIHelper sharedHelper];
    isUsingOfflineMaps = [v56 isUsingOfflineMaps];

    if ((isUsingOfflineMaps & 1) == 0)
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
    _geoMapItem = [v97 _geoMapItem];
    if ([_geoMapItem hasExpiredComponents] & 1) != 0 || -[PlaceCardItem isIntermediateMapItem](self->_placeCardItem, "isIntermediateMapItem") || (objc_msgSend(v97, "_maps_isIncompleteVenueSearchResult"))
    {

      goto LABEL_74;
    }

    if ([v97 _maps_isVenueOrBuilding])
    {
      _browseCategories = [v97 _browseCategories];
      if (![_browseCategories count])
      {
        originalContent = self->_originalContent;

        if (originalContent)
        {
          goto LABEL_74;
        }

LABEL_58:
        analyticsController = [(MUPlaceViewController *)self->_placeViewController analyticsController];
        [analyticsController disableDeferLoggingUntilRefinementWithShouldInvokeReveal:0];
        v59 = 0;
        goto LABEL_59;
      }
    }

    goto LABEL_58;
  }

LABEL_74:
  v59 = 1;
  [(PlaceCardItem *)self->_placeCardItem setIsIntermediateMapItem:1];
  analyticsController = [(MUPlaceViewController *)self->_placeViewController analyticsController];
  [analyticsController setDisableDeferLoggingUntilRefinement];
LABEL_59:

  [(InfoCardTipKitController *)self->_tipKitController setNeedsRefinement:v59];
  placeItem = [(PlaceCardItem *)self->_placeCardItem placeItem];
  [(MUPlaceViewController *)self->_placeViewController setPlaceItem:placeItem updateOriginalContact:!self->_originalContent];
  name = [placeItem name];
  [(InfoCardViewController *)self setHeaderTitle:name];
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
  placeCardItem9 = [(PlaceCardViewController *)self placeCardItem];
  mapItem2 = [placeCardItem9 mapItem];
  [(PlaceCardCollectionMembershipProvider *)self->_collectionMembershipProvider setMapItem:mapItem2];

  v72 = +[CuratedCollectionSyncManager sharedManager];
  [v72 addObserver:self];

  [(PlaceCardViewController *)self _updateCollectionsAnimated:0];
  v73 = +[UserProfileReportHistoryManager sharedInstance];
  observers = [v73 observers];
  [observers registerObserver:self];

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
    poiSearchManager = [v78 poiSearchManager];

    placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
    newTraits = [placeCardDelegate newTraits];

    [newTraits useOnlineToOfflineFailoverRequestModeIfAllowed];
    _identifier = [v97 _identifier];
    v98[0] = _NSConcreteStackBlock;
    v98[1] = 3221225472;
    v98[2] = sub_100B9A04C;
    v98[3] = &unk_10163BBC8;
    v98[4] = self;
    [poiSearchManager searchForIdentifier:_identifier allowExpired:0 traits:newTraits completionHandler:v98];
  }

  _maps_mapsSceneDelegate = [(PlaceCardViewController *)self _maps_mapsSceneDelegate];
  [_maps_mapsSceneDelegate setNeedsUserActivityUpdate];

  self->_shouldFetchDraggableViews = !self->_contentNeedsUpdating;
  mapItem3 = [(PlaceCardViewController *)self mapItem];
  _businessAssets = [mapItem3 _businessAssets];
  coverPhoto = [_businessAssets coverPhoto];
  self->_hasCoverPhoto = coverPhoto != 0;

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
  placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    placeCardDelegate2 = [(PlaceCardViewController *)self placeCardDelegate];
    placeCardItem = [(PlaceCardViewController *)self placeCardItem];
    [placeCardDelegate2 placeCardViewController:self willReusePlaceCardItem:placeCardItem];
  }
}

- (void)resetState
{
  v3 = sub_1007986AC();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138412290;
    selfCopy = self;
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

  view = [(MUPlaceViewController *)self->_placeViewController view];
  [view setHidden:1];

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
  observers = [v9 observers];
  [observers unregisterObserver:self];

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

- (void)willResignCurrent:(BOOL)current
{
  placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    placeCardDelegate2 = [(PlaceCardViewController *)self placeCardDelegate];
    [placeCardDelegate2 placeCardViewControllerWillResignCurrent:self];
  }
}

- (void)didBecomeCurrent
{
  v19.receiver = self;
  v19.super_class = PlaceCardViewController;
  [(ContaineeViewController *)&v19 didBecomeCurrent];
  placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    placeCardDelegate2 = [(PlaceCardViewController *)self placeCardDelegate];
    [placeCardDelegate2 placeCardViewControllerWillBecomeCurrent:self];
  }

  [(MUPlaceViewController *)self->_placeViewController becomeActive];
  searchResult = [(PlaceCardItem *)self->_placeCardItem searchResult];
  autocompletePerson = [searchResult autocompletePerson];

  handle = [autocompletePerson handle];
  v8Handle = [handle handle];

  if (v8Handle)
  {
    v10 = [_TtC4Maps33SearchFindMyFriendshipCoordinator alloc];
    handle2 = [autocompletePerson handle];
    v11Handle = [handle2 handle];
    handleIdentifier = [v11Handle handleIdentifier];
    v14 = [(SearchFindMyFriendshipCoordinator *)v10 initWith:handleIdentifier];
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
      v23 = autocompletePerson;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Started monitoring friendship stream for PlaceCardItem: %@, person: %@", buf, 0x16u);
    }

    [(SearchFindMyFriendshipCoordinator *)self->_friendshipCoordinator startMonitoringHandles];
  }

  v18 = +[MapsRadarController sharedInstance];
  [v18 addAttachmentProvider:self];
}

- (void)willChangeLayout:(unint64_t)layout
{
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  containeeLayout = [cardPresentationController containeeLayout];

  v17.receiver = self;
  v17.super_class = PlaceCardViewController;
  [(InfoCardViewController *)&v17 willChangeLayout:layout];
  cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
  containerStyle = [cardPresentationController2 containerStyle];

  v10 = containerStyle - 1 < 2 || (containerStyle & 0xFFFFFFFFFFFFFFFELL) == 4;
  if (layout - 3 <= 1 && v10 && containeeLayout)
  {
    [(PlaceCardViewController *)self insertInHistory];
  }

  cardPresentationController3 = [(ContaineeViewController *)self cardPresentationController];
  containeeLayout2 = [cardPresentationController3 containeeLayout];

  previousLayout = self->_previousLayout;
  if (previousLayout)
  {
    v14 = previousLayout >= containeeLayout2;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    analyticsDelegate = [(PlaceCardViewController *)self analyticsDelegate];
    [analyticsDelegate infoCardAnalyticsDidSelectAction:1 eventValue:0 feedbackDelegateSelector:0 classification:0];

    previousLayout = self->_previousLayout;
  }

  if (containeeLayout2 && previousLayout > containeeLayout2)
  {
    analyticsDelegate2 = [(PlaceCardViewController *)self analyticsDelegate];
    [analyticsDelegate2 infoCardAnalyticsDidSelectAction:2 eventValue:0 feedbackDelegateSelector:0 classification:0];
  }

  self->_previousLayout = containeeLayout2;
}

- (double)heightForLayout:(unint64_t)layout
{
  if (layout == 2 && [(PlaceCardViewController *)self isPresentedInSearchAlongTheRoute])
  {

    [(PlaceCardViewController *)self _mediumLayoutHeightInSAR];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PlaceCardViewController;
    [(InfoCardViewController *)&v6 heightForLayout:layout];
  }

  return result;
}

- (double)_mediumLayoutHeightInSAR
{
  view = [(PlaceCardViewController *)self view];
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

- (void)copy:(id)copy
{
  copyCopy = copy;
  placeCardDelegate = [(PlaceCardViewController *)self placeCardDelegate];
  [placeCardDelegate placeCardViewController:self requestCopyLinkToClipboard:copyCopy];
}

- (void)_updateVerifiedBusinessHeaderIfNeeded
{
  if (sub_10000FA08(self) != 5)
  {
    cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
    containerStyle = [cardPresentationController containerStyle];

    cardPresentationController2 = [(ContaineeViewController *)self cardPresentationController];
    v6 = cardPresentationController2;
    if (containerStyle == 4)
    {
      [cardPresentationController2 transitionProgressFromLayout:1 toLayout:3];
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
      [cardPresentationController2 transitionProgressFromLayout:2 toLayout:3];
      v9 = v10;
    }

    v11 = v9 > 0.0 && self->_hasCoverPhoto;
    cardPresentationController3 = [(ContaineeViewController *)self cardPresentationController];
    [cardPresentationController3 setGrabberBlurEnabled:v11];

    placeViewController = self->_placeViewController;

    [(MUPlaceViewController *)placeViewController setVerifiedHeaderExpansionProgress:v9];
  }
}

- (void)didMoveToParentViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = PlaceCardViewController;
  [(PlaceCardViewController *)&v5 didMoveToParentViewController:?];
  if (!controller)
  {
    self->_isBeingRemovedFromParentViewController = 0;
  }
}

- (void)willMoveToParentViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = PlaceCardViewController;
  [(PlaceCardViewController *)&v5 willMoveToParentViewController:?];
  if (!controller)
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
  cardPresentationController = [(ContaineeViewController *)self cardPresentationController];
  [cardPresentationController setHeaderTransitionHeight:v4];

  [(PlaceCardViewController *)self _updateVerifiedBusinessHeaderIfNeeded];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = PlaceCardViewController;
  [(InfoCardViewController *)&v4 viewDidDisappear:disappear];
  if (self->_wantsInsertOnDismiss && (([(PlaceCardViewController *)self isMovingFromParentViewController]& 1) != 0 || sub_10000FA08(self) == 5))
  {
    [(PlaceCardViewController *)self insertInHistory];
  }

  if ([(PlaceCardViewController *)self isMovingFromParentViewController])
  {
    [(PlaceCardViewController *)self resetState];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v20.receiver = self;
  v20.super_class = PlaceCardViewController;
  [(ContaineeViewController *)&v20 viewWillAppear:appear];
  if (self->_placeViewController)
  {
    v4 = [DrivePreferences alloc];
    v5 = +[NSUserDefaults standardUserDefaults];
    v6 = [(DrivePreferences *)v4 initWithDefaults:v5];
    automobileOptions = [(DrivePreferences *)v6 automobileOptions];
    [(MUPlaceViewController *)self->_placeViewController setAutomobileOptions:automobileOptions];

    v8 = [WalkPreferences alloc];
    v9 = +[NSUserDefaults standardUserDefaults];
    v10 = [(WalkPreferences *)v8 initWithDefaults:v9];
    walkingOptions = [(WalkPreferences *)v10 walkingOptions];
    [(MUPlaceViewController *)self->_placeViewController setWalkingOptions:walkingOptions];

    v12 = [TransitPreferences alloc];
    v13 = +[NSUserDefaults standardUserDefaults];
    v14 = [(WatchSyncedPreferences *)v12 initWithDefaults:v13];
    transitOptions = [(TransitPreferences *)v14 transitOptions];
    [(MUPlaceViewController *)self->_placeViewController setTransitOptions:transitOptions];

    v16 = [CyclePreferences alloc];
    v17 = +[NSUserDefaults standardUserDefaults];
    v18 = [(CyclePreferences *)v16 initWithDefaults:v17];
    cyclingOptions = [(CyclePreferences *)v18 cyclingOptions];
    [(MUPlaceViewController *)self->_placeViewController setCyclingOptions:cyclingOptions];

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

- (PlaceCardViewController)initWithVisualEffectDisabled:(BOOL)disabled
{
  v11.receiver = self;
  v11.super_class = PlaceCardViewController;
  v3 = [(PlaceCardViewController *)&v11 initWithNibName:0 bundle:0];
  v4 = v3;
  if (v3)
  {
    cardPresentationController = [(ContaineeViewController *)v3 cardPresentationController];
    [cardPresentationController setAlwaysUseDefaultContaineeLayout:1];
  }

  traitCollection = [(PlaceCardViewController *)v4 traitCollection];
  if ([traitCollection userInterfaceIdiom] == 1)
  {

LABEL_6:
    cardPresentationController2 = [(ContaineeViewController *)v4 cardPresentationController];
    [cardPresentationController2 setDefaultContaineeLayout:3];

    return v4;
  }

  traitCollection2 = [(PlaceCardViewController *)v4 traitCollection];
  userInterfaceIdiom = [traitCollection2 userInterfaceIdiom];

  if (userInterfaceIdiom == 6)
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